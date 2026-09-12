module dff(
    input D,
    input clk,
    output Q,
    output W
);
    sr_ff S(
        .S(D),
        .R(~D),
        .clk(clk),
        .Q(Q),
        .W(W)
    );
endmodule