.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005BD00
/* 5C900 8005BD00 40024800 */  mfc0       $v0, $9
/* 5C904 8005BD04 03E00008 */  jr         $ra
/* 5C908 8005BD08 00000000 */   nop       
/* 5C90C 8005BD0C 00000000 */  nop        
