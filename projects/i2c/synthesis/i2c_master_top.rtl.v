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
wire [5:0] ctr ;
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
wire [16:0] \byte_controller.bit_controller.c_state  ;
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
wire [2:1] cr ;
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

DFFPOSX1 _1677_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.dscl_oen ),
    .CLK(wb_clk_i_bF$buf11),
    .D(_784_)
);

NAND3X1 _1257_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_434_),
    .B(_435_),
    .C(_436_),
    .Y(_437_)
);

AOI21X1 _800_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_52_),
    .B(_53_),
    .C(wb_rst_i_bF$buf5),
    .Y(_3_)
);

AND2X2 _1486_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_628_),
    .B(_445_),
    .Y(_629_)
);

NOR3X1 _1066_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.read ),
    .B(\byte_controller.start ),
    .C(_338_),
    .Y(_339_)
);

FILL FILL52720x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1295_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_456_),
    .B(_462_),
    .Y(_474_)
);

INVX1 _1389_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [10]),
    .Y(_552_)
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

MUX2X1 _932_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_150_),
    .B(_162_),
    .S(_154_),
    .Y(_17_)
);

NAND3X1 _1198_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_313_),
    .B(_312_),
    .C(_319_),
    .Y(_320_)
);

AND2X2 _1410_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(scl_pad_i),
    .Y(_368_[0])
);

INVX1 _970_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [2]),
    .Y(_187_)
);

FILL SFILL13520x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1504_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_490_),
    .B(_646_),
    .C(_594_),
    .Y(_388_)
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

FILL SFILL27920x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1733_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_785_),
    .CLK(wb_clk_i_bF$buf11),
    .R(vdd),
    .S(arst_i_bF$buf1),
    .D(_406_)
);

INVX1 _1313_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_stop ),
    .Y(_491_)
);

NAND2X1 _1542_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_591_),
    .B(_678_),
    .Y(_679_)
);

INVX1 _1122_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [7]),
    .Y(_258_)
);

AOI21X1 _873_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [6]),
    .B(_58_),
    .C(_117_),
    .Y(_118_)
);

FILL SFILL41200x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _929_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [3]),
    .Y(_161_)
);

OAI21X1 _1351_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_508_),
    .B(_522_),
    .C(_500_),
    .Y(_523_)
);

AOI21X1 _1407_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_566_),
    .B(_565_),
    .C(_443_),
    .Y(_374_[13])
);

OAI21X1 _1580_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_472_),
    .B(_642_),
    .C(_468_),
    .Y(_704_)
);

INVX1 _1160_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .Y(_286_)
);

FILL SFILL10640x36100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1636_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [9]),
    .B(_746_),
    .Y(_750_)
);

OAI21X1 _1216_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_306_),
    .B(_304_),
    .C(\byte_controller.bit_controller.cmd [3]),
    .Y(_336_)
);

INVX1 _967_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [1]),
    .Y(_185_)
);

NOR2X1 _1445_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [3]),
    .B(\byte_controller.bit_controller.cmd [2]),
    .Y(_589_)
);

DFFSR _1025_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(ctr[2]),
    .CLK(wb_clk_i_bF$buf0),
    .R(arst_i_bF$buf10),
    .S(vdd),
    .D(_7_)
);

NAND2X1 _1674_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [15]),
    .B(_370_),
    .Y(_782_)
);

NOR2X1 _1254_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [9]),
    .B(\byte_controller.bit_controller.cnt [10]),
    .Y(_434_)
);

FILL FILL53040x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1483_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [8]),
    .B(_478_),
    .Y(_626_)
);

DFFSR _1063_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(ctr[0]),
    .CLK(wb_clk_i_bF$buf1),
    .R(arst_i_bF$buf10),
    .S(vdd),
    .D(_45_)
);

FILL SFILL42480x18100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1539_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [15]),
    .B(_458_),
    .C(_666_),
    .Y(_676_)
);

AOI21X1 _1119_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_255_),
    .B(_349_),
    .C(_240_),
    .Y(_215_)
);

NAND2X1 _1292_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [4]),
    .B(_470_),
    .Y(_471_)
);

FILL SFILL12880x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1348_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_515_),
    .B(_504_),
    .Y(_520_)
);

AOI21X1 _1577_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_700_),
    .B(_695_),
    .C(_701_),
    .Y(_406_)
);

MUX2X1 _1157_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [7]),
    .B(\byte_controller.dout [6]),
    .S(\byte_controller.ld ),
    .Y(_284_)
);

AND2X2 _1386_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_514_),
    .B(_515_),
    .Y(_550_)
);

OAI21X1 _1195_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_306_),
    .B(_304_),
    .C(\byte_controller.bit_controller.cmd [1]),
    .Y(_317_)
);

FILL SFILL43120x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL41840x32100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1289_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_467_),
    .B(_464_),
    .Y(_468_)
);

NAND2X1 _1501_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_636_),
    .B(_643_),
    .Y(_644_)
);

OAI21X1 _832_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_80_),
    .B(_70_),
    .C(_81_),
    .Y(_82_)
);

OAI21X1 _1098_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [3]),
    .B(\byte_controller.c_state [4]),
    .C(_345_),
    .Y(_240_)
);

DFFSR _1730_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [14]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_403_)
);

INVX2 _1310_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_467_),
    .Y(_488_)
);

INVX1 _870_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [6]),
    .Y(_115_)
);

INVX1 _926_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [2]),
    .Y(_159_)
);

INVX1 _1404_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_501_),
    .Y(_564_)
);

NAND2X1 _1633_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_747_),
    .B(_746_),
    .Y(_748_)
);

OAI21X1 _1213_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_357_),
    .B(_314_),
    .C(_340_),
    .Y(_333_)
);

OAI21X1 _964_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_182_),
    .C(_49_),
    .Y(_183_)
);

OAI21X1 _1442_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_571_),
    .B(_582_),
    .C(_587_),
    .Y(_385_)
);

DFFSR _1022_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(irq_flag),
    .CLK(wb_clk_i_bF$buf1),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_1_)
);

FILL SFILL10960x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _829_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [1]),
    .B(_58_),
    .C(_78_),
    .Y(_79_)
);

OAI21X1 _1671_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [14]),
    .B(_708_),
    .C(_709_),
    .Y(_780_)
);

NAND3X1 _1251_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_428_),
    .B(_429_),
    .C(_430_),
    .Y(_431_)
);

DFFSR _1727_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [11]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_400_)
);

AND2X2 _1307_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_481_),
    .B(_485_),
    .Y(_371_)
);

NAND2X1 _1480_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [0]),
    .B(_622_),
    .Y(_623_)
);

DFFSR _1060_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [13]),
    .CLK(wb_clk_i_bF$buf5),
    .R(vdd),
    .S(arst_i_bF$buf5),
    .D(_42_)
);

FILL SFILL27760x100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1536_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_610_),
    .B(_672_),
    .C(_674_),
    .Y(_392_)
);

OAI21X1 _1116_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_253_),
    .B(_249_),
    .C(_254_),
    .Y(_212_)
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

NOR2X1 _1345_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [0]),
    .B(_517_),
    .Y(_374_[0])
);

FILL SFILL42480x22100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL27600x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _1574_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_698_),
    .B(_631_),
    .Y(_699_)
);

NAND2X1 _1154_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [6]),
    .B(_267_),
    .Y(_282_)
);

FILL SFILL12880x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL12560x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1383_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [10]),
    .B(_521_),
    .Y(_548_)
);

OAI21X1 _1439_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf1),
    .B(\byte_controller.bit_controller.cSDA [1]),
    .C(_582_),
    .Y(_586_)
);

DFFSR _1019_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_788_),
    .CLK(wb_clk_i_bF$buf8),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_5_)
);

FILL FILL53040x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1192_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_365_),
    .B(_314_),
    .Y(_315_)
);

NAND2X1 _1668_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [14]),
    .B(_710_),
    .Y(_777_)
);

INVX1 _1248_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [4]),
    .Y(_428_)
);

INVX1 _999_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [12]),
    .Y(_206_)
);

NOR2X1 _1477_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_613_),
    .B(_464_),
    .Y(_620_)
);

DFFSR _1057_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [10]),
    .CLK(wb_clk_i_bF$buf0),
    .R(vdd),
    .S(arst_i_bF$buf9),
    .D(_39_)
);

NOR2X1 _1286_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_464_),
    .Y(_465_)
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

OAI21X1 _923_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_67_),
    .B(_154_),
    .C(_157_),
    .Y(_13_)
);

NOR2X1 _1189_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_308_),
    .B(_311_),
    .Y(_312_)
);

NAND3X1 _1401_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_552_),
    .B(_501_),
    .C(_550_),
    .Y(_562_)
);

NOR2X1 _1630_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_427_),
    .B(_431_),
    .Y(_745_)
);

NAND3X1 _1210_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_329_),
    .B(_292_),
    .C(_290_),
    .Y(_330_)
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

INVX1 _826_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ctr[1]),
    .Y(_76_)
);

FILL SFILL28400x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1724_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [8]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf2),
    .S(vdd),
    .D(_397_)
);

NOR2X1 _1304_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf2),
    .B(\byte_controller.bit_controller.al ),
    .Y(_483_)
);

FILL SFILL27920x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1533_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [2]),
    .B(_593_),
    .Y(_673_)
);

NAND3X1 _1113_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .B(_249_),
    .C(_252_),
    .Y(_216_)
);

INVX1 _864_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [5]),
    .Y(_110_)
);

FILL SFILL10960x20100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _1762_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[6]),
    .Y(wb_dat_o[6])
);

NOR2X1 _1342_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [9]),
    .B(\byte_controller.bit_controller.filter_cnt [8]),
    .Y(_515_)
);

NAND3X1 _1571_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_651_),
    .B(_609_),
    .C(_669_),
    .Y(_696_)
);

NAND2X1 _1151_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [5]),
    .B(_267_),
    .Y(_280_)
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

OAI21X1 _1207_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_306_),
    .B(_304_),
    .C(\byte_controller.bit_controller.cmd [2]),
    .Y(_328_)
);

OAI21X1 _958_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_54_),
    .B(_169_),
    .C(_178_),
    .Y(_27_)
);

INVX1 _1380_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [8]),
    .Y(_545_)
);

OAI21X1 _1436_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_576_),
    .B(_582_),
    .C(_584_),
    .Y(_382_)
);

DFFPOSX1 _1016_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_787_[6]),
    .CLK(wb_clk_i_bF$buf9),
    .D(_789_[6])
);

OAI21X1 _1665_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_770_),
    .B(_767_),
    .C(_708_),
    .Y(_775_)
);

INVX1 _1245_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [2]),
    .Y(_425_)
);

INVX1 _996_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [11]),
    .Y(_204_)
);

OAI21X1 _1474_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_611_),
    .B(_616_),
    .C(_614_),
    .Y(_617_)
);

DFFSR _1054_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [7]),
    .CLK(wb_clk_i_bF$buf5),
    .R(vdd),
    .S(arst_i_bF$buf8),
    .D(_36_)
);

FILL SFILL41520x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL53040x32100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1283_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [13]),
    .B(\byte_controller.bit_controller.c_state [12]),
    .Y(_462_)
);

BUFX2 _1759_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[3]),
    .Y(wb_dat_o[3])
);

NOR2X1 _1339_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [5]),
    .B(_511_),
    .Y(_512_)
);

NAND2X1 _1092_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_362_),
    .B(_340_),
    .Y(_363_)
);

FILL SFILL12880x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL42960x18100 (
    .gnd(gnd),
    .vdd(vdd)
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

NAND2X1 _1148_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [4]),
    .B(_267_),
    .Y(_278_)
);

NOR2X1 _899_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf0),
    .B(_140_),
    .Y(_141_)
);

OAI21X1 _1377_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [9]),
    .B(_520_),
    .C(_514_),
    .Y(_543_)
);

INVX1 _920_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[0]),
    .Y(_155_)
);

NAND2X1 _1186_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .B(_298_),
    .Y(_309_)
);

FILL SFILL43440x36100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL27280x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL41840x30100 (
    .gnd(gnd),
    .vdd(vdd)
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

OAI21X1 _1089_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_351_),
    .B(_350_),
    .C(\byte_controller.c_state [4]),
    .Y(_361_)
);

DFFSR _1721_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [5]),
    .CLK(wb_clk_i_bF$buf3),
    .R(arst_i_bF$buf1),
    .S(vdd),
    .D(_394_)
);

NAND2X1 _1301_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_479_),
    .B(_477_),
    .Y(_480_)
);

INVX4 _1530_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_485_),
    .Y(_671_)
);

INVX1 _1110_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_354_),
    .Y(_250_)
);

OAI21X1 _861_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_105_),
    .B(_62_),
    .C(_106_),
    .Y(_107_)
);

FILL SFILL42800x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _917_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[7]),
    .B(_49_),
    .Y(_153_)
);

NAND3X1 _1624_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_740_),
    .B(_739_),
    .C(_738_),
    .Y(_414_)
);

OAI21X1 _1204_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_339_),
    .B(_314_),
    .C(_340_),
    .Y(_325_)
);

OAI21X1 _955_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_119_),
    .B(_169_),
    .C(_176_),
    .Y(_26_)
);

OAI21X1 _1433_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf1),
    .B(\byte_controller.bit_controller.cSCL [1]),
    .C(_582_),
    .Y(_583_)
);

DFFPOSX1 _1013_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_787_[3]),
    .CLK(wb_clk_i_bF$buf8),
    .D(_789_[3])
);

FILL SFILL28400x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1662_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_771_),
    .B(_708_),
    .C(_711_),
    .Y(_772_)
);

DFFSR _1242_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cmd [2]),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_236_)
);

INVX1 _993_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [10]),
    .Y(_202_)
);

