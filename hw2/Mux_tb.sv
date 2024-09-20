`timescale 1ns / 1ps

module MuxGate_tb;
    
    reg [1:0] a, b;
    reg s;
    wire [1:0] o_gate, o_dataflow, o_behavioral;

    MuxGate mp_gate(.a(a), .b(b), .s(s), .out(o_gate));
    MuxDataflow mp_dataflow(.a(a), .b(b), .s(s), .out(o_dataflow));
    MuxBehavioral mp_behavioral(.a(a), .b(b), .s(s), .out(o_behavioral));

    integer i, j, k, match;

    initial begin
        match = 0;
        for(i=0; i < 4; i = i + 1) begin 
            a = i;
            for(j=0; j < 4; j = j + 1) begin
                b = j;
                for(k=0; k < 2; k = k + 1) begin
                    s = k;
                    if(o_gate != o_dataflow || o_gate != o_behavioral) begin
                        match = match + 1;
                    end
                    #1 $display("(%b, %b%b, %b%b) - (%b%b, %b%b, %b%b)", s, a[1], a[0], b[1], b[0], o_gate[1], o_gate[0], o_dataflow[1], o_dataflow[0], o_behavioral[1], o_behavioral[0]);
                end
            end
        end
        #1 $display("The outputs didn't match %d times!", match);
    end
endmodule
