`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:36:16 06/10/2013 
// Design Name: 
// Module Name:    top_segment_display 
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
module top_segment_display(
		input clk,
		input rst,
		input ena,
		input FEPU_BEPU_w,
		input [15:0] data_in,
		output [3:0] AN,
		output [7:0] data_out
    );

wire [7:0] data_out_led0,data_out_led1,data_out_led2,data_out_led3;
reg [3:0] ena_reg;
reg [7:0] data_out_reg;

always @(posedge clk or posedge rst) begin
	if(rst) begin
		ena_reg <= 4'b0;
		data_out_reg <= 8'hff;
	end else begin//if(ena && FEPU_BEPU_w)
		case(ena_reg)
			4'b0000: 
			begin
				ena_reg <= 4'b1000;
				data_out_reg <= data_out_led0;
			end
			4'b1000: 
			begin
				ena_reg <= 4'b0100;
				data_out_reg <= data_out_led1;
			end
			4'b0100: 
			begin
				ena_reg <= 4'b0010;
				data_out_reg <= data_out_led2;
			end
			4'b0010: 
			begin
				ena_reg <= 4'b0001;
				data_out_reg <= data_out_led3;
			end
			4'b0001: 
			begin
				ena_reg <= 4'b1000;
				data_out_reg <= data_out_led0;
			end
			default: 
			begin
				ena_reg <= 4'b0000;
				data_out_reg <= 8'hff;
			end
		endcase
	end 
//	else begin
//		ena_reg <= 4'b0000;
//		data_out_reg <= 8'hff;
//	end
end


led_seg7 led3(data_in[15:12], ena_reg[0], AN[3], data_out_led3);
led_seg7 led2(data_in[11:8], ena_reg[1], AN[2], data_out_led2);
led_seg7 led1(data_in[7:4], ena_reg[2], AN[1], data_out_led1);
led_seg7 led0(data_in[3:0], ena_reg[3], AN[0], data_out_led0);

assign data_out = data_out_reg;

endmodule