DFFSR _1718_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [2]),
    .CLK(wb_clk_i_bF$buf11),
    .R(arst_i_bF$buf3),
    .S(vdd),
    .D(_391_)
);

NOR3X1 _1471_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_612_),
    .B(_613_),
    .C(_464_),
    .Y(_614_)
);

DFFSR _1051_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [4]),
    .CLK(wb_clk_i_bF$buf7),
    .R(vdd),
    .S(arst_i_bF$buf6),
    .D(_33_)
);

NAND3X1 _1527_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_668_),
    .C(_455_),
    .Y(_669_)
);

NAND2X1 _1107_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_ack ),
    .B(\byte_controller.c_state [2]),
    .Y(_247_)
);

NAND3X1 _858_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_104_),
    .B(_103_),
    .C(_102_),
    .Y(_789_[4])
);

INVX1 _1280_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [13]),
    .Y(_459_)
);

BUFX2 _1756_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[0]),
    .Y(wb_dat_o[0])
);

NAND2X1 _1336_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_507_),
    .B(_508_),
    .Y(_509_)
);

FILL SFILL27120x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL28080x100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1565_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_485_),
    .B(_692_),
    .Y(_693_)
);

NAND2X1 _1145_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [3]),
    .B(_267_),
    .Y(_276_)
);

NAND2X1 _896_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_we_i),
    .B(_786_),
    .Y(_138_)
);

FILL SFILL42480x20100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1374_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_500_),
    .B(_540_),
    .Y(_541_)
);

FILL SFILL42160x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL12560x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1183_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_341_),
    .B(_355_),
    .C(_305_),
    .Y(_306_)
);

NAND2X1 _1659_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_768_),
    .B(_769_),
    .Y(_420_)
);

DFFSR _1239_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.dcnt [2]),
    .CLK(wb_clk_i_bF$buf9),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_233_)
);

FILL FILL53040x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1468_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [2]),
    .B(_610_),
    .Y(_611_)
);

DFFSR _1048_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [1]),
    .CLK(wb_clk_i_bF$buf4),
    .R(vdd),
    .S(arst_i_bF$buf8),
    .D(_30_)
);

INVX1 _799_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.write ),
    .Y(_53_)
);

DFFSR _1697_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [9]),
    .CLK(wb_clk_i_bF$buf2),
    .R(arst_i_bF$buf3),
    .S(vdd),
    .D(_374_[9])
);

NOR2X1 _1277_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [15]),
    .B(\byte_controller.bit_controller.c_state [14]),
    .Y(_456_)
);

OAI21X1 _820_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_67_),
    .B(_70_),
    .C(_69_),
    .Y(_71_)
);

NAND3X1 _1086_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_355_),
    .B(_357_),
    .C(_342_),
    .Y(_358_)
);

FILL SFILL27280x32100 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _914_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_151_),
    .B(_112_),
    .S(_139_),
    .Y(_10_)
);

FILL SFILL10800x36100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL13520x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL40880x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1621_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_736_),
    .B(_737_),
    .C(_714_),
    .Y(_738_)
);

OAI21X1 _1201_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [3]),
    .B(_349_),
    .C(_321_),
    .Y(_322_)
);

OAI21X1 _952_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_52_),
    .B(_169_),
    .C(_174_),
    .Y(_25_)
);

OAI21X1 _1430_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.dSCL ),
    .B(_567_),
    .C(\byte_controller.bit_controller.dout ),
    .Y(_581_)
);

DFFPOSX1 _1010_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_787_[0]),
    .CLK(wb_clk_i_bF$buf1),
    .D(_789_[0])
);

NOR2X1 _817_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[0]),
    .B(wb_adr_i[1]),
    .Y(_68_)
);

OAI21X1 _990_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_60_),
    .B(_199_),
    .C(_200_),
    .Y(_37_)
);

DFFSR _1715_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.sda_chk ),
    .CLK(wb_clk_i_bF$buf3),
    .R(arst_i_bF$buf1),
    .S(vdd),
    .D(_388_)
);

INVX1 _1524_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [14]),
    .Y(_666_)
);

INVX1 _1104_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_244_),
    .Y(_245_)
);

AOI21X1 _855_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [12]),
    .B(_87_),
    .C(_101_),
    .Y(_102_)
);

FILL SFILL27440x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _1753_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(sda_pad_o)
);

INVX1 _1333_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [4]),
    .Y(_506_)
);

FILL SFILL26160x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1562_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_690_),
    .B(_485_),
    .Y(_691_)
);

NAND2X1 _1142_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [2]),
    .B(_267_),
    .Y(_274_)
);

NAND2X1 _893_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_130_),
    .B(_136_),
    .Y(_789_[7])
);

FILL SFILL41200x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1618_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [5]),
    .B(_727_),
    .C(\byte_controller.bit_controller.cnt [6]),
    .Y(_735_)
);

OAI21X1 _949_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_53_),
    .B(_169_),
    .C(_172_),
    .Y(_24_)
);

FILL SFILL12400x100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1371_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [8]),
    .Y(_538_)
);

FILL SFILL13680x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1427_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSCL [0]),
    .B(\byte_controller.bit_controller.fSCL [2]),
    .C(_578_),
    .Y(_579_)
);

OAI21X1 _1007_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_128_),
    .B(_199_),
    .C(_210_),
    .Y(_44_)
);

NAND2X1 _1180_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_299_),
    .B(_302_),
    .Y(_303_)
);

FILL SFILL12400x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _1656_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_762_),
    .B(_765_),
    .Y(_767_)
);

DFFSR _1236_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.dout [7]),
    .CLK(wb_clk_i_bF$buf4),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_230_)
);

OAI21X1 _987_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_197_),
    .B(_183_),
    .C(_198_),
    .Y(_36_)
);

NOR2X1 _1465_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_607_),
    .B(_457_),
    .Y(_608_)
);

DFFSR _1045_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.start ),
    .CLK(wb_clk_i_bF$buf4),
    .R(arst_i_bF$buf8),
    .S(vdd),
    .D(_27_)
);

NAND2X1 _796_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_49_),
    .B(_50_),
    .Y(_51_)
);

DFFSR _1694_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [6]),
    .CLK(wb_clk_i_bF$buf2),
    .R(arst_i_bF$buf9),
    .S(vdd),
    .D(_374_[6])
);

NOR2X1 _1274_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [9]),
    .B(\byte_controller.bit_controller.c_state [8]),
    .Y(_453_)
);

FILL FILL53040x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1083_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_354_),
    .B(_353_),
    .C(\byte_controller.cmd_ack ),
    .Y(_355_)
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

NAND2X1 _1139_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [1]),
    .B(_267_),
    .Y(_272_)
);

NAND2X1 _1368_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [5]),
    .B(_511_),
    .Y(_536_)
);

NAND2X1 _911_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[4]),
    .B(_49_),
    .Y(_150_)
);

OAI21X1 _1597_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_713_),
    .B(_709_),
    .C(_718_),
    .Y(_409_)
);

NOR2X1 _1177_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [3]),
    .B(\byte_controller.c_state [4]),
    .Y(_300_)
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

DFFSR _1712_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.fSDA [1]),
    .CLK(wb_clk_i_bF$buf1),
    .R(vdd),
    .S(arst_i_bF$buf9),
    .D(_385_)
);

NOR3X1 _1521_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_653_),
    .B(_618_),
    .C(_662_),
    .Y(_663_)
);

NOR3X1 _1101_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.read ),
    .B(\byte_controller.start ),
    .C(\byte_controller.write ),
    .Y(_242_)
);

AOI21X1 _852_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_93_),
    .B(ctr[3]),
    .C(_99_),
    .Y(_100_)
);

FILL SFILL41360x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _908_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[3]),
    .B(_49_),
    .Y(_148_)
);

DFFSR _1750_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [15]),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf5),
    .S(vdd),
    .D(_423_)
);

NAND2X1 _1330_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_501_),
    .B(_502_),
    .Y(_503_)
);

INVX1 _890_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [7]),
    .Y(_134_)
);

NAND2X1 _1615_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_731_),
    .B(_732_),
    .Y(_733_)
);

NAND2X1 _946_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_48_),
    .B(_167_),
    .Y(_170_)
);

INVX1 _1424_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSCL [1]),
    .Y(_576_)
);

OAI21X1 _1004_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf3),
    .B(wb_dat_i[6]),
    .C(_199_),
    .Y(_209_)
);

NAND2X1 _1653_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_763_),
    .B(_764_),
    .Y(_419_)
);

DFFSR _1233_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.dout [4]),
    .CLK(wb_clk_i_bF$buf8),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_227_)
);

OAI21X1 _984_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_195_),
    .B(_183_),
    .C(_196_),
    .Y(_35_)
);

DFFSR _1709_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.fSCL [1]),
    .CLK(wb_clk_i_bF$buf1),
    .R(vdd),
    .S(arst_i_bF$buf10),
    .D(_382_)
);

NOR2X1 _1462_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_604_),
    .B(_602_),
    .Y(_605_)
);

DFFSR _1042_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.write ),
    .CLK(wb_clk_i_bF$buf7),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_24_)
);

NOR2X1 _793_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.al ),
    .B(\byte_controller.cmd_ack ),
    .Y(_48_)
);

NAND3X1 _1518_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_635_),
    .C(_487_),
    .Y(_660_)
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

DFFSR _1691_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [3]),
    .CLK(wb_clk_i_bF$buf2),
    .R(arst_i_bF$buf3),
    .S(vdd),
    .D(_374_[3])
);

NAND2X1 _1271_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_448_),
    .B(_449_),
    .Y(_450_)
);

DFFSR _1747_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [12]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_420_)
);

INVX2 _1327_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .Y(_500_)
);

NAND3X1 _1080_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_343_),
    .B(_348_),
    .C(_352_),
    .Y(_219_)
);

NAND2X1 _1556_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_596_),
    .B(_599_),
    .Y(_687_)
);

INVX1 _1136_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf5),
    .Y(_270_)
);

INVX1 _887_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [7]),
    .Y(_131_)
);

FILL SFILL28880x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1365_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_533_),
    .B(_532_),
    .C(_500_),
    .Y(_534_)
);

NAND2X1 _1594_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [1]),
    .B(\byte_controller.bit_controller.cnt [0]),
    .Y(_716_)
);

OAI21X1 _1174_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [5]),
    .B(\byte_controller.c_state [2]),
    .C(_351_),
    .Y(_297_)
);

FILL SFILL42480x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL12560x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1459_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_462_),
    .Y(_602_)
);

DFFSR _1039_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(iack),
    .CLK(wb_clk_i_bF$buf1),
    .R(arst_i_bF$buf10),
    .S(vdd),
    .D(_21_)
);

FILL FILL53040x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL42160x32100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1688_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [0]),
    .CLK(wb_clk_i_bF$buf2),
    .R(arst_i_bF$buf9),
    .S(vdd),
    .D(_374_[0])
);

NAND2X1 _1268_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_445_),
    .B(_446_),
    .Y(_447_)
);

NAND3X1 _811_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[0]),
    .B(_61_),
    .C(_56_),
    .Y(_62_)
);

INVX1 _1497_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [4]),
    .Y(_640_)
);

NOR2X1 _1077_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_349_),
    .B(_344_),
    .Y(_350_)
);

FILL SFILL42640x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL13360x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _905_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_145_),
    .B(_139_),
    .Y(_146_)
);

FILL SFILL26480x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1612_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [5]),
    .Y(_730_)
);

AOI21X1 _943_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_we_i),
    .B(_786_),
    .C(wb_rst_i_bF$buf5),
    .Y(_167_)
);

OAI21X1 _1421_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSDA [0]),
    .B(\byte_controller.bit_controller.fSDA [2]),
    .C(_573_),
    .Y(_574_)
);

OAI21X1 _1001_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_206_),
    .B(_199_),
    .C(_207_),
    .Y(_41_)
);

INVX1 _808_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ctr[0]),
    .Y(_59_)
);

NOR3X1 _1650_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [11]),
    .B(_755_),
    .C(_746_),
    .Y(_762_)
);

DFFSR _1230_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.dout [1]),
    .CLK(wb_clk_i_bF$buf8),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_224_)
);

OAI21X1 _981_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_193_),
    .B(_183_),
    .C(_194_),
    .Y(_34_)
);

FILL SFILL11280x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1706_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_en ),
    .CLK(wb_clk_i_bF$buf11),
    .R(vdd),
    .S(arst_i_bF$buf2),
    .D(_370_)
);

NAND2X1 _790_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ien),
    .B(irq_flag),
    .Y(_46_)
);

FILL SFILL13840x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1515_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_655_),
    .B(_627_),
    .C(_656_),
    .Y(_657_)
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

DFFSR _1744_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [9]),
    .CLK(wb_clk_i_bF$buf5),
    .R(arst_i_bF$buf3),
    .S(vdd),
    .D(_417_)
);

INVX1 _1324_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_493_),
    .Y(_373_)
);

FILL SFILL27440x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1553_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_685_),
    .B(_683_),
    .C(_681_),
    .Y(_398_)
);

INVX2 _1133_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_266_),
    .Y(_267_)
);

INVX1 _884_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [15]),
    .Y(_128_)
);

FILL SFILL14000x18100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1609_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_726_),
    .B(_727_),
    .Y(_728_)
);

INVX1 _1362_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [6]),
    .Y(_531_)
);

INVX1 _1418_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSDA [1]),
    .Y(_571_)
);

INVX1 _1591_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [1]),
    .Y(_713_)
);

OAI21X1 _1171_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.ld ),
    .B(_294_),
    .C(_286_),
    .Y(_295_)
);

NAND2X1 _1647_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_758_),
    .B(_759_),
    .Y(_418_)
);

