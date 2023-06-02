module dfftb2();
     logic clk,D,rst;
     wire Q;
     DFF2 tb(.clk(clk),.D(D),.rst(rst),.Q(Q));
     always #83 clk=!clk;
     initial begin
     $monitor(clk,D,Q);
     rst=0;
     clk=0;D=1;#203
     D=0;#203
     D=1;#203
     rst=1;#203
     D=0;#203
     D=1;#203
     $stop;
     end 
endmodule
