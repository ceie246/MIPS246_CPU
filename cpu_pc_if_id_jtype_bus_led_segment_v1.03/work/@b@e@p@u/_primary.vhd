library verilog;
use verilog.vl_types.all;
entity BEPU is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        \select\        : in     vl_logic_vector(31 downto 0);
        FEPU_BEPU_w     : in     vl_logic;
        SW              : in     vl_logic_vector(2 downto 0);
        FEPU_BEPU_data  : in     vl_logic_vector(31 downto 0);
        led_data        : out    vl_logic_vector(7 downto 0);
        segment_data    : out    vl_logic_vector(7 downto 0);
        AN              : out    vl_logic_vector(3 downto 0)
    );
end BEPU;
