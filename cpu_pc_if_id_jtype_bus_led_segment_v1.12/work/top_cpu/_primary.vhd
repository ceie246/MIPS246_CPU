library verilog;
use verilog.vl_types.all;
entity top_cpu is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        BEPU_FEPU_data  : in     vl_logic_vector(31 downto 0);
        bc_cpu_data     : in     vl_logic_vector(31 downto 0);
        cpu_bc_data     : out    vl_logic_vector(31 downto 0);
        cpu_bc_addr     : out    vl_logic_vector(31 downto 0);
        cpu_bc_rw       : out    vl_logic
    );
end top_cpu;
