// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May 18 15:08:59 2021
// Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ simCPU_RAM_B_0_0_sim_netlist.v
// Design      : simCPU_RAM_B_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM,blk_mem_gen_v8_4_4,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM
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
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE_NAME = "RAM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM_B
   (douta,
    clka,
    wea,
    addra,
    dina);
  output [31:0]douta;
  input clka;
  input wea;
  input [9:0]addra;
  input [31:0]dina;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire wea;

  (* CHECK_LICENSE_TYPE = "RAM,blk_mem_gen_v8_4_4,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM RAM_B
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* CHECK_LICENSE_TYPE = "simCPU_RAM_B_0_0,RAM_B,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "RAM_B,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  input clka;
  input wea;
  input [9:0]addra;
  input [31:0]dina;
  output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire wea;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RAM_B inst
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
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
Df2u2bwjwksAvyRQCmp2/6kyXF36dpQx4plHEOkBMqPYb3vlneD9wgq3SapqroW0MRRtXsxeLEuR
0/PZOZuFvXywNzzWUcA8WzYZ8d95V6K9hCd2Ts6sm5TyAwH3PODzciipJtTRAxQvVKms77BXfbRP
8WRB4p6MbMDWoKFgncDnuES79Io6hgWZWezFlYlx3RgsrOUKK3WbsbhezuTm8esf9wEBAvXyrsf7
ngsTNuxRRFx/FEpNUiuIQfFE2alICkCl2CxEqw8AuQHKGn0GGkZWavoXrQ+D/lFOn2bey/ZAeXCv
UB3zBVoW7SzA1BwxobYy3L3ysugeg9gNwfTDx9mwvydiBXk1lMX1NCwTjVJGmjs3MQo+ikoZYPEq
kc3M1J8WOBlD/dKZSbFgKUqbU3mDb/0tXKYP+ZBR+OU5x/VBBq/UgREkr+i6AUjmrT1DKaxm/gef
GHYUutm55KUzQPjE0yLKnDwflLhBjXmYIO/sUh2Orh4mBx7hunCGo/HhTO2In3E7oD/iRuFAjULL
CRwBBMNyd1V+MSMSlPPeyKMQqr+RrFqvDBKPZcV/fnDqDNKh4YnDYP3gcZm3+LHZuOv9Ww6gaE+P
u3r3/E4uvhf8nD9WY0XEpmOp/oA8Uz5hcm12LBR4cRNfJYIhIk2RK+uaV3u8YYf2ZjCYtYEYrYO0
ZlkV6O4bqsI+O0Gp3w5TMekCG0gt7DxnWnHI9joXAaRUptPqQ1u8MZUiljAlmNdhsSqM0Kucyfll
nshYmCm63beRhaPJprMdZMksw61cUVFqyvNUSLx409Poc3TzT8hCAJ1q8uNb7wdBmZKTQKhr2wp5
/EV4QuhnnOoM6VobAgulBAK9S4Chp4zCfxMvgZNyqd2Y/xnroMel4wWgR+UsM3nO+WtH0yCkQ4Sf
fMgDhluat45LVmo+8UuSdlY8Cg88PLdqp9T3+V7j/p3uC/7DghWMoNCW8yIsF8CIkgd5RWm07/BR
IqHGpmHuLUyAwgNw6ulLLdbT5H/7X6rvsX7whGsCUaiJv+mJ+uDLDaL1d53zGXS7i+AqxDn4+fF0
3xtRhPmn6CqXjtppMw20vO3YyWoD8CjqL5YeKQtH939xi0K7lgQpvNDtDn+60Lu1A/vHsP8RSrUo
kH+H4rmaRE3ulXtVbNMiZBf9Ofx9Sq4SzQgq8db3iQF2KE2Eha7oInvU1KEezD2t2saRmkiEGmP4
L4Rxq7z2X9gv8kUxd68i9Dy1r1NgS/Tqdpp6Son9TBxyKZaH3lfdcvPNQvNKrbPDzD85iSEYzf4M
Gku9k8czyeJCSY4Mwzn5BlOutzCGPQe+t+HO6zw2HDgHEwidki2mlkoZ6mLFfUpFPDJEG/eHi0Wg
mC4SqbABHWGoNAekO0fqJbkBxxYZvLRyih8WcY/3nwfljZMV2cTaN7d+yVFk8o4TB/b02YuelYmT
eTvOWTLujKI/nNoXc9/0+rRGkjFxCA4IMwbHo6tMg0Q7Q1mLU/6u46BIaIDPWyRbntSMwQYcB7Sv
paAw880Quw28QJ1Cggp9ekJoj2yRGhw1Ilno+xlflcRAEdr4z6j1QyY0mVF4bY1GwM2Fz2QmTerT
ZimGpgOfGDj7Ic1AIa7tCXPOdpHonhAtBzxB9p1AlPCsPBcKvV59ZAyU+xTsaFAIWRz9PMTH6yaD
9l6Tx2R6sA/X7uaxpL+fqLDxjDv5EOqmDF6UYZEuKqYns8INoqUgyas8VKPMqxYmv1reV+raqdoR
kP7ijAXrVZrlBHRvzA8sPUMbV1izvUcKehdoGBHyCm7+LKPOHmyKMZs1h/aSwUhyknYLODKF3onT
ggyv1a5YPjyV45oBU9Oh6Wth/yO+WxJghVMn687kxTvSaYDDibG6ZvPx4R7uUtbhPKPw2PcYpbju
OdUIRmfU1uK9iGrx3L3FvaxYc2q9rRTeNUbU9GbjwlVRK5gyNHOjUiBAnOtjYl7JUv/acedwX51Y
2WvggCQuuoHCa/RSMjOe4xukvz8oY8F+DebH736Ot39LHaYyQZ5l6N0mN6DqcLlP/3QMwskDCHCn
u4vXKTqK3G92DU+yc+eGYkLpiZgsbOOJDEzjt+tcGC6nAtvrzAXJeENNB797hFILyaNNwkR2oB77
WXU/QKG0UnXxC5T4ycj5J5j4zQgIT/MBKAVdfN0DjWgRxunXrB3/uUOlOMKoM/pwrYCXefXcC1t2
zgc2It0GSrPBAFtlZToR8EIqyHpeqiu+jZRYIjZSxFvSaJZC918f+mQubT3FXQS8t9cJof21Nc56
iKjFe8ywbjW32GbuCymuwhnG9g1ZMSRFlEjogJ2OkjNl/BASc2gcgVviR4wMLOb5Fl5oA0fKtiYw
n7EWaYm2YQt5ChDaOHUY9ZRfPGZiiG/KwRnZseMLcgOus+GREA+TEUvoccuriamyIwrvTbRhU9O8
4VJe7kee5TI8TKS+6ejgCdM3YMzochaTkxvvnDRCSFAGI4Usd4V0y931bzFxTCg2iaOxIh1x0l7v
+gx2qu1z7ox9DJFGPVWJ1v8UHvdlydx9/tjSSwNshHKAjVz033xmZQFjDOdKe7d0rRRLepNwJqha
1u7f/pnt071D3B/zRgQtz0hVrpSI3Z006kPajo6Uht60vOoKmbNzlNKDMOullmTkt4OdFHF64cR8
CIYS/GJY2M5X5KOqjeBG70Ftr23L4oe/mapM6SaEHOGJ+fxFvUxiFFPeHNbpMf6mQit7vflnSWuC
6bvCJ+IjJ7ahv+BL2TUwPxVcg5qcmCqGhKmsSYztafV7ubHKhHlPSrK60sXOgiP2+EvUqmgjQfB8
g5otXGZyTigpFvGvSlHMAoWaalltspNx47fM3GRchIim/T8+EjujNiQ+aI5b7usDT460lZqIBjTc
hhS89w+GqaFd3yoce1VSXQmLCugJ1RsRF4BHsAIpepY382n5TtvjLyBTrRZqw16kPRrkheTLfS6S
gbqyQ5G7XxWxI9F5JikEhwlNEG6CX/9oNruNmdSNMQ33r9y7Zo9cG6yBRG/FhfofrD48W/b/a00I
e2OIFAXbLKKjACextPAG5N4OxovzDT2pi/5vEbgvIpyl61xbsyGt7HPPQq2gwQDCvJztZPxltBoW
bSUJ0f631C6hOYba70mAdyL12pEbQcEmRc01S5AMWlIY+Gf1fchIR280zZ8F1U/atSPKaAmLafnC
jmxQnqWHhE+anjmQCJbNUYfaEFLknBtl2d0ux+vNF2yBeEfD+zXrJXTFQScea5ZlMd4rBHASfzqL
xNt7dgdUb6D5a3FmEZzN8EKsXYQkEpzrdWz5AP3Ylsrjj9hTeiyEgdEZTxccUNf9dYIt9hXwrwSQ
r1q17CUqYNkChp4QXJlPHi1AklsOg7QgV/45T0qBEC+nVib9QMQyYuhNJnWVlugktCNLuQij+vFQ
FB4G+hWcqDmCZBnjH6jaSyxeP2TlX0fZ9wRu3vxNyk1svPO0yBSXJkPVJ9tfLnudO1oUTetriA5q
lLwGSJdsIm9Jt4jrDhi6QJmBXAelBqTLUaG7+ii/obshBZIHC485u6Js1y+wSmq5nKMXPm5FK4zC
gHJX5I+jV8Sdf3beIg4LUMjCihqN5VKtk8dh6TgkkUm8R/503goX7M/hcHnkI/QcyYb/0OFt8/2t
Br9KNToFZdVbezCQKyfNiI14qstGozeLdgeQhvB3yb1Ys8pkrcTGBXaE0Pum6zAL6pDxADQPZntb
ax5UbEiALGlGl9tzeIl5YO6Fm/y96051kfZ405VbAznMk20YXFDR2CMEgLM3zJ/HZMYvhG/hOEIv
yJL9zMPa44SPJxjSfIXeGUu1b0GQANiRyTtsHnLUcHPYiOXD7EuBhAzwtZ1jmmK1lZhr+/SVPWl6
arCOce2k72J/P7nAUu30DrzcwiS412FLvdwPRT3b9oa4gZafz4wUHYpmllcpZWUqOaeEcwxIOwgC
4m/r3Uc0rbbZxUWbKugpWOBw6wVQQrK7I44xRpFGB0O7cIkR/VF3rUM7pJmAnk4HVufhHltq7SH8
/nEwTP0l5nL0HVJY5W9vzMymWG+0TUZJjS7CxzvjR71AIABWfUSDqZeBpX70XaKg88b94z18olav
lPzJEGD8kJ8uH7+BeHDYm8R9IovSxup8D2el2TH8MdpXKb0XD50ISvxiZzpFW8iBbivnJomdbDNt
ASk2wi3f5+M4EAunM5b/tmn2NA+o6yuTYBTrfhm3QyR9oxCKBUwC4HiOFRhNvU0ktQ6bZBiEkOLN
duzJ7K5a3pwkq8PdFMESK+IzbNe9t387jMyKPVwa46HSoMqvVbq5zQzTc/UapPaI4xIb+j860cHe
4l18qoygTyPeZfM5qYvyoAfcUhG+0oyXDOgFe+3LxflCmzVvkgqj3svecodf4J6fm8MevTSDmzn6
dr1ltwNLkHDukLHZ2lxLOSQaE6R5CZD33Ge8gbCkq5sWZkcwAenXfYQRBUljN7W6RkZNhLPoy40u
A93Fnvwmfw+b3vCKQpKJZ1/P1pm5R7y/oR0uv0OVpVylsdQ3OKyzyQpcRvZYWGfOrmmKmsu7iibb
KnHayVTz10x3fY8Ejmaht52DOjRifkDZ3O1MTh1ZkTXR9xctp4O6oH4svNaI2LyMh29fX9pm3zuJ
KifD4+XiupeheT30iAOOSTH0tU9pKbNciVOo8gIxCzZA7TLjQW1etLVdC+aLgvD8RZjA2qtuPaF6
sofZRJ3N6FeHC7Kjl+Ce06ZOd0YLghwVva2Z49Ge8fpDW+my8PPxlTgXsH/aQv+iqRQLaWU1ODiW
zFy5tkZl/SeND5UmlVTlvxsLM8e49FSuL5YfoqqE5vlf6bTj1blPKDAcZRLNwddNZx9JaLIlWeVt
srmxUpZRfrH9XpiejHQuRkerYeMQXmRz4BupPb3Axk26ruwN9+NWzMHgbyV7GDda5qV7G2uL5elT
2ipPx0KFZ61h1jjXH4PmDeuO9ol9YTK51/b13p0nJv6nyiZXXw7WLaHe3WEaCdNetnl1+ou4hr9J
HxrzbaDWT3PyrnctMF5230Hg6XePEKiUNUe4oWFunFPXq/gCrbF+U2UXZV/jU96asQ2QaDq5GpzF
98e7mPF3YNg59VgZjXDVeetMGXaRGcHjseBkiU022cSGHq0KCq7vvhjJP/JeYzGa9IOLe9mbaXAn
DOYLmzzshONAYs9y5vSAWZgh0Tq+4Xg7gt6youFoxVG9RcbNtdl25r7baddHZRyQKpYN+seAasSv
d7nGNqrxic/vPIDKDNh/vD9Mlnqw/wzxnih2OC7zzhBAhwvqLxc1l/zpRUk4tHVFzWO7e+OhKQwx
0OAppMtCi6Rs/vfCS2xlDNsVhVCizsC/ULL/dqeL4ZQUj7W3dZOn87Viw/HXelli2YgCmztHt1xO
p8pPTN5bL9Zp8XCwFVwaJTUHS612myNd6XOM5pGw6K15ClLwCepsmgEnsoa4E1rbvhdpHdIij7SI
jMVqUt5QTqy9QHnLBN+uSj9tdNp7sX4lehmiv8QvfjHYrjxFr9JgkgFYLSw4IfGvoBrkXzNX4vTx
x0rzI3d8JeCUoiFr3TC8mjQfvJui2E0BbM128Er8tOFTa3rSRhs2Kb4mMon6NOGY+3rfIEYYsWed
UGHStWBf77R6w94oY4Ng+kdlmDnCdv44Bvl5XI339XAn7Mm11RZVDfudxKs9Nc+nSCmCjt+lX5WK
H6VuJcMXHTIAHQCnOg65zu7CPtJer/9K9pK1oF57/mwV+vr2GH5CD0Ayk+cC/kSFCz2kz78p+MHV
Y6FAlMeRBIoxCPvmdM6ye5ad75cypOleBkYqPDZlAMrzdt12c+T9NjaVUqKhH2QZ9SrKuFs+yoim
OotynOnrgbxl3h+iiUhkMU5wohJb89hCMeYQ4rwJbm9nOgutaqUQ05uP8Y4unmUsjbXMymk8ZpdC
5v+fJnsByfOQpyvnLTN98h6mYGJJV2/qADfz3s6TDnrMxjbUCSQ4KbzLbTgw+9MgVV0fVqtI+93I
i4avGOAZ+tPloLl0vIIPueh995zhwMLmHas6dLLO52hRjeKAL0/g6OpnXnjuOwvPvqS2a2fMD+wQ
9uS8F9S712VOgCvzU/bT+iKu+acZhAYIwRMkP9baEK5LmgcjibjlWLhl/2F+8AeWhlaYp9PDcFsd
UVG21wkmGnLhUvk5xY5vMUHgXMO+w3y5tcKVFS2IwBWXvb+zQWnOYT1Wb6R6xQJWdBAT0pQv76I9
mfXLtJesysbXAhGKgxV1I3CSKG4R3GqiPR0DQ12Qb2cxLj7ZLKrQONE9H4S43D0+3P7JzL+JlNPD
n0XuWUhnaeChypFby7FgWR2YE4le43oyy6/pWHfmFqmjOXauxba+U2kbJUXTSPtL7+QAt0goSsXO
jyfhwca/gpa7BSRsej0Si8xgYsz0mZNbBbT15hFxQra7oasWvixZaeg4Pl+euTgZ8UEfI+Aty02g
sg/V8HHmD7yQ6FryRN9S6t/Iw9njis2PsPgwwjamViotAggic4Kg8SZavhxeMVA07JHUZZRzvCTS
wa87ewQfxCsSjHSUZIgLaxufjMNOzI4nNo2VljncDat4EEA3wQ2qjY9tpjDjcCDdx23GnetgC6Av
ax6dAAOmQFaE4iD9gRYCT99xsrd1jsCCA3OHOMtg/RJ2V9VqUUw90h0jHgFNxhcEXsIcqhtPLgxp
4qPZucZ2e3mtnummk6YOuEOFWCnw6J0yy5jcCisuwOlQ1i8zTlHoSoR3sYwjolkin9PxNEYPaJtg
LD9dAnZ2DzxJxTH4hjNjonhR+5MqhMNcsJ1dN3qttvknXNcsFxsS6SjBCJKsZtzHYOiVnMKS3aTF
YjLVhnCXLe4HcVqwwz+c2NIqoALeFaCMjp1sduebAsof9WbHAuO+m/LxyU9TZMjmiUTN2jJduoRj
4+ezWNvWVWu2+IkE1iE0XlqIbEjjWwxGsAiFhpwMsyopQmqogMbmDKXWie/9ZNO7EshZY+xlideS
sNQzNFochz0mA6myG/zW15psRB7Mijh1wYlYX9aOASlqL6lnZaEAe1TBIBtcl1J3Ce9KdydSGPBt
yET9xNIK22E1hPUsbPm1f9n+XsouCybxKWXAS8pMg/C0bxHc5G5oPZVkWCZsg2KcNtyKNcnQkp7k
TxZktSVnHs2GTcxj83elFw79na+E2A3d/kvR1ZFrCgO5ILbbwHHrBTLEXrrMcETHfYqUbvLTHNAn
Tp+pNGhQOB8BFSoguikD0F9WW6VnJrRIW05C++FpY3j70eR9yR3ytMe4ZOysF7XWwycclQUGdOcQ
/hPSqnbi50BMXCwBBFblcbzXCxJmFb27V3GvICIaeLVxWBW2CYvVxV/6r5bJES6DIxUyVKL23aWZ
4K3AFZvaOyTlmABUnz8gr69w4hj43bFmfG+IhG3U1wWU51gOjFhVaFaL0CdUR2ZYQTQhtuSdN9kT
JEjQp9smlV4zu52FMKcUT5DjunJIXM8jnH5Tb3Kz45kVJMnFiOuyPQBR5vypY0GCvX1yQLvz6oRs
EjnrU3ghgaIv+HgSl+0nnaZSatL2Fj+28UNp7xOdGduLx1X0GveiwMJENH1BpUP5YVk085FEvssz
9Yw6vQQnedNpZ7nexBg3GJr/gVztzhpJtslif2q9KcNQDQGfUPC0iqtRjXZJXU3HCi92OHxdTBvF
tShShX9olvrg8PZZKJttfgu4+kBskkrnUvLSs6ihqT3z8B5/SPj0LABNSvQsMOSiCeoa8ixXPyB4
PWMcv0CuRFCgInq5A0p9WREavFkI5GlS5m8iAbdRLk0JKd95uZijg/rVfOo+eQ8lbH/CMoH6mv+q
GwcCo1VNsKZehWLsHEVO//dS5sEoRt3ShNfcOJcfUUTZdLdj3naCAjjVk4zMKcaBcrCLPFKKUh/n
eh+H0W0NX7QLx70v+5IulYSsnBjp3FTVcGk+X22t5TP1ZtpAotU0m892jMclQiY6r3ELYGzufwju
sOggPGUw41ABdHmtK1ujDDAUJAnTurcuJVP4gBAP/wYgqWmPN2ljT8LDwblq7GobvUkukACCdoR7
T+yOmj47BA3MA+6EBpREX4/dsmqlwzMPgk1uehef58uXAcTBM/VP+vp5C4ZSYYv5LvvWqbm03ZEf
a/M3I/jfbseAiXctlmFBhyIKMb60yY6MosPVbUOF1KLb5OWZD5rjCkjlP03I9mCKVG5o3SUdXYKl
fDR796FsF84yxf++xUbYZB4kB4rXQ4R5RnxilJ0tp2X+l1Ky7VxhcoO2v5XDXSVlSUIbynxEuEGv
UOBTMoSOEHEeMpBs1PEM+rpOi/B8JNEr4O6WY4aFRjJf6q++H8y62jP3dK5a0rHtVezgplHqRz98
SIWKkyjiVKhoC/nGdPuePLBviUS1V4b0sd3hX5i0UDNuUlsX38xzoQRpzrWGHE0XrMw+WfXyJ1MZ
XQM+8FnygrqNpiKvw79nhhMDvkOP0VqA/jSxwEHYejIPjGr8K1xPIOOxeypqol0bsRuvQtjfAkss
ttUy9jm0kOXzAeKa7bpFNLryv3/N3kepsthH/6TzM/v9tUf8pj1+NtWYZZWNiEvy3OLMxit4xu4Z
oJ+H0sFO1+IbrQBQ1PsWxf2taLaq0KiIY3PRdTW0ZlAn8G424qOD55wTi5VcP5NEzJusBTZjs6LD
GBlV6uV+B5Mqnv5e6u8FcQiWxF+4I997giDLJYBMfqFcCBS044J9XCGSK+QAo9k7sp3mcVrvFNa9
hbLND2c8Lqs0fB1TMxRCDii2wGVMKbS+MfRO/zKuK6n4puuuTOVBP1oiCuOaHlAKiovBV2TtcLUg
YgG3xCK+6eZbcDrIbdjqub/r+iuw5PKzBMw3+z7lc9cXR5o8LFB8UrudnnDSffvqJCwF58KMafnI
t3/fcY1qotAL63FqRsQoz6pO5Fi5xTo/gSCUuMMIvXISGlK1+8SkcWwaJGGMG0nuAoI/Txw8UpFr
ZQIbobASj9Y4TppylkBVab93pYCRz0CZc4G7TnbdIpCnBJBsZpaOGFTJV6QB9gPzjSIzJ0qMdqMz
MCUi8G8tqu+If+5ob9UTpdxFQiu27uixviEqYDNTH2B55yT0gQHjLyvt5/HgDn+TIHYP6o3uQl63
Nsx6jOaR+AHEdSmVpPaSUIIboxR2jTBKXqvWyKDcyK9of/Ve3h7U5QqbstUjT+cs6g5sOKylyHzg
8v0+lLtH5oWRVZH68JtgymCq1mj5rAu3qUpwhmsigsSFkcIj05AuFAaYWpW3vBfBArhPICZRbUEs
D/6b2ZtGpioKc9La8ZRtl9POhViMSWKvEv9s7ACKz5uI2rLmk+JGBIgAen0vt8yWG8Rvpe8Ndt9J
Hmg1hCJThoOO7WQDiyTdb5Lo44VvXy6najGl5/UpMyepP9swfP4gEQJ++6SlJIWMHFbCcSwOMwUv
R619FHkzSttsA4M+v6B0tuMH1Y/n9LgiW9xqELJKRHGtmHIj28PfBENuBBSpQMml5z+BmPkbThT6
1obO9XIuEF8OW0iIc1XGSB/JEroEJUxWjCvy6VnmmkZM3SxRV+34DPlTfUbtKccWUqrLl8W1tmNz
4ZUvOUyqyilKMgP4VsyJWVo9LHTy5aiz4UFGPDVRCu/UZz6xx+W5Kh6DXO4jAqfbCSR6VYniH7ol
NUcE11cNJ+fj/V9WxtmiDcrW3Aby4bWypcHmokRZhbr9SHEDeED+a12f4X3s8qdLjkFRTW0VootN
qGD9OSl8sIGaypMg6I1DyzQ1oHVIbXrh1aJrdMKn30sSnI8bZ9DnfVWo5yglEMxrQn3VadocXk8G
f6or1Qx5N4sEU1aYZ6igcvRjYh8KuKzKu4nORgZ3bF9TUVpETk8QN+Jt0nmN692zGq8fgpIvxPRX
nWeT28cBYTA/2QvLpBxwDb0dZjhIY6Wv64qZ41B0fTNdmyLYU8iFeoDFX3VujZDH28aWFVtWIxSY
G8GgGflQNaUtFC8qGsMJBxdsNdGlIxvhz2+6feqLYcFGU9nLn1A3qGyQwLYuDN9KEXHtSgQ+Vvcn
kumqmUdNoRnvUINkcGN5kgHjUlSLWOnHjWSCenzvVpSONTOWNBoul+j0hPBGvqJ/oa/lzyoIvhUq
kgrgImiNd28o/P0y2HdkVCH6irkyzpbnzMSr95W1wbVCMdgpEL68jP4vAeKKGbyfv3rI7xSNzYnV
xStCtL7X/ZnIlxfBXonV3U9G6tHqJcSKMRR3ySDtKX2YAh7CdqMC4vxgRKWG0uCAyGgdHroUtILG
aHm/VaRMgVP8MuI+ZvhahWgRapUZlvI95ZBg290RogRnDK1lRBE2TCogPAwuKTbQNki25Vp9Skhm
zcGvNtiS7U/1NpOPojDw/TDXKL8RsHd3DsGOTSSLKEflRY40zdK8KQSp0LPwhSqToy3zhqJcR9pf
01H5Nd6o4bERuRxavtxYMwfCTL1+n6ZlROFVb/ejq2TJYUXwq01aLp5mZJm/9IFY8/LdPeXNeNcx
NZjtrcSGqhVryVWUHFrn6axPtfHDO4Zbxe2lVwoCyJx/MaxdBBodcSPTrX86rCEnrNqzdI9wsn1L
1XdFyR0gHuIZjiOr9WLQfHyUifSAN7Kh6Erk8lMXwiyP5IOehFq34Ui2pLAatBEZizVVnZUW1Opy
qHxLNncuD3pVXPAGqOOoRCtgCcgX1Q+QcjdR6k/fZmKLwNsDcMS5a1CWpwHzll5CGpaoXFx5kARn
XgSh3tVw+9K7C7D6bJ1p4hRrO9zVrzK/37ejam1hfQbA9ONxmEBMVe1i+fGCzf0d2iu7PAIPn1n8
wPMONQG6mynXltUQH2IFQqyJE1YQ2Tkwvjx/6Avy3/PKkj5f+8DsnChlYgk37McC54gQoZCRr6Pd
6bHQBzz+iCqmAG8ItrvEljIfIQVX5/OV1P02BlDXeoAl3d6bNSkJW3gjo2D2KsVMJOC1FyTrjOWg
QQArzonZE+PEpi+WdYuamytdTz+qWnNFljZis/rp6E/awCBxspo4XhSTrY7FPDnAeNER9HULAo0t
Nf3YrcKav4cvHKDAM26FMqQDEEPjqm6gaBtlk+H4CXTknvimp9aYkZeMnbPI+bZUCjN6uyskj1yH
2GpXzgWQlSCYC6heHZRcPTWkzvqAc9ceAld+SP26o9bOXNmutd1R9k9VWoFf3uX135SkViLO2vv7
6d+ErFRTEItQE61S9m8CtM/pvYgh8v8GhBzoXqowyBEKyLftrWLeJWeyjF9u22kesH3WZ5Ng4bck
c0mSHGDXrR1ErE2usozorAbeUjEmKR7/VVxkLunw/7htvEpuuGhQ/3JsCoCDc41/Oj+oCnu8BD/1
F/lKp6um7fPhtkPOH/geRQwbSgv1MBbE9L29724tqrzm60hNaGT2o+JUn3em6GUjX/OcIGAEMYo3
liMU4qM+oGzVZoE+wl/P7glLG3urx/utoiwZMZs6iddSLm4DjkFIH1iAOqpeWFQDt8VDM+5J/nNz
qJGJfahed/g1qbHnxLkmnpNMxYeSOzusR+OinaZxt6xMMAlqUsKEWdeh1I1RtO+2kon3Bnon7KzH
0wbYEvr7VJLUmnHvvZjsXixGVRu+cJ0BKrGYoMRKqelRwNYBXIRGg4u12SXpPoYWVTSefH8bjlIE
Q/dcCQF3EYaHd4taorvXMjd9/jpR8nIKmakUbbBMbyqlwjEIuQCDYcT2sR28MPXNVvfnWw/SRJRr
yLVYJiUzeQmBTYxWr+k7jcgyHAEn7Ip0LNwUJCfH6g9a6QyAAZ+Ll1kGAsF8aKNW06HjylL/pXFH
1Bo5zOYvZb6S15s80a9eYnW/2QXzhgaiwE9kLnfOYUIbWKaelhZEY722M+lr/9ACjy0ETb+snNek
smUPV8SeubcnUPxEPMMEb7kZcWp5WbfFKPnd+82JhgXNXkdMCbvEw1Xw6WWeTIqUH3NW6XXKJJ+l
IkSEgtIraWSCR/0LI/8PLb4nLI7r5JGwNn8/FVJMExpKN8eepxSq6kBdqnDwKwCYgLE1VQf0yNbm
JEaSh/lck0gxm3qb/t0b5aozpNhc4dFOUd9HVqMtQQv5Gg25OBwGN76Bl6uFBP8C4VAzTXb5dh9q
6ZAkR36jqkD2pWJY+4u1J8iEVnMkwmeK0qjuYPTzj9qM8Q6pYHbaRGhLE+R5AyB6HGV5P0SfWvLb
+9yl2l/9Jpw4cu3LswaOcr0TEY4rJVxekPrfB0gMh2EMivwW5Ar7a9PITl4vxFMTN+zzMBWy0gps
/cw7b3pPHcx2TZ3AWkI5RdY+oy/UqN5FOookarX6ETFyYjBgT9Agcr09rXjO4oTWvTrE+uSbzTRr
WqI0P4L+hF0iL7nDpzyaB1ISIc6t39xqh1eHEGrMCyjrM9XA8zpxE+VSMgXzMfCWi8EsCpPdUoWB
PDJQ5qzbWtCntCI9nsPx57Gdkk5EvDo97b54xcewWkVqCV/Gvur/ccdVis9mARUXGEPLvegNXhCM
FMIYnKBg7XuqkZdgJqIe/FA4PvvVSI0EFI7xfmN/pD+PMn9R2qDm4wMA7xK8OyS3KJducjyVDRtt
ou2hXOWsRkaJTMC3uCCMEunc1B/9xXzkQiehhdA1E8IgF0nybaXqPRP3H/SPYTX0ceUVbUO+ytDz
m9/dLVsNEvWhLI4dPr2T9q5CxT4h23TqZz35hz/bKFs61xA4PXuwEv9blzV/p16R7YWaydPLfuC5
TIo4fSKt2PBkXxAt+Alu8l+tLUiNzpgiFLkkw29KbaGqI9ZeR7H5w/mH7NU8aM0Rip+PN5ha0FM7
aBY7GMZOR4gXNzsExGtNcDAuVKdq6jOj4QkBCR/hJKpxE6LUIHlFw7o/AB1vw/xUqz+Ga40hl0H7
vfG1Ah2BjSQvaTm/YsplNcWHcz1sBtMmvvqHP7r2wPLTQwV/HHL8jiWjcSXPm13BDuLBrz5zLBN1
tlic90A29BUim8R9oUX1zRDaeQ58CdhXVRCtdCJwqlyZNMQKMW30zz5Z8TYT2zFdJt3gSPOLJPgJ
yfg074grFB37HADMq5+VvUOXS7hXJrL0Ci+Srfuec2LEsv0oaMVbgxQ7vPxSLMBuD4rCGGnX1cKY
HMqpVr+gVqSoNzkgwPsjZYQJLHxtFHlIhhuIGvnx+SGa8ijBOMg/uWvDCmZMiyXAxYxb/XgI7usO
LuMaPcrGMgw50Y8zs7wM+j8uSp8vGS5ONGNE5h8mJ6PlkDNh3Z1eXm/DUqE1udLsXjYSgXTrjwW4
SVCHxSRLg9vdpkvVWZDRLERwtc85PyMsQSZfsML/74Hs0OoTR5ID+uxCbVkAjbD+k9noY0KBaP8A
yWDKoaz2LkroibdzgxBX40phxUato1mLQLcyUHANDpMrc7OUroh3WBypCG4GGkcD7LY2AV0R6XQc
DFtlg+1k3ujNNQ+Xzp89h6uxZXu0/sH98rpExscyrJahPWkyU6GzlhMDvxqTooq2lsMEzfk/2uPy
Toaq00Wv7cvtFcLRN1N24qoYNlcFb/D9IY1yBqEQWRLaVa0ndE76bfLLPtLoev3iUKgYJxhpyFW4
cQy8O1TxX69qXuLUBLzTJJ7OiQx04bVztHUMnQZ321DmPEQ6Vy6BUq8DELYiNDplLmwr6KZZMvLM
Vy6ikek4nw3U9W509kRg9/ws6QWIdEFNcC6MRJ2uWamCMZTYyVyFWqVdGMYHThJxRSJ6BzFTd+Uy
3VfN2uAeeGyyLo8feRScxqWOiWNHdnTywTCekdA6kmkdExGGSaXPdjE7/R66iD6hQMiJHckzlvob
oJIgUlQsa6H8m0V3shoFBT2E98GKrcMUnzTmZ5TiaxMKVyzQkGZ8kxIu1TqTYed2x3eaM5OaJ97e
BHbP02II4kOAwcdud4iPSTIvphiqgbIbaY7IWX9mSA9m9ukMbD3Khvjw/vf9wVmK8hFFFcZsuvyI
Vqg/gyZ2CbRzsbtj+/YN9W0od3b7mAxT14slG1Ivo1c0Kg2XcWSNp8pFaJq8BuRfOea5LfZII6M8
YZfDIOQBiLjfhXiI/qJ0JrZEdnQlDiVFTj3gd9tqYNTtds9IPXQc2ptDSCjdQEuDb+jOJDVOFbdQ
uxFFYVwaWX7iyM+8VRk2VE6I/Dk2hB4poMuZjOa7eUa66GFamswuP4z3yoX8iweFOpFHWC/P2m/N
VTcAvwyIksteRi9hAp098Wx6dnRK6sijVJZIpLGHQtZNNfXupkhbNmv06FOvDS16al/j863PN7cA
SGTt0DxqJWkqUUCn90CisVsFWKhYnJzWZCPvLD6ceXZLpx2cIyNdGVLbSL81tGzi+q+Ul3Dxh/Gm
/PgFc6oNeuBP15vgcuTzIkgbBJ7sLhjsih93tCDm+QuJkVwZq6maE7tA7VSxzvYKsT2gFMmxsnwa
o6cc8MhoeKeForQxn5gW8wvlzP2LUOgvB0uL4Ye+4aVVXee7FsnWJOPn8Bqa/AHxMcK9ULuOIy6B
a3iEojZIX8SdOmEXfrULK9GvfDMlTf+REc3TGjVV4oyCtCg035tNdO2qUNBF+o+zjWLVuJ06K35w
YJVU3bBOWwdhSQKBRefFTDoIUAX/o+xDcqKld1TjphYgp+t51utPDQv8RlLjWwQizyI0rrXXtgfg
b81CKpvsn0fdJjTgj/DpmI13R3UlII4Qq1zOTGRp44hIkKl7Wx737Uf5VwEi/aAJ4wHOYJ+ef+Ws
+x0kjQQ+eYd9icygln3oufvVv1bm7zfzuxPD3X9EYdobTRKcIGpeSSR5mWhlkY4CihJwjCnNwohR
8Ies3ezlfLJ47HdNe6IiYnGMqx5i/Lhvi9wZu9bhLvfN1+U+AR4GkSEb6PeQxwBclZKp4+4PT0kp
IoVyEEWu4pkCXd3idaRC1GNmSd40r0E3WXUyTf8mNR9f9mLPV8ddDkCi7nSOzdorPBXc2JlG7k7v
XiKFbZGAbb2dFhTbtqPLpzjW6SbKL2HLolGqbYyFs+/6zLRVat6R5XW5te7Lg5fSHtdZ/XVrOHpH
PQgvnhFSCHhlYKxqS1gBvKS18xpeBI7MicQJpVUYpadQ8EUMfAOwO8NYwWJ38lEuBDBCMnpprYsg
UWqs1b8f7MLZhregR7Uf3Hage5HVDcbf/KB4pD0+aUja62I7oVjMYmQUq3iyRSVcvgXofr78cfkD
VO/pdR2pAa56HdhcwZS4pnaxeXuQe4ksLa5u3UpgCuNoPkNaj8+SyygJ71sI1IE1SWNNFzUZxau2
vOoLElNGR32YZWnJb4FOkf+E9kCDTGpWpZu9K1qd6sO5YZ9lNxoCxMmpWcsVHtju2wawdcCc5EEb
HS15ajtpQt//kfFW4P3SnVjrC4uppODWfOt2TX53DAl/cUch45ia8bxDERrMVWpd9amPHX+t9Y21
eZZJY530EzjFq2yfkwXWLa0UWe0KcDwzRdyKgaShqakRO4F9Fj0djHLRj5tyCEGkWNg192q8vQHe
43TFlho+8FFyHe7ZFAFwWG52pPYwyTD1ueCmir/iz4GiHMnfpv9ZF7S1QuS3N+WDHDYT2913SYK3
fQR5S5u2/FVQNKuxTe/XKHHS9/NJZ2DRziDZWek/jNnMwn1CQ74sKrUzu9f5VPDiQjY2uEPGD5OT
6A/qnsGJPqA1TdiRHRUNgOM+c4IodZi5A8vQltbEkNz4N837rKJdUBff7yF/n2jqzUFRFTYi07VH
I6F//xBb/Qqo9rYrr5nkjwCtrS4UWIK7JOg8qzAjN10oOSJw9hnP8U4x8iRhKYD4NpQFkz7t6tpy
W0X60JVAM4H194yXVCGn1EUEr3JTalaxytbSwwI80dMmMtIw14zf7i9jZKTWDmLkxR6JfR56v+i9
QwEgBTA8+ja3zH72d3uhen/0pSmSJzpi9CtlGyiqbvtTIezTR10/55Q61u9g8k8Wm8liz7pIco5i
NAjwn/g2CJQCzItV0Fhzcu4cYONMBLhuv6EBG3faC4WIYtbXEhHlMsKK+J3awullMZvHGxzioU4r
RKJBaUN0acaQ11kAUtN1NhZgGYkkqbyDHotPs9GhM++9m/feYHr3UsAMEsZF+aC76TOJDW0wza42
j/uj/ULlyMj+LYSvtgtiaQAkpJkpyRa9iJYhxqJVS9TDGh2d1WtOgPcocA/u9gHCGspRVY+gnDak
Dtzaz/sOWXxsnjTyHInsxDhZpHpGOFghIIvH/O87nRP2nSpmH0dTZBOVn8ulFfBoQA95Kjqbask+
QJlsPWu3JNtuqF7H4muYlPeC9d0ocz18XNYIFj28OhXicGOmhw/DadilkYRzlDN0vaBFs8s2uRUq
XM4i/hJzrwYRvUyGm5ivZEt5qcPzMM9aDqJILBDunRXyyA7LONGzms1lbSiK75RxwnyzUNRYg5Qj
NskDA6GFPbJ/uJJ8WDnY66lZpDLUXUfOLEFqg3M8/tJjy83U9iNfqVOnnNBp9Z04hP/976o1TmpU
7w8fBH/wB4oJca+cw9IwOwqwkgG5sG8OjlyYn9IeXeqjTSx7sgIbd/MkN4cSVldyPTHurjsO3XI6
UjxS0jDurN0dIr4k8YuHhnYRmhfqc+NLV5+0w4461DlVyLYkewOLNG4170tMKaC53Ft/fHMk22Al
DoO0LysmRJK62EsJA1MCaHUz31XEiNjBIPO0dR215pYqjczk0GVMAwegQLnAOmw16JtVfpY+LKPh
m0z409Z0/hZf9PGvr+VinNXOoKApJaX2/Wj4xigLGccgYusiQSJPf30s3BvbXMUZHW2LcqZdb4EZ
CpHzaU6m741SGmIRDaQLHxkNoqLP7QcPwmJEOAlt42c8p9nejfn8aEiu4A0EncMfndwkw/Jza6fy
4yrE3QvC3nu8sP1fxXZc/RYpgSxdaXlCozgqe3kzYl2xscOG4yMDkbVhZmCyUkp8EiHc1x+hzNV4
/MQaCWxtuvzIZhnSARIcQG/LsS2O+o7vMov+v3esfbCWzP3xQuwmdasVozUQjtO02l3JTGH2C8FR
clfVZmUnzBYTB9qnaQ4bDRo9sAb4MpTw+PNkIgsGl1T2SwQOymPIWSRM6SKaxMSd0P8W+jqdW0sv
vB50A27rDCbbKnLEFmUcEz3Ki4BRpCTM2xUlSL/rIYscDblAvBbruNPDaq1GgzbUz0wPRUV7+Kt0
F/3grRsM95i18CQAkbOdQmS5MCS8Vn9NrnFGwe/40Sn19SH99diHCopKcVCCAvdvP+/76Ug0Y0ll
93C8QHi6OkglrRz2H8ehBHw2QajjLwe9X4c5qfnElyLys1du562FnBp/K+aHdwnvGU75+mXA1g+d
UAtT1ImV72/ovfLR4ZRwTRrnj4+Uy5ArK1IxIXw+GHI8TPqLB7VUahKl1rY5kp/XOWuRkVefaaHK
aL+a/xEen0s/czrKnWQ56h1HSignuAc+GbNFLWJ17dV0AAY4KYyvOXxgVd+oFpT9yCPWuSDPoL3X
OZnUc0M/CS7R6ZkAVAaQzQPbXzeTXncBCfW+EDBfmv4doy2G53V2iApHN8hJnaPmwgyEIS2GA/fR
4PTLt6sM8pc32mSrSLg4kbYT7a8DcHMF/m4vVMjesElAC2UST4OHqpuaYmonKSkCE5mkwokdnCp1
6OCbjN0NZNXYqU0NCjB7ZJfyeErVNcYexnoaHjxcb8i4heN/14GnWYXkEubcR9a/QHz07/ZXz29E
LOqGNTsDA9gS3a4Vmj9MeG0oMEu7QYLvk9KUOF4wjFSsM80tYg6oNgEtTUcbJMt/clYFZL9TdnrC
Eq/zjY4DqVFZroKQwBERIpRi9dWjAY6xIPb99aENJS7kcXUqp1JfoDnZBdLFPlu2/FbiQkcsppk2
o+oq0TgwcGDbDtqRXL4h2bGcxTdXzrmlViVZ1J025kB6I4vIxPldSMd4ErMl88qgvxptG6mdabmH
nxaeZHSKHs2jxpTi71llJSOCFIXOj7QlgbcK1e/fepKQbnlCIfWqjAmDHYPIIz8uEzj+9qxMFv7W
TYjMQqzlED9lTVgGzs4aPzKvTuIH8mqE4QMxjYcHIIu3mJxibsCla4yrYMlZfpJo2WF2vXU8tNFx
M+TYsqbI4PRG7C+yM6xCPAZhjgZirlOH2uAskY9QytMODCDtZqlfl8siYMi92pFQyJiZD0or0GHE
6m4pXfSEODX6lchtqs24Vb0O+HYbOYGIP9UPCwc7YdTwpxR8BSGWkmpXbHvmujo42ENiBBehRyUV
E15O6jWqEroCRfKqBXZOsbAholj+4gwpn9gU8KFm8nea1uKngWPLTmYgQKdwGrG+tg0Zf/ySxAQs
BpnHAxkQmuPUWA5PC+c4LkwWLCc/5rowEKN073WMvtl729Bvps2A+EazhOM++5tKggJ68P051T4O
InNIhcvBQnXrve0msjgXCG2zYrALiM8YylJAuh155J2mrY2J1mU543Wp+hYeHbAr6nYET/UJu9o6
C/92wA6FcI3rBcqaY5jvC4P5oWJw7hdus1iHuTpu0sIEojccJ0WQALcJrYns3sCyS+Ajv5rrTr5d
YUCtdwQFXWoYJKKt5Wfkb8gvebZlNiZcxzwvObSTMvZNbhOd/F+EoA4R5Vl4IySGnG3OKONguLdQ
Psm0QSVQESFlJZAxCoRsYFeSnwE2ZAcKosyRF/Zp/vneDoLpX07/OLq36y6Z1cSNMFHYF5gJ8zN+
bGwMT6PpQCfYgO0z4BduVDBJ6QkU2smTcWFsr5ePMB/lI6qlhINtcjEfUfGVBcnRQpb1OjfkoOr3
utBGpLMTqVMX8eDdV1CB9fe2732mp5gsyY/ZpL1Jzer82SuuzMfRdhG74JVknFcZXW3r7iuEM7cs
uMHQihLVRQ+eW8dm5owxNuPrXVfovzEBWxDnHOI0RV/Tw15OQ0p/hlzJ/jlqYsc0orxIMA9xvZFl
lJ9HzdJ3ba7j65cmyRc7TnHK3B5w29qUuKLq+BKrxN7PkahNE/jQIWAzA2CCJrQgX7xMV+z6+mBe
tlMISb7JxGP4OP5ZvTpJ1XqOJPW5FGpq5ebrv7ivKXRw6ayRuaW4Igx7mS4V1NpObuCVhz/q9KtA
/K/ClzjYPuXT7pWcCnuHZ6NoGHfkdIcteCfoH2l89bYMJVOfTZWTHsK1AcFJM3U8b55+Yr6yqaHA
wcPHFM8RlZOqEIJhYg5Nivw2Mp7MVNHueJJlsLbjePXVpaWdbENVLDXF/inx7f9zReE+KFuj6VJY
rbgSoCACCh9Z3CPY+XApikRp9wLb1avC5swiYPnHD5oFVmHWiAez77Y4XtCgFO8oU7kQ/NE6A9/I
WhT/3FiGO2KRF48G303UpZWRTEETbsbDhBAQWAjK958Oir9RzfCVdt8UFrDRQKS9o3AkvA1M0VQr
U723i0SLwhj3xWP4CLLqCgZeL99/uyDf4mHNdkv4Bpl1NcmWERKlMw2a7Wgav4KQFNq0DdTDXdwv
BJGpxLiGF7vxBfzRevEkHL9Oe+SGjhxoF1JXCJna7COidLndVodWi1n5A4DHZWp/yMeKxOJJUTsZ
zqLo3fncnh+8E8IyZhGF1qB1XZJP561WrBX9XkGwrwzM2VRu+TPeWR3O+JdKlZ2XqMtOqM8vW4t2
UV6cBX8UhYKBQo1cQHaz1meibSaPiT3RC5khyAA2VuJujjOOwAmuoL3YCjkEbBE+IsXlSu6AU/Xc
iXguDku8qJ/jFSbZG2v7pbrijQ08nYkypeb7AF/fEZLebzxIVmE9/axC5ZKWUhqHiMA5JkrBTGVV
3H5s7EYfjoAqBgfz7/6phyqE00q2T4ZVaZ84tX4ggjfgno+z0B6mMejZXNAwDJCinAgvelsiimUJ
PHq8d/Gz5fAcf8U6LSCQMoTxp2SxG27EelKXEpTHDylpy8ozUkObNarlWxIxF+ItCz+6AIWr4Vi6
HzeJFbfkA4q/BX9Zq1FsoHRlTNXUr2ubapWL3YplI3aTlTu/dLHRTpBxdh7cCRk+tKuM2vPb3kF/
TQLMQSPjdSek62g3GiTOPF5nfje73cztiYqUtvHv6kKYobEEhv/F28KojlB6w7lpMyYsRp7pKSzk
72ToB1uqchFxQ4tszzyKEwugJKQxr49ulpsO1AzQjn0Z84f27KOh9bfAQLvjhT4Jw+IXx8D7fubv
1dgZNgt/f1olAp7+LjfuokcxhV/HYKMqS6n/4oQ6338agoXbK72ClCR26QSOCBH2MLuJ2On7XCBA
c6VxfIOwdvxjJH2D6IuF4ZAaWLMSwUDwe/4BREyHSUL9R6QWRrFoKdYdWyqy9Uw5ptMZx3DjXiHh
cWv7nZAIgdRHVe6rhVxS1mXd/zuxkIZAN7cZpkv7ZVZpUkYpij+R0Ukxho7POX8tyDvnrtc29M4f
UdebRx8dTtQjEZczb/5+io7hHqpsqZSX50CKG8zaLfVP8C1GuRlvJeExkmxmgR+TqF10BxP1IXm1
thN/vhXRxrsJSgy/fIA4qi9modhdL2R+uI+a6WCsSTbclhZRKyQ5CtB4Yu2a70UCVeMnmP18oIiF
jN3gHrRZZuV+nHOwUjdT2WSBfBpo9uocr685jANpfE9QwtZpUiTibG90HpjVEjooHC9Ay8SC5VZN
4mAKKrFW2S+Rj8o7dC8qiQ2zo5Q4raOCxRrLULwE6qXTsVQWQiZ+ENktSEmS0jHjXVkhFAL/Fq3s
fpDOJmY5UOEN4GWA2iT6urtAtUs0M57PrCrmM2diEPoVKPNeLtSx7WH3dP4uubnB4OVPg6wYQ0SW
bLrgiPDQbppVOhXrW8OV/SeKpjcjIunavQ7FukG2aFmGzwCC6OtwUmYSqNG5R1Jk1Nm+OipUgHqP
7Ptv7INZHMteC53GvyJVSjMzT6rR5ZTbAbGkUXzoJ9qpS9oZn0GCA5KouJelX91g7RCBWRRMH5/t
JqJtkdU+qb4nl7+YPY1Ewy9BunW+Xhb0Cq1KGRZpPBoNLZPAflxerJbXpIpER6Qg/jVa6nl+AIDw
XstodTvonLK/z1lsx5TaCP6anHBq8njHx3SHf7RD7I6VAcaVoWj2CgVpnYabkrvkNefVdslB1YmR
w0xDUGjrXGsZ9f2i1GIQ5a2Uo+eOjJHwNL/rxmaOzmb6xDbB8VgxfqjsB2DQnC5FjSYg+UWyaod0
vf0OVjKaTzXj0Q9yK7jcGfjQMsYMTJsrYdRRc6BZabyzYVA1xcQZ22/tymGFmfZbz37Zcda78E9y
CG1YP36eESj2Y6Hfuc7Bd2R3cO3x7oX5ILmC9GlBRFfy8enWy0tiuuoSAUX3TP8JgFHoke14i8bd
lu3EFzwkz4AVVsgww4vAaIQ2kikwf4kBLzFJsJvOI5wuJmUIqBjxTo+C/cy/u6rFjoxh3FpuiZyT
3A1tBqZgkePA84XNZxcYePcoPvlMDa7PwXDTJutCznWu+FbGyzkj6UEDSfL4LIJQhj9fiUfFCVui
bVBu0tna7HczLccDVtxz3stI2blA22pq9qzpUpXIb9h1knHr5jgTWvHwE3gt2kSSr93rum7ZRBzB
79iQ1M4/f4/++4RH/m5y/feNynwjOzQw9xk6POwDNMsUghjMDfbWOa536OVonfxYLgz/rkkfDsPH
by3jfwQkeZpdmyekm8lEC+qjFRUh1cDmMHPqXt3X6vk6mKH9NC3pJ8zTUqtTotupuCvVTDpbe6vW
L+BK1ZyHdrrsXgIea3vEk/IGYSmn2CAl+ilcBXAoZr1A2NB2o3kLzEBhoWKNoTOZ+TAIxRq+fd7C
DprpQValpMCA+7EH9S1GL7GN2ad/21Rlxw/yHOHFQXQNuuX8A/OezlBOCi5ixogI5s0dXZylLqp6
6tnDUh4C8bsPDGBsjlr05mLwBpQxIMN5NUBQjVvZ65cXFhVgrm4UUL+GkDAUS3tcOHcyNTm3ZSDG
5gSEc9t+Dq6EMuszDKdUufqdgJxNTI886nJL0hUuB7oSMDof5uvVi8DHvtUuM1wnDPhXJ47xFUKG
Nk3awPIYBlQi2M2IZte5OgqIEVzfc8PR4yT9PENrsLkTTRwotEIBYDTIg+5vk250Jt9+8Q5icuRj
XyH9nQidEaF9k5wTYsGlgV3OPqiMpaS3VRFyJG7/SpViGuLhIfPYAwdqWuhr1ryb3kK6vD22OXJI
9ojnL1fQnlYYMK46xFbqZJ6qk/sW1eM7GSOzl3H5KuOoj08ia6LjXQP143dpP+SGomNnybvV6Yr/
UIbAjp6elSIv/JK2xllR083IQj6mi2tBiyjkJ4Aw+O4CGyie2fZcWCL0NVIQv2oG+MM0loFp7NtR
531XtJTc6943PvJ60g/KRhfXAQUpsQfLOrQBWN8sVdN+nPaxgMqct9RA9jnlSrh1wAffC77fTfbd
JTPkRo3His/C36vyy9p2OsAFJTLEBzvVev5N4DPlu6SxXS3LTHktHzJPTEi1Qo/ZYdmATtKaqeE6
rnd8VZoPkC688mwOjYsurhcOWgwflI6ftVgQ36+uYRWG0HlQynv4WD5DALwf6slNt9+UsLf4PCIJ
dwgPdjT+S/LtG9fuIc6QK4EBy6OlhGrXbI0MNDQcF/WbM3cr31k6IAvGwawGdiFZn9jzFWJ7JT9t
qQZf0Tt1qFKzrpi/pNOEJQx1xN/Q2h34UFAF/QEUdZ32pl/dHm84lO53JuwBJf/6S2SYKeEXi1Wa
KxdeTO+cu1dszFzEp3ZijkefLH2M+jqx0F5K4XkdRhtJ3LagXI/vjZKeNUM45EjZUpjNMjCmz6sb
WG61Ht3r67O5BXrz/TH1vGygHwdKsh/BMmWb2vUr3rn5Y/yxUe9a+GG/rMs3Z4lqnQ3l3AyExu8q
kUzFnAVxmsoHnWQU6fHFV+tcvrdMt65+uPp9e7C5A40tVUGPEWSfy0OAw5ScBOqMoQ3/o1UQULHN
AfajQQPlaPys5KYfTnPWvZoYi+biQDWL22hBhiHJ6PrnHOCnhBlYzi9V0zfJTLrcuDQfb6Id/wcT
uSJ21ac4DyOmtzJpuuo0xmVfNFQeyGr6SP145Y9e4gK3WMPtA0ukMIQFy4Dk8JdOpl6mYOhYyQ7M
oXOmddkrsnnSfX8+AVC53sHW24LpkW8LViWLy6bjNkcWOv1TuE4fbVWwAhGlNvC60E+fgK+ZMsf/
CnWUum1HqJuJZjGuRaIEC8LNBvE1jd59BxqK6f/dr3M3Rx/0EIZmxJEvcQ6XyxfpZ5L3syevdRpx
Vmk+U+6b6a1K4+Bkpecn+MjqDH8zh/m0TTdHK9w8O5MxdlDc1w2ucHuKjqmH8NTcD4fjUEXVuFVw
iNsRHhzHQq/o+4+GBVnG33xiojV2m1Dxu33736+dWVw7WBE5pV2b3BbtETY/N+NM99itfFi4Jls6
z6qtvJj8LfvHCW9ASYLvx/im9mUG4L02Oob8uEfX8LdJT38K327DbYEg4Gr3zBC1gEvNgXhAG6hA
3C3H5lWLlS3x77Oitbt8zDkzQA5S0Fz6ICynSVOzrwTp9tdFgTQa+f5Q0kIJ2PQVCib3degQ9udr
kSNOKMjNTDIm5tNQK1DBEgRo+xit3MYluu2kZNqwGXHDbbOqDVko2Oqx1yEWuoUs0VrSzjrU5pO2
jC5k75DQFTyiyqXQD6uqRAUjVRXbN3DNw85UEJEWKnTilHa/rM3JvHbPHKy4OPz4zJvCpPO66N+f
Et5KDeKPCKcm0HUkfd3ABnKFTTNPy53/akKX5JhBho8kcP1ZgKsHOQil9K0vvmiyLQOm64vFo2NZ
35/4IG1CYoRL1x3lkOoxUP5uEeBUMemcWANxur8Ia0Fo3ZIBNQ10bZiWTbrqWH+OeoQyIr6yqSbL
sMkKniy176GIDkbHQPx1ZyJzSysfImo4JFuwTyidXu5tgNz+om6u/xLIfXTojKH5H4NqWCSrawyi
Po9DrHGlilVyQHwmiZJvP3jTRtZ1y+LdS6GEpIEjJZ3WXhJ/mbZT6cnC6XeVxRod8Pnr21EHK7rH
xy50BManmlzkIEx37K0bogg/t0X5az7+dyKIhmmqwlquACMblhHz+Zl6er9UYmC1eqEdRQigqWLe
g9CTTnfDctLnz+J3IjQ2Uj2R91f2Pbgiileo3oxXMJ4eNAyeVuOIWNznS7OhI1+ljXkc5NuCpQMW
Mj8jS/ne9WspijSurYwqCGri11u/p5uYKpqewKCccHotN9jomD4sHmi8T4/awX2Nen8EHNGHKO7r
wQF62zfqXQX8m8Up5V76UdNVNEDPgHn919f9VZeaQWBqOIukHNvCL6uD3Z+7S0l/CVQ6PzCOSO+O
taM8fAq0Sz03Z7lRFEnzP0W4u10gLeiyj+ePC3FQ4isEc2zv9LIUrmE2C50+OvqVGpEvzor0tHIx
XQi/w/RhTX5aZuFrypkDbjf69syn5ytaorQGg6uPIJReqicM1VpeOsJHnZfHNpf+T1L0CkHmg5Dp
HTnKyftp/ZWXXowZ0CrRqKsch5e2j7LKX1FURhkxQrIAcdugTXfJM2yH/uJtGQaPkqsBi8jl84P1
xKHwt5+jyy5tFZnjXUPgxccWc+Km95+T2e0ZCc3DIidam29NpzPd10G/wm5O1fUOkyItQaGraaQ5
wq0fHPyIqHOqqDWaQGM2UiPcdv3nMALG1v38336mYX5r7ECAT0QmqeXk3lVhqi/4v5Thdkz570ql
Cu4noOTEXNHuyi6t6qfk5uQwvHmNZM7d+VmEFmVpNnzSJ7W6ShaVfoTh8W2uDgZz1qYS11FtzLk4
AWW60QQ2sFLnpz7eLdu+myTHTwI09RuwbhYtLhccytM/5UlAGNOYeG+ZVltWeTnLYrlvHS1GeSjX
0Llapr4kZKT/CGdjdPNakEDNalgItTn1FyJrXqd+KqYaGgFYaLGDHxNJQjBOLVx7zbFOpLNbAVIt
6s0AdDt9m37s26IRSnjgmMyFh+iHqTy5ZKAVfs6ZuSjimkyp3Vrip+NhckREDHD591zX6Vsoc48z
F2DlRoh+/rKaXD82qDUaiEGHnoEru00F5EIzN++X3DHM/pSf84/3YsnwQNhkvp+48loVS/sR3+gX
EVQA+hNXTyTOLpvP85Rvg3aOcFayiL8xDwltRezeiNCiDZrMsxWGEq0cEOtxV8835Ip9m3U4qNTz
jQuqddc4CD1ZY57IVTuatowsF9H8DgSrVkPUmU7Ri9lP7e2yt6ziKLouonxylHZjG5P5WohjYvow
lmnbz9RClUtBmgQvpUQ2jdLd/TBs/mLUJS+ALGHsFKXSajNPUWNbZ+7w9RV4NFjhlZp/qiND0Mga
DiJ2Zfc6FOKw94TpSD0YcgX2M7W0ZtjYwQmpcFfGdyw4sNmcDnso1ymJ/um7ZtQ3E8ZfqG8lZs8n
yONVsHZIlKjXiTaXdVhOZZFTjytzFMt+UwLS/3Ib1nDU1qPXnlIn292AncZ1mQ+OaCQTew4/Z+n5
PbRtl2ce+d8jtZlbNLT/1vXqOnVOxNjFOCHReYZVXGmZ4l2EsIe/8KrYT0pu+Ed8moD6rKSRh2zy
6Ao8AXV6K5puTW7H7GY9kgDmzE3oAZLPeXzBtdbPsWUrGacTHCEM9Nk5fImB4peKp3VVyEnl+OIv
8mpL7QzQSHJ2FwdhWbhMDE7YYLLrKaDGsXugENs2CJ+ukItVm5FbjqchZIEV2ejbXS317eMjQebT
H0pAHsVzElsA5paSjYDmaMSRZ6oD36g7VmYJh6vu+72SqmPQFE6z2RSQb5EVkUeEisb6JyYXe6vI
IO12LqgEmvNrKa/ifhMMe3d+k3xP39E91A+qTSoinc3MbOjoaoVtcqWDweIDrxRclddLmWGWlp+R
ySWMex1HOwMoTPfwIMwveE/BdCPK31zxsmaMW/FSd501EKMc7/vRptBR6L0RjyG9mR8fuyVFjNti
Z1W1dVPVjlTu+EqWIrpDReeB6YjfccKxjhOYQaQqxM9ScIHEtgGmso8uSxIiFBtBXsLbm/vHdHT4
/DBfIf+ynbKrpAuQzAKxXsYesPixrdBCZU9libuvI3DHtxpgBGR2Vm1hXKSfFsghno/RZ+2vvaZ4
Xi5YJjfR2f67lpn5vBOlvbNG5FB2io1WvFDSyvDL/oaugvoqs6ep0fuJyPFkVb/8ejqGTPs7D3b5
WHw3NTWKhqOlGF/FrL7x00fdlJnwQydRAY5FU++OOK3BQlnldte2Aclt81bEd/7i2j1dnVFUHst4
XzC32c6j9ebiIVNVVK4G+Msv2qIv3dMb2Mkif2dbjKGM5Uku4FJxxhLU9uz4ymFFJV/SCcGfQGj4
/h3EL5E6C+qLG2tKHQ/hKQI50tj1Zx/Dg5hETyqEOJs6iVTQ6TPsOT8158GcAWz3FTBRvlkxwxgH
aql+uf1VJSgI3CcsFH0kNAGAUikQhTBVe/GBG5cVVsm7RnRSVuh+seGMFeyp4q5ERAnrHVkuhOYD
++wuEqOirPola5BA4fWpMCetfVQSbreiL5WMPGxJnnE39YI+l2nLHC8f7ui+r6bKpbWxTWK2ZPMV
Q+pm0iNUrYNDBAD0paerNhNQP9wyTYgNE4Tnntf8uZuIJ5wsoytZ+Ql4YUTmewFVgkYoW3M6q8Z+
tXn6G8Aj5sK3ggmfit7ZiUVu2PCJcYs0Zhf/LiL5fytagLasqfbP3Oz0WOP4+8Il5eM3h3RX+kYf
0IzB8BvrLcP3ND7MuVNQiLMDKmqxHnpeW2YOa6kSx1vA5htxSOhTrqGzr0UkRszD46T5QeY6wEAz
lWIYwFFIJbrKSwGVhJGprfn+LsSJnPRMYi/K32Gx57O7NzVuie1gpXA+zQo3BZwVofLh1ivNgI4o
K6unlW69guAiVnvfbcf3XTGLUJ0ZaaMUMSES8ohiK5ui6bvx8gDMzvnZWKEkj6zCalnZ41UlaM6V
hxiECfrbdGsReBrTHcPRTy+YXtwlaCmOlYvCtvku0Bpu91+Wh+v6/EebJOkFsToiWGwD4yQ3AY0k
qKxG863kIBC+mb5bMaszJ2yFH7SH74QeVdnmPq8L/Kkv5N/ZlaQrkWO6ZBH1piFzTpjMNmrqR7Gz
Pn+MbmNCSaIbXfwk+su2g9laspo9hoohAkMDMhslf/L6KlaSsdrr+jhYMWRxerAnKltvdNrlQz8m
sdnbWdopj/Zb+Y73TfZO2fTBnAz0cohdHH2O11hzxijcjhnf/gRniq2hc0F0NBF9Kv+fTYoWqXHK
WMrOiFc2TopjS7RDAjLrN/GZLwYjQC37j/aXoiMTbBrgjCyEagSjB3C51gOam63gRGkYSj15VdiH
/fSetQr6cGCRMgy977CKTKQlumkEsTc1+DvykQHUFq7AkX213luFlxjkVOc+pNYIdgIA+E/aJJq5
NEzuwqhWv253AIlPDiKnGqUjjKbo2k40buKasRpJ3yLLv2+cj7NNtdHf1M/i5yi69gE9tOlI8jyU
U3a4IIHuZ7xJDZfhEBsv01jjCV/ii65d25wLkaNWurcbqCMVRPb3Ri7JKZAj9cQAo6dNo2MLN74T
JJDxwZMF9CDHJrPqxINe0YAfpLF6HxHquBP08SsAkrh5turPKIqfJlOKucnr8eeKSOjBG+PxC/1Y
WCSeUmoNlBa/WEUnGaDNEimNp1bHo1c6YPjy+jnSZpwxnR1VRqqGF4OobJavCwmuhTeo+dLv1pTV
visyjS+VP9y4LLbXptDBq6QcdqsfFP+tzdFJ1hwY3pGYuEOMmfSZF3SPpA+fOQKvYVBuParSeSzU
6o2RvgqOMIA0xEsRhnUC6w/pZqHGGDJKv/8f14y30pxenNL6KqqnXxiwfSJG2f4H+8oc3O/U5U2a
h4LavrX2Dm6gRBMTF/ebe7m6WHPP2nBUJBaMS5gQorCX9JtPILqQhmL7ZQivaRlvnRiELhUVVC/O
Qf0TZsTj55jkgIgOD859jxX3WChKxqzFuvzqpRJcGAqur3vXX7Cnd/BlaFu6bleu9edUVRsNfSBp
zb5rxsUxo5SXeYEZCsFqYQHeDqvzcQX2/IWs3AlYDGyPA5Gumbp/0jygeAXuJ6g1WTnEOG9d0Ejc
v7rN8SyyvaP8bFEIp3i6m0mPYWEfmE0gLj4ABQS5OXhaRq1G6mGEmoqTjCB2E0onZQ9oeC09Zrd2
E0zfy9/YKoFrAI/T+JKKngEmoCBYLbgU3ZScNo4h+W/eu0/dPLZc7/qUz+7U73Ypd2iAjnVkxFPA
1izjpO/mltQsPgPqNJIwOzijY/1ZofGL9g2q/1QdmggEQTyj5E5DPfXtLdpDmhjfrOfQVoDCaxk2
kQwzxUO4KZR2RhV9zn19uAnggDz/ny0jYo9ILgtZukvJyrD8QhcnwVFjHP2MpsyuxZn9JO+5Ahks
quhymtMAkVZorMeCRZ5K+eO9swDPgKOfk447MBpq+i2KihcFSy9RC0Gclfx+wHYNSVXAKrCWKaOa
d4qqSDGSBluRTMNCr1pAkcq9LcxqG4OQZIqX3bfDoSU43xcLN7h4wk7UrSJWv09JxsxMnJbHUhxR
pGbvAWRtlXEeUwoGQjBxLEN0qY7+AwcdkcQXSGExjJLvxvzGFRrWjyKWMxoc438ERDxrb1jEuWDG
IHrw5Im6Jh5UZ5nhjcyFEi5XX33RIKEkc3eUHLwzWwUvJrrnDawoaF6pUqxRLFo0wDcE/o128xbq
WIReJ6YGy6mDuW0G8rynCROURw90IjkMYPqHbQarrY6hVFftj9T5DV9RkBAi39CA4kXJoYbzjRFq
ddzHLzgoz8TxkVRQDJFGYsWsHOF/52MX3/kQg0vxYZ66HjJWw466GhhniHGjGX2VbPh4sdBaOq1v
a5w+LzSeSoUpolSS9okW17d64txRZH2uXBOJTxqT6vBPCAtyNB8yID5Rs56dszSnKd7TtApYbt89
cRDTStXMoK8ucWYwdFGzKYbAYa/mrlsUG2CIVTEG96xQZB5+2S4UQAJlLbwcg8pgP2syaacUSO5F
D9QL9wwEdaOWA8KpJGVQctm7ncXKGd7lHOlO1yxwmXBNq/uubxdruPBg4aC4okrnnkrQORC/AuEA
VSZlR9Fp0nvhdXHGHJoRgeI29DrVIj656HwoPTggNlK05WZ23ivCqP3v7iO0uIPbwoZud4OwCKls
9EzlNIR3S7xHNcpxovwQaN0zhpi8rRBmiH31FJ45VbNsOL4FYwINlJReehBwgg4SGL8gZ2K0YpMY
QySOqNy0LlEjypA2btkqO83UV8XO0d1BnrKCZwpWMFP1y5holQD/XtVFGp7Zn3nmHN4J8YMsDOM3
jiyl4ktUQ6PSFavDG6gFsDvB2ELxNusAQaF1Cy5fBj/rE6A6jj2fQrcyhHG2AnFDc3FydRyxEzWR
864TAh9eaG79v6EYpzE4nPFhkzPoPxE9/XCTCIMXBPRz5Jkqj5XVA2KIgnB0/vLwLJxYSdj9Pyda
KPnXzAPUnKnjj5wWX1FAuVexXS0O4CqEshHaMueKVe/BddHCLmSskNhqXHvZdEWzoaRFxawcCMv3
xR8xAEflbN2Ma4iUAw0pRv+jFNUKkgNZ5r6svVkb2dDyKDlRN3Z6JBvtqAdheETuDShRL4vUu91J
ydbdX0NEK7G1MQEfssSvxbhxDXCd8fYj1b9W+7UJl5ppLvKLROFUS1Rh4FDL2WOQ1Bpl8484TRn1
UBWEnJLWc9Q+veqzeAnpP2eNvExIMmn/NPDphPSryMdWsQ2n1B1V4DJwQKel3gXgtWMawE6lq/bq
g0IGSNbn0EeIlj6ZJa/Rgg6LAV0IezYBh3pT0Y6im7NTCO185kkgRfDIsOPwc2aKMdmWOHH7iNIC
wKSoHp7JhkUww4fzbjWl+1Ym3DfeEeETyKeCeLmEqsCIiV/Lz78S4nOzciUGx3uTBVGs1rD1HGuC
bhrWSGyX4m3UFkHfz2Jb0g2iB3rvahlgJS4g3r+o2CmptTtkD4NcoGykvjbRQpVsrNTBEnJNDqzS
CIRZ2AeKMUhdJg8PgwPKzjUivGKFUkxXH/xD1oJL1dyUWXBq3EsOAtfWyLdOlhYvl2sdGpqVwn1M
+VIJ/6WX95YRAyuXEWYT/Gxrt0ErQ8wr9endiZyOAVhgl1ZnwBCVCCBazMfwJTezfytekn31ZXuK
mJmXMb/YsH8OZT/vPjS2aFua/j0/d7J8GaBJRLFSoL/i8Io8fS2VjCm0SzNkOByyhBQW9ITa3MVV
1rlSkmyfxvNJawwEQrOpRBjXSHXonlVaWlEo3oqZW4TadgleXII+WZvDf5rankdx/tPG8F7arqu4
VpmfgX6NJAAOcWSeMRufdE94l9wc/Vc60kS7B/m8iNzGQgljwVhQ11ptd713GdT9dVvQLct4XCH5
0qNFOD12fBO//tp+IokAvYVF8RdkSMk969LCCKuWVCUPjrtuJRcXhxXavJeVblphbLT+/l3IFeZh
ISQUyC+bRZYyofoKKTcbT0BDupKBGJcPjZgIBM2ZNk8sJ2xNXGqXNhMgBGav26PGR74KLoYfzyBe
FlYjxh37dDcalEo1oIfygB6WMfHFywNwUm2f69mQABzdu2OI8vhR6LvT/ZxVf4crxPi3MIPgymt6
Dc8pHxUplO+UUc9smp0/pJGQs2o1HD0HvdrCuS8yzL/sHCrpcrCwNHBdpfzZzCpCkxf0BOLYKCQh
Tg+Q5biTN0wbUpGIHCQDEI7puCKdHeiz/j9UFOwQFea/Jh8inXlweCeVpcwlaeHZ9ULAkE0EgaZ/
RE3y8YM5JW8nOG37owrKT0iOWZGYYcfhnD3zYzpILcGgPXH7Cit4mA5SKCiaD1vKa1o7Wxtgk7mX
ZyEyLXdckg5CU7H3BoNgC5kbmj7ssSskV8/zZOw9lwzwGlrek58BKYvhzZdjnqu1S0VipsyZkoOT
X3wygY8C29UFqrjqprdgzJvcO2cjzRBe4q4CrMtbmLmHcAmDgArHUgKRBcA1cEqNFTnchutkS0MV
DlVk0s2QDKV0zi3PTaLyBhVtcDFHF5RsMjBKUWTXD8As3p+b17fpVWgvrk2E8Jt9lnCF4ItpbQVJ
OmgHbeU9gEIz5M5sB1KaGWqlguQ1jJoa0lNcU0YgBdBgO7+xGHKbBFc0XvzGNy85ehY7ulpvq9u6
eZBD/+K57xirgQL+4h0OFNj9X653VU3E8rudfvoOoU5dZVdYTzc/JEoh9Hmc92lYEPzrGJkfMVge
MLxrh/B9/SWelMYhbkPKYvgd1vze7eNnJQ8Rw110tHHQ6NoBolWIpQLI5O6/J8vC9wHctzcvamic
SjR3UePnVQfNlB0eivTo8bQZV+u0ydiMmlaSpCKZjzg0iUXx/hdqpqIKPU68b/8dAGsaA1jMuBjc
z3fit7jb3pTWpbQtxFkhte+gTQEImB+M1V853dgqz2UX/Z/h4wtLvkqh79wsBfdBPYHZUNCpYhLJ
Ji1r+lWo/xEg7tk4dJpwKkYKg4GwBowYQZLz9M+MJZY0RFP8+km0KkIce4c/w/sosUpxezLwVMqZ
KOkUOWPwDzjCnRw0a4pUw0dlc9wOqhaJYdEgonqXYf/pWz1UI7xygS4qLHZI3usa4rs0b3wjvOgV
i4Lq0c7YGfJvJN9awU9OAwegt+74RR9d8QzOzO+yzm6jlvpdE5MFFBEcIAOjm4Ifr3hf3eeQGDd7
AKE5zylRD7YKVPoRRm+aeskAnIEFnOlSV/me+vFVg/QqJbdT4FGfHVkp3aYEgi+PR3ARxy3mq9qO
u0LIWog+KxNWreZqZjGIzRedVB7uFZjDtRIRQPNZBntSoFsgMDO7OFIqnSO1lQWDhVufBMz/px/X
FnNKgabXMaVtxJlabA3rMheL9m2I3rp8fXOYCXnmR2Fsbh1ZXkW98SOcQeyb9t7wQUPRzLVNQv0u
qNF4mKfNuqvdO/Qct55IYOMv/s/IC/49YjjWdcnhjuxabucC9wmrFf63UT2Ib8lll+G5AP1HJNwB
ZbJ1AJBmWqzVmoEdkTe20V0IjK+XpvBRJL8W8fIdctYxiGvVi/IsJ6JJFc6YmiECMJJ/PWlNnxep
OkeIkZmucMG6AF0E9brF01XaxsL3t0po9JStNUa1giAGvQS+lOVeRdmC2dTrSDIyuRFEh+2tw2wZ
cm78nkXC/J526FSra3IONDCKwgck46+B1BAgG3pDE7IB8m9DidD5UBAYfDTZ3DJsroDmBEwVazhT
e/C4xUbkMYu9OEJ/DptKnCJIPCYvJB1keY9VfgU0VmBTsnTX132AdVTdYmB1h5xGqLIXaEl6myzC
XQ+O0i88B9wP8SeZE3nLSommxtEUmhiXnANNC8t4IWo3/EksDZaWBZFcBgzrG5RhAKQdg87m6+JL
tZ0nmBY0sbZzTY0bbmLhnSHvXSV80qm36pd/jIJV9GG5SvKlmBMBKDh32kjy8rLs3PgEiwkX8Vi5
DgauJQ8KY25QRBxCBu29lyT6Isd8oa0NHuS02D6A8MJioDw7kwhsxjxt1LDW9+YvSr6GJuuqYLRT
0E5GelvPSiHQP4v0FobgyIeOshbuvwywtDN/vDSQ7WkOtY3Bk4edBmlZem2c7ebyn0+8zt8pwMiW
vlMOa0IZzN01tmBgum2XHW/W9MLNPPqnlulm/sROcfmHFmjtgfwbq58jI9khr6hrRJyDaK03HXVp
eYeSp6UygQ/koMY6QtiIBKIuQBvaAIbLYe0rhjqnPKG8SZej5CFoXAjTVAVAXedIaeUSAqVqywpJ
6Rm5gu8FC1OlkNle94u2tAGQr/UPDQmcWEEwTre4Jm2TDretSSzB0rsKccWB7cGr4p80RhhYXf5N
HQMYJtGhTDSsrC3/JS3mg7QpSYcPFh304vCFEN9R++TfEKE7X44QItQLcfpM9nhUMSOpSe7+d97l
kgd0ib/FK3XAOaoadSfnTyVOEg4IIIeVGXLZCFUqrl3dH9o8l/J9MbBh5NxhdtEM7BD13IlugUls
gM2KaIbf9Ih7MvvhbX3PZXL0WdvxhFEDVCaZxyvJn2OUl8dNS9PPW5kYHs+/A0YAMG52wsHPVYEM
/I4se8zmD+mup+ZnmoAxKgxVaBshSJq9zqebctcmQJ21k0g0VE/sNdpSWVL/GyN6v1slL3PsjTNL
prqgO/7PEmlbqq93BtMyJP61NW1h7YEEVrd4UVFAQVBRYNFMpgZgHwuVmTLW4cbBrlttd++cheti
HLYsaO/8BzLHhGjwSGWxWIpSorbRu42Xaky8P1S510o/SYf+sVJSBVJe7C96W1VLVhn5Pb+lPhB1
VS6vSx3tAK6H4wngKj4a7XcmG70MzUEij/iJqDN/S0eBrUXb6Ttkj/A1VkXpHWANJ8KnR87D90W0
q3AIjxJPmoeW881vttKbqf8U55tWXHp9zXiZ86LI/DLkkqOsDy5s+hfg7+NLhN+zQPc00yBKqlrr
LscQRYkCKrNB1KAnxhBvKxA9fd0ZvORR89k6O9akqZOthPuf1Mphk3OOQK4sJf3WUK8D8opPy1Mv
sUXshi0Lz/6RBSDK1Mv7QxgHVoMPvhsDNLeKUkcGV06dQFlB5sFjeahbWYToP0XTye7eiS0+LPNO
w7fJNMiyHsm7C8Ot45Bi9O/b2E5bVkKKdoBhZ404J2Gg+qy9Uzc5Lv39wInSpniOqq99Ybvm/OW/
/fOvVYsP41krivLAwB35nHS/1A9ZW8ryGTpjknOCpLe4aF0dkGxB1ccg57VBtF+SNLvP2o/cr1Ot
BYT5INrd51qaaYpOMcJJus3ig9f6vJZ7cWRU3Wkbq57fazZihGKGIZnnirj3gJuoa+oGSO8djAZk
Y9BYPYKbBl/GrK5IDlegzOViolZVx0CHV01FLvFAUJN2vJ8l4LahfSIYL2hdUOnLrKY2Cf28cbcB
7CTFI3ywQjQRuoS06C3+FPt7DsXUZxfVHp/xlB/1OrWSIDYJVVRvYKMz5aRDAvx1k/fWAQYED9+D
ZpaGx8LcQ/fVXq8Ab05iFAfk1W5zsgU+HT+XgacqS9jtXFoCk/tcbVOz3WQu5F5gfWAJm0Oa6DMc
sp4uziA8Wj2+QbZK3rmbvuH3lhTil+JGi0+3t11tNf/ZiPyFxcd/v2DK0EZJ9yAXgUHme/jWJsXM
GbIm3ac9KxMF7Ptdo1zLzf0jBLbq/U6Oh0oLgfOOphu4/IXVi7vq/k0gUAJd6Z6YZXKMvApBu5Ri
oooszChSS1LpPt2g9tXtsKQxZYScM7rUKcJMLv+iCo/ceFgUiYpZ7ZZNS8J1MydJyLvMLshAqnuh
uqL5n8bl8HExTqaJO5KknOpnhrHNCGmhK9Ct5p86u2lAKbIi6zU1GrgG+f1VOmDTqyEKL31VbUQU
Ph/HC5hB168ZCM2CeN9AJY+Nbe/9AfPWUE4hXM4bMDu95YMeavc1YeZQEZzvgpjp8YCkWF3RKuiX
6MonH0lMg4W9A9BE2lG2G7/4NVL4Dtg6Lh3njwgxp3PCqYEtcI/73VewlhO5rsZLp74bAvriLRyY
f3p4csDAYFVOSK8MLJr27EDlujkgdgrvn59J9x/pyVtdHm30JKGbFB3s/3u4xjoEd4Mo1eaML0g3
q449KvqTMipFgVtZdWLBGG2ogijlXbN81p9VSuKcXwq5gkX4qCKxPn3IcrjRpvxTlrtT4cWPaYzp
iqpFz7qaNWvXY3ynWlMZCYjZj9kDzlfpzN2YOQWfHZa9qJM5qbRyl3iOckRpobIrEg04uvDF7Ufn
IDt8CBMuzhqCxcekFbY0NDJUcSVGB8NBDhYSPP1kR3yQ/HGWfLBoLLaVrO8d16j1ireUhJ+RW52m
P88wKmm8yFkpbWAJQwMHwU3Ha0oB8nYJ5G5EkWdaBExNPtwNrQ5zIXEv4dwbPt/dAOi/ijWrAWCV
kozoz9sbPklGzrODjf0VsUjIC7OuAexB7FG7FEN5XKPS+QcHzEv0DpokzsS6jA3XM45ynUNqnazN
aSbhTr1+/0oO2LARaec6c4EXDC9tDiuRZCldfVbdDXMHdWbbg4J1RtfLlRSxq7LDbSGU8kq5jYxm
UtIlUEqy6oJsIkhjGsXBG5a/6L7NtJBO3NwXHrbihy/dwbZMiGpI+cJK3Dg7TgGSBDfTg055e5HV
nhnsGtyJlaRnFVjdhwHqKXCA0aT1kSkkXPWsa4liw7GX/Ojloh+hGReACBgpWL5Z75tEStFh4zT6
XTH7a6xTt6UxywGiqP4N0a/rTVB/hdFcU9Ng45/oeNvyKGq8zqaVDp3rhFCZ4YTpfLiXlPMIQv/L
uen5nP7ebm91z+Fbhxmq6YhrQ8xWL0sAdTonMI0GRKxV0pjo5zeyTE7RP2KvUApv+7r75SowUIXE
mACb3VP6dI49TePMOq0gdO8xqO4RcbZNAv1tbhoTCxxKIZkHrMktE6gUp0SF9D+x1ZRxLd2ifAsc
imC6nMTEpJATd/ojytDzHycsvbbbmYvmx9x9jlNXsris7ZKftv8QYB24qERvaHOVeNhVrta1IdBe
qzufmV29PnE02hkWZhfwhenixxF9bewY0C8WZPpznYIxs8SQPITaBe4PG8zGkYnEJjlyv5P1ZPMk
kNY2S6bnJv98vJtbfpgeP93qL/DNOUO1tKdEl5RqU4btwsX4xdlFBuODG4iqZEgCN8BE9bHi4jT/
S3yJ9EavkfgEsEoXcfydSGSBGoD5mPY7xO8Ejwek/2OUr2jWD+wZ1sE876caoCz7xGjgqqMLM2ji
Xw3y+yZhBL7scLDVmi8MSnHn/T70tngfSgWTZ/48Z6uir8qp666Q8slz737svZhdCKO/rJaKI3NV
E9s+8sjvqpdUG1jIk8dIyUg/DMAn01c2T2RbU6a8ADZeKfZUpdDjDyDsf0FDMtKSdiwJpAyLjVnF
/W9pGcOlL1Y1759rbhSLTatPdi0j4Mx8cUCozUwLEjXV+PvTyF49OZzTalzHY1eODjzUjCwlqdjl
V9GoDrSVkMK+0uAVqfb0jIOy1ZJ8FgISeR7rv4b1kvZlQXADvp4QwPrDR3x5T9EQ7SPnvUHVyn/R
k5B8MZncwZhyhpr8RZuWHRo9Kuqpc39j0f0Uln9jxL/GgnHqkFvzpK1/prYA3w4aDBierhOP5gSz
n13ZRC4jPHVcxKsfDbacYszfyV6foQKABlmySyKrH6IKLLrtfqKfJ9ut8sPqoxqAap8+aHsrUXfC
Yfl36fZ6gU9JU09yV/iZGIALXAl/RP0zpTVqGy09VOrohnTf4QO3rr2Jx8nerWUkXrhoLbFCFR4V
1/taCHcbBvmu5k6OUEbpnX+1v2L+cs6cZ/vtVcpdtRuRKMP2rf+FeWd7fF6FZa8cboqk7p/+zxZF
Wsvt5vkrs4HtCZQXrBkdTnadmmgG92MngTE/4lk9B+5kK2SzoVfu+GRzSQJHRmueRymtePKtHjCp
7phjTjeUgEavDzABbEwz5e5sECsrJdP3civ+Kx/B75fkfpgyDpEn6tsZiTxCART4aSK0oiNsmwGD
pjQvmcOpKXvPEsC/RQLdXnlmQ7oDyX1dAmUGSWi9Wb5/OOCWBkYICGscJUy8PFW6WoRSFJFg68yZ
rW0zve0N7AlmTLCsX1vU1NyC0yXRA/MS+e8NAmvVgfEumTk5QvnImZSukEN+CXH4WOhLoEDLawln
7nqye4AEoR1MaP3EUCyY5LrerFmNKQhKqXHRJYbG1589Uoa7x6fIY7RxjwYIsBirDLhRlPnXiDLv
dfD3DIh12ewcKhxcoP3FaVl/pZnVX49QrmmOw0vBeJgg729Km/ekBu94MZ+gfG9zBkXge9y+xM2Y
Bc8Q9WA37/xo7h30aCXmXoIS+11ih2IuWILqDi7U+jEPu4bFVKjjNy2Xc8KjFNIczjAc9ruEFEQN
hJ/+nUmMdx2ORXvStVEBLweot/R/8jua3rfF9YJ7KVJkTyVUPBvN8jrIi7YlSwqpzPSr8UtrtSmy
zY7fHdocrhrhr4G+QUzYuvgNwxxIGqMteXmgSKoHL5sfQ+GM0JVyjKw/CvhYYw6b3bfeokm9C7zH
o/XBjkW0eOV4kjhUfD96fsBaF3VDWOhIy/6QbN++w37weBJ6cGN7tnLcGMYR8xV95YCMJOmjzbx8
aQ6Pt7lBT7VE4dQiOzoK5P6QGWdR06RwuZJ4gvg5cBi5A2U=
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
