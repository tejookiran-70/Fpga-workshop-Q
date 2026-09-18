module f_impl_mux_tb();
reg a,b,c;
wire out;
f_impl_mux uut(.a(a),.b(b),.c(c),.out(out));
initial begin
a=0; b=0; c=0;
#10
a=0; b=0; c=1;
#10
a=0; b=1; c=0;
#10
a=0; b=1; c=1;
#10
a=1; b=0; c=0;
#10
a=1; b=0; c=1;
#10
a=1; b=1; c=0;
#10
a=1; b=1; c=1;
#10
$finish;
end
endmodule
