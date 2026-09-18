module piso_tb();
    reg clk;
    reg [3:0]Din;
    reg reset;
    reg load;
    wire Q;

    piso uut(
        .clk(clk),
        .Din(Din),
        .reset(reset),
        .load(load),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin


        reset = 1'b1;
        load  = 1'b0;
        Din   = 4'b0000;

        @(posedge clk);
        #1;

        $display("RESET | Din=%b | Q3=%b Q2=%b Q1=%b Q0=%b | Q=%b | load=%b",Din, uut.Q3, uut.Q2, uut.Q1, uut.Q0, Q, load);


        reset = 1'b0;


        Din  = 4'b1011;
        load = 1'b1;

        @(posedge clk);
        #1;

        $display("LOAD  | Din=%b | Q3=%b Q2=%b Q1=%b Q0=%b | Q=%b | load=%b",Din, uut.Q3, uut.Q2, uut.Q1, uut.Q0, Q, load);


        load = 1'b0;

        @(posedge clk);
        #1;
        $display("SHIFT | Q3=%b Q2=%b Q1=%b Q0=%b | Q=%b",uut.Q3, uut.Q2, uut.Q1, uut.Q0, Q);

        @(posedge clk);
        #1;
        $display("SHIFT | Q3=%b Q2=%b Q1=%b Q0=%b | Q=%b",uut.Q3, uut.Q2, uut.Q1, uut.Q0, Q);

        @(posedge clk);
        #1;
        $display("SHIFT | Q3=%b Q2=%b Q1=%b Q0=%b | Q=%b",uut.Q3, uut.Q2, uut.Q1, uut.Q0, Q);

        @(posedge clk);
        #1;
        $display("SHIFT | Q3=%b Q2=%b Q1=%b Q0=%b | Q=%b",uut.Q3, uut.Q2, uut.Q1, uut.Q0, Q);

        $finish;
   end
    

endmodule