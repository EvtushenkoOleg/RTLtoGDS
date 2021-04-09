/* Verilog module written by vlog2Verilog (qflow) */
/* With explicit power connections */

module i2c_master_top(
    inout vdd,
    inout gnd,
    input arst_i,
    input scl_pad_i,
    output scl_pad_o,
    output scl_padoen_o,
    input sda_pad_i,
    output sda_pad_o,
    output sda_padoen_o,
    output wb_ack_o,
    input [2:0] wb_adr_i,
    input wb_clk_i,
    input wb_cyc_i,
    input [7:0] wb_dat_i,
    output [7:0] wb_dat_o,
    output wb_inta_o,
    input wb_rst_i,
    input wb_stb_i,
    input wb_we_i
);

wire _588_ ;
wire _168_ ;
wire _60_ ;
wire _397_ ;
wire wb_clk_i_bF$buf10 ;
wire wb_clk_i_bF$buf11 ;
wire _703_ ;
wire [7:0] \byte_controller.din  ;
wire _19_ ;
wire _512_ ;
wire _741_ ;
wire _321_ ;
wire _57_ ;
wire _550_ ;
wire _130_ ;
wire _606_ ;
wire _415_ ;
wire _95_ ;
wire _644_ ;
wire _224_ ;
wire _453_ ;
wire _509_ ;
wire _682_ ;
wire _262_ ;
wire _738_ ;
wire _318_ ;
wire _491_ ;
wire _547_ ;
wire _127_ ;
wire _776_ ;
wire _356_ ;
wire _585_ ;
wire _165_ ;
wire _394_ ;
wire _679_ ;
wire _259_ ;
wire _488_ ;
wire _700_ ;
wire _297_ ;
wire _16_ ;
wire _54_ ;
wire tip ;
wire _603_ ;
wire _412_ ;
wire _92_ ;
wire _641_ ;
wire _221_ ;
wire ien ;
wire \byte_controller.bit_controller.ena  ;
wire _450_ ;
wire _506_ ;
wire wb_rst_i_bF$buf0 ;
wire wb_rst_i_bF$buf1 ;
wire wb_rst_i_bF$buf2 ;
wire wb_rst_i_bF$buf3 ;
wire wb_rst_i_bF$buf4 ;
wire wb_rst_i_bF$buf5 ;
wire _735_ ;
wire _315_ ;
wire _544_ ;
wire _124_ ;
wire _773_ ;
wire _353_ ;
wire _409_ ;
wire _89_ ;
wire _582_ ;
wire _162_ ;
wire _638_ ;
wire _218_ ;
wire _391_ ;
wire _447_ ;
wire _676_ ;
wire _256_ ;
wire _485_ ;
wire _294_ ;
wire _13_ ;
wire _579_ ;
wire _159_ ;
wire _51_ ;
wire _388_ ;
wire _600_ ;
wire _197_ ;
wire \byte_controller.bit_controller.cmd_stop  ;
wire _7_ ;
wire _503_ ;
wire _732_ ;
wire _312_ ;
wire _48_ ;
wire _541_ ;
wire _121_ ;
wire _770_ ;
wire _350_ ;
wire _406_ ;
wire _86_ ;
wire _635_ ;
wire _215_ ;
wire _444_ ;
wire _673_ ;
wire _253_ ;
wire _729_ ;
wire _309_ ;
wire _482_ ;
wire _538_ ;
wire _118_ ;
wire _291_ ;
wire _10_ ;
wire _767_ ;
wire _347_ ;
wire _576_ ;
wire _156_ ;
wire _385_ ;
wire _194_ ;
wire _479_ ;
wire _288_ ;
wire _4_ ;
wire _500_ ;
wire _45_ ;
wire _403_ ;
wire _83_ ;
wire _632_ ;
wire _212_ ;
wire _441_ ;
wire _670_ ;
wire _250_ ;
wire _726_ ;
wire _306_ ;
wire _535_ ;
wire _115_ ;
wire _764_ ;
wire _344_ ;
wire _573_ ;
wire _153_ ;
wire _629_ ;
wire _209_ ;
wire _382_ ;
wire _438_ ;
wire _191_ ;
wire _667_ ;
wire _247_ ;
wire _476_ ;
wire _285_ ;
wire _1_ ;
wire _42_ ;
wire _379_ ;
wire _188_ ;
wire _400_ ;
wire _80_ ;
wire _723_ ;
wire _303_ ;
wire _39_ ;
wire _532_ ;
wire _112_ ;
wire \byte_controller.bit_controller.sto_condition  ;
wire _761_ ;
wire _341_ ;
wire _77_ ;
wire _570_ ;
wire _150_ ;
wire _626_ ;
wire _206_ ;
wire _435_ ;
wire _664_ ;
wire _244_ ;
wire _473_ ;
wire _529_ ;
wire _109_ ;
wire _282_ ;
wire _758_ ;
wire _338_ ;
wire _567_ ;
wire _147_ ;
wire _376_ ;
wire _185_ ;
wire _699_ ;
wire _279_ ;
wire _720_ ;
wire _300_ ;
wire [2:0] \byte_controller.bit_controller.fSDA  ;
wire _36_ ;
wire _74_ ;
wire _623_ ;
wire _203_ ;
wire wb_ack_o ;
wire _432_ ;
wire _661_ ;
wire _241_ ;
wire _717_ ;
wire _470_ ;
wire _526_ ;
wire _106_ ;
wire _755_ ;
wire _335_ ;
wire scl_pad_i ;
wire scl_pad_o ;
wire _564_ ;
wire _144_ ;
wire _373_ ;
wire _429_ ;
wire [2:0] wb_adr_i ;
wire _182_ ;
wire _658_ ;
wire _238_ ;
wire _467_ ;
wire _696_ ;
wire _276_ ;
wire [7:0] \byte_controller.dout  ;
wire _33_ ;
wire _599_ ;
wire _179_ ;
wire _71_ ;
wire \byte_controller.bit_controller.dSCL  ;
wire _620_ ;
wire _200_ ;
wire _714_ ;
wire _523_ ;
wire _103_ ;
wire _752_ ;
wire _332_ ;
wire _68_ ;
wire _561_ ;
wire _141_ ;
wire _617_ ;
wire _370_ ;
wire _426_ ;
wire _655_ ;
wire _235_ ;
wire _464_ ;
wire _693_ ;
wire _273_ ;
wire _749_ ;
wire _329_ ;
wire _558_ ;
wire _138_ ;
wire _30_ ;
wire [7:0] _787_ ;
wire _367_ ;
wire _596_ ;
wire _176_ ;
wire _499_ ;
wire _711_ ;
wire _27_ ;
wire _520_ ;
wire _100_ ;
wire _65_ ;
wire _614_ ;
wire \byte_controller.bit_controller.sSDA  ;
wire _423_ ;
wire _652_ ;
wire _232_ ;
wire _708_ ;
wire _461_ ;
wire _517_ ;
wire _690_ ;
wire _270_ ;
wire _746_ ;
wire _326_ ;
wire _555_ ;
wire _135_ ;
wire \byte_controller.ld  ;
wire _784_ ;
wire _364_ ;
wire _593_ ;
wire _173_ ;
wire _649_ ;
wire _229_ ;
wire _458_ ;
wire _687_ ;
wire _267_ ;
wire wb_cyc_i ;
wire _496_ ;
wire \byte_controller.start  ;
wire _24_ ;
wire \byte_controller.bit_controller.slave_wait  ;
wire _62_ ;
wire _399_ ;
wire _611_ ;
wire _420_ ;
wire _705_ ;
wire _514_ ;
wire \byte_controller.bit_controller.dout  ;
wire _743_ ;
wire _323_ ;
wire _59_ ;
wire _552_ ;
wire _132_ ;
wire \byte_controller.ack_out  ;
wire _608_ ;
wire _781_ ;
wire _361_ ;
wire _417_ ;
wire _97_ ;
wire _590_ ;
wire _170_ ;
wire [13:0] \byte_controller.bit_controller.filter_cnt  ;
wire _646_ ;
wire _226_ ;
wire _455_ ;
wire _684_ ;
wire _264_ ;
wire _493_ ;
wire _549_ ;
wire _129_ ;
wire _21_ ;
wire _778_ ;
wire _358_ ;
wire _587_ ;
wire _167_ ;
wire _396_ ;
wire _702_ ;
wire _299_ ;
wire _18_ ;
wire _511_ ;
wire _740_ ;
wire _320_ ;
wire _56_ ;
wire _605_ ;
wire _414_ ;
wire _94_ ;
wire _643_ ;
wire _223_ ;
wire _452_ ;
wire \byte_controller.bit_controller.al  ;
wire _508_ ;
wire _681_ ;
wire _261_ ;
wire _737_ ;
wire _317_ ;
wire _490_ ;
wire _546_ ;
wire _126_ ;
wire _775_ ;
wire _355_ ;
wire wb_rst_i ;
wire _584_ ;
wire _164_ ;
wire _393_ ;
wire _449_ ;
wire _678_ ;
wire _258_ ;
wire _487_ ;
wire _296_ ;
wire _15_ ;
wire _53_ ;
wire _602_ ;
wire _199_ ;
wire \byte_controller.bit_controller.clk_en  ;
wire _411_ ;
wire _91_ ;
wire _640_ ;
wire _220_ ;
wire _9_ ;
wire _505_ ;
wire _734_ ;
wire _314_ ;
wire _543_ ;
wire _123_ ;
wire _772_ ;
wire _352_ ;
wire _408_ ;
wire _88_ ;
wire _581_ ;
wire _161_ ;
wire _637_ ;
wire _217_ ;
wire _390_ ;
wire _446_ ;
wire _675_ ;
wire _255_ ;
wire _484_ ;
wire _293_ ;
wire _12_ ;
wire _769_ ;
wire _349_ ;
wire [7:0] ctr ;
wire _578_ ;
wire _158_ ;
wire _50_ ;
wire _387_ ;
wire _196_ ;
wire _6_ ;
wire _502_ ;
wire _731_ ;
wire _311_ ;
wire _47_ ;
wire _540_ ;
wire _120_ ;
wire [1:0] \byte_controller.bit_controller.cSCL  ;
wire _405_ ;
wire _85_ ;
wire _634_ ;
wire _214_ ;
wire _443_ ;
wire _672_ ;
wire _252_ ;
wire _728_ ;
wire _308_ ;
wire _481_ ;
wire _537_ ;
wire _117_ ;
wire _290_ ;
wire _766_ ;
wire _346_ ;
wire wb_clk_i ;
wire \byte_controller.shift  ;
wire _575_ ;
wire _155_ ;
wire _384_ ;
wire _193_ ;
wire _669_ ;
wire _249_ ;
wire _478_ ;
wire _287_ ;
wire _3_ ;
wire _44_ ;
wire _402_ ;
wire _82_ ;
wire _631_ ;
wire _211_ ;
wire _440_ ;
wire [17:0] \byte_controller.bit_controller.c_state  ;
wire _725_ ;
wire _305_ ;
wire _534_ ;
wire _114_ ;
wire _763_ ;
wire _343_ ;
wire _79_ ;
wire _572_ ;
wire _152_ ;
wire _628_ ;
wire _208_ ;
wire _381_ ;
wire rxack ;
wire _437_ ;
wire _190_ ;
wire _666_ ;
wire _246_ ;
wire _475_ ;
wire _284_ ;
wire _0_ ;
wire _569_ ;
wire _149_ ;
wire _41_ ;
wire _378_ ;
wire _187_ ;
wire _722_ ;
wire _302_ ;
wire _38_ ;
wire _531_ ;
wire _111_ ;
wire _760_ ;
wire _340_ ;
wire _76_ ;
wire _625_ ;
wire _205_ ;
wire _434_ ;
wire [3:0] \byte_controller.bit_controller.cmd  ;
wire _663_ ;
wire _243_ ;
wire _719_ ;
wire _472_ ;
wire _528_ ;
wire _108_ ;
wire _281_ ;
wire _757_ ;
wire _337_ ;
wire _566_ ;
wire _146_ ;
wire _375_ ;
wire _184_ ;
wire _469_ ;
wire _698_ ;
wire _278_ ;
wire _35_ ;
wire scl_padoen_o ;
wire _73_ ;
wire _622_ ;
wire _202_ ;
wire _431_ ;
wire _660_ ;
wire _240_ ;
wire _716_ ;
wire _525_ ;
wire _105_ ;
wire _754_ ;
wire _334_ ;
wire _563_ ;
wire _143_ ;
wire _619_ ;
wire _372_ ;
wire _428_ ;
wire _181_ ;
wire _657_ ;
wire _237_ ;
wire _466_ ;
wire _695_ ;
wire _275_ ;
wire _32_ ;
wire [7:0] _789_ ;
wire [1:0] _369_ ;
wire _598_ ;
wire _178_ ;
wire _70_ ;
wire [5:0] \byte_controller.c_state  ;
wire _713_ ;
wire _29_ ;
wire _522_ ;
wire _102_ ;
wire _751_ ;
wire _331_ ;
wire _67_ ;
wire _560_ ;
wire _140_ ;
wire _616_ ;
wire [15:0] \byte_controller.bit_controller.cnt  ;
wire _425_ ;
wire _654_ ;
wire _234_ ;
wire \byte_controller.bit_controller.dSDA  ;
wire _463_ ;
wire _519_ ;
wire _692_ ;
wire _272_ ;
wire _748_ ;
wire _328_ ;
wire _557_ ;
wire _137_ ;
wire _786_ ;
wire _366_ ;
wire \byte_controller.bit_controller.busy  ;
wire _595_ ;
wire _175_ ;
wire _689_ ;
wire _269_ ;
wire _498_ ;
wire _710_ ;
wire _26_ ;
wire _64_ ;
wire _613_ ;
wire \byte_controller.bit_controller.dscl_oen  ;
wire _422_ ;
wire _651_ ;
wire _231_ ;
wire al ;
wire _707_ ;
wire _460_ ;
wire _516_ ;
wire _745_ ;
wire _325_ ;
wire _554_ ;
wire _134_ ;
wire _783_ ;
wire _363_ ;
wire _419_ ;
wire _99_ ;
wire _592_ ;
wire _172_ ;
wire _648_ ;
wire _228_ ;
wire _457_ ;
wire _686_ ;
wire _266_ ;
wire _495_ ;
wire [2:0] \byte_controller.dcnt  ;
wire _23_ ;
wire _589_ ;
wire _169_ ;
wire _61_ ;
wire _398_ ;
wire _610_ ;
wire _704_ ;
wire _513_ ;
wire _742_ ;
wire _322_ ;
wire _58_ ;
wire _551_ ;
wire _131_ ;
wire _607_ ;
wire _780_ ;
wire _360_ ;
wire _416_ ;
wire _96_ ;
wire _645_ ;
wire _225_ ;
wire _454_ ;
wire _683_ ;
wire _263_ ;
wire _739_ ;
wire _319_ ;
wire _492_ ;
wire _548_ ;
wire _128_ ;
wire _20_ ;
wire _777_ ;
wire _357_ ;
wire _586_ ;
wire _166_ ;
wire _395_ ;
wire _489_ ;
wire _701_ ;
wire _298_ ;
wire _17_ ;
wire _510_ ;
wire \byte_controller.bit_controller.cmd_ack  ;
wire _55_ ;
wire _604_ ;
wire _413_ ;
wire _93_ ;
wire _642_ ;
wire _222_ ;
wire \byte_controller.bit_controller.sda_chk  ;
wire _451_ ;
wire _507_ ;
wire _680_ ;
wire _260_ ;
wire wb_stb_i ;
wire _736_ ;
wire _316_ ;
wire _545_ ;
wire _125_ ;
wire \byte_controller.bit_controller.sta_condition  ;
wire _774_ ;
wire _354_ ;
wire wb_we_i ;
wire _583_ ;
wire _163_ ;
wire sda_pad_i ;
wire sda_pad_o ;
wire _639_ ;
wire _219_ ;
wire _392_ ;
wire _448_ ;
wire _677_ ;
wire _257_ ;
wire \byte_controller.bit_controller.din  ;
wire _486_ ;
wire _295_ ;
wire \byte_controller.write  ;
wire _14_ ;
wire _52_ ;
wire _389_ ;
wire _601_ ;
wire _198_ ;
wire _410_ ;
wire _90_ ;
wire \byte_controller.read  ;
wire _8_ ;
wire _504_ ;
wire _733_ ;
wire _313_ ;
wire _49_ ;
wire _542_ ;
wire _122_ ;
wire _771_ ;
wire _351_ ;
wire _407_ ;
wire _87_ ;
wire _580_ ;
wire _160_ ;
wire _636_ ;
wire _216_ ;
wire _445_ ;
wire _674_ ;
wire _254_ ;
wire arst_i_bF$buf10 ;
wire _483_ ;
wire _539_ ;
wire _119_ ;
wire _292_ ;
wire _11_ ;
wire _768_ ;
wire _348_ ;
wire _577_ ;
wire _157_ ;
wire _386_ ;
wire _195_ ;
wire _289_ ;
wire _5_ ;
wire _501_ ;
wire _730_ ;
wire _310_ ;
wire _46_ ;
wire _404_ ;
wire _84_ ;
wire _633_ ;
wire _213_ ;
wire _442_ ;
wire _671_ ;
wire _251_ ;
wire _727_ ;
wire _307_ ;
wire _480_ ;
wire _536_ ;
wire _116_ ;
wire _765_ ;
wire _345_ ;
wire _574_ ;
wire _154_ ;
wire _383_ ;
wire _439_ ;
wire _192_ ;
wire [1:0] \byte_controller.bit_controller.cSDA  ;
wire _668_ ;
wire _248_ ;
wire _477_ ;
wire _286_ ;
wire _2_ ;
wire arst_i ;
wire [15:0] \byte_controller.bit_controller.clk_cnt  ;
wire \byte_controller.cmd_ack  ;
wire _43_ ;
wire _189_ ;
wire _401_ ;
wire _81_ ;
wire _630_ ;
wire _210_ ;
wire _724_ ;
wire _304_ ;
wire _533_ ;
wire _113_ ;
wire _762_ ;
wire _342_ ;
wire _78_ ;
wire _571_ ;
wire _151_ ;
wire _627_ ;
wire _207_ ;
wire _380_ ;
wire _436_ ;
wire _665_ ;
wire _245_ ;
wire irq_flag ;
wire _474_ ;
wire [2:0] \byte_controller.bit_controller.fSCL  ;
wire _283_ ;
wire _759_ ;
wire _339_ ;
wire _568_ ;
wire _148_ ;
wire _40_ ;
wire _377_ ;
wire _186_ ;
wire _721_ ;
wire _301_ ;
wire _37_ ;
wire _530_ ;
wire _110_ ;
wire _75_ ;
wire _624_ ;
wire _204_ ;
wire _433_ ;
wire _662_ ;
wire _242_ ;
wire _718_ ;
wire _471_ ;
wire _527_ ;
wire _107_ ;
wire _280_ ;
wire _756_ ;
wire _336_ ;
wire _565_ ;
wire _145_ ;
wire [13:0] _374_ ;
wire _183_ ;
wire _659_ ;
wire _239_ ;
wire _468_ ;
wire _697_ ;
wire _277_ ;
wire _34_ ;
wire _72_ ;
wire _621_ ;
wire _201_ ;
wire [7:0] wb_dat_i ;
wire [7:0] wb_dat_o ;
wire _430_ ;
wire _715_ ;
wire _524_ ;
wire _104_ ;
wire _753_ ;
wire _333_ ;
wire _69_ ;
wire _562_ ;
wire _142_ ;
wire _618_ ;
wire _371_ ;
wire _427_ ;
wire _180_ ;
wire _656_ ;
wire _236_ ;
wire _465_ ;
wire _694_ ;
wire _274_ ;
wire sda_padoen_o ;
wire _559_ ;
wire _139_ ;
wire _31_ ;
wire \byte_controller.bit_controller.sSCL  ;
wire _788_ ;
wire [1:0] _368_ ;
wire _597_ ;
wire _177_ ;
wire \byte_controller.stop  ;
wire wb_clk_i_bF$buf0 ;
wire wb_clk_i_bF$buf1 ;
wire wb_clk_i_bF$buf2 ;
wire wb_clk_i_bF$buf3 ;
wire wb_clk_i_bF$buf4 ;
wire wb_clk_i_bF$buf5 ;
wire wb_clk_i_bF$buf6 ;
wire wb_clk_i_bF$buf7 ;
wire wb_clk_i_bF$buf8 ;
wire wb_clk_i_bF$buf9 ;
wire wb_inta_o ;
wire _712_ ;
wire _28_ ;
wire _521_ ;
wire _101_ ;
wire _750_ ;
wire _330_ ;
wire _66_ ;
wire _615_ ;
wire _424_ ;
wire _653_ ;
wire _233_ ;
wire [7:0] cr ;
wire _709_ ;
wire _462_ ;
wire _518_ ;
wire _691_ ;
wire _271_ ;
wire _747_ ;
wire _327_ ;
wire _556_ ;
wire _136_ ;
wire _785_ ;
wire _365_ ;
wire \byte_controller.ack_in  ;
wire _594_ ;
wire _174_ ;
wire _459_ ;
wire _688_ ;
wire _268_ ;
wire iack ;
wire _497_ ;
wire _25_ ;
wire _63_ ;
wire _612_ ;
wire _421_ ;
wire _650_ ;
wire _230_ ;
wire _706_ ;
wire _515_ ;
wire _744_ ;
wire _324_ ;
wire _553_ ;
wire _133_ ;
wire _609_ ;
wire _782_ ;
wire _362_ ;
wire _418_ ;
wire _98_ ;
wire _591_ ;
wire _171_ ;
wire _647_ ;
wire _227_ ;
wire _456_ ;
wire _685_ ;
wire _265_ ;
wire arst_i_bF$buf0 ;
wire arst_i_bF$buf1 ;
wire arst_i_bF$buf2 ;
wire arst_i_bF$buf3 ;
wire arst_i_bF$buf4 ;
wire arst_i_bF$buf5 ;
wire arst_i_bF$buf6 ;
wire arst_i_bF$buf7 ;
wire arst_i_bF$buf8 ;
wire arst_i_bF$buf9 ;
wire _494_ ;
wire _22_ ;
wire _779_ ;
wire _359_ ;

