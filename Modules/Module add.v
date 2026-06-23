module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum1;
    wire [15:0] sum2;
    wire c1;
    
    add16 add1(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum1),
        .cout(c1)
       );
        
        add16 add2(
            .a(a[31:16]),
            .b(b[31:16]),
            .cin(c1),
            .sum(sum2),
            .cout()
        );
    
    assign sum = {sum2 , sum1};
        

endmodule
