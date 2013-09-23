`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:50:06 09/16/2013
// Design Name:   segment_display_controller
// Module Name:   E:/GitHub_new/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/segmentcu_tb.v
// Project Name:  cpu_pc_if_id_itype
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: segment_display_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module segmentcu_tb;

	// Inputs
	reg clk;
	reg rst;
	reg ena;
	reg FEPU_BEPU_w;
	reg SW;
	reg [31:0] data_in;

	// Outputs
	wire [3:0] AN;
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	segment_display_controller uut (
		.clk(clk), 
		.rst(rst), 
		.ena(ena), 
		.FEPU_BEPU_w(FEPU_BEPU_w), 
		.SW(SW), 
		.data_in(data_in), 
		.AN(AN), 
		.data_out(data_out)
	);

	localparam T = 20;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		ena = 0;
		FEPU_BEPU_w = 0;
		SW = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 0;
		data_in = 32'h31;
		ena = 1;
		FEPU_BEPU_w = 1;
	end
	
	always begin
		clk = ~clk;
		#(T/2);
	end
      
endmodule

