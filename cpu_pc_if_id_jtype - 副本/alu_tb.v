`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:52:15 04/23/2013
// Design Name:   alu
// Module Name:   E:/fpga_svn/cpu_pc_if_id/alu_tb.v
// Project Name:  cpu_pc_if_id
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg [3:0] aluc;

	// Outputs
	wire [31:0] r;
	wire zero;
	wire carry;
	wire negative;
	wire overflow;
	
	integer k;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.aluc(aluc), 
		.r(r), 
		.zero(zero), 
		.carry(carry), 
		.negative(negative), 
		.overflow(overflow)
	);

	localparam T = 20;
	reg [31:0] temp;
	
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		aluc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		$display("time\ta\tb\tr_alu\tr_normal\t");
		a = 32'b10000000000000000000000000000000;
		b = 32'b11111111111111111111111111111111;
		aluc = 1101;
//		for(k = 0; k < 20 ; k = k + 1) begin
//			a = {$random} % 32;
//			b = {$random} % 32;
//			aluc = 4'b1011; // or
//			temp = a < b ? {31'b0, 1'b1} : {31'b0, 1'b0};
//			$monitor("%d\t%b\t%b\t%b\t%b\t", $time, a, b, r, temp);
//			#(T);
//		end
	end
      
endmodule

