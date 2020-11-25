.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800624B0
/* 630B0 800624B0 40845800 */  mtc0       $a0, $11
/* 630B4 800624B4 03E00008 */  jr         $ra
/* 630B8 800624B8 00000000 */   nop       
/* 630BC 800624BC 00000000 */  nop        
