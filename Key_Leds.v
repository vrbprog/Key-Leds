
module Key_Leds(
   //////////// CLOCK ////////
	input CLOCK_50,
	//////////// LED //////////
	output [7:0] LED,
	//////////// KEY //////////
	input [1:0]	KEY
);

//=======================================================
//  REG/WIRE declarations
//=======================================================
	reg [27:0] count;

//=======================================================
//  Structural coding
//=======================================================

    assign LED = { count[27:22], KEY };
	 
	 always @(posedge CLOCK_50) 
    begin
        count <= count + 28'b1;
    end

endmodule
