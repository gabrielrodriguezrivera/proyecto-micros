`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2017 22:14:11
// Design Name: 
// Module Name: InstructionMem
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


module InstructionMem(
instruccion,
dir
);
input [31:0] dir;
output [31:0] instruccion;
reg [31:0] meminst[1024:0]; //se define el tamaño de la emmoria de isntrucciones en 1024 B
reg [31:0] temp;

buf #1000  //se crean 32 compuertas buffer con la salida y el registro temporal
   buf0(instruccion[0],temp[0]),
   buf1(instruccion[1],temp[1]),
   buf2(instruccion[2],temp[2]),
   buf3(instruccion[3],temp[3]),
   buf4(instruccion[4],temp[4]),
   buf5(instruccion[5],temp[5]),
   buf6(instruccion[6],temp[6]),
   buf7(instruccion[7],temp[7]),
   buf8(instruccion[8],temp[8]),
   buf9(instruccion[9],temp[9]),
   buf10(instruccion[10],temp[10]),
   buf11(instruccion[11],temp[11]),
   buf12(instruccion[12],temp[12]),
   buf13(instruccion[13],temp[13]),
   buf14(instruccion[14],temp[14]),
   buf15(instruccion[15],temp[15]),
   buf16(instruccion[16],temp[16]),
   buf17(instruccion[17],temp[17]),
   buf18(instruccion[18],temp[18]),
   buf19(instruccion[19],temp[19]),
   buf20(instruccion[20],temp[20]),
   buf21(instruccion[21],temp[21]),
   buf22(instruccion[22],temp[22]),
   buf23(instruccion[23],temp[23]),
   buf24(instruccion[24],temp[24]),
   buf25(instruccion[25],temp[25]),
   buf26(instruccion[26],temp[26]),
   buf27(instruccion[27],temp[27]),
   buf28(instruccion[28],temp[28]),
   buf29(instruccion[29],temp[29]),
   buf30(instruccion[30],temp[30]),
   buf31(instruccion[31],temp[31]);
   
always @(dir) //se recorre la memoria y se guardan los datos en temp
begin
    temp=meminst[dir/4];
end

initial
begin
$readmemb("instrucciones.txt",meminst); //para leer instrucciones de emsamblador en formato binario y guardarlos en la memoria
end

endmodule
