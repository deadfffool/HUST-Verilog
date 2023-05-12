`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/07 20:31:58
// Design Name: 
// Module Name: add1
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


module add1(sum_out,value,sum_out1);
parameter WIDTH=8;
input [WIDTH-1:0] sum_out ,value;
output [WIDTH-1:0] sum_out1;

assign    sum_out1=sum_out+value;
endmodule
