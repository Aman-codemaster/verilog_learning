module half_sub_tb;
    reg A;
    reg B;
    wire D;
    wire Bo;
     
    half_sub uut(
        .A(A),
        .B(B),
        .D(D),
        .Bo(Bo)
    );

    initial begin
        $dumpfile("half_sub.vcd");
        $dumpvars(0, half_sub_tb);
        $monitor("A=%b,B=%b,D=%b,Bo=%b",A,B,D,Bo);

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
        #10
        $finish;
    end
endmodule