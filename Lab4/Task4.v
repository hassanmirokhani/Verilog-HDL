//stimulus module
module msjkff(q,qb,j,k,clk,clr);
input j,k,clk,clr;
wire a,b,c,x,y,z,clkb;
output q,qb;
assign a=!(j&clr&clk&qb);
assign b=!(a&y);
assign c=!(b&x&clkb);
assign q=!(c&qb);
assign x=!(clk&k&q);
assign y=!(b&x&clr);
assign z=!(clkb&y);
assign qb=!(clr&z&q);
assign clkb=!clk;
endmodule 

//design module
module hassan;
reg j,k,clk,clr;
wire q,qb;
msjkff f1(q,qb,j,k,clk,clr);
initial 
begin
j=1'b0; k=1'b0; clk=1'b0; clr=1'b0;
#30
j=1'b0; k=1'b1; clk=1'b1; clr=1'b1;
#30
j=1'b1; k=1'b0; clk=1'b0; clr=1'b1;
#30
j=1'b1; k=1'b1; clk=1'b1; clr=1'b1;
#30 
$finish;
end
endmodule