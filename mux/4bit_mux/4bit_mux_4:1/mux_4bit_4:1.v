module mux_4bit_4to1 (
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    input S0,
    input S1,
    output [3:0] Y
);

    wire [3:0] X1;
    wire [3:0] X2;

    mux_4bit M1 (
        .A(A),
        .B(B),
        .S(S0),
        .Y(X1)
    );

    mux_4bit M2 (
        .A(C),
        .B(D),
        .S(S0),
        .Y(X2)
    );

    mux_4bit M3 (
        .A(X1),
        .B(X2),
        .S(S1),
        .Y(Y)
    );

endmodule