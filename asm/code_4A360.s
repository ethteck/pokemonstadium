.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80049760
/* 4A360 80049760 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 4A364 80049764 AFBF0014 */  sw        $ra, 0x14($sp)
/* 4A368 80049768 AFA5001C */  sw        $a1, 0x1c($sp)
/* 4A36C 8004976C 8C8E0008 */  lw        $t6, 8($a0)
/* 4A370 80049770 51C00016 */  beql      $t6, $zero, .L800497CC
/* 4A374 80049774 8FBF0014 */  lw        $ra, 0x14($sp)
/* 4A378 80049778 0C01257E */  jal       func_800495F8
/* 4A37C 8004977C AFA40018 */  sw        $a0, 0x18($sp)
/* 4A380 80049780 8FA70018 */  lw        $a3, 0x18($sp)
/* 4A384 80049784 10400010 */  beqz      $v0, .L800497C8
/* 4A388 80049788 00403025 */  or        $a2, $v0, $zero
/* 4A38C 8004978C 3C0F8008 */  lui       $t7, 0x8008
/* 4A390 80049790 8DEF8584 */  lw        $t7, -0x7a7c($t7)
/* 4A394 80049794 8CF90008 */  lw        $t9, 8($a3)
/* 4A398 80049798 240A000C */  addiu     $t2, $zero, 0xc
/* 4A39C 8004979C 8DF8001C */  lw        $t8, 0x1c($t7)
/* 4A3A0 800497A0 8F280088 */  lw        $t0, 0x88($t9)
/* 4A3A4 800497A4 A44A0008 */  sh        $t2, 8($v0)
/* 4A3A8 800497A8 24050003 */  addiu     $a1, $zero, 3
/* 4A3AC 800497AC 03084821 */  addu      $t1, $t8, $t0
/* 4A3B0 800497B0 AC490004 */  sw        $t1, 4($v0)
/* 4A3B4 800497B4 93AB001F */  lbu       $t3, 0x1f($sp)
/* 4A3B8 800497B8 AC400000 */  sw        $zero, ($v0)
/* 4A3BC 800497BC AC4B000C */  sw        $t3, 0xc($v0)
/* 4A3C0 800497C0 0C011D40 */  jal       func_80047500
/* 4A3C4 800497C4 8CE40008 */  lw        $a0, 8($a3)
.L800497C8:
/* 4A3C8 800497C8 8FBF0014 */  lw        $ra, 0x14($sp)
.L800497CC:
/* 4A3CC 800497CC 27BD0018 */  addiu     $sp, $sp, 0x18
/* 4A3D0 800497D0 03E00008 */  jr        $ra
/* 4A3D4 800497D4 00000000 */  nop       
/* 4A3D8 800497D8 00000000 */  nop       
/* 4A3DC 800497DC 00000000 */  nop       