BUFX2 BUFX2_insert28 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf0)
);

BUFX2 BUFX2_insert27 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf1)
);

BUFX2 BUFX2_insert26 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf2)
);

BUFX2 BUFX2_insert25 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf3)
);

BUFX2 BUFX2_insert24 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf4)
);

BUFX2 BUFX2_insert23 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf5)
);

BUFX2 BUFX2_insert22 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf6)
);

BUFX2 BUFX2_insert21 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf7)
);

BUFX2 BUFX2_insert20 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf8)
);

BUFX2 BUFX2_insert19 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf9)
);

BUFX2 BUFX2_insert18 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf10)
);

CLKBUF1 CLKBUF1_insert17 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf0)
);

CLKBUF1 CLKBUF1_insert16 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf1)
);

CLKBUF1 CLKBUF1_insert15 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf2)
);

CLKBUF1 CLKBUF1_insert14 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf3)
);

CLKBUF1 CLKBUF1_insert13 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf4)
);

CLKBUF1 CLKBUF1_insert12 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf5)
);

CLKBUF1 CLKBUF1_insert11 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf6)
);

CLKBUF1 CLKBUF1_insert10 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf7)
);

CLKBUF1 CLKBUF1_insert9 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf8)
);

CLKBUF1 CLKBUF1_insert8 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf9)
);

CLKBUF1 CLKBUF1_insert7 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf10)
);

CLKBUF1 CLKBUF1_insert6 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf11)
);

BUFX2 BUFX2_insert5 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i),
    .Y(wb_rst_i_bF$buf0)
);

BUFX2 BUFX2_insert4 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i),
    .Y(wb_rst_i_bF$buf1)
);

BUFX2 BUFX2_insert3 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i),
    .Y(wb_rst_i_bF$buf2)
);

BUFX2 BUFX2_insert2 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i),
    .Y(wb_rst_i_bF$buf3)
);

BUFX2 BUFX2_insert1 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i),
    .Y(wb_rst_i_bF$buf4)
);

BUFX2 BUFX2_insert0 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i),
    .Y(wb_rst_i_bF$buf5)
);

OAI21X1 _1000_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf5),
    .B(wb_dat_i[4]),
    .C(_199_),
    .Y(_207_)
);

OAI21X1 _1001_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_206_),
    .B(_199_),
    .C(_207_),
    .Y(_41_)
);

OAI21X1 _1002_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .B(wb_dat_i[5]),
    .C(_199_),
    .Y(_208_)
);

OAI21X1 _1003_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_105_),
    .B(_199_),
    .C(_208_),
    .Y(_42_)
);

OAI21X1 _1004_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf3),
    .B(wb_dat_i[6]),
    .C(_199_),
    .Y(_209_)
);

OAI21X1 _1005_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_120_),
    .B(_199_),
    .C(_209_),
    .Y(_43_)
);

OAI21X1 _1006_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf2),
    .B(wb_dat_i[7]),
    .C(_199_),
    .Y(_210_)
);

OAI21X1 _1007_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_128_),
    .B(_199_),
    .C(_210_),
    .Y(_44_)
);

NAND2X1 _1008_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_156_),
    .B(_139_),
    .Y(_211_)
);

OAI21X1 _1009_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_59_),
    .B(_139_),
    .C(_211_),
    .Y(_45_)
);

DFFPOSX1 _1010_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_789_[0]),
    .Q(_787_[0])
);

DFFPOSX1 _1011_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_789_[1]),
    .Q(_787_[1])
);

DFFPOSX1 _1012_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_789_[2]),
    .Q(_787_[2])
);

DFFPOSX1 _1013_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_789_[3]),
    .Q(_787_[3])
);

DFFPOSX1 _1014_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_789_[4]),
    .Q(_787_[4])
);

DFFPOSX1 _1015_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_789_[5]),
    .Q(_787_[5])
);

DFFPOSX1 _1016_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_789_[6]),
    .Q(_787_[6])
);

DFFPOSX1 _1017_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_789_[7]),
    .Q(_787_[7])
);

DFFPOSX1 _1018_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_4_),
    .Q(_786_)
);

DFFSR _1019_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_5_),
    .Q(_788_),
    .R(arst_i_bF$buf10),
    .S(vdd)
);

DFFSR _1020_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf1),
    .D(_2_),
    .Q(rxack),
    .R(arst_i_bF$buf9),
    .S(vdd)
);

DFFSR _1021_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf0),
    .D(_3_),
    .Q(tip),
    .R(arst_i_bF$buf8),
    .S(vdd)
);

DFFSR _1022_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_1_),
    .Q(irq_flag),
    .R(arst_i_bF$buf7),
    .S(vdd)
);

DFFSR _1023_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_0_),
    .Q(al),
    .R(arst_i_bF$buf6),
    .S(vdd)
);

DFFSR _1024_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_6_),
    .Q(ctr[1]),
    .R(arst_i_bF$buf5),
    .S(vdd)
);

DFFSR _1025_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_7_),
    .Q(ctr[2]),
    .R(arst_i_bF$buf4),
    .S(vdd)
);

DFFSR _1026_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_8_),
    .Q(ctr[3]),
    .R(arst_i_bF$buf3),
    .S(vdd)
);

DFFSR _1027_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_9_),
    .Q(ctr[4]),
    .R(arst_i_bF$buf2),
    .S(vdd)
);

DFFSR _1028_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_10_),
    .Q(ctr[5]),
    .R(arst_i_bF$buf1),
    .S(vdd)
);

DFFSR _1029_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_11_),
    .Q(ien),
    .R(arst_i_bF$buf0),
    .S(vdd)
);

DFFSR _1030_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_12_),
    .Q(\byte_controller.bit_controller.ena ),
    .R(arst_i_bF$buf10),
    .S(vdd)
);

DFFSR _1031_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_13_),
    .Q(\byte_controller.din [0]),
    .R(arst_i_bF$buf9),
    .S(vdd)
);

DFFSR _1032_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf1),
    .D(_14_),
    .Q(\byte_controller.din [1]),
    .R(arst_i_bF$buf8),
    .S(vdd)
);

DFFSR _1033_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf0),
    .D(_15_),
    .Q(\byte_controller.din [2]),
    .R(arst_i_bF$buf7),
    .S(vdd)
);

DFFSR _1034_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_16_),
    .Q(\byte_controller.din [3]),
    .R(arst_i_bF$buf6),
    .S(vdd)
);

DFFSR _1035_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_17_),
    .Q(\byte_controller.din [4]),
    .R(arst_i_bF$buf5),
    .S(vdd)
);

DFFSR _1036_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_18_),
    .Q(\byte_controller.din [5]),
    .R(arst_i_bF$buf4),
    .S(vdd)
);

DFFSR _1037_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_19_),
    .Q(\byte_controller.din [6]),
    .R(arst_i_bF$buf3),
    .S(vdd)
);

DFFSR _1038_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_20_),
    .Q(\byte_controller.din [7]),
    .R(arst_i_bF$buf2),
    .S(vdd)
);

DFFSR _1039_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_21_),
    .Q(iack),
    .R(arst_i_bF$buf1),
    .S(vdd)
);

DFFSR _1040_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_22_),
    .Q(cr[1]),
    .R(arst_i_bF$buf0),
    .S(vdd)
);

DFFSR _1041_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_23_),
    .Q(cr[2]),
    .R(arst_i_bF$buf10),
    .S(vdd)
);

DFFSR _1042_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_24_),
    .Q(\byte_controller.write ),
    .R(arst_i_bF$buf9),
    .S(vdd)
);

DFFSR _1043_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_25_),
    .Q(\byte_controller.read ),
    .R(arst_i_bF$buf8),
    .S(vdd)
);

DFFSR _1044_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf1),
    .D(_26_),
    .Q(\byte_controller.stop ),
    .R(arst_i_bF$buf7),
    .S(vdd)
);

DFFSR _1045_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf0),
    .D(_27_),
    .Q(\byte_controller.start ),
    .R(arst_i_bF$buf6),
    .S(vdd)
);

DFFSR _1046_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_28_),
    .Q(\byte_controller.ack_in ),
    .R(arst_i_bF$buf5),
    .S(vdd)
);

DFFSR _1047_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_29_),
    .Q(\byte_controller.bit_controller.clk_cnt [0]),
    .R(vdd),
    .S(arst_i_bF$buf4)
);

DFFSR _1048_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_30_),
    .Q(\byte_controller.bit_controller.clk_cnt [1]),
    .R(vdd),
    .S(arst_i_bF$buf3)
);

DFFSR _1049_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_31_),
    .Q(\byte_controller.bit_controller.clk_cnt [2]),
    .R(vdd),
    .S(arst_i_bF$buf2)
);

DFFSR _1050_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_32_),
    .Q(\byte_controller.bit_controller.clk_cnt [3]),
    .R(vdd),
    .S(arst_i_bF$buf1)
);

DFFSR _1051_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_33_),
    .Q(\byte_controller.bit_controller.clk_cnt [4]),
    .R(vdd),
    .S(arst_i_bF$buf0)
);

DFFSR _1052_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_34_),
    .Q(\byte_controller.bit_controller.clk_cnt [5]),
    .R(vdd),
    .S(arst_i_bF$buf10)
);

DFFSR _1053_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_35_),
    .Q(\byte_controller.bit_controller.clk_cnt [6]),
    .R(vdd),
    .S(arst_i_bF$buf9)
);

DFFSR _1054_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_36_),
    .Q(\byte_controller.bit_controller.clk_cnt [7]),
    .R(vdd),
    .S(arst_i_bF$buf8)
);

DFFSR _1055_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_37_),
    .Q(\byte_controller.bit_controller.clk_cnt [8]),
    .R(vdd),
    .S(arst_i_bF$buf7)
);

DFFSR _1056_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf1),
    .D(_38_),
    .Q(\byte_controller.bit_controller.clk_cnt [9]),
    .R(vdd),
    .S(arst_i_bF$buf6)
);

DFFSR _1057_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf0),
    .D(_39_),
    .Q(\byte_controller.bit_controller.clk_cnt [10]),
    .R(vdd),
    .S(arst_i_bF$buf5)
);

DFFSR _1058_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_40_),
    .Q(\byte_controller.bit_controller.clk_cnt [11]),
    .R(vdd),
    .S(arst_i_bF$buf4)
);

DFFSR _1059_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_41_),
    .Q(\byte_controller.bit_controller.clk_cnt [12]),
    .R(vdd),
    .S(arst_i_bF$buf3)
);

DFFSR _1060_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_42_),
    .Q(\byte_controller.bit_controller.clk_cnt [13]),
    .R(vdd),
    .S(arst_i_bF$buf2)
);

DFFSR _1061_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_43_),
    .Q(\byte_controller.bit_controller.clk_cnt [14]),
    .R(vdd),
    .S(arst_i_bF$buf1)
);

DFFSR _1062_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_44_),
    .Q(\byte_controller.bit_controller.clk_cnt [15]),
    .R(vdd),
    .S(arst_i_bF$buf0)
);

DFFSR _1063_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_45_),
    .Q(ctr[0]),
    .R(arst_i_bF$buf10),
    .S(vdd)
);

INVX1 _1064_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.cmd_ack ),
    .Y(_337_)
);

INVX1 _1065_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.write ),
    .Y(_338_)
);

