`define FPGA
//`define TEST
//`define CS

`ifdef TEST
	`define CLK 2
`elsif FPGA
	`define CLK 12//20
`elsif CS
	`define CLK 5
`endif

