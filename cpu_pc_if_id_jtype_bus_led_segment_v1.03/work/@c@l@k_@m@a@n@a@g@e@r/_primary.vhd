library verilog;
use verilog.vl_types.all;
entity CLK_MANAGER is
    generic(
        clk             : integer := 3
    );
    port(
        clk_100M        : in     vl_logic;
        res             : in     vl_logic;
        CPU_clk         : out    vl_logic;
        reset           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clk : constant is 1;
end CLK_MANAGER;
