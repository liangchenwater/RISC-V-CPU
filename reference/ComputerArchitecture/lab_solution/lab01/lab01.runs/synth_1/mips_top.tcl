# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7k325tffg676-2
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/archlabs/lab01/lab01.cache/wt [current_project]
set_property parent.project_path C:/archlabs/lab01/lab01.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog {
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/cpu/define.vh
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/cpu/mips_define.vh
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/cpu/function.vh
}
read_verilog -library xil_defaultlib {
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/cpu/regfile.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/cpu/alu.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/cpu/controller.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/cpu/datapath.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/peripherals/vga_8x16.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/peripherals/parallel2serial.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/cpu/inst_rom.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/cpu/mips_core.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/cpu/data_ram.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/peripherals/vga_debug.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/peripherals/vga.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/peripherals/my_clk_gen.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/peripherals/display.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/peripherals/clk_diff.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/peripherals/btn_scan.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/cpu/mips.v
  C:/archlabs/lab01/lab01.srcs/sources_1/imports/peripherals/mips_top.v
}
read_xdc C:/archlabs/lab01/lab01.srcs/constrs_1/imports/constrs/sword4.xdc
set_property used_in_implementation false [get_files C:/archlabs/lab01/lab01.srcs/constrs_1/imports/constrs/sword4.xdc]

catch { write_hwdef -file mips_top.hwdef }
synth_design -top mips_top -part xc7k325tffg676-2
write_checkpoint -noxdef mips_top.dcp
catch { report_utilization -file mips_top_utilization_synth.rpt -pb mips_top_utilization_synth.pb }
