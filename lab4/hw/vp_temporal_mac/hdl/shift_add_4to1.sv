// A 4 input, 1 output shift and add module
// 4 10-bit inputs, 1 16-bit output performing 2 adds with a <<2 and then
// another add with a <<4
`timescale 1ns/1ps
module shift_add_4to1(
    input [9:0] in_4x10b [0:3],
    output [15:0] result
  );
  logic [11:0] add_0, add_1;

  assign add_0 = 12'(signed'(in_4x10b[1] << 2)) + 12'(signed'(in_4x10b[0]));
  assign add_1 = 12'(signed'(in_4x10b[3] << 2)) + 12'(signed'(in_4x10b[2]));
  assign result = 16'(signed'(add_1 << 4)) + 16'(signed'(add_0));

endmodule
