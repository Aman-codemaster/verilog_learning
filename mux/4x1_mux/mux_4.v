// build this 4x1 mux using 3 2x1 mux , divide 2 input in 2 mux and give their output as input in third mux.
module mux_4(
    input A,
    input B,
    input C,
    input D,
    input S0,
    input S1,
    output Y
);
    wire X1;
    wire X2;
    
    mux M1(
        .A(A),
        .B(B),
        .S(S0),
        .Y(X1)
    );

    mux M2(
        .A(C),
        .B(D),
        .S(S0),
        .Y(X2)
    );

    mux M3 (
        .A(X1),
        .B(X2),
        .S(S1),
        .Y(Y)
    );
endmodule