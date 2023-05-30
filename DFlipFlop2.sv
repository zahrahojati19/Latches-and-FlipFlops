module DFF2(input clk,D,rst,output logic Q);
     always @(posedge clk,posedge rst)begin
          if(rst) Q<=1'b0;
          else Q<=D;
     end
endmodule

  
