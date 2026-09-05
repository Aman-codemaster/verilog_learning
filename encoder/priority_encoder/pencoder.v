module pencoder(
    input i1,
    input i2,
    input i3,
    input i4,
    output y1,
    output y2
);
    assign y1=i3|i4;
    assign y2=i4|(~i3&i2);
endmodule