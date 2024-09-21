`timescale 1ns / 1ps

module fbadder_tb2;
    reg [3:0] a, b;
    reg cin;
    wire cout, cout2;
    wire [3:0] sum, sum2;

    four_bit_adder fadder(.a(a), .b(b), .cin(cin), .cout(cout), .sum(sum));
    four_bit_lookahead_adder fbladder(.a(a), .b(b), .cin(cin), .cout(cout2), .sum(sum2));

    initial begin
        a = 0; b = 0; cin = 0;
        #10 a = 5; b = 6;
        #1 $display("%d + %d + %d = %d ( + %d) = %d ( + %d)", a, b, cin, sum, cout, sum2, cout2);
        #10 b = 2; a = 3;
        #1 $display("%d + %d + %d = %d ( + %d) = %d ( + %d)", a, b, cin, sum, cout, sum2, cout2);
        #10 b = 15; a = 15; cin = 1;
        #1 $display("%d + %d + %d = %d ( + %d) = %d ( + %d)", a, b, cin, sum, cout, sum2, cout2);
        #10 a = 9; cin = 0;
        #1 $display("%d + %d + %d = %d ( + %d) = %d ( + %d)", a, b, cin, sum, cout, sum2, cout2);
        #10 cin = 1; a = 0; b = 0;
        #1 $display("%d + %d + %d = %d ( + %d) = %d ( + %d)", a, b, cin, sum, cout, sum2, cout2);
        #10 a = 8;
        #1 $display("%d + %d + %d = %d ( + %d) = %d ( + %d)", a, b, cin, sum, cout, sum2, cout2);
        #10 b = 1; a = 0;
        #1 $display("%d + %d + %d = %d ( + %d) = %d ( + %d)", a, b, cin, sum, cout, sum2, cout2);
        #10 a = 1;
        #1 $display("%d + %d + %d = %d ( + %d) = %d ( + %d)", a, b, cin, sum, cout, sum2, cout2);
        #10;
    end
endmodule
