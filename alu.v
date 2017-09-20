`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2017 22:45:46
// Design Name: 
// Module Name: alu
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


module alu(
Output, 
CarryOut,
zero,
overflow, 
negative, 
BussA, 
BussB, 
ALUControl
);

output CarryOut,overflow,negative,zero;
output [31:0] Output;
input [31:0] BussA,BussB;
input [1:0] ALUControl;
wire lessthan;
wire [31:0] crrout;

alu1bit alu0(Output[0],crrout[0],BussA[0],BussB[0],ALUControl[1],lessthan,ALUControl);
alu1bit alu1(Output[1],crrout[1],BussA[1],BussB[1],crrout[0],1'b0,ALUControl);
alu1bit alu2(Output[2],crrout[2],BussA[2],BussB[2],crrout[1],1'b0,ALUControl);
alu1bit alu3(Output[3],crrout[3],BussA[3],BussB[3],crrout[2],1'b0,ALUControl);
alu1bit alu4(Output[4],crrout[4],BussA[4],BussB[4],crrout[3],1'b0,ALUControl);
alu1bit alu5(Output[5],crrout[5],BussA[5],BussB[5],crrout[4],1'b0,ALUControl);
alu1bit alu6(Output[6],crrout[6],BussA[6],BussB[6],crrout[5],1'b0,ALUControl);
alu1bit alu7(Output[7],crrout[7],BussA[7],BussB[7],crrout[6],1'b0,ALUControl);
alu1bit alu8(Output[8],crrout[8],BussA[8],BussB[8],crrout[7],1'b0,ALUControl);
alu1bit alu9(Output[9],crrout[9],BussA[9],BussB[9],crrout[8],1'b0,ALUControl);
alu1bit alu10(Output[10],crrout[10],BussA[10],BussB[10],crrout[9],1'b0,ALUControl);
alu1bit alu11(Output[11],crrout[11],BussA[11],BussB[11],crrout[10],1'b0,ALUControl);
alu1bit alu12(Output[12],crrout[12],BussA[12],BussB[12],crrout[11],1'b0,ALUControl);
alu1bit alu13(Output[13],crrout[13],BussA[13],BussB[13],crrout[12],1'b0,ALUControl);
alu1bit alu14(Output[14],crrout[14],BussA[14],BussB[14],crrout[13],1'b0,ALUControl);
alu1bit alu15(Output[15],crrout[15],BussA[15],BussB[15],crrout[14],1'b0,ALUControl);
alu1bit alu16(Output[16],crrout[16],BussA[16],BussB[16],crrout[15],1'b0,ALUControl);
alu1bit alu17(Output[17],crrout[17],BussA[17],BussB[17],crrout[16],1'b0,ALUControl);
alu1bit alu18(Output[18],crrout[18],BussA[18],BussB[18],crrout[17],1'b0,ALUControl);
alu1bit alu19(Output[19],crrout[19],BussA[19],BussB[19],crrout[18],1'b0,ALUControl);
alu1bit alu20(Output[20],crrout[20],BussA[20],BussB[20],crrout[19],1'b0,ALUControl);
alu1bit alu21(Output[21],crrout[21],BussA[21],BussB[21],crrout[20],1'b0,ALUControl);
alu1bit alu22(Output[22],crrout[22],BussA[22],BussB[22],crrout[21],1'b0,ALUControl);
alu1bit alu23(Output[23],crrout[23],BussA[23],BussB[23],crrout[22],1'b0,ALUControl);
alu1bit alu24(Output[24],crrout[24],BussA[24],BussB[24],crrout[23],1'b0,ALUControl);
alu1bit alu25(Output[25],crrout[25],BussA[25],BussB[25],crrout[24],1'b0,ALUControl);
alu1bit alu26(Output[26],crrout[26],BussA[26],BussB[26],crrout[25],1'b0,ALUControl);
alu1bit alu27(Output[27],crrout[27],BussA[27],BussB[26],crrout[26],1'b0,ALUControl);
alu1bit alu28(Output[28],crrout[28],BussA[28],BussB[28],crrout[27],1'b0,ALUControl);
alu1bit alu29(Output[29],crrout[29],BussA[29],BussB[29],crrout[28],1'b0,ALUControl);
alu1bit alu30(Output[30],crrout[30],BussA[30],BussB[30],crrout[29],1'b0,ALUControl);
alu1bit alu31(Output[31],crrout[31],BussA[31],BussB[31],crrout[30],1'b0,ALUControl);

not #(50) notcarry(notcr31,crrout[31]);
// Carryout = Not carry out 31 if it is subtraction

mux21 muxcarry31(CarryOut,crrout[31],notcr31,ALUControl[1]);

xor #(50) xor5(overflow,crrout[30],crrout[31]);
// SLT

addsub add2(addsub31Out,crrout31,BussA[31],BussB[31],crrout[30],ALUControl[1]);

xor #(50) xor6(lessthan,overflow,addsub31Out);

assign negative = Output[31];

or #(50) or1(o1,Output[0],Output[1],Output[2],Output[3]);

or #(50) or2(o2,Output[4],Output[5],Output[6],Output[7]);

or #(50) or3(o3,Output[8],Output[9],Output[10],Output[11]);

or #(50) or4(o4,Output[12],Output[13],Output[14],Output[15]);

or #(50) or5(o5,Output[16],Output[17],Output[18],Output[19]);

or #(50) or6(o6,Output[20],Output[21],Output[22],Output[23]);

or #(50) or7(o7,Output[24],Output[25],Output[26],Output[27]);

or #(50) or8(o8,Output[28],Output[29],Output[30],Output[31]);

or #(50) or9(o9,o1,o2,o3,o4);

or #(50) or10(o10,o5,o6,o7,o8);

nor #(50) nor1(zero,o9,o10);

endmodule