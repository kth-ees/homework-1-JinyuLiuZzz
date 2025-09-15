module arithmetic_right_shifter_tb;

  localparam N = 5;

  // Inputs
  logic [N-1:0] input_data;
  logic [1:0] control; 
  // Outputs
  logic [N-1:0] shifted_result;

  arithmetic_right_shifter #(N) uut (
    .input_data(input_data),
    .control(control),
    .shifted_result(shifted_result)
  );
  // Test
  initial begin
    input_data = 5'b11110;
    for (int i = 0; i < 4; i++) begin
      control = i;
      #20;
      $display("input_data: %b, shifted_result: %b", input_data, shifted_result);
    end
    $stop;
  end


endmodule
