.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80065900
/* 66500 80065900 03E00008 */  jr        $ra
/* 66504 80065904 AC800000 */  sw        $zero, ($a0)
/* 66508 80065908 00000000 */  nop       
/* 6650C 8006590C 00000000 */  nop       
