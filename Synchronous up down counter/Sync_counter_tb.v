`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 12:46:23
// Design Name: 
// Module Name: Sync_counter_tb
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


module Sync_counter_tb();
reg clk,m,reset,ta;
wire qa,qb,qc;
sync_counter dut(clk,reset,m,ta,qa,qb,qc);
initial begin 
  m = 1'b0;
  reset=1'b0;
  clk=1'b0;
  #20
  reset=1'b0;
  #60
  m = 1'b1;  
end
always begin 
#5
  clk=~clk;
end
initial begin 
ta = 1'b1;
end
endmodule
