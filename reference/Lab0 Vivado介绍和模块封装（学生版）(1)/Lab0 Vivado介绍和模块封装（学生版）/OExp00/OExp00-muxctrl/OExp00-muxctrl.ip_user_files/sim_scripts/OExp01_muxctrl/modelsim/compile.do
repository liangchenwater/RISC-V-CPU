vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_1
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/xlconstant_v1_1_3

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_1 modelsim_lib/msim/xlslice_v1_0_1
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap xlconstant_v1_1_3 modelsim_lib/msim/xlconstant_v1_1_3

vlog -work xil_defaultlib -64 -incr \
"../../../bd/OExp01_muxctrl/ipshared/8109/MUX2T1_5.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_MUX2T1_5_0_0/sim/OExp01_muxctrl_MUX2T1_5_0_0.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_MUX2T1_5_1_0/sim/OExp01_muxctrl_MUX2T1_5_1_0.v" \
"../../../bd/OExp01_muxctrl/ipshared/4dec/MUX4T1_5.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_MUX4T1_5_1_0/sim/OExp01_muxctrl_MUX4T1_5_1_0.v" \

vlog -work xlslice_v1_0_1 -64 -incr \
"../../../../OExp01-muxctrl.srcs/sources_1/bd/OExp01_muxctrl/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlslice_0_0/sim/OExp01_muxctrl_xlslice_0_0.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlslice_1_0/sim/OExp01_muxctrl_xlslice_1_0.v" \

vlog -work xlconcat_v2_1_1 -64 -incr \
"../../../../OExp01-muxctrl.srcs/sources_1/bd/OExp01_muxctrl/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconcat_0_0/sim/OExp01_muxctrl_xlconcat_0_0.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconcat_1_0/sim/OExp01_muxctrl_xlconcat_1_0.v" \

vlog -work xlconstant_v1_1_3 -64 -incr \
"../../../../OExp01-muxctrl.srcs/sources_1/bd/OExp01_muxctrl/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconstant_0_0/sim/OExp01_muxctrl_xlconstant_0_0.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconstant_1_0/sim/OExp01_muxctrl_xlconstant_1_0.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlslice_2_0/sim/OExp01_muxctrl_xlslice_2_0.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlslice_3_0/sim/OExp01_muxctrl_xlslice_3_0.v" \
"../../../bd/OExp01_muxctrl/ipshared/b78a/MUX8T1_8.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_MUX8T1_8_0_0/sim/OExp01_muxctrl_MUX8T1_8_0_0.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconstant_2_0/sim/OExp01_muxctrl_xlconstant_2_0.v" \
"../../../bd/OExp01_muxctrl/ip/OExp01_muxctrl_xlconstant_3_0/sim/OExp01_muxctrl_xlconstant_3_0.v" \
"../../../bd/OExp01_muxctrl/sim/OExp01_muxctrl.v" \

vlog -work xil_defaultlib \
"glbl.v"