DFFSR _1227_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.ld ),
    .CLK(wb_clk_i_bF$buf4),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_214_)
);

OAI21X1 _978_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_191_),
    .B(_183_),
    .C(_192_),
    .Y(_33_)
);

AND2X2 _1456_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_451_),
    .B(_598_),
    .Y(_599_)
);

DFFSR _1036_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.din [5]),
    .CLK(wb_clk_i_bF$buf9),
    .R(arst_i_bF$buf6),
    .S(vdd),
    .D(_18_)
);

DFFSR _1685_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.sSDA ),
    .CLK(wb_clk_i_bF$buf3),
    .R(vdd),
    .S(arst_i_bF$buf9),
    .D(_376_)
);

NAND2X1 _1265_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_444_),
    .B(_439_),
    .Y(_370_)
);

INVX1 _1494_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [7]),
    .Y(_637_)
);

NOR2X1 _1074_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.read ),
    .B(_346_),
    .Y(_347_)
);

BUFX2 BUFX2_insert0 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i),
    .Y(wb_rst_i_bF$buf5)
);

BUFX2 BUFX2_insert1 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i),
    .Y(wb_rst_i_bF$buf4)
);

BUFX2 BUFX2_insert2 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i),
    .Y(wb_rst_i_bF$buf3)
);

BUFX2 BUFX2_insert3 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i),
    .Y(wb_rst_i_bF$buf2)
);

BUFX2 BUFX2_insert4 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i),
    .Y(wb_rst_i_bF$buf1)
);

BUFX2 BUFX2_insert5 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i),
    .Y(wb_rst_i_bF$buf0)
);

AND2X2 _1359_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_509_),
    .B(\byte_controller.bit_controller.filter_cnt [3]),
    .Y(_529_)
);

FILL SFILL42960x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _902_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ctr[2]),
    .Y(_143_)
);

NAND2X1 _1588_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(_708_),
    .Y(_711_)
);

INVX1 _1168_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dcnt [2]),
    .Y(_292_)
);

NAND3X1 _1397_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_558_),
    .B(_552_),
    .C(_550_),
    .Y(_559_)
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

FILL SFILL42640x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX4 _805_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[2]),
    .Y(_56_)
);

DFFSR _1703_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cSCL [1]),
    .CLK(wb_clk_i_bF$buf1),
    .R(arst_i_bF$buf10),
    .S(vdd),
    .D(_368_[1])
);

INVX1 _1512_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_613_),
    .Y(_654_)
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

FILL SFILL11280x20100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1741_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [6]),
    .CLK(wb_clk_i_bF$buf5),
    .R(arst_i_bF$buf2),
    .S(vdd),
    .D(_414_)
);

NOR2X1 _1321_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.dSDA ),
    .B(_496_),
    .Y(_497_)
);

NAND3X1 _1550_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_669_),
    .B(_682_),
    .C(_663_),
    .Y(_683_)
);

INVX1 _1130_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.shift ),
    .Y(_264_)
);

NAND2X1 _881_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_118_),
    .B(_125_),
    .Y(_789_[6])
);

OAI21X1 _1606_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_424_),
    .B(_709_),
    .C(_725_),
    .Y(_411_)
);

NOR2X1 _937_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf5),
    .B(_138_),
    .Y(_164_)
);

FILL SFILL12720x100 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _1415_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_569_),
    .B(_567_),
    .Y(_377_)
);

FILL SFILL43120x100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL14000x22100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1644_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_746_),
    .B(_755_),
    .C(_756_),
    .Y(_757_)
);

DFFSR _1224_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.cmd_ack ),
    .CLK(wb_clk_i_bF$buf4),
    .R(arst_i_bF$buf8),
    .S(vdd),
    .D(_212_)
);

OAI21X1 _975_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_189_),
    .B(_183_),
    .C(_190_),
    .Y(_32_)
);

FILL SFILL26640x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _1453_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_595_),
    .B(\byte_controller.bit_controller.c_state [10]),
    .Y(_596_)
);

DFFSR _1033_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.din [2]),
    .CLK(wb_clk_i_bF$buf8),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_15_)
);

FILL SFILL28400x20100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1509_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [16]),
    .B(_451_),
    .C(_487_),
    .Y(_651_)
);

DFFSR _1682_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.sta_condition ),
    .CLK(wb_clk_i_bF$buf3),
    .R(arst_i_bF$buf1),
    .S(vdd),
    .D(_378_)
);

INVX4 _1262_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf2),
    .Y(_442_)
);

FILL SFILL26160x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1738_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [3]),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_411_)
);

OAI21X1 _1318_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.busy ),
    .B(\byte_controller.bit_controller.sta_condition ),
    .C(_442_),
    .Y(_495_)
);

NAND2X1 _1491_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [7]),
    .B(_633_),
    .Y(_634_)
);

NAND2X1 _1071_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_ack ),
    .B(_340_),
    .Y(_344_)
);

OAI21X1 _1547_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_671_),
    .B(_660_),
    .C(_680_),
    .Y(_397_)
);

NAND3X1 _1127_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_ack ),
    .B(\byte_controller.c_state [2]),
    .C(\byte_controller.bit_controller.dout ),
    .Y(_262_)
);

NAND3X1 _878_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(\byte_controller.bit_controller.clk_cnt [6]),
    .C(_68_),
    .Y(_123_)
);

NAND2X1 _1356_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_500_),
    .B(_526_),
    .Y(_527_)
);

AND2X2 _1585_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_439_),
    .B(_444_),
    .Y(_708_)
);

NOR2X1 _1165_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dcnt [1]),
    .B(\byte_controller.dcnt [0]),
    .Y(_290_)
);

AOI21X1 _1394_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_553_),
    .B(_555_),
    .C(_556_),
    .Y(_374_[10])
);

FILL SFILL12880x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1679_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cmd_ack ),
    .CLK(wb_clk_i_bF$buf11),
    .R(arst_i_bF$buf2),
    .S(vdd),
    .D(_371_)
);

NAND2X1 _1259_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_438_),
    .B(_433_),
    .Y(_439_)
);

FILL SFILL42160x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _802_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.start ),
    .Y(_54_)
);

NAND3X1 _1488_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_627_),
    .B(_625_),
    .C(_630_),
    .Y(_631_)
);

NAND2X1 _1068_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [0]),
    .B(_340_),
    .Y(_341_)
);

DFFSR _1700_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [12]),
    .CLK(wb_clk_i_bF$buf2),
    .R(arst_i_bF$buf6),
    .S(vdd),
    .D(_374_[12])
);

NOR2X1 _1297_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_475_),
    .B(_474_),
    .Y(_476_)
);

NOR2X1 _840_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_88_),
    .B(_73_),
    .Y(_89_)
);

FILL SFILL13360x32100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL43600x100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL12560x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1603_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [2]),
    .B(_715_),
    .C(\byte_controller.bit_controller.cnt [3]),
    .Y(_723_)
);

MUX2X1 _934_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_151_),
    .B(_163_),
    .S(_154_),
    .Y(_18_)
);

FILL SFILL13840x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1412_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sSCL ),
    .Y(_567_)
);

NAND3X1 _1641_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_754_),
    .B(_753_),
    .C(_752_),
    .Y(_417_)
);

DFFSR _1221_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.c_state [3]),
    .CLK(wb_clk_i_bF$buf9),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_219_)
);

OAI21X1 _972_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_187_),
    .B(_183_),
    .C(_188_),
    .Y(_31_)
);

NOR2X1 _1450_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_en ),
    .B(_484_),
    .Y(_593_)
);

DFFSR _1030_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.ena ),
    .CLK(wb_clk_i_bF$buf7),
    .R(arst_i_bF$buf6),
    .S(vdd),
    .D(_12_)
);

NAND2X1 _1506_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_589_),
    .B(_485_),
    .Y(_648_)
);

NAND2X1 _837_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_79_),
    .B(_86_),
    .Y(_789_[1])
);

DFFSR _1735_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [0]),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf5),
    .S(vdd),
    .D(_408_)
);

NOR2X1 _1315_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf2),
    .B(\byte_controller.bit_controller.sSDA ),
    .Y(_493_)
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

AOI22X1 _1124_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_362_),
    .B(_258_),
    .C(_255_),
    .D(_259_),
    .Y(_260_)
);

INVX1 _875_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [14]),
    .Y(_120_)
);

INVX1 _1353_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [4]),
    .Y(_524_)
);

AND2X2 _1409_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(\byte_controller.bit_controller.cSDA [0]),
    .Y(_369_[1])
);

FILL SFILL42320x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1582_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_466_),
    .B(_704_),
    .C(_705_),
    .Y(_706_)
);

OAI21X1 _1162_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_285_),
    .B(_266_),
    .C(_287_),
    .Y(_231_)
);

OAI21X1 _1638_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_750_),
    .B(_751_),
    .C(_714_),
    .Y(_752_)
);

DFFSR _1218_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.c_state [0]),
    .CLK(wb_clk_i_bF$buf4),
    .R(vdd),
    .S(arst_i_bF$buf8),
    .D(_216_)
);

OAI21X1 _969_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_185_),
    .B(_183_),
    .C(_186_),
    .Y(_30_)
);

NAND2X1 _1391_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_515_),
    .B(_514_),
    .Y(_554_)
);

NOR2X1 _1447_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [0]),
    .B(_590_),
    .Y(_591_)
);

DFFSR _1027_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(ctr[4]),
    .CLK(wb_clk_i_bF$buf7),
    .R(arst_i_bF$buf6),
    .S(vdd),
    .D(_9_)
);

FILL SFILL12400x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1676_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_781_),
    .B(_783_),
    .C(_782_),
    .Y(_423_)
);

NOR2X1 _1256_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [13]),
    .B(\byte_controller.bit_controller.cnt [12]),
    .Y(_436_)
);

NOR2X1 _1485_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [0]),
    .B(_622_),
    .Y(_628_)
);

INVX1 _1065_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.write ),
    .Y(_338_)
);

NAND2X1 _1294_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_472_),
    .B(_468_),
    .Y(_473_)
);

FILL SFILL41360x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL42480x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1579_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_484_),
    .B(_702_),
    .Y(_703_)
);

INVX1 _1159_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dcnt [0]),
    .Y(_285_)
);

FILL SFILL42960x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1388_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_551_),
    .B(_549_),
    .C(_443_),
    .Y(_374_[9])
);

FILL SFILL11120x36100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1600_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_720_),
    .B(_719_),
    .Y(_721_)
);

FILL FILL53040x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _931_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [4]),
    .Y(_162_)
);

AOI21X1 _1197_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_244_),
    .B(_314_),
    .C(_318_),
    .Y(_319_)
);

BUFX2 BUFX2_insert20 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf8)
);

BUFX2 BUFX2_insert21 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf7)
);

BUFX2 BUFX2_insert22 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf6)
);

BUFX2 BUFX2_insert23 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf5)
);

BUFX2 BUFX2_insert24 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf4)
);

BUFX2 BUFX2_insert25 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf3)
);

BUFX2 BUFX2_insert26 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf2)
);

BUFX2 BUFX2_insert27 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf1)
);

BUFX2 BUFX2_insert28 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf0)
);

FILL SFILL42640x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1503_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_485_),
    .B(_619_),
    .C(_645_),
    .Y(_646_)
);

INVX1 _834_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(tip),
    .Y(_84_)
);

FILL SFILL26480x18100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1732_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [16]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf2),
    .S(vdd),
    .D(_405_)
);

NOR2X1 _1312_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_450_),
    .B(_489_),
    .Y(_490_)
);

FILL SFILL26320x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1541_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_677_),
    .B(_455_),
    .Y(_678_)
);

NAND2X1 _1121_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_ack ),
    .B(\byte_controller.c_state [4]),
    .Y(_257_)
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

OAI21X1 _928_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_159_),
    .B(_154_),
    .C(_160_),
    .Y(_15_)
);

AND2X2 _1350_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [1]),
    .B(\byte_controller.bit_controller.filter_cnt [0]),
    .Y(_522_)
);

NAND2X1 _1406_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [15]),
    .B(_521_),
    .Y(_566_)
);

OAI21X1 _1635_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_744_),
    .B(_709_),
    .C(_749_),
    .Y(_416_)
);

NAND3X1 _1215_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_313_),
    .B(_312_),
    .C(_334_),
    .Y(_335_)
);

OAI21X1 _966_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_181_),
    .B(_183_),
    .C(_184_),
    .Y(_29_)
);

FILL SFILL12560x100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1444_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_572_),
    .B(_582_),
    .C(_588_),
    .Y(_386_)
);

DFFSR _1024_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(ctr[1]),
    .CLK(wb_clk_i_bF$buf0),
    .R(arst_i_bF$buf10),
    .S(vdd),
    .D(_6_)
);

FILL SFILL42320x32100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL26640x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1673_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [15]),
    .Y(_781_)
);

NOR2X1 _1253_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [8]),
    .B(_432_),
    .Y(_433_)
);

FILL SFILL26960x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL42800x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1729_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [13]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_402_)
);

NOR2X1 _1309_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_486_),
    .B(_474_),
    .Y(_487_)
);

NAND2X1 _1482_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_624_),
    .B(_620_),
    .Y(_625_)
);

DFFSR _1062_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [15]),
    .CLK(wb_clk_i_bF$buf5),
    .R(vdd),
    .S(arst_i_bF$buf5),
    .D(_44_)
);

OAI21X1 _1538_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_640_),
    .B(_672_),
    .C(_675_),
    .Y(_393_)
);

INVX1 _1118_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [4]),
    .Y(_255_)
);

NAND2X1 _869_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_108_),
    .B(_114_),
    .Y(_789_[5])
);

INVX1 _1291_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [5]),
    .Y(_470_)
);

