
################################################################
# This is a generated script based on design: OExp00_Element
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
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source OExp00_Element_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k160tffg676-2L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name OExp00_Element

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
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

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

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
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
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports

  # Create instance: Ext_imm16_0, and set properties
  set Ext_imm16_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Ext_imm16:1.0 Ext_imm16_0 ]

  # Create instance: MUX2T1_32_0, and set properties
  set MUX2T1_32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX2T1_32:1.0 MUX2T1_32_0 ]

  # Create instance: MUX2T1_5_0, and set properties
  set MUX2T1_5_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX2T1_5:1.0 MUX2T1_5_0 ]

  # Create instance: MUX2T1_64_0, and set properties
  set MUX2T1_64_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX2T1_64:1.0 MUX2T1_64_0 ]

  # Create instance: MUX2T1_8_0, and set properties
  set MUX2T1_8_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX2T1_8:1.0 MUX2T1_8_0 ]

  # Create instance: MUX4T1_32_0, and set properties
  set MUX4T1_32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX4T1_32:1.0 MUX4T1_32_0 ]

  # Create instance: MUX4T1_5_0, and set properties
  set MUX4T1_5_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX4T1_5:1.0 MUX4T1_5_0 ]

  # Create instance: MUX8T1_32_0, and set properties
  set MUX8T1_32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX8T1_32:1.0 MUX8T1_32_0 ]

  # Create instance: MUX8T1_8_0, and set properties
  set MUX8T1_8_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX8T1_8:1.0 MUX8T1_8_0 ]

  # Create instance: SignalExt_32_0, and set properties
  set SignalExt_32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SignalExt_32:1.0 SignalExt_32_0 ]

  # Create instance: add_32_0, and set properties
  set add_32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:add_32:1.0 add_32_0 ]

  # Create instance: addc_32_0, and set properties
  set addc_32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:addc_32:1.0 addc_32_0 ]

  # Create instance: and32_0, and set properties
  set and32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:and32:1.0 and32_0 ]

  # Create instance: nor32_0, and set properties
  set nor32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:nor32:1.0 nor32_0 ]

  # Create instance: or32_0, and set properties
  set or32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:or32:1.0 or32_0 ]

  # Create instance: or_bit_32_0, and set properties
  set or_bit_32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:or_bit_32:1.0 or_bit_32_0 ]

  # Create instance: srl32_0, and set properties
  set srl32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:srl32:1.0 srl32_0 ]

  # Create instance: xor32_0, and set properties
  set xor32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:xor32:1.0 xor32_0 ]

  # Create port connections

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


