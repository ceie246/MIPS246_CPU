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
	integer File_test, desc;
	reg [31:0] regfiles [31:0];
	
	always @(negedge clk or posedge rst) begin
		if(rst) begin
			for(i = 0; i < 32; i = i + 1) begin
				regfiles[i] <= 32'b0;
			end
			//for r_type test
			//regfiles[1] <= 32'b1;
		end else if(we && waddr != 32'b0) begin
			regfiles[waddr] <= wdata;
		end
	end
	
	assign rdata1 = (raddr1 == 32'b0) ? 32'b0 : regfiles[raddr1];
	assign rdata2 = (raddr2 == 32'b0) ? 32'b0 : regfiles[raddr2];
	
	file_write_regfiles fw_rf(clk ,
										regfiles[0], 
										regfiles[1], 
										regfiles[2], 
										regfiles[3], 
										regfiles[4],
										regfiles[5],
										regfiles[6],
										regfiles[7],
										regfiles[8],
										regfiles[9],
										regfiles[10], 
										regfiles[11], 
										regfiles[12], 
										regfiles[13], 
										regfiles[14],
										regfiles[15],
										regfiles[16],
										regfiles[17],
										regfiles[18],
										regfiles[19],
										regfiles[20], 
										regfiles[21], 
										regfiles[22], 
										regfiles[23], 
										regfiles[24],
										regfiles[25],
										regfiles[26],
										regfiles[27],
										regfiles[28],
										regfiles[29],
										regfiles[30], 
										regfiles[31]);

	
endmodule
