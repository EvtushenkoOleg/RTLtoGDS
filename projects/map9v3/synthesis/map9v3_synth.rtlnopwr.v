/* Verilog module written by vlog2Verilog (qflow) */

module map9v3(
    input [8:0] N,
    input clock,
    output [7:0] counter,
    output done,
    output [8:0] dp,
    input reset,
    output [7:0] sr,
    input start
);

wire vdd = 1'b1;
wire gnd = 1'b0;

wire [8:0] N ;
wire _60_ ;
wire _19_ ;
wire _57_ ;
wire _130_ ;
wire _95_ ;
wire _127_ ;
wire _16_ ;
wire _54_ ;
wire _92_ ;
wire _124_ ;
wire _89_ ;
wire _13_ ;
wire _51_ ;
wire clock ;
wire _7_ ;
wire _48_ ;
wire _121_ ;
wire _86_ ;
wire _118_ ;
wire _10_ ;
wire _4_ ;
wire _45_ ;
wire _83_ ;
wire _115_ ;
wire _1_ ;
wire _42_ ;
wire _80_ ;
wire _39_ ;
wire _112_ ;
wire _77_ ;
wire _109_ ;
wire _36_ ;
wire _74_ ;
wire _106_ ;
wire _33_ ;
wire _71_ ;
wire _103_ ;
wire _68_ ;
wire _30_ ;
wire _27_ ;
wire _100_ ;
wire _65_ ;
wire start ;
wire [7:0] _135_ ;
wire _24_ ;
wire _62_ ;
wire _59_ ;
wire [7:0] _132_ ;
wire _97_ ;
wire _129_ ;
wire _21_ ;
wire _18_ ;
wire _56_ ;
wire _94_ ;
wire _126_ ;
wire _15_ ;
wire _53_ ;
wire _91_ ;
wire _9_ ;
wire _123_ ;
wire _88_ ;
wire _12_ ;
wire _50_ ;
wire _6_ ;
wire _47_ ;
wire _120_ ;
wire _85_ ;
wire [7:0] sr ;
wire _117_ ;
wire [7:0] counter ;
wire _3_ ;
wire _44_ ;
wire _82_ ;
wire done ;
wire _114_ ;
wire _4__bF$buf0 ;
wire _4__bF$buf1 ;
wire _4__bF$buf2 ;
wire _4__bF$buf3 ;
wire _4__bF$buf4 ;
wire _79_ ;
wire _0_ ;
wire _41_ ;
wire _38_ ;
wire _111_ ;
wire _76_ ;
wire _108_ ;
wire _35_ ;
wire _73_ ;
wire _105_ ;
wire _32_ ;
wire _70_ ;
wire _29_ ;
wire _102_ ;
wire _67_ ;
wire [4:0] state ;
wire [8:0] dp ;
wire [1:0] startbuf ;
wire _26_ ;
wire _64_ ;
wire _87__bF$buf0 ;
wire _87__bF$buf1 ;
wire _87__bF$buf2 ;
wire _87__bF$buf3 ;
wire [8:0] _134_ ;
wire _99_ ;
wire _23_ ;
wire _61_ ;
wire _58_ ;
wire _131_ ;
wire _96_ ;
wire _128_ ;
wire _20_ ;
wire _17_ ;
wire _55_ ;
wire _93_ ;
wire _125_ ;
wire _14_ ;
wire _52_ ;
wire _90_ ;
wire _8_ ;
wire _49_ ;
wire _122_ ;
wire _87_ ;
wire _119_ ;
wire _11_ ;
wire _5_ ;
wire _46_ ;
wire _84_ ;
wire clock_bF$buf0 ;
wire clock_bF$buf1 ;
wire clock_bF$buf2 ;
wire clock_bF$buf3 ;
wire clock_bF$buf4 ;
wire _116_ ;
wire _2_ ;
wire _43_ ;
wire _81_ ;
wire _113_ ;
wire _78_ ;
wire _40_ ;
wire _37_ ;
wire _110_ ;
wire _75_ ;
wire _107_ ;
wire _34_ ;
wire _72_ ;
wire _104_ ;
wire _69_ ;
wire _31_ ;
wire _28_ ;
wire _101_ ;
wire _66_ ;
wire _25_ ;
wire _63_ ;
wire reset ;
wire _133_ ;
wire _98_ ;
wire _22_ ;

