library verilog;
use verilog.vl_types.all;
entity APB is
    generic(
        Amba_Word       : integer := 24;
        Amba_Addr_Depth : integer := 13
    );
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        control         : in     vl_logic_vector(1 downto 0);
        address         : in     vl_logic_vector;
        WriteData       : in     vl_logic_vector;
        ReadData        : out    vl_logic_vector;
        Start_work_reg  : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Amba_Word : constant is 1;
    attribute mti_svvh_generic_type of Amba_Addr_Depth : constant is 1;
end APB;
