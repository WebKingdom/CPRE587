// PE control unit for weight stationary architecture.
// Contains a weight_in_ctrl, input_act_ctrl, an input & output Psum FIFO,
// a PE (array of MAC units), and a lot of control logic.

import types_pkg::*;

`timescale 1ns/1ps
module pe_control_unit #(
    parameter C_S00_AXI_DATA_WIDTH = 32,
    parameter C_M00_AXI_DATA_WIDTH = 32,
    parameter C_M00_AXI_BURST_LEN = 16,
    parameter C_M00_AXI_TARGET_SLAVE_BASE_ADDR = 32'h40000000,
    parameter PE_ROWS = 5,
    parameter PE_COLS = 5,
    parameter MAC_PIPE_DEPTH = 2,
    parameter BYTE_LEN = 8
  )(
    input CLK,
    input RESETN,

    // PE registers
    input wire [C_S00_AXI_DATA_WIDTH-1:0] ACC_PARAMS,
    input wire [C_S00_AXI_DATA_WIDTH-1:0] WEIGHT_BASE_ADDR,
    input wire [C_S00_AXI_DATA_WIDTH-1:0] INPUT_BASE_ADDR,
    input wire [C_S00_AXI_DATA_WIDTH-1:0] OUTPUT_BASE_ADDR,
    input wire [C_S00_AXI_DATA_WIDTH-1:0] MEM_CTRL,
    output logic [C_S00_AXI_DATA_WIDTH-1:0] PE_STATUS,

    // PE array interface
    output wire RESETN_MAC_CTRL,
    output wire [BYTE_LEN-1:0] IN_ACT_DATA_OUT,
    output wire [PE_COLS * BYTE_LEN - 1:0] WEIGHTS_OUT [0:PE_ROWS-1],
    output wire STALL_CTRL,
    output logic [0:PE_COLS-1] ADD_MUX_CTRL [0:PE_ROWS-1],
    output logic [3:0] ROW_OUT_MUX_CTRL [0:PE_ROWS-1],              // 9:1 mux for each row of MACs
    output logic [2:0] PSUM_OUT_MUX_CTRL,                           // 5:1 mux controlling which row goes to output storage or feedback
    output wire [C_M00_AXI_DATA_WIDTH-1:0] IN_PSUM_OUT,             // input psum going out to PE array
    input wire [C_M00_AXI_DATA_WIDTH-1:0] OUT_PSUM_IN,              // output psum coming in from PE array

    // AXI Master FSM interface
    output logic [C_M00_AXI_DATA_WIDTH-1:0] M_TARGET_SLAVE_BASE_AR_ADDR,
    output logic [C_M00_AXI_DATA_WIDTH-1:0] M_TARGET_SLAVE_BASE_AW_ADDR,
    input wire [C_M00_AXI_DATA_WIDTH-1:0] M_AXI_RDATA,
    input wire M_AXI_RVALID_RREADY,
    output wire [C_M00_AXI_DATA_WIDTH-1:0] M_AXI_WDATA,
    input wire M_AXI_WVALID_WREADY,
    input wire M_AXI_AWVALID_AWREADY,
    output logic INIT_AXI_WR_TXN,
    output logic INIT_AXI_RD_TXN,
    input wire TXN_DONE,
    input wire AXI_ERROR
  );

  localparam WS_WIDTH = 40;
  localparam WEIGHT_IN_CTRL_FIFO_DEPTH = 16;
  localparam INPUT_ACT_CTRL_FIFO_DEPTH = 64;
  localparam OUTPUT_FIFO_DEPTH = 64;
  localparam PSUM_FIFO_DEPTH = 64;


  wire [C_M00_AXI_DATA_WIDTH-1:0] debug;

  // weight base address offset, byte addressable, must be able to get 25 bytes (7 words)
  logic unsigned [11:0] weight_base_addr_offset;
  // input base address offset, byte addressable, must be able to get 81 bytes (21 words)
  logic unsigned [11:0] input_base_addr_offset;
  // output base address offset, byte addressable, must be able to get 25x32-bits (25 words)
  logic unsigned [11:0] output_base_addr_offset;
  // psum base address offset, byte addressable, must be able to get 25x32-bits (25 words)
  logic unsigned [11:0] psum_base_addr_offset;

  // helper wires
  wire reset_all;

  // parameter wires
  wire [3:0] param_R;           // filter height
  wire [3:0] param_S;           // filter width
  wire [3:0] param_U;           // stride
  wire [3:0] param_tile_size;
  wire [11:0] param_C;          // input channels
  wire param_reset;
  wire param_start, param_start_pulse;
  wire param_valid;

  // memory control wires/registers
  // control unit handles starting of buffer weights (read from M00_AXI)
  wire buffer_weights;
  logic buffer_weights_pulse;
  logic unsigned [2:0] buffer_weights_counter;  // 3-bit counter for number of weight buffer requests through M00_AXI
  // send to weight_in_ctrl
  wire clear_weight_buffer;
  wire load_weight_store;
  // control unit handles starting of buffer inputs (read from M00_AXI)
  wire buffer_inputs;
  logic buffer_inputs_pulse;
  logic unsigned [2:0] buffer_inputs_counter;   // 3-bit counter for number of input buffer requests through M00_AXI
  // send to input_act_ctrl
  wire clear_input_buffer;
  // send to output buffer FIFO
  wire clear_output_buffer;
  logic clear_output_buffer_pulse;
  // control unit handles starting of buffer psums (read from M00_AXI)
  wire buffer_psums;
  logic buffer_psums_pulse;
  logic unsigned [2:0] buffer_psums_counter;    // 3-bit register for number of psum buffer requests through M00_AXI
  // send to output buffer FIFO
  wire clear_psum_buffer;
  logic clear_psum_buffer_pulse;

  // weight_in_ctrl wires (wr_data comes from M00_AXI)
  logic weight_in_ctrl_fifo_wr_cmd;

  wire weight_in_ctrl_fifo_empty;
  wire weight_in_ctrl_fifo_full;
  wire weight_in_ctrl_ws_full;
  wire weight_in_ctrl_loading_ws;
  t_weights weight_in_ctrl_ws_rd_data;

  // input_act_ctrl wires (wr_data comes from M00_AXI)
  logic input_act_ctrl_fifo_wr_cmd;

  wire input_act_ctrl_fifo_empty;
  wire input_act_ctrl_fifo_full;
  wire input_act_ctrl_data_valid;

  // output buffer FIFO wires (wr_data comes from PE)
  logic output_fifo_rd_cmd;
  wire output_fifo_empty;

  logic output_fifo_wr_cmd;
  wire output_fifo_full;

  // output buffering and writing registers (max 9x5=45 (tile_size x param_R) outputs to buffer)
  logic output_buffering;
  logic unsigned [7:0] output_buffer_counter;
  logic unsigned [7:0] output_buffer_counter_limit;
  logic unsigned [2:0] output_write_counter;

  // psum buffer FIFO wires (wr_data comes from M00_AXI)
  logic psum_fifo_rd_cmd;
  wire psum_fifo_empty;

  logic psum_fifo_wr_cmd;
  wire psum_fifo_full;

  // PE status register values
  logic weights_buffered;
  logic ws_loaded;
  logic inputs_buffered;
  logic output_written;
  logic psums_buffered;
  // error flags
  logic weight_buffer_error;
  logic ws_load_error;
  logic input_buffer_error;
  logic output_write_error;
  logic psum_buffer_error;

  // counters and logic for MAC array
  logic unsigned [3:0] mac_row_counter;
  logic unsigned [3:0] mac_col_counter;
  logic unsigned [$clog2(MAC_PIPE_DEPTH):0] mac_pipe_counter;
  logic mac_array_processing;

  // helper logic
  assign resetn_all = param_reset == 1'b0 && RESETN == 1'b1;
  assign output_buffer_counter_limit = param_tile_size * param_R;

  // parameter register
  assign param_R = ACC_PARAMS[3:0];
  assign param_S = ACC_PARAMS[7:4];
  assign param_U = ACC_PARAMS[11:8];
  assign param_tile_size = ACC_PARAMS[15:12];
  assign param_C = ACC_PARAMS[27:16];

  assign param_reset = ACC_PARAMS[29];
  assign param_start = ACC_PARAMS[30];
  assign param_valid = ACC_PARAMS[31];

  // memory control register
  assign buffer_weights = MEM_CTRL[0];
  assign clear_weight_buffer = MEM_CTRL[1];
  assign load_weight_store = MEM_CTRL[2];
  assign buffer_inputs = MEM_CTRL[3];
  assign clear_input_buffer = MEM_CTRL[4];
  assign clear_output_buffer = MEM_CTRL[5];
  assign buffer_psums = MEM_CTRL[6];
  assign clear_psum_buffer = MEM_CTRL[7];

  // PE interface assignments
  assign RESETN_MAC_CTRL = resetn_all;
  assign WEIGHTS_OUT = weight_in_ctrl_ws_rd_data;


  // add mux control logic
  always_ff @(posedge CLK) begin
    if (resetn_all == 1'b0) begin
      for (int i = 0; i < PE_ROWS; i++) begin
        ADD_MUX_CTRL[i] <= 0;
      end
    end
    else begin
      // first S columns will be set to 1, rest to 0
      // rows greater than R will be set to 0
      if (param_valid == 1'b1) begin
        for (int r = 0; r < PE_ROWS; r++) begin
          for (int c = 0; c < PE_COLS; c++) begin
            if (c < unsigned'(param_S)) begin
              if (r < unsigned'(param_R)) begin
                ADD_MUX_CTRL[r][c] <= 1'b1;
              end
              else begin
                ADD_MUX_CTRL[r][c] <= 1'b0;
              end
            end
            else begin
              ADD_MUX_CTRL[r][c] <= 1'b0;
            end
          end
        end
      end
    end
  end

  // row out mux control logic
  always_ff @(posedge CLK) begin
    if (resetn_all == 1'b0) begin
      for (int i = 0; i < PE_ROWS; i++) begin
        ROW_OUT_MUX_CTRL[i] <= 0;
      end
    end
    else begin
      // each row will get the same 4-bit value
      // set to the value of tile size - 1
      if (param_valid == 1'b1) begin
        for (int r = 0; r < PE_ROWS; r++) begin
          ROW_OUT_MUX_CTRL[r] <= param_tile_size - 1;
        end
      end
    end
  end

  // psum out mux control logic
  always_ff @(posedge CLK) begin
    if (resetn_all == 1'b0) begin
      PSUM_OUT_MUX_CTRL <= 0;
    end
    else begin
      // set
      if (param_valid == 1'b1) begin
        PSUM_OUT_MUX_CTRL <= param_R - 1;
      end
    end
  end

  // stall control logic (no stalls once outputs start buffering)
  // * assuming we have enough inputs in input buffer FIFO
  assign STALL_CTRL = input_act_ctrl_data_valid == 0 && output_buffering == 0;
  // psum buffer FIFO reads based on input activation valid
  assign psum_fifo_rd_cmd = input_act_ctrl_data_valid == 1;

  // counters and start/stop logic for MAC array
  always_ff @(posedge CLK) begin
    if (resetn_all == 1'b0) begin
      output_buffering <= 0;
      output_fifo_wr_cmd <= 0;
      mac_row_counter <= 0;
      mac_col_counter <= 0;
      mac_pipe_counter <= 0;
      mac_array_processing <= 0;
    end
    else begin
      if (mac_array_processing == 0 && output_buffering == 0) begin
        if (param_start_pulse == 1) begin
          output_buffering <= 0;
          output_fifo_wr_cmd <= 0;
          mac_row_counter <= 0;
          mac_col_counter <= 0;
          mac_pipe_counter <= 0;
          mac_array_processing <= 1;
        end
      end
      else if (mac_array_processing == 1) begin
        // only increment counters when data is valid
        if (input_act_ctrl_data_valid == 1) begin
          // delay start depending on MAC pipe depth
          if (mac_pipe_counter < MAC_PIPE_DEPTH) begin
            mac_pipe_counter <= mac_pipe_counter + 1;
          end
          else begin
            // column counter
            if (mac_col_counter < param_tile_size - 1) begin
              mac_col_counter <= mac_col_counter + 1;
            end
            else begin
              mac_col_counter <= 0;
              // row counter
              if (mac_row_counter < param_R) begin
                mac_row_counter <= mac_row_counter + 1;
              end
              else begin
                mac_row_counter <= 0;
                mac_array_processing <= 0;
                output_buffering <= 1;
                output_fifo_wr_cmd <= 1;
              end
            end
          end
        end
        // when input data is invalid, stall and keep counters the same
      end
      else begin
        // wait for outputs to buffer
        if (output_buffering == 1) begin
          if (output_buffer_counter < output_buffer_counter_limit) begin
            output_buffer_counter <= output_buffer_counter + 1;
            output_fifo_wr_cmd <= 1;
          end
          else begin
            output_buffer_counter <= 0;
            output_buffering <= 0;
            output_fifo_wr_cmd <= 0;
            mac_array_processing <= 0;
          end
        end
      end
    end
  end

  // hook data lines directly up to AXI interface and
  // let control unit handle which unit gets what data
  weight_in_ctrl #(
                   .INPUT_WIDTH(C_M00_AXI_DATA_WIDTH),
                   .WS_WIDTH(WS_WIDTH),
                   .FIFO_DEPTH(WEIGHT_IN_CTRL_FIFO_DEPTH)
                 ) weight_in_ctrl_inst (
                   // inputs
                   .CLK(CLK),
                   .RESETN(resetn_all),
                   .CLEAR_FIFO(clear_weight_buffer),
                   .LOAD_WS(load_weight_store),
                   .FIFO_WR_CMD(weight_in_ctrl_fifo_wr_cmd),
                   .FIFO_WR_DATA(M_AXI_RDATA),
                   // outputs
                   .FIFO_EMPTY(weight_in_ctrl_fifo_empty),
                   .FIFO_FULL(weight_in_ctrl_fifo_full),
                   // inputs
                   .PARAM_R(param_R),
                   .PARAM_S(param_S),
                   // outputs
                   .WS_FULL(weight_in_ctrl_ws_full),
                   .LOADING_WS(weight_in_ctrl_loading_ws),
                   .WS_RD_DATA_0(weight_in_ctrl_ws_rd_data[0]),
                   .WS_RD_DATA_1(weight_in_ctrl_ws_rd_data[1]),
                   .WS_RD_DATA_2(weight_in_ctrl_ws_rd_data[2]),
                   .WS_RD_DATA_3(weight_in_ctrl_ws_rd_data[3]),
                   .WS_RD_DATA_4(weight_in_ctrl_ws_rd_data[4])
                 );

  // input_act_ctrl
  input_act_ctrl #(
                   .INPUT_WIDTH(C_M00_AXI_DATA_WIDTH),
                   .FIFO_DEPTH(INPUT_ACT_CTRL_FIFO_DEPTH),
                   .OUTPUT_WIDTH(BYTE_LEN)
                 ) input_act_ctrl_inst (
                   // inputs
                   .CLK(CLK),
                   .RESETN(resetn_all),
                   .CLEAR_FIFO(clear_input_buffer),
                   .START_FEED(param_start),
                   .FIFO_WR_CMD(input_act_ctrl_fifo_wr_cmd),
                   .FIFO_WR_DATA(M_AXI_RDATA),
                   // outputs
                   .FIFO_EMPTY(input_act_ctrl_fifo_empty),
                   .FIFO_FULL(input_act_ctrl_fifo_full),
                   .DATA_OUT(IN_ACT_DATA_OUT),                // input activation data to PE array
                   .DATA_VALID(input_act_ctrl_data_valid)
                 );

  // output buffer FIFO
  fifo #(
         .FIFO_WIDTH(C_M00_AXI_DATA_WIDTH),
         .FIFO_DEPTH(OUTPUT_FIFO_DEPTH)
       ) output_fifo_inst (
         // inputs
         .CLK(CLK),
         .RESETN(resetn_all & ~clear_output_buffer_pulse),
         .RD_CMD(output_fifo_rd_cmd),
         // outputs
         .RD_DATA(M_AXI_WDATA),           // buffered psums go out to Master AXI
         .EMPTY(output_fifo_empty),
         // inputs
         .WR_CMD(output_fifo_wr_cmd),
         .WR_DATA(OUT_PSUM_IN),           // output psum coming in from PE array
         // outputs
         .FULL(output_fifo_full)
       );

  // psum buffer FIFO
  fifo #(
         .FIFO_WIDTH(C_M00_AXI_DATA_WIDTH),
         .FIFO_DEPTH(PSUM_FIFO_DEPTH)
       ) psum_fifo_inst (
         // inputs
         .CLK(CLK),
         .RESETN(resetn_all & ~clear_psum_buffer_pulse),
         .RD_CMD(psum_fifo_rd_cmd),
         // outputs
         .RD_DATA(IN_PSUM_OUT),       // input psum going out to PE array
         .EMPTY(psum_fifo_empty),
         // inputs
         .WR_CMD(psum_fifo_wr_cmd),
         .WR_DATA(M_AXI_RDATA),
         // outputs
         .FULL(psum_fifo_full)
       );

  // pulse creator for param_start
  pulse_creator param_start_pulse_inst (
                  .CLK(CLK),
                  .RESETN(resetn_all),
                  .IN_DATA(param_start),
                  .OUT_DATA(param_start_pulse)
                );

  // pulse creator for buffer_weights
  pulse_creator buffer_weights_pulse_inst (
                  .CLK(CLK),
                  .RESETN(resetn_all),
                  .IN_DATA(buffer_weights),
                  .OUT_DATA(buffer_weights_pulse)
                );

  // pulse creator for buffer_inputs
  pulse_creator buffer_inputs_pulse_inst (
                  .CLK(CLK),
                  .RESETN(resetn_all),
                  .IN_DATA(buffer_inputs),
                  .OUT_DATA(buffer_inputs_pulse)
                );

  // pulse creator for clear_output_buffer
  pulse_creator clear_output_buffer_pulse_inst (
                  .CLK(CLK),
                  .RESETN(resetn_all),
                  .IN_DATA(clear_output_buffer),
                  .OUT_DATA(clear_output_buffer_pulse)
                );

  // pulse creator for buffer_psums
  pulse_creator buffer_psums_pulse_inst (
                  .CLK(CLK),
                  .RESETN(resetn_all),
                  .IN_DATA(buffer_psums),
                  .OUT_DATA(buffer_psums_pulse)
                );

  // pulse creator for clear_psum_buffer
  pulse_creator clear_psum_buffer_pulse_inst (
                  .CLK(CLK),
                  .RESETN(resetn_all),
                  .IN_DATA(clear_psum_buffer),
                  .OUT_DATA(clear_psum_buffer_pulse)
                );


  // TODO ssz PE instance


  // states for buffering weights, inputs, and psums
  typedef enum logic [1:0] {
            IDLE_BUFFER,
            ISSUE_M_AXI_RD,
            WAIT_M_AXI_RD,
            BUFFER_DATA
          } state_type_bw;
  state_type_bw st_bw, st_bw_next;

  // buffer_weights logic
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      st_bw <= IDLE_BUFFER;
    end
    else begin
      st_bw <= st_bw_next;
    end
  end

  always_comb begin
    st_bw_next = st_bw;
    case (st_bw)
      IDLE_BUFFER: begin
        if (buffer_weights_pulse == 1 || buffer_inputs_pulse == 1 || buffer_psums_pulse == 1) begin
          st_bw_next = ISSUE_M_AXI_RD;
        end
      end
      ISSUE_M_AXI_RD: begin
        if (INIT_AXI_RD_TXN == 1) begin
          st_bw_next = WAIT_M_AXI_RD;
        end
        else begin
          st_bw_next = BUFFER_DATA;
        end
      end
      WAIT_M_AXI_RD: begin
        if (TXN_DONE == 1) begin
          st_bw_next = BUFFER_DATA;
        end
      end
      BUFFER_DATA: begin
        if (buffer_weights_counter < 1 || buffer_inputs_counter < 2 || buffer_psums_counter < 3) begin
          st_bw_next = ISSUE_M_AXI_RD;
        end
        else begin
          st_bw_next = IDLE_BUFFER;
        end
      end
    endcase
  end

  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      // weight registers
      buffer_weights_counter <= 0;
      weight_base_addr_offset <= 0;
      weights_buffered <= 0;
      weight_buffer_error <= 0;
      // input registers
      buffer_inputs_counter <= 0;
      input_base_addr_offset <= 0;
      inputs_buffered <= 0;
      input_buffer_error <= 0;
      // psum registers
      buffer_psums_counter <= 0;
      psum_base_addr_offset <= 0;
      psums_buffered <= 0;
      psum_buffer_error <= 0;
      // weight_in_ctrl
      weight_in_ctrl_fifo_wr_cmd <= 0;
      // input_act_ctrl
      input_act_ctrl_fifo_wr_cmd <= 0;
      // psum buffer FIFO
      psum_fifo_wr_cmd <= 0;
      // AXI Master FSM
      INIT_AXI_RD_TXN <= 0;
      M_TARGET_SLAVE_BASE_AR_ADDR <= C_M00_AXI_TARGET_SLAVE_BASE_ADDR;
    end
    else begin
      case (st_bw)
        IDLE_BUFFER: begin
          // weight registers
          buffer_weights_counter <= (buffer_weights_pulse == 1) ? 0 : 1;
          weight_base_addr_offset <= 0;
          if (buffer_weights_pulse == 1) begin
            weights_buffered <= 0;
            weight_buffer_error <= 0;
          end
          // input registers
          buffer_inputs_counter <= (buffer_inputs_pulse == 1) ? 0 : 2;
          input_base_addr_offset <= 0;
          if (buffer_inputs_pulse == 1) begin
            inputs_buffered <= 0;
            input_buffer_error <= 0;
          end
          // psum registers
          buffer_psums_counter <= (buffer_psums_pulse == 1) ? 0 : 3;
          psum_base_addr_offset <= 0;
          if (buffer_psums_pulse == 1) begin
            psums_buffered <= 0;
            psum_buffer_error <= 0;
          end
          // weight_in_ctrl
          weight_in_ctrl_fifo_wr_cmd <= 0;
          // input_act_ctrl
          input_act_ctrl_fifo_wr_cmd <= 0;
          // psum buffer FIFO
          psum_fifo_wr_cmd <= 0;
          // AXI Master FSM
          INIT_AXI_RD_TXN <= 0;
          M_TARGET_SLAVE_BASE_AR_ADDR <= C_M00_AXI_TARGET_SLAVE_BASE_ADDR;
        end
        ISSUE_M_AXI_RD: begin
          if (buffer_weights_counter < 1) begin
            INIT_AXI_RD_TXN <= 1;
            M_TARGET_SLAVE_BASE_AR_ADDR <= WEIGHT_BASE_ADDR + weight_base_addr_offset;
            weight_base_addr_offset <= weight_base_addr_offset + C_M00_AXI_BURST_LEN * (C_M00_AXI_DATA_WIDTH / BYTE_LEN);
          end
          else if (buffer_inputs_counter < 2) begin
            INIT_AXI_RD_TXN <= 1;
            M_TARGET_SLAVE_BASE_AR_ADDR <= INPUT_BASE_ADDR + input_base_addr_offset;
            input_base_addr_offset <= input_base_addr_offset + C_M00_AXI_BURST_LEN * (C_M00_AXI_DATA_WIDTH / BYTE_LEN);
          end
          else if (buffer_psums_counter < 3) begin
            INIT_AXI_RD_TXN <= 1;
            M_TARGET_SLAVE_BASE_AR_ADDR <= OUTPUT_BASE_ADDR + psum_base_addr_offset;
            psum_base_addr_offset <= psum_base_addr_offset + C_M00_AXI_BURST_LEN * (C_M00_AXI_DATA_WIDTH / BYTE_LEN);
          end
          else begin
            M_TARGET_SLAVE_BASE_AR_ADDR <= C_M00_AXI_TARGET_SLAVE_BASE_ADDR;
            INIT_AXI_RD_TXN <= 0;
          end
        end
        WAIT_M_AXI_RD: begin
          INIT_AXI_RD_TXN <= 0;
          // issue 1, 2, and 3 AXI transactions for weights, inputs, and psums respectively (each C_M00_AXI_BURST_LEN)
          // TODO could optimize number of transactions depending on parameters
          if (buffer_weights_counter < 1) begin
            // control FIFO write
            if (M_AXI_RVALID_RREADY == 1'b1) begin
              weight_in_ctrl_fifo_wr_cmd <= 1;
            end
            else begin
              weight_in_ctrl_fifo_wr_cmd <= 0;
            end
            // TODO this may not be evaluated based on FSM
            if (TXN_DONE == 1'b1) begin
              buffer_weights_counter <= buffer_weights_counter + 1;
              weight_in_ctrl_fifo_wr_cmd <= 0;
            end
            if (weight_in_ctrl_fifo_full == 1'b1) begin
              // * throw error, should not happen
              weight_buffer_error <= 1;
            end
          end
          else if (buffer_inputs_counter < 2) begin
            // control FIFO write
            if (M_AXI_RVALID_RREADY == 1'b1) begin
              input_act_ctrl_fifo_wr_cmd <= 1;
            end
            else begin
              input_act_ctrl_fifo_wr_cmd <= 0;
            end
            if (TXN_DONE == 1'b1) begin
              buffer_inputs_counter <= buffer_inputs_counter + 1;
              input_act_ctrl_fifo_wr_cmd <= 0;
            end
            if (input_act_ctrl_fifo_full == 1'b1) begin
              // * throw error, should not happen
              input_buffer_error <= 1;
            end
          end
          else if (buffer_psums_counter < 3) begin
            // control FIFO write
            if (M_AXI_RVALID_RREADY == 1'b1) begin
              psum_fifo_wr_cmd <= 1;
            end
            else begin
              psum_fifo_wr_cmd <= 0;
            end
            if (TXN_DONE == 1'b1) begin
              buffer_psums_counter <= buffer_psums_counter + 1;
              psum_fifo_wr_cmd <= 0;
            end
            if (psum_fifo_full == 1'b1) begin
              // * throw error, should not happen
              psum_buffer_error <= 1;
            end
          end
          else begin
            // turn off all FIFO writes
            weight_in_ctrl_fifo_wr_cmd <= 0;
            input_act_ctrl_fifo_wr_cmd <= 0;
            psum_fifo_wr_cmd <= 0;
          end
        end
        BUFFER_DATA: begin
          // set buffered flags
          if (buffer_weights_counter == 1) begin
            weights_buffered <= 1;
            if (AXI_ERROR == 1'b1) begin
              // * throw error (maybe redo transaction?)
              weight_buffer_error <= 1;
            end
            buffer_weights_counter <= buffer_weights_counter + 1;
          end
          if (buffer_inputs_counter == 2) begin
            inputs_buffered <= 1;
            if (AXI_ERROR == 1'b1) begin
              // * throw error (maybe redo transaction?)
              input_buffer_error <= 1;
            end
            buffer_inputs_counter <= buffer_inputs_counter + 1;
          end
          if (buffer_psums_counter == 3) begin
            psums_buffered <= 1;
            if (AXI_ERROR == 1'b1) begin
              // * throw error (maybe redo transaction?)
              psum_buffer_error <= 1;
            end
            buffer_psums_counter <= buffer_psums_counter + 1;
          end
          // turn off all FIFO writes
          weight_in_ctrl_fifo_wr_cmd <= 0;
          input_act_ctrl_fifo_wr_cmd <= 0;
          psum_fifo_wr_cmd <= 0;
        end
      endcase
    end
  end


  // states for writing outputs
  typedef enum logic [1:0] {
            WAIT_BUFFER_OUT,
            ISSUE_M_AXI_WR,
            WAIT_M_AXI_WR,
            WR_OUT
          } state_type_bi;
  state_type_bi st_out, st_out_next;

  always_comb begin
    st_out_next = st_out;
    case (st_out)
      WAIT_BUFFER_OUT: begin
        if (output_buffering == 1) begin
          st_out_next = ISSUE_M_AXI_WR;
        end
      end
      ISSUE_M_AXI_WR: begin
        if (INIT_AXI_WR_TXN == 1) begin
          st_out_next = WAIT_M_AXI_WR;
        end
      end
      WAIT_M_AXI_WR: begin
        if (TXN_DONE == 1) begin
          st_out_next = WR_OUT;
        end
      end
      WR_OUT: begin
        if (output_write_counter < 3) begin
          st_out_next = ISSUE_M_AXI_WR;
        end
        else begin
          st_out_next = WAIT_BUFFER_OUT;
        end
      end
    endcase
  end

  // output buffer and write out logic
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      output_base_addr_offset <= 0;
      output_write_counter <= 0;
      output_written <= 0;
      INIT_AXI_WR_TXN <= 0;
      M_TARGET_SLAVE_BASE_AW_ADDR <= C_M00_AXI_TARGET_SLAVE_BASE_ADDR;
    end
    else begin
      case (st_out)
        WAIT_BUFFER_OUT: begin
          if (param_start_pulse == 1) begin
            output_written <= 0;
          end
          output_base_addr_offset <= 0;
          output_write_counter <= 0;
          INIT_AXI_WR_TXN <= 0;
          M_TARGET_SLAVE_BASE_AW_ADDR <= C_M00_AXI_TARGET_SLAVE_BASE_ADDR;
        end
        ISSUE_M_AXI_WR: begin
          if (output_buffering == 0) begin
            INIT_AXI_WR_TXN <= 1;
            M_TARGET_SLAVE_BASE_AW_ADDR <= OUTPUT_BASE_ADDR + output_base_addr_offset;
            output_write_counter <= output_write_counter + 1;
            output_base_addr_offset <= output_base_addr_offset + C_M00_AXI_BURST_LEN * (C_M00_AXI_DATA_WIDTH / BYTE_LEN);
          end
        end
        WAIT_M_AXI_WR: begin
          INIT_AXI_WR_TXN <= 0;
          if (M_AXI_WVALID_WREADY == 1) begin
            output_fifo_rd_cmd <= 1;
          end
          else begin
            output_fifo_rd_cmd <= 0;
          end
          if (TXN_DONE == 1) begin
            output_fifo_rd_cmd <= 0;
          end
        end
        WR_OUT: begin
          output_fifo_rd_cmd <= 0;
          if (AXI_ERROR == 1) begin
            // * throw error (maybe redo transaction?)
            output_write_error <= 1;
          end
          if (output_write_counter == 3) begin
            output_written <= 1;
          end
        end
      endcase
    end
  end

  assign debug = 1;
  assign ws_loaded = ~weight_in_ctrl_loading_ws;

  // PE status register
  // TODO does it need to be clocked?
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      PE_STATUS <= 0;
      ws_load_error <= 0;
    end
    else begin
      // MSBs
      PE_STATUS[C_S00_AXI_DATA_WIDTH-1:C_S00_AXI_DATA_WIDTH/2] <= {psum_buffer_error, output_write_error, input_buffer_error, ws_load_error, weight_buffer_error};
      // LSBs
      PE_STATUS[C_S00_AXI_DATA_WIDTH/2-1:0] <= {psums_buffered, output_written, inputs_buffered, ws_loaded, weights_buffered};
    end
  end


endmodule
