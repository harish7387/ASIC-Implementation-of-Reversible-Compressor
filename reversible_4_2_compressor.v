module reversible_4_2_compressor (

    input A,
    input B,
    input C,
    input D,
    input Cin,

    input anc1_fa1,
    input anc2_fa1,
    input anc3_fa1,

    input anc1_fa2,
    input anc2_fa2,
    input anc3_fa2,

    output Sum,
    output Carry,
    output Cout,

    output G1_fa1,
    output G2_fa1,

    output G1_fa2,
    output G2_fa2
);

wire s1;
wire c1;
wire c2;

// First Reversible Full Adder
Reversible_Full_Adder FA1 (

    .A(A),
    .B(B),
    .Cin(C),

    .anc1(anc1_fa1),
    .anc2(anc2_fa1),
    .anc3(anc3_fa1),

    .Sum(s1),
    .Carry(c1),

    .G_1(G1_fa1),
    .G_2(G2_fa1)
);

// Second Reversible Full Adder
Reversible_Full_Adder FA2 (

    .A(s1),
    .B(D),
    .Cin(Cin),

    .anc1(anc1_fa2),
    .anc2(anc2_fa2),
    .anc3(anc3_fa2),

    .Sum(Sum),
    .Carry(c2),

    .G_1(G1_fa2),
    .G_2(G2_fa2)
);

// Carry Redistribution
assign Carry = c1 ^ c2;
assign Cout  = c1 & c2;

endmodule
