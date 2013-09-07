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
		//input [31:0] cpu_bc_data,
		input cpu_bc_rw,
		//output [31:0] bc_cpu_data,
		output reg [31:0] select,
		output rw
    );

always @(*) begin
	select = 32'b0;
	if(cpu_bc_addr[31:16] == 16'b0) begin
		select[31] = 1'b1;	
	end else begin
		case(cpu_bc_addr[31:0])
		32'h000f_ff00: select[0] = 1'b1; //led
		32'h000f_ff01: select[1] = 1'b1; //7 segment display
		default:
			select = 32'b0;
		endcase
	end
end

//assign select[32] = (cpu_bc_addr[31:16] == 16'b0) ? 1'b1 : 1'b0;
assign rw = cpu_bc_rw;

endmodule
