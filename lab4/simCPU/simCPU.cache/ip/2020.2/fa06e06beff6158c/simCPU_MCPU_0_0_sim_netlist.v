// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May 18 15:08:39 2021
// Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ simCPU_MCPU_0_0_sim_netlist.v
// Design      : simCPU_MCPU_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU
   (zero,
    ALU_operation,
    B,
    res);
  output zero;
  input [2:0]ALU_operation;
  input [31:0]B;
  output [31:0]res;

  wire [2:0]ALU_operation;
  wire [31:0]B;
  wire [31:0]SignalExt_32_0_So;
  wire [31:0]addc_32_0_S;
  wire [31:0]nor32_0_res;
  wire [31:0]or32_0_res;
  wire [31:0]res;
  wire [31:0]srl32_0_res;
  wire [0:0]xlconcat_0_dout;
  wire [31:0]xlslice_0_Dout;
  wire xlslice_1_Dout;
  wire xlslice_2_Dout;
  wire [31:0]xor32_0_res;
  wire [31:0]xor32_1_res;
  wire zero;
  wire [32:32]NLW_addc_32_0_S_UNCONNECTED;
  wire [31:1]NLW_xlconcat_0_dout_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "ALU_MUX8T1_32_0_0,MUX8T1_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "MUX8T1_32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_MUX8T1_32_0_0 MUX8T1_32_0
       (.I0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .I1(or32_0_res),
        .I2(xlslice_0_Dout),
        .I3(xor32_1_res),
        .I4(nor32_0_res),
        .I5(srl32_0_res),
        .I6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .I7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xlconcat_0_dout}),
        .o(res),
        .s(ALU_operation));
  (* CHECK_LICENSE_TYPE = "ALU_SignalExt_32_0_0,SignalExt_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "SignalExt_32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_SignalExt_32_0_0 SignalExt_32_0
       (.S(xlslice_1_Dout),
        .So(SignalExt_32_0_So));
  (* CHECK_LICENSE_TYPE = "ALU_addc_32_0_0,addc_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "addc_32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_addc_32_0_0 addc_32_0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(xor32_0_res),
        .C0(xlslice_1_Dout),
        .S({NLW_addc_32_0_S_UNCONNECTED[32],addc_32_0_S}));
  (* CHECK_LICENSE_TYPE = "ALU_nor32_0_0,nor32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "nor32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_nor32_0_0 nor32_0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(nor32_0_res));
  (* CHECK_LICENSE_TYPE = "ALU_or32_0_0,or32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "or32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or32_0_0 or32_0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(or32_0_res));
  (* CHECK_LICENSE_TYPE = "ALU_or_bit_32_0_0,or_bit_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "or_bit_32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or_bit_32_0_0 or_bit_32_0
       (.A(res),
        .o(zero));
  (* CHECK_LICENSE_TYPE = "ALU_srl32_0_0,srl32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "srl32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_srl32_0_0 srl32_0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(srl32_0_res));
  (* CHECK_LICENSE_TYPE = "ALU_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlconcat_0_0 xlconcat_0
       (.In0(xlslice_2_Dout),
        .In1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout({NLW_xlconcat_0_dout_UNCONNECTED[31:1],xlconcat_0_dout}));
  (* CHECK_LICENSE_TYPE = "ALU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_0 xlslice_0
       (.Din({1'b0,addc_32_0_S}),
        .Dout(xlslice_0_Dout));
  (* CHECK_LICENSE_TYPE = "ALU_xlslice_0_1,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_1 xlslice_1
       (.Din({1'b0,1'b0,ALU_operation[0]}),
        .Dout(xlslice_1_Dout));
  (* CHECK_LICENSE_TYPE = "ALU_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_2_0 xlslice_2
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addc_32_0_S[0]}),
        .Dout(xlslice_2_Dout));
  (* CHECK_LICENSE_TYPE = "ALU_xor32_0_0,xor32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "xor32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_0_0 xor32_0
       (.A(SignalExt_32_0_So),
        .B(B),
        .res(xor32_0_res));
  (* CHECK_LICENSE_TYPE = "ALU_xor32_1_0,xor32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "xor32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_1_0 xor32_1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(xor32_1_res));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_MUX8T1_32_0_0,MUX8T1_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "MUX8T1_32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_MUX8T1_32_0_0
   (I0,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    o,
    s);
  input [31:0]I0;
  input [31:0]I1;
  input [31:0]I2;
  input [31:0]I3;
  input [31:0]I4;
  input [31:0]I5;
  input [31:0]I6;
  input [31:0]I7;
  output [31:0]o;
  input [2:0]s;

  wire [31:0]I1;
  wire [31:0]I2;
  wire [31:0]I3;
  wire [31:0]I4;
  wire [31:0]I5;
  wire [31:0]I7;
  wire [31:0]o;
  wire [2:0]s;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX8T1_32 inst
       (.I0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I2),
        .I7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,I7[0]}),
        .o(o),
        .s(s));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_SignalExt_32_0_0,SignalExt_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "SignalExt_32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_SignalExt_32_0_0
   (S,
    So);
  input S;
  output [31:0]So;

  wire S;
  wire [31:0]So;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SignalExt_32 inst
       (.S(S),
        .So(So));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_addc_32_0_0,addc_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "addc_32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_addc_32_0_0
   (C0,
    A,
    B,
    S);
  input C0;
  input [31:0]A;
  input [31:0]B;
  output [32:0]S;

  wire \<const0> ;
  wire [31:0]B;
  wire C0;
  wire [32:0]\^S ;
  wire inst_n_0;

  assign S[32] = \<const0> ;
  assign S[31:0] = \^S [31:0];
  GND GND
       (.G(\<const0> ));
  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_addc_32 inst
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .C0(C0),
        .S({inst_n_0,\^S [31:0]}));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_nor32_0_0,nor32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "nor32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_nor32_0_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]B;
  wire [31:0]res;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32 inst
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(res));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_or32_0_0,or32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "or32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or32_0_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]B;
  wire [31:0]res;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32 inst
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(res));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_or_bit_32_0_0,or_bit_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "or_bit_32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_or_bit_32_0_0
   (o,
    A);
  output o;
  input [31:0]A;

  wire [31:0]A;
  wire o;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or_bit_32 inst
       (.A(A),
        .o(o));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_srl32_0_0,srl32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "srl32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_srl32_0_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]B;
  wire [31:0]res;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl32 inst
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(res));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_wrapper
   (zero,
    ALU_operation,
    B,
    res);
  output zero;
  input [2:0]ALU_operation;
  input [31:0]B;
  output [31:0]res;

  wire [2:0]ALU_operation;
  wire [31:0]B;
  wire [31:0]res;
  wire zero;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU ALU_i
       (.ALU_operation(ALU_operation),
        .B(B),
        .res(res),
        .zero(zero));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlconcat_0_0
   (In0,
    In1,
    dout);
  input [0:0]In0;
  input [30:0]In1;
  output [31:0]dout;

  wire \<const0> ;
  wire [0:0]In0;

  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29] = \<const0> ;
  assign dout[28] = \<const0> ;
  assign dout[27] = \<const0> ;
  assign dout[26] = \<const0> ;
  assign dout[25] = \<const0> ;
  assign dout[24] = \<const0> ;
  assign dout[23] = \<const0> ;
  assign dout[22] = \<const0> ;
  assign dout[21] = \<const0> ;
  assign dout[20] = \<const0> ;
  assign dout[19] = \<const0> ;
  assign dout[18] = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = \<const0> ;
  assign dout[0] = In0;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_0
   (Din,
    Dout);
  input [32:0]Din;
  output [31:0]Dout;

  wire [32:0]Din;

  assign Dout[31:0] = Din[31:0];
endmodule

