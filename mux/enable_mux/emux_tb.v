module emux_tb;
    reg A;reg B;reg E; reg S;
    wire Y;

    emux uut(
        .A(A),
        .B(B),
        .E(E),
        .S(S),
        .Y(Y)
    );

    initial begin
        $dumpfile("emux.vcd");
        $dumpvars(0,emux_tb);
        $monitor("A=%b,B=%b,S=%b,E=%b,Y=%b",A,B,S,E,Y);

        E=0;
        S=0;
        A=0;
        B=1;
        #10;

        E=0;
        S=1;
        A=1;
        B=0;
        #10;

        E=1;
        S=0;
        A=1;
        B=0;
        #10;

        E=1;
        S=1;
        A=0;
        B=1;
        #10;
    end
endmodule