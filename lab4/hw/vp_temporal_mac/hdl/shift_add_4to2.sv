// A 4 input, 2 output shift and add module
// 4 10-bit inputs, 2 16-bit output performing 2 adds with a <<2 and then
`timescale 1ns/1ps
module shift_add_4to2 #(
    parameter IN_WIDTH = 10,
    parameter OUT_WIDTH = 12
  )(
    input [IN_WIDTH-1:0] in_4x [0:3],
    output [OUT_WIDTH-1:0] result2x [0:1]
  );
  localparam SHIFT_WIDTH = IN_WIDTH + 2;

  assign result2x[0] = SHIFT_WIDTH'(signed'(in_4x[1] << 2)) + SHIFT_WIDTH'(signed'(in_4x[0]));
  assign result2x[1] = SHIFT_WIDTH'(signed'(in_4x[3] << 2)) + SHIFT_WIDTH'(signed'(in_4x[2]));

endmodule
