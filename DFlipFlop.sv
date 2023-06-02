module DFF(input clk,D,rst,output Q);
     wire Q0,clkb;
     DLatch2 G0(.clk(clk),.D(D),.rst(rst),.Q(Q0));
     not #(6,4)g0(clkb,clk);
     DLatch2 G1(.clk(clkb),.D(Q0),.rst(rst),.Q(Q));
endmodule
