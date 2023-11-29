// accelerator control unit

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
    input [C_S00_AXI_DATA_WIDTH-1:0] params_reg,
    input [C_S00_AXI_DATA_WIDTH-1:0] weight_base_addr,
    input [C_S00_AXI_DATA_WIDTH-1:0] input_base_addr,
    input [C_S00_AXI_DATA_WIDTH-1:0] output_base_addr,
    input [C_S00_AXI_DATA_WIDTH-1:0] mem_ctrl,
    input [0:PE_COLS-1] MAC_DONE [0:PE_ROWS-1],             // true every time a MAC operation is done and ready to pass forward

    // outputs
    output [2:0] weight_row_wr_ctrl,                        // index of weight row to write to
    output logic [0:PE_COLS-1] add_mux_ctrl [0:PE_ROWS-1],
    output [0:PE_COLS-1] stall_ctrl [0:PE_ROWS-1],
    output [0:PE_COLS-1] resetn_mac_ctrl [0:PE_ROWS-1],
    output logic [3:0] row_out_mux_ctrl [0:PE_ROWS-1],            // 9:1 mux for each row of MACs
    output logic [2:0] psum_out_mux_ctrl,                         // 5:1 mux controlling which row goes to output storage or feedback
    output out_storage_wr_en                                // output storage register write enable

    // AXI interfaces?

  );

  wire [C_M00_AXI_DATA_WIDTH-1:0] debug;


  // parameter wires
  wire [3:0] param_R;   // filter height
  wire [3:0] param_S;   // filter width
  wire [3:0] param_U;
  wire [3:0] param_tile_size;
  wire [11:0] param_C;
  wire param_valid;
  wire param_reset;

  assign param_R = params_reg[3:0];
  assign param_S = params_reg[7:4];
  assign param_U = params_reg[11:8];
  assign param_tile_size = params_reg[15:12];
  assign param_C = params_reg[27:16];
  assign param_valid = params_reg[30];
  assign param_reset = params_reg[31];

  // add mux control logic
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      for (int i = 0; i < PE_ROWS; i++) begin
        add_mux_ctrl[i] <= 0;
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
                add_mux_ctrl[r][c] <= 1'b1;
              end
              else begin
                add_mux_ctrl[r][c] <= 1'b0;
              end
            end
            else begin
              add_mux_ctrl[r][c] <= 1'b0;
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
        row_out_mux_ctrl[i] <= 0;
      end
    end
    else begin
      // each row will get the same 4-bit value
      // set to the value of tile size - 1
      if (param_valid == 1'b1) begin
        for (int r = 0; r < PE_ROWS; r++) begin
          row_out_mux_ctrl[r] <= param_tile_size - 1;
        end
      end
    end
  end

  // psum out mux control logic
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      psum_out_mux_ctrl <= 0;
    end
    else begin
      // set
      if (param_valid == 1'b1) begin
        psum_out_mux_ctrl <= param_R - 1;
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
