module t_flop(clk, reset, enable, Q);
    input reset, enable, clk;
    output reg Q;

    always@(negedge clk or posedge reset) begin
        if(reset) begin
            Q <= 1'b0;
        end else if(enable) begin
            Q <= !Q;
        end
    end
endmodule
