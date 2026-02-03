module zero_detect (
    input  logic [7:0] a,
    input  logic [7:0] b,
    output logic enable
);

    assign enable = (a != 8'd0) && (b != 8'd0);

endmodule
