/* Verilog module written by vlog2Verilog (qflow) */
/* With explicit power connections */

module map9v3(
    inout vdd,
    inout gnd,
    input [8:0] N,
    input clock,
    output [7:0] counter,
    output done,
    output [8:0] dp,
    input reset,
    output [7:0] sr,
    input start
);

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

FILL SFILL7920x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _168_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_131_),
    .B(_31_),
    .Y(_32_)
);

FILL SFILL6320x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL6000x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL5680x100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _321_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[2]),
    .Y(sr[2])
);

FILL SFILL5200x100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _224_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[7]),
    .B(_113_),
    .Y(_82_)
);

AND2X2 _262_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_108_),
    .B(_107_),
    .Y(_109_)
);

BUFX2 _318_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[8]),
    .Y(dp[8])
);

FILL FILL23760x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _165_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[1]),
    .B(_129_),
    .Y(_130_)
);

FILL SFILL6640x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18960x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _259_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_105_),
    .B(_44_),
    .C(_106_),
    .Y(_22_)
);

DFFSR _297_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_135_[4]),
    .CLK(clock_bF$buf0),
    .R(_4__bF$buf3),
    .S(vdd),
    .D(_27_)
);

FILL SFILL8080x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _221_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[7]),
    .B(_68_),
    .Y(_79_)
);

BUFX2 _315_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[5]),
    .Y(dp[5])
);

NAND2X1 _162_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[0]),
    .B(_125_),
    .Y(_128_)
);

INVX1 _218_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[7]),
    .Y(_76_)
);

AOI21X1 _256_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_103_),
    .B(_87__bF$buf2),
    .C(_104_),
    .Y(_21_)
);

DFFSR _294_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_135_[1]),
    .CLK(clock_bF$buf0),
    .R(_4__bF$buf3),
    .S(vdd),
    .D(_24_)
);

NOR2X1 _159_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[3]),
    .B(state[0]),
    .Y(_125_)
);

OAI21X1 _197_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[4]),
    .B(_116_),
    .C(_57_),
    .Y(_58_)
);

FILL SFILL6320x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _312_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[2]),
    .Y(dp[2])
);

FILL SFILL6320x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18800x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18320x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _215_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_73_),
    .Y(_74_)
);

AOI21X1 _253_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_101_),
    .B(_87__bF$buf3),
    .C(_102_),
    .Y(_20_)
);

BUFX2 _309_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_133_),
    .Y(done)
);

DFFSR _291_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_134_[8]),
    .CLK(clock_bF$buf0),
    .R(_4__bF$buf3),
    .S(vdd),
    .D(_21_)
);

OAI21X1 _156_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_122_),
    .B(_124_),
    .C(_121_),
    .Y(_2_)
);

FILL SFILL18480x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL6640x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _194_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[4]),
    .Y(_55_)
);

FILL SFILL18960x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _288_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_134_[5]),
    .CLK(clock_bF$buf2),
    .R(_4__bF$buf3),
    .S(vdd),
    .D(_18_)
);

NAND2X1 _212_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[6]),
    .B(_125_),
    .Y(_71_)
);

AOI21X1 _250_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_99_),
    .B(_87__bF$buf0),
    .C(_100_),
    .Y(_19_)
);

BUFX2 _306_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[5]),
    .Y(counter[5])
);

INVX1 _153_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[1]),
    .Y(_122_)
);

NAND3X1 _209_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_33_),
    .B(_49_),
    .C(_61_),
    .Y(_68_)
);

AOI22X1 _191_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_113_),
    .B(_47_),
    .C(_48_),
    .D(_52_),
    .Y(_53_)
);

AOI21X1 _247_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_97_),
    .B(_87__bF$buf2),
    .C(_98_),
    .Y(_18_)
);

FILL SFILL8400x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _285_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_134_[2]),
    .CLK(clock_bF$buf1),
    .R(_4__bF$buf1),
    .S(vdd),
    .D(_15_)
);

