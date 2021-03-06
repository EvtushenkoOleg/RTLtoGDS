#!/usr/bin/tclsh
#---------------------------------------------------------------------------
# removeblocks.tcl ---
#
# First reads a <project_name>.cel1 file from the layout directory, if
# there is one.  If not, there is nothing to do.
#
# Parse all the "hardcell" lines and make a list of all the hardcell
# names that are being used as partial layout blockages.  Then, remove
# lines with these names from the .pl1 and .pl2 files.
#
# For each blockage, append an "obstruction" line to the <project_name>.obs
# file so that the router will be forced to route around each block.
#---------------------------------------------------------------------------

if {$argc == 0} {
   puts stdout "Usage:  removeblocks <project_name>"
   exit 0
}

set topname [file rootname [lindex $argv 0]]

set cel1file ${topname}.cel1
set pl1file ${topname}.pl1
set pl2file ${topname}.pl2
set obsfile ${topname}.obs
set infofile ${topname}.info

set tpl1file ${topname}_tmp.pl1
set tpl2file ${topname}_tmp.pl2

if [catch {open $cel1file r} fcel1] {
   puts stdout "No ${cel1file} file with partial blockages, so nothing to do."
   exit 0
}

#--------------------------------------------------------------

# Parse the .cel1 file, making a list of hardcell names

set cellnames {}

while {[gets $fcel1 line] >= 0} {
   # Look for lines in the file with the syntax:
   #     hardcell <id> name <cellname>
   if [regexp {^[ \t]*hardcell[ \t]+([^ \t]+)[\ t]+name[ \t]+([^ \t\r\n]+)}\
		$line lmatch cellid cellname] {
      lappend cellnames $cellname
   }
}
close $fcel1

if {[llength $cellnames] == 0} {
   puts stdout "File ${cel1file} contains no hard macros;  ignoring."
   exit 1
}

# Read the info file to get the units scale used for graywolf input/output
# and the list of route layers to be blocked.

set units 100
set layers {}
if [catch {open $infofile r} finf] {
   puts stderr "Error: can't open file $infofile for input; no obstructions will be generated."
} else {
   while {[gets $finf line] >= 0} {
      if [regexp {^[ \t]*units[ \t]+scale[ \t]+([^ \t]+)} $line lmatch units] {
	 puts stdout "Using scalefactor ${units} for route blockages."
      } elseif [regexp {^[ \t]*([^ \t]+)[ \t]+} $line lmatch layer] {
	 if {$layer != "qrouter"} {
	    lappend layers $layer
	 }
      }
   }
}

# Open graywolf output files for reading and writing

if [catch {open $pl1file r} fpl1] {
   puts stderr "Error: can't open file $pl1file for input"
   exit 1
}

if [catch {open $pl2file r} fpl2] {
   puts stderr "Error: can't open file $pl2file for input"
   exit 1
}

if [catch {open $tpl1file w} ftpl1] {
   puts stderr "Error: can't open file $tpl1file for output"
   exit 1
}

if [catch {open $tpl2file w} ftpl2] {
   puts stderr "Error: can't open file $tpl2file for output"
   exit 1
}

if [catch {open $obsfile w} fobs] {
   puts stderr "Error: can't open file $obsfile for output"
   exit 1
}

# Parse the .pl1 file, removing lines containing blockage hardcells

while {[gets $fpl1 line] >= 0} {
   if [regexp {^[ \t]*([^ \t]+)[ \t]+} $line lmatch cellname] {
       if {[lsearch $cellnames $cellname] < 0} {
           puts $ftpl1 $line
       } else {
	   # Parse the coordinates
           if [regexp {^[ \t]*[^ \t]+[ \t]+([0-9]+)[ \t]+([0-9]+)[ \t]+([0-9]+)[ \t]+([0-9]+)[ \t]+} $line lmatch llx lly urx ury] {
	      set blx1 [expr $llx / ($units + 0.0)]
	      set bly1 [expr $lly / ($units + 0.0)]
	      set blx2 [expr $urx / ($units + 0.0)]
	      set bly2 [expr $ury / ($units + 0.0)]
	      puts stdout "Blockage found at ($blx1 $bly1) to ($blx2 $bly2)"
	      foreach layer $layers {
	         puts $fobs "obstruction $blx1 $bly1 $blx2 $bly2 $layer"
	      }
	   } else {
	      puts stderr "Error:  Failed to parse blockage coordinates"
	   }
       }
   } else {
       puts $ftpl1 $line
   }
}
close $fobs

# Do the same thing with the .pl2 file

while {[gets $fpl2 line] >= 0} {
   if [regexp {^[ \t]*([^ \t]+)[ \t]+} $line lmatch cellname] {
       if {[lsearch $cellnames $cellname] < 0} {
           puts $ftpl2 $line
       }
   } else {
       puts $ftpl2 $line
   }
}

close $ftpl1
close $ftpl2
close $fpl1
close $fpl2

# Now rename the temporary files, overwriting the originals
file rename -force $tpl1file $pl1file
file rename -force $tpl2file $pl2file

# Successful exit
exit 0
