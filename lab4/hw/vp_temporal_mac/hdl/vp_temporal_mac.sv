// a temporal variable precision MAC
`timescale 1ns/1ps
module vp_temporal_mac#(
    parameter AXIS_DW = 32
  )(
    input CLK,
    input RESETN,

    // AXIS slave data interface
    output SD_AXIS_TREADY,
    input [AXIS_DW-1:0] SD_AXIS_TDATA,   // 8b activation, 8b weight on LSBs when getting data
    input SD_AXIS_TLAST,
    input SD_AXIS_TUSER,
    input SD_AXIS_TVALID,
    input [7:0] SD_AXIS_TID,

    // AXIS master accumulate result out interface
    output MO_AXIS_TVALID,
    output [AXIS_DW-1:0] MO_AXIS_TDATA,
    output MO_AXIS_TLAST,
    input MO_AXIS_TREADY,
    output [7:0] MO_AXIS_TID
  );

  wire [31:0] debug;
  
  // AXIS registers and wires
  logic reg_tlast;
  logic [7:0] reg_tid;
  wire sd_axis_handshake;
  wire mo_axis_handshake;

  // 2 8-bit registers for holding activation (1) and weight (0)
  logic [7:0] reg_input_8b [0:1];
  // 2 8-bit wires holding the activation and weight register values
  wire [7:0] wire_input_8b [0:1];
  // select signal for the activation and weight register
  wire sel_input;
  // precision level register
  logic unsigned [3:0] reg_precision_level;
  // 32-bit register holding the dequantization scale factor
  logic [31:0] reg_dequant_scale;

  // 4 10-bit wires and registers holding the multiplication of 8x2 (activation x weight)
  wire [9:0] wire_mul_8x2_out [0:3];
  // logic [15:0] reg_mul_1x16b;
  // 4 6-bit wires and registers holding the multiplication of 4x2 (activation x weight)
  wire [5:0] wire_mul_4x2_out [0:3];
  // logic [11:0] reg_mul_2x12b [0:1];
  // 4 4-bit wires and registers holding the multiplication of 2x2 (activation x weight)
  wire [3:0] wire_mul_2x2_out [0:3];
  // logic [3:0] reg_muls_4x10b [0:3];

  // wires holding the shift and adder results
  wire [15:0] wire_shift_add_16b;
  wire [11:0] wire_shift_add_2x12b [0:1];
  wire [7:0] wire_shift_add_2x8b [0:1];

  // 4 16-bit registers holding the final multiplication values (these will be accumulated)
  logic [15:0] reg_muls_4x16b [0:3];
  // 4 32-bit registers holding the accumulated values
  logic [31:0] reg_accum_4x32b [0:3];
  // 4 64-bit wires holding dequantized values
  wire [63:0] wire_dequant_4x64b [0:3];

  // state machine with 7 states
  typedef enum logic [2:0] {
    IDLE,
    SET_PRECISION,
    SET_DEQUANT,
    GET_DATA,
    COMPUTE,
    DEQUANT,
    WR_OUT
  } state_type;
  state_type state, next_state;
  logic [1:0] reg_dequant_done;
  logic unsigned [2:0] reg_pipeline_stage;

  assign debug = 0;
  // AXIS slave output
  assign SD_AXIS_TREADY = state == SET_PRECISION || state == SET_DEQUANT || state == GET_DATA;
  assign sd_axis_handshake = SD_AXIS_TVALID == 1'b1 && SD_AXIS_TREADY == 1'b1;
  assign mo_axis_handshake = MO_AXIS_TVALID == 1'b1 && MO_AXIS_TREADY == 1'b1;

  // AXIS master output
  assign MO_AXIS_TVALID = state == WR_OUT;
  assign MO_AXIS_TDATA = reg_accum_4x32b[0];
  assign MO_AXIS_TLAST = reg_tlast;
  assign MO_AXIS_TID = reg_tid;

  // assign selector based on precision level (only change if (activation is 2b and weight is 4b or 8b) OR (activation is 4b and weight is 8b))
  assign sel_input = reg_precision_level == 4'h3 || reg_precision_level == 4'h6 || reg_precision_level == 4'h7;
  // activation (1) and weight (0)
  assign wire_input_8b[0] = sel_input == 1'b1 ? reg_input_8b[1] : reg_input_8b[0];
  assign wire_input_8b[1] = sel_input == 1'b1 ? reg_input_8b[0] : reg_input_8b[1];

  // TODO handle overflow assign dequantized values
  assign wire_dequant_4x64b[0] = {reg_accum_4x32b[0][15:0], 16'h0000} * reg_dequant_scale;
  assign wire_dequant_4x64b[1] = {reg_accum_4x32b[1][15:0], 16'h0000} * reg_dequant_scale;
  assign wire_dequant_4x64b[2] = {reg_accum_4x32b[2][15:0], 16'h0000} * reg_dequant_scale;
  assign wire_dequant_4x64b[3] = {reg_accum_4x32b[3][15:0], 16'h0000} * reg_dequant_scale;

  // generate 4 8x2 multipliers, 4 4x2 multipliers, and 4 2x2 multipliers
  genvar i;
  generate
    for (i = 0; i < 4; i = i + 1) begin
      // 8x2 multipliers
      mul_Nx2 #(.N(8)) mul8x2_i(.a(wire_input_8b[1]), .b(wire_input_8b[0][((i+1)*2)-1:i*2]), .axb(wire_mul_8x2_out[i]));
      // 4x2 multipliers
      if (i < 2) begin
        mul_Nx2 #(.N(4)) mul4x2_i(.a(wire_input_8b[1][3:0]), .b(wire_input_8b[0][((i+1)*2)-1:i*2]), .axb(wire_mul_4x2_out[i]));
      end
      else begin
        mul_Nx2 #(.N(4)) mul4x2_i(.a(wire_input_8b[1][7:4]), .b(wire_input_8b[0][((i+1)*2)-1:i*2]), .axb(wire_mul_4x2_out[i]));
      end
      // 2x2 multipliers
      mul_Nx2 #(.N(2)) mul2x2_i(.a(wire_input_8b[1][((i+1)*2)-1:i*2]), .b(wire_input_8b[0][((i+1)*2)-1:i*2]), .axb(wire_mul_2x2_out[i]));
    end
  endgenerate

  // route the outputs wires from the multipliers to the shift and adders
  // 8b activation, 8b weight
  shift_add_4to1 shift_add_4to1_i0 (
    .in_4x10b(wire_mul_8x2_out),
    .result(wire_shift_add_16b)
  );

  // 8b activation, 4b weight OR 4b activation, 8b weight
  shift_add_4to2#(.IN_WIDTH(10), .OUT_WIDTH(12)) shift_add_4to2_i0 (
    .in_4x(wire_mul_8x2_out),
    .result_2x(wire_shift_add_2x12b)
  );

  // 4b activation, 4b weight
  shift_add_4to2#(.IN_WIDTH(6), .OUT_WIDTH(8)) shift_add_4to2_i1 (
    .in_4x(wire_mul_4x2_out),
    .result_2x(wire_shift_add_2x8b)
  );
  // rest of activation, weight combinations go directly to 4x16b register

  // state logic
  always_ff @(posedge CLK) begin
    if (!RESETN) begin
      state <= IDLE;
    end
    else begin
      state <= next_state;
    end
  end

  // next state logic
  always_comb begin
    next_state = state;
    case (state)
      IDLE: begin
        if (SD_AXIS_TVALID == 1'b1 && SD_AXIS_TUSER == 1'b1) begin
          next_state = SET_PRECISION;
        end
        else if (SD_AXIS_TVALID == 1'b1 && SD_AXIS_TUSER == 1'b0) begin
          next_state = SET_DEQUANT;
        end
      end
      SET_PRECISION: begin
        if (sd_axis_handshake == 1'b1) begin
          next_state = SET_DEQUANT;
        end
      end
      SET_DEQUANT: begin
        if (sd_axis_handshake == 1'b1) begin
          next_state = GET_DATA;
        end
      end
      GET_DATA: begin
        if (sd_axis_handshake == 1'b1 && reg_tlast == 1'b1) begin
          next_state = COMPUTE;
        end
      end
      COMPUTE: begin
        if (reg_pipeline_stage[0] == 1'b0) begin
          next_state = DEQUANT;
        end
      end
      DEQUANT: begin
        if (reg_dequant_done == 2'b11) begin
          next_state = WR_OUT;
        end
      end
      WR_OUT: begin
        if (mo_axis_handshake == 1'b1) begin
          next_state = IDLE;
        end
      end
      default: begin
        next_state = IDLE;
      end
    endcase
  end

  // input register logic
  always_ff @(posedge CLK) begin
    if (!RESETN) begin
      reg_tlast <= 0;
      reg_tid <= 0;
      reg_input_8b[0] <= 8'h0;
      reg_input_8b[1] <= 8'h0;
      reg_precision_level <= 4'h0;
      reg_dequant_scale <= 32'h0;
      reg_pipeline_stage <= 3'h0;
    end
    else begin
      case (state)
        IDLE: begin
          reg_tlast <= 1'b0;
          reg_tid <= 8'h0;
          reg_input_8b[0] <= 8'h0;
          reg_input_8b[1] <= 8'h0;
          reg_precision_level <= 4'h0;
          reg_dequant_scale <= 32'h0;
          reg_pipeline_stage <= 3'h0;
        end
        SET_PRECISION: begin
          if (sd_axis_handshake == 1'b1) begin
            reg_tid <= SD_AXIS_TID;
            reg_tlast <= SD_AXIS_TLAST;
            reg_precision_level <= SD_AXIS_TDATA[3:0];
          end
        end
        SET_DEQUANT: begin
          if (sd_axis_handshake == 1'b1) begin
            reg_tid <= SD_AXIS_TID;
            reg_tlast <= SD_AXIS_TLAST;
            reg_dequant_scale <= SD_AXIS_TDATA;
          end
        end
        GET_DATA: begin
          if (sd_axis_handshake == 1'b1 && reg_tlast == 1'b0) begin
            reg_tlast <= SD_AXIS_TLAST;
            reg_tid <= SD_AXIS_TID;
            // 0 is weight, 1 is activation
            reg_input_8b[0] <= SD_AXIS_TDATA[7:0];
            reg_input_8b[1] <= SD_AXIS_TDATA[15:8];
            reg_pipeline_stage <= {reg_pipeline_stage[1:0], 1'b1};
          end
          else if (sd_axis_handshake == 1'b0 || reg_tlast == 1'b1) begin
            // set to 0 so it does not affect pipeline
            reg_input_8b[0] <= 0;
            reg_input_8b[1] <= 0;
            reg_pipeline_stage <= {reg_pipeline_stage[1:0], 1'b0};
          end
        end
        COMPUTE: begin
          reg_pipeline_stage <= {reg_pipeline_stage[1:0], 1'b0};
        end
        DEQUANT: begin
          reg_pipeline_stage <= {reg_pipeline_stage[1:0], 1'b0};
        end
        WR_OUT: begin
          reg_pipeline_stage <= {reg_pipeline_stage[1:0], 1'b0};
        end
      endcase
    end
  end

  // pipeline register logic for multiplier outputs
  always_ff @(posedge CLK) begin
    if (!RESETN) begin
      reg_muls_4x16b[0] <= 16'h0;
      reg_muls_4x16b[1] <= 16'h0;
      reg_muls_4x16b[2] <= 16'h0;
      reg_muls_4x16b[3] <= 16'h0;
    end
    else begin
      if (state == IDLE || reg_pipeline_stage[0] != 1'b1) begin
        reg_muls_4x16b[0] <= 16'h0;
        reg_muls_4x16b[1] <= 16'h0;
        reg_muls_4x16b[2] <= 16'h0;
        reg_muls_4x16b[3] <= 16'h0;
      end
      else if (reg_pipeline_stage[0] == 1'b1) begin
        if (reg_precision_level == 4'h0) begin
          // 8b activation, 8b weight
          reg_muls_4x16b[0] <= wire_shift_add_16b;
        end
        else if (reg_precision_level == 4'h1 || reg_precision_level == 4'h3) begin
          // (8b activation, 4b weight) OR (4b activation, 8b weight)
          reg_muls_4x16b[0] <= wire_shift_add_2x12b[0];
          reg_muls_4x16b[1] <= wire_shift_add_2x12b[1];
        end
        else if (reg_precision_level == 4'h2 || reg_precision_level == 4'h6) begin
          // (8b activation, 2b weight) OR (2b activation, 8b weight)
          reg_muls_4x16b[0] <= wire_mul_8x2_out[0];
          reg_muls_4x16b[1] <= wire_mul_8x2_out[1];
          reg_muls_4x16b[2] <= wire_mul_8x2_out[2];
          reg_muls_4x16b[3] <= wire_mul_8x2_out[3];
        end
        else if (reg_precision_level == 4'h4) begin
          // 4b activation, 4b weight
          reg_muls_4x16b[0] <= wire_shift_add_2x8b[0];
          reg_muls_4x16b[1] <= wire_shift_add_2x8b[1];
        end
        else if (reg_precision_level == 4'h5 || reg_precision_level == 4'h7) begin
          // (4b activation, 2b weight) OR (2b activation, 4b weight)
          reg_muls_4x16b[0] <= wire_mul_4x2_out[0];
          reg_muls_4x16b[1] <= wire_mul_4x2_out[1];
          reg_muls_4x16b[2] <= wire_mul_4x2_out[2];
          reg_muls_4x16b[3] <= wire_mul_4x2_out[3];
        end
        else if (reg_precision_level == 4'h8) begin
          // 2b activation, 2b weight
          reg_muls_4x16b[0] <= wire_mul_2x2_out[0];
          reg_muls_4x16b[1] <= wire_mul_2x2_out[1];
          reg_muls_4x16b[2] <= wire_mul_2x2_out[2];
          reg_muls_4x16b[3] <= wire_mul_2x2_out[3];
        end
      end
    end
  end

  // computation and pipeline register logic
  always_ff @(posedge CLK) begin
    if (!RESETN) begin
      reg_accum_4x32b[0] <= 32'h0;
      reg_accum_4x32b[1] <= 32'h0;
      reg_accum_4x32b[2] <= 32'h0;
      reg_accum_4x32b[3] <= 32'h0;
      reg_dequant_done <= 2'b00;
    end
    else begin
      if (state == IDLE) begin
        reg_accum_4x32b[0] <= 32'h0;
        reg_accum_4x32b[1] <= 32'h0;
        reg_accum_4x32b[2] <= 32'h0;
        reg_accum_4x32b[3] <= 32'h0;
        reg_dequant_done <= 2'b00;
      end
      else if (state == DEQUANT && reg_dequant_done < 2'b11) begin
        // dequantization and requantization logic takes 2 cycles to avoid timing issue
        if (reg_dequant_done == 2'b01) begin
          reg_accum_4x32b[0] <= {wire_dequant_4x64b[3][35:28], wire_dequant_4x64b[2][35:28], wire_dequant_4x64b[1][35:28], wire_dequant_4x64b[0][35:28]};
          reg_accum_4x32b[1] <= 32'h0;
          reg_accum_4x32b[2] <= 32'h0;
          reg_accum_4x32b[3] <= 32'h0;
        end
        reg_dequant_done <= {reg_dequant_done[0], 1'b1};
      end
      else if (reg_pipeline_stage[1] == 1'b1 && reg_dequant_done < 2'b01) begin
        for (int i = 0; i < 4; i++) begin
          reg_accum_4x32b[i] <= reg_accum_4x32b[i] + 32'(signed'(reg_muls_4x16b[i]));
        end
      end
    end
  end


endmodule
