.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_800623C0
/* 62FC0 800623C0 3C0EA410 */  lui       $t6, 0xa410
/* 62FC4 800623C4 8DCF0010 */  lw        $t7, 0x10($t6)
/* 62FC8 800623C8 3C18A410 */  lui       $t8, 0xa410
/* 62FCC 800623CC 3C08A410 */  lui       $t0, 0xa410
/* 62FD0 800623D0 AC8F0000 */  sw        $t7, ($a0)
/* 62FD4 800623D4 8F190014 */  lw        $t9, 0x14($t8)
/* 62FD8 800623D8 24840004 */  addiu     $a0, $a0, 4
/* 62FDC 800623DC 3C0AA410 */  lui       $t2, 0xa410
/* 62FE0 800623E0 AC990000 */  sw        $t9, ($a0)
/* 62FE4 800623E4 8D090018 */  lw        $t1, 0x18($t0)
/* 62FE8 800623E8 24840004 */  addiu     $a0, $a0, 4
/* 62FEC 800623EC 24840004 */  addiu     $a0, $a0, 4
/* 62FF0 800623F0 AC89FFFC */  sw        $t1, -4($a0)
/* 62FF4 800623F4 8D4B001C */  lw        $t3, 0x1c($t2)
/* 62FF8 800623F8 24840004 */  addiu     $a0, $a0, 4
/* 62FFC 800623FC 03E00008 */  jr        $ra
/* 63000 80062400 AC8BFFFC */  sw        $t3, -4($a0)
/* 63004 80062404 00000000 */  nop       
/* 63008 80062408 00000000 */  nop       
/* 6300C 8006240C 00000000 */  nop       
