`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:13:55 06/27/2013 
// Design Name: 
// Module Name:    clk_manager 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clk_manager(		
		input clk,
		input rst,
		output clk_cpu,
		output rst_cpu
    );

clkdiv #(3)clk_div(clk, rst, clk_cpu);

//localparam 
//	IDLE = 0,
//	FIRST_ONE = 1;
//	FIRST_ZERO = 2;
//
//reg [1:0] cstate, nstate;
//
//always @(posedge clk or posedge rst) begin
//	if(rst) begin
//		cstate <= IDLE;
//	end else begin
//		cstate <= nstate;
//	end
//end
//
//always @(*) begin
//	case(cstate)
//	IDLE:
//		if(clk_cpu) begin
//			nstate = FIRST_ONE;
//		end else begin
//			nstate = IDLE;
//		end
//	FIRST_ONE:
//		if(clk_cpu) begin
//			nstate = FIRST_ONE;
//		end else begin
//			nstate = FIRST_ZERO;
//		end
//	FIRST_ZERO:
//		if()
//	endcase
//end

endmodule
