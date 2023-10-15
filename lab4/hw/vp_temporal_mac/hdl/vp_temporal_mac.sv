// a temporal variable precision MAC
`timescale 1ns/1ps
module vp_temporal_mac#(
  parameter AXIS_DW = 16
  )(
    input ACLK,
    input ARESETN,

    // AXIS slave data interface
    output SD_AXIS_TREADY,
    input [AXIS_DW-1:0] SD_AXIS_TDATA,   // 8b activation, 8b weight
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

  // 
  mul_Nx2 #(.N(8)) mul8x2_i(.a(SD_AXIS_TDATA[7:0]), .b(SD_AXIS_TDATA[15:8]), .axb(MO_AXIS_TDATA[15:0]));

endmodule
