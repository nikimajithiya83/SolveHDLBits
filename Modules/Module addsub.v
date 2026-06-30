module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] bx;
    wire cout;
    
    assign bx = b ^ {32{sub}};
    
    add16 add1(
        .a(a[15:0]),
        .b(bx[15:0]),
        .cin(sub),
        .sum(sum[15:0]),
        .cout(cout)
    );
    
    add16 add2(
        .a(a[31:16]),
        .b(bx[31:16]),
        .cin(cout),
        .sum(sum[31:16]),
        .cout()
    );

endmodule
