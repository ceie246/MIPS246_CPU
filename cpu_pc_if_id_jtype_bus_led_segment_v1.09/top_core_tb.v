`timescale 1ns / 1ps
//`include "global.v"
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
	reg ps2_clk;
	reg ps2_data;

	// Outputs
	wire [7:0] led_data;
	wire [7:0] segment_data;
	wire [3:0] AN;
	wire cpu_clk;
	wire [2:0] r, g;
	wire [1:0] b;
	wire hs, vs;


	// Instantiate the Unit Under Test (UUT)
	top_core uut (
		.clk(clk), 
		.rst(rst), 
		.SW(SW), 
		.ps2_clk(ps2_clk),
		.ps2_data(ps2_data),
		.led_data(led_data), 
		.segment_data(segment_data), 
		.AN(AN),
		.r(r),
		.g(g),
		.b(b),
		.hs(hs),
		.vs(vs),
		.cpu_clk(cpu_clk)
  	);

	localparam T = 2;//= 20;
	
	initial begin
		// Initialize Inputs
		rst = 1;
		SW = 0;
		
		ps2_data = 1;
		ps2_clk = 0;
		
		// Wait 100 ns for global reset to finish
		//@(posedge cpu_clk);
		#(2*T);// * T
        
		// Add stimulus here
		rst = 0;
		
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;
		#2; ps2_clk=0; 
		#2; ps2_clk=1; ps2_data=0; //开始位
		#2; ps2_clk=0;					
		#2; ps2_clk=1; ps2_data=0;		//bit0
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//bit1
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//bit2
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//bit3
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//bit4
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//bit5
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//bit6
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//bit7
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//校验位
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//停止位
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0; //开始位
		#2; ps2_clk=0;					
		#2; ps2_clk=1; ps2_data=0;		//bit0
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//bit1
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//bit2
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//bit3
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//bit4
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//bit5
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//bit6
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//bit7
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//校验位
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//停止位
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0; //开始位
		#2; ps2_clk=0;					
		#2; ps2_clk=1; ps2_data=0;		//bit0
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//bit1
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//bit2
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//bit3
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//bit4
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//bit5
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//bit6
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//bit7
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=0;		//校验位
		#2; ps2_clk=0;
		#2; ps2_clk=1; ps2_data=1;		//停止位
		#2; ps2_clk=0;
		
	end
	
	always begin
		clk = 1'b0;
		#(T/2);
		clk = 1'b1;
		#(T/2);
	end
      
endmodule

