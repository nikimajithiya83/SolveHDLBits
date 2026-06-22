module top_module( 
    input [15:0] a, b, c, d, e, f, g, h, i,
    input [3:0] sel,
    output [15:0] out );
    
    reg [15:0] y;
    
    always @(*) begin
        case(sel)
            4'd0 : y = a;
            4'd1 : y = b;
            4'd2 : y = c;
            4'd3 : y = d;
            4'd4 : y = e;
            4'd5 : y = f;
            4'd6 : y = g;
            4'd7 : y = h;
            4'd8 : y = i;
            4'd9,
            4'd10,
            4'd11,
            4'd12,
            4'd13,
            4'd14,
            4'd15 : y = 16'hffff;
            default : y = 16'd0;
        endcase
    end
    
    assign out = y;
    

endmodule