OR2X2 _1347_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_513_),
    .B(\byte_controller.bit_controller.filter_cnt [7]),
    .Y(_519_)
);

FILL SFILL26640x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL52880x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1576_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_785_),
    .B(_695_),
    .Y(_701_)
);

OAI21X1 _1156_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_283_),
    .C(_282_),
    .Y(_229_)
);

OAI21X1 _1385_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [8]),
    .B(_519_),
    .C(\byte_controller.bit_controller.filter_cnt [9]),
    .Y(_549_)
);

NAND2X1 _1194_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_316_),
    .B(_307_),
    .Y(_234_)
);

FILL SFILL42480x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL12880x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1479_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [1]),
    .Y(_622_)
);

DFFSR _1059_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [12]),
    .CLK(wb_clk_i_bF$buf0),
    .R(vdd),
    .S(arst_i_bF$buf9),
    .D(_41_)
);

FILL FILL53040x20100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1288_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_445_),
    .C(_446_),
    .Y(_467_)
);

OAI21X1 _1500_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_639_),
    .B(_642_),
    .C(_468_),
    .Y(_643_)
);

NAND3X1 _831_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(\byte_controller.bit_controller.clk_cnt [1]),
    .C(_68_),
    .Y(_81_)
);

INVX1 _1097_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_349_),
    .Y(_239_)
);

OAI21X1 _925_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_80_),
    .B(_154_),
    .C(_158_),
    .Y(_14_)
);

FILL SFILL12560x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1403_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_562_),
    .C(_563_),
    .Y(_374_[12])
);

FILL SFILL43440x100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1632_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_427_),
    .B(_431_),
    .C(\byte_controller.bit_controller.cnt [8]),
    .Y(_747_)
);

AOI21X1 _1212_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_323_),
    .B(_301_),
    .C(_359_),
    .Y(_332_)
);

NAND2X1 _963_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(_68_),
    .Y(_182_)
);

OAI21X1 _1441_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf1),
    .B(\byte_controller.bit_controller.fSDA [0]),
    .C(_582_),
    .Y(_587_)
);

DFFSR _1021_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(tip),
    .CLK(wb_clk_i_bF$buf9),
    .R(arst_i_bF$buf6),
    .S(vdd),
    .D(_3_)
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

AOI21X1 _1670_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [14]),
    .B(_773_),
    .C(_778_),
    .Y(_779_)
);

NOR2X1 _1250_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [5]),
    .B(\byte_controller.bit_controller.cnt [6]),
    .Y(_430_)
);

DFFSR _1726_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [10]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf2),
    .S(vdd),
    .D(_399_)
);

NOR2X1 _1306_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_482_),
    .B(_484_),
    .Y(_485_)
);

NAND3X1 _1535_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_485_),
    .B(_616_),
    .C(_614_),
    .Y(_674_)
);

NAND2X1 _1115_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [1]),
    .B(_345_),
    .Y(_254_)
);

INVX1 _866_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ctr[5]),
    .Y(_112_)
);

BUFX2 _1764_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_788_),
    .Y(wb_inta_o)
);

OAI21X1 _1344_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [2]),
    .B(_516_),
    .C(_500_),
    .Y(_517_)
);

FILL SFILL27760x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1573_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_650_),
    .B(_601_),
    .C(_697_),
    .Y(_698_)
);

OAI21X1 _1153_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_281_),
    .C(_280_),
    .Y(_228_)
);

INVX1 _1629_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [8]),
    .Y(_744_)
);

INVX1 _1209_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [3]),
    .Y(_329_)
);

FILL SFILL42320x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1382_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_544_),
    .B(_546_),
    .C(_516_),
    .Y(_547_)
);

FILL SFILL41040x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1438_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_577_),
    .B(_582_),
    .C(_585_),
    .Y(_383_)
);

DFFPOSX1 _1018_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_786_),
    .CLK(wb_clk_i_bF$buf9),
    .D(_4_)
);

NAND3X1 _1191_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_346_),
    .B(_300_),
    .C(_301_),
    .Y(_314_)
);

FILL SFILL42800x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1667_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_770_),
    .B(_709_),
    .C(_776_),
    .Y(_421_)
);

NAND3X1 _1247_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_424_),
    .B(_425_),
    .C(_426_),
    .Y(_427_)
);

OAI21X1 _998_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_204_),
    .B(_199_),
    .C(_205_),
    .Y(_40_)
);

FILL SFILL26160x18100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1476_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_618_),
    .Y(_619_)
);

DFFSR _1056_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [9]),
    .CLK(wb_clk_i_bF$buf0),
    .R(vdd),
    .S(arst_i_bF$buf10),
    .D(_38_)
);

NAND2X1 _1285_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_454_),
    .B(_463_),
    .Y(_464_)
);

FILL SFILL13680x18100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1094_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.start ),
    .B(_340_),
    .Y(_365_)
);

NOR3X1 _1379_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [7]),
    .B(\byte_controller.bit_controller.filter_cnt [8]),
    .C(_513_),
    .Y(_544_)
);

FILL SFILL42960x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _922_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_156_),
    .B(_154_),
    .Y(_157_)
);

OAI21X1 _1188_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_309_),
    .B(_310_),
    .C(_296_),
    .Y(_311_)
);

OAI21X1 _1400_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [11]),
    .B(_553_),
    .C(\byte_controller.bit_controller.filter_cnt [12]),
    .Y(_561_)
);

FILL FILL53040x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL42160x22100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _960_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_168_),
    .C(_49_),
    .Y(_180_)
);

FILL SFILL12560x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL42640x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _825_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_66_),
    .B(_75_),
    .Y(_789_[0])
);

DFFSR _1723_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [7]),
    .CLK(wb_clk_i_bF$buf3),
    .R(arst_i_bF$buf1),
    .S(vdd),
    .D(_396_)
);

INVX2 _1303_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_en ),
    .Y(_482_)
);

FILL SFILL26800x28100 (
    .gnd(gnd),
    .vdd(vdd)
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

AOI22X1 _1112_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [1]),
    .B(_345_),
    .C(_342_),
    .D(_251_),
    .Y(_252_)
);

INVX1 _863_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(al),
    .Y(_109_)
);

FILL SFILL27760x22100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _919_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_57_),
    .C(_49_),
    .Y(_154_)
);

BUFX2 _1761_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[5]),
    .Y(wb_dat_o[5])
);

NOR2X1 _1341_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [7]),
    .B(_513_),
    .Y(_514_)
);

OAI21X1 _1570_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_482_),
    .B(_490_),
    .C(_483_),
    .Y(_695_)
);

OAI21X1 _1150_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_279_),
    .C(_278_),
    .Y(_227_)
);

NAND2X1 _1626_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(_741_),
    .Y(_742_)
);

NAND3X1 _1206_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_313_),
    .B(_312_),
    .C(_326_),
    .Y(_327_)
);

NAND3X1 _957_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_170_),
    .B(_177_),
    .C(_165_),
    .Y(_178_)
);

OAI21X1 _1435_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf1),
    .B(\byte_controller.bit_controller.fSCL [0]),
    .C(_582_),
    .Y(_584_)
);

DFFPOSX1 _1015_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_787_[5]),
    .CLK(wb_clk_i_bF$buf9),
    .D(_789_[5])
);

INVX1 _1664_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_773_),
    .Y(_774_)
);

INVX1 _1244_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [3]),
    .Y(_424_)
);

OAI21X1 _995_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_202_),
    .B(_199_),
    .C(_203_),
    .Y(_39_)
);

FILL SFILL42320x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1473_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_615_),
    .Y(_616_)
);

DFFSR _1053_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [6]),
    .CLK(wb_clk_i_bF$buf4),
    .R(vdd),
    .S(arst_i_bF$buf8),
    .D(_35_)
);

FILL SFILL26960x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1529_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_648_),
    .B(_670_),
    .C(_647_),
    .Y(_389_)
);

INVX1 _1109_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_248_),
    .Y(_249_)
);

NOR2X1 _1282_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_460_),
    .B(_457_),
    .Y(_461_)
);

BUFX2 _1758_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[2]),
    .Y(wb_dat_o[2])
);

NAND2X1 _1338_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_506_),
    .B(_510_),
    .Y(_511_)
);

INVX2 _1091_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_ack ),
    .Y(_362_)
);

NAND2X1 _1567_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_605_),
    .B(_455_),
    .Y(_694_)
);

OAI21X1 _1147_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_277_),
    .C(_276_),
    .Y(_226_)
);

INVX1 _898_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[1]),
    .Y(_140_)
);

FILL SFILL43280x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL12720x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1376_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [6]),
    .B(_535_),
    .C(\byte_controller.bit_controller.filter_cnt [7]),
    .Y(_542_)
);

FILL FILL52880x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1185_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_346_),
    .B(_238_),
    .C(_363_),
    .Y(_308_)
);

FILL SFILL12880x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1699_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [11]),
    .CLK(wb_clk_i_bF$buf5),
    .R(arst_i_bF$buf8),
    .S(vdd),
    .D(_374_[11])
);

INVX4 _1279_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [16]),
    .Y(_458_)
);

NAND3X1 _822_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[1]),
    .B(wb_adr_i[2]),
    .C(_63_),
    .Y(_73_)
);

NAND2X1 _1088_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_359_),
    .B(_345_),
    .Y(_360_)
);

DFFSR _1720_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [4]),
    .CLK(wb_clk_i_bF$buf11),
    .R(arst_i_bF$buf3),
    .S(vdd),
    .D(_393_)
);

AND2X2 _1300_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_478_),
    .B(\byte_controller.bit_controller.c_state [8]),
    .Y(_479_)
);

NAND3X1 _860_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(\byte_controller.bit_controller.clk_cnt [5]),
    .C(_68_),
    .Y(_106_)
);

MUX2X1 _916_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_152_),
    .B(_122_),
    .S(_139_),
    .Y(_11_)
);

FILL SFILL26800x32100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL42640x18100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1623_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [6]),
    .B(_370_),
    .Y(_740_)
);

AOI21X1 _1203_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_323_),
    .B(_301_),
    .C(_347_),
    .Y(_324_)
);

NAND3X1 _954_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_170_),
    .B(_175_),
    .C(_165_),
    .Y(_176_)
);

FILL SFILL12880x100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1432_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_520_),
    .B(_519_),
    .C(_442_),
    .Y(_582_)
);

DFFPOSX1 _1012_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_787_[2]),
    .CLK(wb_clk_i_bF$buf7),
    .D(_789_[2])
);

NAND3X1 _819_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[0]),
    .B(wb_adr_i[2]),
    .C(_61_),
    .Y(_70_)
);

INVX1 _1661_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [13]),
    .Y(_771_)
);

DFFSR _1241_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cmd [1]),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_235_)
);

OAI21X1 _992_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_77_),
    .B(_199_),
    .C(_201_),
    .Y(_38_)
);

FILL SFILL43280x100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL43120x36100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1717_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [1]),
    .CLK(wb_clk_i_bF$buf11),
    .R(arst_i_bF$buf2),
    .S(vdd),
    .D(_390_)
);

NAND3X1 _1470_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_448_),
    .C(_449_),
    .Y(_613_)
);

DFFSR _1050_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [3]),
    .CLK(wb_clk_i_bF$buf5),
    .R(vdd),
    .S(arst_i_bF$buf6),
    .D(_32_)
);

FILL SFILL27760x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1526_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_667_),
    .B(_602_),
    .Y(_668_)
);

OAI21X1 _1106_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_243_),
    .B(_241_),
    .C(_246_),
    .Y(_217_)
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

BUFX2 _1755_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_786_),
    .Y(wb_ack_o)
);

NOR2X1 _1335_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [1]),
    .B(\byte_controller.bit_controller.filter_cnt [0]),
    .Y(_508_)
);

AND2X2 _1564_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_455_),
    .B(_608_),
    .Y(_692_)
);

OAI21X1 _1144_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_275_),
    .C(_274_),
    .Y(_225_)
);

NOR2X1 _895_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_786_),
    .B(_137_),
    .Y(_4_)
);

FILL SFILL27760x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1373_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_539_),
    .B(_513_),
    .Y(_540_)
);

FILL SFILL28720x36100 (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _1429_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_567_),
    .B(\byte_controller.bit_controller.dSCL ),
    .Y(_580_)
);

OAI21X1 _1009_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_59_),
    .B(_139_),
    .C(_211_),
    .Y(_45_)
);

FILL SFILL42320x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1182_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [3]),
    .B(\byte_controller.c_state [4]),
    .C(_351_),
    .Y(_305_)
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

DFFSR _1238_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.dcnt [1]),
    .CLK(wb_clk_i_bF$buf9),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_232_)
);

OAI21X1 _989_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf0),
    .B(wb_dat_i[0]),
    .C(_199_),
    .Y(_200_)
);

FILL SFILL42800x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL52880x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1467_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [3]),
    .Y(_610_)
);

DFFSR _1047_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [0]),
    .CLK(wb_clk_i_bF$buf5),
    .R(vdd),
    .S(arst_i_bF$buf8),
    .D(_29_)
);

INVX1 _798_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.read ),
    .Y(_52_)
);

DFFSR _1696_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [8]),
    .CLK(wb_clk_i_bF$buf2),
    .R(arst_i_bF$buf3),
    .S(vdd),
    .D(_374_[8])
);

AND2X2 _1276_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_451_),
    .B(_454_),
    .Y(_455_)
);

NOR2X1 _1085_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.start ),
    .B(_356_),
    .Y(_357_)
);

FILL SFILL41360x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _913_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[5]),
    .B(_49_),
    .Y(_151_)
);

OAI21X1 _1599_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [1]),
    .B(\byte_controller.bit_controller.cnt [0]),
    .C(\byte_controller.bit_controller.cnt [2]),
    .Y(_720_)
);

