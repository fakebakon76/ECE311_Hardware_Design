module decoder(s, out);

    input [2:0] s;
    output [7:0] out;

    assign out = 8'b00000001<<s;

endmodule
        
