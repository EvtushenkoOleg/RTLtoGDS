#!/bin/tcsh -f
#----------------------------------------------------------
# LVS comparison script using netgen
#----------------------------------------------------------

echo '----------------------------------------------------'
echo "LVS PROJECT $argv[1] TOP MODULE $argv[2] WITH NETGEN"
echo '----------------------------------------------------'
echo 

if ($#argv < 2) then
   echo "Usage:  ./lvs.sh <project_name> <source_name> [tech_name]"
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

if (! ${?lvs_options} ) then
   set lvs_options = ""
endif

if (!($?logdir)) then
   set logdir=${projectpath}/log
endif
mkdir -p ${logdir}
set lastlog=${logdir}/migrate.log
set synthlog=${logdir}/lvs.log
rm -f ${synthlog} >& /dev/null
rm -f ${logdir}/gdsii.log >& /dev/null
touch ${synthlog}
set date=`date`
echo "Qflow LVS logfile created on $date" > ${synthlog}

# Check if last line of migrate log file says "error condition"
if ( ! -f ${lastlog} ) then
   echo "Warning:  No migration logfile found."
else
   set errcond = `tail -1 ${lastlog} | grep "error condition" | wc -l`
   if ( ${errcond} == 1 ) then
      echo "Synthesis flow stopped on error condition.  LVS comparison"
      echo "will not proceed until error condition is cleared."
      exit 1
   endif
endif

# Check if migration was run.  Must have synthesis and layout extracted
# netlists.  All netlists must be more recent than the project ".def" file.

if ( ! -f ${synthdir}/${rootname}.spc || \
	( -M ${synthdir}/${rootname}.spc < -M ${synthdir}/${rootname}.rtl.v )) then
    echo "LVS failure: No schematic netlist found." |& tee -a ${synthlog}
    echo "Premature exit." |& tee -a ${synthlog}
    echo "Synthesis flow stopped due to error condition." >> ${synthlog}
    exit 1
endif

if ( ! -f ${layoutdir}/${rootname}.spice  || \
	( -M ${layoutdir}/${rootname}.spice < -M ${layoutdir}/${rootname}.def )) then
    echo "LVS failure: No layout extracted netlist found;  migration was not run." \
	|& tee -a ${synthlog}
    echo "Premature exit." |& tee -a ${synthlog}
    echo "Synthesis flow stopped due to error condition." >> ${synthlog}
    exit 1
endif

# If the layout (.mag) file is more recent than the netlist (.spice) file, then
# the layout needs to be re-extracted.

if ( -M ${layoutdir}/${rootname}.spice < -M ${layoutdir}/${rootname}.mag ) then
    echo "Layout post-dates extracted netlist;  re-extraction required." \
	|& tee -a ${synthlog}
    # Re-extract the netlist.
    source ${scriptdir}/migrate.sh -x ${projectpath} ${sourcename}
endif

# Check for technology setup script.  If it is in the qflow technology script
# as variable "netgen_setup", then use that.  Otherwise, assume it is in the
# technology directory path.

if ( ${?netgen_setup} ) then
   set setup_script=${netgen_setup}
   if ( ! ( -f ${setup_script} )) then
       set setup_script=${techdir}/${netgen_setup}
   endif
else
   set setup_script=${techdir}/${techname}_setup.tcl
endif

# Check for existence of the netgen setup script in the techfile, and
# alternative setup scripts that may exist in the layout directory.

if ( ! ( -f ${setup_script} )) then
   if ( -f ${layoutdir}/setup.tcl ) then
      set setup_script=${layoutdir}/setup.tcl
   else if ( -f ${layoutdir}/${rootname}_setup.tcl ) then
      set setup_script=${layoutdir}/${rootname}_setup.tcl
   else if ( -f ${layoutdir}/${rootname}.tcl ) then
      set setup_script=${layoutdir}/${rootname}.tcl
   else
      echo "LVS failure: No technology setup script for netgen found." \
	|& tee -a ${synthlog}
      echo "Premature exit." |& tee -a ${synthlog}
      echo "Synthesis flow stopped due to error condition." >> ${synthlog}
      exit 1
   endif
endif


#----------------------------------------------------------
# Done with initialization
#----------------------------------------------------------

cd ${layoutdir}

#------------------------------------------------------------------
# Run netgen in batch mode.
#------------------------------------------------------------------

set outfile=comp.out

echo "Running netgen"
echo netgen ${lvs_options} -batch lvs \"${rootname}.spice ${rootname}\" \
	\"${synthdir}/${rootname}.spc ${rootname}\" ${setup_script} ${outfile} \
	-json -blackbox |& tee -a ${synthlog} 

netgen ${lvs_options} -batch lvs "${rootname}.spice ${rootname}" \
	"${synthdir}/${rootname}.spc ${rootname}" ${setup_script} ${outfile} \
	-json -blackbox |& tee -a ${synthlog}

set errcond = $status
if ( ${errcond} != 0 ) then
   echo "netgen failed with exit status ${errcond}" |& tee -a ${synthlog}
   echo "Premature exit." |& tee -a ${synthlog}
   echo "Synthesis flow stopped on error condition." >>& ${synthlog}
   exit 1
endif

#---------------------------------------------------------------------
# Spot check:  Did netgen produce file comp.out?
#---------------------------------------------------------------------

if ( ! -f comp.out || ( -M comp.out < -M ${rootname}.spice )) then
   echo "netgen failure:  No file comp.out." |& tee -a ${synthlog}
   echo "Premature exit." |& tee -a ${synthlog}
   echo "Synthesis flow stopped due to error condition." >> ${synthlog}
   exit 1
endif

#---------------------------------------------------------------------
# Check for LVS errors
#---------------------------------------------------------------------

echo "Running count_lvs.py"
echo "${scriptdir}/count_lvs.py" |& tee -a ${synthlog}
${scriptdir}/count_lvs.py |& tee -a ${synthlog}

set err_total = `tail -1 ${synthlog} | cut -d' ' -f4`
if ( ${err_total} > 0 ) then
   echo "Design fails LVS with ${err_total} errors." |& tee -a ${synthlog}
   echo "See lvs.log and comp.out for error details." |& tee -a ${synthlog}
   echo "Synthesis flow stopped due to error condition." >> ${synthlog}
   exit 1
endif

#------------------------------------------------------------
# Done!
#------------------------------------------------------------

set endtime = `date`
echo "LVS checking script ended on $endtime" >> $synthlog

exit 0
