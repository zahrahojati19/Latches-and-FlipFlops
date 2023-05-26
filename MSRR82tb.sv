module MSRRtb2();
     logic clk,rst;
     logic [7:0]sln,PI;
     logic [1:0]mode;
     wire [7:0]PO2,PO0;
     MSRR82 tb0(.clk(clk),.rst(rst),.PI(PI),.sln(sln),.mode(mode),.PO(PO2));
     MSRR80 tb1(.clk(clk),.rst(rst),.PI(PI),.sln(sln),.mode(mode),.PO(PO0));
     always #503 clk=!clk;
     initial begin 
         clk=0;rst=0;
         PI=$random%8;
         sln=$random%8;#19
         mode=2'b00;#1001
         mode=2'b01;#1001
         mode=2'b10;#1001
         mode=2'b11;#1001
         rst=1;#1001
         PI=$random%8;#19
         $stop;
     end
endmodule
