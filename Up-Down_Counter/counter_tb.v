module counter_tb();
reg switch;
reg clk;
reg reset;
wire [15:0] count;
counter uut(.switch(switch),.clk(clk),.reset(reset),.count(count));
always #5 clk = ~clk;
initial begin
switch = 0;
clk = 0;
reset = 1;
#10
reset = 0;
#100
switch = 1;
reset = 1;
#20
reset = 0;
#50
$finish;
end
endmodule
