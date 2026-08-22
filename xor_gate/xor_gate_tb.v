module xor_gate_tb;
    reg A;
    reg B;
    wire Y;

    xor_gate uut(
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $monitor("A=%b,B=%b,Y=%b",A,B,Y);

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