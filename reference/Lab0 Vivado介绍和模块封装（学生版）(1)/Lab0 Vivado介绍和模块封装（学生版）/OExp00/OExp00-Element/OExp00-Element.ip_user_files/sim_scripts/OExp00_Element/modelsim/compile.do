vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/OExp00_Element/ipshared/ce01/and_32.v" \
"../../../bd/OExp00_Element/ip/OExp00_Element_and32_0_0/sim/OExp00_Element_and32_0_0.v" \
"../../../bd/OExp00_Element/sim/OExp00_Element.v" \


vlog -work xil_defaultlib \
"glbl.v"

