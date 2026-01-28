module top_module( input [31:0] a, input [31:0] b, input sub, output [31:0] sum);
    wire c1;
    wire [15:0] sum_low, sum_high;
    wire [31:0] b_xor;
    assign b_xor = b^ {32{sub}};
    add16 instance1(.a(a[15:0]), .b(b_xor[15:0]), .cin(sub), .sum(sum_low),  .cout(c1));
    add16 instance2(.a(a[31:16]), .b(b_xor[31:16]), .cin(c1), .sum(sum_high),  .cout());
    assign sum = {sum_high, sum_low};                                 
endmodule
