module top_module ( input clk, input d, output q );
    
    wire a, b;
    my_dff diff1(
        .clk(clk),
        .d(d),
        .q(a)
    );
    my_dff diff2(
        .clk(clk),
        .d(a),
        .q(b)
    );
    my_dff diff3(
        .clk(clk),
        .d(b),
        .q(q)
    );

endmodule
