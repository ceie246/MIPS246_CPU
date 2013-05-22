`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:59:33 05/22/2013
// Design Name:   state_machine
// Module Name:   E:/fpga/ex_ram/state_machine_tb.v
// Project Name:  ex_ram
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: state_machine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module state_machine_tb;

	// Inputs
	reg clk;
	reg rst;
	reg mem;
	reg rw;
	reg [16:0] data_in;
	reg [25:0] addr;

	// Outputs
	wire [16:0] data_out;
	wire clk_ram;
	wire we_n;
	wire oe_n;
	wire adv_z;
	wire wait_z;
	wire mt_ce_n;
	wire mt_lb_n;
	wire mt_ub_n;
	wire mt_cre;
	wire busy;

	// Bidirs
	wire [16:0] data_ram;

	// Instantiate the Unit Under Test (UUT)
	state_machine uut (
		.clk(clk), 
		.rst(rst), 
		.mem(mem), 
		.rw(rw), 
		.data_in(data_in), 
		.addr(addr), 
		.data_ram(data_ram), 
		.data_out(data_out), 
		.clk_ram(clk_ram), 
		.we_n(we_n), 
		.oe_n(oe_n), 
		.adv_z(adv_z), 
		.wait_z(wait_z), 
		.mt_ce_n(mt_ce_n), 
		.mt_lb_n(mt_lb_n), 
		.mt_ub_n(mt_ub_n), 
		.mt_cre(mt_cre), 
		.busy(busy)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		mem = 0;
		rw = 0;
		data_in = 0;
		addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

