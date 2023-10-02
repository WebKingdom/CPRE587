// test bench for staged MAC

`timescale 1ns/1ps
module tb_stage_mac ();

  // define constants
  localparam DEBUG = 0;
  localparam DATA_WIDTH = 8;
  localparam ACCUM_BITS = 20;
  localparam AB_2 = ACCUM_BITS / 2;
  localparam DW_2 = DATA_WIDTH / 2;
  localparam DW_HI = DATA_WIDTH - 1;
  localparam DW2_HI = DATA_WIDTH * 2 - 1;
  localparam ACCUM_HI = DATA_WIDTH * 2 + ACCUM_BITS - 1;

  const int ITR_MAX = 524288;
  int itr;

  // input data
  logic [DW_HI:0] weight;
  logic [DW_HI:0] activation;

  // expected outputs for test
  logic [DW2_HI:0] scb_mult;
  logic [ACCUM_HI:0] scb_accum;
  logic [DATA_WIDTH-1:0] scb_output;

  // Inputs
  logic                    clk           ;
  logic                    arstn         ;
  logic [DATA_WIDTH*2-1:0] sd_axis_tdata ;
  logic                    sd_axis_tlast ;
  logic                    sd_axis_tuser ;
  logic                    sd_axis_tvalid;
  logic [             7:0] sd_axis_tid   ;
  logic                    mo_axis_tready;

  // Outputs
  logic                  sd_axis_tready;
  logic                  mo_axis_tvalid;
  logic [DATA_WIDTH-1:0] mo_axis_tdata ;
  logic                  mo_axis_tlast ;
  logic [           7:0] mo_axis_tid   ;

  // Instantiate the Unit Under Test (UUT)
  staged_mac #(
               .DATA_WIDTH(DATA_WIDTH),
               .ACCUM_BITS(ACCUM_BITS)
             ) uut (
               .ACLK          (clk           ),
               .ARESETN       (arstn         ),
               // inputs
               .SD_AXIS_TDATA (sd_axis_tdata ),
               .SD_AXIS_TLAST (sd_axis_tlast ),
               .SD_AXIS_TUSER (sd_axis_tuser ),
               .SD_AXIS_TVALID(sd_axis_tvalid),
               .SD_AXIS_TID   (sd_axis_tid   ),
               .MO_AXIS_TREADY(mo_axis_tready),
               // outputs
               .SD_AXIS_TREADY(sd_axis_tready),
               .MO_AXIS_TVALID(mo_axis_tvalid),
               .MO_AXIS_TDATA (mo_axis_tdata ),
               .MO_AXIS_TLAST (mo_axis_tlast ),
               .MO_AXIS_TID   (mo_axis_tid   )
             );

  // Clock generation
  always #5 clk = ~clk;

  task automatic reset();
    // input data reset
    itr = 0;
    weight = 0;
    activation = 0;
    scb_mult = 0;
    scb_accum = 0;
    scb_output = 0;

    // clear MAC AXIS master input ready
    mo_axis_tready = 0;

    // UUT reset
    clk = 0;
    arstn = 0;
    repeat (2) @(posedge clk);
    arstn = 1;
  endtask

  function automatic void set_input();
    // Send input data without initializing accum
    weight = 32'h00012000;
    activation = 32'h00024000;
    sd_axis_tdata = {weight, activation};
    sd_axis_tlast = 0;
    sd_axis_tuser = 0;
    sd_axis_tvalid = 1;
    sd_axis_tid = itr;
  endfunction

  function automatic void set_rand_input();
    // Send randomized input data without TLAST
    weight = $random;
    activation = $random;
    sd_axis_tdata = {weight, activation};
    sd_axis_tlast = 0;
    sd_axis_tuser = $urandom;
    sd_axis_tvalid = $urandom;
    sd_axis_tid = itr;
  endfunction

  function automatic void disp_input_data();
    if (DEBUG) begin
      $display("Input data: %h", sd_axis_tdata);
      $display("Input last: %h", sd_axis_tlast);
      $display("Input id: %h", sd_axis_tid);
    end
  endfunction

  function automatic void disp_output_data();
    if (DEBUG) begin
      $display("Output data: %h", mo_axis_tdata);
      $display("Output last: %h", mo_axis_tlast);
      $display("Output id: %h", mo_axis_tid);
    end
  endfunction

  function automatic void update_scoreboard();
    if (sd_axis_tvalid == 1'b1 && sd_axis_tready == 1'b1) begin
      disp_input_data();
      if (itr == 1'b0 && sd_axis_tuser == 1'b1) begin
        // start accumulator as initialized by activation
        scb_accum = {{AB_2{activation[DW_HI]}}, {DW_2{activation[DW_HI]}}, activation, {DW_2{1'b0}}, {AB_2{1'b0}}};
      end
      else if (itr == 1'b0) begin
        // start accumulator as 0
        scb_accum = 0;
      end begin
        // update MAC accumulator
        scb_mult = weight * activation;
        scb_accum += {{AB_2{scb_mult[DW2_HI]}}, scb_mult, {AB_2{1'b0}}};
      end
      scb_output = {scb_accum[ACCUM_HI:ACCUM_HI-DW_2+1], scb_accum[DW_HI+AB_2:DW_HI+AB_2-DW_2+1]}; // 71:56, 35:20
      itr++;
    end
  endfunction

  function automatic void check_output();
    // checks the final MAC output
    if (mo_axis_tvalid == 1'b1 && mo_axis_tready == 1'b1) begin
      disp_output_data();
      $display("Expected: %h", scb_output);
      $display("Actual: %h", mo_axis_tdata);
      if (mo_axis_tdata != scb_output) begin
        $display("ERROR: Output data does not match expected output");
        $finish;
      end
      else if (mo_axis_tlast != 1'b1) begin
        $display("ERROR: TLAST not high");
        $finish;
      end
      else if ((itr <= 32'h000000ff) && (mo_axis_tid != (itr - 1))) begin
        $display("ERROR: TID != itr");
        $finish;
      end
    end
  endfunction

  // Test 1. Send and accept random input data ITR_MAX times and check output
  task automatic run_test1();
    reset();

    while (itr < ITR_MAX) begin
      @(posedge clk);
      set_rand_input();

      // signal last data
      if (itr == (ITR_MAX - 1)) begin
        sd_axis_tlast = 1;
      end

      // itr updated in update_scoreboard()
      // wait a little
      #1;
      update_scoreboard();
    end

    // wait for TVALID high on MAC master output
    while (mo_axis_tvalid == 1'b0) begin
      @(posedge clk);
    end

    // randomize TREADY on MAC master input
    while (mo_axis_tready == 1'b0) begin
      @(posedge clk);
      mo_axis_tready = $urandom;
      // wait a little
      #1;
      check_output();
    end
  endtask

  // Stimulus
  initial begin
    run_test1();
    repeat (1) @(posedge clk);
    reset();

    // End simulation
    repeat (2) @(posedge clk);
    $finish;
  end

endmodule
