module MSRR82(input clk,rst,input [7:0]sln,PI,input [1:0]mode,output logic [7:0]PO);
       always @(posedge clk,posedge rst)begin
             if(rst)	
		PO<=7'b0;
             else
		case(mode)
		     2'b00: PO<={PI[7:0]};
                     2'b01: PO<={PI[0],PI[7:1]};
                     2'b10: PO<={PI[1:0],PI[7:2]};
                     2'b11: PO<=sln;
		endcase
	end
endmodule