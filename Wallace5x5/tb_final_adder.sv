module tb_final_adder();

logic [9:0] a, b;  // Test input vectors
logic [9:0] s;     // Expected sum output
logic carry_out;   // Expected carry output

// Instantiate the CLA module
final_adder uut (
    .a(a),
    .b(b),
    .s(s),
    .carry_out(carry_out)
);

initial begin
    // Test case 1
    a = 10'b0000111100; 
    b = 10'b0000000011; 
    #10;
    $display("A = %b, B = %b, Sum = %b, Carry_out = %b", a, b, s, carry_out);

    // Test case 2
    a = 10'b1111111111; 
    b = 10'b0000000001; 
    #10;
    $display("A = %b, B = %b, Sum = %b, Carry_out = %b", a, b, s, carry_out);

    // Test case 3
    a = 10'b0101010101; 
    b = 10'b1010101010; 
    #10;
    $display("A = %b, B = %b, Sum = %b, Carry_out = %b", a, b, s, carry_out);

    // Test case 4
    a = 10'b0000000000; 
    b = 10'b0000000000; 
    #10;
    $display("A = %b, B = %b, Sum = %b, Carry_out = %b", a, b, s, carry_out);

    // Test case 5
    a = 10'b1111111111; 
    b = 10'b1111111111; 
    #10;
    $display("A = %b, B = %b, Sum = %b, Carry_out = %b", a, b, s, carry_out);

    // End simulation
    $finish;
end
endmodule