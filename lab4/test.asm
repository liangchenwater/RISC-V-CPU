start:addi x1, x0, 1 //x1=1;
slt x2, x0, x1 //x2=1;
add x3,x2,x2 //x3=2
add x4,x3,x3 //x4=4
add x5, x4, x2 //x5=5
add x6, x5, x5 //x6=a
sub x7, x6, x5 //x7=5
and x8,x7,x5 //x8=5
sub x10, x8,x6 //x10=ffff fffb
or x11, x5, x6 // x11= f
or x12, x11, x7 //x12= f
slt x13,x7, x7 //x13 = 0
lw x5,0x34(x0) // x5=5555 5555
lw x5,0X48(x0) //x5 = aaaa aaaa
sw x5, 0x34(x0) 
lw x14 0x34(x0) //x14=aaaa aaaa
and x1, x14,x14 //x1=aaaa aaaa
jal x1,  here//x1为pc_next
add x0,x0,x0
add x0,x0,x0
add x0,x0,x0
here: addi x1, x1, 1// x1=49
beq x0,x0 start

