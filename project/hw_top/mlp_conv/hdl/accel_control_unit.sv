// accelerator control unit

`timescale 1ns/1ps
module accel_control_unit #(
    parameter AXI_S_DW = 32,
    parameter AXI_M_DW = 32,
    parameter PE_ROWS = 5,
    parameter PE_COLS = 5
  )(
    input CLK,
    input RESETN,

    // accelerator interface
    // inputs
    input [0:PE_COLS-1] mac_done [0:PE_ROWS-1],             // true every time a MAC operation is done and ready to pass forward
    input [0:PE_COLS-1] status [0:PE_ROWS-1],               // indicates if the output register is valid

    // outputs
    output [0:PE_COLS-1] weight_reg_wr_ctrl [0:PE_ROWS-1],
    output [0:PE_COLS-1] add_mux_ctrl [0:PE_ROWS-1],
    output [0:PE_COLS-1] stall_ctrl [0:PE_ROWS-1],
    output [0:PE_COLS-1] resetn_mac_ctrl [0:PE_ROWS-1],
    output [3:0] row_out_mux_ctrl [0:PE_ROWS-1],            // 9:1 mux for each row of MACs
    output [2:0] psum_out_ctrl,                             // 5:1 mux controlling which row goes to output storage or feedback
    output psum_feedback_ctrl,                              // 2:1 mux controls which psum (from array or from output storage) proceeds to output storage (if out_storage_wr_en) or feeds back to 1st MAC unit
    output out_storage_wr_en                               // output storage register write enable

    // AXI interfaces?

  );

  wire [AXI_M_DW-1:0] debug;



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
