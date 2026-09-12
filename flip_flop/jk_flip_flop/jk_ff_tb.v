module jk_ff_tb();
    reg J;
    reg K;
    reg clk;
    wire Q;
    wire W;

    jk_ff uut(
        .J(J),
        .K(K),
        .clk(clk),
        .Q(Q),
        .W(W)
    );

    task test;
    input j;
    input k;

    begin
        J = j;
        K = k;
        #10;
    end
    endtask
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("jk_ff.vcd");
        $dumpvars(0,jk_ff_tb);
        $monitor("clk = %b,J = %b,K = %b,Q = %b,W = %b",clk,J,K,Q,W);

        test(0,0);
        test(1,0);
        test(1,0);
        test(0,1);
        test(1,1);
        $finish;
    end
    
endmodule