NOR3X1 _1066_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.read ),
    .B(\byte_controller.start ),
    .C(_338_),
    .Y(_339_)
);

NOR2X1 _1067_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.al ),
    .B(wb_rst_i_bF$buf1),
    .Y(_340_)
);

NAND2X1 _1068_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [0]),
    .B(_340_),
    .Y(_341_)
);

INVX2 _1069_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_341_),
    .Y(_342_)
);

NAND3X1 _1070_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_337_),
    .B(_339_),
    .C(_342_),
    .Y(_343_)
);

NAND2X1 _1071_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_ack ),
    .B(_340_),
    .Y(_344_)
);

INVX2 _1072_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_344_),
    .Y(_345_)
);

INVX2 _1073_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [5]),
    .Y(_346_)
);

NOR2X1 _1074_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.read ),
    .B(_346_),
    .Y(_347_)
);

NAND2X1 _1075_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_347_),
    .B(_345_),
    .Y(_348_)
);

NOR3X1 _1076_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dcnt [1]),
    .B(\byte_controller.dcnt [0]),
    .C(\byte_controller.dcnt [2]),
    .Y(_349_)
);

NOR2X1 _1077_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_349_),
    .B(_344_),
    .Y(_350_)
);

NOR3X1 _1078_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.al ),
    .B(wb_rst_i_bF$buf0),
    .C(\byte_controller.bit_controller.cmd_ack ),
    .Y(_351_)
);

OAI21X1 _1079_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_351_),
    .B(_350_),
    .C(\byte_controller.c_state [3]),
    .Y(_352_)
);

NAND3X1 _1080_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_343_),
    .B(_348_),
    .C(_352_),
    .Y(_219_)
);

INVX1 _1081_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.stop ),
    .Y(_353_)
);

NOR2X1 _1082_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.read ),
    .B(\byte_controller.write ),
    .Y(_354_)
);

AOI21X1 _1083_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_354_),
    .B(_353_),
    .C(\byte_controller.cmd_ack ),
    .Y(_355_)
);

INVX1 _1084_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.read ),
    .Y(_356_)
);

NOR2X1 _1085_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.start ),
    .B(_356_),
    .Y(_357_)
);

NAND3X1 _1086_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_355_),
    .B(_357_),
    .C(_342_),
    .Y(_358_)
);

NOR2X1 _1087_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_356_),
    .B(_346_),
    .Y(_359_)
);

NAND2X1 _1088_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_359_),
    .B(_345_),
    .Y(_360_)
);

OAI21X1 _1089_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_351_),
    .B(_350_),
    .C(\byte_controller.c_state [4]),
    .Y(_361_)
);

NAND3X1 _1090_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_358_),
    .B(_360_),
    .C(_361_),
    .Y(_220_)
);

INVX2 _1091_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_ack ),
    .Y(_362_)
);

NAND2X1 _1092_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_362_),
    .B(_340_),
    .Y(_363_)
);

NAND2X1 _1093_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [0]),
    .B(_355_),
    .Y(_364_)
);

NAND2X1 _1094_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.start ),
    .B(_340_),
    .Y(_365_)
);

OAI22X1 _1095_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_346_),
    .B(_363_),
    .C(_365_),
    .D(_364_),
    .Y(_221_)
);

INVX2 _1096_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [2]),
    .Y(_238_)
);

INVX1 _1097_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_349_),
    .Y(_239_)
);

OAI21X1 _1098_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [3]),
    .B(\byte_controller.c_state [4]),
    .C(_345_),
    .Y(_240_)
);

OAI22X1 _1099_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_238_),
    .B(_363_),
    .C(_239_),
    .D(_240_),
    .Y(_218_)
);

NAND2X1 _1100_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_355_),
    .B(_342_),
    .Y(_241_)
);

NOR3X1 _1101_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.read ),
    .B(\byte_controller.start ),
    .C(\byte_controller.write ),
    .Y(_242_)
);

INVX1 _1102_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_242_),
    .Y(_243_)
);

NAND2X1 _1103_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.stop ),
    .B(\byte_controller.c_state [2]),
    .Y(_244_)
);

INVX1 _1104_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_244_),
    .Y(_245_)
);

AOI22X1 _1105_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [1]),
    .B(_351_),
    .C(_245_),
    .D(_345_),
    .Y(_246_)
);

OAI21X1 _1106_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_243_),
    .B(_241_),
    .C(_246_),
    .Y(_217_)
);

NAND2X1 _1107_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_ack ),
    .B(\byte_controller.c_state [2]),
    .Y(_247_)
);

NOR2X1 _1108_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.stop ),
    .B(_247_),
    .Y(_248_)
);

INVX1 _1109_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_248_),
    .Y(_249_)
);

INVX1 _1110_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_354_),
    .Y(_250_)
);

OAI21X1 _1111_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.stop ),
    .B(_250_),
    .C(_337_),
    .Y(_251_)
);

AOI22X1 _1112_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [1]),
    .B(_345_),
    .C(_342_),
    .D(_251_),
    .Y(_252_)
);

NAND3X1 _1113_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .B(_249_),
    .C(_252_),
    .Y(_216_)
);

INVX1 _1114_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .Y(_253_)
);

NAND2X1 _1115_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [1]),
    .B(_345_),
    .Y(_254_)
);

OAI21X1 _1116_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_253_),
    .B(_249_),
    .C(_254_),
    .Y(_212_)
);

OAI21X1 _1117_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_346_),
    .B(_344_),
    .C(_241_),
    .Y(_214_)
);

INVX1 _1118_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [4]),
    .Y(_255_)
);

AOI21X1 _1119_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_255_),
    .B(_349_),
    .C(_240_),
    .Y(_215_)
);

OAI21X1 _1120_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_ack ),
    .B(\byte_controller.ack_in ),
    .C(\byte_controller.c_state [2]),
    .Y(_256_)
);

NAND2X1 _1121_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_ack ),
    .B(\byte_controller.c_state [4]),
    .Y(_257_)
);

INVX1 _1122_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [7]),
    .Y(_258_)
);

NAND2X1 _1123_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [7]),
    .B(_238_),
    .Y(_259_)
);

AOI22X1 _1124_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_362_),
    .B(_258_),
    .C(_255_),
    .D(_259_),
    .Y(_260_)
);

OAI21X1 _1125_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.ack_in ),
    .B(_257_),
    .C(_260_),
    .Y(_261_)
);

AOI21X1 _1126_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_261_),
    .B(_256_),
    .C(_253_),
    .Y(_213_)
);

NAND3X1 _1127_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_ack ),
    .B(\byte_controller.c_state [2]),
    .C(\byte_controller.bit_controller.dout ),
    .Y(_262_)
);

OAI21X1 _1128_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_362_),
    .B(_238_),
    .C(\byte_controller.ack_out ),
    .Y(_263_)
);

AOI21X1 _1129_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_263_),
    .B(_262_),
    .C(_253_),
    .Y(_222_)
);

INVX1 _1130_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.shift ),
    .Y(_264_)
);

NOR2X1 _1131_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf5),
    .B(\byte_controller.ld ),
    .Y(_265_)
);

NAND2X1 _1132_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_264_),
    .B(_265_),
    .Y(_266_)
);

INVX2 _1133_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_266_),
    .Y(_267_)
);

NAND2X1 _1134_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [0]),
    .B(_267_),
    .Y(_268_)
);

MUX2X1 _1135_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [0]),
    .B(\byte_controller.bit_controller.dout ),
    .S(\byte_controller.ld ),
    .Y(_269_)
);

INVX1 _1136_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .Y(_270_)
);

OAI21X1 _1137_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.shift ),
    .B(\byte_controller.ld ),
    .C(_270_),
    .Y(_271_)
);

OAI21X1 _1138_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_269_),
    .B(_271_),
    .C(_268_),
    .Y(_223_)
);

NAND2X1 _1139_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [1]),
    .B(_267_),
    .Y(_272_)
);

MUX2X1 _1140_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [1]),
    .B(\byte_controller.dout [0]),
    .S(\byte_controller.ld ),
    .Y(_273_)
);

OAI21X1 _1141_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_273_),
    .C(_272_),
    .Y(_224_)
);

NAND2X1 _1142_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [2]),
    .B(_267_),
    .Y(_274_)
);

MUX2X1 _1143_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [2]),
    .B(\byte_controller.dout [1]),
    .S(\byte_controller.ld ),
    .Y(_275_)
);

OAI21X1 _1144_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_275_),
    .C(_274_),
    .Y(_225_)
);

NAND2X1 _1145_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [3]),
    .B(_267_),
    .Y(_276_)
);

MUX2X1 _1146_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [3]),
    .B(\byte_controller.dout [2]),
    .S(\byte_controller.ld ),
    .Y(_277_)
);

OAI21X1 _1147_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_277_),
    .C(_276_),
    .Y(_226_)
);

NAND2X1 _1148_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [4]),
    .B(_267_),
    .Y(_278_)
);

MUX2X1 _1149_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [4]),
    .B(\byte_controller.dout [3]),
    .S(\byte_controller.ld ),
    .Y(_279_)
);

OAI21X1 _1150_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_279_),
    .C(_278_),
    .Y(_227_)
);

NAND2X1 _1151_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [5]),
    .B(_267_),
    .Y(_280_)
);

MUX2X1 _1152_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [5]),
    .B(\byte_controller.dout [4]),
    .S(\byte_controller.ld ),
    .Y(_281_)
);

OAI21X1 _1153_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_281_),
    .C(_280_),
    .Y(_228_)
);

NAND2X1 _1154_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [6]),
    .B(_267_),
    .Y(_282_)
);

MUX2X1 _1155_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [6]),
    .B(\byte_controller.dout [5]),
    .S(\byte_controller.ld ),
    .Y(_283_)
);

OAI21X1 _1156_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_283_),
    .C(_282_),
    .Y(_229_)
);

MUX2X1 _1157_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [7]),
    .B(\byte_controller.dout [6]),
    .S(\byte_controller.ld ),
    .Y(_284_)
);

OAI22X1 _1158_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_284_),
    .C(_258_),
    .D(_266_),
    .Y(_230_)
);

INVX1 _1159_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dcnt [0]),
    .Y(_285_)
);

INVX1 _1160_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .Y(_286_)
);

OAI21X1 _1161_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_285_),
    .B(\byte_controller.ld ),
    .C(_286_),
    .Y(_287_)
);

OAI21X1 _1162_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_285_),
    .B(_266_),
    .C(_287_),
    .Y(_231_)
);

INVX1 _1163_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dcnt [1]),
    .Y(_288_)
);

AOI21X1 _1164_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_270_),
    .B(\byte_controller.dcnt [0]),
    .C(_267_),
    .Y(_289_)
);

NOR2X1 _1165_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dcnt [1]),
    .B(\byte_controller.dcnt [0]),
    .Y(_290_)
);

OAI21X1 _1166_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.ld ),
    .B(_290_),
    .C(_286_),
    .Y(_291_)
);

OAI21X1 _1167_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_288_),
    .B(_289_),
    .C(_291_),
    .Y(_232_)
);

INVX1 _1168_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dcnt [2]),
    .Y(_292_)
);

OAI21X1 _1169_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dcnt [1]),
    .B(\byte_controller.dcnt [0]),
    .C(\byte_controller.dcnt [2]),
    .Y(_293_)
);

NAND2X1 _1170_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_293_),
    .B(_239_),
    .Y(_294_)
);

OAI21X1 _1171_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.ld ),
    .B(_294_),
    .C(_286_),
    .Y(_295_)
);

OAI21X1 _1172_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_292_),
    .B(_266_),
    .C(_295_),
    .Y(_233_)
);

NAND3X1 _1173_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_362_),
    .B(\byte_controller.c_state [1]),
    .C(_340_),
    .Y(_296_)
);

OAI21X1 _1174_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [5]),
    .B(\byte_controller.c_state [2]),
    .C(_351_),
    .Y(_297_)
);

NOR2X1 _1175_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [0]),
    .B(\byte_controller.c_state [5]),
    .Y(_298_)
);

AND2X2 _1176_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .B(_298_),
    .Y(_299_)
);

NOR2X1 _1177_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [3]),
    .B(\byte_controller.c_state [4]),
    .Y(_300_)
);

NOR2X1 _1178_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [2]),
    .B(\byte_controller.c_state [1]),
    .Y(_301_)
);

AND2X2 _1179_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_300_),
    .B(_301_),
    .Y(_302_)
);

NAND2X1 _1180_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_299_),
    .B(_302_),
    .Y(_303_)
);

NAND3X1 _1181_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_296_),
    .B(_297_),
    .C(_303_),
    .Y(_304_)
);

OAI21X1 _1182_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [3]),
    .B(\byte_controller.c_state [4]),
    .C(_351_),
    .Y(_305_)
);

OAI21X1 _1183_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_341_),
    .B(_355_),
    .C(_305_),
    .Y(_306_)
);

OAI21X1 _1184_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_306_),
    .B(_304_),
    .C(\byte_controller.bit_controller.cmd [0]),
    .Y(_307_)
);

AOI21X1 _1185_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_346_),
    .B(_238_),
    .C(_363_),
    .Y(_308_)
);

NAND2X1 _1186_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .B(_298_),
    .Y(_309_)
);

NAND2X1 _1187_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_300_),
    .B(_301_),
    .Y(_310_)
);

OAI21X1 _1188_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_309_),
    .B(_310_),
    .C(_296_),
    .Y(_311_)
);

NOR2X1 _1189_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_308_),
    .B(_311_),
    .Y(_312_)
);

INVX2 _1190_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_306_),
    .Y(_313_)
);

NAND3X1 _1191_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_346_),
    .B(_300_),
    .C(_301_),
    .Y(_314_)
);

NOR2X1 _1192_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_365_),
    .B(_314_),
    .Y(_315_)
);

NAND3X1 _1193_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_315_),
    .B(_313_),
    .C(_312_),
    .Y(_316_)
);

NAND2X1 _1194_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_316_),
    .B(_307_),
    .Y(_234_)
);

OAI21X1 _1195_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_306_),
    .B(_304_),
    .C(\byte_controller.bit_controller.cmd [1]),
    .Y(_317_)
);

OAI21X1 _1196_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_242_),
    .B(_314_),
    .C(_340_),
    .Y(_318_)
);

AOI21X1 _1197_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_244_),
    .B(_314_),
    .C(_318_),
    .Y(_319_)
);

NAND3X1 _1198_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_313_),
    .B(_312_),
    .C(_319_),
    .Y(_320_)
);

NAND2X1 _1199_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_317_),
    .B(_320_),
    .Y(_235_)
);

NAND3X1 _1200_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_292_),
    .B(_255_),
    .C(_290_),
    .Y(_321_)
);

OAI21X1 _1201_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [3]),
    .B(_349_),
    .C(_321_),
    .Y(_322_)
);

NOR3X1 _1202_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [5]),
    .B(\byte_controller.c_state [3]),
    .C(\byte_controller.c_state [4]),
    .Y(_323_)
);

AOI21X1 _1203_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_323_),
    .B(_301_),
    .C(_347_),
    .Y(_324_)
);

OAI21X1 _1204_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_339_),
    .B(_314_),
    .C(_340_),
    .Y(_325_)
);

AOI21X1 _1205_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_322_),
    .B(_324_),
    .C(_325_),
    .Y(_326_)
);

NAND3X1 _1206_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_313_),
    .B(_312_),
    .C(_326_),
    .Y(_327_)
);

OAI21X1 _1207_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_306_),
    .B(_304_),
    .C(\byte_controller.bit_controller.cmd [2]),
    .Y(_328_)
);

NAND2X1 _1208_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_328_),
    .B(_327_),
    .Y(_236_)
);

INVX1 _1209_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [3]),
    .Y(_329_)
);

NAND3X1 _1210_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_329_),
    .B(_292_),
    .C(_290_),
    .Y(_330_)
);

OAI21X1 _1211_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [4]),
    .B(_349_),
    .C(_330_),
    .Y(_331_)
);

AOI21X1 _1212_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_323_),
    .B(_301_),
    .C(_359_),
    .Y(_332_)
);

OAI21X1 _1213_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_357_),
    .B(_314_),
    .C(_340_),
    .Y(_333_)
);

AOI21X1 _1214_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_331_),
    .B(_332_),
    .C(_333_),
    .Y(_334_)
);

NAND3X1 _1215_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_313_),
    .B(_312_),
    .C(_334_),
    .Y(_335_)
);

OAI21X1 _1216_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_306_),
    .B(_304_),
    .C(\byte_controller.bit_controller.cmd [3]),
    .Y(_336_)
);

NAND2X1 _1217_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_336_),
    .B(_335_),
    .Y(_237_)
);

DFFSR _1218_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_216_),
    .Q(\byte_controller.c_state [0]),
    .R(vdd),
    .S(arst_i_bF$buf9)
);

