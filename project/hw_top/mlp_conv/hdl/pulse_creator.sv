
`timescale 1ns/1ps
module pulse_creator (
    input wire CLK,
    input wire RESETN,
    input wire IN_DATA,
    output wire OUT_DATA
  );

  logic in_data_ff, in_data_ff2;

  assign OUT_DATA = in_data_ff2 == 0 && in_data_ff == 1;

  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
        in_data_ff <= 0;
        in_data_ff2 <= 0;
    end
    else begin
        in_data_ff <= IN_DATA;
        in_data_ff2 <= in_data_ff;
    end
  end
endmodule
