module toffoli_gate (
    input A,
    input B,
    input C,
    output P,
    output Q,
    output R
);

assign P = A;
assign Q = B;
assign R = (A & B) ^ C;

endmodule
