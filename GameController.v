`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:58 04/20/2023 
// Design Name:    TruongMinhDat 
// Module Name:    GameController
// Project Name:   VerilogHDL Homework	
// Target Devices: 
// Tool versions: 
// Description:    
/*	
	Thiet ke he thong dieu khien tro choi nhu sau: He thong co 3 nut nhan (BtnA, BtnB, Clear, 
	tich cuc muc thap), 2 led 7 đoạn anode chung (dat ten LedA, LedB). 
	- Khi moi cap nguon, he thong hien thi 0 và 0 o LedA va LedB 
	- Neu nhan BtnA thi LedA tang len 1 don vi, trong thoi gian BtnA con o muc thap thi BtnB 
	khong co tac dung 
	- Nguoc lai nhan BtnB thi LedB tang len 1 don vi, trong thoi gian BtnB con o muc thap thi 
	BtnA khong co tac dung		
*/
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module GameController(
	input wire BtnA, BtnB, clear,
	output wire[6:0] LedA,LedB 
    	);
	wire c1, c2;
	ButtonEnable ButtonEn (.En1(BtnA),.En0(BtnB),.Q0(c1),.Q1(c2));
	Control_Led7seg Control_LedA (.Btn(c1),.CLR(clear),.Led(LedA));		
	Control_Led7seg Control_LedB (.Btn(c2),.CLR(clear),.Led(LedB));
endmodule

module ButtonEnable(
	input wire En1,En0,
	output wire Q0,Q1
	);
	assign Q0= En1 || !En0;
	assign Q1= !En1 || En0;
endmodule

module Control_Led7seg(
	input Btn, CLR, // CLR tuong ung khi nhan nut clear
	output reg[6:0] Led
   	);
	 // Ngo vao tich cuc thap
	 // Led 7 doan anode chung, 0 sang 1 tat
	 // MS bit xxxxxxx tuong ung voi g f e d c b a
	reg [3:0] count=4'b0000;
	//Xu ly chuong trinh
	always @(*) begin
			  if (Btn == 1'b0) begin // Khi nhan Btn(button) 
					if (count <= 4'b1001) begin
						count = count + 1'b1;
					end
					else begin
						count=count; 
					end
			  end 
			  else begin // Khi khong nhan Btn(button) 
					count=count;
			  end
			  if (CLR == 1'b0) begin // Khi nhan nut clear, bat chap ngo vao Btn, gia tri hien thi luon bang 0
					count = 4'b0000;
			  end		
			  else begin
					count=count;
			  end
			case(count)
					  4'b0000:Led = 7'b1000000; // hien thi 0
					  4'b0001:Led = 7'b1111001; // hien thi 1
					  4'b0010:Led = 7'b0100100; // hien thi 2
					  4'b0011:Led = 7'b0110000; // hien thi 3
					  4'b0100:Led = 7'b0011001; // hien thi 4
					  4'b0101:Led = 7'b0010010; // hien thi 5
					  4'b0110:Led = 7'b0000010; // hien thi 6
					  4'b0111:Led = 7'b1111000; // hien thi 7
					  4'b1000:Led = 7'b0000000; // hien thi 8
					  4'b1001:Led = 7'b0010000; // hien thi 9
			endcase
		end
endmodule
