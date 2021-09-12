// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May 18 15:10:23 2021
// Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/liang/Desktop/OrgLab/lab4/simCPU/simCPU.sim/sim_1/synth/timing/xsim/simCPU_wrapper_time_synth.v
// Design      : simCPU_wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* HW_HANDOFF = "simCPU.hwdef" *) 
module simCPU
   (clk,
    rst);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN simCPU_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input rst;

  wire [31:0]MCPU_0_ALU_out;
  wire MCPU_0_CPU_MIO;
  wire [31:0]MCPU_0_Data_out;
  wire MCPU_0_MemRW;
  wire [31:0]MCPU_0_PC_out;
  wire [31:0]RAM_B_0_douta;
  wire [9:0]addr11_2_Dout;
  wire clk;
  wire [31:0]dist_mem_gen_0_spo;
  wire [9:0]pc11_2_Dout;
  wire rst;
  wire util_vector_logic_0_Res;

  (* IMPORTED_FROM = "c:/Users/liang/Desktop/OrgLab/lab4/simCPU/simCPU.gen/sources_1/bd/simCPU/ip/simCPU_MCPU_0_0/simCPU_MCPU_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "MCPU,Vivado 2020.2" *) 
  simCPU_MCPU_0_0 MCPU_0
       (.ALU_out(MCPU_0_ALU_out),
        .CPU_MIO(MCPU_0_CPU_MIO),
        .Data_in(RAM_B_0_douta),
        .Data_out(MCPU_0_Data_out),
        .MIO_ready(MCPU_0_CPU_MIO),
        .MemRW(MCPU_0_MemRW),
        .PC_out(MCPU_0_PC_out),
        .clk(clk),
        .inst_in(dist_mem_gen_0_spo),
        .rst(rst));
  (* IMPORTED_FROM = "c:/Users/liang/Desktop/OrgLab/lab4/simCPU/simCPU.gen/sources_1/bd/simCPU/ip/simCPU_RAM_B_0_0/simCPU_RAM_B_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "RAM_B,Vivado 2020.2" *) 
  simCPU_RAM_B_0_0 RAM_B_0
       (.addra(addr11_2_Dout),
        .clka(util_vector_logic_0_Res),
        .dina(MCPU_0_Data_out),
        .douta(RAM_B_0_douta),
        .wea(MCPU_0_MemRW));
  (* IMPORTED_FROM = "c:/Users/liang/Desktop/OrgLab/lab4/simCPU/simCPU.gen/sources_1/bd/simCPU/ip/simCPU_dist_mem_gen_0_0/simCPU_dist_mem_gen_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
  simCPU_dist_mem_gen_0_0 ROM
       (.a(pc11_2_Dout),
        .spo(dist_mem_gen_0_spo));
  (* CHECK_LICENSE_TYPE = "simCPU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  simCPU_xlslice_0_0 addr11_2
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MCPU_0_ALU_out[11:2],1'b0,1'b0}),
        .Dout(addr11_2_Dout));
  (* CHECK_LICENSE_TYPE = "simCPU_xlslice_0_1,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  simCPU_xlslice_0_1 pc11_2
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,MCPU_0_PC_out[11:2],1'b0,1'b0}),
        .Dout(pc11_2_Dout));
  (* IMPORTED_FROM = "c:/Users/liang/Desktop/OrgLab/lab4/simCPU/simCPU.gen/sources_1/bd/simCPU/ip/simCPU_util_vector_logic_0_0/simCPU_util_vector_logic_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *) 
  simCPU_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(clk),
        .Res(util_vector_logic_0_Res));
endmodule

