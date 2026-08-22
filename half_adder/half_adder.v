module half_adder(
    input A,
    input B,
    output Y,//y is carry and x is sum
    output X
);
    assign Y=A&B; 
    assign X=A^B;
endmodule