`timescale 1ns/1ps
`include "module.v"

module converter_gray_tb ();

  reg [2:0] en;
  reg [7:0] data_in;

  wire [7:0] data_out;

  converter_gray U_conv (
    .en_i (en),
    .data_i (data_in),
    .data_o (data_out)
  );

  integer i;
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(1, converter_gray_tb);

    en = 3'b100;

    for (i = 8'h00; i <= 8'hff; i = i + 1) begin
      data_in = i;
      #10;
    end

    en = 3'b101;
    #10;
    en = 3'b111;
    #10;
    en = 3'b110;
    #10;
    en = 3'b000;
    #10;

    $finish;

  end

endmodule