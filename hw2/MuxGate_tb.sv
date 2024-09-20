`timescale 1ns / 1ps

module MuxGate_tb;
    
    reg [1:0] a, b;
    reg s;
    wire [1:0] o;

    MuxGate mp1(.a(a), .b(b), .s(s), .out(o));

    integer i, j, k;

    initial begin
        for(i=0; i < 4; i = i + 1) begin 
            a = i;
            for(j=0; j < 4; j = j + 1) begin
                b = j;
                for(k=0; k < 2; k = k + 1) begin
                    s = k;
                    #1 $display("(%b, %b%b, %b%b) - %b%b", s, a[1], a[0], b[1], b[0], o[1], o[0]);
                end
            end
        end
    end
endmodule
