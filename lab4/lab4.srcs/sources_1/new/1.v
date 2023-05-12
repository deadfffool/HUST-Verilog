`timescale 1ns / 1ps

module divider(clk, frequency, clk_N);
  input clk;
  input frequency;
  output reg clk_N;
  parameter N = 100_000_000;
  reg [31:0] counter;

  wire now_freq;

  assign now_freq = N / frequency;

initial
begin
  counter = 0;
  clk_N = 0;
end

always @(posedge clk)
  begin
    counter <= counter + 1;
    if (counter > now_freq / 2)
      begin
        clk_N <= ~clk_N;
        counter <= 0;
      end
  end
endmodule