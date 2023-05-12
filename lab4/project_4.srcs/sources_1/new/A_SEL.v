module A_SEL(a,b,sel,out);
parameter WIDTH=8;
input [WIDTH-1:0]a,b;
input sel;
output reg [WIDTH-1:0] out;
always @(*) begin
assign out=(sel==1)?b:a;

end
endmodule