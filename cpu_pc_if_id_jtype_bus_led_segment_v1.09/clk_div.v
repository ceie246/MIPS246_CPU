`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:41 06/10/2013 
// Design Name: 
// Module Name:    clk_div 
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
module clk_div #(parameter SEL = 8)(
		input clk,
		input rst,
		output sel_clk,
		output vga_clk
    );

reg [31:0] clk_count;
always @(posedge clk or posedge rst) begin
	if(rst) begin
		clk_count <= 32'b0;
	end else begin
		clk_count <= clk_count + 32'b1;
	end
end

//always @(posedge clk or posedge rst) begin
//	if(rst) begin
//		sel_clk <= 1'b0;
//	end else if(clk_count == 32'd8) begin
//		sel_clk <= ~sel_clk;
//	end
//end

assign sel_clk = clk_count[SEL];
assign vga_clk = clk; //100mHZ

endmodule
