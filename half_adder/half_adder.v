module half_adder(
    input A,
    input B,
    output X,//y is carry and x is sum
    output Y
);
    assign X=A^B;
    assign Y=A&B; 
   
endmodule