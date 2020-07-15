//design module
module rs(q,qb,r,s);
input r,s;
output q,qb;
nor n1(q,r,qb);
nor n2(qb,s,q);
endmodule

//stimulus module
module hassan;
reg r,s;
wire q,qb;
rs rs1(q,qb,r,s);
initial
begin
r=1'b0; s=1'b1;
#20
r=1'b0; s=1'b1;
#20
r=1'b0; s=1'b0;
#20
r=1'b1; s=1'b1;
#20
$finish;
end
endmodule