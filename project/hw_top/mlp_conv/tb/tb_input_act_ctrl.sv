// test bench for input activation controller

`timescale 1ns/1ps
module tb_input_act_ctrl();

  localparam INPUT_WIDTH = 32;
  localparam FIFO_DEPTH = 64;
  localparam OUTPUT_WIDTH = 8;

  const int MAX_NUM_CYCLES = 1000;

  // verification variables
  logic [INPUT_WIDTH-1:0] q [$:FIFO_DEPTH-1];
  logic [INPUT_WIDTH-1:0] q_data;
  logic [INPUT_WIDTH-1:0] byte_data;
  int byte_count;
  logic scb_feeding;

  // DUT IO
  // inputs
  logic clk;
  logic resetn;
  logic clear_fifo;
  logic start_feed;

  logic fifo_wr_cmd;
  logic [INPUT_WIDTH-1:0] fifo_wr_data;

  // outputs
  logic fifo_empty;
  logic fifo_full;
  logic [OUTPUT_WIDTH-1:0] in_act_data_out;
  logic data_valid;

  // DUT instance
  input_act_ctrl #(
                   .INPUT_WIDTH(INPUT_WIDTH),
                   .FIFO_DEPTH(FIFO_DEPTH),
                   .OUTPUT_WIDTH(OUTPUT_WIDTH)
                 ) dut (
                   .CLK(clk),
                   .RESETN(resetn),
                   .CLEAR_FIFO(clear_fifo),
                   .START_FEED(start_feed),
                   .FIFO_WR_CMD(fifo_wr_cmd),
                   .FIFO_WR_DATA(fifo_wr_data),
                   .FIFO_EMPTY(fifo_empty),
                   .FIFO_FULL(fifo_full),
                   .IN_ACT_DATA_OUT(in_act_data_out),
                   .DATA_VALID(data_valid)
                 );

  // clock generator
  always begin
    clk = 0;
    forever begin
      #5 clk = ~clk;
    end
  end

  function automatic void reset_tb();
    q = {};
    q_data = 0;
    byte_data = 0;
    byte_count = 0;
    scb_feeding = 0;
  endfunction

  task automatic reset_all();
    reset_tb();
    // reset DUT
    resetn = 0;
    clear_fifo = 0;
    start_feed = 0;
    fifo_wr_cmd = 0;
    fifo_wr_data = 0;

    repeat (2) @(posedge clk);
    #1;
    resetn = 1;
  endtask

  // fill FIFO with num_elements x 32-bits of random data
  task automatic fill_fifo(int num_elements);
    int wr_count = 0;
    while (wr_count < num_elements) begin
      #1;
      fifo_wr_cmd = $urandom_range(0, 2);
      if (fifo_wr_cmd == 1) begin
        fifo_wr_data = $urandom;
        wr_count++;
      end
      @posedge clk;
      update_scoreboard();
    end
  endtask

  task automatic start_feed();
    #1;
    start_feed = 1;
    int feed_cycles = $urandom_range(1, 4);
    while (feed_cycles > 0) begin
      feed_cycles--;
      @posedge clk;
      update_scoreboard();
    end
    start_feed = 0;
  endtask

  // runs the feed until FIFO is empty
  task automatic run_feed();
    while (fifo_empty == 0) begin
      @posedge clk;
      update_scoreboard();
    end

    // run extra cycles to make sure functionality is correct
    int extra_cycles = $urandom_range(1, 4);
    while (extra_cycles > 0) begin
      extra_cycles--;
      @posedge clk;
      update_scoreboard();
    end
  endtask

  function automatic void validate_fifo_empty();
    if (q.size() == 0 && fifo_empty == 0) begin
      $display("ERROR: q.size() = %d (empty), fifo_empty = %d (not empty)", q.size(), fifo_empty);
      repeat (2) @(posedge clk);
      #1;
      $finish;
    end
    if (q.size() > 0 && fifo_empty == 1) begin
      $display("ERROR: q.size() = %d (not empty), fifo_empty = %d (empty)", q.size(), fifo_empty);
      repeat (2) @(posedge clk);
      #1;
      $finish;
    end
  endfunction

  function automatic void validate_fifo_full();
    if (q.size() == FIFO_DEPTH && fifo_full == 0) begin
      $display("ERROR: q.size() = %d (full), fifo_full = %d (not full)", q.size(), fifo_full);
      repeat (2) @(posedge clk);
      #1;
      $finish;
    end
    if (q.size() < FIFO_DEPTH && fifo_full == 1) begin
      $display("ERROR: q.size() = %d (not full), fifo_full = %d (full)", q.size(), fifo_full);
      repeat (2) @(posedge clk);
      #1;
      $finish;
    end
  endfunction

  function automatic void update_scoreboard();
    // error check
    validate_fifo_empty();
    validate_fifo_full();

    // update scoreboard
    if (fifo_wr_cmd == 1 && fifo_full == 0) begin
      q.push_back(fifo_wr_data);
    end

    if (start_feed == 1 && fifo_empty == 0) begin
      scb_feeding = 1;
    end
    if (scb_feeding == 1 && fifo_empty == 1) begin
      scb_feeding = 0;
    end

    if (scb_feeding == 1 && fifo_empty == 0) begin
      if (data_valid == 0) begin
        $display("ERROR: data_valid = %d, should be 1", data_valid);
        repeat (2) @(posedge clk);
        #1;
        $finish;
      end

      byte_data[byte_count*8 +: 8] = in_act_data_out;
      byte_count++;
      if (byte_count == INPUT_WIDTH/OUTPUT_WIDTH) begin
        byte_count = 0;
        q_data = q.pop_front();
        if (q_data != in_act_data_out) begin
          $display("ERROR: q_data = %d, in_act_data_out = %d", q_data, in_act_data_out);
          repeat (2) @(posedge clk);
          #1;
          $finish;
        end
      end
    end
  endfunction

  task automatic test_1();
    $display("test_1: fill FIFO");
    fill_fifo(21);
    start_feed();
    run_feed();
    $display("test_1: PASSED");
  endtask

  initial begin
    $display("STARTING INPUT ACT TEST BENCH");
    reset_all();
    test_1();
    $display("INPUT ACT TEST BENCH PASSED");
    $finish;
  end

endmodule
