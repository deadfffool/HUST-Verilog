`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/10 19:37:46
// Design Name: 
// Module Name: datapath
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


module datapath(clk, rst, SUM_SEL, NEXT_SEL, A_SEL, LD_SUM, LD_NEXT, NEXT_ZERO, sum_out);
input clk,rst,SUM_SEL,NEXT_SEL,A_SEL,LD_SUM,LD_NEXT;    
output NEXT_ZERO;
output  wire [31:0] sum_out;
wire [31:0]read_addr,value;
wire [31:0]addr_addr,addr_value;
wire  [31:0]sum_out1,sum_out2,sum_out3;



R_SUM#(32) rsum(clk, rst,LD_SUM,sum_out2,sum_out );
  R_NEXT #(32) r_NEXT(
.clk(clk), 
.rst(rst),
.load(LD_NEXT),
.d(sum_out3),
.q(addr_addr) );
  ram #(32, 5) R (
  .read_addr(read_addr),
  .clk(clk),
  .q(value));

add2 #(32) A2(addr_addr,addr_value);
add1 #(32) A1(sum_out,value,sum_out1);

 N_ZERO #(32) nero(.d(sum_out3),.q(NEXT_ZERO));
 NEXT_SEL#(32) SEL_next(.a(0),.b(value),.sel(NEXT_SEL),.out(sum_out3));
  SUM_SEL #(32) sumsel(
   .a(0),
   .b(sum_out1),
   .sel(SUM_SEL),
   .out(sum_out2));
  
 A_SEL#(32) a_sel(
 .a(addr_addr),
 .b(addr_value),
 .sel(A_SEL),
 .out(read_addr));


endmodule