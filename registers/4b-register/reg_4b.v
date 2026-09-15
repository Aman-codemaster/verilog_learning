module reg_4b(
    input [3:0] D,
    input clk,
    output wire [3:0] Q
);

    dff R0(
        .D(D[0]),
        .clk(clk),
        .Q(Q[0])
    );

    dff R1(
        .D(D[1]),
        .clk(clk),
        .Q(Q[1])
    );

    dff R2(
        .D(D[2]),
        .clk(clk),
        .Q(Q[2])
    );

    dff R3(
        .D(D[3]),
        .clk(clk),
        .Q(Q[3])
    );
endmodule