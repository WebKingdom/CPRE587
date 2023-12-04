
`timescale 1ns/1ps
module pulse_creator (
    input wire CLK,
    input wire RESETN,
    input wire IN_DATA,
    output wire OUT_DATA
  );

  logic in_data_prev;

  assign OUT_DATA = IN_DATA == 1'b1 & in_data_prev == 1'b0;

  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
        in_data_prev <= 0;
    end
    else begin
        in_data_prev <= IN_DATA;
    end
  end
endmodule
