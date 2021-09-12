// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May 18 15:08:42 2021
// Host        : DESKTOP-LII7R1O running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ simCPU_dist_mem_gen_0_0_sim_netlist.v
// Design      : simCPU_dist_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "simCPU_dist_mem_gen_0_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire [9:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AWk2+F/LLIwJ/3H70MT+p73z+MaZAUnylB9xu/zfH66xX8dAaOizqpslZkE4MXrWhxdHpghP7sIj
kwvWqhJ3gA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f3tnX2YCmmij/BT714m5fPTuG3pr/Sp1bWD1FpCFiwTkcUFmqMNcr7abCn+qa2HUp1VAs9a1kY1i
yU68W3C4ARAx1rnlow3CtMBZ+4vG1QDA+Ciu5T+MSJsiWTAoMU3jJunULwD6zEC9h/Y3bBf+ZNGj
RvbKgHQFYSq+EYUzleQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6xRmzJVnvguMc3Lt5tkoyg5+/u1VuxRooNBOmgUvD6c148xX9CV/zz4fw53vbCzqUg3WYMPAs5M
/tMrhPMrX5cqjMMHbC20NaFxsFGCfdbN+1Jiu6Ffu0obXLvBu7UGBCEaDTCY0wST3S+7NZ+HnAat
RIt5cVRmnWtLEj9MP8SxAk019LKc3+2AUY0eWFhWbTGvNoTLcRFak8vqIx8KBuqhc16O50jjNmM3
PJltfibMKzAmWpsf6xiOkaD+BvARuccAoYGgANLBAEQdJUza98//SuTN0KLZKbFSmy2WI5iAzkxJ
bhH9hPn6Ks1JkH9+j61hMSpdxSh8rM8X8Dppxw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pefxdCU7VwYHa7diZaenheQOVCFpIvDlVp0qUtYsCnfw3IK+d5+k4O7xc5MWvQPeJpwUWNg+c9U8
PcbHo1enWoVg9o1V4U5fg7wxYqKmubBjgGF3yJ5FYGt6FeiD7zcnIJcaP2puAYDdVnxtiJnNmFz2
OQ7UQsleDpBQo3E4NEsbtqgSaopjHREMjI4yjJ9l5XZYNPCWUzUV/mSGX/kF+vuSOZclwPm6w72e
TE0MyJZA2HPDY3HIy260pYSHuDTUpe8gTxi0s8JmpFjaMaibBcPzq2gqPSQe1d6pDE8cv0OxNYKL
gFy+uh/H5gpNjfWVBhRmUo/kFf8fs680z0B0IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q8meW/DFYsK3R2jTQ13P/a1BVQyF0Eb3aLhqxNSrqINAq7gQ0DvJ6JFuxd6Ce7TIpxqKUYX9026h
UujOPWt7f1brVrSWmt8cW5Um2Yy8tv+YSNv9Ig592u4GssTU6dF978RK/7L4ZuQObLOKvWLJqo3F
6gzw0VbqYS3g5aaGu+Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVM7UoBz9uTOdnKd0CVM0lBuJK2N20FwcoiRGregMBQMsQuevbc7y03ZehM7mfGvEdERp1TciWoI
1b6cDAZYb0YBfSuch0bItCwhdftV3A4/R0nUF0HROsZ/rm/HV7DKDXxItqK0qcdOwqf7ju85NMa4
FJRP/Nuq/ya9IvX9BCpmUlT7tLkICG8cEL8/iJrJY3jRIBtKw85mL5OM+r22LQeYg1/3rb9Rk9BT
RZCTbDcVSUq2Awr+6f0L2NXlRwhFraBy+h9iSZKZ/U7uolyF0nB1+/BSgOl+rttZ2KxfLXe6g81N
FbxtrlpK7FNc9fx2jrKWh5bczyW6p0ATPX0ZbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rYkJ9a3QzTBGC5CITub5Su2Qs6nnM1m+OFLf4ykZkZGIsp11NQi6h5t8dsi/rX/MeEof1XLVJGEU
N+qLOHuLrttRAipPNBsj7yqH3Amnleqy/rjy8UcckD0gxIYzuIlc+2VKoAoyrEFgofTH5bKzBaaQ
q0JSt8PES8xuld4SvsKwr+0Q23qJIUpeNL3HvzxZDmYf5OhTkwlZPi/aLwSMoPZHKwetLUg5SdBm
7K4UmxvUPD3GNxo6GW6dkG2tFW/N9+ju7i//O1A74VUrDPo1OwQfEJazwHFFpHGjCJkv2CiPU3+I
TIVvzssQcs8IphMJulwZguc7fFiYv6aZyj/GrA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqIVM68d++A6qxRgSePlX8JOoCfHcFLdhzsYr1BDYvLE5JJ5WKFO0Bie6pyEiAbsH8z6oUFGm/Qy
BLXAyWfv1fmbVAwztezaMaxBF0Lw4epvQlAFVdMGJVKgvxfU7ssvLc1KfpF6R/c1o5+4Vf7zn3X+
R8k67LVYgJoxhrPoY3XYr88CjSITfNW0jLDjh0jtDWf7H7nM6QYSXVbRYczQPcepXW2MOFcCZsbi
tdla+UNJ4NeKTUK5bdE9tNZx/8BYKrJtLhyvNdwHi7EdonKLjQu63ExIHoriUmiZScMNbtr2LUBc
YYGUTIENquQ/OhU+DAVXmKbIZcQhwGaqjYeaag==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YMvD1GHkklhDlN9yur11SqhNZTItCRHxHobZtty993SsbvXTWJBbLeIJ+nQ/sv57gpjV5RswiJYh
Vu7QPlLUy2DbVjjcqxaxXlPvYaWV1eKD7BVBOV6HDzPAaAIaFvNjeRurYX0a9Dz1qkgkmttneZxB
s04mTyRdVOc7jIs5wjgXiF+iA0W50/g9JmIYyP6mMLkgEy0MbGyVfpbRfDMcrB3ACnucHTo8A0nT
V/rBUOGbTCYPmQ01tbuE2nqoEfTlmqHVKO6BZ93tQUEjrYoJdteva6yHUfH3dbV1vwwBtsdolICY
7x8cMlorxb6y2ZD7vQEYz6Q6iVnG/PmdaCkLSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11632)
`pragma protect data_block
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
ob/GCg==
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