AND2X2 _1179_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_300_),
    .B(_301_),
    .Y(_302_)
);

NOR2X1 _1620_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [6]),
    .B(_732_),
    .Y(_737_)
);

NAND3X1 _1200_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_292_),
    .B(_255_),
    .C(_290_),
    .Y(_321_)
);

FILL FILL53040x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _951_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_170_),
    .B(_173_),
    .C(_165_),
    .Y(_174_)
);

INVX1 _816_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [0]),
    .Y(_67_)
);

FILL SFILL42640x22100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1714_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cmd_stop ),
    .CLK(wb_clk_i_bF$buf11),
    .R(arst_i_bF$buf3),
    .S(vdd),
    .D(_387_)
);

NOR2X1 _1523_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [1]),
    .B(_664_),
    .Y(_665_)
);

NAND2X1 _1103_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.stop ),
    .B(\byte_controller.c_state [2]),
    .Y(_244_)
);

NOR2X1 _854_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_53_),
    .B(_73_),
    .Y(_101_)
);

BUFX2 _1752_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_784_),
    .Y(scl_padoen_o)
);

INVX1 _1332_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [6]),
    .Y(_505_)
);

NOR2X1 _1561_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [3]),
    .B(_684_),
    .Y(_690_)
);

OAI21X1 _1141_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_273_),
    .C(_272_),
    .Y(_224_)
);

NOR2X1 _892_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_),
    .B(_133_),
    .Y(_136_)
);

OAI21X1 _1617_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_730_),
    .B(_709_),
    .C(_734_),
    .Y(_413_)
);

NAND3X1 _948_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_170_),
    .B(_171_),
    .C(_165_),
    .Y(_172_)
);

AOI21X1 _1370_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_535_),
    .B(_536_),
    .C(_537_),
    .Y(_374_[5])
);

OAI21X1 _1426_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_575_),
    .B(_577_),
    .C(_576_),
    .Y(_578_)
);

OAI21X1 _1006_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf5),
    .B(wb_dat_i[7]),
    .C(_199_),
    .Y(_210_)
);

NOR2X1 _1655_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_765_),
    .B(_762_),
    .Y(_766_)
);

DFFSR _1235_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.dout [6]),
    .CLK(wb_clk_i_bF$buf9),
    .R(arst_i_bF$buf6),
    .S(vdd),
    .D(_229_)
);

OAI21X1 _986_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .B(wb_dat_i[7]),
    .C(_183_),
    .Y(_198_)
);

NAND3X1 _1464_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [13]),
    .B(_458_),
    .C(_606_),
    .Y(_607_)
);

DFFSR _1044_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.stop ),
    .CLK(wb_clk_i_bF$buf7),
    .R(arst_i_bF$buf8),
    .S(vdd),
    .D(_26_)
);

INVX1 _795_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(iack),
    .Y(_50_)
);

DFFSR _1693_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [5]),
    .CLK(wb_clk_i_bF$buf2),
    .R(arst_i_bF$buf9),
    .S(vdd),
    .D(_374_[5])
);

NOR2X1 _1273_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [10]),
    .B(\byte_controller.bit_controller.c_state [11]),
    .Y(_452_)
);

DFFSR _1749_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [14]),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_422_)
);

NOR2X1 _1329_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [10]),
    .B(\byte_controller.bit_controller.filter_cnt [13]),
    .Y(_502_)
);

NOR2X1 _1082_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.read ),
    .B(\byte_controller.write ),
    .Y(_354_)
);

NAND2X1 _1558_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_600_),
    .B(_599_),
    .Y(_688_)
);

OAI21X1 _1138_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_269_),
    .B(_271_),
    .C(_268_),
    .Y(_223_)
);

OAI21X1 _889_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_131_),
    .B(_70_),
    .C(_132_),
    .Y(_133_)
);

INVX1 _1367_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_512_),
    .Y(_535_)
);

FILL SFILL43280x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL12720x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _910_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ctr[4]),
    .Y(_149_)
);

FILL FILL52880x24100 (
    .gnd(gnd),
    .vdd(vdd)
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

AND2X2 _1176_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .B(_298_),
    .Y(_299_)
);

NAND3X1 _813_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[1]),
    .B(_63_),
    .C(_56_),
    .Y(_64_)
);

NOR2X1 _1499_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_641_),
    .B(_469_),
    .Y(_642_)
);

OAI21X1 _1079_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_351_),
    .B(_350_),
    .C(\byte_controller.c_state [3]),
    .Y(_352_)
);

DFFSR _1711_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.fSDA [0]),
    .CLK(wb_clk_i_bF$buf3),
    .R(vdd),
    .S(arst_i_bF$buf1),
    .D(_384_)
);

OR2X2 _1520_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_657_),
    .B(_661_),
    .Y(_662_)
);

NAND2X1 _1100_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_355_),
    .B(_342_),
    .Y(_241_)
);

NOR2X1 _851_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_98_),
    .B(_73_),
    .Y(_99_)
);

FILL SFILL28080x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _907_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ctr[3]),
    .Y(_147_)
);

OR2X2 _1614_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_727_),
    .B(\byte_controller.bit_controller.cnt [5]),
    .Y(_732_)
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

FILL SFILL13040x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1423_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSCL [0]),
    .Y(_575_)
);

OAI21X1 _1003_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_105_),
    .B(_199_),
    .C(_208_),
    .Y(_42_)
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

DFFSR _1232_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.dout [3]),
    .CLK(wb_clk_i_bF$buf8),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_226_)
);

OAI21X1 _983_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf3),
    .B(wb_dat_i[6]),
    .C(_183_),
    .Y(_196_)
);

DFFSR _1708_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.fSCL [0]),
    .CLK(wb_clk_i_bF$buf1),
    .R(vdd),
    .S(arst_i_bF$buf9),
    .D(_381_)
);

NAND3X1 _1461_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [14]),
    .B(_458_),
    .C(_603_),
    .Y(_604_)
);

DFFSR _1041_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(cr[2]),
    .CLK(wb_clk_i_bF$buf0),
    .R(arst_i_bF$buf10),
    .S(vdd),
    .D(_23_)
);

INVX1 _792_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(irq_flag),
    .Y(_47_)
);

NAND3X1 _1517_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_639_),
    .C(_487_),
    .Y(_659_)
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

DFFSR _1690_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [2]),
    .CLK(wb_clk_i_bF$buf2),
    .R(arst_i_bF$buf3),
    .S(vdd),
    .D(_374_[2])
);

NOR2X1 _1270_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [5]),
    .B(\byte_controller.bit_controller.c_state [4]),
    .Y(_449_)
);

FILL SFILL27760x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL13840x18100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1746_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [11]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf2),
    .S(vdd),
    .D(_419_)
);

NOR2X1 _1326_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_499_),
    .B(_373_),
    .Y(_378_)
);

OAI21X1 _1555_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_671_),
    .B(_627_),
    .C(_686_),
    .Y(_399_)
);

MUX2X1 _1135_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [0]),
    .B(\byte_controller.bit_controller.dout ),
    .S(\byte_controller.ld ),
    .Y(_269_)
);

AOI21X1 _886_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rxack),
    .B(_126_),
    .C(_129_),
    .Y(_130_)
);

NOR2X1 _1364_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_506_),
    .B(_510_),
    .Y(_533_)
);

FILL SFILL41040x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1593_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_426_),
    .Y(_715_)
);

NAND3X1 _1173_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_362_),
    .B(\byte_controller.c_state [1]),
    .C(_340_),
    .Y(_296_)
);

AOI21X1 _1649_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_433_),
    .B(_434_),
    .C(_760_),
    .Y(_761_)
);

DFFSR _1229_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.dout [0]),
    .CLK(wb_clk_i_bF$buf8),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_223_)
);

FILL SFILL42320x22100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL41040x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1458_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_596_),
    .B(_600_),
    .C(_599_),
    .Y(_601_)
);

DFFSR _1038_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.din [7]),
    .CLK(wb_clk_i_bF$buf9),
    .R(arst_i_bF$buf6),
    .S(vdd),
    .D(_20_)
);

FILL SFILL12720x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL42800x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1687_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.dSDA ),
    .CLK(wb_clk_i_bF$buf3),
    .R(vdd),
    .S(arst_i_bF$buf1),
    .D(_373_)
);

NOR2X1 _1267_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [0]),
    .B(\byte_controller.bit_controller.c_state [1]),
    .Y(_446_)
);

INVX1 _810_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[1]),
    .Y(_61_)
);

NOR2X1 _1496_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_638_),
    .B(_632_),
    .Y(_639_)
);

NOR3X1 _1076_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dcnt [1]),
    .B(\byte_controller.dcnt [0]),
    .C(\byte_controller.dcnt [2]),
    .Y(_349_)
);

FILL SFILL27920x22100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _904_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf0),
    .B(_144_),
    .Y(_145_)
);

AOI21X1 _1399_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_559_),
    .B(_557_),
    .C(_560_),
    .Y(_374_[11])
);

OAI21X1 _1611_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_428_),
    .B(_709_),
    .C(_729_),
    .Y(_412_)
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

CLKBUF1 CLKBUF1_insert10 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf7)
);

CLKBUF1 CLKBUF1_insert11 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf6)
);

CLKBUF1 CLKBUF1_insert12 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf5)
);

CLKBUF1 CLKBUF1_insert13 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf4)
);

CLKBUF1 CLKBUF1_insert14 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf3)
);

CLKBUF1 CLKBUF1_insert15 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf2)
);

CLKBUF1 CLKBUF1_insert16 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf1)
);

CLKBUF1 CLKBUF1_insert17 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf0)
);

FILL SFILL28560x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1420_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_570_),
    .B(_572_),
    .C(_571_),
    .Y(_573_)
);

OAI21X1 _1000_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .B(wb_dat_i[4]),
    .C(_199_),
    .Y(_207_)
);

INVX2 _807_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_57_),
    .Y(_58_)
);

OAI21X1 _980_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf3),
    .B(wb_dat_i[5]),
    .C(_183_),
    .Y(_194_)
);

DFFSR _1705_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cSDA [1]),
    .CLK(wb_clk_i_bF$buf3),
    .R(arst_i_bF$buf1),
    .S(vdd),
    .D(_369_[1])
);

FILL SFILL42640x20100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1514_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_654_),
    .B(_624_),
    .C(_487_),
    .Y(_656_)
);

FILL SFILL42320x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _845_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_68_),
    .B(_56_),
    .Y(_94_)
);

DFFSR _1743_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [8]),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_416_)
);

NOR2X1 _1323_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf2),
    .B(_498_),
    .Y(_379_)
);

FILL SFILL26480x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1552_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [3]),
    .B(_684_),
    .C(_485_),
    .Y(_685_)
);

NAND2X1 _1132_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_264_),
    .B(_265_),
    .Y(_266_)
);

INVX1 _883_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.ena ),
    .Y(_127_)
);

OR2X2 _1608_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_427_),
    .B(\byte_controller.bit_controller.cnt [4]),
    .Y(_727_)
);

FILL SFILL13840x22100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _939_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.ena ),
    .B(_164_),
    .C(_126_),
    .Y(_166_)
);

AOI21X1 _1361_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_521_),
    .B(_528_),
    .C(_530_),
    .Y(_374_[3])
);

INVX1 _1417_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSDA [0]),
    .Y(_570_)
);

AOI21X1 _1590_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_707_),
    .B(_710_),
    .C(_712_),
    .Y(_408_)
);

NAND2X1 _1170_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_293_),
    .B(_239_),
    .Y(_294_)
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

DFFSR _1226_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.shift ),
    .CLK(wb_clk_i_bF$buf9),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_215_)
);

OAI21X1 _977_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .B(wb_dat_i[4]),
    .C(_183_),
    .Y(_192_)
);

NOR2X1 _1455_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_597_),
    .B(_474_),
    .Y(_598_)
);

DFFSR _1035_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.din [4]),
    .CLK(wb_clk_i_bF$buf7),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_17_)
);

DFFSR _1684_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.sSCL ),
    .CLK(wb_clk_i_bF$buf3),
    .R(vdd),
    .S(arst_i_bF$buf1),
    .D(_375_)
);

AOI21X1 _1264_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_441_),
    .B(\byte_controller.bit_controller.dSCL ),
    .C(_443_),
    .Y(_444_)
);

FILL SFILL26960x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1493_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_635_),
    .B(_468_),
    .Y(_636_)
);

INVX2 _1073_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [5]),
    .Y(_346_)
);

NOR2X1 _1549_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [1]),
    .B(\byte_controller.bit_controller.cmd [0]),
    .Y(_682_)
);

AOI21X1 _1129_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_263_),
    .B(_262_),
    .C(_253_),
    .Y(_222_)
);

INVX1 _1358_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [5]),
    .Y(_528_)
);

OAI21X1 _901_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_76_),
    .B(_139_),
    .C(_142_),
    .Y(_6_)
);

INVX4 _1587_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_709_),
    .Y(_710_)
);

OAI21X1 _1167_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_288_),
    .B(_289_),
    .C(_291_),
    .Y(_232_)
);

FILL SFILL12720x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL42800x18100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1396_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [11]),
    .Y(_558_)
);

FILL SFILL26320x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _804_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf5),
    .B(_55_),
    .Y(_0_)
);

FILL SFILL27920x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1702_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cSCL [0]),
    .CLK(wb_clk_i_bF$buf1),
    .R(arst_i_bF$buf10),
    .S(vdd),
    .D(_368_[0])
);

INVX1 _1299_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [9]),
    .Y(_478_)
);

NAND3X1 _1511_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_480_),
    .B(_649_),
    .C(_652_),
    .Y(_653_)
);

INVX2 _842_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_70_),
    .Y(_91_)
);

