`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 02:01:28 PM
// Design Name: 
// Module Name: SR_FF
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


module SR_FF(
input S, R, clk,
output Q, QBar);

wire y1, y2;

and A1(y1,clk,S);
and A2(y2,clk,R);
nor N1(Q,y1,QBar);
nor N2(QBar,y2,Q);


endmodule
