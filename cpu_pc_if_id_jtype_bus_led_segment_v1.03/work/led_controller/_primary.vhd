library verilog;
use verilog.vl_types.all;
entity led_controller is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ena             : in     vl_logic;
        SW              : in     vl_logic_vector(1 downto 0);
        FEPU_BEPU_w     : in     vl_logic;
        indata          : in     vl_logic_vector(31 downto 0);
        outdata         : out    vl_logic_vector(7 downto 0)
    );
end led_controller;
