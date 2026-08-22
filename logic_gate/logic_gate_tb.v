module logic_gate_tb;
    reg A;
    reg B;
    reg C;
    wire Y;

    logic_gate uut(
        .A(A),
        .B(B),
        .C(C),
        .Y(Y)
    );

    initial begin
        $monitor("A=%b,B=%b,C=%b,Y=%b",A,B,C,Y);

        A=0;
        B=0;
        C=0;
        #10;


        A=0;
        B=0;
        C=1;
        #10;


        A=0;
        B=1;
        C=0;
        #10;


        A=0;
        B=1;
        C=1;
        #10;


        A=1;
        B=0;
        C=0;
        #10;


        A=1;
        B=0;
        C=1;
        #10;


        A=1;
        B=1;
        C=0;
        #10;


        A=1;
        B=1;
        C=1;
        #10;
        $finish;
    end
endmodule