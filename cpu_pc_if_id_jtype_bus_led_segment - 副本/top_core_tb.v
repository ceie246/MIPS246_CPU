`timescale 1ns / 1ps
`include "global.v"
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:47:35 06/11/2013
// Design Name:   top_core
// Module Name:   E:/GitHub/MIPS246_CPU/cpu_pc_if_id_jtype/top_core_tb.v
// Project Name:  cpu_pc_if_id_itype
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_core
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_core_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [2:0] SW;

	// Outputs
	wire [7:0] led_data;
	wire [7:0] segment_data;
	wire [3:0] AN;
	wire cpu_clk;

	// Instantiate the Unit Under Test (UUT)
	top_core uut (
		.clk(clk), 
		.rst(rst), 
		.SW(SW), 
		.led_data(led_data), 
		.segment_data(segment_data), 
		.AN(AN),
		.cpu_clk(cpu_clk)
  	);

	localparam T = 20;
	
	initial begin
		// Initialize Inputs
		rst = 1;
		SW = 0;

		// Wait 100 ns for global reset to finish
		//@(posedge cpu_clk);
		#(2*T);// * T
        
		// Add stimulus here
		rst = 0;
	end
	
	always begin
		clk = 1'b0;
		#(T/2);
		clk = 1'b1;
		#(T/2);
	end
      
endmodule

