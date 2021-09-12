
################################################################
# This is a generated script based on design: CSSTE
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source CSSTE_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k160tffg676-2L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name CSSTE

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set BTN_y [ create_bd_port -dir I -from 3 -to 0 BTN_y ]
  set Blue [ create_bd_port -dir O -from 3 -to 0 Blue ]
  set Green [ create_bd_port -dir O -from 3 -to 0 Green ]
  set HSYNC [ create_bd_port -dir O HSYNC ]
  set LED_PEN [ create_bd_port -dir O LED_PEN ]
  set RSTN [ create_bd_port -dir I -type rst RSTN ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $RSTN
  set Red [ create_bd_port -dir O -from 3 -to 0 Red ]
  set SEG_PEN [ create_bd_port -dir O SEG_PEN ]
  set SW [ create_bd_port -dir I -from 15 -to 0 SW ]
  set VSYNC [ create_bd_port -dir O VSYNC ]
  set clk_100mhz [ create_bd_port -dir I -type clk clk_100mhz ]
  set led_clk [ create_bd_port -dir O -type clk led_clk ]
  set led_clrn [ create_bd_port -dir O led_clrn ]
  set led_sout [ create_bd_port -dir O led_sout ]
  set seg_clk [ create_bd_port -dir O -type clk seg_clk ]
  set seg_clrn [ create_bd_port -dir O seg_clrn ]
  set seg_sout [ create_bd_port -dir O seg_sout ]

  # Create instance: BTN_OK0, and set properties
  set BTN_OK0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 BTN_OK0 ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {4} \
 ] $BTN_OK0

  # Create instance: PC11_2, and set properties
  set PC11_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PC11_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {10} \
 ] $PC11_2

  # Create instance: PC31_2, and set properties
  set PC31_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PC31_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {30} \
 ] $PC31_2

  # Create instance: RAM_B_0, and set properties
  set RAM_B_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:RAM_B:1.0 RAM_B_0 ]

  # Create instance: SCPUC_0, and set properties
  set SCPUC_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SCPUC:1.0 SCPUC_0 ]

  # Create instance: U2, and set properties
  set U2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 U2 ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../../lab4/inter_mem.coe} \
   CONFIG.data_width {32} \
   CONFIG.depth {1024} \
   CONFIG.input_options {non_registered} \
   CONFIG.memory_type {rom} \
 ] $U2

  # Create instance: U4, and set properties
  set U4 [ create_bd_cell -type ip -vlnv xilinx.com:user:MIO_BUS:1.0 U4 ]

  # Create instance: U5, and set properties
  set U5 [ create_bd_cell -type ip -vlnv xilinx.com:user:Multi_8CH32:1.0 U5 ]

  # Create instance: U6, and set properties
  set U6 [ create_bd_cell -type ip -vlnv xilinx.com:user:SSeg7_Dev:1.0 U6 ]

  # Create instance: U7, and set properties
  set U7 [ create_bd_cell -type ip -vlnv xilinx.com:user:SPIO:1.0 U7 ]

  # Create instance: U8, and set properties
  set U8 [ create_bd_cell -type ip -vlnv xilinx.com:user:clk_div:1.0 U8 ]

  # Create instance: U9, and set properties
  set U9 [ create_bd_cell -type ip -vlnv xilinx.com:user:SAnti_jitter:1.0 U9 ]

  # Create instance: U10, and set properties
  set U10 [ create_bd_cell -type ip -vlnv xilinx.com:user:Counter_x:1.0 U10 ]

  # Create instance: VGA_0, and set properties
  set VGA_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:VGA:1.0 VGA_0 ]

  # Create instance: b2_0, and set properties
  set b2_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 b2_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $b2_0

  # Create instance: b64_0, and set properties
  set b64_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 b64_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {64} \
 ] $b64_0

  # Create instance: div1, and set properties
  set div1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 div1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DOUT_WIDTH {1} \
 ] $div1

  # Create instance: div20, and set properties
  set div20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 div20 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {20} \
   CONFIG.DIN_TO {20} \
   CONFIG.DOUT_WIDTH {1} \
 ] $div20

  # Create instance: div25, and set properties
  set div25 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 div25 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {25} \
   CONFIG.DIN_TO {25} \
   CONFIG.DOUT_WIDTH {1} \
 ] $div25

  # Create instance: div31_31, and set properties
  set div31_31 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 div31_31 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {32} \
   CONFIG.IN1_WIDTH {32} \
 ] $div31_31

  # Create instance: div6, and set properties
  set div6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 div6 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {6} \
   CONFIG.DIN_TO {6} \
   CONFIG.DOUT_WIDTH {1} \
 ] $div6

  # Create instance: div9, and set properties
  set div9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 div9 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {9} \
   CONFIG.DIN_TO {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $div9

  # Create instance: div11, and set properties
  set div11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 div11 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {11} \
   CONFIG.DOUT_WIDTH {1} \
 ] $div11

  # Create instance: sw0, and set properties
  set sw0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 sw0 ]
  set_property -dict [ list \
   CONFIG.DIN_WIDTH {16} \
 ] $sw0

  # Create instance: sw2, and set properties
  set sw2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 sw2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $sw2

  # Create instance: sw7_5, and set properties
  set sw7_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 sw7_5 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {5} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {3} \
 ] $sw7_5

  # Create instance: sw8, and set properties
  set sw8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 sw8 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $sw8

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {30} \
   CONFIG.IN1_WIDTH {2} \
 ] $xlconcat_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {10} \
 ] $xlslice_0

  # Create port connections
  connect_bd_net -net BTN_OK0_Dout [get_bd_pins BTN_OK0/Dout] [get_bd_pins U8/STEP]
  connect_bd_net -net Key_y_0_1 [get_bd_ports BTN_y] [get_bd_pins U9/Key_y]
  connect_bd_net -net PC11_2_Dout [get_bd_pins PC11_2/Dout] [get_bd_pins U2/a]
  connect_bd_net -net PC31_2_Dout [get_bd_pins PC31_2/Dout] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net RAM_B_0_douta [get_bd_pins RAM_B_0/douta] [get_bd_pins SCPUC_0/Data_in]
  connect_bd_net -net RSTN_0_1 [get_bd_ports RSTN] [get_bd_pins U9/RSTN]
  connect_bd_net -net SW_0_1 [get_bd_ports SW] [get_bd_pins U9/SW]
  connect_bd_net -net U10_counter0_OUT [get_bd_pins U10/counter0_OUT] [get_bd_pins U4/counter0_out]
  connect_bd_net -net U10_counter1_OUT [get_bd_pins U10/counter1_OUT] [get_bd_pins U4/counter1_out]
  connect_bd_net -net U10_counter2_OUT [get_bd_pins U10/counter2_OUT] [get_bd_pins U4/counter2_out]
  connect_bd_net -net U10_counter_out [get_bd_pins U10/counter_out] [get_bd_pins U4/counter_out] [get_bd_pins U5/data3]
  connect_bd_net -net U1_Addr_out [get_bd_pins SCPUC_0/Addr_out] [get_bd_pins U4/addr_bus] [get_bd_pins U5/data4] [get_bd_pins VGA_0/Addr_out] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net U1_Data_out [get_bd_pins RAM_B_0/dina] [get_bd_pins SCPUC_0/Data_out] [get_bd_pins U4/Cpu_data2bus] [get_bd_pins U5/data5] [get_bd_pins VGA_0/Data_out]
  connect_bd_net -net U1_PC_out [get_bd_pins PC11_2/Din] [get_bd_pins PC31_2/Din] [get_bd_pins SCPUC_0/PC_out] [get_bd_pins U5/data7] [get_bd_pins VGA_0/PC_IF]
  connect_bd_net -net U2_spo [get_bd_pins SCPUC_0/Inst_in] [get_bd_pins U2/spo] [get_bd_pins U5/data2]
  connect_bd_net -net U4_GPIOe0000000_we [get_bd_pins U4/GPIOe0000000_we] [get_bd_pins U5/EN]
  connect_bd_net -net U4_GPIOf0000000_we [get_bd_pins U4/GPIOf0000000_we] [get_bd_pins U7/EN]
  connect_bd_net -net U4_Peripheral_in [get_bd_pins U10/counter_val] [get_bd_pins U4/Peripheral_in] [get_bd_pins U5/Data0] [get_bd_pins U7/P_Data]
  connect_bd_net -net U4_counter_we [get_bd_pins U10/counter_we] [get_bd_pins U4/counter_we]
  connect_bd_net -net U5_Disp_num [get_bd_pins U5/Disp_num] [get_bd_pins U6/Hexs]
  connect_bd_net -net U5_LE_out [get_bd_pins U5/LE_out] [get_bd_pins U6/LES]
  connect_bd_net -net U5_point_out [get_bd_pins U5/point_out] [get_bd_pins U6/point]
  connect_bd_net -net U6_SEG_PEN [get_bd_ports SEG_PEN] [get_bd_pins U6/SEG_PEN]
  connect_bd_net -net U6_seg_clk [get_bd_ports seg_clk] [get_bd_pins U6/seg_clk]
  connect_bd_net -net U6_seg_clrn [get_bd_ports seg_clrn] [get_bd_pins U6/seg_clrn]
  connect_bd_net -net U6_seg_sout [get_bd_ports seg_sout] [get_bd_pins U6/seg_sout]
  connect_bd_net -net U7_LED_PEN [get_bd_ports LED_PEN] [get_bd_pins U7/LED_PEN]
  connect_bd_net -net U7_LED_out [get_bd_pins U4/led_out] [get_bd_pins U7/LED_out]
  connect_bd_net -net U7_counter_set [get_bd_pins U10/counter_ch] [get_bd_pins U7/counter_set]
  connect_bd_net -net U7_led_clk [get_bd_ports led_clk] [get_bd_pins U7/led_clk]
  connect_bd_net -net U7_led_clrn [get_bd_ports led_clrn] [get_bd_pins U7/led_clrn]
  connect_bd_net -net U7_led_sout [get_bd_ports led_sout] [get_bd_pins U7/led_sout]
  connect_bd_net -net U8_Clk_CPU [get_bd_pins SCPUC_0/clk] [get_bd_pins U8/Clk_CPU] [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net U8_clkdiv [get_bd_pins U8/clkdiv] [get_bd_pins div1/Din] [get_bd_pins div11/Din] [get_bd_pins div20/Din] [get_bd_pins div25/Din] [get_bd_pins div31_31/In0] [get_bd_pins div31_31/In1] [get_bd_pins div6/Din] [get_bd_pins div9/Din]
  connect_bd_net -net U9_BTN_OK [get_bd_pins BTN_OK0/Din] [get_bd_pins U4/BTN] [get_bd_pins U9/BTN_OK]
  connect_bd_net -net U9_SW_OK [get_bd_pins U4/SW] [get_bd_pins U9/SW_OK] [get_bd_pins sw0/Din] [get_bd_pins sw2/Din] [get_bd_pins sw7_5/Din] [get_bd_pins sw8/Din]
  connect_bd_net -net U9_rst [get_bd_pins SCPUC_0/rst] [get_bd_pins U10/rst] [get_bd_pins U4/rst] [get_bd_pins U5/rst] [get_bd_pins U6/rst] [get_bd_pins U7/rst] [get_bd_pins U8/rst] [get_bd_pins U9/rst] [get_bd_pins VGA_0/rst]
  connect_bd_net -net VGA_0_hs [get_bd_ports HSYNC] [get_bd_pins VGA_0/hs]
  connect_bd_net -net VGA_0_vga_b [get_bd_ports Blue] [get_bd_pins VGA_0/vga_b]
  connect_bd_net -net VGA_0_vga_g [get_bd_ports Green] [get_bd_pins VGA_0/vga_g]
  connect_bd_net -net VGA_0_vga_r [get_bd_ports Red] [get_bd_pins VGA_0/vga_r]
  connect_bd_net -net VGA_0_vs [get_bd_ports VSYNC] [get_bd_pins VGA_0/vs]
  connect_bd_net -net b2_0_dout [get_bd_pins b2_0/dout] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net b64_0_dout [get_bd_pins U5/LES] [get_bd_pins b64_0/dout]
  connect_bd_net -net clk_0_1 [get_bd_ports clk_100mhz] [get_bd_pins U4/clk] [get_bd_pins U6/clk] [get_bd_pins U8/clk] [get_bd_pins U9/clk] [get_bd_pins VGA_0/clk_100m]
  connect_bd_net -net div11_Dout [get_bd_pins U10/clk2] [get_bd_pins div11/Dout]
  connect_bd_net -net div1_Dout [get_bd_pins VGA_0/clk_25m] [get_bd_pins div1/Dout]
  connect_bd_net -net div20_Dout [get_bd_pins U6/Start] [get_bd_pins U7/Start] [get_bd_pins div20/Dout]
  connect_bd_net -net div25_Dout [get_bd_pins U6/flash] [get_bd_pins div25/Dout]
  connect_bd_net -net div31_31_dout [get_bd_pins U5/point_in] [get_bd_pins div31_31/dout]
  connect_bd_net -net div6_Dout [get_bd_pins U10/clk0] [get_bd_pins div6/Dout]
  connect_bd_net -net div9_Dout [get_bd_pins U10/clk1] [get_bd_pins div9/Dout]
  connect_bd_net -net pCPU_0_MemRW [get_bd_pins RAM_B_0/wea] [get_bd_pins SCPUC_0/MemRW] [get_bd_pins U4/mem_w] [get_bd_pins VGA_0/MemRW_Mem]
  connect_bd_net -net sw0_Dout [get_bd_pins U6/SW0] [get_bd_pins sw0/Dout]
  connect_bd_net -net sw2_Dout [get_bd_pins U8/SW2] [get_bd_pins sw2/Dout]
  connect_bd_net -net sw7_5_Dout [get_bd_pins U5/Test] [get_bd_pins sw7_5/Dout]
  connect_bd_net -net sw8_Dout [get_bd_pins U8/SW8] [get_bd_pins sw8/Dout]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins U10/clk] [get_bd_pins U5/clk] [get_bd_pins U7/clk] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins RAM_B_0/clka] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins U5/data1] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins RAM_B_0/addra] [get_bd_pins xlslice_0/Dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


