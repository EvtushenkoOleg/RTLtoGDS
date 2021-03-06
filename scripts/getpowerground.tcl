#!/usr/bin/tclsh
#---------------------------------------------------------------------------
# getpowerground.tcl ---
#
# Read LEF file up to the first macro with a PIN record having
# USE POWER and one having USE GROUND.  Return the pin names.
# If the library has tap cells, then there may be multiple
# power and ground pins, and all names should be returned.  For
# 4-net power/ground, it is the responsibility of the calling
# script to use the power/ground names in the setup file to
# disambiguate between the actual power buses and the tap
# connections.
#
#---------------------------------------------------------------------------
namespace path {::tcl::mathop ::tcl::mathfunc}

if {$argc < 1} {
   puts stdout "Usage:  getpowerground <lef_file>"
   exit 0
}

puts stdout "Running getpowerground.tcl"

set lefname [lindex $argv 0]

set vddnet {}
set gndnet {}

#-----------------------------------------------------------------
# Open lef file for reading
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
#----------------------------------------------------------------

proc parse_pin {leffile pinname} {
    global vddnet
    global gndnet

    set portuse ""
    while {[gets $leffile line] >= 0} {
        if [regexp {[ \t]*USE[ \t]+([^ \t]+)[ \t]*;} $line lmatch portuse] {
            set portuse [string toupper $portuse]
            if {$portuse == "GROUND"} {
	        if {[lsearch $gndnet $pinname] < 0} {
		    lappend gndnet $pinname
		}
	    } elseif {$portuse == "POWER"} {
	        if {[lsearch $vddnet $pinname] < 0} {
		    lappend vddnet $pinname
		}
            }
        } elseif [regexp {[ \t]*END[ \t]+([^ \t]+)[ \t]*$} $line lmatch pintest] {
            if {"$pintest" == "$pinname"} {
                break
            } else {
                puts stdout "Unexpected END statement $line while parsing pin $pinname"
            }
        }
    }
}

#----------------------------------------------------------------
# Parse the macro contents of the LEF file and retain the information
# about pin use.
#----------------------------------------------------------------

proc parse_macro {leffile macroname} {
   global vddnet
   global gndnet

   while {[gets $leffile line] >= 0} {
      if [regexp {[ \t]*PIN[ \t]+(.+)[ \t]*$} $line lmatch pinname] {
         parse_pin $leffile $pinname
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

puts stdout "Reading macros from LEF file."
flush stdout

while {[gets $flef line] >= 0} {
   if [regexp {[ \t]*MACRO[ \t]+(.+)[ \t]*$} $line lmatch macroname] {
      # Parse the "macro" statement
      parse_macro $flef $macroname
      # Probably the power and ground nets will be set after the first
      # macro is read.  Watch for unbalanced number of vdd net names and
      # gnd net names caused by having a single-sided tap cell as the
      # first macro.
      if {([llength $vddnet] > 1) && ([llength $gndnet] > 1)} {
	 break
      } elseif {([llength $vddnet] == 1) && ([llength $gndnet] == 1)} {
	 break
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
   } elseif [regexp {[ \t]*PROPERTYDEFINITIONS[ \t]*$} $line lmatch] {
      skip_section $flef PROPERTYDEFINITIONS
   } elseif [regexp {[ \t]*UNITS[ \t]*$} $line lmatch] {
      skip_section $flef UNITS
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
      }
   }
}

close $flef

# Use a comma to separate multiple power and ground names
puts stdout "vddnet=[join $vddnet ","]"
puts stdout "gndnet=[join $gndnet ","]"
puts stdout "Done with getpowerground.tcl"
