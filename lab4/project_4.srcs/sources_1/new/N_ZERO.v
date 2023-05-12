`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/10 17:19:02
// Design Name: 
// Module Name: N_ZERO
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


module N_ZERO(d,q);
parameter WIDTH=8;
input [WIDTH-1:0] d;
output q;
assign q=(d==0)?1:0;
endmodule