DFFSR _1219_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_217_),
    .Q(\byte_controller.c_state [1]),
    .R(arst_i_bF$buf8),
    .S(vdd)
);

DFFSR _1220_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_218_),
    .Q(\byte_controller.c_state [2]),
    .R(arst_i_bF$buf7),
    .S(vdd)
);

DFFSR _1221_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_219_),
    .Q(\byte_controller.c_state [3]),
    .R(arst_i_bF$buf6),
    .S(vdd)
);

DFFSR _1222_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf1),
    .D(_220_),
    .Q(\byte_controller.c_state [4]),
    .R(arst_i_bF$buf5),
    .S(vdd)
);

DFFSR _1223_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf0),
    .D(_221_),
    .Q(\byte_controller.c_state [5]),
    .R(arst_i_bF$buf4),
    .S(vdd)
);

DFFSR _1224_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_212_),
    .Q(\byte_controller.cmd_ack ),
    .R(arst_i_bF$buf3),
    .S(vdd)
);

DFFSR _1225_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_213_),
    .Q(\byte_controller.bit_controller.din ),
    .R(arst_i_bF$buf2),
    .S(vdd)
);

DFFSR _1226_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_215_),
    .Q(\byte_controller.shift ),
    .R(arst_i_bF$buf1),
    .S(vdd)
);

DFFSR _1227_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_214_),
    .Q(\byte_controller.ld ),
    .R(arst_i_bF$buf0),
    .S(vdd)
);

DFFSR _1228_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_222_),
    .Q(\byte_controller.ack_out ),
    .R(arst_i_bF$buf10),
    .S(vdd)
);

DFFSR _1229_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_223_),
    .Q(\byte_controller.dout [0]),
    .R(arst_i_bF$buf9),
    .S(vdd)
);

DFFSR _1230_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_224_),
    .Q(\byte_controller.dout [1]),
    .R(arst_i_bF$buf8),
    .S(vdd)
);

DFFSR _1231_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_225_),
    .Q(\byte_controller.dout [2]),
    .R(arst_i_bF$buf7),
    .S(vdd)
);

DFFSR _1232_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_226_),
    .Q(\byte_controller.dout [3]),
    .R(arst_i_bF$buf6),
    .S(vdd)
);

DFFSR _1233_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_227_),
    .Q(\byte_controller.dout [4]),
    .R(arst_i_bF$buf5),
    .S(vdd)
);

DFFSR _1234_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf1),
    .D(_228_),
    .Q(\byte_controller.dout [5]),
    .R(arst_i_bF$buf4),
    .S(vdd)
);

DFFSR _1235_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf0),
    .D(_229_),
    .Q(\byte_controller.dout [6]),
    .R(arst_i_bF$buf3),
    .S(vdd)
);

DFFSR _1236_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_230_),
    .Q(\byte_controller.dout [7]),
    .R(arst_i_bF$buf2),
    .S(vdd)
);

DFFSR _1237_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_231_),
    .Q(\byte_controller.dcnt [0]),
    .R(arst_i_bF$buf1),
    .S(vdd)
);

DFFSR _1238_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_232_),
    .Q(\byte_controller.dcnt [1]),
    .R(arst_i_bF$buf0),
    .S(vdd)
);

DFFSR _1239_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_233_),
    .Q(\byte_controller.dcnt [2]),
    .R(arst_i_bF$buf10),
    .S(vdd)
);

DFFSR _1240_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_234_),
    .Q(\byte_controller.bit_controller.cmd [0]),
    .R(arst_i_bF$buf9),
    .S(vdd)
);

DFFSR _1241_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_235_),
    .Q(\byte_controller.bit_controller.cmd [1]),
    .R(arst_i_bF$buf8),
    .S(vdd)
);

DFFSR _1242_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_236_),
    .Q(\byte_controller.bit_controller.cmd [2]),
    .R(arst_i_bF$buf7),
    .S(vdd)
);

DFFSR _1243_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_237_),
    .Q(\byte_controller.bit_controller.cmd [3]),
    .R(arst_i_bF$buf6),
    .S(vdd)
);

INVX1 _1244_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [3]),
    .Y(_424_)
);

INVX1 _1245_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [2]),
    .Y(_425_)
);

NOR2X1 _1246_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [1]),
    .B(\byte_controller.bit_controller.cnt [0]),
    .Y(_426_)
);

NAND3X1 _1247_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_424_),
    .B(_425_),
    .C(_426_),
    .Y(_427_)
);

INVX1 _1248_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [4]),
    .Y(_428_)
);

INVX1 _1249_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [7]),
    .Y(_429_)
);

NOR2X1 _1250_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [5]),
    .B(\byte_controller.bit_controller.cnt [6]),
    .Y(_430_)
);

NAND3X1 _1251_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_428_),
    .B(_429_),
    .C(_430_),
    .Y(_431_)
);

OR2X2 _1252_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_427_),
    .B(_431_),
    .Y(_432_)
);

NOR2X1 _1253_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [8]),
    .B(_432_),
    .Y(_433_)
);

NOR2X1 _1254_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [9]),
    .B(\byte_controller.bit_controller.cnt [10]),
    .Y(_434_)
);

NOR2X1 _1255_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [15]),
    .B(\byte_controller.bit_controller.cnt [14]),
    .Y(_435_)
);

NOR2X1 _1256_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [13]),
    .B(\byte_controller.bit_controller.cnt [12]),
    .Y(_436_)
);

NAND3X1 _1257_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_434_),
    .B(_435_),
    .C(_436_),
    .Y(_437_)
);

NOR2X1 _1258_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [11]),
    .B(_437_),
    .Y(_438_)
);

NAND2X1 _1259_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_438_),
    .B(_433_),
    .Y(_439_)
);

INVX1 _1260_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_784_),
    .Y(_440_)
);

NOR2X1 _1261_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sSCL ),
    .B(_440_),
    .Y(_441_)
);

INVX4 _1262_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf3),
    .Y(_442_)
);

NAND2X1 _1263_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.ena ),
    .B(_442_),
    .Y(_443_)
);

AOI21X1 _1264_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_441_),
    .B(\byte_controller.bit_controller.dSCL ),
    .C(_443_),
    .Y(_444_)
);

NAND2X1 _1265_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_444_),
    .B(_439_),
    .Y(_370_)
);

NOR2X1 _1266_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [2]),
    .B(\byte_controller.bit_controller.c_state [3]),
    .Y(_445_)
);

NOR2X1 _1267_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [0]),
    .B(\byte_controller.bit_controller.c_state [1]),
    .Y(_446_)
);

NAND2X1 _1268_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_445_),
    .B(_446_),
    .Y(_447_)
);

NOR2X1 _1269_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [6]),
    .B(\byte_controller.bit_controller.c_state [7]),
    .Y(_448_)
);

NOR2X1 _1270_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [5]),
    .B(\byte_controller.bit_controller.c_state [4]),
    .Y(_449_)
);

NAND2X1 _1271_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_448_),
    .B(_449_),
    .Y(_450_)
);

NOR2X1 _1272_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_447_),
    .B(_450_),
    .Y(_451_)
);

NOR2X1 _1273_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [10]),
    .B(\byte_controller.bit_controller.c_state [11]),
    .Y(_452_)
);

NOR2X1 _1274_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [9]),
    .B(\byte_controller.bit_controller.c_state [8]),
    .Y(_453_)
);

AND2X2 _1275_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_452_),
    .B(_453_),
    .Y(_454_)
);

AND2X2 _1276_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_451_),
    .B(_454_),
    .Y(_455_)
);

NOR2X1 _1277_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [15]),
    .B(\byte_controller.bit_controller.c_state [14]),
    .Y(_456_)
);

INVX1 _1278_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_456_),
    .Y(_457_)
);

INVX4 _1279_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [16]),
    .Y(_458_)
);

INVX1 _1280_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [13]),
    .Y(_459_)
);

NAND3X1 _1281_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [12]),
    .B(_458_),
    .C(_459_),
    .Y(_460_)
);

NOR2X1 _1282_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_460_),
    .B(_457_),
    .Y(_461_)
);

NOR2X1 _1283_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [13]),
    .B(\byte_controller.bit_controller.c_state [12]),
    .Y(_462_)
);

AND2X2 _1284_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_456_),
    .B(_462_),
    .Y(_463_)
);

NAND2X1 _1285_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_454_),
    .B(_463_),
    .Y(_464_)
);

NOR2X1 _1286_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_464_),
    .Y(_465_)
);

AOI22X1 _1287_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_465_),
    .B(_451_),
    .C(_455_),
    .D(_461_),
    .Y(_466_)
);

NAND3X1 _1288_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_445_),
    .C(_446_),
    .Y(_467_)
);

NOR2X1 _1289_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_467_),
    .B(_464_),
    .Y(_468_)
);

INVX1 _1290_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_448_),
    .Y(_469_)
);

INVX1 _1291_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [5]),
    .Y(_470_)
);

NAND2X1 _1292_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [4]),
    .B(_470_),
    .Y(_471_)
);

NOR2X1 _1293_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_471_),
    .B(_469_),
    .Y(_472_)
);

NAND2X1 _1294_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_472_),
    .B(_468_),
    .Y(_473_)
);

NAND2X1 _1295_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_456_),
    .B(_462_),
    .Y(_474_)
);

NAND2X1 _1296_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_452_),
    .Y(_475_)
);

NOR2X1 _1297_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_475_),
    .B(_474_),
    .Y(_476_)
);

AND2X2 _1298_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_451_),
    .B(_476_),
    .Y(_477_)
);

INVX1 _1299_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [9]),
    .Y(_478_)
);

AND2X2 _1300_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_478_),
    .B(\byte_controller.bit_controller.c_state [8]),
    .Y(_479_)
);

NAND2X1 _1301_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_479_),
    .B(_477_),
    .Y(_480_)
);

NAND3X1 _1302_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_473_),
    .B(_480_),
    .C(_466_),
    .Y(_481_)
);

INVX2 _1303_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_en ),
    .Y(_482_)
);

NOR2X1 _1304_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf2),
    .B(\byte_controller.bit_controller.al ),
    .Y(_483_)
);

INVX2 _1305_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_483_),
    .Y(_484_)
);

NOR2X1 _1306_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_482_),
    .B(_484_),
    .Y(_485_)
);

AND2X2 _1307_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_481_),
    .B(_485_),
    .Y(_371_)
);

NAND2X1 _1308_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_452_),
    .B(_453_),
    .Y(_486_)
);

NOR2X1 _1309_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_486_),
    .B(_474_),
    .Y(_487_)
);

INVX2 _1310_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_467_),
    .Y(_488_)
);

NAND2X1 _1311_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_487_),
    .Y(_489_)
);

NOR2X1 _1312_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_450_),
    .B(_489_),
    .Y(_490_)
);

INVX1 _1313_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_stop ),
    .Y(_491_)
);

NAND3X1 _1314_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sto_condition ),
    .B(_442_),
    .C(_491_),
    .Y(_492_)
);

NOR2X1 _1315_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf1),
    .B(\byte_controller.bit_controller.sSDA ),
    .Y(_493_)
);

NAND3X1 _1316_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sda_chk ),
    .B(_785_),
    .C(_493_),
    .Y(_494_)
);

OAI21X1 _1317_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_492_),
    .B(_490_),
    .C(_494_),
    .Y(_366_)
);

OAI21X1 _1318_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.busy ),
    .B(\byte_controller.bit_controller.sta_condition ),
    .C(_442_),
    .Y(_495_)
);

NOR2X1 _1319_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sto_condition ),
    .B(_495_),
    .Y(_367_)
);

INVX1 _1320_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sSDA ),
    .Y(_496_)
);

NOR2X1 _1321_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.dSDA ),
    .B(_496_),
    .Y(_497_)
);

NAND2X1 _1322_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sSCL ),
    .B(_497_),
    .Y(_498_)
);

NOR2X1 _1323_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf0),
    .B(_498_),
    .Y(_379_)
);

INVX1 _1324_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_493_),
    .Y(_373_)
);

NAND2X1 _1325_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sSCL ),
    .B(\byte_controller.bit_controller.dSDA ),
    .Y(_499_)
);

NOR2X1 _1326_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_499_),
    .B(_373_),
    .Y(_378_)
);

INVX2 _1327_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .Y(_500_)
);

NOR2X1 _1328_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [11]),
    .B(\byte_controller.bit_controller.filter_cnt [12]),
    .Y(_501_)
);

NOR2X1 _1329_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [10]),
    .B(\byte_controller.bit_controller.filter_cnt [13]),
    .Y(_502_)
);

NAND2X1 _1330_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_501_),
    .B(_502_),
    .Y(_503_)
);

INVX1 _1331_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_503_),
    .Y(_504_)
);

INVX1 _1332_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [6]),
    .Y(_505_)
);

INVX1 _1333_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [4]),
    .Y(_506_)
);

INVX1 _1334_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [2]),
    .Y(_507_)
);

NOR2X1 _1335_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [1]),
    .B(\byte_controller.bit_controller.filter_cnt [0]),
    .Y(_508_)
);

NAND2X1 _1336_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_507_),
    .B(_508_),
    .Y(_509_)
);

NOR2X1 _1337_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [3]),
    .B(_509_),
    .Y(_510_)
);

NAND2X1 _1338_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_506_),
    .B(_510_),
    .Y(_511_)
);

NOR2X1 _1339_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [5]),
    .B(_511_),
    .Y(_512_)
);

NAND2X1 _1340_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_505_),
    .B(_512_),
    .Y(_513_)
);

NOR2X1 _1341_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [7]),
    .B(_513_),
    .Y(_514_)
);

NOR2X1 _1342_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [9]),
    .B(\byte_controller.bit_controller.filter_cnt [8]),
    .Y(_515_)
);

NAND3X1 _1343_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_504_),
    .B(_515_),
    .C(_514_),
    .Y(_516_)
);

OAI21X1 _1344_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [2]),
    .B(_516_),
    .C(_500_),
    .Y(_517_)
);

NOR2X1 _1345_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [0]),
    .B(_517_),
    .Y(_374_[0])
);

INVX1 _1346_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [3]),
    .Y(_518_)
);

OR2X2 _1347_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_513_),
    .B(\byte_controller.bit_controller.filter_cnt [7]),
    .Y(_519_)
);

NAND2X1 _1348_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_515_),
    .B(_504_),
    .Y(_520_)
);

NOR2X1 _1349_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_520_),
    .B(_519_),
    .Y(_521_)
);

AND2X2 _1350_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [1]),
    .B(\byte_controller.bit_controller.filter_cnt [0]),
    .Y(_522_)
);

OAI21X1 _1351_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_508_),
    .B(_522_),
    .C(_500_),
    .Y(_523_)
);

AOI21X1 _1352_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_521_),
    .B(_518_),
    .C(_523_),
    .Y(_374_[1])
);

INVX1 _1353_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [4]),
    .Y(_524_)
);

OAI21X1 _1354_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [1]),
    .B(\byte_controller.bit_controller.filter_cnt [0]),
    .C(\byte_controller.bit_controller.filter_cnt [2]),
    .Y(_525_)
);

NAND2X1 _1355_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_525_),
    .B(_509_),
    .Y(_526_)
);

NAND2X1 _1356_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_500_),
    .B(_526_),
    .Y(_527_)
);

AOI21X1 _1357_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_521_),
    .B(_524_),
    .C(_527_),
    .Y(_374_[2])
);

INVX1 _1358_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [5]),
    .Y(_528_)
);

AND2X2 _1359_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_509_),
    .B(\byte_controller.bit_controller.filter_cnt [3]),
    .Y(_529_)
);

OAI21X1 _1360_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_510_),
    .B(_529_),
    .C(_500_),
    .Y(_530_)
);

AOI21X1 _1361_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_521_),
    .B(_528_),
    .C(_530_),
    .Y(_374_[3])
);

INVX1 _1362_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [6]),
    .Y(_531_)
);

INVX1 _1363_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_511_),
    .Y(_532_)
);

NOR2X1 _1364_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_506_),
    .B(_510_),
    .Y(_533_)
);

OAI21X1 _1365_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_533_),
    .B(_532_),
    .C(_500_),
    .Y(_534_)
);

AOI21X1 _1366_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_521_),
    .B(_531_),
    .C(_534_),
    .Y(_374_[4])
);

INVX1 _1367_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_512_),
    .Y(_535_)
);

NAND2X1 _1368_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [5]),
    .B(_511_),
    .Y(_536_)
);

OAI21X1 _1369_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [7]),
    .B(_516_),
    .C(_500_),
    .Y(_537_)
);

AOI21X1 _1370_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_535_),
    .B(_536_),
    .C(_537_),
    .Y(_374_[5])
);

INVX1 _1371_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [8]),
    .Y(_538_)
);

OAI21X1 _1372_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [5]),
    .B(_511_),
    .C(\byte_controller.bit_controller.filter_cnt [6]),
    .Y(_539_)
);

