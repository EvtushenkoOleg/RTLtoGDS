#!/usr/bin/tclsh
#
# Usage:
#	decongest.tcl <rootname> <leffile> <fillcells> [<scale> <offset>]
#
# Take information produced by qrouter's "congested" command,
# and use it to add fill-cell padding to the most congested
# instances in the .cel file. 
#
# or
#	decongest.tcl <rootname> <leffile> <fillcells> <density>
#
# Take the existing <rootname>.cel file for graywolf input,
# and pad the area out with randomly-assigned fill cells
# to reduce the density of actively routed cells in the design.
#
# This procedure is necessary because GrayWolf does not
# have a way (apparently) to reduce internal density by
# adding spacers.  So we use feedback from the router to
# find targeted areas to add extra fill.  Since GrayWolf
# only looks at the contents of the .cel file, padding can
# be added by rewriting the cell width for specific cells
# to include the width of one or more filler cells.  By
# annotating the cell instance name, it becomes easy to
# add the fill cells into the DEF file after placement.
#
# "fillcells" is either a single name for a fill cell, or a
# comma-separated list of up to four fill cells (of which one or
# two may be empty strings) for plain fill, decap fill, antenna
# fill, and body ties (for standard cell sets that do not provide
# substrate/well contacts inside the standard cells).
#
# "scale" gives a scalefactor which is the amount of
# increase in congestion that will cause an additional fill
# cell to be added.  Default is 0.1.  Scale will be adjusted
# upward according to the percentage of failing nets.

# "offset" is the amount of congestion in the .cinfo file
# that is the baseline for adding fill.  Should be equal to
# the minimum amount of congestion for which a fill cell is
# added.  Default is 0.6.
#
# "density" is a fraction of the area of the design that
# is made up of actively routed cells;  that is, the area
# given to fill cells is (1 - density).  It is used in place
# of "<scale> <offset>", and does not expect a ".cinfo" file
# of congestion information.  The fill cells will be randomly
# placed.  There is no default density.
#
# Option --units=<units> where units are distance units per micron
# in the .cel file (default 100)
#
# Option --lib=<path>, where <path> is the full path to a
# liberty format file, will parse the liberty file to determine
# which cells are flops.  Since flop cells have more area for
# fewer pins, they tend not to be the point of congestion.  So
# density can be considerably optimized by placing far more
# fill next to combinational cells and far less next to flops,
# resulting in better routability at higher density.
#
#------------------------------------------------------------
# Written by Tim Edwards, November 23, 2013
#------------------------------------------------------------
# LEF dimensions are microns unless otherwise stated.
#------------------------------------------------------------

proc parse_liberty_file {flib} {
    # Note that this is a trivial file parser.  It only looks
    # for lines of the type "cell (<name>)" followed by "ff (<...>)".

    set floplist {}
    set cellname ""
    while {[gets $flib line] >= 0} {
        if [regexp {^[ \t]*cell[ \t]*\([ \t]*([^ \t)]+)\)} $line lmatch cellname] {
	    # No action
        }
        if [regexp {^[ \t]*ff[ \t]*\([ \t]*[^)]+\)} $line lmatch] {
	    if {$cellname != ""} {
		lappend floplist $cellname
	    }
        }
    }
    close $flib
    return $floplist
}

# To-do:  Just split the argument list into options and arguments,
# where options begin with "--".  For now, just assume options come
# at the end.

set units 100
set libertypath ""

while {true} {
    set option [lindex $argv $argc-1]
    if {[string first "--" $option] == 0} {
	incr argc -1
	set optkey [string range $option 2 end]
        set eqptr [string first "=" $optkey]
	if {$eqptr > 0} {
	    set optval [string range $optkey $eqptr+1 end]
	    set optkey [string range $optkey 0 $eqptr-1]
	} else {
	    set optval true
	}
	switch -exact $optkey {
	    units {set units $optval}
	    lib {set libertypath $optval}
	    liberty {set libertypath $optval}
	    default {puts stderr "Unknown option switch $option"}
	}
    } else {
	break
    }
}

if {$argc < 4 || $argc > 7} {
   puts stderr "Bad argument list"
   puts stderr "Usage: decongest.tcl <rootname> <leffile> <fillcell> [<scale> <offset>]"
   puts stderr "or:    decongest.tcl <rootname> <leffile> <fillcell> <density>"
   puts stderr "or:    decongest.tcl <rootname> <leffile> <fillcells> <density> <ratios>"
   puts stderr "<fillcell> is a comma-separated list of up to four fill cell types."
   puts stderr "<ratios> is a space-separated list of ratios for each fill cell type."
   puts stderr "use option --units=<units> to set units other than centimicrons."
   puts stderr "use option --lib=<path> to analyze a liberty file for optimizing."
   exit 1
}

