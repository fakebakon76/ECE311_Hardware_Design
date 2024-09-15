module tutorial

(A, B, C, D);

input wire[0:0]A;
input wire[0:0]B;
input wire[0:0]C;
output wire[0:0]D;

wire wire1;

or(wire1, A, B);
and(D, C, wire1);

endmodule
