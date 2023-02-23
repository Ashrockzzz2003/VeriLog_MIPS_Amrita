module hello; // every verilog program is a module
  initial 
    begin
      $display("Hello, Verilog");
      $finish ;
    end
endmodule

// Run Code
// iverilog -o module_name file_name;
// vv module_name;