BUFX2 BUFX2_insert13 (
    .A(_87_),
    .Y(_87__bF$buf0)
);

BUFX2 BUFX2_insert12 (
    .A(_87_),
    .Y(_87__bF$buf1)
);

BUFX2 BUFX2_insert11 (
    .A(_87_),
    .Y(_87__bF$buf2)
);

BUFX2 BUFX2_insert10 (
    .A(_87_),
    .Y(_87__bF$buf3)
);

BUFX2 BUFX2_insert9 (
    .A(_4_),
    .Y(_4__bF$buf0)
);

BUFX2 BUFX2_insert8 (
    .A(_4_),
    .Y(_4__bF$buf1)
);

BUFX2 BUFX2_insert7 (
    .A(_4_),
    .Y(_4__bF$buf2)
);

BUFX2 BUFX2_insert6 (
    .A(_4_),
    .Y(_4__bF$buf3)
);

BUFX2 BUFX2_insert5 (
    .A(_4_),
    .Y(_4__bF$buf4)
);

CLKBUF1 CLKBUF1_insert4 (
    .A(clock),
    .Y(clock_bF$buf0)
);

CLKBUF1 CLKBUF1_insert3 (
    .A(clock),
    .Y(clock_bF$buf1)
);

CLKBUF1 CLKBUF1_insert2 (
    .A(clock),
    .Y(clock_bF$buf2)
);

CLKBUF1 CLKBUF1_insert1 (
    .A(clock),
    .Y(clock_bF$buf3)
);

CLKBUF1 CLKBUF1_insert0 (
    .A(clock),
    .Y(clock_bF$buf4)
);

OAI22X1 _136_ (
    .A(_95_),
    .B(_44_),
    .C(_93_),
    .D(_111_),
    .Y(_26_)
);

OAI22X1 _137_ (
    .A(_97_),
    .B(_44_),
    .C(_95_),
    .D(_111_),
    .Y(_27_)
);

OAI22X1 _138_ (
    .A(_99_),
    .B(_44_),
    .C(_97_),
    .D(_111_),
    .Y(_28_)
);

OAI22X1 _139_ (
    .A(_101_),
    .B(_44_),
    .C(_99_),
    .D(_111_),
    .Y(_29_)
);

OAI22X1 _140_ (
    .A(_103_),
    .B(_44_),
    .C(_101_),
    .D(_111_),
    .Y(_30_)
);

INVX8 _141_ (
    .A(reset),
    .Y(_4_)
);

INVX1 _142_ (
    .A(state[3]),
    .Y(_112_)
);

INVX4 _143_ (
    .A(state[0]),
    .Y(_113_)
);

NOR2X1 _144_ (
    .A(_132_[1]),
    .B(_132_[0]),
    .Y(_114_)
);

NOR2X1 _145_ (
    .A(_132_[3]),
    .B(_132_[2]),
    .Y(_115_)
);

NAND2X1 _146_ (
    .A(_114_),
    .B(_115_),
    .Y(_116_)
);

NOR2X1 _147_ (
    .A(_132_[6]),
    .B(_132_[7]),
    .Y(_117_)
);

NOR2X1 _148_ (
    .A(_132_[5]),
    .B(_132_[4]),
    .Y(_118_)
);

NAND2X1 _149_ (
    .A(_117_),
    .B(_118_),
    .Y(_119_)
);

NOR2X1 _150_ (
    .A(_116_),
    .B(_119_),
    .Y(_120_)
);

OAI21X1 _151_ (
    .A(_112_),
    .B(_120_),
    .C(_113_),
    .Y(_3_)
);

INVX1 _152_ (
    .A(state[4]),
    .Y(_121_)
);

INVX1 _153_ (
    .A(state[1]),
    .Y(_122_)
);

INVX1 _154_ (
    .A(startbuf[0]),
    .Y(_123_)
);

NOR2X1 _155_ (
    .A(startbuf[1]),
    .B(_123_),
    .Y(_124_)
);

OAI21X1 _156_ (
    .A(_122_),
    .B(_124_),
    .C(_121_),
    .Y(_2_)
);

AND2X2 _157_ (
    .A(_124_),
    .B(state[1]),
    .Y(_0_)
);

AND2X2 _158_ (
    .A(_120_),
    .B(state[3]),
    .Y(_1_)
);

