library verilog;
use verilog.vl_types.all;
entity reg_mem_wb is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        wrf_mem         : in     vl_logic;
        wdc_mem         : in     vl_logic;
        dmemd_mem       : in     vl_logic_vector(31 downto 0);
        alud_mem        : in     vl_logic_vector(31 downto 0);
        wa_mem          : in     vl_logic_vector(4 downto 0);
        wrf_wb          : out    vl_logic;
        wdc_wb          : out    vl_logic;
        dmemd_wb        : out    vl_logic_vector(31 downto 0);
        alud_wb         : out    vl_logic_vector(31 downto 0);
        wa_wb           : out    vl_logic_vector(4 downto 0)
    );
end reg_mem_wb;
