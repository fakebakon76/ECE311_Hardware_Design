module mux_fiob(a, s, out);
    input [3:0] a;
    input [1:0] s;
    output wire out;

    wire [1:0] mux_out;

    mux_tb m1(.a(a[0]), .b(a[1]), .s(s[0]), .out(mux_out[0]));
    mux_tb m2(.a(a[2]), .b(a[3]), .s(s[0]), .out(mux_out[1]));
    mux_tb m3(.a(mux_out[0]), .b(mux_out[1]), .s(s[1]), .out(out));
endmodule
