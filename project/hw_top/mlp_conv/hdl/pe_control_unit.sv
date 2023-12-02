// PE control unit for weight stationary architecture.
// Contains a weight_in_ctrl, input_act_ctrl, an input & output Psum FIFO,
// a PE (array of MAC units), and a lot of control logic.

`timescale 1ns/1ps
module accel_control_unit #(
    parameter C_S00_AXI_DATA_WIDTH = 32,
    parameter C_M00_AXI_DATA_WIDTH = 32,
    parameter PE_ROWS = 5,
    parameter PE_COLS = 5,
    parameter MAC_PIPE_DEPTH = 2
  )(
    input CLK,
    input RESETN,

    // accelerator interface
    // inputs
    input wire [C_S00_AXI_DATA_WIDTH-1:0] ACC_PARAMS,
    input wire [C_S00_AXI_DATA_WIDTH-1:0] WEIGHT_BASE_ADDR,
    input wire [C_S00_AXI_DATA_WIDTH-1:0] INPUT_BASE_ADDR,
    input wire [C_S00_AXI_DATA_WIDTH-1:0] OUTPUT_BASE_ADDR,
    input wire [C_S00_AXI_DATA_WIDTH-1:0] MEM_CTRL,
    input wire [0:PE_COLS-1] MAC_DONE [0:PE_ROWS-1],            // TODO ssz Depreciated? true every time a MAC operation is done and ready to pass forward

    // outputs
    output logic [0:PE_COLS-1] ADD_MUX_CTRL [0:PE_ROWS-1],
    output logic [0:PE_COLS-1] STALL_CTRL [0:PE_ROWS-1],
    output logic [0:PE_COLS-1] RESETN_MAC_CTRL [0:PE_ROWS-1],
    output logic [3:0] ROW_OUT_MUX_CTRL [0:PE_ROWS-1],          // 9:1 mux for each row of MACs
    output logic [2:0] PSUM_OUT_MUX_CTRL                       // 5:1 mux controlling which row goes to output storage or feedback


    // AXI Master interface
    // inputs



  );

  localparam WS_WIDTH = 40;
  localparam WS_DEPTH = 5;
  localparam WEIGHT_IN_CTRL_FIFO_DEPTH = 16;
  localparam INPUT_ACT_CTRL_FIFO_DEPTH = 64;
  localparam OUTPUT_FIFO_DEPTH = 64;
  localparam PSUM_FIFO_DEPTH = 64;
  localparam BYTE_LEN = 8;


  wire [C_M00_AXI_DATA_WIDTH-1:0] debug;

  // weight base address offset, byte addressable, must be able to get 25 bytes (7 words)
  logic [7:0] weight_base_addr_offset;
  // input base address offset, byte addressable, must be able to get 81 bytes (21 words)
  logic [7:0] input_base_addr_offset;
  // output base address offset, byte addressable, must be able to get 25x32-bits (25 words)
  logic [7:0] output_base_addr_offset;

  // helper wires
  wire reset_all;

  // parameter wires
  wire [3:0] param_R;           // filter height
  wire [3:0] param_S;           // filter width
  wire [3:0] param_U;           // stride
  wire [3:0] param_tile_size;
  wire [11:0] param_C;          // input channels
  wire param_reset;
  wire param_start;
  wire param_valid;

  // memory control wires
  // control unit handles starting of buffer weights (read from M00_AXI)
  wire buffer_weights;
  // send to weight_in_ctrl
  wire clear_weight_buffer;
  wire load_weight_store;
  // control unit handles starting of buffer inputs (read from M00_AXI)
  wire buffer_inputs;
  // send to input_act_ctrl
  wire clear_input_buffer;
  // send to output buffer FIFO
  wire clear_output_buffer;
  // control unit handles starting of buffer psums (read from M00_AXI)
  wire buffer_psums;
  // send to output buffer FIFO
  wire clear_psum_buffer;

  // weight_in_ctrl wires (wr_data comes from M00_AXI)
  logic weight_in_ctrl_fifo_wr_cmd;

  wire weight_in_ctrl_fifo_empty;
  wire weight_in_ctrl_fifo_full;
  wire weight_in_ctrl_ws_full;
  wire [WS_WIDTH-1:0] weight_in_ctrl_ws_rd_data [0:WS_DEPTH-1];

  // input_act_ctrl wires (wr_data comes from M00_AXI)
  logic input_act_ctrl_fifo_wr_cmd;

  wire input_act_ctrl_fifo_empty;
  wire input_act_ctrl_fifo_full;
  wire [BYTE_LEN-1:0] input_act_ctrl_data_out;
  wire input_act_ctrl_data_valid;

  // output buffer FIFO wires (wr_data comes from PE)
  logic output_fifo_rd_cmd;
  wire [C_M00_AXI_DATA_WIDTH-1:0] output_fifo_rd_data;
  wire output_fifo_empty;

  logic output_fifo_wr_cmd;
  wire [C_M00_AXI_DATA_WIDTH-1:0] output_fifo_wr_data;
  wire output_fifo_full;

  // psum buffer FIFO wires (wr_data comes from M00_AXI)
  logic psum_fifo_rd_cmd;
  wire [C_M00_AXI_DATA_WIDTH-1:0] psum_fifo_rd_data;
  wire psum_fifo_empty;

  logic psum_fifo_wr_cmd;
  wire psum_fifo_full;





  // helper logic
  assign resetn_all = param_reset == 1'b0 && RESETN == 1'b1;

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

  // resetn mac control logic
  always_ff @(posedge CLK) begin
    if (resetn_all == 1'b0) begin
      for (int i = 0; i < PE_ROWS; i++) begin
        RESETN_MAC_CTRL[i] <= 0;
      end
    end
    else begin
      // set
      if (param_valid == 1'b1) begin
        for (int r = 0; r < PE_ROWS; r++) begin
          RESETN_MAC_CTRL[r] <= param_reset;
        end
      end
    end
  end

  // TODO ssz hook data lines directly up to AXI interface and let control unit handle which unit gets what data
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
                   .FIFO_WR_DATA(0),
                   // outputs
                   .FIFO_EMPTY(weight_in_ctrl_fifo_empty),
                   .FIFO_FULL(weight_in_ctrl_fifo_full),
                   // inputs
                   .PARAM_R(param_R),
                   .PARAM_S(param_S),
                   // outputs
                   .WS_FULL(weight_in_ctrl_ws_full),
                   .WS_RD_DATA_0(weight_in_ctrl_ws_rd_data[0]),
                   .WS_RD_DATA_1(weight_in_ctrl_ws_rd_data[1]),
                   .WS_RD_DATA_2(weight_in_ctrl_ws_rd_data[2]),
                   .WS_RD_DATA_3(weight_in_ctrl_ws_rd_data[3]),
                   .WS_RD_DATA_4(weight_in_ctrl_ws_rd_data[4])
                 );

  // TODO ssz input_act_ctrl wr_data
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
                   .FIFO_WR_DATA(0),
                   // outputs
                   .FIFO_EMPTY(input_act_ctrl_fifo_empty),
                   .FIFO_FULL(input_act_ctrl_fifo_full),
                   .DATA_OUT(input_act_ctrl_data_out),
                   .DATA_VALID(input_act_ctrl_data_valid)
                 );

  // output buffer FIFO
  fifo #(
         .FIFO_WIDTH(C_M00_AXI_DATA_WIDTH),
         .FIFO_DEPTH(OUTPUT_FIFO_DEPTH)
       ) output_fifo_inst (
         // inputs
         .CLK(CLK),
         .RESETN(resetn_all),
         .RD_CMD(output_fifo_rd_cmd),
         // outputs
         .RD_DATA(output_fifo_rd_data),
         .EMPTY(output_fifo_empty),
         // inputs
         .WR_CMD(output_fifo_wr_cmd),
         .WR_DATA(output_fifo_wr_data),
         // outputs
         .FULL(output_fifo_full)
       );

  // TODO ssz psum buffer FIFO wr_data
  fifo #(
         .FIFO_WIDTH(C_M00_AXI_DATA_WIDTH),
         .FIFO_DEPTH(PSUM_FIFO_DEPTH)
       ) psum_fifo_inst (
         // inputs
         .CLK(CLK),
         .RESETN(resetn_all),
         .RD_CMD(psum_fifo_rd_cmd),
         // outputs
         .RD_DATA(psum_fifo_rd_data),
         .EMPTY(psum_fifo_empty),
         // inputs
         .WR_CMD(psum_fifo_wr_cmd),
         .WR_DATA(0),
         // outputs
         .FULL(psum_fifo_full)
       );

  // TODO ssz PE instance


  // states for saving parameters
  typedef enum logic {
            IDLE_SP,
            SAVE_PARAMS
          } state_type_save_params;
  state_type_save_params st_save_params, st_save_params_next;


  // states for buffering weights
  typedef enum logic {
            IDLE_BW,
            BUFFER_WEIGHTS
          } state_type_buff_w;
  state_type_buff_w st_buff_w, st_buff_w_next;


  // states for buffering inputs
  typedef enum logic {
            IDLE_BI,
            BUFFER_INPUTS
          } state_type_buff_i;
  state_type_buff_i st_buff_i, st_buff_i_next;


  // TODO ssz states for control logic



  // states for writing outputs
  typedef enum logic [1:0] {
            IDLE_BO,
            BUFFER_OUTPUTS,
            WRITE_OUTPUTS
          } state_type_wr_o;
  state_type_wr_o st_wr_o, st_wr_o_next;


  assign debug = 0;



endmodule
