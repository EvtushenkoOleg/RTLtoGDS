lef read /home/oleg/tool_RTL_to_GDSII/tech/osu035/osu035_stdcells.lef
load map9v3
drc on
select top cell
expand
drc check
drc catchup
set dcount [drc list count total]
puts stdout "drc = $dcount"
quit
