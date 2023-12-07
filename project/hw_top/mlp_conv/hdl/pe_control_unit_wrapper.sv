// PE control unit wrapper that expands all 2D arrays into hard coded IO

import types_pkg::*;

`timescale 1ns/1ps
module pe_control_unit_wrapper #(
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
    output wire [C_S00_AXI_DATA_WIDTH-1:0] PE_STATUS,

    // PE array interface
    output wire RESETN_MAC_CTRL,
    output wire [BYTE_LEN-1:0] IN_ACT_DATA_OUT,
    output wire [PE_COLS * BYTE_LEN - 1:0] WEIGHTS_OUT_0,
    output wire [PE_COLS * BYTE_LEN - 1:0] WEIGHTS_OUT_1,
    output wire [PE_COLS * BYTE_LEN - 1:0] WEIGHTS_OUT_2,
    output wire [PE_COLS * BYTE_LEN - 1:0] WEIGHTS_OUT_3,
    output wire [PE_COLS * BYTE_LEN - 1:0] WEIGHTS_OUT_4,
    output wire STALL_CTRL,
    output wire [0:PE_COLS-1] ADD_MUX_CTRL_0,
    output wire [0:PE_COLS-1] ADD_MUX_CTRL_1,
    output wire [0:PE_COLS-1] ADD_MUX_CTRL_2,
    output wire [0:PE_COLS-1] ADD_MUX_CTRL_3,
    output wire [0:PE_COLS-1] ADD_MUX_CTRL_4,
    output wire [3:0] ROW_OUT_MUX_CTRL_0,                        // 9:1 mux for each row of MACs
    output wire [3:0] ROW_OUT_MUX_CTRL_1,
    output wire [3:0] ROW_OUT_MUX_CTRL_2,
    output wire [3:0] ROW_OUT_MUX_CTRL_3,
    output wire [3:0] ROW_OUT_MUX_CTRL_4,
    output wire [2:0] PSUM_OUT_MUX_CTRL,                         // 5:1 mux controlling which row goes to output storage or feedback
    output wire [C_M00_AXI_DATA_WIDTH-1:0] IN_PSUM_OUT,           // input psum going out to PE array
    input wire [C_M00_AXI_DATA_WIDTH-1:0] OUT_PSUM_IN,            // output psum coming in from PE array

    // AXI Master FSM interface
    output wire [C_M00_AXI_DATA_WIDTH-1:0] M_TARGET_SLAVE_BASE_AR_ADDR,
    output wire [C_M00_AXI_DATA_WIDTH-1:0] M_TARGET_SLAVE_BASE_AW_ADDR,
    input wire [C_M00_AXI_DATA_WIDTH-1:0] M_AXI_RDATA,
    input wire M_AXI_RVALID_RREADY,
    output wire [C_M00_AXI_DATA_WIDTH-1:0] M_AXI_WDATA,
    input wire M_AXI_WVALID_WREADY,
    input wire M_AXI_AWVALID_AWREADY,
    output wire INIT_AXI_WR_TXN,
    output wire INIT_AXI_RD_TXN,
    input wire TXN_DONE,
    input wire AXI_ERROR
  );

  t_weights weights_out;
  t_add_mux_ctrl add_mux_ctrl;
  t_row_out_mux_ctrl row_out_mux_ctrl;

  assign WEIGHTS_OUT_0 = weights_out[0];
  assign WEIGHTS_OUT_1 = weights_out[1];
  assign WEIGHTS_OUT_2 = weights_out[2];
  assign WEIGHTS_OUT_3 = weights_out[3];
  assign WEIGHTS_OUT_4 = weights_out[4];

  assign ADD_MUX_CTRL_0 = add_mux_ctrl[0];
  assign ADD_MUX_CTRL_1 = add_mux_ctrl[1];
  assign ADD_MUX_CTRL_2 = add_mux_ctrl[2];
  assign ADD_MUX_CTRL_3 = add_mux_ctrl[3];
  assign ADD_MUX_CTRL_4 = add_mux_ctrl[4];

  assign ROW_OUT_MUX_CTRL_0 = row_out_mux_ctrl[0];
  assign ROW_OUT_MUX_CTRL_1 = row_out_mux_ctrl[1];
  assign ROW_OUT_MUX_CTRL_2 = row_out_mux_ctrl[2];
  assign ROW_OUT_MUX_CTRL_3 = row_out_mux_ctrl[3];
  assign ROW_OUT_MUX_CTRL_4 = row_out_mux_ctrl[4];

  // PE control unit instance using the 2D arrays above
  pe_control_unit #(
                    .C_S00_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
                    .C_M00_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
                    .C_M00_AXI_BURST_LEN(C_M00_AXI_BURST_LEN),
                    .C_M00_AXI_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
                    .PE_ROWS(PE_ROWS),
                    .PE_COLS(PE_COLS),
                    .MAC_PIPE_DEPTH(MAC_PIPE_DEPTH),
                    .BYTE_LEN(BYTE_LEN)
                  ) pe_ctrl_inst (
                    .CLK(CLK),
                    .RESETN(RESETN),

                    // PE registers
                    .ACC_PARAMS(ACC_PARAMS),
                    .WEIGHT_BASE_ADDR(WEIGHT_BASE_ADDR),
                    .INPUT_BASE_ADDR(INPUT_BASE_ADDR),
                    .OUTPUT_BASE_ADDR(OUTPUT_BASE_ADDR),
                    .MEM_CTRL(MEM_CTRL),
                    .PE_STATUS(PE_STATUS),

                    // PE array interface
                    .RESETN_MAC_CTRL(RESETN_MAC_CTRL),
                    .IN_ACT_DATA_OUT(IN_ACT_DATA_OUT),
                    .WEIGHTS_OUT(weights_out),
                    .STALL_CTRL(STALL_CTRL),
                    .ADD_MUX_CTRL(add_mux_ctrl),
                    .ROW_OUT_MUX_CTRL(row_out_mux_ctrl),
                    .PSUM_OUT_MUX_CTRL(PSUM_OUT_MUX_CTRL),
                    .IN_PSUM_OUT(IN_PSUM_OUT),
                    .OUT_PSUM_IN(OUT_PSUM_IN),

                    // AXI Master FSM interface
                    .M_TARGET_SLAVE_BASE_AR_ADDR(M_TARGET_SLAVE_BASE_AR_ADDR),
                    .M_TARGET_SLAVE_BASE_AW_ADDR(M_TARGET_SLAVE_BASE_AW_ADDR),
                    .M_AXI_RDATA(M_AXI_RDATA),
                    .M_AXI_RVALID_RREADY(M_AXI_RVALID_RREADY),
                    .M_AXI_WDATA(M_AXI_WDATA),
                    .M_AXI_WVALID_WREADY(M_AXI_WVALID_WREADY),
                    .M_AXI_AWVALID_AWREADY(M_AXI_AWVALID_AWREADY),
                    .INIT_AXI_WR_TXN(INIT_AXI_WR_TXN),
                    .INIT_AXI_RD_TXN(INIT_AXI_RD_TXN),
                    .TXN_DONE(TXN_DONE),
                    .AXI_ERROR(AXI_ERROR)
                  );
endmodule
