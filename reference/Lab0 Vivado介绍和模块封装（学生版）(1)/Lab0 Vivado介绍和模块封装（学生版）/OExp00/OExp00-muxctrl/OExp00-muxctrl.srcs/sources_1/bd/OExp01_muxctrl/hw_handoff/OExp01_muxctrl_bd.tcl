
################################################################
# This is a generated script based on design: OExp01_muxctrl
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
# source OExp01_muxctrl_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k160tffg676-2L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name OExp01_muxctrl

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
  set I0 [ create_bd_port -dir I -from 4 -to 0 I0 ]
  set I1 [ create_bd_port -dir I -from 4 -to 0 I1 ]
  set o_0 [ create_bd_port -dir O -from 4 -to 0 o_0 ]
  set s [ create_bd_port -dir I -from 1 -to 0 s ]
  set s1 [ create_bd_port -dir I s1 ]
  set s2 [ create_bd_port -dir I -from 2 -to 0 s2 ]

  # Create instance: MUX2T1_5_0, and set properties
  set MUX2T1_5_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX2T1_5:1.0 MUX2T1_5_0 ]

  # Create instance: MUX2T1_5_1, and set properties
  set MUX2T1_5_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX2T1_5:1.0 MUX2T1_5_1 ]

  # Create instance: MUX4T1_5_1, and set properties
  set MUX4T1_5_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX4T1_5:1.0 MUX4T1_5_1 ]

  # Create instance: MUX8T1_8_0, and set properties
  set MUX8T1_8_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX8T1_8:1.0 MUX8T1_8_0 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN1_WIDTH {4} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN1_WIDTH {4} \
 ] $xlconcat_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {5} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {5} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_WIDTH {8} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {5} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {5} \
   CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {5} \
 ] $xlslice_2

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {5} \
 ] $xlslice_3

  # Create port connections
  connect_bd_net -net I0_0_1 [get_bd_ports I0] [get_bd_pins MUX2T1_5_0/I0] [get_bd_pins MUX2T1_5_1/I0]
  connect_bd_net -net I1_0_1 [get_bd_ports I1] [get_bd_pins MUX2T1_5_0/I1] [get_bd_pins MUX2T1_5_1/I1]
  connect_bd_net -net MUX2T1_5_0_o [get_bd_pins MUX2T1_5_0/o] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net MUX2T1_5_1_o [get_bd_pins MUX2T1_5_1/o] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net MUX4T1_5_1_o [get_bd_ports o_0] [get_bd_pins MUX4T1_5_1/o]
  connect_bd_net -net MUX8T1_8_0_o [get_bd_pins MUX8T1_8_0/o] [get_bd_pins xlslice_2/Din]
  connect_bd_net -net s_0_2 [get_bd_ports s1] [get_bd_pins MUX2T1_5_0/s]
  connect_bd_net -net s_0_3 [get_bd_ports s] [get_bd_pins MUX4T1_5_1/s]
  connect_bd_net -net s_0_4 [get_bd_ports s2] [get_bd_pins MUX8T1_8_0/s]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins MUX8T1_8_0/I0] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins MUX8T1_8_0/I1] [get_bd_pins xlconcat_1/dout] [get_bd_pins xlslice_3/Din]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins MUX4T1_5_1/I3] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins MUX4T1_5_1/I2] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins MUX8T1_8_0/I2] [get_bd_pins MUX8T1_8_0/I3] [get_bd_pins MUX8T1_8_0/I4] [get_bd_pins MUX8T1_8_0/I5] [get_bd_pins MUX8T1_8_0/I6] [get_bd_pins MUX8T1_8_0/I7] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins MUX2T1_5_1/s] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins xlconcat_0/In0] [get_bd_pins xlconcat_1/In1] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconcat_1/In0] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins MUX4T1_5_1/I0] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_pins MUX4T1_5_1/I1] [get_bd_pins xlslice_3/Dout]

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


