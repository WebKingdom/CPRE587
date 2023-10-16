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
  int scb_precision_level;
  logic [WEIGHT_DW+ACTIVATION_DW-1:0] scb_mult [0:MAX_OUTPUTS-1];
  logic [31:0] scb_accum [0:MAX_OUTPUTS-1];
  logic [63:0] scb_mult_dequant;
  logic [7:0] scb_accum_quant [0:MAX_OUTPUTS-1];
  // int scb_mult [0:MAX_OUTPUTS-1];
  // int scb_accum [0:MAX_OUTPUTS-1];
  // int scb_accum_quant [0:MAX_OUTPUTS-1];
  logic [AXIS_DW-1:0] scb_output;

  // inputs for DUT
  logic                    clk           ;
  logic                    rstn          ;
  logic [AXIS_DW-1:0]      sd_axis_tdata ;
  logic                    sd_axis_tlast ;
  logic                    sd_axis_tuser ;
  logic                    sd_axis_tvalid;
  logic [             7:0] sd_axis_tid   ;
  logic                    mo_axis_tready;

  // ouptuts for DUT
  logic                  sd_axis_tready;
  logic                  mo_axis_tvalid;
  logic [AXIS_DW-1:0]    mo_axis_tdata ;
  logic                  mo_axis_tlast ;
  logic [           7:0] mo_axis_tid   ;
  
  // helper logic
  wire axis_handshake;
  assign axis_handshake = sd_axis_tvalid & sd_axis_tready;
  assign sd_axis_tlast = (num_macs >= (MAX_NUM_MACS - 1)) ? 1 : 0;

  // instantiate DUT
  vp_temporal_mac #(.AXIS_DW(AXIS_DW))
  dut (
    .CLK           (clk           ),
    .RESETN        (rstn          ),
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
    scb_mult_dequant = 0;
    scb_output = 0;
    for (int i = 0; i < MAX_OUTPUTS; i++) begin
      // for (int j = 0; j < 3; j++) begin
      //   scb_mult[i][j] = 0;
      // end
      scb_mult[i] = 0;
      scb_accum[i] = 0;
      scb_accum_quant[i] = 0;
    end

    // DUT reset
    clk = 0;
    rstn = 0;
    sd_axis_tdata = 0;
    sd_axis_tuser = 0;
    sd_axis_tvalid = 0;
    sd_axis_tid = 0;
    // clear MAC AXIS master input ready
    mo_axis_tready = 0;

    repeat (2) @(posedge clk);
    #1;
    rstn = 1;
  endtask

  function automatic void set_rand_precision();
    // set random precision level between [0, 8] inclusive
    if (sd_axis_tvalid == 1'b0) begin
      scb_precision_level = $urandom_range(8, 0); // (max, min)
      sd_axis_tdata = AXIS_DW'(unsigned'(scb_precision_level));
      sd_axis_tuser = 1;
      sd_axis_tvalid = $urandom;
      sd_axis_tid = num_macs;
    end
  endfunction

  function automatic void set_scale_dequant();
    // sets the scale factor for dequantization
    if (sd_axis_tvalid == 1'b0) begin
      sd_axis_tdata = SCALE_1_SW_Q1616;
      sd_axis_tuser = 0;
      sd_axis_tvalid = $urandom;
      sd_axis_tid = num_macs;
    end
  endfunction

  function automatic void set_rand_input();
    // Send randomized input data if TVALID is low or if an AXIS handshake happened
    if (sd_axis_tvalid == 1'b0) begin
      activation = $random;
      weight = $random;
      sd_axis_tdata = {16'h0000, activation, weight};
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
  function automatic int get_activation_bits();
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
  function automatic int get_weight_bits();
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
  function automatic int get_num_outputs();
    int a_bits = get_activation_bits();
    int w_bits = get_weight_bits();
    int min_bits = a_bits < w_bits ? a_bits : w_bits;
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
      if (num_macs == 1'b0 && sd_axis_tuser == 1'b1) begin
        // data is used to set precision level, no change
      end
      else begin
        // start accumulator as 0 and update MAC accumulator
        const int num_outputs = get_num_outputs();
        const int a_bits = get_activation_bits();
        const int w_bits = get_weight_bits();
        const int w_lo = 0 * w_bits;
        const int w_hi = (0 + 1) * w_bits - 1;
        const int a_lo = 0 * a_bits;
        const int a_hi = (0 + 1) * a_bits - 1;

        if (num_outputs == 1) begin
          // 1 output with 8b activation and 8b weight
          scb_mult[0] = 8'(signed'(activation)) * 8'(signed'(weight));
        end
        else if (num_outputs == 2) begin
          if (a_bits == 8 && w_bits == 4) begin
            // 2 outputs with 8b activation and 4b weight
            scb_mult[0] = 8'(signed'(activation)) * 8'(signed'(weight[3:0]));
            scb_mult[1] = 8'(signed'(activation)) * 8'(signed'(weight[7:4]));
          end
          else if (a_bits == 4 && w_bits == 4) begin
            // 2 outputs with 4b activation and 4b weight
            scb_mult[0] = 8'(signed'(activation[3:0])) * 8'(signed'(weight[3:0]));
            scb_mult[1] = 8'(signed'(activation[7:4])) * 8'(signed'(weight[7:4]));
          end
          else begin
            // 2 outputs with 4b activation and 8b weight
            scb_mult[0] = 8'(signed'(activation[3:0])) * 8'(signed'(weight));
            scb_mult[1] = 8'(signed'(activation[7:4])) * 8'(signed'(weight));
          end
        end
        else if (num_outputs == 4) begin
          if (a_bits == 8 && w_bits == 2) begin
            // 4 outputs with 8b activation and 2b weight
            scb_mult[0] = 8'(signed'(activation)) * 8'(signed'(weight[1:0]));
            scb_mult[1] = 8'(signed'(activation)) * 8'(signed'(weight[3:2]));
            scb_mult[2] = 8'(signed'(activation)) * 8'(signed'(weight[5:4]));
            scb_mult[3] = 8'(signed'(activation)) * 8'(signed'(weight[7:6]));
          end
          else if (a_bits == 4 && w_bits == 2) begin
            // 4 outputs with 4b activation and 2b weight
            scb_mult[0] = 8'(signed'(activation[3:0])) * 8'(signed'(weight[1:0]));
            scb_mult[1] = 8'(signed'(activation[3:0])) * 8'(signed'(weight[3:2]));
            scb_mult[2] = 8'(signed'(activation[7:4])) * 8'(signed'(weight[5:4]));
            scb_mult[3] = 8'(signed'(activation[7:4])) * 8'(signed'(weight[7:6]));
          end
          else if (a_bits == 2 && w_bits == 2) begin
            // 4 outputs with 2b activation and 2b weight
            scb_mult[0] = 8'(signed'(activation[1:0])) * 8'(signed'(weight[1:0]));
            scb_mult[1] = 8'(signed'(activation[3:2])) * 8'(signed'(weight[3:2]));
            scb_mult[2] = 8'(signed'(activation[5:4])) * 8'(signed'(weight[5:4]));
            scb_mult[3] = 8'(signed'(activation[7:6])) * 8'(signed'(weight[7:6]));
          end
          else if (a_bits == 2 && w_bits == 4) begin
            // 4 outputs with 2b activation and 4b weight
            scb_mult[0] = 8'(signed'(activation[1:0])) * 8'(signed'(weight[3:0]));
            scb_mult[1] = 8'(signed'(activation[3:2])) * 8'(signed'(weight[3:0]));
            scb_mult[2] = 8'(signed'(activation[5:4])) * 8'(signed'(weight[7:4]));
            scb_mult[3] = 8'(signed'(activation[7:6])) * 8'(signed'(weight[7:4]));
          end
          else if (a_bits == 2 && w_bits == 8) begin
            // 4 outputs with 2b activation and 8b weight
            scb_mult[0] = 8'(signed'(activation[1:0])) * 8'(signed'(weight));
            scb_mult[1] = 8'(signed'(activation[3:2])) * 8'(signed'(weight));
            scb_mult[2] = 8'(signed'(activation[5:4])) * 8'(signed'(weight));
            scb_mult[3] = 8'(signed'(activation[7:6])) * 8'(signed'(weight));
          end
        end
        
        for (int i = 0; i < num_outputs; i++) begin
