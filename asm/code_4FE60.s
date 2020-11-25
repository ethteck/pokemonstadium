.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004F260
/* 4FE60 8004F260 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4FE64 8004F264 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4FE68 8004F268 AFA5001C */  sw         $a1, 0x1c($sp)
/* 4FE6C 8004F26C 8C8E0008 */  lw         $t6, 8($a0)
/* 4FE70 8004F270 30A500FF */  andi       $a1, $a1, 0xff
/* 4FE74 8004F274 51C0001B */  beql       $t6, $zero, .L8004F2E4
/* 4FE78 8004F278 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4FE7C 8004F27C A3A5001F */  sb         $a1, 0x1f($sp)
/* 4FE80 8004F280 0C01257E */  jal        func_800495F8
/* 4FE84 8004F284 AFA40018 */   sw        $a0, 0x18($sp)
/* 4FE88 8004F288 93A5001F */  lbu        $a1, 0x1f($sp)
/* 4FE8C 8004F28C 8FA70018 */  lw         $a3, 0x18($sp)
/* 4FE90 8004F290 10400013 */  beqz       $v0, .L8004F2E0
/* 4FE94 8004F294 00403025 */   or        $a2, $v0, $zero
/* 4FE98 8004F298 3C0F8008 */  lui        $t7, %hi(D_80078584)
/* 4FE9C 8004F29C 8DEF8584 */  lw         $t7, %lo(D_80078584)($t7)
/* 4FEA0 8004F2A0 8CF90008 */  lw         $t9, 8($a3)
/* 4FEA4 8004F2A4 240A0010 */  addiu      $t2, $zero, 0x10
/* 4FEA8 8004F2A8 8DF8001C */  lw         $t8, 0x1c($t7)
/* 4FEAC 8004F2AC 8F280088 */  lw         $t0, 0x88($t9)
/* 4FEB0 8004F2B0 28A10080 */  slti       $at, $a1, 0x80
/* 4FEB4 8004F2B4 A44A0008 */  sh         $t2, 8($v0)
/* 4FEB8 8004F2B8 03084821 */  addu       $t1, $t8, $t0
/* 4FEBC 8004F2BC AC490004 */  sw         $t1, 4($v0)
/* 4FEC0 8004F2C0 14200002 */  bnez       $at, .L8004F2CC
/* 4FEC4 8004F2C4 00A01825 */   or        $v1, $a1, $zero
/* 4FEC8 8004F2C8 2403007F */  addiu      $v1, $zero, 0x7f
.L8004F2CC:
/* 4FECC 8004F2CC ACC3000C */  sw         $v1, 0xc($a2)
/* 4FED0 8004F2D0 ACC00000 */  sw         $zero, ($a2)
/* 4FED4 8004F2D4 8CE40008 */  lw         $a0, 8($a3)
/* 4FED8 8004F2D8 0C011D40 */  jal        func_80047500
/* 4FEDC 8004F2DC 24050003 */   addiu     $a1, $zero, 3
.L8004F2E0:
/* 4FEE0 8004F2E0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8004F2E4:
/* 4FEE4 8004F2E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4FEE8 8004F2E8 03E00008 */  jr         $ra
/* 4FEEC 8004F2EC 00000000 */   nop       

glabel func_8004F2F0
/* 4FEF0 8004F2F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4FEF4 8004F2F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4FEF8 8004F2F8 00802825 */  or         $a1, $a0, $zero
/* 4FEFC 8004F2FC AFA50018 */  sw         $a1, 0x18($sp)
/* 4FF00 8004F300 0C015B04 */  jal        func_80056C10
/* 4FF04 8004F304 24040001 */   addiu     $a0, $zero, 1
/* 4FF08 8004F308 3C038008 */  lui        $v1, %hi(D_80078584)
/* 4FF0C 8004F30C 24638584 */  addiu      $v1, $v1, %lo(D_80078584)
/* 4FF10 8004F310 8C6E0000 */  lw         $t6, ($v1)
/* 4FF14 8004F314 8FA50018 */  lw         $a1, 0x18($sp)
/* 4FF18 8004F318 00402025 */  or         $a0, $v0, $zero
/* 4FF1C 8004F31C 8DCF0020 */  lw         $t7, 0x20($t6)
/* 4FF20 8004F320 ACAF0010 */  sw         $t7, 0x10($a1)
/* 4FF24 8004F324 8C780000 */  lw         $t8, ($v1)
/* 4FF28 8004F328 8F190000 */  lw         $t9, ($t8)
/* 4FF2C 8004F32C ACB90000 */  sw         $t9, ($a1)
/* 4FF30 8004F330 8C680000 */  lw         $t0, ($v1)
/* 4FF34 8004F334 0C015B04 */  jal        func_80056C10
/* 4FF38 8004F338 AD050000 */   sw        $a1, ($t0)
/* 4FF3C 8004F33C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4FF40 8004F340 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4FF44 8004F344 03E00008 */  jr         $ra
/* 4FF48 8004F348 00000000 */   nop       
/* 4FF4C 8004F34C 00000000 */  nop        
