`timescale 1ns / 1ps
module dynamic_scan(clk,  SEG, AN);
    input clk;              // 系统时钟
    output [7:0] SEG;  		// 分别对应CA、CB、CC、CD、CE、CF、CG和DP
    output [7:0] AN;        // 8位数码管片选信号
    wire clk_N;
    wire [2:0] num;
    wire [3:0] code;
  
    divider(clk,clk_N);
    counter(clk_N,num[2:0]);
    decoder(num[2:0],AN[7:0]);
    rom(num[2:0],code[3:0]);
    pattern(code[3:0],SEG[7:0]);
       
endmodule
