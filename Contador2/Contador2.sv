module Contador2 (input logic  clk, output logic[3:0] s);
		logic direcao;
		logic rep1;
		logic rep2;
		
		always @(posedge clk)
		begin 
			 if(rep1) begin
				if (direcao)
					s = s - 4'd1;
				else
					 s = s + 4'd1;
				rep2 = 1'b1;
			 end
			 
			 else
				rep1 = 1'b1;
				
			 if((s==4'd15 || s==4'd0) && rep2) begin
                direcao = ~direcao;
                rep1 = 1'b0;
                rep2 = 1'b0;
          end
		end
				
endmodule
		
