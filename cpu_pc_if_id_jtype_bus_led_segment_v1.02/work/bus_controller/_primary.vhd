library verilog;
use verilog.vl_types.all;
entity bus_controller is
    port(
        cpu_bc_addr     : in     vl_logic_vector(31 downto 0);
        cpu_bc_data     : in     vl_logic_vector(31 downto 0);
        cpu_bc_we       : in     vl_logic;
        \select\        : out    vl_logic_vector(31 downto 0);
        bc_BE_data      : out    vl_logic_vector(31 downto 0);
        bc_BE_we        : out    vl_logic
    );
end bus_controller;
