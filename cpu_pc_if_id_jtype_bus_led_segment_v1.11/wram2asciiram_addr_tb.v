`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:43:54 09/09/2013
// Design Name:   wram2asciiram_addr
// Module Name:   E:/GitHub/MIPS246_CPU/cpu_pc_if_id_jtype_bus_led_segment/wram2asciiram_addr_tb.v
// Project Name:  cpu_pc_if_id_itype
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: wram2asciiram_addr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module wram2asciiram_addr_tb;

	// Inputs
	reg [31:0] addr_in;

	// Outputs
	wire [11:0] addr_out;

	// Instantiate the Unit Under Test (UUT)
	wram2asciiram_addr uut (
		.addr_in(addr_in), 
		.addr_out(addr_out)
	);

	initial begin
		// Initialize Inputs
		addr_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		addr_in = 32'h00ef_ff02;
	end
      
endmodule

