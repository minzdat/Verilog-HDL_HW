`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:58 04/20/2023 
// Design Name:    TruongMinhDat 
// Module Name:    testband
// Project Name:   VerilogHDL Homework	
// Target Devices: 
// Tool versions: 
// Description: 
/* 
	Kiem tra cac truong hop cua module GameController
*/
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module testband;

	// Inputs
	reg BtnA;
	reg BtnB;
	reg clear;

	// Outputs
	wire [6:0] LedA;
	wire [6:0] LedB;

	// Instantiate the Unit Under Test (UUT)
	GameController uut (
		.BtnA(BtnA), 
		.BtnB(BtnB), 
		.clear(clear), 
		.LedA(LedA), 
		.LedB(LedB)
	);

	initial begin
		// Initialize Inputs

		//Truong hop 1
		BtnA = 1; //0
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //1
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //2
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //3
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //4
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //5
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //6
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //7
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //8
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //9
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //clear
		BtnB = 1;
		clear = 0;
		
		//Truong hop 2
		BtnA = 1; //0
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1; //1
		BtnB = 0;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1; //2
		BtnB = 0;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1; //3
		BtnB = 0;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1; //4
		BtnB = 0;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1; //5
		BtnB = 0;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1; //6
		BtnB = 0;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1; //7
		BtnB = 0;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1; //8
		BtnB = 0;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1; //9
		BtnB = 0;
		clear = 1;
		#10;
		BtnA = 1; //clear
		BtnB = 0;
		clear = 0;

		//Truong hop 3
		BtnA = 1; //0
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //1
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 1;
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //2
		BtnB = 1;
		clear = 1;
		#10;
		BtnA = 0; //***
		BtnB = 0;
		clear = 1;
		
		BtnA = 0; //clear
		BtnB = 0;
		clear = 0;
				
		// Add stimulus here

	end      
endmodule