FILL SFILL19600x100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL5680x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _188_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_131_),
    .B(_31_),
    .C(_49_),
    .Y(_50_)
);

BUFX2 _303_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[2]),
    .Y(counter[2])
);

NOR2X1 _150_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_116_),
    .B(_119_),
    .Y(_120_)
);

FILL SFILL6800x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _206_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[5]),
    .B(_64_),
    .C(_57_),
    .Y(_66_)
);

FILL SFILL18800x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18320x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _244_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_95_),
    .B(_87__bF$buf2),
    .C(_96_),
    .Y(_17_)
);

DFFSR _282_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_132_[7]),
    .CLK(clock_bF$buf4),
    .R(_4__bF$buf4),
    .S(vdd),
    .D(_12_)
);

NOR2X1 _147_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[6]),
    .B(_132_[7]),
    .Y(_117_)
);

FILL SFILL8240x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _185_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_116_),
    .Y(_47_)
);

FILL SFILL18480x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _279_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_132_[4]),
    .CLK(clock_bF$buf2),
    .R(_4__bF$buf2),
    .S(vdd),
    .D(_9_)
);

DFFSR _300_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_135_[7]),
    .CLK(clock_bF$buf0),
    .R(_4__bF$buf3),
    .S(vdd),
    .D(_30_)
);

OAI21X1 _203_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_50_),
    .B(_62_),
    .C(_60_),
    .Y(_63_)
);

FILL SFILL5360x100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _241_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_93_),
    .B(_87__bF$buf1),
    .C(_94_),
    .Y(_16_)
);

NOR2X1 _144_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[1]),
    .B(_132_[0]),
    .Y(_114_)
);

INVX4 _182_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_125_),
    .Y(_44_)
);

FILL SFILL19280x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _238_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_91_),
    .B(_87__bF$buf1),
    .C(_92_),
    .Y(_15_)
);

DFFSR _276_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_132_[1]),
    .CLK(clock_bF$buf2),
    .R(_4__bF$buf2),
    .S(vdd),
    .D(_6_)
);

AND2X2 _179_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_114_),
    .B(_41_),
    .Y(_42_)
);

OAI21X1 _200_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[5]),
    .B(_50_),
    .C(N[6]),
    .Y(_60_)
);

INVX8 _141_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(reset),
    .Y(_4_)
);

FILL SFILL18640x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL6800x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _235_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_89_),
    .B(_87__bF$buf3),
    .C(_90_),
    .Y(_14_)
);

DFFSR _273_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(startbuf[0]),
    .CLK(clock_bF$buf1),
    .R(_4__bF$buf1),
    .S(vdd),
    .D(start)
);

OAI22X1 _138_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_99_),
    .B(_44_),
    .C(_97_),
    .D(_111_),
    .Y(_28_)
);

OAI21X1 _176_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[3]),
    .B(_38_),
    .C(state[0]),
    .Y(_39_)
);

BUFX2 BUFX2_insert5 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .Y(_4__bF$buf4)
);

BUFX2 BUFX2_insert6 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .Y(_4__bF$buf3)
);

BUFX2 BUFX2_insert7 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .Y(_4__bF$buf2)
);

BUFX2 BUFX2_insert8 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .Y(_4__bF$buf1)
);

BUFX2 BUFX2_insert9 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .Y(_4__bF$buf0)
);

FILL FILL23760x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _232_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_85_),
    .B(_87__bF$buf0),
    .C(_88_),
    .Y(_13_)
);

DFFSR _270_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(state[2]),
    .CLK(clock_bF$buf3),
    .R(_4__bF$buf0),
    .S(vdd),
    .D(_1_)
);

BUFX2 _326_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[7]),
    .Y(sr[7])
);

FILL SFILL6000x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _173_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[0]),
    .B(_114_),
    .Y(_36_)
);

INVX1 _229_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[2]),
    .Y(_86_)
);

FILL SFILL19280x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _267_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_93_),
    .B(_44_),
    .C(_91_),
    .D(_111_),
    .Y(_25_)
);

