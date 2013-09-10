`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:55:44 09/09/2013
// Design Name:   top_cpu
// Module Name:   E:/GitHub/MIPS246_CPU/vga_cpu/top_vga_tb.v
// Project Name:  vga_cpu
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_vga_tb;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire [2:0] r;
	wire [2:0] g;
	wire [1:0] b;
	wire hs;
	wire vs;

	// Instantiate the Unit Under Test (UUT)
	top_cpu uut (
		.clk(clk), 
		.rst(rst), 
		.r(r), 
		.g(g), 
		.b(b), 
		.hs(hs), 
		.vs(vs)
	);

	integer T = 20;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 0;
	end
	
	always begin
		#(T/2);
		clk = ~clk;
	end
      
endmodule

