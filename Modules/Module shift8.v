module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] a,b,c;
    reg [7:0] out;
    
    my_dff8 dff1(
        .clk(clk),
        .d(d),
        .q(a)
    );
    
    my_dff8 dff2(
        .clk(clk),
        .d(a),
        .q(b)
    );
    
    my_dff8 dff3(
        .clk(clk),
        .d(b),
        .q(c)
    );
    
    always @(*) begin
        case(sel)
            2'b00 : out = d;
            2'b01 : out = a;
            2'b10 : out = b;
            2'b11 : out = c;
            default : out = 8'b00000000;
        endcase
    end
    
    assign q = out;

endmodule
