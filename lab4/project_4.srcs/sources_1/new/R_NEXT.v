module R_NEXT(clk, rst, load, d, q);
  parameter WIDTH = 8;
  input clk, rst, load;
  input [WIDTH-1:0] d;
  output reg [WIDTH-1:0] q;
  always @(posedge clk) begin
    if (!rst) q <=0;
    else if (load) q <= d;
  end    
endmodule
