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
    input wire [0:PE_COLS-1] MAC_DONE [0:PE_ROWS-1],             // true every time a MAC operation is done and ready to pass forward

    // outputs
    output [2:0] WEIGHT_ROW_WR_CTRL,                        // index of weight row to write to
    output logic [0:PE_COLS-1] ADD_MUX_CTRL [0:PE_ROWS-1],
    output logic [0:PE_COLS-1] STALL_CTRL [0:PE_ROWS-1],
    output [0:PE_COLS-1] RESETN_MAC_CTRL [0:PE_ROWS-1],
    output logic [3:0] ROW_OUT_MUX_CTRL [0:PE_ROWS-1],            // 9:1 mux for each row of MACs
    output logic [2:0] PSUM_OUT_MUX_CTRL,                         // 5:1 mux controlling which row goes to output storage or feedback
    output out_storage_wr_en                                // output storage register write enable

    // AXI interfaces?

  );

  wire [C_M00_AXI_DATA_WIDTH-1:0] debug;

  // weight base address offset, byte addressable, must be able to get 25 bytes (7 words)
  logic [7:0] weight_base_addr_offset;
  // input base address offset, byte addressable, must be able to get 81 bytes (21 words)
  logic [7:0] input_base_addr_offset;
  // output base address offset, byte addressable, must be able to get 25x32-bits (25 words)
  logic [7:0] output_base_addr_offset;


  // parameter wires
  wire [3:0] param_R;   // filter height
  wire [3:0] param_S;   // filter width
  wire [3:0] param_U;
  wire [3:0] param_tile_size;
  wire [11:0] param_C;
  wire param_valid;
  wire param_reset;

  // memory control wires
  wire buffer_weights;
  wire clear_weight_buffer;
  wire load_weight_store;
  wire buffer_inputs;
  wire clear_input_buffer;
  wire clear_output_buffer;
  wire buffer_psums;
  wire clear_psum_buffer;


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
    if (RESETN == 1'b0) begin
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
    if (RESETN == 1'b0) begin
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
    if (RESETN == 1'b0) begin
      PSUM_OUT_MUX_CTRL <= 0;
    end
    else begin
      // set
      if (param_valid == 1'b1) begin
        PSUM_OUT_MUX_CTRL <= param_R - 1;
      end
    end
  end



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
