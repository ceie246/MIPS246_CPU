`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:55 06/09/2013 
// Design Name: 
// Module Name:    bus_controller 
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
module bus_controller(
		input [31:0] cpu_bc_addr,
		input [31:0] cpu_bc_data,
		input cpu_bc_we,
		//output [31:0] bc_cpu_data,
		output reg [31:0] select,
		output reg [31:0] bc_BE_data,
		output reg bc_BE_we
    );

always @(*) begin
	select = 32'b0;
	bc_BE_data = 32'b0;
	bc_BE_we = 1'b0;
	if(cpu_bc_addr[31:16] == 16'b0) begin
		select[31] = 1'b1;	
	end else begin
		case(cpu_bc_addr[31:4])
		28'h000f_ff0: begin //led
			select[0] = 1'b1; 
			bc_BE_data = cpu_bc_data; 
			bc_BE_we = cpu_bc_we;
		end
		28'h000f_ff1: begin
			select[1] = 1'b1; //7 segment display
			bc_BE_data = cpu_bc_data;
			bc_BE_we = cpu_bc_we;
		end
		default:
			select = 32'b0;
		endcase
	end
end

//assign select[32] = (cpu_bc_addr[31:16] == 16'b0) ? 1'b1 : 1'b0;

endmodule
