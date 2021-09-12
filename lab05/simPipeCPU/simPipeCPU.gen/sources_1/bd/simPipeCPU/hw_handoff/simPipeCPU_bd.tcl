
################################################################
# This is a generated script based on design: simPipeCPU
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
# source simPipeCPU_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k160tffg676-2L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name simPipeCPU

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
  set clk [ create_bd_port -dir I -type clk clk ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $rst

  # Create instance: RAM_B_0, and set properties
  set RAM_B_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:RAM_B:1.0 RAM_B_0 ]

  # Create instance: ROM, and set properties
  set ROM [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 ROM ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../h.coe} \
   CONFIG.data_width {32} \
   CONFIG.depth {1024} \
   CONFIG.memory_type {rom} \
 ] $ROM

  # Create instance: addr11_2, and set properties
  set addr11_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 addr11_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {10} \
 ] $addr11_2

  # Create instance: pCPU_0, and set properties
  set pCPU_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:pCPU:1.0 pCPU_0 ]

  # Create instance: pc11_2, and set properties
  set pc11_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 pc11_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {10} \
 ] $pc11_2

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create port connections
  connect_bd_net -net RAM_B_0_douta [get_bd_pins RAM_B_0/douta] [get_bd_pins pCPU_0/Data_in]
  connect_bd_net -net addr11_2_Dout [get_bd_pins RAM_B_0/addra] [get_bd_pins addr11_2/Dout]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins pCPU_0/clk] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net dist_mem_gen_0_spo [get_bd_pins ROM/spo] [get_bd_pins pCPU_0/instr]
  connect_bd_net -net pCPU_0_Addr_out [get_bd_pins addr11_2/Din] [get_bd_pins pCPU_0/Addr_out]
  connect_bd_net -net pCPU_0_Data_out [get_bd_pins RAM_B_0/dina] [get_bd_pins pCPU_0/Data_out]
  connect_bd_net -net pCPU_0_MemRW [get_bd_pins RAM_B_0/wea] [get_bd_pins pCPU_0/MemRW]
  connect_bd_net -net pCPU_0_PC [get_bd_pins pCPU_0/PC_out] [get_bd_pins pc11_2/Din]
  connect_bd_net -net pc11_2_Dout [get_bd_pins ROM/a] [get_bd_pins pc11_2/Dout]
  connect_bd_net -net rst_0_1 [get_bd_ports rst] [get_bd_pins pCPU_0/rst]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins RAM_B_0/clka] [get_bd_pins util_vector_logic_0/Res]

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


