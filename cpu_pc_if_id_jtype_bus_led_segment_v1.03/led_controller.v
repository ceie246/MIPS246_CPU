`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:47:03 06/10/2013 
// Design Name: 
// Module Name:    led_controller 
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
module led_controller(
		input clk,
		input rst,
		input ena,
		input [1:0] SW,
		input FEPU_BEPU_w,
		input [31:0] indata,
		output[7:0] outdata
    );
	 
wire [7:0] led_data;
reg [31:0] led_reg;

always @(posedge clk or posedge rst) begin
	if(rst) begin
		led_reg <= 32'b0;
	end else if(ena && FEPU_BEPU_w) begin
		led_reg <= indata;
	end
end

led led(led_data, outdata); //led_data
//led led(1'b1, 1'b1, led_data, outdata); //led_data
mux4x32 #(8) select_led(led_reg[7:0], led_reg[15:8], led_reg[23:16], led_reg[31:24], SW, led_data);

endmodule
