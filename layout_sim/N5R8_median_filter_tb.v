// =============================================================================
// Filename: median_filter_tb.v
// -----------------------------------------------------------------------------
// This file exports the testbench for 1-D median filter.
// =============================================================================

`timescale 1 ns / 1 ps

module median_filter_tb;

// ----------------------------------
// Local parameter declaration
// ----------------------------------
localparam CLK_PERIOD = 6.0;  // clock period: 6.0ns
localparam R_WIDTH = 8;
localparam N = 5;

// ----------------------------------
// Interface of the module
// ----------------------------------
reg			clk, srst;
reg	[R_WIDTH-1:0]	x;
wire 	[R_WIDTH-1:0]	y;

// ----------------------------------
// Instantiate the module
// ----------------------------------
median_filter #(
	.R_WIDTH(R_WIDTH),
	.N(N))
dut (
	.srst	(srst),
	.clk	(clk),
	.X	(x),
	.Y	(y)
	);
	
// ----------------------------------
// For gate-level simulation, we
// should backannotate the SDF file
// ----------------------------------
initial begin
  $sdf_annotate("N5R8_median_filter.sdf", dut);
end

// ----------------------------------
// Clock generation
// ----------------------------------
initial begin
  clk = 1'b0;
  forever #(CLK_PERIOD/2.0) clk = ~clk;
end

// ----------------------------------
// Input stimulus
// ----------------------------------
initial begin
	// Reset
	srst = 1'b1;
	x = 8'd0;
	#(2*CLK_PERIOD) srst = 1'b0;
	// Stimulus TO-DO
	@(posedge clk);
	x <= 8'd255;
	@(posedge clk);
	@(posedge clk);

	$display(" Y = %d", dut.Y);
	x <= 8'd200;
	@(posedge clk);
	@(posedge clk);
	$display(" Y = %d", dut.Y);
	x <= 8'd10;
	@(posedge clk);
	@(posedge clk);
	$display(" Y = %d", dut.Y);
	x <= 8'd166;
	@(posedge clk);
	@(posedge clk);	
	$display(" Y = %d", dut.Y);
	x <= 8'd131;
	@(posedge clk);
	@(posedge clk);	
	$display(" Y = %d", dut.Y);
	x <= 8'd59;
	@(posedge clk);
	@(posedge clk);	
	$display(" Y = %d", dut.Y);
	x <= 8'd4;
	@(posedge clk);
	@(posedge clk);	
	$display(" Y = %d", dut.Y);
	x <= 8'd59;
	@(posedge clk);
	@(posedge clk);
	$display(" Y = %d", dut.Y);
			
	srst = 1'b1;	
	
	#(CLK_PERIOD*4);
	
	$finish;
end

endmodule