FILL SFILL27120x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1740_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [5]),
    .CLK(wb_clk_i_bF$buf5),
    .R(arst_i_bF$buf5),
    .S(vdd),
    .D(_413_)
);

INVX1 _1320_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sSDA ),
    .Y(_496_)
);

NOR2X1 _880_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_121_),
    .B(_124_),
    .Y(_125_)
);

FILL SFILL28560x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL53040x6100 (
    .gnd(gnd),
    .vdd(vdd)
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

MUX2X1 _936_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_153_),
    .B(_131_),
    .S(_154_),
    .Y(_20_)
);

OAI21X1 _1414_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.dscl_oen ),
    .B(_440_),
    .C(_568_),
    .Y(_569_)
);

FILL SFILL13040x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1643_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [9]),
    .B(_746_),
    .C(\byte_controller.bit_controller.cnt [10]),
    .Y(_756_)
);

DFFSR _1223_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.c_state [5]),
    .CLK(wb_clk_i_bF$buf4),
    .R(arst_i_bF$buf8),
    .S(vdd),
    .D(_221_)
);

OAI21X1 _974_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .B(wb_dat_i[3]),
    .C(_183_),
    .Y(_190_)
);

INVX1 _1452_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [11]),
    .Y(_595_)
);

DFFSR _1032_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.din [1]),
    .CLK(wb_clk_i_bF$buf1),
    .R(arst_i_bF$buf10),
    .S(vdd),
    .D(_14_)
);

NAND3X1 _1508_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_454_),
    .B(_461_),
    .C(_451_),
    .Y(_650_)
);

INVX1 _839_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(cr[2]),
    .Y(_88_)
);

DFFSR _1681_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.busy ),
    .CLK(wb_clk_i_bF$buf3),
    .R(arst_i_bF$buf1),
    .S(vdd),
    .D(_367_)
);

NOR2X1 _1261_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sSCL ),
    .B(_440_),
    .Y(_441_)
);

DFFSR _1737_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [2]),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf5),
    .S(vdd),
    .D(_410_)
);

OAI21X1 _1317_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_492_),
    .B(_490_),
    .C(_494_),
    .Y(_366_)
);

INVX1 _1490_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [6]),
    .Y(_633_)
);

NAND3X1 _1070_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_337_),
    .B(_339_),
    .C(_342_),
    .Y(_343_)
);

NAND2X1 _1546_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [8]),
    .B(_593_),
    .Y(_680_)
);

AOI21X1 _1126_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_261_),
    .B(_256_),
    .C(_253_),
    .Y(_213_)
);

INVX1 _877_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ien),
    .Y(_122_)
);

FILL SFILL13680x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1355_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_525_),
    .B(_509_),
    .Y(_526_)
);

INVX1 _1584_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [0]),
    .Y(_707_)
);

AOI21X1 _1164_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_270_),
    .B(\byte_controller.dcnt [0]),
    .C(_267_),
    .Y(_289_)
);

OAI21X1 _1393_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [12]),
    .B(_516_),
    .C(_500_),
    .Y(_556_)
);

AOI21X1 _1449_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_482_),
    .B(_491_),
    .C(_592_),
    .Y(_387_)
);

DFFSR _1029_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(ien),
    .CLK(wb_clk_i_bF$buf7),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_11_)
);

FILL SFILL42320x20100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL41520x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _1678_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.dout ),
    .CLK(wb_clk_i_bF$buf2),
    .D(_380_)
);

NOR2X1 _1258_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [11]),
    .B(_437_),
    .Y(_438_)
);

AND2X2 _801_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_49_),
    .B(\byte_controller.ack_out ),
    .Y(_2_)
);

NAND2X1 _1487_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_629_),
    .B(_620_),
    .Y(_630_)
);

NOR2X1 _1067_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.al ),
    .B(wb_rst_i_bF$buf3),
    .Y(_340_)
);

NAND2X1 _1296_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_452_),
    .Y(_475_)
);

FILL SFILL10960x36100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL52880x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL13680x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL27120x32100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1602_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_425_),
    .B(_709_),
    .C(_722_),
    .Y(_410_)
);

INVX1 _933_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [5]),
    .Y(_163_)
);

NAND2X1 _1199_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_317_),
    .B(_320_),
    .Y(_235_)
);

AND2X2 _1411_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(\byte_controller.bit_controller.cSCL [0]),
    .Y(_368_[1])
);

NAND2X1 _1640_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [9]),
    .B(_370_),
    .Y(_754_)
);

DFFSR _1220_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.c_state [2]),
    .CLK(wb_clk_i_bF$buf4),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_218_)
);

OAI21X1 _971_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf2),
    .B(wb_dat_i[2]),
    .C(_183_),
    .Y(_188_)
);

NAND2X1 _1505_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [0]),
    .B(_593_),
    .Y(_647_)
);

FILL SFILL28080x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _836_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_85_),
    .B(_82_),
    .Y(_86_)
);

DFFSR _1734_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_784_),
    .CLK(wb_clk_i_bF$buf11),
    .R(vdd),
    .S(arst_i_bF$buf3),
    .D(_407_)
);

NAND3X1 _1314_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sto_condition ),
    .B(_442_),
    .C(_491_),
    .Y(_492_)
);

FILL SFILL12720x6100 (
    .gnd(gnd),
    .vdd(vdd)
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

NAND2X1 _1123_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [7]),
    .B(_238_),
    .Y(_259_)
);

INVX1 _874_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.stop ),
    .Y(_119_)
);

FILL SFILL43440x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1352_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_521_),
    .B(_518_),
    .C(_523_),
    .Y(_374_[1])
);

FILL SFILL12560x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL29040x36100 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _1408_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(sda_pad_i),
    .Y(_369_[0])
);

AOI21X1 _1581_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_477_),
    .B(_626_),
    .C(_692_),
    .Y(_705_)
);

OAI21X1 _1161_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_285_),
    .B(\byte_controller.ld ),
    .C(_286_),
    .Y(_287_)
);

FILL SFILL26000x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _1637_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_746_),
    .B(\byte_controller.bit_controller.cnt [9]),
    .Y(_751_)
);

NAND2X1 _1217_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_336_),
    .B(_335_),
    .Y(_237_)
);

OAI21X1 _968_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .B(wb_dat_i[1]),
    .C(_183_),
    .Y(_186_)
);

NAND3X1 _1390_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_552_),
    .B(_515_),
    .C(_514_),
    .Y(_553_)
);

FILL SFILL13040x32100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1446_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [1]),
    .B(_589_),
    .Y(_590_)
);

DFFSR _1026_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(ctr[3]),
    .CLK(wb_clk_i_bF$buf8),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_8_)
);

FILL SFILL13520x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _1675_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_778_),
    .B(_709_),
    .Y(_783_)
);

NOR2X1 _1255_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [15]),
    .B(\byte_controller.bit_controller.cnt [14]),
    .Y(_435_)
);

NAND3X1 _1484_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_626_),
    .B(_476_),
    .C(_451_),
    .Y(_627_)
);

INVX1 _1064_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.cmd_ack ),
    .Y(_337_)
);

NOR2X1 _1293_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_471_),
    .B(_469_),
    .Y(_472_)
);

FILL SFILL28240x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1349_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_520_),
    .B(_519_),
    .Y(_521_)
);

OAI21X1 _1578_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_671_),
    .B(_625_),
    .C(_695_),
    .Y(_702_)
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

FILL SFILL11440x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1387_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [11]),
    .B(_503_),
    .C(_550_),
    .Y(_551_)
);

MUX2X1 _930_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_148_),
    .B(_161_),
    .S(_154_),
    .Y(_16_)
);

OAI21X1 _1196_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_242_),
    .B(_314_),
    .C(_340_),
    .Y(_318_)
);

BUFX2 BUFX2_insert18 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf10)
);

BUFX2 BUFX2_insert19 (
    .gnd(gnd),
    .vdd(vdd),
    .A(arst_i),
    .Y(arst_i_bF$buf9)
);

FILL SFILL27920x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR3X1 _1502_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_631_),
    .B(_644_),
    .C(_481_),
    .Y(_645_)
);

INVX1 _833_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(cr[1]),
    .Y(_83_)
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

DFFSR _1731_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [15]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_404_)
);

NAND2X1 _1311_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_487_),
    .Y(_489_)
);

NOR2X1 _1540_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_676_),
    .B(_602_),
    .Y(_677_)
);

OAI21X1 _1120_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd_ack ),
    .B(\byte_controller.ack_in ),
    .C(\byte_controller.c_state [2]),
    .Y(_256_)
);

INVX1 _871_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.busy ),
    .Y(_116_)
);

FILL SFILL28080x20100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _927_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_145_),
    .B(_154_),
    .Y(_160_)
);

FILL SFILL41200x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL53040x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1405_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_564_),
    .B(_553_),
    .C(\byte_controller.bit_controller.filter_cnt [13]),
    .Y(_565_)
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

AOI21X1 _1214_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_331_),
    .B(_332_),
    .C(_333_),
    .Y(_334_)
);

OAI21X1 _965_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .B(wb_dat_i[0]),
    .C(_183_),
    .Y(_184_)
);

FILL SFILL13360x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL13040x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1443_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf1),
    .B(\byte_controller.bit_controller.fSDA [1]),
    .C(_582_),
    .Y(_588_)
);

DFFSR _1023_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(al),
    .CLK(wb_clk_i_bF$buf9),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_0_)
);

OAI21X1 _1672_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_780_),
    .B(_779_),
    .C(_777_),
    .Y(_422_)
);

OR2X2 _1252_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_427_),
    .B(_431_),
    .Y(_432_)
);

DFFSR _1728_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [12]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf2),
    .S(vdd),
    .D(_401_)
);

NAND2X1 _1308_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_452_),
    .B(_453_),
    .Y(_486_)
);

FILL SFILL13360x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1481_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_623_),
    .B(_621_),
    .Y(_624_)
);

DFFSR _1061_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [14]),
    .CLK(wb_clk_i_bF$buf5),
    .R(vdd),
    .S(arst_i_bF$buf5),
    .D(_43_)
);

NAND3X1 _1537_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_485_),
    .B(_611_),
    .C(_614_),
    .Y(_675_)
);

OAI21X1 _1117_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_346_),
    .B(_344_),
    .C(_241_),
    .Y(_214_)
);

NOR2X1 _868_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_111_),
    .B(_113_),
    .Y(_114_)
);

INVX1 _1290_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_448_),
    .Y(_469_)
);

INVX1 _1346_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [3]),
    .Y(_518_)
);

AOI21X1 _1575_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.din ),
    .B(_696_),
    .C(_699_),
    .Y(_700_)
);

MUX2X1 _1155_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [6]),
    .B(\byte_controller.dout [5]),
    .S(\byte_controller.ld ),
    .Y(_283_)
);

FILL SFILL13040x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1384_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_547_),
    .B(_548_),
    .C(_443_),
    .Y(_374_[8])
);

NAND3X1 _1193_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_315_),
    .B(_313_),
    .C(_312_),
    .Y(_316_)
);

FILL SFILL28720x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1669_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [14]),
    .B(_773_),
    .C(_708_),
    .Y(_778_)
);

INVX1 _1249_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [7]),
    .Y(_429_)
);

FILL SFILL11440x20100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1478_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_445_),
    .Y(_621_)
);

DFFSR _1058_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [11]),
    .CLK(wb_clk_i_bF$buf0),
    .R(vdd),
    .S(arst_i_bF$buf6),
    .D(_40_)
);

FILL SFILL42800x20100 (
    .gnd(gnd),
    .vdd(vdd)
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

INVX1 _830_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [1]),
    .Y(_80_)
);

FILL SFILL12240x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL53040x100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL42000x32100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _1096_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [2]),
    .Y(_238_)
);

FILL SFILL26640x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _924_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_141_),
    .B(_154_),
    .Y(_158_)
);

OAI21X1 _1402_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [14]),
    .B(_516_),
    .C(_500_),
    .Y(_563_)
);

FILL SFILL26320x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1631_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_744_),
    .B(_745_),
    .Y(_746_)
);

OAI21X1 _1211_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [4]),
    .B(_349_),
    .C(_330_),
    .Y(_331_)
);

INVX1 _962_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [0]),
    .Y(_181_)
);

OAI21X1 _1440_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_570_),
    .B(_582_),
    .C(_586_),
    .Y(_384_)
);

DFFSR _1020_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(rxack),
    .CLK(wb_clk_i_bF$buf7),
    .R(arst_i_bF$buf8),
    .S(vdd),
    .D(_2_)
);

INVX1 _827_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [9]),
    .Y(_77_)
);

DFFSR _1725_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [9]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf2),
    .S(vdd),
    .D(_398_)
);

INVX2 _1305_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_483_),
    .Y(_484_)
);

FILL SFILL14160x18100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL11120x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1534_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_671_),
    .B(_655_),
    .C(_673_),
    .Y(_391_)
);

INVX1 _1114_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .Y(_253_)
);

FILL SFILL42320x4100 (
    .gnd(gnd),
    .vdd(vdd)
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

FILL SFILL12720x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _1763_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[7]),
    .Y(wb_dat_o[7])
);

NAND3X1 _1343_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_504_),
    .B(_515_),
    .C(_514_),
    .Y(_516_)
);

AOI21X1 _1572_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_477_),
    .B(_479_),
    .C(_484_),
    .Y(_697_)
);

MUX2X1 _1152_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [5]),
    .B(\byte_controller.dout [4]),
    .S(\byte_controller.ld ),
    .Y(_281_)
);

OAI21X1 _1628_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_370_),
    .B(_742_),
    .C(_743_),
    .Y(_415_)
);

NAND2X1 _1208_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_328_),
    .B(_327_),
    .Y(_236_)
);

INVX1 _959_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[3]),
    .Y(_179_)
);

