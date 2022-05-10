
module vcontroller#
(
    parameter integer AXI_DATA_WIDTH = 32,
    parameter integer AXI_ADDR_WIDTH = 32
)
( 
    //============================ The AMCI interface ==========================
    output  wire[97:0] AMCI_MOSI,    // AMCI Master Out, Slave In
    input   wire[33:0] AMCI_MISO,    // AMCI Master In, Slave Out
    //==========================================================================

    // User reads from this FIFO to receive data from the UART
    (* X_INTERFACE_MODE = "master" *)
    (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 RECV_FIFO RD_DATA" *) input[7:0] RECV_DATA,
    (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 RECV_FIFO EMPTY_N" *) input      RECV_EMPTY_N,
    (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 RECV_FIFO RD_EN"   *) output     RECV_RDEN,

    input CLK, RESETN, BUTTON1, BUTTON2,
    output START,
    input DONE
);

    //=========================================================================================================
    // Break out the AMCI_MISO and AMCI_MISO interfaces into discrete ports
    //=========================================================================================================
    localparam AMCI_WADDR_OFFSET = 0;   localparam pa1 = AMCI_WADDR_OFFSET + AXI_ADDR_WIDTH;
    localparam AMCI_WDATA_OFFSET = pa1; localparam pa2 = AMCI_WDATA_OFFSET + AXI_DATA_WIDTH;
    localparam AMCI_RADDR_OFFSET = pa2; localparam pa3 = AMCI_RADDR_OFFSET + AXI_ADDR_WIDTH;
    localparam AMCI_WRITE_OFFSET = pa3; localparam pa4 = AMCI_WRITE_OFFSET + 1;
    localparam AMCI_READ_OFFSET  = pa4; localparam pa5 = AMCI_READ_OFFSET  + 1;

    localparam AMCI_RDATA_OFFSET = 0;   localparam pb1 = AMCI_RDATA_OFFSET + AXI_DATA_WIDTH;
    localparam AMCI_WIDLE_OFFSET = pb1; localparam pb2 = AMCI_WIDLE_OFFSET + 1;
    localparam AMCI_RIDLE_OFFSET = pb2; localparam pb3 = AMCI_RIDLE_OFFSET + 1;

    wire[AXI_ADDR_WIDTH-1:0] AMCI_WADDR = AMCI_MOSI[AMCI_WADDR_OFFSET +: AXI_ADDR_WIDTH];
    wire[AXI_DATA_WIDTH-1:0] AMCI_WDATA = AMCI_MOSI[AMCI_WDATA_OFFSET +: AXI_DATA_WIDTH];
    wire[AXI_ADDR_WIDTH-1:0] AMCI_RADDR = AMCI_MOSI[AMCI_RADDR_OFFSET +: AXI_ADDR_WIDTH];
    wire AMCI_WRITE                     = AMCI_MOSI[AMCI_WRITE_OFFSET +: 1];
    wire AMCI_READ                      = AMCI_MOSI[AMCI_READ_OFFSET  +: 1];

    wire[AXI_DATA_WIDTH-1:0] AMCI_RDATA = AMCI_MISO[AMCI_RDATA_OFFSET +: AXI_DATA_WIDTH];
    wire                     AMCI_WIDLE = AMCI_MISO[AMCI_WIDLE_OFFSET +: 1];
    wire                     AMCI_RIDLE = AMCI_MISO[AMCI_RIDLE_OFFSET +: 1];
    //=========================================================================================================


    //=========================================================================================================
    // Register assignments for writing to the AMCI outputs
    //=========================================================================================================
    reg[AXI_ADDR_WIDTH-1:0] amci_waddr; assign AMCI_WADDR = amci_waddr;
    reg[AXI_DATA_WIDTH-1:0] amci_wdata; assign AMCI_WDATA = amci_wdata;
    reg[AXI_ADDR_WIDTH-1:0] amci_raddr; assign AMCI_RADDR = amci_raddr;
    reg                     amci_write; assign AMCI_WRITE = amci_write;
    reg                     amci_read ; assign AMCI_READ  = amci_read;
    //=========================================================================================================


    localparam UART_BASE = 32'h4060_0000;
    localparam UART_TX   = UART_BASE + 4;

    reg recv_rden; assign RECV_RDEN = recv_rden;

    reg[3:0] state;

    always @(posedge CLK) begin
        amci_write <= 0;
        recv_rden <= 0;
        if (RESETN == 0) begin
            state      <= 0;
            amci_waddr <= UART_TX;
        end else case(state)

        0:  if (BUTTON1) begin
                amci_wdata <= "D";
                amci_write <= 1;
                state      <= state + 1;
            end

        1:  if (AMCI_WIDLE) begin
                amci_wdata <= "W";
                amci_write <= 1;
                state      <= state + 1;
            end

        2:  if (AMCI_WIDLE) begin
                amci_wdata <= "\r";
                amci_write <= 1;
                state      <= state + 1;
            end
        3:  if (AMCI_WIDLE) begin
                amci_wdata <= "\n";
                amci_write <= 1;
                state      <= 0;
            end
        endcase
    end


    reg[2:0] state2;
    reg start; assign START = start;
    always @(posedge CLK) begin
        start <= 0;
        if (RESETN == 0) begin
            state2 <= 0;
        end else case(state2)

        0:  if (BUTTON2) begin
                start  <= 1;
                state2 <= 1;
            end 

        1:  if (DONE) begin
                state2 <= 0;
            end

        endcase
    end

endmodule



