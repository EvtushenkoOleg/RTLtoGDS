drc off
box 0 0 0 0
gds readonly true
gds rescale false
gds read /home/oleg/RTLtoGDS/tech/osu035/osu035_stdcells.gds2
load i2c_master_top
select top cell
expand
cif *hier write disable
cif *array write disable
gds write i2c_master_top
quit
