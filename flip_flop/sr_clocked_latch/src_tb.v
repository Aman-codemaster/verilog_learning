module src_tb();
    reg S;
    reg R;
    reg clk ;
    wire Q;
    wire W;
     
    src uut(
        .S(S),
        .R(R),
        .clk(clk),
        .Q(Q),
        .W(W)
    );

    task test;
    input s;
    input r;

    begin
        S = s;
        R = r;
        #10;
    end
endtask
    initial begin
         clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("src.vcd");
        $dumpvars(0,src_tb);
        $monitor("clk = %b,S = %b,R = %b,Q = %b,W = %b",clk,S,R,Q,W);

        test(0,0);
        test(1,0);
        test(1,0);
        test(0,1);
        $finish;
    end
endmodule