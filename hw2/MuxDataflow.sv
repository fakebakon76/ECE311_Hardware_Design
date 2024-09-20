module MuxDataflow(a, b, s, out);
    input [1:0] a, b;
    input s;
    output [1:0] out;

    assign out = (a & ~{2{s}}) | (b & {2{s}}); 
endmodule
