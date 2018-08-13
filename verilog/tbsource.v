// synopsys translate_off
`timescale 1 ns / 10 ps
`define NULL 0
module tbsource#(
  parameter o_width          = 4         ,
  parameter inputFile        = "test.dat",
  parameter reqHoldTime      = 1.5
)(
  input  wire                clk ,
  input  wire                ld  ,
  output wire [o_width - 1:0]o 
);

reg [o_width - 1:0] tmp_o;
reg [o_width - 1:0] tmp_1;
wire   sys_clk;

integer inputFilePtr;
integer errcheck;   //data number per fileline
integer start_up;

/***************************************************/
/*this is a example for read date to variable      */
/*only one data in file line can be run success    */
/*make sure your file date type is one word in line*/
/***************************************************/  
assign sys_clk = clk;
assign #reqHoldTime o = tmp_o;

initial  begin
  start_up = 1;
  if (start_up == 1)
     begin
       inputFilePtr = $fopen(inputFile, "r");
       if(inputFilePtr == `NULL)
         $display("failture to open %s",inputFile);
       errcheck = $fscanf(inputFilePtr,"%b",tmp_o);
       start_up = 0;
     end
 end

always @(posedge sys_clk)begin
  if (ld && errcheck == 1 ) begin
    errcheck = $fscanf(inputFilePtr,"%b",tmp_o);
    $display("%b ",tmp_o);
  end
end
 
endmodule

