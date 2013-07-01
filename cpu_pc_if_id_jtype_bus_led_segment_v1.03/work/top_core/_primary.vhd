library verilog;
use verilog.vl_types.all;
entity top_core is
    port(
        clk             : in     vl_logic;
        res             : in     vl_logic;
        SW              : in     vl_logic_vector(2 downto 0);
        led_data        : out    vl_logic_vector(7 downto 0);
        segment_data    : out    vl_logic_vector(7 downto 0);
        AN              : out    vl_logic_vector(3 downto 0)
    );
end top_core;
