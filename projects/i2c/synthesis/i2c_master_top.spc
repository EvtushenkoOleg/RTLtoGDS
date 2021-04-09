*SPICE netlist created from verilog structural netlist module i2c_master_top by vlog2Spice (qflow)
*This file may contain array delimiters, not for use in simulation.

** Start of included library /home/oleg/tool_RTL_to_GDSII/tech/osu035/osu035_stdcells.sp

.subckt AND2X1 Y B vdd gnd A
M0 a_2_6# A vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_2_6# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 gnd B a_9_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X1

.subckt AND2X2 vdd gnd A B Y
M0 a_2_6# A vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_2_6# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 gnd B a_9_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends AND2X2

.subckt AOI21X1 gnd vdd A B Y C
M0 vdd A a_2_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C a_2_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_12_6# A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y B a_12_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 gnd C Y gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI21X1

.subckt AOI22X1 gnd vdd C D Y A B
M0 vdd A a_2_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y D a_2_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# C Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_11_6# A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y B a_11_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_28_6# D Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 gnd C a_28_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends AOI22X1

.subckt BUFX2 vdd gnd A Y
M0 vdd A a_2_6# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_2_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 gnd A a_2_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 Y a_2_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends BUFX2

.subckt BUFX4 vdd gnd A Y
M0 vdd A a_2_6# vdd pfet w=6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_2_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_6# Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 gnd A a_2_6# gnd nfet w=3u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y a_2_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 gnd a_2_6# Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends BUFX4

.subckt CLKBUF1 A vdd gnd Y
M0 a_9_6# A vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y a_41_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_9_6# A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 gnd A a_9_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_25_6# a_9_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M11 gnd a_9_6# a_25_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_41_6# a_25_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M13 gnd a_25_6# a_41_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_41_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M15 gnd a_41_6# Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF1

.subckt CLKBUF2 vdd gnd A Y
M0 a_9_6# A vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M10 Y a_73_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_9_6# A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M13 gnd A a_9_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_25_6# a_9_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M15 gnd a_9_6# a_25_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_41_6# a_25_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M17 gnd a_25_6# a_41_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_57_6# a_41_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M19 gnd a_41_6# a_57_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_73_6# a_57_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M21 gnd a_57_6# a_73_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M22 Y a_73_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M23 gnd a_73_6# Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF2

.subckt CLKBUF3 gnd vdd A Y
M0 a_9_6# A vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A a_9_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# a_9_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd a_9_6# a_25_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_41_6# a_25_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd a_25_6# a_41_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_57_6# a_41_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_41_6# a_57_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_73_6# a_57_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd a_57_6# a_73_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_89_6# a_73_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd a_73_6# a_89_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_105_6# a_89_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd a_89_6# a_105_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M14 Y a_105_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_105_6# Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_9_6# A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M17 gnd A a_9_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_25_6# a_9_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M19 gnd a_9_6# a_25_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_41_6# a_25_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M21 gnd a_25_6# a_41_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_57_6# a_41_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M23 gnd a_41_6# a_57_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_73_6# a_57_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M25 gnd a_57_6# a_73_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_89_6# a_73_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M27 gnd a_73_6# a_89_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_105_6# a_89_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M29 gnd a_89_6# a_105_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M30 Y a_105_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M31 gnd a_105_6# Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends CLKBUF3

.subckt DFFNEGX1 CLK vdd D gnd Q
M0 vdd CLK a_2_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_17_74# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# CLK a_23_6# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_23_6# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# CLK a_61_74# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# a_2_6# a_66_6# vdd pfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M10 gnd CLK a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_23_6# CLK a_17_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# a_2_6# a_23_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M15 gnd a_34_4# a_31_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_23_6# gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# a_2_6# a_61_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# CLK a_66_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M20 gnd Q a_76_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFNEGX1

.subckt DFFPOSX1 vdd D gnd Q CLK
M0 vdd CLK a_2_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_74# D vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_22_6# CLK a_17_74# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_31_74# a_2_6# a_22_6# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd a_34_4# a_31_74# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_34_4# a_22_6# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_61_74# a_34_4# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_66_6# a_2_6# a_61_74# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_76_84# CLK a_66_6# vdd pfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd Q a_76_84# vdd pfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M10 gnd CLK a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_66_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_17_6# D gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_22_6# a_2_6# a_17_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M14 a_31_6# CLK a_22_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M15 gnd a_34_4# a_31_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_34_4# a_22_6# gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_61_6# a_34_4# gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_66_6# CLK a_61_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_76_6# a_2_6# a_66_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M20 gnd Q a_76_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M21 Q a_66_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFPOSX1

.subckt DFFSR gnd vdd D S R Q CLK
M0 a_2_6# R vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd a_10_61# a_2_6# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_10_61# a_23_27# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd S a_10_61# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_23_27# a_47_71# a_2_6# vdd pfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_57_6# a_47_4# a_23_27# vdd pfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd D a_57_6# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 vdd a_47_71# a_47_4# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_47_71# CLK vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_105_6# a_47_71# a_10_61# vdd pfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_113_6# a_47_4# a_105_6# vdd pfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_122_6# a_105_6# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd R a_122_6# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M13 a_113_6# a_122_6# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M14 vdd S a_113_6# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M15 vdd a_122_6# Q vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_10_6# R a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M17 gnd a_10_61# a_10_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M18 a_26_6# a_23_27# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_10_61# S a_26_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M20 a_23_27# a_47_4# a_2_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_57_6# a_47_71# a_23_27# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M22 gnd D a_57_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M23 gnd a_47_71# a_47_4# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_47_71# CLK gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_105_6# a_47_4# a_10_61# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M26 a_113_6# a_47_71# a_105_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_130_6# a_105_6# a_122_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M28 gnd R a_130_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_146_6# a_122_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_113_6# S a_146_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M31 gnd a_122_6# Q gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends DFFSR

.subckt FAX1 gnd vdd A B C YC YS
M0 vdd A a_2_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_54# B vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_6# C a_2_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_33_54# B a_25_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_33_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_46_54# A vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 vdd B a_46_54# vdd pfet w=7.2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_46_54# C vdd vdd pfet w=7.2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_70_6# a_25_6# a_46_54# vdd pfet w=7.2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_79_46# C a_70_6# vdd pfet w=9.6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_84_46# B a_79_46# vdd pfet w=9.6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M11 vdd A a_84_46# vdd pfet w=9.6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M12 YS a_70_6# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M13 YC a_25_6# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M14 gnd A a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M15 a_2_6# B gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M16 a_25_6# C a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_33_6# B a_25_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M18 gnd A a_33_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_46_6# A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M20 gnd B a_46_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_46_6# C gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M22 a_70_6# a_25_6# a_46_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_79_6# C a_70_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M24 a_84_6# B a_79_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M25 gnd A a_84_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M26 YS a_70_6# gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M27 YC a_25_6# gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends FAX1

.subckt FILL vdd gnd
.ends FILL

.subckt HAX1 vdd gnd YC A B YS
M0 vdd A a_2_74# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_74# B vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd a_2_74# YC vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_41_74# a_2_74# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_49_54# B a_41_74# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd A a_49_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 YS a_41_74# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_9_6# A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_2_74# B a_9_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 gnd a_2_74# YC gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M10 a_38_6# a_2_74# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_41_74# B a_38_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M12 a_38_6# A a_41_74# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M13 YS a_41_74# gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends HAX1

.subckt INVX1 A Y vdd gnd
M0 Y A vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y A gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX1

.subckt INVX2 vdd gnd Y A
M0 Y A vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX2

.subckt INVX4 vdd gnd Y A
M0 Y A vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 gnd A Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX4

.subckt INVX8 vdd gnd A Y
M0 Y A vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd A Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd A Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 gnd A Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 gnd A Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends INVX8

.subckt LATCH D Q gnd vdd CLK
M0 vdd CLK a_2_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_74# D vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_23_6# a_2_6# a_18_74# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_84# CLK a_23_6# vdd pfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd Q a_35_84# vdd pfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 gnd CLK a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 Q a_23_6# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# D gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_23_6# CLK a_18_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# a_23_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M10 gnd Q a_35_6# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M11 Q a_23_6# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends LATCH

.subckt MUX2X1 S vdd gnd Y A B
M0 vdd S a_2_10# vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_17_50# B vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y S a_17_50# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_30_54# a_2_10# Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd A a_30_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 gnd S a_2_10# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 a_17_10# B gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 Y a_2_10# a_17_10# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 a_30_10# S Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 gnd A a_30_10# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends MUX2X1

.subckt NAND2X1 vdd Y gnd A B
M0 Y A vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B Y vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_9_6# A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 Y B a_9_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND2X1

.subckt NAND3X1 B vdd gnd A C Y
M0 Y A vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B Y vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y C vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# A gnd gnd nfet w=6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_14_6# B a_9_6# gnd nfet w=6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_14_6# gnd nfet w=6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends NAND3X1

.subckt NOR2X1 vdd B gnd Y A
M0 a_9_54# A vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 gnd B Y gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR2X1

.subckt NOR3X1 vdd gnd B C A Y
M0 vdd A a_2_64# vdd pfet w=6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_2_64# A vdd vdd pfet w=6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_25_64# B a_2_64# vdd pfet w=6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_64# B a_25_64# vdd pfet w=6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 Y C a_25_64# vdd pfet w=6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_25_64# C Y vdd pfet w=6u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y A gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 gnd B Y gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y C gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends NOR3X1

.subckt OAI21X1 gnd vdd A B Y C
M0 a_9_54# A vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd C Y vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 gnd A a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_2_6# B gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y C a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI21X1

.subckt OAI22X1 gnd vdd D C A B Y
M0 a_9_54# A vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y B a_9_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_28_54# D Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd C a_28_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 gnd A a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_2_6# B gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y D a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_2_6# C Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends OAI22X1

.subckt OR2X1 Y B vdd gnd A
M0 a_9_54# A a_2_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_9_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 gnd B a_2_54# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X1

.subckt OR2X2 Y B vdd gnd A
M0 a_9_54# A a_2_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd B a_9_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_54# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_2_54# A gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 gnd B a_2_54# gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 Y a_2_54# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends OR2X2

.subckt PADINC DI vdd2 gnd2 vdd gnd YPAD
M0 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M2 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M3 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M6 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M7 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M8 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M10 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M11 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd2 a_31_658# YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd2 a_31_658# YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M14 YPAD a_31_658# vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M15 YPAD a_31_658# vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M16 gnd gnd2 a_15_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_32_420# a_15_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M18 gnd gnd2 a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_41_540# gnd2 gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M20 gnd gnd2 a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_41_540# gnd2 gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M22 gnd gnd2 a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_41_540# a_15_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M24 gnd a_15_420# a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_41_540# a_15_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M26 gnd a_15_420# a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_41_540# a_15_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_41_420# a_32_420# a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_41_540# a_32_420# a_41_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_41_420# a_32_420# a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M31 a_41_540# a_32_420# a_41_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M32 gnd a_176_413# a_31_658# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M33 a_176_413# a_41_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M34 gnd a_202_572# a_31_343# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M35 a_202_572# a_41_540# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M36 a_329_420# a_326_417# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M37 gnd a_326_417# a_329_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M38 a_329_420# a_326_417# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M39 gnd a_326_417# a_329_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M40 a_329_420# a_326_417# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M41 gnd a_326_417# a_329_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M42 DI a_329_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M43 gnd a_329_420# DI gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M44 DI a_329_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M45 gnd a_329_420# DI gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M46 DI a_329_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M47 gnd a_329_420# DI gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M48 vdd gnd2 a_15_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M49 a_32_420# a_15_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M50 vdd gnd2 a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M51 a_41_420# gnd2 vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M52 vdd gnd2 a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M53 a_41_420# gnd2 vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M54 vdd gnd2 a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M55 a_41_420# a_32_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M56 vdd a_32_420# a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M57 a_41_420# a_32_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M58 vdd a_32_420# a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M59 a_41_420# a_32_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M60 a_41_540# a_15_420# a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M61 a_41_420# a_15_420# a_41_540# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M62 a_41_540# a_15_420# a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M63 a_41_420# a_15_420# a_41_540# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M64 vdd a_176_413# a_31_658# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M65 a_176_413# a_41_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M66 vdd a_202_572# a_31_343# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M67 a_202_572# a_41_540# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M68 a_329_420# a_326_417# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M69 vdd a_326_417# a_329_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M70 a_329_420# a_326_417# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M71 vdd a_326_417# a_329_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M72 a_329_420# a_326_417# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M73 vdd a_326_417# a_329_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M74 DI a_329_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M75 vdd a_329_420# DI vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M76 DI a_329_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M77 vdd a_329_420# DI vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M78 DI a_329_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M79 vdd a_329_420# DI vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M80 gnd2 a_31_343# YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M81 gnd2 a_31_343# YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M82 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M83 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M84 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M85 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M86 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M87 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M88 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M89 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M90 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M91 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M92 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M93 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M94 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M95 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
R0 YPAD a_326_417# 100
.ends PADINC

.subckt PADINOUT DI DO vdd2 gnd2 OEN vdd gnd YPAD
M0 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M2 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M3 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M6 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M7 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M8 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M10 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M11 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd2 a_31_658# YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd2 a_31_658# YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M14 YPAD a_31_658# vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M15 YPAD a_31_658# vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M16 gnd OEN a_15_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_32_420# a_15_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M18 gnd DO a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_41_540# DO gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M20 gnd DO a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_41_540# DO gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M22 gnd DO a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_41_540# a_15_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M24 gnd a_15_420# a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_41_540# a_15_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M26 gnd a_15_420# a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_41_540# a_15_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_41_420# a_32_420# a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_41_540# a_32_420# a_41_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_41_420# a_32_420# a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M31 a_41_540# a_32_420# a_41_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M32 gnd a_176_413# a_31_658# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M33 a_176_413# a_41_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M34 gnd a_202_572# a_31_343# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M35 a_202_572# a_41_540# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M36 a_329_420# a_326_417# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M37 gnd a_326_417# a_329_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M38 a_329_420# a_326_417# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M39 gnd a_326_417# a_329_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M40 a_329_420# a_326_417# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M41 gnd a_326_417# a_329_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M42 DI a_329_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M43 gnd a_329_420# DI gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M44 DI a_329_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M45 gnd a_329_420# DI gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M46 DI a_329_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M47 gnd a_329_420# DI gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M48 vdd OEN a_15_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M49 a_32_420# a_15_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M50 vdd DO a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M51 a_41_420# DO vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M52 vdd DO a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M53 a_41_420# DO vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M54 vdd DO a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M55 a_41_420# a_32_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M56 vdd a_32_420# a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M57 a_41_420# a_32_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M58 vdd a_32_420# a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M59 a_41_420# a_32_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M60 a_41_540# a_15_420# a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M61 a_41_420# a_15_420# a_41_540# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M62 a_41_540# a_15_420# a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M63 a_41_420# a_15_420# a_41_540# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M64 vdd a_176_413# a_31_658# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M65 a_176_413# a_41_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M66 vdd a_202_572# a_31_343# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M67 a_202_572# a_41_540# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M68 a_329_420# a_326_417# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M69 vdd a_326_417# a_329_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M70 a_329_420# a_326_417# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M71 vdd a_326_417# a_329_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M72 a_329_420# a_326_417# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M73 vdd a_326_417# a_329_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M74 DI a_329_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M75 vdd a_329_420# DI vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M76 DI a_329_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M77 vdd a_329_420# DI vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M78 DI a_329_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M79 vdd a_329_420# DI vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M80 gnd2 a_31_343# YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M81 gnd2 a_31_343# YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M82 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M83 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M84 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M85 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M86 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M87 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M88 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M89 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M90 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M91 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M92 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M93 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M94 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M95 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
R0 YPAD a_326_417# 100
.ends PADINOUT

.subckt PADOUT DO vdd2 gnd2 vdd gnd YPAD
M0 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M1 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M2 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M3 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M5 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M6 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M7 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M8 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M9 vdd2 vdd2 YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M10 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M11 YPAD vdd2 vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M12 vdd2 a_31_658# YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M13 vdd2 a_31_658# YPAD vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M14 YPAD a_31_658# vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M15 YPAD a_31_658# vdd2 vdd2 hpfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M16 gnd vdd a_15_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M17 a_32_420# a_15_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M18 gnd DO a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M19 a_41_540# DO gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M20 gnd DO a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M21 a_41_540# DO gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M22 gnd DO a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M23 a_41_540# a_15_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M24 gnd a_15_420# a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M25 a_41_540# a_15_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M26 gnd a_15_420# a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M27 a_41_540# a_15_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M28 a_41_420# a_32_420# a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M29 a_41_540# a_32_420# a_41_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M30 a_41_420# a_32_420# a_41_540# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M31 a_41_540# a_32_420# a_41_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M32 gnd a_176_413# a_31_658# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M33 a_176_413# a_41_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M34 gnd a_202_572# a_31_343# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M35 a_202_572# a_41_540# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M36 a_329_420# a_326_417# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M37 gnd a_326_417# a_329_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M38 a_329_420# a_326_417# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M39 gnd a_326_417# a_329_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M40 a_329_420# a_326_417# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M41 gnd a_326_417# a_329_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M42 a_383_420# a_329_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M43 gnd a_329_420# a_383_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M44 a_383_420# a_329_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M45 gnd a_329_420# a_383_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M46 a_383_420# a_329_420# gnd gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M47 gnd a_329_420# a_383_420# gnd hnfet w=6u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M48 vdd vdd a_15_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M49 a_32_420# a_15_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M50 vdd DO a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M51 a_41_420# DO vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M52 vdd DO a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M53 a_41_420# DO vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M54 vdd DO a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M55 a_41_420# a_32_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M56 vdd a_32_420# a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M57 a_41_420# a_32_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M58 vdd a_32_420# a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M59 a_41_420# a_32_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M60 a_41_540# a_15_420# a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M61 a_41_420# a_15_420# a_41_540# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M62 a_41_540# a_15_420# a_41_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M63 a_41_420# a_15_420# a_41_540# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M64 vdd a_176_413# a_31_658# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M65 a_176_413# a_41_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M66 vdd a_202_572# a_31_343# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M67 a_202_572# a_41_540# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M68 a_329_420# a_326_417# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M69 vdd a_326_417# a_329_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M70 a_329_420# a_326_417# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M71 vdd a_326_417# a_329_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M72 a_329_420# a_326_417# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M73 vdd a_326_417# a_329_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M74 a_383_420# a_329_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M75 vdd a_329_420# a_383_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M76 a_383_420# a_329_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M77 vdd a_329_420# a_383_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M78 a_383_420# a_329_420# vdd vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M79 vdd a_329_420# a_383_420# vdd hpfet w=10.4u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M80 gnd2 a_31_343# YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M81 gnd2 a_31_343# YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M82 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M83 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M84 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M85 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M86 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M87 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M88 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M89 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M90 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M91 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M92 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M93 gnd2 gnd2 YPAD gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M94 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
M95 YPAD gnd2 gnd2 gnd2 hnfet w=35u l=0.6u
+ ad=0p pd=0u as=0p ps=0u 
R0 YPAD a_326_417# 100
.ends PADOUT

