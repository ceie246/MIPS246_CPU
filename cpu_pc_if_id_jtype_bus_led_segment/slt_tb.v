`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:50:30 04/23/2013
// Design Name:   slt
// Module Name:   E:/fpga_svn/cpu_pc_if_id/slt_tb.v
// Project Name:  cpu_pc_if_id
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: slt
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module slt_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg aluc;

	// Outputs
	wire [31:0] c;
	wire carry;
	wire negative;

	// Instantiate the Unit Under Test (UUT)
	slt uut (
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

	end
      
endmodule

