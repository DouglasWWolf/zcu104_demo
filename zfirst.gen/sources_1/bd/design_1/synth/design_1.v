//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sun May  8 04:47:14 2022
//Host        : DESKTOP-06LMOH5 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=4,da_clkrst_cnt=9,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK_125_N,
    CLK_125_P,
    CPU_RESET,
    GPIO_PB1,
    GPIO_PB2,
    GPIO_SW,
    UART2_TXD);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_125_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_125_N, CLK_DOMAIN design_1_CLK_125_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK_125_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_125_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_125_P, CLK_DOMAIN design_1_CLK_125_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK_125_P;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CPU_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CPU_RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input CPU_RESET;
  input GPIO_PB1;
  input GPIO_PB2;
  input [3:0]GPIO_SW;
  output UART2_TXD;

  wire PIN_0_1;
  wire PIN_0_2;
  wire [33:0]axi4_lite_master_0_AMCI_MISO;
  wire [31:0]axi4_lite_master_0_M_AXI_ARADDR;
  wire [2:0]axi4_lite_master_0_M_AXI_ARPROT;
  wire axi4_lite_master_0_M_AXI_ARREADY;
  wire axi4_lite_master_0_M_AXI_ARVALID;
  wire [31:0]axi4_lite_master_0_M_AXI_AWADDR;
  wire [2:0]axi4_lite_master_0_M_AXI_AWPROT;
  wire axi4_lite_master_0_M_AXI_AWREADY;
  wire axi4_lite_master_0_M_AXI_AWVALID;
  wire axi4_lite_master_0_M_AXI_BREADY;
  wire [1:0]axi4_lite_master_0_M_AXI_BRESP;
  wire axi4_lite_master_0_M_AXI_BVALID;
  wire [31:0]axi4_lite_master_0_M_AXI_RDATA;
  wire axi4_lite_master_0_M_AXI_RREADY;
  wire [1:0]axi4_lite_master_0_M_AXI_RRESP;
  wire axi4_lite_master_0_M_AXI_RVALID;
  wire [31:0]axi4_lite_master_0_M_AXI_WDATA;
  wire axi4_lite_master_0_M_AXI_WREADY;
  wire [3:0]axi4_lite_master_0_M_AXI_WSTRB;
  wire axi4_lite_master_0_M_AXI_WVALID;
  wire button_down_Q;
  wire button_up_Q;
  wire clk_in1_n_0_1;
  wire clk_in1_p_0_1;
  wire clk_wiz_0_CLK125;
  wire controller_0_ap_done;
  wire controller_0_axi_cmd_fifo_FULL_N;
  wire [64:0]controller_0_axi_cmd_fifo_WR_DATA;
  wire controller_0_axi_cmd_fifo_WR_EN;
  wire controller_0_axi_rsp_fifo_EMPTY_N;
  wire [33:0]controller_0_axi_rsp_fifo_RD_DATA;
  wire controller_0_axi_rsp_fifo_RD_EN;
  wire controller_0_uart_xmit_fifo_FULL_N;
  wire [7:0]controller_0_uart_xmit_fifo_WR_DATA;
  wire controller_0_uart_xmit_fifo_WR_EN;
  wire ext_reset_in_0_1;
  wire [31:0]fifo_to_axi4lite_0_M_AXI_ARADDR;
  wire [2:0]fifo_to_axi4lite_0_M_AXI_ARPROT;
  wire fifo_to_axi4lite_0_M_AXI_ARREADY;
  wire fifo_to_axi4lite_0_M_AXI_ARVALID;
  wire [31:0]fifo_to_axi4lite_0_M_AXI_AWADDR;
  wire [2:0]fifo_to_axi4lite_0_M_AXI_AWPROT;
  wire fifo_to_axi4lite_0_M_AXI_AWREADY;
  wire fifo_to_axi4lite_0_M_AXI_AWVALID;
  wire fifo_to_axi4lite_0_M_AXI_BREADY;
  wire [1:0]fifo_to_axi4lite_0_M_AXI_BRESP;
  wire fifo_to_axi4lite_0_M_AXI_BVALID;
  wire [31:0]fifo_to_axi4lite_0_M_AXI_RDATA;
  wire fifo_to_axi4lite_0_M_AXI_RREADY;
  wire [1:0]fifo_to_axi4lite_0_M_AXI_RRESP;
  wire fifo_to_axi4lite_0_M_AXI_RVALID;
  wire [31:0]fifo_to_axi4lite_0_M_AXI_WDATA;
  wire fifo_to_axi4lite_0_M_AXI_WREADY;
  wire [3:0]fifo_to_axi4lite_0_M_AXI_WSTRB;
  wire fifo_to_axi4lite_0_M_AXI_WVALID;
  wire [31:0]fifo_to_uart_0_M_AXI_ARADDR;
  wire [2:0]fifo_to_uart_0_M_AXI_ARPROT;
  wire fifo_to_uart_0_M_AXI_ARREADY;
  wire fifo_to_uart_0_M_AXI_ARVALID;
  wire [31:0]fifo_to_uart_0_M_AXI_AWADDR;
  wire [2:0]fifo_to_uart_0_M_AXI_AWPROT;
  wire fifo_to_uart_0_M_AXI_AWREADY;
  wire fifo_to_uart_0_M_AXI_AWVALID;
  wire fifo_to_uart_0_M_AXI_BREADY;
  wire [1:0]fifo_to_uart_0_M_AXI_BRESP;
  wire fifo_to_uart_0_M_AXI_BVALID;
  wire [31:0]fifo_to_uart_0_M_AXI_RDATA;
  wire fifo_to_uart_0_M_AXI_RREADY;
  wire [1:0]fifo_to_uart_0_M_AXI_RRESP;
  wire fifo_to_uart_0_M_AXI_RVALID;
  wire [31:0]fifo_to_uart_0_M_AXI_WDATA;
  wire fifo_to_uart_0_M_AXI_WREADY;
  wire [3:0]fifo_to_uart_0_M_AXI_WSTRB;
  wire fifo_to_uart_0_M_AXI_WVALID;
  wire [3:0]gpio_io_i_0_1;
  wire [0:0]master_reset_interconnect_aresetn;
  wire [0:0]master_reset_peripheral_aresetn;
  wire [0:0]master_reset_peripheral_reset;
  wire [8:0]periph_interconnect_M01_AXI_ARADDR;
  wire periph_interconnect_M01_AXI_ARREADY;
  wire periph_interconnect_M01_AXI_ARVALID;
  wire [8:0]periph_interconnect_M01_AXI_AWADDR;
  wire periph_interconnect_M01_AXI_AWREADY;
  wire periph_interconnect_M01_AXI_AWVALID;
  wire periph_interconnect_M01_AXI_BREADY;
  wire [1:0]periph_interconnect_M01_AXI_BRESP;
  wire periph_interconnect_M01_AXI_BVALID;
  wire [31:0]periph_interconnect_M01_AXI_RDATA;
  wire periph_interconnect_M01_AXI_RREADY;
  wire [1:0]periph_interconnect_M01_AXI_RRESP;
  wire periph_interconnect_M01_AXI_RVALID;
  wire [31:0]periph_interconnect_M01_AXI_WDATA;
  wire periph_interconnect_M01_AXI_WREADY;
  wire [3:0]periph_interconnect_M01_AXI_WSTRB;
  wire periph_interconnect_M01_AXI_WVALID;
  wire [3:0]smartconnect_0_M00_AXI_ARADDR;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [3:0]smartconnect_0_M00_AXI_AWADDR;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire uart_tx;
  wire [97:0]vcontroller_0_AMCI_MOSI;
  wire vcontroller_0_START;

  assign PIN_0_1 = GPIO_PB2;
  assign PIN_0_2 = GPIO_PB1;
  assign UART2_TXD = uart_tx;
  assign clk_in1_n_0_1 = CLK_125_N;
  assign clk_in1_p_0_1 = CLK_125_P;
  assign ext_reset_in_0_1 = CPU_RESET;
  assign gpio_io_i_0_1 = GPIO_SW[3:0];
  design_1_axi4_lite_master_0_0 axi4_lite_master_0
       (.AMCI_MISO(axi4_lite_master_0_AMCI_MISO),
        .AMCI_MOSI(vcontroller_0_AMCI_MOSI),
        .M_AXI_ACLK(clk_wiz_0_CLK125),
        .M_AXI_ARADDR(axi4_lite_master_0_M_AXI_ARADDR),
        .M_AXI_ARESETN(master_reset_interconnect_aresetn),
        .M_AXI_ARPROT(axi4_lite_master_0_M_AXI_ARPROT),
        .M_AXI_ARREADY(axi4_lite_master_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(axi4_lite_master_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(axi4_lite_master_0_M_AXI_AWADDR),
        .M_AXI_AWPROT(axi4_lite_master_0_M_AXI_AWPROT),
        .M_AXI_AWREADY(axi4_lite_master_0_M_AXI_AWREADY),
        .M_AXI_AWVALID(axi4_lite_master_0_M_AXI_AWVALID),
        .M_AXI_BREADY(axi4_lite_master_0_M_AXI_BREADY),
        .M_AXI_BRESP(axi4_lite_master_0_M_AXI_BRESP),
        .M_AXI_BVALID(axi4_lite_master_0_M_AXI_BVALID),
        .M_AXI_RDATA(axi4_lite_master_0_M_AXI_RDATA),
        .M_AXI_RREADY(axi4_lite_master_0_M_AXI_RREADY),
        .M_AXI_RRESP(axi4_lite_master_0_M_AXI_RRESP),
        .M_AXI_RVALID(axi4_lite_master_0_M_AXI_RVALID),
        .M_AXI_WDATA(axi4_lite_master_0_M_AXI_WDATA),
        .M_AXI_WREADY(axi4_lite_master_0_M_AXI_WREADY),
        .M_AXI_WSTRB(axi4_lite_master_0_M_AXI_WSTRB),
        .M_AXI_WVALID(axi4_lite_master_0_M_AXI_WVALID));
  design_1_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(gpio_io_i_0_1),
        .s_axi_aclk(clk_wiz_0_CLK125),
        .s_axi_araddr(periph_interconnect_M01_AXI_ARADDR),
        .s_axi_aresetn(master_reset_peripheral_aresetn),
        .s_axi_arready(periph_interconnect_M01_AXI_ARREADY),
        .s_axi_arvalid(periph_interconnect_M01_AXI_ARVALID),
        .s_axi_awaddr(periph_interconnect_M01_AXI_AWADDR),
        .s_axi_awready(periph_interconnect_M01_AXI_AWREADY),
        .s_axi_awvalid(periph_interconnect_M01_AXI_AWVALID),
        .s_axi_bready(periph_interconnect_M01_AXI_BREADY),
        .s_axi_bresp(periph_interconnect_M01_AXI_BRESP),
        .s_axi_bvalid(periph_interconnect_M01_AXI_BVALID),
        .s_axi_rdata(periph_interconnect_M01_AXI_RDATA),
        .s_axi_rready(periph_interconnect_M01_AXI_RREADY),
        .s_axi_rresp(periph_interconnect_M01_AXI_RRESP),
        .s_axi_rvalid(periph_interconnect_M01_AXI_RVALID),
        .s_axi_wdata(periph_interconnect_M01_AXI_WDATA),
        .s_axi_wready(periph_interconnect_M01_AXI_WREADY),
        .s_axi_wstrb(periph_interconnect_M01_AXI_WSTRB),
        .s_axi_wvalid(periph_interconnect_M01_AXI_WVALID));
  design_1_button_0_1 button_down
       (.CLK(clk_wiz_0_CLK125),
        .PIN(PIN_0_2),
        .Q(button_down_Q));
  design_1_button_0_0 button_up
       (.CLK(clk_wiz_0_CLK125),
        .PIN(PIN_0_1),
        .Q(button_up_Q));
  design_1_clk_wiz_0_0 clock_gen
       (.CLK125(clk_wiz_0_CLK125),
        .clk_in1_n(clk_in1_n_0_1),
        .clk_in1_p(clk_in1_p_0_1));
  design_1_controller_0_0 controller_0
       (.ap_clk(clk_wiz_0_CLK125),
        .ap_done(controller_0_ap_done),
        .ap_rst(master_reset_peripheral_reset),
        .ap_start(vcontroller_0_START),
        .axi_cmd_fifo_din(controller_0_axi_cmd_fifo_WR_DATA),
        .axi_cmd_fifo_full_n(controller_0_axi_cmd_fifo_FULL_N),
        .axi_cmd_fifo_write(controller_0_axi_cmd_fifo_WR_EN),
        .axi_rsp_fifo_dout(controller_0_axi_rsp_fifo_RD_DATA),
        .axi_rsp_fifo_empty_n(controller_0_axi_rsp_fifo_EMPTY_N),
        .axi_rsp_fifo_read(controller_0_axi_rsp_fifo_RD_EN),
        .uart_xmit_fifo_din(controller_0_uart_xmit_fifo_WR_DATA),
        .uart_xmit_fifo_full_n(controller_0_uart_xmit_fifo_FULL_N),
        .uart_xmit_fifo_write(controller_0_uart_xmit_fifo_WR_EN));
  design_1_fifo_to_axi4lite_0_0 fifo_to_axi4lite
       (.CMD_DATA(controller_0_axi_cmd_fifo_WR_DATA),
        .CMD_FULL_N(controller_0_axi_cmd_fifo_FULL_N),
        .CMD_WREN(controller_0_axi_cmd_fifo_WR_EN),
        .M_AXI_ACLK(clk_wiz_0_CLK125),
        .M_AXI_ARADDR(fifo_to_axi4lite_0_M_AXI_ARADDR),
        .M_AXI_ARESETN(master_reset_peripheral_aresetn),
        .M_AXI_ARPROT(fifo_to_axi4lite_0_M_AXI_ARPROT),
        .M_AXI_ARREADY(fifo_to_axi4lite_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(fifo_to_axi4lite_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(fifo_to_axi4lite_0_M_AXI_AWADDR),
        .M_AXI_AWPROT(fifo_to_axi4lite_0_M_AXI_AWPROT),
        .M_AXI_AWREADY(fifo_to_axi4lite_0_M_AXI_AWREADY),
        .M_AXI_AWVALID(fifo_to_axi4lite_0_M_AXI_AWVALID),
        .M_AXI_BREADY(fifo_to_axi4lite_0_M_AXI_BREADY),
        .M_AXI_BRESP(fifo_to_axi4lite_0_M_AXI_BRESP),
        .M_AXI_BVALID(fifo_to_axi4lite_0_M_AXI_BVALID),
        .M_AXI_RDATA(fifo_to_axi4lite_0_M_AXI_RDATA),
        .M_AXI_RREADY(fifo_to_axi4lite_0_M_AXI_RREADY),
        .M_AXI_RRESP(fifo_to_axi4lite_0_M_AXI_RRESP),
        .M_AXI_RVALID(fifo_to_axi4lite_0_M_AXI_RVALID),
        .M_AXI_WDATA(fifo_to_axi4lite_0_M_AXI_WDATA),
        .M_AXI_WREADY(fifo_to_axi4lite_0_M_AXI_WREADY),
        .M_AXI_WSTRB(fifo_to_axi4lite_0_M_AXI_WSTRB),
        .M_AXI_WVALID(fifo_to_axi4lite_0_M_AXI_WVALID),
        .RSP_DATA(controller_0_axi_rsp_fifo_RD_DATA),
        .RSP_EMPTY_N(controller_0_axi_rsp_fifo_EMPTY_N),
        .RSP_RDEN(controller_0_axi_rsp_fifo_RD_EN));
  design_1_fifo_to_uart_0_0 fifo_to_uart
       (.M_AXI_ACLK(clk_wiz_0_CLK125),
        .M_AXI_ARADDR(fifo_to_uart_0_M_AXI_ARADDR),
        .M_AXI_ARESETN(master_reset_peripheral_aresetn),
        .M_AXI_ARPROT(fifo_to_uart_0_M_AXI_ARPROT),
        .M_AXI_ARREADY(fifo_to_uart_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(fifo_to_uart_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(fifo_to_uart_0_M_AXI_AWADDR),
        .M_AXI_AWPROT(fifo_to_uart_0_M_AXI_AWPROT),
        .M_AXI_AWREADY(fifo_to_uart_0_M_AXI_AWREADY),
        .M_AXI_AWVALID(fifo_to_uart_0_M_AXI_AWVALID),
        .M_AXI_BREADY(fifo_to_uart_0_M_AXI_BREADY),
        .M_AXI_BRESP(fifo_to_uart_0_M_AXI_BRESP),
        .M_AXI_BVALID(fifo_to_uart_0_M_AXI_BVALID),
        .M_AXI_RDATA(fifo_to_uart_0_M_AXI_RDATA),
        .M_AXI_RREADY(fifo_to_uart_0_M_AXI_RREADY),
        .M_AXI_RRESP(fifo_to_uart_0_M_AXI_RRESP),
        .M_AXI_RVALID(fifo_to_uart_0_M_AXI_RVALID),
        .M_AXI_WDATA(fifo_to_uart_0_M_AXI_WDATA),
        .M_AXI_WREADY(fifo_to_uart_0_M_AXI_WREADY),
        .M_AXI_WSTRB(fifo_to_uart_0_M_AXI_WSTRB),
        .M_AXI_WVALID(fifo_to_uart_0_M_AXI_WVALID),
        .XMIT_DATA(controller_0_uart_xmit_fifo_WR_DATA),
        .XMIT_FULL_N(controller_0_uart_xmit_fifo_FULL_N),
        .XMIT_WREN(controller_0_uart_xmit_fifo_WR_EN));
  design_1_proc_sys_reset_0_0 master_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .interconnect_aresetn(master_reset_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(master_reset_peripheral_aresetn),
        .peripheral_reset(master_reset_peripheral_reset),
        .slowest_sync_clk(clk_wiz_0_CLK125));
  design_1_smartconnect_0_0 periph_interconnect
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(periph_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arready(periph_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(periph_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(periph_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awready(periph_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(periph_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bready(periph_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(periph_interconnect_M01_AXI_BRESP),
        .M01_AXI_bvalid(periph_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(periph_interconnect_M01_AXI_RDATA),
        .M01_AXI_rready(periph_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(periph_interconnect_M01_AXI_RRESP),
        .M01_AXI_rvalid(periph_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(periph_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(periph_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(periph_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(periph_interconnect_M01_AXI_WVALID),
        .S00_AXI_araddr(axi4_lite_master_0_M_AXI_ARADDR),
        .S00_AXI_arprot(axi4_lite_master_0_M_AXI_ARPROT),
        .S00_AXI_arready(axi4_lite_master_0_M_AXI_ARREADY),
        .S00_AXI_arvalid(axi4_lite_master_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi4_lite_master_0_M_AXI_AWADDR),
        .S00_AXI_awprot(axi4_lite_master_0_M_AXI_AWPROT),
        .S00_AXI_awready(axi4_lite_master_0_M_AXI_AWREADY),
        .S00_AXI_awvalid(axi4_lite_master_0_M_AXI_AWVALID),
        .S00_AXI_bready(axi4_lite_master_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi4_lite_master_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi4_lite_master_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi4_lite_master_0_M_AXI_RDATA),
        .S00_AXI_rready(axi4_lite_master_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi4_lite_master_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi4_lite_master_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi4_lite_master_0_M_AXI_WDATA),
        .S00_AXI_wready(axi4_lite_master_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi4_lite_master_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi4_lite_master_0_M_AXI_WVALID),
        .S01_AXI_araddr(fifo_to_uart_0_M_AXI_ARADDR),
        .S01_AXI_arprot(fifo_to_uart_0_M_AXI_ARPROT),
        .S01_AXI_arready(fifo_to_uart_0_M_AXI_ARREADY),
        .S01_AXI_arvalid(fifo_to_uart_0_M_AXI_ARVALID),
        .S01_AXI_awaddr(fifo_to_uart_0_M_AXI_AWADDR),
        .S01_AXI_awprot(fifo_to_uart_0_M_AXI_AWPROT),
        .S01_AXI_awready(fifo_to_uart_0_M_AXI_AWREADY),
        .S01_AXI_awvalid(fifo_to_uart_0_M_AXI_AWVALID),
        .S01_AXI_bready(fifo_to_uart_0_M_AXI_BREADY),
        .S01_AXI_bresp(fifo_to_uart_0_M_AXI_BRESP),
        .S01_AXI_bvalid(fifo_to_uart_0_M_AXI_BVALID),
        .S01_AXI_rdata(fifo_to_uart_0_M_AXI_RDATA),
        .S01_AXI_rready(fifo_to_uart_0_M_AXI_RREADY),
        .S01_AXI_rresp(fifo_to_uart_0_M_AXI_RRESP),
        .S01_AXI_rvalid(fifo_to_uart_0_M_AXI_RVALID),
        .S01_AXI_wdata(fifo_to_uart_0_M_AXI_WDATA),
        .S01_AXI_wready(fifo_to_uart_0_M_AXI_WREADY),
        .S01_AXI_wstrb(fifo_to_uart_0_M_AXI_WSTRB),
        .S01_AXI_wvalid(fifo_to_uart_0_M_AXI_WVALID),
        .S02_AXI_araddr(fifo_to_axi4lite_0_M_AXI_ARADDR),
        .S02_AXI_arprot(fifo_to_axi4lite_0_M_AXI_ARPROT),
        .S02_AXI_arready(fifo_to_axi4lite_0_M_AXI_ARREADY),
        .S02_AXI_arvalid(fifo_to_axi4lite_0_M_AXI_ARVALID),
        .S02_AXI_awaddr(fifo_to_axi4lite_0_M_AXI_AWADDR),
        .S02_AXI_awprot(fifo_to_axi4lite_0_M_AXI_AWPROT),
        .S02_AXI_awready(fifo_to_axi4lite_0_M_AXI_AWREADY),
        .S02_AXI_awvalid(fifo_to_axi4lite_0_M_AXI_AWVALID),
        .S02_AXI_bready(fifo_to_axi4lite_0_M_AXI_BREADY),
        .S02_AXI_bresp(fifo_to_axi4lite_0_M_AXI_BRESP),
        .S02_AXI_bvalid(fifo_to_axi4lite_0_M_AXI_BVALID),
        .S02_AXI_rdata(fifo_to_axi4lite_0_M_AXI_RDATA),
        .S02_AXI_rready(fifo_to_axi4lite_0_M_AXI_RREADY),
        .S02_AXI_rresp(fifo_to_axi4lite_0_M_AXI_RRESP),
        .S02_AXI_rvalid(fifo_to_axi4lite_0_M_AXI_RVALID),
        .S02_AXI_wdata(fifo_to_axi4lite_0_M_AXI_WDATA),
        .S02_AXI_wready(fifo_to_axi4lite_0_M_AXI_WREADY),
        .S02_AXI_wstrb(fifo_to_axi4lite_0_M_AXI_WSTRB),
        .S02_AXI_wvalid(fifo_to_axi4lite_0_M_AXI_WVALID),
        .aclk(clk_wiz_0_CLK125),
        .aresetn(master_reset_interconnect_aresetn));
  design_1_axi_uartlite_0_0 uart
       (.rx(1'b0),
        .s_axi_aclk(clk_wiz_0_CLK125),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_aresetn(master_reset_peripheral_aresetn),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID),
        .tx(uart_tx));
  design_1_vcontroller_0_0 vcontroller_0
       (.AMCI_MISO(axi4_lite_master_0_AMCI_MISO),
        .AMCI_MOSI(vcontroller_0_AMCI_MOSI),
        .BUTTON1(button_up_Q),
        .BUTTON2(button_down_Q),
        .CLK(clk_wiz_0_CLK125),
        .DONE(controller_0_ap_done),
        .RESETN(master_reset_peripheral_aresetn),
        .START(vcontroller_0_START));
endmodule
