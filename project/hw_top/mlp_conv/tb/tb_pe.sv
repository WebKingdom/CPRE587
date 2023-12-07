// test bench for PE control unit and PE array together

`timescale 1ns/1ps
module tb_pe();
  localparam C_S00_AXI_DATA_WIDTH = 32;
  localparam C_M00_AXI_DATA_WIDTH = 32;
  localparam C_M00_AXI_BURST_LEN = 16;
  localparam C_M00_AXI_TARGET_SLAVE_BASE_ADDR = 32'h40000000;
  localparam PE_ROWS = 5;
  localparam PE_COLS = 5;
  localparam MAC_PIPE_DEPTH = 2;
  localparam BYTE_LEN = 8;

  localparam PE_WIDTH = 5;
  localparam PS_WIDTH = 4;
  localparam ROW_OUT_WIDTH = 4;
  localparam PSUM_OUT_WIDTH = 3;


  // verification variables
  // weights are 1B each
  byte scb_weights [PE_ROWS][PE_COLS];
  int scb_weights_row_idx;
  int scb_weights_col_idx;

  // input activations are 1B each
  byte scb_inputs [9][9];
  int scb_inputs_row_idx;
  int scb_inputs_col_idx;

  // output activations are 4B each
  int scb_outputs [PE_ROWS][9];
  int scb_outputs_row_idx;
  int scb_outputs_col_idx;

  // partial sums are 4B each
  int scb_psums [PE_ROWS][9];
  int scb_psums_row_idx;
  int scb_psums_col_idx;

  // PE params register
  logic [3:0] param_r;
  logic [3:0] param_s;
  logic [3:0] param_u;
  logic [3:0] param_tile_size;
  logic [11:0] param_c;
  logic param_reset;
  logic param_start;
  logic param_valid;

  // PE memory control register
  logic buffer_weights;
  logic clear_weight_buffer;
  logic load_weight_store;
  logic buffer_inputs;
  logic clear_input_buffer;
  logic clear_output_buffer;
  logic buffer_psums;
  logic clear_psum_buffer;


  // DUT IO
  logic clk;
  logic resetn;

  // PE control unit
  // PE registers
  logic [C_S00_AXI_DATA_WIDTH-1:0] acc_params;
  logic [C_S00_AXI_DATA_WIDTH-1:0] weight_base_addr;
  logic [C_S00_AXI_DATA_WIDTH-1:0] input_base_addr;
  logic [C_S00_AXI_DATA_WIDTH-1:0] output_base_addr;
  logic [C_S00_AXI_DATA_WIDTH-1:0] mem_ctrl;
  logic [C_S00_AXI_DATA_WIDTH-1:0] pe_status;

  // PE array interface
  logic resetn_mac_ctrl;
  logic [BYTE_LEN-1:0] in_act_data_out;
  logic [PE_COLS * BYTE_LEN - 1:0] weights_out [0:PE_ROWS-1];
  logic stall_ctrl;
  logic [0:PE_COLS-1:0] add_mux_ctrl [0:PE_ROWS-1:0];
  logic [3:0] row_out_mux_ctrl [0:PE_ROWS-1];
  logic [2:0] psum_out_mux_ctrl;
  logic [C_M00_AXI_DATA_WIDTH-1:0] in_psum_out;
  logic [C_M00_AXI_DATA_WIDTH-1:0] out_psum_in;

  // AXI Master FSM interface
  logic [C_M00_AXI_DATA_WIDTH-1:0] m_target_slave_base_ar_addr;
  logic [C_M00_AXI_DATA_WIDTH-1:0] m_target_slave_base_aw_addr;
  logic [C_M00_AXI_DATA_WIDTH-1:0] m_axi_rdata;
  logic m_axi_rvalid_rready;
  logic [C_M00_AXI_DATA_WIDTH-1:0] m_axi_wdata;
  logic m_axi_wvalid_wready;
  logic m_axi_awvalid_awready;
  logic init_axi_wr_txn;
  logic init_axi_rd_txn;
  logic txn_done;
  logic axi_error;

  // PE control unit instance
  pe_control_unit #(
                    .C_S00_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
                    .C_M00_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
                    .C_M00_AXI_BURST_LEN(C_M00_AXI_BURST_LEN),
                    .C_M00_AXI_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
                    .PE_ROWS(PE_ROWS),
                    .PE_COLS(PE_COLS),
                    .MAC_PIPE_DEPTH(MAC_PIPE_DEPTH),
                    .BYTE_LEN(BYTE_LEN)
                  ) pe_control_unit_inst (
                    .CLK(clk),
                    .RESETN(resetn),
                    // PE registers
                    .ACC_PARAMS(acc_params),
                    .WEIGHT_BASE_ADDR(weight_base_addr),
                    .INPUT_BASE_ADDR(input_base_addr),
                    .OUTPUT_BASE_ADDR(output_base_addr),
                    .MEM_CTRL(mem_ctrl),
                    .PE_STATUS(pe_status),
                    // PE array interface
                    .RESETN_MAC_CTRL(resetn_mac_ctrl),
                    .IN_ACT_DATA_OUT(in_act_data_out),
                    .WEIGHTS_OUT(weights_out),
                    .STALL_CTRL(stall_ctrl),
                    .ADD_MUX_CTRL(add_mux_ctrl),
                    .ROW_OUT_MUX_CTRL(row_out_mux_ctrl),
                    .PSUM_OUT_MUX_CTRL(psum_out_mux_ctrl),
                    .IN_PSUM_OUT(in_psum_out),
                    .OUT_PSUM_IN(out_psum_in),
                    // AXI Master FSM interface
                    .M_TARGET_SLAVE_BASE_AR_ADDR(m_target_slave_base_ar_addr),
                    .M_TARGET_SLAVE_BASE_AW_ADDR(m_target_slave_base_aw_addr),
                    .M_AXI_RDATA(m_axi_rdata),
                    .M_AXI_RVALID_RREADY(m_axi_rvalid_rready),
                    .M_AXI_WDATA(m_axi_wdata),
                    .M_AXI_WVALID_WREADY(m_axi_wvalid_wready),
                    .M_AXI_AWVALID_AWREADY(m_axi_awvalid_awready),
                    .INIT_AXI_WR_TXN(init_axi_wr_txn),
                    .INIT_AXI_RD_TXN(init_axi_rd_txn),
                    .TXN_DONE(txn_done),
                    .AXI_ERROR(axi_error)
                  );

  // PE array instance
  mlp_conv_v1_0_PE_ARR #(
                         .INPUT_WIDTH(BYTE_LEN),
                         .OUTPUT_WIDTH(C_M00_AXI_DATA_WIDTH),
                         .PE_WIDTH(PE_WIDTH),
                         .PS_WIDTH(PS_WIDTH),
                         .ROW_OUT_WIDTH(ROW_OUT_WIDTH),
                         .PSUM_OUT_WIDTH(PSUM_OUT_WIDTH)
                       ) mlp_conv_v1_0_PE_ARR_inst (
                         .ACLK(clk),
                         .ARESETN(resetn_mac_ctrl),
                         .input(in_act_data_out),
                         .weights(weights_out),
                         .stall_ctrl(stall_ctrl),
                         .row_out_mux_ctrl(row_out_mux_ctrl),
                         .psum_out_ctrl(psum_out_mux_ctrl),
                         .add_mux_ctrl(add_mux_ctrl),
                         .psum_in(in_psum_out),
                         .psum_out(out_psum_in),
                       );

  // helper assignments
  assign acc_params = {valid, start, reset, 1'b0, param_c, param_tile_size, param_u, param_s, param_r};
  assign weight_base_addr = 32'h41000000;
  assign input_base_addr = 32'h42000000;
  assign output_base_addr = 32'h43000000;
  assign mem_ctrl = {24'h000000, clear_psum_buffer, buffer_psums, clear_output_buffer, clear_input_buffer, buffer_inputs, load_weight_store, clear_weight_buffer, buffer_weights};

  // clock generator
  always begin
    clk = 0;
    forever begin
      #5 clk = ~clk;
    end
  end

  // reset verification test bench variables
  function automatic void reset_tb(bit rand_psums = 0);
    for (int i = 0; i < 5; i++) begin
      for (int j = 0; j < 5; j++) begin
        scb_weights[i][j] = $urandom;
      end
    end
    scb_weights_row_idx = 0;
    scb_weights_col_idx = 0;

    for (int i = 0; i < 9; i++) begin
      for (int j = 0; j < 9; j++) begin
        scb_inputs[i][j] = $urandom;
      end
    end
    scb_inputs_row_idx = 0;
    scb_inputs_col_idx = 0;

    for (int i = 0; i < 5; i++) begin
      for (int j = 0; j < 9; j++) begin
        scb_outputs[i][j] = 0;
        if (rand_psums == 1)
          scb_psums[i][j] = $urandom;
        else
          scb_psums[i][j] = 0;
      end
    end
    scb_psums_row_idx = 0;
    scb_psums_col_idx = 0;

    // PE params register
    param_r = 5;
    param_s = 5;
    param_u = 1;
    param_tile_size = 9;  // (R*2-1)x(S*2-1)
    param_c = 3;
    param_reset = 0;
    param_start = 0;
    param_valid = 1;
  endfunction

  task automatic void reset_all();
    reset_tb();
    // reset DUT
    resetn = 0;
    buffer_weights = 0;
    clear_weight_buffer = 0;
    load_weight_store = 0;
    buffer_inputs = 0;
    clear_input_buffer = 0;
    clear_output_buffer = 0;
    buffer_psums = 0;
    clear_psum_buffer = 0;
    // AXI Master interface
    m_axi_rdata = 0;
    m_axi_rvalid_rready = 0;
    m_axi_wvalid_wready = 0;
    m_axi_awvalid_awready = 0;
    txn_done = 0;
    axi_error = 0;

    repeat (2) @(posedge clk);
    #1;
    resetn = 1;
  endtask

  function automatic void compute_expected_outputs();
    // multiply 1B of weight with 1B of input activation and accumulate
    for (int out_r; out_r < scb_outputs.size(); out_r++) begin
      for (int out_c; out_c < scb_outputs[out_r].size(); out_c++) begin
        scb_outputs[out_r][out_c] += scb_psums[out_r][out_c];
        for (int w_r; w_r < scb_weights.size(); w_r++) begin
          for (int w_c; w_c < scb_weights[w_r].size(); w_c++) begin
            scb_outputs[out_r][out_c] += scb_weights[w_r][w_c] * scb_inputs[out_r+w_r][out_c+w_c];
          end
        end
      end
    end
  endfunction

  task automatic do_buffer_weights();
    // buffer weights into PE array using PE control unit
    buffer_weights = 0;
    @(posedge clk);
    buffer_weights = 1;
    @(posedge clk);

    handle_buffer_weights_axi_transaction();
    scb_weights_col_idx = 0;
    scb_weights_row_idx = 0;

    // check PE status register to ensure weights are buffered
    @(posedge clk);
    if (pe_status[0] == 0) begin
      $display("ERROR: pe_status[0] = %0d, should be 1. Weights should be buffered.", pe_status[0]);
      $finish;
    end
  endtask

  task automatic do_load_ws();
    // load weight store using PE control unit
    load_weight_store = 0;
    @(posedge clk);
    load_weight_store = 1;
    @(posedge clk);

    // check PE status register to ensure weight store is loaded
    int max_retries = 20;
    while (pe_status[1] == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (max_retries == 0) begin
      $display("ERROR: pe_status[1] = %0d, should be 1. Weight store should be loaded.", pe_status[1]);
      $finish;
    end
  endtask

  task automatic do_buffer_inputs();
    // buffer inputs into PE array using PE control unit
    buffer_inputs = 0;
    @(posedge clk);
    buffer_inputs = 1;
    @(posedge clk);

    handle_buffer_inputs_axi_transaction();
    repeat ($urandom_range(0, 5)) @(posedge clk);
    handle_buffer_inputs_axi_transaction();
    scb_inputs_row_idx = 0;
    scb_inputs_col_idx = 0;

    // check PE status register to ensure inputs are buffered
    @(posedge clk);
    if (pe_status[2] == 0) begin
      $display("ERROR: pe_status[2] = %0d, should be 1. Inputs should be buffered.", pe_status[2]);
      $finish;
    end
  endtask

  task automatic do_buffer_psums();
    // buffer partial sums from PE array using PE control unit
    buffer_psums = 0;
    @(posedge clk);
    buffer_psums = 1;
    @(posedge clk);

    handle_buffer_psums_axi_transaction();
    repeat ($urandom_range(0, 5)) @(posedge clk);
    handle_buffer_psums_axi_transaction();
    repeat ($urandom_range(0, 5)) @(posedge clk);
    handle_buffer_psums_axi_transaction();
    scb_psums_row_idx = 0;
    scb_psums_col_idx = 0;

    // check PE status register to ensure partial sums are buffered
    @(posedge clk);
    if (pe_status[4] == 0) begin
      $display("ERROR: pe_status[4] = %0d, should be 1. Partial sums should be buffered.", pe_status[4]);
      $finish;
    end
  endtask

  // handles the buffering of weight AXI transaction
  // send the scb_weights to the PE array using AXI Master interface
  task automatic handle_buffer_weights_axi_transaction();
    // wait for init_axi_rd_txn to go high
    int max_retries = 20;
    while (init_axi_rd_txn == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (max_retries == 0) begin
      $display("ERROR: init_axi_rd_txn = %0d, should be 1", init_axi_rd_txn);
      $finish;
    end

    // send AXI read transaction
    int burst_count = 0;
    while (burst_count < C_M00_AXI_BURST_LEN) begin
      // set the valid and ready signals randomly
      m_axi_rvalid_rready = $urandom;
      if (m_axi_rvalid_rready == 1) begin
        if (scb_weights_row_idx == PE_ROWS) begin
          // reset indices
          scb_weights_row_idx = 0;
          scb_weights_col_idx = 0;
        end

        // set the 32-bit data
        // MSByte is weight (R, 0), LSByte is weight (R, 4) where R is the row index
        m_axi_rdata[31:24] = scb_weights[scb_weights_row_idx][scb_weights_col_idx];
        scb_weights_col_idx++;
        if (scb_weights_col_idx == PE_COLS) begin
          scb_weights_col_idx = 0;
          scb_weights_row_idx++;
        end
        m_axi_rdata[23:16] = scb_weights[scb_weights_row_idx][scb_weights_col_idx];
        scb_weights_col_idx++;
        if (scb_weights_col_idx == PE_COLS) begin
          scb_weights_col_idx = 0;
          scb_weights_row_idx++;
        end
        m_axi_rdata[15:8] = scb_weights[scb_weights_row_idx][scb_weights_col_idx];
        scb_weights_col_idx++;
        if (scb_weights_col_idx == PE_COLS) begin
          scb_weights_col_idx = 0;
          scb_weights_row_idx++;
        end
        m_axi_rdata[7:0] = scb_weights[scb_weights_row_idx][scb_weights_col_idx];
        scb_weights_col_idx++;
        if (scb_weights_col_idx == PE_COLS) begin
          scb_weights_col_idx = 0;
          scb_weights_row_idx++;
        end
        burst_count++;
      end
      @(posedge clk);
      #1;
    end
    m_axi_rvalid_rready = 0;
    axi_error = $urandom;
    txn_done = 1;
    @(posedge clk);
    #1;
    txn_done = 0;
  endtask

  task automatic handle_buffer_inputs_axi_transaction();
    // wait for init_axi_rd_txn to go high
    int max_retries = 20;
    while (init_axi_rd_txn == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (max_retries == 0) begin
      $display("ERROR: init_axi_rd_txn = %0d, should be 1", init_axi_rd_txn);
      $finish;
    end

    // send AXI read transaction
    int burst_count = 0;
    while (burst_count < C_M00_AXI_BURST_LEN) begin
      // set the valid and ready signals randomly
      m_axi_rvalid_rready = $urandom;
      if (m_axi_rvalid_rready == 1) begin
        if (scb_inputs_row_idx == 9) begin
          // reset indices
          scb_inputs_row_idx = 0;
          scb_inputs_col_idx = 0;
        end

        // set the 32-bit data
        m_axi_rdata[7:0] = scb_inputs[scb_inputs_row_idx][scb_inputs_col_idx];
        scb_inputs_col_idx++;
        if (scb_inputs_col_idx == 9) begin
          scb_inputs_col_idx = 0;
          scb_inputs_row_idx++;
        end
        m_axi_rdata[15:8] = scb_inputs[scb_inputs_row_idx][scb_inputs_col_idx];
        scb_inputs_col_idx++;
        if (scb_inputs_col_idx == 9) begin
          scb_inputs_col_idx = 0;
          scb_inputs_row_idx++;
        end
        m_axi_rdata[23:16] = scb_inputs[scb_inputs_row_idx][scb_inputs_col_idx];
        scb_inputs_col_idx++;
        if (scb_inputs_col_idx == 9) begin
          scb_inputs_col_idx = 0;
          scb_inputs_row_idx++;
        end
        m_axi_rdata[31:24] = scb_inputs[scb_inputs_row_idx][scb_inputs_col_idx];
        scb_inputs_col_idx++;
        if (scb_inputs_col_idx == 9) begin
          scb_inputs_col_idx = 0;
          scb_inputs_row_idx++;
        end
        burst_count++;
      end
      @(posedge clk);
      #1;
    end
    m_axi_rvalid_rready = 0;
    axi_error = $urandom;
    txn_done = 1;
    @(posedge clk);
    #1;
    txn_done = 0;
  endtask

  task handle_buffer_psums_axi_transaction();
    // wait for init_axi_rd_txn to go high
    int max_retries = 20;
    while (init_axi_rd_txn == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (max_retries == 0) begin
      $display("ERROR: init_axi_rd_txn = %0d, should be 1", init_axi_rd_txn);
      $finish;
    end

    // send AXI write transaction
    int burst_count = 0;
    while (burst_count < C_M00_AXI_BURST_LEN) begin
      // set the valid and ready signals randomly
      m_axi_wvalid_wready = $urandom;
      if (m_axi_wvalid_wready == 1) begin
        if (scb_psums_row_idx == PE_ROWS) begin
          // reset indices
          scb_psums_row_idx = 0;
          scb_psums_col_idx = 0;
        end

        // set the 32-bit data
        m_axi_rdata = scb_psums[scb_psums_row_idx][scb_psums_col_idx];
        scb_psums_col_idx++;
        if (scb_psums_col_idx == 9) begin
          scb_psums_col_idx = 0;
          scb_psums_row_idx++;
        end
        burst_count++;
      end
      @(posedge clk);
      #1;
    end
    m_axi_wvalid_wready = 0;
    axi_error = $urandom;
    txn_done = 1;
    @(posedge clk);
    #1;
    txn_done = 0;
  endtask

  task automatic do_start_and_wait_for_done();
    // start PE array
    param_start = 0;
    @(posedge clk);
    param_start = 1;
    @(posedge clk);

    // wait for PE array to finish
    int max_retries = 100;
    while (pe_status[3] == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (max_retries == 0) begin
      $display("ERROR: pe_status[3] = %0d, should be 1. Outputs should be buffered.", pe_status[3]);
      $finish;
    end

    handle_write_outputs_axi_transaction();
    repeat ($urandom_range(0, 5)) @(posedge clk);
    handle_write_outputs_axi_transaction();
    repeat ($urandom_range(0, 5)) @(posedge clk);
    handle_write_outputs_axi_transaction();
    scb_outputs_row_idx = 0;
    scb_outputs_col_idx = 0;
  endtask

  task automatic handle_write_outputs_axi_transaction();
    // wait for init_axi_wr_txn to go high
    int max_retries = 20;
    while (init_axi_wr_txn == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (max_retries == 0) begin
      $display("ERROR: init_axi_wr_txn = %0d, should be 1", init_axi_wr_txn);
      $finish;
    end

    // send AXI write transaction
    int burst_count = 0;
    while (burst_count < C_M00_AXI_BURST_LEN) begin
      // set the valid and ready signals randomly
      m_axi_wvalid_wready = $urandom;
      if (m_axi_wvalid_wready == 1) begin
        if (scb_outputs_row_idx == PE_ROWS) begin
          // reset indices
          scb_outputs_row_idx = 0;
          scb_outputs_col_idx = 0;
        end
        else begin
          if (scb_outputs[scb_outputs_row_idx][scb_outputs_col_idx] != m_axi_wdata) begin
            $display("ERROR: scb_outputs[%0d][%0d] = %0d, m_axi_wdata = %0d", scb_outputs_row_idx, scb_outputs_col_idx, scb_outputs[scb_outputs_row_idx][scb_outputs_col_idx], m_axi_wdata);
            $finish;
          end
          scb_outputs_col_idx++;
          if (scb_outputs_col_idx == 9) begin
            scb_outputs_col_idx = 0;
            scb_outputs_row_idx++;
          end
          burst_count++;
        end
      end
      @(posedge clk);
      #1;
    end
    m_axi_wvalid_wready = 0;
    axi_error = $urandom;
    txn_done = 1;
    @(posedge clk);
    #1;
    txn_done = 0;
  endtask

  // load all buffers, keeps psums 0, starts PE array, waits for PE array to finish, and checks outputs
  task automatic test_1();
    $display("test_1: load all buffers, start PE array, wait for PE array to finish, and check outputs");

    reset_all();
    compute_expected_outputs();

    do_buffer_weights();
    do_load_ws();
    do_buffer_inputs();
    do_buffer_psums();
    do_start_and_wait_for_done();

    $display("test_1: PASSED");
  endtask

  // simulation
  initial begin
    $display("STARTING PE TEST BENCH");

    test_1();

    $display("PE TEST BENCH PASSED");
    $finish;
  end

endmodule
