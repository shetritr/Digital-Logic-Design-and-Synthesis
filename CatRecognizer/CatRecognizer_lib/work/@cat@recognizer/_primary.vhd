library verilog;
use verilog.vl_types.all;
entity CatRecognizer is
    generic(
        Amba_Word       : integer := 24;
        Amba_Addr_Depth : integer := 12;
        WeightPrecision : integer := 5
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        PENABLE         : in     vl_logic;
        PSEL            : in     vl_logic;
        PWRITE          : in     vl_logic;
        PADDR           : in     vl_logic_vector;
        PWDATA          : in     vl_logic_vector;
        PRDATA          : out    vl_logic_vector;
        CatRecOut       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Amba_Word : constant is 1;
    attribute mti_svvh_generic_type of Amba_Addr_Depth : constant is 1;
    attribute mti_svvh_generic_type of WeightPrecision : constant is 1;
end CatRecognizer;
