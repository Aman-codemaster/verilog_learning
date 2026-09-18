module dff1 (
    input clk,
    input d,
    input reset,
    output reg q
);

    always @(posedge clk) begin
        if (reset)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule


module comb_ckt (
    input a,
    input b,
    input c,
    output d
);

    wire x1;
    wire x2;

    assign x1 = a & ~b;
    assign x2 = b & c;

    assign d = x1 | x2;

endmodule


module piso (
    input clk,
    input [3:0] Din,
    input reset,
    input load,
    output Q
);

    wire Q3;
    wire Q2;
    wire Q1;
    wire Q0;

    wire D3;
    wire D2;
    wire D1;
    wire D0;

    assign Q = Q3;

    comb_ckt l0 (
        .a(1'b0),
        .b(load),
        .c(Din[0]),
        .d(D0)
    );

    dff1 d0 (
        .clk(clk),
        .reset(reset),
        .d(D0),
        .q(Q0)
    );

    comb_ckt l1 (
        .a(Q0),
        .b(load),
        .c(Din[1]),
        .d(D1)
    );

    dff1 d1 (
        .clk(clk),
        .reset(reset),
        .d(D1),
        .q(Q1)
    );

    comb_ckt l2 (
        .a(Q1),
        .b(load),
        .c(Din[2]),
        .d(D2)
    );

    dff1 d2 (
        .clk(clk),
        .reset(reset),
        .d(D2),
        .q(Q2)
    );

    comb_ckt l3 (
        .a(Q2),
        .b(load),
        .c(Din[3]),
        .d(D3)
    );

    dff1 d3 (
        .clk(clk),
        .reset(reset),
        .d(D3),
        .q(Q3)
    );

endmodule