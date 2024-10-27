`timescale 1ns/1ps

module FBR_tb;
    reg [3:0] D;
    reg clk, load, set, reset;
    wire [3:0] Q;

    FBR r(.D(D), .clk(clk), .load(load), .set(set), .reset(reset), .Q(Q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period
    end

    initial begin
        #1
        D = 4'b0000;
        load = 0;
        set = 0;
        reset = 0;
        #10;
        
        D = 4'b1010;
        load = 1;
        #10;

        reset = 1;
        #10;
        
        reset = 0;
        set = 1;
        #10;
        
        set = 0;
        D = 4'b1100;
        #10;

        load = 0;
        D = 4'b0011;
        #10;

        $finish;
    end

    initial begin
        $display("t: (D | Q | l | r | s)");
        $monitor("%0d: (%b | %b | %b| %b | %b)", $time, D, Q, load, reset, set);
    end

endmodule
