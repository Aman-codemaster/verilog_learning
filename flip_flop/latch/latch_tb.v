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
    task test;
        input r;
        input s;

        begin
            R=r;
            S=s;
            #10;
        end
    endtask

    initial begin

        $monitor("R=%b,S=%b,Q=%b,W=%b",R,S,Q,W);

        test(1,0);
        test(0,0);
        test(0,1);
        test(0,0);
    end
endmodule