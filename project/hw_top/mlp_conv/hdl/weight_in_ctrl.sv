// Weight input controller.
// Contains a FIFO (external write, internal read), a weight store (internat write, external read), and some control logic.

// CLEAR_FIFO gets hooked up directly to mem_ctrl register (no pulse)
// LOAD_WS gets hooked up directly to mem_ctrl register (no pulse)
`timescale 1ns/1ps
module weight_in_ctrl #(
    parameter INPUT_WIDTH = 32,
    parameter WS_WIDTH = 40,
    parameter FIFO_DEPTH = 16
  ) (
    input wire CLK,
    input wire RESETN,
    input wire CLEAR_FIFO,
    input wire LOAD_WS,                         // starts loading weights
    // FIFO interface
    input wire FIFO_WR_CMD,
    input wire [INPUT_WIDTH-1:0] FIFO_WR_DATA,
    output wire FIFO_EMPTY,
    output wire FIFO_FULL,
    // weight store interface
    input wire unsigned [3:0] PARAM_R,          // filter height
    input wire unsigned [3:0] PARAM_S,          // filter width
    output wire WS_FULL,
    output wire LOADING_WS,                     // weight store is loading
    output wire [WS_WIDTH-1:0] WS_RD_DATA_0,
    output wire [WS_WIDTH-1:0] WS_RD_DATA_1,
    output wire [WS_WIDTH-1:0] WS_RD_DATA_2,
    output wire [WS_WIDTH-1:0] WS_RD_DATA_3,
    output wire [WS_WIDTH-1:0] WS_RD_DATA_4
  );

  // FIFO signals
  wire clear_fifo_pulse;
  wire fifo_rd_cmd;
  wire [INPUT_WIDTH-1:0] fifo_rd_data;
  wire fifo_empty;

  // weight store signals
  wire load_ws_pulse;
  wire can_load_ws;
  logic load_ws;
  wire ws_wr_en;
  wire ws_full;

  // FIFO instance
  fifo #(
         .FIFO_WIDTH(INPUT_WIDTH),
         .FIFO_DEPTH(FIFO_DEPTH)
       ) fifo_inst (
         .CLK(CLK),
         .RESETN(RESETN & ~clear_fifo_pulse),
         .RD_CMD(fifo_rd_cmd),
         .RD_DATA(fifo_rd_data),
         .EMPTY(fifo_empty),
         .WR_CMD(FIFO_WR_CMD),
         .WR_DATA(FIFO_WR_DATA),
         .FULL(FIFO_FULL)
       );

  // weight store instance
  weight_store #(
                 .INPUT_WIDTH(INPUT_WIDTH),
                 .BUFFER_WIDTH(WS_WIDTH)
               ) ws_inst (
                 .CLK(CLK),
                 .RESETN(RESETN),
                 .WR_EN(ws_wr_en),
                 .WR_VALID(~fifo_empty),
                 .WR_DATA(fifo_rd_data),
                 .PARAM_R(PARAM_R),
                 .PARAM_S(PARAM_S),
                 .FULL(ws_full),
                 .RD_DATA_0(WS_RD_DATA_0),
                 .RD_DATA_1(WS_RD_DATA_1),
                 .RD_DATA_2(WS_RD_DATA_2),
                 .RD_DATA_3(WS_RD_DATA_3),
                 .RD_DATA_4(WS_RD_DATA_4)
               );

  assign FIFO_EMPTY = fifo_empty;
  assign WS_FULL = ws_full;
  assign LOADING_WS = can_load_ws == 1 || load_ws == 1;

  // start loading weight store when LOAD_WS goes high and FIFO is not empty
  // keep loading until weight store is full
  assign can_load_ws = load_ws_pulse == 1 && fifo_empty == 0;
  assign fifo_rd_cmd = (can_load_ws == 1 || load_ws == 1) && fifo_empty == 0;
  assign ws_wr_en = fifo_rd_cmd == 1 && ws_full == 0;

  // clear FIFO 1x when CLEAR_FIFO goes high
  pulse_creator clear_weight_fifo_pulse_inst (
    .CLK(CLK),
    .RESETN(RESETN),
    .IN_DATA(CLEAR_FIFO),
    .OUT_DATA(clear_fifo_pulse)
  );

  // load weight store 1x when LOAD_WS goes high and 
  // stop loading when ws_full goes high
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      load_ws <= 1'b0;
    end
    else begin
      if (can_load_ws) begin
        load_ws <= 1'b1;
      end
      else begin
        if (ws_full == 1'b1) begin
          load_ws <= 1'b0;
        end
      end
    end
  end

  // load weight store 1x when LOAD_WS goes high
  pulse_creator clear_ws_pulse_inst (
    .CLK(CLK),
    .RESETN(RESETN),
    .IN_DATA(LOAD_WS),
    .OUT_DATA(load_ws_pulse)
  );

endmodule
