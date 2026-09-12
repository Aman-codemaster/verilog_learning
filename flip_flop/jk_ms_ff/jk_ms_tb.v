module jk_ms_tb();
    reg j;
    reg k;
    reg clk;
    wire q;
    wire w;

    jk_ms_ff uut(
        .j(j),
        .k(k),
        .clk(clk),
        .q(q),
        .w(w)
    );

    task test;
    input x;
    input y;

    begin
        j = x;
        k = y;
        #10;
    end
    endtask
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("jk_ms_ff.vcd");
        $dumpvars(0,jk_ms_tb);
        $monitor("clk = %b,j = %b,k = %b,q = %b,w = %b",clk,j,k,q,w);

        test(0,0);
        test(1,0);
        test(1,0);
        test(0,1);
        test(1,1);
        $finish;
    end
    
endmodule