module full_adder (
    input A,
    input B,
    input Cin,
    output S,
    output Co
);
    assign S=A^B^Cin;
    assign Co=(A & B)|(A& Cin)|(B& Cin);
endmodule