(* CHECK_LICENSE_TYPE = "simCPU_MCPU_0_0,MCPU,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "MCPU,Vivado 2020.2" *) 
module simCPU_MCPU_0_0
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
  simCPU_MCPU_0_0_MSCPU_wrapper inst
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

(* ORIG_REF_NAME = "ALU" *) 
module simCPU_MCPU_0_0_ALU
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
  simCPU_MCPU_0_0_ALU_MUX8T1_32_0_0 MUX8T1_32_0
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
  simCPU_MCPU_0_0_ALU_SignalExt_32_0_0 SignalExt_32_0
       (.S(xlslice_1_Dout),
        .So(SignalExt_32_0_So));
  (* CHECK_LICENSE_TYPE = "ALU_addc_32_0_0,addc_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "addc_32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_ALU_addc_32_0_0 addc_32_0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(xor32_0_res),
        .C0(xlslice_1_Dout),
        .S({NLW_addc_32_0_S_UNCONNECTED[32],addc_32_0_S}));
  (* CHECK_LICENSE_TYPE = "ALU_nor32_0_0,nor32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "nor32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_ALU_nor32_0_0 nor32_0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(nor32_0_res));
  (* CHECK_LICENSE_TYPE = "ALU_or32_0_0,or32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "or32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_ALU_or32_0_0 or32_0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(or32_0_res));
  (* CHECK_LICENSE_TYPE = "ALU_or_bit_32_0_0,or_bit_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "or_bit_32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_ALU_or_bit_32_0_0 or_bit_32_0
       (.A(res),
        .o(zero));
  (* CHECK_LICENSE_TYPE = "ALU_srl32_0_0,srl32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "srl32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_ALU_srl32_0_0 srl32_0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(srl32_0_res));
  (* CHECK_LICENSE_TYPE = "ALU_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_ALU_xlconcat_0_0 xlconcat_0
       (.In0(xlslice_2_Dout),
        .In1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout({NLW_xlconcat_0_dout_UNCONNECTED[31:1],xlconcat_0_dout}));
  (* CHECK_LICENSE_TYPE = "ALU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_ALU_xlslice_0_0 xlslice_0
       (.Din({1'b0,addc_32_0_S}),
        .Dout(xlslice_0_Dout));
  (* CHECK_LICENSE_TYPE = "ALU_xlslice_0_1,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_ALU_xlslice_0_1 xlslice_1
       (.Din({1'b0,1'b0,ALU_operation[0]}),
        .Dout(xlslice_1_Dout));
  (* CHECK_LICENSE_TYPE = "ALU_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_ALU_xlslice_2_0 xlslice_2
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addc_32_0_S[0]}),
        .Dout(xlslice_2_Dout));
  (* CHECK_LICENSE_TYPE = "ALU_xor32_0_0,xor32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "xor32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_ALU_xor32_0_0 xor32_0
       (.A(SignalExt_32_0_So),
        .B(B),
        .res(xor32_0_res));
  (* CHECK_LICENSE_TYPE = "ALU_xor32_1_0,xor32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "xor32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_ALU_xor32_1_0 xor32_1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(xor32_1_res));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_MUX8T1_32_0_0,MUX8T1_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "ALU_MUX8T1_32_0_0" *) (* X_CORE_INFO = "MUX8T1_32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_MUX8T1_32_0_0
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
  simCPU_MCPU_0_0_MUX8T1_32 inst
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
(* ORIG_REF_NAME = "ALU_SignalExt_32_0_0" *) (* X_CORE_INFO = "SignalExt_32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_SignalExt_32_0_0
   (S,
    So);
  input S;
  output [31:0]So;

  wire S;
  wire [31:0]So;

  (* black_box = "1" *) 
  simCPU_MCPU_0_0_SignalExt_32 inst
       (.S(S),
        .So(So));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_addc_32_0_0,addc_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "ALU_addc_32_0_0" *) (* X_CORE_INFO = "addc_32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_addc_32_0_0
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
  simCPU_MCPU_0_0_addc_32 inst
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .C0(C0),
        .S({inst_n_0,\^S [31:0]}));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_nor32_0_0,nor32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "ALU_nor32_0_0" *) (* X_CORE_INFO = "nor32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_nor32_0_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]B;
  wire [31:0]res;

  (* black_box = "1" *) 
  simCPU_MCPU_0_0_nor32 inst
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(res));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_or32_0_0,or32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "ALU_or32_0_0" *) (* X_CORE_INFO = "or32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_or32_0_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]B;
  wire [31:0]res;

  (* black_box = "1" *) 
  simCPU_MCPU_0_0_or32 inst
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(res));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_or_bit_32_0_0,or_bit_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "ALU_or_bit_32_0_0" *) (* X_CORE_INFO = "or_bit_32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_or_bit_32_0_0
   (o,
    A);
  output o;
  input [31:0]A;

  wire [31:0]A;
  wire o;

  (* black_box = "1" *) 
  simCPU_MCPU_0_0_or_bit_32 inst
       (.A(A),
        .o(o));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_srl32_0_0,srl32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "ALU_srl32_0_0" *) (* X_CORE_INFO = "srl32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_srl32_0_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]B;
  wire [31:0]res;

  (* black_box = "1" *) 
  simCPU_MCPU_0_0_srl32 inst
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(res));
endmodule

(* ORIG_REF_NAME = "ALU_wrapper" *) 
module simCPU_MCPU_0_0_ALU_wrapper
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

  simCPU_MCPU_0_0_ALU ALU_i
       (.ALU_operation(ALU_operation),
        .B(B),
        .res(res),
        .zero(zero));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ALU_xlconcat_0_0" *) 
(* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_xlconcat_0_0
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

(* CHECK_LICENSE_TYPE = "ALU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ALU_xlslice_0_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_xlslice_0_0
   (Din,
    Dout);
  input [32:0]Din;
  output [31:0]Dout;

  wire [32:0]Din;

  assign Dout[31:0] = Din[31:0];
endmodule

(* CHECK_LICENSE_TYPE = "ALU_xlslice_0_1,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ALU_xlslice_0_1" *) 
(* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_xlslice_0_1
   (Din,
    Dout);
  input [2:0]Din;
  output [0:0]Dout;

  wire [2:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "ALU_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ALU_xlslice_2_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_xlslice_2_0
   (Din,
    Dout);
  input [32:0]Din;
  output [0:0]Dout;

  wire [32:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "ALU_xor32_0_0,xor32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "ALU_xor32_0_0" *) (* X_CORE_INFO = "xor32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_xor32_0_0
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
  simCPU_MCPU_0_0_xor32 inst
       (.A(A),
        .B(B),
        .res(res));
endmodule

(* CHECK_LICENSE_TYPE = "ALU_xor32_1_0,xor32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "ALU_xor32_1_0" *) (* X_CORE_INFO = "xor32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_ALU_xor32_1_0
   (A,
    B,
    res);
  input [31:0]A;
  input [31:0]B;
  output [31:0]res;

  wire [31:0]B;
  wire [31:0]res;

  (* black_box = "1" *) 
  simCPU_MCPU_0_0_xor32_HD1 inst
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .B(B),
        .res(res));
endmodule

(* ORIG_REF_NAME = "ImmGen" *) 
module simCPU_MCPU_0_0_ImmGen
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

(* HW_HANDOFF = "MSCPU.hwdef" *) (* ORIG_REF_NAME = "MSCPU" *) 
module simCPU_MCPU_0_0_MSCPU
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
  simCPU_MCPU_0_0_MSCPU_SCPU_ctrl_0_0 Controller
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
  simCPU_MCPU_0_0_MSCPU_datapath_0_0 datapath
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
  simCPU_MCPU_0_0_MSCPU_xlslice_0_0 inst14_12
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inst_in[14:12],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dout(xlslice_0_Dout));
  (* CHECK_LICENSE_TYPE = "MSCPU_xlslice_1_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_MSCPU_xlslice_1_0 inst6_2
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,inst_in[6:2],1'b0,1'b0}),
        .Dout(xlslice_1_Dout));
  (* CHECK_LICENSE_TYPE = "MSCPU_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_MSCPU_xlslice_2_0 inst_30
       (.Din({1'b0,inst_in[30],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .Dout(inst_30_Dout));
endmodule

(* CHECK_LICENSE_TYPE = "MSCPU_SCPU_ctrl_0_0,SCPU_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "MSCPU_SCPU_ctrl_0_0" *) (* X_CORE_INFO = "SCPU_ctrl,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_MSCPU_SCPU_ctrl_0_0
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
  simCPU_MCPU_0_0_SCPU_ctrl inst
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
(* ORIG_REF_NAME = "MSCPU_datapath_0_0" *) (* X_CORE_INFO = "datapath,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_MSCPU_datapath_0_0
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
  simCPU_MCPU_0_0_datapath_wrapper inst
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

(* ORIG_REF_NAME = "MSCPU_wrapper" *) 
module simCPU_MCPU_0_0_MSCPU_wrapper
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
  simCPU_MCPU_0_0_MSCPU MSCPU_i
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

(* CHECK_LICENSE_TYPE = "MSCPU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "MSCPU_xlslice_0_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_MSCPU_xlslice_0_0
   (Din,
    Dout);
  input [31:0]Din;
  output [2:0]Dout;

  wire [31:0]Din;

  assign Dout[2:0] = Din[14:12];
endmodule

(* CHECK_LICENSE_TYPE = "MSCPU_xlslice_1_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "MSCPU_xlslice_1_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_MSCPU_xlslice_1_0
   (Din,
    Dout);
  input [31:0]Din;
  output [4:0]Dout;

  wire [31:0]Din;

  assign Dout[4:0] = Din[6:2];
endmodule

(* CHECK_LICENSE_TYPE = "MSCPU_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "MSCPU_xlslice_2_0" *) 
(* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_MSCPU_xlslice_2_0
   (Din,
    Dout);
  input [31:0]Din;
  output [0:0]Dout;

  wire [31:0]Din;

  assign Dout[0] = Din[30];
endmodule

(* ORIG_REF_NAME = "MUX2T1_32" *) 
module simCPU_MCPU_0_0_MUX2T1_32
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

(* ORIG_REF_NAME = "MUX2T1_32" *) 
module simCPU_MCPU_0_0_MUX2T1_32_HD1
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

(* ORIG_REF_NAME = "MUX2T1_32" *) 
module simCPU_MCPU_0_0_MUX2T1_32_HD2
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

(* ORIG_REF_NAME = "MUX4T1_32" *) 
module simCPU_MCPU_0_0_MUX4T1_32
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

(* ORIG_REF_NAME = "MUX8T1_32" *) 
module simCPU_MCPU_0_0_MUX8T1_32
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

(* ORIG_REF_NAME = "REG32" *) 
module simCPU_MCPU_0_0_REG32
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

(* ORIG_REF_NAME = "SCPU_ctrl" *) 
module simCPU_MCPU_0_0_SCPU_ctrl
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

(* ORIG_REF_NAME = "SignalExt_32" *) 
module simCPU_MCPU_0_0_SignalExt_32
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

(* ORIG_REF_NAME = "add_32" *) 
module simCPU_MCPU_0_0_add_32
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

(* ORIG_REF_NAME = "add_32" *) 
module simCPU_MCPU_0_0_add_32_HD1
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

(* ORIG_REF_NAME = "addc_32" *) 
module simCPU_MCPU_0_0_addc_32
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

(* HW_HANDOFF = "datapath.hwdef" *) (* ORIG_REF_NAME = "datapath" *) 
module simCPU_MCPU_0_0_datapath
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
  simCPU_MCPU_0_0_datapath_ALU_wrapper_0_1 ALU
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
  simCPU_MCPU_0_0_datapath_ImmGen_0_0 ImmGen
       (.ImmSel(ImmSel),
        .Imm_out(ImmGen_0_Imm_out),
        .inst_field({inst_field[31:7],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* CHECK_LICENSE_TYPE = "datapath_MUX2T1_32_0_0,MUX2T1_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "MUX2T1_32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_datapath_MUX2T1_32_0_0 MUX2T1_32_0
       (.I0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .I1(ImmGen_0_Imm_out),
        .o(MUX2T1_32_0_o),
        .s(ALUSrc_B));
  (* CHECK_LICENSE_TYPE = "datapath_MUX2T1_32_1_0,MUX2T1_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "MUX2T1_32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_datapath_MUX2T1_32_1_0 MUX2T1_32_1
       (.I0(add_32_0_c),
        .I1(add_32_1_c),
        .o(MUX2T1_32_1_o),
        .s(and_2_Res));
  (* CHECK_LICENSE_TYPE = "datapath_MUX2T1_32_2_0,MUX2T1_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "MUX2T1_32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_datapath_MUX2T1_32_2_0 MUX2T1_32_3
       (.I0(MUX2T1_32_1_o),
        .I1(add_32_1_c),
        .o(MUX2T1_32_3_o),
        .s(Jump));
  (* CHECK_LICENSE_TYPE = "datapath_MUX4T1_32_0_0,MUX4T1_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "MUX4T1_32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_datapath_MUX4T1_32_0_0 MUX4T1_32_0
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
  simCPU_MCPU_0_0_datapath_REG32_0_0 PC
       (.CE(1'b1),
        .D(MUX2T1_32_3_o),
        .Q(PC_out),
        .clk(clk),
        .rst(rst));
  (* CHECK_LICENSE_TYPE = "datapath_add_32_0_0,add_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "add_32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_datapath_add_32_0_0 add_32_0
       (.a(PC_out),
        .b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .c(add_32_0_c));
  (* CHECK_LICENSE_TYPE = "datapath_add_32_1_0,add_32,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* IP_DEFINITION_SOURCE = "package_project" *) 
  (* X_CORE_INFO = "add_32,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_datapath_add_32_1_0 add_32_1
       (.a(PC_out),
        .b(ImmGen_0_Imm_out),
        .c(add_32_1_c));
  (* CHECK_LICENSE_TYPE = "datapath_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *) 
  simCPU_MCPU_0_0_datapath_util_vector_logic_0_0 and_2
       (.Op1(Branch),
        .Op2(\^ALU ),
        .Res(and_2_Res));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_ALU_wrapper_0_1,ALU_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "datapath_ALU_wrapper_0_1" *) (* X_CORE_INFO = "ALU_wrapper,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_datapath_ALU_wrapper_0_1
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

  simCPU_MCPU_0_0_ALU_wrapper inst
       (.ALU_operation(ALU_operation),
        .B(B),
        .res(res),
        .zero(zero));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_ImmGen_0_0,ImmGen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "datapath_ImmGen_0_0" *) (* X_CORE_INFO = "ImmGen,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_datapath_ImmGen_0_0
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
  simCPU_MCPU_0_0_ImmGen inst
       (.ImmSel(ImmSel),
        .Imm_out({\^Imm_out [19:11],\^Imm_out [4:0]}),
        .inst_field({inst_field[31],inst_field[24:7]}));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_MUX2T1_32_0_0,MUX2T1_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "datapath_MUX2T1_32_0_0" *) (* X_CORE_INFO = "MUX2T1_32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_datapath_MUX2T1_32_0_0
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
  simCPU_MCPU_0_0_MUX2T1_32 inst
       (.I0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .I1(I1),
        .o(o),
        .s(s));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_MUX2T1_32_1_0,MUX2T1_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "datapath_MUX2T1_32_1_0" *) (* X_CORE_INFO = "MUX2T1_32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_datapath_MUX2T1_32_1_0
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
  simCPU_MCPU_0_0_MUX2T1_32_HD1 inst
       (.I0(I0),
        .I1(I1),
        .o(o),
        .s(s));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_MUX2T1_32_2_0,MUX2T1_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "datapath_MUX2T1_32_2_0" *) (* X_CORE_INFO = "MUX2T1_32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_datapath_MUX2T1_32_2_0
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
  simCPU_MCPU_0_0_MUX2T1_32_HD2 inst
       (.I0(I0),
        .I1(I1),
        .o(o),
        .s(s));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_MUX4T1_32_0_0,MUX4T1_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "datapath_MUX4T1_32_0_0" *) (* X_CORE_INFO = "MUX4T1_32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_datapath_MUX4T1_32_0_0
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
  simCPU_MCPU_0_0_MUX4T1_32 inst
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .o({inst_n_0,inst_n_1,inst_n_2,inst_n_3,inst_n_4,inst_n_5,inst_n_6,inst_n_7,inst_n_8,inst_n_9,inst_n_10,inst_n_11,inst_n_12,inst_n_13,inst_n_14,inst_n_15,inst_n_16,inst_n_17,inst_n_18,inst_n_19,inst_n_20,inst_n_21,inst_n_22,inst_n_23,inst_n_24,inst_n_25,inst_n_26,inst_n_27,inst_n_28,inst_n_29,inst_n_30,inst_n_31}),
        .s(s));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_REG32_0_0,REG32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "datapath_REG32_0_0" *) (* X_CORE_INFO = "REG32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_datapath_REG32_0_0
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

  simCPU_MCPU_0_0_REG32 inst
       (.D(D),
        .Q(Q),
        .clk(clk),
        .rst(rst));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_add_32_0_0,add_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "datapath_add_32_0_0" *) (* X_CORE_INFO = "add_32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_datapath_add_32_0_0
   (a,
    b,
    c);
  input [31:0]a;
  input [31:0]b;
  output [31:0]c;

  wire [31:0]a;
  wire [31:0]c;

  (* black_box = "1" *) 
  simCPU_MCPU_0_0_add_32 inst
       (.a(a),
        .b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0}),
        .c(c));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_add_32_1_0,add_32,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* ORIG_REF_NAME = "datapath_add_32_1_0" *) (* X_CORE_INFO = "add_32,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_datapath_add_32_1_0
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
  simCPU_MCPU_0_0_add_32_HD1 inst
       (.a(a),
        .b(b),
        .c(c));
endmodule

(* CHECK_LICENSE_TYPE = "datapath_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "datapath_util_vector_logic_0_0" *) 
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *) 
module simCPU_MCPU_0_0_datapath_util_vector_logic_0_0
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

(* ORIG_REF_NAME = "datapath_wrapper" *) 
module simCPU_MCPU_0_0_datapath_wrapper
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
  simCPU_MCPU_0_0_datapath datapath_i
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

(* ORIG_REF_NAME = "nor32" *) 
module simCPU_MCPU_0_0_nor32
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

(* ORIG_REF_NAME = "or32" *) 
module simCPU_MCPU_0_0_or32
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

(* ORIG_REF_NAME = "or_bit_32" *) 
module simCPU_MCPU_0_0_or_bit_32
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

(* ORIG_REF_NAME = "srl32" *) 
module simCPU_MCPU_0_0_srl32
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

(* ORIG_REF_NAME = "xor32" *) 
module simCPU_MCPU_0_0_xor32
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

(* ORIG_REF_NAME = "xor32" *) 
module simCPU_MCPU_0_0_xor32_HD1
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

(* CHECK_LICENSE_TYPE = "simCPU_RAM_B_0_0,RAM_B,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "RAM_B,Vivado 2020.2" *) 
module simCPU_RAM_B_0_0
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

  simCPU_RAM_B_0_0_RAM_B inst
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* CHECK_LICENSE_TYPE = "RAM,blk_mem_gen_v8_4_4,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "RAM" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
module simCPU_RAM_B_0_0_RAM
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

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
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  simCPU_RAM_B_0_0_blk_mem_gen_v8_4_4 U0
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

(* ORIG_REF_NAME = "RAM_B" *) 
module simCPU_RAM_B_0_0_RAM_B
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
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
  simCPU_RAM_B_0_0_RAM RAM_B
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* CHECK_LICENSE_TYPE = "simCPU_dist_mem_gen_0_0,dist_mem_gen_v8_0_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
module simCPU_dist_mem_gen_0_0
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire [9:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_DEFAULT_DATA = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_depth = "1024" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "simCPU_dist_mem_gen_0_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  simCPU_dist_mem_gen_0_0_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "simCPU_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2" *) 
module simCPU_util_vector_logic_0_0
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;

  assign Res[0] = Op1;
endmodule

(* NotValidForBitStream *)
module simCPU_wrapper
   (clk,
    rst);
  input clk;
  input rst;

  wire clk;
  wire clk_IBUF;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("simCPU_wrapper_time_synth.sdf",,,,"tool_control");
end
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  (* HW_HANDOFF = "simCPU.hwdef" *) 
  simCPU simCPU_i
       (.clk(clk_IBUF),
        .rst(rst_IBUF));
endmodule

(* CHECK_LICENSE_TYPE = "simCPU_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module simCPU_xlslice_0_0
   (Din,
    Dout);
  input [31:0]Din;
  output [9:0]Dout;

  wire [31:0]Din;

  assign Dout[9:0] = Din[11:2];
endmodule

(* CHECK_LICENSE_TYPE = "simCPU_xlslice_0_1,xlslice_v1_0_2_xlslice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlslice_v1_0_2_xlslice,Vivado 2020.2" *) 
module simCPU_xlslice_0_1
   (Din,
    Dout);
  input [31:0]Din;
  output [9:0]Dout;

  wire [31:0]Din;

  assign Dout[9:0] = Din[11:2];
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 39360)
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