NOR2X1 _159_ (
    .A(state[3]),
    .B(state[0]),
    .Y(_125_)
);

NAND2X1 _160_ (
    .A(_132_[0]),
    .B(_113_),
    .Y(_126_)
);

OAI21X1 _161_ (
    .A(_113_),
    .B(N[1]),
    .C(_126_),
    .Y(_127_)
);

NAND2X1 _162_ (
    .A(_132_[0]),
    .B(_125_),
    .Y(_128_)
);

OAI21X1 _163_ (
    .A(_125_),
    .B(_127_),
    .C(_128_),
    .Y(_5_)
);

OAI21X1 _164_ (
    .A(state[3]),
    .B(state[0]),
    .C(_126_),
    .Y(_129_)
);

NAND2X1 _165_ (
    .A(_132_[1]),
    .B(_129_),
    .Y(_130_)
);

INVX1 _166_ (
    .A(N[1]),
    .Y(_131_)
);

INVX1 _167_ (
    .A(N[2]),
    .Y(_31_)
);

NAND2X1 _168_ (
    .A(_131_),
    .B(_31_),
    .Y(_32_)
);

NAND2X1 _169_ (
    .A(N[1]),
    .B(N[2]),
    .Y(_33_)
);

AOI21X1 _170_ (
    .A(_32_),
    .B(_33_),
    .C(_113_),
    .Y(_34_)
);

AOI21X1 _171_ (
    .A(_113_),
    .B(_114_),
    .C(_34_),
    .Y(_35_)
);

OAI21X1 _172_ (
    .A(_125_),
    .B(_35_),
    .C(_130_),
    .Y(_6_)
);

NOR2X1 _173_ (
    .A(state[0]),
    .B(_114_),
    .Y(_36_)
);

OAI21X1 _174_ (
    .A(_125_),
    .B(_36_),
    .C(_132_[2]),
    .Y(_37_)
);

INVX1 _175_ (
    .A(_33_),
    .Y(_38_)
);

OAI21X1 _176_ (
    .A(N[3]),
    .B(_38_),
    .C(state[0]),
    .Y(_39_)
);

AOI21X1 _177_ (
    .A(N[3]),
    .B(_38_),
    .C(_39_),
    .Y(_40_)
);

INVX1 _178_ (
    .A(_132_[2]),
    .Y(_41_)
);

AND2X2 _179_ (
    .A(_114_),
    .B(_41_),
    .Y(_42_)
);

AOI21X1 _180_ (
    .A(_113_),
    .B(_42_),
    .C(_40_),
    .Y(_43_)
);

OAI21X1 _181_ (
    .A(_125_),
    .B(_43_),
    .C(_37_),
    .Y(_7_)
);

INVX4 _182_ (
    .A(_125_),
    .Y(_44_)
);

OAI21X1 _183_ (
    .A(state[0]),
    .B(_42_),
    .C(_44_),
    .Y(_45_)
);

NAND2X1 _184_ (
    .A(_132_[3]),
    .B(_45_),
    .Y(_46_)
);

INVX1 _185_ (
    .A(_116_),
    .Y(_47_)
);

OAI21X1 _186_ (
    .A(N[3]),
    .B(_38_),
    .C(N[4]),
    .Y(_48_)
);

NOR2X1 _187_ (
    .A(N[3]),
    .B(N[4]),
    .Y(_49_)
);

OAI21X1 _188_ (
    .A(_131_),
    .B(_31_),
    .C(_49_),
    .Y(_50_)
);

INVX1 _189_ (
    .A(_50_),
    .Y(_51_)
);

NOR2X1 _190_ (
    .A(_113_),
    .B(_51_),
    .Y(_52_)
);

AOI22X1 _191_ (
    .A(_113_),
    .B(_47_),
    .C(_48_),
    .D(_52_),
    .Y(_53_)
);

OAI21X1 _192_ (
    .A(_125_),
    .B(_53_),
    .C(_46_),
    .Y(_8_)
);

XNOR2X1 _193_ (
    .A(_50_),
    .B(N[5]),
    .Y(_54_)
);

INVX1 _194_ (
    .A(_132_[4]),
    .Y(_55_)
);

NOR2X1 _195_ (
    .A(_55_),
    .B(_47_),
    .Y(_56_)
);

NOR2X1 _196_ (
    .A(state[0]),
    .B(_112_),
    .Y(_57_)
);

