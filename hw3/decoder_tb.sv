`timescale 1ns/1ps

module decoder_tb;
    reg [2:0] s;
    wire [7:0] out;

    decoder d(.s(s), .out(out));
    integer i;

    initial begin
        i = 0;
        for(i = 0; i < 8; i = i + 1) begin
            s = i; $display("%d: %b", s, out);
        end
    end

endmodule
