onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.OExp00_Element xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {OExp00_Element.udo}

run -all

quit -force
