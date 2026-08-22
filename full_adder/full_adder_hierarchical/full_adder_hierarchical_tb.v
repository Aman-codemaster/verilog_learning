module full_adder_hierarchical_tb;

    reg A;
    reg B;
    reg Cin;

    wire S;
    wire Cout;

    full_adder_hierarchical uut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    initial begin

        $monitor("A=%b, B=%b, Cin=%b, S=%b, Cout=%b",
                 A, B, Cin, S, Cout);

        A=0;
        B=0;
        Cin=0;
        #10;

        A=0;
        B=0;
        Cin=1;
        #10;

        A=0;
        B=1;
        Cin=0;
        #10;

        A=0;
        B=1;
        Cin=1;
        #10;

        A=1;
        B=0;
        Cin=0;
        #10;

        A=1;
        B=0;
        Cin=1;
        #10;

        A=1;
        B=1;
        Cin=0;
        #10;

        A=1;
        B=1;
        Cin=1;
        #10;

        $finish;

    end

endmodule