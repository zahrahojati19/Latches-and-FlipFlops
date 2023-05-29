module DLatch(input clk,D,output logic Q);
      wire dc,dcb,Qbar;
      nand #(6,8)G1(dc,D,clk);
      nand #(6,8)G2(dcb,dc,clk);
      nand #(6,8)G3(Qbar,dcb,Q);
      nand #(6,8)G4(Q,Qbar,dc);
endmodule
