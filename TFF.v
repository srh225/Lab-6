`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 03:40:06 PM
// Design Name: 
// Module Name: TFF
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


module TFF(
input T, rstn, clk,
output reg Q);

always @(posedge clk)
    begin
        if (!rstn)
            Q<=0;
        else if(T)
            Q<=~Q;
        else
            Q=Q;
    end

endmodule
