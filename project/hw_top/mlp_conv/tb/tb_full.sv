// test bench for PE control unit and PE array together

import types_pkg::*;

`timescale 1ns/1ps
module tb_full();
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

  // AXI parameters
  localparam C_M_AXI_ID_WIDTH = 1;
  localparam C_M_AXI_ADDR_WIDTH = 32;
  localparam C_M_AXI_AWUSER_WIDTH = 1;
  localparam C_M_AXI_ARUSER_WIDTH = 1;
  localparam C_M_AXI_WUSER_WIDTH = 1;
  localparam C_M_AXI_RUSER_WIDTH = 1;
  localparam C_M_AXI_BUSER_WIDTH = 1;


  // verification variables
  int max_retries;
  int burst_count;
  // weights are 1B each
  int scb_weights [PE_ROWS][PE_COLS];
  int scb_weights_row_idx;
  int scb_weights_col_idx;

  // input activations are 1B each
  int scb_inputs [9][9];
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
  t_weights weights_out;
  logic stall_ctrl;
  t_add_mux_ctrl add_mux_ctrl;
  t_row_out_mux_ctrl row_out_mux_ctrl;
  logic [2:0] psum_out_mux_ctrl;
  logic [C_M00_AXI_DATA_WIDTH-1:0] in_psum_out;
  logic [C_M00_AXI_DATA_WIDTH-1:0] out_psum_in;

  // AXI Master FSM interface
  logic [C_M00_AXI_DATA_WIDTH-1:0] m_target_slave_base_ar_addr;
  logic [C_M00_AXI_DATA_WIDTH-1:0] m_target_slave_base_aw_addr;
  logic [C_M00_AXI_DATA_WIDTH-1:0] m_axi_rdata;
  logic [C_M00_AXI_DATA_WIDTH-1:0] m_axi_rdata_out;
  logic m_axi_rvalid_rready;
  logic [C_M00_AXI_DATA_WIDTH-1:0] m_axi_wdata_in;
  logic m_axi_wvalid_wready;
  logic m_axi_awvalid_awready;
  logic init_axi_wr_txn;
  logic init_axi_rd_txn;
  logic txn_done;
  logic axi_error;

  // AXI Master FSM interface
  logic [C_M_AXI_ID_WIDTH-1:0] m_axi_awid;
  logic [C_M_AXI_ADDR_WIDTH-1:0] m_axi_awaddr;
  logic [7:0] m_axi_awlen;
  logic [2:0] m_axi_awsize;
  logic [1:0] m_axi_awburst;
  logic m_axi_awlock;
  logic [3:0] m_axi_awcache;
  logic [2:0] m_axi_awprot;
  logic [3:0] m_axi_awqos;

  // output
  logic m_axi_awvalid;

  // TODO ssz input
  logic m_axi_awready;

  // outputs
  logic [C_M_AXI_DATA_WIDTH-1:0] m_axi_wdata;
  logic [C_M_AXI_DATA_WIDTH/8-1:0] m_axi_wstrb;

  // outputs
  logic m_axi_wlast;
  logic m_axi_wvalid;

  // TODO ssz inputs
  logic m_axi_wready;
  logic [C_M_AXI_ID_WIDTH-1:0] m_axi_bid;
  logic [1:0] m_axi_bresp;
  logic m_axi_bvalid;

  // outputs
  logic m_axi_bready;
  logic [C_M_AXI_ID_WIDTH-1:0] m_axi_arid;
  logic [C_M_AXI_ADDR_WIDTH-1:0] m_axi_araddr;
  logic [7:0] m_axi_arlen;
  logic [2:0] m_axi_arsize;
  logic [1:0] m_axi_arburst;
  logic m_axi_arlock;
  logic [3:0] m_axi_arcache;
  logic [2:0] m_axi_arprot;
  logic [3:0] m_axi_arqos;
  logic m_axi_arvalid;

  // TODO ssz inputs
  logic m_axi_arready;
  logic [C_M_AXI_ID_WIDTH-1:0] m_axi_rid;
  logic [C_M_AXI_DATA_WIDTH-1:0] m_axi_rdata;
  logic [1:0] m_axi_rresp;
  logic m_axi_rlast;
  logic m_axi_rvalid;

  // output
  logic m_axi_rready;


  // PE control unit instance
  pe_control_unit_wrapper #(
                            .C_S00_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
                            .C_M00_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
                            .C_M00_AXI_BURST_LEN(C_M00_AXI_BURST_LEN),
                            .C_M00_AXI_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
                            .PE_ROWS(PE_ROWS),
                            .PE_COLS(PE_COLS),
                            .MAC_PIPE_DEPTH(MAC_PIPE_DEPTH),
                            .BYTE_LEN(BYTE_LEN)
                          ) pe_control_unit_wrapper_inst (
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
                            .WEIGHTS_OUT_0(weights_out[0]),
                            .WEIGHTS_OUT_1(weights_out[1]),
                            .WEIGHTS_OUT_2(weights_out[2]),
                            .WEIGHTS_OUT_3(weights_out[3]),
                            .WEIGHTS_OUT_4(weights_out[4]),
                            .STALL_CTRL(stall_ctrl),
                            .ADD_MUX_CTRL_0(add_mux_ctrl[0]),
                            .ADD_MUX_CTRL_1(add_mux_ctrl[1]),
                            .ADD_MUX_CTRL_2(add_mux_ctrl[2]),
                            .ADD_MUX_CTRL_3(add_mux_ctrl[3]),
                            .ADD_MUX_CTRL_4(add_mux_ctrl[4]),
                            .ROW_OUT_MUX_CTRL_0(row_out_mux_ctrl[0]),
                            .ROW_OUT_MUX_CTRL_1(row_out_mux_ctrl[1]),
                            .ROW_OUT_MUX_CTRL_2(row_out_mux_ctrl[2]),
                            .ROW_OUT_MUX_CTRL_3(row_out_mux_ctrl[3]),
                            .ROW_OUT_MUX_CTRL_4(row_out_mux_ctrl[4]),
                            .PSUM_OUT_MUX_CTRL(psum_out_mux_ctrl),
                            .IN_PSUM_OUT(in_psum_out),
                            .OUT_PSUM_IN(out_psum_in),
                            // AXI Master FSM interface
                            .M_TARGET_SLAVE_BASE_AR_ADDR(m_target_slave_base_ar_addr),
                            .M_TARGET_SLAVE_BASE_AW_ADDR(m_target_slave_base_aw_addr),
                            .M_AXI_RDATA(m_axi_rdata_out),
                            .M_AXI_RVALID_RREADY(m_axi_rvalid_rready),
                            .M_AXI_WDATA(m_axi_wdata_in),
                            .M_AXI_WVALID_WREADY(m_axi_wvalid_wready),
                            .M_AXI_AWVALID_AWREADY(m_axi_awvalid_awready),
                            .INIT_AXI_WR_TXN(init_axi_wr_txn),
                            .INIT_AXI_RD_TXN(init_axi_rd_txn),
                            .TXN_DONE(txn_done),
                            .AXI_ERROR(axi_error)
                          );

  // PE array instance
  mlp_conv_v1_0_PE_ARR_wrapper #(
                                 .INPUT_WIDTH(BYTE_LEN),
                                 .OUTPUT_WIDTH(C_M00_AXI_DATA_WIDTH),
                                 .PE_WIDTH(PE_WIDTH),
                                 .PS_WIDTH(PS_WIDTH),
                                 .ROW_OUT_WIDTH(ROW_OUT_WIDTH),
                                 .PSUM_OUT_WIDTH(PSUM_OUT_WIDTH)
                               ) mlp_conv_v1_0_PE_ARR_wrapper_inst (
                                 .ACLK(clk),
                                 .ARESETN(resetn_mac_ctrl),
                                 .input_act(in_act_data_out),
                                 .weights_0(weights_out[0]),
                                 .weights_1(weights_out[1]),
                                 .weights_2(weights_out[2]),
                                 .weights_3(weights_out[3]),
                                 .weights_4(weights_out[4]),
                                 .stall_ctl(stall_ctrl),
                                 .row_out_mux_ctrl_0(row_out_mux_ctrl[0]),
                                 .row_out_mux_ctrl_1(row_out_mux_ctrl[1]),
                                 .row_out_mux_ctrl_2(row_out_mux_ctrl[2]),
                                 .row_out_mux_ctrl_3(row_out_mux_ctrl[3]),
                                 .row_out_mux_ctrl_4(row_out_mux_ctrl[4]),
                                 .add_mux_ctrl_0(add_mux_ctrl[0]),
                                 .add_mux_ctrl_1(add_mux_ctrl[1]),
                                 .add_mux_ctrl_2(add_mux_ctrl[2]),
                                 .add_mux_ctrl_3(add_mux_ctrl[3]),
                                 .add_mux_ctrl_4(add_mux_ctrl[4]),
                                 .psum_out_ctrl(psum_out_mux_ctrl),
                                 .psum_in(in_psum_out),
                                 .psum_out(out_psum_in)
                               );


  // AXI Master FSM instance
  mlp_conv_v1_0_M00_AXI #(
                          .C_M_AXI_BURST_LEN(C_M00_AXI_BURST_LEN),
                          .C_M_AXI_ID_WIDTH(C_M_AXI_ID_WIDTH),
                          .C_M_AXI_ADDR_WIDTH(C_M_AXI_ADDR_WIDTH),
                          .C_M_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
                          .C_M_AXI_AWUSER_WIDTH(C_M_AXI_AWUSER_WIDTH),
                          .C_M_AXI_ARUSER_WIDTH(C_M_AXI_ARUSER_WIDTH),
                          .C_M_AXI_WUSER_WIDTH(C_M_AXI_WUSER_WIDTH),
                          .C_M_AXI_RUSER_WIDTH(C_M_AXI_RUSER_WIDTH),
                          .C_M_AXI_BUSER_WIDTH(C_M_AXI_BUSER_WIDTH)
                        ) mlp_conv_v1_0_M00_AXI_inst (
                          .M_TARGET_SLAVE_BASE_AR_ADDR(m_target_slave_base_ar_addr),
                          .M_TARGET_SLAVE_BASE_AW_ADDR(m_target_slave_base_aw_addr),
                          .M_AXI_RDATA_OUT(m_axi_rdata_out),
                          .M_AXI_RVALID_RREADY(m_axi_rvalid_rready),
                          .M_AXI_WDATA_IN(m_axi_wdata_in),
                          .M_AXI_WVALID_WREADY(m_axi_wvalid_wready),
                          .M_AXI_AWVALID_AWREADY(m_axi_awvalid_awready),
                          .INIT_AXI_WR_TXN(init_axi_wr_txn),
                          .INIT_AXI_RD_TXN(init_axi_rd_txn),
                          .TXN_DONE(txn_done),
                          .ERROR(axi_error),
                          .M_AXI_ACLK(clk),
                          .M_AXI_ARESETN(resetn),
                          .M_AXI_AWID(m_axi_awid),
                          .M_AXI_AWADDR(m_axi_awaddr),
                          .M_AXI_AWLEN(m_axi_awlen),
                          .M_AXI_AWSIZE(m_axi_awsize),
                          .M_AXI_AWBURST(m_axi_awburst),
                          .M_AXI_AWLOCK(m_axi_awlock),
                          .M_AXI_AWCACHE(m_axi_awcache),
                          .M_AXI_AWPROT(m_axi_awprot),
                          .M_AXI_AWQOS(m_axi_awqos),
                          .M_AXI_AWUSER(0),
                          .M_AXI_AWVALID(m_axi_awvalid),
                          .M_AXI_AWREADY(m_axi_awready),
                          .M_AXI_WDATA(m_axi_wdata),
                          .M_AXI_WSTRB(m_axi_wstrb),
                          .M_AXI_WLAST(m_axi_wlast),
                          .M_AXI_WUSER(0),
                          .M_AXI_WVALID(m_axi_wvalid),
                          .M_AXI_WREADY(m_axi_wready),
                          .M_AXI_BID(m_axi_bid),
                          .M_AXI_BRESP(m_axi_bresp),
                          .M_AXI_BUSER(0),
                          .M_AXI_BVALID(m_axi_bvalid),
                          .M_AXI_BREADY(m_axi_bready),
                          .M_AXI_ARID(m_axi_arid),
                          .M_AXI_ARADDR(m_axi_araddr),
                          .M_AXI_ARLEN(m_axi_arlen),
                          .M_AXI_ARSIZE(m_axi_arsize),
                          .M_AXI_ARBURST(m_axi_arburst),
                          .M_AXI_ARLOCK(m_axi_arlock),
                          .M_AXI_ARCACHE(m_axi_arcache),
                          .M_AXI_ARPROT(m_axi_arprot),
                          .M_AXI_ARQOS(m_axi_arqos),
                          .M_AXI_ARUSER(0),
                          .M_AXI_ARVALID(m_axi_arvalid),
                          .M_AXI_ARREADY(m_axi_arready),
                          .M_AXI_RID(m_axi_rid),
                          .M_AXI_RDATA(m_axi_rdata),
                          .M_AXI_RRESP(m_axi_rresp),
                          .M_AXI_RLAST(m_axi_rlast),
                          .M_AXI_RUSER(0),
                          .M_AXI_RVALID(m_axi_rvalid),
                          .M_AXI_RREADY(m_axi_rready)
                        );

  // helper assignments
  assign acc_params = {param_valid, param_start, param_reset, 1'b0, param_c, param_tile_size, param_u, param_s, param_r};
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
        scb_weights[i][j] = $urandom_range(0,255);
      end
    end
    scb_weights_row_idx = 0;
    scb_weights_col_idx = 0;

    for (int i = 0; i < 9; i++) begin
      for (int j = 0; j < 9; j++) begin
        scb_inputs[i][j] = $urandom_range(0,255);
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

  task automatic reset_all();
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
    m_axi_rdata = 0;    // input to AXI Master FSM

    m_axi_awready = 0;
    m_axi_wready = 0;
    m_axi_bid = 0;
    m_axi_bresp = 0;
    m_axi_bvalid = 0;

    m_axi_arready = 0;
    m_axi_rid = 0;
    m_axi_rdata = 0;
    m_axi_rresp = 0;
    m_axi_rlast = 0;
    m_axi_rvalid = 0;

    repeat (2) @(posedge clk);
    #1;
    resetn = 1;
  endtask

  function automatic void compute_expected_outputs();
    // multiply 1B of weight with 1B of input activation and accumulate
    for (int out_r = 0; out_r < PE_ROWS; out_r++) begin
      for (int out_c = 0; out_c < 9; out_c++) begin
        scb_outputs[out_r][out_c] += scb_psums[out_r][out_c];
        for (int w_r = 0; w_r < PE_ROWS; w_r++) begin
          for (int w_c = 0; w_c < PE_COLS; w_c++) begin
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
    max_retries = 5;
    while (pe_status[0] == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (pe_status[0] == 0 || max_retries == 0) begin
      $display("ERROR: pe_status[0] = %0d, should be 1. Weights should be buffered.", pe_status[0]);
      $finish;
    end
    buffer_weights = 0;
  endtask

  task automatic do_load_ws();
    // load weight store using PE control unit
    load_weight_store = 0;
    @(posedge clk);
    load_weight_store = 1;
    @(posedge clk);

    // check PE status register to ensure weight store is loaded
    max_retries = 20;
    while (pe_status[1] == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (max_retries == 0) begin
      $display("ERROR: pe_status[1] = %0d, should be 1. Weight store should be loaded.", pe_status[1]);
      $finish;
    end
    load_weight_store = 0;
  endtask

  task automatic do_buffer_inputs();
    // buffer inputs into PE array using PE control unit
    buffer_inputs = 0;
    @(posedge clk);
    buffer_inputs = 1;
    @(posedge clk);

    handle_buffer_inputs_axi_transaction();
    handle_buffer_inputs_axi_transaction();
    scb_inputs_row_idx = 0;
    scb_inputs_col_idx = 0;

    // check PE status register to ensure inputs are buffered
    max_retries = 5;
    while (pe_status[2] == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (pe_status[2] == 0 || max_retries == 0) begin
      $display("ERROR: pe_status[2] = %0d, should be 1. Inputs should be buffered.", pe_status[2]);
      $finish;
    end
    buffer_inputs = 0;
  endtask

  task automatic do_buffer_psums();
    // buffer partial sums from PE array using PE control unit
    buffer_psums = 0;
    @(posedge clk);
    buffer_psums = 1;
    @(posedge clk);

    handle_buffer_psums_axi_transaction();
    handle_buffer_psums_axi_transaction();
    handle_buffer_psums_axi_transaction();
    scb_psums_row_idx = 0;
    scb_psums_col_idx = 0;

    // check PE status register to ensure partial sums are buffered
    max_retries = 5;
    while (pe_status[4] == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (pe_status[4] == 0 || max_retries == 0) begin
      $display("ERROR: pe_status[4] = %0d, should be 1. Partial sums should be buffered.", pe_status[4]);
      $finish;
    end
    buffer_psums = 0;
  endtask

  // handles the buffering of weight AXI transaction
  // send the scb_weights to the PE array using AXI Master interface
  task automatic handle_buffer_weights_axi_transaction();
    // wait for init_axi_rd_txn to go high
    max_retries = 4;
    while (init_axi_rd_txn == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (max_retries == 0) begin
      $display("ERROR: init_axi_rd_txn = %0d, should be 1", init_axi_rd_txn);
      $finish;
    end
    m_axi_arready = 1;
    m_axi_rlast = 0;
    // TODO ssz could do separate rresp for each read in the burst
    m_axi_rresp = 0;

    // send AXI read transaction
    burst_count = 0;
    while (burst_count < C_M00_AXI_BURST_LEN) begin
      // set the valid and ready signals randomly
      if (m_axi_rvalid == 0) begin
        m_axi_rvalid = $urandom_range(0, 1);
      end
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
      if (burst_count >= C_M00_AXI_BURST_LEN-1) begin
        m_axi_rlast = 1;
      end
      else begin
        m_axi_rlast = 0;
      end
      @(posedge clk);
    end
    @(posedge clk);
    m_axi_arready = 0;
    m_axi_rlast = 0;
    m_axi_rresp = 0;
    m_axi_rvalid = 0;
  endtask

  task automatic handle_buffer_inputs_axi_transaction();
    // wait for init_axi_rd_txn to go high
    max_retries = 4;
    while (init_axi_rd_txn == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (max_retries == 0) begin
      $display("ERROR: init_axi_rd_txn = %0d, should be 1", init_axi_rd_txn);
      $finish;
    end
    m_axi_arready = 1;
    m_axi_rlast = 0;
    // TODO ssz could do separate rresp for each read in the burst
    m_axi_rresp = 0;

    // send AXI read transaction
    burst_count = 0;
    while (burst_count < C_M00_AXI_BURST_LEN) begin
      // set the valid and ready signals randomly
      if (m_axi_rvalid == 0) begin
        m_axi_rvalid = $urandom_range(0, 1);
      end
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
      if (burst_count >= C_M00_AXI_BURST_LEN-1) begin
        m_axi_rlast = 1;
      end
      else begin
        m_axi_rlast = 0;
      end
      @(posedge clk);
    end
    @(posedge clk);
    m_axi_arready = 0;
    m_axi_rlast = 0;
    m_axi_rresp = 0;
    m_axi_rvalid = 0;
  endtask

  task handle_buffer_psums_axi_transaction();
    // wait for init_axi_rd_txn to go high
    max_retries = 4;
    while (init_axi_rd_txn == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (max_retries == 0) begin
      $display("ERROR: init_axi_rd_txn = %0d, should be 1", init_axi_rd_txn);
      $finish;
    end
    m_axi_arready = 1;
    m_axi_rlast = 0;
    // TODO ssz could do separate rresp for each read in the burst
    m_axi_rresp = 0;

    // send AXI write transaction
    burst_count = 0;
    while (burst_count < C_M00_AXI_BURST_LEN) begin
      // set the valid and ready signals randomly
      if (m_axi_rvalid == 0) begin
        m_axi_rvalid = $urandom_range(0, 1);
      end
      if (m_axi_rvalid_rready == 1) begin
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
      if (burst_count >= C_M00_AXI_BURST_LEN-1) begin
        m_axi_rlast = 1;
      end
      else begin
        m_axi_rlast = 0;
      end
      @(posedge clk);
    end
    @(posedge clk);
    m_axi_arready = 0;
    m_axi_rlast = 0;
    m_axi_rresp = 0;
    m_axi_rvalid = 0;
  endtask

  task automatic do_start_and_wait_for_done();
    // start PE array
    param_start = 0;
    @(posedge clk);
    param_start = 1;
    @(posedge clk);

    // wait for PE array to finish
    max_retries = 60;
    while (pe_status[3] == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (max_retries == 0) begin
      $display("ERROR: PE array should have finished processing by now.");
      $finish;
    end

    // wait for outputs to buffer
    max_retries = 60;
    while (pe_status[3] == 1 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (pe_status[3] == 1 || max_retries == 0) begin
      $display("ERROR: outputs should be buffered by now.");
      $finish;
    end

    // outputs get written
    handle_write_outputs_axi_transaction();
    handle_write_outputs_axi_transaction();
    handle_write_outputs_axi_transaction();
    scb_outputs_row_idx = 0;
    scb_outputs_col_idx = 0;
    // ensure outputs written falg is high
    max_retries = 4;
    while (pe_status[4] == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (pe_status[4] == 0 || max_retries == 0) begin
      $display("ERROR: pe_status[4] = %0d, should be 1. Outputs should be written.", pe_status[4]);
      $finish;
    end
    param_start = 0;
  endtask

  task automatic do_clear_all_buffers();
    clear_weight_buffer = 1;
    clear_input_buffer = 1;
    clear_psum_buffer = 1;
    clear_output_buffer = 1;
    repeat (2) @(posedge clk);

    clear_weight_buffer = 0;
    clear_input_buffer = 0;
    clear_psum_buffer = 0;
    clear_output_buffer = 0;
    repeat (2) @(posedge clk);
  endtask

  task automatic handle_write_outputs_axi_transaction();
    // wait for init_axi_wr_txn to go high
    max_retries = 4;
    while (init_axi_wr_txn == 0 && max_retries > 0) begin
      @(posedge clk);
      max_retries--;
    end
    if (max_retries == 0) begin
      $display("ERROR: init_axi_wr_txn = %0d, should be 1", init_axi_wr_txn);
      $finish;
    end
    m_axi_awready = 1;

    // send AXI write transaction
    burst_count = 0;
    while (burst_count < C_M00_AXI_BURST_LEN) begin
      // set the valid and ready signals randomly
      m_axi_wready = $urandom_range(0, 1);
      if (m_axi_wvalid_wready == 1) begin
        if (scb_outputs_row_idx == PE_ROWS) begin
          $display("WAITING: For AXI burst to finish. Burst count = %0d", burst_count);
          burst_count++;
        end
        else if (scb_outputs_row_idx < param_r) begin
          if (scb_outputs_col_idx < param_s) begin
            if (scb_outputs[scb_outputs_row_idx][scb_outputs_col_idx] != m_axi_wdata) begin
              $display("ERROR: scb_outputs[%0d][%0d] = %0d, m_axi_wdata = %0d", scb_outputs_row_idx, scb_outputs_col_idx, scb_outputs[scb_outputs_row_idx][scb_outputs_col_idx], m_axi_wdata);
              $finish;
            end
            else begin
              $display("SUCCESS: Matching output at [%0d][%0d] m_axi_wdata = %0d", scb_outputs_row_idx, scb_outputs_col_idx, m_axi_wdata);
            end
          end
          else begin
            $display("DISCARDING: Extra output at [%0d][%0d] m_axi_wdata = %0d", scb_outputs_row_idx, scb_outputs_col_idx, m_axi_wdata);
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
    end
    @(posedge clk);
    m_axi_awready = 0;
    handle_bresp();
  endtask

  task automatic handle_bresp();
    m_axi_bresp = $urandom_range(0, 1);
    m_axi_bvalid = $urandom_range(0, 1);
    while (m_axi_bvalid == 0 || m_axi_bready == 0) begin
      @(posedge clk);
      m_axi_bvalid = 1;
    end
    // 1 cycle register bvalid and bready
    @(posedge clk);
    m_axi_bvalid = 0;
    m_axi_bresp = 0;
  endtask

  // load all buffers, keeps psums 0, starts PE array, waits for PE array to finish, and checks outputs
  task automatic test_1();
    $display("test_1: load all buffers except psums, start PE array, wait for PE array to finish, and check outputs");
    compute_expected_outputs();

    do_buffer_weights();
    do_load_ws();
    do_buffer_inputs();
    do_start_and_wait_for_done();

    $display("test_1: PASSED");
  endtask

  task automatic test_2();
    $display("test_2: load all buffers, start PE array, wait for PE array to finish, and check outputs");
    reset_tb();
    compute_expected_outputs();
    do_clear_all_buffers();

    do_buffer_weights();
    do_load_ws();
    do_buffer_inputs();
    do_buffer_psums();
    do_start_and_wait_for_done();

    $display("test_2: PASSED");
  endtask

  // simulation
  initial begin
    $display("STARTING PE TEST BENCH");
    reset_all();

    test_1();
    test_2();

    $display("PE TEST BENCH PASSED");
    $finish;
  end

endmodule
