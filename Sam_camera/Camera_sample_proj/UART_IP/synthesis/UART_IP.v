// UART_IP.v

// Generated using ACDS version 23.1 991

`timescale 1 ps / 1 ps
module UART_IP (
		input  wire        address,    // avalon_rs232_slave.address
		input  wire        chipselect, //                   .chipselect
		input  wire [3:0]  byteenable, //                   .byteenable
		input  wire        read,       //                   .read
		input  wire        write,      //                   .write
		input  wire [31:0] writedata,  //                   .writedata
		output wire [31:0] readdata,   //                   .readdata
		input  wire        clk,        //                clk.clk
		input  wire        UART_RXD,   // external_interface.RXD
		output wire        UART_TXD,   //                   .TXD
		output wire        irq,        //          interrupt.irq
		input  wire        reset       //              reset.reset
	);

	UART_IP_rs232_0 rs232_0 (
		.clk        (clk),        //                clk.clk
		.reset      (reset),      //              reset.reset
		.address    (address),    // avalon_rs232_slave.address
		.chipselect (chipselect), //                   .chipselect
		.byteenable (byteenable), //                   .byteenable
		.read       (read),       //                   .read
		.write      (write),      //                   .write
		.writedata  (writedata),  //                   .writedata
		.readdata   (readdata),   //                   .readdata
		.irq        (irq),        //          interrupt.irq
		.UART_RXD   (UART_RXD),   // external_interface.export
		.UART_TXD   (UART_TXD)    //                   .export
	);

endmodule
