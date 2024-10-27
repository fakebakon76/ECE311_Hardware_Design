module shift_reg(clk, p_in, s_in, s_en, Q, s_out);
    input clk, s_in, s_en;
    input [3:0] p_in;
    output reg [3:0] Q;
    output reg s_out;

    always@(posedge clk) begin
        if(s_en) begin
            Q = Q<<1;
            s_out = Q[3];
            Q[0] = s_in;
        end else begin 
            Q = p_in;
            s_out = Q[3];
        end
    end
endmodule
