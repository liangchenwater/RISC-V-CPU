
>
Refreshing IP repositories
234*coregenZ19-234h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2t
`c:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_12default:defaultZ19-1700h px? 
u
"Loaded Vivado IP repository '%s'.
1332*coregen2,
D:/Vivado/2020.2/data/ip2default:defaultZ19-2313h px? 
?
jDuplicate IP found for '%s'. The one found in IP location '%s' will take precedence over the same IP in %s1161*coregen2+
xilinx.com:user:VGA:1.02default:default2t
`c:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_12default:default2?
|location c:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework
2default:defaultZ19-1663h px? 
?
?The host OS only allows 260 characters in a normal path. The IP cache path is more than 80 characters. If you experience issues with IP caching, please consider changing the IP cache to a location with a shorter path. Alternately consider using the OS subst command to map part of the path to a drive letter. 
Current IP cache path is %s 2293*coregen2n
Zc:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.cache/ip2default:defaultZ19-4995h px? 
r
Command: %s
53*	vivadotcl2A
-synth_design -top VGA -part xc7k160tffg676-2L2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7k160t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7k160t2default:defaultZ17-349h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
109322default:defaultZ8-7075h px? 
?
%s*synth2?
rStarting Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 1106.480 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
VGA2default:default2
 2default:default2?
xC:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework/VGA.v2default:default2
22default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
VgaController2default:default2
 2default:default2?
?C:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework/VgaController.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter HS_1 bound to: 96 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter VS_1 bound to: 2 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter HS_2 bound to: 157 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter VS_2 bound to: 57 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter WIDTH bound to: 640 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter HEIGHT bound to: 480 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
VgaController2default:default2
 2default:default2
12default:default2
12default:default2?
?C:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework/VgaController.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

VgaDisplay2default:default2
 2default:default2?
C:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework/VgaDisplay.v2default:default2
12default:default8@Z8-6157h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2(
D://vga_debugger.mem2default:default2?
C:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework/VgaDisplay.v2default:default2
152default:default8@Z8-3876h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2%
D://font_8x16.mem2default:default2?
C:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework/VgaDisplay.v2default:default2
252default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

VgaDisplay2default:default2
 2default:default2
22default:default2
12default:default2?
C:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework/VgaDisplay.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
VgaDebugger2default:default2
 2default:default2?
?C:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework/VgaDebugger.v2default:default2
312default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	Hex2Ascii2default:default2
 2default:default2?
?C:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework/VgaDebugger.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Hex2Ascii2default:default2
 2default:default2
32default:default2
12default:default2?
?C:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework/VgaDebugger.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VgaDebugger2default:default2
 2default:default2
42default:default2
12default:default2?
?C:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework/VgaDebugger.v2default:default2
312default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VGA2default:default2
 2default:default2
52default:default2
12default:default2?
xC:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.srcs/sources_1/imports/Framework/VGA.v2default:default2
22default:default8@Z8-6155h px? 
?
%s*synth2?
rFinished Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1106.480 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:09 . Memory (MB): peak = 1106.480 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Loading part: xc7k160tffg676-2L
2default:defaulth p
x
? 
X
Loading part %s157*device2%
xc7k160tffg676-2L2default:defaultZ21-403h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:09 . Memory (MB): peak = 1106.480 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:16 . Memory (MB): peak = 1106.480 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	 416 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	 416 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2m
YPart Resources:
DSPs: 600 (col length:100)
BRAMs: 650 (col length: RAMB18 100 RAMB36 50)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:40 . Memory (MB): peak = 1252.469 ; gain = 145.988
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
M
%s*synth25
!
ROM: Preliminary Mapping	Report
2default:defaulth px? 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px? 
j
%s*synth2R
>|Module Name | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px? 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px? 
j
%s*synth2R
>|VgaDisplay  | p_0_out    | 4096x8        | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|VGA         | p_0_out    | 4096x8        | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>+------------+------------+---------------+----------------+

2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
p+------------+------------------------------+-----------+----------------------+------------------------------+
2default:defaulth px? 
?
%s*synth2?
q|Module Name | RTL Object                   | Inference | Size (Depth x Width) | Primitives                   | 
2default:defaulth px? 
?
%s*synth2?
p+------------+------------------------------+-----------+----------------------+------------------------------+
2default:defaulth px? 
?
%s*synth2?
q|VGA         | vga_display/display_data_reg | Implied   | 4 K x 7              | RAM64X1D x 128	RAM64M x 128	 | 
2default:defaulth px? 
?
%s*synth2?
q+------------+------------------------------+-----------+----------------------+------------------------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:40 . Memory (MB): peak = 1252.469 ; gain = 145.988
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2?
p+------------+------------------------------+-----------+----------------------+------------------------------+
2default:defaulth p
x
? 
?
%s
*synth2?
q|Module Name | RTL Object                   | Inference | Size (Depth x Width) | Primitives                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
p+------------+------------------------------+-----------+----------------------+------------------------------+
2default:defaulth p
x
? 
?
%s
*synth2?
q|VGA         | vga_display/display_data_reg | Implied   | 4 K x 7              | RAM64X1D x 128	RAM64M x 128	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
q+------------+------------------------------+-----------+----------------------+------------------------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:33 ; elapsed = 00:00:41 . Memory (MB): peak = 1252.469 ; gain = 145.988
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:37 ; elapsed = 00:00:45 . Memory (MB): peak = 1252.469 ; gain = 145.988
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:37 ; elapsed = 00:00:45 . Memory (MB): peak = 1252.469 ; gain = 145.988
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:37 ; elapsed = 00:00:45 . Memory (MB): peak = 1252.469 ; gain = 145.988
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:37 ; elapsed = 00:00:45 . Memory (MB): peak = 1252.469 ; gain = 145.988
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:37 ; elapsed = 00:00:46 . Memory (MB): peak = 1252.469 ; gain = 145.988
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:37 ; elapsed = 00:00:46 . Memory (MB): peak = 1252.469 ; gain = 145.988
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|1     |BUFG     |     2|
2default:defaulth px? 
F
%s*synth2.
|2     |CARRY4   |    11|
2default:defaulth px? 
F
%s*synth2.
|3     |LUT1     |     3|
2default:defaulth px? 
F
%s*synth2.
|4     |LUT2     |    55|
2default:defaulth px? 
F
%s*synth2.
|5     |LUT3     |    36|
2default:defaulth px? 
F
%s*synth2.
|6     |LUT4     |    65|
2default:defaulth px? 
F
%s*synth2.
|7     |LUT5     |    96|
2default:defaulth px? 
F
%s*synth2.
|8     |LUT6     |   826|
2default:defaulth px? 
F
%s*synth2.
|9     |MUXF7    |   243|
2default:defaulth px? 
F
%s*synth2.
|10    |MUXF8    |   120|
2default:defaulth px? 
F
%s*synth2.
|11    |RAM64M   |   128|
2default:defaulth px? 
F
%s*synth2.
|12    |RAM64X1D |    64|
2default:defaulth px? 
F
%s*synth2.
|13    |FDRE     |    37|
2default:defaulth px? 
F
%s*synth2.
|14    |FDSE     |     2|
2default:defaulth px? 
F
%s*synth2.
|15    |IBUF     |   261|
2default:defaulth px? 
F
%s*synth2.
|16    |OBUF     |    14|
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
]
%s
*synth2E
1+------+-----------------+--------------+------+
2default:defaulth p
x
? 
]
%s
*synth2E
1|      |Instance         |Module        |Cells |
2default:defaulth p
x
? 
]
%s
*synth2E
1+------+-----------------+--------------+------+
2default:defaulth p
x
? 
]
%s
*synth2E
1|1     |top              |              |  1963|
2default:defaulth p
x
? 
]
%s
*synth2E
1|2     |  vga_controller |VgaController |   809|
2default:defaulth p
x
? 
]
%s
*synth2E
1|3     |  vga_debugger   |VgaDebugger   |   399|
2default:defaulth p
x
? 
]
%s
*synth2E
1|4     |  vga_display    |VgaDisplay    |   478|
2default:defaulth p
x
? 
]
%s
*synth2E
1+------+-----------------+--------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:37 ; elapsed = 00:00:46 . Memory (MB): peak = 1252.469 ; gain = 145.988
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:37 ; elapsed = 00:00:46 . Memory (MB): peak = 1252.469 ; gain = 145.988
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:37 ; elapsed = 00:00:46 . Memory (MB): peak = 1252.469 ; gain = 145.988
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0402default:default2
1252.4692default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
5662default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1252.4692default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 192 instances were transformed.
  RAM64M => RAM64M (RAMD64E(x4)): 128 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 64 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
272default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:452default:default2
00:00:552default:default2
1252.4692default:default2
145.9882default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2z
fC:/Users/liang/Desktop/OrgLab/reference/Lab05/Lab05_1/OExp05-Pipeline_CPU/VGA/VGA.runs/synth_1/VGA.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file VGA_utilization_synth.rpt -pb VGA_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Jun 25 16:31:55 20212default:defaultZ17-206h px? 


End Record