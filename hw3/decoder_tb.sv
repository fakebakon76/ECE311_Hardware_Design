`timescale 1ns/1ps

module decoder_tb;
    reg [2:0] s, g;
    wire [7:0] out, out_ic;

    decoder d(.s(s), .out(out));
    ic ice(.s(s), .out(out_ic), .g(g));

    integer i;

    initial begin
        for(i = 0; i < 8; i = i + 1) begin
            #1 g = i;
            #1 s = i;
            #1 $display("%d, %b: %b", s, g, out_ic);
        end
        
        #1 $display("");
        g = 3'b001;

        for(i = 0; i < 8; i = i + 1) begin
            #1 s = i; 
            #1 $display("%d, %b: %b", s, g, out_ic);
        end
        
        $finish;
        
    end

endmodule
