// test bench for pe control unit

`timescale 1ns/1ps
module tb_pe_control_unit();
  localparam C_S00_AXI_DATA_WIDTH = 32;
  localparam C_M00_AXI_DATA_WIDTH = 32;
  localparam C_M00_AXI_BURST_LEN = 16;
  localparam C_M00_AXI_TARGET_SLAVE_BASE_ADDR = 32'h40000000;
  localparam PE_ROWS = 5;
  localparam PE_COLS = 5;
  localparam MAC_PIPE_DEPTH = 2;
  localparam BYTE_LEN = 8;


endmodule
