// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:fifo_to_axi4lite:1.0
// IP Revision: 1

(* X_CORE_INFO = "fifo_to_axi4lite,Vivado 2021.2" *)
(* CHECK_LICENSE_TYPE = "design_1_fifo_to_axi4lite_0_0,fifo_to_axi4lite,{}" *)
(* CORE_GENERATION_INFO = "design_1_fifo_to_axi4lite_0_0,fifo_to_axi4lite,{x_ipProduct=Vivado 2021.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=fifo_to_axi4lite,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,AXI_DATA_WIDTH=32,AXI_ADDR_WIDTH=32,CMD_FIFO_WIDTH=65,RSP_FIFO_WIDTH=34}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_fifo_to_axi4lite_0_0 (
  CMD_DATA,
  CMD_FULL_N,
  CMD_WREN,
  RSP_DATA,
  RSP_EMPTY_N,
  RSP_RDEN,
  M_AXI_ACLK,
  M_AXI_ARESETN,
  M_AXI_AWADDR,
  M_AXI_AWVALID,
  M_AXI_AWREADY,
  M_AXI_AWPROT,
  M_AXI_WDATA,
  M_AXI_WVALID,
  M_AXI_WSTRB,
  M_AXI_WREADY,
  M_AXI_BRESP,
  M_AXI_BVALID,
  M_AXI_BREADY,
  M_AXI_ARADDR,
  M_AXI_ARVALID,
  M_AXI_ARPROT,
  M_AXI_ARREADY,
  M_AXI_RDATA,
  M_AXI_RVALID,
  M_AXI_RRESP,
  M_AXI_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 CMD_FIFO WR_DATA" *)
input wire [64 : 0] CMD_DATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 CMD_FIFO FULL_N" *)
output wire CMD_FULL_N;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 CMD_FIFO WR_EN" *)
input wire CMD_WREN;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 RSP_FIFO RD_DATA" *)
output wire [33 : 0] RSP_DATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 RSP_FIFO EMPTY_N" *)
output wire RSP_EMPTY_N;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 RSP_FIFO RD_EN" *)
input wire RSP_RDEN;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_CLK125, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *)
input wire M_AXI_ACLK;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST" *)
input wire M_AXI_ARESETN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *)
output wire [31 : 0] M_AXI_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *)
output wire M_AXI_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *)
input wire M_AXI_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *)
output wire [2 : 0] M_AXI_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *)
output wire [31 : 0] M_AXI_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *)
output wire M_AXI_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *)
output wire [3 : 0] M_AXI_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *)
input wire M_AXI_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *)
input wire [1 : 0] M_AXI_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *)
input wire M_AXI_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *)
output wire M_AXI_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *)
output wire [31 : 0] M_AXI_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *)
output wire M_AXI_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *)
output wire [2 : 0] M_AXI_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *)
input wire M_AXI_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *)
input wire [31 : 0] M_AXI_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *)
input wire M_AXI_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *)
input wire [1 : 0] M_AXI_RRESP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_CLK125, NUM_READ_THREADS 1, NUM_WRITE_T\
HREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *)
output wire M_AXI_RREADY;

  fifo_to_axi4lite #(
    .AXI_DATA_WIDTH(32),
    .AXI_ADDR_WIDTH(32),
    .CMD_FIFO_WIDTH(65),
    .RSP_FIFO_WIDTH(34)
  ) inst (
    .CMD_DATA(CMD_DATA),
    .CMD_FULL_N(CMD_FULL_N),
    .CMD_WREN(CMD_WREN),
    .RSP_DATA(RSP_DATA),
    .RSP_EMPTY_N(RSP_EMPTY_N),
    .RSP_RDEN(RSP_RDEN),
    .M_AXI_ACLK(M_AXI_ACLK),
    .M_AXI_ARESETN(M_AXI_ARESETN),
    .M_AXI_AWADDR(M_AXI_AWADDR),
    .M_AXI_AWVALID(M_AXI_AWVALID),
    .M_AXI_AWREADY(M_AXI_AWREADY),
    .M_AXI_AWPROT(M_AXI_AWPROT),
    .M_AXI_WDATA(M_AXI_WDATA),
    .M_AXI_WVALID(M_AXI_WVALID),
    .M_AXI_WSTRB(M_AXI_WSTRB),
    .M_AXI_WREADY(M_AXI_WREADY),
    .M_AXI_BRESP(M_AXI_BRESP),
    .M_AXI_BVALID(M_AXI_BVALID),
    .M_AXI_BREADY(M_AXI_BREADY),
    .M_AXI_ARADDR(M_AXI_ARADDR),
    .M_AXI_ARVALID(M_AXI_ARVALID),
    .M_AXI_ARPROT(M_AXI_ARPROT),
    .M_AXI_ARREADY(M_AXI_ARREADY),
    .M_AXI_RDATA(M_AXI_RDATA),
    .M_AXI_RVALID(M_AXI_RVALID),
    .M_AXI_RRESP(M_AXI_RRESP),
    .M_AXI_RREADY(M_AXI_RREADY)
  );
endmodule
