module top_module( input [31:0] a, input [31:0] b, output [31:0] sum);
    			wire [15:0] sum_low;
    			wire [15:0] sum_high0, sum_high1;
				wire sel;
                reg [15:0] sum_high;
    			add16 instance1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum_low), .cout(sel));
                add16 instance2(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sum_high0), .cout());
    			add16 instance3(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(sum_high1), .cout());
                                always@(*)
                                    case(sel)
                                        1'b0: sum_high = sum_high0;
                                        1'b1: sum_high = sum_high1;
                                        default: sum_high =16'b0;
                                    endcase 
                                        
                assign sum = {sum_high, sum_low};                                  
                                
endmodule
