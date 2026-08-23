module full_sub_tb;
    reg A;
    reg B;
    reg Bin;
    wire D;
    wire Bo;

    full_sub uut(
        .A(A),
        .B(B),
        .Bin(Bin),
        .D(D),
        .Bo(Bo)
    );

    initial begin
        $dumpfile("full_sub.vcd");
        $dumpvars(0, full_sub_tb);
        $monitor("A=%b,B=%b,Bin=%b,D=%b,Bo=%b",A,B,Bin,D,Bo);
        A=0;
        B=0;
        Bin=0;
        #10;

        A=0;
        B=0;
        Bin=1;
        #10;

        A=0;
        B=1;
        Bin=0;
        #10;

        A=0;
        B=1;
        Bin=1;
        #10;

        A=1;
        B=0;
        Bin=0;
        #10;

        A=1;
        B=0;
        Bin=1;
        #10;

        A=1;
        B=1;
        Bin=0;
        #10;

        A=1;
        B=1;
        Bin=1;
        #10;
        $finish;
    end
endmodule
