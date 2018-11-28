//
// Verilog Module CatRecognizer_lib.signed_mult
//
// Created:
//          by - MaorA.UNKNOWN (DESKTOP-8K7FTQN)
//          at - 14:23:01 13/11/2018
//
// using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
//
module signed_mult #(parameter M=8, parameter N=8) (
 input   [M-1:0]     A,
 input   [N-1:0]     B,
 output  [(M+N)-1:0] F);
 
 assign F = A * B;
 
endmodule

