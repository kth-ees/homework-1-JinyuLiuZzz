module count_1_tb;

  // Inputs
  logic [3:0] a;

  // Outputs
  logic [2:0] out;

  count_1 uut (
    .a(a),
    .out(out)
  );
  // Test
  initial begin
  
    for (int i = 0; i < 16; i++) begin
      a = i;
      #20;
      $display("a: %0b, out: %0d", a, out);
    end
    $stop;
  end
  // complete
endmodule
