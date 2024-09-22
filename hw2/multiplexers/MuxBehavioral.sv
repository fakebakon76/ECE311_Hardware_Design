module MuxBehavioral(a, b, s, out);
    input [1:0] a, b;
    input s;
    output reg [1:0] out;

    always @ ( a or b or s ) begin
        if( s == 0 )
            out = a;
        else 
            out = b;
    end
endmodule
