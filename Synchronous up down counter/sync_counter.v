`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 12:24:31
// Design Name: 
// Module Name: sync_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sync_counter(input clk,reset,m,ta,output qa,qb,qc);
wire tb,tc;
assign tb = (~m&qa)|(m&~qa);
assign tc = (~m&qa&qb)|(m&~qb&~qa); 
 TFF tf1(clk,reset,ta,qa);
 TFF tf2(clk,reset,tb,qb);
 TFF tf3(clk,reset,tc,qc);
endmodule 
module TFF(input clk,reset,t,output reg q,output qbar);
  always @(negedge clk) begin
  if(reset)
  q<=0;
  else
      case(t)
		1'b0:q <= q;
		1'b1:q <= ~q;
		 endcase
   end
 initial begin
   q=1'b0;
end
endmodule 
