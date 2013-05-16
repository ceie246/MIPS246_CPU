library verilog;
use verilog.vl_types.all;
entity pipe_id is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        pc_id           : in     vl_logic_vector(31 downto 0);
        instr           : in     vl_logic_vector(31 downto 0);
        wd              : in     vl_logic_vector(31 downto 0);
        rf_wena         : in     vl_logic;
        wa              : in     vl_logic_vector(4 downto 0);
        wrf_exe         : in     vl_logic;
        wdc_exe         : in     vl_logic;
        aludc_exe       : in     vl_logic;
        wrf_mem         : in     vl_logic;
        wdc_mem         : in     vl_logic;
        wa_exe0         : in     vl_logic_vector(4 downto 0);
        wa_mem          : in     vl_logic_vector(4 downto 0);
        alud_exe        : in     vl_logic_vector(31 downto 0);
        alud_mem        : in     vl_logic_vector(31 downto 0);
        dmemd_mem       : in     vl_logic_vector(31 downto 0);
        rd1_id          : out    vl_logic_vector(31 downto 0);
        rd2_id          : out    vl_logic_vector(31 downto 0);
        shamt32         : out    vl_logic_vector(31 downto 0);
        imm32           : out    vl_logic_vector(31 downto 0);
        wa_d            : out    vl_logic_vector(4 downto 0);
        pc_beqbne       : out    vl_logic_vector(31 downto 0);
        index28         : out    vl_logic_vector(27 downto 0);
        aluc            : out    vl_logic_vector(3 downto 0);
        wrf             : out    vl_logic;
        shift           : out    vl_logic;
        immc            : out    vl_logic;
        pcsource        : out    vl_logic_vector(1 downto 0);
        wdmem           : out    vl_logic;
        wdc             : out    vl_logic;
        aludc           : out    vl_logic;
        stall           : out    vl_logic
    );
end pipe_id;
