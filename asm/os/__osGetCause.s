.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80063E00
/* 64A00 80063E00 40026800 */  mfc0      $v0, $13
/* 64A04 80063E04 03E00008 */  jr        $ra
/* 64A08 80063E08 00000000 */  nop       
/* 64A0C 80063E0C 00000000 */  nop       
