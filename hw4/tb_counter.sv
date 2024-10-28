module testbench;
    reg clk, reset, enable;
    wire [7:0] Q;

    counter c(.clk(clk), .reset(reset), .enable(enable), .Q(Q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end

    // Test sequence
    initial begin
        reset = 1;
        enable = 0;
        #10; 

        reset = 0;
        enable = 1;
        #100;

        enable = 1;
        #100;

        reset = 1;
        #10;

        $finish;
    end

    initial begin
        $display("t:  Count   ( e | r )");
        $monitor("%b ( %b | %b )", Q, enable, reset);
    end

endmodule
