// --------------------------------------
// FileName: assign2
// Auther: Ch'in
// Email: kvinkin@qq.com
// Function:
// Version: 1.0
// Date: 
// Coryright:https://github.com/Ch1-n
// --------------------------------------
module assigntest2 (sel1, sel2, sel3, out);
  input sel1, sel2, sel3;
  output wire [1:0] out;
  assign out = ({2{sel1}} & 2'b00) 
                 | ({2{sel2}} & 2'b01)
                 | ({2{sel3}} & 2'b10);        
endmodule

module assigntest2_tb;
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
            sel3 = 1'b1;//out = 01 | 10 = 11
  end

  assigntest2 assigntest2(.sel1(sel1), .sel2(sel2), .sel3(sel3), .out(out));
	initial begin 
		$fsdbDumpfile("ifelse.fsdb");
		$fsdbDumpvars;
	end
  
endmodule