FILL SFILL26160x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1381_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_545_),
    .B(_514_),
    .Y(_546_)
);

OAI21X1 _1437_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf1),
    .B(\byte_controller.bit_controller.fSCL [1]),
    .C(_582_),
    .Y(_585_)
);

DFFPOSX1 _1017_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_787_[7]),
    .CLK(wb_clk_i_bF$buf7),
    .D(_789_[7])
);

INVX2 _1190_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_306_),
    .Y(_313_)
);

FILL SFILL13040x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1666_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_774_),
    .B(_775_),
    .C(_772_),
    .Y(_776_)
);

NOR2X1 _1246_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [1]),
    .B(\byte_controller.bit_controller.cnt [0]),
    .Y(_426_)
);

OAI21X1 _997_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf4),
    .B(wb_dat_i[3]),
    .C(_199_),
    .Y(_205_)
);

NAND3X1 _1475_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_601_),
    .B(_609_),
    .C(_617_),
    .Y(_618_)
);

DFFSR _1055_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [8]),
    .CLK(wb_clk_i_bF$buf0),
    .R(vdd),
    .S(arst_i_bF$buf10),
    .D(_37_)
);

AND2X2 _1284_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_456_),
    .B(_462_),
    .Y(_463_)
);

NAND2X1 _1093_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [0]),
    .B(_355_),
    .Y(_364_)
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

MUX2X1 _1149_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [4]),
    .B(\byte_controller.dout [3]),
    .S(\byte_controller.ld ),
    .Y(_279_)
);

AOI21X1 _1378_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543_),
    .B(_542_),
    .C(_443_),
    .Y(_374_[7])
);

NOR2X1 _921_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf0),
    .B(_155_),
    .Y(_156_)
);

NAND2X1 _1187_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_300_),
    .B(_301_),
    .Y(_310_)
);

FILL SFILL42800x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL27600x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _824_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_74_),
    .B(_71_),
    .Y(_75_)
);

DFFSR _1722_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [6]),
    .CLK(wb_clk_i_bF$buf3),
    .R(arst_i_bF$buf1),
    .S(vdd),
    .D(_395_)
);

NAND3X1 _1302_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_473_),
    .B(_480_),
    .C(_466_),
    .Y(_481_)
);

INVX4 _1531_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_593_),
    .Y(_672_)
);

OAI21X1 _1111_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.stop ),
    .B(_250_),
    .C(_337_),
    .Y(_251_)
);

AOI21X1 _862_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [5]),
    .B(_91_),
    .C(_107_),
    .Y(_108_)
);

MUX2X1 _918_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_153_),
    .B(_127_),
    .S(_139_),
    .Y(_12_)
);

BUFX2 _1760_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[4]),
    .Y(wb_dat_o[4])
);

NAND2X1 _1340_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_505_),
    .B(_512_),
    .Y(_513_)
);

FILL SFILL14160x22100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL42480x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL11120x20100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL28560x20100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL53040x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1625_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_429_),
    .B(_737_),
    .C(_432_),
    .Y(_741_)
);

AOI21X1 _1205_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_322_),
    .B(_324_),
    .C(_325_),
    .Y(_326_)
);

NOR2X1 _956_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_153_),
    .Y(_177_)
);

FILL SFILL42960x36100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1434_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_575_),
    .B(_582_),
    .C(_583_),
    .Y(_381_)
);

DFFPOSX1 _1014_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_787_[4]),
    .CLK(wb_clk_i_bF$buf8),
    .D(_789_[4])
);

FILL SFILL42640x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1663_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_770_),
    .B(_765_),
    .C(_762_),
    .Y(_773_)
);

DFFSR _1243_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cmd [3]),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf8),
    .S(vdd),
    .D(_237_)
);

OAI21X1 _994_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf2),
    .B(wb_dat_i[2]),
    .C(_199_),
    .Y(_203_)
);

DFFSR _1719_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [3]),
    .CLK(wb_clk_i_bF$buf11),
    .R(arst_i_bF$buf3),
    .S(vdd),
    .D(_392_)
);

NAND2X1 _1472_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [2]),
    .B(_610_),
    .Y(_615_)
);

DFFSR _1052_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [5]),
    .CLK(wb_clk_i_bF$buf4),
    .R(vdd),
    .S(arst_i_bF$buf5),
    .D(_34_)
);

NAND3X1 _1528_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_665_),
    .B(_669_),
    .C(_663_),
    .Y(_670_)
);

NOR2X1 _1108_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.stop ),
    .B(_247_),
    .Y(_248_)
);

INVX1 _859_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [13]),
    .Y(_105_)
);

NAND3X1 _1281_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [12]),
    .B(_458_),
    .C(_459_),
    .Y(_460_)
);

BUFX2 _1757_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_[1]),
    .Y(wb_dat_o[1])
);

NOR2X1 _1337_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [3]),
    .B(_509_),
    .Y(_510_)
);

NAND3X1 _1090_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_358_),
    .B(_360_),
    .C(_361_),
    .Y(_220_)
);

FILL SFILL13840x12100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1566_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_666_),
    .B(_672_),
    .C(_693_),
    .Y(_403_)
);

MUX2X1 _1146_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [3]),
    .B(\byte_controller.dout [2]),
    .S(\byte_controller.ld ),
    .Y(_277_)
);

OAI21X1 _897_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_64_),
    .C(_49_),
    .Y(_139_)
);

AOI21X1 _1375_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_521_),
    .B(_538_),
    .C(_541_),
    .Y(_374_[6])
);

FILL SFILL13040x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1184_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_306_),
    .B(_304_),
    .C(\byte_controller.bit_controller.cmd [0]),
    .Y(_307_)
);

FILL SFILL27440x22100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1469_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_446_),
    .Y(_612_)
);

DFFSR _1049_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.clk_cnt [2]),
    .CLK(wb_clk_i_bF$buf0),
    .R(vdd),
    .S(arst_i_bF$buf9),
    .D(_31_)
);

DFFSR _1698_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [10]),
    .CLK(wb_clk_i_bF$buf5),
    .R(arst_i_bF$buf5),
    .S(vdd),
    .D(_374_[10])
);

INVX1 _1278_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_456_),
    .Y(_457_)
);

NAND3X1 _821_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[2]),
    .B(_63_),
    .C(_61_),
    .Y(_72_)
);

NOR2X1 _1087_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_356_),
    .B(_346_),
    .Y(_359_)
);

FILL SFILL42000x30100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL26640x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL12720x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _915_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[6]),
    .B(_49_),
    .Y(_152_)
);

FILL SFILL29200x36100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1622_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [6]),
    .B(_710_),
    .Y(_739_)
);

NOR3X1 _1202_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [5]),
    .B(\byte_controller.c_state [3]),
    .C(\byte_controller.c_state [4]),
    .Y(_323_)
);

FILL SFILL13200x32100 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _953_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_152_),
    .Y(_175_)
);

FILL SFILL12400x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1431_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_496_),
    .B(_580_),
    .C(_581_),
    .Y(_380_)
);

DFFPOSX1 _1011_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(_787_[1]),
    .CLK(wb_clk_i_bF$buf8),
    .D(_789_[1])
);

NAND3X1 _818_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(\byte_controller.bit_controller.clk_cnt [0]),
    .C(_68_),
    .Y(_69_)
);

INVX1 _1660_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [13]),
    .Y(_770_)
);

DFFSR _1240_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cmd [0]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_234_)
);

OAI21X1 _991_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf0),
    .B(wb_dat_i[1]),
    .C(_199_),
    .Y(_201_)
);

DFFSR _1716_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.c_state [0]),
    .CLK(wb_clk_i_bF$buf10),
    .R(arst_i_bF$buf2),
    .S(vdd),
    .D(_389_)
);

NAND2X1 _1525_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [15]),
    .B(_666_),
    .Y(_667_)
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

AOI22X1 _856_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_58_),
    .B(\byte_controller.dout [4]),
    .C(\byte_controller.din [4]),
    .D(_91_),
    .Y(_103_)
);

FILL SFILL42480x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _1754_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_785_),
    .Y(sda_padoen_o)
);

INVX1 _1334_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [2]),
    .Y(_507_)
);

FILL SFILL42640x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL12720x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1563_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_691_),
    .B(_683_),
    .C(_689_),
    .Y(_402_)
);

MUX2X1 _1143_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [2]),
    .B(\byte_controller.dout [1]),
    .S(\byte_controller.ld ),
    .Y(_275_)
);

NAND2X1 _894_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_stb_i),
    .B(wb_cyc_i),
    .Y(_137_)
);

INVX1 _1619_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_735_),
    .Y(_736_)
);

OAI21X1 _1372_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [5]),
    .B(_511_),
    .C(\byte_controller.bit_controller.filter_cnt [6]),
    .Y(_539_)
);

FILL SFILL12560x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1428_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(_579_),
    .Y(_375_)
);

NAND2X1 _1008_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_156_),
    .B(_139_),
    .Y(_211_)
);

NAND3X1 _1181_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_296_),
    .B(_297_),
    .C(_303_),
    .Y(_304_)
);

OAI21X1 _1657_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_766_),
    .B(_767_),
    .C(_714_),
    .Y(_768_)
);

DFFSR _1237_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.dcnt [0]),
    .CLK(wb_clk_i_bF$buf9),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_231_)
);

OAI21X1 _988_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_62_),
    .C(_49_),
    .Y(_199_)
);

OAI21X1 _1466_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_605_),
    .B(_608_),
    .C(_455_),
    .Y(_609_)
);

DFFSR _1046_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.ack_in ),
    .CLK(wb_clk_i_bF$buf7),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_28_)
);

AOI21X1 _797_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_47_),
    .B(_48_),
    .C(_51_),
    .Y(_1_)
);

DFFSR _1695_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [7]),
    .CLK(wb_clk_i_bF$buf0),
    .R(arst_i_bF$buf9),
    .S(vdd),
    .D(_374_[7])
);

AND2X2 _1275_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_452_),
    .B(_453_),
    .Y(_454_)
);

INVX1 _1084_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.read ),
    .Y(_356_)
);

FILL SFILL28240x20100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1369_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [7]),
    .B(_516_),
    .C(_500_),
    .Y(_537_)
);

MUX2X1 _912_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_150_),
    .B(_149_),
    .S(_139_),
    .Y(_9_)
);

NAND2X1 _1598_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_425_),
    .B(_426_),
    .Y(_719_)
);

NOR2X1 _1178_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [2]),
    .B(\byte_controller.c_state [1]),
    .Y(_301_)
);

NOR2X1 _950_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_151_),
    .Y(_173_)
);

AOI21X1 _815_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [0]),
    .B(_58_),
    .C(_65_),
    .Y(_66_)
);

FILL SFILL27600x2100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL27120x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1713_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.fSDA [2]),
    .CLK(wb_clk_i_bF$buf3),
    .R(vdd),
    .S(arst_i_bF$buf9),
    .D(_386_)
);

INVX1 _1522_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [0]),
    .Y(_664_)
);

INVX1 _1102_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_242_),
    .Y(_243_)
);

NAND3X1 _853_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_96_),
    .B(_97_),
    .C(_100_),
    .Y(_789_[3])
);

MUX2X1 _909_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_148_),
    .B(_147_),
    .S(_139_),
    .Y(_8_)
);

BUFX2 _1751_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(scl_pad_o)
);

INVX1 _1331_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_503_),
    .Y(_504_)
);

NAND2X1 _1560_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [13]),
    .B(_593_),
    .Y(_689_)
);

MUX2X1 _1140_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.din [1]),
    .B(\byte_controller.dout [0]),
    .S(\byte_controller.ld ),
    .Y(_273_)
);

FILL SFILL26320x18100 (
    .gnd(gnd),
    .vdd(vdd)
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

AOI22X1 _1616_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [5]),
    .B(_370_),
    .C(_733_),
    .D(_714_),
    .Y(_734_)
);

NOR2X1 _947_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_150_),
    .Y(_171_)
);

INVX1 _1425_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSCL [2]),
    .Y(_577_)
);

OAI21X1 _1005_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_120_),
    .B(_199_),
    .C(_209_),
    .Y(_43_)
);

FILL SFILL42960x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1654_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [12]),
    .Y(_765_)
);

DFFSR _1234_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.dout [5]),
    .CLK(wb_clk_i_bF$buf8),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_228_)
);

INVX1 _985_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [7]),
    .Y(_197_)
);

FILL SFILL27600x100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1463_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [12]),
    .Y(_606_)
);

DFFSR _1043_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.read ),
    .CLK(wb_clk_i_bF$buf7),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_25_)
);

INVX4 _794_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf3),
    .Y(_49_)
);

NAND3X1 _1519_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_658_),
    .B(_659_),
    .C(_660_),
    .Y(_661_)
);

DFFSR _1692_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [4]),
    .CLK(wb_clk_i_bF$buf11),
    .R(arst_i_bF$buf3),
    .S(vdd),
    .D(_374_[4])
);

NOR2X1 _1272_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_447_),
    .B(_450_),
    .Y(_451_)
);

DFFSR _1748_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [13]),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_421_)
);

NOR2X1 _1328_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [11]),
    .B(\byte_controller.bit_controller.filter_cnt [12]),
    .Y(_501_)
);

INVX1 _1081_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.stop ),
    .Y(_353_)
);

FILL SFILL26800x12100 (
    .gnd(gnd),
    .vdd(vdd)
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

OAI21X1 _1137_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.shift ),
    .B(\byte_controller.ld ),
    .C(_270_),
    .Y(_271_)
);

NAND3X1 _888_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(\byte_controller.bit_controller.clk_cnt [7]),
    .C(_68_),
    .Y(_132_)
);

AOI21X1 _1366_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_521_),
    .B(_531_),
    .C(_534_),
    .Y(_374_[4])
);

