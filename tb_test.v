`timescale 1ns/1ns
module tb_test ();
    reg clk = 0;
    reg rst_n = 1;
    wire [1:0]cnt;

    test inst(
        .clk    (clk),
        .rst_n  (rst_n),
        .cnt    (cnt)
    );

    always #10 clk <= ~clk;
    initial begin
        #5 rst_n <= 1'b0;
        #5 rst_n <= 1'b1;
        #100 $finish;
    end
    
endmodule