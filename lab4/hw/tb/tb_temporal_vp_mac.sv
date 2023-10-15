// test bench for a temporal variable precision MAC

`timescale 1ns/1ps
module tb_temporal_vp_mac();

  // define constants
  localparam DEBUG = 0;
  localparam AXIS_DW = 32;
  localparam AXIS_TID_DW = 8;
  localparam WEIGHT_DW = 8;
  localparam ACTIVATION_DW = 8;
  localparam MAX_OUTPUTS = 4;
  // scales for conv layer 1 (1st layer)
  localparam SCALE_ACTIVATION = 0.5980304553341924;
  localparam SCALE_WEIGHT = 419.3088582098988;
  localparam SCALE_BIAS = 250.7594674009261;
  // scale: 1/SCALE_WEIGHT
  localparam SCALE_1_SW = 0.0023848768763654814215805025711;
  localparam SCALE_1_SW_Q1616 = 32'h0000009C;
  // scale: 1/(SCALE_WEIGHT*SCALE_ACTIVATION)
  localparam SCALE_1_SWSA_Q1616 = 32'h00000105;
  localparam SCALE_1_SWSA = 0.00398788532438997685176056405212;


  const int MAX_NUM_MACS = 10;
  int num_macs;

  // input data
  logic [WEIGHT_DW-1:0] weight;
  logic [ACTIVATION_DW-1:0] activation;

  // expected outputs for test
  // depending on the set precision level, the output will be different
  // will have at most 4 different MAC outputs and each will be compared
  uint scb_precision_level;
  logic [WEIGHT_DW+ACTIVATION_DW:0] scb_mult [0:MAX_OUTPUTS-1];
  logic [31:0] scb_accum [0:MAX_OUTPUTS-1];
  logic [7:0] scb_accum_quant [0:MAX_OUTPUTS-1];
  // int scb_mult [0:MAX_OUTPUTS-1];
  // int scb_accum [0:MAX_OUTPUTS-1];
  // int scb_accum_quant [0:MAX_OUTPUTS-1];
  logic [AXIS_DW-1:0] scb_output;

  // helper logic
  logic axis_handshake;
  assign axis_handshake = sd_axis_tvalid & sd_axis_tready;
  assign sd_axis_tlast = (num_macs >= (MAX_NUM_MACS - 1)) ? 1 : 0;

  // TODO inputs for DUT
  logic                    clk           ;
  logic                    arstn         ;
  logic [AXIS_DW-1:0]      sd_axis_tdata ;
  logic                    sd_axis_tlast ;
  logic                    sd_axis_tuser ;
  logic                    sd_axis_tvalid;
  logic [             7:0] sd_axis_tid   ;
  logic                    mo_axis_tready;

  // TODO ouptuts for DUT
  logic                  sd_axis_tready;
  logic                  mo_axis_tvalid;
  logic [AXIS_DW-1:0]    mo_axis_tdata ;
  logic                  mo_axis_tlast ;
  logic [           7:0] mo_axis_tid   ;

  // TODO instantiate DUT



  // clock generator
  always begin
    clk = 0;
    forever begin
      #5 clk = ~clk;
    end
  end

  task automatic reset();
    // input data and TB reset
    num_macs = 0;
    weight = 0;
    activation = 0;
    scb_precision_level = 0;
    for (int i = 0; i < MAX_OUTPUTS; i++) {
      scb_mult[i] = 0;
      scb_accum[i] = 0;
      scb_accum_quant[i] = 0;
    }

    // DUT reset
    clk = 0;
    arstn = 0;
    sd_axis_tdata = 0;
    sd_axis_tuser = 0;
    sd_axis_tvalid = 0;
    sd_axis_tid = 0;
    // clear MAC AXIS master input ready
    mo_axis_tready = 0;

    repeat (2) @(posedge clk);
    arstn = 1;
  endtask

  function automatic void set_rand_precision();
    // set random precision level between [0, 8] inclusive
    if (sd_axis_tvalid == 1'b0 | axis_handshake == 1'b1) begin
      scb_precision_level = $urandom_range(8, 0); // (max, min)
      sd_axis_tdata = scb_precision_level;
      sd_axis_tuser = 1;
      sd_axis_tvalid = $urandom;
      sd_axis_tid = num_macs;
    end
  endfunction

  function automatic void set_scale_dequant();
    // sets the scale factor for dequantization
    if (sd_axis_tvalid == 1'b0 | axis_handshake == 1'b1) begin
      sd_axis_tdata = SCALE_1_SW_Q1616;
      sd_axis_tuser = 1;
      sd_axis_tvalid = $urandom;
      sd_axis_tid = num_macs;
    end
  endfunction

  function automatic void set_rand_input();
    // Send randomized input data if TVALID is low or if an AXIS handshake happened
    if (sd_axis_tvalid == 1'b0 | axis_handshake == 1'b1) begin
      weight = $random;
      activation = $random;
      sd_axis_tdata = {32'(signed'(weight)), 32'(unsigned(activation))};
      sd_axis_tuser = 0;
      sd_axis_tvalid = $urandom;
      sd_axis_tid = num_macs;
    end
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

  // returns the bit widths of activations based on precision level
  function automatic uint get_activation_bits();
    if (scb_precision_level <= 2) begin
      return 8;
    end
    else if (scb_precision_level <= 5) begin
      return 4;
    end
    else if (scb_precision_level <= 8) begin
      return 2;
    end
  endfunction

  // returns the bit widths of weights based on precision level
  function automatic uint get_weight_bits();
    if (scb_precision_level == 0 || scb_precision_level == 3 || scb_precision_level == 6) begin
      return 8;
    end
    else if (scb_precision_level == 1 || scb_precision_level == 4 || scb_precision_level == 7) begin
      return 4;
    end
    else if (scb_precision_level == 2 || scb_precision_level == 5 || scb_precision_level == 8) begin
      return 2;
    end
  endfunction

  // returns the number of unique (activation) outputs based on precision level
  function automatic uint get_num_outputs();
    uint a_bits = get_activation_bits();
    uint w_bits = get_weight_bits();
    uint min_bits = a_bits < w_bits ? a_bits : w_bits;
    if (min_bits == 8) begin
      return 1;
    end
    else if (min_bits == 4) begin
      return 2;
    end
    else if (min_bits == 2) begin
      return 4;
    end
  endfunction

  function automatic void update_scoreboard();
    if (axis_handshake == 1'b1) begin
      disp_input_data();
      if (itr == 1'b0 && sd_axis_tuser == 1'b1) begin
        // data is used to set precision level, no change
      end
      else begin
        // start accumulator as 0 and update MAC accumulator
        const uint num_outputs = get_num_outputs();
        const uint a_bits = get_activation_bits();
        const uint w_bits = get_weight_bits();
        for (int i = 0; i < num_outputs; i++) begin
          uint w_lo = i * w_bits;
          uint w_hi = (i + 1) * w_bits - 1;
          uint a_lo = i * a_bits;
          uint a_hi = (i + 1) * a_bits - 1;
          scb_mult[i] = 8'signed(weight[w_hi:w_lo]) * 9'signed({1'b0, activation[a_hi:a_lo]});
          scb_accum[i] += 32'signed(scb_mult[i]);
          // dequantize accumulator to fp32
          scb_accum_quant[i] = (scb_accum[i] << 16) * SCALE_1_SW_Q1616;
        end
        scb_output = {scb_accum_quant[3], scb_accum_quant[2], scb_accum_quant[1], scb_accum_quant[0]};
        num_macs++;
      end
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

  // Test 1. Send and accept random input data MAX_NUM_MACS times and check output
  task automatic run_test1();
    reset();
    // initialize precision level and scale factor
    set_rand_precision();
    @(posedge clk);
    set_scale_dequant();
    @(posedge clk);

    while (num_macs < MAX_NUM_MACS) begin
      @(posedge clk);
      set_rand_input();

      // wait a little
      #1;
      // num_macs updated in update_scoreboard()
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
