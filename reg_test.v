module reg_test;


reg clk;
initial
begin
	
	//clk=0;
	//forever #1 clk=~clk;

	

end 


reg[4:0] rd,rs1,rs2;
reg we;
reg[63:0] rd_in;

wire[63:0] out1,out2;

register files
(
	.rd(rd),
	.rs1(rs1),
	.rs2(rs2),
	.rd_we(we),
	.rd_in(rd_in),
	.clk(clk),
	.out1(out1),
	.out2(out2)
);


integer i;
initial 
begin
	we=0;
	clk=0;
	#10
	for(i=0;i<32;i=i+1)
	begin 
		rd=i;
		rs1=i;
		rs2=i;
		we=~we;
		rd_in=i;
		$display("%d %d %d\n",out1,out2,rd_in);
		#2;
		clk=~clk;
		
		
	end
		
	$finish();
	

end

endmodule