BUFX2 _323_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[4]),
    .Y(sr[4])
);

FILL SFILL8400x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _170_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_32_),
    .B(_33_),
    .C(_113_),
    .Y(_34_)
);

FILL SFILL18640x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _226_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_113_),
    .B(_120_),
    .C(_83_),
    .Y(_84_)
);

FILL FILL23920x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18640x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18320x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _264_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_89_),
    .B(_44_),
    .C(_109_),
    .D(_110_),
    .Y(_23_)
);

INVX1 _167_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[2]),
    .Y(_31_)
);

FILL FILL23760x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _299_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_135_[6]),
    .CLK(clock_bF$buf3),
    .R(_4__bF$buf0),
    .S(vdd),
    .D(_29_)
);

BUFX2 _320_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[1]),
    .Y(sr[1])
);

NAND3X1 _223_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[0]),
    .B(_77_),
    .C(_80_),
    .Y(_81_)
);

XOR2X1 _261_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[4]),
    .B(_135_[3]),
    .Y(_108_)
);

BUFX2 _317_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[7]),
    .Y(dp[7])
);

OAI21X1 _164_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[3]),
    .B(state[0]),
    .C(_126_),
    .Y(_129_)
);

NAND2X1 _258_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_133_),
    .B(_113_),
    .Y(_106_)
);

DFFSR _296_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_135_[3]),
    .CLK(clock_bF$buf1),
    .R(_4__bF$buf1),
    .S(vdd),
    .D(_26_)
);

AOI21X1 _199_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_54_),
    .B(state[0]),
    .C(_59_),
    .Y(_9_)
);

INVX1 _220_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[8]),
    .Y(_78_)
);

FILL FILL23920x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _314_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[4]),
    .Y(dp[4])
);

OAI21X1 _161_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_113_),
    .B(N[1]),
    .C(_126_),
    .Y(_127_)
);

NAND3X1 _217_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_70_),
    .B(_71_),
    .C(_75_),
    .Y(_11_)
);

FILL FILL23920x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _255_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[8]),
    .B(_87__bF$buf2),
    .Y(_104_)
);

DFFSR _293_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_135_[0]),
    .CLK(clock_bF$buf0),
    .R(_4__bF$buf3),
    .S(vdd),
    .D(_23_)
);

AND2X2 _158_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_120_),
    .B(state[3]),
    .Y(_1_)
);

NOR2X1 _196_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[0]),
    .B(_112_),
    .Y(_57_)
);

FILL SFILL19120x100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _311_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[1]),
    .Y(dp[1])
);

OAI21X1 _214_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[5]),
    .B(_64_),
    .C(_132_[6]),
    .Y(_73_)
);

NOR2X1 _252_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[7]),
    .B(_87__bF$buf3),
    .Y(_102_)
);

BUFX2 _308_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[7]),
    .Y(counter[7])
);

DFFSR _290_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_134_[7]),
    .CLK(clock_bF$buf2),
    .R(_4__bF$buf2),
    .S(vdd),
    .D(_20_)
);

NOR2X1 _155_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(startbuf[1]),
    .B(_123_),
    .Y(_124_)
);

XNOR2X1 _193_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_50_),
    .B(N[5]),
    .Y(_54_)
);

NOR2X1 _249_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[6]),
    .B(_87__bF$buf0),
    .Y(_100_)
);

DFFSR _287_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_134_[4]),
    .CLK(clock_bF$buf0),
    .R(_4__bF$buf3),
    .S(vdd),
    .D(_17_)
);

FILL SFILL5680x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _211_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[0]),
    .B(_69_),
    .Y(_70_)
);

BUFX2 _305_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[4]),
    .Y(counter[4])
);

FILL SFILL6160x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _152_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[4]),
    .Y(_121_)
);

AOI21X1 _208_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_63_),
    .B(state[0]),
    .C(_67_),
    .Y(_10_)
);

NOR2X1 _190_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_113_),
    .B(_51_),
    .Y(_52_)
);

NOR2X1 _246_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[5]),
    .B(_87__bF$buf3),
    .Y(_98_)
);

