// a staged multiply and accumulate module

`timescale 1ps/1fs
module staged_mac #(
    parameter DATA_WIDTH = 32,
    parameter ACCUM_BITS = 8
  ) (
    input ACLK,
    input ARESETN,

    // AXIS slave data interface
    output SD_AXIS_TREADY,
    input [DATA_WIDTH*2-1:0] SD_AXIS_TDATA,   // packed data input
    input SD_AXIS_TLAST,
    input SD_AXIS_TUSER,
    input SD_AXIS_TVALID,
    input [7:0] SD_AXIS_TID,

    // AXIS master accumulate result out interface
    output MO_AXIS_TVALID,
    output [DATA_WIDTH-1:0] MO_AXIS_TDATA,
    output MO_AXIS_TLAST,
    input MO_AXIS_TREADY,
    output [7:0] MO_AXIS_TID
  );

  // define indexing constants
  localparam AB_2 = ACCUM_BITS / 2;
  localparam DW_2 = DATA_WIDTH / 2;
  localparam DW_HI = DATA_WIDTH - 1;
  localparam DW2_HI = DATA_WIDTH * 2 - 1;
  localparam ACCUM_HI = DATA_WIDTH * 2 + ACCUM_BITS - 1;

  // debug
  wire [31:0] debug;

  // define states
  localparam INIT_ACCUM = 3'b000,
             GET_DATA = 3'b001,
             MULT = 3'b010,
             ACCUM = 3'b011,
             WR_OUT = 3'b100;
  logic [2:0] state, state_next;
  logic tlast_reg;
  logic [7:0] tid_reg;

  // helper for unpacking data
  wire [DW_HI:0] weight;
  wire [DW_HI:0] activation;
  // holding register for data
  logic [DW_HI:0] weight_reg;
  logic [DW_HI:0] activation_reg;

  // helper for multiplying and accumulating
  logic [DW2_HI:0] mult_reg;
  logic [ACCUM_HI:0] accum_reg;

  // assign data
  assign weight = SD_AXIS_TDATA[DW2_HI:DATA_WIDTH];
  assign activation = SD_AXIS_TDATA[DW_HI:0];

  assign debug = 0;

  // AXIS slave output
  assign SD_AXIS_TREADY = state == INIT_ACCUM || state == GET_DATA;

  // AXIS master output
  assign MO_AXIS_TVALID = state == WR_OUT;
  assign MO_AXIS_TDATA = accum_reg[ACCUM_HI-AB_2-DW_2:DW_2+AB_2]; // 51:20
  assign MO_AXIS_TLAST = tlast_reg;
  assign MO_AXIS_TID = tid_reg;

  // state machine (sequential logic)
  always_ff @(posedge ACLK)
  begin
    if (!ARESETN)
    begin
      state <= INIT_ACCUM;
    end
    else
    begin
      state <= state_next;
    end
  end

  // state machine (combinational logic)
  always_comb
  begin
    state_next = state;
    case (state)
      // initialize accumulator
      INIT_ACCUM:
      begin
        tlast_reg = 0;
        tid_reg = 0;
        if (SD_AXIS_TVALID && SD_AXIS_TUSER)
        begin
          // accumulator must be initialized to data if TUSER is asserted
          // use MSB of activation as sign bit
          accum_reg = {{AB_2{activation[DW_HI]}}, {DW_2{activation[DW_HI]}}, activation, {DW_2{1'b0}}, {AB_2{1'b0}}};
          weight_reg = 0;
          activation_reg = 0;
          state_next = GET_DATA;
        end
        else if (SD_AXIS_TVALID)
        begin
          // reset accumulator to 0 and get data
          accum_reg = 0;
          weight_reg = weight;
          activation_reg = activation;
          tlast_reg = SD_AXIS_TLAST;
          tid_reg = SD_AXIS_TID;
          state_next = MULT;
        end
      end

      // get data
      GET_DATA:
      begin
        if (SD_AXIS_TVALID)
        begin
          weight_reg = weight;
          activation_reg = activation;
          tlast_reg = SD_AXIS_TLAST;
          tid_reg = SD_AXIS_TID;
          state_next = MULT;
        end
      end

      // multiply
      MULT:
      begin
        mult_reg = weight_reg * activation_reg;
        state_next = ACCUM;
      end

      // accumulate
      ACCUM:
      begin
        accum_reg = accum_reg + {{AB_2{mult_reg[DW2_HI]}}, mult_reg, {AB_2{1'b0}}};
        if (tlast_reg)
        begin
          state_next = WR_OUT;
        end
        else
        begin
          state_next = GET_DATA;
        end
      end

      // write out
      WR_OUT:
      begin
        if (MO_AXIS_TREADY)
        begin
          state_next = INIT_ACCUM;
        end
      end
    endcase
  end

endmodule
