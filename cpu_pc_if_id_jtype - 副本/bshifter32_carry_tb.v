`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:34:38 04/25/2013
// Design Name:   bshifter32_carry
// Module Name:   E:/fpga_svn/cpu_pc_if_id/bshifter32_carry_tb.v
// Project Name:  cpu_pc_if_id
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bshifter32_carry
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bshifter32_carry_tb;

	// Inputs
	reg [31:0] a;
	reg [4:0] b;
	reg [1:0] aluc;

	// Outputs
	wire [31:0] c;
	wire carry;
	wire negative;

	// Instantiate the Unit Under Test (UUT)
	bshifter32_carry uut (
		.a(a), 
		.b(b), 
		.aluc(aluc), 
		.c(c), 
		.carry(carry), 
		.negative(negative)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		aluc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 32'b11111111111111111111111111111111;
		b = 5'b00000;
		aluc = 01;
		#20;
		aluc = 00;
		#20;
		aluc = 10;
		#20;
		aluc = 11;
	end
      
endmodule

