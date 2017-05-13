@ programme 2 
mov  r0,#0x20    
mov  r1,#4 
mov  r2,#0xAB 
mov  r3,#7 
mov  r4,#12 
mov  r5,#0 
@ Partie à analyser 
add  r4,r0,#2         
add  r3,r4,r1                   
strh  r4,[r0,#4*2]     
ldrh  r1,[r4,#3*2]     
sub  r5,r1,#5         
b    fin        
mov  r0,#0xFF         
mov  r5,#0xFF         
nop 
nop 
nop 
.org 0x40 
fin:  
orr  r0,r5            
