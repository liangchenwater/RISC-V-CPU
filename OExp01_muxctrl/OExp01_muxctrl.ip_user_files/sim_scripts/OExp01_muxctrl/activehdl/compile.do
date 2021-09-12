vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xlslice_v1_0_2
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/xlconstant_v1_1_7

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7

vlog -work xil_defaultlib  -v2k5 \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ipshared/8109/MUX2T1_5.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_MUX2T1_5_0_0/sim/OExp01_muxctrl_MUX2T1_5_0_0.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_MUX2T1_5_1_0/sim/OExp01_muxctrl_MUX2T1_5_1_0.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ipshared/4dec/MUX4T1_5.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_MUX4T1_5_1_0/sim/OExp01_muxctrl_MUX4T1_5_1_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlslice_0_0/sim/OExp01_muxctrl_xlslice_0_0.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlslice_1_0/sim/OExp01_muxctrl_xlslice_1_0.v" \

vlog -work xlconcat_v2_1_4  -v2k5 \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconcat_0_0/sim/OExp01_muxctrl_xlconcat_0_0.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconcat_1_0/sim/OExp01_muxctrl_xlconcat_1_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconstant_0_0/sim/OExp01_muxctrl_xlconstant_0_0.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconstant_0_1/sim/OExp01_muxctrl_xlconstant_0_1.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconstant_0_2/sim/OExp01_muxctrl_xlconstant_0_2.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconstant_0_3/sim/OExp01_muxctrl_xlconstant_0_3.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ipshared/b78a/MUX8T1_8.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_MUX8T1_8_0_1/sim/OExp01_muxctrl_MUX8T1_8_0_1.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlslice_1_1/sim/OExp01_muxctrl_xlslice_1_1.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlslice_3_0/sim/OExp01_muxctrl_xlslice_3_0.v" \
"../../../../OExp01_muxctrl.gen/sources_1/bd/OExp01_muxctrl/sim/OExp01_muxctrl.v" \

vlog -work xil_defaultlib \
"glbl.v"