//          const int w_lo = i * w_bits;
//          const int w_hi = (i + 1) * w_bits - 1;
//          const int a_lo = i * a_bits;
//          const int a_hi = (i + 1) * a_bits - 1;
//          scb_mult[i] = 8'(signed'(weight[w_hi:w_lo])) * 8'(signed'(activation[a_hi:a_lo]));
          scb_accum[i] += 32'(signed'(scb_mult[i]));
          // dequantize accumulator to fp32
          scb_mult_dequant = {scb_accum[i][15:0], 16'h0000} * SCALE_1_SW_Q1616;
          scb_accum_quant[i] = scb_mult_dequant[35:28];
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
      else if ((num_macs <= 32'h000000ff) && (mo_axis_tid != (num_macs - 1))) begin
        $display("ERROR: TID != num_macs");
        $finish;
      end
    end
  endfunction

  // Test 1. Send and accept random input data MAX_NUM_MACS times and check output
  task automatic run_test1();
    reset();
    // initialize precision level and scale factor
    while (axis_handshake == 1'b0) begin
      #1;
      set_rand_precision();
      @(posedge clk);
    end
    
    #1;
    sd_axis_tvalid = 0;
    set_scale_dequant();
    @(posedge(clk));
    while (axis_handshake == 1'b0) begin
      #1;
      set_scale_dequant();
      @(posedge clk);
    end
    #1;
    sd_axis_tvalid = 0;

    while (num_macs < MAX_NUM_MACS) begin
      if (axis_handshake == 1'b1) begin
        #1;
        sd_axis_tvalid = 0;
      end
      set_rand_input();
      @(posedge clk);

      // num_macs updated in update_scoreboard()
      update_scoreboard();
    end

    // wait for TVALID high on MAC master output
    while (mo_axis_tvalid == 1'b0) begin
      @(posedge clk);
    end

    // randomize TREADY on MAC master input
    while (mo_axis_tready == 1'b0) begin
      #1;
      mo_axis_tready = $urandom;
      @(posedge clk);
      check_output();
    end
    
    // reset tvalid to low
    #1;
    sd_axis_tvalid = 0;
  endtask
  
  // same as test 1 but without reset
  task automatic run_test2();
    // initialize precision level and scale factor
    while (axis_handshake == 1'b0) begin
      #1;
      set_rand_precision();
      @(posedge clk);
    end
    
    #1;
    sd_axis_tvalid = 0;
    set_scale_dequant();
    @(posedge(clk));
    while (axis_handshake == 1'b0) begin
      #1;
      set_scale_dequant();
      @(posedge clk);
    end
    #1;
    sd_axis_tvalid = 0;

    while (num_macs < MAX_NUM_MACS) begin
      if (axis_handshake == 1'b1) begin
        #1;
        sd_axis_tvalid = 0;
      end
      set_rand_input();
      @(posedge clk);

      // num_macs updated in update_scoreboard()
      update_scoreboard();
    end

    // wait for TVALID high on MAC master output
    while (mo_axis_tvalid == 1'b0) begin
      @(posedge clk);
    end

    // randomize TREADY on MAC master input
    while (mo_axis_tready == 1'b0) begin
      #1;
      mo_axis_tready = $urandom;
      @(posedge clk);
      check_output();
    end
    
    // reset tvalid to low
    #1;
    sd_axis_tvalid = 0;
  endtask

  // Stimulus
  initial begin
    run_test1();
    repeat (2) @(posedge clk);
    reset();

    // End simulation
    repeat (1) @(posedge clk);
    $finish;
  end

endmodule
