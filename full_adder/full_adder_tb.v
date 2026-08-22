module full_adder_tb;
    reg A;
    reg B;
    reg Cin;
    wire S;
    wire Co;

    full_adder uut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Co(Co)
    );

    initial begin
        $monitor("A=%b ,B=%b, Cin=%b, S=%b,  Co=%b",A,B,Cin,S,Co);
        
        A=0;
        B=0;
        Cin=0;
        #10;

        A=0;
        B=0;
        Cin=1;
        #10;

        A=0;
        B=1;
        Cin=0;
        #10;

        A=0;
        B=1;
        Cin=1;
        #10;

        A=1;
        B=0;
        Cin=0;
        #10;

        A=1;
        B=0;
        Cin=1;
        #10;

        A=1;
        B=1;
        Cin=0;
        #10;

        A=1;
        B=1;
        Cin=1;
        #10;
        $finish;
    end
endmodule