module adder(a, b, cin, sum, cout);
    input wire cin, a, b;
    output wire sum, cout;

    assign {cout, sum} = a + b + cin;
endmodule
