`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:55 06/10/2013 
// Design Name: 
// Module Name:    led 
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
module led(
		input [7:0] data_in,
		output[7:0] data_out
    );

//always @(*) begin
//	if(ena && FEPU_BEPU_w) begin
//		data_out = data_in;
//	end else begin
//		data_out = 8'b0;
//	end
//	
//end

assign data_out = data_in;

endmodule
