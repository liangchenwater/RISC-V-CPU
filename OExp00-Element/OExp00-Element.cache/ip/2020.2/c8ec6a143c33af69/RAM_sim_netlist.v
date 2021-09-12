// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar  8 13:38:51 2021
// Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RAM_sim_netlist.v
// Design      : RAM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27680)
`pragma protect data_block
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
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
