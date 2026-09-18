module f_impl_mux(input a, input b,input c, output reg out);
wire [1:0]w;
assign w={a,b};
always @(*) begin
case(w)
2'b00: out = c; 
2'b01: out = ~c;
2'b10: out = c;
2'b11: out = c;
endcase
end
endmodule
