module mux4to1(input in0,in1,in2,in3,input [1:0]m,output logic out);
       assign out = (m==2'b00)? in0:
                    (m==2'b01)? in1:  
                    (m==2'b10)? in2:
                    (m==2'b11)? in3:1'bx;
endmodule

module MSRR81(input clk,rst,input [7:0]sln,PI,input [1:0]mode,output logic [7:0]PO);
      wire [7:0]d;
      generate
         genvar i;
         for(i=7;-1<i;i=i-1)begin 
           if(i==7)begin
             mux4to1 G0(PI[i],PI[0],PI[1],sln[i],mode,d[i]);
           if(i==6)
             mux4to1 G1(PI[i],PI[i+1],PI[0],sln[i],mode,d[i]);
           else
             mux4to1 G2(PI[i],PI[i+1],PI[i+2],sln[i],mode,d[i]);
           end
           DFF T(.clk(clk),.D(d[i]),.rst(rst),.Q(PO[i]));
         end
      endgenerate
endmodule
