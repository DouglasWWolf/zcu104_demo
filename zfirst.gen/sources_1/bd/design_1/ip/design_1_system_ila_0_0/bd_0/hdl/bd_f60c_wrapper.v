//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f60c_wrapper.bd
//Design : bd_f60c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_f60c_wrapper
   (SLOT_0_ACC_FIFO_READ_empty_n,
    SLOT_0_ACC_FIFO_READ_rd_data,
    SLOT_0_ACC_FIFO_READ_rd_en,
    SLOT_1_AXI_araddr,
    SLOT_1_AXI_arprot,
    SLOT_1_AXI_arready,
    SLOT_1_AXI_arvalid,
    SLOT_1_AXI_awaddr,
    SLOT_1_AXI_awprot,
    SLOT_1_AXI_awready,
    SLOT_1_AXI_awvalid,
    SLOT_1_AXI_bready,
    SLOT_1_AXI_bresp,
    SLOT_1_AXI_bvalid,
    SLOT_1_AXI_rdata,
    SLOT_1_AXI_rready,
    SLOT_1_AXI_rresp,
    SLOT_1_AXI_rvalid,
    SLOT_1_AXI_wdata,
    SLOT_1_AXI_wready,
    SLOT_1_AXI_wstrb,
    SLOT_1_AXI_wvalid,
    SLOT_2_ACC_FIFO_READ_empty_n,
    SLOT_2_ACC_FIFO_READ_rd_data,
    SLOT_2_ACC_FIFO_READ_rd_en,
    clk,
    probe0,
    resetn);
  input SLOT_0_ACC_FIFO_READ_empty_n;
  input [33:0]SLOT_0_ACC_FIFO_READ_rd_data;
  input SLOT_0_ACC_FIFO_READ_rd_en;
  input [31:0]SLOT_1_AXI_araddr;
  input [2:0]SLOT_1_AXI_arprot;
  input SLOT_1_AXI_arready;
  input SLOT_1_AXI_arvalid;
  input [31:0]SLOT_1_AXI_awaddr;
  input [2:0]SLOT_1_AXI_awprot;
  input SLOT_1_AXI_awready;
  input SLOT_1_AXI_awvalid;
  input SLOT_1_AXI_bready;
  input [1:0]SLOT_1_AXI_bresp;
  input SLOT_1_AXI_bvalid;
  input [31:0]SLOT_1_AXI_rdata;
  input SLOT_1_AXI_rready;
  input [1:0]SLOT_1_AXI_rresp;
  input SLOT_1_AXI_rvalid;
  input [31:0]SLOT_1_AXI_wdata;
  input SLOT_1_AXI_wready;
  input [3:0]SLOT_1_AXI_wstrb;
  input SLOT_1_AXI_wvalid;
  input SLOT_2_ACC_FIFO_READ_empty_n;
  input [7:0]SLOT_2_ACC_FIFO_READ_rd_data;
  input SLOT_2_ACC_FIFO_READ_rd_en;
  input clk;
  input [0:0]probe0;
  input resetn;

  wire SLOT_0_ACC_FIFO_READ_empty_n;
  wire [33:0]SLOT_0_ACC_FIFO_READ_rd_data;
  wire SLOT_0_ACC_FIFO_READ_rd_en;
  wire [31:0]SLOT_1_AXI_araddr;
  wire [2:0]SLOT_1_AXI_arprot;
  wire SLOT_1_AXI_arready;
  wire SLOT_1_AXI_arvalid;
  wire [31:0]SLOT_1_AXI_awaddr;
  wire [2:0]SLOT_1_AXI_awprot;
  wire SLOT_1_AXI_awready;
  wire SLOT_1_AXI_awvalid;
  wire SLOT_1_AXI_bready;
  wire [1:0]SLOT_1_AXI_bresp;
  wire SLOT_1_AXI_bvalid;
  wire [31:0]SLOT_1_AXI_rdata;
  wire SLOT_1_AXI_rready;
  wire [1:0]SLOT_1_AXI_rresp;
  wire SLOT_1_AXI_rvalid;
  wire [31:0]SLOT_1_AXI_wdata;
  wire SLOT_1_AXI_wready;
  wire [3:0]SLOT_1_AXI_wstrb;
  wire SLOT_1_AXI_wvalid;
  wire SLOT_2_ACC_FIFO_READ_empty_n;
  wire [7:0]SLOT_2_ACC_FIFO_READ_rd_data;
  wire SLOT_2_ACC_FIFO_READ_rd_en;
  wire clk;
  wire [0:0]probe0;
  wire resetn;

  bd_f60c bd_f60c_i
       (.SLOT_0_ACC_FIFO_READ_empty_n(SLOT_0_ACC_FIFO_READ_empty_n),
        .SLOT_0_ACC_FIFO_READ_rd_data(SLOT_0_ACC_FIFO_READ_rd_data),
        .SLOT_0_ACC_FIFO_READ_rd_en(SLOT_0_ACC_FIFO_READ_rd_en),
        .SLOT_1_AXI_araddr(SLOT_1_AXI_araddr),
        .SLOT_1_AXI_arprot(SLOT_1_AXI_arprot),
        .SLOT_1_AXI_arready(SLOT_1_AXI_arready),
        .SLOT_1_AXI_arvalid(SLOT_1_AXI_arvalid),
        .SLOT_1_AXI_awaddr(SLOT_1_AXI_awaddr),
        .SLOT_1_AXI_awprot(SLOT_1_AXI_awprot),
        .SLOT_1_AXI_awready(SLOT_1_AXI_awready),
        .SLOT_1_AXI_awvalid(SLOT_1_AXI_awvalid),
        .SLOT_1_AXI_bready(SLOT_1_AXI_bready),
        .SLOT_1_AXI_bresp(SLOT_1_AXI_bresp),
        .SLOT_1_AXI_bvalid(SLOT_1_AXI_bvalid),
        .SLOT_1_AXI_rdata(SLOT_1_AXI_rdata),
        .SLOT_1_AXI_rready(SLOT_1_AXI_rready),
        .SLOT_1_AXI_rresp(SLOT_1_AXI_rresp),
        .SLOT_1_AXI_rvalid(SLOT_1_AXI_rvalid),
        .SLOT_1_AXI_wdata(SLOT_1_AXI_wdata),
        .SLOT_1_AXI_wready(SLOT_1_AXI_wready),
        .SLOT_1_AXI_wstrb(SLOT_1_AXI_wstrb),
        .SLOT_1_AXI_wvalid(SLOT_1_AXI_wvalid),
        .SLOT_2_ACC_FIFO_READ_empty_n(SLOT_2_ACC_FIFO_READ_empty_n),
        .SLOT_2_ACC_FIFO_READ_rd_data(SLOT_2_ACC_FIFO_READ_rd_data),
        .SLOT_2_ACC_FIFO_READ_rd_en(SLOT_2_ACC_FIFO_READ_rd_en),
        .clk(clk),
        .probe0(probe0),
        .resetn(resetn));
endmodule
