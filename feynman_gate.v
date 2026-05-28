module feynman_gate (
    input A,
    input B,
    output P,
    output Q
);

assign P = A;
assign Q = A ^ B;

endmodule
