`timescale 1ns / 1ps

module Mux_tb2;
    
    reg [1:0] x, y;
    reg s;
    wire [1:0] o_gate, o_dataflow, o_behavioral;

    MuxGate mp_gate(.a(x), .b(y), .s(s), .out(o_gate));
    MuxDataflow mp_dataflow(.a(x), .b(y), .s(s), .out(o_dataflow));
    MuxBehavioral mp_behavioral(.a(x), .b(y), .s(s), .out(o_behavioral));

    initial begin
        x = 0; y = 0; s = 0;
        #10 x = 1;
        #10 y = 1;
        #10 x = 3; y = 0;
        #10 x = 2; y = 3;
        #10 s = 1;
        #10 x = 1;
        #10 y = 1;
        #10 x = 3; y = 0;
        #10 x = 2; y = 3;
        #20;
    end

endmodule