NAND2X1 _1373_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_539_),
    .B(_513_),
    .Y(_540_)
);

NAND2X1 _1374_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_500_),
    .B(_540_),
    .Y(_541_)
);

AOI21X1 _1375_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_521_),
    .B(_538_),
    .C(_541_),
    .Y(_374_[6])
);

OAI21X1 _1376_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [6]),
    .B(_535_),
    .C(\byte_controller.bit_controller.filter_cnt [7]),
    .Y(_542_)
);

OAI21X1 _1377_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [9]),
    .B(_520_),
    .C(_514_),
    .Y(_543_)
);

AOI21X1 _1378_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543_),
    .B(_542_),
    .C(_443_),
    .Y(_374_[7])
);

NOR3X1 _1379_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [7]),
    .B(\byte_controller.bit_controller.filter_cnt [8]),
    .C(_513_),
    .Y(_544_)
);

INVX1 _1380_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [8]),
    .Y(_545_)
);

NOR2X1 _1381_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_545_),
    .B(_514_),
    .Y(_546_)
);

OAI21X1 _1382_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_544_),
    .B(_546_),
    .C(_516_),
    .Y(_547_)
);

NAND2X1 _1383_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [10]),
    .B(_521_),
    .Y(_548_)
);

AOI21X1 _1384_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_547_),
    .B(_548_),
    .C(_443_),
    .Y(_374_[8])
);

OAI21X1 _1385_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [8]),
    .B(_519_),
    .C(\byte_controller.bit_controller.filter_cnt [9]),
    .Y(_549_)
);

AND2X2 _1386_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_514_),
    .B(_515_),
    .Y(_550_)
);

OAI21X1 _1387_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [11]),
    .B(_503_),
    .C(_550_),
    .Y(_551_)
);

AOI21X1 _1388_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_551_),
    .B(_549_),
    .C(_443_),
    .Y(_374_[9])
);

INVX1 _1389_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [10]),
    .Y(_552_)
);

NAND3X1 _1390_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_552_),
    .B(_515_),
    .C(_514_),
    .Y(_553_)
);

NAND2X1 _1391_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_515_),
    .B(_514_),
    .Y(_554_)
);

NAND2X1 _1392_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [10]),
    .B(_554_),
    .Y(_555_)
);

OAI21X1 _1393_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [12]),
    .B(_516_),
    .C(_500_),
    .Y(_556_)
);

AOI21X1 _1394_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_553_),
    .B(_555_),
    .C(_556_),
    .Y(_374_[10])
);

OAI21X1 _1395_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [10]),
    .B(_554_),
    .C(\byte_controller.bit_controller.filter_cnt [11]),
    .Y(_557_)
);

INVX1 _1396_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [11]),
    .Y(_558_)
);

NAND3X1 _1397_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_558_),
    .B(_552_),
    .C(_550_),
    .Y(_559_)
);

OAI21X1 _1398_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [13]),
    .B(_516_),
    .C(_500_),
    .Y(_560_)
);

AOI21X1 _1399_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_559_),
    .B(_557_),
    .C(_560_),
    .Y(_374_[11])
);

OAI21X1 _1400_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [11]),
    .B(_553_),
    .C(\byte_controller.bit_controller.filter_cnt [12]),
    .Y(_561_)
);

NAND3X1 _1401_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_552_),
    .B(_501_),
    .C(_550_),
    .Y(_562_)
);

OAI21X1 _1402_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [14]),
    .B(_516_),
    .C(_500_),
    .Y(_563_)
);

AOI21X1 _1403_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_562_),
    .C(_563_),
    .Y(_374_[12])
);

INVX1 _1404_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_501_),
    .Y(_564_)
);

OAI21X1 _1405_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_564_),
    .B(_553_),
    .C(\byte_controller.bit_controller.filter_cnt [13]),
    .Y(_565_)
);

NAND2X1 _1406_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [15]),
    .B(_521_),
    .Y(_566_)
);

AOI21X1 _1407_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_566_),
    .B(_565_),
    .C(_443_),
    .Y(_374_[13])
);

AND2X2 _1408_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(sda_pad_i),
    .Y(_369_[0])
);

AND2X2 _1409_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(\byte_controller.bit_controller.cSDA [0]),
    .Y(_369_[1])
);

AND2X2 _1410_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(scl_pad_i),
    .Y(_368_[0])
);

AND2X2 _1411_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(\byte_controller.bit_controller.cSCL [0]),
    .Y(_368_[1])
);

INVX1 _1412_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sSCL ),
    .Y(_567_)
);

INVX1 _1413_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.slave_wait ),
    .Y(_568_)
);

OAI21X1 _1414_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.dscl_oen ),
    .B(_440_),
    .C(_568_),
    .Y(_569_)
);

AND2X2 _1415_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_569_),
    .B(_567_),
    .Y(_377_)
);

NAND2X1 _1416_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(_567_),
    .Y(_372_)
);

INVX1 _1417_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSDA [0]),
    .Y(_570_)
);

INVX1 _1418_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSDA [1]),
    .Y(_571_)
);

INVX1 _1419_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSDA [2]),
    .Y(_572_)
);

OAI21X1 _1420_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_570_),
    .B(_572_),
    .C(_571_),
    .Y(_573_)
);

OAI21X1 _1421_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSDA [0]),
    .B(\byte_controller.bit_controller.fSDA [2]),
    .C(_573_),
    .Y(_574_)
);

NAND2X1 _1422_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(_574_),
    .Y(_376_)
);

INVX1 _1423_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSCL [0]),
    .Y(_575_)
);

INVX1 _1424_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSCL [1]),
    .Y(_576_)
);

INVX1 _1425_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSCL [2]),
    .Y(_577_)
);

OAI21X1 _1426_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_575_),
    .B(_577_),
    .C(_576_),
    .Y(_578_)
);

OAI21X1 _1427_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSCL [0]),
    .B(\byte_controller.bit_controller.fSCL [2]),
    .C(_578_),
    .Y(_579_)
);

NAND2X1 _1428_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(_579_),
    .Y(_375_)
);

OR2X2 _1429_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_567_),
    .B(\byte_controller.bit_controller.dSCL ),
    .Y(_580_)
);

OAI21X1 _1430_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.dSCL ),
    .B(_567_),
    .C(\byte_controller.bit_controller.dout ),
    .Y(_581_)
);

OAI21X1 _1431_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_496_),
    .B(_580_),
    .C(_581_),
    .Y(_380_)
);

OAI21X1 _1432_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_520_),
    .B(_519_),
    .C(_442_),
    .Y(_582_)
);

OAI21X1 _1433_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf5),
    .B(\byte_controller.bit_controller.cSCL [1]),
    .C(_582_),
    .Y(_583_)
);

OAI21X1 _1434_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_575_),
    .B(_582_),
    .C(_583_),
    .Y(_381_)
);

OAI21X1 _1435_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .B(\byte_controller.bit_controller.fSCL [0]),
    .C(_582_),
    .Y(_584_)
);

OAI21X1 _1436_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_576_),
    .B(_582_),
    .C(_584_),
    .Y(_382_)
);

OAI21X1 _1437_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf3),
    .B(\byte_controller.bit_controller.fSCL [1]),
    .C(_582_),
    .Y(_585_)
);

OAI21X1 _1438_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_577_),
    .B(_582_),
    .C(_585_),
    .Y(_383_)
);

OAI21X1 _1439_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf2),
    .B(\byte_controller.bit_controller.cSDA [1]),
    .C(_582_),
    .Y(_586_)
);

OAI21X1 _1440_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_570_),
    .B(_582_),
    .C(_586_),
    .Y(_384_)
);

OAI21X1 _1441_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf1),
    .B(\byte_controller.bit_controller.fSDA [0]),
    .C(_582_),
    .Y(_587_)
);

OAI21X1 _1442_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_571_),
    .B(_582_),
    .C(_587_),
    .Y(_385_)
);

OAI21X1 _1443_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf0),
    .B(\byte_controller.bit_controller.fSDA [1]),
    .C(_582_),
    .Y(_588_)
);

OAI21X1 _1444_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_572_),
    .B(_582_),
    .C(_588_),
    .Y(_386_)
);

NOR2X1 _1445_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [3]),
    .B(\byte_controller.bit_controller.cmd [2]),
    .Y(_589_)
);

NAND2X1 _1446_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [1]),
    .B(_589_),
    .Y(_590_)
);

NOR2X1 _1447_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [0]),
    .B(_590_),
    .Y(_591_)
);

OAI21X1 _1448_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_482_),
    .B(_591_),
    .C(_442_),
    .Y(_592_)
);

AOI21X1 _1449_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_482_),
    .B(_491_),
    .C(_592_),
    .Y(_387_)
);

NOR2X1 _1450_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_en ),
    .B(_484_),
    .Y(_593_)
);

NAND2X1 _1451_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sda_chk ),
    .B(_593_),
    .Y(_594_)
);

INVX1 _1452_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [11]),
    .Y(_595_)
);

AND2X2 _1453_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_595_),
    .B(\byte_controller.bit_controller.c_state [10]),
    .Y(_596_)
);

NAND2X1 _1454_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_453_),
    .Y(_597_)
);

NOR2X1 _1455_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_597_),
    .B(_474_),
    .Y(_598_)
);

AND2X2 _1456_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_451_),
    .B(_598_),
    .Y(_599_)
);

NOR2X1 _1457_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [10]),
    .B(_595_),
    .Y(_600_)
);

OAI21X1 _1458_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_596_),
    .B(_600_),
    .C(_599_),
    .Y(_601_)
);

INVX1 _1459_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_462_),
    .Y(_602_)
);

INVX1 _1460_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [15]),
    .Y(_603_)
);

NAND3X1 _1461_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [14]),
    .B(_458_),
    .C(_603_),
    .Y(_604_)
);

NOR2X1 _1462_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_604_),
    .B(_602_),
    .Y(_605_)
);

INVX1 _1463_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [12]),
    .Y(_606_)
);

NAND3X1 _1464_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [13]),
    .B(_458_),
    .C(_606_),
    .Y(_607_)
);

NOR2X1 _1465_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_607_),
    .B(_457_),
    .Y(_608_)
);

OAI21X1 _1466_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_605_),
    .B(_608_),
    .C(_455_),
    .Y(_609_)
);

INVX1 _1467_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [3]),
    .Y(_610_)
);

NOR2X1 _1468_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [2]),
    .B(_610_),
    .Y(_611_)
);

INVX1 _1469_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_446_),
    .Y(_612_)
);

NAND3X1 _1470_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_448_),
    .C(_449_),
    .Y(_613_)
);

NOR3X1 _1471_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_612_),
    .B(_613_),
    .C(_464_),
    .Y(_614_)
);

NAND2X1 _1472_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [2]),
    .B(_610_),
    .Y(_615_)
);

INVX1 _1473_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_615_),
    .Y(_616_)
);

OAI21X1 _1474_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_611_),
    .B(_616_),
    .C(_614_),
    .Y(_617_)
);

NAND3X1 _1475_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_601_),
    .B(_609_),
    .C(_617_),
    .Y(_618_)
);

INVX1 _1476_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_618_),
    .Y(_619_)
);

NOR2X1 _1477_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_613_),
    .B(_464_),
    .Y(_620_)
);

INVX1 _1478_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_445_),
    .Y(_621_)
);

INVX1 _1479_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [1]),
    .Y(_622_)
);

NAND2X1 _1480_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [0]),
    .B(_622_),
    .Y(_623_)
);

NOR2X1 _1481_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_623_),
    .B(_621_),
    .Y(_624_)
);

NAND2X1 _1482_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_624_),
    .B(_620_),
    .Y(_625_)
);

NOR2X1 _1483_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [8]),
    .B(_478_),
    .Y(_626_)
);

NAND3X1 _1484_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_626_),
    .B(_476_),
    .C(_451_),
    .Y(_627_)
);

NOR2X1 _1485_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [0]),
    .B(_622_),
    .Y(_628_)
);

AND2X2 _1486_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_628_),
    .B(_445_),
    .Y(_629_)
);

NAND2X1 _1487_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_629_),
    .B(_620_),
    .Y(_630_)
);

NAND3X1 _1488_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_627_),
    .B(_625_),
    .C(_630_),
    .Y(_631_)
);

INVX1 _1489_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_449_),
    .Y(_632_)
);

INVX1 _1490_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [6]),
    .Y(_633_)
);

NAND2X1 _1491_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [7]),
    .B(_633_),
    .Y(_634_)
);

NOR2X1 _1492_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_634_),
    .B(_632_),
    .Y(_635_)
);

NAND2X1 _1493_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_635_),
    .B(_468_),
    .Y(_636_)
);

INVX1 _1494_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [7]),
    .Y(_637_)
);

NAND2X1 _1495_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [6]),
    .B(_637_),
    .Y(_638_)
);

NOR2X1 _1496_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_638_),
    .B(_632_),
    .Y(_639_)
);

INVX1 _1497_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [4]),
    .Y(_640_)
);

NAND2X1 _1498_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [5]),
    .B(_640_),
    .Y(_641_)
);

NOR2X1 _1499_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_641_),
    .B(_469_),
    .Y(_642_)
);

OAI21X1 _1500_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_639_),
    .B(_642_),
    .C(_468_),
    .Y(_643_)
);

NAND2X1 _1501_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_636_),
    .B(_643_),
    .Y(_644_)
);

NOR3X1 _1502_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_631_),
    .B(_644_),
    .C(_481_),
    .Y(_645_)
);

NAND3X1 _1503_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_485_),
    .B(_619_),
    .C(_645_),
    .Y(_646_)
);

OAI21X1 _1504_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_490_),
    .B(_646_),
    .C(_594_),
    .Y(_388_)
);

NAND2X1 _1505_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [0]),
    .B(_593_),
    .Y(_647_)
);

NAND2X1 _1506_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_589_),
    .B(_485_),
    .Y(_648_)
);

NAND3X1 _1507_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_472_),
    .C(_487_),
    .Y(_649_)
);

NAND3X1 _1508_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_454_),
    .B(_461_),
    .C(_451_),
    .Y(_650_)
);

NAND3X1 _1509_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [16]),
    .B(_451_),
    .C(_487_),
    .Y(_651_)
);

AND2X2 _1510_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_651_),
    .B(_650_),
    .Y(_652_)
);

NAND3X1 _1511_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_480_),
    .B(_649_),
    .C(_652_),
    .Y(_653_)
);

INVX1 _1512_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_613_),
    .Y(_654_)
);

NAND3X1 _1513_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_654_),
    .B(_629_),
    .C(_487_),
    .Y(_655_)
);

NAND3X1 _1514_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_654_),
    .B(_624_),
    .C(_487_),
    .Y(_656_)
);

NAND3X1 _1515_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_655_),
    .B(_627_),
    .C(_656_),
    .Y(_657_)
);

NAND3X1 _1516_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_642_),
    .C(_487_),
    .Y(_658_)
);

NAND3X1 _1517_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_639_),
    .C(_487_),
    .Y(_659_)
);

NAND3X1 _1518_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_635_),
    .C(_487_),
    .Y(_660_)
);

NAND3X1 _1519_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_658_),
    .B(_659_),
    .C(_660_),
    .Y(_661_)
);

OR2X2 _1520_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_657_),
    .B(_661_),
    .Y(_662_)
);

NOR3X1 _1521_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_653_),
    .B(_618_),
    .C(_662_),
    .Y(_663_)
);

INVX1 _1522_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [0]),
    .Y(_664_)
);

NOR2X1 _1523_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [1]),
    .B(_664_),
    .Y(_665_)
);

INVX1 _1524_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [14]),
    .Y(_666_)
);

NAND2X1 _1525_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [15]),
    .B(_666_),
    .Y(_667_)
);

NOR2X1 _1526_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_667_),
    .B(_602_),
    .Y(_668_)
);

NAND3X1 _1527_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_668_),
    .C(_455_),
    .Y(_669_)
);

NAND3X1 _1528_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_665_),
    .B(_669_),
    .C(_663_),
    .Y(_670_)
);

OAI21X1 _1529_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_648_),
    .B(_670_),
    .C(_647_),
    .Y(_389_)
);

INVX4 _1530_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_485_),
    .Y(_671_)
);

INVX4 _1531_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_593_),
    .Y(_672_)
);

OAI22X1 _1532_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_622_),
    .B(_672_),
    .C(_671_),
    .D(_656_),
    .Y(_390_)
);

NAND2X1 _1533_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [2]),
    .B(_593_),
    .Y(_673_)
);

OAI21X1 _1534_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_671_),
    .B(_655_),
    .C(_673_),
    .Y(_391_)
);

NAND3X1 _1535_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_485_),
    .B(_616_),
    .C(_614_),
    .Y(_674_)
);

OAI21X1 _1536_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_610_),
    .B(_672_),
    .C(_674_),
    .Y(_392_)
);

