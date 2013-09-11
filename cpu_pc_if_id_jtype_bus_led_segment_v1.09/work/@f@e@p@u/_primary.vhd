library verilog;
use verilog.vl_types.all;
entity FEPU is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        BEPU_FEPU_data  : in     vl_logic_vector(31 downto 0);
        FEPU_BEPU_select: out    vl_logic_vector(31 downto 0);
        FEPU_BEPU_w     : out    vl_logic;
        FEPU_BEPU_data  : out    vl_logic_vector(31 downto 0);
        FEPU_BEPU_addr  : out    vl_logic_vector(31 downto 0)
    );
end FEPU;
