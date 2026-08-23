module emux(
    input E,
    input S,
    input A,
    input B,
    output Y
);
    assign Y = E & (((~S) & A) | (S & B));
endmodule