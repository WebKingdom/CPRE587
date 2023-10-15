// Nx2 multiplier unit
`timescale 1ns/1ps
module mul_Nx2 #(
    parameter N = 8
  ) (
    input [N-1:0] a,
    input [1:0] b,
    output [N+2:0] axb
  );

  assign axb = N'(signed'(a)) * signed'(b);

endmodule
