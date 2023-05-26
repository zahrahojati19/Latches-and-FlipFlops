module MSRRtb1();
     logic clk,rst;
     logic [7:0]sln,PO;
     logic [1:0]mode;
     MSRR81 tb(.clk(clk),.rst(rst),.sln(sln),.mode(mode),.PO(PO));
     always #503 clk=!clk;
     initial begin 
         repeat(3)begin
           clk=0;rst=0;
           PO=$random%8;
           sln=$random%8;#19
           mode=2'b00;#1001
           mode=2'b01;#1001
           mode=2'b10;#1001
           mode=2'b11;#1001
           rst=1;#1001
           PO=$random%8;#19
           $stop;
         end
     end
endmodule
