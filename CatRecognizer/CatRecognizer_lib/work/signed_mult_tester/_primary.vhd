library verilog;
use verilog.vl_types.all;
entity signed_mult_tester is
    generic(
        M               : integer := 3;
        N               : integer := 3
    );
    port(
        A               : out    vl_logic_vector;
        B               : out    vl_logic_vector;
        F               : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of M : constant is 1;
    attribute mti_svvh_generic_type of N : constant is 1;
end signed_mult_tester;
