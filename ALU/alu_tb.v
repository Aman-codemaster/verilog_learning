module alu_tb();
    reg [3:0]a;
    reg [3:0]b;
    reg [2:0]op;
    wire [3:0]y;

    alu uut(
        .a(a),
        .b(b),
        .op(op),
        .y(y)
    );
    initial begin

        $monitor("a=%b b=%b op=%b y=%b", a, b, op, y);

        $dumpfile("alu.vcd");
        $dumpvars(0, alu_tb);

        a = 4'b1010;
        b = 4'b0011;
        op = 3'b000;
        #10;

        op = 3'b001;
        #10;

        op = 3'b010;
        #10;

        op = 3'b011;
        #10;

        op = 3'b100;
        #10;

        op = 3'b101;
        #10;

        op = 3'b110;
        #10;

        op = 3'b111;
        #10;

        $finish;

    end

endmodule