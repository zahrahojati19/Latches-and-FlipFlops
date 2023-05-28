module dnandtb();
     logic clk,D;
     wire Q;
     DLatch tb(.clk(clk),.D(D),.Q(Q));
     always #47 clk=!clk;
     initial begin
     $monitor(clk,D,Q);
     clk=0;D=1;#101
     D=0;#101
     D=1;#101
     $stop;
     end 
endmodule