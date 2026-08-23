module full_sub(
    input A,
    input B,
    input Bin,
    output D,
    output Bo
);
    assign D = A^B^Bin;
    assign Bo = ((~A)&B)|((~A)&Bin)|(B&Bin);
endmodule