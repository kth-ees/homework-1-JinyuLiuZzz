module decoder (
  input logic [3:0] binary,
  output logic [15:0] one_hot
);
  always_comb begin
    one_hot = (16'b1 << binary);
  end
endmodule