.subckt TBUFX1 vdd gnd EN A Y
M0 a_9_6# EN vdd vdd pfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_26_54# a_9_6# Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 vdd A a_26_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_9_6# EN gnd gnd nfet w=2u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_26_6# EN Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 gnd A a_26_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX1

.subckt TBUFX2 vdd gnd A EN Y
M0 a_9_6# EN vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 Y a_9_6# a_18_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 a_18_54# a_9_6# Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 vdd A a_18_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 a_18_54# A vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_9_6# EN gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 Y EN a_18_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# EN Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 gnd A a_18_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_18_6# A gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends TBUFX2

.subckt XNOR2X1 A B gnd vdd Y
M0 vdd A a_2_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_12_41# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y a_2_6# a_18_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# A Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_12_41# B vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 gnd A a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_12_41# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y A a_18_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# a_2_6# Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M10 gnd B a_35_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_12_41# B gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends XNOR2X1

.subckt XOR2X1 Y vdd B A gnd
M0 vdd A a_2_6# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M1 a_18_54# a_13_43# vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M2 Y A a_18_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M3 a_35_54# a_2_6# Y vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M4 vdd B a_35_54# vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M5 a_13_43# B vdd vdd pfet w=8u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M6 gnd A a_2_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M7 a_18_6# a_13_43# gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M8 Y a_2_6# a_18_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M9 a_35_6# A Y gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M10 gnd B a_35_6# gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
M11 a_13_43# B gnd gnd nfet w=4u l=0.4u
+ ad=0p pd=0u as=0p ps=0u 
.ends XOR2X1

** End of included library /home/oleg/tool_RTL_to_GDSII/tech/osu035/osu035_stdcells.sp

.subckt i2c_master_top vdd gnd arst_i scl_pad_i scl_pad_o scl_padoen_o sda_pad_i
+ sda_pad_o sda_padoen_o wb_ack_o wb_adr_i[0] wb_adr_i[1] wb_adr_i[2] wb_clk_i wb_cyc_i
+ wb_dat_i[0] wb_dat_i[1] wb_dat_i[2] wb_dat_i[3] wb_dat_i[4] wb_dat_i[5] wb_dat_i[6] wb_dat_i[7]
+ wb_dat_o[0] wb_dat_o[1] wb_dat_o[2] wb_dat_o[3] wb_dat_o[4] wb_dat_o[5] wb_dat_o[6] wb_dat_o[7]
+ wb_inta_o wb_rst_i wb_stb_i wb_we_i 

