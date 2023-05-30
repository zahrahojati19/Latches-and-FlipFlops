module DLatch2(input clk,D,rst,output logic Q);
      wire dc,dcb,Qbar,q,rstb,l;
      nand #(6,8)G1(dc,D,clk);
      nand #(6,8)G2(dcb,dc,clk);
      nand #(6,8)G3(Qbar,dcb,q);
      nand #(6,8)G4(q,Qbar,dc);
      nor #(12,4)G5(Q,Qbar,rst);
endmodule
