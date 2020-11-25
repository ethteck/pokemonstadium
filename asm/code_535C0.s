.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800529C0
/* 535C0 800529C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 535C4 800529C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 535C8 800529C8 3C048010 */  lui        $a0, 0x8010
/* 535CC 800529CC 3C050500 */  lui        $a1, 0x500
/* 535D0 800529D0 34A50540 */  ori        $a1, $a1, 0x540
/* 535D4 800529D4 8C840710 */  lw         $a0, 0x710($a0)
/* 535D8 800529D8 0C018C40 */  jal        func_80063100
/* 535DC 800529DC 27A6001C */   addiu     $a2, $sp, 0x1c
/* 535E0 800529E0 3C04001B */  lui        $a0, 0x1b
/* 535E4 800529E4 0C014C68 */  jal        func_800531A0
/* 535E8 800529E8 00002825 */   or        $a1, $zero, $zero
/* 535EC 800529EC 1440000D */  bnez       $v0, .L80052A24
/* 535F0 800529F0 3C048010 */   lui       $a0, 0x8010
/* 535F4 800529F4 3C050500 */  lui        $a1, 0x500
/* 535F8 800529F8 34A50500 */  ori        $a1, $a1, 0x500
/* 535FC 800529FC 8C840710 */  lw         $a0, 0x710($a0)
/* 53600 80052A00 0C018C40 */  jal        func_80063100
/* 53604 80052A04 27A60018 */   addiu     $a2, $sp, 0x18
/* 53608 80052A08 8FAE0018 */  lw         $t6, 0x18($sp)
/* 5360C 80052A0C 8FB8001C */  lw         $t8, 0x1c($sp)
/* 53610 80052A10 3C010010 */  lui        $at, 0x10
/* 53614 80052A14 000E7BC0 */  sll        $t7, $t6, 0xf
/* 53618 80052A18 05E10002 */  bgez       $t7, .L80052A24
/* 5361C 80052A1C 0301C825 */   or        $t9, $t8, $at
/* 53620 80052A20 AFB9001C */  sw         $t9, 0x1c($sp)
.L80052A24:
/* 53624 80052A24 3C028010 */  lui        $v0, 0x8010
/* 53628 80052A28 244206C8 */  addiu      $v0, $v0, 0x6c8
/* 5362C 80052A2C 8C480000 */  lw         $t0, ($v0)
/* 53630 80052A30 240C0001 */  addiu      $t4, $zero, 1
/* 53634 80052A34 A100000C */  sb         $zero, 0xc($t0)
/* 53638 80052A38 8FA9001C */  lw         $t1, 0x1c($sp)
/* 5363C 80052A3C 8C4B0000 */  lw         $t3, ($v0)
/* 53640 80052A40 00095402 */  srl        $t2, $t1, 0x10
/* 53644 80052A44 A16A000D */  sb         $t2, 0xd($t3)
/* 53648 80052A48 8C4D0000 */  lw         $t5, ($v0)
/* 5364C 80052A4C A1AC000E */  sb         $t4, 0xe($t5)
/* 53650 80052A50 8C4E0000 */  lw         $t6, ($v0)
/* 53654 80052A54 A1C0000F */  sb         $zero, 0xf($t6)
/* 53658 80052A58 8C4F0000 */  lw         $t7, ($v0)
/* 5365C 80052A5C A1E00004 */  sb         $zero, 4($t7)
/* 53660 80052A60 8FBF0014 */  lw         $ra, 0x14($sp)
/* 53664 80052A64 27BD0020 */  addiu      $sp, $sp, 0x20
/* 53668 80052A68 03E00008 */  jr         $ra
/* 5366C 80052A6C 00000000 */   nop       

glabel func_80052A70
/* 53670 80052A70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 53674 80052A74 AFB00018 */  sw         $s0, 0x18($sp)
/* 53678 80052A78 3C108010 */  lui        $s0, 0x8010
/* 5367C 80052A7C 261007C0 */  addiu      $s0, $s0, 0x7c0
/* 53680 80052A80 AFBF001C */  sw         $ra, 0x1c($sp)
/* 53684 80052A84 24020002 */  addiu      $v0, $zero, 2
/* 53688 80052A88 24030006 */  addiu      $v1, $zero, 6
/* 5368C 80052A8C 3C0EA500 */  lui        $t6, 0xa500
/* 53690 80052A90 240F0003 */  addiu      $t7, $zero, 3
/* 53694 80052A94 24180001 */  addiu      $t8, $zero, 1
/* 53698 80052A98 3C048010 */  lui        $a0, 0x8010
/* 5369C 80052A9C A2020004 */  sb         $v0, 4($s0)
/* 536A0 80052AA0 AE0E000C */  sw         $t6, 0xc($s0)
/* 536A4 80052AA4 A20F0005 */  sb         $t7, 5($s0)
/* 536A8 80052AA8 A2030008 */  sb         $v1, 8($s0)
/* 536AC 80052AAC A2030006 */  sb         $v1, 6($s0)
/* 536B0 80052AB0 A2020007 */  sb         $v0, 7($s0)
/* 536B4 80052AB4 A2180009 */  sb         $t8, 9($s0)
/* 536B8 80052AB8 AE000010 */  sw         $zero, 0x10($s0)
/* 536BC 80052ABC 248407D4 */  addiu      $a0, $a0, 0x7d4
/* 536C0 80052AC0 0C015FF4 */  jal        func_80057FD0
/* 536C4 80052AC4 24050060 */   addiu     $a1, $zero, 0x60
/* 536C8 80052AC8 0C018AA4 */  jal        func_80062A90
/* 536CC 80052ACC 00000000 */   nop       
/* 536D0 80052AD0 3C038008 */  lui        $v1, 0x8008
/* 536D4 80052AD4 2463A87C */  addiu      $v1, $v1, -0x5784
/* 536D8 80052AD8 8C790000 */  lw         $t9, ($v1)
/* 536DC 80052ADC AC700000 */  sw         $s0, ($v1)
/* 536E0 80052AE0 3C018010 */  lui        $at, 0x8010
/* 536E4 80052AE4 AE190000 */  sw         $t9, ($s0)
/* 536E8 80052AE8 AC300834 */  sw         $s0, 0x834($at)
/* 536EC 80052AEC 0C018AC0 */  jal        func_80062B00
/* 536F0 80052AF0 00402025 */   or        $a0, $v0, $zero
/* 536F4 80052AF4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 536F8 80052AF8 02001025 */  or         $v0, $s0, $zero
/* 536FC 80052AFC 8FB00018 */  lw         $s0, 0x18($sp)
/* 53700 80052B00 03E00008 */  jr         $ra
/* 53704 80052B04 27BD0020 */   addiu     $sp, $sp, 0x20
/* 53708 80052B08 00000000 */  nop        
/* 5370C 80052B0C 00000000 */  nop        
