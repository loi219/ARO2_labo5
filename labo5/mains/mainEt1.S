@Etape 1

@écriture de valeurs dans les registres
mov r0,#0x20
mov r1,#4
mov r2,#0xAB
mov r3,#7
nop @coup horloge dans le vide

@r4 = 0x22
add  r4,r0,#2 

@M[0x22+8] = 0xAB
strh r2,[r0,#4*2]

@r1 = M[0x22+8] = 0xAB
ldrh r1,[r0,#4*2] 

@Saut à la partie "fin"
b fin 
nop
nop
nop
nop
nop
 
@Adresse mémoire de la partie "fin"
.org 0x40
fin:
and r1,r3 @r1=3
nop
nop
nop
nop
nop
