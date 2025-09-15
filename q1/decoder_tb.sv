module decoder_tb;

  // Testbench signals
  logic [3:0] binary;
  logic [15:0] one_hot;

  // Instantiate the decoder module
  decoder uut (
    .binary(binary),
    .one_hot(one_hot)
  );
  initial begin
    // Test all possible binary inputs
    for (int i = 0; i < 16; i++) begin
      binary = i;
      #10; // Wait for some time to observe the output
      $display("binary: %0d, one_hot: %b", binary, one_hot);
    end
    $finish;
  end
  // Complete your testbench here
endmodule
