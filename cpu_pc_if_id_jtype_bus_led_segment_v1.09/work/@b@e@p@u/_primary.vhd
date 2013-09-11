library verilog;
use verilog.vl_types.all;
entity BEPU is
    port(
        clk             : in     vl_logic;
        vga_clk         : in     vl_logic;
        rst             : in     vl_logic;
        \select\        : in     vl_logic_vector(31 downto 0);
        FEPU_BEPU_w     : in     vl_logic;
        SW              : in     vl_logic_vector(2 downto 0);
        ps2_clk         : in     vl_logic;
        ps2_data        : in     vl_logic;
        FEPU_BEPU_data  : in     vl_logic_vector(31 downto 0);
        FEPU_BEPU_addr  : in     vl_logic_vector(31 downto 0);
        BEPU_FEPU_data  : out    vl_logic_vector(31 downto 0);
        led_data        : out    vl_logic_vector(7 downto 0);
        segment_data    : out    vl_logic_vector(7 downto 0);
        AN              : out    vl_logic_vector(3 downto 0);
        r               : out    vl_logic_vector(2 downto 0);
        g               : out    vl_logic_vector(2 downto 0);
        b               : out    vl_logic_vector(1 downto 0);
        hs              : out    vl_logic;
        vs              : out    vl_logic
    );
end BEPU;
