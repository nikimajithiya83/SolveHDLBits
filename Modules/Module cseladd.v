module top_module(
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] sum
);
    wire cout;
    wire [31:16] sum1, sum2;
    
    add16 add1(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(cout)
    );
    
    add16 add2(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .sum(sum1),
        .cout()
    );
    
    add16 add3(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .sum(sum2),
        .cout()
    );
    
    always @(*) begin
        case (cout) 
            1'b0 : sum[31:16] = sum1;
            1'b1 : sum[31:16] = sum2;
            default : sum[31:16] = 16'b0;
        endcase
    end

endmodule
