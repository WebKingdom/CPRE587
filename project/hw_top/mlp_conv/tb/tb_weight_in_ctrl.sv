// test bench for input activation controller

`timescale 1ns/1ps
module tb_weight_in_ctrl();

  localparam INPUT_WIDTH = 32;
  localparam WS_WIDTH = 40;
  localparam WS_DEPTH = 5;
  localparam WS_IN_DIFF = WS_WIDTH - INPUT_WIDTH;
  localparam FIFO_DEPTH = 16;

  const int MAX_FIFO_CLEARS = 1000;
  int num_fifo_clears;

  // verification variables
  logic [WS_WIDTH-1:0] scb_ws [0:WS_DEPTH-1];
  int scb_ws_idx;
  int wr_count;
  logic ws_full_pulse_captured;

  int temp_count;
  int clear_fifo_cycles;
  int load_ws_cycles;
  int extra_cycles;

  // DUT IO
  // inputs
  logic clk;
  logic resetn;
  logic clear_fifo;
  logic load_ws;

  logic fifo_wr_cmd;
  logic [INPUT_WIDTH-1:0] fifo_wr_data;
  logic unsigned [3:0] param_r;
  logic unsigned [3:0] param_s;

  // outputs
  logic fifo_empty;
  logic fifo_full;
  logic ws_full;
  logic loading_ws;
  logic [WS_WIDTH-1:0] ws_rd_data [0:WS_DEPTH-1];

  // DUT instance
  weight_in_ctrl #(
                   .INPUT_WIDTH(INPUT_WIDTH),
                   .WS_WIDTH(WS_WIDTH),
                   .FIFO_DEPTH(FIFO_DEPTH)
                 ) dut (
                   .CLK(clk),
                   .RESETN(resetn),
                   .CLEAR_FIFO(clear_fifo),
                   .LOAD_WS(load_ws),
                   .FIFO_WR_CMD(fifo_wr_cmd),
                   .FIFO_WR_DATA(fifo_wr_data),
                   .FIFO_EMPTY(fifo_empty),
                   .FIFO_FULL(fifo_full),
                   .PARAM_R(param_r),
                   .PARAM_S(param_s),
                   .WS_FULL(ws_full),
                   .LOADING_WS(loading_ws),
                   .WS_RD_DATA_0(ws_rd_data[0]),
                   .WS_RD_DATA_1(ws_rd_data[1]),
                   .WS_RD_DATA_2(ws_rd_data[2]),
                   .WS_RD_DATA_3(ws_rd_data[3]),
                   .WS_RD_DATA_4(ws_rd_data[4])
                 );


  // clock generator
  always begin
    clk = 0;
    forever begin
      #5 clk = ~clk;
    end
  end

  function automatic void reset_tb();
    for (int i = 0; i < WS_DEPTH; i++) begin
      scb_ws[i] = $random;
    end
    scb_ws_idx = 0;
    wr_count = 0;
    ws_full_pulse_captured = 0;
    clear_fifo_cycles = 1;
    load_ws_cycles = 1;
    extra_cycles = 1;
  endfunction

  task automatic reset_all();
    reset_tb();
    num_fifo_clears = 0;
    // reset DUT
    resetn = 0;
    clear_fifo = 0;
    load_ws = 0;
    fifo_wr_cmd = 0;
    fifo_wr_data = 0;
    param_r = 0;
    param_s = 0;

    repeat (2) @(posedge clk);
    #1;
    resetn = 1;
  endtask

  // only test 4x4 grid or smaller
  function automatic set_rand_rs();
    param_r = $urandom_range(1, 4);
    param_s = $urandom_range(1, 4);
  endfunction

  // sends all the random data to the FIFO from scb_ws.
  // only tests 4x4 grid or smaller
  task automatic send_all_rand_data_to_fifo();
    while (scb_ws_idx < param_r) begin
      #1;
      fifo_wr_cmd = $random;
      if (fifo_wr_cmd == 1) begin
        // * Justified to MSB!!
        fifo_wr_data = scb_ws[scb_ws_idx][WS_WIDTH-1:WS_IN_DIFF];
        scb_ws_idx++;
      end
      if (fifo_full == 1) begin
        $display("ERROR: FIFO is full");
        $finish;
      end
      @(posedge clk);
    end
    fifo_wr_cmd = 0;
    scb_ws_idx = 0;
  endtask

  task automatic do_load_ws();
    load_ws_cycles = $urandom_range(1, 8);
    while (load_ws_cycles > 0) begin
      #1;
      load_ws = 1;
      load_ws_cycles--;
      @(posedge clk);
      if (ws_full == 1)
        ws_full_pulse_captured = 1;
    end
    #1;
    load_ws = 0;
  endtask

  task automatic do_clear_fifo();
    temp_count = $urandom_range(1, 8);
    clear_fifo_cycles = temp_count;
    while (clear_fifo_cycles > 0) begin
      #1;
      clear_fifo = 1;
      clear_fifo_cycles--;
      @(posedge clk);
    end
    #1;
    clear_fifo = 0;
    // wait for cycle after reset befor FIFO can accept data
    if (temp_count == 1)
      @(posedge clk);
  endtask

  // checks the final weight store output after all the data has been sent (to FIFO) and loaded in (to WS)
  task automatic wait_ws_full();
    // ensure ws is full (assuming do_load_ws() was called)
    int limit = 20;
    while (ws_full == 0 && ws_full_pulse_captured == 0 && limit > 0) begin
      #1;
      @(posedge clk);
      limit--;
    end
    if (limit == 0) begin
      $display("ERROR: ws_full = %0d, should be 1", ws_full);
      $finish;
    end
  endtask

  function automatic void check_ws_output();
    // check if the data is correct
    if (param_s == 4) begin
      for (int i = 0; i < param_r; i++) begin
        if (ws_rd_data[i][WS_WIDTH-1:WS_IN_DIFF] != scb_ws[i][WS_WIDTH-1:WS_IN_DIFF]) begin
          $display("ERROR: ws_rd_data[%0d] = %0d, scb_ws[%0d] = %0d", i, ws_rd_data[i][WS_WIDTH-1:WS_IN_DIFF], i, scb_ws[i][WS_WIDTH-1:WS_IN_DIFF]);
          $finish;
        end
      end
    end
    else if (param_s == 3) begin
      for (int i = 0; i < param_r; i++) begin
        if (ws_rd_data[i][WS_WIDTH-1:2*WS_IN_DIFF] != scb_ws[i][WS_WIDTH-1:2*WS_IN_DIFF]) begin
          $display("ERROR: ws_rd_data[%0d] = %0d, scb_ws[%0d] = %0d", i, ws_rd_data[i][WS_WIDTH-1:2*WS_IN_DIFF], i, scb_ws[i][WS_WIDTH-1:2*WS_IN_DIFF]);
          $finish;
        end
      end
    end
    else if (param_s == 2) begin
      for (int i = 0; i < param_r; i++) begin
        if (ws_rd_data[i][WS_WIDTH-1:3*WS_IN_DIFF] != scb_ws[i][WS_WIDTH-1:3*WS_IN_DIFF]) begin
          $display("ERROR: ws_rd_data[%0d] = %0d, scb_ws[%0d] = %0d", i, ws_rd_data[i][WS_WIDTH-1:3*WS_IN_DIFF], i, scb_ws[i][WS_WIDTH-1:3*WS_IN_DIFF]);
          $finish;
        end
      end
    end
    else if (param_s == 1) begin
      for (int i = 0; i < param_r; i++) begin
        if (ws_rd_data[i][WS_WIDTH-1:4*WS_IN_DIFF] != scb_ws[i][WS_WIDTH-1:4*WS_IN_DIFF]) begin
          $display("ERROR: ws_rd_data[%0d] = %0d, scb_ws[%0d] = %0d", i, ws_rd_data[i][WS_WIDTH-1:4*WS_IN_DIFF], i, scb_ws[i][WS_WIDTH-1:4*WS_IN_DIFF]);
          $finish;
        end
      end
    end
    else begin
      $display("ERROR: invalid param_s = %0d", param_s);
      $finish;
    end
  endfunction

  task automatic test_4x4_or_less();
    $display("test_4x4_or_less");
    reset_all();

    set_rand_rs();
    send_all_rand_data_to_fifo();
    do_load_ws();
    wait_ws_full();

    check_ws_output();
    $display("test_4x4_or_less PASSED");
  endtask

  task automatic test_rand_4x4_or_less();
    $display("test_rand_4x4_or_less");
    reset_all();

    while (num_fifo_clears < MAX_FIFO_CLEARS) begin
      set_rand_rs();
      send_all_rand_data_to_fifo();
      do_load_ws();
      wait_ws_full();
      check_ws_output();

      // reset tb variables and clear FIFO
      reset_tb();
      do_clear_fifo();
      num_fifo_clears++;
    end

    $display("test_rand_4x4_or_less PASSED");
  endtask

  // simulation
  initial begin
    $display("tb_weight_in_ctrl");

    // test_4x4_or_less();
    test_rand_4x4_or_less();
    $display("\n");

    $display("tb_weight_in_ctrl PASSED");
    $finish;
  end

endmodule