OAI21X1 _197_ (
    .A(_132_[4]),
    .B(_116_),
    .C(_57_),
    .Y(_58_)
);

OAI22X1 _198_ (
    .A(_132_[4]),
    .B(_44_),
    .C(_58_),
    .D(_56_),
    .Y(_59_)
);

AOI21X1 _199_ (
    .A(_54_),
    .B(state[0]),
    .C(_59_),
    .Y(_9_)
);

OAI21X1 _200_ (
    .A(N[5]),
    .B(_50_),
    .C(N[6]),
    .Y(_60_)
);

NOR2X1 _201_ (
    .A(N[5]),
    .B(N[6]),
    .Y(_61_)
);

INVX1 _202_ (
    .A(_61_),
    .Y(_62_)
);

OAI21X1 _203_ (
    .A(_50_),
    .B(_62_),
    .C(_60_),
    .Y(_63_)
);

NAND3X1 _204_ (
    .A(_55_),
    .B(_114_),
    .C(_115_),
    .Y(_64_)
);

AND2X2 _205_ (
    .A(_64_),
    .B(_132_[5]),
    .Y(_65_)
);

OAI21X1 _206_ (
    .A(_132_[5]),
    .B(_64_),
    .C(_57_),
    .Y(_66_)
);

OAI22X1 _207_ (
    .A(_132_[5]),
    .B(_44_),
    .C(_65_),
    .D(_66_),
    .Y(_67_)
);

AOI21X1 _208_ (
    .A(_63_),
    .B(state[0]),
    .C(_67_),
    .Y(_10_)
);

NAND3X1 _209_ (
    .A(_33_),
    .B(_49_),
    .C(_61_),
    .Y(_68_)
);

XOR2X1 _210_ (
    .A(_68_),
    .B(N[7]),
    .Y(_69_)
);

NAND2X1 _211_ (
    .A(state[0]),
    .B(_69_),
    .Y(_70_)
);

NAND2X1 _212_ (
    .A(_132_[6]),
    .B(_125_),
    .Y(_71_)
);

NOR3X1 _213_ (
    .A(_132_[5]),
    .B(_132_[6]),
    .C(_64_),
    .Y(_72_)
);

OAI21X1 _214_ (
    .A(_132_[5]),
    .B(_64_),
    .C(_132_[6]),
    .Y(_73_)
);

INVX1 _215_ (
    .A(_73_),
    .Y(_74_)
);

OAI21X1 _216_ (
    .A(_72_),
    .B(_74_),
    .C(_57_),
    .Y(_75_)
);

NAND3X1 _217_ (
    .A(_70_),
    .B(_71_),
    .C(_75_),
    .Y(_11_)
);

INVX1 _218_ (
    .A(_132_[7]),
    .Y(_76_)
);

OAI21X1 _219_ (
    .A(N[7]),
    .B(_68_),
    .C(N[8]),
    .Y(_77_)
);

INVX1 _220_ (
    .A(N[8]),
    .Y(_78_)
);

NOR2X1 _221_ (
    .A(N[7]),
    .B(_68_),
    .Y(_79_)
);

NAND2X1 _222_ (
    .A(_78_),
    .B(_79_),
    .Y(_80_)
);

NAND3X1 _223_ (
    .A(state[0]),
    .B(_77_),
    .C(_80_),
    .Y(_81_)
);

NAND2X1 _224_ (
    .A(_132_[7]),
    .B(_113_),
    .Y(_82_)
);

OAI21X1 _225_ (
    .A(_82_),
    .B(_72_),
    .C(_44_),
    .Y(_83_)
);

AOI21X1 _226_ (
    .A(_113_),
    .B(_120_),
    .C(_83_),
    .Y(_84_)
);

AOI22X1 _227_ (
    .A(_76_),
    .B(_125_),
    .C(_81_),
    .D(_84_),
    .Y(_12_)
);

INVX1 _228_ (
    .A(_134_[0]),
    .Y(_85_)
);

INVX1 _229_ (
    .A(state[2]),
    .Y(_86_)
);

NOR2X1 _230_ (
    .A(_86_),
    .B(_44_),
    .Y(_87_)
);

NAND2X1 _231_ (
    .A(N[0]),
    .B(_87__bF$buf3),
    .Y(_88_)
);

OAI21X1 _232_ (
    .A(_85_),
    .B(_87__bF$buf2),
    .C(_88_),
    .Y(_13_)
);

