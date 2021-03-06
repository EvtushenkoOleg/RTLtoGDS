#!/usr/bin/tclsh
#---------------------------------------------------------------------------
# getantennacell.tcl ---
#
# Read LEF file and parse for antenna cells;  find the first one
#	that matches the name pattern, and return it along with
#	its connecting pin name.
#
#---------------------------------------------------------------------------
namespace path {::tcl::mathop ::tcl::mathfunc}

if {$argc < 3} {
   puts stdout "Usage:  getantennacell <project_name> <lef_file> <fill_cell>"
   exit 0
}

puts stdout "Running getantennacell.tcl"

set topname [file rootname [lindex $argv 0]]
set lefname [lindex $argv 1]
set antennacell [lindex $argv 2]

set units 100		;# read micron units from the LEF file
			;# and convert to centimicrons

#-----------------------------------------------------------------
# Open LEF file for reading
#-----------------------------------------------------------------

if [catch {open $lefname r} flef] {
   puts stderr "Error: can't open file $lefname for input"
   return
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
# Parse the pin contents of the LEF file macro
#
# To cope with LEF macro sets where a signal pin may not have a
# use declared, return the pin name of any pin not having a USE
# instead of true/false.
#----------------------------------------------------------------

proc parse_pin {leffile pinname} {
    set retval false
    set portuse ""
    while {[gets $leffile line] >= 0} {
        if [regexp {[ \t]*USE[ \t]+([^ \t]+)[ \t]*;} $line lmatch portuse] {
            set portuse [string toupper $portuse]
            if {$portuse == "SIGNAL"} {
                set retval true
            }
        } elseif [regexp {[ \t]*END[ \t]+([^ \t]+)[ \t]*$} $line lmatch pintest] {
            if {"$pintest" == "$pinname"} {
                break
            } else {
                puts stdout "Unexpected END statement $line while parsing pin $pinname"
            }
        }
    }
    if {$portuse == ""} {
        set retval $pinname	;# special case
    }
    return $retval
}

#----------------------------------------------------------------
# Parse the macro contents of the LEF file and retain the information
# about cell size and pin positions.
#----------------------------------------------------------------

proc parse_macro {leffile macroname} {
   global $macroname units

   set savepin ""
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
         # Antenna cell has only one pin, so just set a record "pin" for each macro
	 set presult [parse_pin $leffile $pinname]
	 if {$presult == true} {
	    set ${macroname}(pin) $pinname
	 } elseif {$presult != false} {
	    set savepin $pinname
	 }
      } elseif [regexp {[ \t]*END[ \t]+([^ \t]+)[ \t]*$} $line lmatch macrotest] {
         if {"$macrotest" == "$macroname"} {
            break
         } else {
            puts stderr "Unexpected END statement $line while reading macro $macroname"
         }
      }
   }

   # Check for unmarked signal pin.
   if [catch {set ${macroname}(pin)}] {
      if {$savepin != ""} {
	 set ${macroname}(pin) $savepin
      } else {
	 set ${macroname}(pin) ERROR	    ;# Flag this
      }
   }
}

#-----------------------------------------------------------------
# Read the lef macro file and get the fill cells and their widths
#-----------------------------------------------------------------

puts stdout "Reading ${antennacell} macros from LEF file."
flush stdout

set useantennacell {}
set useantennapin {}
set useantennaw 0

while {[gets $flef line] >= 0} {
   if [regexp {[ \t]*MACRO[ \t]+(.+)[ \t]*$} $line lmatch macroname] {
      # Parse the "macro" statement
      parse_macro $flef $macroname
      if {[regexp "^$antennacell" $macroname] == 1} {
         set w [subst \$${macroname}(w)]
	 if {($useantennacell == "") || ($w < $useantennaw)} {
	    # To do:  Check width against feedthrough width
	    puts stdout "Diagnostic:  macro $macroname input [subst \$${macroname}(pin)]"
	    set useantennacell $macroname
	    set useantennapin [subst \$${macroname}(pin)]
	    set useantennaw $w
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

close $flef

puts stdout "antenna=${useantennacell}/${useantennapin}"
puts stdout "Done with getantennacell.tcl"
