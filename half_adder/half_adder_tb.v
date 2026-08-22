module half_adder_tb;
    reg A;
    reg B;
    wire Y;
    wire X;
    half_adder uut(
        .A(A),
        .B(B),
        .Y(Y),
        .X(X)
    );

    initial begin
        $monitor("A=%b,B=%b,Y=%b,X=%b",A,B,Y,X);

        A=0;
        B=0;
        #10;

        A=0;
        B=1;
        #10;

        A=1;
        B=0;
        #10;

        A=1;
        B=1;
        #10;
        $finish;
    end

endmodule