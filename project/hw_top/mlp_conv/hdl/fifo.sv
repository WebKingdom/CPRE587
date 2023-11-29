// A synchronous FIFO made of registers, with FIFO_WIDTH and FIFO_DEPTH parameters.
// Total FIFO size is FIFO_WIDTH * FIFO_DEPTH bits.
// FIFO full flag is set when the last register is written.
// FIFO empty flag is set when the last register is read.

`timescale 1ns/1ps
module fifo #(
    parameter FIFO_WIDTH = 32,
    parameter FIFO_DEPTH = 32
  ) (
    input wire CLK,
    input wire RESETN,
    // FIFO read interface
    input wire RD_CMD,
    output wire [FIFO_WIDTH-1:0] RD_DATA,
    output wire FIFO_EMPTY,
    // FIFO write interface
    input wire WR_CMD,
    input wire [FIFO_WIDTH-1:0] WR_DATA,
    output wire FIFO_FULL
  );

  localparam PTR_WIDTH = $clog2(FIFO_DEPTH);

  // FIFO registers
  logic [FIFO_WIDTH-1:0] fifo_reg [0:FIFO_DEPTH-1];
  // FIFO read and write pointers
  logic [PTR_WIDTH-1:0] front_reg, front_next;
  logic [PTR_WIDTH-1:0] back_reg, back_next;
  // FIFO full and empty flags
  logic fifo_full_reg, fifo_full_next;
  logic fifo_empty_reg, fifo_empty_next;

  wire [1:0] rd_wr_cmd;
  wire wr_en;

  assign rd_wr_cmd = {RD_CMD, WR_CMD};
  assign wr_en = ~fifo_full_reg & WR_CMD;

  assign FIFO_FULL = fifo_full_reg;
  assign FIFO_EMPTY = fifo_empty_reg;
  assign RD_DATA = fifo_reg[front_reg];

  // input/output data
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      for (int i = 0; i < FIFO_DEPTH; i++) begin
        fifo_reg[i] <= 0;
      end
    end
    else begin
      // only write if not full OR when doing both read AND write
      if (wr_en == 1'b1 || rd_wr_cmd == 2'b11) begin
        fifo_reg[back_reg] <= WR_DATA;
      end
    end
  end

  // status of FIFO and locatin of pointers
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      front_reg <= 0;
      back_reg <= 0;
      fifo_full_reg <= 0;
      fifo_empty_reg <= 1;
    end
    else begin
      front_reg <= front_next;
      back_reg <= back_next;
      fifo_full_reg <= fifo_full_next;
      fifo_empty_reg <= fifo_empty_next;
    end
  end

  // read and write operation (blocking assignments, sequential logic)
  always_comb begin
    front_next = front_reg;
    back_next = back_reg;
    fifo_full_next = fifo_full_reg;
    fifo_empty_next = fifo_empty_reg;

    if (rd_wr_cmd == 2'b10) begin
      // read only operation
      if (fifo_empty_reg == 1'b0) begin
        // not full due to read
        fifo_full_next = 1'b0;
        front_next = front_reg + 1;
        // empty check
        if (front_next == back_reg) begin
          fifo_empty_next = 1;
        end
      end
    end
    else if (rd_wr_cmd == 2'b01) begin
      // write only operation
      if (fifo_full_reg == 1'b0) begin
        // not empty due to write
        fifo_empty_next = 1'b0;
        back_next = back_reg + 1;
        // full check
        if (back_next == front_reg) begin
          fifo_full_next = 1;
        end
      end
    end
    else if (rd_wr_cmd == 2'b11) begin
      // read and write operation
      if (fifo_empty_reg == 1'b1) begin
        // can not read but can write
        fifo_empty_next = 1'b0;
        back_next = back_reg + 1;
        // full check
        if (back_next == front_reg) begin
          fifo_full_next = 1;
        end
      end
      else begin
        front_next = front_reg + 1;
        back_next = back_reg + 1;
      end
    end
  end

endmodule