NAND2X1 _1595_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_716_),
    .B(_715_),
    .Y(_717_)
);

NOR2X1 _1175_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.c_state [0]),
    .B(\byte_controller.c_state [5]),
    .Y(_298_)
);

DFFSR _1689_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [1]),
    .CLK(wb_clk_i_bF$buf2),
    .R(arst_i_bF$buf3),
    .S(vdd),
    .D(_374_[1])
);

NOR2X1 _1269_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [6]),
    .B(\byte_controller.bit_controller.c_state [7]),
    .Y(_448_)
);

INVX2 _812_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[0]),
    .Y(_63_)
);

NAND2X1 _1498_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [5]),
    .B(_640_),
    .Y(_641_)
);

NOR3X1 _1078_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.al ),
    .B(wb_rst_i_bF$buf3),
    .C(\byte_controller.bit_controller.cmd_ack ),
    .Y(_351_)
);

DFFSR _1710_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.fSCL [2]),
    .CLK(wb_clk_i_bF$buf1),
    .R(vdd),
    .S(arst_i_bF$buf9),
    .D(_383_)
);

INVX1 _850_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.ack_in ),
    .Y(_98_)
);

FILL SFILL12240x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _906_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_143_),
    .B(_139_),
    .C(_146_),
    .Y(_7_)
);

OAI21X1 _1613_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [4]),
    .B(_427_),
    .C(\byte_controller.bit_controller.cnt [5]),
    .Y(_731_)
);

NAND3X1 _944_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[2]),
    .B(\byte_controller.bit_controller.ena ),
    .C(_68_),
    .Y(_168_)
);

NAND2X1 _1422_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(_574_),
    .Y(_376_)
);

OAI21X1 _1002_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf3),
    .B(wb_dat_i[5]),
    .C(_199_),
    .Y(_208_)
);

INVX1 _809_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [8]),
    .Y(_60_)
);

OAI21X1 _1651_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_761_),
    .B(_762_),
    .C(_714_),
    .Y(_763_)
);

DFFSR _1231_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.dout [2]),
    .CLK(wb_clk_i_bF$buf8),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_225_)
);

INVX1 _982_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [6]),
    .Y(_195_)
);

DFFSR _1707_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.slave_wait ),
    .CLK(wb_clk_i_bF$buf2),
    .R(arst_i_bF$buf2),
    .S(vdd),
    .D(_377_)
);

INVX1 _1460_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [15]),
    .Y(_603_)
);

DFFSR _1040_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(cr[1]),
    .CLK(wb_clk_i_bF$buf0),
    .R(arst_i_bF$buf6),
    .S(vdd),
    .D(_22_)
);

NOR2X1 _791_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf0),
    .B(_46_),
    .Y(_5_)
);

NAND3X1 _1516_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_642_),
    .C(_487_),
    .Y(_658_)
);

NAND3X1 _847_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_95_),
    .B(_92_),
    .C(_90_),
    .Y(_789_[2])
);

DFFSR _1745_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [10]),
    .CLK(wb_clk_i_bF$buf11),
    .R(arst_i_bF$buf2),
    .S(vdd),
    .D(_418_)
);

NAND2X1 _1325_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sSCL ),
    .B(\byte_controller.bit_controller.dSDA ),
    .Y(_499_)
);

FILL SFILL42480x26100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1554_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [10]),
    .B(_593_),
    .Y(_686_)
);

NAND2X1 _1134_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dout [0]),
    .B(_267_),
    .Y(_268_)
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

INVX1 _1363_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_511_),
    .Y(_532_)
);

INVX1 _1419_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.fSDA [2]),
    .Y(_572_)
);

INVX4 _1592_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_711_),
    .Y(_714_)
);

OAI21X1 _1172_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_292_),
    .B(_266_),
    .C(_295_),
    .Y(_233_)
);

INVX1 _1648_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [11]),
    .Y(_760_)
);

DFFSR _1228_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.ack_out ),
    .CLK(wb_clk_i_bF$buf4),
    .R(arst_i_bF$buf5),
    .S(vdd),
    .D(_222_)
);

INVX1 _979_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [5]),
    .Y(_193_)
);

NOR2X1 _1457_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [10]),
    .B(_595_),
    .Y(_600_)
);

DFFSR _1037_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.din [6]),
    .CLK(wb_clk_i_bF$buf8),
    .R(arst_i_bF$buf0),
    .S(vdd),
    .D(_19_)
);

DFFSR _1686_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.dSCL ),
    .CLK(wb_clk_i_bF$buf2),
    .R(vdd),
    .S(arst_i_bF$buf9),
    .D(_372_)
);

NOR2X1 _1266_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [2]),
    .B(\byte_controller.bit_controller.c_state [3]),
    .Y(_445_)
);

NAND2X1 _1495_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [6]),
    .B(_637_),
    .Y(_638_)
);

NAND2X1 _1075_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_347_),
    .B(_345_),
    .Y(_348_)
);

FILL SFILL26000x18100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _903_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_dat_i[2]),
    .Y(_144_)
);

FILL SFILL14320x22100 (
    .gnd(gnd),
    .vdd(vdd)
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

OAI21X1 _1169_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dcnt [1]),
    .B(\byte_controller.dcnt [0]),
    .C(\byte_controller.dcnt [2]),
    .Y(_293_)
);

FILL SFILL27440x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1398_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [13]),
    .B(_516_),
    .C(_500_),
    .Y(_560_)
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

OAI22X1 _941_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_83_),
    .B(_165_),
    .C(_140_),
    .D(_166_),
    .Y(_22_)
);

FILL SFILL42800x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _806_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[0]),
    .B(wb_adr_i[1]),
    .C(_56_),
    .Y(_57_)
);

FILL SFILL26960x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1704_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cSDA [0]),
    .CLK(wb_clk_i_bF$buf3),
    .R(arst_i_bF$buf1),
    .S(vdd),
    .D(_369_[0])
);

NAND3X1 _1513_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_654_),
    .B(_629_),
    .C(_487_),
    .Y(_655_)
);

INVX1 _844_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_64_),
    .Y(_93_)
);

DFFSR _1742_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [7]),
    .CLK(wb_clk_i_bF$buf5),
    .R(arst_i_bF$buf5),
    .S(vdd),
    .D(_415_)
);

NAND2X1 _1322_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sSCL ),
    .B(_497_),
    .Y(_498_)
);

INVX1 _1551_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cmd [2]),
    .Y(_684_)
);

NOR2X1 _1131_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_rst_i_bF$buf5),
    .B(\byte_controller.ld ),
    .Y(_265_)
);

INVX1 _882_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_72_),
    .Y(_126_)
);

FILL SFILL13200x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1607_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [3]),
    .B(_719_),
    .C(\byte_controller.bit_controller.cnt [4]),
    .Y(_726_)
);

OAI21X1 _938_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_127_),
    .B(_72_),
    .C(_164_),
    .Y(_165_)
);

OAI21X1 _1360_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_510_),
    .B(_529_),
    .C(_500_),
    .Y(_530_)
);

NAND2X1 _1416_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(_567_),
    .Y(_372_)
);

FILL SFILL27600x22100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1645_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_370_),
    .B(_757_),
    .C(_714_),
    .Y(_758_)
);

DFFSR _1225_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.din ),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf8),
    .S(vdd),
    .D(_213_)
);

INVX1 _976_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [4]),
    .Y(_191_)
);

NAND2X1 _1454_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_453_),
    .Y(_597_)
);

DFFSR _1034_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.din [3]),
    .CLK(wb_clk_i_bF$buf1),
    .R(arst_i_bF$buf10),
    .S(vdd),
    .D(_16_)
);

FILL FILL53040x36100 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _1683_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.sto_condition ),
    .CLK(wb_clk_i_bF$buf2),
    .R(arst_i_bF$buf1),
    .S(vdd),
    .D(_379_)
);

NAND2X1 _1263_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.ena ),
    .B(_442_),
    .Y(_443_)
);

DFFSR _1739_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [4]),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf4),
    .S(vdd),
    .D(_412_)
);

NOR2X1 _1319_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sto_condition ),
    .B(_495_),
    .Y(_367_)
);

NOR2X1 _1492_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_634_),
    .B(_632_),
    .Y(_635_)
);

INVX2 _1072_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_344_),
    .Y(_345_)
);

FILL SFILL12880x28100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1548_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.c_state [9]),
    .B(_593_),
    .Y(_681_)
);

OAI21X1 _1128_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_362_),
    .B(_238_),
    .C(\byte_controller.ack_out ),
    .Y(_263_)
);

OAI21X1 _879_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_122_),
    .B(_64_),
    .C(_123_),
    .Y(_124_)
);

FILL SFILL26800x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1357_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_521_),
    .B(_524_),
    .C(_527_),
    .Y(_374_[2])
);

NAND2X1 _900_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_141_),
    .B(_139_),
    .Y(_142_)
);

NAND2X1 _1586_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.slave_wait ),
    .B(_708_),
    .Y(_709_)
);

OAI21X1 _1166_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.ld ),
    .B(_290_),
    .C(_286_),
    .Y(_291_)
);

CLKBUF1 CLKBUF1_insert6 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf11)
);

CLKBUF1 CLKBUF1_insert7 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf10)
);

CLKBUF1 CLKBUF1_insert8 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf9)
);

CLKBUF1 CLKBUF1_insert9 (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_clk_i),
    .Y(wb_clk_i_bF$buf8)
);

OAI21X1 _1395_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [10]),
    .B(_554_),
    .C(\byte_controller.bit_controller.filter_cnt [11]),
    .Y(_557_)
);

FILL SFILL43120x14100 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _803_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_54_),
    .B(al),
    .C(\byte_controller.bit_controller.al ),
    .Y(_55_)
);

INVX1 _1489_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_449_),
    .Y(_632_)
);

INVX2 _1069_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_341_),
    .Y(_342_)
);

DFFSR _1701_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.filter_cnt [13]),
    .CLK(wb_clk_i_bF$buf5),
    .R(arst_i_bF$buf6),
    .S(vdd),
    .D(_374_[13])
);

AND2X2 _1298_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_451_),
    .B(_476_),
    .Y(_477_)
);

AND2X2 _1510_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_651_),
    .B(_650_),
    .Y(_652_)
);

AOI21X1 _841_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [10]),
    .B(_87_),
    .C(_89_),
    .Y(_90_)
);

FILL SFILL26960x32100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL12720x10100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1604_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_427_),
    .B(_723_),
    .Y(_724_)
);

MUX2X1 _935_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_152_),
    .B(_115_),
    .S(_154_),
    .Y(_19_)
);

FILL SFILL26800x6100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL43280x36100 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1413_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.slave_wait ),
    .Y(_568_)
);

INVX1 _1642_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_434_),
    .Y(_755_)
);

DFFSR _1222_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.c_state [4]),
    .CLK(wb_clk_i_bF$buf4),
    .R(arst_i_bF$buf7),
    .S(vdd),
    .D(_220_)
);

INVX1 _973_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.clk_cnt [3]),
    .Y(_189_)
);

FILL SFILL27920x100 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1451_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sda_chk ),
    .B(_593_),
    .Y(_594_)
);

DFFSR _1031_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.din [0]),
    .CLK(wb_clk_i_bF$buf0),
    .R(arst_i_bF$buf10),
    .S(vdd),
    .D(_13_)
);

NAND3X1 _1507_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_472_),
    .C(_487_),
    .Y(_649_)
);

NOR3X1 _838_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(wb_adr_i[1]),
    .B(wb_adr_i[2]),
    .C(_63_),
    .Y(_87_)
);

DFFSR _1680_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.al ),
    .CLK(wb_clk_i_bF$buf11),
    .R(arst_i_bF$buf3),
    .S(vdd),
    .D(_366_)
);

INVX1 _1260_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_784_),
    .Y(_440_)
);

DFFSR _1736_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.bit_controller.cnt [1]),
    .CLK(wb_clk_i_bF$buf6),
    .R(arst_i_bF$buf5),
    .S(vdd),
    .D(_409_)
);

NAND3X1 _1316_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.sda_chk ),
    .B(_785_),
    .C(_493_),
    .Y(_494_)
);

FILL SFILL28880x36100 (
    .gnd(gnd),
    .vdd(vdd)
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

OAI21X1 _1125_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.ack_in ),
    .B(_257_),
    .C(_260_),
    .Y(_261_)
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

FILL SFILL42480x24100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL25840x34100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL27600x16100 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1354_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [1]),
    .B(\byte_controller.bit_controller.filter_cnt [0]),
    .C(\byte_controller.bit_controller.filter_cnt [2]),
    .Y(_525_)
);

FILL SFILL42640x4100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL SFILL12880x32100 (
    .gnd(gnd),
    .vdd(vdd)
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

INVX1 _1163_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.dcnt [1]),
    .Y(_288_)
);

NAND2X1 _1639_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.cnt [9]),
    .B(_710_),
    .Y(_753_)
);

DFFSR _1219_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(\byte_controller.c_state [1]),
    .CLK(wb_clk_i_bF$buf4),
    .R(arst_i_bF$buf5),
    .S(vdd),
    .D(_217_)
);

NAND2X1 _1392_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\byte_controller.bit_controller.filter_cnt [10]),
    .B(_554_),
    .Y(_555_)
);

OAI21X1 _1448_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_482_),
    .B(_591_),
    .C(_442_),
    .Y(_592_)
);

DFFSR _1028_ (
    .gnd(gnd),
    .vdd(vdd),
    .Q(ctr[5]),
    .CLK(wb_clk_i_bF$buf7),
    .R(arst_i_bF$buf6),
    .S(vdd),
    .D(_10_)
);

FILL SFILL26480x8100 (
    .gnd(gnd),
    .vdd(vdd)
);

endmodule
