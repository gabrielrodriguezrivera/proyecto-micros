`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2017 21:53:52
// Design Name: 
// Module Name: decoder
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


module decoder(
WriteEn,
RegWrite, 
WriteRegister
);

input RegWrite;
input [4:0] WriteRegister;
output [31:0] WriteEn;
wire [31:0] OE; // Output Enable

dec5to32 dec(OE,WriteRegister);

assign WriteEn[0]=0;

 and  #(50) gate1(WriteEn[1],OE[1],RegWrite);
 and  #(50) gate2(WriteEn[2],OE[2],RegWrite);
 and  #(50) gate3(WriteEn[3],OE[3],RegWrite);
 and  #(50) gate4(WriteEn[4],OE[4],RegWrite);
 and  #(50) gate5(WriteEn[5],OE[5],RegWrite);
 and  #(50) gate6(WriteEn[6],OE[6],RegWrite);
 and  #(50) gate7(WriteEn[7],OE[7],RegWrite);
 and  #(50) gate8(WriteEn[8],OE[8],RegWrite);
 and  #(50) gate9(WriteEn[9],OE[9],RegWrite);
 and  #(50) gate10(WriteEn[10],OE[10],RegWrite);
 and  #(50) gate11(WriteEn[11],OE[11],RegWrite);
 and  #(50) gate12(WriteEn[12],OE[12],RegWrite);
 and  #(50) gate13(WriteEn[13],OE[13],RegWrite);
 and  #(50) gate14(WriteEn[14],OE[14],RegWrite);
 and  #(50) gate15(WriteEn[15],OE[15],RegWrite);
 and  #(50) gate16(WriteEn[16],OE[16],RegWrite);
 and  #(50) gate17(WriteEn[17],OE[17],RegWrite);
 and  #(50) gate18(WriteEn[18],OE[18],RegWrite);
 and  #(50) gate19(WriteEn[19],OE[19],RegWrite);
 and  #(50) gate20(WriteEn[20],OE[20],RegWrite);
 and  #(50) gate21(WriteEn[21],OE[21],RegWrite);
 and  #(50) gate22(WriteEn[22],OE[22],RegWrite);
 and  #(50) gate23(WriteEn[23],OE[23],RegWrite);
 and  #(50) gate24(WriteEn[24],OE[24],RegWrite);
 and  #(50) gate25(WriteEn[25],OE[25],RegWrite);
 and  #(50) gate26(WriteEn[26],OE[26],RegWrite);
 and  #(50) gate27(WriteEn[27],OE[27],RegWrite);
 and  #(50) gate28(WriteEn[28],OE[28],RegWrite);
 and  #(50) gate29(WriteEn[29],OE[29],RegWrite);
 and  #(50) gate30(WriteEn[30],OE[30],RegWrite);
 and  #(50) gate31(WriteEn[31],OE[31],RegWrite);
 
endmodule


