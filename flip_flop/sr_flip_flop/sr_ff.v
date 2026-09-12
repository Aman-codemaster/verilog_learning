module sr_ff (
    input S,
    input R,
    input clk,
    output reg Q,
    output reg W
);
    always @(posedge clk) begin
        if(S && !R) begin
            Q <= 1'b1;
            W <= 1'b0;
        end
        else if(!S && R) begin
            Q<=1'b0;
            W<=1'b1;
        end
        else if (!S && !R) begin
            Q<=Q;
            W<=W;
        end
    end    
endmodule