module jk_ff(
    input J,
    input K,
    input clk,
    output reg Q,
    output reg W
);

    always@(posedge clk) begin
        if(J && !K) begin
            Q<=1'b1;
            W<=1'b0;
        end
        else if(!J && K)begin
            Q<=1'b0;
            W<=1'b1;
        end
        else if(!J && !K)begin
            Q<=Q;
            W<=W;
        end
        else if(J && K)begin
            Q<=W;
            W<=Q;
        end
    end
endmodule