module d_flop(clk, d, reset, enable, Q);
    input reset, enable, clk, d;
    output reg Q;

    always@(negedge clk or posedge reset) begin
        if(reset) begin
            Q <= 1'b0;
        end else if(enable) begin
            Q = d;
        end
    end
endmodule
