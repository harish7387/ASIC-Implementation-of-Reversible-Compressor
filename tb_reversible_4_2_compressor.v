`timescale 1ns / 1ps

module tb_reversible_4_2_compressor;

// Inputs
reg A, B, C, D, Cin;

// Ancilla inputs
reg anc1_fa1, anc2_fa1, anc3_fa1;
reg anc1_fa2, anc2_fa2, anc3_fa2;

// Outputs
wire Sum, Carry, Cout;

// Garbage outputs
wire G1_fa1, G2_fa1;
wire G1_fa2, G2_fa2;

// DUT
reversible_4_2_compressor DUT (

    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .Cin(Cin),

    .anc1_fa1(anc1_fa1),
    .anc2_fa1(anc2_fa1),
    .anc3_fa1(anc3_fa1),

    .anc1_fa2(anc1_fa2),
    .anc2_fa2(anc2_fa2),
    .anc3_fa2(anc3_fa2),

    .Sum(Sum),
    .Carry(Carry),
    .Cout(Cout),

    .G1_fa1(G1_fa1),
    .G2_fa1(G2_fa1),

    .G1_fa2(G1_fa2),
    .G2_fa2(G2_fa2)
);

integer i;
integer expected;
integer actual;

initial begin

    // Initialize ancilla inputs
    anc1_fa1 = 0;
    anc2_fa1 = 0;
    anc3_fa1 = 0;

    anc1_fa2 = 0;
    anc2_fa2 = 0;
    anc3_fa2 = 0;

    $display("==============================================");
    $display("A B C D Cin | Sum Carry Cout");
    $display("==============================================");

    for(i = 0; i < 32; i = i + 1) begin

        {A,B,C,D,Cin} = i[4:0];

        #10;

        expected = A + B + C + D + Cin;
        actual   = Sum + (Carry << 1) + (Cout << 2);

        $display("%b %b %b %b %b | %b %b %b | %0d %0d",
                  A,B,C,D,Cin,
                  Sum,Carry,Cout,
                  expected,actual);

    end

    $display("==============================================");
    $finish;

end

endmodule
