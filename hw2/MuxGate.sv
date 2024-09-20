module MuxGate(a, b, s, out);
    input wire [1:0] a, b;
    input wire s;
    output wire [1:0] out;

    wire s_not;
    wire [1:0] ans, bns;

    not(s_not, s);

    and(ans[0], a[0], s_not);
    and(ans[1], a[1], s_not);

    and(bns[0], b[0], s);
    and(bns[1], b[1], s);

    or(out[0], ans[0], bns[0]);
    or(out[1], ans[1], bns[1]);

endmodule
