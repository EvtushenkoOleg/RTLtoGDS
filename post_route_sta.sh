#!/bin/tcsh -f
#----------------------------------------------------------
# Static timing analysis script using OpenSTA
#----------------------------------------------------------
#

echo '----------------------------------------------------------------'
echo "POST-ROUTE STA PROJECT $argv[1] TOP MODULE $argv[2] WITH OPENSTA"
echo '----------------------------------------------------------------'
echo 

if ($#argv < 2) then
   echo "Usage:  ./post_route_sta.sh <project_name> <source_name> [tech_name]"
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

set dodelays=1
set append=0

if (! ${?opensta_options} ) then
   set opensta_options = ""
endif

if (!($?logdir)) then
   set logdir=${projectpath}/log
endif
mkdir -p ${logdir}
if ($dodelays == 1) then
   set lastlog=${logdir}/route.log
   set synthlog=${logdir}/post_sta.log
else
   set lastlog=${logdir}/place.log
   set synthlog=${logdir}/sta.log
   rm -f ${logdir}/route.log >& /dev/null
endif
rm -f ${logdir}/post_sta.log >& /dev/null
rm -f ${logdir}/migrate.log >& /dev/null
rm -f ${logdir}/drc.log >& /dev/null
rm -f ${logdir}/lvs.log >& /dev/null
rm -f ${logdir}/gdsii.log >& /dev/null
set date=`date`

if ( $append == 0 ) then
   rm -f ${synthlog} >& /dev/null
   touch ${synthlog}
   echo "Static timing analysis logfile created on $date" > ${synthlog}
else
   touch ${synthlog}
   echo "\nStatic timing analysis logfile appended on $date" >> ${synthlog}
endif

# Check if last line of log file says "error condition"
set errcond = `tail -1 ${lastlog} | grep "error condition" | wc -l`
if ( ${errcond} == 1 ) then
   echo "Synthesis flow stopped on error condition.  Static timing analysis"
   echo "will not proceed until error condition is cleared."
   exit 1
endif

# Prepend techdir to libertyfile unless libertyfile begins with "/"
# Use "libertymax" and "libertymin" for maximum and minimum timing,
# respectively, unless they don't exist, in which case use "libertyfile"
# for both.

set abspath=`echo ${libertyfile} | cut -c1`
if ( "${abspath}" == "/" ) then
   set libertypath=${libertyfile}
   if ( ${?libertymax} ) then
       set libertymaxpath=${libertymax}
   else
       set libertymaxpath=${libertyfile}
   endif
   if ( ${?libertymin} ) then
       set libertyminpath=${libertymin}
   else
       set libertyminpath=${libertyfile}
   endif
else
   set libertypath=${techdir}/${libertyfile}
   if ( ${?libertymax} ) then
       set libertymaxpath=${techdir}/${libertymax}
   else
       set libertymaxpath=${techdir}/${libertyfile}
   endif
   if ( ${?libertymin} ) then
       set libertyminpath=${techdir}/${libertymin}
   else
       set libertyminpath=${techdir}/${libertyfile}
   endif
endif

# Add hard macros

set hardmacrolibs=""
if ( ${?hard_macros} ) then
   foreach macro_path ( $hard_macros )
      foreach file ( `ls ${sourcedir}/${macro_path}` )
         if ( ${file:e} == "lib" ) then
            set hardmacrolibs="${hardmacrolibs} ${sourcedir}/${macro_path}/${file}"
         endif
         break
      end
   end
endif

#----------------------------------------------------------
# Done with initialization
#----------------------------------------------------------

# Check if last line of log file says "error condition"
set errcond = `tail -1 ${lastlog} | grep "error condition" | wc -l`
if ( ${errcond} == 1 ) then
   echo "Synthesis flow stopped on error condition.  Timing analysis will not"
   echo "proceed until error condition is cleared."
   exit 1
endif

cd ${layoutdir}

#------------------------------------------------------------------
# Generate the static timing analysis results
#------------------------------------------------------------------

if ($dodelays == 1) then
    # Check if a .rc file exists.  This file is produced by qrouter
    # and contains delay information in nested RC pairs
    if ( -f ${rootname}.rc ) then

       # Run rc2dly
       echo "Converting qrouter output to vesta delay format" |& tee -a ${synthlog}
       echo "Running rc2dly -r ${rootname}.rc -l ${libertypath} -V ${synthdir}/${rootname}.rtl.v" \
		|& tee -a ${synthlog}
       echo "-d ${rootname}.dly" |& tee -a ${synthlog}
       ${bindir}/rc2dly -r ${rootname}.rc -l ${libertypath} \
		-V ${synthdir}/${rootname}.rtl.v \
		-d ${synthdir}/${rootname}.dly

       # Run rc2dly again to get SDF format file
       echo "Converting qrouter output to SDF delay format" |& tee -a ${synthlog}
       echo "Running rc2dly -r ${rootname}.rc -l ${libertypath} -V ${synthdir}/${rootname}.rtl.v" \
		|& tee -a ${synthlog}
       echo "-d ${rootname}.sdf" |& tee -a ${synthlog}
       ${bindir}/rc2dly -r ${rootname}.rc -l ${libertypath} \
		-V ${synthdir}/${rootname}.rtl.v \
		-d ${synthdir}/${rootname}.sdf

       # Translate <, > to [ ] to match the verilog, as SDF format does not have
       # the ability to change array delimiters.
       if ( -f ${synthdir}/${rootname}.sdf ) then
	  cat ${synthdir}/${rootname}.sdf | sed -e 's/</\[/g' -e 's/>/\]/g' \
		> ${synthdir}/${rootname}.sdfx
	  mv ${synthdir}/${rootname}.sdfx ${synthdir}/${rootname}.sdf
       endif

       cd ${synthdir}

       # Spot check for output file
       if ( ! -f ${rootname}.sdf || \
		( -M ${rootname}.sdf < -M ${layoutdir}/${rootname}.rc )) then
	  echo "rc2dly failure:  No file ${rootname}.sdf created." \
		|& tee -a ${synthlog}
          echo "Premature exit." |& tee -a ${synthlog}
          echo "Synthesis flow stopped due to error condition." >> ${synthlog}
          exit 1
       endif

    else
       echo "Error:  No file ${rootname}.rc, cannot back-annotate delays!" \
		|& tee -a ${synthlog}
       echo "Premature exit." |& tee -a ${synthlog}
       echo "Synthesis flow stopped due to error condition." >> ${synthlog}
       exit 1
    endif
endif

cd ${synthdir}

# Create a shell SDC file if one doesn't exist
# (This remains to be done properly and will probably need to be done by a script)

if ($dodelays == 1) then

if ( !(-f ${rootname}_post.sdc )) then
   echo "Creating example SDC file for timing" |& tee -a ${synthlog}
   cat > ${rootname}_post.sdc << EOF
create_clock -name clock -period 20 [get_ports clock]
set_propagated_clock [all_clocks]
EOF
endif

else

if ( !(-f ${rootname}.sdc )) then
   echo "Creating example SDC file for timing" |& tee -a ${synthlog}
   cat > ${rootname}.sdc << EOF
create_clock -name clock -period 20 [get_ports clock]
EOF
endif

endif

# Create the input script for OpenSTA

echo "Creating OpenSTA input file ${rootname}.conf" |& tee -a ${synthlog}
cat > ${rootname}.conf << EOF
read_liberty -min ${libertyminpath}
read_liberty -max ${libertymaxpath}
EOF

foreach libpath ( $hardmacrolibs )
cat >> ${rootname}.conf << EOF
read_celllib ${libpath}
EOF
end

cat >> ${rootname}.conf << EOF
read_verilog ${rootname}.rtlnopwr.v
link_design ${rootname}
EOF

if ($dodelays == 1) then
    cat >> ${rootname}.conf << EOF
read_sdf ${rootname}.sdf
EOF
endif

if ($dodelays == 1) then

cat >> ${rootname}.conf << EOF
read_sdc ${rootname}_post.sdc
EOF

else

cat >> ${rootname}.conf << EOF
read_sdc ${rootname}.sdc
EOF

endif

cat >> ${rootname}.conf << EOF
check_setup
report_annotated_check
report_annotated_delay
report_checks -path_delay min_max -group_count 1000
exit
EOF

echo ""
if ($dodelays == 1) then
   echo "Running OpenSTA static timing analysis with back-annotated extracted wire delays" \
		|& tee -a ${synthlog}
else
   echo "Running OpenSTA static timing analysis" |& tee -a ${synthlog}
endif
echo "sta ${opensta_options} < ${rootname}.conf" |& tee -a ${synthlog}
echo ""
sta ${opensta_options} < ${rootname}.conf |& tee -a ${synthlog}
echo ""

#------------------------------------------------------------
# Done!
#------------------------------------------------------------
exit 0
endif