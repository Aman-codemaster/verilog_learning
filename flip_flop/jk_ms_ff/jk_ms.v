module jk_ms_ff(
    input j,
    input k,
    input clk,
    output wire q,
    output wire w
);
    wire a;
    wire b;

    jk_ff J1(
        .J(j),
        .K(k),
        .clk(clk),
        .Q(a),
        .W(b)
    );

    jk_ff J2(
        .J(a),
        .K(b),
        .clk(~clk),
        .Q(q),
        .W(w)
    );
endmodule