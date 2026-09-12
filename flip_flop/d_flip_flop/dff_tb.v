module dff_tb();
    reg D;
    reg clk;
    wire Q;
    wire W;

    dff uut(
        .D(D),
        .clk(clk),
        .Q(Q),
        .W(W)
    );
    task test;
    input d;
    begin
        D=d;
        #10;
    end
    endtask
    
    initial begin
         clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("dff.vcd");
        $dumpvars(0,dff_tb);
        $monitor("clk = %b,D = %b,Q = %b,W = %b",clk,D,Q,W);

        test(0);
        test(1);
        test(0);
        $finish;
    end
endmodule