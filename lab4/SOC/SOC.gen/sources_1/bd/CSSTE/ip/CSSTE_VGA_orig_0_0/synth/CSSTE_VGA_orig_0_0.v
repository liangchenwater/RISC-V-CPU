// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:VGA_orig:1.0
// IP Revision: 3

(* X_CORE_INFO = "VGA,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "CSSTE_VGA_orig_0_0,VGA,{}" *)
(* CORE_GENERATION_INFO = "CSSTE_VGA_orig_0_0,VGA,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=VGA_orig,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module CSSTE_VGA_orig_0_0 (
  clk_25m,
  clk_100m,
  rst,
  pc,
  inst,
  alu_res,
  mem_wen,
  dmem_o_data,
  dmem_i_data,
  dmem_addr,
  hs,
  vs,
  vga_r,
  vga_g,
  vga_b
);

input wire clk_25m;
input wire clk_100m;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [31 : 0] pc;
input wire [31 : 0] inst;
input wire [31 : 0] alu_res;
input wire mem_wen;
input wire [31 : 0] dmem_o_data;
input wire [31 : 0] dmem_i_data;
input wire [31 : 0] dmem_addr;
output wire hs;
output wire vs;
output wire [3 : 0] vga_r;
output wire [3 : 0] vga_g;
output wire [3 : 0] vga_b;

  VGA inst (
    .clk_25m(clk_25m),
    .clk_100m(clk_100m),
    .rst(rst),
    .pc(pc),
    .inst(inst),
    .alu_res(alu_res),
    .mem_wen(mem_wen),
    .dmem_o_data(dmem_o_data),
    .dmem_i_data(dmem_i_data),
    .dmem_addr(dmem_addr),
    .hs(hs),
    .vs(vs),
    .vga_r(vga_r),
    .vga_g(vga_g),
    .vga_b(vga_b)
  );
endmodule
