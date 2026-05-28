module Reversible_Full_Adder(

    input A,
    input B,
    input Cin,

    input anc1,
    input anc2,
    input anc3,

    output Sum,
    output Carry,

    output G_1,
    output G_2
);

// Internal wires
wire w_ab;
wire w_ac;
wire w_bc;
wire w_xor1;

// XOR operation
assign w_xor1 = A ^ B;

// SUM
assign Sum = w_xor1 ^ Cin;

// AND terms
assign w_ab = A & B;
assign w_ac = A & Cin;
assign w_bc = B & Cin;

// Carry generation
assign Carry = w_ab | w_ac | w_bc;

// Garbage outputs
assign G_1 = anc1 ^ w_ab;
assign G_2 = anc2 ^ w_ac ^ w_bc ^ anc3;

endmodule
