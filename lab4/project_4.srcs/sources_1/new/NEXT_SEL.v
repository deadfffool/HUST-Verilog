`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/07 21:36:22
// Design Name: 
// Module Name: NEXT_SEL
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


module NEXT_SEL(a,b,sel,out);
parameter WIDTH=8;
input [WIDTH-1:0]a,b;
input sel;
output reg [WIDTH-1:0] out;
always @(*) begin
case(sel)
    2'b0:out=a;
    2'b1:out=b;
endcase
end
endmodule

