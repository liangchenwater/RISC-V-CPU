vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/OExp00_Element/ipshared/ce01/and_32.v" \
"../../../bd/OExp00_Element/ip/OExp00_Element_and32_0_0/sim/OExp00_Element_and32_0_0.v" \
"../../../bd/OExp00_Element/sim/OExp00_Element.v" \


vlog -work xil_defaultlib \
"glbl.v"

