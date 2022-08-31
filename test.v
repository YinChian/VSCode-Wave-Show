module test (
    input clk,
    input rst_n,
    output reg [1:0]cnt
);

    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) cnt <= 2'b0;
        else if(cnt == 2'b11) cnt <= 2'b00;
        else cnt <= cnt + 2'b1;
    end
    
endmodule