FILL FILL23920x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18640x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _284_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_134_[1]),
    .CLK(clock_bF$buf3),
    .R(_4__bF$buf0),
    .S(vdd),
    .D(_14_)
);

NAND2X1 _149_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_117_),
    .B(_118_),
    .Y(_119_)
);

NOR2X1 _187_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[3]),
    .B(N[4]),
    .Y(_49_)
);

BUFX2 _302_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[1]),
    .Y(counter[1])
);

AND2X2 _205_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_64_),
    .B(_132_[5]),
    .Y(_65_)
);

NOR2X1 _243_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[4]),
    .B(_87__bF$buf2),
    .Y(_96_)
);

DFFSR _281_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_132_[6]),
    .CLK(clock_bF$buf4),
    .R(_4__bF$buf4),
    .S(vdd),
    .D(_11_)
);

NAND2X1 _146_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_114_),
    .B(_115_),
    .Y(_116_)
);

NAND2X1 _184_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[3]),
    .B(_45_),
    .Y(_46_)
);

DFFSR _278_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_132_[3]),
    .CLK(clock_bF$buf2),
    .R(_4__bF$buf2),
    .S(vdd),
    .D(_8_)
);

FILL SFILL19440x100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18800x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL8240x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL6800x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _202_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_61_),
    .Y(_62_)
);

NOR2X1 _240_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[3]),
    .B(_87__bF$buf1),
    .Y(_94_)
);

INVX4 _143_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[0]),
    .Y(_113_)
);

OAI21X1 _181_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_125_),
    .B(_43_),
    .C(_37_),
    .Y(_7_)
);

NOR2X1 _237_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[2]),
    .B(_87__bF$buf1),
    .Y(_92_)
);

FILL SFILL18640x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18160x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _275_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_132_[0]),
    .CLK(clock_bF$buf2),
    .R(_4__bF$buf2),
    .S(vdd),
    .D(_5_)
);

INVX1 _178_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[2]),
    .Y(_41_)
);

FILL SFILL6480x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _140_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_103_),
    .B(_44_),
    .C(_101_),
    .D(_111_),
    .Y(_30_)
);

NOR2X1 _234_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[1]),
    .B(_87__bF$buf3),
    .Y(_90_)
);

FILL SFILL5840x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _272_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(state[4]),
    .CLK(clock_bF$buf4),
    .R(_4__bF$buf4),
    .S(vdd),
    .D(state[2])
);

FILL SFILL5840x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _137_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_97_),
    .B(_44_),
    .C(_95_),
    .D(_111_),
    .Y(_27_)
);

INVX1 _175_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_33_),
    .Y(_38_)
);

DFFSR _269_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(state[1]),
    .CLK(clock_bF$buf4),
    .R(_4__bF$buf4),
    .S(vdd),
    .D(_2_)
);

FILL SFILL18320x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18800x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL19280x100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _231_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[0]),
    .B(_87__bF$buf0),
    .Y(_88_)
);

FILL FILL23920x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _325_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[6]),
    .Y(sr[6])
);

FILL SFILL6480x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL6160x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _172_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_125_),
    .B(_35_),
    .C(_130_),
    .Y(_6_)
);

INVX1 _228_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[0]),
    .Y(_85_)
);

OAI22X1 _266_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_91_),
    .B(_44_),
    .C(_89_),
    .D(_111_),
    .Y(_24_)
);

NAND2X1 _169_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[1]),
    .B(N[2]),
    .Y(_33_)
);

FILL SFILL7920x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL6480x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _322_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[3]),
    .Y(sr[3])
);

OAI21X1 _225_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_82_),
    .B(_72_),
    .C(_44_),
    .Y(_83_)
);

OAI21X1 _263_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_107_),
    .B(_108_),
    .C(_57_),
    .Y(_110_)
);

BUFX2 _319_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[0]),
    .Y(sr[0])
);

INVX1 _166_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[1]),
    .Y(_131_)
);

