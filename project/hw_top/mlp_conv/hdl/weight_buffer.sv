// A 5 port read and single port write buffer/register file with 5 x BUFFER_WIDTH-bit registers.
// weights are 8-bits each and ordered in the following way:
// 00 01 02 03 04
// 10 11 12 13 14
// 20 21 22 23 24
// 30 31 32 33 34
// 40 41 42 43 44


`timescale 1ns/1ps
module weight_buffer #(
    parameter INPUT_WIDTH = 32,
    parameter BUFFER_WIDTH = 40
  ) (
    input wire CLK,
    input wire RESETN,
    input wire WR_EN,
    input wire WR_VALID,
    input wire [INPUT_WIDTH-1:0] WR_DATA,
    input wire unsigned [3:0] PARAM_R,     // filter height
    input wire unsigned [3:0] PARAM_S,     // filter width

    output wire FULL,
    output wire [BUFFER_WIDTH-1:0] RD_DATA_0,
    output wire [BUFFER_WIDTH-1:0] RD_DATA_1,
    output wire [BUFFER_WIDTH-1:0] RD_DATA_2,
    output wire [BUFFER_WIDTH-1:0] RD_DATA_3,
    output wire [BUFFER_WIDTH-1:0] RD_DATA_4
  );

  localparam BUFFER_DEPTH = 5;
  localparam BUFF_IN_DIFF = BUFFER_WIDTH - INPUT_WIDTH;

  // buffer register
  logic [BUFFER_WIDTH-1:0] buffer_reg [0:BUFFER_DEPTH-1];
  // temporary register for reformatting from 32-bit to 40-bit
  logic [INPUT_WIDTH*2-1:0] temp_reg;
  logic full_reg;

  wire wr_en_valid;

  // states
  typedef enum logic [2:0] {
            GET_DATA_B0_0,
            GET_DATA_B0_1,
            GET_DATA_B1_0,
            GET_DATA_B2_0,
            GET_DATA_B3_0,
            GET_DATA_B4_0,
            GET_DATA_B4_1
          } state_t;
  state_t state_reg, state_next;

  // outputs
  assign RD_DATA_0 = buffer_reg[0];
  assign RD_DATA_1 = buffer_reg[1];
  assign RD_DATA_2 = buffer_reg[2];
  assign RD_DATA_3 = buffer_reg[3];
  assign RD_DATA_4 = buffer_reg[4];
  assign FULL = full_reg;

  assign wr_en_valid = WR_EN & WR_VALID;

  // state register
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      state_reg <= GET_DATA_B0_0;
    end
    else begin
      state_reg <= state_next;
    end
  end

  // state logic
  always_comb begin
    state_next = state_reg;
    case (state_reg)
      GET_DATA_B0_0: begin
        if (wr_en_valid == 1'b1) begin
          // TODO ssz if S >= 5 then must go through entire 5x5 cycle
          if (PARAM_R > 1 || PARAM_S >= 5)
            state_next = GET_DATA_B0_1;
          else
            // done
            state_next = GET_DATA_B0_0;
        end
      end
      GET_DATA_B0_1: begin
        if (wr_en_valid == 1'b1) begin
          if (PARAM_R > 2 || PARAM_S >= 5)
            state_next = GET_DATA_B1_0;
          else
            // done
            state_next = GET_DATA_B0_0;
        end
      end
      GET_DATA_B1_0: begin
        if (wr_en_valid == 1'b1) begin
          if (PARAM_R > 3 || PARAM_S >= 5)
            state_next = GET_DATA_B2_0;
          else
            // done
            state_next = GET_DATA_B0_0;
        end
      end
      GET_DATA_B2_0: begin
        if (wr_en_valid == 1'b1) begin
          if (PARAM_R > 4 || PARAM_S >= 5)
            state_next = GET_DATA_B3_0;
          else
            // done
            state_next = GET_DATA_B0_0;
        end
      end
      GET_DATA_B3_0: begin
        if (wr_en_valid == 1'b1) begin
          if (PARAM_R >= 5 || PARAM_S >= 5)
            state_next = GET_DATA_B4_0;
          else
            // done
            state_next = GET_DATA_B0_0;
        end
      end
      GET_DATA_B4_0: begin
        if (wr_en_valid == 1'b1)
          // only come here if PARAM_R >= 5
          state_next = GET_DATA_B4_1;
      end
      GET_DATA_B4_1: begin
        if (wr_en_valid == 1'b1)
          state_next = GET_DATA_B0_0;
      end
      default: begin
        state_next = GET_DATA_B0_0;
      end
    endcase
  end

  // buffer register logic
  always_ff @(posedge CLK) begin
    if (RESETN == 1'b0) begin
      for (int i = 0; i < BUFFER_DEPTH; i++) begin
        buffer_reg[i] <= 0;
      end
      temp_reg <= 0;
      full_reg <= 0;
    end
    else begin
      case (state_reg)
        GET_DATA_B0_0: begin
          if (wr_en_valid == 1'b1) begin
            temp_reg <= {WR_DATA, 32'b0};
            // TODO ssz if S >= 5 then must go through entire 5x5 cycle
            full_reg <= 1'b0;

            // if width is less than 5, then input is mapped by row
            if (PARAM_S < 5) begin
              buffer_reg[0] <= {WR_DATA, 8'b0};
              if (PARAM_R <= 1)
                full_reg <= 1'b1;
            end
          end
        end
        GET_DATA_B0_1: begin
          if (wr_en_valid == 1'b1) begin
            // buffer gets highest BUFFER_WIDTH-bits of temp_reg
            temp_reg <= (temp_reg << 32) | {WR_DATA[INPUT_WIDTH-1-BUFF_IN_DIFF:0], 40'b0};
            full_reg <= 1'b0;

            // if width is less than 5, then input is mapped by row
            if (PARAM_S < 5) begin
              buffer_reg[1] <= {WR_DATA, 8'b0};
              if (PARAM_R <= 2)
                full_reg <= 1'b1;
            end
            else
              // 32-bit, 8-bits
              buffer_reg[0] <= {temp_reg[INPUT_WIDTH*2-1:INPUT_WIDTH], WR_DATA[INPUT_WIDTH-1:INPUT_WIDTH-BUFF_IN_DIFF]};
          end
        end
        GET_DATA_B1_0: begin
          if (wr_en_valid == 1'b1) begin
            temp_reg <= (temp_reg << 24) | {WR_DATA[INPUT_WIDTH-1-2*BUFF_IN_DIFF:0], 48'b0};
            full_reg <= 1'b0;

            if (PARAM_S < 5) begin
              buffer_reg[2] <= {WR_DATA, 8'b0};
              if (PARAM_R <= 3)
                full_reg <= 1'b1;
            end
            else
              // 24-bits, 16-bits
              buffer_reg[1] <= {temp_reg[INPUT_WIDTH*2-1:INPUT_WIDTH+BUFF_IN_DIFF], WR_DATA[INPUT_WIDTH-1:INPUT_WIDTH-2*BUFF_IN_DIFF]};
          end
        end
        GET_DATA_B2_0: begin
          if (wr_en_valid == 1'b1) begin
            temp_reg <= (temp_reg << 16) | {WR_DATA[INPUT_WIDTH-1-3*BUFF_IN_DIFF:0], 56'b0};
            full_reg <= 1'b0;

            if (PARAM_S < 5) begin
              buffer_reg[3] <= {WR_DATA, 8'b0};
              if (PARAM_R <= 4)
                full_reg <= 1'b1;
            end
            else
              // 16-bits, 24-bits
              buffer_reg[2] <= {temp_reg[INPUT_WIDTH*2-1:INPUT_WIDTH+2*BUFF_IN_DIFF], WR_DATA[INPUT_WIDTH-1:INPUT_WIDTH-3*BUFF_IN_DIFF]};
          end
        end
        GET_DATA_B3_0: begin
          if (wr_en_valid == 1'b1) begin
            temp_reg <= temp_reg << 8;
            full_reg <= 1'b0;

            if (PARAM_S < 5) begin
              buffer_reg[4] <= {WR_DATA, 8'b0};
              if (PARAM_R <= 5)
                full_reg <= 1'b1;
            end
            else
              // 8-bits, 32-bits
              buffer_reg[3] <= {temp_reg[INPUT_WIDTH*2-1:INPUT_WIDTH+3*BUFF_IN_DIFF], WR_DATA[INPUT_WIDTH-1:INPUT_WIDTH-4*BUFF_IN_DIFF]};
          end
        end
        GET_DATA_B4_0: begin
          if (wr_en_valid == 1'b1) begin
            // back to inintial condition
            temp_reg <= {WR_DATA, 32'b0};
            full_reg <= 1'b0;
          end
        end
        GET_DATA_B4_1: begin
          if (wr_en_valid == 1'b1) begin
            temp_reg <= (temp_reg << 32) | {WR_DATA[INPUT_WIDTH-1-BUFF_IN_DIFF:0], 40'b0};
            full_reg <= 1'b1;
            // 32-bit, 8-bits
            buffer_reg[4] <= {temp_reg[INPUT_WIDTH*2-1:INPUT_WIDTH], WR_DATA[INPUT_WIDTH-1:INPUT_WIDTH-BUFF_IN_DIFF]};
          end
        end
        default: begin
          // do nothing
        end
      endcase
    end
  end

endmodule
