// test bench for staged MAC

`timescale 1ns/1ps
module tb_stage_mac ();

  // define constants
  localparam DATA_WIDTH = 32;
  localparam ACCUM_BITS = 8 ;
  localparam AB_2 = ACCUM_BITS / 2;
  localparam DW_2 = DATA_WIDTH / 2;
  localparam DW_HI = DATA_WIDTH - 1;
  localparam DW2_HI = DATA_WIDTH * 2 - 1;
  localparam ACCUM_HI = DATA_WIDTH * 2 + ACCUM_BITS - 1;

  int itr    ;
  int itr_max;

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

  // TODO create functions for reset, setting data, and caluclating expected outputs
  function automatic void init_itrs();
    itr = 0;
    itr_max = 10;
  endfunction

  task automatic void reset();
    init_itrs();
    clk = 0;
    arstn = 0;
    repeat (2) @(posedge clk);
    arstn = 1;
    // clear MAC AXIS master input ready
    mo_axis_tready = 0;
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
    $display("Input data: %h", sd_axis_tdata);
    $display("Input last: %h", sd_axis_tlast);
    $display("Input id: %h", sd_axis_tid);
  endfunction

  function automatic void disp_output_data();
    $display("Output data: %h", mo_axis_tdata);
    $display("Output last: %h", mo_axis_tlast);
    $display("Output id: %h", mo_axis_tid);
  endfunction

  function automatic void update_scoreboard();
    if (sd_axis_tvalid == 1 && sd_axis_tready == 1) begin
      disp_input_data();
      if (itr == 0 && sd_axis_tuser == 1) begin
        // start accumulator as initialized by activation
        scb_accum = {{AB_2{activation[DW_HI]}}, {DW_2{activation[DW_HI]}}, activation, {DW_2{1'b0}}, {AB_2{1'b0}}};
      end
      else if (itr == 0) begin
        // start accumulator as 0
        scb_accum = 0;
      end begin
        // update MAC accumulator
        scb_mult = weight * activation;
        scb_accum += {{AB_2{scb_mult[DW2_HI]}}, scb_mult, {AB_2{1'b0}}};
      end
      itr++;
    end
  endfunction

  function automatic void check_output();
    // checks the final MAC output
    if (mo_axis_tvalid == 1 && mo_axis_tready == 1) begin
      disp_output_data();
      scb_output = scb_accum[ACCUM_HI-AB_2-DW_2:DW_2+AB_2]; // 51:20
      $display("Expected: %h", scb_output);
      $display("Actual: %h", mo_axis_tdata);
      if (mo_axis_tdata != scb_output) begin
        $display("ERROR: Output data does not match expected output");
        $finish;
      end
    end
  endfunction

  // Test 1. Send and accept random input data itr_max times and check output
  task automatic run_test1();
    reset();

    while (itr < itr_max) begin
      set_rand_input();

      // signal last data
      if (itr == itr_max - 1) begin
        sd_axis_tlast = 1;
      end

      @(posedge clk);
      // itr updated in update_scoreboard()
      update_scoreboard();
    end

    while (mo_axis_tready == 0) begin
      mo_axis_tready = $urandom;
      @(posedge clk);
      check_output();
    end
  endtask

  // Stimulus
  initial begin
    run_test1();
    reset();

    // ! TODO outdated code below
    // Send input data without initializing accum
    // sd_axis_tdata = 64'h00012000_00024000;
    // sd_axis_tlast = 0;
    // sd_axis_tuser = 0;
    // sd_axis_tvalid = 1;
    // sd_axis_tid = 0;

    // repeat (1) @(posedge clk);
    // arstn = 1;
    // repeat (1) @(posedge clk);

    // // send data itr_max times and end. (Wait for MAC to be ready and accept data)
    // while (itr < itr_max) begin
    //   @(posedge sd_axis_tready);
    //   sd_axis_tid += 1;
    //   repeat (1) @(posedge clk);
    //   // data should be accepted, send same data multiple times
    //   if (itr == itr_max - 1) begin
    //     // signal last data
    //     sd_axis_tlast = 1;
    //   end
    //   disp_input_data();
    //   itr++;
    // end

    // // check output data
    // repeat (1) begin
    //   @(posedge mo_axis_tvalid);
    //   disp_output_data();
    // end

    // // check done write out and stop sending new data
    // sd_axis_tvalid = 0;
    // repeat (1) begin
    //   mo_axis_tready = 1;
    //   repeat (2) @(posedge clk);
    // end


    // End simulation
    repeat (2) @(posedge clk);
    $finish;
  end

endmodule
