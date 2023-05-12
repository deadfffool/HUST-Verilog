`timescale 1ns / 1ps
module auto_add_tb();
reg clk,rst,start;
wire DONE;
wire [31:0] sum_out;
auto_add a(clk,rst,start,DONE,sum_out);
always #10 clk<=~clk;
initial begin
clk<=0;
rst<=0;
start<=0;
@(posedge clk);
#5 rst<=1;
#5 start<=1;
end
endmodule
