`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:07:21 08/12/2013
// Design Name:   file_write
// Module Name:   E:/GitHub/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment_v1.05/file_write_tb.v
// Project Name:  cpu_pc_if_id_itype
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: file_write
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module file_write_tb;

	// Inputs
	reg clk;
	reg b;

	// Instantiate the Unit Under Test (UUT)
	file_write #(1,"abc")uut (
		.clk(clk), 
		.a(b)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin
		#20;
		clk = ~clk;
		b = $random % 5;
	end
      
endmodule

