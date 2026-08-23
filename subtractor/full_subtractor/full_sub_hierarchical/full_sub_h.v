module full_sub_h(
    input A,
    input B,
    input Bin,
    output D,
    output Bo
);
    wire D1;
    wire B1;
    wire B2;

    half_sub HS1(
        .A(A),
        .B(B),
        .D(D1),
        .Bo(B1)
    );

    half_sub HS2(
        .A(D1),
        .B(Bin),
        .D(D),
        .Bo(B2)
    );

    or_gate Or(
        .A(B1),
        .B(B2),
        .Y(Bo)
    );

endmodule