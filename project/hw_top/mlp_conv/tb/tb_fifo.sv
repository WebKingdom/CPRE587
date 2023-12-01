// test bench for fifo

`timescale 1ns/1ps
module tb_fifo();

  localparam FIFO_WIDTH = 32;
  localparam FIFO_DEPTH = 32;

  const int MAX_NUM_CYCLES = 1000;

  // verification variables
  logic [FIFO_WIDTH-1:0] q [$:FIFO_DEPTH-1];
  logic [FIFO_WIDTH-1:0] q_data;


  // DUT IO
  logic clk;
  logic resetn;

  logic rd_cmd;
  logic [FIFO_WIDTH-1:0] rd_data;
  logic fifo_empty;

  logic wr_cmd;
  logic [FIFO_WIDTH-1:0] wr_data;
  logic fifo_full;

  // DUT instance
  fifo #(
         .FIFO_WIDTH(FIFO_WIDTH),
         .FIFO_DEPTH(FIFO_DEPTH)
       ) dut (
         .CLK(clk),
         .RESETN(resetn),
         .RD_CMD(rd_cmd),
         .RD_DATA(rd_data),
         .EMPTY(fifo_empty),
         .WR_CMD(wr_cmd),
         .WR_DATA(wr_data),
         .FULL(fifo_full)
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
  endfunction

  task automatic reset_all();
    reset_tb();
    // reset DUT
    resetn = 0;
    rd_cmd = 0;
    wr_cmd = 0;
    wr_data = 0;

    repeat (2) @(posedge clk);
    #1;
    resetn = 1;
  endtask

  // set random command to the FIFO
  function automatic void set_rand_cmd();
    rd_cmd = $urandom_range(0, 2);
    wr_cmd = $urandom_range(0, 2);

    // check if commands are valid
    validate_fifo_empty();
    validate_fifo_full();
    if (rd_cmd == 1 && wr_cmd == 1) begin
      if (fifo_empty == 1) begin
        rd_cmd = 0;
      end
    end
    else if (rd_cmd == 1 && fifo_empty == 1) begin
      rd_cmd = 0;
    end
    else if (wr_cmd == 1 && fifo_full == 1) begin
      wr_cmd = 0;
    end

    if (wr_cmd == 1) begin
      wr_data = $random();
    end
  endfunction

  task automatic fill_fifo();
    validate_fifo_full();
    while (fifo_full == 0) begin
      // write data to the FIFO
      #1;
      rd_cmd = 0;
      wr_cmd = 1;
      wr_data = $random();
      @(posedge clk);
      update_scoreboard();
    end
  endtask

  task automatic empty_fifo();
    validate_fifo_empty();
    while (fifo_empty == 0) begin
      // read data from the FIFO
      #1;
      rd_cmd = 1;
      wr_cmd = 0;
      @(posedge clk);
      update_scoreboard();
    end
  endtask

  function automatic void validate_fifo_empty();
    if (q.size() == 0 && fifo_empty == 0) begin
      $display("ERROR: q.size() = %d (empty), fifo_empty = %d (not empty)", q.size(), fifo_empty);
      $finish;
    end
    if (q.size() > 0 && fifo_empty == 1) begin
      $display("ERROR: q.size() = %d (not empty), fifo_empty = %d (empty)", q.size(), fifo_empty);
      $finish;
    end
  endfunction

  function automatic void validate_fifo_full();
    if (q.size() == FIFO_DEPTH && fifo_full == 0) begin
      $display("ERROR: q.size() = %d (full), fifo_full = %d (not full)", q.size(), fifo_full);
      $finish;
    end
    if (q.size() < FIFO_DEPTH && fifo_full == 1) begin
      $display("ERROR: q.size() = %d (not full), fifo_full = %d (full)", q.size(), fifo_full);
      $finish;
    end
  endfunction

  function automatic void update_scoreboard();
    // error check
    validate_fifo_empty();
    validate_fifo_full();

    if (rd_cmd == 1 && wr_cmd == 1) begin
      $display("FIFO rd & wr together");
      // read data if possible from the FIFO
      if (fifo_empty == 0) begin
        q_data = q.pop_front();
        if (q_data != rd_data) begin
          $display("ERROR: q_data = %d, rd_data = %d", q_data, rd_data);
          $finish;
        end
        $display("FIFO rd: %d", rd_data);
      end

      // can always write data becuase we just read
      q.push_back(wr_data);
      $display("FIFO wr: %d", wr_data);
    end
    else if (rd_cmd == 1) begin
      // read data from the FIFO
      if (fifo_empty == 0) begin
        q_data = q.pop_front();
        if (q_data != rd_data) begin
          $display("ERROR: q_data = %d, rd_data = %d", q_data, rd_data);
          $finish;
        end
        $display("FIFO rd: %d", rd_data);
      end
    end
    else if (wr_cmd == 1) begin
      // write data to the FIFO
      if (fifo_full == 0) begin
        q.push_back(wr_data);
        $display("FIFO wr: %d", wr_data);
      end
    end
  endfunction

  // test 1, fill fifo
  task automatic test_fill_fifo();
    $display("test_fill_fifo");
    fill_fifo();
    $display("test_fill_fifo PASSED");
  endtask

  // test 2, empty fifo
  task automatic test_empty_fifo();
    $display("test_empty_fifo");
    empty_fifo();
    $display("test_empty_fifo PASSED");
  endtask

  // test 3, fill fifo and issue random commands
  task automatic test_random();
    $display("test_random");
    empty_fifo();
    fill_fifo();
    for (int i = 0; i < MAX_NUM_CYCLES; i++) begin
      #1;
      set_rand_cmd();
      @(posedge clk);
      update_scoreboard();
    end
    $display("test_random PASSED");
  endtask

  // main
  initial begin
    $display("tb_fifo");
    reset_all();

    test_fill_fifo();
    $display("\n");

    test_empty_fifo();
    $display("\n");

    test_random();
    $display("\n");
    $display("tb_fifo PASSED");
    $finish;
  end

endmodule
