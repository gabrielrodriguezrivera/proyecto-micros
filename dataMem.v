`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2017 16:40:10
// Design Name: 
// Module Name: dataMem
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


module dataMem(
dato,
dir,
writedato, //para escribir dato
writeEN, //para habilitar el dato
MemRead, //para leer en la memoria
clk
);

//se declaran las salidas y entradas de la memoria de datos
input [31:0] dir, writedato;
input writeEN,MemRead, clk;
output [31:0] dato;

reg [7:0] datamem[1023:0];
reg [31:0] temp;

//se usa la compuerta buf en la cual el dato de entrada es el mismo de la salida, asi se almacenan en temp los datos
buf #1000  
   buf0(dato[0],temp[0]),
   buf1(dato[1],temp[1]),
   buf2(dato[2],temp[2]),
   buf3(dato[3],temp[3]),
   buf4(dato[4],temp[4]),
   buf5(dato[5],temp[5]),
   buf6(dato[6],temp[6]),
   buf7(dato[7],temp[7]),
   buf8(dato[8],temp[8]),
   buf9(dato[9],temp[9]),
   buf10(dato[10],temp[10]),
   buf11(dato[11],temp[11]),
   buf12(dato[12],temp[12]),
   buf13(dato[13],temp[13]),
   buf14(dato[14],temp[14]),
   buf15(dato[15],temp[15]),
   buf16(dato[16],temp[16]),
   buf17(dato[17],temp[17]),
   buf18(dato[18],temp[18]),
   buf19(dato[19],temp[19]),
   buf20(dato[20],temp[20]),
   buf21(dato[21],temp[21]),
   buf22(dato[22],temp[22]),
   buf23(dato[23],temp[23]),
   buf24(dato[24],temp[24]),
   buf25(dato[25],temp[25]),
   buf26(dato[26],temp[26]),
   buf27(dato[27],temp[27]),
   buf28(dato[28],temp[28]),
   buf29(dato[29],temp[29]),
   buf30(dato[30],temp[30]),
   buf31(dato[31],temp[31]);

always @(posedge clk) //si se habilita la escritura separo de acucerdo a la dirección los 8 bits para escribibr el dato en memoria
 if (writeEN)
 begin
  datamem[dir]=writedato[31:24];
  datamem[dir+1]=writedato[23:16];
  datamem[dir+2]=writedato[15:8];
  datamem[dir+3]=writedato[7:0];
 end
 
always @(dir or datamem[dir] or datamem[dir+1] or datamem[dir+2] or datamem[dir+3])
 begin
  temp={datamem[dir],datamem[dir+1],datamem[dir+2],datamem[dir+3]};
 end
 
endmodule



