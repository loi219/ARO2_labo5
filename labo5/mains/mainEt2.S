
@écriture de valeurs dans les registres
mov  r0,#0x20    
mov  r1,#4 
mov  r2,#0xAB 
mov  r3,#7 
mov  r4,#12 
mov  r5,#0 

@Opérations sur les registres
add  r4,r0,#2         
add  r3,r4,r1                   

@Opérations sur la memory
strh  r4,[r0,#4*2]     
ldrh  r1,[r4,#3*2]     

@Opération sur r5
sub  r5,r1,#5         

@Saut à la partie "fin"
b    fin        

@Ecriture de valeurs dans r0 et r5
mov  r0,#0xFF         
mov  r5,#0xFF         
nop 
nop 
nop 

@Partie "fin"
.org 0x40 
fin:  

@Comparaison entre r0 et r5
orr  r0,r5            
