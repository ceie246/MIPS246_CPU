`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:40:21 04/24/2013
// Design Name:   ext
// Module Name:   E:/fpga_svn/cpu_pc_if_id/ext_tb.v
// Project Name:  cpu_pc_if_id
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ext
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ext_tb;

	// Inputs
	reg [4:0] a;
	reg sext;

	// Outputs
	wire [31:0] b;

	// Instantiate the Unit Under Test (UUT)
	ext uut (
		.a(a), 
		.sext(sext), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		sext = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 5'b11000;
		sext = 1;
		$monitor("%d\t%b\t%b\t", $time, a, b);
		#20;
		sext = 0;
		$monitor("%d\t%b\t%b\t", $time, a, b);
	end
      
endmodule