X_1677_ vdd _784_ gnd \byte_controller.bit_controller.dscl_oen\ wb_clk_i_bF$buf11 DFFPOSX1
X_1257_ _435_ vdd gnd _434_ _436_ _437_ NAND3X1
X_800_ gnd vdd _52_ _53_ _3_ wb_rst_i_bF$buf5 AOI21X1
X_1486_ vdd gnd _628_ _445_ _629_ AND2X2
X_1066_ vdd gnd \byte_controller.start\ _338_ \byte_controller.read\ _339_ NOR3X1
XFILL52720x30100 vdd gnd FILL
X_1295_ vdd _474_ gnd _456_ _462_ NAND2X1
X_1389_ \byte_controller.bit_controller.filter_cnt\[10] _552_ vdd gnd INVX1
X_1601_ gnd vdd _721_ _714_ _722_ \byte_controller.bit_controller.clk_cnt\[2] 
+ _370_
+ AOI22X1
X_932_ _154_ vdd gnd _17_ _150_ _162_ MUX2X1
X_1198_ _312_ vdd gnd _313_ _319_ _320_ NAND3X1
X_1410_ vdd gnd _442_ scl_pad_i _368_[0] AND2X2
X_970_ \byte_controller.bit_controller.clk_cnt\[2] _187_ vdd gnd INVX1
XSFILL13520x8100 vdd gnd FILL
X_1504_ gnd vdd _490_ _646_ _388_ _594_ OAI21X1
X_835_ gnd vdd _72_ _84_ _83_ _73_ 
+ _85_
+ OAI22X1
XSFILL27920x4100 vdd gnd FILL
X_1733_ gnd vdd _406_ arst_i_bF$buf1 vdd _785_ 
+ wb_clk_i_bF$buf11
+ DFFSR
X_1313_ \byte_controller.bit_controller.cmd_stop\ _491_ vdd gnd INVX1
X_1542_ vdd _679_ gnd _591_ _678_ NAND2X1
X_1122_ \byte_controller.dout\[7] _258_ vdd gnd INVX1
X_873_ gnd vdd \byte_controller.dout\[6] _58_ _118_ _117_ AOI21X1
XSFILL41200x6100 vdd gnd FILL
X_929_ \byte_controller.din\[3] _161_ vdd gnd INVX1
X_1351_ gnd vdd _508_ _522_ _523_ _500_ OAI21X1
X_1407_ gnd vdd _566_ _565_ _374_[13] _443_ AOI21X1
X_1580_ gnd vdd _472_ _642_ _704_ _468_ OAI21X1
X_1160_ _271_ _286_ vdd gnd INVX1
XSFILL10640x36100 vdd gnd FILL
X_1636_ vdd _746_ gnd _750_ \byte_controller.bit_controller.cnt\[9] NOR2X1
X_1216_ gnd vdd _306_ _304_ _336_ \byte_controller.bit_controller.cmd\[3] OAI21X1
X_967_ \byte_controller.bit_controller.clk_cnt\[1] _185_ vdd gnd INVX1
X_1445_ vdd \byte_controller.bit_controller.cmd\[2] gnd _589_ \byte_controller.bit_controller.cmd\[3] NOR2X1
X_1025_ gnd vdd _7_ vdd arst_i_bF$buf10 ctr[2] 
+ wb_clk_i_bF$buf0
+ DFFSR
X_1674_ vdd _782_ gnd \byte_controller.bit_controller.clk_cnt\[15] _370_ NAND2X1
X_1254_ vdd \byte_controller.bit_controller.cnt\[10] gnd _434_ \byte_controller.bit_controller.cnt\[9] NOR2X1
XFILL53040x34100 vdd gnd FILL
X_1483_ vdd _478_ gnd _626_ \byte_controller.bit_controller.c_state\[8] NOR2X1
X_1063_ gnd vdd _45_ vdd arst_i_bF$buf10 ctr[0] 
+ wb_clk_i_bF$buf1
+ DFFSR
XSFILL42480x18100 vdd gnd FILL
X_1539_ _458_ vdd gnd \byte_controller.bit_controller.c_state\[15] _666_ _676_ NAND3X1
X_1119_ gnd vdd _255_ _349_ _215_ _240_ AOI21X1
X_1292_ vdd _471_ gnd \byte_controller.bit_controller.c_state\[4] _470_ NAND2X1
XSFILL12880x26100 vdd gnd FILL
X_1348_ vdd _520_ gnd _515_ _504_ NAND2X1
X_1577_ gnd vdd _700_ _695_ _406_ _701_ AOI21X1
X_1157_ \byte_controller.ld\ vdd gnd _284_ \byte_controller.din\[7] \byte_controller.dout\[6] MUX2X1
X_1386_ vdd gnd _514_ _515_ _550_ AND2X2
X_1195_ gnd vdd _306_ _304_ _317_ \byte_controller.bit_controller.cmd\[1] OAI21X1
XSFILL43120x12100 vdd gnd FILL
XSFILL41840x32100 vdd gnd FILL
X_1289_ vdd _464_ gnd _468_ _467_ NOR2X1
X_1501_ vdd _644_ gnd _636_ _643_ NAND2X1
X_832_ gnd vdd _80_ _70_ _82_ _81_ OAI21X1
X_1098_ gnd vdd \byte_controller.c_state\[3] \byte_controller.c_state\[4] _240_ _345_ OAI21X1
X_1730_ gnd vdd _403_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.c_state\[14] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_1310_ vdd gnd _488_ _467_ INVX2
X_870_ \byte_controller.din\[6] _115_ vdd gnd INVX1
X_926_ \byte_controller.din\[2] _159_ vdd gnd INVX1
X_1404_ _501_ _564_ vdd gnd INVX1
X_1633_ vdd _748_ gnd _747_ _746_ NAND2X1
X_1213_ gnd vdd _357_ _314_ _333_ _340_ OAI21X1
X_964_ gnd vdd _138_ _182_ _183_ _49_ OAI21X1
X_1442_ gnd vdd _571_ _582_ _385_ _587_ OAI21X1
X_1022_ gnd vdd _1_ vdd arst_i_bF$buf0 irq_flag 
+ wb_clk_i_bF$buf1
+ DFFSR
XSFILL10960x16100 vdd gnd FILL
X_829_ gnd vdd \byte_controller.dout\[1] _58_ _79_ _78_ AOI21X1
X_1671_ gnd vdd \byte_controller.bit_controller.clk_cnt\[14] _708_ _780_ _709_ OAI21X1
X_1251_ _429_ vdd gnd _428_ _430_ _431_ NAND3X1
X_1727_ gnd vdd _400_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.c_state\[11] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_1307_ vdd gnd _481_ _485_ _371_ AND2X2
X_1480_ vdd _623_ gnd \byte_controller.bit_controller.c_state\[0] _622_ NAND2X1
X_1060_ gnd vdd _42_ arst_i_bF$buf5 vdd \byte_controller.bit_controller.clk_cnt\[13] 
+ wb_clk_i_bF$buf5
+ DFFSR
XSFILL27760x100 vdd gnd FILL
X_1536_ gnd vdd _610_ _672_ _392_ _674_ OAI21X1
X_1116_ gnd vdd _253_ _249_ _212_ _254_ OAI21X1
X_867_ gnd vdd _64_ _112_ _52_ _73_ 
+ _113_
+ OAI22X1
X_1345_ vdd _517_ gnd _374_[0] \byte_controller.bit_controller.filter_cnt\[0] NOR2X1
XSFILL42480x22100 vdd gnd FILL
XSFILL27600x14100 vdd gnd FILL
X_1574_ _699_ _631_ vdd gnd _698_ OR2X2
X_1154_ vdd _282_ gnd \byte_controller.dout\[6] _267_ NAND2X1
XSFILL12880x30100 vdd gnd FILL
XSFILL12560x6100 vdd gnd FILL
X_1383_ vdd _548_ gnd \byte_controller.bit_controller.clk_cnt\[10] _521_ NAND2X1
X_1439_ gnd vdd wb_rst_i_bF$buf1 \byte_controller.bit_controller.cSDA\[1] _586_ _582_ OAI21X1
X_1019_ gnd vdd _5_ vdd arst_i_bF$buf0 _788_ 
+ wb_clk_i_bF$buf8
+ DFFSR
XFILL53040x28100 vdd gnd FILL
X_1192_ vdd _314_ gnd _315_ _365_ NOR2X1
X_1668_ vdd _777_ gnd \byte_controller.bit_controller.cnt\[14] _710_ NAND2X1
X_1248_ \byte_controller.bit_controller.cnt\[4] _428_ vdd gnd INVX1
X_999_ \byte_controller.bit_controller.clk_cnt\[12] _206_ vdd gnd INVX1
X_1477_ vdd _464_ gnd _620_ _613_ NOR2X1
X_1057_ gnd vdd _39_ arst_i_bF$buf9 vdd \byte_controller.bit_controller.clk_cnt\[10] 
+ wb_clk_i_bF$buf0
+ DFFSR
X_1286_ vdd _464_ gnd _465_ _458_ NOR2X1
X_1095_ gnd vdd _364_ _365_ _346_ _363_ 
+ _221_
+ OAI22X1
X_923_ gnd vdd _67_ _154_ _13_ _157_ OAI21X1
X_1189_ vdd _311_ gnd _312_ _308_ NOR2X1
X_1401_ _501_ vdd gnd _552_ _550_ _562_ NAND3X1
X_1630_ vdd _431_ gnd _745_ _427_ NOR2X1
X_1210_ _292_ vdd gnd _329_ _290_ _330_ NAND3X1
X_961_ gnd vdd _166_ _179_ _98_ _180_ 
+ _28_
+ OAI22X1
X_826_ ctr[1] _76_ vdd gnd INVX1
XSFILL28400x30100 vdd gnd FILL
X_1724_ gnd vdd _397_ vdd arst_i_bF$buf2 \byte_controller.bit_controller.c_state\[8] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_1304_ vdd \byte_controller.bit_controller.al\ gnd _483_ wb_rst_i_bF$buf2 NOR2X1
XSFILL27920x2100 vdd gnd FILL
X_1533_ vdd _673_ gnd \byte_controller.bit_controller.c_state\[2] _593_ NAND2X1
X_1113_ _249_ vdd gnd _340_ _252_ _216_ NAND3X1
X_864_ \byte_controller.dout\[5] _110_ vdd gnd INVX1
XSFILL10960x20100 vdd gnd FILL
X_1762_ vdd gnd _787_[6] wb_dat_o[6] BUFX2
X_1342_ vdd \byte_controller.bit_controller.filter_cnt\[8] gnd _515_ \byte_controller.bit_controller.filter_cnt\[9] NOR2X1
X_1571_ _609_ vdd gnd _651_ _669_ _696_ NAND3X1
X_1151_ vdd _280_ gnd \byte_controller.dout\[5] _267_ NAND2X1
X_1627_ gnd vdd \byte_controller.bit_controller.cnt\[7] _710_ _743_ \byte_controller.bit_controller.clk_cnt\[7] 
+ _370_
+ AOI22X1
X_1207_ gnd vdd _306_ _304_ _328_ \byte_controller.bit_controller.cmd\[2] OAI21X1
X_958_ gnd vdd _54_ _169_ _27_ _178_ OAI21X1
X_1380_ \byte_controller.bit_controller.filter_cnt\[8] _545_ vdd gnd INVX1
X_1436_ gnd vdd _576_ _582_ _382_ _584_ OAI21X1
X_1016_ vdd _789_[6] gnd _787_[6] wb_clk_i_bF$buf9 DFFPOSX1
X_1665_ gnd vdd _770_ _767_ _775_ _708_ OAI21X1
X_1245_ \byte_controller.bit_controller.cnt\[2] _425_ vdd gnd INVX1
X_996_ \byte_controller.bit_controller.clk_cnt\[11] _204_ vdd gnd INVX1
X_1474_ gnd vdd _611_ _616_ _617_ _614_ OAI21X1
X_1054_ gnd vdd _36_ arst_i_bF$buf8 vdd \byte_controller.bit_controller.clk_cnt\[7] 
+ wb_clk_i_bF$buf5
+ DFFSR
XSFILL41520x2100 vdd gnd FILL
XFILL53040x32100 vdd gnd FILL
X_1283_ vdd \byte_controller.bit_controller.c_state\[12] gnd _462_ \byte_controller.bit_controller.c_state\[13] NOR2X1
X_1759_ vdd gnd _787_[3] wb_dat_o[3] BUFX2
X_1339_ vdd _511_ gnd _512_ \byte_controller.bit_controller.filter_cnt\[5] NOR2X1
X_1092_ vdd _363_ gnd _362_ _340_ NAND2X1
XSFILL12880x24100 vdd gnd FILL
XSFILL42960x18100 vdd gnd FILL
X_1568_ gnd vdd _694_ _671_ _603_ _672_ 
+ _404_
+ OAI22X1
X_1148_ vdd _278_ gnd \byte_controller.dout\[4] _267_ NAND2X1
X_899_ vdd _140_ gnd _141_ wb_rst_i_bF$buf0 NOR2X1
X_1377_ gnd vdd \byte_controller.bit_controller.clk_cnt\[9] _520_ _543_ _514_ OAI21X1
X_920_ wb_dat_i[0] _155_ vdd gnd INVX1
X_1186_ vdd _309_ gnd _340_ _298_ NAND2X1
XSFILL43440x36100 vdd gnd FILL
XSFILL27280x28100 vdd gnd FILL
XSFILL41840x30100 vdd gnd FILL
X_823_ gnd vdd _72_ _47_ _50_ _73_ 
+ _74_
+ OAI22X1
X_1089_ gnd vdd _351_ _350_ _361_ \byte_controller.c_state\[4] OAI21X1
X_1721_ gnd vdd _394_ vdd arst_i_bF$buf1 \byte_controller.bit_controller.c_state\[5] 
+ wb_clk_i_bF$buf3
+ DFFSR
X_1301_ vdd _480_ gnd _479_ _477_ NAND2X1
X_1530_ vdd gnd _671_ _485_ INVX4
X_1110_ _354_ _250_ vdd gnd INVX1
X_861_ gnd vdd _105_ _62_ _107_ _106_ OAI21X1
XSFILL42800x8100 vdd gnd FILL
X_917_ vdd _153_ gnd wb_dat_i[7] _49_ NAND2X1
X_1624_ _739_ vdd gnd _740_ _738_ _414_ NAND3X1
X_1204_ gnd vdd _339_ _314_ _325_ _340_ OAI21X1
X_955_ gnd vdd _119_ _169_ _26_ _176_ OAI21X1
X_1433_ gnd vdd wb_rst_i_bF$buf1 \byte_controller.bit_controller.cSCL\[1] _583_ _582_ OAI21X1
X_1013_ vdd _789_[3] gnd _787_[3] wb_clk_i_bF$buf8 DFFPOSX1
XSFILL28400x24100 vdd gnd FILL
X_1662_ gnd vdd _771_ _708_ _772_ _711_ OAI21X1
X_1242_ gnd vdd _236_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.cmd\[2] 
+ wb_clk_i_bF$buf6
+ DFFSR
X_993_ \byte_controller.bit_controller.clk_cnt\[10] _202_ vdd gnd INVX1
X_1718_ gnd vdd _391_ vdd arst_i_bF$buf3 \byte_controller.bit_controller.c_state\[2] 
+ wb_clk_i_bF$buf11
+ DFFSR
X_1471_ vdd gnd _613_ _464_ _612_ _614_ NOR3X1
X_1051_ gnd vdd _33_ arst_i_bF$buf6 vdd \byte_controller.bit_controller.clk_cnt\[4] 
+ wb_clk_i_bF$buf7
+ DFFSR
X_1527_ _668_ vdd gnd _458_ _455_ _669_ NAND3X1
X_1107_ vdd _247_ gnd \byte_controller.bit_controller.cmd_ack\ \byte_controller.c_state\[2] NAND2X1
X_858_ _103_ vdd gnd _104_ _102_ _789_[4] NAND3X1
X_1280_ \byte_controller.bit_controller.c_state\[13] _459_ vdd gnd INVX1
X_1756_ vdd gnd _787_[0] wb_dat_o[0] BUFX2
X_1336_ vdd _509_ gnd _507_ _508_ NAND2X1
XSFILL27120x10100 vdd gnd FILL
XSFILL28080x100 vdd gnd FILL
X_1565_ vdd _693_ gnd _485_ _692_ NAND2X1
X_1145_ vdd _276_ gnd \byte_controller.dout\[3] _267_ NAND2X1
X_896_ vdd _138_ gnd wb_we_i _786_ NAND2X1
XSFILL42480x20100 vdd gnd FILL
X_1374_ vdd _541_ gnd _500_ _540_ NAND2X1
XSFILL42160x4100 vdd gnd FILL
XSFILL12560x4100 vdd gnd FILL
X_1183_ gnd vdd _341_ _355_ _306_ _305_ OAI21X1
X_1659_ vdd _420_ gnd _768_ _769_ NAND2X1
X_1239_ gnd vdd _233_ vdd arst_i_bF$buf7 \byte_controller.dcnt\[2] 
+ wb_clk_i_bF$buf9
+ DFFSR
XFILL53040x26100 vdd gnd FILL
X_1468_ vdd _610_ gnd _611_ \byte_controller.bit_controller.c_state\[2] NOR2X1
X_1048_ gnd vdd _30_ arst_i_bF$buf8 vdd \byte_controller.bit_controller.clk_cnt\[1] 
+ wb_clk_i_bF$buf4
+ DFFSR
X_799_ \byte_controller.write\ _53_ vdd gnd INVX1
X_1697_ gnd vdd _374_[9] vdd arst_i_bF$buf3 \byte_controller.bit_controller.filter_cnt\[9] 
+ wb_clk_i_bF$buf2
+ DFFSR
X_1277_ vdd \byte_controller.bit_controller.c_state\[14] gnd _456_ \byte_controller.bit_controller.c_state\[15] NOR2X1
X_820_ gnd vdd _67_ _70_ _71_ _69_ OAI21X1
X_1086_ _357_ vdd gnd _355_ _342_ _358_ NAND3X1
XSFILL27280x32100 vdd gnd FILL
X_914_ _139_ vdd gnd _10_ _151_ _112_ MUX2X1
XSFILL10800x36100 vdd gnd FILL
XSFILL13520x12100 vdd gnd FILL
XSFILL40880x6100 vdd gnd FILL
X_1621_ gnd vdd _736_ _737_ _738_ _714_ OAI21X1
X_1201_ gnd vdd \byte_controller.c_state\[3] _349_ _322_ _321_ OAI21X1
X_952_ gnd vdd _52_ _169_ _25_ _174_ OAI21X1
X_1430_ gnd vdd \byte_controller.bit_controller.dSCL\ _567_ _581_ \byte_controller.bit_controller.dout\ OAI21X1
X_1010_ vdd _789_[0] gnd _787_[0] wb_clk_i_bF$buf1 DFFPOSX1
X_817_ vdd wb_adr_i[1] gnd _68_ wb_adr_i[0] NOR2X1
X_990_ gnd vdd _60_ _199_ _37_ _200_ OAI21X1
X_1715_ gnd vdd _388_ vdd arst_i_bF$buf1 \byte_controller.bit_controller.sda_chk\ 
+ wb_clk_i_bF$buf3
+ DFFSR
X_1524_ \byte_controller.bit_controller.c_state\[14] _666_ vdd gnd INVX1
X_1104_ _244_ _245_ vdd gnd INVX1
X_855_ gnd vdd \byte_controller.bit_controller.clk_cnt\[12] _87_ _102_ _101_ AOI21X1
XSFILL27440x4100 vdd gnd FILL
X_1753_ vdd gnd gnd sda_pad_o BUFX2
X_1333_ \byte_controller.bit_controller.filter_cnt\[4] _506_ vdd gnd INVX1
XSFILL26160x34100 vdd gnd FILL
X_1562_ vdd _691_ gnd _690_ _485_ NAND2X1
X_1142_ vdd _274_ gnd \byte_controller.dout\[2] _267_ NAND2X1
X_893_ vdd _789_[7] gnd _130_ _136_ NAND2X1
XSFILL41200x2100 vdd gnd FILL
X_1618_ gnd vdd \byte_controller.bit_controller.cnt\[5] _727_ _735_ \byte_controller.bit_controller.cnt\[6] OAI21X1
X_949_ gnd vdd _53_ _169_ _24_ _172_ OAI21X1
XSFILL12400x100 vdd gnd FILL
X_1371_ \byte_controller.bit_controller.clk_cnt\[8] _538_ vdd gnd INVX1
XSFILL13680x34100 vdd gnd FILL
X_1427_ gnd vdd \byte_controller.bit_controller.fSCL\[0] \byte_controller.bit_controller.fSCL\[2] _579_ _578_ OAI21X1
X_1007_ gnd vdd _128_ _199_ _44_ _210_ OAI21X1
X_1180_ vdd _303_ gnd _299_ _302_ NAND2X1
XSFILL12400x14100 vdd gnd FILL
X_1656_ vdd gnd _762_ _765_ _767_ AND2X2
X_1236_ gnd vdd _230_ vdd arst_i_bF$buf7 \byte_controller.dout\[7] 
+ wb_clk_i_bF$buf4
+ DFFSR
X_987_ gnd vdd _197_ _183_ _36_ _198_ OAI21X1
X_1465_ vdd _457_ gnd _608_ _607_ NOR2X1
X_1045_ gnd vdd _27_ vdd arst_i_bF$buf8 \byte_controller.start\ 
+ wb_clk_i_bF$buf4
+ DFFSR
X_796_ vdd _51_ gnd _49_ _50_ NAND2X1
X_1694_ gnd vdd _374_[6] vdd arst_i_bF$buf9 \byte_controller.bit_controller.filter_cnt\[6] 
+ wb_clk_i_bF$buf2
+ DFFSR
X_1274_ vdd \byte_controller.bit_controller.c_state\[8] gnd _453_ \byte_controller.bit_controller.c_state\[9] NOR2X1
XFILL53040x30100 vdd gnd FILL
X_1083_ gnd vdd _354_ _353_ _355_ \byte_controller.cmd_ack\ AOI21X1
X_1559_ gnd vdd _688_ _671_ _606_ _672_ 
+ _401_
+ OAI22X1
X_1139_ vdd _272_ gnd \byte_controller.dout\[1] _267_ NAND2X1
X_1368_ vdd _536_ gnd \byte_controller.bit_controller.filter_cnt\[5] _511_ NAND2X1
X_911_ vdd _150_ gnd wb_dat_i[4] _49_ NAND2X1
X_1597_ gnd vdd _713_ _709_ _409_ _718_ OAI21X1
X_1177_ vdd \byte_controller.c_state\[4] gnd _300_ \byte_controller.c_state\[3] NOR2X1
X_814_ gnd vdd _62_ _60_ _59_ _64_ 
+ _65_
+ OAI22X1
X_1712_ gnd vdd _385_ arst_i_bF$buf9 vdd \byte_controller.bit_controller.fSDA\[1] 
+ wb_clk_i_bF$buf1
+ DFFSR
X_1521_ vdd gnd _618_ _662_ _653_ _663_ NOR3X1
X_1101_ vdd gnd \byte_controller.start\ \byte_controller.write\ \byte_controller.read\ _242_ NOR3X1
X_852_ gnd vdd _93_ ctr[3] _100_ _99_ AOI21X1
XSFILL41360x16100 vdd gnd FILL
X_908_ vdd _148_ gnd wb_dat_i[3] _49_ NAND2X1
X_1750_ gnd vdd _423_ vdd arst_i_bF$buf5 \byte_controller.bit_controller.cnt\[15] 
+ wb_clk_i_bF$buf6
+ DFFSR
X_1330_ vdd _503_ gnd _501_ _502_ NAND2X1
X_890_ \byte_controller.dout\[7] _134_ vdd gnd INVX1
X_1615_ vdd _733_ gnd _731_ _732_ NAND2X1
X_946_ vdd _170_ gnd _48_ _167_ NAND2X1
X_1424_ \byte_controller.bit_controller.fSCL\[1] _576_ vdd gnd INVX1
X_1004_ gnd vdd wb_rst_i_bF$buf3 wb_dat_i[6] _209_ _199_ OAI21X1
X_1653_ vdd _419_ gnd _763_ _764_ NAND2X1
X_1233_ gnd vdd _227_ vdd arst_i_bF$buf0 \byte_controller.dout\[4] 
+ wb_clk_i_bF$buf8
+ DFFSR
X_984_ gnd vdd _195_ _183_ _35_ _196_ OAI21X1
X_1709_ gnd vdd _382_ arst_i_bF$buf10 vdd \byte_controller.bit_controller.fSCL\[1] 
+ wb_clk_i_bF$buf1
+ DFFSR
X_1462_ vdd _602_ gnd _605_ _604_ NOR2X1
X_1042_ gnd vdd _24_ vdd arst_i_bF$buf7 \byte_controller.write\ 
+ wb_clk_i_bF$buf7
+ DFFSR
X_793_ vdd \byte_controller.cmd_ack\ gnd _48_ \byte_controller.bit_controller.al\ NOR2X1
X_1518_ _635_ vdd gnd _488_ _487_ _660_ NAND3X1
X_849_ gnd vdd \byte_controller.din\[3] _91_ _97_ _58_ 
+ \byte_controller.dout\[3]
+ AOI22X1
X_1691_ gnd vdd _374_[3] vdd arst_i_bF$buf3 \byte_controller.bit_controller.filter_cnt\[3] 
+ wb_clk_i_bF$buf2
+ DFFSR
X_1271_ vdd _450_ gnd _448_ _449_ NAND2X1
X_1747_ gnd vdd _420_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.cnt\[12] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_1327_ vdd gnd _500_ _443_ INVX2
X_1080_ _348_ vdd gnd _343_ _352_ _219_ NAND3X1
X_1556_ vdd _687_ gnd _596_ _599_ NAND2X1
X_1136_ wb_rst_i_bF$buf5 _270_ vdd gnd INVX1
X_887_ \byte_controller.din\[7] _131_ vdd gnd INVX1
XSFILL28880x30100 vdd gnd FILL
X_1365_ gnd vdd _533_ _532_ _534_ _500_ OAI21X1
X_1594_ vdd _716_ gnd \byte_controller.bit_controller.cnt\[1] \byte_controller.bit_controller.cnt\[0] NAND2X1
X_1174_ gnd vdd \byte_controller.c_state\[5] \byte_controller.c_state\[2] _297_ _351_ OAI21X1
XSFILL42480x8100 vdd gnd FILL
XSFILL12560x2100 vdd gnd FILL
X_1459_ _462_ _602_ vdd gnd INVX1
X_1039_ gnd vdd _21_ vdd arst_i_bF$buf10 iack 
+ wb_clk_i_bF$buf1
+ DFFSR
XFILL53040x24100 vdd gnd FILL
XSFILL42160x32100 vdd gnd FILL
X_1688_ gnd vdd _374_[0] vdd arst_i_bF$buf9 \byte_controller.bit_controller.filter_cnt\[0] 
+ wb_clk_i_bF$buf2
+ DFFSR
X_1268_ vdd _447_ gnd _445_ _446_ NAND2X1
X_811_ _61_ vdd gnd wb_adr_i[0] _56_ _62_ NAND3X1
X_1497_ \byte_controller.bit_controller.c_state\[4] _640_ vdd gnd INVX1
X_1077_ vdd _344_ gnd _350_ _349_ NOR2X1
XSFILL42640x34100 vdd gnd FILL
XSFILL13360x34100 vdd gnd FILL
X_905_ vdd _146_ gnd _145_ _139_ NAND2X1
XSFILL26480x26100 vdd gnd FILL
X_1612_ \byte_controller.bit_controller.cnt\[5] _730_ vdd gnd INVX1
X_943_ gnd vdd wb_we_i _786_ _167_ wb_rst_i_bF$buf5 AOI21X1
X_1421_ gnd vdd \byte_controller.bit_controller.fSDA\[0] \byte_controller.bit_controller.fSDA\[2] _574_ _573_ OAI21X1
X_1001_ gnd vdd _206_ _199_ _41_ _207_ OAI21X1
X_808_ ctr[0] _59_ vdd gnd INVX1
X_1650_ vdd gnd _755_ _746_ \byte_controller.bit_controller.cnt\[11] _762_ NOR3X1
X_1230_ gnd vdd _224_ vdd arst_i_bF$buf0 \byte_controller.dout\[1] 
+ wb_clk_i_bF$buf8
+ DFFSR
X_981_ gnd vdd _193_ _183_ _34_ _194_ OAI21X1
XSFILL11280x16100 vdd gnd FILL
X_1706_ gnd vdd _370_ arst_i_bF$buf2 vdd \byte_controller.bit_controller.clk_en\ 
+ wb_clk_i_bF$buf11
+ DFFSR
X_790_ vdd _46_ gnd ien irq_flag NAND2X1
XSFILL13840x8100 vdd gnd FILL
X_1515_ _627_ vdd gnd _655_ _656_ _657_ NAND3X1
X_846_ gnd vdd ctr[2] _93_ _95_ \byte_controller.bit_controller.clk_cnt\[2] 
+ _94_
+ AOI22X1
X_1744_ gnd vdd _417_ vdd arst_i_bF$buf3 \byte_controller.bit_controller.cnt\[9] 
+ wb_clk_i_bF$buf5
+ DFFSR
X_1324_ _493_ _373_ vdd gnd INVX1
XSFILL27440x2100 vdd gnd FILL
X_1553_ gnd vdd _685_ _683_ _398_ _681_ OAI21X1
X_1133_ vdd gnd _267_ _266_ INVX2
X_884_ \byte_controller.bit_controller.clk_cnt\[15] _128_ vdd gnd INVX1
XSFILL14000x18100 vdd gnd FILL
X_1609_ vdd _728_ gnd _726_ _727_ NAND2X1
X_1362_ \byte_controller.bit_controller.clk_cnt\[6] _531_ vdd gnd INVX1
X_1418_ \byte_controller.bit_controller.fSDA\[1] _571_ vdd gnd INVX1
X_1591_ \byte_controller.bit_controller.cnt\[1] _713_ vdd gnd INVX1
X_1171_ gnd vdd \byte_controller.ld\ _294_ _295_ _286_ OAI21X1
X_1647_ vdd _418_ gnd _758_ _759_ NAND2X1
X_1227_ gnd vdd _214_ vdd arst_i_bF$buf7 \byte_controller.ld\ 
+ wb_clk_i_bF$buf4
+ DFFSR
X_978_ gnd vdd _191_ _183_ _33_ _192_ OAI21X1
X_1456_ vdd gnd _451_ _598_ _599_ AND2X2
X_1036_ gnd vdd _18_ vdd arst_i_bF$buf6 \byte_controller.din\[5] 
+ wb_clk_i_bF$buf9
+ DFFSR
X_1685_ gnd vdd _376_ arst_i_bF$buf9 vdd \byte_controller.bit_controller.sSDA\ 
+ wb_clk_i_bF$buf3
+ DFFSR
X_1265_ vdd _370_ gnd _444_ _439_ NAND2X1
X_1494_ \byte_controller.bit_controller.c_state\[7] _637_ vdd gnd INVX1
X_1074_ vdd _346_ gnd _347_ \byte_controller.read\ NOR2X1
XBUFX2_insert0 vdd gnd wb_rst_i wb_rst_i_bF$buf5 BUFX2
XBUFX2_insert1 vdd gnd wb_rst_i wb_rst_i_bF$buf4 BUFX2
XBUFX2_insert2 vdd gnd wb_rst_i wb_rst_i_bF$buf3 BUFX2
XBUFX2_insert3 vdd gnd wb_rst_i wb_rst_i_bF$buf2 BUFX2
XBUFX2_insert4 vdd gnd wb_rst_i wb_rst_i_bF$buf1 BUFX2
XBUFX2_insert5 vdd gnd wb_rst_i wb_rst_i_bF$buf0 BUFX2
X_1359_ vdd gnd _509_ \byte_controller.bit_controller.filter_cnt\[3] _529_ AND2X2
XSFILL42960x14100 vdd gnd FILL
X_902_ ctr[2] _143_ vdd gnd INVX1
X_1588_ vdd _711_ gnd _568_ _708_ NAND2X1
X_1168_ \byte_controller.dcnt\[2] _292_ vdd gnd INVX1
X_1397_ _552_ vdd gnd _558_ _550_ _559_ NAND3X1
X_940_ gnd vdd _166_ _155_ _50_ _165_ 
+ _21_
+ OAI22X1
XSFILL42640x28100 vdd gnd FILL
X_805_ vdd gnd _56_ wb_adr_i[2] INVX4
X_1703_ gnd vdd _368_[1] vdd arst_i_bF$buf10 \byte_controller.bit_controller.cSCL\[1] 
+ wb_clk_i_bF$buf1
+ DFFSR
X_1512_ _613_ _654_ vdd gnd INVX1
X_843_ gnd vdd \byte_controller.din\[2] _91_ _92_ _58_ 
+ \byte_controller.dout\[2]
+ AOI22X1
XSFILL11280x20100 vdd gnd FILL
X_1741_ gnd vdd _414_ vdd arst_i_bF$buf2 \byte_controller.bit_controller.cnt\[6] 
+ wb_clk_i_bF$buf5
+ DFFSR
X_1321_ vdd _496_ gnd _497_ \byte_controller.bit_controller.dSDA\ NOR2X1
X_1550_ _682_ vdd gnd _669_ _663_ _683_ NAND3X1
X_1130_ \byte_controller.shift\ _264_ vdd gnd INVX1
X_881_ vdd _789_[6] gnd _118_ _125_ NAND2X1
X_1606_ gnd vdd _424_ _709_ _411_ _725_ OAI21X1
X_937_ vdd _138_ gnd _164_ wb_rst_i_bF$buf5 NOR2X1
XSFILL12720x100 vdd gnd FILL
X_1415_ vdd gnd _569_ _567_ _377_ AND2X2
XSFILL43120x100 vdd gnd FILL
XSFILL14000x22100 vdd gnd FILL
X_1644_ gnd vdd _746_ _755_ _757_ _756_ OAI21X1
X_1224_ gnd vdd _212_ vdd arst_i_bF$buf8 \byte_controller.cmd_ack\ 
+ wb_clk_i_bF$buf4
+ DFFSR
X_975_ gnd vdd _189_ _183_ _32_ _190_ OAI21X1
XSFILL26640x8100 vdd gnd FILL
X_1453_ vdd gnd _595_ \byte_controller.bit_controller.c_state\[10] _596_ AND2X2
X_1033_ gnd vdd _15_ vdd arst_i_bF$buf0 \byte_controller.din\[2] 
+ wb_clk_i_bF$buf8
+ DFFSR
XSFILL28400x20100 vdd gnd FILL
X_1509_ _451_ vdd gnd \byte_controller.bit_controller.c_state\[16] _487_ _651_ NAND3X1
X_1682_ gnd vdd _378_ vdd arst_i_bF$buf1 \byte_controller.bit_controller.sta_condition\ 
+ wb_clk_i_bF$buf3
+ DFFSR
X_1262_ vdd gnd _442_ wb_rst_i_bF$buf2 INVX4
XSFILL26160x26100 vdd gnd FILL
X_1738_ gnd vdd _411_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.cnt\[3] 
+ wb_clk_i_bF$buf6
+ DFFSR
X_1318_ gnd vdd \byte_controller.bit_controller.busy\ \byte_controller.bit_controller.sta_condition\ _495_ _442_ OAI21X1
X_1491_ vdd _634_ gnd \byte_controller.bit_controller.c_state\[7] _633_ NAND2X1
X_1071_ vdd _344_ gnd \byte_controller.bit_controller.cmd_ack\ _340_ NAND2X1
X_1547_ gnd vdd _671_ _660_ _397_ _680_ OAI21X1
X_1127_ \byte_controller.c_state\[2] vdd gnd \byte_controller.bit_controller.cmd_ack\ \byte_controller.bit_controller.dout\ _262_ NAND3X1
X_878_ \byte_controller.bit_controller.clk_cnt\[6] vdd gnd _56_ _68_ _123_ NAND3X1
X_1356_ vdd _527_ gnd _500_ _526_ NAND2X1
X_1585_ vdd gnd _439_ _444_ _708_ AND2X2
X_1165_ vdd \byte_controller.dcnt\[0] gnd _290_ \byte_controller.dcnt\[1] NOR2X1
X_1394_ gnd vdd _553_ _555_ _374_[10] _556_ AOI21X1
XSFILL12880x6100 vdd gnd FILL
X_1679_ gnd vdd _371_ vdd arst_i_bF$buf2 \byte_controller.bit_controller.cmd_ack\ 
+ wb_clk_i_bF$buf11
+ DFFSR
X_1259_ vdd _439_ gnd _438_ _433_ NAND2X1
XSFILL42160x30100 vdd gnd FILL
X_802_ \byte_controller.start\ _54_ vdd gnd INVX1
X_1488_ _625_ vdd gnd _627_ _630_ _631_ NAND3X1
X_1068_ vdd _341_ gnd \byte_controller.c_state\[0] _340_ NAND2X1
X_1700_ gnd vdd _374_[12] vdd arst_i_bF$buf6 \byte_controller.bit_controller.filter_cnt\[12] 
+ wb_clk_i_bF$buf2
+ DFFSR
X_1297_ vdd _474_ gnd _476_ _475_ NOR2X1
X_840_ vdd _73_ gnd _89_ _88_ NOR2X1
XSFILL13360x32100 vdd gnd FILL
XSFILL43600x100 vdd gnd FILL
XSFILL12560x28100 vdd gnd FILL
X_1603_ gnd vdd \byte_controller.bit_controller.cnt\[2] _715_ _723_ \byte_controller.bit_controller.cnt\[3] OAI21X1
X_934_ _154_ vdd gnd _18_ _151_ _163_ MUX2X1
XSFILL13840x34100 vdd gnd FILL
X_1412_ \byte_controller.bit_controller.sSCL\ _567_ vdd gnd INVX1
X_1641_ _753_ vdd gnd _754_ _752_ _417_ NAND3X1
X_1221_ gnd vdd _219_ vdd arst_i_bF$buf7 \byte_controller.c_state\[3] 
+ wb_clk_i_bF$buf9
+ DFFSR
X_972_ gnd vdd _187_ _183_ _31_ _188_ OAI21X1
X_1450_ vdd _484_ gnd _593_ \byte_controller.bit_controller.clk_en\ NOR2X1
X_1030_ gnd vdd _12_ vdd arst_i_bF$buf6 \byte_controller.bit_controller.ena\ 
+ wb_clk_i_bF$buf7
+ DFFSR
X_1506_ vdd _648_ gnd _589_ _485_ NAND2X1
X_837_ vdd _789_[1] gnd _79_ _86_ NAND2X1
X_1735_ gnd vdd _408_ vdd arst_i_bF$buf5 \byte_controller.bit_controller.cnt\[0] 
+ wb_clk_i_bF$buf6
+ DFFSR
X_1315_ vdd \byte_controller.bit_controller.sSDA\ gnd _493_ wb_rst_i_bF$buf2 NOR2X1
X_1544_ gnd vdd _658_ _671_ _633_ _672_ 
+ _395_
+ OAI22X1
X_1124_ gnd vdd _255_ _259_ _260_ _362_ 
+ _258_
+ AOI22X1
X_875_ \byte_controller.bit_controller.clk_cnt\[14] _120_ vdd gnd INVX1
X_1353_ \byte_controller.bit_controller.clk_cnt\[4] _524_ vdd gnd INVX1
X_1409_ vdd gnd _442_ \byte_controller.bit_controller.cSDA\[0] _369_[1] AND2X2
XSFILL42320x28100 vdd gnd FILL
X_1582_ _704_ vdd gnd _466_ _705_ _706_ NAND3X1
X_1162_ gnd vdd _285_ _266_ _231_ _287_ OAI21X1
X_1638_ gnd vdd _750_ _751_ _752_ _714_ OAI21X1
X_1218_ gnd vdd _216_ arst_i_bF$buf8 vdd \byte_controller.c_state\[0] 
+ wb_clk_i_bF$buf4
+ DFFSR
X_969_ gnd vdd _185_ _183_ _30_ _186_ OAI21X1
X_1391_ vdd _554_ gnd _515_ _514_ NAND2X1
X_1447_ vdd _590_ gnd _591_ \byte_controller.bit_controller.cmd\[0] NOR2X1
X_1027_ gnd vdd _9_ vdd arst_i_bF$buf6 ctr[4] 
+ wb_clk_i_bF$buf7
+ DFFSR
XSFILL12400x10100 vdd gnd FILL
X_1676_ gnd vdd _781_ _783_ _423_ _782_ OAI21X1
X_1256_ vdd \byte_controller.bit_controller.cnt\[12] gnd _436_ \byte_controller.bit_controller.cnt\[13] NOR2X1
X_1485_ vdd _622_ gnd _628_ \byte_controller.bit_controller.c_state\[0] NOR2X1
X_1065_ \byte_controller.write\ _338_ vdd gnd INVX1
X_1294_ vdd _473_ gnd _472_ _468_ NAND2X1
XSFILL41360x6100 vdd gnd FILL
XSFILL42480x10100 vdd gnd FILL
X_1579_ vdd _702_ gnd _703_ _484_ NOR2X1
X_1159_ \byte_controller.dcnt\[0] _285_ vdd gnd INVX1
XSFILL42960x12100 vdd gnd FILL
X_1388_ gnd vdd _551_ _549_ _374_[9] _443_ AOI21X1
XSFILL11120x36100 vdd gnd FILL
X_1600_ vdd _721_ gnd _720_ _719_ NAND2X1
XFILL53040x16100 vdd gnd FILL
X_931_ \byte_controller.din\[4] _162_ vdd gnd INVX1
X_1197_ gnd vdd _244_ _314_ _319_ _318_ AOI21X1
XBUFX2_insert20 vdd gnd arst_i arst_i_bF$buf8 BUFX2
XBUFX2_insert21 vdd gnd arst_i arst_i_bF$buf7 BUFX2
XBUFX2_insert22 vdd gnd arst_i arst_i_bF$buf6 BUFX2
XBUFX2_insert23 vdd gnd arst_i arst_i_bF$buf5 BUFX2
XBUFX2_insert24 vdd gnd arst_i arst_i_bF$buf4 BUFX2
XBUFX2_insert25 vdd gnd arst_i arst_i_bF$buf3 BUFX2
XBUFX2_insert26 vdd gnd arst_i arst_i_bF$buf2 BUFX2
XBUFX2_insert27 vdd gnd arst_i arst_i_bF$buf1 BUFX2
XBUFX2_insert28 vdd gnd arst_i arst_i_bF$buf0 BUFX2
XSFILL42640x26100 vdd gnd FILL
X_1503_ _619_ vdd gnd _485_ _645_ _646_ NAND3X1
X_834_ tip _84_ vdd gnd INVX1
XSFILL26480x18100 vdd gnd FILL
X_1732_ gnd vdd _405_ vdd arst_i_bF$buf2 \byte_controller.bit_controller.c_state\[16] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_1312_ vdd _489_ gnd _490_ _450_ NOR2X1
XSFILL26320x8100 vdd gnd FILL
X_1541_ vdd _678_ gnd _677_ _455_ NAND2X1
X_1121_ vdd _257_ gnd \byte_controller.bit_controller.cmd_ack\ \byte_controller.c_state\[4] NAND2X1
X_872_ gnd vdd _72_ _116_ _115_ _70_ 
+ _117_
+ OAI22X1
X_928_ gnd vdd _159_ _154_ _15_ _160_ OAI21X1
X_1350_ vdd gnd \byte_controller.bit_controller.filter_cnt\[1] \byte_controller.bit_controller.filter_cnt\[0] _522_ AND2X2
X_1406_ vdd _566_ gnd \byte_controller.bit_controller.clk_cnt\[15] _521_ NAND2X1
X_1635_ gnd vdd _744_ _709_ _416_ _749_ OAI21X1
X_1215_ _312_ vdd gnd _313_ _334_ _335_ NAND3X1
X_966_ gnd vdd _181_ _183_ _29_ _184_ OAI21X1
XSFILL12560x100 vdd gnd FILL
X_1444_ gnd vdd _572_ _582_ _386_ _588_ OAI21X1
X_1024_ gnd vdd _6_ vdd arst_i_bF$buf10 ctr[1] 
+ wb_clk_i_bF$buf0
+ DFFSR
XSFILL42320x32100 vdd gnd FILL
XSFILL26640x6100 vdd gnd FILL
X_1673_ \byte_controller.bit_controller.cnt\[15] _781_ vdd gnd INVX1
X_1253_ vdd _432_ gnd _433_ \byte_controller.bit_controller.cnt\[8] NOR2X1
XSFILL26960x12100 vdd gnd FILL
XSFILL42800x34100 vdd gnd FILL
X_1729_ gnd vdd _402_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.c_state\[13] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_1309_ vdd _474_ gnd _487_ _486_ NOR2X1
X_1482_ vdd _625_ gnd _624_ _620_ NAND2X1
X_1062_ gnd vdd _44_ arst_i_bF$buf5 vdd \byte_controller.bit_controller.clk_cnt\[15] 
+ wb_clk_i_bF$buf5
+ DFFSR
X_1538_ gnd vdd _640_ _672_ _393_ _675_ OAI21X1
X_1118_ \byte_controller.c_state\[4] _255_ vdd gnd INVX1
X_869_ vdd _789_[5] gnd _108_ _114_ NAND2X1
X_1291_ \byte_controller.bit_controller.c_state\[5] _470_ vdd gnd INVX1
X_1347_ _519_ \byte_controller.bit_controller.filter_cnt\[7] vdd gnd _513_ OR2X2
XSFILL26640x26100 vdd gnd FILL
XFILL52880x28100 vdd gnd FILL
X_1576_ vdd _695_ gnd _701_ _785_ NOR2X1
X_1156_ gnd vdd _271_ _283_ _229_ _282_ OAI21X1
X_1385_ gnd vdd \byte_controller.bit_controller.filter_cnt\[8] _519_ _549_ \byte_controller.bit_controller.filter_cnt\[9] OAI21X1
X_1194_ vdd _234_ gnd _316_ _307_ NAND2X1
XSFILL42480x4100 vdd gnd FILL
XSFILL12880x4100 vdd gnd FILL
X_1479_ \byte_controller.bit_controller.c_state\[1] _622_ vdd gnd INVX1
X_1059_ gnd vdd _41_ arst_i_bF$buf9 vdd \byte_controller.bit_controller.clk_cnt\[12] 
+ wb_clk_i_bF$buf0
+ DFFSR
XFILL53040x20100 vdd gnd FILL
X_1288_ _445_ vdd gnd _458_ _446_ _467_ NAND3X1
X_1500_ gnd vdd _639_ _642_ _643_ _468_ OAI21X1
X_831_ \byte_controller.bit_controller.clk_cnt\[1] vdd gnd _56_ _68_ _81_ NAND3X1
X_1097_ _349_ _239_ vdd gnd INVX1
X_925_ gnd vdd _80_ _154_ _14_ _158_ OAI21X1
XSFILL12560x26100 vdd gnd FILL
X_1403_ gnd vdd _561_ _562_ _374_[12] _563_ AOI21X1
XSFILL43440x100 vdd gnd FILL
X_1632_ gnd vdd _427_ _431_ _747_ \byte_controller.bit_controller.cnt\[8] OAI21X1
X_1212_ gnd vdd _323_ _301_ _332_ _359_ AOI21X1
X_963_ vdd _182_ gnd _56_ _68_ NAND2X1
X_1441_ gnd vdd wb_rst_i_bF$buf1 \byte_controller.bit_controller.fSDA\[0] _587_ _582_ OAI21X1
X_1021_ gnd vdd _3_ vdd arst_i_bF$buf6 tip 
+ wb_clk_i_bF$buf9
+ DFFSR
X_828_ gnd vdd _62_ _77_ _76_ _64_ 
+ _78_
+ OAI22X1
X_1670_ gnd vdd \byte_controller.bit_controller.cnt\[14] _773_ _779_ _778_ AOI21X1
X_1250_ vdd \byte_controller.bit_controller.cnt\[6] gnd _430_ \byte_controller.bit_controller.cnt\[5] NOR2X1
X_1726_ gnd vdd _399_ vdd arst_i_bF$buf2 \byte_controller.bit_controller.c_state\[10] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_1306_ vdd _484_ gnd _485_ _482_ NOR2X1
X_1535_ _616_ vdd gnd _485_ _614_ _674_ NAND3X1
X_1115_ vdd _254_ gnd \byte_controller.c_state\[1] _345_ NAND2X1
X_866_ ctr[5] _112_ vdd gnd INVX1
X_1764_ vdd gnd _788_ wb_inta_o BUFX2
X_1344_ gnd vdd \byte_controller.bit_controller.clk_cnt\[2] _516_ _517_ _500_ OAI21X1
XSFILL27760x4100 vdd gnd FILL
X_1573_ _601_ vdd gnd _650_ _697_ _698_ NAND3X1
X_1153_ gnd vdd _271_ _281_ _228_ _280_ OAI21X1
X_1629_ \byte_controller.bit_controller.cnt\[8] _744_ vdd gnd INVX1
X_1209_ \byte_controller.c_state\[3] _329_ vdd gnd INVX1
XSFILL42320x26100 vdd gnd FILL
X_1382_ gnd vdd _544_ _546_ _547_ _516_ OAI21X1
XSFILL41040x6100 vdd gnd FILL
X_1438_ gnd vdd _577_ _582_ _383_ _585_ OAI21X1
X_1018_ vdd _4_ gnd _786_ wb_clk_i_bF$buf9 DFFPOSX1
X_1191_ _300_ vdd gnd _346_ _301_ _314_ NAND3X1
XSFILL42800x28100 vdd gnd FILL
X_1667_ gnd vdd _770_ _709_ _421_ _776_ OAI21X1
X_1247_ _425_ vdd gnd _424_ _426_ _427_ NAND3X1
X_998_ gnd vdd _204_ _199_ _40_ _205_ OAI21X1
XSFILL26160x18100 vdd gnd FILL
X_1476_ _618_ _619_ vdd gnd INVX1
X_1056_ gnd vdd _38_ arst_i_bF$buf10 vdd \byte_controller.bit_controller.clk_cnt\[9] 
+ wb_clk_i_bF$buf0
+ DFFSR
X_1285_ vdd _464_ gnd _454_ _463_ NAND2X1
XSFILL13680x18100 vdd gnd FILL
X_1094_ vdd _365_ gnd \byte_controller.start\ _340_ NAND2X1
X_1379_ vdd gnd \byte_controller.bit_controller.filter_cnt\[8] _513_ \byte_controller.bit_controller.filter_cnt\[7] _544_ NOR3X1
XSFILL42960x10100 vdd gnd FILL
X_922_ vdd _157_ gnd _156_ _154_ NAND2X1
X_1188_ gnd vdd _309_ _310_ _311_ _296_ OAI21X1
X_1400_ gnd vdd \byte_controller.bit_controller.filter_cnt\[11] _553_ _561_ \byte_controller.bit_controller.filter_cnt\[12] OAI21X1
XFILL53040x14100 vdd gnd FILL
XSFILL42160x22100 vdd gnd FILL
X_960_ gnd vdd _138_ _168_ _180_ _49_ OAI21X1
XSFILL12560x30100 vdd gnd FILL
XSFILL42640x24100 vdd gnd FILL
X_825_ vdd _789_[0] gnd _66_ _75_ NAND2X1
X_1723_ gnd vdd _396_ vdd arst_i_bF$buf1 \byte_controller.bit_controller.c_state\[7] 
+ wb_clk_i_bF$buf3
+ DFFSR
X_1303_ vdd gnd _482_ \byte_controller.bit_controller.clk_en\ INVX2
XSFILL26800x28100 vdd gnd FILL
X_1532_ gnd vdd _656_ _671_ _622_ _672_ 
+ _390_
+ OAI22X1
X_1112_ gnd vdd _342_ _251_ _252_ \byte_controller.c_state\[1] 
+ _345_
+ AOI22X1
X_863_ al _109_ vdd gnd INVX1
XSFILL27760x22100 vdd gnd FILL
X_919_ gnd vdd _138_ _57_ _154_ _49_ OAI21X1
X_1761_ vdd gnd _787_[5] wb_dat_o[5] BUFX2
X_1341_ vdd _513_ gnd _514_ \byte_controller.bit_controller.filter_cnt\[7] NOR2X1
X_1570_ gnd vdd _482_ _490_ _695_ _483_ OAI21X1
X_1150_ gnd vdd _271_ _279_ _227_ _278_ OAI21X1
X_1626_ vdd _742_ gnd _568_ _741_ NAND2X1
X_1206_ _312_ vdd gnd _313_ _326_ _327_ NAND3X1
X_957_ _177_ vdd gnd _170_ _165_ _178_ NAND3X1
X_1435_ gnd vdd wb_rst_i_bF$buf1 \byte_controller.bit_controller.fSCL\[0] _584_ _582_ OAI21X1
X_1015_ vdd _789_[5] gnd _787_[5] wb_clk_i_bF$buf9 DFFPOSX1
X_1664_ _773_ _774_ vdd gnd INVX1
X_1244_ \byte_controller.bit_controller.cnt\[3] _424_ vdd gnd INVX1
X_995_ gnd vdd _202_ _199_ _39_ _203_ OAI21X1
XSFILL42320x30100 vdd gnd FILL
X_1473_ _615_ _616_ vdd gnd INVX1
X_1053_ gnd vdd _35_ arst_i_bF$buf8 vdd \byte_controller.bit_controller.clk_cnt\[6] 
+ wb_clk_i_bF$buf4
+ DFFSR
XSFILL26960x10100 vdd gnd FILL
X_1529_ gnd vdd _648_ _670_ _389_ _647_ OAI21X1
X_1109_ _248_ _249_ vdd gnd INVX1
X_1282_ vdd _457_ gnd _461_ _460_ NOR2X1
X_1758_ vdd gnd _787_[2] wb_dat_o[2] BUFX2
X_1338_ vdd _511_ gnd _506_ _510_ NAND2X1
X_1091_ vdd gnd _362_ \byte_controller.bit_controller.cmd_ack\ INVX2
X_1567_ vdd _694_ gnd _605_ _455_ NAND2X1
X_1147_ gnd vdd _271_ _277_ _226_ _276_ OAI21X1
X_898_ wb_dat_i[1] _140_ vdd gnd INVX1
XSFILL43280x14100 vdd gnd FILL
XSFILL12720x28100 vdd gnd FILL
X_1376_ gnd vdd \byte_controller.bit_controller.filter_cnt\[6] _535_ _542_ \byte_controller.bit_controller.filter_cnt\[7] OAI21X1
XFILL52880x4100 vdd gnd FILL
X_1185_ gnd vdd _346_ _238_ _308_ _363_ AOI21X1
XSFILL12880x2100 vdd gnd FILL
X_1699_ gnd vdd _374_[11] vdd arst_i_bF$buf8 \byte_controller.bit_controller.filter_cnt\[11] 
+ wb_clk_i_bF$buf5
+ DFFSR
X_1279_ vdd gnd _458_ \byte_controller.bit_controller.c_state\[16] INVX4
X_822_ wb_adr_i[2] vdd gnd wb_adr_i[1] _63_ _73_ NAND3X1
X_1088_ vdd _360_ gnd _359_ _345_ NAND2X1
X_1720_ gnd vdd _393_ vdd arst_i_bF$buf3 \byte_controller.bit_controller.c_state\[4] 
+ wb_clk_i_bF$buf11
+ DFFSR
X_1300_ vdd gnd _478_ \byte_controller.bit_controller.c_state\[8] _479_ AND2X2
X_860_ \byte_controller.bit_controller.clk_cnt\[5] vdd gnd _56_ _68_ _106_ NAND3X1
X_916_ _139_ vdd gnd _11_ _152_ _122_ MUX2X1
XSFILL26800x32100 vdd gnd FILL
XSFILL42640x18100 vdd gnd FILL
X_1623_ vdd _740_ gnd \byte_controller.bit_controller.clk_cnt\[6] _370_ NAND2X1
X_1203_ gnd vdd _323_ _301_ _324_ _347_ AOI21X1
X_954_ _175_ vdd gnd _170_ _165_ _176_ NAND3X1
XSFILL12880x100 vdd gnd FILL
X_1432_ gnd vdd _520_ _519_ _582_ _442_ OAI21X1
X_1012_ vdd _789_[2] gnd _787_[2] wb_clk_i_bF$buf7 DFFPOSX1
X_819_ wb_adr_i[2] vdd gnd wb_adr_i[0] _61_ _70_ NAND3X1
X_1661_ \byte_controller.bit_controller.clk_cnt\[13] _771_ vdd gnd INVX1
X_1241_ gnd vdd _235_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.cmd\[1] 
+ wb_clk_i_bF$buf6
+ DFFSR
X_992_ gnd vdd _77_ _199_ _38_ _201_ OAI21X1
XSFILL43280x100 vdd gnd FILL
XSFILL43120x36100 vdd gnd FILL
X_1717_ gnd vdd _390_ vdd arst_i_bF$buf2 \byte_controller.bit_controller.c_state\[1] 
+ wb_clk_i_bF$buf11
+ DFFSR
X_1470_ _448_ vdd gnd _458_ _449_ _613_ NAND3X1
X_1050_ gnd vdd _32_ arst_i_bF$buf6 vdd \byte_controller.bit_controller.clk_cnt\[3] 
+ wb_clk_i_bF$buf5
+ DFFSR
XSFILL27760x16100 vdd gnd FILL
X_1526_ vdd _602_ gnd _668_ _667_ NOR2X1
X_1106_ gnd vdd _243_ _241_ _217_ _246_ OAI21X1
X_857_ gnd vdd ctr[4] _93_ _104_ \byte_controller.bit_controller.clk_cnt\[4] 
+ _94_
+ AOI22X1
X_1755_ vdd gnd _786_ wb_ack_o BUFX2
X_1335_ vdd \byte_controller.bit_controller.filter_cnt\[0] gnd _508_ \byte_controller.bit_controller.filter_cnt\[1] NOR2X1
X_1564_ vdd gnd _455_ _608_ _692_ AND2X2
X_1144_ gnd vdd _271_ _275_ _225_ _274_ OAI21X1
X_895_ vdd _137_ gnd _4_ _786_ NOR2X1
XSFILL27760x2100 vdd gnd FILL
X_1373_ vdd _540_ gnd _539_ _513_ NAND2X1
XSFILL28720x36100 vdd gnd FILL
X_1429_ _580_ \byte_controller.bit_controller.dSCL\ vdd gnd _567_ OR2X2
X_1009_ gnd vdd _59_ _139_ _45_ _211_ OAI21X1
XSFILL42320x24100 vdd gnd FILL
X_1182_ gnd vdd \byte_controller.c_state\[3] \byte_controller.c_state\[4] _305_ _351_ OAI21X1
X_1658_ gnd vdd \byte_controller.bit_controller.cnt\[12] _710_ _769_ \byte_controller.bit_controller.clk_cnt\[12] 
+ _370_
+ AOI22X1
X_1238_ gnd vdd _232_ vdd arst_i_bF$buf7 \byte_controller.dcnt\[1] 
+ wb_clk_i_bF$buf9
+ DFFSR
X_989_ gnd vdd wb_rst_i_bF$buf0 wb_dat_i[0] _200_ _199_ OAI21X1
XSFILL42800x26100 vdd gnd FILL
XFILL52880x30100 vdd gnd FILL
X_1467_ \byte_controller.bit_controller.c_state\[3] _610_ vdd gnd INVX1
X_1047_ gnd vdd _29_ arst_i_bF$buf8 vdd \byte_controller.bit_controller.clk_cnt\[0] 
+ wb_clk_i_bF$buf5
+ DFFSR
X_798_ \byte_controller.read\ _52_ vdd gnd INVX1
X_1696_ gnd vdd _374_[8] vdd arst_i_bF$buf3 \byte_controller.bit_controller.filter_cnt\[8] 
+ wb_clk_i_bF$buf2
+ DFFSR
X_1276_ vdd gnd _451_ _454_ _455_ AND2X2
X_1085_ vdd _356_ gnd _357_ \byte_controller.start\ NOR2X1
XSFILL41360x2100 vdd gnd FILL
X_913_ vdd _151_ gnd wb_dat_i[5] _49_ NAND2X1
X_1599_ gnd vdd \byte_controller.bit_controller.cnt\[1] \byte_controller.bit_controller.cnt\[0] _720_ \byte_controller.bit_controller.cnt\[2] OAI21X1
X_1179_ vdd gnd _300_ _301_ _302_ AND2X2
X_1620_ vdd _732_ gnd _737_ \byte_controller.bit_controller.cnt\[6] NOR2X1
X_1200_ _255_ vdd gnd _292_ _290_ _321_ NAND3X1
XFILL53040x12100 vdd gnd FILL
X_951_ _173_ vdd gnd _170_ _165_ _174_ NAND3X1
X_816_ \byte_controller.din\[0] _67_ vdd gnd INVX1
XSFILL42640x22100 vdd gnd FILL
X_1714_ gnd vdd _387_ vdd arst_i_bF$buf3 \byte_controller.bit_controller.cmd_stop\ 
+ wb_clk_i_bF$buf11
+ DFFSR
X_1523_ vdd _664_ gnd _665_ \byte_controller.bit_controller.cmd\[1] NOR2X1
X_1103_ vdd _244_ gnd \byte_controller.stop\ \byte_controller.c_state\[2] NAND2X1
X_854_ vdd _73_ gnd _101_ _53_ NOR2X1
X_1752_ vdd gnd _784_ scl_padoen_o BUFX2
X_1332_ \byte_controller.bit_controller.filter_cnt\[6] _505_ vdd gnd INVX1
X_1561_ vdd _684_ gnd _690_ \byte_controller.bit_controller.cmd\[3] NOR2X1
X_1141_ gnd vdd _271_ _273_ _224_ _272_ OAI21X1
X_892_ vdd _133_ gnd _136_ _135_ NOR2X1
X_1617_ gnd vdd _730_ _709_ _413_ _734_ OAI21X1
X_948_ _171_ vdd gnd _170_ _165_ _172_ NAND3X1
X_1370_ gnd vdd _535_ _536_ _374_[5] _537_ AOI21X1
X_1426_ gnd vdd _575_ _577_ _578_ _576_ OAI21X1
X_1006_ gnd vdd wb_rst_i_bF$buf5 wb_dat_i[7] _210_ _199_ OAI21X1
X_1655_ vdd _762_ gnd _766_ _765_ NOR2X1
X_1235_ gnd vdd _229_ vdd arst_i_bF$buf6 \byte_controller.dout\[6] 
+ wb_clk_i_bF$buf9
+ DFFSR
X_986_ gnd vdd wb_rst_i_bF$buf4 wb_dat_i[7] _198_ _183_ OAI21X1
X_1464_ _458_ vdd gnd \byte_controller.bit_controller.c_state\[13] _606_ _607_ NAND3X1
X_1044_ gnd vdd _26_ vdd arst_i_bF$buf8 \byte_controller.stop\ 
+ wb_clk_i_bF$buf7
+ DFFSR
X_795_ iack _50_ vdd gnd INVX1
X_1693_ gnd vdd _374_[5] vdd arst_i_bF$buf9 \byte_controller.bit_controller.filter_cnt\[5] 
+ wb_clk_i_bF$buf2
+ DFFSR
X_1273_ vdd \byte_controller.bit_controller.c_state\[11] gnd _452_ \byte_controller.bit_controller.c_state\[10] NOR2X1
X_1749_ gnd vdd _422_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.cnt\[14] 
+ wb_clk_i_bF$buf6
+ DFFSR
X_1329_ vdd \byte_controller.bit_controller.filter_cnt\[13] gnd _502_ \byte_controller.bit_controller.filter_cnt\[10] NOR2X1
X_1082_ vdd \byte_controller.write\ gnd _354_ \byte_controller.read\ NOR2X1
X_1558_ vdd _688_ gnd _600_ _599_ NAND2X1
X_1138_ gnd vdd _269_ _271_ _223_ _268_ OAI21X1
X_889_ gnd vdd _131_ _70_ _133_ _132_ OAI21X1
X_1367_ _512_ _535_ vdd gnd INVX1
XSFILL43280x12100 vdd gnd FILL
XSFILL12720x26100 vdd gnd FILL
X_910_ ctr[4] _149_ vdd gnd INVX1
XFILL52880x24100 vdd gnd FILL
X_1596_ gnd vdd _717_ _714_ _718_ \byte_controller.bit_controller.clk_cnt\[1] 
+ _370_
+ AOI22X1
X_1176_ vdd gnd _340_ _298_ _299_ AND2X2
X_813_ _63_ vdd gnd wb_adr_i[1] _56_ _64_ NAND3X1
X_1499_ vdd _469_ gnd _642_ _641_ NOR2X1
X_1079_ gnd vdd _351_ _350_ _352_ \byte_controller.c_state\[3] OAI21X1
X_1711_ gnd vdd _384_ arst_i_bF$buf1 vdd \byte_controller.bit_controller.fSDA\[0] 
+ wb_clk_i_bF$buf3
+ DFFSR
X_1520_ _662_ _661_ vdd gnd _657_ OR2X2
X_1100_ vdd _241_ gnd _355_ _342_ NAND2X1
X_851_ vdd _73_ gnd _99_ _98_ NOR2X1
XSFILL28080x24100 vdd gnd FILL
X_907_ ctr[3] _147_ vdd gnd INVX1
X_1614_ _732_ \byte_controller.bit_controller.cnt\[5] vdd gnd _727_ OR2X2
X_945_ gnd vdd _164_ _168_ _169_ _48_ 
+ _167_
+ AOI22X1
XSFILL13040x6100 vdd gnd FILL
X_1423_ \byte_controller.bit_controller.fSCL\[0] _575_ vdd gnd INVX1
X_1003_ gnd vdd _105_ _199_ _42_ _208_ OAI21X1
X_1652_ gnd vdd \byte_controller.bit_controller.cnt\[11] _710_ _764_ \byte_controller.bit_controller.clk_cnt\[11] 
+ _370_
+ AOI22X1
X_1232_ gnd vdd _226_ vdd arst_i_bF$buf0 \byte_controller.dout\[3] 
+ wb_clk_i_bF$buf8
+ DFFSR
X_983_ gnd vdd wb_rst_i_bF$buf3 wb_dat_i[6] _196_ _183_ OAI21X1
X_1708_ gnd vdd _381_ arst_i_bF$buf9 vdd \byte_controller.bit_controller.fSCL\[0] 
+ wb_clk_i_bF$buf1
+ DFFSR
X_1461_ _458_ vdd gnd \byte_controller.bit_controller.c_state\[14] _603_ _604_ NAND3X1
X_1041_ gnd vdd _23_ vdd arst_i_bF$buf10 cr[2] 
+ wb_clk_i_bF$buf0
+ DFFSR
X_792_ irq_flag _47_ vdd gnd INVX1
X_1517_ _639_ vdd gnd _488_ _487_ _659_ NAND3X1
X_848_ gnd vdd \byte_controller.bit_controller.clk_cnt\[3] _94_ _96_ \byte_controller.bit_controller.clk_cnt\[11] 
+ _87_
+ AOI22X1
X_1690_ gnd vdd _374_[2] vdd arst_i_bF$buf3 \byte_controller.bit_controller.filter_cnt\[2] 
+ wb_clk_i_bF$buf2
+ DFFSR
X_1270_ vdd \byte_controller.bit_controller.c_state\[4] gnd _449_ \byte_controller.bit_controller.c_state\[5] NOR2X1
XSFILL27760x14100 vdd gnd FILL
XSFILL13840x18100 vdd gnd FILL
X_1746_ gnd vdd _419_ vdd arst_i_bF$buf2 \byte_controller.bit_controller.cnt\[11] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_1326_ vdd _373_ gnd _378_ _499_ NOR2X1
X_1555_ gnd vdd _671_ _627_ _399_ _686_ OAI21X1
X_1135_ \byte_controller.ld\ vdd gnd _269_ \byte_controller.din\[0] \byte_controller.bit_controller.dout\ MUX2X1
X_886_ gnd vdd rxack _126_ _130_ _129_ AOI21X1
X_1364_ vdd _510_ gnd _533_ _506_ NOR2X1
XSFILL41040x16100 vdd gnd FILL
X_1593_ _426_ _715_ vdd gnd INVX1
X_1173_ \byte_controller.c_state\[1] vdd gnd _362_ _340_ _296_ NAND3X1
X_1649_ gnd vdd _433_ _434_ _761_ _760_ AOI21X1
X_1229_ gnd vdd _223_ vdd arst_i_bF$buf0 \byte_controller.dout\[0] 
+ wb_clk_i_bF$buf8
+ DFFSR
XSFILL42320x22100 vdd gnd FILL
XSFILL41040x2100 vdd gnd FILL
X_1458_ gnd vdd _596_ _600_ _601_ _599_ OAI21X1
X_1038_ gnd vdd _20_ vdd arst_i_bF$buf6 \byte_controller.din\[7] 
+ wb_clk_i_bF$buf9
+ DFFSR
XSFILL12720x30100 vdd gnd FILL
XSFILL42800x24100 vdd gnd FILL
X_1687_ gnd vdd _373_ arst_i_bF$buf1 vdd \byte_controller.bit_controller.dSDA\ 
+ wb_clk_i_bF$buf3
+ DFFSR
X_1267_ vdd \byte_controller.bit_controller.c_state\[1] gnd _446_ \byte_controller.bit_controller.c_state\[0] NOR2X1
X_810_ wb_adr_i[1] _61_ vdd gnd INVX1
X_1496_ vdd _632_ gnd _639_ _638_ NOR2X1
X_1076_ vdd gnd \byte_controller.dcnt\[0] \byte_controller.dcnt\[2] \byte_controller.dcnt\[1] _349_ NOR3X1
XSFILL27920x22100 vdd gnd FILL
X_904_ vdd _144_ gnd _145_ wb_rst_i_bF$buf0 NOR2X1
X_1399_ gnd vdd _559_ _557_ _374_[11] _560_ AOI21X1
X_1611_ gnd vdd _428_ _709_ _412_ _729_ OAI21X1
X_942_ gnd vdd _166_ _144_ _88_ _165_ 
+ _23_
+ OAI22X1
XCLKBUF1_insert10 wb_clk_i vdd gnd wb_clk_i_bF$buf7 CLKBUF1
XCLKBUF1_insert11 wb_clk_i vdd gnd wb_clk_i_bF$buf6 CLKBUF1
XCLKBUF1_insert12 wb_clk_i vdd gnd wb_clk_i_bF$buf5 CLKBUF1
XCLKBUF1_insert13 wb_clk_i vdd gnd wb_clk_i_bF$buf4 CLKBUF1
XCLKBUF1_insert14 wb_clk_i vdd gnd wb_clk_i_bF$buf3 CLKBUF1
XCLKBUF1_insert15 wb_clk_i vdd gnd wb_clk_i_bF$buf2 CLKBUF1
XCLKBUF1_insert16 wb_clk_i vdd gnd wb_clk_i_bF$buf1 CLKBUF1
XCLKBUF1_insert17 wb_clk_i vdd gnd wb_clk_i_bF$buf0 CLKBUF1
XSFILL28560x30100 vdd gnd FILL
X_1420_ gnd vdd _570_ _572_ _573_ _571_ OAI21X1
X_1000_ gnd vdd wb_rst_i_bF$buf4 wb_dat_i[4] _207_ _199_ OAI21X1
X_807_ vdd gnd _58_ _57_ INVX2
X_980_ gnd vdd wb_rst_i_bF$buf3 wb_dat_i[5] _194_ _183_ OAI21X1
X_1705_ gnd vdd _369_[1] vdd arst_i_bF$buf1 \byte_controller.bit_controller.cSDA\[1] 
+ wb_clk_i_bF$buf3
+ DFFSR
XSFILL42640x20100 vdd gnd FILL
X_1514_ _624_ vdd gnd _654_ _487_ _656_ NAND3X1
XSFILL42320x8100 vdd gnd FILL
X_845_ vdd gnd _68_ _56_ _94_ AND2X2
X_1743_ gnd vdd _416_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.cnt\[8] 
+ wb_clk_i_bF$buf6
+ DFFSR
X_1323_ vdd _498_ gnd _379_ wb_rst_i_bF$buf2 NOR2X1
XSFILL26480x12100 vdd gnd FILL
X_1552_ _684_ vdd gnd \byte_controller.bit_controller.cmd\[3] _485_ _685_ NAND3X1
X_1132_ vdd _266_ gnd _264_ _265_ NAND2X1
X_883_ \byte_controller.bit_controller.ena\ _127_ vdd gnd INVX1
X_1608_ _727_ \byte_controller.bit_controller.cnt\[4] vdd gnd _427_ OR2X2
XSFILL13840x22100 vdd gnd FILL
X_939_ _164_ vdd gnd \byte_controller.bit_controller.ena\ _126_ _166_ NAND3X1
X_1361_ gnd vdd _521_ _528_ _374_[3] _530_ AOI21X1
X_1417_ \byte_controller.bit_controller.fSDA\[0] _570_ vdd gnd INVX1
X_1590_ gnd vdd _707_ _710_ _408_ _712_ AOI21X1
X_1170_ vdd _294_ gnd _293_ _239_ NAND2X1
X_1646_ gnd vdd \byte_controller.bit_controller.cnt\[10] _710_ _759_ \byte_controller.bit_controller.clk_cnt\[10] 
+ _370_
+ AOI22X1
X_1226_ gnd vdd _215_ vdd arst_i_bF$buf7 \byte_controller.shift\ 
+ wb_clk_i_bF$buf9
+ DFFSR
X_977_ gnd vdd wb_rst_i_bF$buf4 wb_dat_i[4] _192_ _183_ OAI21X1
X_1455_ vdd _474_ gnd _598_ _597_ NOR2X1
X_1035_ gnd vdd _17_ vdd arst_i_bF$buf0 \byte_controller.din\[4] 
+ wb_clk_i_bF$buf7
+ DFFSR
X_1684_ gnd vdd _375_ arst_i_bF$buf1 vdd \byte_controller.bit_controller.sSCL\ 
+ wb_clk_i_bF$buf3
+ DFFSR
X_1264_ gnd vdd _441_ \byte_controller.bit_controller.dSCL\ _444_ _443_ AOI21X1
XSFILL26960x6100 vdd gnd FILL
X_1493_ vdd _636_ gnd _635_ _468_ NAND2X1
X_1073_ vdd gnd _346_ \byte_controller.c_state\[5] INVX2
X_1549_ vdd \byte_controller.bit_controller.cmd\[0] gnd _682_ \byte_controller.bit_controller.cmd\[1] NOR2X1
X_1129_ gnd vdd _263_ _262_ _222_ _253_ AOI21X1
X_1358_ \byte_controller.bit_controller.clk_cnt\[5] _528_ vdd gnd INVX1
X_901_ gnd vdd _76_ _139_ _6_ _142_ OAI21X1
X_1587_ vdd gnd _710_ _709_ INVX4
X_1167_ gnd vdd _288_ _289_ _232_ _291_ OAI21X1
XSFILL12720x24100 vdd gnd FILL
XSFILL42800x18100 vdd gnd FILL
X_1396_ \byte_controller.bit_controller.filter_cnt\[11] _558_ vdd gnd INVX1
XSFILL26320x34100 vdd gnd FILL
X_804_ vdd _55_ gnd _0_ wb_rst_i_bF$buf5 NOR2X1
XSFILL27920x16100 vdd gnd FILL
X_1702_ gnd vdd _368_[0] vdd arst_i_bF$buf10 \byte_controller.bit_controller.cSCL\[0] 
+ wb_clk_i_bF$buf1
+ DFFSR
X_1299_ \byte_controller.bit_controller.c_state\[9] _478_ vdd gnd INVX1
X_1511_ _649_ vdd gnd _480_ _652_ _653_ NAND3X1
X_842_ vdd gnd _91_ _70_ INVX2
XSFILL27120x28100 vdd gnd FILL
X_1740_ gnd vdd _413_ vdd arst_i_bF$buf5 \byte_controller.bit_controller.cnt\[5] 
+ wb_clk_i_bF$buf5
+ DFFSR
X_1320_ \byte_controller.bit_controller.sSDA\ _496_ vdd gnd INVX1
X_880_ vdd _124_ gnd _125_ _121_ NOR2X1
XSFILL28560x24100 vdd gnd FILL
XFILL53040x6100 vdd gnd FILL
X_1605_ gnd vdd _724_ _714_ _725_ \byte_controller.bit_controller.clk_cnt\[3] 
+ _370_
+ AOI22X1
X_936_ _154_ vdd gnd _20_ _153_ _131_ MUX2X1
X_1414_ gnd vdd \byte_controller.bit_controller.dscl_oen\ _440_ _569_ _568_ OAI21X1
XSFILL13040x4100 vdd gnd FILL
X_1643_ gnd vdd \byte_controller.bit_controller.cnt\[9] _746_ _756_ \byte_controller.bit_controller.cnt\[10] OAI21X1
X_1223_ gnd vdd _221_ vdd arst_i_bF$buf8 \byte_controller.c_state\[5] 
+ wb_clk_i_bF$buf4
+ DFFSR
X_974_ gnd vdd wb_rst_i_bF$buf4 wb_dat_i[3] _190_ _183_ OAI21X1
X_1452_ \byte_controller.bit_controller.c_state\[11] _595_ vdd gnd INVX1
X_1032_ gnd vdd _14_ vdd arst_i_bF$buf10 \byte_controller.din\[1] 
+ wb_clk_i_bF$buf1
+ DFFSR
X_1508_ _461_ vdd gnd _454_ _451_ _650_ NAND3X1
X_839_ cr[2] _88_ vdd gnd INVX1
X_1681_ gnd vdd _367_ vdd arst_i_bF$buf1 \byte_controller.bit_controller.busy\ 
+ wb_clk_i_bF$buf3
+ DFFSR
X_1261_ vdd _440_ gnd _441_ \byte_controller.bit_controller.sSCL\ NOR2X1
X_1737_ gnd vdd _410_ vdd arst_i_bF$buf5 \byte_controller.bit_controller.cnt\[2] 
+ wb_clk_i_bF$buf6
+ DFFSR
X_1317_ gnd vdd _492_ _490_ _366_ _494_ OAI21X1
X_1490_ \byte_controller.bit_controller.c_state\[6] _633_ vdd gnd INVX1
X_1070_ _339_ vdd gnd _337_ _342_ _343_ NAND3X1
X_1546_ vdd _680_ gnd \byte_controller.bit_controller.c_state\[8] _593_ NAND2X1
X_1126_ gnd vdd _261_ _256_ _213_ _253_ AOI21X1
X_877_ ien _122_ vdd gnd INVX1
XSFILL13680x8100 vdd gnd FILL
X_1355_ vdd _526_ gnd _525_ _509_ NAND2X1
X_1584_ \byte_controller.bit_controller.cnt\[0] _707_ vdd gnd INVX1
X_1164_ gnd vdd _270_ \byte_controller.dcnt\[0] _289_ _267_ AOI21X1
X_1393_ gnd vdd \byte_controller.bit_controller.clk_cnt\[12] _516_ _556_ _500_ OAI21X1
X_1449_ gnd vdd _482_ _491_ _387_ _592_ AOI21X1
X_1029_ gnd vdd _11_ vdd arst_i_bF$buf0 ien 
+ wb_clk_i_bF$buf7
+ DFFSR
XSFILL42320x20100 vdd gnd FILL
XSFILL41520x16100 vdd gnd FILL
X_1678_ vdd _380_ gnd \byte_controller.bit_controller.dout\ wb_clk_i_bF$buf2 DFFPOSX1
X_1258_ vdd _437_ gnd _438_ \byte_controller.bit_controller.cnt\[11] NOR2X1
X_801_ vdd gnd _49_ \byte_controller.ack_out\ _2_ AND2X2
X_1487_ vdd _630_ gnd _629_ _620_ NAND2X1
X_1067_ vdd wb_rst_i_bF$buf3 gnd _340_ \byte_controller.bit_controller.al\ NOR2X1
X_1296_ vdd _475_ gnd _458_ _452_ NAND2X1
XSFILL10960x36100 vdd gnd FILL
XFILL52880x16100 vdd gnd FILL
XSFILL13680x12100 vdd gnd FILL
XSFILL27120x32100 vdd gnd FILL
X_1602_ gnd vdd _425_ _709_ _410_ _722_ OAI21X1
X_933_ \byte_controller.din\[5] _163_ vdd gnd INVX1
X_1199_ vdd _235_ gnd _317_ _320_ NAND2X1
X_1411_ vdd gnd _442_ \byte_controller.bit_controller.cSCL\[0] _368_[1] AND2X2
X_1640_ vdd _754_ gnd \byte_controller.bit_controller.clk_cnt\[9] _370_ NAND2X1
X_1220_ gnd vdd _218_ vdd arst_i_bF$buf7 \byte_controller.c_state\[2] 
+ wb_clk_i_bF$buf4
+ DFFSR
X_971_ gnd vdd wb_rst_i_bF$buf2 wb_dat_i[2] _188_ _183_ OAI21X1
X_1505_ vdd _647_ gnd \byte_controller.bit_controller.c_state\[0] _593_ NAND2X1
XSFILL28080x16100 vdd gnd FILL
X_836_ vdd _82_ gnd _86_ _85_ NOR2X1
X_1734_ gnd vdd _407_ arst_i_bF$buf3 vdd _784_ 
+ wb_clk_i_bF$buf11
+ DFFSR
X_1314_ _442_ vdd gnd \byte_controller.bit_controller.sto_condition\ _491_ _492_ NAND3X1
XSFILL12720x6100 vdd gnd FILL
X_1543_ gnd vdd _646_ _679_ _470_ _672_ 
+ _394_
+ OAI22X1
X_1123_ vdd _259_ gnd \byte_controller.dout\[7] _238_ NAND2X1
X_874_ \byte_controller.stop\ _119_ vdd gnd INVX1
XSFILL43440x12100 vdd gnd FILL
X_1352_ gnd vdd _521_ _518_ _374_[1] _523_ AOI21X1
XSFILL12560x14100 vdd gnd FILL
XSFILL29040x36100 vdd gnd FILL
X_1408_ vdd gnd _442_ sda_pad_i _369_[0] AND2X2
X_1581_ gnd vdd _477_ _626_ _705_ _692_ AOI21X1
X_1161_ gnd vdd _285_ \byte_controller.ld\ _287_ _286_ OAI21X1
XSFILL26000x34100 vdd gnd FILL
X_1637_ vdd gnd _746_ \byte_controller.bit_controller.cnt\[9] _751_ AND2X2
X_1217_ vdd _237_ gnd _336_ _335_ NAND2X1
X_968_ gnd vdd wb_rst_i_bF$buf4 wb_dat_i[1] _186_ _183_ OAI21X1
X_1390_ _515_ vdd gnd _552_ _514_ _553_ NAND3X1
XSFILL13040x32100 vdd gnd FILL
X_1446_ vdd _590_ gnd \byte_controller.bit_controller.cmd\[1] _589_ NAND2X1
X_1026_ gnd vdd _8_ vdd arst_i_bF$buf0 ctr[3] 
+ wb_clk_i_bF$buf8
+ DFFSR
XSFILL13520x34100 vdd gnd FILL
X_1675_ vdd gnd _778_ _709_ _783_ AND2X2
X_1255_ vdd \byte_controller.bit_controller.cnt\[14] gnd _435_ \byte_controller.bit_controller.cnt\[15] NOR2X1
X_1484_ _476_ vdd gnd _626_ _451_ _627_ NAND3X1
X_1064_ \byte_controller.cmd_ack\ _337_ vdd gnd INVX1
X_1293_ vdd _469_ gnd _472_ _471_ NOR2X1
XSFILL28240x24100 vdd gnd FILL
X_1349_ vdd _519_ gnd _521_ _520_ NOR2X1
X_1578_ gnd vdd _671_ _625_ _702_ _695_ OAI21X1
X_1158_ gnd vdd _266_ _258_ _271_ _284_ 
+ _230_
+ OAI22X1
XSFILL11440x16100 vdd gnd FILL
X_1387_ gnd vdd \byte_controller.bit_controller.clk_cnt\[11] _503_ _551_ _550_ OAI21X1
X_930_ _154_ vdd gnd _16_ _148_ _161_ MUX2X1
X_1196_ gnd vdd _242_ _314_ _318_ _340_ OAI21X1
XBUFX2_insert18 vdd gnd arst_i arst_i_bF$buf10 BUFX2
XBUFX2_insert19 vdd gnd arst_i arst_i_bF$buf9 BUFX2
XSFILL27920x14100 vdd gnd FILL
X_1502_ vdd gnd _644_ _481_ _631_ _645_ NOR3X1
X_833_ cr[1] _83_ vdd gnd INVX1
X_1099_ gnd vdd _240_ _239_ _238_ _363_ 
+ _218_
+ OAI22X1
X_1731_ gnd vdd _404_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.c_state\[15] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_1311_ vdd _489_ gnd _488_ _487_ NAND2X1
X_1540_ vdd _602_ gnd _677_ _676_ NOR2X1
X_1120_ gnd vdd \byte_controller.bit_controller.cmd_ack\ \byte_controller.ack_in\ _256_ \byte_controller.c_state\[2] OAI21X1
X_871_ \byte_controller.bit_controller.busy\ _116_ vdd gnd INVX1
XSFILL28080x20100 vdd gnd FILL
X_927_ vdd _160_ gnd _145_ _154_ NAND2X1
XSFILL41200x16100 vdd gnd FILL
XFILL53040x4100 vdd gnd FILL
X_1405_ gnd vdd _564_ _553_ _565_ \byte_controller.bit_controller.filter_cnt\[13] OAI21X1
X_1634_ gnd vdd _748_ _714_ _749_ \byte_controller.bit_controller.clk_cnt\[8] 
+ _370_
+ AOI22X1
X_1214_ gnd vdd _331_ _332_ _334_ _333_ AOI21X1
X_965_ gnd vdd wb_rst_i_bF$buf4 wb_dat_i[0] _184_ _183_ OAI21X1
XSFILL13360x8100 vdd gnd FILL
XSFILL13040x2100 vdd gnd FILL
X_1443_ gnd vdd wb_rst_i_bF$buf1 \byte_controller.bit_controller.fSDA\[1] _588_ _582_ OAI21X1
X_1023_ gnd vdd _0_ vdd arst_i_bF$buf7 al 
+ wb_clk_i_bF$buf9
+ DFFSR
X_1672_ gnd vdd _780_ _779_ _422_ _777_ OAI21X1
X_1252_ _432_ _431_ vdd gnd _427_ OR2X2
X_1728_ gnd vdd _401_ vdd arst_i_bF$buf2 \byte_controller.bit_controller.c_state\[12] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_1308_ vdd _486_ gnd _452_ _453_ NAND2X1
XSFILL13360x12100 vdd gnd FILL
X_1481_ vdd _621_ gnd _624_ _623_ NOR2X1
X_1061_ gnd vdd _43_ arst_i_bF$buf5 vdd \byte_controller.bit_controller.clk_cnt\[14] 
+ wb_clk_i_bF$buf5
+ DFFSR
X_1537_ _611_ vdd gnd _485_ _614_ _675_ NAND3X1
X_1117_ gnd vdd _346_ _344_ _214_ _241_ OAI21X1
X_868_ vdd _113_ gnd _114_ _111_ NOR2X1
X_1290_ _448_ _469_ vdd gnd INVX1
X_1346_ \byte_controller.bit_controller.clk_cnt\[3] _518_ vdd gnd INVX1
X_1575_ gnd vdd \byte_controller.bit_controller.din\ _696_ _700_ _699_ AOI21X1
X_1155_ \byte_controller.ld\ vdd gnd _283_ \byte_controller.din\[6] \byte_controller.dout\[5] MUX2X1
XSFILL13040x26100 vdd gnd FILL
X_1384_ gnd vdd _547_ _548_ _374_[8] _443_ AOI21X1
X_1193_ _313_ vdd gnd _315_ _312_ _316_ NAND3X1
XSFILL28720x30100 vdd gnd FILL
X_1669_ gnd vdd \byte_controller.bit_controller.cnt\[14] _773_ _778_ _708_ OAI21X1
X_1249_ \byte_controller.bit_controller.cnt\[7] _429_ vdd gnd INVX1
XSFILL11440x20100 vdd gnd FILL
X_1478_ _445_ _621_ vdd gnd INVX1
X_1058_ gnd vdd _40_ arst_i_bF$buf6 vdd \byte_controller.bit_controller.clk_cnt\[11] 
+ wb_clk_i_bF$buf0
+ DFFSR
XSFILL42800x20100 vdd gnd FILL
X_1287_ gnd vdd _455_ _461_ _466_ _465_ 
+ _451_
+ AOI22X1
X_830_ \byte_controller.din\[1] _80_ vdd gnd INVX1
XSFILL12240x14100 vdd gnd FILL
XFILL53040x100 vdd gnd FILL
XSFILL42000x32100 vdd gnd FILL
X_1096_ vdd gnd _238_ \byte_controller.c_state\[2] INVX2
XSFILL26640x12100 vdd gnd FILL
X_924_ vdd _158_ gnd _141_ _154_ NAND2X1
X_1402_ gnd vdd \byte_controller.bit_controller.clk_cnt\[14] _516_ _563_ _500_ OAI21X1
XSFILL26320x26100 vdd gnd FILL
X_1631_ vdd _746_ gnd _744_ _745_ NAND2X1
X_1211_ gnd vdd \byte_controller.c_state\[4] _349_ _331_ _330_ OAI21X1
X_962_ \byte_controller.bit_controller.clk_cnt\[0] _181_ vdd gnd INVX1
X_1440_ gnd vdd _570_ _582_ _384_ _586_ OAI21X1
X_1020_ gnd vdd _2_ vdd arst_i_bF$buf8 rxack 
+ wb_clk_i_bF$buf7
+ DFFSR
X_827_ \byte_controller.bit_controller.clk_cnt\[9] _77_ vdd gnd INVX1
X_1725_ gnd vdd _398_ vdd arst_i_bF$buf2 \byte_controller.bit_controller.c_state\[9] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_1305_ vdd gnd _484_ _483_ INVX2
XSFILL14160x18100 vdd gnd FILL
XSFILL11120x16100 vdd gnd FILL
X_1534_ gnd vdd _671_ _655_ _391_ _673_ OAI21X1
X_1114_ _340_ _253_ vdd gnd INVX1
XSFILL42320x4100 vdd gnd FILL
X_865_ gnd vdd _72_ _109_ _110_ _57_ 
+ _111_
+ OAI22X1
XSFILL12720x4100 vdd gnd FILL
X_1763_ vdd gnd _787_[7] wb_dat_o[7] BUFX2
X_1343_ _515_ vdd gnd _504_ _514_ _516_ NAND3X1
X_1572_ gnd vdd _477_ _479_ _697_ _484_ AOI21X1
X_1152_ \byte_controller.ld\ vdd gnd _281_ \byte_controller.din\[5] \byte_controller.dout\[4] MUX2X1
X_1628_ gnd vdd _370_ _742_ _415_ _743_ OAI21X1
X_1208_ vdd _236_ gnd _328_ _327_ NAND2X1
X_959_ wb_dat_i[3] _179_ vdd gnd INVX1
XSFILL26160x8100 vdd gnd FILL
X_1381_ vdd _514_ gnd _546_ _545_ NOR2X1
X_1437_ gnd vdd wb_rst_i_bF$buf1 \byte_controller.bit_controller.fSCL\[1] _585_ _582_ OAI21X1
X_1017_ vdd _789_[7] gnd _787_[7] wb_clk_i_bF$buf7 DFFPOSX1
X_1190_ vdd gnd _313_ _306_ INVX2
XSFILL13040x30100 vdd gnd FILL
X_1666_ gnd vdd _774_ _775_ _776_ _772_ OAI21X1
X_1246_ vdd \byte_controller.bit_controller.cnt\[0] gnd _426_ \byte_controller.bit_controller.cnt\[1] NOR2X1
X_997_ gnd vdd wb_rst_i_bF$buf4 wb_dat_i[3] _205_ _199_ OAI21X1
X_1475_ _609_ vdd gnd _601_ _617_ _618_ NAND3X1
X_1055_ gnd vdd _37_ arst_i_bF$buf10 vdd \byte_controller.bit_controller.clk_cnt\[8] 
+ wb_clk_i_bF$buf0
+ DFFSR
X_1284_ vdd gnd _456_ _462_ _463_ AND2X2
X_1093_ vdd _364_ gnd \byte_controller.c_state\[0] _355_ NAND2X1
X_1569_ gnd vdd _678_ _671_ _458_ _672_ 
+ _405_
+ OAI22X1
X_1149_ \byte_controller.ld\ vdd gnd _279_ \byte_controller.din\[4] \byte_controller.dout\[3] MUX2X1
X_1378_ gnd vdd _543_ _542_ _374_[7] _443_ AOI21X1
X_921_ vdd _155_ gnd _156_ wb_rst_i_bF$buf0 NOR2X1
X_1187_ vdd _310_ gnd _300_ _301_ NAND2X1
XSFILL42800x14100 vdd gnd FILL
XSFILL27600x4100 vdd gnd FILL
X_824_ vdd _71_ gnd _75_ _74_ NOR2X1
X_1722_ gnd vdd _395_ vdd arst_i_bF$buf1 \byte_controller.bit_controller.c_state\[6] 
+ wb_clk_i_bF$buf3
+ DFFSR
X_1302_ _480_ vdd gnd _473_ _466_ _481_ NAND3X1
X_1531_ vdd gnd _672_ _593_ INVX4
X_1111_ gnd vdd \byte_controller.stop\ _250_ _251_ _337_ OAI21X1
X_862_ gnd vdd \byte_controller.din\[5] _91_ _108_ _107_ AOI21X1
X_918_ _139_ vdd gnd _12_ _153_ _127_ MUX2X1
X_1760_ vdd gnd _787_[4] wb_dat_o[4] BUFX2
X_1340_ vdd _513_ gnd _505_ _512_ NAND2X1
XSFILL14160x22100 vdd gnd FILL
XSFILL42480x34100 vdd gnd FILL
XSFILL11120x20100 vdd gnd FILL
XSFILL28560x20100 vdd gnd FILL
XFILL53040x2100 vdd gnd FILL
X_1625_ gnd vdd _429_ _737_ _741_ _432_ OAI21X1
X_1205_ gnd vdd _322_ _324_ _326_ _325_ AOI21X1
X_956_ vdd _153_ gnd _177_ _138_ NOR2X1
XSFILL42960x36100 vdd gnd FILL
X_1434_ gnd vdd _575_ _582_ _381_ _583_ OAI21X1
X_1014_ vdd _789_[4] gnd _787_[4] wb_clk_i_bF$buf8 DFFPOSX1
XSFILL42640x10100 vdd gnd FILL
X_1663_ _765_ vdd gnd _770_ _762_ _773_ NAND3X1
X_1243_ gnd vdd _237_ vdd arst_i_bF$buf8 \byte_controller.bit_controller.cmd\[3] 
+ wb_clk_i_bF$buf6
+ DFFSR
X_994_ gnd vdd wb_rst_i_bF$buf2 wb_dat_i[2] _203_ _199_ OAI21X1
X_1719_ gnd vdd _392_ vdd arst_i_bF$buf3 \byte_controller.bit_controller.c_state\[3] 
+ wb_clk_i_bF$buf11
+ DFFSR
X_1472_ vdd _615_ gnd \byte_controller.bit_controller.c_state\[2] _610_ NAND2X1
X_1052_ gnd vdd _34_ arst_i_bF$buf5 vdd \byte_controller.bit_controller.clk_cnt\[5] 
+ wb_clk_i_bF$buf4
+ DFFSR
X_1528_ _669_ vdd gnd _665_ _663_ _670_ NAND3X1
X_1108_ vdd _247_ gnd _248_ \byte_controller.stop\ NOR2X1
X_859_ \byte_controller.bit_controller.clk_cnt\[13] _105_ vdd gnd INVX1
X_1281_ _458_ vdd gnd \byte_controller.bit_controller.c_state\[12] _459_ _460_ NAND3X1
X_1757_ vdd gnd _787_[1] wb_dat_o[1] BUFX2
X_1337_ vdd _509_ gnd _510_ \byte_controller.bit_controller.filter_cnt\[3] NOR2X1
X_1090_ _360_ vdd gnd _358_ _361_ _220_ NAND3X1
XSFILL13840x12100 vdd gnd FILL
X_1566_ gnd vdd _666_ _672_ _403_ _693_ OAI21X1
X_1146_ \byte_controller.ld\ vdd gnd _277_ \byte_controller.din\[3] \byte_controller.dout\[2] MUX2X1
X_897_ gnd vdd _138_ _64_ _139_ _49_ OAI21X1
X_1375_ gnd vdd _521_ _538_ _374_[6] _541_ AOI21X1
XSFILL13040x24100 vdd gnd FILL
X_1184_ gnd vdd _306_ _304_ _307_ \byte_controller.bit_controller.cmd\[0] OAI21X1
XSFILL27440x22100 vdd gnd FILL
X_1469_ _446_ _612_ vdd gnd INVX1
X_1049_ gnd vdd _31_ arst_i_bF$buf9 vdd \byte_controller.bit_controller.clk_cnt\[2] 
+ wb_clk_i_bF$buf0
+ DFFSR
X_1698_ gnd vdd _374_[10] vdd arst_i_bF$buf5 \byte_controller.bit_controller.filter_cnt\[10] 
+ wb_clk_i_bF$buf5
+ DFFSR
X_1278_ _456_ _457_ vdd gnd INVX1
X_821_ _63_ vdd gnd wb_adr_i[2] _61_ _72_ NAND3X1
X_1087_ vdd _346_ gnd _359_ _356_ NOR2X1
XSFILL42000x30100 vdd gnd FILL
XSFILL26640x10100 vdd gnd FILL
XSFILL12720x14100 vdd gnd FILL
X_915_ vdd _152_ gnd wb_dat_i[6] _49_ NAND2X1
XSFILL29200x36100 vdd gnd FILL
X_1622_ vdd _739_ gnd \byte_controller.bit_controller.cnt\[6] _710_ NAND2X1
X_1202_ vdd gnd \byte_controller.c_state\[3] \byte_controller.c_state\[4] \byte_controller.c_state\[5] _323_ NOR3X1
XSFILL13200x32100 vdd gnd FILL
X_953_ vdd _152_ gnd _175_ _138_ NOR2X1
XSFILL12400x28100 vdd gnd FILL
X_1431_ gnd vdd _496_ _580_ _380_ _581_ OAI21X1
X_1011_ vdd _789_[1] gnd _787_[1] wb_clk_i_bF$buf8 DFFPOSX1
X_818_ \byte_controller.bit_controller.clk_cnt\[0] vdd gnd _56_ _68_ _69_ NAND3X1
X_1660_ \byte_controller.bit_controller.cnt\[13] _770_ vdd gnd INVX1
X_1240_ gnd vdd _234_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.cmd\[0] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_991_ gnd vdd wb_rst_i_bF$buf0 wb_dat_i[1] _201_ _199_ OAI21X1
X_1716_ gnd vdd _389_ vdd arst_i_bF$buf2 \byte_controller.bit_controller.c_state\[0] 
+ wb_clk_i_bF$buf10
+ DFFSR
X_1525_ vdd _667_ gnd \byte_controller.bit_controller.c_state\[15] _666_ NAND2X1
X_1105_ gnd vdd _245_ _345_ _246_ \byte_controller.c_state\[1] 
+ _351_
+ AOI22X1
X_856_ gnd vdd \byte_controller.din\[4] _91_ _103_ _58_ 
+ \byte_controller.dout\[4]
+ AOI22X1
XSFILL42480x28100 vdd gnd FILL
X_1754_ vdd gnd _785_ sda_padoen_o BUFX2
X_1334_ \byte_controller.bit_controller.filter_cnt\[2] _507_ vdd gnd INVX1
XSFILL42640x8100 vdd gnd FILL
XSFILL12720x2100 vdd gnd FILL
X_1563_ gnd vdd _691_ _683_ _402_ _689_ OAI21X1
X_1143_ \byte_controller.ld\ vdd gnd _275_ \byte_controller.din\[2] \byte_controller.dout\[1] MUX2X1
X_894_ vdd _137_ gnd wb_stb_i wb_cyc_i NAND2X1
X_1619_ _735_ _736_ vdd gnd INVX1
X_1372_ gnd vdd \byte_controller.bit_controller.filter_cnt\[5] _511_ _539_ \byte_controller.bit_controller.filter_cnt\[6] OAI21X1
XSFILL12560x10100 vdd gnd FILL
X_1428_ vdd _375_ gnd _442_ _579_ NAND2X1
X_1008_ vdd _211_ gnd _156_ _139_ NAND2X1
X_1181_ _297_ vdd gnd _296_ _303_ _304_ NAND3X1
X_1657_ gnd vdd _766_ _767_ _768_ _714_ OAI21X1
X_1237_ gnd vdd _231_ vdd arst_i_bF$buf7 \byte_controller.dcnt\[0] 
+ wb_clk_i_bF$buf9
+ DFFSR
X_988_ gnd vdd _138_ _62_ _199_ _49_ OAI21X1
X_1466_ gnd vdd _605_ _608_ _609_ _455_ OAI21X1
X_1046_ gnd vdd _28_ vdd arst_i_bF$buf7 \byte_controller.ack_in\ 
+ wb_clk_i_bF$buf7
+ DFFSR
X_797_ gnd vdd _47_ _48_ _1_ _51_ AOI21X1
X_1695_ gnd vdd _374_[7] vdd arst_i_bF$buf9 \byte_controller.bit_controller.filter_cnt\[7] 
+ wb_clk_i_bF$buf0
+ DFFSR
X_1275_ vdd gnd _452_ _453_ _454_ AND2X2
X_1084_ \byte_controller.read\ _356_ vdd gnd INVX1
XSFILL28240x20100 vdd gnd FILL
X_1369_ gnd vdd \byte_controller.bit_controller.clk_cnt\[7] _516_ _537_ _500_ OAI21X1
X_912_ _139_ vdd gnd _9_ _150_ _149_ MUX2X1
X_1598_ vdd _719_ gnd _425_ _426_ NAND2X1
X_1178_ vdd \byte_controller.c_state\[1] gnd _301_ \byte_controller.c_state\[2] NOR2X1
X_950_ vdd _151_ gnd _173_ _138_ NOR2X1
X_815_ gnd vdd \byte_controller.dout\[0] _58_ _66_ _65_ AOI21X1
XSFILL27600x2100 vdd gnd FILL
XSFILL27120x6100 vdd gnd FILL
X_1713_ gnd vdd _386_ arst_i_bF$buf9 vdd \byte_controller.bit_controller.fSDA\[2] 
+ wb_clk_i_bF$buf3
+ DFFSR
X_1522_ \byte_controller.bit_controller.cmd\[0] _664_ vdd gnd INVX1
X_1102_ _242_ _243_ vdd gnd INVX1
X_853_ _97_ vdd gnd _96_ _100_ _789_[3] NAND3X1
X_909_ _139_ vdd gnd _8_ _148_ _147_ MUX2X1
X_1751_ vdd gnd gnd scl_pad_o BUFX2
X_1331_ _503_ _504_ vdd gnd INVX1
X_1560_ vdd _689_ gnd \byte_controller.bit_controller.c_state\[13] _593_ NAND2X1
X_1140_ \byte_controller.ld\ vdd gnd _273_ \byte_controller.din\[1] \byte_controller.dout\[0] MUX2X1
XSFILL26320x18100 vdd gnd FILL
X_891_ gnd vdd _57_ _134_ _54_ _73_ 
+ _135_
+ OAI22X1
X_1616_ gnd vdd _733_ _714_ _734_ \byte_controller.bit_controller.clk_cnt\[5] 
+ _370_
+ AOI22X1
X_947_ vdd _150_ gnd _171_ _138_ NOR2X1
X_1425_ \byte_controller.bit_controller.fSCL\[2] _577_ vdd gnd INVX1
X_1005_ gnd vdd _120_ _199_ _43_ _209_ OAI21X1
XSFILL42960x34100 vdd gnd FILL
X_1654_ \byte_controller.bit_controller.cnt\[12] _765_ vdd gnd INVX1
X_1234_ gnd vdd _228_ vdd arst_i_bF$buf0 \byte_controller.dout\[5] 
+ wb_clk_i_bF$buf8
+ DFFSR
X_985_ \byte_controller.bit_controller.clk_cnt\[7] _197_ vdd gnd INVX1
XSFILL27600x100 vdd gnd FILL
X_1463_ \byte_controller.bit_controller.c_state\[12] _606_ vdd gnd INVX1
X_1043_ gnd vdd _25_ vdd arst_i_bF$buf7 \byte_controller.read\ 
+ wb_clk_i_bF$buf7
+ DFFSR
X_794_ vdd gnd _49_ wb_rst_i_bF$buf3 INVX4
X_1519_ _659_ vdd gnd _658_ _660_ _661_ NAND3X1
X_1692_ gnd vdd _374_[4] vdd arst_i_bF$buf3 \byte_controller.bit_controller.filter_cnt\[4] 
+ wb_clk_i_bF$buf11
+ DFFSR
X_1272_ vdd _450_ gnd _451_ _447_ NOR2X1
X_1748_ gnd vdd _421_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.cnt\[13] 
+ wb_clk_i_bF$buf6
+ DFFSR
X_1328_ vdd \byte_controller.bit_controller.filter_cnt\[12] gnd _501_ \byte_controller.bit_controller.filter_cnt\[11] NOR2X1
X_1081_ \byte_controller.stop\ _353_ vdd gnd INVX1
XSFILL26800x12100 vdd gnd FILL
X_1557_ gnd vdd _687_ _671_ _595_ _672_ 
+ _400_
+ OAI22X1
X_1137_ gnd vdd \byte_controller.shift\ \byte_controller.ld\ _271_ _270_ OAI21X1
X_888_ \byte_controller.bit_controller.clk_cnt\[7] vdd gnd _56_ _68_ _132_ NAND3X1
X_1366_ gnd vdd _521_ _531_ _374_[4] _534_ AOI21X1
X_1595_ vdd _717_ gnd _716_ _715_ NAND2X1
X_1175_ vdd \byte_controller.c_state\[5] gnd _298_ \byte_controller.c_state\[0] NOR2X1
X_1689_ gnd vdd _374_[1] vdd arst_i_bF$buf3 \byte_controller.bit_controller.filter_cnt\[1] 
+ wb_clk_i_bF$buf2
+ DFFSR
X_1269_ vdd \byte_controller.bit_controller.c_state\[7] gnd _448_ \byte_controller.bit_controller.c_state\[6] NOR2X1
X_812_ vdd gnd _63_ wb_adr_i[0] INVX2
X_1498_ vdd _641_ gnd \byte_controller.bit_controller.c_state\[5] _640_ NAND2X1
X_1078_ vdd gnd wb_rst_i_bF$buf3 \byte_controller.bit_controller.cmd_ack\ \byte_controller.bit_controller.al\ _351_ NOR3X1
X_1710_ gnd vdd _383_ arst_i_bF$buf9 vdd \byte_controller.bit_controller.fSCL\[2] 
+ wb_clk_i_bF$buf1
+ DFFSR
X_850_ \byte_controller.ack_in\ _98_ vdd gnd INVX1
XSFILL12240x10100 vdd gnd FILL
X_906_ gnd vdd _143_ _139_ _7_ _146_ OAI21X1
X_1613_ gnd vdd \byte_controller.bit_controller.cnt\[4] _427_ _731_ \byte_controller.bit_controller.cnt\[5] OAI21X1
X_944_ \byte_controller.bit_controller.ena\ vdd gnd wb_adr_i[2] _68_ _168_ NAND3X1
X_1422_ vdd _376_ gnd _442_ _574_ NAND2X1
X_1002_ gnd vdd wb_rst_i_bF$buf3 wb_dat_i[5] _208_ _199_ OAI21X1
X_809_ \byte_controller.bit_controller.clk_cnt\[8] _60_ vdd gnd INVX1
X_1651_ gnd vdd _761_ _762_ _763_ _714_ OAI21X1
X_1231_ gnd vdd _225_ vdd arst_i_bF$buf0 \byte_controller.dout\[2] 
+ wb_clk_i_bF$buf8
+ DFFSR
X_982_ \byte_controller.bit_controller.clk_cnt\[6] _195_ vdd gnd INVX1
X_1707_ gnd vdd _377_ vdd arst_i_bF$buf2 \byte_controller.bit_controller.slave_wait\ 
+ wb_clk_i_bF$buf2
+ DFFSR
X_1460_ \byte_controller.bit_controller.c_state\[15] _603_ vdd gnd INVX1
X_1040_ gnd vdd _22_ vdd arst_i_bF$buf6 cr[1] 
+ wb_clk_i_bF$buf0
+ DFFSR
X_791_ vdd _46_ gnd _5_ wb_rst_i_bF$buf0 NOR2X1
X_1516_ _642_ vdd gnd _488_ _487_ _658_ NAND3X1
X_847_ _92_ vdd gnd _95_ _90_ _789_[2] NAND3X1
X_1745_ gnd vdd _418_ vdd arst_i_bF$buf2 \byte_controller.bit_controller.cnt\[10] 
+ wb_clk_i_bF$buf11
+ DFFSR
X_1325_ vdd _499_ gnd \byte_controller.bit_controller.sSCL\ \byte_controller.bit_controller.dSDA\ NAND2X1
XSFILL42480x26100 vdd gnd FILL
X_1554_ vdd _686_ gnd \byte_controller.bit_controller.c_state\[10] _593_ NAND2X1
X_1134_ vdd _268_ gnd \byte_controller.dout\[0] _267_ NAND2X1
X_885_ gnd vdd _62_ _128_ _127_ _64_ 
+ _129_
+ OAI22X1
X_1363_ _511_ _532_ vdd gnd INVX1
X_1419_ \byte_controller.bit_controller.fSDA\[2] _572_ vdd gnd INVX1
X_1592_ vdd gnd _714_ _711_ INVX4
X_1172_ gnd vdd _292_ _266_ _233_ _295_ OAI21X1
X_1648_ \byte_controller.bit_controller.cnt\[11] _760_ vdd gnd INVX1
X_1228_ gnd vdd _222_ vdd arst_i_bF$buf5 \byte_controller.ack_out\ 
+ wb_clk_i_bF$buf4
+ DFFSR
X_979_ \byte_controller.bit_controller.clk_cnt\[5] _193_ vdd gnd INVX1
X_1457_ vdd _595_ gnd _600_ \byte_controller.bit_controller.c_state\[10] NOR2X1
X_1037_ gnd vdd _19_ vdd arst_i_bF$buf0 \byte_controller.din\[6] 
+ wb_clk_i_bF$buf8
+ DFFSR
X_1686_ gnd vdd _372_ arst_i_bF$buf9 vdd \byte_controller.bit_controller.dSCL\ 
+ wb_clk_i_bF$buf2
+ DFFSR
X_1266_ vdd \byte_controller.bit_controller.c_state\[3] gnd _445_ \byte_controller.bit_controller.c_state\[2] NOR2X1
X_1495_ vdd _638_ gnd \byte_controller.bit_controller.c_state\[6] _637_ NAND2X1
X_1075_ vdd _348_ gnd _347_ _345_ NAND2X1
XSFILL26000x18100 vdd gnd FILL
X_903_ wb_dat_i[2] _144_ vdd gnd INVX1
XSFILL14320x22100 vdd gnd FILL
X_1589_ gnd vdd _711_ _707_ \byte_controller.bit_controller.clk_cnt\[0] _708_ 
+ _712_
+ OAI22X1
X_1169_ gnd vdd \byte_controller.dcnt\[1] \byte_controller.dcnt\[0] _293_ \byte_controller.dcnt\[2] OAI21X1
XSFILL27440x14100 vdd gnd FILL
X_1398_ gnd vdd \byte_controller.bit_controller.clk_cnt\[13] _516_ _560_ _500_ OAI21X1
X_1610_ gnd vdd _728_ _714_ _729_ \byte_controller.bit_controller.clk_cnt\[4] 
+ _370_
+ AOI22X1
X_941_ gnd vdd _166_ _140_ _83_ _165_ 
+ _22_
+ OAI22X1
XSFILL42800x10100 vdd gnd FILL
X_806_ wb_adr_i[1] vdd gnd wb_adr_i[0] _56_ _57_ NAND3X1
XSFILL26960x28100 vdd gnd FILL
X_1704_ gnd vdd _369_[0] vdd arst_i_bF$buf1 \byte_controller.bit_controller.cSDA\[0] 
+ wb_clk_i_bF$buf3
+ DFFSR
X_1513_ _629_ vdd gnd _654_ _487_ _655_ NAND3X1
X_844_ _64_ _93_ vdd gnd INVX1
X_1742_ gnd vdd _415_ vdd arst_i_bF$buf5 \byte_controller.bit_controller.cnt\[7] 
+ wb_clk_i_bF$buf5
+ DFFSR
X_1322_ vdd _498_ gnd \byte_controller.bit_controller.sSCL\ _497_ NAND2X1
X_1551_ \byte_controller.bit_controller.cmd\[2] _684_ vdd gnd INVX1
X_1131_ vdd \byte_controller.ld\ gnd _265_ wb_rst_i_bF$buf5 NOR2X1
X_882_ _72_ _126_ vdd gnd INVX1
XSFILL13200x24100 vdd gnd FILL
X_1607_ gnd vdd \byte_controller.bit_controller.cnt\[3] _719_ _726_ \byte_controller.bit_controller.cnt\[4] OAI21X1
X_938_ gnd vdd _127_ _72_ _165_ _164_ OAI21X1
X_1360_ gnd vdd _510_ _529_ _530_ _500_ OAI21X1
X_1416_ vdd _372_ gnd _442_ _567_ NAND2X1
XSFILL27600x22100 vdd gnd FILL
X_1645_ gnd vdd _370_ _757_ _758_ _714_ OAI21X1
X_1225_ gnd vdd _213_ vdd arst_i_bF$buf8 \byte_controller.bit_controller.din\ 
+ wb_clk_i_bF$buf6
+ DFFSR
X_976_ \byte_controller.bit_controller.clk_cnt\[4] _191_ vdd gnd INVX1
X_1454_ vdd _597_ gnd _458_ _453_ NAND2X1
X_1034_ gnd vdd _16_ vdd arst_i_bF$buf10 \byte_controller.din\[3] 
+ wb_clk_i_bF$buf1
+ DFFSR
XFILL53040x36100 vdd gnd FILL
X_1683_ gnd vdd _379_ vdd arst_i_bF$buf1 \byte_controller.bit_controller.sto_condition\ 
+ wb_clk_i_bF$buf2
+ DFFSR
X_1263_ vdd _443_ gnd \byte_controller.bit_controller.ena\ _442_ NAND2X1
X_1739_ gnd vdd _412_ vdd arst_i_bF$buf4 \byte_controller.bit_controller.cnt\[4] 
+ wb_clk_i_bF$buf6
+ DFFSR
X_1319_ vdd _495_ gnd _367_ \byte_controller.bit_controller.sto_condition\ NOR2X1
X_1492_ vdd _632_ gnd _635_ _634_ NOR2X1
X_1072_ vdd gnd _345_ _344_ INVX2
XSFILL12880x28100 vdd gnd FILL
X_1548_ vdd _681_ gnd \byte_controller.bit_controller.c_state\[9] _593_ NAND2X1
X_1128_ gnd vdd _362_ _238_ _263_ \byte_controller.ack_out\ OAI21X1
X_879_ gnd vdd _122_ _64_ _124_ _123_ OAI21X1
XSFILL26800x10100 vdd gnd FILL
X_1357_ gnd vdd _521_ _524_ _374_[2] _527_ AOI21X1
X_900_ vdd _142_ gnd _141_ _139_ NAND2X1
X_1586_ vdd _709_ gnd \byte_controller.bit_controller.slave_wait\ _708_ NAND2X1
X_1166_ gnd vdd \byte_controller.ld\ _290_ _291_ _286_ OAI21X1
XCLKBUF1_insert6 wb_clk_i vdd gnd wb_clk_i_bF$buf11 CLKBUF1
XCLKBUF1_insert7 wb_clk_i vdd gnd wb_clk_i_bF$buf10 CLKBUF1
XCLKBUF1_insert8 wb_clk_i vdd gnd wb_clk_i_bF$buf9 CLKBUF1
XCLKBUF1_insert9 wb_clk_i vdd gnd wb_clk_i_bF$buf8 CLKBUF1
X_1395_ gnd vdd \byte_controller.bit_controller.filter_cnt\[10] _554_ _557_ \byte_controller.bit_controller.filter_cnt\[11] OAI21X1
XSFILL43120x14100 vdd gnd FILL
X_803_ gnd vdd _54_ al _55_ \byte_controller.bit_controller.al\ AOI21X1
X_1489_ _449_ _632_ vdd gnd INVX1
X_1069_ vdd gnd _342_ _341_ INVX2
X_1701_ gnd vdd _374_[13] vdd arst_i_bF$buf6 \byte_controller.bit_controller.filter_cnt\[13] 
+ wb_clk_i_bF$buf5
+ DFFSR
X_1298_ vdd gnd _451_ _476_ _477_ AND2X2
X_1510_ vdd gnd _651_ _650_ _652_ AND2X2
X_841_ gnd vdd \byte_controller.bit_controller.clk_cnt\[10] _87_ _90_ _89_ AOI21X1
XSFILL26960x32100 vdd gnd FILL
XSFILL12720x10100 vdd gnd FILL
X_1604_ vdd _724_ gnd _427_ _723_ NAND2X1
X_935_ _154_ vdd gnd _19_ _152_ _115_ MUX2X1
XSFILL26800x6100 vdd gnd FILL
XSFILL43280x36100 vdd gnd FILL
X_1413_ \byte_controller.bit_controller.slave_wait\ _568_ vdd gnd INVX1
X_1642_ _434_ _755_ vdd gnd INVX1
X_1222_ gnd vdd _220_ vdd arst_i_bF$buf7 \byte_controller.c_state\[4] 
+ wb_clk_i_bF$buf4
+ DFFSR
X_973_ \byte_controller.bit_controller.clk_cnt\[3] _189_ vdd gnd INVX1
XSFILL27920x100 vdd gnd FILL
X_1451_ vdd _594_ gnd \byte_controller.bit_controller.sda_chk\ _593_ NAND2X1
X_1031_ gnd vdd _13_ vdd arst_i_bF$buf10 \byte_controller.din\[0] 
+ wb_clk_i_bF$buf0
+ DFFSR
X_1507_ _472_ vdd gnd _488_ _487_ _649_ NAND3X1
X_838_ vdd gnd wb_adr_i[2] _63_ wb_adr_i[1] _87_ NOR3X1
X_1680_ gnd vdd _366_ vdd arst_i_bF$buf3 \byte_controller.bit_controller.al\ 
+ wb_clk_i_bF$buf11
+ DFFSR
X_1260_ _784_ _440_ vdd gnd INVX1
X_1736_ gnd vdd _409_ vdd arst_i_bF$buf5 \byte_controller.bit_controller.cnt\[1] 
+ wb_clk_i_bF$buf6
+ DFFSR
X_1316_ _785_ vdd gnd \byte_controller.bit_controller.sda_chk\ _493_ _494_ NAND3X1
XSFILL28880x36100 vdd gnd FILL
X_1545_ gnd vdd _659_ _671_ _637_ _672_ 
+ _396_
+ OAI22X1
X_1125_ gnd vdd \byte_controller.ack_in\ _257_ _261_ _260_ OAI21X1
X_876_ gnd vdd _62_ _120_ _119_ _73_ 
+ _121_
+ OAI22X1
XSFILL42480x24100 vdd gnd FILL
XSFILL25840x34100 vdd gnd FILL
XSFILL27600x16100 vdd gnd FILL
X_1354_ gnd vdd \byte_controller.bit_controller.filter_cnt\[1] \byte_controller.bit_controller.filter_cnt\[0] _525_ \byte_controller.bit_controller.filter_cnt\[2] OAI21X1
XSFILL42640x4100 vdd gnd FILL
XSFILL12880x32100 vdd gnd FILL
X_1583_ gnd vdd _706_ _703_ _407_ _440_ 
+ _702_
+ AOI22X1
X_1163_ \byte_controller.dcnt\[1] _288_ vdd gnd INVX1
X_1639_ vdd _753_ gnd \byte_controller.bit_controller.cnt\[9] _710_ NAND2X1
X_1219_ gnd vdd _217_ vdd arst_i_bF$buf5 \byte_controller.c_state\[1] 
+ wb_clk_i_bF$buf4
+ DFFSR
X_1392_ vdd _555_ gnd \byte_controller.bit_controller.filter_cnt\[10] _554_ NAND2X1
X_1448_ gnd vdd _482_ _591_ _592_ _442_ OAI21X1
X_1028_ gnd vdd _10_ vdd arst_i_bF$buf6 ctr[5] 
+ wb_clk_i_bF$buf7
+ DFFSR
XSFILL26480x8100 vdd gnd FILL

.ends
.end
