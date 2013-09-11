library verilog;
use verilog.vl_types.all;
entity ready_sm is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ready_in        : in     vl_logic;
        ready_out       : out    vl_logic;
        addr            : out    vl_logic_vector(31 downto 0)
    );
end ready_sm;
