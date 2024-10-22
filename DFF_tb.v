`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2024 03:09:41 PM
// Design Name: 
// Module Name: DFF_tb
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


module DFF_tb;
reg D, rstn, clk;
wire Q;

DFF uut(.D(D), .rstn(rstn), .clk(clk), .Q(Q));

always 
    begin
        #10 clk = ~clk;  // Toggle clock every 5 time units (10-time unit clock period)
    end
initial begin 
    clk<=0;
    D<=0;
    rstn<=0;
    
    #10 D<=1;
    #15 rstn<=1;
    #10 D<=0;
    #15 rstn<=1;
    #10 D<=1;
    #15 rstn<=0;
    
end
    
endmodule
