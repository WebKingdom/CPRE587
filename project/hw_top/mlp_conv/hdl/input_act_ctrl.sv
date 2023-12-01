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
    input wire FIFO_WR_CMD,
    input wire [INPUT_WIDTH-1:0] FIFO_WR_DATA,
    output wire FIFO_EMPTY,
    output wire FIFO_FULL,
    // input mapper interface
    output wire [OUTPUT_WIDTH-1:0] IN_ACT_DATA_OUT,
    output wire DATA_VALID
  );

  // FIFO signals
  logic clear_fifo, clear_fifo_prev;
  logic fifo_rd_cmd;
  wire [INPUT_WIDTH-1:0] fifo_rd_data;
  wire fifo_empty;

  // input mapper signals
  logic start_feed, start_feed_prev;
  wire can_start_feed;
  logic read_fifo_till_empty;
  wire [OUTPUT_WIDTH-1:0] slices [0:INPUT_WIDTH/OUTPUT_WIDTH-1];
  logic unsigned [$clog2(INPUT_WIDTH/OUTPUT_WIDTH)-1:0] count;

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

  assign can_start_feed = START_FEED == 1'b1 && start_feed_prev == 1'b0 && fifo_empty == 1'b0;
  assign FIFO_EMPTY = fifo_empty;
  assign IN_ACT_DATA_OUT = slices[count];
  assign DATA_VALID = (can_start_feed == 1'b1 || read_fifo_till_empty == 1'b1) && fifo_empty == 1'b0;

  // create slices
  generate
    genvar i;
    for (i = 0; i < INPUT_WIDTH/OUTPUT_WIDTH; i++) begin: slice
      assign slices[i] = fifo_rd_data[OUTPUT_WIDTH*(i+1)-1:OUTPUT_WIDTH*i];
    end
  endgenerate

  // create input mapper
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      fifo_rd_cmd <= 0;
      read_fifo_till_empty <= 0;
      count <= 0;
    end
    else begin
      // start feed count delayed by 1 cycle because 0th output is always visible on 1st start clock
      if (can_start_feed == 1'b1 || read_fifo_till_empty == 1'b1) begin
        // check if FIFO is empty
        if (fifo_empty == 1'b1) begin
          fifo_rd_cmd <= 1'b0;
          read_fifo_till_empty <= 1'b0;
          count <= 0;
        end
        else begin
          read_fifo_till_empty <= 1'b1;
          count <= count + 1;
          if (count == (INPUT_WIDTH/OUTPUT_WIDTH)-2) begin
            // issue read command early so next cycle FIFO will output correct data
            fifo_rd_cmd <= 1'b1;
          end
          else if (count == (INPUT_WIDTH/OUTPUT_WIDTH)-1) begin
            count <= 0;
            fifo_rd_cmd <= 1'b0;
          end
          else begin
            fifo_rd_cmd <= 1'b0;
          end
        end
      end
      else begin
        fifo_rd_cmd <= 1'b0;
      end
    end
  end

  // start feed logic
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      start_feed <= 0;
      start_feed_prev <= 0;
    end
    else begin
      start_feed_prev <= START_FEED;
      if (can_start_feed) begin
        start_feed <= 1'b1;
      end
      else begin
        start_feed <= 1'b0;
      end
    end
  end

  // clear FIFO 1x when CLEAR_FIFO goes high
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      clear_fifo_prev <= 1'b0;
      clear_fifo <= 1'b0;
    end
    else begin
      clear_fifo_prev <= CLEAR_FIFO;
      if (CLEAR_FIFO == 1'b1 && clear_fifo_prev == 1'b0) begin
        clear_fifo <= 1'b1;
      end
      else begin
        clear_fifo <= 1'b0;
      end
    end
  end

endmodule
