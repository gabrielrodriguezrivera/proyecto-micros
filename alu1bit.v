`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2017 22:48:38
// Design Name: 
// Module Name: alu1bit
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


module alu1bit(
result,
crrout,
a,
b,
carryin,
less,
ALUControl
);

output result,crrout;

input a,b,carryin,less;

input [1:0] ALUControl;

addsub add1(addsubOut,crrout,a,b,carryin,ALUControl[1]);

xor #(50) xor1(xorOut,a,b);

mux21 mux2(xorlessOut,xorOut,less,ALUControl[1]);

mux21 mux3(result,addsubOut,xorlessOut,ALUControl[0]);

endmodule
