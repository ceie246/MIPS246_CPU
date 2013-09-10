library verilog;
use verilog.vl_types.all;
entity sel_sm is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sel_in          : in     vl_logic;
        sel_out         : out    vl_logic
    );
end sel_sm;
