#!/bin/tcsh -f
#----------------------------------------------------------
# DRC error checking script using magic

echo '---------------------------------------------------'
echo "DRC PROJECT $argv[1] TOP MODULE $argv[2] WITH MAGIC"
echo '---------------------------------------------------'
echo 

if ($#argv < 2) then
   echo "Usage:  ./drc.sh <project_name> <source_name> [tech_name]"
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

if (! ${?drc_options} ) then
   set drc_options = ""

if (! ${?drc_gdsview} ) then
   set drc_gdsview = ""
endif

set rundrcfile="${layoutdir}/run_drc_${rootname}.tcl"

if (!($?logdir)) then
   set logdir=${projectpath}/log
endif
mkdir -p ${logdir}
set lastlog=${logdir}/lvs.log
set synthlog=${logdir}/drc.log
rm -f ${synthlog} >& /dev/null
rm -f ${logdir}/lvs.log >& /dev/null
rm -f ${logdir}/gdsii.log >& /dev/null
touch ${synthlog}
set date=`date`
echo "DRC logfile created on $date" > ${synthlog}

# Check if last line of drc log file says "error condition"
if ( ! -f ${lastlog} ) then
   set lastlog=${logdir}/post_sta.log
endif
if ( ! -f ${lastlog} ) then
   echo "Warning:  No LVS or post-route STA logfiles found."
else
   set errcond = `tail -1 ${lastlog} | grep "error condition" | wc -l`
   if ( ${errcond} == 1 ) then
      echo "Synthesis flow stopped on error condition.  DRC check "
      echo "will not proceed until error condition is cleared."
      exit 1
   endif
endif

# Does variable "gdsfile" exist?  If not, then use the LEF views for
# DRC checks.

set use_gds=1
if (! ${?gdsfile} || ( ${?gdsfile} && ( ${gdsfile} == "" ) ) ) then
   set use_gds=0
endif

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

# Ditto for gdsfile
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

#----------------------------------------------------------
# Done with initialization
#----------------------------------------------------------

cd ${layoutdir}

#------------------------------------------------------------------
# Determine the version number and availability of scripting
#------------------------------------------------------------------

set version=`${bindir}/magic --version`
set major=`echo $version | cut -d. -f1`
set minor=`echo $version | cut -d. -f2`
set subv=`echo $version | cut -d. -f3`

#------------------------------------------------------------------
# Generate script for input to magic.
#------------------------------------------------------------------

# Usually "gdsfile" is set to one GDS file for the standard cell set
# but it can be a space-separated list of GDS files to read.  This
# is set by reading the .sh file.  If no gdsfile variable exists, or
# is blank, then GDS generation cannot proceed.

rm -f ${rundrcfile}
touch ${rundrcfile}

if (! ($?drc_gdsview)) then
   set drc_gdsview=0
endif

if ( $drc_gdsview == 1 ) then
cat >> ${rundrcfile} << EOF
gds readonly true
gds rescale false
EOF
foreach gfile ( ${gdspath} )
cat >> ${rundrcfile} << EOF
gds read $gfile
EOF
end
else
foreach lfile ( ${lefpath} )
cat >> ${rundrcfile} << EOF
lef read $lfile
EOF
end
endif

cat >> ${rundrcfile} << EOF
load $rootname
drc on
select top cell
expand
drc check
drc catchup
set dcount [drc list count total]
puts stdout "drc = \$dcount"
quit
EOF

#------------------------------------------------------------------
# Run magic in batch mode.
#------------------------------------------------------------------

echo "Running magic $version"
echo "magic -dnull -noconsole ${drc_options} ${rundrcfile}" |& tee -a ${synthlog} 
magic -dnull -noconsole ${drc_options} ${rundrcfile} |& tee -a ${synthlog}

set errcond = $status
if ( ${errcond} != 0 ) then
   echo "magic failed with exit status ${errcond}" |& tee -a ${synthlog}
   echo "Premature exit." |& tee -a ${synthlog}
   echo "Synthesis flow stopped on error condition." >>& ${synthlog}
   exit 1
endif

#---------------------------------------------------------------------
# Spot check:  Does the last line of the synthlog have "drc = 0"?
#---------------------------------------------------------------------

set errors=`tail -10 ${synthlog} | grep "drc =" | cut -d' ' -f3`
if ( $errors > 0 ) then
   echo "DRC failure:  There are ${errors} DRC errors in the layout." \
	|& tee -a ${synthlog}
   echo "Premature exit." |& tee -a ${synthlog}
   echo "Synthesis flow stopped due to error condition." >> ${synthlog}
   exit 1
endif

#------------------------------------------------------------
# Done!
#------------------------------------------------------------

set endtime = `date`
echo "DRC checking script ended on $endtime" >> $synthlog

exit 0