INVX1 _233_ (
    .A(_135_[0]),
    .Y(_89_)
);

NOR2X1 _234_ (
    .A(_134_[1]),
    .B(_87__bF$buf1),
    .Y(_90_)
);

AOI21X1 _235_ (
    .A(_89_),
    .B(_87__bF$buf0),
    .C(_90_),
    .Y(_14_)
);

INVX1 _236_ (
    .A(_135_[1]),
    .Y(_91_)
);

NOR2X1 _237_ (
    .A(_134_[2]),
    .B(_87__bF$buf3),
    .Y(_92_)
);

AOI21X1 _238_ (
    .A(_91_),
    .B(_87__bF$buf2),
    .C(_92_),
    .Y(_15_)
);

INVX1 _239_ (
    .A(_135_[2]),
    .Y(_93_)
);

NOR2X1 _240_ (
    .A(_134_[3]),
    .B(_87__bF$buf1),
    .Y(_94_)
);

AOI21X1 _241_ (
    .A(_93_),
    .B(_87__bF$buf0),
    .C(_94_),
    .Y(_16_)
);

INVX1 _242_ (
    .A(_135_[3]),
    .Y(_95_)
);

NOR2X1 _243_ (
    .A(_134_[4]),
    .B(_87__bF$buf3),
    .Y(_96_)
);

AOI21X1 _244_ (
    .A(_95_),
    .B(_87__bF$buf2),
    .C(_96_),
    .Y(_17_)
);

INVX1 _245_ (
    .A(_135_[4]),
    .Y(_97_)
);

NOR2X1 _246_ (
    .A(_134_[5]),
    .B(_87__bF$buf1),
    .Y(_98_)
);

AOI21X1 _247_ (
    .A(_97_),
    .B(_87__bF$buf0),
    .C(_98_),
    .Y(_18_)
);

INVX1 _248_ (
    .A(_135_[5]),
    .Y(_99_)
);

NOR2X1 _249_ (
    .A(_134_[6]),
    .B(_87__bF$buf3),
    .Y(_100_)
);

AOI21X1 _250_ (
    .A(_99_),
    .B(_87__bF$buf2),
    .C(_100_),
    .Y(_19_)
);

INVX1 _251_ (
    .A(_135_[6]),
    .Y(_101_)
);

NOR2X1 _252_ (
    .A(_134_[7]),
    .B(_87__bF$buf1),
    .Y(_102_)
);

AOI21X1 _253_ (
    .A(_101_),
    .B(_87__bF$buf0),
    .C(_102_),
    .Y(_20_)
);

INVX1 _254_ (
    .A(_135_[7]),
    .Y(_103_)
);

NOR2X1 _255_ (
    .A(_134_[8]),
    .B(_87__bF$buf3),
    .Y(_104_)
);

AOI21X1 _256_ (
    .A(_103_),
    .B(_87__bF$buf2),
    .C(_104_),
    .Y(_21_)
);

NAND2X1 _257_ (
    .A(state[4]),
    .B(_86_),
    .Y(_105_)
);

NAND2X1 _258_ (
    .A(_133_),
    .B(_113_),
    .Y(_106_)
);

OAI21X1 _259_ (
    .A(_105_),
    .B(_44_),
    .C(_106_),
    .Y(_22_)
);

XNOR2X1 _260_ (
    .A(_135_[7]),
    .B(_135_[5]),
    .Y(_107_)
);

XOR2X1 _261_ (
    .A(_135_[4]),
    .B(_135_[3]),
    .Y(_108_)
);

AND2X2 _262_ (
    .A(_108_),
    .B(_107_),
    .Y(_109_)
);

OAI21X1 _263_ (
    .A(_107_),
    .B(_108_),
    .C(_57_),
    .Y(_110_)
);

OAI22X1 _264_ (
    .A(_89_),
    .B(_44_),
    .C(_109_),
    .D(_110_),
    .Y(_23_)
);

INVX4 _265_ (
    .A(_57_),
    .Y(_111_)
);

OAI22X1 _266_ (
    .A(_91_),
    .B(_44_),
    .C(_89_),
    .D(_111_),
    .Y(_24_)
);

OAI22X1 _267_ (
    .A(_93_),
    .B(_44_),
    .C(_91_),
    .D(_111_),
    .Y(_25_)
);

