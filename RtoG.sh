#!/bin/tcsh -f

if ($#argv < 2) then
   echo "Usage:  ./RtoG.sh <project_name> <source_name> [tech_name]"
   exit 1
else
   if ($#argv == 2) then
      set techname=osu035
      echo "Tech lib not specified because use default: osu035"
   else 
      set techname=$argv[3]
   endif

   if (! -f ${PWD}/projects/$1/$1_var.sh) then
      ./create_var.sh $1 $2 ${techname}
   endif

    set params="$1 $2 ${techname}"
    echo "./synth.sh ${params}"
    ./synth.sh ${params}
    echo "./place.sh ${params}"
    ./place.sh ${params}
    echo "./sta.sh ${params}"
    ./sta.sh ${params}
    echo "./route.sh ${params}"
    ./route.sh ${params}
    echo "post_route_sta.sh ${params}"
    ./post_route_sta.sh ${params}
    echo "./migrate.sh ${params}"
    ./migrate.sh ${params}
    echo "./drc.sh ${params}"
    ./drc.sh ${params}
    echo "./lvs.sh ${params}"
    ./lvs.sh ${params}
    echo "./gds.sh ${params}s"
    ./gds.sh ${params}
endif