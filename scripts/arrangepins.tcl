#!/usr/bin/tclsh
#-----------------------------------------------------------------------
# arrangepins.tcl ---
#
# Pin reassignment surgery.  Your health plan does not cover this.
#
# Because graywolf has a truly horrific handling of pin placement, some
# redistribution of pins is needed after running placement.  graywolf
# does a generally good job of placing pins around the border but tends
# to cluster them unnecessarily, sometimes placing them far away from
# the pin to which they're connected.
#
# This routine parses the .cel2 file for pin hints, and then
# redistributes the pins around the layout perimeter, trying to maintain
# double spacing between pins when possible and not overlapping vectors
# as much as possible, weighed against the distance from pin to cell.
# Also avoids putting pins directly under power bus stripes.
#
# What it does:  Reads the (unrouted) DEF file for existing pin
# placements, adjusts the pin positions, and writes out a modified DEF
# file with new pin positions.
#
# Written by Tim Edwards, Open Circuit Design, 5/16/2018
#-----------------------------------------------------------------------

namespace path {::tcl::mathop ::tcl::mathfunc}

if {$argc < 1} {
   puts stdout "Usage:  arrangepins \[<options>\] <project_name>"
   puts stdout "Options:"
   puts stdout "   (none at present)"
   exit 0
}

set argidx 0

# Option parsing:  Take code from addspacers.tcl
set debug false

set topname [file rootname [lindex $argv $argidx]]

set defname ${topname}.def
set defoutname ${topname}_mod.def

set infoname ${topname}.info

set units 100           ;# write centimicron units into the DEF file (default)

#-----------------------------------------------------------------
# Open all files for reading and writing
#-----------------------------------------------------------------

if [catch {open $defname r} fdef] {
    puts stderr "Error: can't open DEF file $defname for input"
    return
}

# The .info file is optional;  get track pitch and width information
# for each layer.

set layersrec [dict create]

