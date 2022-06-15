// --------------------------------------
// FileName: if-else
// Auther: Ch'in
// Email: kvinkin@qq.com
// Function:
// Version: 1.0
// Date: 2022.4.16
// Coryright:https://github.com/Ch1-n
// --------------------------------------
module ifelse (sel1, sel2, sel3, out);
  input sel1, sel2, sel3;
  output reg [1:0] out;
  always @(*) begin
    if (sel1) 
      out = 2'b00;
    else if (sel2)
      out = 2'b01;
    else if (sel3)
      out = 2'b10;
    else
      out = 2'b11;
  end
endmodule

module ifelse_tb;
  reg sel1, sel2, sel3;
  wire [1:0] out;
  initial begin
    sel1 = 1'b0;
    sel2 = 1'b0;
    sel3 = 1'b0;
    #10     sel1 = 1'b0;
            sel2 = 1'b0;
            sel3 = 1'b0;
    #10     sel1 = 1'b1;
            sel2 = 1'b0;
            sel3 = 1'b0;
    #10     sel1 = 1'b0;
            sel2 = 1'b1;
            sel3 = 1'b0;
    #10     sel1 = 1'b0;
            sel2 = 1'b0;
            sel3 = 1'b1;
    #10     sel1 = 1'b1;
            sel2 = 1'b1;
            sel3 = 1'b0;
    #10     sel1 = 1'b1;
            sel2 = 1'b1;
            sel3 = 1'b1;
  end

  ifelse ifelse(.sel1(sel1), .sel2(sel2), .sel3(sel3), .out(out));
	initial begin 
		$fsdbDumpfile("ifelse.fsdb");
		$fsdbDumpvars;
	end
  
endmodule
