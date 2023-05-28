module mux4to1(input in0,in1,in2,in3,input [1:0]m,output logic out);
       always @(in0,in1,in2,in3,m)begin
       out=1'b0;
       case(m)
            2'b00: out = in0;
            2'b01: out = in1;
            2'b10: out = in2;
            2'b11: out = in3;
       endcase
       end
endmodule

module MSRR80(input clk,rst,input [7:0]sln,PI,input [1:0]mode,output logic [7:0]PO);
      wire [7:0]d; 

      mux4to1 G0(PI[7],PI[0],PI[1],sln[7],mode,d[7]);
      DLatch2 T0(.clk(clk),.D(d[7]),.rst(rst),.Q(PO[7]));

      mux4to1 G1(PI[6],PI[7],PI[0],sln[6],mode,d[6]);
      DLatch2 T1(.clk(clk),.D(d[6]),.rst(rst),.Q(PO[6]));

      mux4to1 G2(PI[5],PI[6],PI[7],sln[5],mode,d[5]);
      DLatch2 T2(.clk(clk),.D(d[5]),.rst(rst),.Q(PO[5]));

      mux4to1 G3(PI[4],PI[5],PI[6],sln[4],mode,d[4]);
      DLatch2 T3(.clk(clk),.D(d[4]),.rst(rst),.Q(PO[4]));

      mux4to1 G4(PI[3],PI[4],PI[5],sln[3],mode,d[3]);
      DLatch2 T4(.clk(clk),.D(d[3]),.rst(rst),.Q(PO[3]));

      mux4to1 G5(PI[2],PI[3],PI[4],sln[2],mode,d[2]);
      DLatch2 T5(.clk(clk),.D(d[2]),.rst(rst),.Q(PO[2]));

      mux4to1 G6(PI[1],PI[2],PI[3],sln[1],mode,d[1]);
      DLatch2 T6(.clk(clk),.D(d[1]),.rst(rst),.Q(PO[1]));

      mux4to1 G7(PI[0],PI[1],PI[2],sln[0],mode,d[0]);
      DLatch2 T7(.clk(clk),.D(d[0]),.rst(rst),.Q(PO[0]));
endmodule
