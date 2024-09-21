module four_bits_adder(a, b, cin, sum, cout);
    input wire cin;
    input wire [3:0] a, b;
    output wire [3:0] sum;
    output wire cout;

    wire c1, c2, c3;

    adder a1(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c1));
    adder a2(.a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout(c2));
    adder a3(.a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .cout(c3));
    adder a4(.a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]), .cout(cout));
endmodule