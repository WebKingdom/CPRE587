// test bench for mlp_conv_v1_0_M00_AXI

`timescale 1ns/1ps
module tb_m00_axi();

  localparam C_M_AXI_BURST_LEN = 16;
  localparam C_M_AXI_ID_WIDTH = 1;
  localparam C_M_AXI_ADDR_WIDTH = 32;
  localparam C_M_AXI_DATA_WIDTH = 32;
  localparam C_M_AXI_AWUSER_WIDTH = 1;
  localparam C_M_AXI_ARUSER_WIDTH = 1;
  localparam C_M_AXI_WUSER_WIDTH = 1;
  localparam C_M_AXI_RUSER_WIDTH = 1;
  localparam C_M_AXI_BUSER_WIDTH = 1;

  // verification variables
  const int MAX_TXNS = 100;
  int cur_txn;
  int max_retries;
  // storage for holding read data
  logic [C_M_AXI_DATA_WIDTH-1:0] scb_rdata [0:C_M_AXI_BURST_LEN];
  int scb_rdata_idx;
  // storage for holding write data
  logic [C_M_AXI_DATA_WIDTH-1:0] scb_wdata [0:C_M_AXI_BURST_LEN];
  int scb_wdata_idx;


  // DUT IO
  // user ports
  logic [C_M_AXI_ADDR_WIDTH-1:0] m_target_slave_base_ar_addr;
  logic [C_M_AXI_ADDR_WIDTH-1:0] m_target_slave_base_aw_addr;
  logic [C_M_AXI_DATA_WIDTH-1:0] m_axi_rdata_out;
  logic m_axi_rvalid_rready;
  logic [C_M_AXI_DATA_WIDTH-1:0] m_axi_wdata_in;
  logic m_axi_wvalid_wready;
  logic m_axi_awvalid_awready;

  logic init_axi_wr_txn;
  logic init_axi_rd_txn;
  logic txn_done;
  logic error;

  logic clk;
  logic resetn;
  logic [C_M_AXI_ID_WIDTH-1:0] m_axi_awid;
  logic [C_M_AXI_ADDR_WIDTH-1:0] m_axi_awaddr;
  logic [7:0] m_axi_awlen;
  logic [2:0] m_axi_awsize;
  logic [1:0] m_axi_awburst;
  logic m_axi_awlock;
  logic [3:0] m_axi_awcache;
  logic [2:0] m_axi_awprot;
  logic [3:0] m_axi_awqos;
  logic m_axi_awvalid;
  logic m_axi_awready;
  logic [C_M_AXI_DATA_WIDTH-1:0] m_axi_wdata;
  logic [C_M_AXI_DATA_WIDTH/8-1:0] m_axi_wstrb;
  logic m_axi_wlast;
  logic m_axi_wvalid;
  logic m_axi_wready;
  logic [C_M_AXI_ID_WIDTH-1:0] m_axi_bid;
  logic [1:0] m_axi_bresp;
  logic m_axi_bvalid;
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
  logic m_axi_arready;
  logic [C_M_AXI_ID_WIDTH-1:0] m_axi_rid;
  logic [C_M_AXI_DATA_WIDTH-1:0] m_axi_rdata;
  logic [1:0] m_axi_rresp;
  logic m_axi_rlast;
  logic m_axi_rvalid;
  logic m_axi_rready;


  // DUT instance
  mlp_conv_v1_0_M00_AXI #(
    .C_M_AXI_BURST_LEN(C_M_AXI_BURST_LEN),
    .C_M_AXI_ID_WIDTH(C_M_AXI_ID_WIDTH),
    .C_M_AXI_ADDR_WIDTH(C_M_AXI_ADDR_WIDTH),
    .C_M_AXI_DATA_WIDTH(C_M_AXI_DATA_WIDTH),
    .C_M_AXI_AWUSER_WIDTH(C_M_AXI_AWUSER_WIDTH),
    .C_M_AXI_ARUSER_WIDTH(C_M_AXI_ARUSER_WIDTH),
    .C_M_AXI_WUSER_WIDTH(C_M_AXI_WUSER_WIDTH),
    .C_M_AXI_RUSER_WIDTH(C_M_AXI_RUSER_WIDTH),
    .C_M_AXI_BUSER_WIDTH(C_M_AXI_BUSER_WIDTH)
  ) dut (
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
    .ERROR(error),
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

  // clock generator
  always begin
    clk = 0;
    forever begin
      #5 clk = ~clk;
    end
  end

  function automatic reset_tb();
    for (int i = 0; i <= C_M_AXI_BURST_LEN; i++) begin
      scb_rdata[i] = 0;
      scb_wdata[i] = 0;
    end
    max_retries = 0;
    cur_txn = 0;
  endfunction

  task automatic reset_all();
    reset_tb();
    // reset DUT
    resetn = 0;
    // user port inputs to DUT
    m_target_slave_base_ar_addr = 0;
    m_target_slave_base_aw_addr = 0;
    m_axi_wdata_in = 0;
    init_axi_wr_txn = 0;
    init_axi_rd_txn = 0;

    // AW channel
    m_axi_awready = 0;
    // W channel
    m_axi_wready = 0;
    // B channel
    m_axi_bid = 0;
    m_axi_bresp = 0;
    m_axi_bvalid = 0;
    // AR channel
    m_axi_arready = 0;
    // R channel
    m_axi_rid = 0;
    m_axi_rdata = 0;
    m_axi_rresp = 0;
    m_axi_rlast = 0;
    m_axi_rvalid = 0;

    repeat (2) @(posedge clk);
    #1;
    resetn = 1;
    repeat (2) @(posedge clk);
    #1;
  endtask

  function automatic void gen_rand_rdata();
    for (int i = 0; i <= C_M_AXI_BURST_LEN; i++) begin
      scb_rdata[i] = $random;
    end
  endfunction

  function automatic void gen_rand_wdata();
    for (int i = 0; i <= C_M_AXI_BURST_LEN; i++) begin
      scb_wdata[i] = $random;
    end
  endfunction

  task automatic update_scoreboard();
    // R channel
    if (m_axi_rvalid && m_axi_rready) begin
      assert (m_axi_rvalid_rready == 1);
      if (scb_rdata[scb_rdata_idx] != m_axi_rdata_out) begin
        $display("ERROR: rdata mismatch: scb_rdata[%0d] = %0h, m_axi_rdata_out = %0h", scb_rdata_idx, scb_rdata[scb_rdata_idx], m_axi_rdata_out);
        $finish;
      end
      else begin
        $display("READ MATCH: scb_rdata[%0d] = %0h, m_axi_rdata_out = %0h", scb_rdata_idx, scb_rdata[scb_rdata_idx], m_axi_rdata_out);
      end
      scb_rdata_idx++;
    end

    // W channel
    if (m_axi_wvalid && m_axi_wready) begin
      assert (m_axi_wvalid_wready == 1);
      if (scb_wdata[scb_wdata_idx] != m_axi_wdata) begin
        $display("ERROR: wdata mismatch: scb_wdata[%0d] = %0h, m_axi_wdata = %0h", scb_wdata_idx, scb_wdata[scb_wdata_idx], m_axi_wdata);
        $finish;
      end
      else begin
        $display("WRITE MATCH: scb_wdata[%0d] = %0h, m_axi_wdata = %0h", scb_wdata_idx, scb_wdata[scb_wdata_idx], m_axi_wdata);
      end
      scb_wdata_idx++;
    end

    // B channel
    if (m_axi_bvalid && m_axi_bready) begin
      if (scb_wdata_idx != C_M_AXI_BURST_LEN) begin
        $display("ERROR: Write index mismatch: scb_wdata_idx = %0d, C_M_AXI_BURST_LEN = %0d", scb_wdata_idx, C_M_AXI_BURST_LEN);
        $finish;
      end
      scb_wdata_idx++;
      max_retries = 3;
      while (txn_done == 0 && max_retries > 0) begin
        @(posedge clk);
        max_retries--;
      end
      if (txn_done == 0 || max_retries == 0) begin
        $display("ERROR: AXI TXN should be done");
        $finish;
      end
      $display("SUCCESS: write transaction completed");
    end
  endtask

  task automatic gen_rand_wr_txn();
    gen_rand_wdata();
    m_target_slave_base_aw_addr = $random;
    m_axi_wready = $random;
    scb_wdata_idx = 0;
    m_axi_wdata_in = scb_wdata[scb_wdata_idx];
    m_axi_bvalid = 0;
    m_axi_awready = $random;
    while (m_axi_awready == 0) begin
      @(posedge clk);
      m_axi_awready = 1;
    end
    init_axi_wr_txn = $urandom;
    while (init_axi_wr_txn == 0) begin
      @(posedge clk);
      init_axi_wr_txn = 1;
    end

    // if (m_axi_awready == 1 && m_axi_awvalid == 1) begin
    //   m_axi_awready = 0;
    //   // wait 1 cycle after init txn
    //   @(posedge clk);
    // end
    // else begin
    //   // wait for AWVALID
    //   while (!(m_axi_awready == 1 && m_axi_awvalid == 1)) begin
    //     @(posedge clk);
    //   end
    // end
    // m_axi_awready = 0;

    if (init_axi_wr_txn == 1) begin
      // start write transaction
      while (scb_wdata_idx < C_M_AXI_BURST_LEN) begin
        @(posedge clk);
        update_scoreboard();
        m_axi_wdata_in = scb_wdata[scb_wdata_idx];
      end
      // wait for write response
      m_axi_bresp = $urandom_range(0, 3);
      while (m_axi_bvalid == 0) begin
        @(posedge clk);
        m_axi_bvalid = $random;
      end
      if (m_axi_bvalid == 1) begin
        while (m_axi_bready == 0) begin
          @(posedge clk);
          update_scoreboard();
        end
      end
    end
    init_axi_wr_txn = 0;
    m_axi_awready = 0;
    m_axi_wready = 0;
    m_axi_bvalid = 0;
    repeat ($urandom_range(1, 4)) @(posedge clk);
  endtask

  task automatic gen_rand_rd_txn();
    gen_rand_rdata();
    m_axi_rvalid = 0;
    m_target_slave_base_ar_addr = $random;
    scb_rdata_idx = 0;
    m_axi_rdata = scb_rdata[scb_rdata_idx];
    m_axi_rlast = 0;
    m_axi_arready = $random;
    while (m_axi_arready == 0) begin
      @(posedge clk);
      m_axi_arready = 1;
    end
    init_axi_rd_txn = $urandom;
    while (init_axi_rd_txn == 0) begin
      @(posedge clk);
      init_axi_rd_txn = 1;
    end
    // if (m_axi_arready == 1 && m_axi_arvalid == 1) begin
    //   m_axi_arready = 0;
    //   // wait 1 cycle after init txn
    //   @(posedge clk);
    // end
    // else begin
    //   // wait for ARVALID
    //   while (!(m_axi_arready == 1 && m_axi_arvalid == 1)) begin
    //     @(posedge clk);
    //   end
    // end

    // wait 1 cycle after init txn
    repeat (2) @(posedge clk);
    if (init_axi_rd_txn == 1) begin
      // start read transaction
      while (scb_rdata_idx < C_M_AXI_BURST_LEN) begin
        if (m_axi_rvalid == 0) begin
          m_axi_rvalid = $random;
        end
        @(posedge clk);
        if (scb_rdata_idx == C_M_AXI_BURST_LEN - 1) begin
          #1;
          m_axi_rlast = 1;
        end
        else begin
          m_axi_rlast = 0;
        end
        update_scoreboard();
        m_axi_rdata = scb_rdata[scb_rdata_idx];
      end
      // register rlast
      @(posedge clk);
      #1;
      m_axi_rlast = 0;
      // wait for read response
      m_axi_rresp = $urandom_range(0, 3);
      if (m_axi_rvalid == 1) begin
        while (m_axi_rready == 0) begin
          @(posedge clk);
          update_scoreboard();
        end
      end
      // check for txn done
      max_retries = 3;
      while (txn_done == 0 && max_retries > 0) begin
        @(posedge clk);
        max_retries--;
      end
      if (txn_done == 0 || max_retries == 0) begin
        $display("ERROR: AXI TXN should be done");
        $finish;
      end
    end
    init_axi_rd_txn = 0;
    m_axi_arready = 0;
    m_axi_rvalid = 0;
    m_axi_rlast = 0;
    m_axi_rresp = 0;
    repeat ($urandom_range(1, 4)) @(posedge clk);
  endtask

  task automatic test_wr1();
    $display("test_1: write transaction");
    reset_all();
    gen_rand_wr_txn();
    $display("test_1: write transaction done");
  endtask

  task automatic test_rd1();
    $display("test_2: read transaction");
    reset_all();
    gen_rand_rd_txn();
    $display("test_2: read transaction done");
  endtask

  task automatic test_rand();
    $display("test_3: random transaction");
    reset_all();
    while (cur_txn < MAX_TXNS) begin
      if ($urandom_range(0, 1) == 0) begin
        gen_rand_wr_txn();
      end
      else begin
        gen_rand_rd_txn();
      end
      cur_txn++;
    end
    $display("test_3: random transaction done");
  endtask

  initial begin
    $display("tb_m00_axi: starting tests");
    test_wr1();
    test_rd1();
    test_rand();
    $display("tb_m00_axi: all tests PASSED");
    $finish;
  end

endmodule
