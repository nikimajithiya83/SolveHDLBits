module top_module ( input a, input b, output out );
    mod_a A(
        .in1(a),
        .in2(b),
        .out(out)
    );

endmodule
