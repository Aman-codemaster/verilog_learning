module comp(
    input a0,
    input a1,
    input b0,
    input b1,
    output gt,
    output eq,
    output lt
);
    assign gt = (a1 & ~b1) | ((a1 ~^ b1) & a0 & ~b0);

    assign eq = (a1 ~^ b1) & (a0 ~^ b0);

    assign lt = (~a1 & b1) | ((a1 ~^ b1) & ~a0 & b0);

endmodule