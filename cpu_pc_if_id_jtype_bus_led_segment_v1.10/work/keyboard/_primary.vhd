library verilog;
use verilog.vl_types.all;
entity keyboard is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        ps2_clk         : in     vl_logic;
        ps2_data        : in     vl_logic;
        ena             : in     vl_logic;
        data            : out    vl_logic_vector(7 downto 0);
        ready           : out    vl_logic
    );
end keyboard;
