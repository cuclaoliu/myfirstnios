
module nios_core (
	clk_clk,
	reset_reset_n,
	ledg_export,
	ledr_export,
	key_export,
	sw_export);	

	input		clk_clk;
	input		reset_reset_n;
	output	[7:0]	ledg_export;
	output	[15:0]	ledr_export;
	input	[3:0]	key_export;
	input	[15:0]	sw_export;
endmodule
