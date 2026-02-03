module systolic_2x2_tb;

    logic clk, rst, enable;
    logic [7:0] a0, a1, b0, b1;
    logic [15:0] c00, c01, c10, c11;

    systolic_2x2 dut (
        clk, rst, enable,
        a0, a1, b0, b1,
        c00, c01, c10, c11
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        enable = 0;
        a0 = 0; a1 = 0; b0 = 0; b1 = 0;

        #10 rst = 0;
        enable = 1;

        // Matrix A = [1 2], Matrix B = [5 7]
        a0 = 8'd1; a1 = 8'd2;
        b0 = 8'd5; b1 = 8'd7;

        #20 $finish;
    end

endmodule
