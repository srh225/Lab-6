`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 01:52:36 AM
// Design Name: 
// Module Name: Clock_divider_tb
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


module Clock_divider_tb;
 reg clk_in;
 wire clk_out;
 
 Clock_divider uut (.clk_in(clk_in), .clk_out(clk_out));
 initial begin
  
 clk_in = 0;
  
 forever #10 clk_in = ~clk_in;
 end
      
endmodule

