module Contador(input logic clk, 
                 output logic[3:0] s);
    logic direcao = 1'b0;

    always @(posedge clk)
      begin

          if(direcao)
                s = s - 4'd1;
            else
                s = s + 4'd1;

            if(s==4'd15 || s==4'd0)
                direcao = ~direcao;
        end
endmodule 
