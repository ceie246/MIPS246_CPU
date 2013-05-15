`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:54 04/08/2013 
// Design Name: 
// Module Name:    regfiles 
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
module regfiles(
		input clk,
		input rst,
		input we,
		input [4:0] raddr1,
		input [4:0] raddr2,
		input [4:0] waddr,
		input [31:0] wdata,
		output [31:0] rdata1,
		output [31:0] rdata2
    );

	integer i;
	reg [31:0] regfiles [31:0];
	
	always @(negedge clk or posedge rst) begin
		if(rst) begin
			for(i = 0; i < 32; i = i + 1) begin
				regfiles[i] <= 32'b0;
			end
			//for r_type test
			regfiles[1] <= 32'b1;
		end else if(we && waddr != 32'b0) begin
			regfiles[waddr] <= wdata;
		end
	end
	
	assign rdata1 = (raddr1 == 32'b0) ? 32'b0 : regfiles[raddr1];
	assign rdata2 = (raddr2 == 32'b0) ? 32'b0 : regfiles[raddr2];
endmodule
