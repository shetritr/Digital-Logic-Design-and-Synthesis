// ====================================================================
//	File Name:		CatRecognizerWrapper.v
//	Description:	CatRecognizer Wrapper with APB interface
//
//
//	Date:			19/12/2018
//	Designers:		Maor Assayag, Refael Shetrit
// ==================================================================== 
module CatRecognizerWrapper (APB_interface.Cat_net interface_APB);

// PARAMETERS
   parameter Amba_Word = 24; // Part of the Amba standard at moodle site
   parameter Amba_Addr_Depth = 12; // Part of the Amba standard at moodle site
   parameter WeightPrecision = 5; // Bit depth of the weights and bias


CatRecognizer #(.Amba_Word(Amba_Word), .Amba_Addr_Depth(Amba_Addr_Depth), .WeightPrecision(WeightPrecision)) CatRecognizer_1(
        .clk (interface_APB.clk),
        .rst(interface_APB.rst),
        .PENABLE(interface_APB.PENABLE),
        .PSEL(interface_APB.PSEL),
        .PWRITE(interface_APB.PWRITE),
        .PADDR(interface_APB.PADDR),
        .PWDATA(interface_APB.PWDATA),
        .PRDATA(interface_APB.PRDATA),
        .CatRecOut(interface_APB.CatRecOut));
        
endmodule