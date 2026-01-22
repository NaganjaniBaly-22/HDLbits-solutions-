module top_module(input [31:0] a, input [31:0] b, output [31:0] sum);
    wire c1;
    wire [15:0]sum1,sum2;
    add16 instance1(.a(a[15:0]),.b(b[15:0]),.cin(1'b0), .sum(sum1),.cout(c1));
    add16 instance2(.a(a[31:16]), .b(b[31:16]), .cin(c1), .sum(sum2), .cout());
    assign sum={sum2,sum1}; 
endmodule
