module top_module(input a,input b,input c,input d,output out, output out_n); 
    wire n1, n2;
    assign n1= a&b;
    assign n2= c&d;
    assign out = n1|n2;
    assign out_n = ~out;   
    // assign out = (a&b)|(c&d);  without using intermediate wires 
    // assign out_n = ~out; 
   
    
endmodule
