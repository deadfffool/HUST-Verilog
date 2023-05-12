`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 16:05:59
// Design Name: 
// Module Name: auto_add
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


module auto_add(clk,rst,start,DONE,sum_out);
input clk,rst,start;
output DONE;
output [31:0] sum_out;
wire next_zero,LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL;
 LaserTimer  U1 (clk, rst,next_zero,start ,LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,DONE);
 datapath U2 (clk, rst, SUM_SEL, NEXT_SEL, A_SEL, LD_SUM, LD_NEXT, next_zero, sum_out);

endmodule
