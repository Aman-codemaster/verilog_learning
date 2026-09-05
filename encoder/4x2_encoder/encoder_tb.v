module encoder_tb();
    reg i1;
    reg i2;
    reg i3;
    reg i4;
    wire y1;
    wire y2;

    encoder uut(
        .i1(i1),
        .i2(i2),
        .i3(i3),
        .i4(i4),
        .y1(y1),
        .y2(y2)
    );

    initial begin 
        $dumpfile("encoder.vcd");
        $dumpvars(0,encoder_tb);
        $monitor("i1=%b,i2=%b,i3=%b,i4=%b,y1=%b,y2=%b",i1,i2,i3,i4,y1,y2);

        i1=1;
        i2=0;
        i3=0;
        i4=0;
        #10;

        i1=0;
        i2=1;
        i3=0;
        i4=0;
        #10;
        
        i1=0;
        i2=0;
        i3=1;
        i4=0;
        #10;
        
        i1=0;
        i2=0;
        i3=0;
        i4=1;
        #10;
        $finish;
    end
endmodule