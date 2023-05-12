module SUM_SEL(a,b,sel,out);
parameter WIDTH=8;
input [WIDTH-1:0]a,b;
input sel;
output reg [WIDTH-1:0] out;
always @(*) 
out=sel==1?b:a;
   


endmodule

