module gates_tb();
reg a,b;
wire out_and;
wire out_or;
wire out_xor;
wire out_nand;
wire out_nor;
wire out_xnor;
gates uut(.a(a),
.b(b),
.out_and(out_and),
.out_or(out_or),
.out_xor(out_xor),
.out_nand(out_nand),
.out_nor(out_nor),
.out_xnor(out_xnor));
initial begin
a=0; b=0;
#10
a=0; b=1;
#10
a=1; b=0;
#10
a=1; b=1;
#10
$finish;
end
endmodule
