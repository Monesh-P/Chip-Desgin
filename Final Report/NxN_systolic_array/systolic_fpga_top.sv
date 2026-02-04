module systolic_fpga_top (
    input  logic clk,
    input  logic rst,
    input  logic start,
    output logic done
);

    localparam N = 8;
    localparam DATA_W = 8;
    localparam ACC_W  = 16;

    logic [DATA_W-1:0] A_in [0:N-1];
    logic [DATA_W-1:0] B_in [0:N-1];
    logic [ACC_W-1:0]  C    [0:N-1][0:N-1];

    systolic_array #(
        .N(N),
        .DATA_W(DATA_W),
        .ACC_W(ACC_W)
    ) dut (
        .clk(clk),
        .rst(rst),
        .A_in(A_in),
        .B_in(B_in),
        .C(C)
    );

    // simple control
    always_ff @(posedge clk) begin
        if (rst) begin
            done <= 0;
        end else if (start) begin
            // preload matrices internally (later: BRAM / AXI)
            done <= 1;
        end
    end
endmodule
