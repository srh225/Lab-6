`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 01:36:54 PM
// Design Name: 
// Module Name: SR_Latch_tb
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


module SR_Latch_tb;
reg S, R;
wire Q, QBar;

SR_Latch uut(.S(S), .R(R), .Q(Q), .QBar(QBar));

initial begin
    R=0; S=0;
    #5 S=1;
    #5 S=0;
    #5 R=1;
    #5 R=0; S=1;
    #5 S=0; R=1;
    #5 R=0;
    #5 R=1; S=1;
end

endmodule
