// Input activation controller.
// Contains a FIFO (external write, internal read), an input mapper, and some control logic.

`timescale 1ns/1ps
module input_act_ctrl #(
    parameter INPUT_WIDTH = 32,
    parameter FIFO_DEPTH = 64,
    parameter OUTPUT_WIDTH = 8
  ) (
    input wire CLK,
    input wire RESETN,
    input wire CLEAR_FIFO,
    input wire START_FEED,    // starts feeding input activations out
    // FIFO interface
    output wire FIFO_EMPTY,
    input wire FIFO_WR_CMD,
    input wire [INPUT_WIDTH-1:0] FIFO_WR_DATA,
    output wire FIFO_FULL,
    // input mapper interface
    output wire [OUTPUT_WIDTH-1:0] IN_ACT_DATA_OUT
  );

  // FIFO signals
  logic clear_fifo, clear_fifo_prev;
  logic fifo_rd_cmd;
  wire [INPUT_WIDTH-1:0] fifo_rd_data;
  wire fifo_empty;

  // input mapper signals
  logic start_feed, start_feed_prev;
  logic [OUTPUT_WIDTH-1:0] data_out;
  logic unsigned [clog2(INPUT_WIDTH/OUTPUT_WIDTH)-1:0] count;

  // FIFO instance
  fifo #(
         .FIFO_WIDTH(INPUT_WIDTH),
         .FIFO_DEPTH(FIFO_DEPTH)
       ) fifo_inst (
         .CLK(CLK),
         .RESETN(RESETN & ~clear_fifo),
         .RD_CMD(fifo_rd_cmd),
         .RD_DATA(fifo_rd_data),
         .EMPTY(fifo_empty),
         .WR_CMD(FIFO_WR_CMD),
         .WR_DATA(FIFO_WR_DATA),
         .FULL(FIFO_FULL)
       );

  // Every clock cycle, the input mapper outputs 1 byte (LSB to MSB) of the
  // 4 byte data read from the FIFO. When MSB is reached, the next 4 bytes
  // are read from the FIFO. This is repeated until the FIFO is empty.

  // create input mapper
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      data_out <= 0;
      count <= 0;
    end
    else begin
      count <= count + 1;
      data_out <= fifo_rd_data[OUTPUT_WIDTH*(count+1)-1:OUTPUT_WIDTH*count];
      if (count == (INPUT_WIDTH/OUTPUT_WIDTH)-1) begin
        count <= 0;
        fifo_rd_cmd <= 1'b1;
      end
      else begin
        fifo_rd_cmd <= 1'b0;
      end
    end
  end

endmodule