NAND3X1 _1537_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_485_),
    .B(_611_),
    .C(_614_),
    .Y(_675_)
);

OAI21X1 _1538_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_640_),
    .B(_672_),
    .C(_675_),
    .Y(_393_)
);

NAND3X1 _1539_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [15]),
    .B(_458_),
    .C(_666_),
    .Y(_676_)
);

NOR2X1 _1540_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_676_),
    .B(_602_),
    .Y(_677_)
);

NAND2X1 _1541_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_677_),
    .B(_455_),
    .Y(_678_)
);

NAND2X1 _1542_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_591_),
    .B(_678_),
    .Y(_679_)
);

OAI22X1 _1543_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_470_),
    .B(_672_),
    .C(_679_),
    .D(_646_),
    .Y(_394_)
);

OAI22X1 _1544_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_633_),
    .B(_672_),
    .C(_671_),
    .D(_658_),
    .Y(_395_)
);

OAI22X1 _1545_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_637_),
    .B(_672_),
    .C(_671_),
    .D(_659_),
    .Y(_396_)
);

NAND2X1 _1546_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [8]),
    .B(_593_),
    .Y(_680_)
);

OAI21X1 _1547_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_671_),
    .B(_660_),
    .C(_680_),
    .Y(_397_)
);

NAND2X1 _1548_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [9]),
    .B(_593_),
    .Y(_681_)
);

NOR2X1 _1549_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [1]),
    .B(\byte_controller.bit_controller.cmd [0]),
    .Y(_682_)
);

NAND3X1 _1550_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_669_),
    .B(_682_),
    .C(_663_),
    .Y(_683_)
);

INVX1 _1551_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [2]),
    .Y(_684_)
);

NAND3X1 _1552_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [3]),
    .B(_684_),
    .C(_485_),
    .Y(_685_)
);

OAI21X1 _1553_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_685_),
    .B(_683_),
    .C(_681_),
    .Y(_398_)
);

NAND2X1 _1554_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [10]),
    .B(_593_),
    .Y(_686_)
);

OAI21X1 _1555_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_671_),
    .B(_627_),
    .C(_686_),
    .Y(_399_)
);

NAND2X1 _1556_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_596_),
    .B(_599_),
    .Y(_687_)
);

OAI22X1 _1557_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_595_),
    .B(_672_),
    .C(_671_),
    .D(_687_),
    .Y(_400_)
);

NAND2X1 _1558_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_600_),
    .B(_599_),
    .Y(_688_)
);

OAI22X1 _1559_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_606_),
    .B(_672_),
    .C(_671_),
    .D(_688_),
    .Y(_401_)
);

NAND2X1 _1560_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [13]),
    .B(_593_),
    .Y(_689_)
);

NOR2X1 _1561_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [3]),
    .B(_684_),
    .Y(_690_)
);

NAND2X1 _1562_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_690_),
    .B(_485_),
    .Y(_691_)
);

OAI21X1 _1563_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_691_),
    .B(_683_),
    .C(_689_),
    .Y(_402_)
);

AND2X2 _1564_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_455_),
    .B(_608_),
    .Y(_692_)
);

NAND2X1 _1565_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_485_),
    .B(_692_),
    .Y(_693_)
);

OAI21X1 _1566_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_666_),
    .B(_672_),
    .C(_693_),
    .Y(_403_)
);

NAND2X1 _1567_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_605_),
    .B(_455_),
    .Y(_694_)
);

OAI22X1 _1568_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_603_),
    .B(_672_),
    .C(_671_),
    .D(_694_),
    .Y(_404_)
);

OAI22X1 _1569_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_672_),
    .C(_671_),
    .D(_678_),
    .Y(_405_)
);

OAI21X1 _1570_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_482_),
    .B(_490_),
    .C(_483_),
    .Y(_695_)
);

NAND3X1 _1571_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_651_),
    .B(_609_),
    .C(_669_),
    .Y(_696_)
);

AOI21X1 _1572_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_477_),
    .B(_479_),
    .C(_484_),
    .Y(_697_)
);

NAND3X1 _1573_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_650_),
    .B(_601_),
    .C(_697_),
    .Y(_698_)
);

OR2X2 _1574_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_698_),
    .B(_631_),
    .Y(_699_)
);

AOI21X1 _1575_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.din ),
    .B(_696_),
    .C(_699_),
    .Y(_700_)
);

NOR2X1 _1576_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_785_),
    .B(_695_),
    .Y(_701_)
);

AOI21X1 _1577_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_700_),
    .B(_695_),
    .C(_701_),
    .Y(_406_)
);

OAI21X1 _1578_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_671_),
    .B(_625_),
    .C(_695_),
    .Y(_702_)
);

NOR2X1 _1579_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_484_),
    .B(_702_),
    .Y(_703_)
);

OAI21X1 _1580_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_472_),
    .B(_642_),
    .C(_468_),
    .Y(_704_)
);

AOI21X1 _1581_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_477_),
    .B(_626_),
    .C(_692_),
    .Y(_705_)
);

NAND3X1 _1582_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_466_),
    .B(_704_),
    .C(_705_),
    .Y(_706_)
);

AOI22X1 _1583_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440_),
    .B(_702_),
    .C(_706_),
    .D(_703_),
    .Y(_407_)
);

INVX1 _1584_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [0]),
    .Y(_707_)
);

AND2X2 _1585_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_439_),
    .B(_444_),
    .Y(_708_)
);

NAND2X1 _1586_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.slave_wait ),
    .B(_708_),
    .Y(_709_)
);

INVX4 _1587_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_709_),
    .Y(_710_)
);

NAND2X1 _1588_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(_708_),
    .Y(_711_)
);

OAI22X1 _1589_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [0]),
    .B(_708_),
    .C(_707_),
    .D(_711_),
    .Y(_712_)
);

AOI21X1 _1590_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_707_),
    .B(_710_),
    .C(_712_),
    .Y(_408_)
);

INVX1 _1591_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [1]),
    .Y(_713_)
);

INVX4 _1592_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_711_),
    .Y(_714_)
);

INVX1 _1593_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_426_),
    .Y(_715_)
);

NAND2X1 _1594_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [1]),
    .B(\byte_controller.bit_controller.cnt [0]),
    .Y(_716_)
);

NAND2X1 _1595_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_716_),
    .B(_715_),
    .Y(_717_)
);

AOI22X1 _1596_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [1]),
    .B(_370_),
    .C(_717_),
    .D(_714_),
    .Y(_718_)
);

OAI21X1 _1597_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_713_),
    .B(_709_),
    .C(_718_),
    .Y(_409_)
);

NAND2X1 _1598_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_425_),
    .B(_426_),
    .Y(_719_)
);

OAI21X1 _1599_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [1]),
    .B(\byte_controller.bit_controller.cnt [0]),
    .C(\byte_controller.bit_controller.cnt [2]),
    .Y(_720_)
);

NAND2X1 _1600_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_720_),
    .B(_719_),
    .Y(_721_)
);

AOI22X1 _1601_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [2]),
    .B(_370_),
    .C(_721_),
    .D(_714_),
    .Y(_722_)
);

OAI21X1 _1602_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_425_),
    .B(_709_),
    .C(_722_),
    .Y(_410_)
);

OAI21X1 _1603_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [2]),
    .B(_715_),
    .C(\byte_controller.bit_controller.cnt [3]),
    .Y(_723_)
);

NAND2X1 _1604_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_427_),
    .B(_723_),
    .Y(_724_)
);

AOI22X1 _1605_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [3]),
    .B(_370_),
    .C(_724_),
    .D(_714_),
    .Y(_725_)
);

OAI21X1 _1606_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_424_),
    .B(_709_),
    .C(_725_),
    .Y(_411_)
);

OAI21X1 _1607_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [3]),
    .B(_719_),
    .C(\byte_controller.bit_controller.cnt [4]),
    .Y(_726_)
);

OR2X2 _1608_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_427_),
    .B(\byte_controller.bit_controller.cnt [4]),
    .Y(_727_)
);

NAND2X1 _1609_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_726_),
    .B(_727_),
    .Y(_728_)
);

AOI22X1 _1610_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [4]),
    .B(_370_),
    .C(_728_),
    .D(_714_),
    .Y(_729_)
);

OAI21X1 _1611_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_428_),
    .B(_709_),
    .C(_729_),
    .Y(_412_)
);

INVX1 _1612_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [5]),
    .Y(_730_)
);

OAI21X1 _1613_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [4]),
    .B(_427_),
    .C(\byte_controller.bit_controller.cnt [5]),
    .Y(_731_)
);

OR2X2 _1614_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_727_),
    .B(\byte_controller.bit_controller.cnt [5]),
    .Y(_732_)
);

NAND2X1 _1615_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_731_),
    .B(_732_),
    .Y(_733_)
);

AOI22X1 _1616_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [5]),
    .B(_370_),
    .C(_733_),
    .D(_714_),
    .Y(_734_)
);

OAI21X1 _1617_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_730_),
    .B(_709_),
    .C(_734_),
    .Y(_413_)
);

OAI21X1 _1618_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [5]),
    .B(_727_),
    .C(\byte_controller.bit_controller.cnt [6]),
    .Y(_735_)
);

INVX1 _1619_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_735_),
    .Y(_736_)
);

NOR2X1 _1620_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [6]),
    .B(_732_),
    .Y(_737_)
);

OAI21X1 _1621_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_736_),
    .B(_737_),
    .C(_714_),
    .Y(_738_)
);

NAND2X1 _1622_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [6]),
    .B(_710_),
    .Y(_739_)
);

NAND2X1 _1623_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [6]),
    .B(_370_),
    .Y(_740_)
);

NAND3X1 _1624_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_740_),
    .B(_739_),
    .C(_738_),
    .Y(_414_)
);

OAI21X1 _1625_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_429_),
    .B(_737_),
    .C(_432_),
    .Y(_741_)
);

NAND2X1 _1626_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(_741_),
    .Y(_742_)
);

AOI22X1 _1627_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [7]),
    .B(_370_),
    .C(\byte_controller.bit_controller.cnt [7]),
    .D(_710_),
    .Y(_743_)
);

OAI21X1 _1628_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_370_),
    .B(_742_),
    .C(_743_),
    .Y(_415_)
);

INVX1 _1629_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [8]),
    .Y(_744_)
);

NOR2X1 _1630_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_427_),
    .B(_431_),
    .Y(_745_)
);

NAND2X1 _1631_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_744_),
    .B(_745_),
    .Y(_746_)
);

OAI21X1 _1632_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_427_),
    .B(_431_),
    .C(\byte_controller.bit_controller.cnt [8]),
    .Y(_747_)
);

NAND2X1 _1633_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_747_),
    .B(_746_),
    .Y(_748_)
);

AOI22X1 _1634_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [8]),
    .B(_370_),
    .C(_748_),
    .D(_714_),
    .Y(_749_)
);

OAI21X1 _1635_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_744_),
    .B(_709_),
    .C(_749_),
    .Y(_416_)
);

NOR2X1 _1636_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [9]),
    .B(_746_),
    .Y(_750_)
);

AND2X2 _1637_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_746_),
    .B(\byte_controller.bit_controller.cnt [9]),
    .Y(_751_)
);

OAI21X1 _1638_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_750_),
    .B(_751_),
    .C(_714_),
    .Y(_752_)
);

NAND2X1 _1639_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [9]),
    .B(_710_),
    .Y(_753_)
);

NAND2X1 _1640_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [9]),
    .B(_370_),
    .Y(_754_)
);

NAND3X1 _1641_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_754_),
    .B(_753_),
    .C(_752_),
    .Y(_417_)
);

INVX1 _1642_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_434_),
    .Y(_755_)
);

OAI21X1 _1643_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [9]),
    .B(_746_),
    .C(\byte_controller.bit_controller.cnt [10]),
    .Y(_756_)
);

OAI21X1 _1644_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_746_),
    .B(_755_),
    .C(_756_),
    .Y(_757_)
);

OAI21X1 _1645_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_370_),
    .B(_757_),
    .C(_714_),
    .Y(_758_)
);

AOI22X1 _1646_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [10]),
    .B(_370_),
    .C(\byte_controller.bit_controller.cnt [10]),
    .D(_710_),
    .Y(_759_)
);

NAND2X1 _1647_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_758_),
    .B(_759_),
    .Y(_418_)
);

INVX1 _1648_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [11]),
    .Y(_760_)
);

AOI21X1 _1649_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_433_),
    .B(_434_),
    .C(_760_),
    .Y(_761_)
);

NOR3X1 _1650_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [11]),
    .B(_755_),
    .C(_746_),
    .Y(_762_)
);

OAI21X1 _1651_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_761_),
    .B(_762_),
    .C(_714_),
    .Y(_763_)
);

AOI22X1 _1652_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [11]),
    .B(_370_),
    .C(\byte_controller.bit_controller.cnt [11]),
    .D(_710_),
    .Y(_764_)
);

NAND2X1 _1653_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_763_),
    .B(_764_),
    .Y(_419_)
);

INVX1 _1654_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [12]),
    .Y(_765_)
);

NOR2X1 _1655_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_765_),
    .B(_762_),
    .Y(_766_)
);

AND2X2 _1656_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_762_),
    .B(_765_),
    .Y(_767_)
);

OAI21X1 _1657_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_766_),
    .B(_767_),
    .C(_714_),
    .Y(_768_)
);

AOI22X1 _1658_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [12]),
    .B(_370_),
    .C(\byte_controller.bit_controller.cnt [12]),
    .D(_710_),
    .Y(_769_)
);

NAND2X1 _1659_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_768_),
    .B(_769_),
    .Y(_420_)
);

INVX1 _1660_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [13]),
    .Y(_770_)
);

INVX1 _1661_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [13]),
    .Y(_771_)
);

OAI21X1 _1662_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_771_),
    .B(_708_),
    .C(_711_),
    .Y(_772_)
);

NAND3X1 _1663_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_770_),
    .B(_765_),
    .C(_762_),
    .Y(_773_)
);

INVX1 _1664_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_773_),
    .Y(_774_)
);

OAI21X1 _1665_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_770_),
    .B(_767_),
    .C(_708_),
    .Y(_775_)
);

OAI21X1 _1666_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_774_),
    .B(_775_),
    .C(_772_),
    .Y(_776_)
);

OAI21X1 _1667_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_770_),
    .B(_709_),
    .C(_776_),
    .Y(_421_)
);

NAND2X1 _1668_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [14]),
    .B(_710_),
    .Y(_777_)
);

OAI21X1 _1669_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [14]),
    .B(_773_),
    .C(_708_),
    .Y(_778_)
);

AOI21X1 _1670_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [14]),
    .B(_773_),
    .C(_778_),
    .Y(_779_)
);

OAI21X1 _1671_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [14]),
    .B(_708_),
    .C(_709_),
    .Y(_780_)
);

OAI21X1 _1672_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_780_),
    .B(_779_),
    .C(_777_),
    .Y(_422_)
);

INVX1 _1673_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [15]),
    .Y(_781_)
);

NAND2X1 _1674_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [15]),
    .B(_370_),
    .Y(_782_)
);

AND2X2 _1675_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_778_),
    .B(_709_),
    .Y(_783_)
);

OAI21X1 _1676_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_781_),
    .B(_783_),
    .C(_782_),
    .Y(_423_)
);

DFFPOSX1 _1677_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_784_),
    .Q(\byte_controller.bit_controller.dscl_oen )
);

DFFPOSX1 _1678_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_380_),
    .Q(\byte_controller.bit_controller.dout )
);

DFFSR _1679_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf1),
    .D(_371_),
    .Q(\byte_controller.bit_controller.cmd_ack ),
    .R(arst_i_bF$buf5),
    .S(vdd)
);

DFFSR _1680_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf0),
    .D(_366_),
    .Q(\byte_controller.bit_controller.al ),
    .R(arst_i_bF$buf4),
    .S(vdd)
);

DFFSR _1681_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_367_),
    .Q(\byte_controller.bit_controller.busy ),
    .R(arst_i_bF$buf3),
    .S(vdd)
);

DFFSR _1682_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_378_),
    .Q(\byte_controller.bit_controller.sta_condition ),
    .R(arst_i_bF$buf2),
    .S(vdd)
);

DFFSR _1683_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_379_),
    .Q(\byte_controller.bit_controller.sto_condition ),
    .R(arst_i_bF$buf1),
    .S(vdd)
);

DFFSR _1684_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_375_),
    .Q(\byte_controller.bit_controller.sSCL ),
    .R(vdd),
    .S(arst_i_bF$buf0)
);

DFFSR _1685_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_376_),
    .Q(\byte_controller.bit_controller.sSDA ),
    .R(vdd),
    .S(arst_i_bF$buf10)
);

