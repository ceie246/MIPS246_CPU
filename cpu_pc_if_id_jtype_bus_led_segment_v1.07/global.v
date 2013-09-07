`define FPGA
//`define TEST

`ifdef TEST
	`define CLK 2
`elsif FPGA
	`define CLK 20 
	//write_segment_new 17
	//write_led_new 17
`endif

