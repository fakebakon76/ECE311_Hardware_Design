module mux_fb(a, s, out);
    input [3:0] a, b;
    input s;
    output wire [3:0] out;

    mux_tboi m1(.a(a[0]), .b(b[0]), .s(s), .out(out[0]));
    mux_tboi m2(.a(a[1]), .b(b[1]), .s(s), .out(out[1]));
    mux_tboi m3(.a(a[2]), .b(b[2]), .s(s), .out(out[2]));
    mux_tboi m4(.a(a[3]), .b(b[3]), .s(s), .out(out[3]));
endmodule
