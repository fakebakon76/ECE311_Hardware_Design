module four_bit_lookahead_adder(a, b, cin, sum, cout);
    input wire cin;
    input wire [3:0] a, b;
    output wire [3:0] sum;
    output wire cout;

    wire c1, c2, c3;
    wire [3:0] g, p;

    assign p = a | b;
    assign g = a & b;

    assign c1 = g[0] | (p[0] & cin);
    assign c2 = g[1] | (p[1] & c1);
    assign c3 = g[2] | (p[2] & c2);
    assign cout = g[3] | (p[3] & c3);

    adder a1(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout());
    adder a2(.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout());
    adder a3(.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .cout());
    adder a4(.a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]), .cout());

endmodule
