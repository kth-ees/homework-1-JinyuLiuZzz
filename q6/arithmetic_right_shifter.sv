module arithmetic_right_shifter #(parameter N) (
  input logic [N-1:0] input_data,
  input logic [1:0] control,
  output logic [N-1:0] shifted_result
);
  always_comb begin
    shifted_result = input_data;
    for (int i = 0; i < int'(control); i++) begin
      shifted_result = {shifted_result[N-1], shifted_result[N-1:1]};
    end
  end
  // complete the module
endmodule
