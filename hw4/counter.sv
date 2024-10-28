module counter(clk, reset, enable, Q);
    input reset, enable, clk;
    output [7:0] Q;
    
    t_flop f1 (clk, reset, enable, Q[0]);
    t_flop f2 (Q[0], reset, enable, Q[1]);
    t_flop f3 (Q[1], reset, enable, Q[2]);
    t_flop f4 (Q[2], reset, enable, Q[3]);
    t_flop f5 (Q[3], reset, enable, Q[4]);
    t_flop f6 (Q[4], reset, enable, Q[5]);
    t_flop f7 (Q[5], reset, enable, Q[6]);
    t_flop f8 (Q[6], reset, enable, Q[7]);
endmodule
