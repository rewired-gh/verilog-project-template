module converter_gray
#(
  parameter WIDTH = 8
)

(
  input   [2:0]           en_i,
  input   [WIDTH - 1:0]   data_i,
  output  [WIDTH - 1:0]   data_o
);

  wire en_out;

  assign en_out = en_i == 3'b100;

  genvar i;
  generate
    for (i = 0; i < WIDTH - 1; i = i + 1) begin
      assign data_o[i] = (data_i[i] !== data_i[i + 1]) && en_out;
    end
  endgenerate

  assign data_o[WIDTH - 1] = data_i[WIDTH - 1] && en_out;

endmodule