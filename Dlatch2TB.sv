module dnandtb1();
     logic clk,D,rst;
     wire Q;
     DLatch2 tb(.clk(clk),.D(D),.rst(rst),.Q(Q));
     always #57 clk=!clk;
     initial begin
     $monitor(clk,D,Q);
     rst=0;
     clk=0;D=1;#101
     D=0;#101
     D=1;#101
     rst=1;#101
     D=0;#101
     D=1;#101
     $stop;
     end 
endmodule
