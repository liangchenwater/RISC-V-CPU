
~
]hardware handoff file cannot be generated as there is no block diagram instance in the design132*	vivadotclZ4-279h px
s
Command: %s
53*	vivadotcl2E
1synth_design -top mips_top -part xc7k325tffg676-22default:defaultZ4-113h px
7
Starting synth_design
149*	vivadotclZ4-321h px
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7k325t2default:defaultZ17-347h px
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7k325t2default:defaultZ17-349h px
?
,redeclaration of ansi port %s is not allowed2611*oasys2
h_count2default:default2R
<C:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/vga.v2default:default2
112default:default8@Z8-2611h px
?
,redeclaration of ansi port %s is not allowed2611*oasys2
v_count2default:default2R
<C:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/vga.v2default:default2
222default:default8@Z8-2611h px
?
=concatenation with unsized literal; will interpret as 32 bits1849*oasys2X
BC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/vga_debug.v2default:default2
592default:default8@Z8-1849h px
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 261.797 ; gain = 47.125
2default:defaulth px
?
synthesizing module '%s'638*oasys2
mips_top2default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/mips_top.v2default:default2
82default:default8@Z8-638h px
?
synthesizing module '%s'638*oasys2
clk_diff2default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/clk_diff.v2default:default2
52default:default8@Z8-638h px
?
synthesizing module '%s'638*oasys2
IBUFGDS2default:default2K
5C:/Xilinx/Vivado/2014.4/scripts/rt/data/unisim_comp.v2default:default2
106472default:default8@Z8-638h px
d
%s*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:defaulth px
^
%s*synth2I
5	Parameter DIFF_TERM bound to: FALSE - type: string 
2default:defaulth px
a
%s*synth2L
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 
2default:defaulth px
`
%s*synth2K
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 
2default:defaulth px
a
%s*synth2L
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
2default:defaulth px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
IBUFGDS2default:default2
12default:default2
12default:default2K
5C:/Xilinx/Vivado/2014.4/scripts/rt/data/unisim_comp.v2default:default2
106472default:default8@Z8-256h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
clk_diff2default:default2
22default:default2
12default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/clk_diff.v2default:default2
52default:default8@Z8-256h px
?
synthesizing module '%s'638*oasys2

my_clk_gen2default:default2Y
CC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/my_clk_gen.v2default:default2
712default:default8@Z8-638h px
?
synthesizing module '%s'638*oasys2

MMCME2_ADV2default:default2K
5C:/Xilinx/Vivado/2014.4/scripts/rt/data/unisim_comp.v2default:default2
159902default:default8@Z8-638h px
b
%s*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth px
i
%s*synth2T
@	Parameter CLKFBOUT_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth px
h
%s*synth2S
?	Parameter CLKOUT0_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth px
h
%s*synth2S
?	Parameter CLKOUT1_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth px
h
%s*synth2S
?	Parameter CLKOUT2_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth px
h
%s*synth2S
?	Parameter CLKOUT3_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth px
d
%s*synth2O
;	Parameter CLKOUT4_CASCADE bound to: FALSE - type: string 
2default:defaulth px
h
%s*synth2S
?	Parameter CLKOUT4_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth px
h
%s*synth2S
?	Parameter CLKOUT5_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth px
h
%s*synth2S
?	Parameter CLKOUT6_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth px
a
%s*synth2L
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
2default:defaulth px
Z
%s*synth2E
1	Parameter SS_EN bound to: FALSE - type: string 
2default:defaulth px
b
%s*synth2M
9	Parameter SS_MODE bound to: CENTER_HIGH - type: string 
2default:defaulth px
a
%s*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:defaulth px
Y
%s*synth2D
0	Parameter IS_CLKINSEL_INVERTED bound to: 1'b0 
2default:defaulth px
U
%s*synth2@
,	Parameter IS_PSEN_INVERTED bound to: 1'b0 
2default:defaulth px
Y
%s*synth2D
0	Parameter IS_PSINCDEC_INVERTED bound to: 1'b0 
2default:defaulth px
W
%s*synth2B
.	Parameter IS_PWRDWN_INVERTED bound to: 1'b0 
2default:defaulth px
T
%s*synth2?
+	Parameter IS_RST_INVERTED bound to: 1'b0 
2default:defaulth px
a
%s*synth2L
8	Parameter CLKOUT1_DIVIDE bound to: 20 - type: integer 
2default:defaulth px
a
%s*synth2L
8	Parameter CLKOUT2_DIVIDE bound to: 40 - type: integer 
2default:defaulth px
b
%s*synth2M
9	Parameter CLKOUT3_DIVIDE bound to: 100 - type: integer 
2default:defaulth px
`
%s*synth2K
7	Parameter CLKOUT4_DIVIDE bound to: 1 - type: integer 
2default:defaulth px
`
%s*synth2K
7	Parameter CLKOUT5_DIVIDE bound to: 1 - type: integer 
2default:defaulth px
`
%s*synth2K
7	Parameter CLKOUT6_DIVIDE bound to: 1 - type: integer 
2default:defaulth px
_
%s*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
2default:defaulth px
c
%s*synth2N
:	Parameter SS_MOD_PERIOD bound to: 10000 - type: integer 
2default:defaulth px
f
%s*synth2Q
=	Parameter CLKFBOUT_MULT_F bound to: 5.000000 - type: float 
2default:defaulth px
e
%s*synth2P
<	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: float 
2default:defaulth px
d
%s*synth2O
;	Parameter CLKIN1_PERIOD bound to: 5.000000 - type: float 
2default:defaulth px
d
%s*synth2O
;	Parameter CLKIN2_PERIOD bound to: 0.000000 - type: float 
2default:defaulth px
h
%s*synth2S
?	Parameter CLKOUT0_DIVIDE_F bound to: 10.000000 - type: float 
2default:defaulth px
i
%s*synth2T
@	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:defaulth px
d
%s*synth2O
;	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: float 
2default:defaulth px
i
%s*synth2T
@	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:defaulth px
d
%s*synth2O
;	Parameter CLKOUT1_PHASE bound to: 0.000000 - type: float 
2default:defaulth px
i
%s*synth2T
@	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:defaulth px
d
%s*synth2O
;	Parameter CLKOUT2_PHASE bound to: 0.000000 - type: float 
2default:defaulth px
i
%s*synth2T
@	Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:defaulth px
d
%s*synth2O
;	Parameter CLKOUT3_PHASE bound to: 0.000000 - type: float 
2default:defaulth px
i
%s*synth2T
@	Parameter CLKOUT4_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:defaulth px
d
%s*synth2O
;	Parameter CLKOUT4_PHASE bound to: 0.000000 - type: float 
2default:defaulth px
i
%s*synth2T
@	Parameter CLKOUT5_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:defaulth px
d
%s*synth2O
;	Parameter CLKOUT5_PHASE bound to: 0.000000 - type: float 
2default:defaulth px
i
%s*synth2T
@	Parameter CLKOUT6_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:defaulth px
d
%s*synth2O
;	Parameter CLKOUT6_PHASE bound to: 0.000000 - type: float 
2default:defaulth px
b
%s*synth2M
9	Parameter REF_JITTER1 bound to: 0.010000 - type: float 
2default:defaulth px
b
%s*synth2M
9	Parameter REF_JITTER2 bound to: 0.010000 - type: float 
2default:defaulth px
?
%done synthesizing module '%s' (%s#%s)256*oasys2

MMCME2_ADV2default:default2
32default:default2
12default:default2K
5C:/Xilinx/Vivado/2014.4/scripts/rt/data/unisim_comp.v2default:default2
159902default:default8@Z8-256h px
?
synthesizing module '%s'638*oasys2
BUFG2default:default2K
5C:/Xilinx/Vivado/2014.4/scripts/rt/data/unisim_comp.v2default:default2
6062default:default8@Z8-638h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
BUFG2default:default2
42default:default2
12default:default2K
5C:/Xilinx/Vivado/2014.4/scripts/rt/data/unisim_comp.v2default:default2
6062default:default8@Z8-256h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2

my_clk_gen2default:default2
52default:default2
12default:default2Y
CC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/my_clk_gen.v2default:default2
712default:default8@Z8-256h px
?
synthesizing module '%s'638*oasys2
btn_scan2default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/btn_scan.v2default:default2
92default:default8@Z8-638h px
[
%s*synth2F
2	Parameter CLK_FREQ bound to: 25 - type: integer 
2default:defaulth px
`
%s*synth2K
7	Parameter SCAN_INTERVAL bound to: 10 - type: integer 
2default:defaulth px
a
%s*synth2L
8	Parameter COUNT_SCAN bound to: 250001 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter COUNT_BITS bound to: 18 - type: integer 
2default:defaulth px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
btn_scan2default:default2
62default:default2
12default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/btn_scan.v2default:default2
92default:default8@Z8-256h px
?
synthesizing module '%s'638*oasys2
display2default:default2V
@C:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/display.v2default:default2
82default:default8@Z8-638h px
[
%s*synth2F
2	Parameter CLK_FREQ bound to: 25 - type: integer 
2default:defaulth px
N
%s*synth29
%	Parameter SEG_PULSE bound to: 1'b0 
2default:defaulth px
d
%s*synth2O
;	Parameter REFRESH_INTERVAL bound to: 100 - type: integer 
2default:defaulth px
e
%s*synth2P
<	Parameter COUNT_REFRESH bound to: 2500001 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter COUNT_BITS bound to: 22 - type: integer 
2default:defaulth px
?
synthesizing module '%s'638*oasys2#
parallel2serial2default:default2^
HC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/parallel2serial.v2default:default2
82default:default8@Z8-638h px
]
%s*synth2H
4	Parameter P_CLK_FREQ bound to: 25 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter S_CLK_FREQ bound to: 20 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter DATA_BITS bound to: 16 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter CODE_ENDIAN bound to: 1 - type: integer 
2default:defaulth px
a
%s*synth2L
8	Parameter COUNT_HALFCYCLE bound to: 1 - type: integer 
2default:defaulth px
b
%s*synth2M
9	Parameter CYCLE_COUNT_BITS bound to: 1 - type: integer 
2default:defaulth px
a
%s*synth2L
8	Parameter DATA_COUNT_BITS bound to: 4 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter S_IDLE bound to: 0 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter S_CLEAR bound to: 1 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter S_WORK bound to: 2 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter S_DONE bound to: 3 - type: integer 
2default:defaulth px
?
-case statement is not full and has no default155*oasys2^
HC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/parallel2serial.v2default:default2
492default:default8@Z8-155h px
?
-case statement is not full and has no default155*oasys2^
HC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/parallel2serial.v2default:default2
1002default:default8@Z8-155h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
parallel2serial2default:default2
72default:default2
12default:default2^
HC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/parallel2serial.v2default:default2
82default:default8@Z8-256h px
?
synthesizing module '%s'638*oasys23
parallel2serial__parameterized02default:default2^
HC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/parallel2serial.v2default:default2
82default:default8@Z8-638h px
]
%s*synth2H
4	Parameter P_CLK_FREQ bound to: 25 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter S_CLK_FREQ bound to: 20 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter DATA_BITS bound to: 64 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter CODE_ENDIAN bound to: 1 - type: integer 
2default:defaulth px
a
%s*synth2L
8	Parameter COUNT_HALFCYCLE bound to: 1 - type: integer 
2default:defaulth px
b
%s*synth2M
9	Parameter CYCLE_COUNT_BITS bound to: 1 - type: integer 
2default:defaulth px
a
%s*synth2L
8	Parameter DATA_COUNT_BITS bound to: 6 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter S_IDLE bound to: 0 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter S_CLEAR bound to: 1 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter S_WORK bound to: 2 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter S_DONE bound to: 3 - type: integer 
2default:defaulth px
?
-case statement is not full and has no default155*oasys2^
HC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/parallel2serial.v2default:default2
492default:default8@Z8-155h px
?
-case statement is not full and has no default155*oasys2^
HC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/parallel2serial.v2default:default2
1002default:default8@Z8-155h px
?
%done synthesizing module '%s' (%s#%s)256*oasys23
parallel2serial__parameterized02default:default2
72default:default2
12default:default2^
HC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/parallel2serial.v2default:default2
82default:default8@Z8-256h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
display2default:default2
82default:default2
12default:default2V
@C:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/display.v2default:default2
82default:default8@Z8-256h px
?
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
DISPLAY2default:default2
display2default:default2
142default:default2
122default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/mips_top.v2default:default2
802default:default8@Z8-350h px
?
synthesizing module '%s'638*oasys2
mips2default:default2S
=C:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/mips.v2default:default2
82default:default8@Z8-638h px
?
synthesizing module '%s'638*oasys2
	mips_core2default:default2X
BC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/mips_core.v2default:default2
82default:default8@Z8-638h px
?
synthesizing module '%s'638*oasys2

controller2default:default2Y
CC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/controller.v2default:default2
82default:default8@Z8-638h px
Y
%s*synth2D
0	Parameter PC_NEXT bound to: 0 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter PC_JUMP bound to: 1 - type: integer 
2default:defaulth px
W
%s*synth2B
.	Parameter PC_JR bound to: 2 - type: integer 
2default:defaulth px
[
%s*synth2F
2	Parameter PC_BRANCH bound to: 3 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter EXE_A_RS bound to: 0 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter EXE_A_SA bound to: 1 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_A_LINK bound to: 2 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter EXE_B_RT bound to: 0 - type: integer 
2default:defaulth px
[
%s*synth2F
2	Parameter EXE_B_IMM bound to: 1 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_B_LINK bound to: 2 - type: integer 
2default:defaulth px
^
%s*synth2I
5	Parameter EXE_B_BRANCH bound to: 3 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_ADD bound to: 0 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_SUB bound to: 1 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_SLT bound to: 2 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_LUI bound to: 3 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_AND bound to: 4 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_ALU_OR bound to: 5 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_XOR bound to: 6 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_NOR bound to: 7 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_ALU_SL bound to: 8 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_ALU_SR bound to: 9 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter WB_ADDR_RD bound to: 0 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter WB_ADDR_RT bound to: 1 - type: integer 
2default:defaulth px
^
%s*synth2I
5	Parameter WB_ADDR_LINK bound to: 2 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter WB_DATA_ALU bound to: 0 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter WB_DATA_MEM bound to: 1 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter PC_RESET bound to: 0 - type: integer 
2default:defaulth px
P
%s*synth2;
'	Parameter INST_R bound to: 6'b000000 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SLL bound to: 6'b000000 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SRL bound to: 6'b000010 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SRA bound to: 6'b000011 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SLLV bound to: 6'b000100 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SRLV bound to: 6'b000110 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SRAV bound to: 6'b000111 
2default:defaulth px
S
%s*synth2>
*	Parameter R_FUNC_JR bound to: 6'b001000 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_ADD bound to: 6'b100000 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_ADDU bound to: 6'b100001 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SUB bound to: 6'b100010 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SUBU bound to: 6'b100011 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_AND bound to: 6'b100100 
2default:defaulth px
S
%s*synth2>
*	Parameter R_FUNC_OR bound to: 6'b100101 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_XOR bound to: 6'b100110 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_NOR bound to: 6'b100111 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SLT bound to: 6'b101010 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SLTU bound to: 6'b101011 
2default:defaulth px
P
%s*synth2;
'	Parameter INST_J bound to: 6'b000010 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_JAL bound to: 6'b000011 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_BEQ bound to: 6'b000100 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_BNE bound to: 6'b000101 
2default:defaulth px
S
%s*synth2>
*	Parameter INST_ADDI bound to: 6'b001000 
2default:defaulth px
T
%s*synth2?
+	Parameter INST_ADDIU bound to: 6'b001001 
2default:defaulth px
S
%s*synth2>
*	Parameter INST_SLTI bound to: 6'b001010 
2default:defaulth px
T
%s*synth2?
+	Parameter INST_SLTIU bound to: 6'b001011 
2default:defaulth px
S
%s*synth2>
*	Parameter INST_ANDI bound to: 6'b001100 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_ORI bound to: 6'b001101 
2default:defaulth px
S
%s*synth2>
*	Parameter INST_XORI bound to: 6'b001110 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_LUI bound to: 6'b001111 
2default:defaulth px
Q
%s*synth2<
(	Parameter INST_LW bound to: 6'b100011 
2default:defaulth px
Q
%s*synth2<
(	Parameter INST_SW bound to: 6'b101011 
2default:defaulth px
Z
%s*synth2E
1	Parameter GPR_ZERO bound to: 0 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_AT bound to: 1 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_V0 bound to: 2 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_V1 bound to: 3 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_A0 bound to: 4 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_A1 bound to: 5 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_A2 bound to: 6 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_A3 bound to: 7 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_T0 bound to: 8 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_T1 bound to: 9 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T2 bound to: 10 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T3 bound to: 11 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T4 bound to: 12 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T5 bound to: 13 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T6 bound to: 14 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T7 bound to: 15 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S0 bound to: 16 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S1 bound to: 17 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S2 bound to: 18 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S3 bound to: 19 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S4 bound to: 20 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S5 bound to: 21 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S6 bound to: 22 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S7 bound to: 23 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T8 bound to: 24 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T9 bound to: 25 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_K0 bound to: 26 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_K1 bound to: 27 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_GP bound to: 28 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_SP bound to: 29 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_FP bound to: 30 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_RA bound to: 31 - type: integer 
2default:defaulth px
?
%done synthesizing module '%s' (%s#%s)256*oasys2

controller2default:default2
92default:default2
12default:default2Y
CC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/controller.v2default:default2
82default:default8@Z8-256h px
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
32default:default2
pc_src2default:default2
22default:default2

controller2default:default2X
BC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/mips_core.v2default:default2
812default:default8@Z8-689h px
?
synthesizing module '%s'638*oasys2
datapath2default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/datapath.v2default:default2
82default:default8@Z8-638h px
Y
%s*synth2D
0	Parameter PC_NEXT bound to: 0 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter PC_JUMP bound to: 1 - type: integer 
2default:defaulth px
W
%s*synth2B
.	Parameter PC_JR bound to: 2 - type: integer 
2default:defaulth px
[
%s*synth2F
2	Parameter PC_BRANCH bound to: 3 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter EXE_A_RS bound to: 0 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter EXE_A_SA bound to: 1 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_A_LINK bound to: 2 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter EXE_B_RT bound to: 0 - type: integer 
2default:defaulth px
[
%s*synth2F
2	Parameter EXE_B_IMM bound to: 1 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_B_LINK bound to: 2 - type: integer 
2default:defaulth px
^
%s*synth2I
5	Parameter EXE_B_BRANCH bound to: 3 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_ADD bound to: 0 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_SUB bound to: 1 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_SLT bound to: 2 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_LUI bound to: 3 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_AND bound to: 4 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_ALU_OR bound to: 5 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_XOR bound to: 6 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_NOR bound to: 7 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_ALU_SL bound to: 8 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_ALU_SR bound to: 9 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter WB_ADDR_RD bound to: 0 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter WB_ADDR_RT bound to: 1 - type: integer 
2default:defaulth px
^
%s*synth2I
5	Parameter WB_ADDR_LINK bound to: 2 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter WB_DATA_ALU bound to: 0 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter WB_DATA_MEM bound to: 1 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter PC_RESET bound to: 0 - type: integer 
2default:defaulth px
P
%s*synth2;
'	Parameter INST_R bound to: 6'b000000 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SLL bound to: 6'b000000 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SRL bound to: 6'b000010 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SRA bound to: 6'b000011 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SLLV bound to: 6'b000100 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SRLV bound to: 6'b000110 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SRAV bound to: 6'b000111 
2default:defaulth px
S
%s*synth2>
*	Parameter R_FUNC_JR bound to: 6'b001000 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_ADD bound to: 6'b100000 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_ADDU bound to: 6'b100001 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SUB bound to: 6'b100010 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SUBU bound to: 6'b100011 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_AND bound to: 6'b100100 
2default:defaulth px
S
%s*synth2>
*	Parameter R_FUNC_OR bound to: 6'b100101 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_XOR bound to: 6'b100110 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_NOR bound to: 6'b100111 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SLT bound to: 6'b101010 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SLTU bound to: 6'b101011 
2default:defaulth px
P
%s*synth2;
'	Parameter INST_J bound to: 6'b000010 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_JAL bound to: 6'b000011 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_BEQ bound to: 6'b000100 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_BNE bound to: 6'b000101 
2default:defaulth px
S
%s*synth2>
*	Parameter INST_ADDI bound to: 6'b001000 
2default:defaulth px
T
%s*synth2?
+	Parameter INST_ADDIU bound to: 6'b001001 
2default:defaulth px
S
%s*synth2>
*	Parameter INST_SLTI bound to: 6'b001010 
2default:defaulth px
T
%s*synth2?
+	Parameter INST_SLTIU bound to: 6'b001011 
2default:defaulth px
S
%s*synth2>
*	Parameter INST_ANDI bound to: 6'b001100 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_ORI bound to: 6'b001101 
2default:defaulth px
S
%s*synth2>
*	Parameter INST_XORI bound to: 6'b001110 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_LUI bound to: 6'b001111 
2default:defaulth px
Q
%s*synth2<
(	Parameter INST_LW bound to: 6'b100011 
2default:defaulth px
Q
%s*synth2<
(	Parameter INST_SW bound to: 6'b101011 
2default:defaulth px
Z
%s*synth2E
1	Parameter GPR_ZERO bound to: 0 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_AT bound to: 1 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_V0 bound to: 2 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_V1 bound to: 3 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_A0 bound to: 4 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_A1 bound to: 5 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_A2 bound to: 6 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_A3 bound to: 7 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_T0 bound to: 8 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_T1 bound to: 9 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T2 bound to: 10 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T3 bound to: 11 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T4 bound to: 12 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T5 bound to: 13 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T6 bound to: 14 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T7 bound to: 15 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S0 bound to: 16 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S1 bound to: 17 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S2 bound to: 18 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S3 bound to: 19 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S4 bound to: 20 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S5 bound to: 21 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S6 bound to: 22 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S7 bound to: 23 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T8 bound to: 24 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T9 bound to: 25 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_K0 bound to: 26 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_K1 bound to: 27 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_GP bound to: 28 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_SP bound to: 29 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_FP bound to: 30 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_RA bound to: 31 - type: integer 
2default:defaulth px
?
synthesizing module '%s'638*oasys2
regfile2default:default2V
@C:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/regfile.v2default:default2
82default:default8@Z8-638h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
regfile2default:default2
102default:default2
12default:default2V
@C:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/regfile.v2default:default2
82default:default8@Z8-256h px
?
synthesizing module '%s'638*oasys2
alu2default:default2O
9C:/archlabs/lab05/lab05.srcs/sources_1/imports/lab6/alu.v2default:default2
82default:default8@Z8-638h px
Y
%s*synth2D
0	Parameter PC_NEXT bound to: 0 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter PC_JUMP bound to: 1 - type: integer 
2default:defaulth px
W
%s*synth2B
.	Parameter PC_JR bound to: 2 - type: integer 
2default:defaulth px
[
%s*synth2F
2	Parameter PC_BRANCH bound to: 3 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter EXE_A_RS bound to: 0 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter EXE_A_SA bound to: 1 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_A_LINK bound to: 2 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter EXE_B_RT bound to: 0 - type: integer 
2default:defaulth px
[
%s*synth2F
2	Parameter EXE_B_IMM bound to: 1 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_B_LINK bound to: 2 - type: integer 
2default:defaulth px
^
%s*synth2I
5	Parameter EXE_B_BRANCH bound to: 3 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_ADD bound to: 0 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_SUB bound to: 1 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_SLT bound to: 2 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_LUI bound to: 3 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_AND bound to: 4 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_ALU_OR bound to: 5 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_XOR bound to: 6 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter EXE_ALU_NOR bound to: 7 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_ALU_SL bound to: 8 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter EXE_ALU_SR bound to: 9 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter WB_ADDR_RD bound to: 0 - type: integer 
2default:defaulth px
\
%s*synth2G
3	Parameter WB_ADDR_RT bound to: 1 - type: integer 
2default:defaulth px
^
%s*synth2I
5	Parameter WB_ADDR_LINK bound to: 2 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter WB_DATA_ALU bound to: 0 - type: integer 
2default:defaulth px
]
%s*synth2H
4	Parameter WB_DATA_MEM bound to: 1 - type: integer 
2default:defaulth px
Z
%s*synth2E
1	Parameter PC_RESET bound to: 0 - type: integer 
2default:defaulth px
P
%s*synth2;
'	Parameter INST_R bound to: 6'b000000 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SLL bound to: 6'b000000 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SRL bound to: 6'b000010 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SRA bound to: 6'b000011 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SLLV bound to: 6'b000100 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SRLV bound to: 6'b000110 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SRAV bound to: 6'b000111 
2default:defaulth px
S
%s*synth2>
*	Parameter R_FUNC_JR bound to: 6'b001000 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_ADD bound to: 6'b100000 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_ADDU bound to: 6'b100001 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SUB bound to: 6'b100010 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SUBU bound to: 6'b100011 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_AND bound to: 6'b100100 
2default:defaulth px
S
%s*synth2>
*	Parameter R_FUNC_OR bound to: 6'b100101 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_XOR bound to: 6'b100110 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_NOR bound to: 6'b100111 
2default:defaulth px
T
%s*synth2?
+	Parameter R_FUNC_SLT bound to: 6'b101010 
2default:defaulth px
U
%s*synth2@
,	Parameter R_FUNC_SLTU bound to: 6'b101011 
2default:defaulth px
P
%s*synth2;
'	Parameter INST_J bound to: 6'b000010 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_JAL bound to: 6'b000011 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_BEQ bound to: 6'b000100 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_BNE bound to: 6'b000101 
2default:defaulth px
S
%s*synth2>
*	Parameter INST_ADDI bound to: 6'b001000 
2default:defaulth px
T
%s*synth2?
+	Parameter INST_ADDIU bound to: 6'b001001 
2default:defaulth px
S
%s*synth2>
*	Parameter INST_SLTI bound to: 6'b001010 
2default:defaulth px
T
%s*synth2?
+	Parameter INST_SLTIU bound to: 6'b001011 
2default:defaulth px
S
%s*synth2>
*	Parameter INST_ANDI bound to: 6'b001100 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_ORI bound to: 6'b001101 
2default:defaulth px
S
%s*synth2>
*	Parameter INST_XORI bound to: 6'b001110 
2default:defaulth px
R
%s*synth2=
)	Parameter INST_LUI bound to: 6'b001111 
2default:defaulth px
Q
%s*synth2<
(	Parameter INST_LW bound to: 6'b100011 
2default:defaulth px
Q
%s*synth2<
(	Parameter INST_SW bound to: 6'b101011 
2default:defaulth px
Z
%s*synth2E
1	Parameter GPR_ZERO bound to: 0 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_AT bound to: 1 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_V0 bound to: 2 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_V1 bound to: 3 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_A0 bound to: 4 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_A1 bound to: 5 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_A2 bound to: 6 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_A3 bound to: 7 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_T0 bound to: 8 - type: integer 
2default:defaulth px
X
%s*synth2C
/	Parameter GPR_T1 bound to: 9 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T2 bound to: 10 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T3 bound to: 11 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T4 bound to: 12 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T5 bound to: 13 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T6 bound to: 14 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T7 bound to: 15 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S0 bound to: 16 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S1 bound to: 17 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S2 bound to: 18 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S3 bound to: 19 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S4 bound to: 20 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S5 bound to: 21 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S6 bound to: 22 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_S7 bound to: 23 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T8 bound to: 24 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_T9 bound to: 25 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_K0 bound to: 26 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_K1 bound to: 27 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_GP bound to: 28 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_SP bound to: 29 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_FP bound to: 30 - type: integer 
2default:defaulth px
Y
%s*synth2D
0	Parameter GPR_RA bound to: 31 - type: integer 
2default:defaulth px
?
-case statement is not full and has no default155*oasys2O
9C:/archlabs/lab05/lab05.srcs/sources_1/imports/lab6/alu.v2default:default2
192default:default8@Z8-155h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
alu2default:default2
112default:default2
12default:default2O
9C:/archlabs/lab05/lab05.srcs/sources_1/imports/lab6/alu.v2default:default2
82default:default8@Z8-256h px
?
-case statement is not full and has no default155*oasys2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/datapath.v2default:default2
1982default:default8@Z8-155h px
?
-case statement is not full and has no default155*oasys2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/datapath.v2default:default2
2852default:default8@Z8-155h px
?
-case statement is not full and has no default155*oasys2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/datapath.v2default:default2
2902default:default8@Z8-155h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
datapath2default:default2
122default:default2
12default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/datapath.v2default:default2
82default:default8@Z8-256h px
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
32default:default2
pc_src_ctrl2default:default2
22default:default2
datapath2default:default2X
BC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/mips_core.v2default:default2
1322default:default8@Z8-689h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	mips_core2default:default2
132default:default2
12default:default2X
BC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/mips_core.v2default:default2
82default:default8@Z8-256h px
?
synthesizing module '%s'638*oasys2
inst_rom2default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/inst_rom.v2default:default2
12default:default8@Z8-638h px
\
%s*synth2G
3	Parameter ADDR_WIDTH bound to: 6 - type: integer 
2default:defaulth px
?
,$readmem data file '%s' is read successfully3426*oasys2 
inst_mem.hex2default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/inst_rom.v2default:default2
132default:default8@Z8-3876h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
inst_rom2default:default2
142default:default2
12default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/inst_rom.v2default:default2
12default:default8@Z8-256h px
?
synthesizing module '%s'638*oasys2
data_ram2default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/data_ram.v2default:default2
12default:default8@Z8-638h px
\
%s*synth2G
3	Parameter ADDR_WIDTH bound to: 5 - type: integer 
2default:defaulth px
?
,$readmem data file '%s' is read successfully3426*oasys2 
data_mem.hex2default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/data_ram.v2default:default2
152default:default8@Z8-3876h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
data_ram2default:default2
152default:default2
12default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/data_ram.v2default:default2
12default:default8@Z8-256h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
mips2default:default2
162default:default2
12default:default2S
=C:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/mips.v2default:default2
82default:default8@Z8-256h px
?
synthesizing module '%s'638*oasys2
vga2default:default2R
<C:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/vga.v2default:default2
12default:default8@Z8-638h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
vga2default:default2
172default:default2
12default:default2R
<C:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/vga.v2default:default2
12default:default8@Z8-256h px
?
synthesizing module '%s'638*oasys2
	vga_debug2default:default2X
BC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/vga_debug.v2default:default2
212default:default8@Z8-638h px
?
synthesizing module '%s'638*oasys2%
pc_vga_8x16_00_7F2default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/vga_8x16.v2default:default2
22default:default8@Z8-638h px
?
synthesizing module '%s'638*oasys2
	RAMB16_S12default:default2K
5C:/Xilinx/Vivado/2014.4/scripts/rt/data/unisim_comp.v2default:default2
297342default:default8@Z8-638h px
e
%s*synth2P
<	Parameter WRITE_MODE bound to: WRITE_FIRST - type: string 
2default:defaulth px
I
%s*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth px
J
%s*synth25
!	Parameter SRVAL bound to: 1'b0 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111101000000110000001100110011011110110000001100000011010010110000001011111100000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000001111110111111111111111111100111110000111111111111111111110110111111111101111110000000000000000000000000000000000000000000000000000100000011100001111100111111101111111011111110111111100110110000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000100000011100001111100111111100111110000111000000100000000000000000000000000000000000000000000000000000000000000000000001111000001100000011000111001111110011111100111001111000011110000011000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000111100000110000001100001111110111111111111111101111110001111000001100000000000000000000000000000000000000000000000000000000000000000000000000000011000001111000011110000011000000000000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_04 bound to: 256'b1111111111111111111111111111111111111111111111111110011111000011110000111110011111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000011110001100110010000100100001001100110001111000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_05 bound to: 256'b1111111111111111111111111111111111111111110000111001100110111101101111011001100111000011111111111111111111111111111111111111111100000000000000000000000000000000011110001100110011001100110011001100110001111000001100100001101000001110000111100000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000011000000110000111111000011000001111000110011001100110011001100110011000111100000000000000000000000000000000000000000000000000111000001111000001110000001100000011000000110000001100000011111100110011001111110000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_07 bound to: 256'b0000000000000000000000001100000011100110111001110110011101100011011000110110001101100011011111110110001101111111000000000000000000000000000000000000000000000000000110000001100011011011001111001110011100111100110110110001100000011000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000010000000110000001110000011110000111110001111111011111000111100001110000011000000100000000000000000000000000000000000000000000000000000100000011000001110000111100011111011111110001111100001111000001110000001100000001000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000110000011110001111110000110000001100000011000011111100011110000011000000000000000000000000000000000000000000000000000011001100110011000000000011001100110011001100110011001100110011001100110011001100000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000011011000110110001101100011011000110110111101111011011110110111101101101111111000000000000000000000000000000000000000001111100110001100000110000111000011011001100011011000110011011000011100001100000110001100111110000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000011111110111111101111111011111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111100001100000111100011111100001100000011000000110000111111000111100000110000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000011000000110000001100000011000000110000001100000011000011111100011110000011000000000000000000000000000000000000000000000000000000110000011110001111110000110000001100000011000000110000001100000011000000110000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000001100000001100111111100000110000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000011000001111111001100000001100000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000001111111011000000110000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100100011001101111111101100110001001000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000111111101111111001111100011111000011100000111000000100000000000000000000000000000000000000000000000000000000000000000000000000000001000000111000001110000111110001111100111111101111111000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000001100000000000000110000001100000011000001111000011110000111100000110000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001000110011001100110011001100000000000000000000000000000000000000000011011000110110011111110011011000110110001101100111111100110110001101100000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_12 bound to: 256'b0000000000000000000110000001100001111100110001101000011000000110000001100111110011000000110000101100011001111100000110000001100000000000000000000000000000000000100001101100011001100000001100000001100000001100110001101100001000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000001110110110011001100110011001100110111000111011000111000011011000110110000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000110000001100000011000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000001100000110000011000000110000001100000011000000110000001100000001100000001100000000000000000000000000000000000000000000000000001100000001100000001100000011000000110000001100000011000000110000011000001100000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000110011000111100111111110011110001100110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000110000111111000011000000110000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_16 bound to: 256'b0000000000000000000000000011000000011000000110000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111000000000000000000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000011000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001100000001100000001100000001100000001100000001100000001000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000001111100110001101100011011100110111101101101111011001110110001101100011001111100000000000000000000000000000000000000000000000000011111100001100000011000000110000001100000011000000110000111100000111000000110000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000011111110110001101100000001100000001100000001100000001100000001101100011001111100000000000000000000000000000000000000000000000000011111001100011000000110000001100000011000111100000001100000011011000110011111000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000011110000011000000110000001100111111101100110001101100001111000001110000001100000000000000000000000000000000000000000000000000011111001100011000000110000001100000011011111100110000001100000011000000111111100000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000001111100110001101100011011000110110001101111110011000000110000000110000000111000000000000000000000000000000000000000000000000000001100000011000000110000001100000001100000001100000001100000011011000110111111100000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000001111100110001101100011011000110110001100111110011000110110001101100011001111100000000000000000000000000000000000000000000000000011110000000110000000110000001100000011001111110110001101100011011000110011111000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000110000001100000000000000000000000000000011000000110000000000000000000000000000000000000000000000000000000000000000000001100000001100000011000000000000000000000000000000110000001100000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000110000011000001100000110000011000000011000000011000000011000000011000000000000000000000000000000000000000000000000000000000000000000000000000000000011111100000000000000000011111100000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000001100000001100000001100000001100000001100000110000011000001100000110000000000000000000000000000000000000000000000000000000000000000110000001100000000000000110000001100000011000000011001100011011000110011111000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000001111100110000001101110011011110110111101101111011000110110001101100011001111100000000000000000000000000000000000000000000000000110001101100011011000110110001101111111011000110110001100110110000111000000100000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000011111100011001100110011001100110011001100111110001100110011001100110011011111100000000000000000000000000000000000000000000000000001111000110011011000010110000001100000011000000110000001100001001100110001111000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000011111000011011000110011001100110011001100110011001100110011001100110110011111000000000000000000000000000000000000000000000000000111111100110011001100010011000000110100001111000011010000110001001100110111111100000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000011110000011000000110000001100000011010000111100001101000011000100110011011111110000000000000000000000000000000000000000000000000001110100110011011000110110001101101111011000000110000001100001001100110001111000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000011000110110001101100011011000110110001101111111011000110110001101100011011000110000000000000000000000000000000000000000000000000001111000001100000011000000110000001100000011000000110000001100000011000001111000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000001111000110011001100110011001100000011000000110000001100000011000000110000011110000000000000000000000000000000000000000000000000111001100110011001100110011011000111100001111000011011000110011001100110111001100000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000011111110011001100110001001100000011000000110000001100000011000000110000011110000000000000000000000000000000000000000000000000000110000111100001111000011110000111100001111011011111111111111111111100111110000110000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000011000110110001101100011011000110110011101101111011111110111101101110011011000110000000000000000000000000000000000000000000000000011111001100011011000110110001101100011011000110110001101100011011000110011111000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000011110000011000000110000001100000011000000111110001100110011001100110011011111100000000000000000000000000000000000000111000001100011111001101111011010110110001101100011011000110110001101100011011000110011111000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000011100110011001100110011001100110011011000111110001100110011001100110011011111100000000000000000000000000000000000000000000000000011111001100011011000110000001100000110000111000011000001100011011000110011111000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000111100000110000001100000011000000110000001100000011000100110011101101111111111000000000000000000000000000000000000000000000000011111001100011011000110110001101100011011000110110001101100011011000110110001100000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000011000001111000110011011000011110000111100001111000011110000111100001111000011000000000000000000000000000000000000000000000000011001100110011011111111110110111101101111000011110000111100001111000011110000110000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000011000011110000110110011000111100000110000001100000111100011001101100001111000011000000000000000000000000000000000000000000000000001111000001100000011000000110000001100000111100011001101100001111000011110000110000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000011111111110000111100000101100000001100000001100000001100100001101100001111111111000000000000000000000000000000000000000000000000001111000011000000110000001100000011000000110000001100000011000000110000001111000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000010000001100000111000011100001110000111000011100000110000001000000000000000000000000000000000000000000000000000000000000000001111000000110000001100000011000000110000001100000011000000110000001100001111000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001100011001101100001110000001000000000000000000001111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000001100000011000000000000000000000000000000000000011101101100110011001100110011000111110000001100011110000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000001111100011001100110011001100110011001100110110001111000011000000110000011100000000000000000000000000000000000000000000000000000011111001100011011000000110000001100000011000110011111000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000001110110110011001100110011001100110011000110110000111100000011000000110000011100000000000000000000000000000000000000000000000000011111001100011011000000110000001111111011000110011111000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000011110000011000000110000001100000011000001111000001100000011001000110110000111000000000000000000000000000011110001100110000001100011111001100110011001100110011001100110011001100011101100000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000011100110011001100110011001100110011001100111011001101100011000000110000011100000000000000000000000000000000000000000000000000000001111000001100000011000000110000001100000011000001110000000000000011000000110000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_35 bound to: 256'b0000000000111100011001100110011000000110000001100000011000000110000001100000011000001110000000000000011000000110000000000000000000000000000000000000000000000000111001100110011001101100011110000111100001101100011001100110000001100000111000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000111100000110000001100000011000000110000001100000011000000110000001100000111000000000000000000000000000000000000000000000000000110110111101101111011011110110111101101111111111111001100000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000001100110011001100110011001100110011001100110011011011100000000000000000000000000000000000000000000000000000000000000000000000000011111001100011011000110110001101100011011000110011111000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_38 bound to: 256'b0000000011110000011000000110000001111100011001100110011001100110011001100110011011011100000000000000000000000000000000000000000000000000000111100000110000001100011111001100110011001100110011001100110011001100011101100000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000011110000011000000110000001100000011001100111011011011100000000000000000000000000000000000000000000000000000000000000000000000000011111001100011000001100001110000110000011000110011111000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000011100001101100011000000110000001100000011000011111100001100000011000000010000000000000000000000000000000000000000000000000000011101101100110011001100110011001100110011001100110011000000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000011000001111000110011011000011110000111100001111000011000000000000000000000000000000000000000000000000000000000000000000000000011001101111111111011011110110111100001111000011110000110000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000011000011011001100011110000011000001111000110011011000011000000000000000000000000000000000000000000000000111110000000110000000110011111101100011011000110110001101100011011000110110001100000000000000000000000000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000011111110110001100110000000110000000110001100110011111110000000000000000000000000000000000000000000000000000000000000000000000000000011100001100000011000000110000001100001110000000110000001100000011000000011100000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000011000000110000001100000011000000110000000000000011000000110000001100000011000000000000000000000000000000000000000000000000000011100000001100000011000000110000001100000001110000110000001100000011000011100000000000000000000 
2default:defaulth px
?
%s*synth2?
?	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001101110001110110000000000000000000000000000000000000000000000000000000001111111011000110110001101100011001101100001110000001000000000000000000000000000000000000 
2default:defaulth px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	RAMB16_S12default:default2
182default:default2
12default:default2K
5C:/Xilinx/Vivado/2014.4/scripts/rt/data/unisim_comp.v2default:default2
297342default:default8@Z8-256h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2%
pc_vga_8x16_00_7F2default:default2
192default:default2
12default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/vga_8x16.v2default:default2
22default:default8@Z8-256h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	vga_debug2default:default2
202default:default2
12default:default2X
BC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/vga_debug.v2default:default2
212default:default8@Z8-256h px
?
%done synthesizing module '%s' (%s#%s)256*oasys2
mips_top2default:default2
212default:default2
12default:default2W
AC:/archlabs/lab05/lab05.srcs/sources_1/imports/sources/mips_top.v2default:default2
82default:default8@Z8-256h px
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:11 ; elapsed = 00:00:13 . Memory (MB): peak = 280.809 ; gain = 66.137
2default:defaulth px
A
%s*synth2,

Report Check Netlist: 
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 280.809 ; gain = 66.137
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
b
-Analyzing %s Unisim elements for replacement
17*netlist2
32default:defaultZ29-17h px
?
?The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist or constraint file.
369*netlist25
!VGA_DEBUG/FONT_8X16/BRAM_PC_VGA_02default:default2
RAMB18E12default:default2
VIRTEX62default:default2
7SERIES2default:defaultZ29-345h px
g
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px
?
Loading clock regions from %s
13*device2f
RC:/Xilinx/Vivado/2014.4/data\parts/xilinx/kintex7/kintex7/xc7k325t/ClockRegion.xml2default:defaultZ21-13h px
?
Loading clock buffers from %s
11*device2g
SC:/Xilinx/Vivado/2014.4/data\parts/xilinx/kintex7/kintex7/xc7k325t/ClockBuffers.xml2default:defaultZ21-11h px
?
&Loading clock placement rules from %s
318*place2Z
FC:/Xilinx/Vivado/2014.4/data/parts/xilinx/kintex7/ClockPlacerRules.xml2default:defaultZ30-318h px
?
)Loading package pin functions from %s...
17*device2V
BC:/Xilinx/Vivado/2014.4/data\parts/xilinx/kintex7/PinFunctions.xml2default:defaultZ21-17h px
?
Loading package from %s
16*device2i
UC:/Xilinx/Vivado/2014.4/data\parts/xilinx/kintex7/kintex7/xc7k325t/ffg676/Package.xml2default:defaultZ21-16h px
?
Loading io standards from %s
15*device2W
CC:/Xilinx/Vivado/2014.4/data\./parts/xilinx/kintex7/IOStandards.xml2default:defaultZ21-15h px
?
+Loading device configuration modes from %s
14*device2U
AC:/Xilinx/Vivado/2014.4/data\parts/xilinx/kintex7/ConfigModes.xml2default:defaultZ21-14h px
H
)Preparing netlist for logic optimization
349*projectZ1-570h px
;

Processing XDC Constraints
244*projectZ1-262h px
:
Initializing timing engine
348*projectZ1-569h px
?
Parsing XDC File [%s]
179*designutils2U
AC:/archlabs/lab05/lab05.srcs/constrs_1/imports/constrs/sword4.xdc2default:defaultZ20-179h px
?
Finished Parsing XDC File [%s]
178*designutils2U
AC:/archlabs/lab05/lab05.srcs/constrs_1/imports/constrs/sword4.xdc2default:defaultZ20-178h px
E
&Completed Processing XDC Constraints

245*projectZ1-263h px
?
!Unisim Transformation Summary:
%s111*project2?
q  A total of 2 instances were transformed.
  IBUFGDS => IBUFDS: 1 instances
  RAMB16_S1 => RAMB18E1: 1 instances
2default:defaultZ1-111h px
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0202default:default2
642.6372default:default2
0.0002default:defaultZ17-268h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:30 ; elapsed = 00:00:36 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
S
%s*synth2>
*Start Loading Part and Timing Information
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Loading part: xc7k325tffg676-2
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:30 ; elapsed = 00:00:36 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
W
%s*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:30 ; elapsed = 00:00:36 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	btn_x_reg2default:default2
btn_scan2default:defaultZ8-802h px
g
%s*synth2R
>ROM "result" won't be mapped to RAM because it is too sparse.
2default:defaulth px
f
%s*synth2Q
=ROM "btn_x" won't be mapped to RAM because it is too sparse.
2default:defaulth px
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2#
parallel2serial2default:defaultZ8-802h px
?
%s*synth2w
cROM "next_state" won't be mapped to Block RAM because address size (4) smaller than threshold (5) 
2default:defaulth px
?
%s*synth2w
cROM "next_state" won't be mapped to Block RAM because address size (1) smaller than threshold (5) 
2default:defaulth px
?
%s*synth2w
cROM "next_state" won't be mapped to Block RAM because address size (4) smaller than threshold (5) 
2default:defaulth px
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default23
parallel2serial__parameterized02default:defaultZ8-802h px
k
%s*synth2V
BROM "next_state" won't be mapped to RAM because it is too sparse.
2default:defaulth px
?
%s*synth2w
cROM "next_state" won't be mapped to Block RAM because address size (1) smaller than threshold (5) 
2default:defaulth px
k
%s*synth2V
BROM "next_state" won't be mapped to RAM because it is too sparse.
2default:defaulth px
g
%s*synth2R
>ROM "pc_src" won't be mapped to RAM because it is too sparse.
2default:defaulth px
u
%s*synth2`
LROM size is below threshold of ROM address width. It will be mapped to LUTs
2default:defaulth px
j
%s*synth2U
AROM "exe_a_src" won't be mapped to RAM because it is too sparse.
2default:defaulth px
j
%s*synth2U
AROM "exe_b_src" won't be mapped to RAM because it is too sparse.
2default:defaulth px
u
%s*synth2`
LROM size is below threshold of ROM address width. It will be mapped to LUTs
2default:defaulth px
u
%s*synth2`
LROM size is below threshold of ROM address width. It will be mapped to LUTs
2default:defaulth px
l
%s*synth2W
CROM "wb_data_src" won't be mapped to RAM because it is too sparse.
2default:defaulth px
h
%s*synth2S
?ROM "mem_wen" won't be mapped to RAM because it is too sparse.
2default:defaulth px
u
%s*synth2`
LROM size is below threshold of ROM address width. It will be mapped to LUTs
2default:defaulth px
g
%s*synth2R
>ROM "wb_wen" won't be mapped to RAM because it is too sparse.
2default:defaulth px
h
%s*synth2S
?ROM "rs_used" won't be mapped to RAM because it is too sparse.
2default:defaulth px
m
%s*synth2X
DROM "unrecognized" won't be mapped to RAM because it is too sparse.
2default:defaulth px
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the inputs of the operator3413*oasys2
adder2default:default2O
9C:/archlabs/lab05/lab05.srcs/sources_1/imports/lab6/alu.v2default:default2
192default:default8@Z8-3537h px
e
%s*synth2P
<ROM "data" won't be mapped to RAM because it is too sparse.
2default:defaulth px
h
%s*synth2S
?ROM "v_count" won't be mapped to RAM because it is too sparse.
2default:defaulth px
?
%s*synth2w
cROM "ascii_code" won't be mapped to Block RAM because address size (3) smaller than threshold (5) 
2default:defaulth px
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	btn_x_reg2default:default2
one-hot2default:default2
btn_scan2default:defaultZ8-3354h px
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2#
parallel2serial2default:defaultZ8-3354h px
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default23
parallel2serial__parameterized02default:defaultZ8-3354h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:32 ; elapsed = 00:00:38 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
I
%s*synth24
 Start RTL Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit       Adders := 4     
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit       Adders := 4     
2default:defaulth px
W
%s*synth2B
.	   2 Input      7 Bit       Adders := 4     
2default:defaulth px
W
%s*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit       Adders := 2     
2default:defaulth px
5
%s*synth2 
+---XORs : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               65 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	               57 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	               32 Bit    Registers := 18    
2default:defaulth px
W
%s*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                5 Bit    Registers := 3     
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 5     
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 34    
2default:defaulth px
5
%s*synth2 
+---RAMs : 
2default:defaulth px
W
%s*synth2B
.	             1024 Bit         RAMs := 1     
2default:defaulth px
W
%s*synth2B
.	              992 Bit         RAMs := 1     
2default:defaulth px
W
%s*synth2B
.	              128 Bit         RAMs := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     65 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input     65 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input     56 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  25 Input     55 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit        Muxes := 10    
2default:defaulth px
W
%s*synth2B
.	  11 Input     32 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input     32 Bit        Muxes := 5     
2default:defaulth px
W
%s*synth2B
.	  65 Input     32 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     20 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     17 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input     17 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   6 Input      7 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      7 Bit        Muxes := 11    
2default:defaulth px
W
%s*synth2B
.	  16 Input      7 Bit        Muxes := 8     
2default:defaulth px
W
%s*synth2B
.	   4 Input      6 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   6 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   8 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  18 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  16 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      3 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   8 Input      3 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit        Muxes := 13    
2default:defaulth px
W
%s*synth2B
.	   4 Input      2 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	  18 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  16 Input      2 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 21    
2default:defaulth px
W
%s*synth2B
.	   4 Input      1 Bit        Muxes := 10    
2default:defaulth px
W
%s*synth2B
.	  16 Input      1 Bit        Muxes := 8     
2default:defaulth px
W
%s*synth2B
.	  18 Input      1 Bit        Muxes := 5     
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Finished RTL Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
V
%s*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Hierarchical RTL Component report 
2default:defaulth px
:
%s*synth2%
Module mips_top 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
:
%s*synth2%
Module clk_diff 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
<
%s*synth2'
Module my_clk_gen 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
Module btn_scan 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     20 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   6 Input      7 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   6 Input      5 Bit        Muxes := 1     
2default:defaulth px
A
%s*synth2,
Module parallel2serial 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     17 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input     17 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      3 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   8 Input      3 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth px
W
%s*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth px
W
%s*synth2B
.	   4 Input      1 Bit        Muxes := 5     
2default:defaulth px
Q
%s*synth2<
(Module parallel2serial__parameterized0 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               65 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     65 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input     65 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      6 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   8 Input      5 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   4 Input      3 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth px
W
%s*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth px
W
%s*synth2B
.	   4 Input      1 Bit        Muxes := 5     
2default:defaulth px
9
%s*synth2$
Module display 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input      7 Bit        Muxes := 8     
2default:defaulth px
W
%s*synth2B
.	  16 Input      7 Bit        Muxes := 8     
2default:defaulth px
<
%s*synth2'
Module controller 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	  18 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  16 Input      4 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  18 Input      2 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      2 Bit        Muxes := 7     
2default:defaulth px
W
%s*synth2B
.	  16 Input      2 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	  16 Input      1 Bit        Muxes := 8     
2default:defaulth px
W
%s*synth2B
.	  18 Input      1 Bit        Muxes := 5     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth px
9
%s*synth2$
Module regfile 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
5
%s*synth2 
+---RAMs : 
2default:defaulth px
W
%s*synth2B
.	              992 Bit         RAMs := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit        Muxes := 3     
2default:defaulth px
5
%s*synth2 
Module alu 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth px
5
%s*synth2 
+---XORs : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	  11 Input     32 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth px
:
%s*synth2%
Module datapath 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               32 Bit    Registers := 17    
2default:defaulth px
W
%s*synth2B
.	                5 Bit    Registers := 3     
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 19    
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit        Muxes := 4     
2default:defaulth px
W
%s*synth2B
.	   4 Input     32 Bit        Muxes := 5     
2default:defaulth px
W
%s*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth px
;
%s*synth2&
Module mips_core 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
Module inst_rom 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  65 Input     32 Bit        Muxes := 1     
2default:defaulth px
:
%s*synth2%
Module data_ram 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth px
5
%s*synth2 
+---RAMs : 
2default:defaulth px
W
%s*synth2B
.	             1024 Bit         RAMs := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth px
6
%s*synth2!
Module mips 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
5
%s*synth2 
Module vga 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth px
W
%s*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth px
W
%s*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth px
C
%s*synth2.
Module pc_vga_8x16_00_7F 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
;
%s*synth2&
Module vga_debug 
2default:defaulth px
H
%s*synth23
Detailed RTL Component Info : 
2default:defaulth px
7
%s*synth2"
+---Adders : 
2default:defaulth px
W
%s*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      7 Bit       Adders := 4     
2default:defaulth px
W
%s*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth px
:
%s*synth2%
+---Registers : 
2default:defaulth px
W
%s*synth2B
.	               57 Bit    Registers := 1     
2default:defaulth px
W
%s*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth px
5
%s*synth2 
+---RAMs : 
2default:defaulth px
W
%s*synth2B
.	              128 Bit         RAMs := 1     
2default:defaulth px
6
%s*synth2!
+---Muxes : 
2default:defaulth px
W
%s*synth2B
.	   4 Input     56 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	  25 Input     55 Bit        Muxes := 1     
2default:defaulth px
W
%s*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth px
W
%s*synth2B
.	   2 Input      7 Bit        Muxes := 3     
2default:defaulth px
W
%s*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
X
%s*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
E
%s*synth20
Start Part Resource Summary
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2m
YPart Resources:
DSPs: 840 (col length:140)
BRAMs: 890 (col length: RAMB18 140 RAMB36 70)
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Finished Part Resource Summary
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
?Start Parallel Synthesis Optimization  : Time (s): cpu = 00:00:32 ; elapsed = 00:00:38 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
K
%s*synth26
"Start Cross Boundary Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
h
%s*synth2S
?ROM "v_count" won't be mapped to RAM because it is too sparse.
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
?Finished Cross Boundary Optimization : Time (s): cpu = 00:00:33 ; elapsed = 00:00:39 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
~Finished Parallel Reinference  : Time (s): cpu = 00:00:33 ; elapsed = 00:00:39 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
?
?The signal %s was recognized as a RAM template for dedicated block RAM(s) but is better mapped onto distributed LUT RAM for the following reason(s): The *depth (%s address bits)* is shallow.
3471*oasys2%
DATA_RAM/data_reg2default:default2
52default:defaultZ8-3969h px
?
%s*synth2?
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
5
%s*synth2 

Block RAM:
2default:defaulth px
?
%s*synth2?
?+------------+-------------------+------------------------+---+---+------------------------+---+---+---------+--------+--------+-------------------------+
2default:defaulth px
?
%s*synth2?
?|Module Name | RTL Object        | PORT A (depth X width) | W | R | PORT B (depth X width) | W | R | OUT_REG | RAMB18 | RAMB36 | Hierarchical Name       | 
2default:defaulth px
?
%s*synth2?
?+------------+-------------------+------------------------+---+---+------------------------+---+---+---------+--------+--------+-------------------------+
2default:defaulth px
?
%s*synth2?
?|mips        | DATA_RAM/data_reg | 32 X 32(READ_FIRST)    | W | R |                        |   |   | Port A  | 1      | 0      | mips_top/mips/extram__5 | 
2default:defaulth px
?
%s*synth2?
?+------------+-------------------+------------------------+---+---+------------------------+---+---+---------+--------+--------+-------------------------+

2default:defaulth px
?
%s*synth2?
?Note: The table shows RAMs generated at current stage. Some RAM generation could be reversed due to later optimizations. Multiple instantiated RAMs are reported only once. "Hierarchical Name" reflects the hierarchical modules names of the RAM and only part of it is displayed.
Distributed RAM: 
2default:defaulth px
?
%s*synth2?
?+------------+----------------------------------------+--------------------+----------------------+---------------+---------------------------+
2default:defaulth px
?
%s*synth2?
?|Module Name | RTL Object                             | Inference Criteria | Size (depth X width) | Primitives    | Hierarchical Name         | 
2default:defaulth px
?
%s*synth2?
?+------------+----------------------------------------+--------------------+----------------------+---------------+---------------------------+
2default:defaulth px
?
%s*synth2?
?|mips        | MIPS_CORE/DATAPATH/REGFILE/regfile_reg | Implied            | 32 X 32              | RAM32M x 18   | mips_top/mips/ram__3      | 
2default:defaulth px
?
%s*synth2?
?|vga_debug   | data_buf_reg                           | Implied            | 4 X 32               | RAM32M x 6    | mips_top/vga_debug/ram__4 | 
2default:defaulth px
?
%s*synth2?
?+------------+----------------------------------------+--------------------+----------------------+---------------+---------------------------+

2default:defaulth px
?
%s*synth2?
?Note: The table shows RAMs generated at current stage. Some RAM generation could be reversed due to later optimizations. Multiple instantiated RAMs are reported only once. "Hierarchical Name" reflects the hierarchical modules names of the RAM and only part of it is displayed.
2default:defaulth px
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
DISPLAY/\P2S_SEG/buff_reg[0] 2default:defaultZ8-3333h px
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2/
MIPS/\INST_ROM/out_reg[20] 2default:defaultZ8-3333h px
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default28
$DISPLAY/\P2S_LED/cycle_count_reg[0] 2default:defaultZ8-3333h px
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default28
$DISPLAY/\P2S_SEG/cycle_count_reg[0] 2default:defaultZ8-3333h px
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
DISPLAY/\P2S_SEG/buff_reg[1] 2default:defaultZ8-3333h px
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/MIPS/\MIPS_CORE/DATAPATH/inst_data_exe_reg[20] 2default:defaultZ8-3333h px
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
DISPLAY/\P2S_SEG/buff_reg[2] 2default:defaultZ8-3333h px
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
DISPLAY/\P2S_SEG/buff_reg[3] 2default:defaultZ8-3333h px
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
DISPLAY/\P2S_SEG/buff_reg[4] 2default:defaultZ8-3333h px
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
DISPLAY/\P2S_SEG/buff_reg[5] 2default:defaultZ8-3333h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\result_reg[18] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\result_reg[17] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\result_reg[15] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\result_reg[14] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\result_reg[13] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\result_reg[12] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\result_reg[11] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
\result_reg[10] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\result_reg[9] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\result_reg[8] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\result_reg[7] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\result_reg[6] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\result_reg[5] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\result_reg[4] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\result_reg[3] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\result_reg[2] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\result_reg[1] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
\result_reg[0] 2default:default2
btn_scan2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
\P2S_LED/cycle_count_reg[0] 2default:default2
display2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
\P2S_SEG/cycle_count_reg[0] 2default:default2
display2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\P2S_SEG/buff_reg[5] 2default:default2
display2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\P2S_SEG/buff_reg[4] 2default:default2
display2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\P2S_SEG/buff_reg[3] 2default:default2
display2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\P2S_SEG/buff_reg[2] 2default:default2
display2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\P2S_SEG/buff_reg[1] 2default:default2
display2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\P2S_SEG/buff_reg[0] 2default:default2
display2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\P2S_LED/s_clr_reg 2default:default2
display2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
\P2S_SEG/s_clr_reg 2default:default2
display2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_data_id_reg[30] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_data_id_reg[20] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(\MIPS_CORE/DATAPATH/inst_data_id_reg[9] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[31] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[30] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[29] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[28] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[27] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[26] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[25] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[24] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[23] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[22] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[21] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[20] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[19] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[18] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/data_imm_exe_reg[16] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\MIPS_CORE/DATAPATH/mem_ren_exe_reg 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(\MIPS_CORE/DATAPATH/wb_data_src_exe_reg 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(\MIPS_CORE/DATAPATH/wb_data_src_mem_reg 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2>
*\MIPS_CORE/DATAPATH/inst_data_exe_reg[30] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2>
*\MIPS_CORE/DATAPATH/inst_data_exe_reg[20] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2>
*\MIPS_CORE/DATAPATH/inst_data_mem_reg[30] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2>
*\MIPS_CORE/DATAPATH/inst_data_mem_reg[20] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_data_mem_reg[9] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$\MIPS_CORE/DATAPATH/is_load_mem_reg 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!\MIPS_CORE/DATAPATH/id_valid_reg 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"\MIPS_CORE/DATAPATH/exe_valid_reg 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys26
"\MIPS_CORE/DATAPATH/mem_valid_reg 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys25
!\MIPS_CORE/DATAPATH/wb_valid_reg 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2A
-\MIPS_CORE/DATAPATH/inst_addr_next_id_reg[0] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2>
*\MIPS_CORE/DATAPATH/inst_data_exe_reg[10] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2>
*\MIPS_CORE/DATAPATH/inst_data_exe_reg[11] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_data_exe_reg[8] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(\MIPS_CORE/DATAPATH/data_imm_exe_reg[9] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_data_exe_reg[9] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_data_exe_reg[6] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_data_exe_reg[7] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2>
*\MIPS_CORE/DATAPATH/inst_data_exe_reg[14] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2>
*\MIPS_CORE/DATAPATH/inst_data_exe_reg[15] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2>
*\MIPS_CORE/DATAPATH/inst_data_exe_reg[12] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2>
*\MIPS_CORE/DATAPATH/inst_data_exe_reg[13] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_data_exe_reg[4] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_data_exe_reg[5] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_data_exe_reg[2] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_data_exe_reg[3] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_data_exe_reg[0] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2=
)\MIPS_CORE/DATAPATH/inst_addr_exe_reg[0] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2<
(\MIPS_CORE/DATAPATH/data_imm_exe_reg[1] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
\INST_ROM/out_reg[30] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
\INST_ROM/out_reg[20] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
\INST_ROM/out_reg[9] 2default:default2
mips2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

\B_reg[2] 2default:default2
vga2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

\B_reg[1] 2default:default2
vga2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

\B_reg[0] 2default:default2
vga2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

\G_reg[0] 2default:default2
vga2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

\R_reg[0] 2default:default2
vga2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

\R_reg[1] 2default:default2
vga2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

\R_reg[2] 2default:default2
vga2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

\R_reg[3] 2default:default2
vga2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

\G_reg[1] 2default:default2
vga2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2

\G_reg[2] 2default:default2
vga2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\strdata_reg[55] 2default:default2
	vga_debug2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\strdata_reg[47] 2default:default2
	vga_debug2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\strdata_reg[46] 2default:default2
	vga_debug2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\strdata_reg[45] 2default:default2
	vga_debug2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\strdata_reg[39] 2default:default2
	vga_debug2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\strdata_reg[31] 2default:default2
	vga_debug2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\strdata_reg[23] 2default:default2
	vga_debug2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\strdata_reg[15] 2default:default2
	vga_debug2default:defaultZ8-3332h px
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2%
\strdata_reg[14] 2default:default2
	vga_debug2default:defaultZ8-3332h px
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
A
%s*synth2,
Start Area Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
zFinished Area Optimization : Time (s): cpu = 00:00:45 ; elapsed = 00:00:51 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
zFinished Area Optimization : Time (s): cpu = 00:00:45 ; elapsed = 00:00:51 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
?Finished Parallel Area Optimization  : Time (s): cpu = 00:00:45 ; elapsed = 00:00:51 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
?
%s*synth2?
?Finished Parallel Synthesis Optimization  : Time (s): cpu = 00:00:45 ; elapsed = 00:00:51 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
C
%s*synth2.
Start Timing Optimization
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
O
%s*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:08 ; elapsed = 00:01:18 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:01:09 ; elapsed = 00:01:19 . Memory (MB): peak = 642.637 ; gain = 427.965
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-
Start Technology Mapping
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2,
\MIPS/DATA_RAM/data_reg 2default:defaultZ8-4480h px
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2,
\MIPS/DATA_RAM/data_reg 2default:defaultZ8-4480h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:01:15 ; elapsed = 00:01:27 . Memory (MB): peak = 664.656 ; gain = 449.984
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
<
%s*synth2'
Start IO Insertion
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
N
%s*synth29
%Start Flattening Before IO Insertion
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
Q
%s*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
E
%s*synth20
Start Final Netlist Cleanup
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
,Flop %s is being inverted and renamed to %s.3906*oasys2/
VGA_DEBUG/ascii_code_reg[0]2default:default23
VGA_DEBUG/ascii_code_reg[0]_inv2default:defaultZ8-5365h px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Finished Final Netlist Cleanup
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:01:16 ; elapsed = 00:01:27 . Memory (MB): peak = 665.215 ; gain = 450.543
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
A
%s*synth2,

Report Check Netlist: 
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
r
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth px
r
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
L
%s*synth27
#Start Renaming Generated Instances
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:16 ; elapsed = 00:01:28 . Memory (MB): peak = 665.215 ; gain = 450.543
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
B
%s*synth2-

Report RTL Partitions: 
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
T
%s*synth2?
++-+--------------+------------+----------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
I
%s*synth24
 Start Rebuilding User Hierarchy
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:16 ; elapsed = 00:01:28 . Memory (MB): peak = 665.215 ; gain = 450.543
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
A
%s*synth2,

Static Shift Register:
2default:defaulth px
?
%s*synth2?
?+------------+------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth px
?
%s*synth2?
?|Module Name | RTL Name                     | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth px
?
%s*synth2?
?+------------+------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth px
?
%s*synth2?
?|mips_top    | DISPLAY/P2S_LED/buff_reg[13] | 6      | 1     | YES          | NO                 | NO                | 1      | 0       | 
2default:defaulth px
?
%s*synth2?
?|mips_top    | DISPLAY/P2S_SEG/buff_reg[61] | 6      | 7     | YES          | NO                 | NO                | 7      | 0       | 
2default:defaulth px
?
%s*synth2?
?+------------+------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth px
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
H
%s*synth23
Start Writing Synthesis Report
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
>
%s*synth2)

Report BlackBoxes: 
2default:defaulth px
G
%s*synth22
+-+--------------+----------+
2default:defaulth px
G
%s*synth22
| |BlackBox name |Instances |
2default:defaulth px
G
%s*synth22
+-+--------------+----------+
2default:defaulth px
G
%s*synth22
+-+--------------+----------+
2default:defaulth px
>
%s*synth2)

Report Cell Usage: 
2default:defaulth px
E
%s*synth20
+------+-----------+------+
2default:defaulth px
E
%s*synth20
|      |Cell       |Count |
2default:defaulth px
E
%s*synth20
+------+-----------+------+
2default:defaulth px
E
%s*synth20
|1     |BUFG       |     5|
2default:defaulth px
E
%s*synth20
|2     |CARRY4     |    54|
2default:defaulth px
E
%s*synth20
|3     |INV        |     2|
2default:defaulth px
E
%s*synth20
|4     |LUT1       |    41|
2default:defaulth px
E
%s*synth20
|5     |LUT2       |   142|
2default:defaulth px
E
%s*synth20
|6     |LUT3       |    96|
2default:defaulth px
E
%s*synth20
|7     |LUT4       |   213|
2default:defaulth px
E
%s*synth20
|8     |LUT5       |   355|
2default:defaulth px
E
%s*synth20
|9     |LUT6       |   782|
2default:defaulth px
E
%s*synth20
|10    |MMCME2_ADV |     1|
2default:defaulth px
E
%s*synth20
|11    |MUXF7      |    67|
2default:defaulth px
E
%s*synth20
|12    |RAM32M     |    24|
2default:defaulth px
E
%s*synth20
|13    |RAMB16_S1  |     1|
2default:defaulth px
E
%s*synth20
|14    |RAMB18E1   |     1|
2default:defaulth px
E
%s*synth20
|15    |SRL16E     |     8|
2default:defaulth px
E
%s*synth20
|16    |FDRE       |   757|
2default:defaulth px
E
%s*synth20
|17    |FDSE       |    26|
2default:defaulth px
E
%s*synth20
|18    |IBUF       |    11|
2default:defaulth px
E
%s*synth20
|19    |IBUFGDS    |     1|
2default:defaulth px
E
%s*synth20
|20    |OBUF       |    25|
2default:defaulth px
E
%s*synth20
+------+-----------+------+
2default:defaulth px
B
%s*synth2-

Report Instance Areas: 
2default:defaulth px
l
%s*synth2W
C+------+-----------------+--------------------------------+------+
2default:defaulth px
l
%s*synth2W
C|      |Instance         |Module                          |Cells |
2default:defaulth px
l
%s*synth2W
C+------+-----------------+--------------------------------+------+
2default:defaulth px
l
%s*synth2W
C|1     |top              |                                |  2612|
2default:defaulth px
l
%s*synth2W
C|2     |  BTN_SCAN       |btn_scan                        |    58|
2default:defaulth px
l
%s*synth2W
C|3     |  CLK_DIFF       |clk_diff                        |     1|
2default:defaulth px
l
%s*synth2W
C|4     |  CLK_GEN        |my_clk_gen                      |     6|
2default:defaulth px
l
%s*synth2W
C|5     |  DISPLAY        |display                         |   200|
2default:defaulth px
l
%s*synth2W
C|6     |    P2S_LED      |parallel2serial                 |    52|
2default:defaulth px
l
%s*synth2W
C|7     |    P2S_SEG      |parallel2serial__parameterized0 |    98|
2default:defaulth px
l
%s*synth2W
C|8     |  MIPS           |mips                            |  1889|
2default:defaulth px
l
%s*synth2W
C|9     |    DATA_RAM     |data_ram                        |    33|
2default:defaulth px
l
%s*synth2W
C|10    |    INST_ROM     |inst_rom                        |    30|
2default:defaulth px
l
%s*synth2W
C|11    |    MIPS_CORE    |mips_core                       |  1826|
2default:defaulth px
l
%s*synth2W
C|12    |      CONTROLLER |controller                      |     2|
2default:defaulth px
l
%s*synth2W
C|13    |      DATAPATH   |datapath                        |  1824|
2default:defaulth px
l
%s*synth2W
C|14    |        REGFILE  |regfile                         |   335|
2default:defaulth px
l
%s*synth2W
C|15    |  VGA            |vga                             |   293|
2default:defaulth px
l
%s*synth2W
C|16    |  VGA_DEBUG      |vga_debug                       |   107|
2default:defaulth px
l
%s*synth2W
C|17    |    FONT_8X16    |pc_vga_8x16_00_7F               |     2|
2default:defaulth px
l
%s*synth2W
C+------+-----------------+--------------------------------+------+
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:01:17 ; elapsed = 00:01:28 . Memory (MB): peak = 665.215 ; gain = 450.543
2default:defaulth px
{
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px
q
%s*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 103 warnings.
2default:defaulth px
?
%s*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:00 ; elapsed = 00:01:08 . Memory (MB): peak = 665.215 ; gain = 88.715
2default:defaulth px
?
%s*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:01:17 ; elapsed = 00:01:28 . Memory (MB): peak = 665.215 ; gain = 450.543
2default:defaulth px
?
 Translating synthesized netlist
350*projectZ1-571h px
?
?The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist or constraint file.
369*netlist2*
MIPS/DATA_RAM/data_reg2default:default2
RAMB18E12default:default2
VIRTEX62default:default2
7SERIES2default:defaultZ29-345h px
c
-Analyzing %s Unisim elements for replacement
17*netlist2
932default:defaultZ29-17h px
?
?The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist or constraint file.
369*netlist25
!VGA_DEBUG/FONT_8X16/BRAM_PC_VGA_02default:default2
RAMB18E12default:default2
VIRTEX62default:default2
7SERIES2default:defaultZ29-345h px
g
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px
H
)Preparing netlist for logic optimization
349*projectZ1-570h px
d
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140h px
d
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141h px
s
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
22default:default2
492default:defaultZ31-138h px
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 26 instances were transformed.
  IBUFGDS => IBUFDS: 1 instances
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 6 instances
  RAM32M => RAM32M (inverted pins: WCLK) (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 18 instances
  RAMB16_S1 => RAMB18E1: 1 instances
2default:defaultZ1-111h px
R
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
902default:default2
1092default:default2
02default:default2
02default:defaultZ4-41h px
[
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:172default:default2
00:01:282default:default2
666.9692default:default2
452.2972default:defaultZ17-268h px
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.203 . Memory (MB): peak = 666.969 ; gain = 0.000
*commonh px
}
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Jan 15 13:54:54 20192default:defaultZ17-206h px