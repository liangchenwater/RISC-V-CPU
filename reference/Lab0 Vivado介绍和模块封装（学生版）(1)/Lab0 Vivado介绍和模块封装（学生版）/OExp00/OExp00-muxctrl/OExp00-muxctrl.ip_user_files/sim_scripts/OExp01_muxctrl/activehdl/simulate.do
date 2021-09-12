onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+OExp01_muxctrl -L xil_defaultlib -L xlslice_v1_0_1 -L xlconcat_v2_1_1 -L xlconstant_v1_1_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.OExp01_muxctrl xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {OExp01_muxctrl.udo}

run -all

endsim

quit -force
