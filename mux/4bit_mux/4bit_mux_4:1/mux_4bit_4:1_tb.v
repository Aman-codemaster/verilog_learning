module mux_4bit_4to1_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg [3:0] C;
    reg [3:0] D;
    reg S0;
    reg S1;

    wire [3:0] Y;

    mux_4bit_4to1 UUT (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .S0(S0),
        .S1(S1),
        .Y(Y)
    );

    initial begin

        $monitor("A=%b B=%b C=%b D=%b S1=%b S0=%b Y=%b",
                 A, B, C, D, S1, S0, Y);

        $dumpfile("mux_4bit_4to1.vcd");
        $dumpvars(0, mux_4bit_4to1_tb);

        A = 4'b0001;
        B = 4'b0010;
        C = 4'b0100;
        D = 4'b1000;

        S1 = 0;
        S0 = 0;
        #10;

        S1 = 0;
        S0 = 1;
        #10;

        S1 = 1;
        S0 = 0;
        #10;

        S1 = 1;
        S0 = 1;
        #10;

        $finish;

    end

endmodule