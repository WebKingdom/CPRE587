// test bench for weight buffer


`timescale 1ns/1ps
module tb_weight_buffer();

  localparam INPUT_WIDTH = 32;
  localparam BUFFER_WIDTH = 40;
  localparam BUFFER_DEPTH = 5;
  localparam BUFF_IN_DIFF = BUFFER_WIDTH - INPUT_WIDTH;

  const int MAX_NUM_CYCLES = 1000;

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

  // outputs
  logic wr_ready;
  logic [BUFFER_WIDTH-1:0] rd_data [0:BUFFER_DEPTH-1];

  // DUT instance
  weight_buffer #(
                  .INPUT_WIDTH(INPUT_WIDTH),
                  .BUFFER_WIDTH(BUFFER_WIDTH)
                ) dut (
                  .CLK(clk),
                  .RESETN(resetn),
                  .WR_EN(wr_en),
                  .WR_VALID(wr_valid),
                  .WR_DATA(wr_data),
                  .WR_READY(wr_ready),
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
  endfunction

  task automatic reset_all();
    reset_tb();
    // reset DUT
    resetn = 0;
    wr_en = 0;
    wr_valid = 0;
    wr_data = 0;

    repeat (2) @(posedge clk);
    #1;
    resetn = 1;
  endtask

  // send 1 random data packet to DUT
  task automatic send_rand_data();
    wr_en = $random;
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
        logic [BUFF_IN_DIFF-1:0] rem = scb_buffer[scb_buffer_idx - 1][BUFF_IN_DIFF-1:0];
        // TODO just fill with 0s
        wr_data = {rem, scb_buffer[scb_buffer_idx][BUFFER_WIDTH-1:2*BUFF_IN_DIFF]};
      end
    end
    @(posedge clk);
    if (wr_en_valid == 1'b1) begin
      wr_count++;
      if (wr_count != 0 || wr_count != 5) begin
        scb_buffer_idx++;
      end
      wr_valid = 1'b0;
    end
    check_output();
    if (wr_count == 7) begin
      wr_count = 0;
      scb_buffer_idx = 0;
    end
  endtask

  function automatic void check_output();
    // TODO ssz handle this
    for (int i = 0; i < scb_buffer_idx - 1; i++) begin
      if (scb_buffer[i] != rd_data[i]) begin
        $display("ERROR: data mismatch at index %d", i);
        $display("expected: %h, actual: %h", scb_buffer[i], rd_data[i]);
        $finish;
      end
    end
  endfunction

  // test case 1, send random data MAX_NUM_CYCLES times
  task automatic test_1();
    $display("test_1");
    reset_tb();
    for (int i = 0; i < MAX_NUM_CYCLES; i++) begin
      #1;
      send_rand_data();
      check_output();
    end
    $display("test_1 PASSED");
  endtask

endmodule
