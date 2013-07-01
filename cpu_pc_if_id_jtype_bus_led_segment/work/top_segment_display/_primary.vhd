library verilog;
use verilog.vl_types.all;
entity top_segment_display is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        data_in         : in     vl_logic_vector(15 downto 0);
        AN              : out    vl_logic_vector(3 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end top_segment_display;
