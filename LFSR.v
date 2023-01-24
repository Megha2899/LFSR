`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2023 10:48:07
// Design Name: 
// Module Name: LFSR
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


module LFSR(
Q,clk,rst
    );
    //input [3:0]  din;
    input clk,rst;
    output reg [3:0] Q;
    initial begin
     Q=4'b0110;
    end
    always @(posedge clk)
    begin
       if(rst==1) begin
       Q=4'b0; end
       else begin
          Q[3]<= Q[1]^Q[0];
          Q[2]<=Q[3];
          Q[1]<=Q[2];
          Q[0]<=Q[1];
       end
    end
    
endmodule
