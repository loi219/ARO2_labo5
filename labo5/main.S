@Etape 1

@ programme 1
mov r0,#0x20
mov r1,#4
mov r2,#0xAB
mov r3,#7
nop

@ Partie à analyser
add  r4,r0,#2
strh r2,[r0,#4*2]
ldrh r1,[r0,#4*2]
b fin
nop
nop
nop
nop
nop
 
.org 0x40
fin:
and r1,r3
nop
nop
nop
nop
nop

@ fin de l'analyse
