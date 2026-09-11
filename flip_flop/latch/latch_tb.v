module latch_tb();
    reg R;
    reg S;
    wire Q;
    wire W;

    latch uut(
        .R(R),
        .S(S),
        .Q(Q),
        .W(W)
    );

    initial begin

        $monitor("R=%b,S=%b,Q=%b,W=%b",R,S,Q,W);

        R= 1;
        S=0 ;
        #10;

        R= 0;
        S=0 ;
        #10;

        R= 0;
        S= 1;
        #10;

        R= 0;
        S= 0;
        #10;
    end
endmodule