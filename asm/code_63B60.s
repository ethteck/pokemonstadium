.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80062F60
/* 63B60 80062F60 3C0E8008 */  lui       $t6, 0x8008
/* 63B64 80062F64 8DCEA860 */  lw        $t6, -0x57a0($t6)
/* 63B68 80062F68 15C00003 */  bnez      $t6, .L80062F78
/* 63B6C 80062F6C 00000000 */  nop       
/* 63B70 80062F70 03E00008 */  jr        $ra
/* 63B74 80062F74 00001025 */  or        $v0, $zero, $zero
.L80062F78:
/* 63B78 80062F78 3C028008 */  lui       $v0, 0x8008
/* 63B7C 80062F7C 8C42A868 */  lw        $v0, -0x5798($v0)
/* 63B80 80062F80 03E00008 */  jr        $ra
/* 63B84 80062F84 00000000 */  nop       
/* 63B88 80062F88 00000000 */  nop       
/* 63B8C 80062F8C 00000000 */  nop       
