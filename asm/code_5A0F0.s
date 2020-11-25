.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800594F0
/* 5A0F0 800594F0 40026000 */  mfc0       $v0, $12
/* 5A0F4 800594F4 03E00008 */  jr         $ra
/* 5A0F8 800594F8 00000000 */   nop       
/* 5A0FC 800594FC 00000000 */  nop        