set scale 0.1
set offset 0.5

set cellname [file rootname [lindex $argv 0]]

set celfile ${cellname}.cel
set annofile ${cellname}.acel
set cinfofile ${cellname}.cinfo
set lefname [lindex $argv 1]
set filltypes [split [lindex $argv 2] ,]
set fillratios {}
set nopadcells {}

if {$argc == 4} {
   set density [lindex $argv 3]
   set scale 0.0	;# scale 0 used to denote density planning
} elseif {$argc == 5} {
   set scale [lindex $argv 3]
   set offset [lindex $argv 4]
   # Check if fills were passed as a single argument, space or comma
   # separated.  If so, this is not scale and offset.
   if {[llength $offset] > 1} {
      set density $scale
      set scale 0.0
      set fillratios $offset
   } elseif {[llength [split $offset ,]] > 1} {
      set density $scale
      set scale 0.0
      set fillratios {}
      set tmpfillr [split $offset ,]
      for {set i 0} {$i < [llength $tmpfillr]} {incr i} {
         set rfill [lindex $tmpfillr $i]
	 lappend fillratios $rfill
      }
   }
} else {
   # For 6 to 8 arguments.  Note that there is no 5-argument syntax
   # for ratios, since if only one fill type is specified, then by
   # definition it must be 100% of the fill.

   set scale 0.0
   set density [lindex $argv 3]
   for {set i 0} {$i < [expr {$argc - 4}]} {incr i} {
      lappend fillratios [lindex $argv [expr {$i + 4}]]
   }
}

if [catch {open $lefname r} flef] {
   puts stderr "Error: can't open file $lefname for input"
   return
}

if [catch {open $celfile r} fcel] {
   puts stderr "Error: can't open file $celfile for input"
   return
}

if {$scale > 0.0} {
   if [catch {open $cinfofile r} finf] {
      puts stderr "Error: can't open file $cinfofile for input"
      return
   }
}

if [catch {open $annofile w} fanno] {
   puts stderr "Error: can't open file $annofile for output"
   return
}

if {$libertypath != ""} {
   if [catch {open $libertypath r} flib] {
      puts stderr "Warning: can't open file $libertypath for input, will not optimize"
   } else {
      set nopadcells [parse_liberty_file $flib]
      # puts stdout "Diagnostic:  List of flop cells is $nopadcells"
   }
}

#----------------------------------------------------------------
# Check filltypes and determine how many are requested.  This
# code is complicated mostly to allow flexibility in the way
# fill cells and their respective percentages are specified.
#----------------------------------------------------------------

# Count fill types by adding all non-empty-string components of $filltypes
set num_filltypes 0
foreach filltype $filltypes {
   if {$filltype != ""} {incr num_filltypes}
}

if {$num_filltypes > 4} {
   puts stderr "Can only handle up to four fill cell types.  Ignoring the rest."
   set filltypes [lrange $filltypes 0 3]
} elseif {$filltypes == {}} {
   puts stderr "Warning:  No fill cell types specified."
}

# If filltypes is truncated, then pad the array.  However, it is
# much preferable for the caller to supply all four entries,
# with empty strings for those that don't exist, because the
# following method does not try to match fill cell names to fill
# cell types.

if {[llength $filltypes] == 1} {
      lappend filltypes ""
      lappend filltypes ""
      lappend filltypes ""
} elseif {[llength $filltypes] == 2} {
      lappend filltypes ""
      lappend filltypes ""
} elseif {[llength $filltypes] == 3} {
      lappend filltypes ""
}

