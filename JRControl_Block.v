`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2017 22:23:58
// Design Name: 
// Module Name: JRControl_Block
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


module JRControl_Block(
JRControl, 
ALUOp, 
Function
);

output JRControl;
reg JRControl;
input [1:0] ALUOp;
input [5:0] Function;
wire [7:0] test;

assign test = {ALUOp,Function};

always @(test)

case (test)
 8'b10001000 : JRControl=1'b1; 
 default: JRControl=1'b0;
 
 endcase
 
endmodule