FILL SFILL17840x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18320x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _298_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_135_[5]),
    .CLK(clock_bF$buf3),
    .R(_4__bF$buf0),
    .S(vdd),
    .D(_28_)
);

FILL SFILL18800x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert10 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_87_),
    .Y(_87__bF$buf3)
);

BUFX2 BUFX2_insert11 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_87_),
    .Y(_87__bF$buf2)
);

BUFX2 BUFX2_insert12 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_87_),
    .Y(_87__bF$buf1)
);

BUFX2 BUFX2_insert13 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_87_),
    .Y(_87__bF$buf0)
);

NAND2X1 _222_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_78_),
    .B(_79_),
    .Y(_80_)
);

XNOR2X1 _260_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[7]),
    .B(_135_[5]),
    .Y(_107_)
);

BUFX2 _316_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[6]),
    .Y(dp[6])
);

OAI21X1 _163_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_125_),
    .B(_127_),
    .C(_128_),
    .Y(_5_)
);

OAI21X1 _219_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[7]),
    .B(_68_),
    .C(N[8]),
    .Y(_77_)
);

NAND2X1 _257_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[4]),
    .B(_86_),
    .Y(_105_)
);

FILL SFILL19120x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18960x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18480x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _295_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_135_[2]),
    .CLK(clock_bF$buf1),
    .R(_4__bF$buf1),
    .S(vdd),
    .D(_25_)
);

OAI22X1 _198_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[4]),
    .B(_44_),
    .C(_58_),
    .D(_56_),
    .Y(_59_)
);

BUFX2 _313_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[3]),
    .Y(dp[3])
);

FILL SFILL6960x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _160_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[0]),
    .B(_113_),
    .Y(_126_)
);

OAI21X1 _216_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_72_),
    .B(_74_),
    .C(_57_),
    .Y(_75_)
);

INVX1 _254_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[7]),
    .Y(_103_)
);

FILL SFILL5840x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _292_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_133_),
    .CLK(clock_bF$buf3),
    .R(_4__bF$buf2),
    .S(vdd),
    .D(_22_)
);

AND2X2 _157_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_124_),
    .B(state[1]),
    .Y(_0_)
);

NOR2X1 _195_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_55_),
    .B(_47_),
    .Y(_56_)
);

DFFSR _289_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_134_[6]),
    .CLK(clock_bF$buf1),
    .R(_4__bF$buf1),
    .S(vdd),
    .D(_19_)
);

FILL SFILL18800x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _310_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_[0]),
    .Y(dp[0])
);

NOR3X1 _213_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[5]),
    .B(_132_[6]),
    .C(_64_),
    .Y(_72_)
);

INVX1 _251_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[6]),
    .Y(_101_)
);

BUFX2 _307_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[6]),
    .Y(counter[6])
);

FILL SFILL6160x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _154_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(startbuf[0]),
    .Y(_123_)
);

OAI21X1 _192_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_125_),
    .B(_53_),
    .C(_46_),
    .Y(_8_)
);

INVX1 _248_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[5]),
    .Y(_99_)
);

DFFSR _286_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_134_[3]),
    .CLK(clock_bF$buf1),
    .R(_4__bF$buf1),
    .S(vdd),
    .D(_16_)
);

FILL SFILL19120x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _189_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_50_),
    .Y(_51_)
);

XOR2X1 _210_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_68_),
    .B(N[7]),
    .Y(_69_)
);

FILL SFILL5520x100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _304_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[3]),
    .Y(counter[3])
);

OAI21X1 _151_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_112_),
    .B(_120_),
    .C(_113_),
    .Y(_3_)
);

OAI22X1 _207_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[5]),
    .B(_44_),
    .C(_65_),
    .D(_66_),
    .Y(_67_)
);

INVX1 _245_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[4]),
    .Y(_97_)
);

DFFSR _283_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_134_[0]),
    .CLK(clock_bF$buf4),
    .R(_4__bF$buf4),
    .S(vdd),
    .D(_13_)
);

