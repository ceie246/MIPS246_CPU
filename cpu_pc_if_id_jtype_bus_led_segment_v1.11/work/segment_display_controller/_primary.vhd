library verilog;
use verilog.vl_types.all;
entity segment_display_controller is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ena             : in     vl_logic;
        FEPU_BEPU_w     : in     vl_logic;
        SW              : in     vl_logic;
        data_in         : in     vl_logic_vector(31 downto 0);
        AN              : out    vl_logic_vector(3 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end segment_display_controller;