DFFSR _268_ (
    .CLK(clock_bF$buf4),
    .D(_0_),
    .Q(state[0]),
    .R(vdd),
    .S(_4__bF$buf4)
);

DFFSR _269_ (
    .CLK(clock_bF$buf3),
    .D(_2_),
    .Q(state[1]),
    .R(_4__bF$buf3),
    .S(vdd)
);

DFFSR _270_ (
    .CLK(clock_bF$buf2),
    .D(_1_),
    .Q(state[2]),
    .R(_4__bF$buf2),
    .S(vdd)
);

DFFSR _271_ (
    .CLK(clock_bF$buf1),
    .D(_3_),
    .Q(state[3]),
    .R(_4__bF$buf1),
    .S(vdd)
);

DFFSR _272_ (
    .CLK(clock_bF$buf0),
    .D(state[2]),
    .Q(state[4]),
    .R(_4__bF$buf0),
    .S(vdd)
);

DFFSR _273_ (
    .CLK(clock_bF$buf4),
    .D(start),
    .Q(startbuf[0]),
    .R(_4__bF$buf4),
    .S(vdd)
);

DFFSR _274_ (
    .CLK(clock_bF$buf3),
    .D(startbuf[0]),
    .Q(startbuf[1]),
    .R(_4__bF$buf3),
    .S(vdd)
);

DFFSR _275_ (
    .CLK(clock_bF$buf2),
    .D(_5_),
    .Q(_132_[0]),
    .R(_4__bF$buf2),
    .S(vdd)
);

DFFSR _276_ (
    .CLK(clock_bF$buf1),
    .D(_6_),
    .Q(_132_[1]),
    .R(_4__bF$buf1),
    .S(vdd)
);

DFFSR _277_ (
    .CLK(clock_bF$buf0),
    .D(_7_),
    .Q(_132_[2]),
    .R(_4__bF$buf0),
    .S(vdd)
);

DFFSR _278_ (
    .CLK(clock_bF$buf4),
    .D(_8_),
    .Q(_132_[3]),
    .R(_4__bF$buf4),
    .S(vdd)
);

DFFSR _279_ (
    .CLK(clock_bF$buf3),
    .D(_9_),
    .Q(_132_[4]),
    .R(_4__bF$buf3),
    .S(vdd)
);

DFFSR _280_ (
    .CLK(clock_bF$buf2),
    .D(_10_),
    .Q(_132_[5]),
    .R(_4__bF$buf2),
    .S(vdd)
);

DFFSR _281_ (
    .CLK(clock_bF$buf1),
    .D(_11_),
    .Q(_132_[6]),
    .R(_4__bF$buf1),
    .S(vdd)
);

DFFSR _282_ (
    .CLK(clock_bF$buf0),
    .D(_12_),
    .Q(_132_[7]),
    .R(_4__bF$buf0),
    .S(vdd)
);

DFFSR _283_ (
    .CLK(clock_bF$buf4),
    .D(_13_),
    .Q(_134_[0]),
    .R(_4__bF$buf4),
    .S(vdd)
);

DFFSR _284_ (
    .CLK(clock_bF$buf3),
    .D(_14_),
    .Q(_134_[1]),
    .R(_4__bF$buf3),
    .S(vdd)
);

DFFSR _285_ (
    .CLK(clock_bF$buf2),
    .D(_15_),
    .Q(_134_[2]),
    .R(_4__bF$buf2),
    .S(vdd)
);

DFFSR _286_ (
    .CLK(clock_bF$buf1),
    .D(_16_),
    .Q(_134_[3]),
    .R(_4__bF$buf1),
    .S(vdd)
);

DFFSR _287_ (
    .CLK(clock_bF$buf0),
    .D(_17_),
    .Q(_134_[4]),
    .R(_4__bF$buf0),
    .S(vdd)
);

DFFSR _288_ (
    .CLK(clock_bF$buf4),
    .D(_18_),
    .Q(_134_[5]),
    .R(_4__bF$buf4),
    .S(vdd)
);

DFFSR _289_ (
    .CLK(clock_bF$buf3),
    .D(_19_),
    .Q(_134_[6]),
    .R(_4__bF$buf3),
    .S(vdd)
);

DFFSR _290_ (
    .CLK(clock_bF$buf2),
    .D(_20_),
    .Q(_134_[7]),
    .R(_4__bF$buf2),
    .S(vdd)
);

