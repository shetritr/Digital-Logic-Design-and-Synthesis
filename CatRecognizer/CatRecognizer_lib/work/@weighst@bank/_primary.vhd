library verilog;
use verilog.vl_types.all;
entity WeighstBank is
    generic(
        Amba_Addr_Depth : integer := 12;
        WeightPrecision : integer := 5;
        WeightRowWidth  : integer := 15
    );
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        control         : in     vl_logic_vector(1 downto 0);
        address         : in     vl_logic_vector;
        WriteData       : in     vl_logic_vector;
        ReadData        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Amba_Addr_Depth : constant is 1;
    attribute mti_svvh_generic_type of WeightPrecision : constant is 1;
    attribute mti_svvh_generic_type of WeightRowWidth : constant is 1;
end WeighstBank;
