module tff_tb();
    reg t;
    reg clk;
    wire q;
    wire w;

    tff uut(
        .t(t),
        .clk(clk),
        .q(q),
        .w(w)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    task test;
    input a;

    begin
        t=a;
        #10;
    end
    endtask

    initial begin
        $dumpfile("tff.vcd");
        $dumpvars(0,tff_tb);
        $monitor("clk = %b,t = %b,q = %b,w = %b",clk,t,q,w);
        
        test(0);
        test(1);
        test(0);
        test(1);
        $finish;

    end   
endmodule