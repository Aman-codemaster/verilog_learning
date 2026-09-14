module tff(
    input t,
    input clk,
    output reg q,
    output reg w
);
    

    initial begin
        q = 1'b0;
        w = 1'b1;
    end
    always@(posedge clk) begin
        if(!t) begin
            q<=q;
            w<=w;
        end
        else if(t) begin
            q<=w;
            w<=q;
        end
    end
endmodule