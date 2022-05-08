`timescale 1ns / 1ps



module blinky#(parameter CLOCK_FREQ = 125000000)
(
    input CLK, RESETN,
    output LED 
);

    reg[31:0] counter;
    reg led;
    assign LED = led;
    
    always @(posedge CLK) begin
        if (RESETN == 0) begin
            led     <= 0;
            counter <= 0;
        end else begin
            if (counter == CLOCK_FREQ/2) begin
                led     <= ~led;
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end 
        end
    end

endmodule
