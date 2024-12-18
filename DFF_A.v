`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 03:31:31 PM
// Design Name: 
// Module Name: DFF_A
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


module DFF_A(
input D, rstn, clk,
output reg Q);

always @(posedge clk or negedge rstn)
    if(!rstn)
        Q<=0;
    else
        Q<=D; 
    
endmodule