NOR2X1 _148_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[5]),
    .B(_132_[4]),
    .Y(_118_)
);

OAI21X1 _186_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[3]),
    .B(_38_),
    .C(N[4]),
    .Y(_48_)
);

FILL SFILL6000x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _301_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[0]),
    .Y(counter[0])
);

NAND3X1 _204_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_55_),
    .B(_114_),
    .C(_115_),
    .Y(_64_)
);

INVX1 _242_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[3]),
    .Y(_95_)
);

DFFSR _280_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_132_[5]),
    .CLK(clock_bF$buf3),
    .R(_4__bF$buf0),
    .S(vdd),
    .D(_10_)
);

NOR2X1 _145_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_[3]),
    .B(_132_[2]),
    .Y(_115_)
);

OAI21X1 _183_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[0]),
    .B(_42_),
    .C(_44_),
    .Y(_45_)
);

INVX1 _239_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[2]),
    .Y(_93_)
);

DFFSR _277_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_132_[2]),
    .CLK(clock_bF$buf2),
    .R(_4__bF$buf2),
    .S(vdd),
    .D(_7_)
);

NOR2X1 _201_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[5]),
    .B(N[6]),
    .Y(_61_)
);

INVX1 _142_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(state[3]),
    .Y(_112_)
);

AOI21X1 _180_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_113_),
    .B(_42_),
    .C(_40_),
    .Y(_43_)
);

INVX1 _236_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[1]),
    .Y(_91_)
);

DFFSR _274_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(startbuf[1]),
    .CLK(clock_bF$buf4),
    .R(_4__bF$buf4),
    .S(vdd),
    .D(startbuf[0])
);

OAI22X1 _139_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_101_),
    .B(_44_),
    .C(_99_),
    .D(_111_),
    .Y(_29_)
);

AOI21X1 _177_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(N[3]),
    .B(_38_),
    .C(_39_),
    .Y(_40_)
);

FILL SFILL18800x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL18000x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL8080x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL6640x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _233_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[0]),
    .Y(_89_)
);

DFFSR _271_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(state[3]),
    .CLK(clock_bF$buf3),
    .R(_4__bF$buf0),
    .S(vdd),
    .D(_3_)
);

OAI22X1 _136_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_95_),
    .B(_44_),
    .C(_93_),
    .D(_111_),
    .Y(_26_)
);

OAI21X1 _174_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_125_),
    .B(_36_),
    .C(_132_[2]),
    .Y(_37_)
);

DFFSR _268_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(state[0]),
    .CLK(clock_bF$buf4),
    .R(vdd),
    .S(_4__bF$buf4),
    .D(_0_)
);

CLKBUF1 CLKBUF1_insert0 (
    .gnd(gnd),
    .vdd(vdd),
    .A(clock),
    .Y(clock_bF$buf4)
);

CLKBUF1 CLKBUF1_insert1 (
    .gnd(gnd),
    .vdd(vdd),
    .A(clock),
    .Y(clock_bF$buf3)
);

CLKBUF1 CLKBUF1_insert2 (
    .gnd(gnd),
    .vdd(vdd),
    .A(clock),
    .Y(clock_bF$buf2)
);

CLKBUF1 CLKBUF1_insert3 (
    .gnd(gnd),
    .vdd(vdd),
    .A(clock),
    .Y(clock_bF$buf1)
);

CLKBUF1 CLKBUF1_insert4 (
    .gnd(gnd),
    .vdd(vdd),
    .A(clock),
    .Y(clock_bF$buf0)
);

FILL SFILL18480x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _230_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_86_),
    .B(_44_),
    .Y(_87_)
);

FILL SFILL19120x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _324_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_[5]),
    .Y(sr[5])
);

AOI21X1 _171_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_113_),
    .B(_114_),
    .C(_34_),
    .Y(_35_)
);

AOI22X1 _227_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_76_),
    .B(_125_),
    .C(_81_),
    .D(_84_),
    .Y(_12_)
);

INVX4 _265_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_57_),
    .Y(_111_)
);

endmodule
