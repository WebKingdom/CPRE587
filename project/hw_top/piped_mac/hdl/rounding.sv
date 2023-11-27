// we are implementing rounding according to IEEE 754

`timescale 1ns/1ps
module rounding#(
    parameter IDW = 8, // input floating data word width,
    parameter ODW = 8  // output data word width
    )(
        input signed        [IDW-1:0] A, // IDW/2 bits for integer and fraction parts
        output logic signed [ODW-1:0] Z // ODW/2 bits for integer and fraction parts
     );

    //logic [(IDW/2)-1:0] AI,AF; // split the parts of input data into fraction and integer separately

    always_comb begin
        if(IDW<ODW)begin
            Z = {{(ODW-IDW){A[IDW-1]}},A}; // No rounding required just sign extending!
        end
        else begin
            if(A[IDW-ODW-1:0] > {1'b1,{(IDW-ODW-1){1'b0}}})begin
                Z = A[IDW-1:IDW-ODW] + 1'b1; // Round up if LSB is greater than 0.5 of the fraction represented by those lost bits.
            end
            else begin
                //Z = (((A[IDW-1:IDW-ODW] << 1) + 1) >>> 1);
                Z = A[IDW-1:IDW-ODW]; // Round to 0.5 of the LSB part so that rounding error is minimized
            end
        end
    end

endmodule