if {[llength $filltypes] == 4} {

   # "needfill" array marks which fill types have non-zero fill ratios.
   set needfill {}
   foreach filltype $filltypes {
      if {$filltype != ""} {
	 lappend needfill 1
      } else {
	 lappend needfill 0
      }
   }

   if {[llength $fillratios] > 4} {
      puts stderr "Error:  Too many fill ratios.  Ignoring all but the first four."
      set fillratios [lrange $fillratios 0 3]
   }

   set allratios {}
   set validratios {}
   foreach ratio $fillratios {
       if {$ratio == {} || $ratio == ""} {
	   lappend validratios 0
           lappend allratios 0
       } else {
	   lappend validratios 1
           if {[catch {set iratio [expr {int($ratio * 1)}]}]} {
	       puts stderr "Error:  Ratio $ratio is not a number"
               lappend allratios 0
	   } else {
               lappend allratios $iratio
	   }
       }
   }
   while {[llength $allratios] < 4} {
       lappend allratios 0
       lappend validratios 0
   }

   set filldiff 0
   set addfill {}
   for {set i 0} {$i < 4} {incr i} {
      if {[lindex $validratios $i] == 0 && [lindex $needfill $i] == 1} {
	 lappend addfill 1
	 incr filldiff
      } else {
	 lappend addfill 0
      }
   }

   set f1 [expr {[lindex $allratios 0] * [lindex $needfill 0]}]
   set f2 [expr {[lindex $allratios 1] * [lindex $needfill 1]}]
   set f3 [expr {[lindex $allratios 2] * [lindex $needfill 2]}]
   set f4 [expr {[lindex $allratios 3] * [lindex $needfill 3]}]
   set addr [expr {$f1 + $f2 + $f3 + $f4}]

   # If the total of specified fill ratios for the valid fill
   # types is more than 100, then proportionally reduce the ratios
   # to 100

   if {$addr > 100} {
      puts stderr "Error:  Fill ratios sum to greater than 100 percent."
      set allratios [lreplace $allratios 3 3 0]
      set addr [expr {$f1 + $f2 + $f3}]
      if {$addr > 100} {
         set allratios [lreplace $allratios 2 2 0]
	 set addr [expr {$f1 + $f2}]
         if {$addr > 100} {
            set allratios [lreplace $allratios 1 1 0]
	    set addr $f1
	    if {$addr > 100} {
	       set allratios [lreplace $allratios 0 0 100]
	    }
	 }
      }
   }

   # Recompute the ratio total

   set f1 [expr {[lindex $allratios 0] * [lindex $needfill 0]}]
   set f2 [expr {[lindex $allratios 1] * [lindex $needfill 1]}]
   set f3 [expr {[lindex $allratios 2] * [lindex $needfill 2]}]
   set f4 [expr {[lindex $allratios 3] * [lindex $needfill 3]}]
   set addr [expr {$f1 + $f2 + $f3 + $f4}]

   # If the number of fill ratios specified is less than the number of
   # valid fill types and sums to less than 100, then automatically
   # add the remaining ratio to the unspecified cells.

   set fillamounts {}
   if {$filldiff == 1} {
      lappend fillamounts [expr {100 - $addr}]
   } elseif {$filldiff == 2} {
      set rval [expr {int((100 - $addr) / 2)}]
      lappend fillamounts $rval
      lappend fillamounts [expr {100 - $addr - $rval}]
   } elseif {$filldiff == 3} {
      set rval [expr {int((100 - $addr) / 3)}]]
      lappend fillamounts $rval
      lappend fillamounts [expr {100 - $addr - 2 * $rval}]
   } elseif {$filldiff == 4} {
      set fillamounts {25 25 25 25}
   }

   for {set i 0} {$i < 4} {incr i} {
      if {[lindex $addfill $i] == 1} {
	 set allratios [lreplace $allratios $i $i [lindex $fillamounts 0]] 
	 set fillamounts [lrange $fillamounts 1 end]
      }
   }

   # Recompute the ratio total

   set f1 [expr {[lindex $allratios 0] * [lindex $needfill 0]}]
   set f2 [expr {[lindex $allratios 1] * [lindex $needfill 1]}]
   set f3 [expr {[lindex $allratios 2] * [lindex $needfill 2]}]
   set f4 [expr {[lindex $allratios 3] * [lindex $needfill 3]}]
   set addr [expr {$f1 + $f2 + $f3 + $f4}]

   # If the total of specified fill ratios for the valid fill
   # types is less than 100, then proportionally increase the ratios
   # to 100

   set addto {}
   set dist 0
   for {set i 0} {$i < 4} {incr i} {
      if {[lindex $allratios $i] > 0 && [lindex $needfill $i] > 0} {
	 lappend addto 1
         incr dist
      } else {
	 lappend addto 0
      }
   }
   set addin [expr {int((100 - $addr) / $dist)}]
   set remain [expr {(100 - $addr) - ($dist * $addin)}]

   for {set i 0} {$i < 4} {incr i} {
      if {[lindex $addto $i] == 1} {
         set oldval [lindex $allratios $i]
         set newval [expr {$oldval + $addin}]
	 if {$remain > 0} {
            set newval [expr {$newval + $remain}]
	    set remain 0
	 }
         set allratios [lreplace $allratios $i $i $newval]
      }
   }

   set fillratios $allratios
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
         set x [expr {int($x * $units + 0.5)}]
         set y [expr {int($y * $units + 0.5)}]
         set ${macroname}(x) $x
         set ${macroname}(y) $y
      } elseif [regexp {[ \t]*SIZE[ \t]+(.+)[ \t]+BY[ \t]+(.+)[ \t]*;} \
                        $line lmatch w h] {
         set w [expr {int($w * $units + 0.5)}]
         set h [expr {int($h * $units + 0.5)}]
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

puts stdout "Reading ${filltypes} macros from LEF file."
flush stdout

set fillcells {}
set decapcells {}
set antennacells {}
set bodytiecells {}

set fillcell [lindex $filltypes 0]
set decapcell [lindex $filltypes 1]
set antennacell [lindex $filltypes 2]
set bodytiecell [lindex $filltypes 3]

while {[gets $flef line] >= 0} {
   if [regexp {[ \t]*MACRO[ \t]+(.+)[ \t]*$} $line lmatch macroname] {
      # Parse the "macro" statement
      parse_macro $flef $macroname
      if {$fillcell != "" && [regexp "^$fillcell" $macroname] == 1} {
	 # Remember this for later if it's a plain fill cell
	 lappend fillcells $macroname
      } elseif {$decapcell != "" && [regexp "^$decapcell" $macroname] == 1} {
	 # Remember this for later if it's a decap fill cell
	 lappend decapcells $macroname
      } elseif {$antennacell != "" && [regexp "^$antennacell" $macroname] == 1} {
	 # Remember this for later if it's an antenna fill cell
	 lappend antennacells $macroname
      } elseif {$bodytiecell != "" && [regexp "^$bodytiecell" $macroname] == 1} {
	 # Remember this for later if it's a body tie cell
	 lappend bodytiecells $macroname
      }
   } elseif [regexp {[ \t]*LAYER[ \t]+([^ \t]+)} $line lmatch layername] {
      skip_section $flef $layername
   } elseif [regexp {[ \t]*VIA[ \t]+([^ \t]+)} $line lmatch vianame] {
      skip_section $flef $vianame
   } elseif [regexp {[ \t]*VIARULE[ \t]+([^ \t]+)} $line lmatch viarulename] {
      skip_section $flef $viarulename
   } elseif [regexp {[ \t]*SITE[ \t]+(.+)[ \t]*$} $line lmatch sitename] {
      skip_section $flef $sitename
   } elseif [regexp {[ \t]*UNITS[ \t]*$} $line lmatch] {
      skip_section $flef UNITS
   } elseif [regexp {[ \t]*PROPERTYDEFINITIONS[ \t]*$} $line lmatch] {
      skip_section $flef PROPERTYDEFINITIONS
   } elseif [regexp {[ \t]*SPACING[ \t]*$} $line lmatch] {
      skip_section $flef SPACING
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

# If the macro file doesn't define any fill cells, there's not a
# whole lot we can do. . .

set totalfills [expr {[llength $fillcells] + [llength $decapcells] + \
	[llength $antennacells] + [llength $bodytiecells]}]
set usedfills [expr {[llength $fillcells] * [lindex $fillratios 0] + \
	[llength $decapcells] * [lindex $fillratios 1] + \
	[llength $antennacells] * [lindex $fillratios 2] + \
	[llength $bodytiecells] * [lindex $fillratios 3]}]

if {$totalfills == 0} {
   puts stdout "No fill cells (${fillcell}, ${decapcell}, ${antennacell}, ${bodytiecell}) found in macro file ${lefname}!"
   close $flef
   exit 1
}
if {$usedfills == 0} {
   puts stdout "No fill cells in macro file ${lefname} are being used!"
   set foundcells {}
   if {[llength $fillcells] > 0} {lappend foundcells $fillcell}
   if {[llength $decapcells] > 0} {lappend foundcells $decapcell}
   if {[llength $antennacells] > 0} {lappend foundcells $antennacell}
   if {[llength $bodytiecells] > 0} {lappend foundcells $bodytiecell}
   puts stdout "Fill cells found are: $foundcells"
   close $flef
   exit 1
}

close $flef

# Add all the fill cells to the list of cells that are not padded.
lappend nopadcells {*}$fillcells
lappend nopadcells {*}$decapcells
lappend nopadcells {*}$antennacells
lappend nopadcells {*}$bodytiecells

# Sort each array of fill cells by width

set fillwidths {}
foreach macro $fillcells {
   lappend fillwidths [list $macro [subst \$${macro}(w)]]
}
set fillwidths [lsort -decreasing -index 1 -real $fillwidths]
set fillinfo [lindex $fillwidths 0]
set fillmacro [lindex $fillinfo 0]
set fillvalue [lindex $fillinfo 1]

set decapwidths {}
foreach macro $decapcells {
   lappend decapwidths [list $macro [subst \$${macro}(w)]]
}
set decapwidths [lsort -decreasing -index 1 -real $decapwidths]
set decapinfo [lindex $decapwidths 0]
set decapmacro [lindex $decapinfo 0]
set decapvalue [lindex $decapinfo 1]

set antennawidths {}
foreach macro $antennacells {
   lappend antennawidths [list $macro [subst \$${macro}(w)]]
}
set antennawidths [lsort -decreasing -index 1 -real $antennawidths]
set antennainfo [lindex $antennawidths 0]
set antennamacro [lindex $antennainfo 0]
set antennavalue [lindex $antennainfo 1]

set bodytiewidths {}
foreach macro $bodytiecells {
   lappend bodytiewidths [list $macro [subst \$${macro}(w)]]
}
set bodytiewidths [lsort -decreasing -index 1 -real $bodytiewidths]
set bodytieinfo [lindex $bodytiewidths 0]
set bodytiemacro [lindex $bodytieinfo 0]
set bodytievalue [lindex $bodytieinfo 1]

#------------------------------------------------------------------------
# Now read the contents of the cinfo file so that we have a list of the
# cells to add padding to
#------------------------------------------------------------------------

if {$scale > 0.0} {

   gets $finf line		;# Throw-away line
   gets $finf line		;# Throw-away line
   gets $finf line		;# Failures: X Y

   if {![regexp {[ \t]*Failures:[ \t]+([0-9]+)[ \t]+([0-9]+)} $line \
		lmatch failures numnets]} {
      puts stdout "Cannot parse number of route failures from .cinfo file!"
      exit 1
   }

   gets $finf line		;# Throw-away line

   #------------------------------------------------------------------------
   # Scale and offset adjustments
   #------------------------------------------------------------------------

   set failratio [expr {($failures + 0.0) / $numnets}]

   # Redefine scale and offset so that the calculations are easier
   # Adjust the scale according to the fail ratio

   set scale [expr {1.0 / $scale}]
   set scale [expr {$scale + 60 * $failratio}]
   set offset [expr {$offset - (1.0 / $scale)}]

   #------------------------------------------------------------------------

   set instlist {}
   set filllist {}
   while {[gets $finf line] >= 0} {
      if [regexp {[ \t]*([^ \t]+)[ \t]+([^ \t]+)} $line lmatch instname congest] {
         set numfill [expr {int(($congest - $offset) * $scale + 0.5)}]
         if {$numfill > 0} {
            lappend instlist $instname
            lappend filllist $numfill
         }
      }   
   }

   close $finf
} else {

   #------------------------------------------------------------------------
   # Fixed density planning (No .cinfo file, just fixed density value)
   # Read .cel file to get a list of all instances.  Record the total width
   # of all cells.  Determine how many fill cells need to be added to
   # reduce the density of actively routed cells to the specified amount.
   # Assign fill cells until the density requirement is met.  Use a sigma-
   # delta type approach to assigning cells to maintain close to the right
   # ratio of widths for each fill type.
   #------------------------------------------------------------------------

   set totalwidth 0
   set instlist {}
   set nopadlist {}
   while {[gets $fcel line] >= 0} {
      if [regexp {[ \t]*cell[ \t]*([0-9]+)[ \t]+([^ \t]+)} $line \
		lmatch instnum instname] {
         # NOTE:  The .cel file has names in the format <cellname>:<instname>
         if [regexp {([^:]+):[^:]+} $instname lmatch cellname] {
             if {[lsearch $nopadcells $cellname] >= 0} {
                 lappend nopadlist $instname
	     } else {
                 lappend instlist $instname
             }
	 } else {
             lappend instlist $instname
         }
	 gets $fcel line
	 regexp {[ \t]*left[ \t]+([-]*[0-9]+)[ \t]+right[ \t]+([-]*[0-9]+)} $line \
		lmatch left right
	 incr totalwidth [expr {$right - $left}]
      }
   }

   # alltotal is the total width of fill needed to achieve the specified
   # density.

   set alltotal [expr {$totalwidth * ((1.0 / $density) - 1.0)}]

   # calculate the total width of each type of fill cell to be added
   # to make up the total required fill.

   set filltotal [expr {int($alltotal * [lindex $fillratios 0] / 100)}]
   set decaptotal [expr {int($alltotal * [lindex $fillratios 1] / 100)}]
   set antennatotal [expr {int($alltotal * [lindex $fillratios 2] / 100)}]
   set bodytietotal [expr {int($alltotal * [lindex $fillratios 3] / 100)}]

   set numcells [expr {[llength $instlist] + [llength $nopadlist]}]

   # Diagnostic information
   puts stdout ""
   puts stdout "decongest.tcl:"
   puts stdout "Fixed density planning, density = $density"
   puts stdout "Number of cells = $numcells, total width = $totalwidth"
   puts stdout "Width of fill = $filltotal"
   puts stdout "Width of decap = $decaptotal"
   puts stdout "Width of antenna = $antennatotal"
   puts stdout "Width of body ties = $bodytietotal"
   puts stdout ""

   # Rewind the cel file for the next step
   seek $fcel 0 start
}

#------------------------------------------------------------------------
# Now read the contents of the cel file.  When a cell is found that is
# in the "instlist" list of cells, annotate the next line to increase
# the width by an amount equal to the width of a fill cell.
#
# Sigma delta approach:  Keep running total of the widths of all cells
# of each fill type used and a running total of the width of all cells
# in the design parsed so far.
#
# For each cell in the design:
# 1. Add the width of the cell to the running total
# 2. For each fill cell type,
#    A. Calculate the ratio of total width of the fill cells used so far
#	to the total width of standard cells parsed so far;
#    B. Knowing the target ratio of fill cell width to total cell width,
#	calculate the width of fill needed to add to reach that ratio.
#    C. Find the largest available fill cell width that does not exceed
#	the target ratio.
#    D. If there is such a fill cell, attach it to the standard cell and
#       add its width to the running total of fill cell width.
#
# Values used:
#    Total standard cell width = totalwidth
#    Aggregate standard cell width = aggwidth
#    Target fill cell width = filltotal
#    Target fill cell ratio = fillratio = (filltotal / totalwidth)
#    Aggregate fill cell width = fillagg
#    Target decap cell width = decaptotal
#    Target decap cell ratio = decapratio = (decaptotal / totalwidth)
#    Aggregate decap cell width = decapagg
#    Target antenna cell width = antennatotal
#    Target antenna cell ratio = antennaratio = (antennatotal / totalwidth)
#    Aggregate antenna cell width = antennaagg
#    Target body tie cell width = bodytietotal
#    Target body tie cell ratio = bodytieratio = (bodytietotal / totalwidth)
#    Aggregate body tie cell width = bodytieagg
# 
#------------------------------------------------------------------------

set fillratio    [expr {(0.0 + $filltotal) / $totalwidth}]
set decapratio   [expr {(0.0 + $decaptotal) / $totalwidth}]
set antennaratio [expr {(0.0 + $antennatotal) / $totalwidth}]
set bodytieratio [expr {(0.0 + $bodytietotal) / $totalwidth}]

set aggwidth 0

# Find the total number of instances to which fill will be attached
set numinsts [llength $instlist]

# Find the ideal exact amount of fill to add per instance.
set fillperinst [expr {(0.0 + $filltotal) / (0.0 + $numinsts)}]
set decapperinst [expr {(0.0 + $decaptotal) / (0.0 + $numinsts)}]
set antennaperinst [expr {(0.0 + $antennatotal) / (0.0 + $numinsts)}]
set bodytieperinst [expr {(0.0 + $bodytietotal) / (0.0 + $numinsts)}]

# Track the ideal amount of fill that should be added at any point in the output
set filltotalideal 0.0
set decaptotalideal 0.0
set antennatotalideal 0.0
set bodytietotalideal 0.0

# Track the actual amount of fill that has been added at any point in the output
set filltotalactual 0
set decaptotalactual 0
set antennatotalactual 0
set bodytietotalactual 0

set numfilltypes [llength $fillwidths]
if {$numfilltypes > 0} {
    set lastfillindex [expr {$numfilltypes - 1}]
    set lastfillentry [lindex $fillwidths $lastfillindex]
    set minfillwidth [lindex $lastfillentry 1]
} else {
    set minfillwidth 100    ;# any value above zero should do
}

set numdecaptypes [llength $decapwidths]
if {$numdecaptypes > 0} {
    set lastdecapindex [expr {$numdecaptypes - 1}]
    set lastdecapentry [lindex $decapwidths $lastdecapindex]
    set mindecapwidth [lindex $lastdecapentry 1]
} else {
    set mindecapwidth 100    ;# any value above zero should do
}

set numantennatypes [llength $antennawidths]
if {$numantennatypes > 0} {
    set lastantennaindex [expr {$numantennatypes - 1}]
    set lastantennaentry [lindex $antennawidths $lastantennaindex]
    set minantennawidth [lindex $lastantennaentry 1]
} else {
    set minantennawidth 100    ;# any value above zero should do
}

set numbodytietypes [llength $bodytiewidths]
if {$numbodytietypes > 0} {
    set lastbodytieindex [expr {$numbodytietypes - 1}]
    set lastbodytieentry [lindex $bodytiewidths $lastbodytieindex]
    set minbodytiewidth [lindex $lastbodytieentry 1]
} else {
    set minbodytiewidth 100    ;# any value above zero should do
}

while {[gets $fcel line] >= 0} {
   if [regexp {[ \t]*cell[ \t]*([0-9]+)[ \t]+([^ \t]+)} \
		$line lmatch instnum instname] {
      set instidx [lsearch $instlist $instname]

      gets $fcel cline
      if ![regexp {[ \t]*left[ \t]+([^ \t]+)[ \t]+right[ \t]+([^ \t]+)[ \t]+(.*)} \
			$cline lmatch left right rest] {
         puts $fanno $line	;# failed to parse, so output unchanged
         puts $fanno $cline

      } elseif {$instidx < 0} {
         puts $fanno $line	;# unknown/unhandled cell, so output unchanged
         puts $fanno $cline

      } else {
	 # Calculate cell width
	 set cellwidth [expr {$right - $left}]

         # Update the ideal fill total.
         set filltotalideal [expr {$filltotalideal + $fillperinst}]
         set decaptotalideal [expr {$decaptotalideal + $decapperinst}]
         set antennatotalideal [expr {$antennatotalideal + $antennaperinst}]
         set bodytietotalideal [expr {$bodytietotalideal + $bodytieperinst}]

         set needfill [expr {$filltotalideal - $filltotalactual}]
         set needdecap [expr {$decaptotalideal - $decaptotalactual}]
         set needantenna [expr {$antennatotalideal - $antennatotalactual}]
         set needbodytie [expr {$bodytietotalideal - $bodytietotalactual}]

         set cstr ""

         # If needfill is larger than half the minimum fill width, then add fill
         if {$needfill > [expr {$minfillwidth / 2}]} {
	    set fillagg 0
	    set lastfill ""
	    set lastwid 0
	    while {$needfill > $fillagg} {
	       set cwid 0
	       foreach fillinfo $fillwidths {
		  set cmac [lindex $fillinfo 0]
		  set cwid [lindex $fillinfo 1]
		  if {[expr {$fillagg + $cwid}] < $needfill} {
		     break
		  }
	       }
	       if {$cwid == 0} {break}
	       incr fillagg $cwid
	       incr cellwidth $cwid
               incr filltotalactual $cwid
               # puts stdout "Diagnostic: add fill width = $cwid"
               # puts stdout "Diagnostic: new cell width = $cellwidth"
	       if {$lastfill == ""} {
		  set lastfill $cmac
		  set lastwid $cwid
		  set multiplier 1
	       } elseif {$lastfill == $cmac} {
		  incr multiplier
	       } else {
		  if {$multiplier == 1} {
		     set cstr ${lastfill}.${lastwid}.${cstr}
		  } else {
		     set cstr ${lastfill}.${lastwid}X${multiplier}.${cstr}
		  }
		  set lastfill $cmac
		  set lastwid $cwid
		  set multiplier 1
	       }
	    }
	    if {$lastfill != ""} {
	       if {$multiplier == 1} {
		  set cstr ${lastfill}.${lastwid}.${cstr}
	       } else {
		  set cstr ${lastfill}.${lastwid}X${multiplier}.${cstr}
	       }
	    }
	 }

         # If needdecap is larger than half the minimum decap width, then add decap
         if {$needdecap > [expr {$mindecapwidth / 2}]} {
	    set decapagg 0
	    set lastfill ""
	    set lastwid 0
	    while {$needdecap > $decapagg} {
	       set cwid 0
	       foreach decapinfo $decapwidths {
		  set cmac [lindex $decapinfo 0]
		  set cwid [lindex $decapinfo 1]
		  if {[expr {$decapagg + $cwid}] < $needdecap} {
		     break
		  }
	       }
	       if {$cwid == 0} {break}
	       incr decapagg $cwid
	       incr cellwidth $cwid
               incr decaptotalactual $cwid
               # puts stdout "Diagnostic: add decap width = $cwid"
               # puts stdout "Diagnostic: new cell width = $cellwidth"
	       if {$lastfill == ""} {
		  set lastfill $cmac
		  set lastwid $cwid
		  set multiplier 1
	       } elseif {$lastfill == $cmac} {
		  incr multiplier
	       } else {
		  if {$multiplier == 1} {
		     set cstr ${lastfill}.${lastwid}.${cstr}
		  } else {
		     set cstr ${lastfill}.${lastwid}X${multiplier}.${cstr}
		  }
		  set lastfill $cmac
		  set lastwid $cwid
		  set multiplier 1
	       }
	    }
	    if {$lastfill != ""} {
	       if {$multiplier == 1} {
		  set cstr ${lastfill}.${lastwid}.${cstr}
	       } else {
		  set cstr ${lastfill}.${lastwid}X${multiplier}.${cstr}
	       }
	    }
	 }

         # If needantenna is larger than half the minimum antenna width, then add antenna
         if {$needantenna > [expr {$minantennawidth / 2}]} {
	    set antennaagg 0
	    set lastfill ""
	    set lastwid 0
	    while {$needantenna > $antennaagg} {
	       set cwid 0
	       foreach antennainfo $antennawidths {
		  set cmac [lindex $antennainfo 0]
		  set cwid [lindex $antennainfo 1]
		  if {[expr {$antennaagg + $cwid}] < $needantenna} {
		     break
		  }
	       }
	       if {$cwid == 0} {break}
	       incr antennaagg $cwid
	       incr cellwidth $cwid
               incr antennatotalactual $cwid
               # puts stdout "Diagnostic: add antenna width = $cwid"
               # puts stdout "Diagnostic: new cell width = $cellwidth"
	       if {$lastfill == ""} {
		  set lastfill $cmac
		  set lastwid $cwid
		  set multiplier 1
	       } elseif {$lastfill == $cmac} {
		  incr multiplier
	       } else {
		  if {$multiplier == 1} {
		     set cstr ${lastfill}.${lastwid}.${cstr}
		  } else {
		     set cstr ${lastfill}.${lastwid}X${multiplier}.${cstr}
		  }
		  set lastfill $cmac
		  set lastwid $cwid
		  set multiplier 1
	       }
	    }
	    if {$lastfill != ""} {
	       if {$multiplier == 1} {
		  set cstr ${lastfill}.${lastwid}.${cstr}
	       } else {
		  set cstr ${lastfill}.${lastwid}X${multiplier}.${cstr}
	       }
	    }
	 }

         # If needbodytie is larger than half the minimum bodytie width, then add bodytie
         if {$needbodytie > [expr {$minbodytiewidth / 2}]} {
	    set bodytieagg 0
	    set lastfill ""
	    set lastwid 0
	    while {$needbodytie > $bodytieagg} {
	       set cwid 0
	       foreach bodytieinfo $bodytiewidths {
		  set cmac [lindex $bodytieinfo 0]
		  set cwid [lindex $bodytieinfo 1]
		  if {[expr {$bodytieagg + $cwid}] < $needbodytie} {
		     break
		  }
	       }
	       if {$cwid == 0} {break}
	       incr bodytieagg $cwid
	       incr cellwidth $cwid
               incr bodytietotalactual $cwid
               # puts stdout "Diagnostic: add body tie width = $cwid"
               # puts stdout "Diagnostic: new cell width = $cellwidth"
	       if {$lastfill == ""} {
		  set lastfill $cmac
		  set lastwid $cwid
		  set multiplier 1
	       } elseif {$lastfill == $cmac} {
		  incr multiplier
	       } else {
		  if {$multiplier == 1} {
		     set cstr ${lastfill}.${lastwid}.${cstr}
		  } else {
		     set cstr ${lastfill}.${lastwid}X${multiplier}.${cstr}
		  }
		  set lastfill $cmac
		  set lastwid $cwid
		  set multiplier 1
	       }
	    }
	    if {$lastfill != ""} {
	       if {$multiplier == 1} {
		  set cstr ${lastfill}.${lastwid}.${cstr}
	       } else {
		  set cstr ${lastfill}.${lastwid}X${multiplier}.${cstr}
	       }
	    }
	 }
            
	 puts $fanno "cell $instnum ${cstr}${instname}"

         # puts stdout "Diagnostic: final cell width = $cellwidth"
	 set fleft [expr {-($cellwidth / 2)}]
	 set fright [expr {$fleft + $cellwidth}]
	 puts $fanno "left $fleft right $fright $rest"
      }
   } else {
      puts $fanno $line
   }
}

puts stdout "Done!"
