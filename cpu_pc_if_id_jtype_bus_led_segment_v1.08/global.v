`define FPGA
//`define TEST

`ifdef TEST
	`define CLK 2
`elsif FPGA
	`define CLK 17//20 
	//write_segment_new 17
	//write_led_new 17
	//write_vga_continously  17 for not 2 power, 16 for 2 power
`endif

