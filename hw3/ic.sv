module ic(s, out, g);

    input [2:0] s, g;
    output [7:0] out;

    wire [7:0] dec_out;
    decoder dec(.s(s), .out(dec_out));

    assign out = (g != 3'b001) ? {8{1'b1}} : ~dec_out;

endmodule