(* CHECK_LICENSE_TYPE = "ALU_xlslice_0_1,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_0_1
   (Din,
    Dout);
  input [2:0]Din;
  output [0:0]Dout;

  wire [2:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "ALU_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xlslice_2_0
   (Din,
    Dout);
  input [32:0]Din;
  output [0:0]Dout;

  wire [32:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "ALU_xor32_0_0,xor32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "xor32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_0_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32 inst
       (.A(A),
        .B(B),
        .res(res));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_xor32_1_0,xor32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "xor32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_xor32_1_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]B;
  wire [31:0]res;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32 inst
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(res));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ImmGen
   (ImmSel,
    Imm_out,
    inst_field);
  input [1:0]ImmSel;
  output [13:0]Imm_out;
  input [18:0]inst_field;

  wire [1:0]ImmSel;
  wire [13:0]Imm_out;
  wire [18:0]inst_field;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \Imm_out[0]_INST_0 
       (.I0(inst_field[13]),
        .I1(ImmSel[0]),
        .I2(inst_field[0]),
        .I3(ImmSel[1]),
        .O(Imm_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE2EEE222)) 
    \Imm_out[11]_INST_0 
       (.I0(inst_field[18]),
        .I1(ImmSel[1]),
        .I2(inst_field[13]),
        .I3(ImmSel[0]),
        .I4(inst_field[0]),
        .O(Imm_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \Imm_out[12]_INST_0 
       (.I0(inst_field[5]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[18]),
        .O(Imm_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \Imm_out[13]_INST_0 
       (.I0(inst_field[6]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[18]),
        .O(Imm_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \Imm_out[14]_INST_0 
       (.I0(inst_field[7]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[18]),
        .O(Imm_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \Imm_out[15]_INST_0 
       (.I0(inst_field[8]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[18]),
        .O(Imm_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \Imm_out[16]_INST_0 
       (.I0(inst_field[9]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[18]),
        .O(Imm_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \Imm_out[17]_INST_0 
       (.I0(inst_field[10]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[18]),
        .O(Imm_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \Imm_out[18]_INST_0 
       (.I0(inst_field[11]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[18]),
        .O(Imm_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \Imm_out[19]_INST_0 
       (.I0(inst_field[12]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[18]),
        .O(Imm_out[13]));
  LUT4 #(
    .INIT(16'hED48)) 
    \Imm_out[1]_INST_0 
       (.I0(ImmSel[0]),
        .I1(inst_field[1]),
        .I2(ImmSel[1]),
        .I3(inst_field[14]),
        .O(Imm_out[1]));
  LUT4 #(
    .INIT(16'hED48)) 
    \Imm_out[2]_INST_0 
       (.I0(ImmSel[0]),
        .I1(inst_field[2]),
        .I2(ImmSel[1]),
        .I3(inst_field[15]),
        .O(Imm_out[2]));
  LUT4 #(
    .INIT(16'hED48)) 
    \Imm_out[3]_INST_0 
       (.I0(ImmSel[0]),
        .I1(inst_field[3]),
        .I2(ImmSel[1]),
        .I3(inst_field[16]),
        .O(Imm_out[3]));
  LUT4 #(
    .INIT(16'hED48)) 
    \Imm_out[4]_INST_0 
       (.I0(ImmSel[0]),
        .I1(inst_field[4]),
        .I2(ImmSel[1]),
        .I3(inst_field[17]),
        .O(Imm_out[4]));
endmodule

(* HW_HANDOFF = "MSCPU.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU
   (CPU_MIO,
    MIO_ready,
    MemRW,
    clk,
    rst,
    ALU_out,
    Data_in,
    Data_out,
    PC_out,
    inst_in);
  output CPU_MIO;
  input MIO_ready;
  output MemRW;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN MSCPU_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rst;
  output [31:0]ALU_out;
  input [31:0]Data_in;
  output [31:0]Data_out;
  output [31:0]PC_out;
  input [31:0]inst_in;

  wire \<const0> ;
  wire [31:0]ALU_out;
  wire Controller_ALUSrc_B;
  wire [2:0]Controller_ALU_Control;
  wire Controller_Branch;
  wire [1:0]Controller_ImmSel;
  wire Controller_Jump;
  wire [1:0]Controller_MemtoReg;
  wire Controller_RegWrite;
  wire [31:0]Data_in;
  wire [31:0]Data_out;
  wire MemRW;
  wire [31:0]PC_out;
  wire clk;
  wire inst_30_Dout;
  wire [31:0]inst_in;
  wire rst;
  wire [2:0]xlslice_0_Dout;
  wire [4:0]xlslice_1_Dout;
  wire NLW_Controller_CPU_MIO_UNCONNECTED;

  assign CPU_MIO = \<const0> ;
  (* CHECK_LICENSE_TYPE = "MSCPU_SCPU_ctrl_0_0,SCPU_ctrl,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "SCPU_ctrl,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_SCPU_ctrl_0_0 Controller
       (.ALUSrc_B(Controller_ALUSrc_B),
        .ALU_Control(Controller_ALU_Control),
        .Branch(Controller_Branch),
        .CPU_MIO(NLW_Controller_CPU_MIO_UNCONNECTED),
        .Fun3(xlslice_0_Dout),
        .Fun7(inst_30_Dout),
        .ImmSel(Controller_ImmSel),
        .Jump(Controller_Jump),
        .MIO_ready(1'b0),
        .MemRW(MemRW),
        .MemtoReg(Controller_MemtoReg),
        .OPcode(xlslice_1_Dout),
        .RegWrite(Controller_RegWrite));
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "MSCPU_datapath_0_0,datapath,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "datapath,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_datapath_0_0 datapath
       (.ALUSrc_B(Controller_ALUSrc_B),
        .ALU_operation(Controller_ALU_Control),
        .ALU_out(ALU_out),
        .Branch(Controller_Branch),
        .Data_in(Data_in),
        .Data_out(Data_out),
        .ImmSel(Controller_ImmSel),
        .Jump(Controller_Jump),
        .MemtoReg(Controller_MemtoReg),
        .PC_out(PC_out),
        .RegWrite(Controller_RegWrite),
        .clk(clk),
        .inst_field(inst_in),
        .rst(rst));
  (* CHECK_LICENSE_TYPE = "MSCPU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_0_0 inst14_12
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inst_in[14:12],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dout(xlslice_0_Dout));
  (* CHECK_LICENSE_TYPE = "MSCPU_xlslice_1_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_1_0 inst6_2
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inst_in[6:2],1'b0,1'b0}),
        .Dout(xlslice_1_Dout));
  (* CHECK_LICENSE_TYPE = "MSCPU_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_2_0 inst_30
       (.Din({1'b0,inst_in[30],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dout(inst_30_Dout));
endmodule

(* CHECK_LICENSE_TYPE = "MSCPU_SCPU_ctrl_0_0,SCPU_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "SCPU_ctrl,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_SCPU_ctrl_0_0
   (ALUSrc_B,
    Branch,
    CPU_MIO,
    Fun7,
    Jump,
    MIO_ready,
    MemRW,
    RegWrite,
    ALU_Control,
    Fun3,
    ImmSel,
    MemtoReg,
    OPcode);
  output ALUSrc_B;
  output Branch;
  output CPU_MIO;
  input Fun7;
  output Jump;
  input MIO_ready;
  output MemRW;
  output RegWrite;
  output [2:0]ALU_Control;
  input [2:0]Fun3;
  output [1:0]ImmSel;
  output [1:0]MemtoReg;
  input [4:0]OPcode;

  wire \<const0> ;
  wire ALUSrc_B;
  wire [2:0]ALU_Control;
  wire Branch;
  wire [2:0]Fun3;
  wire Fun7;
  wire [1:0]ImmSel;
  wire MemRW;
  wire [1:0]MemtoReg;
  wire [4:0]OPcode;
  wire RegWrite;

  assign CPU_MIO = \<const0> ;
  assign Jump = ImmSel[1];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SCPU_ctrl inst
       (.ALUSrc_B(ALUSrc_B),
        .ALU_Control(ALU_Control),
        .Branch(Branch),
        .Fun3(Fun3),
        .Fun7(Fun7),
        .ImmSel(ImmSel),
        .MemRW(MemRW),
        .MemtoReg(MemtoReg),
        .OPcode(OPcode),
        .RegWrite(RegWrite));
endmodule

(* CHECK_LICENSE_TYPE = "MSCPU_datapath_0_0,datapath,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "datapath,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_datapath_0_0
   (ALUSrc_B,
    Jump,
    RegWrite,
    clk,
    rst,
    ALU_operation,
    ALU_out,
    Branch,
    Data_in,
    Data_out,
    ImmSel,
    MemtoReg,
    PC_out,
    inst_field);
  input ALUSrc_B;
  input Jump;
  input RegWrite;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN MSCPU_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input [2:0]ALU_operation;
  output [31:0]ALU_out;
  input [0:0]Branch;
  input [31:0]Data_in;
  output [31:0]Data_out;
  input [1:0]ImmSel;
  input [1:0]MemtoReg;
  output [31:0]PC_out;
  input [31:0]inst_field;

  wire ALUSrc_B;
  wire [2:0]ALU_operation;
  wire [31:0]ALU_out;
  wire [0:0]Branch;
  wire [31:0]Data_in;
  wire [31:0]Data_out;
  wire [1:0]ImmSel;
  wire Jump;
  wire [1:0]MemtoReg;
  wire [31:0]PC_out;
  wire RegWrite;
  wire clk;
  wire [31:0]inst_field;
  wire rst;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_wrapper inst
       (.ALUSrc_B(ALUSrc_B),
        .ALU_operation(ALU_operation),
        .ALU_out(ALU_out),
        .Branch(Branch),
        .Data_in(Data_in),
        .Data_out(Data_out),
        .ImmSel(ImmSel),
        .Jump(Jump),
        .MemtoReg(MemtoReg),
        .PC_out(PC_out),
        .RegWrite(RegWrite),
        .clk(clk),
        .inst_field(inst_field),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_wrapper
   (CPU_MIO,
    MIO_ready,
    MemRW,
    clk,
    rst,
    ALU_out,
    Data_in,
    Data_out,
    PC_out,
    inst_in);
  output CPU_MIO;
  input MIO_ready;
  output MemRW;
  input clk;
  input rst;
  output [31:0]ALU_out;
  input [31:0]Data_in;
  output [31:0]Data_out;
  output [31:0]PC_out;
  input [31:0]inst_in;

  wire \<const0> ;
  wire [31:0]ALU_out;
  wire [31:0]Data_in;
  wire [31:0]Data_out;
  wire MemRW;
  wire [31:0]PC_out;
  wire clk;
  wire [31:0]inst_in;
  wire rst;
  wire NLW_MSCPU_i_CPU_MIO_UNCONNECTED;

  assign CPU_MIO = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* HW_HANDOFF = "MSCPU.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU MSCPU_i
       (.ALU_out(ALU_out),
        .CPU_MIO(NLW_MSCPU_i_CPU_MIO_UNCONNECTED),
        .Data_in(Data_in),
        .Data_out(Data_out),
        .MIO_ready(1'b0),
        .MemRW(MemRW),
        .PC_out(PC_out),
        .clk(clk),
        .inst_in(inst_in),
        .rst(rst));
endmodule

(* CHECK_LICENSE_TYPE = "MSCPU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_0_0
   (Din,
    Dout);
  input [31:0]Din;
  output [2:0]Dout;

  wire [31:0]Din;

  assign Dout[2:0] = Din[14:12];
endmodule

(* CHECK_LICENSE_TYPE = "MSCPU_xlslice_1_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_1_0
   (Din,
    Dout);
  input [31:0]Din;
  output [4:0]Dout;

  wire [31:0]Din;

  assign Dout[4:0] = Din[6:2];
endmodule

(* CHECK_LICENSE_TYPE = "MSCPU_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_xlslice_2_0
   (Din,
    Dout);
  input [31:0]Din;
  output [0:0]Dout;

  wire [31:0]Din;

  assign Dout[0] = Din[30];
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_32
   (s,
    I0,
    I1,
    o);
  input s;
  input [31:0]I0;
  input [31:0]I1;
  output [31:0]o;

  wire [31:0]I0;
  wire [31:0]I1;
  wire [31:0]o;
  wire s;

  LUT3 #(
    .INIT(8'hAC)) 
    \o[0]_INST_0 
       (.I0(I1[0]),
        .I1(I0[0]),
        .I2(s),
        .O(o[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[10]_INST_0 
       (.I0(I1[10]),
        .I1(I0[10]),
        .I2(s),
        .O(o[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[11]_INST_0 
       (.I0(I1[11]),
        .I1(I0[11]),
        .I2(s),
        .O(o[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[12]_INST_0 
       (.I0(I1[12]),
        .I1(I0[12]),
        .I2(s),
        .O(o[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[13]_INST_0 
       (.I0(I1[13]),
        .I1(I0[13]),
        .I2(s),
        .O(o[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[14]_INST_0 
       (.I0(I1[14]),
        .I1(I0[14]),
        .I2(s),
        .O(o[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[15]_INST_0 
       (.I0(I1[15]),
        .I1(I0[15]),
        .I2(s),
        .O(o[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[16]_INST_0 
       (.I0(I1[16]),
        .I1(I0[16]),
        .I2(s),
        .O(o[16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[17]_INST_0 
       (.I0(I1[17]),
        .I1(I0[17]),
        .I2(s),
        .O(o[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[18]_INST_0 
       (.I0(I1[18]),
        .I1(I0[18]),
        .I2(s),
        .O(o[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[19]_INST_0 
       (.I0(I1[19]),
        .I1(I0[19]),
        .I2(s),
        .O(o[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[1]_INST_0 
       (.I0(I1[1]),
        .I1(I0[1]),
        .I2(s),
        .O(o[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[20]_INST_0 
       (.I0(I1[20]),
        .I1(I0[20]),
        .I2(s),
        .O(o[20]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[21]_INST_0 
       (.I0(I1[21]),
        .I1(I0[21]),
        .I2(s),
        .O(o[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[22]_INST_0 
       (.I0(I1[22]),
        .I1(I0[22]),
        .I2(s),
        .O(o[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[23]_INST_0 
       (.I0(I1[23]),
        .I1(I0[23]),
        .I2(s),
        .O(o[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[24]_INST_0 
       (.I0(I1[24]),
        .I1(I0[24]),
        .I2(s),
        .O(o[24]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[25]_INST_0 
       (.I0(I1[25]),
        .I1(I0[25]),
        .I2(s),
        .O(o[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[26]_INST_0 
       (.I0(I1[26]),
        .I1(I0[26]),
        .I2(s),
        .O(o[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[27]_INST_0 
       (.I0(I1[27]),
        .I1(I0[27]),
        .I2(s),
        .O(o[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[28]_INST_0 
       (.I0(I1[28]),
        .I1(I0[28]),
        .I2(s),
        .O(o[28]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[29]_INST_0 
       (.I0(I1[29]),
        .I1(I0[29]),
        .I2(s),
        .O(o[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[2]_INST_0 
       (.I0(I1[2]),
        .I1(I0[2]),
        .I2(s),
        .O(o[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[30]_INST_0 
       (.I0(I1[30]),
        .I1(I0[30]),
        .I2(s),
        .O(o[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[31]_INST_0 
       (.I0(I1[31]),
        .I1(I0[31]),
        .I2(s),
        .O(o[31]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[3]_INST_0 
       (.I0(I1[3]),
        .I1(I0[3]),
        .I2(s),
        .O(o[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[4]_INST_0 
       (.I0(I1[4]),
        .I1(I0[4]),
        .I2(s),
        .O(o[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[5]_INST_0 
       (.I0(I1[5]),
        .I1(I0[5]),
        .I2(s),
        .O(o[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[6]_INST_0 
       (.I0(I1[6]),
        .I1(I0[6]),
        .I2(s),
        .O(o[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[7]_INST_0 
       (.I0(I1[7]),
        .I1(I0[7]),
        .I2(s),
        .O(o[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[8]_INST_0 
       (.I0(I1[8]),
        .I1(I0[8]),
        .I2(s),
        .O(o[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \o[9]_INST_0 
       (.I0(I1[9]),
        .I1(I0[9]),
        .I2(s),
        .O(o[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX4T1_32
   (I0,
    I1,
    I2,
    I3,
    o,
    s);
  input [31:0]I0;
  input [31:0]I1;
  input [31:0]I2;
  input [31:0]I3;
  output [31:0]o;
  input [1:0]s;

  wire [31:0]I0;
  wire [31:0]I1;
  wire [31:0]I2;
  wire [31:0]I3;
  wire [31:0]o;
  wire [1:0]s;

  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[0]_INST_0 
       (.I0(I1[0]),
        .I1(I0[0]),
        .I2(I3[0]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[0]),
        .O(o[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[10]_INST_0 
       (.I0(I1[10]),
        .I1(I0[10]),
        .I2(I3[10]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[10]),
        .O(o[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[11]_INST_0 
       (.I0(I1[11]),
        .I1(I0[11]),
        .I2(I3[11]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[11]),
        .O(o[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[12]_INST_0 
       (.I0(I1[12]),
        .I1(I0[12]),
        .I2(I3[12]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[12]),
        .O(o[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[13]_INST_0 
       (.I0(I1[13]),
        .I1(I0[13]),
        .I2(I3[13]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[13]),
        .O(o[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[14]_INST_0 
       (.I0(I1[14]),
        .I1(I0[14]),
        .I2(I3[14]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[14]),
        .O(o[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[15]_INST_0 
       (.I0(I1[15]),
        .I1(I0[15]),
        .I2(I3[15]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[15]),
        .O(o[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[16]_INST_0 
       (.I0(I1[16]),
        .I1(I0[16]),
        .I2(I3[16]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[16]),
        .O(o[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[17]_INST_0 
       (.I0(I1[17]),
        .I1(I0[17]),
        .I2(I3[17]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[17]),
        .O(o[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[18]_INST_0 
       (.I0(I1[18]),
        .I1(I0[18]),
        .I2(I3[18]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[18]),
        .O(o[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[19]_INST_0 
       (.I0(I1[19]),
        .I1(I0[19]),
        .I2(I3[19]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[19]),
        .O(o[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[1]_INST_0 
       (.I0(I1[1]),
        .I1(I0[1]),
        .I2(I3[1]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[1]),
        .O(o[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[20]_INST_0 
       (.I0(I1[20]),
        .I1(I0[20]),
        .I2(I3[20]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[20]),
        .O(o[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[21]_INST_0 
       (.I0(I1[21]),
        .I1(I0[21]),
        .I2(I3[21]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[21]),
        .O(o[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[22]_INST_0 
       (.I0(I1[22]),
        .I1(I0[22]),
        .I2(I3[22]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[22]),
        .O(o[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[23]_INST_0 
       (.I0(I1[23]),
        .I1(I0[23]),
        .I2(I3[23]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[23]),
        .O(o[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[24]_INST_0 
       (.I0(I1[24]),
        .I1(I0[24]),
        .I2(I3[24]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[24]),
        .O(o[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[25]_INST_0 
       (.I0(I1[25]),
        .I1(I0[25]),
        .I2(I3[25]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[25]),
        .O(o[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[26]_INST_0 
       (.I0(I1[26]),
        .I1(I0[26]),
        .I2(I3[26]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[26]),
        .O(o[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[27]_INST_0 
       (.I0(I1[27]),
        .I1(I0[27]),
        .I2(I3[27]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[27]),
        .O(o[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[28]_INST_0 
       (.I0(I1[28]),
        .I1(I0[28]),
        .I2(I3[28]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[28]),
        .O(o[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[29]_INST_0 
       (.I0(I1[29]),
        .I1(I0[29]),
        .I2(I3[29]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[29]),
        .O(o[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[2]_INST_0 
       (.I0(I1[2]),
        .I1(I0[2]),
        .I2(I3[2]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[2]),
        .O(o[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[30]_INST_0 
       (.I0(I1[30]),
        .I1(I0[30]),
        .I2(I3[30]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[30]),
        .O(o[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[31]_INST_0 
       (.I0(I1[31]),
        .I1(I0[31]),
        .I2(I3[31]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[31]),
        .O(o[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[3]_INST_0 
       (.I0(I1[3]),
        .I1(I0[3]),
        .I2(I3[3]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[3]),
        .O(o[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[4]_INST_0 
       (.I0(I1[4]),
        .I1(I0[4]),
        .I2(I3[4]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[4]),
        .O(o[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[5]_INST_0 
       (.I0(I1[5]),
        .I1(I0[5]),
        .I2(I3[5]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[5]),
        .O(o[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[6]_INST_0 
       (.I0(I1[6]),
        .I1(I0[6]),
        .I2(I3[6]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[6]),
        .O(o[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[7]_INST_0 
       (.I0(I1[7]),
        .I1(I0[7]),
        .I2(I3[7]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[7]),
        .O(o[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[8]_INST_0 
       (.I0(I1[8]),
        .I1(I0[8]),
        .I2(I3[8]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[8]),
        .O(o[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \o[9]_INST_0 
       (.I0(I1[9]),
        .I1(I0[9]),
        .I2(I3[9]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(I2[9]),
        .O(o[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX8T1_32
   (I0,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    o,
    s);
  input [31:0]I0;
  input [31:0]I1;
  input [31:0]I2;
  input [31:0]I3;
  input [31:0]I4;
  input [31:0]I5;
  input [31:0]I6;
  input [31:0]I7;
  output [31:0]o;
  input [2:0]s;

  wire [31:0]I0;
  wire [31:0]I1;
  wire [31:0]I2;
  wire [31:0]I3;
  wire [31:0]I4;
  wire [31:0]I5;
  wire [31:0]I6;
  wire [31:0]I7;
  wire [31:0]o;
  wire \o[0]_INST_0_i_1_n_0 ;
  wire \o[0]_INST_0_i_2_n_0 ;
  wire \o[10]_INST_0_i_1_n_0 ;
  wire \o[10]_INST_0_i_2_n_0 ;
  wire \o[11]_INST_0_i_1_n_0 ;
  wire \o[11]_INST_0_i_2_n_0 ;
  wire \o[12]_INST_0_i_1_n_0 ;
  wire \o[12]_INST_0_i_2_n_0 ;
  wire \o[13]_INST_0_i_1_n_0 ;
  wire \o[13]_INST_0_i_2_n_0 ;
  wire \o[14]_INST_0_i_1_n_0 ;
  wire \o[14]_INST_0_i_2_n_0 ;
  wire \o[15]_INST_0_i_1_n_0 ;
  wire \o[15]_INST_0_i_2_n_0 ;
  wire \o[16]_INST_0_i_1_n_0 ;
  wire \o[16]_INST_0_i_2_n_0 ;
  wire \o[17]_INST_0_i_1_n_0 ;
  wire \o[17]_INST_0_i_2_n_0 ;
  wire \o[18]_INST_0_i_1_n_0 ;
  wire \o[18]_INST_0_i_2_n_0 ;
  wire \o[19]_INST_0_i_1_n_0 ;
  wire \o[19]_INST_0_i_2_n_0 ;
  wire \o[1]_INST_0_i_1_n_0 ;
  wire \o[1]_INST_0_i_2_n_0 ;
  wire \o[20]_INST_0_i_1_n_0 ;
  wire \o[20]_INST_0_i_2_n_0 ;
  wire \o[21]_INST_0_i_1_n_0 ;
  wire \o[21]_INST_0_i_2_n_0 ;
  wire \o[22]_INST_0_i_1_n_0 ;
  wire \o[22]_INST_0_i_2_n_0 ;
  wire \o[23]_INST_0_i_1_n_0 ;
  wire \o[23]_INST_0_i_2_n_0 ;
  wire \o[24]_INST_0_i_1_n_0 ;
  wire \o[24]_INST_0_i_2_n_0 ;
  wire \o[25]_INST_0_i_1_n_0 ;
  wire \o[25]_INST_0_i_2_n_0 ;
  wire \o[26]_INST_0_i_1_n_0 ;
  wire \o[26]_INST_0_i_2_n_0 ;
  wire \o[27]_INST_0_i_1_n_0 ;
  wire \o[27]_INST_0_i_2_n_0 ;
  wire \o[28]_INST_0_i_1_n_0 ;
  wire \o[28]_INST_0_i_2_n_0 ;
  wire \o[29]_INST_0_i_1_n_0 ;
  wire \o[29]_INST_0_i_2_n_0 ;
  wire \o[2]_INST_0_i_1_n_0 ;
  wire \o[2]_INST_0_i_2_n_0 ;
  wire \o[30]_INST_0_i_1_n_0 ;
  wire \o[30]_INST_0_i_2_n_0 ;
  wire \o[31]_INST_0_i_1_n_0 ;
  wire \o[31]_INST_0_i_2_n_0 ;
  wire \o[3]_INST_0_i_1_n_0 ;
  wire \o[3]_INST_0_i_2_n_0 ;
  wire \o[4]_INST_0_i_1_n_0 ;
  wire \o[4]_INST_0_i_2_n_0 ;
  wire \o[5]_INST_0_i_1_n_0 ;
  wire \o[5]_INST_0_i_2_n_0 ;
  wire \o[6]_INST_0_i_1_n_0 ;
  wire \o[6]_INST_0_i_2_n_0 ;
  wire \o[7]_INST_0_i_1_n_0 ;
  wire \o[7]_INST_0_i_2_n_0 ;
  wire \o[8]_INST_0_i_1_n_0 ;
  wire \o[8]_INST_0_i_2_n_0 ;
  wire \o[9]_INST_0_i_1_n_0 ;
  wire \o[9]_INST_0_i_2_n_0 ;
  wire [2:0]s;

  MUXF7 \o[0]_INST_0 
       (.I0(\o[0]_INST_0_i_1_n_0 ),
        .I1(\o[0]_INST_0_i_2_n_0 ),
        .O(o[0]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[0]_INST_0_i_1 
       (.I0(I3[0]),
        .I1(I2[0]),
        .I2(s[1]),
        .I3(I1[0]),
        .I4(s[0]),
        .I5(I0[0]),
        .O(\o[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[0]_INST_0_i_2 
       (.I0(I7[0]),
        .I1(I6[0]),
        .I2(s[1]),
        .I3(I5[0]),
        .I4(s[0]),
        .I5(I4[0]),
        .O(\o[0]_INST_0_i_2_n_0 ));
  MUXF7 \o[10]_INST_0 
       (.I0(\o[10]_INST_0_i_1_n_0 ),
        .I1(\o[10]_INST_0_i_2_n_0 ),
        .O(o[10]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[10]_INST_0_i_1 
       (.I0(I3[10]),
        .I1(I2[10]),
        .I2(s[1]),
        .I3(I1[10]),
        .I4(s[0]),
        .I5(I0[10]),
        .O(\o[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[10]_INST_0_i_2 
       (.I0(I7[10]),
        .I1(I6[10]),
        .I2(s[1]),
        .I3(I5[10]),
        .I4(s[0]),
        .I5(I4[10]),
        .O(\o[10]_INST_0_i_2_n_0 ));
  MUXF7 \o[11]_INST_0 
       (.I0(\o[11]_INST_0_i_1_n_0 ),
        .I1(\o[11]_INST_0_i_2_n_0 ),
        .O(o[11]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[11]_INST_0_i_1 
       (.I0(I3[11]),
        .I1(I2[11]),
        .I2(s[1]),
        .I3(I1[11]),
        .I4(s[0]),
        .I5(I0[11]),
        .O(\o[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[11]_INST_0_i_2 
       (.I0(I7[11]),
        .I1(I6[11]),
        .I2(s[1]),
        .I3(I5[11]),
        .I4(s[0]),
        .I5(I4[11]),
        .O(\o[11]_INST_0_i_2_n_0 ));
  MUXF7 \o[12]_INST_0 
       (.I0(\o[12]_INST_0_i_1_n_0 ),
        .I1(\o[12]_INST_0_i_2_n_0 ),
        .O(o[12]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[12]_INST_0_i_1 
       (.I0(I3[12]),
        .I1(I2[12]),
        .I2(s[1]),
        .I3(I1[12]),
        .I4(s[0]),
        .I5(I0[12]),
        .O(\o[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[12]_INST_0_i_2 
       (.I0(I7[12]),
        .I1(I6[12]),
        .I2(s[1]),
        .I3(I5[12]),
        .I4(s[0]),
        .I5(I4[12]),
        .O(\o[12]_INST_0_i_2_n_0 ));
  MUXF7 \o[13]_INST_0 
       (.I0(\o[13]_INST_0_i_1_n_0 ),
        .I1(\o[13]_INST_0_i_2_n_0 ),
        .O(o[13]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[13]_INST_0_i_1 
       (.I0(I3[13]),
        .I1(I2[13]),
        .I2(s[1]),
        .I3(I1[13]),
        .I4(s[0]),
        .I5(I0[13]),
        .O(\o[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[13]_INST_0_i_2 
       (.I0(I7[13]),
        .I1(I6[13]),
        .I2(s[1]),
        .I3(I5[13]),
        .I4(s[0]),
        .I5(I4[13]),
        .O(\o[13]_INST_0_i_2_n_0 ));
  MUXF7 \o[14]_INST_0 
       (.I0(\o[14]_INST_0_i_1_n_0 ),
        .I1(\o[14]_INST_0_i_2_n_0 ),
        .O(o[14]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[14]_INST_0_i_1 
       (.I0(I3[14]),
        .I1(I2[14]),
        .I2(s[1]),
        .I3(I1[14]),
        .I4(s[0]),
        .I5(I0[14]),
        .O(\o[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[14]_INST_0_i_2 
       (.I0(I7[14]),
        .I1(I6[14]),
        .I2(s[1]),
        .I3(I5[14]),
        .I4(s[0]),
        .I5(I4[14]),
        .O(\o[14]_INST_0_i_2_n_0 ));
  MUXF7 \o[15]_INST_0 
       (.I0(\o[15]_INST_0_i_1_n_0 ),
        .I1(\o[15]_INST_0_i_2_n_0 ),
        .O(o[15]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[15]_INST_0_i_1 
       (.I0(I3[15]),
        .I1(I2[15]),
        .I2(s[1]),
        .I3(I1[15]),
        .I4(s[0]),
        .I5(I0[15]),
        .O(\o[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[15]_INST_0_i_2 
       (.I0(I7[15]),
        .I1(I6[15]),
        .I2(s[1]),
        .I3(I5[15]),
        .I4(s[0]),
        .I5(I4[15]),
        .O(\o[15]_INST_0_i_2_n_0 ));
  MUXF7 \o[16]_INST_0 
       (.I0(\o[16]_INST_0_i_1_n_0 ),
        .I1(\o[16]_INST_0_i_2_n_0 ),
        .O(o[16]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[16]_INST_0_i_1 
       (.I0(I3[16]),
        .I1(I2[16]),
        .I2(s[1]),
        .I3(I1[16]),
        .I4(s[0]),
        .I5(I0[16]),
        .O(\o[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[16]_INST_0_i_2 
       (.I0(I7[16]),
        .I1(I6[16]),
        .I2(s[1]),
        .I3(I5[16]),
        .I4(s[0]),
        .I5(I4[16]),
        .O(\o[16]_INST_0_i_2_n_0 ));
  MUXF7 \o[17]_INST_0 
       (.I0(\o[17]_INST_0_i_1_n_0 ),
        .I1(\o[17]_INST_0_i_2_n_0 ),
        .O(o[17]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[17]_INST_0_i_1 
       (.I0(I3[17]),
        .I1(I2[17]),
        .I2(s[1]),
        .I3(I1[17]),
        .I4(s[0]),
        .I5(I0[17]),
        .O(\o[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[17]_INST_0_i_2 
       (.I0(I7[17]),
        .I1(I6[17]),
        .I2(s[1]),
        .I3(I5[17]),
        .I4(s[0]),
        .I5(I4[17]),
        .O(\o[17]_INST_0_i_2_n_0 ));
  MUXF7 \o[18]_INST_0 
       (.I0(\o[18]_INST_0_i_1_n_0 ),
        .I1(\o[18]_INST_0_i_2_n_0 ),
        .O(o[18]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[18]_INST_0_i_1 
       (.I0(I3[18]),
        .I1(I2[18]),
        .I2(s[1]),
        .I3(I1[18]),
        .I4(s[0]),
        .I5(I0[18]),
        .O(\o[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[18]_INST_0_i_2 
       (.I0(I7[18]),
        .I1(I6[18]),
        .I2(s[1]),
        .I3(I5[18]),
        .I4(s[0]),
        .I5(I4[18]),
        .O(\o[18]_INST_0_i_2_n_0 ));
  MUXF7 \o[19]_INST_0 
       (.I0(\o[19]_INST_0_i_1_n_0 ),
        .I1(\o[19]_INST_0_i_2_n_0 ),
        .O(o[19]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[19]_INST_0_i_1 
       (.I0(I3[19]),
        .I1(I2[19]),
        .I2(s[1]),
        .I3(I1[19]),
        .I4(s[0]),
        .I5(I0[19]),
        .O(\o[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[19]_INST_0_i_2 
       (.I0(I7[19]),
        .I1(I6[19]),
        .I2(s[1]),
        .I3(I5[19]),
        .I4(s[0]),
        .I5(I4[19]),
        .O(\o[19]_INST_0_i_2_n_0 ));
  MUXF7 \o[1]_INST_0 
       (.I0(\o[1]_INST_0_i_1_n_0 ),
        .I1(\o[1]_INST_0_i_2_n_0 ),
        .O(o[1]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[1]_INST_0_i_1 
       (.I0(I3[1]),
        .I1(I2[1]),
        .I2(s[1]),
        .I3(I1[1]),
        .I4(s[0]),
        .I5(I0[1]),
        .O(\o[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[1]_INST_0_i_2 
       (.I0(I7[1]),
        .I1(I6[1]),
        .I2(s[1]),
        .I3(I5[1]),
        .I4(s[0]),
        .I5(I4[1]),
        .O(\o[1]_INST_0_i_2_n_0 ));
  MUXF7 \o[20]_INST_0 
       (.I0(\o[20]_INST_0_i_1_n_0 ),
        .I1(\o[20]_INST_0_i_2_n_0 ),
        .O(o[20]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[20]_INST_0_i_1 
       (.I0(I3[20]),
        .I1(I2[20]),
        .I2(s[1]),
        .I3(I1[20]),
        .I4(s[0]),
        .I5(I0[20]),
        .O(\o[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[20]_INST_0_i_2 
       (.I0(I7[20]),
        .I1(I6[20]),
        .I2(s[1]),
        .I3(I5[20]),
        .I4(s[0]),
        .I5(I4[20]),
        .O(\o[20]_INST_0_i_2_n_0 ));
  MUXF7 \o[21]_INST_0 
       (.I0(\o[21]_INST_0_i_1_n_0 ),
        .I1(\o[21]_INST_0_i_2_n_0 ),
        .O(o[21]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[21]_INST_0_i_1 
       (.I0(I3[21]),
        .I1(I2[21]),
        .I2(s[1]),
        .I3(I1[21]),
        .I4(s[0]),
        .I5(I0[21]),
        .O(\o[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[21]_INST_0_i_2 
       (.I0(I7[21]),
        .I1(I6[21]),
        .I2(s[1]),
        .I3(I5[21]),
        .I4(s[0]),
        .I5(I4[21]),
        .O(\o[21]_INST_0_i_2_n_0 ));
  MUXF7 \o[22]_INST_0 
       (.I0(\o[22]_INST_0_i_1_n_0 ),
        .I1(\o[22]_INST_0_i_2_n_0 ),
        .O(o[22]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[22]_INST_0_i_1 
       (.I0(I3[22]),
        .I1(I2[22]),
        .I2(s[1]),
        .I3(I1[22]),
        .I4(s[0]),
        .I5(I0[22]),
        .O(\o[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[22]_INST_0_i_2 
       (.I0(I7[22]),
        .I1(I6[22]),
        .I2(s[1]),
        .I3(I5[22]),
        .I4(s[0]),
        .I5(I4[22]),
        .O(\o[22]_INST_0_i_2_n_0 ));
  MUXF7 \o[23]_INST_0 
       (.I0(\o[23]_INST_0_i_1_n_0 ),
        .I1(\o[23]_INST_0_i_2_n_0 ),
        .O(o[23]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[23]_INST_0_i_1 
       (.I0(I3[23]),
        .I1(I2[23]),
        .I2(s[1]),
        .I3(I1[23]),
        .I4(s[0]),
        .I5(I0[23]),
        .O(\o[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[23]_INST_0_i_2 
       (.I0(I7[23]),
        .I1(I6[23]),
        .I2(s[1]),
        .I3(I5[23]),
        .I4(s[0]),
        .I5(I4[23]),
        .O(\o[23]_INST_0_i_2_n_0 ));
  MUXF7 \o[24]_INST_0 
       (.I0(\o[24]_INST_0_i_1_n_0 ),
        .I1(\o[24]_INST_0_i_2_n_0 ),
        .O(o[24]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[24]_INST_0_i_1 
       (.I0(I3[24]),
        .I1(I2[24]),
        .I2(s[1]),
        .I3(I1[24]),
        .I4(s[0]),
        .I5(I0[24]),
        .O(\o[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[24]_INST_0_i_2 
       (.I0(I7[24]),
        .I1(I6[24]),
        .I2(s[1]),
        .I3(I5[24]),
        .I4(s[0]),
        .I5(I4[24]),
        .O(\o[24]_INST_0_i_2_n_0 ));
  MUXF7 \o[25]_INST_0 
       (.I0(\o[25]_INST_0_i_1_n_0 ),
        .I1(\o[25]_INST_0_i_2_n_0 ),
        .O(o[25]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[25]_INST_0_i_1 
       (.I0(I3[25]),
        .I1(I2[25]),
        .I2(s[1]),
        .I3(I1[25]),
        .I4(s[0]),
        .I5(I0[25]),
        .O(\o[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[25]_INST_0_i_2 
       (.I0(I7[25]),
        .I1(I6[25]),
        .I2(s[1]),
        .I3(I5[25]),
        .I4(s[0]),
        .I5(I4[25]),
        .O(\o[25]_INST_0_i_2_n_0 ));
  MUXF7 \o[26]_INST_0 
       (.I0(\o[26]_INST_0_i_1_n_0 ),
        .I1(\o[26]_INST_0_i_2_n_0 ),
        .O(o[26]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[26]_INST_0_i_1 
       (.I0(I3[26]),
        .I1(I2[26]),
        .I2(s[1]),
        .I3(I1[26]),
        .I4(s[0]),
        .I5(I0[26]),
        .O(\o[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[26]_INST_0_i_2 
       (.I0(I7[26]),
        .I1(I6[26]),
        .I2(s[1]),
        .I3(I5[26]),
        .I4(s[0]),
        .I5(I4[26]),
        .O(\o[26]_INST_0_i_2_n_0 ));
  MUXF7 \o[27]_INST_0 
       (.I0(\o[27]_INST_0_i_1_n_0 ),
        .I1(\o[27]_INST_0_i_2_n_0 ),
        .O(o[27]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[27]_INST_0_i_1 
       (.I0(I3[27]),
        .I1(I2[27]),
        .I2(s[1]),
        .I3(I1[27]),
        .I4(s[0]),
        .I5(I0[27]),
        .O(\o[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[27]_INST_0_i_2 
       (.I0(I7[27]),
        .I1(I6[27]),
        .I2(s[1]),
        .I3(I5[27]),
        .I4(s[0]),
        .I5(I4[27]),
        .O(\o[27]_INST_0_i_2_n_0 ));
  MUXF7 \o[28]_INST_0 
       (.I0(\o[28]_INST_0_i_1_n_0 ),
        .I1(\o[28]_INST_0_i_2_n_0 ),
        .O(o[28]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[28]_INST_0_i_1 
       (.I0(I3[28]),
        .I1(I2[28]),
        .I2(s[1]),
        .I3(I1[28]),
        .I4(s[0]),
        .I5(I0[28]),
        .O(\o[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[28]_INST_0_i_2 
       (.I0(I7[28]),
        .I1(I6[28]),
        .I2(s[1]),
        .I3(I5[28]),
        .I4(s[0]),
        .I5(I4[28]),
        .O(\o[28]_INST_0_i_2_n_0 ));
  MUXF7 \o[29]_INST_0 
       (.I0(\o[29]_INST_0_i_1_n_0 ),
        .I1(\o[29]_INST_0_i_2_n_0 ),
        .O(o[29]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[29]_INST_0_i_1 
       (.I0(I3[29]),
        .I1(I2[29]),
        .I2(s[1]),
        .I3(I1[29]),
        .I4(s[0]),
        .I5(I0[29]),
        .O(\o[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[29]_INST_0_i_2 
       (.I0(I7[29]),
        .I1(I6[29]),
        .I2(s[1]),
        .I3(I5[29]),
        .I4(s[0]),
        .I5(I4[29]),
        .O(\o[29]_INST_0_i_2_n_0 ));
  MUXF7 \o[2]_INST_0 
       (.I0(\o[2]_INST_0_i_1_n_0 ),
        .I1(\o[2]_INST_0_i_2_n_0 ),
        .O(o[2]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[2]_INST_0_i_1 
       (.I0(I3[2]),
        .I1(I2[2]),
        .I2(s[1]),
        .I3(I1[2]),
        .I4(s[0]),
        .I5(I0[2]),
        .O(\o[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[2]_INST_0_i_2 
       (.I0(I7[2]),
        .I1(I6[2]),
        .I2(s[1]),
        .I3(I5[2]),
        .I4(s[0]),
        .I5(I4[2]),
        .O(\o[2]_INST_0_i_2_n_0 ));
  MUXF7 \o[30]_INST_0 
       (.I0(\o[30]_INST_0_i_1_n_0 ),
        .I1(\o[30]_INST_0_i_2_n_0 ),
        .O(o[30]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[30]_INST_0_i_1 
       (.I0(I3[30]),
        .I1(I2[30]),
        .I2(s[1]),
        .I3(I1[30]),
        .I4(s[0]),
        .I5(I0[30]),
        .O(\o[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[30]_INST_0_i_2 
       (.I0(I7[30]),
        .I1(I6[30]),
        .I2(s[1]),
        .I3(I5[30]),
        .I4(s[0]),
        .I5(I4[30]),
        .O(\o[30]_INST_0_i_2_n_0 ));
  MUXF7 \o[31]_INST_0 
       (.I0(\o[31]_INST_0_i_1_n_0 ),
        .I1(\o[31]_INST_0_i_2_n_0 ),
        .O(o[31]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[31]_INST_0_i_1 
       (.I0(I3[31]),
        .I1(I2[31]),
        .I2(s[1]),
        .I3(I1[31]),
        .I4(s[0]),
        .I5(I0[31]),
        .O(\o[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[31]_INST_0_i_2 
       (.I0(I7[31]),
        .I1(I6[31]),
        .I2(s[1]),
        .I3(I5[31]),
        .I4(s[0]),
        .I5(I4[31]),
        .O(\o[31]_INST_0_i_2_n_0 ));
  MUXF7 \o[3]_INST_0 
       (.I0(\o[3]_INST_0_i_1_n_0 ),
        .I1(\o[3]_INST_0_i_2_n_0 ),
        .O(o[3]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[3]_INST_0_i_1 
       (.I0(I3[3]),
        .I1(I2[3]),
        .I2(s[1]),
        .I3(I1[3]),
        .I4(s[0]),
        .I5(I0[3]),
        .O(\o[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[3]_INST_0_i_2 
       (.I0(I7[3]),
        .I1(I6[3]),
        .I2(s[1]),
        .I3(I5[3]),
        .I4(s[0]),
        .I5(I4[3]),
        .O(\o[3]_INST_0_i_2_n_0 ));
  MUXF7 \o[4]_INST_0 
       (.I0(\o[4]_INST_0_i_1_n_0 ),
        .I1(\o[4]_INST_0_i_2_n_0 ),
        .O(o[4]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[4]_INST_0_i_1 
       (.I0(I3[4]),
        .I1(I2[4]),
        .I2(s[1]),
        .I3(I1[4]),
        .I4(s[0]),
        .I5(I0[4]),
        .O(\o[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[4]_INST_0_i_2 
       (.I0(I7[4]),
        .I1(I6[4]),
        .I2(s[1]),
        .I3(I5[4]),
        .I4(s[0]),
        .I5(I4[4]),
        .O(\o[4]_INST_0_i_2_n_0 ));
  MUXF7 \o[5]_INST_0 
       (.I0(\o[5]_INST_0_i_1_n_0 ),
        .I1(\o[5]_INST_0_i_2_n_0 ),
        .O(o[5]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[5]_INST_0_i_1 
       (.I0(I3[5]),
        .I1(I2[5]),
        .I2(s[1]),
        .I3(I1[5]),
        .I4(s[0]),
        .I5(I0[5]),
        .O(\o[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[5]_INST_0_i_2 
       (.I0(I7[5]),
        .I1(I6[5]),
        .I2(s[1]),
        .I3(I5[5]),
        .I4(s[0]),
        .I5(I4[5]),
        .O(\o[5]_INST_0_i_2_n_0 ));
  MUXF7 \o[6]_INST_0 
       (.I0(\o[6]_INST_0_i_1_n_0 ),
        .I1(\o[6]_INST_0_i_2_n_0 ),
        .O(o[6]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[6]_INST_0_i_1 
       (.I0(I3[6]),
        .I1(I2[6]),
        .I2(s[1]),
        .I3(I1[6]),
        .I4(s[0]),
        .I5(I0[6]),
        .O(\o[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[6]_INST_0_i_2 
       (.I0(I7[6]),
        .I1(I6[6]),
        .I2(s[1]),
        .I3(I5[6]),
        .I4(s[0]),
        .I5(I4[6]),
        .O(\o[6]_INST_0_i_2_n_0 ));
  MUXF7 \o[7]_INST_0 
       (.I0(\o[7]_INST_0_i_1_n_0 ),
        .I1(\o[7]_INST_0_i_2_n_0 ),
        .O(o[7]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[7]_INST_0_i_1 
       (.I0(I3[7]),
        .I1(I2[7]),
        .I2(s[1]),
        .I3(I1[7]),
        .I4(s[0]),
        .I5(I0[7]),
        .O(\o[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[7]_INST_0_i_2 
       (.I0(I7[7]),
        .I1(I6[7]),
        .I2(s[1]),
        .I3(I5[7]),
        .I4(s[0]),
        .I5(I4[7]),
        .O(\o[7]_INST_0_i_2_n_0 ));
  MUXF7 \o[8]_INST_0 
       (.I0(\o[8]_INST_0_i_1_n_0 ),
        .I1(\o[8]_INST_0_i_2_n_0 ),
        .O(o[8]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[8]_INST_0_i_1 
       (.I0(I3[8]),
        .I1(I2[8]),
        .I2(s[1]),
        .I3(I1[8]),
        .I4(s[0]),
        .I5(I0[8]),
        .O(\o[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[8]_INST_0_i_2 
       (.I0(I7[8]),
        .I1(I6[8]),
        .I2(s[1]),
        .I3(I5[8]),
        .I4(s[0]),
        .I5(I4[8]),
        .O(\o[8]_INST_0_i_2_n_0 ));
  MUXF7 \o[9]_INST_0 
       (.I0(\o[9]_INST_0_i_1_n_0 ),
        .I1(\o[9]_INST_0_i_2_n_0 ),
        .O(o[9]),
        .S(s[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[9]_INST_0_i_1 
       (.I0(I3[9]),
        .I1(I2[9]),
        .I2(s[1]),
        .I3(I1[9]),
        .I4(s[0]),
        .I5(I0[9]),
        .O(\o[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o[9]_INST_0_i_2 
       (.I0(I7[9]),
        .I1(I6[9]),
        .I2(s[1]),
        .I3(I5[9]),
        .I4(s[0]),
        .I5(I4[9]),
        .O(\o[9]_INST_0_i_2_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_REG32
   (clk,
    rst,
    D,
    Q);
  input clk;
  input rst;
  input [31:0]D;
  output [31:0]Q;

  wire [31:0]D;
  wire [31:0]Q;
  wire clk;
  wire rst;

  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(D[9]),
        .Q(Q[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SCPU_ctrl
   (ALUSrc_B,
    Branch,
    Fun7,
    MemRW,
    RegWrite,
    ALU_Control,
    Fun3,
    ImmSel,
    MemtoReg,
    OPcode);
  output ALUSrc_B;
  output Branch;
  input Fun7;
  output MemRW;
  output RegWrite;
  output [2:0]ALU_Control;
  input [2:0]Fun3;
  output [1:0]ImmSel;
  output [1:0]MemtoReg;
  input [4:0]OPcode;

  wire ALUSrc_B;
  wire ALUSrc_B_reg_i_1_n_0;
  wire [2:0]ALU_Control;
  wire \ALU_Control[2]_INST_0_i_1_n_0 ;
  wire \ALU_Control[2]_INST_0_i_2_n_0 ;
  wire [1:0]ALUop;
  wire \ALUop_reg[0]_i_1_n_0 ;
  wire \ALUop_reg[1]_i_1_n_0 ;
  wire Branch;
  wire Branch_reg_i_1_n_0;
  wire [2:0]Fun3;
  wire Fun7;
  wire [1:0]ImmSel;
  wire \ImmSel_reg[0]_i_1_n_0 ;
  wire Jump_reg_i_1_n_0;
  wire Jump_reg_i_2_n_0;
  wire MemRW;
  wire MemRW_reg_i_1_n_0;
  wire [1:0]MemtoReg;
  wire \MemtoReg_reg[0]_i_1_n_0 ;
  wire [4:0]OPcode;
  wire RegWrite;
  wire RegWrite_reg_i_1_n_0;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ALUSrc_B_reg
       (.CLR(1'b0),
        .D(ALUSrc_B_reg_i_1_n_0),
        .G(Jump_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ALUSrc_B));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h15)) 
    ALUSrc_B_reg_i_1
       (.I0(OPcode[4]),
        .I1(OPcode[3]),
        .I2(OPcode[2]),
        .O(ALUSrc_B_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000004E4E004E)) 
    \ALU_Control[0]_INST_0 
       (.I0(Fun3[1]),
        .I1(Fun3[2]),
        .I2(Fun3[0]),
        .I3(ALUop[0]),
        .I4(OPcode[2]),
        .I5(ALUop[1]),
        .O(ALU_Control[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0A3B7F7F)) 
    \ALU_Control[1]_INST_0 
       (.I0(ALUop[0]),
        .I1(Fun3[0]),
        .I2(OPcode[2]),
        .I3(Fun3[1]),
        .I4(Fun3[2]),
        .I5(ALUop[1]),
        .O(ALU_Control[1]));
  MUXF7 \ALU_Control[2]_INST_0 
       (.I0(\ALU_Control[2]_INST_0_i_1_n_0 ),
        .I1(\ALU_Control[2]_INST_0_i_2_n_0 ),
        .O(ALU_Control[2]),
        .S(ALUop[0]));
  LUT5 #(
    .INIT(32'h55551510)) 
    \ALU_Control[2]_INST_0_i_1 
       (.I0(ALUop[1]),
        .I1(Fun3[2]),
        .I2(Fun3[1]),
        .I3(Fun3[0]),
        .I4(Fun7),
        .O(\ALU_Control[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFBAAAAA)) 
    \ALU_Control[2]_INST_0_i_2 
       (.I0(ALUop[1]),
        .I1(Fun3[2]),
        .I2(Fun3[1]),
        .I3(Fun3[0]),
        .I4(OPcode[2]),
        .O(\ALU_Control[2]_INST_0_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALUop_reg[0] 
       (.CLR(1'b0),
        .D(\ALUop_reg[0]_i_1_n_0 ),
        .G(Jump_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ALUop[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \ALUop_reg[0]_i_1 
       (.I0(OPcode[1]),
        .I1(OPcode[4]),
        .I2(OPcode[3]),
        .O(\ALUop_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALUop_reg[1] 
       (.CLR(1'b0),
        .D(\ALUop_reg[1]_i_1_n_0 ),
        .G(Jump_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ALUop[1]));
  LUT3 #(
    .INIT(8'h02)) 
    \ALUop_reg[1]_i_1 
       (.I0(OPcode[3]),
        .I1(OPcode[1]),
        .I2(OPcode[2]),
        .O(\ALUop_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    Branch_reg
       (.CLR(1'b0),
        .D(Branch_reg_i_1_n_0),
        .G(Jump_reg_i_2_n_0),
        .GE(1'b1),
        .Q(Branch));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    Branch_reg_i_1
       (.I0(OPcode[4]),
        .I1(OPcode[1]),
        .O(Branch_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ImmSel_reg[0] 
       (.CLR(1'b0),
        .D(\ImmSel_reg[0]_i_1_n_0 ),
        .G(Jump_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ImmSel[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \ImmSel_reg[0]_i_1 
       (.I0(OPcode[0]),
        .I1(OPcode[2]),
        .I2(OPcode[4]),
        .I3(OPcode[3]),
        .O(\ImmSel_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    Jump_reg
       (.CLR(1'b0),
        .D(Jump_reg_i_1_n_0),
        .G(Jump_reg_i_2_n_0),
        .GE(1'b1),
        .Q(ImmSel[1]));
  LUT2 #(
    .INIT(4'hE)) 
    Jump_reg_i_1
       (.I0(OPcode[0]),
        .I1(OPcode[4]),
        .O(Jump_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4004000F)) 
    Jump_reg_i_2
       (.I0(OPcode[2]),
        .I1(OPcode[3]),
        .I2(OPcode[1]),
        .I3(OPcode[0]),
        .I4(OPcode[4]),
        .O(Jump_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    MemRW_reg
       (.CLR(1'b0),
        .D(MemRW_reg_i_1_n_0),
        .G(Jump_reg_i_2_n_0),
        .GE(1'b1),
        .Q(MemRW));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    MemRW_reg_i_1
       (.I0(OPcode[3]),
        .I1(OPcode[4]),
        .I2(OPcode[2]),
        .O(MemRW_reg_i_1_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \MemtoReg_reg[0] 
       (.CLR(1'b0),
        .D(\MemtoReg_reg[0]_i_1_n_0 ),
        .G(Jump_reg_i_2_n_0),
        .GE(1'b1),
        .Q(MemtoReg[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \MemtoReg_reg[0]_i_1 
       (.I0(OPcode[2]),
        .I1(OPcode[3]),
        .O(\MemtoReg_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \MemtoReg_reg[1] 
       (.CLR(1'b0),
        .D(OPcode[1]),
        .G(Jump_reg_i_2_n_0),
        .GE(1'b1),
        .Q(MemtoReg[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    RegWrite_reg
       (.CLR(1'b0),
        .D(RegWrite_reg_i_1_n_0),
        .G(Jump_reg_i_2_n_0),
        .GE(1'b1),
        .Q(RegWrite));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    RegWrite_reg_i_1
       (.I0(OPcode[3]),
        .I1(OPcode[0]),
        .I2(OPcode[2]),
        .O(RegWrite_reg_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SignalExt_32
   (S,
    So);
  input S;
  output [31:0]So;

  wire S;

  assign So[31] = S;
  assign So[30] = S;
  assign So[29] = S;
  assign So[28] = S;
  assign So[27] = S;
  assign So[26] = S;
  assign So[25] = S;
  assign So[24] = S;
  assign So[23] = S;
  assign So[22] = S;
  assign So[21] = S;
  assign So[20] = S;
  assign So[19] = S;
  assign So[18] = S;
  assign So[17] = S;
  assign So[16] = S;
  assign So[15] = S;
  assign So[14] = S;
  assign So[13] = S;
  assign So[12] = S;
  assign So[11] = S;
  assign So[10] = S;
  assign So[9] = S;
  assign So[8] = S;
  assign So[7] = S;
  assign So[6] = S;
  assign So[5] = S;
  assign So[4] = S;
  assign So[3] = S;
  assign So[2] = S;
  assign So[1] = S;
  assign So[0] = S;
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_32
   (a,
    b,
    c);
  input [31:0]a;
  input [31:0]b;
  output [31:0]c;

  wire [31:0]a;
  wire [31:0]b;
  wire [31:0]c;
  wire \c[0]_INST_0_i_1_n_0 ;
  wire \c[0]_INST_0_i_2_n_0 ;
  wire \c[0]_INST_0_i_3_n_0 ;
  wire \c[0]_INST_0_i_4_n_0 ;
  wire \c[0]_INST_0_n_0 ;
  wire \c[0]_INST_0_n_1 ;
  wire \c[0]_INST_0_n_2 ;
  wire \c[0]_INST_0_n_3 ;
  wire \c[12]_INST_0_i_1_n_0 ;
  wire \c[12]_INST_0_i_2_n_0 ;
  wire \c[12]_INST_0_i_3_n_0 ;
  wire \c[12]_INST_0_i_4_n_0 ;
  wire \c[12]_INST_0_n_0 ;
  wire \c[12]_INST_0_n_1 ;
  wire \c[12]_INST_0_n_2 ;
  wire \c[12]_INST_0_n_3 ;
  wire \c[16]_INST_0_i_1_n_0 ;
  wire \c[16]_INST_0_i_2_n_0 ;
  wire \c[16]_INST_0_i_3_n_0 ;
  wire \c[16]_INST_0_i_4_n_0 ;
  wire \c[16]_INST_0_n_0 ;
  wire \c[16]_INST_0_n_1 ;
  wire \c[16]_INST_0_n_2 ;
  wire \c[16]_INST_0_n_3 ;
  wire \c[20]_INST_0_i_1_n_0 ;
  wire \c[20]_INST_0_i_2_n_0 ;
  wire \c[20]_INST_0_i_3_n_0 ;
  wire \c[20]_INST_0_i_4_n_0 ;
  wire \c[20]_INST_0_n_0 ;
  wire \c[20]_INST_0_n_1 ;
  wire \c[20]_INST_0_n_2 ;
  wire \c[20]_INST_0_n_3 ;
  wire \c[24]_INST_0_i_1_n_0 ;
  wire \c[24]_INST_0_i_2_n_0 ;
  wire \c[24]_INST_0_i_3_n_0 ;
  wire \c[24]_INST_0_i_4_n_0 ;
  wire \c[24]_INST_0_n_0 ;
  wire \c[24]_INST_0_n_1 ;
  wire \c[24]_INST_0_n_2 ;
  wire \c[24]_INST_0_n_3 ;
  wire \c[28]_INST_0_i_1_n_0 ;
  wire \c[28]_INST_0_i_2_n_0 ;
  wire \c[28]_INST_0_i_3_n_0 ;
  wire \c[28]_INST_0_i_4_n_0 ;
  wire \c[28]_INST_0_n_1 ;
  wire \c[28]_INST_0_n_2 ;
  wire \c[28]_INST_0_n_3 ;
  wire \c[4]_INST_0_i_1_n_0 ;
  wire \c[4]_INST_0_i_2_n_0 ;
  wire \c[4]_INST_0_i_3_n_0 ;
  wire \c[4]_INST_0_i_4_n_0 ;
  wire \c[4]_INST_0_n_0 ;
  wire \c[4]_INST_0_n_1 ;
  wire \c[4]_INST_0_n_2 ;
  wire \c[4]_INST_0_n_3 ;
  wire \c[8]_INST_0_i_1_n_0 ;
  wire \c[8]_INST_0_i_2_n_0 ;
  wire \c[8]_INST_0_i_3_n_0 ;
  wire \c[8]_INST_0_i_4_n_0 ;
  wire \c[8]_INST_0_n_0 ;
  wire \c[8]_INST_0_n_1 ;
  wire \c[8]_INST_0_n_2 ;
  wire \c[8]_INST_0_n_3 ;
  wire [3:3]\NLW_c[28]_INST_0_CO_UNCONNECTED ;

  CARRY4 \c[0]_INST_0 
       (.CI(1'b0),
        .CO({\c[0]_INST_0_n_0 ,\c[0]_INST_0_n_1 ,\c[0]_INST_0_n_2 ,\c[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[3:0]),
        .O(c[3:0]),
        .S({\c[0]_INST_0_i_1_n_0 ,\c[0]_INST_0_i_2_n_0 ,\c[0]_INST_0_i_3_n_0 ,\c[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_1 
       (.I0(a[3]),
        .I1(b[3]),
        .O(\c[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_2 
       (.I0(a[2]),
        .I1(b[2]),
        .O(\c[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_3 
       (.I0(a[1]),
        .I1(b[1]),
        .O(\c[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[0]_INST_0_i_4 
       (.I0(a[0]),
        .I1(b[0]),
        .O(\c[0]_INST_0_i_4_n_0 ));
  CARRY4 \c[12]_INST_0 
       (.CI(\c[8]_INST_0_n_0 ),
        .CO({\c[12]_INST_0_n_0 ,\c[12]_INST_0_n_1 ,\c[12]_INST_0_n_2 ,\c[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[15:12]),
        .O(c[15:12]),
        .S({\c[12]_INST_0_i_1_n_0 ,\c[12]_INST_0_i_2_n_0 ,\c[12]_INST_0_i_3_n_0 ,\c[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_1 
       (.I0(a[15]),
        .I1(b[15]),
        .O(\c[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_2 
       (.I0(a[14]),
        .I1(b[14]),
        .O(\c[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_3 
       (.I0(a[13]),
        .I1(b[13]),
        .O(\c[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[12]_INST_0_i_4 
       (.I0(a[12]),
        .I1(b[12]),
        .O(\c[12]_INST_0_i_4_n_0 ));
  CARRY4 \c[16]_INST_0 
       (.CI(\c[12]_INST_0_n_0 ),
        .CO({\c[16]_INST_0_n_0 ,\c[16]_INST_0_n_1 ,\c[16]_INST_0_n_2 ,\c[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[19:16]),
        .O(c[19:16]),
        .S({\c[16]_INST_0_i_1_n_0 ,\c[16]_INST_0_i_2_n_0 ,\c[16]_INST_0_i_3_n_0 ,\c[16]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[16]_INST_0_i_1 
       (.I0(a[19]),
        .I1(b[19]),
        .O(\c[16]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[16]_INST_0_i_2 
       (.I0(a[18]),
        .I1(b[18]),
        .O(\c[16]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[16]_INST_0_i_3 
       (.I0(a[17]),
        .I1(b[17]),
        .O(\c[16]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[16]_INST_0_i_4 
       (.I0(a[16]),
        .I1(b[16]),
        .O(\c[16]_INST_0_i_4_n_0 ));
  CARRY4 \c[20]_INST_0 
       (.CI(\c[16]_INST_0_n_0 ),
        .CO({\c[20]_INST_0_n_0 ,\c[20]_INST_0_n_1 ,\c[20]_INST_0_n_2 ,\c[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[23:20]),
        .O(c[23:20]),
        .S({\c[20]_INST_0_i_1_n_0 ,\c[20]_INST_0_i_2_n_0 ,\c[20]_INST_0_i_3_n_0 ,\c[20]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[20]_INST_0_i_1 
       (.I0(a[23]),
        .I1(b[23]),
        .O(\c[20]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[20]_INST_0_i_2 
       (.I0(a[22]),
        .I1(b[22]),
        .O(\c[20]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[20]_INST_0_i_3 
       (.I0(a[21]),
        .I1(b[21]),
        .O(\c[20]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[20]_INST_0_i_4 
       (.I0(a[20]),
        .I1(b[20]),
        .O(\c[20]_INST_0_i_4_n_0 ));
  CARRY4 \c[24]_INST_0 
       (.CI(\c[20]_INST_0_n_0 ),
        .CO({\c[24]_INST_0_n_0 ,\c[24]_INST_0_n_1 ,\c[24]_INST_0_n_2 ,\c[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[27:24]),
        .O(c[27:24]),
        .S({\c[24]_INST_0_i_1_n_0 ,\c[24]_INST_0_i_2_n_0 ,\c[24]_INST_0_i_3_n_0 ,\c[24]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[24]_INST_0_i_1 
       (.I0(a[27]),
        .I1(b[27]),
        .O(\c[24]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[24]_INST_0_i_2 
       (.I0(a[26]),
        .I1(b[26]),
        .O(\c[24]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[24]_INST_0_i_3 
       (.I0(a[25]),
        .I1(b[25]),
        .O(\c[24]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[24]_INST_0_i_4 
       (.I0(a[24]),
        .I1(b[24]),
        .O(\c[24]_INST_0_i_4_n_0 ));
  CARRY4 \c[28]_INST_0 
       (.CI(\c[24]_INST_0_n_0 ),
        .CO({\NLW_c[28]_INST_0_CO_UNCONNECTED [3],\c[28]_INST_0_n_1 ,\c[28]_INST_0_n_2 ,\c[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,a[30:28]}),
        .O(c[31:28]),
        .S({\c[28]_INST_0_i_1_n_0 ,\c[28]_INST_0_i_2_n_0 ,\c[28]_INST_0_i_3_n_0 ,\c[28]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[28]_INST_0_i_1 
       (.I0(a[31]),
        .I1(b[31]),
        .O(\c[28]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[28]_INST_0_i_2 
       (.I0(a[30]),
        .I1(b[30]),
        .O(\c[28]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[28]_INST_0_i_3 
       (.I0(a[29]),
        .I1(b[29]),
        .O(\c[28]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[28]_INST_0_i_4 
       (.I0(a[28]),
        .I1(b[28]),
        .O(\c[28]_INST_0_i_4_n_0 ));
  CARRY4 \c[4]_INST_0 
       (.CI(\c[0]_INST_0_n_0 ),
        .CO({\c[4]_INST_0_n_0 ,\c[4]_INST_0_n_1 ,\c[4]_INST_0_n_2 ,\c[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O(c[7:4]),
        .S({\c[4]_INST_0_i_1_n_0 ,\c[4]_INST_0_i_2_n_0 ,\c[4]_INST_0_i_3_n_0 ,\c[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_1 
       (.I0(a[7]),
        .I1(b[7]),
        .O(\c[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_2 
       (.I0(a[6]),
        .I1(b[6]),
        .O(\c[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_3 
       (.I0(a[5]),
        .I1(b[5]),
        .O(\c[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[4]_INST_0_i_4 
       (.I0(a[4]),
        .I1(b[4]),
        .O(\c[4]_INST_0_i_4_n_0 ));
  CARRY4 \c[8]_INST_0 
       (.CI(\c[4]_INST_0_n_0 ),
        .CO({\c[8]_INST_0_n_0 ,\c[8]_INST_0_n_1 ,\c[8]_INST_0_n_2 ,\c[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(a[11:8]),
        .O(c[11:8]),
        .S({\c[8]_INST_0_i_1_n_0 ,\c[8]_INST_0_i_2_n_0 ,\c[8]_INST_0_i_3_n_0 ,\c[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_1 
       (.I0(a[11]),
        .I1(b[11]),
        .O(\c[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_2 
       (.I0(a[10]),
        .I1(b[10]),
        .O(\c[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_3 
       (.I0(a[9]),
        .I1(b[9]),
        .O(\c[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \c[8]_INST_0_i_4 
       (.I0(a[8]),
        .I1(b[8]),
        .O(\c[8]_INST_0_i_4_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_addc_32
   (C0,
    A,
    B,
    S);
  input C0;
  input [31:0]A;
  input [31:0]B;
  output [32:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire C0;
  wire [32:0]S;
  wire \S[0]_INST_0_i_1_n_0 ;
  wire \S[0]_INST_0_i_2_n_0 ;
  wire \S[0]_INST_0_i_3_n_0 ;
  wire \S[0]_INST_0_i_4_n_0 ;
  wire \S[0]_INST_0_n_0 ;
  wire \S[0]_INST_0_n_1 ;
  wire \S[0]_INST_0_n_2 ;
  wire \S[0]_INST_0_n_3 ;
  wire \S[12]_INST_0_i_1_n_0 ;
  wire \S[12]_INST_0_i_2_n_0 ;
  wire \S[12]_INST_0_i_3_n_0 ;
  wire \S[12]_INST_0_i_4_n_0 ;
  wire \S[12]_INST_0_n_0 ;
  wire \S[12]_INST_0_n_1 ;
  wire \S[12]_INST_0_n_2 ;
  wire \S[12]_INST_0_n_3 ;
  wire \S[16]_INST_0_i_1_n_0 ;
  wire \S[16]_INST_0_i_2_n_0 ;
  wire \S[16]_INST_0_i_3_n_0 ;
  wire \S[16]_INST_0_i_4_n_0 ;
  wire \S[16]_INST_0_n_0 ;
  wire \S[16]_INST_0_n_1 ;
  wire \S[16]_INST_0_n_2 ;
  wire \S[16]_INST_0_n_3 ;
  wire \S[20]_INST_0_i_1_n_0 ;
  wire \S[20]_INST_0_i_2_n_0 ;
  wire \S[20]_INST_0_i_3_n_0 ;
  wire \S[20]_INST_0_i_4_n_0 ;
  wire \S[20]_INST_0_n_0 ;
  wire \S[20]_INST_0_n_1 ;
  wire \S[20]_INST_0_n_2 ;
  wire \S[20]_INST_0_n_3 ;
  wire \S[24]_INST_0_i_1_n_0 ;
  wire \S[24]_INST_0_i_2_n_0 ;
  wire \S[24]_INST_0_i_3_n_0 ;
  wire \S[24]_INST_0_i_4_n_0 ;
  wire \S[24]_INST_0_n_0 ;
  wire \S[24]_INST_0_n_1 ;
  wire \S[24]_INST_0_n_2 ;
  wire \S[24]_INST_0_n_3 ;
  wire \S[28]_INST_0_i_1_n_0 ;
  wire \S[28]_INST_0_i_2_n_0 ;
  wire \S[28]_INST_0_i_3_n_0 ;
  wire \S[28]_INST_0_i_4_n_0 ;
  wire \S[28]_INST_0_n_0 ;
  wire \S[28]_INST_0_n_1 ;
  wire \S[28]_INST_0_n_2 ;
  wire \S[28]_INST_0_n_3 ;
  wire \S[4]_INST_0_i_1_n_0 ;
  wire \S[4]_INST_0_i_2_n_0 ;
  wire \S[4]_INST_0_i_3_n_0 ;
  wire \S[4]_INST_0_i_4_n_0 ;
  wire \S[4]_INST_0_n_0 ;
  wire \S[4]_INST_0_n_1 ;
  wire \S[4]_INST_0_n_2 ;
  wire \S[4]_INST_0_n_3 ;
  wire \S[8]_INST_0_i_1_n_0 ;
  wire \S[8]_INST_0_i_2_n_0 ;
  wire \S[8]_INST_0_i_3_n_0 ;
  wire \S[8]_INST_0_i_4_n_0 ;
  wire \S[8]_INST_0_n_0 ;
  wire \S[8]_INST_0_n_1 ;
  wire \S[8]_INST_0_n_2 ;
  wire \S[8]_INST_0_n_3 ;
  wire [3:0]\NLW_S[32]_INST_0_CO_UNCONNECTED ;
  wire [3:1]\NLW_S[32]_INST_0_O_UNCONNECTED ;

  CARRY4 \S[0]_INST_0 
       (.CI(1'b0),
        .CO({\S[0]_INST_0_n_0 ,\S[0]_INST_0_n_1 ,\S[0]_INST_0_n_2 ,\S[0]_INST_0_n_3 }),
        .CYINIT(B[0]),
        .DI(A[3:0]),
        .O(S[3:0]),
        .S({\S[0]_INST_0_i_1_n_0 ,\S[0]_INST_0_i_2_n_0 ,\S[0]_INST_0_i_3_n_0 ,\S[0]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \S[0]_INST_0_i_1 
       (.I0(A[3]),
        .I1(B[3]),
        .O(\S[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[0]_INST_0_i_2 
       (.I0(A[2]),
        .I1(B[2]),
        .O(\S[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[0]_INST_0_i_3 
       (.I0(A[1]),
        .I1(B[1]),
        .O(\S[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[0]_INST_0_i_4 
       (.I0(A[0]),
        .I1(C0),
        .O(\S[0]_INST_0_i_4_n_0 ));
  CARRY4 \S[12]_INST_0 
       (.CI(\S[8]_INST_0_n_0 ),
        .CO({\S[12]_INST_0_n_0 ,\S[12]_INST_0_n_1 ,\S[12]_INST_0_n_2 ,\S[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[15:12]),
        .O(S[15:12]),
        .S({\S[12]_INST_0_i_1_n_0 ,\S[12]_INST_0_i_2_n_0 ,\S[12]_INST_0_i_3_n_0 ,\S[12]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \S[12]_INST_0_i_1 
       (.I0(A[15]),
        .I1(B[15]),
        .O(\S[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[12]_INST_0_i_2 
       (.I0(A[14]),
        .I1(B[14]),
        .O(\S[12]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[12]_INST_0_i_3 
       (.I0(A[13]),
        .I1(B[13]),
        .O(\S[12]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[12]_INST_0_i_4 
       (.I0(A[12]),
        .I1(B[12]),
        .O(\S[12]_INST_0_i_4_n_0 ));
  CARRY4 \S[16]_INST_0 
       (.CI(\S[12]_INST_0_n_0 ),
        .CO({\S[16]_INST_0_n_0 ,\S[16]_INST_0_n_1 ,\S[16]_INST_0_n_2 ,\S[16]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[19:16]),
        .O(S[19:16]),
        .S({\S[16]_INST_0_i_1_n_0 ,\S[16]_INST_0_i_2_n_0 ,\S[16]_INST_0_i_3_n_0 ,\S[16]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \S[16]_INST_0_i_1 
       (.I0(A[19]),
        .I1(B[19]),
        .O(\S[16]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[16]_INST_0_i_2 
       (.I0(A[18]),
        .I1(B[18]),
        .O(\S[16]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[16]_INST_0_i_3 
       (.I0(A[17]),
        .I1(B[17]),
        .O(\S[16]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[16]_INST_0_i_4 
       (.I0(A[16]),
        .I1(B[16]),
        .O(\S[16]_INST_0_i_4_n_0 ));
  CARRY4 \S[20]_INST_0 
       (.CI(\S[16]_INST_0_n_0 ),
        .CO({\S[20]_INST_0_n_0 ,\S[20]_INST_0_n_1 ,\S[20]_INST_0_n_2 ,\S[20]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[23:20]),
        .O(S[23:20]),
        .S({\S[20]_INST_0_i_1_n_0 ,\S[20]_INST_0_i_2_n_0 ,\S[20]_INST_0_i_3_n_0 ,\S[20]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \S[20]_INST_0_i_1 
       (.I0(A[23]),
        .I1(B[23]),
        .O(\S[20]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[20]_INST_0_i_2 
       (.I0(A[22]),
        .I1(B[22]),
        .O(\S[20]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[20]_INST_0_i_3 
       (.I0(A[21]),
        .I1(B[21]),
        .O(\S[20]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[20]_INST_0_i_4 
       (.I0(A[20]),
        .I1(B[20]),
        .O(\S[20]_INST_0_i_4_n_0 ));
  CARRY4 \S[24]_INST_0 
       (.CI(\S[20]_INST_0_n_0 ),
        .CO({\S[24]_INST_0_n_0 ,\S[24]_INST_0_n_1 ,\S[24]_INST_0_n_2 ,\S[24]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[27:24]),
        .O(S[27:24]),
        .S({\S[24]_INST_0_i_1_n_0 ,\S[24]_INST_0_i_2_n_0 ,\S[24]_INST_0_i_3_n_0 ,\S[24]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \S[24]_INST_0_i_1 
       (.I0(A[27]),
        .I1(B[27]),
        .O(\S[24]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[24]_INST_0_i_2 
       (.I0(A[26]),
        .I1(B[26]),
        .O(\S[24]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[24]_INST_0_i_3 
       (.I0(A[25]),
        .I1(B[25]),
        .O(\S[24]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[24]_INST_0_i_4 
       (.I0(A[24]),
        .I1(B[24]),
        .O(\S[24]_INST_0_i_4_n_0 ));
  CARRY4 \S[28]_INST_0 
       (.CI(\S[24]_INST_0_n_0 ),
        .CO({\S[28]_INST_0_n_0 ,\S[28]_INST_0_n_1 ,\S[28]_INST_0_n_2 ,\S[28]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[31:28]),
        .O(S[31:28]),
        .S({\S[28]_INST_0_i_1_n_0 ,\S[28]_INST_0_i_2_n_0 ,\S[28]_INST_0_i_3_n_0 ,\S[28]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \S[28]_INST_0_i_1 
       (.I0(A[31]),
        .I1(B[31]),
        .O(\S[28]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[28]_INST_0_i_2 
       (.I0(A[30]),
        .I1(B[30]),
        .O(\S[28]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[28]_INST_0_i_3 
       (.I0(A[29]),
        .I1(B[29]),
        .O(\S[28]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[28]_INST_0_i_4 
       (.I0(A[28]),
        .I1(B[28]),
        .O(\S[28]_INST_0_i_4_n_0 ));
  CARRY4 \S[32]_INST_0 
       (.CI(\S[28]_INST_0_n_0 ),
        .CO(\NLW_S[32]_INST_0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_S[32]_INST_0_O_UNCONNECTED [3:1],S[32]}),
        .S({1'b0,1'b0,1'b0,C0}));
  CARRY4 \S[4]_INST_0 
       (.CI(\S[0]_INST_0_n_0 ),
        .CO({\S[4]_INST_0_n_0 ,\S[4]_INST_0_n_1 ,\S[4]_INST_0_n_2 ,\S[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O(S[7:4]),
        .S({\S[4]_INST_0_i_1_n_0 ,\S[4]_INST_0_i_2_n_0 ,\S[4]_INST_0_i_3_n_0 ,\S[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \S[4]_INST_0_i_1 
       (.I0(A[7]),
        .I1(B[7]),
        .O(\S[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[4]_INST_0_i_2 
       (.I0(A[6]),
        .I1(B[6]),
        .O(\S[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[4]_INST_0_i_3 
       (.I0(A[5]),
        .I1(B[5]),
        .O(\S[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[4]_INST_0_i_4 
       (.I0(A[4]),
        .I1(B[4]),
        .O(\S[4]_INST_0_i_4_n_0 ));
  CARRY4 \S[8]_INST_0 
       (.CI(\S[4]_INST_0_n_0 ),
        .CO({\S[8]_INST_0_n_0 ,\S[8]_INST_0_n_1 ,\S[8]_INST_0_n_2 ,\S[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O(S[11:8]),
        .S({\S[8]_INST_0_i_1_n_0 ,\S[8]_INST_0_i_2_n_0 ,\S[8]_INST_0_i_3_n_0 ,\S[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \S[8]_INST_0_i_1 
       (.I0(A[11]),
        .I1(B[11]),
        .O(\S[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[8]_INST_0_i_2 
       (.I0(A[10]),
        .I1(B[10]),
        .O(\S[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[8]_INST_0_i_3 
       (.I0(A[9]),
        .I1(B[9]),
        .O(\S[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \S[8]_INST_0_i_4 
       (.I0(A[8]),
        .I1(B[8]),
        .O(\S[8]_INST_0_i_4_n_0 ));
endmodule

(* HW_HANDOFF = "datapath.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath
   (ALUSrc_B,
    Jump,
    RegWrite,
    clk,
    rst,
    ALU_operation,
    ALU_out,
    Branch,
    Data_in,
    Data_out,
    ImmSel,
    MemtoReg,
    PC_out,
    inst_field);
  input ALUSrc_B;
  input Jump;
  input RegWrite;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN datapath_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rst;
  input [2:0]ALU_operation;
  output [31:0]ALU_out;
  input [0:0]Branch;
  input [31:0]Data_in;
  output [31:0]Data_out;
  input [1:0]ImmSel;
  input [1:0]MemtoReg;
  output [31:0]PC_out;
  input [31:0]inst_field;

  wire \<const0> ;
  wire ALUSrc_B;
  wire [2:0]ALU_operation;
  wire [31:0]ALU_out;
  wire [0:0]Branch;
  wire [31:0]Data_in;
  wire [31:0]ImmGen_0_Imm_out;
  wire [1:0]ImmSel;
  wire Jump;
  wire [31:0]MUX2T1_32_0_o;
  wire [31:0]MUX2T1_32_1_o;
  wire [31:0]MUX2T1_32_3_o;
  wire [1:0]MemtoReg;
  wire [31:0]PC_out;
  wire \^ALU ;
  wire [31:0]add_32_0_c;
  wire [31:0]add_32_1_c;
  wire and_2_Res;
  wire clk;
  wire [31:0]inst_field;
  wire rst;
  wire [31:0]NLW_MUX4T1_32_0_o_UNCONNECTED;

  assign Data_out[31] = \<const0> ;
  assign Data_out[30] = \<const0> ;
  assign Data_out[29] = \<const0> ;
  assign Data_out[28] = \<const0> ;
  assign Data_out[27] = \<const0> ;
  assign Data_out[26] = \<const0> ;
  assign Data_out[25] = \<const0> ;
  assign Data_out[24] = \<const0> ;
  assign Data_out[23] = \<const0> ;
  assign Data_out[22] = \<const0> ;
  assign Data_out[21] = \<const0> ;
  assign Data_out[20] = \<const0> ;
  assign Data_out[19] = \<const0> ;
  assign Data_out[18] = \<const0> ;
  assign Data_out[17] = \<const0> ;
  assign Data_out[16] = \<const0> ;
  assign Data_out[15] = \<const0> ;
  assign Data_out[14] = \<const0> ;
  assign Data_out[13] = \<const0> ;
  assign Data_out[12] = \<const0> ;
  assign Data_out[11] = \<const0> ;
  assign Data_out[10] = \<const0> ;
  assign Data_out[9] = \<const0> ;
  assign Data_out[8] = \<const0> ;
  assign Data_out[7] = \<const0> ;
  assign Data_out[6] = \<const0> ;
  assign Data_out[5] = \<const0> ;
  assign Data_out[4] = \<const0> ;
  assign Data_out[3] = \<const0> ;
  assign Data_out[2] = \<const0> ;
  assign Data_out[1] = \<const0> ;
  assign Data_out[0] = \<const0> ;
  (* CHECK_LICENSE_TYPE = "datapath_ALU_wrapper_0_1,ALU_wrapper,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "ALU_wrapper,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALU_wrapper_0_1 ALU
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ALU_operation(ALU_operation),
        .B(MUX2T1_32_0_o),
        .res(ALU_out),
        .zero(\^ALU ));
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "datapath_ImmGen_0_0,ImmGen,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "ImmGen,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ImmGen_0_0 ImmGen
       (.ImmSel(ImmSel),
        .Imm_out(ImmGen_0_Imm_out),
        .inst_field({inst_field[31:7],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CHECK_LICENSE_TYPE = "datapath_MUX2T1_32_0_0,MUX2T1_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "MUX2T1_32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_0_0 MUX2T1_32_0
       (.I0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .I1(ImmGen_0_Imm_out),
        .o(MUX2T1_32_0_o),
        .s(ALUSrc_B));
  (* CHECK_LICENSE_TYPE = "datapath_MUX2T1_32_1_0,MUX2T1_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "MUX2T1_32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_1_0 MUX2T1_32_1
       (.I0(add_32_0_c),
        .I1(add_32_1_c),
        .o(MUX2T1_32_1_o),
        .s(and_2_Res));
  (* CHECK_LICENSE_TYPE = "datapath_MUX2T1_32_2_0,MUX2T1_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "MUX2T1_32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_2_0 MUX2T1_32_3
       (.I0(MUX2T1_32_1_o),
        .I1(add_32_1_c),
        .o(MUX2T1_32_3_o),
        .s(Jump));
  (* CHECK_LICENSE_TYPE = "datapath_MUX4T1_32_0_0,MUX4T1_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "MUX4T1_32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX4T1_32_0_0 MUX4T1_32_0
       (.I0(ALU_out),
        .I1(Data_in),
        .I2(add_32_0_c),
        .I3(add_32_0_c),
        .o(NLW_MUX4T1_32_0_o_UNCONNECTED[31:0]),
        .s(MemtoReg));
  (* CHECK_LICENSE_TYPE = "datapath_REG32_0_0,REG32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "REG32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_REG32_0_0 PC
       (.CE(1'b1),
        .D(MUX2T1_32_3_o),
        .Q(PC_out),
        .clk(clk),
        .rst(rst));
  (* CHECK_LICENSE_TYPE = "datapath_add_32_0_0,add_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "add_32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_0_0 add_32_0
       (.a(PC_out),
        .b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .c(add_32_0_c));
  (* CHECK_LICENSE_TYPE = "datapath_add_32_1_0,add_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "add_32,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_1_0 add_32_1
       (.a(PC_out),
        .b(ImmGen_0_Imm_out),
        .c(add_32_1_c));
  (* CHECK_LICENSE_TYPE = "datapath_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_util_vector_logic_0_0 and_2
       (.Op1(Branch),
        .Op2(\^ALU ),
        .Res(and_2_Res));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_ALU_wrapper_0_1,ALU_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "ALU_wrapper,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ALU_wrapper_0_1
   (zero,
    A,
    ALU_operation,
    B,
    res);
  output zero;
  input [31:0]A;
  input [2:0]ALU_operation;
  input [31:0]B;
  output [31:0]res;

  wire [2:0]ALU_operation;
  wire [31:0]B;
  wire [31:0]res;
  wire zero;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALU_wrapper inst
       (.ALU_operation(ALU_operation),
        .B(B),
        .res(res),
        .zero(zero));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_ImmGen_0_0,ImmGen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "ImmGen,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_ImmGen_0_0
   (ImmSel,
    Imm_out,
    inst_field);
  input [1:0]ImmSel;
  output [31:0]Imm_out;
  input [31:0]inst_field;

  wire [1:0]ImmSel;
  wire [31:0]\^Imm_out ;
  wire [31:0]inst_field;

  assign Imm_out[31] = inst_field[31];
  assign Imm_out[30] = inst_field[31];
  assign Imm_out[29] = inst_field[31];
  assign Imm_out[28] = inst_field[31];
  assign Imm_out[27] = inst_field[31];
  assign Imm_out[26] = inst_field[31];
  assign Imm_out[25] = inst_field[31];
  assign Imm_out[24] = inst_field[31];
  assign Imm_out[23] = inst_field[31];
  assign Imm_out[22] = inst_field[31];
  assign Imm_out[21] = inst_field[31];
  assign Imm_out[20] = inst_field[31];
  assign Imm_out[19:11] = \^Imm_out [19:11];
  assign Imm_out[10:5] = inst_field[30:25];
  assign Imm_out[4:0] = \^Imm_out [4:0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ImmGen inst
       (.ImmSel(ImmSel),
        .Imm_out({\^Imm_out [19:11],\^Imm_out [4:0]}),
        .inst_field({inst_field[31],inst_field[24:7]}));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_MUX2T1_32_0_0,MUX2T1_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "MUX2T1_32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_0_0
   (s,
    I0,
    I1,
    o);
  input s;
  input [31:0]I0;
  input [31:0]I1;
  output [31:0]o;

  wire [31:0]I1;
  wire [31:0]o;
  wire s;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_32 inst
       (.I0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .I1(I1),
        .o(o),
        .s(s));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_MUX2T1_32_1_0,MUX2T1_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "MUX2T1_32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_1_0
   (s,
    I0,
    I1,
    o);
  input s;
  input [31:0]I0;
  input [31:0]I1;
  output [31:0]o;

  wire [31:0]I0;
  wire [31:0]I1;
  wire [31:0]o;
  wire s;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_32 inst
       (.I0(I0),
        .I1(I1),
        .o(o),
        .s(s));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_MUX2T1_32_2_0,MUX2T1_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "MUX2T1_32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX2T1_32_2_0
   (s,
    I0,
    I1,
    o);
  input s;
  input [31:0]I0;
  input [31:0]I1;
  output [31:0]o;

  wire [31:0]I0;
  wire [31:0]I1;
  wire [31:0]o;
  wire s;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX2T1_32 inst
       (.I0(I0),
        .I1(I1),
        .o(o),
        .s(s));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_MUX4T1_32_0_0,MUX4T1_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "MUX4T1_32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_MUX4T1_32_0_0
   (I0,
    I1,
    I2,
    I3,
    o,
    s);
  input [31:0]I0;
  input [31:0]I1;
  input [31:0]I2;
  input [31:0]I3;
  output [31:0]o;
  input [1:0]s;

  wire \<const0> ;
  wire [31:0]I0;
  wire [31:0]I1;
  wire [31:0]I2;
  wire [31:0]I3;
  wire inst_n_0;
  wire inst_n_1;
  wire inst_n_10;
  wire inst_n_11;
  wire inst_n_12;
  wire inst_n_13;
  wire inst_n_14;
  wire inst_n_15;
  wire inst_n_16;
  wire inst_n_17;
  wire inst_n_18;
  wire inst_n_19;
  wire inst_n_2;
  wire inst_n_20;
  wire inst_n_21;
  wire inst_n_22;
  wire inst_n_23;
  wire inst_n_24;
  wire inst_n_25;
  wire inst_n_26;
  wire inst_n_27;
  wire inst_n_28;
  wire inst_n_29;
  wire inst_n_3;
  wire inst_n_30;
  wire inst_n_31;
  wire inst_n_4;
  wire inst_n_5;
  wire inst_n_6;
  wire inst_n_7;
  wire inst_n_8;
  wire inst_n_9;
  wire [1:0]s;

  assign o[31] = \<const0> ;
  assign o[30] = \<const0> ;
  assign o[29] = \<const0> ;
  assign o[28] = \<const0> ;
  assign o[27] = \<const0> ;
  assign o[26] = \<const0> ;
  assign o[25] = \<const0> ;
  assign o[24] = \<const0> ;
  assign o[23] = \<const0> ;
  assign o[22] = \<const0> ;
  assign o[21] = \<const0> ;
  assign o[20] = \<const0> ;
  assign o[19] = \<const0> ;
  assign o[18] = \<const0> ;
  assign o[17] = \<const0> ;
  assign o[16] = \<const0> ;
  assign o[15] = \<const0> ;
  assign o[14] = \<const0> ;
  assign o[13] = \<const0> ;
  assign o[12] = \<const0> ;
  assign o[11] = \<const0> ;
  assign o[10] = \<const0> ;
  assign o[9] = \<const0> ;
  assign o[8] = \<const0> ;
  assign o[7] = \<const0> ;
  assign o[6] = \<const0> ;
  assign o[5] = \<const0> ;
  assign o[4] = \<const0> ;
  assign o[3] = \<const0> ;
  assign o[2] = \<const0> ;
  assign o[1] = \<const0> ;
  assign o[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MUX4T1_32 inst
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .o({inst_n_0,inst_n_1,inst_n_2,inst_n_3,inst_n_4,inst_n_5,inst_n_6,inst_n_7,inst_n_8,inst_n_9,inst_n_10,inst_n_11,inst_n_12,inst_n_13,inst_n_14,inst_n_15,inst_n_16,inst_n_17,inst_n_18,inst_n_19,inst_n_20,inst_n_21,inst_n_22,inst_n_23,inst_n_24,inst_n_25,inst_n_26,inst_n_27,inst_n_28,inst_n_29,inst_n_30,inst_n_31}),
        .s(s));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_REG32_0_0,REG32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "REG32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_REG32_0_0
   (CE,
    clk,
    rst,
    D,
    Q);
  input CE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN datapath_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input [31:0]D;
  output [31:0]Q;

  wire [31:0]D;
  wire [31:0]Q;
  wire clk;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_REG32 inst
       (.D(D),
        .Q(Q),
        .clk(clk),
        .rst(rst));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_add_32_0_0,add_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "add_32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_0_0
   (a,
    b,
    c);
  input [31:0]a;
  input [31:0]b;
  output [31:0]c;

  wire [31:0]a;
  wire [31:0]c;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_32 inst
       (.a(a),
        .b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .c(c));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_add_32_1_0,add_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "add_32,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_add_32_1_0
   (a,
    b,
    c);
  input [31:0]a;
  input [31:0]b;
  output [31:0]c;

  wire [31:0]a;
  wire [31:0]b;
  wire [31:0]c;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add_32 inst
       (.a(a),
        .b(b),
        .c(c));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_util_vector_logic_0_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  LUT2 #(
    .INIT(4'h8)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .I1(Op2),
        .O(Res));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath_wrapper
   (ALUSrc_B,
    Jump,
    RegWrite,
    clk,
    rst,
    ALU_operation,
    ALU_out,
    Branch,
    Data_in,
    Data_out,
    ImmSel,
    MemtoReg,
    PC_out,
    inst_field);
  input ALUSrc_B;
  input Jump;
  input RegWrite;
  input clk;
  input rst;
  input [2:0]ALU_operation;
  output [31:0]ALU_out;
  input [0:0]Branch;
  input [31:0]Data_in;
  output [31:0]Data_out;
  input [1:0]ImmSel;
  input [1:0]MemtoReg;
  output [31:0]PC_out;
  input [31:0]inst_field;

  wire \<const0> ;
  wire ALUSrc_B;
  wire [2:0]ALU_operation;
  wire [31:0]ALU_out;
  wire [0:0]Branch;
  wire [31:0]Data_in;
  wire [1:0]ImmSel;
  wire Jump;
  wire [1:0]MemtoReg;
  wire [31:0]PC_out;
  wire clk;
  wire [31:0]inst_field;
  wire rst;
  wire [31:0]NLW_datapath_i_Data_out_UNCONNECTED;

  assign Data_out[31] = \<const0> ;
  assign Data_out[30] = \<const0> ;
  assign Data_out[29] = \<const0> ;
  assign Data_out[28] = \<const0> ;
  assign Data_out[27] = \<const0> ;
  assign Data_out[26] = \<const0> ;
  assign Data_out[25] = \<const0> ;
  assign Data_out[24] = \<const0> ;
  assign Data_out[23] = \<const0> ;
  assign Data_out[22] = \<const0> ;
  assign Data_out[21] = \<const0> ;
  assign Data_out[20] = \<const0> ;
  assign Data_out[19] = \<const0> ;
  assign Data_out[18] = \<const0> ;
  assign Data_out[17] = \<const0> ;
  assign Data_out[16] = \<const0> ;
  assign Data_out[15] = \<const0> ;
  assign Data_out[14] = \<const0> ;
  assign Data_out[13] = \<const0> ;
  assign Data_out[12] = \<const0> ;
  assign Data_out[11] = \<const0> ;
  assign Data_out[10] = \<const0> ;
  assign Data_out[9] = \<const0> ;
  assign Data_out[8] = \<const0> ;
  assign Data_out[7] = \<const0> ;
  assign Data_out[6] = \<const0> ;
  assign Data_out[5] = \<const0> ;
  assign Data_out[4] = \<const0> ;
  assign Data_out[3] = \<const0> ;
  assign Data_out[2] = \<const0> ;
  assign Data_out[1] = \<const0> ;
  assign Data_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* HW_HANDOFF = "datapath.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_datapath datapath_i
       (.ALUSrc_B(ALUSrc_B),
        .ALU_operation(ALU_operation),
        .ALU_out(ALU_out),
        .Branch(Branch),
        .Data_in(Data_in),
        .Data_out(NLW_datapath_i_Data_out_UNCONNECTED[31:0]),
        .ImmSel(ImmSel),
        .Jump(Jump),
        .MemtoReg(MemtoReg),
        .PC_out(PC_out),
        .RegWrite(1'b0),
        .clk(clk),
        .inst_field({inst_field[31:7],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_nor32
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  LUT2 #(
    .INIT(4'h1)) 
    \res[0]_INST_0 
       (.I0(B[0]),
        .I1(A[0]),
        .O(res[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[10]_INST_0 
       (.I0(B[10]),
        .I1(A[10]),
        .O(res[10]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[11]_INST_0 
       (.I0(B[11]),
        .I1(A[11]),
        .O(res[11]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[12]_INST_0 
       (.I0(B[12]),
        .I1(A[12]),
        .O(res[12]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[13]_INST_0 
       (.I0(B[13]),
        .I1(A[13]),
        .O(res[13]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[14]_INST_0 
       (.I0(B[14]),
        .I1(A[14]),
        .O(res[14]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[15]_INST_0 
       (.I0(B[15]),
        .I1(A[15]),
        .O(res[15]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[16]_INST_0 
       (.I0(B[16]),
        .I1(A[16]),
        .O(res[16]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[17]_INST_0 
       (.I0(B[17]),
        .I1(A[17]),
        .O(res[17]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[18]_INST_0 
       (.I0(B[18]),
        .I1(A[18]),
        .O(res[18]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[19]_INST_0 
       (.I0(B[19]),
        .I1(A[19]),
        .O(res[19]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[1]_INST_0 
       (.I0(B[1]),
        .I1(A[1]),
        .O(res[1]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[20]_INST_0 
       (.I0(B[20]),
        .I1(A[20]),
        .O(res[20]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[21]_INST_0 
       (.I0(B[21]),
        .I1(A[21]),
        .O(res[21]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[22]_INST_0 
       (.I0(B[22]),
        .I1(A[22]),
        .O(res[22]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[23]_INST_0 
       (.I0(B[23]),
        .I1(A[23]),
        .O(res[23]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[24]_INST_0 
       (.I0(B[24]),
        .I1(A[24]),
        .O(res[24]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[25]_INST_0 
       (.I0(B[25]),
        .I1(A[25]),
        .O(res[25]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[26]_INST_0 
       (.I0(B[26]),
        .I1(A[26]),
        .O(res[26]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[27]_INST_0 
       (.I0(B[27]),
        .I1(A[27]),
        .O(res[27]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[28]_INST_0 
       (.I0(B[28]),
        .I1(A[28]),
        .O(res[28]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[29]_INST_0 
       (.I0(B[29]),
        .I1(A[29]),
        .O(res[29]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[2]_INST_0 
       (.I0(B[2]),
        .I1(A[2]),
        .O(res[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[30]_INST_0 
       (.I0(B[30]),
        .I1(A[30]),
        .O(res[30]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[31]_INST_0 
       (.I0(B[31]),
        .I1(A[31]),
        .O(res[31]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[3]_INST_0 
       (.I0(B[3]),
        .I1(A[3]),
        .O(res[3]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[4]_INST_0 
       (.I0(B[4]),
        .I1(A[4]),
        .O(res[4]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[5]_INST_0 
       (.I0(B[5]),
        .I1(A[5]),
        .O(res[5]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[6]_INST_0 
       (.I0(B[6]),
        .I1(A[6]),
        .O(res[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[7]_INST_0 
       (.I0(B[7]),
        .I1(A[7]),
        .O(res[7]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[8]_INST_0 
       (.I0(B[8]),
        .I1(A[8]),
        .O(res[8]));
  LUT2 #(
    .INIT(4'h1)) 
    \res[9]_INST_0 
       (.I0(B[9]),
        .I1(A[9]),
        .O(res[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or32
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  LUT2 #(
    .INIT(4'hE)) 
    \res[0]_INST_0 
       (.I0(B[0]),
        .I1(A[0]),
        .O(res[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[10]_INST_0 
       (.I0(B[10]),
        .I1(A[10]),
        .O(res[10]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[11]_INST_0 
       (.I0(B[11]),
        .I1(A[11]),
        .O(res[11]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[12]_INST_0 
       (.I0(B[12]),
        .I1(A[12]),
        .O(res[12]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[13]_INST_0 
       (.I0(B[13]),
        .I1(A[13]),
        .O(res[13]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[14]_INST_0 
       (.I0(B[14]),
        .I1(A[14]),
        .O(res[14]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[15]_INST_0 
       (.I0(B[15]),
        .I1(A[15]),
        .O(res[15]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[16]_INST_0 
       (.I0(B[16]),
        .I1(A[16]),
        .O(res[16]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[17]_INST_0 
       (.I0(B[17]),
        .I1(A[17]),
        .O(res[17]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[18]_INST_0 
       (.I0(B[18]),
        .I1(A[18]),
        .O(res[18]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[19]_INST_0 
       (.I0(B[19]),
        .I1(A[19]),
        .O(res[19]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[1]_INST_0 
       (.I0(B[1]),
        .I1(A[1]),
        .O(res[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[20]_INST_0 
       (.I0(B[20]),
        .I1(A[20]),
        .O(res[20]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[21]_INST_0 
       (.I0(B[21]),
        .I1(A[21]),
        .O(res[21]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[22]_INST_0 
       (.I0(B[22]),
        .I1(A[22]),
        .O(res[22]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[23]_INST_0 
       (.I0(B[23]),
        .I1(A[23]),
        .O(res[23]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[24]_INST_0 
       (.I0(B[24]),
        .I1(A[24]),
        .O(res[24]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[25]_INST_0 
       (.I0(B[25]),
        .I1(A[25]),
        .O(res[25]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[26]_INST_0 
       (.I0(B[26]),
        .I1(A[26]),
        .O(res[26]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[27]_INST_0 
       (.I0(B[27]),
        .I1(A[27]),
        .O(res[27]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[28]_INST_0 
       (.I0(B[28]),
        .I1(A[28]),
        .O(res[28]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[29]_INST_0 
       (.I0(B[29]),
        .I1(A[29]),
        .O(res[29]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[2]_INST_0 
       (.I0(B[2]),
        .I1(A[2]),
        .O(res[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[30]_INST_0 
       (.I0(B[30]),
        .I1(A[30]),
        .O(res[30]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[31]_INST_0 
       (.I0(B[31]),
        .I1(A[31]),
        .O(res[31]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[3]_INST_0 
       (.I0(B[3]),
        .I1(A[3]),
        .O(res[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[4]_INST_0 
       (.I0(B[4]),
        .I1(A[4]),
        .O(res[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[5]_INST_0 
       (.I0(B[5]),
        .I1(A[5]),
        .O(res[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[6]_INST_0 
       (.I0(B[6]),
        .I1(A[6]),
        .O(res[6]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[7]_INST_0 
       (.I0(B[7]),
        .I1(A[7]),
        .O(res[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[8]_INST_0 
       (.I0(B[8]),
        .I1(A[8]),
        .O(res[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \res[9]_INST_0 
       (.I0(B[9]),
        .I1(A[9]),
        .O(res[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_or_bit_32
   (o,
    A);
  output o;
  input [31:0]A;

  wire [31:0]A;
  wire o;
  wire o_INST_0_i_1_n_0;
  wire o_INST_0_i_2_n_0;
  wire o_INST_0_i_3_n_0;
  wire o_INST_0_i_4_n_0;
  wire o_INST_0_i_5_n_0;
  wire o_INST_0_i_6_n_0;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    o_INST_0
       (.I0(o_INST_0_i_1_n_0),
        .I1(o_INST_0_i_2_n_0),
        .I2(o_INST_0_i_3_n_0),
        .I3(o_INST_0_i_4_n_0),
        .I4(o_INST_0_i_5_n_0),
        .I5(o_INST_0_i_6_n_0),
        .O(o));
  LUT2 #(
    .INIT(4'h1)) 
    o_INST_0_i_1
       (.I0(A[0]),
        .I1(A[1]),
        .O(o_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    o_INST_0_i_2
       (.I0(A[4]),
        .I1(A[5]),
        .I2(A[2]),
        .I3(A[3]),
        .I4(A[7]),
        .I5(A[6]),
        .O(o_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    o_INST_0_i_3
       (.I0(A[10]),
        .I1(A[11]),
        .I2(A[8]),
        .I3(A[9]),
        .I4(A[13]),
        .I5(A[12]),
        .O(o_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    o_INST_0_i_4
       (.I0(A[16]),
        .I1(A[17]),
        .I2(A[14]),
        .I3(A[15]),
        .I4(A[19]),
        .I5(A[18]),
        .O(o_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    o_INST_0_i_5
       (.I0(A[22]),
        .I1(A[23]),
        .I2(A[20]),
        .I3(A[21]),
        .I4(A[25]),
        .I5(A[24]),
        .O(o_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    o_INST_0_i_6
       (.I0(A[28]),
        .I1(A[29]),
        .I2(A[26]),
        .I3(A[27]),
        .I4(A[31]),
        .I5(A[30]),
        .O(o_INST_0_i_6_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "simCPU_MCPU_0_0,MCPU,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "MCPU,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CPU_MIO,
    MIO_ready,
    MemRW,
    clk,
    rst,
    ALU_out,
    Data_in,
    Data_out,
    PC_out,
    inst_in);
  output CPU_MIO;
  input MIO_ready;
  output MemRW;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, ASSOCIATED_BUSIF clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN simCPU_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  output [31:0]ALU_out;
  input [31:0]Data_in;
  output [31:0]Data_out;
  output [31:0]PC_out;
  input [31:0]inst_in;

  wire [31:0]ALU_out;
  wire CPU_MIO;
  wire [31:0]Data_in;
  wire [31:0]Data_out;
  wire MIO_ready;
  wire MemRW;
  wire [31:0]PC_out;
  wire clk;
  wire [31:0]inst_in;
  wire rst;

  (* black_box = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MSCPU_wrapper inst
       (.ALU_out(ALU_out),
        .CPU_MIO(CPU_MIO),
        .Data_in(Data_in),
        .Data_out(Data_out),
        .MIO_ready(MIO_ready),
        .MemRW(MemRW),
        .PC_out(PC_out),
        .clk(clk),
        .inst_in(inst_in),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl32
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire \<const0> ;
  wire [31:0]B;

  assign res[31] = \<const0> ;
  assign res[30:0] = B[31:1];
  GND GND
       (.G(\<const0> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xor32
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]A;
  wire [31:0]B;
  wire [31:0]res;

  LUT2 #(
    .INIT(4'h6)) 
    \res[0]_INST_0 
       (.I0(A[0]),
        .I1(B[0]),
        .O(res[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[10]_INST_0 
       (.I0(A[10]),
        .I1(B[10]),
        .O(res[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[11]_INST_0 
       (.I0(A[11]),
        .I1(B[11]),
        .O(res[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[12]_INST_0 
       (.I0(A[12]),
        .I1(B[12]),
        .O(res[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[13]_INST_0 
       (.I0(A[13]),
        .I1(B[13]),
        .O(res[13]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[14]_INST_0 
       (.I0(A[14]),
        .I1(B[14]),
        .O(res[14]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[15]_INST_0 
       (.I0(A[15]),
        .I1(B[15]),
        .O(res[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[16]_INST_0 
       (.I0(A[16]),
        .I1(B[16]),
        .O(res[16]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[17]_INST_0 
       (.I0(A[17]),
        .I1(B[17]),
        .O(res[17]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[18]_INST_0 
       (.I0(A[18]),
        .I1(B[18]),
        .O(res[18]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[19]_INST_0 
       (.I0(A[19]),
        .I1(B[19]),
        .O(res[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[1]_INST_0 
       (.I0(A[1]),
        .I1(B[1]),
        .O(res[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[20]_INST_0 
       (.I0(A[20]),
        .I1(B[20]),
        .O(res[20]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[21]_INST_0 
       (.I0(A[21]),
        .I1(B[21]),
        .O(res[21]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[22]_INST_0 
       (.I0(A[22]),
        .I1(B[22]),
        .O(res[22]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[23]_INST_0 
       (.I0(A[23]),
        .I1(B[23]),
        .O(res[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[24]_INST_0 
       (.I0(A[24]),
        .I1(B[24]),
        .O(res[24]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[25]_INST_0 
       (.I0(A[25]),
        .I1(B[25]),
        .O(res[25]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[26]_INST_0 
       (.I0(A[26]),
        .I1(B[26]),
        .O(res[26]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[27]_INST_0 
       (.I0(A[27]),
        .I1(B[27]),
        .O(res[27]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[28]_INST_0 
       (.I0(A[28]),
        .I1(B[28]),
        .O(res[28]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[29]_INST_0 
       (.I0(A[29]),
        .I1(B[29]),
        .O(res[29]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[2]_INST_0 
       (.I0(A[2]),
        .I1(B[2]),
        .O(res[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[30]_INST_0 
       (.I0(A[30]),
        .I1(B[30]),
        .O(res[30]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[31]_INST_0 
       (.I0(A[31]),
        .I1(B[31]),
        .O(res[31]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[3]_INST_0 
       (.I0(A[3]),
        .I1(B[3]),
        .O(res[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[4]_INST_0 
       (.I0(A[4]),
        .I1(B[4]),
        .O(res[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[5]_INST_0 
       (.I0(A[5]),
        .I1(B[5]),
        .O(res[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[6]_INST_0 
       (.I0(A[6]),
        .I1(B[6]),
        .O(res[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[7]_INST_0 
       (.I0(A[7]),
        .I1(B[7]),
        .O(res[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[8]_INST_0 
       (.I0(A[8]),
        .I1(B[8]),
        .O(res[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \res[9]_INST_0 
       (.I0(A[9]),
        .I1(B[9]),
        .O(res[9]));
endmodule
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
