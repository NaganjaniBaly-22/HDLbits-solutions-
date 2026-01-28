module top_module (input [31:0] a, input [31:0] b, output [31:0] sum);//
    wire c1_out;
    wire [15:0] sum_low, sum_high;
    add16 instance1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum_low), .cout(c1_out));
    add16 instance2(.a(a[31:16]), .b(b[31:16]), .cin(c1_out), .sum(sum_high), .cout());
    assign sum = {sum_high, sum_low};     
endmodule


module add1 ( input a, input b, input cin,   output sum, output cout );
    
    assign sum = a^b^cin;
    assign cout = (a&b) | (b&cin)|(cin&a) ; 

// Full adder module here

endmodule
