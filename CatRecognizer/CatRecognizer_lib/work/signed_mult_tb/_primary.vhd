library verilog;
use verilog.vl_types.all;
entity signed_mult_tb is
    generic(
        M               : integer := 3;
        N               : integer := 3
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of M : constant is 1;
    attribute mti_svvh_generic_type of N : constant is 1;
end signed_mult_tb;
