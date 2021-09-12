//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Mon Dec 28 19:52:32 2020
//Host        : DESKTOP-BJQ6VJA running 64-bit major release  (build 9200)
//Command     : generate_target OExp01_muxctrl.bd
//Design      : OExp01_muxctrl
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "OExp01_muxctrl,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=OExp01_muxctrl,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "OExp01_muxctrl.hwdef" *) 
module OExp01_muxctrl
   (I0,
    I1,
    o_0,
    s,
    s1,
    s2);
  input [4:0]I0;
  input [4:0]I1;
  output [4:0]o_0;
  input [1:0]s;
  input s1;
  input [2:0]s2;

  wire [4:0]I0_0_1;
  wire [4:0]I1_0_1;
  wire [4:0]MUX2T1_5_0_o;
  wire [4:0]MUX2T1_5_1_o;
  wire [4:0]MUX4T1_5_1_o;
  wire [7:0]MUX8T1_8_0_o;
  wire s_0_2;
  wire [1:0]s_0_3;
  wire [2:0]s_0_4;
  wire [7:0]xlconcat_0_dout;
  wire [7:0]xlconcat_1_dout;
  wire [4:0]xlconstant_0_dout;
  wire [4:0]xlconstant_1_dout;
  wire [7:0]xlconstant_2_dout;
  wire [0:0]xlconstant_3_dout;
  wire [3:0]xlslice_0_Dout;
  wire [3:0]xlslice_1_Dout;
  wire [4:0]xlslice_2_Dout;
  wire [4:0]xlslice_3_Dout;

  assign I0_0_1 = I0[4:0];
  assign I1_0_1 = I1[4:0];
  assign o_0[4:0] = MUX4T1_5_1_o;
  assign s_0_2 = s1;
  assign s_0_3 = s[1:0];
  assign s_0_4 = s2[2:0];
  OExp01_muxctrl_MUX2T1_5_0_0 MUX2T1_5_0
       (.I0(I0_0_1),
        .I1(I1_0_1),
        .o(MUX2T1_5_0_o),
        .s(s_0_2));
  OExp01_muxctrl_MUX2T1_5_1_0 MUX2T1_5_1
       (.I0(I0_0_1),
        .I1(I1_0_1),
        .o(MUX2T1_5_1_o),
        .s(xlconstant_3_dout));
  OExp01_muxctrl_MUX4T1_5_1_0 MUX4T1_5_1
       (.I0(xlslice_2_Dout),
        .I1(xlslice_3_Dout),
        .I2(xlconstant_1_dout),
        .I3(xlconstant_0_dout),
        .o(MUX4T1_5_1_o),
        .s(s_0_3));
  OExp01_muxctrl_MUX8T1_8_0_0 MUX8T1_8_0
       (.I0(xlconcat_0_dout),
        .I1(xlconcat_1_dout),
        .I2(xlconstant_2_dout),
        .I3(xlconstant_2_dout),
        .I4(xlconstant_2_dout),
        .I5(xlconstant_2_dout),
        .I6(xlconstant_2_dout),
        .I7(xlconstant_2_dout),
        .o(MUX8T1_8_0_o),
        .s(s_0_4));
  OExp01_muxctrl_xlconcat_0_0 xlconcat_0
       (.In0(xlslice_0_Dout),
        .In1(xlslice_1_Dout),
        .dout(xlconcat_0_dout));
  OExp01_muxctrl_xlconcat_1_0 xlconcat_1
       (.In0(xlslice_1_Dout),
        .In1(xlslice_0_Dout),
        .dout(xlconcat_1_dout));
  OExp01_muxctrl_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  OExp01_muxctrl_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  OExp01_muxctrl_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  OExp01_muxctrl_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  OExp01_muxctrl_xlslice_0_0 xlslice_0
       (.Din(MUX2T1_5_1_o),
        .Dout(xlslice_0_Dout));
  OExp01_muxctrl_xlslice_1_0 xlslice_1
       (.Din(MUX2T1_5_0_o),
        .Dout(xlslice_1_Dout));
  OExp01_muxctrl_xlslice_2_0 xlslice_2
       (.Din(MUX8T1_8_0_o),
        .Dout(xlslice_2_Dout));
  OExp01_muxctrl_xlslice_3_0 xlslice_3
       (.Din(xlconcat_1_dout),
        .Dout(xlslice_3_Dout));
endmodule
