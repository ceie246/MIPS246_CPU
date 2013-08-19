`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:17:41 07/08/2013
// Design Name:   clkdiv_init
// Module Name:   E:/GitHub/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment_v1.05/clkdiv_init_tb.v
// Project Name:  cpu_pc_if_id_itype
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clkdiv_init
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clkdiv_init_tb;

	// Inputs
	reg clk;
	reg rest;

	// Outputs
	wire rst;

	// Instantiate the Unit Under Test (UUT)
	clkdiv_init uut (
		.clk(clk), 
		.rest(rest), 
		.rst(rst)
	);

	localparam T = 20;
	
	initial begin
		// Initialize Inputs
		rest = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rest = 0;
	end
	
	always begin
		clk = 0;
		#(T/2);
		clk = 1;
		#(T/2);
	end
      
endmodule

