`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:29 09/16/2013 
// Design Name: 
// Module Name:    readyRam 
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
module readyRam(
		input clk,
		input rst,
		input ready
    );
	 
reg [7:0] readyRam;

always @(posedge clk or posedge rst) begin
	if(rst) begin
		readyRam <= 8'b0;
	end else begin
		
	end
end

endmodule
