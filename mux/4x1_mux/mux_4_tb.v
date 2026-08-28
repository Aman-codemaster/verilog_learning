module mux_4_tb;

    reg A;
    reg B;
    reg C;
    reg D;
    reg S0;
    reg S1;

    wire Y;

    mux_4 uut(
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .S0(S0),
        .S1(S1),
        .Y(Y)
    );

    initial begin

        $dumpfile("mux_4.vcd");
        $dumpvars(0, mux_4_tb);

        $monitor("A=%b, B=%b, C=%b, D=%b, S1=%b, S0=%b, Y=%b",
                 A, B, C, D, S1, S0, Y);

        // Give each input a different value
        A = 0;
        B = 1;
        C = 0;
        D = 1;

        // S1S0 = 00 → A
        S1 = 0;
        S0 = 0;
        #10;

        // S1S0 = 01 → B
        S1 = 0;
        S0 = 1;
        #10;

        // S1S0 = 10 → C
        S1 = 1;
        S0 = 0;
        #10;

        // S1S0 = 11 → D
        S1 = 1;
        S0 = 1;
        #10;

        $finish;

    end

endmodule