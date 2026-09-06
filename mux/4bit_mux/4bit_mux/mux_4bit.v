module mux_4bit (
    input [3:0] A,
    input [3:0] B,
    input S,
    output [3:0] Y
);

    assign Y = (({4{~S}}) & A) | (({4{S}}) & B);

endmodule