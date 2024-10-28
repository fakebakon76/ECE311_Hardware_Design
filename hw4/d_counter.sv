module d_counter(clk, D, reset, enable, Q);
    input reset, enable, clk;
    output [7:0] Q, D;
    
    d_flop f1 (clk, !Q[0], reset, enable, Q[0]);
    d_flop f2 (Q[0], !Q[1], reset, enable, Q[1]);
    d_flop f3 (Q[1], !Q[2], reset, enable, Q[2]);
    d_flop f4 (Q[2], !Q[3], reset, enable, Q[3]);
    d_flop f5 (Q[3], !Q[4], reset, enable, Q[4]);
    d_flop f6 (Q[4], !Q[5], reset, enable, Q[5]);
    d_flop f7 (Q[5], !Q[7], reset, enable, Q[6]);
    d_flop f8 (Q[6], !Q[7], reset, enable, Q[7]);
endmodule
