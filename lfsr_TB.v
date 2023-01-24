`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2023 11:21:23
// Design Name: 
// Module Name: lfsr_TB
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


module lfsr_TB;
//reg [3:0] din;
reg clk;
reg rst;
wire [3:0] Q;
integer i;
LFSR dut(Q,clk,rst);
 initial
 begin
 clk=0;
   for(i=0;i<10;i=i+1)
    #20 clk=~clk;
 end
initial begin
//din= 4'b0010;
rst=0;
 end
endmodule
