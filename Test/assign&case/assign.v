// --------------------------------------
// FileName: assign
// Auther: Ch'in
// Email: kvinkin@qq.com
// Function:
// Version: 1.0
// Date: 2022.4.16
// Coryright:https://github.com/Ch1-n
// --------------------------------------
module assigntest (sel1, sel2, sel3, out);
  input sel1, sel2, sel3;
  output wire [1:0] out;
  assign out = sel1 ? 2'b00:
               sel2 ? 2'b01: 
               sel3 ? 2'b10:
               2'b11;
endmodule

module assigntest_tb;
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

  assigntest assigntest(.sel1(sel1), .sel2(sel2), .sel3(sel3), .out(out));
	initial begin 
		$fsdbDumpfile("ifelse.fsdb");
		$fsdbDumpvars;
	end
  
endmodule
