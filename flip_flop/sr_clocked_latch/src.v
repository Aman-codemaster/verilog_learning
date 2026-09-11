module src(
    input S,
    input R,
    input clk,
    output Q,
    output W
);
    wire A;
    wire B;

    
    assign A = ~(S & clk);
    assign B = ~(R & clk);

    assign Q = ~(A & W);
    assign W = ~(B & Q);
endmodule