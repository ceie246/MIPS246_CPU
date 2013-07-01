`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:08:39 05/04/2013
// Design Name:   top_cpu
// Module Name:   E:/fpga_svn/cpu_pc_if_id_itype/top_itype_tb.v
// Project Name:  cpu_pc_if_id_itype
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

module top_itype_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] iram_indata;

	// Instantiate the Unit Under Test (UUT)
	top_cpu uut (
		.clk(clk), 
		.rst(rst), 
		.iram_indata(iram_indata)
	);

	localparam T = 20;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		iram_indata = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 0;
	end
	
	always begin
		clk = 0;
		#(T/2);
		clk = 1;
		#(T/2);
	end
      
endmodule

