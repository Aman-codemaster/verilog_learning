module dff2 (
    input clk,
    input d,
    input reset,
    output reg q
);
    always @(posedge clk) begin
        if(reset)
            q<=1'b0;
        else
            q <= d;
    end
endmodule

module sipo(
    input clk,
    input Din,
    input reset,
    output [3:0]Q
);
    wire Q3;
    wire Q2;
    wire Q1;
    wire Q0;

    assign Q[3] = Q3;
    assign Q[2] = Q2;
    assign Q[1] = Q1;
    assign Q[0] = Q0;

     dff2 d3(
        .clk(clk),
        .d(Din),
        .reset(reset),
        .q(Q3)
    );

    dff2 d2(
        .clk(clk),
        .d(Q3),
        .reset(reset),
        .q(Q2)
    );

    dff2 d1(
        .clk(clk),
        .d(Q2),
        .reset(reset),
        .q(Q1)
    );

    dff2 d0(
        .clk(clk),
        .d(Q1),
        .reset(reset),
        .q(Q0)
    );


endmodule
