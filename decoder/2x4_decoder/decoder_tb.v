module decoder_tb();

    reg A;
    reg B;
    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;

    decoder uut(
        .A(A),
        .B(B),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );

    initial begin
        $dumpfile("decoder.vcd");
        $dumpvars(0,decoder_tb);
        $monitor("A=%b,B=%b,Y3=%b,Y2=%b,Y1=%b,Y0=%b",A,B,Y3,Y2,Y1,Y0);

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