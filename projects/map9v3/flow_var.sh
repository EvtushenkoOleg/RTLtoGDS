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

