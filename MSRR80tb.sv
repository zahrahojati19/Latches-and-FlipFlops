module MSRRtb();
     logic clk,rst;
     logic [7:0]sln,PO;
     logic [1:0]mode;
     MSRR80 tb(.clk(clk),.rst(rst),.sln(sln),.mode(mode),.PO(PO));
     always #403 clk=!clk;
     initial begin 
         clk=0;rst=0;
         PO=$random%8;
         sln=$random%8;#19
         mode=2'b00;#503
         mode=2'b01;#503
         mode=2'b10;#503
         mode=2'b11;#503
         rst=1;#503
         PO=$random%8;#19
         $stop;
     end
endmodule
