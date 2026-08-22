module not_gate_tb;

    reg A;
    wire Y;

    not_gate uut(
        .A(A),
        .Y(Y)
    );

    initial begin
        $monitor("A=%b , Y=%b",A,Y);

        A=0;
        #10;

        A=1;
        #10;

        $finish;
    end
endmodule