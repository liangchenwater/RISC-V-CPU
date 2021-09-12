vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../bd/OExp00_Element/ipshared/ce01/and_32.v" \
"../../../bd/OExp00_Element/ip/OExp00_Element_and32_0_0/sim/OExp00_Element_and32_0_0.v" \
"../../../bd/OExp00_Element/sim/OExp00_Element.v" \


vlog -work xil_defaultlib \
"glbl.v"

