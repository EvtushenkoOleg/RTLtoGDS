#!/bin/tcsh -f
#----------------------------------------------------------
echo '---------------------------------------------------------------------'
echo "DISPLAY GDS PROJECT $argv[1] TOP MODULE $argv[2] WITH MAGIC"
echo '---------------------------------------------------------------------'
echo 

if ($#argv < 2) then
   echo "Usage:  ./display.sh <project_name> <source_name> [tech_name]"
   exit 1
else
   if ($#argv == 2) then
      set techname=osu035
      echo "Tech lib not specified because use default: osu035"
   else 
      set techname=$argv[3]
   endif

   set projectname=$argv[1]
   set sourcename=$argv[2]
   set rootname=${sourcename:h}

   if (! -f ${PWD}/projects/${projectname}/${projectname}_var.sh) then
      ./create_var.sh ${projectname} ${modulename} ${techname}
   endif

source ${PWD}/projects/${projectname}/${projectname}_var.sh
source ${techdir}/${techname}.sh

cd ${projectpath}
source flow_var.sh

set dogds=-1
set domag=-1

# Prepend techdir to magicrc unless magicrc begins with "/"
set abspath=`echo ${magicrc} | cut -c1`
if ( "${abspath}" == "/" ) then
   set magicrcpath=${magicrc}
else
   set magicrcpath=${techdir}/${magicrc}
endif

# Prepend techdir to each gdsfile unless gdsfile begins with "/"
set gdspath=""
foreach f (${gdsfile})
   set abspath=`echo ${f} | cut -c1`
   if ( "${abspath}" == "/" ) then
      set p=${gdsfile}
   else
      set p=${techdir}/${gdsfile}
   endif
   set gdspath="${gdspath} $p"
end

# Prepend techdir to each leffile unless leffile begins with "/"
set lefpath=""
foreach f (${leffile})
   set abspath=`echo ${f} | cut -c1`
   if ( "${abspath}" == "/" ) then
      set p=${leffile}
   else
      set p=${techdir}/${leffile}
   endif
   set lefpath="${lefpath} $p"
end

# Prepend techdir to techleffile unless techleffile begins with "/"
set abspath=`echo ${techleffile} | cut -c1`
if ( "${abspath}" == "/" ) then
   set techlefpath=${techleffile}
else
   set techlefpath=${techdir}/${techleffile}
endif

#----------------------------------------------------------
# Copy the .magicrc file from the tech directory to the
# layout directory, if it does not have one.  This file
# automatically loads the correct technology file.
#----------------------------------------------------------

if (! -f ${layoutdir}/.magicrc ) then
   if ( -f ${magicrcpath} ) then
      cp ${magicrcpath} ${layoutdir}/.magicrc
   endif
endif

#----------------------------------------------------------
# Done with initialization
#----------------------------------------------------------

cd ${layoutdir}

#---------------------------------------------------
# Create magic layout (.mag file) using the
# technology LEF file to determine route widths
# and other parameters.
#---------------------------------------------------

set gdscmd="gds vendor true ; gds rescale false"
foreach gfile ( ${gdspath} )
set gdscmd="${gdscmd} ; gds read ${gdspath}"
end

set lefcmd=""
foreach lfile ( ${lefpath} )
set lefcmd="${lefcmd} ; lef read ${lefpath}"
end

if ($techleffile != "") then
   set techlefcmd="lef read ${techlefpath}"
else
   set techlefcmd=""
endif

# Handle additional .lef files from the hard macros list

set hardlefcmd=""
set hardgdscmd=""
if ( ${?hard_macros} ) then
    foreach macro_path ( $hard_macros )
        foreach file ( `ls ${sourcedir}/${macro_path}` )
            if ( ${file:e} == "lef" ) then
                set hardlefcmd="${hardlefcmd} ; lef read ${sourcedir}/${macro_path}/${file}"
            endif
            if ( ${file:e} == "gds" ) then
                set hardgdscmd="${hardgdscmd} ; gds read ${sourcedir}/${macro_path}/${file}"
            endif
        end
    end
endif

# Auto-detect which view to use based on log files.  If migration has not
# been done, then use the DEF view of the layout, otherwise use the (migrated)
# magic database view.  If GDS was generated then use the full GDS view of
# the standard cells;  otherwise use the LEF view of the standard cells.
# If either option has been forced by option switches, then the option switch
# overrides the auto-detection.

if ($domag == -1) then
   if (-f ${logdir}/migrate.log) then
      set domag = 1
   else
      set domag = 0
   endif
endif

if ($dogds == -1) then
   if (-f ${logdir}/gdsii.log) then
      set dogds = 1
   else
      set dogds = 0
   endif
endif

set dispfile="${layoutdir}/load_${rootname}.tcl"

# Create a script file for loading and displaying the layout

if ($domag == 1 && $dogds == 0) then
   cat > ${dispfile} << EOF
${techlefcmd}
${lefcmd}
${hardlefcmd}
load ${sourcename}
select top cell
expand
EOF
else if ($domag == 1 && $dogds == 1) then
   cat > ${dispfile} << EOF
${gdscmd}
${hardgdscmd}
${techlefcmd}
${lefcmd}
${hardlefcmd}
load ${sourcename}
select top cell
expand
EOF
else if ($domag == 0 && $dogds == 0) then
   cat > ${dispfile} << EOF
${techlefcmd}
${lefcmd}
${hardlefcmd}
def read ${sourcename}
select top cell
expand
EOF
else if ($domag == 0 && $dogds == 1) then
   cat > ${dispfile} << EOF
${gdscmd}
${hardgdscmd}
${techlefcmd}
${lefcmd}
${hardlefcmd}
def read ${sourcename}
select top cell
expand
EOF
endif

# don't die ungracefully if no X display:
if ( ! $?DISPLAY ) then
  echo "No DISPLAY var, not running graphical magic."
  exit
endif

# Run magic and query what graphics device types are
# available.  Use Cairo if available, fall back on
# X11, or else exit with a message

# Support option to hardwire the graphics interface.

set magicxr=0
set magicx11=0

if ( ! $?magic_display ) then
  magic -noconsole -d <<EOF >& .magic_displays
exit
EOF

  set magicxr=`cat .magic_displays | grep XR | wc -l`
  set magicx11=`cat .magic_displays | grep X11 | wc -l`

  rm -f .magic_displays
endif

# Get the version of magic

magic -noconsole --version <<EOF >& .magic_version
exit
EOF

set magic_major=`cat .magic_version | cut -d. -f1`
set magic_minor=`cat .magic_version | cut -d. -f2`
set magic_rev=`cat .magic_version | cut -d. -f3`

rm -f .magic_version

# For magic versions less than 8.1.102, only the .mag file can
# be loaded from the command line.  Otherwise, run the script.

if ( ${magic_major} < 8 || ( ${magic_major} == 8 && ${magic_minor} < 1 ) || ( ${magic_major} == 8 && ${magic_minor} == 1 && ${magic_rev} < 102 ) ) then
   set dispfile = ${sourcename}
endif

# Run magic again, this time interactively.  The script
# exits when the user exits magic.

if ( $?magic_display ) then
   magic -d ${magic_display} ${dispfile}
else if ( ${magicxr} >= 1 ) then
   magic -d XR ${dispfile}
else if ( ${magicx11} >= 1) then
   magic -d X11 ${dispfile}
else
   echo "Magic does not support Cairo or X11 graphics on this host."
endif

#------------------------------------------------------------
# Done!
#------------------------------------------------------------
endif