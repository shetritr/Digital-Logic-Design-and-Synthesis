library verilog;
use verilog.vl_types.all;
entity Neuron is
    generic(
        PixelWidth      : integer := 8;
        WeightWidth     : integer := 5
    );
    port(
        p               : in     vl_logic_vector;
        w               : in     vl_logic_vector;
        result          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PixelWidth : constant is 1;
    attribute mti_svvh_generic_type of WeightWidth : constant is 1;
end Neuron;
