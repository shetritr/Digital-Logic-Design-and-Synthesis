//
// Verilog Module CatRecognizer_lib.signed_adder
//
// Created:
//          by - MaorA.UNKNOWN (DESKTOP-8K7FTQN)
//          at - 16:04:18 13/11/2018
//
// using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
//

// NOTE : M should be the M = max(M,N), so before calling any adder we sould know if the precsion bits > 8 (data pixel bits)
module signed_adder#(parameter M=8, parameter N=8) (
 input   [M-1:0]     A,
 input   [N-1:0]     B,
 output  [M:0]     F);
 
 assign F = A + B;

endmodule
