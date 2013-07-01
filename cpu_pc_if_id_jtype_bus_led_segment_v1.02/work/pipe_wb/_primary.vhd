library verilog;
use verilog.vl_types.all;
entity pipe_wb is
    port(
        dmem_data       : in     vl_logic_vector(31 downto 0);
        alud            : in     vl_logic_vector(31 downto 0);
        wdc             : in     vl_logic;
        wd              : out    vl_logic_vector(31 downto 0)
    );
end pipe_wb;
