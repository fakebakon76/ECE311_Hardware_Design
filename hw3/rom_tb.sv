`timescale 1ns/1ps

module rom_tb;
    wire [3:0] product;
    reg [1:0] a, b;

    rom r(.a(a), .b(b), .product(product));

    integer i, j;

    initial begin
        for(i = 0; i < 4; i = i + 1) begin
            #1 a = i;
            for(j = 0; j < 4; j = j + 1) begin
                #1 b = j;
                #1 $display("%d x %d = %d", a, b, product);
            end
        end
    end
endmodule
