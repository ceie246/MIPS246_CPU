library verilog;
use verilog.vl_types.all;
entity controlunit is
    port(
        op              : in     vl_logic_vector(5 downto 0);
        func            : in     vl_logic_vector(5 downto 0);
        zero            : in     vl_logic;
        wrf_exe         : in     vl_logic;
        wdc_exe         : in     vl_logic;
        aludc_exe       : in     vl_logic;
        wrf_mem         : in     vl_logic;
        wdc_mem         : in     vl_logic;
        wa_exe0         : in     vl_logic_vector(4 downto 0);
        wa_mem          : in     vl_logic_vector(4 downto 0);
        rs              : in     vl_logic_vector(4 downto 0);
        rt              : in     vl_logic_vector(4 downto 0);
        aluc            : out    vl_logic_vector(3 downto 0);
        wrf             : out    vl_logic;
        sext_i          : out    vl_logic;
        sext_s          : out    vl_logic;
        shift           : out    vl_logic;
        regwa           : out    vl_logic;
        immc            : out    vl_logic;
        wena            : out    vl_logic;
        wdc             : out    vl_logic;
        aludc           : out    vl_logic;
        pcsource        : out    vl_logic_vector(1 downto 0);
        rd1c            : out    vl_logic_vector(1 downto 0);
        rd2c            : out    vl_logic_vector(1 downto 0);
        stall           : out    vl_logic
    );
end controlunit;
