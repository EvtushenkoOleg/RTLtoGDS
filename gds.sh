#!/bin/tcsh -f
#----------------------------------------------------------
# GDSII output generating script using magic

echo '---------------------------------------------------------------------'
echo "GENERATING GDS OUTPUT PROJECT $argv[1] TOP MODULE $argv[2] WITH MAGIC"
echo '---------------------------------------------------------------------'
echo 

if ($#argv < 2) then
   echo "Usage:  ./gds.sh <project_name> <source_name> [tech_name]"
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

if (! ${?gdsii_options} ) then
   set gdsii_options = ""
endif

set gengdsfile="${layoutdir}/generate_gds_${rootname}.tcl"

if (!($?logdir)) then
   set logdir=${projectpath}/log
endif
mkdir -p ${logdir}
set lastlog=${logdir}/drc.log
set synthlog=${logdir}/gdsii.log
rm -f ${synthlog} >& /dev/null
touch ${synthlog}
set date=`date`
echo "gdsii logfile created on $date" > ${synthlog}

# Check if last line of drc log file says "error condition"
if ( ! -f ${lastlog} ) then
   set lastlog=${logdir}/lvs.log
endif
if ( ! -f ${lastlog} ) then
   echo "Warning:  No DRC or LVS logfiles found."
else
   set errcond = `tail -1 ${lastlog} | grep "error condition" | wc -l`
   if ( ${errcond} == 1 ) then
      echo "Synthesis flow stopped on error condition.  GDSII generation"
      echo "will not proceed until error condition is cleared."
      exit 1
   endif
endif

# Does variable "gdsfile" exist?

if (! ${?gdsfile} || ( ${?gdsfile} && ( ${gdsfile} == "" ) ) ) then
   echo "GDS generation failure:  No gdsfile variable set in technology setup script." \
	|& tee -a ${synthlog}
   echo "Premature exit." |& tee -a ${synthlog}
   echo "Synthesis flow stopped due to error condition." >> ${synthlog}
   exit 1
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


cat > ${gengdsfile} << EOF
drc off
box 0 0 0 0
gds readonly true
gds rescale false
EOF

# Usually "gdsfile" is set to one GDS file for the standard cell set
# but it can be a space-separated list of GDS files to read.  This
# is set by reading the .sh file.

foreach gfile ( ${gdspath} )
cat >> ${gengdsfile} << EOF
gds read $gfile
EOF
end

# NOTE: "*hier write disable" and "*array write disable" prevent
# magic from doing an exhaustive search on GDS layer interactions
# between standard cells.  This is disabled on the assumption that
# the standard cells are properly designed and do not generate DRC
# spacing errors when abutted.  The standard cells will be abstract
# views, anyway, so only a few layers like metal1 are represented.

cat >> ${gengdsfile} << EOF
load $rootname
select top cell
expand
cif *hier write disable
cif *array write disable
gds write $rootname
quit
EOF

#------------------------------------------------------------------
# Run magic in batch mode.
#------------------------------------------------------------------

echo "Running magic $version"
echo "magic -dnull -noconsole ${gdsii_options} ${gengdsfile}" |& tee -a ${synthlog} 
magic -dnull -noconsole ${gdsii_options} ${gengdsfile} |& tee -a ${synthlog}

set errcond = $status
if ( ${errcond} != 0 ) then
   echo "magic failed with exit status ${errcond}" |& tee -a ${synthlog}
   echo "Premature exit." |& tee -a ${synthlog}
   echo "Synthesis flow stopped on error condition." >>& ${synthlog}
   exit 1
endif

#---------------------------------------------------------------------
# Spot check:  Did magic produce file ${rootname}.gds?
#---------------------------------------------------------------------

if ( ! -f ${rootname}.gds || ( -M ${rootname}.gds < -M ${rootname}.def )) then
   echo "magic failure:  No file ${rootname}.gds." |& tee -a ${synthlog}
   echo "Premature exit." |& tee -a ${synthlog}
   echo "Synthesis flow stopped due to error condition." >> ${synthlog}
   exit 1
endif

#------------------------------------------------------------
# Done!
#------------------------------------------------------------

set endtime = `date`
echo "GDS generating script ended on $endtime" >> $synthlog

exit 0
