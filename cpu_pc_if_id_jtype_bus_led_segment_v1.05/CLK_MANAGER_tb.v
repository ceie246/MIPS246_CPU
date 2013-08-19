`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:37:42 07/01/2013
// Design Name:   CLK_MANAGER
// Module Name:   E:/GitHub/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment_v1.03/CLK_MANAGER_tb.v
// Project Name:  cpu_pc_if_id_itype
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLK_MANAGER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLK_MANAGER_tb;

	// Inputs
	reg clk_100M;
	reg res;

	// Outputs
	wire CPU_clk;
	wire reset;

	// Instantiate the Unit Under Test (UUT)
	CLK_MANAGER uut (
		.clk_100M(clk_100M), 
		.res(res), 
		.CPU_clk(CPU_clk), 
		.reset(reset)
	);
	localparam T = 20;

	initial begin
		// Initialize Inputs
		//clk_100M = 0;
		res = 1;

		// Wait 100 ns for global reset to finish
		#(10*T);
      res = 0;  
		// Add stimulus here

	end
	
    
	always begin
		clk_100M = 1'b0;
		#(T/2);
		clk_100M = 1'b1;
		#(T/2);
	end
endmodule

