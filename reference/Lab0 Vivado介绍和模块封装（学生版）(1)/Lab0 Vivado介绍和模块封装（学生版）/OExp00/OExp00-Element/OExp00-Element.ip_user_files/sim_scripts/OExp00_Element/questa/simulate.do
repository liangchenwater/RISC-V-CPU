onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib OExp00_Element_opt

do {wave.do}

view wave
view structure
view signals

do {OExp00_Element.udo}

run -all

quit -force
