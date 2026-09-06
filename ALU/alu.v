module alu(
    input [3:0]a,
    input [3:0]b,
    input [2:0]op,
    output [3:0]y
);
    wire [3:0]r0;
    wire [3:0]r1 ;
    wire [3:0]r2 ;
    wire [3:0]r3 ;
    wire [3:0]r4 ;
    wire [3:0]r5 ;
    wire [3:0]r6 ;
    wire [3:0]r7 ;
    wire [3:0]a1 ;
    wire [3:0]a2;

    assign r0= a+b;
    assign r1 = a-b;
    assign r2=a&b;
    assign r3=a|b;
    assign r4=a^b;
    assign r5=~a;
    assign r6=a;
    assign r7=b;

    mux_4bit_4to1 M1(
        .A(r0),
        .B(r1),
        .C(r2),
        .D(r3),
        .S0(op[0]),
        .S1(op[1]),
        .Y(a1)
    );

    mux_4bit_4to1 M2(
        .A(r4),
        .B(r5),
        .C(r6),
        .D(r7),
        .S0(op[0]),
        .S1(op[1]),
        .Y(a2)
    );

    mux_4bit M3(
        .A(a1),
        .B(a2),
        .S(op[2]),
        .Y(y)
    );

endmodule