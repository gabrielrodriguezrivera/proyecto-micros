`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2017 17:02:52
// Design Name: 
// Module Name: mux2x5to5
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

//ESTE MUX ES PARA SELECCIONAR LA DIRECCION DE ESSCRITURA

module mux2x5to5(
AddrOut,
Addr0,
Addr1,
Select
);

output [4:0] AddrOut; // DIR DE SALIDA
input [4:0] Addr0, Addr1; // DIRECCIONES DE ENTRADA
input Select;

mux21 mux0(AddrOut[0],Addr0[0],Addr1[0],Select);
mux21 mux1(AddrOut[1],Addr0[1],Addr1[1],Select);
mux21 mux2(AddrOut[2],Addr0[2],Addr1[2],Select);
mux21 mux3(AddrOut[3],Addr0[3],Addr1[3],Select);
mux21 mux4(AddrOut[4],Addr0[4],Addr1[4],Select);

endmodule
