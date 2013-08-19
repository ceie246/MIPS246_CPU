library verilog;
use verilog.vl_types.all;
entity pipe_mem is
    port(
        clk             : in     vl_logic;
        ram_ena         : in     vl_logic;
        ram_wena        : in     vl_logic;
        addr            : in     vl_logic_vector(31 downto 0);
        ram_indata      : in     vl_logic_vector(31 downto 0);
        ram_outdata     : out    vl_logic_vector(31 downto 0)
    );
end pipe_mem;
