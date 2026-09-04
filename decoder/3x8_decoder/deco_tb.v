module deco_tb();
    reg A;
    reg B;
    reg C;
    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;
    wire Y4;
    wire Y5;
    wire Y6;
    wire Y7;

    deco uut(
        .A(A),
        .B(B),
        .C(C),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3),
        .Y4(Y4),
        .Y5(Y5),
        .Y6(Y6),
        .Y7(Y7)
    );
    initial begin 
        $dumpfile("deco.vcd");
        $dumpvars(0,deco_tb);
        $monitor("A=%b,B=%b,C=%b,Y0=%b,Y1=%b,Y2=%b,Y3=%b,Y4=%b,Y5=%b,Y6=%b,Y7=%b,",A,B,C,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);

        A=0;
        B=0;
        C=0;
        #10;

        A=0;B=0;C=1;
        #10;

        A=0;B=1;C=0;
        #10;

        A=0;B=1;C=1;
        #10;

        A=1;B=0;C=0;
        #10;

        A=1;B=0;C=1;
        #10;

        A=1;B=1;C=0;
        #10;

        A=1;B=1;C=1;
        #10;
        $finish;
    end

endmodule