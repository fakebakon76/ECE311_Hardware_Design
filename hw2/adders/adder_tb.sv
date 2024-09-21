`timescale 1ns / 1ps

module adder_tb;
    
    reg [2:0] a, b;
    reg cin;
    wire [2:0] sum;
    wire cout;

    adder adder1(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    integer i, j;

    initial begin
        cin = 0;
        for(i=0; i < 8; i = i + 1) begin
            a = i;
            for(j=0; j < 8; j = j + 1) begin
                b = j;

                #1 $display("  %b%b%b\n  %b%b%b\n    %b\n-----\n%b %b%b%b\n", a[2], a[1], a[0], b[2], b[1], b[0], cin, cout, sum[2], sum[1], sum[0]);
            end
        end
    end

endmodule
