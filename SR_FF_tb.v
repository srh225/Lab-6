`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 02:01:54 PM
// Design Name: 
// Module Name: SR_FF_tb
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


module SR_FF_tb;
reg S, R, clk;
wire Q, QBar;

SR_FF uut(.S(S), .R(R), .clk(clk), .Q(Q), .QBar(QBar));

always 
    begin
        #5 clk = ~clk;  // Toggle clock every 5 time units (10-time unit clock period)
    end

initial begin
    clk = 1'b0;
    R=0; S=1;
    #10;
    R=0; S=0;
    #10;
     R=1; S=0;
    #10;
    R=1; S=1;
    #10;
    R=0; S=1;
    #10;
    R=0; S=0;
    #10;
     R=1; S=0;
    #10;
    R=1; S=1;
    #10;
    
    
   /* R=0; S=0;
    #5 S=1;
    #5 S=0;
    #5 R=1;
    #5 R=0; S=1;
    #5 S=0; R=1;
    #5 R=0;
    #5 R=1; S=1;*/

end

endmodule
