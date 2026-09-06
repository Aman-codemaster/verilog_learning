module comp_tb ();
    reg a1;
    reg a0;
    reg b0;
    reg b1;
    wire gt;
    wire eq;
    wire lt;

    comp uut(
        .a0(a0),
        .a1(a1),
        .b0(b0),
        .b1(b1),
        .gt(gt),
        .eq(eq),
        .lt(lt)
    );
integer i ,j;
    initial begin
        $dumpfile("comp.vcd");
        $dumpvars(0,comp_tb);
        $monitor("a1=%b,a0=%b,b1=%b,b0=%b,lt=%b,eq=%b,gt=%b",a1,a0,b1,b0,lt,eq,gt);

        for (i = 0; i < 4; i = i + 1) begin
        for (j = 0; j < 4; j = j + 1) begin
            {a1, a0} = i;
            {b1, b0} = j;
            #10;
        end
    end

    $finish;

    end
    
endmodule