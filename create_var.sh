#!/bin/tcsh -f
if (! $#argv == 3) then
   echo 'Usage:  synth.sh <project_name> <module_name> <tech_name>'
   exit 1
else
	set projectpath=${PWD}/projects/$argv[1]
	set modulename=$argv[2]
	set techname=$argv[3]

if (! -d ${projectpath} ) then
	echo "Error: Not found project directory $argv[1]"
else
 	if (! -f  ${projectpath}/${modulename}.v ) then
		echo "Error: Not found file $argv[2].v"
	else
		if (! -d ${PWD}/tech/${techname} ) then
			echo "Error: Not found library $argv[3] in directory tech"
		else
			#Create file *_var.sh
		
			cat > ${projectpath}/$argv[1]_var.sh << EOF
#!/bin/tcsh -f
set projectpath=${projectpath}
set modulename=${modulename}
set techname=${techname} 
set techdir=${PWD}/tech/${techname}
set sourcedir=${projectpath}/source
set synthdir=${projectpath}/synthesis
set layoutdir=${projectpath}/layout
set scriptdir=${PWD}/scripts
set bindir=${PWD}/bin
set logdir=${projectpath}/log
EOF

			#Create and remove result-file
			mkdir -p ${projectpath}/source
			rm -f ${projectpath}/source/* >& /dev/null
			mv  ${projectpath}/*.v ${projectpath}/source
			mkdir -p ${projectpath}/synthesis
			rm -f ${projectpath}/synthesis/* >& /dev/null
			mkdir -p ${projectpath}/layout
			rm -f ${projectpath}/layout/* >& /dev/null
			mkdir -p  ${projectpath}/log
			rm -f ${projectpath}/log/* >& /dev/null
			cat > ${projectpath}/flow_var.sh << EOF
#!/bin/tcsh -f
# Flow options:
set synthesis_tool = yosys
set placement_tool = graywolf
set sta_tool = vesta
set router_tool = qrouter
set migrate_tool = magic_db
set lvs_tool = netgen_lvs
set drc_tool = magic_drc
set gds_tool = magic_gds
set display_tool = magic_view
# Synthesis command options:
set fanout_options = "-l 200 -c 30"

# Placement command options:
set addspacers_options = "-stripe 5 150 PG"

# STA command options:
set vesta_options = "--summary reports --long"

EOF
				
		endif
	endif
endif
endif