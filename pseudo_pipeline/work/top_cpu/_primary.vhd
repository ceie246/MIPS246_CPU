library verilog;
use verilog.vl_types.all;
entity top_cpu is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        iram_indata     : in     vl_logic_vector(31 downto 0)
    );
end top_cpu;
