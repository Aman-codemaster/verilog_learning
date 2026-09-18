module sipo_tb();
    reg clk;
    reg Din;
    reg reset;
    wire [3:0]Q;

    sipo uut(
        .clk(clk),
        .Din(Din),
        .reset(reset),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("sipo.vcd");
        $dumpvars(0,sipo_tb);


        reset = 1'b1;
        Din   = 1'b0;


        @(posedge clk);
        #1;

        $display("RESET | Din=%b | Q3=%b Q2=%b Q1=%b Q0=%b | Q=%b",Din, uut.Q3, uut.Q2, uut.Q1, uut.Q0, Q);


        reset = 1'b0;


        Din = 1'b1;
        @(posedge clk);
        #1;
        $display("Din=%b | Q3=%b Q2=%b Q1=%b Q0=%b | Q=%b",Din, uut.Q3, uut.Q2, uut.Q1, uut.Q0, Q);


        Din = 1'b0;
        @(posedge clk);
        #1;
        $display("Din=%b | Q3=%b Q2=%b Q1=%b Q0=%b | Q=%b",Din, uut.Q3, uut.Q2, uut.Q1, uut.Q0, Q);


        Din = 1'b1;
        @(posedge clk);
        #1;
        $display("Din=%b | Q3=%b Q2=%b Q1=%b Q0=%b | Q=%b",Din, uut.Q3, uut.Q2, uut.Q1, uut.Q0, Q);


        Din = 1'b1;
        @(posedge clk);
        #1;
        $display("Din=%b | Q3=%b Q2=%b Q1=%b Q0=%b | Q=%b", Din, uut.Q3, uut.Q2, uut.Q1, uut.Q0, Q);

        $finish;
    end
endmodule