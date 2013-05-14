`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:55:28 12/10/2012 
// Design Name: 
// Module Name:    bshifter32_carry 
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
module bshifter32_carry(
    input [31:0] a,
    input [4:0] b, // the minnum = 1
    input [1:0] aluc,
    output [31:0] c,
    output carry,
	 output negative
//	 output [31:0] c_bs, //for test
//	 output carry_bs,
//	 output negative_bs
    );
	 
wire [31:0] c1;
reg carry_r;
reg [31:0] c_r;
barrelshifter32 bs(a, b[4:0] - 5'b1, aluc, c1);

always@(a, b, aluc, c1) begin
	case(aluc) 
		2'b00: //right arithmetic
		begin 
			carry_r = c1[0];
			c_r = $signed(c1) >>> 1;
		end
		2'b01: // right logic
		begin
			carry_r = c1[0];
			c_r = c1 >> 1;
		end
		2'b10, //left arithmetic
		2'b11: //left logic
		begin
			carry_r = c1[31];
			c_r = c1 << 1;
		end
	endcase
end

assign negative = (b == 5'b0) ? a[31] : c[31];
assign carry = (b == 5'b0) ? 1'b0 : carry_r;
assign c = (b == 5'b0) ? a : c_r;

//-------------------for test---------------------
//assign carry_bs = aluc[1] ? a[32-b] : a[b-1];
//barrelshifter32 bs_test(a, b, aluc, c_bs);
//assign negative_bs = c_bs[31];
endmodule
