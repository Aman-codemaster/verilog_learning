module full_adder_hierarchical(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
);
    wire S1;
    wire C1;
    wire C2;

    half_adder HA1(
        .A(A),
        .B(B),
        .X(S1),
        .Y(C1)
    );
    half_adder HA2(
        .A(S1),
        .B(Cin),
        .X(S),
        .Y(C2)
    );
    or_gate Or(
        .A(C1),
        .B(C2),
        .Y(Cout)
    );

endmodule