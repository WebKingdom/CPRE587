// test bench for weight buffer


`timescale 1ns/1ps
module tb_weight_store();

  localparam INPUT_WIDTH = 32;
  localparam BUFFER_WIDTH = 40;
  localparam BUFFER_DEPTH = 5;
  localparam BUFF_IN_DIFF = BUFFER_WIDTH - INPUT_WIDTH;

  const int MAX_NUM_CYCLES = 100;

  // verification variables
  logic [BUFFER_WIDTH-1:0] scb_buffer [0:BUFFER_DEPTH-1];
  int scb_buffer_idx;
  int wr_count;

  // DUT IO
  // inputs
  logic clk;
  logic resetn;

  logic wr_en;
  logic wr_valid;
  logic [INPUT_WIDTH-1:0] wr_data;
  logic unsigned [3:0] param_R;     // filter height
  logic unsigned [3:0] param_S;     // filter width

  // outputs
  logic full;
  logic [BUFFER_WIDTH-1:0] rd_data [0:BUFFER_DEPTH-1];

  // DUT instance
  weight_store #(
                  .INPUT_WIDTH(INPUT_WIDTH),
                  .BUFFER_WIDTH(BUFFER_WIDTH)
                ) dut (
                  .CLK(clk),
                  .RESETN(resetn),
                  .WR_EN(wr_en),
                  .WR_VALID(wr_valid),
                  .WR_DATA(wr_data),
                  .PARAM_R(param_R),
                  .PARAM_S(param_S),
                  .FULL(full),
                  .RD_DATA_0(rd_data[0]),
                  .RD_DATA_1(rd_data[1]),
                  .RD_DATA_2(rd_data[2]),
                  .RD_DATA_3(rd_data[3]),
                  .RD_DATA_4(rd_data[4])
                );

  // helper logic
  wire wr_en_valid;
  assign wr_en_valid = wr_en & wr_valid;

  // clock generator
  always begin
    clk = 0;
    forever begin
      #5 clk = ~clk;
    end
  end

  function automatic void reset_tb();
    scb_buffer_idx = 0;
    wr_count = 0;
    for (int i = 0; i < BUFFER_DEPTH; i++) begin
      scb_buffer[i] = $random;
    end
    wr_data = scb_buffer[scb_buffer_idx][BUFFER_WIDTH-1:BUFF_IN_DIFF];
  endfunction

  task automatic reset_all();
    reset_tb();
    // reset DUT
    resetn = 0;
    wr_en = 0;
    wr_valid = 0;
    wr_data = 0;
    param_R = 0;
    param_S = 0;

    repeat (2) @(posedge clk);
    #1;
    resetn = 1;
  endtask

  // send 1 random data packet to DUT
  task automatic send_rand_5x5_data();
    wr_en = $random;
    param_R = 5;
    param_S = 5;
    if (wr_valid == 1'b0) begin
      wr_valid = $random;
      if (wr_count == 0) begin
        wr_data = scb_buffer[scb_buffer_idx][BUFFER_WIDTH-1:BUFF_IN_DIFF];
      end
      else if (wr_count == 1) begin
        logic [BUFF_IN_DIFF-1:0] rem = scb_buffer[scb_buffer_idx - 1][BUFF_IN_DIFF-1:0];
        wr_data = {rem, scb_buffer[scb_buffer_idx][BUFFER_WIDTH-1:2*BUFF_IN_DIFF]};
      end
      else if (wr_count == 2) begin
        logic [2*BUFF_IN_DIFF-1:0] rem = scb_buffer[scb_buffer_idx - 1][2*BUFF_IN_DIFF-1:0];
        wr_data = {rem, scb_buffer[scb_buffer_idx][BUFFER_WIDTH-1:3*BUFF_IN_DIFF]};
      end
      else if (wr_count == 3) begin
        logic [3*BUFF_IN_DIFF-1:0] rem = scb_buffer[scb_buffer_idx - 1][3*BUFF_IN_DIFF-1:0];
        wr_data = {rem, scb_buffer[scb_buffer_idx][BUFFER_WIDTH-1:4*BUFF_IN_DIFF]};
      end
      else if (wr_count == 4) begin
        logic [4*BUFF_IN_DIFF-1:0] rem = scb_buffer[scb_buffer_idx - 1][4*BUFF_IN_DIFF-1:0];
        wr_data = rem;
      end
      else if (wr_count == 5) begin
        // restart the cycle
        wr_data = scb_buffer[scb_buffer_idx][BUFFER_WIDTH-1:BUFF_IN_DIFF];
      end
      else if (wr_count == 6) begin
        logic [BUFF_IN_DIFF-1:0] rem = scb_buffer[scb_buffer_idx][BUFF_IN_DIFF-1:0];
        // second part of append is not used
        wr_data = {rem, scb_buffer[scb_buffer_idx][BUFFER_WIDTH-1:2*BUFF_IN_DIFF]};
      end
    end
    @(posedge clk);
    #1;
    check_5x5_output();
    if (wr_en_valid == 1'b1) begin
      wr_count++;
      if (wr_count < 5) begin
        scb_buffer_idx++;
      end
      wr_valid = 1'b0;
    end
    if (full == 1) begin
      reset_tb();
    end
  endtask

  task automatic send_rand_4x4_data();
    wr_en = $random;
    param_R = 4;
    param_S = 4;
    if (wr_valid == 1'b0) begin
      wr_valid = $random;
      wr_data = scb_buffer[scb_buffer_idx][BUFFER_WIDTH-1:BUFF_IN_DIFF];
    end
    @(posedge clk);
    #1;
    if (wr_en_valid == 1'b1) begin
      scb_buffer_idx++;
      wr_valid = 1'b0;
    end
    check_4x4_output();
    if (full == 1) begin
      reset_tb();
    end
  endtask

  task automatic send_rand_3x3_data();
    wr_en = $random;
    param_R = 3;
    param_S = 3;
    if (wr_valid == 1'b0) begin
      wr_valid = $random;
      wr_data = scb_buffer[scb_buffer_idx][BUFFER_WIDTH-1:BUFF_IN_DIFF];
    end
    @(posedge clk);
    #1;
    if (wr_en_valid == 1'b1) begin
      scb_buffer_idx++;
      wr_valid = 1'b0;
    end
    check_3x3_output();
    if (full == 1) begin
      reset_tb();
    end
  endtask

  task automatic send_rand_2x2_data();
    wr_en = $random;
    param_R = 2;
    param_S = 2;
    if (wr_valid == 1'b0) begin
      wr_valid = $random;
      wr_data = scb_buffer[scb_buffer_idx][BUFFER_WIDTH-1:BUFF_IN_DIFF];
    end
    @(posedge clk);
    #1;
    if (wr_en_valid == 1'b1) begin
      scb_buffer_idx++;
      wr_valid = 1'b0;
    end
    check_2x2_output();
    if (full == 1) begin
      reset_tb();
    end
  endtask

  task automatic send_rand_1x1_data();
    wr_en = $random;
    param_R = 1;
    param_S = 1;
    if (wr_valid == 1'b0) begin
      wr_valid = $random;
      wr_data = scb_buffer[scb_buffer_idx][BUFFER_WIDTH-1:BUFF_IN_DIFF];
    end
    @(posedge clk);
    #1;
    if (wr_en_valid == 1'b1) begin
      scb_buffer_idx++;
      wr_valid = 1'b0;
    end
    check_1x1_output();
    if (full == 1) begin
      reset_tb();
    end
  endtask

  task automatic check_5x5_output();
    int limit = scb_buffer_idx;
    if (wr_count < 5) begin
      limit--;
    end
    else if (wr_count > 5 && wr_en_valid == 1'b1) begin
      limit++;
    end
    for (int i = 0; i < limit; i++) begin
      if (scb_buffer[i] != rd_data[i]) begin
        $display("ERROR: MISMATCH at index %d, expected: %h, actual: %h", i, scb_buffer[i], rd_data[i]);
        repeat (2) @(posedge clk);
        #1;
        $finish;
      end
      else begin
        $display("MATCH at index %d, expected: %h, actual: %h", i, scb_buffer[i], rd_data[i]);
      end
    end
  endtask

  task automatic check_4x4_output();
    for (int i = 0; i < scb_buffer_idx; i++) begin
      if (scb_buffer[i][BUFFER_WIDTH-1:BUFF_IN_DIFF] != rd_data[i][BUFFER_WIDTH-1:BUFF_IN_DIFF]) begin
        $display("ERROR: MISMATCH at index %d, expected: %h, actual: %h", i, scb_buffer[i][BUFFER_WIDTH-1:BUFF_IN_DIFF], rd_data[i][BUFFER_WIDTH-1:BUFF_IN_DIFF]);
        repeat (2) @(posedge clk);
        #1;
        $finish;
      end
      else begin
        $display("MATCH at index %d, expected: %h, actual: %h", i, scb_buffer[i][BUFFER_WIDTH-1:BUFF_IN_DIFF], rd_data[i][BUFFER_WIDTH-1:BUFF_IN_DIFF]);
      end
    end
  endtask

  task automatic check_3x3_output();
    for (int i = 0; i < scb_buffer_idx; i++) begin
      if (scb_buffer[i][BUFFER_WIDTH-1:2*BUFF_IN_DIFF] != rd_data[i][BUFFER_WIDTH-1:2*BUFF_IN_DIFF]) begin
        $display("ERROR: MISMATCH at index %d, expected: %h, actual: %h", i, scb_buffer[i][BUFFER_WIDTH-1:2*BUFF_IN_DIFF], rd_data[i][BUFFER_WIDTH-1:2*BUFF_IN_DIFF]);
        repeat (2) @(posedge clk);
        #1;
        $finish;
      end
      else begin
        $display("MATCH at index %d, expected: %h, actual: %h", i, scb_buffer[i][BUFFER_WIDTH-1:2*BUFF_IN_DIFF], rd_data[i][BUFFER_WIDTH-1:2*BUFF_IN_DIFF]);
      end
    end
  endtask

  task automatic check_2x2_output();
    for (int i = 0; i < scb_buffer_idx; i++) begin
      if (scb_buffer[i][BUFFER_WIDTH-1:3*BUFF_IN_DIFF] != rd_data[i][BUFFER_WIDTH-1:3*BUFF_IN_DIFF]) begin
        $display("ERROR: MISMATCH at index %d, expected: %h, actual: %h", i, scb_buffer[i][BUFFER_WIDTH-1:3*BUFF_IN_DIFF], rd_data[i][BUFFER_WIDTH-1:3*BUFF_IN_DIFF]);
        repeat (2) @(posedge clk);
        #1;
        $finish;
      end
      else begin
        $display("MATCH at index %d, expected: %h, actual: %h", i, scb_buffer[i][BUFFER_WIDTH-1:3*BUFF_IN_DIFF], rd_data[i][BUFFER_WIDTH-1:3*BUFF_IN_DIFF]);
      end
    end
  endtask

  task automatic check_1x1_output();
    for (int i = 0; i < scb_buffer_idx; i++) begin
      if (scb_buffer[i][BUFFER_WIDTH-1:4*BUFF_IN_DIFF] != rd_data[i][BUFFER_WIDTH-1:4*BUFF_IN_DIFF]) begin
        $display("ERROR: MISMATCH at index %d, expected: %h, actual: %h", i, scb_buffer[i][BUFFER_WIDTH-1:4*BUFF_IN_DIFF], rd_data[i][BUFFER_WIDTH-1:4*BUFF_IN_DIFF]);
        repeat (2) @(posedge clk);
        #1;
        $finish;
      end
      else begin
        $display("MATCH at index %d, expected: %h, actual: %h", i, scb_buffer[i][BUFFER_WIDTH-1:4*BUFF_IN_DIFF], rd_data[i][BUFFER_WIDTH-1:4*BUFF_IN_DIFF]);
      end
    end
  endtask

  // test case 1, send random data MAX_NUM_CYCLES times
  task automatic test_5x5();
    $display("test_5x5");
    reset_tb();
    for (int i = 0; i < MAX_NUM_CYCLES; i++) begin
      #1;
      send_rand_5x5_data();
    end
    $display("test_5x5 PASSED");
  endtask
  
  task automatic test_4x4();
    $display("test_4x4");
    reset_tb();
    for (int i = 0; i < MAX_NUM_CYCLES; i++) begin
      #1;
      send_rand_4x4_data();
    end
    $display("test_4x4 PASSED");
  endtask

  task automatic test_3x3();
    $display("test_3x3");
    reset_tb();
    for (int i = 0; i < MAX_NUM_CYCLES; i++) begin
      #1;
      send_rand_3x3_data();
    end
    $display("test_3x3 PASSED");
  endtask

  task automatic test_2x2();
    $display("test_2x2");
    reset_tb();
    for (int i = 0; i < MAX_NUM_CYCLES; i++) begin
      #1;
      send_rand_2x2_data();
    end
    $display("test_2x2 PASSED");
  endtask

  task automatic test_1x1();
    $display("test_1x1");
    reset_tb();
    for (int i = 0; i < MAX_NUM_CYCLES; i++) begin
      #1;
      send_rand_1x1_data();
    end
    $display("test_1x1 PASSED");
  endtask

  // simulation
  initial begin
    $display("tb_weight_store");
    reset_all();

    test_5x5();
    reset_all();

    test_4x4();
    reset_all();

    test_3x3();
    reset_all();

    test_2x2();
    reset_all();

    test_1x1();

    $display("\n");
    $display("tb_weight_store PASSED");
    $finish;
  end

endmodule
