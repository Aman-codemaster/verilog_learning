module demux_tb();
    reg D;
    reg S1;
    reg S0;
    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;

    demux uut(
        .D(D),
        .S0(S0),
        .S1(S1),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );

    initial begin
        $dumpfile("demux.vcd");
        $dumpvars(0,demux_tb);
        $monitor("S1=%b,S0=%b,Y3=%b,Y2=%b,Y1=%b,Y0=%b", S1,S0,Y3,Y2,Y1,Y0);
        D=1;
        S1=0;
        S0=0;
        #15;

        S1=0;
        S0=1;
        #15;

        S1=1;
        S0=0;
        #15;

        S1=1;
        S0=1;
        #10;
        $finish;
    end
endmodule