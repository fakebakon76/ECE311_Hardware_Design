module FBR(D, Q, reset, set, load, clk);
    input [3:0] D;
    input clk;
    input load, set, reset;
    output reg [3:0] Q;

    always@(posedge clk) begin
        if(reset && load) assign Q = 4'b0000;
        else if(set && load) assign Q = 4'b1111;
        else if(load) assign Q = D;
    end

endmodule
