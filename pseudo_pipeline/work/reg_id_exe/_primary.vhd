library verilog;
use verilog.vl_types.all;
entity reg_id_exe is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        wrf_id          : in     vl_logic;
        aludc_id        : in     vl_logic;
        wdc_id          : in     vl_logic;
        wdmem_id        : in     vl_logic;
        aluc_id         : in     vl_logic_vector(3 downto 0);
        immc_id         : in     vl_logic;
        shift_id        : in     vl_logic;
        pc8_id          : in     vl_logic_vector(31 downto 0);
        rd1_id          : in     vl_logic_vector(31 downto 0);
        shamt32_id      : in     vl_logic_vector(31 downto 0);
        rd2_id          : in     vl_logic_vector(31 downto 0);
        imm32_id        : in     vl_logic_vector(31 downto 0);
        wa_id           : in     vl_logic_vector(4 downto 0);
        wrf_exe         : out    vl_logic;
        aludc_exe       : out    vl_logic;
        wdc_exe         : out    vl_logic;
        wdmem_exe       : out    vl_logic;
        aluc_exe        : out    vl_logic_vector(3 downto 0);
        immc_exe        : out    vl_logic;
        shift_exe       : out    vl_logic;
        pc8_exe         : out    vl_logic_vector(31 downto 0);
        rd1_exe         : out    vl_logic_vector(31 downto 0);
        shamt32_exe     : out    vl_logic_vector(31 downto 0);
        rd2_exe         : out    vl_logic_vector(31 downto 0);
        imm32_exe       : out    vl_logic_vector(31 downto 0);
        wa_exe          : out    vl_logic_vector(4 downto 0)
    );
end reg_id_exe;