DFFSR _1686_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_372_),
    .Q(\byte_controller.bit_controller.dSCL ),
    .R(vdd),
    .S(arst_i_bF$buf9)
);

DFFSR _1687_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_373_),
    .Q(\byte_controller.bit_controller.dSDA ),
    .R(vdd),
    .S(arst_i_bF$buf8)
);

DFFSR _1688_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_374_[0]),
    .Q(\byte_controller.bit_controller.filter_cnt [0]),
    .R(arst_i_bF$buf7),
    .S(vdd)
);

DFFSR _1689_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_374_[1]),
    .Q(\byte_controller.bit_controller.filter_cnt [1]),
    .R(arst_i_bF$buf6),
    .S(vdd)
);

DFFSR _1690_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_374_[2]),
    .Q(\byte_controller.bit_controller.filter_cnt [2]),
    .R(arst_i_bF$buf5),
    .S(vdd)
);

DFFSR _1691_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf1),
    .D(_374_[3]),
    .Q(\byte_controller.bit_controller.filter_cnt [3]),
    .R(arst_i_bF$buf4),
    .S(vdd)
);

DFFSR _1692_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf0),
    .D(_374_[4]),
    .Q(\byte_controller.bit_controller.filter_cnt [4]),
    .R(arst_i_bF$buf3),
    .S(vdd)
);

DFFSR _1693_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_374_[5]),
    .Q(\byte_controller.bit_controller.filter_cnt [5]),
    .R(arst_i_bF$buf2),
    .S(vdd)
);

DFFSR _1694_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_374_[6]),
    .Q(\byte_controller.bit_controller.filter_cnt [6]),
    .R(arst_i_bF$buf1),
    .S(vdd)
);

DFFSR _1695_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_374_[7]),
    .Q(\byte_controller.bit_controller.filter_cnt [7]),
    .R(arst_i_bF$buf0),
    .S(vdd)
);

DFFSR _1696_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_374_[8]),
    .Q(\byte_controller.bit_controller.filter_cnt [8]),
    .R(arst_i_bF$buf10),
    .S(vdd)
);

DFFSR _1697_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_374_[9]),
    .Q(\byte_controller.bit_controller.filter_cnt [9]),
    .R(arst_i_bF$buf9),
    .S(vdd)
);

DFFSR _1698_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_374_[10]),
    .Q(\byte_controller.bit_controller.filter_cnt [10]),
    .R(arst_i_bF$buf8),
    .S(vdd)
);

DFFSR _1699_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_374_[11]),
    .Q(\byte_controller.bit_controller.filter_cnt [11]),
    .R(arst_i_bF$buf7),
    .S(vdd)
);

DFFSR _1700_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_374_[12]),
    .Q(\byte_controller.bit_controller.filter_cnt [12]),
    .R(arst_i_bF$buf6),
    .S(vdd)
);

DFFSR _1701_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_374_[13]),
    .Q(\byte_controller.bit_controller.filter_cnt [13]),
    .R(arst_i_bF$buf5),
    .S(vdd)
);

DFFSR _1702_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_368_[0]),
    .Q(\byte_controller.bit_controller.cSCL [0]),
    .R(arst_i_bF$buf4),
    .S(vdd)
);

DFFSR _1703_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf1),
    .D(_368_[1]),
    .Q(\byte_controller.bit_controller.cSCL [1]),
    .R(arst_i_bF$buf3),
    .S(vdd)
);

DFFSR _1704_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf0),
    .D(_369_[0]),
    .Q(\byte_controller.bit_controller.cSDA [0]),
    .R(arst_i_bF$buf2),
    .S(vdd)
);

DFFSR _1705_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_369_[1]),
    .Q(\byte_controller.bit_controller.cSDA [1]),
    .R(arst_i_bF$buf1),
    .S(vdd)
);

DFFSR _1706_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_370_),
    .Q(\byte_controller.bit_controller.clk_en ),
    .R(vdd),
    .S(arst_i_bF$buf0)
);

DFFSR _1707_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_377_),
    .Q(\byte_controller.bit_controller.slave_wait ),
    .R(arst_i_bF$buf10),
    .S(vdd)
);

DFFSR _1708_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_381_),
    .Q(\byte_controller.bit_controller.fSCL [0]),
    .R(vdd),
    .S(arst_i_bF$buf9)
);

DFFSR _1709_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_382_),
    .Q(\byte_controller.bit_controller.fSCL [1]),
    .R(vdd),
    .S(arst_i_bF$buf8)
);

DFFSR _1710_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_383_),
    .Q(\byte_controller.bit_controller.fSCL [2]),
    .R(vdd),
    .S(arst_i_bF$buf7)
);

DFFSR _1711_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_384_),
    .Q(\byte_controller.bit_controller.fSDA [0]),
    .R(vdd),
    .S(arst_i_bF$buf6)
);

DFFSR _1712_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_385_),
    .Q(\byte_controller.bit_controller.fSDA [1]),
    .R(vdd),
    .S(arst_i_bF$buf5)
);

DFFSR _1713_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_386_),
    .Q(\byte_controller.bit_controller.fSDA [2]),
    .R(vdd),
    .S(arst_i_bF$buf4)
);

DFFSR _1714_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_387_),
    .Q(\byte_controller.bit_controller.cmd_stop ),
    .R(arst_i_bF$buf3),
    .S(vdd)
);

DFFSR _1715_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf1),
    .D(_388_),
    .Q(\byte_controller.bit_controller.sda_chk ),
    .R(arst_i_bF$buf2),
    .S(vdd)
);

DFFSR _1716_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf0),
    .D(_389_),
    .Q(\byte_controller.bit_controller.c_state [0]),
    .R(arst_i_bF$buf1),
    .S(vdd)
);

DFFSR _1717_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_390_),
    .Q(\byte_controller.bit_controller.c_state [1]),
    .R(arst_i_bF$buf0),
    .S(vdd)
);

DFFSR _1718_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_391_),
    .Q(\byte_controller.bit_controller.c_state [2]),
    .R(arst_i_bF$buf10),
    .S(vdd)
);

DFFSR _1719_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_392_),
    .Q(\byte_controller.bit_controller.c_state [3]),
    .R(arst_i_bF$buf9),
    .S(vdd)
);

DFFSR _1720_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_393_),
    .Q(\byte_controller.bit_controller.c_state [4]),
    .R(arst_i_bF$buf8),
    .S(vdd)
);

DFFSR _1721_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_394_),
    .Q(\byte_controller.bit_controller.c_state [5]),
    .R(arst_i_bF$buf7),
    .S(vdd)
);

DFFSR _1722_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_395_),
    .Q(\byte_controller.bit_controller.c_state [6]),
    .R(arst_i_bF$buf6),
    .S(vdd)
);

DFFSR _1723_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_396_),
    .Q(\byte_controller.bit_controller.c_state [7]),
    .R(arst_i_bF$buf5),
    .S(vdd)
);

DFFSR _1724_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_397_),
    .Q(\byte_controller.bit_controller.c_state [8]),
    .R(arst_i_bF$buf4),
    .S(vdd)
);

DFFSR _1725_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_398_),
    .Q(\byte_controller.bit_controller.c_state [9]),
    .R(arst_i_bF$buf3),
    .S(vdd)
);

DFFSR _1726_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_399_),
    .Q(\byte_controller.bit_controller.c_state [10]),
    .R(arst_i_bF$buf2),
    .S(vdd)
);

DFFSR _1727_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf1),
    .D(_400_),
    .Q(\byte_controller.bit_controller.c_state [11]),
    .R(arst_i_bF$buf1),
    .S(vdd)
);

DFFSR _1728_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf0),
    .D(_401_),
    .Q(\byte_controller.bit_controller.c_state [12]),
    .R(arst_i_bF$buf0),
    .S(vdd)
);

DFFSR _1729_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_402_),
    .Q(\byte_controller.bit_controller.c_state [13]),
    .R(arst_i_bF$buf10),
    .S(vdd)
);

DFFSR _1730_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_403_),
    .Q(\byte_controller.bit_controller.c_state [14]),
    .R(arst_i_bF$buf9),
    .S(vdd)
);

DFFSR _1731_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_404_),
    .Q(\byte_controller.bit_controller.c_state [15]),
    .R(arst_i_bF$buf8),
    .S(vdd)
);

DFFSR _1732_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_405_),
    .Q(\byte_controller.bit_controller.c_state [16]),
    .R(arst_i_bF$buf7),
    .S(vdd)
);

DFFSR _1733_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_406_),
    .Q(_785_),
    .R(vdd),
    .S(arst_i_bF$buf6)
);

DFFSR _1734_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_407_),
    .Q(_784_),
    .R(vdd),
    .S(arst_i_bF$buf5)
);

DFFSR _1735_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_408_),
    .Q(\byte_controller.bit_controller.cnt [0]),
    .R(arst_i_bF$buf4),
    .S(vdd)
);

DFFSR _1736_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_409_),
    .Q(\byte_controller.bit_controller.cnt [1]),
    .R(arst_i_bF$buf3),
    .S(vdd)
);

DFFSR _1737_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_410_),
    .Q(\byte_controller.bit_controller.cnt [2]),
    .R(arst_i_bF$buf2),
    .S(vdd)
);

DFFSR _1738_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_411_),
    .Q(\byte_controller.bit_controller.cnt [3]),
    .R(arst_i_bF$buf1),
    .S(vdd)
);

DFFSR _1739_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf1),
    .D(_412_),
    .Q(\byte_controller.bit_controller.cnt [4]),
    .R(arst_i_bF$buf0),
    .S(vdd)
);

DFFSR _1740_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf0),
    .D(_413_),
    .Q(\byte_controller.bit_controller.cnt [5]),
    .R(arst_i_bF$buf10),
    .S(vdd)
);

DFFSR _1741_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf11),
    .D(_414_),
    .Q(\byte_controller.bit_controller.cnt [6]),
    .R(arst_i_bF$buf9),
    .S(vdd)
);

DFFSR _1742_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf10),
    .D(_415_),
    .Q(\byte_controller.bit_controller.cnt [7]),
    .R(arst_i_bF$buf8),
    .S(vdd)
);

DFFSR _1743_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf9),
    .D(_416_),
    .Q(\byte_controller.bit_controller.cnt [8]),
    .R(arst_i_bF$buf7),
    .S(vdd)
);

DFFSR _1744_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf8),
    .D(_417_),
    .Q(\byte_controller.bit_controller.cnt [9]),
    .R(arst_i_bF$buf6),
    .S(vdd)
);

DFFSR _1745_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf7),
    .D(_418_),
    .Q(\byte_controller.bit_controller.cnt [10]),
    .R(arst_i_bF$buf5),
    .S(vdd)
);

DFFSR _1746_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf6),
    .D(_419_),
    .Q(\byte_controller.bit_controller.cnt [11]),
    .R(arst_i_bF$buf4),
    .S(vdd)
);

DFFSR _1747_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf5),
    .D(_420_),
    .Q(\byte_controller.bit_controller.cnt [12]),
    .R(arst_i_bF$buf3),
    .S(vdd)
);

DFFSR _1748_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf4),
    .D(_421_),
    .Q(\byte_controller.bit_controller.cnt [13]),
    .R(arst_i_bF$buf2),
    .S(vdd)
);

DFFSR _1749_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf3),
    .D(_422_),
    .Q(\byte_controller.bit_controller.cnt [14]),
    .R(arst_i_bF$buf1),
    .S(vdd)
);

DFFSR _1750_ (
    .gnd(gnd),
    .vdd(vdd),
    .CLK(wb_clk_i_bF$buf2),
    .D(_423_),
    .Q(\byte_controller.bit_controller.cnt [15]),
    .R(arst_i_bF$buf0),
    .S(vdd)
);

BUFX2 _1751_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(scl_pad_o)
);

BUFX2 _1752_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_784_),
    .Y(scl_padoen_o)
);

BUFX2 _1753_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(sda_pad_o)
);

BUFX2 _1754_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_785_),
    .Y(sda_padoen_o)
);

BUFX2 _1755_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_786_),
    .Y(wb_ack_o)
);

BUFX2 _1756_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[0]),
    .Y(wb_dat_o[0])
);

BUFX2 _1757_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[1]),
    .Y(wb_dat_o[1])
);

BUFX2 _1758_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[2]),
    .Y(wb_dat_o[2])
);

BUFX2 _1759_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[3]),
    .Y(wb_dat_o[3])
);

BUFX2 _1760_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[4]),
    .Y(wb_dat_o[4])
);

BUFX2 _1761_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[5]),
    .Y(wb_dat_o[5])
);

BUFX2 _1762_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[6]),
    .Y(wb_dat_o[6])
);

BUFX2 _1763_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[7]),
    .Y(wb_dat_o[7])
);

BUFX2 _1764_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_788_),
    .Y(wb_inta_o)
);

NAND2X1 _790_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ien),
    .B(irq_flag),
    .Y(_46_)
);

NOR2X1 _791_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf5),
    .B(_46_),
    .Y(_5_)
);

INVX1 _792_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(irq_flag),
    .Y(_47_)
);

NOR2X1 _793_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.al ),
    .B(\byte_controller.cmd_ack ),
    .Y(_48_)
);

INVX4 _794_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .Y(_49_)
);

INVX1 _795_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(iack),
    .Y(_50_)
);

NAND2X1 _796_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_49_),
    .B(_50_),
    .Y(_51_)
);

AOI21X1 _797_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_47_),
    .B(_48_),
    .C(_51_),
    .Y(_1_)
);

INVX1 _798_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.read ),
    .Y(_52_)
);

INVX1 _799_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.write ),
    .Y(_53_)
);

AOI21X1 _800_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_52_),
    .B(_53_),
    .C(wb_rst_i_bF$buf3),
    .Y(_3_)
);

AND2X2 _801_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_49_),
    .B(\byte_controller.ack_out ),
    .Y(_2_)
);

INVX1 _802_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.start ),
    .Y(_54_)
);

AOI21X1 _803_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_54_),
    .B(al),
    .C(\byte_controller.bit_controller.al ),
    .Y(_55_)
);

NOR2X1 _804_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf2),
    .B(_55_),
    .Y(_0_)
);

INVX4 _805_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[2]),
    .Y(_56_)
);

NAND3X1 _806_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[0]),
    .B(wb_adr_i[1]),
    .C(_56_),
    .Y(_57_)
);

INVX2 _807_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_57_),
    .Y(_58_)
);

INVX1 _808_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ctr[0]),
    .Y(_59_)
);

INVX1 _809_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [8]),
    .Y(_60_)
);

INVX1 _810_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[1]),
    .Y(_61_)
);

NAND3X1 _811_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[0]),
    .B(_61_),
    .C(_56_),
    .Y(_62_)
);

INVX2 _812_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[0]),
    .Y(_63_)
);

NAND3X1 _813_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[1]),
    .B(_63_),
    .C(_56_),
    .Y(_64_)
);

OAI22X1 _814_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_59_),
    .B(_64_),
    .C(_60_),
    .D(_62_),
    .Y(_65_)
);

AOI21X1 _815_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [0]),
    .B(_58_),
    .C(_65_),
    .Y(_66_)
);

INVX1 _816_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [0]),
    .Y(_67_)
);

NOR2X1 _817_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[0]),
    .B(wb_adr_i[1]),
    .Y(_68_)
);

NAND3X1 _818_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(\byte_controller.bit_controller.clk_cnt [0]),
    .C(_68_),
    .Y(_69_)
);

NAND3X1 _819_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[0]),
    .B(wb_adr_i[2]),
    .C(_61_),
    .Y(_70_)
);

OAI21X1 _820_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_67_),
    .B(_70_),
    .C(_69_),
    .Y(_71_)
);

NAND3X1 _821_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[2]),
    .B(_63_),
    .C(_61_),
    .Y(_72_)
);

NAND3X1 _822_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[1]),
    .B(wb_adr_i[2]),
    .C(_63_),
    .Y(_73_)
);

OAI22X1 _823_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_50_),
    .B(_73_),
    .C(_47_),
    .D(_72_),
    .Y(_74_)
);

NOR2X1 _824_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_74_),
    .B(_71_),
    .Y(_75_)
);

NAND2X1 _825_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_66_),
    .B(_75_),
    .Y(_789_[0])
);

INVX1 _826_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ctr[1]),
    .Y(_76_)
);

INVX1 _827_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [9]),
    .Y(_77_)
);

OAI22X1 _828_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_76_),
    .B(_64_),
    .C(_77_),
    .D(_62_),
    .Y(_78_)
);

AOI21X1 _829_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [1]),
    .B(_58_),
    .C(_78_),
    .Y(_79_)
);

INVX1 _830_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [1]),
    .Y(_80_)
);

NAND3X1 _831_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(\byte_controller.bit_controller.clk_cnt [1]),
    .C(_68_),
    .Y(_81_)
);

OAI21X1 _832_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_80_),
    .B(_70_),
    .C(_81_),
    .Y(_82_)
);

