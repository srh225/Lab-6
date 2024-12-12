`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 01:52:01 AM
// Design Name: 
// Module Name: Clock_divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Clock_divider(
    input clk_in,
    output reg clk_out = 1'b0
);

    parameter DIVISOR = 25;  // Adjust this based on your desired clock frequency
    reg [6:0] counter = 7'd0;     // 32-bit counter
    
    always @(posedge clk_in) 
    begin
        if (counter == (DIVISOR - 1)) 
        begin
            counter <= 7'd0;      // Reset the counter
            clk_out <= ~clk_out;   // Toggle the output clock
        end
        else 
        begin
            counter <= counter + 1;  // Increment the counter
        end
    end
endmodule

