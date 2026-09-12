module nand_latch (
    input R,
    input S,
    output Q,
    output W
);
    assign Q = ~(R&W);
    assign W = ~(S&Q);
endmodule