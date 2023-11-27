// we are implementing DENSE LAYER MAC unit with pipelined registers
// one weight and one activation at a time, filter size will decide burst length

`timescale 1ns/1ps
module pipe_mac#(
    parameter DW = 8, // data word width,
    parameter IDW = 8, // id width
    parameter UDW = 1, // user data width
    parameter FILTER_SIZE = 25 // number of filter elements
    )(
        input            clk,
        input            rstn,

        // SLAVE AXIS INTERFACE
        input [2*DW-1:0] saxis_tdata, // both the multiplier and multiplicand inputs
        input            saxis_tvalid,
        output logic     saxis_tready,
        input [ UDW-1:0] saxis_tuser, 
        // can be used for initial accumulator input then the width needs to be larger than 1 bit or can be replicated as done in this code
        input            saxis_tlast, // where can this be used? -> AKAP
        input [ IDW-1:0] saxis_tid,
        
        // MASTER AXIS INTERFACE
        output logic [ DW-1:0]  maxis_tdata,
        output logic            maxis_tvalid,
        input                   maxis_tready,
        output logic [UDW-1:0]  maxis_tuser,
        output logic            maxis_tlast,
        output logic [IDW-1:0]  maxis_tid
     );
    
    function integer clog2;
        input integer value;
        integer temp;
        begin
            temp = value - 1;
            for (clog2 = 0; temp > 0; clog2 = clog2 + 1) begin
                temp = temp >> 1;
            end
        end
    endfunction

    // some constants used in the code
    localparam AW = clog2(FILTER_SIZE); // additional bits for accumulator
    localparam ACCW = (AW%2) ? 2*DW+AW+1 : 2*DW+AW;

    // INPUT FLIP FLOPS for WEIGHTs and ACTIVATIONs
    logic signed [DW-1:0] wi, ai;
    // ACCUMULATOR REGISTER
    logic signed [ACCW-1:0] acc_c, acc_q;
    // MULTIPLIER REGISTERS
    logic signed [2*DW-1:0] prod_c, prod_q;
    // Counter to keep track of input packet send on Out ID
    logic [IDW-1:0] cntr;
    // acknowledge the data exchange at input side and output side
    logic in_handshake, handshake_q1, handshake_q2, out_handshake;
    logic [DW-1:0] intm_mdata; // do the rounding in this wire and send on output
    logic special_acc_cond;
    
    rounding#(.IDW(ACCW),.ODW(DW))RNDG(.A(acc_q),.Z(intm_mdata));

    assign in_handshake  = saxis_tvalid && saxis_tready;
    assign out_handshake = maxis_tready && maxis_tvalid;
    assign special_acc_cond = (saxis_tuser == {UDW{1'b0}} && cntr == {IDW{1'b0}});
    
    // input side logic
    always_ff@(posedge clk)begin
        if(rstn == 1'b0)begin
            saxis_tready <= 1'b0;
            wi           <= {DW{1'b0}};
            ai           <= {DW{1'b0}};
            prod_q       <= {(2*DW){1'b0}};
            acc_q        <= {ACCW{1'b0}};
            cntr         <= {IDW{1'b0}};
            handshake_q1 <= 1'b0;
            handshake_q2 <= 1'b0;
        end
        else begin
            saxis_tready <= maxis_tready;
            if(saxis_tvalid && maxis_tready)begin // check which ready! -> AKAP
                if(special_acc_cond == 1'b1)begin
                    acc_q  <= {{(ACCW-2*DW){saxis_tdata[2*DW-1]}},saxis_tdata}; // changed the logic for taking tdata instead of tuser on the basis of tuser == 1 -> AKAP
                end
                else begin
                    wi <= saxis_tdata[2*DW-1:DW]; // MSB side is weight
                    ai <= saxis_tdata[DW-1:0]; // LSB side is activation
                end
            end
            if(special_acc_cond == 1'b0)begin // need to see if the conditions are exclusive and not causing re writting in any case! -> AKAP
                acc_q <= (maxis_tlast & out_handshake) ? {ACCW{1'b0}} : acc_c;
            end
            prod_q <= prod_c;
            cntr   <= (in_handshake == 1'b1) ? cntr + 1'b1 : cntr;
            handshake_q1 <= in_handshake;
            handshake_q2 <= handshake_q1;
        end
    end

    always_comb begin
        prod_c = wi * ai; // check the sign -> AKAP
        acc_c = (handshake_q1 == 1'b1) ? acc_q + {{AW{prod_q[2*DW-1]}},prod_q} : acc_q;
    end

    // output side logic
    always_ff@(posedge clk)begin
        if(rstn == 1'b0)begin
            maxis_tdata  <= {DW{1'b0}};
            maxis_tvalid <= 1'b0;
            maxis_tuser  <= {UDW{1'b0}};
            maxis_tlast  <= 1'b0;
            maxis_tid    <= {IDW{1'b0}};
        end
        else begin
            if(handshake_q2)begin // check which handshake! -> AKAP
                //maxis_tdata  <= {acc_q[ACCW-1], acc_q}; // need to round by half the no of bits? -> AKAP
                maxis_tdata  <= intm_mdata;
                maxis_tvalid <= 1'b1;
                maxis_tuser  <= {UDW{acc_q[ACCW-1]}};
                maxis_tlast  <= (maxis_tid == FILTER_SIZE) ? 1'b1 : 1'b0;
                maxis_tid    <= (out_handshake == 1'b1) ? maxis_tid + 1 : maxis_tid;
            end
            else begin
                maxis_tdata  <= {DW{1'b0}};
                maxis_tvalid <= 1'b0;
                maxis_tuser  <= {UDW{1'b0}};
                maxis_tlast  <= 1'b0;
                maxis_tid    <= {IDW{1'b0}};
            end
        end
    end

endmodule