DFFSR _291_ (
    .CLK(clock_bF$buf1),
    .D(_21_),
    .Q(_134_[8]),
    .R(_4__bF$buf1),
    .S(vdd)
);

DFFSR _292_ (
    .CLK(clock_bF$buf0),
    .D(_22_),
    .Q(_133_),
    .R(_4__bF$buf0),
    .S(vdd)
);

DFFSR _293_ (
    .CLK(clock_bF$buf4),
    .D(_23_),
    .Q(_135_[0]),
    .R(_4__bF$buf4),
    .S(vdd)
);

DFFSR _294_ (
    .CLK(clock_bF$buf3),
    .D(_24_),
    .Q(_135_[1]),
    .R(_4__bF$buf3),
    .S(vdd)
);

DFFSR _295_ (
    .CLK(clock_bF$buf2),
    .D(_25_),
    .Q(_135_[2]),
    .R(_4__bF$buf2),
    .S(vdd)
);

DFFSR _296_ (
    .CLK(clock_bF$buf1),
    .D(_26_),
    .Q(_135_[3]),
    .R(_4__bF$buf1),
    .S(vdd)
);

DFFSR _297_ (
    .CLK(clock_bF$buf0),
    .D(_27_),
    .Q(_135_[4]),
    .R(_4__bF$buf0),
    .S(vdd)
);

DFFSR _298_ (
    .CLK(clock_bF$buf4),
    .D(_28_),
    .Q(_135_[5]),
    .R(_4__bF$buf4),
    .S(vdd)
);

DFFSR _299_ (
    .CLK(clock_bF$buf3),
    .D(_29_),
    .Q(_135_[6]),
    .R(_4__bF$buf3),
    .S(vdd)
);

DFFSR _300_ (
    .CLK(clock_bF$buf2),
    .D(_30_),
    .Q(_135_[7]),
    .R(_4__bF$buf2),
    .S(vdd)
);

BUFX2 _301_ (
    .A(_132_[0]),
    .Y(counter[0])
);

BUFX2 _302_ (
    .A(_132_[1]),
    .Y(counter[1])
);

BUFX2 _303_ (
    .A(_132_[2]),
    .Y(counter[2])
);

BUFX2 _304_ (
    .A(_132_[3]),
    .Y(counter[3])
);

BUFX2 _305_ (
    .A(_132_[4]),
    .Y(counter[4])
);

BUFX2 _306_ (
    .A(_132_[5]),
    .Y(counter[5])
);

BUFX2 _307_ (
    .A(_132_[6]),
    .Y(counter[6])
);

BUFX2 _308_ (
    .A(_132_[7]),
    .Y(counter[7])
);

BUFX2 _309_ (
    .A(_133_),
    .Y(done)
);

BUFX2 _310_ (
    .A(_134_[0]),
    .Y(dp[0])
);

BUFX2 _311_ (
    .A(_134_[1]),
    .Y(dp[1])
);

BUFX2 _312_ (
    .A(_134_[2]),
    .Y(dp[2])
);

BUFX2 _313_ (
    .A(_134_[3]),
    .Y(dp[3])
);

BUFX2 _314_ (
    .A(_134_[4]),
    .Y(dp[4])
);

BUFX2 _315_ (
    .A(_134_[5]),
    .Y(dp[5])
);

BUFX2 _316_ (
    .A(_134_[6]),
    .Y(dp[6])
);

BUFX2 _317_ (
    .A(_134_[7]),
    .Y(dp[7])
);

BUFX2 _318_ (
    .A(_134_[8]),
    .Y(dp[8])
);

BUFX2 _319_ (
    .A(_135_[0]),
    .Y(sr[0])
);

BUFX2 _320_ (
    .A(_135_[1]),
    .Y(sr[1])
);

BUFX2 _321_ (
    .A(_135_[2]),
    .Y(sr[2])
);

BUFX2 _322_ (
    .A(_135_[3]),
    .Y(sr[3])
);

BUFX2 _323_ (
    .A(_135_[4]),
    .Y(sr[4])
);

BUFX2 _324_ (
    .A(_135_[5]),
    .Y(sr[5])
);

BUFX2 _325_ (
    .A(_135_[6]),
    .Y(sr[6])
);

BUFX2 _326_ (
    .A(_135_[7]),
    .Y(sr[7])
);

endmodule
