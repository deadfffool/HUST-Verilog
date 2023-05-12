`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/09 16:01:10
// Design Name: 
// Module Name: add2
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


module add2(addr_addr,addr_value);
parameter WIDTH=8;
input [WIDTH-1:0]addr_addr;
output  [WIDTH-1:0]addr_value;

assign  addr_value=addr_addr+1;
endmodule
