`timescale 1ns/1ps

module testbench;
    reg clk, reset;
    wire [2:0] state;
    
    fsm f(clk, reset, state);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        #10
        reset = 0;
        #1000
        $finish;
    end

    initial begin
        $display("State ( reset )");
        $monitor("%b ( %b )", state, reset);
    end
endmodule
