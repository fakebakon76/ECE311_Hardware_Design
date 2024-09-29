module rom(a, b, product);
    output [3:0] product;
    input [1:0] a, b;

    reg [3:0] ROM [15:0];


    initial $readmemb("rom.mem", ROM, 0, 15);
    assign product = ROM[{a, b}];
endmodule
