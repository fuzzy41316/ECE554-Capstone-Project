module pan_tilt_tb();

logic clk;
wire[35:0] gpio;
logic [9:0] sw;
logic [3:0] key;
pan_tilt iDUT(
	.CLOCK_50(clk),
	.KEY(key),
	.SW(sw),
	.GPIO(gpio)
);


initial begin
  clk = 0;
  key[0] = 0;
  key[1] = 1;
  sw = 0;

  repeat(2)@(posedge clk);
  @(negedge clk) key[0] = 1;
   @(negedge clk) sw = 10'd640;
  repeat(2)@(posedge clk);
  @(negedge clk) sw = 10'd0;
end
always
  #5 clk = ~clk;
endmodule
