module dff1 (
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

module siso(
    input Din,
    input clk,
    input reset,
    output Q
);
    wire Q3;
    wire Q2;
    wire Q1;
    wire Q0;
    wire D3;
    

    assign Q = Q0;

    dff1 d3(
        .clk(clk),
        .d(Din),
        .reset(reset),
        .q(Q3)
    );

    dff1 d2(
        .clk(clk),
        .d(Q3),
        .reset(reset),
        .q(Q2)
    );

    dff1 d1(
        .clk(clk),
        .d(Q2),
        .reset(reset),
        .q(Q1)
    );

    dff1 d0(
        .clk(clk),
        .d(Q1),
        .reset(reset),
        .q(Q0)
    );

endmodule