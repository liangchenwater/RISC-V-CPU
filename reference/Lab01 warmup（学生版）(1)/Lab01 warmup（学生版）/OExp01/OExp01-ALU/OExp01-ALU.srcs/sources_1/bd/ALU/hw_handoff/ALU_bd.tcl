
################################################################
# This is a generated script based on design: ALU
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
# source ALU_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k160tffg676-2L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name ALU

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
  set A [ create_bd_port -dir I -from 31 -to 0 A ]
  set ALU_operation [ create_bd_port -dir I -from 2 -to 0 ALU_operation ]
  set B [ create_bd_port -dir I -from 31 -to 0 B ]
  set o_0 [ create_bd_port -dir O o_0 ]
  set res [ create_bd_port -dir O -from 31 -to 0 res ]

  # Create instance: MUX8T1_32_0, and set properties
  set MUX8T1_32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX8T1_32:1.0 MUX8T1_32_0 ]

  # Create instance: SignalExt_32_0, and set properties
  set SignalExt_32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SignalExt_32:1.0 SignalExt_32_0 ]

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

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {31} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {31} \
 ] $xlconstant_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_WIDTH {33} \
   CONFIG.DOUT_WIDTH {32} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {3} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {32} \
   CONFIG.DIN_TO {32} \
   CONFIG.DIN_WIDTH {33} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_2

  # Create instance: xor32_0, and set properties
  set xor32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:xor32:1.0 xor32_0 ]

  # Create instance: xor32_1, and set properties
  set xor32_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:xor32:1.0 xor32_1 ]

  # Create port connections
  connect_bd_net -net A_0_1 [get_bd_ports A] [get_bd_pins addc_32_0/A] [get_bd_pins and32_0/A] [get_bd_pins nor32_0/A] [get_bd_pins or32_0/A] [get_bd_pins srl32_0/A] [get_bd_pins xor32_0/A]
  connect_bd_net -net B_0_1 [get_bd_ports B] [get_bd_pins and32_0/B] [get_bd_pins nor32_0/B] [get_bd_pins or32_0/B] [get_bd_pins srl32_0/B] [get_bd_pins xor32_0/B] [get_bd_pins xor32_1/B]
  connect_bd_net -net Din_0_1 [get_bd_ports ALU_operation] [get_bd_pins MUX8T1_32_0/s] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net MUX8T1_32_0_o [get_bd_ports res] [get_bd_pins MUX8T1_32_0/o] [get_bd_pins or_bit_32_0/A]
  connect_bd_net -net SignalExt_32_0_So [get_bd_pins SignalExt_32_0/So] [get_bd_pins xor32_1/A]
  connect_bd_net -net addc_32_0_S [get_bd_pins addc_32_0/S] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_2/Din]
  connect_bd_net -net and32_0_res [get_bd_pins MUX8T1_32_0/I0] [get_bd_pins and32_0/res]
  connect_bd_net -net nor32_0_res [get_bd_pins MUX8T1_32_0/I4] [get_bd_pins nor32_0/res]
  connect_bd_net -net or32_0_res [get_bd_pins MUX8T1_32_0/I1] [get_bd_pins or32_0/res]
  connect_bd_net -net or_bit_32_0_o [get_bd_ports o_0] [get_bd_pins or_bit_32_0/o]
  connect_bd_net -net srl32_0_res [get_bd_pins MUX8T1_32_0/I5] [get_bd_pins srl32_0/res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins MUX8T1_32_0/I7] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins MUX8T1_32_0/I2] [get_bd_pins MUX8T1_32_0/I6] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins SignalExt_32_0/S] [get_bd_pins addc_32_0/C0] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins xlconcat_0/In0] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net xor32_0_res [get_bd_pins MUX8T1_32_0/I3] [get_bd_pins xor32_0/res]
  connect_bd_net -net xor32_1_res [get_bd_pins addc_32_0/B] [get_bd_pins xor32_1/res]

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


