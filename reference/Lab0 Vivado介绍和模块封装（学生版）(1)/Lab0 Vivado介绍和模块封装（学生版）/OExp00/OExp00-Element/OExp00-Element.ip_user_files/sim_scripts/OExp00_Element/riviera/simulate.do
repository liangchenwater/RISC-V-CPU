onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+OExp00_Element -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.OExp00_Element xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {OExp00_Element.udo}

run -all

endsim

quit -force
