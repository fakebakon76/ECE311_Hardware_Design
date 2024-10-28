module fsm(clk, reset, Q);
    input reset, clk;
    output reg [2:0] Q;
    
    always@(negedge clk or posedge reset) begin
        if(reset) begin
            Q <= 3'b000;
        end else begin
            case(Q)
                3'b000: Q <= 3'b001;
                3'b001: Q <= 3'b011;
                3'b011: Q <= 3'b101;
                3'b101: Q <= 3'b111;
                3'b111: Q <= 3'b010;
                3'b010: Q <= 3'b000;
                default: Q <= 3'b000;
            endcase
        end
    end
endmodule
