// test bench for staged MAC

`timescale 1ps/1fs
module tb_stage_mac;

  // parameters
  localparam DATA_WIDTH = 32;
  localparam ACCUM_BITS = 8;

  int itr;
  int itr_max;

  // Inputs
  logic clk;
  logic arstn;
  logic [DATA_WIDTH*2-1:0] sd_axis_tdata;
  logic sd_axis_tlast;
  logic sd_axis_tuser;
  logic sd_axis_tvalid;
  logic [7:0] sd_axis_tid;
  logic mo_axis_tready;

  // Outputs
  logic sd_axis_tready;
  logic mo_axis_tvalid;
  logic [DATA_WIDTH-1:0] mo_axis_tdata;
  logic mo_axis_tlast;
  logic [7:0] mo_axis_tid;

  // Instantiate the Unit Under Test (UUT)
  staged_mac #(
               .DATA_WIDTH(DATA_WIDTH),
               .ACCUM_BITS(ACCUM_BITS)
             ) uut (
               .ACLK(clk),
               .ARESETN(arstn),
               // inputs
               .SD_AXIS_TDATA(sd_axis_tdata),
               .SD_AXIS_TLAST(sd_axis_tlast),
               .SD_AXIS_TUSER(sd_axis_tuser),
               .SD_AXIS_TVALID(sd_axis_tvalid),
               .SD_AXIS_TID(sd_axis_tid),
               .MO_AXIS_TREADY(mo_axis_tready),
               // outputs
               .SD_AXIS_TREADY(sd_axis_tready),
               .MO_AXIS_TVALID(mo_axis_tvalid),
               .MO_AXIS_TDATA(mo_axis_tdata),
               .MO_AXIS_TLAST(mo_axis_tlast),
               .MO_AXIS_TID(mo_axis_tid)
             );

  // Clock generation
  always #5 clk = ~clk;

  // Stimulus
  initial
  begin
    // Reset
    itr = 0;
    itr_max = 2;
    arstn = 0;
    repeat (1) @(posedge clk);
    arstn = 1;
    repeat (1) @(posedge clk);

    // set ready signal for output
    mo_axis_tready = 0;

    // Send input data without initializing accum
    sd_axis_tdata = 64'h00012000_00024000;
    sd_axis_tlast = 0;
    sd_axis_tuser = 0;
    sd_axis_tvalid = 1;
    sd_axis_tid = 3;

    // send data itr_max times and end. (Wait for MAC to be ready and accept data)
    while (itr < itr_max)
    begin
      @(posedge sd_axis_tready);
      repeat (1) @(posedge clk);
      // data should be accepted, send same data multiple times
      if (itr == itr_max - 1)
      begin
        // signal last data
        sd_axis_tlast = 1;
      end
      itr++;
    end

    // check output data
    repeat (1)
    begin
      @(posedge mo_axis_tvalid);
      $display("Output data: %h", mo_axis_tdata);
      $display("Output last: %h", mo_axis_tlast);
      $display("Output id: %h", mo_axis_tid);
    end

    // check done write out
    repeat (1) begin
        mo_axis_tready = 1;
        repeat (2) @(posedge clk);
    end

    // End simulation
    repeat (4) @(posedge clk);
    $finish;
  end

endmodule
