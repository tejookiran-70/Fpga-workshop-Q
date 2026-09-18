module counter(input switch,input clk,input reset,output reg [15:0] count);
always @(posedge clk) begin
    if(switch == 0) begin
      if (reset==1)
          count <= 16'b0;
      else
          count <= count + 1'b1;
    end
    else begin
      if (reset==1)
          count <= {16{1'b1}};
      else
          count <= count - 1'b1;
    end    
end
endmodule
