library verilog;
use verilog.vl_types.all;
entity reg_exe_mem is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        wrf_exe         : in     vl_logic;
        wdc_exe         : in     vl_logic;
        wdmem_exe       : in     vl_logic;
        alud_exe        : in     vl_logic_vector(31 downto 0);
        rd2_exe         : in     vl_logic_vector(31 downto 0);
        wa_exe          : in     vl_logic_vector(4 downto 0);
        wrf_mem         : out    vl_logic;
        wdc_mem         : out    vl_logic;
        wdmem_mem       : out    vl_logic;
        alud_mem        : out    vl_logic_vector(31 downto 0);
        rd2_mem         : out    vl_logic_vector(31 downto 0);
        wa_mem          : out    vl_logic_vector(4 downto 0)
    );
end reg_exe_mem;
