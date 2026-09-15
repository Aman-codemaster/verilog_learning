module reg_4b_tb();
    reg [3:0] D;
    reg clk;
    wire [3:0] Q;

    reg_4b uut(
        .D(D),
        .clk(clk),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    task test;
        input [3:0] d;

        begin
            D = d;
            #10;
        end
    endtask

    initial begin
        $dumpfile("reg_4b.vcd");
        $dumpvars(0,reg_4b_tb);
        $monitor("clk = %b,D = %b,Q = %b",clk,D,Q);

        test(4'b0000);
        test(4'b0100);
        test(4'b0010);
        test(4'b1011);
        test(4'b1001);
        test(4'b0010);
        test(4'b1111);
        $finish;
    end
endmodule