if {![catch {open $infoname r} finfo]} {
    puts stdout "Reading info file ${infoname}. . ."
    while {[gets $finfo line] >= 0} {
	if [regexp {[ \t]*#} $line lmatch] {
            continue
	} elseif [regexp {[ \t]*qrouter[ \t]+([^ \t]+)} $line lmatch qversion] {
	    continue
	} elseif [regexp {[ \t]*([^ \t]+)[ \t]+([^ \t]+)[ \t]+([^ \t]+)[ \t]+([^ \t]+)[ \t]+([^ \t\n]+)} $line lmatch layername pitch offset width orient] {
	    # Note:  Could make use of pitch information here, relying on DEF file
	    # TRACKS section instead.

	    set layerrec [dict create]
	    if {$orient == "vertical"} {
		dict set layerrec xpitch $pitch
	    } else {
		dict set layerrec ypitch $pitch
	    }
	    dict set layerrec offset $offset
	    dict set layerrec width $width
	    dict set layersrec $layername $layerrec
	}
    }
    close $finfo
}

puts stdout "Reading DEF file ${defname}. . ."
flush stdout

set pinsrec [dict create]
set specialrec [dict create]
set compsrec [dict create]
set inspecial false
set incomps false
set inpins false
set innets false

while {[gets $fdef line] >= 0} {
    if [regexp {[ \t]*#} $line lmatch] {
        continue
    } elseif [regexp {[ \t]*UNITS[ \t]+DISTANCE[ \t]+MICRONS[ \t]+([^ \t]+)[ \t]*;} $line lmatch number] {
	set units $number
    } elseif [regexp {[ \t]*SPECIALNETS[ \t]+([^ \t]+)[ \t]*;} $line lmatch number] {
        # Parse the "SPECIALNETS" statement
	if $debug {puts stdout "start specialnets section"}
	set inspecial true
    } elseif [regexp {[ \t]*NETS[ \t]+([^ \t]+)[ \t]*;} $line lmatch number] {
        # Parse the "NETS" statement
	if $debug {puts stdout "start nets section"}
	set innets true
    } elseif [regexp {[ \t]*PINS[ \t]+([^ \t]+)[ \t]*;} $line lmatch number] {
        set rows [dict create]
        # Parse the "PINS" statement
	if $debug {puts stdout "start pins section"}
	set inpins true
    } elseif [regexp {[ \t]*COMPONENTS[ \t]+([^ \t]+)[ \t]*;} $line lmatch number] {
        # Parse the "COMPONENTS" statement
	if $debug {puts stdout "start components section"}
	set incomps true
    }
    if $innets {
	if [regexp {[ \t]*END[ \t]+NETS} $line lmatch] {
	    if $debug {puts stdout "end nets section"}
	    set innets false
	} elseif [regexp {[ \t]*-[ \t]+([^ \t]+)} $line lmatch netname] {
	    if [catch {set pinrec [dict get $pinsrec $netname]}] {
		set netname ""
	    }
	    incr number -1
	} elseif {($netname != "") && [regexp {[ \t]*\([ \t]*([^ \t]+)} $line lmatch instname]} {
	    # Pull the pin record (NOTE:  This assumes the pin name = the net name.
	    # This is true for qflow.  Otherwise, would need a cross-referencing
	    # dictionary indexed by net name).
	    if {![catch {set instbounds [dict get $compsrec $instname]}]} {
		# Dictionary lookup will fail for instance PIN, which is the
		# behavior we want.  Process only instance connections internal
		# to the digital core.

		set instx [lindex $instbounds 0]
		set insty [lindex $instbounds 1]

		# Use the sorted record of instance X, Y positions to determine
		# the center position of the instance.

		set yidx [lsearch $yrows $insty]
		set topy [lindex $yrows [+ $yidx 1]]

		set xidx [lsearch [subst \$row$insty] $instx]
		set topx [lindex [subst \$row$insty] [+ $xidx 1]]

		# puts stdout "yidx = $yidx, topy = $topy"
		# puts stdout "xidx = $xidx, topx = $topx"

		set instx [/ [+ $instx $topx] 2]
		set insty [/ [+ $insty $topy] 2]
		
		if {![catch {set bbox [dict get $pinrec bbox]}]} {
		    set llx [lindex $bbox 0]
		    set lly [lindex $bbox 1]
		    set urx [lindex $bbox 2]
		    set ury [lindex $bbox 3]
		    if {$instx < $llx} {set llx $instx}
		    if {$insty < $lly} {set lly $insty}
		    if {$instx > $urx} {set urx $instx}
		    if {$insty > $ury} {set ury $insty}
		    set bbox [list $llx $lly $urx $ury]
		    dict set pinrec bbox $bbox
		} else {
		    dict set pinrec bbox [list $instx $insty $instx $insty]
		}
		# Update the pinrec entry
		dict set pinsrec $netname $pinrec
	    }
	}
    } elseif $incomps {
	if [regexp {[ \t]*END[ \t]+COMPONENTS} $line lmatch] {
	    set incomps false
	    if $debug {puts stdout "end components section"}

	    # Sort the row Y values
	    set yrows [lsort -integer -unique $yrows]

	    # Find the unique set of rows
	    set numrows [llength $yrows]
	    set lastyrow [lindex $yrows [- $numrows 1]]
	    if {$numrows > 1} {
	        set prevyrow [lindex $yrows [- $numrows 2]]
	        set rowheight [- $lastyrow $prevyrow]
	    } else {
		# This is a hack default, in case of a one-row layout.
		# Need to get the row height information from the cell or SITE.
	        set rowheight 1000
	    }

	    # Sort the X value ranges in each row
	    foreach yval $yrows {
		set row$yval [lsort -integer -unique [subst \$row$yval]]
		lappend row$yval $dieurx
	    }

	    # Add one row to list for the top side of the topmost row
	    lappend yrows [+ $lastyrow $rowheight]

	    # puts stdout "Length of yrows is [llength $yrows]"
	    # puts stdout "Next-to-last yrow is [lindex $yrows [- [llength $yrows] 2]]"
	    # puts stdout "Last yrow is [lindex $yrows [- [llength $yrows] 1]]"

	} elseif [regexp {[ \t]*-[ \t]+([^ \t]+)[ \t]+[^ \t]+[ \t]+\+[ \t]+PLACED[ \t]+\([ \t]*(-?[0-9]+)[ \t]+(-?[0-9]+)[ \t]*\)} $line lmatch instname instx insty] {
	    # Record the position of this instance for matching to pins.  Only
	    # need placement X and Y for a rough estimate of all pin positions.
	    dict set compsrec $instname [list $instx $insty]

	    # Record the X and Y positions in arrays that can be used to
	    # track down the cell centerpoints, a better estimate of the
	    # optimal route position than the lower left hand corner.

	    lappend yrows $insty
	    lappend row$insty $instx
	}
    } elseif $inspecial {
	if [regexp {[ \t]*END[ \t]+SPECIALNETS} $line lmatch] {
	    set inspecial false
	    if $debug {puts stdout "end specialnets section"}
	} elseif [regexp {[ \t]*-[ \t]+([^ \t]+)} $line lmatch netname] {
	    # Remove specialnets from the pin list and place them in
	    # a different record.
	    if {![catch {set pinrec [dict get $pinsrec $netname]}]} {
                if $debug {puts stdout "Removing $netname from pinsrec dict:"}
		dict unset pinsrec $netname
		dict set pinrec xranges []
		dict set specialrec $netname $pinrec
	    }
	    incr number -1
	} elseif [regexp {[ \t]*NEW[ \t]+[^ \t]+[ \t]+([^ \t]+)[ \t]+\([ \t]*(-?[0-9]+)[ \t]+-?[0-9]+[ \t]*\)[ \t]*\([ \t]*\*[ \t]+-?[0-9]+[ \t]*\)} $line lmatch width xmid] {
	    # Find the vertical stripes and register the X range of each
	    catch {
		if {$xmid > 0} {	;# ignore metal1 comb buses on left
		    set xranges [dict get $pinrec xranges]
		    set hwid [/ $width 2] 
		    set xlow [- $xmid $hwid]
		    set xhigh [+ $xmid $hwid]
		    lappend xranges [list $xlow $xhigh]
		    dict set pinrec xranges $xranges
		    dict set specialrec $netname $pinrec
		}
	    }
	}
    } elseif $inpins {
	if [regexp {[ \t]*END[ \t]+PINS} $line lmatch] {
	    set inpins false
	    if $debug {puts stdout "end pins section"}
	} elseif [regexp {[ \t]*-[ \t]+([^ \t]+)[ \t]+\+[ \t]+NET[ \t]+([^ \t]+)} $line lmatch pinname netname] {
	    set pinrec [dict create]
	    dict set pinrec net $netname
	    dict set pinsrec $pinname $pinrec
	    incr number -1
	} elseif [regexp {[ \t]*\+[ \t]+PLACED[ \t]+\([ \t]*(-?[0-9]+)[ \t]+(-?[0-9]+)[ \t]*\)[ \t]+([^ \t]+)[ \t]*;} $line lmatch pinx piny pino] {
	    dict set pinrec x $pinx
	    dict set pinrec y $piny
	    dict set pinrec o $pino
	    dict set pinsrec $pinname $pinrec
	} elseif [regexp {[ \t]*\+[ \t]+LAYER[ \t]+([^ \t]+)[ \t]+\([ \t]*(-?[0-9]+)[ \t]+(-?[0-9]+)[ \t]*\)[ \t]*\([ \t]*(-?[0-9]+)[ \t]+(-?[0-9]+)[ \t]*\)} $line lmatch layer llx lly urx ury] {
	    dict set pinrec llx $llx
	    dict set pinrec lly $lly
	    dict set pinrec urx $urx
	    dict set pinrec ury $ury
	    dict set pinrec layer $layer
	    dict set pinsrec $pinname $pinrec
	}
    } else {
	if [regexp {[ \t]*TRACKS[ \t]+([XY])[ \t]+[^ \t]+[ \t]+DO[ \t]+[^ \t]+[ \t]+STEP[ \t]+([^ \t]+)[ \t]+LAYER[ \t]+([^ \t;]+)[ \t]*;} $line lmatch orient pitch layer] {
	    if {[dict exists $layersrec $layer]} {
		set layerrec [dict get $layersrec $layer]
	    } else {
		set layerrec [dict create]
	    }
	    if {$orient == "X"} {
		dict set layerrec xpitch $pitch
	    } else {
		dict set layerrec ypitch $pitch
	    }
	    dict set layersrec $layer $layerrec

 	} elseif [regexp {[ \t]*DIEAREA[ \t]+\([ \t]*(-?[0-9]+)[ \t]+(-?[0-9]+)[ \t]*\)[ \t]*\([ \t]*(-?[0-9]+)[ \t]+(-?[0-9]+)[ \t]*\)} $line lmatch diellx dielly dieurx dieury] {
	    # Initialize the pin bounding box to the die area center point
	    set pinllx [/ [+ $diellx $dieurx] 2]
	    set pinlly [/ [+ $dielly $dieury] 2]
	    set pinurx $pinllx
	    set pinury $pinlly
	}
    }
}

# Check if all layer records have an xpitch and a ypitch.  If one is
# missing, pull it from the next layer above, or failing that, below.

# Note that "dict keys" preserves order
set layernames [dict keys $layersrec]

# Run once forwards to make sure xpitch and ypitch are seeded with
# the values for the highest layer for which each one is defined.

for {set i 0} {$i < [llength $layernames]} {incr i} {
   set layername [lindex $layernames $i]
   set layerrec [dict get $layersrec $layername]
   catch {set xpitch [dict get $layerrec xpitch]}
   catch {set ypitch [dict get $layerrec ypitch]}
}

# Now run backwards, so that each layer gets xpitch and ypitch
# defined, taking the value from the closest layer above it, if
# it is not defined.

for {set i [- [llength $layernames] 1]} {$i >= 0} {incr i -1} {
   set layername [lindex $layernames $i]
   set layerrec [dict get $layersrec $layername]

   # Get layer's xpitch and ypitch, otherwise set it to the current value.
   if [catch {set xpitch [dict get $layerrec xpitch]}] {
      dict set layerrec xpitch $xpitch
   }
   if [catch {set ypitch [dict get $layerrec ypitch]}] {
      dict set layerrec ypitch $ypitch
   }

   # Write modified entry back to master dictionary
   dict set layersrec $layername $layerrec
}

close $fdef

# Expand the pin bounding box to contain all the core pins

if $debug {puts stdout "Pin area bounds: lly = $pinlly"}
dict for {pinname pinrec} $pinsrec {
    set pinx [dict get $pinrec x]
    set piny [dict get $pinrec y]
    if {$pinx < $pinllx} {set pinllx $pinx}
    if {$pinx > $pinurx} {set pinurx $pinx}
    if {$piny < $pinlly} {
	if $debug {puts stdout "Pin $pinname new area bounds: lly = $piny"}
	set pinlly $piny
    }
    if {$piny > $pinury} {set pinury $piny}
}

# Diagnostic
if $debug {
    puts stdout "Analysis of DEF file:"
    puts stdout "Layout bounding box:"
    puts stdout "($diellx $dielly) ($dieurx $dieury)"
    puts stdout ""
    puts stdout "Pin bounding box:"
    puts stdout "($pinllx $pinlly) ($pinurx $pinury)"
    puts stdout ""
    puts stdout "Pins:"
    dict for {pinname pinrec} $pinsrec {
	puts -nonewline stdout "pin=$pinname "
	dict for {key value} $pinrec {
	    puts -nonewline stdout "$key=$value "
	}
	puts stdout ""
    }
    puts stdout ""

    puts stdout "Specialnets:"
    dict for {pinname pinrec} $specialrec {
	puts -nonewline stdout "pin=$pinname "
	dict for {key value} $pinrec {
	    puts -nonewline stdout "$key=$value "
	}
	puts stdout ""
    }
    puts stdout ""

    puts stdout "Layers:"
    dict for {layername layerspec} $layersrec {
	puts -nonewline stdout "layer=$layername "
	dict for {key value} $layerspec {
	    puts -nonewline stdout "$key=$value "
	}
	puts stdout ""
    }
    puts stdout ""

    puts stdout "Components:"
    dict for {instname instpos} $compsrec {
	set x [lindex $instpos 0]
	set y [lindex $instpos 1]
	puts stdout "instance=$instname position=($x $y)"
    }
    puts stdout ""
}

#-----------------------------------------------------------------
# Use STEP size from TRACKS and existing pin bounding box to
# define available slots for pins on each side
#-----------------------------------------------------------------

# What layer is used for each side?  If one side has no pins, assume
# it uses the same layer as the opposite side.

dict for {pinname pinrec} $pinsrec {
    set pinx [dict get $pinrec x]
    set piny [dict get $pinrec y]
    set pinl [dict get $pinrec layer]
    if {$pinx == $pinllx} {
	set leftlayer $pinl
	if [catch {set rightlayer}] {set rightlayer $pinl}
    } elseif {$pinx == $pinurx} {
	set rightlayer $pinl
	if [catch {set leftlayer}] {set leftlayer $pinl}
    } elseif {$piny == $pinlly} {
	set botlayer $pinl
	if [catch {set toplayer}] {set toplayer $pinl}
    } elseif {$piny == $pinury} {
	set toplayer $pinl
	if [catch {set botlayer}] {set botlayer $pinl}
    }
}

if [catch {set layerspec [dict get $layersrec $leftlayer]}] {
    # Left and right sides unoccupied---set to a placeholder value
    set leftpitch 1
} else {
    set leftpitch [dict get $layerspec ypitch]
    # (Not used)
    set leftslots [/ [- $pinury $pinlly] $leftpitch]
    set leftbottrack [/ $pinlly $leftpitch]
}

if [catch {set layerspec [dict get $layersrec $rightlayer]}] {
    # Left and right sides unoccupied---set to a placeholder value
    set rightpitch 1
} else {
    set rightpitch [dict get $layerspec ypitch]
    # (Not used)
    set rightslots [/ [- $pinury $pinlly] $rightpitch]
    set rightbottrack [/ $pinlly $rightpitch]
}

if [catch {set layerspec [dict get $layersrec $botlayer]}] {
    # Top and bottom sides unoccupied---set to a placeholder value
    set botpitch 1
} else {
    set botpitch [dict get $layerspec xpitch]
    # (Not used)
    set botslots [/ [- $pinurx $pinllx] $botpitch]
    set botlefttrack [/ $pinllx $botpitch]
}

if [catch {set layerspec [dict get $layersrec $toplayer]}] {
    # Top and bottom sides unoccupied---set to a placeholder value
    set toppitch 1
} else {
    set toppitch [dict get $layerspec xpitch]
    # (Not used)
    set topslots [/ [- $pinurx $pinllx] $toppitch]
    set toplefttrack [/ $pinllx $toppitch]
}

# Diagnostic
if $debug {
    puts stdout "Slot pitches:"
    puts stdout ""
    puts stdout "Left   = $leftpitch"
    puts stdout "Right  = $rightpitch"
    puts stdout "Top    = $toppitch"
    puts stdout "Bottom = $botpitch"
    puts stdout ""
}

#--------------------------------------------------------------------
# Place existing pins in rows, either left to right or bottom to top
# Generate list with pin name and relevant axis position, then sort
# by position.  Also divide position by relevant pitch and take
# integer to get a track value rather than a physical distance.
#--------------------------------------------------------------------

set toprow {}
set botrow {}
set leftrow {}
set rightrow {}

dict for {pinname pinrec} $pinsrec {
    set pinx [dict get $pinrec x]
    set piny [dict get $pinrec y]
    set pinl [dict get $pinrec layer]

    # If a pin has more than one match to the pin bounds, then check
    # which side is closest to a die area bound.

    set matchleft false
    set matchright false
    set matchtop false
    set matchbottom false

    if {$pinx <= $pinllx} {
        set matchleft true
    }
    if {$pinx >= $pinurx} {
        set matchright true
    }
    if {$piny <= $pinlly} {
        set matchbottom true
    }
    if {$piny >= $pinury} {
        set matchtop true
    }

    # Corner cases, so to speak.
	
    if {$matchleft && $matchtop} {
	set leftdist [abs [- $diellx $pinx]]
	set topdist [abs [- $dieury $piny]]
	if {$topdist < $leftdist} {
	    set matchleft false
	} else {
	    set matchtop false
	}
    } elseif {$matchleft && $matchbottom} {
	set leftdist [abs [- $diellx $pinx]]
	set bottomdist [abs [- $dielly $piny]]
	if {$bottomdist < $leftdist} {
	    set matchleft false
	} else {
	    set matchbottom false
	}
    } elseif {$matchright && $matchtop} {
	set rightdist [abs [- $dieurx $pinx]]
	set topdist [abs [- $dieury $piny]]
	if {$topdist < $rightdist} {
	    set matchright false
	} else {
	    set matchtop false
	}
    } elseif {$matchright && $matchbottom} {
	set rightdist [abs [- $dieurx $pinx]]
	set bottomdist [abs [- $dielly $piny]]
	if {$bottomdist < $rightdist} {
	    set matchright false
	} else {
	    set matchbottom false
	}
    }

    if {$matchleft} {
	lappend leftrow [list $pinname [/ $piny $leftpitch]]
    } elseif {$matchright} {
	lappend rightrow [list $pinname [/ $piny $rightpitch]]
    } elseif {$matchbottom} {
	lappend botrow [list $pinname [/ $pinx $botpitch]]
    } elseif {$matchtop} {
	lappend toprow [list $pinname [/ $pinx $toppitch]]
    } else {
	# Check against DIEAREA bounds.  Determine whether to adjust pin bounds
        # to match the DIEAREA bound.  This corrects for problems where the
	# placement tool puts pins out-of-bounds.  Arrangepins will pull them
	# back in.

	if {$pinx <= $diellx} {
	    lappend leftrow [list $pinname [/ $piny $leftpitch]]
	    if {$pinx > $pinllx} {
		set pinllx $pinx
	    }
	} elseif {$pinx >= $dieurx} {
	    lappend rightrow [list $pinname [/ $piny $rightpitch]]
	    if {$pinx < $pinurx} {
		set pinurx $pinx
	    }
	} elseif {$piny <= $dielly} {
	    lappend botrow [list $pinname [/ $pinx $botpitch]]
	    if {$piny > $pinlly} {
		set pinlly $piny
	    }
	} elseif {$piny >= $dieury} {
	    lappend toprow [list $pinname [/ $pinx $toppitch]]
	    if {$piny < $pinury} {
		set pinury $piny
	    }
	} else {
	    puts stderr "Warning!  Pin $pinname did not match any border position!"
	    puts stderr "Pin area bounds are ($pinllx $pinlly) to ($pinurx $pinury)"
	    puts stderr "Pin $pinname position is ($pinx $piny)"
	    puts stderr ""
	}
    }
}

# Sort rows

set leftrow [lsort -integer -index 1 $leftrow]
set rightrow [lsort -integer -index 1 $rightrow]
set botrow [lsort -integer -index 1 $botrow]
set toprow [lsort -integer -index 1 $toprow]

# Diagnostic!
if $debug {
    puts stdout "Sorted rows:"
    puts stdout "Left row:"
    foreach entry $leftrow {
	puts stdout $entry
    }
    puts stdout ""

    puts stdout "Right row:"
    foreach entry $rightrow {
	puts stdout $entry
    }
    puts stdout ""

    puts stdout "Top row:"
    foreach entry $toprow {
	puts stdout $entry
    }
    puts stdout ""

    puts stdout "Bottom row:"
    foreach entry $botrow {
	puts stdout $entry
    }
    puts stdout ""
}

# Now for each pin in each row, find the positions that are inside
# the route target instances' bounding box, and append those
# positions to the list entry

set newleftrow {}
foreach entry $leftrow {
    set pinrec [dict get $pinsrec [lindex $entry 0]]
    if {![catch {set pinbbox [dict get $pinrec bbox]}]} {
	set pinbot [/ [lindex $pinbbox 1] $leftpitch]
	set pintop [/ [lindex $pinbbox 3] $leftpitch]
    } else {
	puts stdout "Warning: pin [lindex $entry 0] has no bounding box."
	set pinbot [- [/ [dict get $pinrec y] $leftpitch] 1]
	set pintop [+ [/ [dict get $pinrec y] $leftpitch] 1]
    }
    lappend newleftrow [concat $entry $pinbot $pintop]
}

set newrightrow {}
foreach entry $rightrow {
    set pinrec [dict get $pinsrec [lindex $entry 0]]
    if {![catch {set pinbbox [dict get $pinrec bbox]}]} {
	set pinbot [/ [lindex $pinbbox 1] $rightpitch]
	set pintop [/ [lindex $pinbbox 3] $rightpitch]
    } else {
	puts stdout "Warning: pin [lindex $entry 0] has no bounding box."
	set pinbot [- [/ [dict get $pinrec y] $rightpitch] 1]
	set pintop [+ [/ [dict get $pinrec y] $rightpitch] 1]
    }
    lappend newrightrow [concat $entry $pinbot $pintop]
}

set newtoprow {}
foreach entry $toprow {
    set pinrec [dict get $pinsrec [lindex $entry 0]]
    if {![catch {set pinbbox [dict get $pinrec bbox]}]} {
	set pinleft [/ [lindex $pinbbox 0] $toppitch]
	set pinright [/ [lindex $pinbbox 2] $toppitch]
    } else {
	puts stdout "Warning: pin [lindex $entry 0] has no bounding box."
	set pinleft [- [/ [dict get $pinrec x] $toppitch] 1]
	set pinright [+ [/ [dict get $pinrec x] $toppitch] 1]
    }
    lappend newtoprow [concat $entry $pinleft $pinright]
}

set newbotrow {}
foreach entry $botrow {
    set pinrec [dict get $pinsrec [lindex $entry 0]]
    if {![catch {set pinbbox [dict get $pinrec bbox]}]} {
	set pinleft [/ [lindex $pinbbox 0] $botpitch]
	set pinright [/ [lindex $pinbbox 2] $botpitch]
    } else {
	puts stdout "Warning: pin [lindex $entry 0] has no bounding box."
	set pinleft [- [/ [dict get $pinrec x] $botpitch] 1]
	set pinright [+ [/ [dict get $pinrec x] $botpitch] 1]
    }
    lappend newbotrow [concat $entry $pinleft $pinright]
}

set topmax [/ $pinurx $toppitch]
set topmin [/ $pinllx $toppitch]
set botmax [/ $pinurx $botpitch]
set botmin [/ $pinllx $botpitch]
set leftmax [/ $pinury $leftpitch]
set leftmin [/ $pinlly $leftpitch]
set rightmax [/ $pinury $rightpitch]
set rightmin [/ $pinlly $rightpitch]

if $debug {
    puts stdout "Pin slots:"
    puts stdout "  Top, $topmin to $topmax"
    puts stdout "  Bottom, $botmin to $botmax"
    puts stdout "  Left, $leftmin to $leftmax"
    puts stdout "  Right, $rightmin to $rightmax"
}

# Diagnostic!
if $debug {
    puts stdout "Left row:"
    foreach entry $newleftrow {
	puts stdout $entry
    }
    puts stdout ""

    puts stdout "Right row:"
    foreach entry $newrightrow {
	puts stdout $entry
    }
    puts stdout ""

    puts stdout "Top row:"
    foreach entry $newtoprow {
	puts stdout $entry
    }
    puts stdout ""

    puts stdout "Bottom row:"
    foreach entry $newbotrow {
	puts stdout $entry
    }
    puts stdout ""
}

#-----------------------------------------------------------------
# Find the X ranges along top and bottom where we want to avoid
# placing pins due to the presence of power supply stripe posts,
# which tend to get in the way of routes.
#
# Expand each range by one track pitch to make sure routes can
# go vertically from the pin without creating a DRC spacing error
# with the power post.
#-----------------------------------------------------------------

set xbranges {}
set xtranges {}
dict for {pinname pinrec} $specialrec {
    catch {
	set locxranges [dict get $pinrec xranges]
	foreach xpair $locxranges {
	    set xblow [- [/ [lindex $xpair 0] $botpitch] 1]
	    set xbhigh [+ [/ [lindex $xpair 1] $botpitch] 1]
	    set xtlow [- [/ [lindex $xpair 0] $toppitch] 1]
	    set xthigh [+ [/ [lindex $xpair 1] $toppitch] 1]
	    lappend xbranges [list $xblow $xbhigh]
	    lappend xtranges [list $xtlow $xthigh]
	}
    }
}

set xbranges [lsort -integer -index 0 $xbranges]
set xtranges [lsort -integer -index 0 $xtranges]

if $debug {
    puts stdout "X pin slot forbidden ranges (bottom):"
    foreach xpair $xbranges {
	set xlow [lindex $xpair 0]
	set xhigh [lindex $xpair 1]
	puts stdout "($xlow $xhigh)"
    }
}

# For speed it is worth making a mask array of the forbidden ranges
# Each value is either -1 for no obstruction, or the value is the
# index of the X-range pair, so that the pair can be looked up
# quickly to find the bottom and top of the range.  Note that the
# mask position is offset by $topmin or $botmin.

set i $botmin
set j 0
foreach xpair $xbranges {
    set xlow [lindex $xpair 0]
    set xhigh [lindex $xpair 1]

    for {} {$i < $xlow} {incr i} {
	lappend xbmask -1 
    }
    for {} {$i <= $xhigh} {incr i} {
	lappend xbmask $j
    }
    incr j
}
for {} {$i <= $botmax} {incr i} {
    lappend xbmask -1 
}

if $debug {
    puts stdout "xbmask ="
    for {set i 0} {$i < [llength $xbmask]} {incr i} {
        set mval [lindex $xbmask $i]
	if {$mval == -1} {
	    puts stdout "$i = $mval"
	} else {
	    puts stdout "$i = $mval ([lindex $xbranges $mval])"
	}
    }
}

set i $topmin
set j 0
foreach xpair $xtranges {
    set xlow [lindex $xpair 0]
    set xhigh [lindex $xpair 1]

    for {} {$i < $xlow} {incr i} {
	lappend xtmask -1
    }
    for {} {$i <= $xhigh} {incr i} {
	lappend xtmask $j
    }
    incr j
}
for {} {$i <= $topmax} {incr i} {
    lappend xtmask -1
}

#-----------------------------------------------------------------
# Pin adjustment
#-----------------------------------------------------------------

puts stdout "Recalculating pin positions"
set iterations 1	;# More than one iteration has little effect

set testleftrow $newleftrow
for {set i 0} {$i < $iterations} {incr i} {
    for {set j 0} {$j < [llength $testleftrow]} {incr j} {

	# Each pin has a position and a range of positions that are
	# inside the bounding box of the cells to which the pin connects.
	# Adjust pins to keep all pins as close to their bounding boxes
	# as possible while maintaining the order of the pins, and while
	# keeping pins two tracks away (preferably).  This is an iterative
	# process, so run 20 times (ad hoc value).

	# To do:  If pins are too crowded, move up two metal layers if
	# possible.

	set below [lindex $testleftrow [- $j 1]]
	if {$below == {}} {
	    set lbound 0
	} else {
	    set lbound [+ [lindex $below 1] 2]
	}
	set above [lindex $testleftrow [+ $j 1]]
	if {$above == {}} {
	    set ubound $leftmax
	} else {
	    set ubound [- [lindex $above 1] 2]
	}

	# By expanding to a spacing of 2 grids per pin, occasionally
	# the bounds get squeezed.  If ubound is less than lbound,
	# then renumber everything downward.
	
	if {$ubound < $lbound} {
	    set nval [- $ubound 2]
	    set lbound $ubound
	    for {set k [- $j 1]} {$k >= 0} {incr k -1} {
		set below [lindex $testleftrow $k]
	        set bval [lindex $below 1]
		if {$bval <= $nval} {
		    break
		}
		set below [lreplace $below 1 1 $nval]
		set testleftrow [lreplace $testleftrow $k $k $below]
		set nval [- $nval 2]
	    }
	}

	set here  [lindex $testleftrow $j]
	set rangel [lindex $here 2]
	set rangeu [lindex $here 3]
	set curval [lindex $here 1]

	# If the current position is inside the bounds, do nothing.
	# Otherwise, move to the nearest range bound if the nearest
	# range bound is between the pin and the next pin.  If not,
	# move the pin as close to the range bound as possible while
	# maintaining a distance of 2 from the next pin.

	if {$curval < $rangel} {
	    if {$rangel < $ubound} {
		if {$rangel > $lbound} {
		    set newval $rangel
		} else {
		    set newval $lbound
		}
	    } else {
		set newval $ubound
	    }
	    set newentry [lreplace $here 1 2 $newval [- $rangel 4]]
	    set testleftrow [lreplace $testleftrow $j $j $newentry]
	} elseif {$curval > $rangeu} {
	    if {$rangeu > $lbound} {
		if {$rangeu < $ubound} {
		    set newval $rangeu
		} else {
		    set newval $ubound
		}
	    } else {
		set newval $lbound
	    }
	    set newentry [lreplace $here 1 3 $newval $rangel [+ $rangeu 4]]
	    set testleftrow [lreplace $testleftrow $j $j $newentry]
	}
    }
}

# Same procedure for the other sides.

set testrightrow $newrightrow
for {set i 0} {$i < $iterations} {incr i} {
    for {set j 0} {$j < [llength $testrightrow]} {incr j} {

	set below [lindex $testrightrow [- $j 1]]
	if {$below == {}} {
	    set lbound 0
	} else {
	    set lbound [+ [lindex $below 1] 2]
	}
	set above [lindex $testrightrow [+ $j 1]]
	if {$above == {}} {
	    set ubound $rightmax
	} else {
	    set ubound [- [lindex $above 1] 2]
	}

	if {$ubound < $lbound} {
	    set nval [- $ubound 2]
	    set lbound $ubound
	    for {set k [- $j 1]} {$k >= 0} {incr k -1} {
		set below [lindex $testrightrow $k]
	        set bval [lindex $below 1]
		if {$bval <= $nval} {
		    break
		}
		set below [lreplace $below 1 1 $nval]
		set testrightrow [lreplace $testrightrow $k $k $below]
		set nval [- $nval 2]
	    }
	}

	set here  [lindex $testrightrow $j]
	set rangel [lindex $here 2]
	set rangeu [lindex $here 3]
	set curval [lindex $here 1]

	if {$curval < $rangel} {
	    if {$rangel < $ubound} {
		if {$rangel > $lbound} {
		    set newval $rangel
		} else {
		    set newval $lbound
		}
	    } else {
		set newval $ubound
	    }
	    set newentry [lreplace $here 1 2 $newval [- $rangel 4]]
	    set testrightrow [lreplace $testrightrow $j $j $newentry]
	} elseif {$curval > $rangeu} {
	    if {$rangeu > $lbound} {
		if {$rangeu < $ubound} {
		    set newval $rangeu
		} else {
		    set newval $ubound
		}
	    } else {
		set newval $lbound
	    }
	    set newentry [lreplace $here 1 3 $newval $rangel [+ $rangeu 4]]
	    set testrightrow [lreplace $testrightrow $j $j $newentry]
	}
    }
}

# NOTE:  Top and bottom row calculations differ from left and right
# by checking the position of power posts in lists xtranges and
# xbranges, and avoiding those values

set testtoprow $newtoprow
for {set i 0} {$i < $iterations} {incr i} {
    for {set j 0} {$j < [llength $testtoprow]} {incr j} {

	set below [lindex $testtoprow [- $j 1]]
	if {$below == {}} {
	    set lbound 0
	} else {
	    set lbound [+ [lindex $below 1] 2]
	}
	set above [lindex $testtoprow [+ $j 1]]
	if {$above == {}} {
	    set ubound $topmax
	} else {
	    set ubound [- [lindex $above 1] 2]
	}
	if {$ubound < $lbound} {
	    set nval [- $ubound 2]
	    set lbound $ubound
	    for {set k [- $j 1]} {$k >= 0} {incr k -1} {
		set below [lindex $testtoprow $k]
	        set bval [lindex $below 1]
		if {$bval <= $nval} {
		    break
		}
		set below [lreplace $below 1 1 $nval]
		set testtoprow [lreplace $testtoprow $k $k $below]
		set nval [- $nval 2]
	    }
	}

	set here  [lindex $testtoprow $j]
	set rangel [lindex $here 2]
	set rangeu [lindex $here 3]
	set curval [lindex $here 1]

	if {$curval < $rangel} {
	    if {$rangel < $ubound} {
		if {$rangel > $lbound} {
		    set newval $rangel
		} else {
		    set newval $lbound
		}
	    } else {
		set newval $ubound
	    }
	    set newentry [lreplace $here 1 2 $newval [- $rangel 4]]
	    set testtoprow [lreplace $testtoprow $j $j $newentry]
	} elseif {$curval > $rangeu} {
	    if {$rangeu > $lbound} {
		if {$rangeu < $ubound} {
		    set newval $rangeu
		} else {
		    set newval $ubound
		}
	    } else {
		set newval $lbound
	    }
	    set newentry [lreplace $here 1 3 $newval $rangel [+ $rangeu 4]]
	    set testtoprow [lreplace $testtoprow $j $j $newentry]
	} else {
	    set newval $curval
	}

        # Check for power post conflicts and move up if needed
	set rindex [- $newval $topmin]
	set pindex [lindex $xtmask $rindex]
	if {$pindex >= 0} {
	    set pair [lindex $xtranges $pindex]
	    set newval [+ [lindex $pair 1] 1]
	    set newentry [lreplace $here 1 1 $newval]
	    set testtoprow [lreplace $testtoprow $j $j $newentry]

	    # Move everything above further up if needed.
	    set nval [+ $newval 2]
	    for {set k [+ $j 1]} {$k < [llength $testtoprow]} {incr k} {
		set above [lindex $testtoprow $k]
	        set aval [lindex $above 1]
		if {$aval >= $nval} {
		    break
		}
		set above [lreplace $above 1 1 $nval]
		set testtoprow [lreplace $testtoprow $k $k $above]
		set nval [+ $nval 2]
	    }
	}
    }
}

set testbotrow $newbotrow
for {set i 0} {$i < $iterations} {incr i} {
    for {set j 0} {$j < [llength $testbotrow]} {incr j} {

	set below [lindex $testbotrow [- $j 1]]
	if {$below == {}} {
	    set lbound 0
	} else {
	    set lbound [+ [lindex $below 1] 2]
	}
	set above [lindex $testbotrow [+ $j 1]]
	if {$above == {}} {
	    set ubound $botmax
	} else {
	    set ubound [- [lindex $above 1] 2]
	}
	if {$ubound < $lbound} {
	    set nval [- $ubound 2]
	    set lbound $ubound
	    for {set k [- $j 1]} {$k >= 0} {incr k -1} {
		set below [lindex $testbotrow $k]
	        set bval [lindex $below 1]
		if {$bval <= $nval} {
		    break
		}
		set below [lreplace $below 1 1 $nval]
		set testbotrow [lreplace $testbotrow $k $k $below]
		set nval [- $nval 2]
	    }
	}

	set here  [lindex $testbotrow $j]
	set rangel [lindex $here 2]
	set rangeu [lindex $here 3]
	set curval [lindex $here 1]

	if {$curval < $rangel} {
	    if {$rangel < $ubound} {
		if {$rangel > $lbound} {
		    set newval $rangel
		} else {
		    set newval $lbound
		}
	    } else {
		set newval $ubound
	    }
	    set newentry [lreplace $here 1 2 $newval [- $rangel 4]]
	    set testbotrow [lreplace $testbotrow $j $j $newentry]
	} elseif {$curval > $rangeu} {
	    if {$rangeu > $lbound} {
		if {$rangeu < $ubound} {
		    set newval $rangeu
		} else {
		    set newval $ubound
		}
	    } else {
		set newval $lbound
	    }
	    set newentry [lreplace $here 1 3 $newval $rangel [+ $rangeu 4]]
	    set testbotrow [lreplace $testbotrow $j $j $newentry]
	} else {
	    set newval $curval
	}

        # Check for power post conflicts and move up if needed
	set rindex [- $newval $botmin]
	set pindex [lindex $xbmask $rindex]
	if {$pindex >= 0} {
	    set pair [lindex $xbranges $pindex]
	    set newval [+ [lindex $pair 1] 1]
	    set newentry [lreplace $here 1 1 $newval]
	    set testbotrow [lreplace $testbotrow $j $j $newentry]

	    # Move everything above further up if needed.
	    set nval [+ $newval 2]
	    for {set k [+ $j 1]} {$k < [llength $testbotrow]} {incr k} {
		set above [lindex $testbotrow $k]
	        set aval [lindex $above 1]
		if {$aval >= $nval} {
		    break
		}
		set above [lreplace $above 1 1 $nval]
		set testbotrow [lreplace $testbotrow $k $k $above]
		set nval [+ $nval 2]
	    }
	}
    }
}

# Diagnostic!
if $debug {
    puts stdout "New left row:"
    foreach entry $testleftrow {
	puts stdout $entry
    }
    puts stdout ""

    puts stdout "New right row:"
    foreach entry $testrightrow {
	puts stdout $entry
    }
    puts stdout ""

    puts stdout "New top row:"
    foreach entry $testtoprow {
	puts stdout $entry
    }
    puts stdout ""

    puts stdout "New bottom row:"
    foreach entry $testbotrow {
	puts stdout $entry
    }
    puts stdout ""
}

#-------------------------------------------------------------------
# Recalculate X and Y position for each pin and put back in pinsrec
#-------------------------------------------------------------------

foreach entry $testleftrow {
    set pinname [lindex $entry 0]
    set sloty [lindex $entry 1]
    set piny [* $sloty $leftpitch]

    set pinrec [dict get $pinsrec $pinname]
    dict set pinrec y $piny
    dict set pinsrec $pinname $pinrec
}

foreach entry $testrightrow {
    set pinname [lindex $entry 0]
    set sloty [lindex $entry 1]
    set piny [* $sloty $rightpitch]

    set pinrec [dict get $pinsrec $pinname]
    dict set pinrec y $piny
    dict set pinsrec $pinname $pinrec
}

foreach entry $testtoprow {
    set pinname [lindex $entry 0]
    set slotx [lindex $entry 1]
    set pinx [* $slotx $toppitch]

    set pinrec [dict get $pinsrec $pinname]
    dict set pinrec x $pinx
    dict set pinsrec $pinname $pinrec
}

foreach entry $testbotrow {
    set pinname [lindex $entry 0]
    set slotx [lindex $entry 1]
    set pinx [* $slotx $botpitch]

    set pinrec [dict get $pinsrec $pinname]
    dict set pinrec x $pinx
    dict set pinsrec $pinname $pinrec
}

#-----------------------------------------------------------------
# Reopen the DEF file for reading
set fdef [open $defname r]

# Open the output DEF file for writing
if [catch {open $defoutname w} fmod] {
    puts stderr "Error: can't open file $defoutname for output"
    return
}

puts stdout "Writing DEF file ${defoutname}. . ."

#-----------------------------------------------------------------
# Read the DEF file a second time and output the adjusted pin list
# of each row
#-----------------------------------------------------------------

while {[gets $fdef line] >= 0} {
    if [regexp {[ \t]*#} $line lmatch] {
	puts $fmod $line
    } elseif $inpins {
	if [regexp {[ \t]*END[ \t]+PINS} $line lmatch] {
	    puts $fmod $line
	    set inpins false
	}
    } elseif [regexp {[ \t]*PINS[ \t]+([^ \t]+)[ \t]*;} $line lmatch number] {
	set inpins true
	puts $fmod $line
	dict for {pinname pinrec} $specialrec {
	    set netname [dict get $pinrec net]
	    set layer [dict get $pinrec layer]
	    set llx [dict get $pinrec llx]
	    set lly [dict get $pinrec lly]
	    set urx [dict get $pinrec urx]
	    set ury [dict get $pinrec ury]

	    set pinx [dict get $pinrec x]
	    set piny [dict get $pinrec y]
	    set pino [dict get $pinrec o]
	    puts $fmod "- $pinname + NET $netname"
	    puts $fmod "  + LAYER $layer ( $llx $lly ) ( $urx $ury )"
	    puts $fmod "  + PLACED ( $pinx $piny ) $pino ;"
	}
	dict for {pinname pinrec} $pinsrec {
	    set netname [dict get $pinrec net]
	    set layer [dict get $pinrec layer]
	    set llx [dict get $pinrec llx]
	    set lly [dict get $pinrec lly]
	    set urx [dict get $pinrec urx]
	    set ury [dict get $pinrec ury]
	    if {$llx == 0 && $urx == 1 && $lly == 0 && $ury == 1} {
		# Change unit size pins to be a square of the route
		# width.  This prevents unconnected pins from losing
		# all underlying metal when read into a layout tool.
		set layerrec [dict get $layersrec $layer]
		if {[dict exists $layerrec width]} {
		    set width [dict get $layerrec width]
		    set hwidth [expr {int([/ [* $units $width] 2])}]
		    set llx -$hwidth
		    set lly -$hwidth
		    set urx  $hwidth
		    set ury  $hwidth
		}
	    }
	    set pinx [dict get $pinrec x]
	    set piny [dict get $pinrec y]
	    set pino [dict get $pinrec o]
	    puts $fmod "- $pinname + NET $netname"
	    puts $fmod "  + LAYER $layer ( $llx $lly ) ( $urx $ury )"
	    puts $fmod "  + PLACED ( $pinx $piny ) $pino ;"
	}
    } else {
	puts $fmod $line
    }
}

close $fdef
close $fmod

#-----------------------------------------------------------------
puts stdout "Done with arrangepins.tcl"
exit 0
