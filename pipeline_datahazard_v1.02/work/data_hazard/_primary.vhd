library verilog;
use verilog.vl_types.all;
entity data_hazard is
    port(
        wrf_exe         : in     vl_logic;
        wdc_exe         : in     vl_logic;
        aludc_exe       : in     vl_logic;
        wrf_mem         : in     vl_logic;
        wdc_mem         : in     vl_logic;
        wrf_id          : in     vl_logic;
        rs              : in     vl_logic_vector(4 downto 0);
        rt              : in     vl_logic_vector(4 downto 0);
        wa_exe0         : in     vl_logic_vector(4 downto 0);
        wa_mem          : in     vl_logic_vector(4 downto 0);
        rd1c            : out    vl_logic_vector(1 downto 0);
        rd2c            : out    vl_logic_vector(1 downto 0);
        stall           : out    vl_logic
    );
end data_hazard;
