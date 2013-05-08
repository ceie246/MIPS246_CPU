`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:19:54 11/27/2012 
// Design Name: 
// Module Name:    barrelshifter32 
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
module barrelshifter32(
    input [31:0] a, // input A: the num to be shifted
    input [4:0] b, // input B: the num to shift
    input [1:0] aluc, // 4 type of shift
    output reg [31:0] c // output: result
    );
	 
//________________arm carry��־λ___________________
//1.�ӷ����н�λ���޷��������㷢�������
//2.��������λ���޷��������������
//3.������λ�ķǼӼ��������һ�α������λ����ֵ(����λģ��ʵ��)

reg [31:0] temp;
always@(a, b, aluc) begin
	case(aluc)
		2'b00: // right arithmetic
		begin
			if(b[0] == 1) begin
				temp = $signed(a) >>> 1;
			end else begin
				temp = a;
			end
			if(b[1] == 1) begin
				temp = $signed(temp) >>> 2;
			end else begin
				temp = temp;
			end
			if(b[2] == 1) begin
				temp = $signed(temp) >>> 4;
			end else begin
				temp = temp;
			end
			if(b[3] == 1) begin
				temp = $signed(temp) >>> 8;
			end else begin
				temp = temp;
			end
			if(b[4] == 1) begin
				temp = $signed(temp) >>> 16;
			end else begin
				temp = temp;
			end
			
		end
		2'b01: // right logic
		begin
			if(b[0] == 1) begin
				temp = a >> 1;
			end else begin
				temp = a;
			end
			if(b[1] == 1) begin
				temp = temp >> 2;
			end else begin
				temp = temp;
			end
			if(b[2] == 1) begin
				temp = temp >> 4;
			end else begin
				temp = temp;
			end
			if(b[3] == 1) begin
				temp = temp >> 8;
			end else begin
				temp = temp;
			end
			if(b[4] == 1) begin
				temp = temp >> 16;
			end else begin
				temp = temp;
			end
			
		end
		2'b10, //left arithmetic
		2'b11: //left logic
		begin
			if(b[0] == 1) begin
				temp = a << 1;
			end else begin
				temp = a;
			end
			if(b[1] == 1) begin
				temp = temp << 2;
			end else begin
				temp = temp;
			end
			if(b[2] == 1) begin
				temp = temp << 4;
			end else begin
				temp = temp;
			end
			if(b[3] == 1) begin
				temp = temp << 8;
			end else begin
				temp = temp;
			end
			if(b[4] == 1) begin
				temp = temp << 16;
			end else begin
				temp = temp;
			end
			
		end
		
	endcase
	c = temp;
end

//assign c = temp;
endmodule
