`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:15 01/26/2013 
// Design Name: 
// Module Name:    led_seg7 
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
module led_seg7(
	input [3:0] data_in,
	input ena,
	output AN,
	output [7:0] data_out
    );

//no DP decode-----common anode
parameter seg0 = 8'hc0;
parameter seg1 = 8'hf9;
parameter seg2 = 8'ha4;
parameter seg3 = 8'hb0;
parameter seg4 = 8'h99;
parameter seg5 = 8'h92;
parameter seg6 = 8'h82;
parameter seg7 = 8'hf8;
parameter seg8 = 8'h80;
parameter seg9 = 8'h90;
parameter sega = 8'h88;
parameter segb = 8'h83;
parameter segc = 8'hc6;
parameter segd = 8'ha1;
parameter sege = 8'h86;
parameter segf = 8'h8e;
parameter seg_off = 8'hff;

reg [7:0] data_out_reg;
always @(data_in) begin
	case(data_in) 
		4'h0: data_out_reg <= seg0;
		4'h1: data_out_reg <= seg1;
		4'h2: data_out_reg <= seg2;
		4'h3: data_out_reg <= seg3;
		4'h4: data_out_reg <= seg4;
		4'h5: data_out_reg <= seg5;
		4'h6: data_out_reg <= seg6;
		4'h7: data_out_reg <= seg7;
		4'h8: data_out_reg <= seg8;
		4'h9: data_out_reg <= seg9;
		4'ha: data_out_reg <= sega;
		4'hb: data_out_reg <= segb;
		4'hc: data_out_reg <= segc;
		4'hd: data_out_reg <= segd;
		4'he: data_out_reg <= sege;
		4'hf: data_out_reg <= segf;
		default : data_out_reg <= seg_off;
	endcase
end

reg AN_reg;
always @(ena) begin
	if(ena)
	  AN_reg <= 1'b0;
	else
	  AN_reg <= 1'b1;
end

assign AN = AN_reg;
assign data_out = data_out_reg;
endmodule 
