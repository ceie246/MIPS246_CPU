`timescale 1ns / 1ps
`include "define.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:12 09/11/2013 
// Design Name: 
// Module Name:    kb2ascii 
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
module kb2ascii(
		input  [7:0] data_in,
		output [7:0] data_out
    );
	 
`include "global_parameter.v"
reg [7:0] data_reg;

always @(*) begin
	case(data_in)
		kb_1: data_reg <= /*shift_pressed? ascii_shift_1: */ascii_1;//8'h31; //1
		kb_2: data_reg <= /*shift_pressed? ascii_shift_2: */ascii_2;//8'h32; //2
		kb_3: data_reg <= /*shift_pressed? ascii_shift_3: */ascii_3;//8'h33; //3
		kb_4: data_reg <= /*shift_pressed? ascii_shift_4: */ascii_4;//8'h34; //4
		kb_5: data_reg <= /*shift_pressed? ascii_shift_5: */ascii_5;//8'h35; //5
		kb_6: data_reg <= /*shift_pressed? ascii_shift_6: */ascii_6;//8'h36; //6
		kb_7: data_reg <= /*shift_pressed? ascii_shift_7: */ascii_7;//8'h37; //7
		kb_8: data_reg <= /*shift_pressed? ascii_shift_8: */ascii_8;//8'h38; //8
		kb_9: data_reg <= /*shift_pressed? ascii_shift_9: */ascii_9;//8'h39; //9
		kb_0: data_reg <= /*shift_pressed? ascii_shift_0: */ascii_0;//8'h30; //0
		kb_a: data_reg <= ascii_a;
		kb_b: data_reg <= ascii_b;
		kb_c: data_reg <= ascii_c;
		kb_d: data_reg <= ascii_d;
		kb_e: data_reg <= ascii_e;
		kb_f: data_reg <= ascii_f;
		kb_g: data_reg <= ascii_g;
		kb_h: data_reg <= ascii_h;
		kb_i: data_reg <= ascii_i;
		kb_j: data_reg <= ascii_j;
		kb_k: data_reg <= ascii_k;
		kb_l: data_reg <= ascii_l;
		kb_m: data_reg <= ascii_m;
		kb_n: data_reg <= ascii_n;
		kb_o: data_reg <= ascii_o;
		kb_p: data_reg <= ascii_p;
		kb_q: data_reg <= ascii_q;
		kb_r: data_reg <= ascii_r;
		kb_s: data_reg <= ascii_s;
		kb_t: data_reg <= ascii_t;
		kb_u: data_reg <= ascii_u;
		kb_v: data_reg <= ascii_v;
		kb_w: data_reg <= ascii_w;
		kb_x: data_reg <= ascii_x;
		kb_y: data_reg <= ascii_y;
		kb_z: data_reg <= ascii_z;
		kb_wave: data_reg <= /*shift_pressed? ascii_shift_wave: */ascii_wave;
		kb_sub: data_reg <= /*shift_pressed? ascii_shift_sub: */ascii_sub;
		kb_add: data_reg <= /*shift_pressed? ascii_shift_add: */ascii_add;
		kb_left_bracket: data_reg <= /*shift_pressed? ascii_shift_left_bracket: */ascii_left_bracket;
		kb_right_bracket: data_reg <= /*shift_pressed? ascii_shift_right_bracket: */ascii_right_bracket;
		kb_or: data_reg <= /*shift_pressed? ascii_shift_or: */ascii_or;
		kb_colon: data_reg <= /*shift_pressed? ascii_shift_colon: */ascii_colon;
		kb_quotes: data_reg <= /*shift_pressed? ascii_shift_quotes: */ascii_quotes;
		kb_comma: data_reg <= /*shift_pressed? ascii_shift_comma: */ascii_comma;
		kb_dot: data_reg <= /*shift_pressed? ascii_shift_dot: */ascii_dot;
		kb_div: data_reg <= /*shift_pressed? ascii_shift_div: */ascii_div;
		default: 
			begin
				data_reg <= data_in;//8'h40;
			end
	endcase
end

assign data_out = data_reg;
endmodule