INVX1 _833_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(cr[1]),
    .Y(_83_)
);

INVX1 _834_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(tip),
    .Y(_84_)
);

OAI22X1 _835_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_83_),
    .B(_73_),
    .C(_84_),
    .D(_72_),
    .Y(_85_)
);

NOR2X1 _836_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_85_),
    .B(_82_),
    .Y(_86_)
);

NAND2X1 _837_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_79_),
    .B(_86_),
    .Y(_789_[1])
);

NOR3X1 _838_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[1]),
    .B(wb_adr_i[2]),
    .C(_63_),
    .Y(_87_)
);

INVX1 _839_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(cr[2]),
    .Y(_88_)
);

NOR2X1 _840_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_88_),
    .B(_73_),
    .Y(_89_)
);

AOI21X1 _841_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [10]),
    .B(_87_),
    .C(_89_),
    .Y(_90_)
);

INVX2 _842_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_70_),
    .Y(_91_)
);

AOI22X1 _843_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_58_),
    .B(\byte_controller.dout [2]),
    .C(\byte_controller.din [2]),
    .D(_91_),
    .Y(_92_)
);

INVX1 _844_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_64_),
    .Y(_93_)
);

AND2X2 _845_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_68_),
    .B(_56_),
    .Y(_94_)
);

AOI22X1 _846_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [2]),
    .B(_94_),
    .C(ctr[2]),
    .D(_93_),
    .Y(_95_)
);

NAND3X1 _847_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_95_),
    .B(_92_),
    .C(_90_),
    .Y(_789_[2])
);

AOI22X1 _848_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [11]),
    .B(_87_),
    .C(\byte_controller.bit_controller.clk_cnt [3]),
    .D(_94_),
    .Y(_96_)
);

AOI22X1 _849_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_58_),
    .B(\byte_controller.dout [3]),
    .C(\byte_controller.din [3]),
    .D(_91_),
    .Y(_97_)
);

INVX1 _850_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.ack_in ),
    .Y(_98_)
);

NOR2X1 _851_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_98_),
    .B(_73_),
    .Y(_99_)
);

AOI21X1 _852_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_93_),
    .B(ctr[3]),
    .C(_99_),
    .Y(_100_)
);

NAND3X1 _853_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_96_),
    .B(_97_),
    .C(_100_),
    .Y(_789_[3])
);

NOR2X1 _854_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_53_),
    .B(_73_),
    .Y(_101_)
);

AOI21X1 _855_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [12]),
    .B(_87_),
    .C(_101_),
    .Y(_102_)
);

AOI22X1 _856_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_58_),
    .B(\byte_controller.dout [4]),
    .C(\byte_controller.din [4]),
    .D(_91_),
    .Y(_103_)
);

AOI22X1 _857_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [4]),
    .B(_94_),
    .C(ctr[4]),
    .D(_93_),
    .Y(_104_)
);

NAND3X1 _858_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_104_),
    .B(_103_),
    .C(_102_),
    .Y(_789_[4])
);

INVX1 _859_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [13]),
    .Y(_105_)
);

NAND3X1 _860_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(\byte_controller.bit_controller.clk_cnt [5]),
    .C(_68_),
    .Y(_106_)
);

OAI21X1 _861_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_105_),
    .B(_62_),
    .C(_106_),
    .Y(_107_)
);

AOI21X1 _862_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [5]),
    .B(_91_),
    .C(_107_),
    .Y(_108_)
);

INVX1 _863_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(al),
    .Y(_109_)
);

INVX1 _864_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [5]),
    .Y(_110_)
);

OAI22X1 _865_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_110_),
    .B(_57_),
    .C(_109_),
    .D(_72_),
    .Y(_111_)
);

INVX1 _866_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ctr[5]),
    .Y(_112_)
);

OAI22X1 _867_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_52_),
    .B(_73_),
    .C(_112_),
    .D(_64_),
    .Y(_113_)
);

NOR2X1 _868_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_111_),
    .B(_113_),
    .Y(_114_)
);

NAND2X1 _869_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_108_),
    .B(_114_),
    .Y(_789_[5])
);

INVX1 _870_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [6]),
    .Y(_115_)
);

INVX1 _871_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.busy ),
    .Y(_116_)
);

OAI22X1 _872_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_115_),
    .B(_70_),
    .C(_116_),
    .D(_72_),
    .Y(_117_)
);

AOI21X1 _873_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [6]),
    .B(_58_),
    .C(_117_),
    .Y(_118_)
);

INVX1 _874_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.stop ),
    .Y(_119_)
);

INVX1 _875_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [14]),
    .Y(_120_)
);

OAI22X1 _876_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_119_),
    .B(_73_),
    .C(_120_),
    .D(_62_),
    .Y(_121_)
);

INVX1 _877_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ien),
    .Y(_122_)
);

NAND3X1 _878_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(\byte_controller.bit_controller.clk_cnt [6]),
    .C(_68_),
    .Y(_123_)
);

OAI21X1 _879_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_122_),
    .B(_64_),
    .C(_123_),
    .Y(_124_)
);

NOR2X1 _880_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_121_),
    .B(_124_),
    .Y(_125_)
);

NAND2X1 _881_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_118_),
    .B(_125_),
    .Y(_789_[6])
);

INVX1 _882_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_72_),
    .Y(_126_)
);

INVX1 _883_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.ena ),
    .Y(_127_)
);

INVX1 _884_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [15]),
    .Y(_128_)
);

OAI22X1 _885_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_127_),
    .B(_64_),
    .C(_128_),
    .D(_62_),
    .Y(_129_)
);

AOI21X1 _886_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rxack),
    .B(_126_),
    .C(_129_),
    .Y(_130_)
);

INVX1 _887_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [7]),
    .Y(_131_)
);

NAND3X1 _888_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(\byte_controller.bit_controller.clk_cnt [7]),
    .C(_68_),
    .Y(_132_)
);

OAI21X1 _889_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_131_),
    .B(_70_),
    .C(_132_),
    .Y(_133_)
);

INVX1 _890_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [7]),
    .Y(_134_)
);

OAI22X1 _891_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_54_),
    .B(_73_),
    .C(_134_),
    .D(_57_),
    .Y(_135_)
);

NOR2X1 _892_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_),
    .B(_133_),
    .Y(_136_)
);

NAND2X1 _893_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_130_),
    .B(_136_),
    .Y(_789_[7])
);

NAND2X1 _894_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_stb_i),
    .B(wb_cyc_i),
    .Y(_137_)
);

NOR2X1 _895_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_786_),
    .B(_137_),
    .Y(_4_)
);

NAND2X1 _896_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_we_i),
    .B(_786_),
    .Y(_138_)
);

OAI21X1 _897_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_64_),
    .C(_49_),
    .Y(_139_)
);

INVX1 _898_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[1]),
    .Y(_140_)
);

NOR2X1 _899_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf1),
    .B(_140_),
    .Y(_141_)
);

NAND2X1 _900_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_141_),
    .B(_139_),
    .Y(_142_)
);

OAI21X1 _901_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_76_),
    .B(_139_),
    .C(_142_),
    .Y(_6_)
);

INVX1 _902_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ctr[2]),
    .Y(_143_)
);

INVX1 _903_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[2]),
    .Y(_144_)
);

NOR2X1 _904_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf0),
    .B(_144_),
    .Y(_145_)
);

NAND2X1 _905_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_145_),
    .B(_139_),
    .Y(_146_)
);

OAI21X1 _906_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_143_),
    .B(_139_),
    .C(_146_),
    .Y(_7_)
);

INVX1 _907_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ctr[3]),
    .Y(_147_)
);

NAND2X1 _908_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[3]),
    .B(_49_),
    .Y(_148_)
);

MUX2X1 _909_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_148_),
    .B(_147_),
    .S(_139_),
    .Y(_8_)
);

INVX1 _910_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ctr[4]),
    .Y(_149_)
);

NAND2X1 _911_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[4]),
    .B(_49_),
    .Y(_150_)
);

MUX2X1 _912_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_150_),
    .B(_149_),
    .S(_139_),
    .Y(_9_)
);

NAND2X1 _913_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[5]),
    .B(_49_),
    .Y(_151_)
);

MUX2X1 _914_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_151_),
    .B(_112_),
    .S(_139_),
    .Y(_10_)
);

NAND2X1 _915_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[6]),
    .B(_49_),
    .Y(_152_)
);

MUX2X1 _916_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_152_),
    .B(_122_),
    .S(_139_),
    .Y(_11_)
);

NAND2X1 _917_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[7]),
    .B(_49_),
    .Y(_153_)
);

MUX2X1 _918_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_153_),
    .B(_127_),
    .S(_139_),
    .Y(_12_)
);

OAI21X1 _919_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_57_),
    .C(_49_),
    .Y(_154_)
);

INVX1 _920_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[0]),
    .Y(_155_)
);

NOR2X1 _921_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf5),
    .B(_155_),
    .Y(_156_)
);

NAND2X1 _922_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_156_),
    .B(_154_),
    .Y(_157_)
);

OAI21X1 _923_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_67_),
    .B(_154_),
    .C(_157_),
    .Y(_13_)
);

NAND2X1 _924_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_141_),
    .B(_154_),
    .Y(_158_)
);

OAI21X1 _925_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_80_),
    .B(_154_),
    .C(_158_),
    .Y(_14_)
);

INVX1 _926_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [2]),
    .Y(_159_)
);

NAND2X1 _927_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_145_),
    .B(_154_),
    .Y(_160_)
);

OAI21X1 _928_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_159_),
    .B(_154_),
    .C(_160_),
    .Y(_15_)
);

INVX1 _929_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [3]),
    .Y(_161_)
);

MUX2X1 _930_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_148_),
    .B(_161_),
    .S(_154_),
    .Y(_16_)
);

INVX1 _931_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [4]),
    .Y(_162_)
);

MUX2X1 _932_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_150_),
    .B(_162_),
    .S(_154_),
    .Y(_17_)
);

INVX1 _933_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [5]),
    .Y(_163_)
);

MUX2X1 _934_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_151_),
    .B(_163_),
    .S(_154_),
    .Y(_18_)
);

MUX2X1 _935_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_152_),
    .B(_115_),
    .S(_154_),
    .Y(_19_)
);

MUX2X1 _936_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_153_),
    .B(_131_),
    .S(_154_),
    .Y(_20_)
);

NOR2X1 _937_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .B(_138_),
    .Y(_164_)
);

OAI21X1 _938_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_127_),
    .B(_72_),
    .C(_164_),
    .Y(_165_)
);

NAND3X1 _939_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.ena ),
    .B(_164_),
    .C(_126_),
    .Y(_166_)
);

OAI22X1 _940_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_50_),
    .B(_165_),
    .C(_155_),
    .D(_166_),
    .Y(_21_)
);

OAI22X1 _941_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_83_),
    .B(_165_),
    .C(_140_),
    .D(_166_),
    .Y(_22_)
);

OAI22X1 _942_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_88_),
    .B(_165_),
    .C(_144_),
    .D(_166_),
    .Y(_23_)
);

AOI21X1 _943_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_we_i),
    .B(_786_),
    .C(wb_rst_i_bF$buf3),
    .Y(_167_)
);

NAND3X1 _944_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[2]),
    .B(\byte_controller.bit_controller.ena ),
    .C(_68_),
    .Y(_168_)
);

AOI22X1 _945_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_48_),
    .B(_167_),
    .C(_164_),
    .D(_168_),
    .Y(_169_)
);

NAND2X1 _946_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_48_),
    .B(_167_),
    .Y(_170_)
);

NOR2X1 _947_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_150_),
    .Y(_171_)
);

NAND3X1 _948_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_170_),
    .B(_171_),
    .C(_165_),
    .Y(_172_)
);

OAI21X1 _949_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_53_),
    .B(_169_),
    .C(_172_),
    .Y(_24_)
);

NOR2X1 _950_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_151_),
    .Y(_173_)
);

NAND3X1 _951_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_170_),
    .B(_173_),
    .C(_165_),
    .Y(_174_)
);

OAI21X1 _952_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_52_),
    .B(_169_),
    .C(_174_),
    .Y(_25_)
);

NOR2X1 _953_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_152_),
    .Y(_175_)
);

NAND3X1 _954_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_170_),
    .B(_175_),
    .C(_165_),
    .Y(_176_)
);

OAI21X1 _955_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_119_),
    .B(_169_),
    .C(_176_),
    .Y(_26_)
);

NOR2X1 _956_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_153_),
    .Y(_177_)
);

NAND3X1 _957_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_170_),
    .B(_177_),
    .C(_165_),
    .Y(_178_)
);

OAI21X1 _958_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_54_),
    .B(_169_),
    .C(_178_),
    .Y(_27_)
);

INVX1 _959_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[3]),
    .Y(_179_)
);

OAI21X1 _960_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_168_),
    .C(_49_),
    .Y(_180_)
);

OAI22X1 _961_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_98_),
    .B(_180_),
    .C(_179_),
    .D(_166_),
    .Y(_28_)
);

INVX1 _962_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [0]),
    .Y(_181_)
);

NAND2X1 _963_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(_68_),
    .Y(_182_)
);

OAI21X1 _964_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_182_),
    .C(_49_),
    .Y(_183_)
);

OAI21X1 _965_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf2),
    .B(wb_dat_i[0]),
    .C(_183_),
    .Y(_184_)
);

OAI21X1 _966_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_181_),
    .B(_183_),
    .C(_184_),
    .Y(_29_)
);

INVX1 _967_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [1]),
    .Y(_185_)
);

OAI21X1 _968_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf1),
    .B(wb_dat_i[1]),
    .C(_183_),
    .Y(_186_)
);

OAI21X1 _969_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_185_),
    .B(_183_),
    .C(_186_),
    .Y(_30_)
);

INVX1 _970_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [2]),
    .Y(_187_)
);

OAI21X1 _971_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf0),
    .B(wb_dat_i[2]),
    .C(_183_),
    .Y(_188_)
);

OAI21X1 _972_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_187_),
    .B(_183_),
    .C(_188_),
    .Y(_31_)
);

INVX1 _973_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [3]),
    .Y(_189_)
);

OAI21X1 _974_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf5),
    .B(wb_dat_i[3]),
    .C(_183_),
    .Y(_190_)
);

OAI21X1 _975_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_189_),
    .B(_183_),
    .C(_190_),
    .Y(_32_)
);

INVX1 _976_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [4]),
    .Y(_191_)
);

OAI21X1 _977_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .B(wb_dat_i[4]),
    .C(_183_),
    .Y(_192_)
);

OAI21X1 _978_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_191_),
    .B(_183_),
    .C(_192_),
    .Y(_33_)
);

INVX1 _979_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [5]),
    .Y(_193_)
);

OAI21X1 _980_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf3),
    .B(wb_dat_i[5]),
    .C(_183_),
    .Y(_194_)
);

OAI21X1 _981_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_193_),
    .B(_183_),
    .C(_194_),
    .Y(_34_)
);

INVX1 _982_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [6]),
    .Y(_195_)
);

OAI21X1 _983_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf2),
    .B(wb_dat_i[6]),
    .C(_183_),
    .Y(_196_)
);

OAI21X1 _984_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_195_),
    .B(_183_),
    .C(_196_),
    .Y(_35_)
);

INVX1 _985_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [7]),
    .Y(_197_)
);

OAI21X1 _986_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf1),
    .B(wb_dat_i[7]),
    .C(_183_),
    .Y(_198_)
);

OAI21X1 _987_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_197_),
    .B(_183_),
    .C(_198_),
    .Y(_36_)
);

OAI21X1 _988_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_62_),
    .C(_49_),
    .Y(_199_)
);

OAI21X1 _989_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf0),
    .B(wb_dat_i[0]),
    .C(_199_),
    .Y(_200_)
);

OAI21X1 _990_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_60_),
    .B(_199_),
    .C(_200_),
    .Y(_37_)
);

OAI21X1 _991_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf5),
    .B(wb_dat_i[1]),
    .C(_199_),
    .Y(_201_)
);

OAI21X1 _992_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_77_),
    .B(_199_),
    .C(_201_),
    .Y(_38_)
);

INVX1 _993_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [10]),
    .Y(_202_)
);

OAI21X1 _994_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .B(wb_dat_i[2]),
    .C(_199_),
    .Y(_203_)
);

OAI21X1 _995_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_202_),
    .B(_199_),
    .C(_203_),
    .Y(_39_)
);

INVX1 _996_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [11]),
    .Y(_204_)
);

OAI21X1 _997_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf3),
    .B(wb_dat_i[3]),
    .C(_199_),
    .Y(_205_)
);

OAI21X1 _998_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_204_),
    .B(_199_),
    .C(_205_),
    .Y(_40_)
);

INVX1 _999_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [12]),
    .Y(_206_)
);

endmodule
