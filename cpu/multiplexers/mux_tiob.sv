module mux_tiob(a, b, s, out);
    input wire a, b;
    input wire s;
    output wire out;

    wire s_not;
    wire ans, bns;

    // Logic Operations
    not(s_not, s);
    and(ans, a, s_not);
    and(bns, b, s);
    or(out, ans, bns);

endmodule
