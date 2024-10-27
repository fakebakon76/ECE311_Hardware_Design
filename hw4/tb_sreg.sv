`timescale 1ns/1ps

module shift_reg_tb;
    reg [3:0] p_in;
    reg clk, s_in, s_en;
    wire [3:0] Q;
    wire s_out;

    shift_reg sr(.clk(clk), .p_in(p_in), .s_in(s_in), .s_en(s_en), .Q(Q), .s_out(s_out));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period
    end

    initial begin
        p_in = 4'b0000;
        s_in = 0;
        s_en = 0;
        $display("t: (D | Q | shift enable | shift in | shift out)");
        $display("%0d: (%b | %b | %b | %b | %b)", $time, p_in, Q, s_en, s_in, s_out);
        #10;
        
        // parallel load test
        p_in = 4'b1010;
        #10;
        
        // shift, serial input
        s_en = 1;
        s_in = 1;
        #10;

        // shift again
        #10;
        #10;

        // parallel load
        s_en = 0;
        p_in = 4'b1100;
        #10;

        // shift again
        s_en = 1;
        s_in = 1;
        #10;

        $finish;
    end

    always@(negedge clk) begin
        $display("%0d: (%b | %b | %b | %b | %b)", $time, p_in, Q, s_en, s_in, s_out);
    end

endmodule
