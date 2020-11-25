.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80058FF0
/* 59BF0 80058FF0 40844800 */  mtc0       $a0, $9
/* 59BF4 80058FF4 03E00008 */  jr         $ra
/* 59BF8 80058FF8 00000000 */   nop       
/* 59BFC 80058FFC 00000000 */  nop        
