#!/usr/bin/tclsh
#---------------------------------------------------------------------------
# getfillcell.tcl ---
#
# Read the .par file and find the feedthru width
# Read LEF file and parse for fill cells;  find the one that
#	corresponds to the feedthru width and return its name
#
# NOTE:  The eventual goal is to have the .par file automatically
# generated, in which case we really want to do this process in
# reverse.
#
#---------------------------------------------------------------------------
namespace path {::tcl::mathop ::tcl::mathfunc}

if {$argc < 3} {
   puts stdout "Usage:  getfillcell <project_name> <lef_file> <fill_cell>"
   exit 0
}

puts stdout "Running getfillcell.tcl"

set topname [file rootname [lindex $argv 0]]
set lefname [lindex $argv 1]
set fillcell [lindex $argv 2]

set parname ${topname}.par

set units 100		;# read micron units from the LEF file
			;# and convert to centimicrons

#-----------------------------------------------------------------
# Open all files for reading and writing
#-----------------------------------------------------------------

if [catch {open $lefname r} flef] {
   puts stderr "Error: can't open file $lefname for input"
   return
}

if [catch {open $parname r} fpar] {
   puts stderr "Error: can't open file $parname for input"
   return
}

#-----------------------------------------------------------------
# Read the .par file and look for "feedThruWidth".
#-----------------------------------------------------------------

puts stdout "Reading .par file ${parname}. . ."
flush stdout

set fwidth 0
while {[gets $fpar line] >= 0} {
   if {![regexp {[ \t]*#} $line lmatch]} {
      if [regexp {feedThruWidth[ \t]*:[ \t]*([0-9]+)} $line lmatch fwidth] {
	 break
      }
   }
}
if {$fwidth == 0} {
   puts stdout "(no feedthroughs or width defined as zero)"
}

#----------------------------------------------------------------
# Read through a LEF file section that we don't care about.
#----------------------------------------------------------------

proc skip_section {leffile sectionname} {
   while {[gets $leffile line] >= 0} {
      if [regexp {[ \t]*END[ \t]+([^ \t]+)[ \t]*$} $line lmatch sectiontest] {
         if {"$sectiontest" != "$sectionname"} {
            puts -nonewline stderr "Unexpected END statement $line "
            puts stderr "while reading section $sectionname"
         }
         break
      }
   }
}

#----------------------------------------------------------------
# Parse the macro contents of the LEF file and retain the information
# about cell size and pin positions.
#----------------------------------------------------------------

proc parse_macro {leffile macroname} {
   global $macroname units

   while {[gets $leffile line] >= 0} {
      if [regexp {[ \t]*SYMMETRY[ \t]+(.+)[ \t]*;} $line lmatch symmetry] {
         set ${macroname}(symmetry) $symmetry
      } elseif [regexp {[ \t]*ORIGIN[ \t]+(.+)[ \t]+(.+)[ \t]*;} $line lmatch x y] {
         set x [expr {int($x * $units)}]
         set y [expr {int($y * $units)}]
         set ${macroname}(x) $x
         set ${macroname}(y) $y
      } elseif [regexp {[ \t]*SIZE[ \t]+(.+)[ \t]+BY[ \t]+(.+)[ \t]*;} \
                        $line lmatch w h] {
         set w [expr {int($w * $units)}]
         set h [expr {int($h * $units)}]
         set ${macroname}(w) $w
         set ${macroname}(h) $h

      } elseif [regexp {[ \t]*PIN[ \t]+(.+)[ \t]*$} $line lmatch pinname] {
	 # The fill cell is not expected to have any usable pins
	 skip_section $leffile $pinname
      } elseif [regexp {[ \t]*END[ \t]+([^ \t]+)[ \t]*$} $line lmatch macrotest] {
         if {"$macrotest" == "$macroname"} {
            break
         } else {
            puts stderr "Unexpected END statement $line while reading macro $macroname"
         }
      }
   }
}

#-----------------------------------------------------------------
# Read the lef macro file and get the fill cells and their widths
#-----------------------------------------------------------------

puts stdout "Reading ${fillcell} macros from LEF file."
flush stdout

puts stdout "Diagnostic:  fill cell width from .par file is $fwidth"
set usefillcell {}

set feedcellw 0
set feedcellmin {}
while {[gets $flef line] >= 0} {
   if [regexp {[ \t]*MACRO[ \t]+(.+)[ \t]*$} $line lmatch macroname] {
      # Parse the "macro" statement
      parse_macro $flef $macroname
      if {[regexp "^$fillcell" $macroname] == 1} {
	 # Check width against feedthrough width
	 set w [subst \$${macroname}(w)]
	 puts stdout "Diagnostic:  macro $macroname width = $w"
	 if {$w == $fwidth} {
	    set usefillcell $macroname
	 } elseif {($w < $feedcellw) || ($feedcellw == 0)} {
	    set feedcellw $w
	    set feedcellmin $macroname
	 }
      }
   } elseif [regexp {[ \t]*LAYER[ \t]+([^ \t]+)} $line lmatch layername] {
      skip_section $flef $layername
   } elseif [regexp {[ \t]*VIA[ \t]+([^ \t]+)} $line lmatch vianame] {
      skip_section $flef $vianame
   } elseif [regexp {[ \t]*VIARULE[ \t]+([^ \t]+)} $line lmatch viarulename] {
      skip_section $flef $viarulename
   } elseif [regexp {[ \t]*SITE[ \t]+(.+)[ \t]*$} $line lmatch sitename] {
      skip_section $flef $sitename
   } elseif [regexp {[ \t]*SPACING[ \t]*$} $line lmatch] {
      skip_section $flef SPACING
   } elseif [regexp {[ \t]*UNITS[ \t]*$} $line lmatch] {
      skip_section $flef UNITS
   } elseif [regexp {[ \t]*PROPERTYDEFINITIONS[ \t]*$} $line lmatch] {
      skip_section $flef PROPERTYDEFINITIONS
   } elseif [regexp {[ \t]*END[ \t]+LIBRARY[ \t]*$} $line lmatch] {
      break
   } elseif [regexp {^[ \t]*#} $line lmatch] {
      # Comment line, ignore.
   } elseif ![regexp {^[ \t]*$} $line lmatch] {
      # Other things we don't care about
      set matches 0
      if [regexp {[ \t]*NAMESCASESENSITIVE} $line lmatch] {
         incr matches
      } elseif [regexp {[ \t]*VERSION} $line lmatch] {
         incr matches
      } elseif [regexp {[ \t]*BUSBITCHARS} $line lmatch] {
         incr matches
      } elseif [regexp {[ \t]*DIVIDERCHAR} $line lmatch] {
         incr matches
      } elseif [regexp {[ \t]*USEMINSPACING} $line lmatch] {
         incr matches
      } elseif [regexp {[ \t]*CLEARANCEMEASURE} $line lmatch] {
         incr matches
      } elseif [regexp {[ \t]*MANUFACTURINGGRID} $line lmatch] {
         incr matches
      } else {
         puts stderr "Unexpected input in LEF file:  Only macro defs were expected!"
         puts -nonewline stdout "Line is: $line"
	 flush stdout
      }
   }
}

if {$usefillcell == {}} {
    if {$feedcellmin != {}} {
	puts stderr "Warning:  No fill cells correspond to cell width in the .par file."
	puts stderr "Using smallest matching fill macro $feedcellmin"
	set usefillcell $feedcellmin
    } else {
	puts stderr "Error:  No matching fill cells found in LEF macro file."
    }
}

close $flef
close $fpar

puts stdout "fill=$usefillcell"
puts stdout "Done with getfillcell.tcl"
