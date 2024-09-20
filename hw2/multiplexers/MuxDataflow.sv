module MuxDataflow(a, b, s, out);
    input [1:0] a, b;
    input s;
    output [1:0] out;

    assign out = s ? a : b;
endmodule
