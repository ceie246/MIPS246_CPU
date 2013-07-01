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
		input ena,
		input [1:0] SW,
		input FEPU_BEPU_w,
		input [31:0] indata,
		output[7:0] outdata
    );

wire [7:0] led_data;
led led(ena, FEPU_BEPU_w, led_data, outdata); //led_data
//led led(1'b1, 1'b1, led_data, outdata); //led_data
mux4x32 #(8) select_led(indata[7:0], indata[15:8], indata[23:16], indata[31:24], SW, led_data);

endmodule
