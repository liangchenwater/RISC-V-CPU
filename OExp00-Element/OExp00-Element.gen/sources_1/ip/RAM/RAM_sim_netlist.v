// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar  8 13:38:52 2021
// Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/liang/Desktop/OrgLab/OExp00-Element/OExp00-Element.gen/sources_1/ip/RAM/RAM_sim_netlist.v
// Design      : RAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module RAM
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "RAM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  RAM_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27552)
`pragma protect data_block
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
InwZCAfDVkiV2Y4c+ELqVj2ZfSIb
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
