.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8004EBF0
/* 4F7F0 8004EBF0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 4F7F4 8004EBF4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 4F7F8 8004EBF8 AFA5001C */  sw        $a1, 0x1c($sp)
/* 4F7FC 8004EBFC 8C8E0008 */  lw        $t6, 8($a0)
/* 4F800 8004EC00 51C00016 */  beql      $t6, $zero, .L8004EC5C
/* 4F804 8004EC04 8FBF0014 */  lw        $ra, 0x14($sp)
/* 4F808 8004EC08 0C01257E */  jal       func_800495F8
/* 4F80C 8004EC0C AFA40018 */  sw        $a0, 0x18($sp)
/* 4F810 8004EC10 8FA70018 */  lw        $a3, 0x18($sp)
/* 4F814 8004EC14 10400010 */  beqz      $v0, .L8004EC58
/* 4F818 8004EC18 00403025 */  or        $a2, $v0, $zero
/* 4F81C 8004EC1C 3C0F8008 */  lui       $t7, 0x8008
/* 4F820 8004EC20 8DEF8584 */  lw        $t7, -0x7a7c($t7)
/* 4F824 8004EC24 8CF90008 */  lw        $t9, 8($a3)
/* 4F828 8004EC28 240A0007 */  addiu     $t2, $zero, 7
/* 4F82C 8004EC2C 8DF8001C */  lw        $t8, 0x1c($t7)
/* 4F830 8004EC30 8F280088 */  lw        $t0, 0x88($t9)
/* 4F834 8004EC34 A44A0008 */  sh        $t2, 8($v0)
/* 4F838 8004EC38 24050003 */  addiu     $a1, $zero, 3
/* 4F83C 8004EC3C 03084821 */  addu      $t1, $t8, $t0
/* 4F840 8004EC40 AC490004 */  sw        $t1, 4($v0)
/* 4F844 8004EC44 C7A4001C */  lwc1      $f4, 0x1c($sp)
/* 4F848 8004EC48 AC400000 */  sw        $zero, ($v0)
/* 4F84C 8004EC4C E444000C */  swc1      $f4, 0xc($v0)
/* 4F850 8004EC50 0C011D40 */  jal       func_80047500
/* 4F854 8004EC54 8CE40008 */  lw        $a0, 8($a3)
.L8004EC58:
/* 4F858 8004EC58 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004EC5C:
/* 4F85C 8004EC5C 27BD0018 */  addiu     $sp, $sp, 0x18
/* 4F860 8004EC60 03E00008 */  jr        $ra
/* 4F864 8004EC64 00000000 */  nop       
/* 4F868 8004EC68 00000000 */  nop       
/* 4F86C 8004EC6C 00000000 */  nop       
