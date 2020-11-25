.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004F1B0
/* 4FDB0 8004F1B0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4FDB4 8004F1B4 3C0E8008 */  lui        $t6, %hi(D_80078584)
/* 4FDB8 8004F1B8 8DCE8584 */  lw         $t6, %lo(D_80078584)($t6)
/* 4FDBC 8004F1BC AFBF002C */  sw         $ra, 0x2c($sp)
/* 4FDC0 8004F1C0 AFB40028 */  sw         $s4, 0x28($sp)
/* 4FDC4 8004F1C4 AFB30024 */  sw         $s3, 0x24($sp)
/* 4FDC8 8004F1C8 AFB20020 */  sw         $s2, 0x20($sp)
/* 4FDCC 8004F1CC AFB1001C */  sw         $s1, 0x1c($sp)
/* 4FDD0 8004F1D0 AFB00018 */  sw         $s0, 0x18($sp)
/* 4FDD4 8004F1D4 8DD30034 */  lw         $s3, 0x34($t6)
/* 4FDD8 8004F1D8 3C0F0200 */  lui        $t7, 0x200
/* 4FDDC 8004F1DC 35EF07C0 */  ori        $t7, $t7, 0x7c0
/* 4FDE0 8004F1E0 8E62001C */  lw         $v0, 0x1c($s3)
/* 4FDE4 8004F1E4 241802E0 */  addiu      $t8, $zero, 0x2e0
/* 4FDE8 8004F1E8 ACB80004 */  sw         $t8, 4($a1)
/* 4FDEC 8004F1EC ACAF0000 */  sw         $t7, ($a1)
/* 4FDF0 8004F1F0 8E790014 */  lw         $t9, 0x14($s3)
/* 4FDF4 8004F1F4 0080A025 */  or         $s4, $a0, $zero
/* 4FDF8 8004F1F8 24B20008 */  addiu      $s2, $a1, 8
/* 4FDFC 8004F1FC 1B20000C */  blez       $t9, .L8004F230
/* 4FE00 8004F200 00008025 */   or        $s0, $zero, $zero
/* 4FE04 8004F204 00408825 */  or         $s1, $v0, $zero
.L8004F208:
/* 4FE08 8004F208 8E240000 */  lw         $a0, ($s1)
/* 4FE0C 8004F20C 02802825 */  or         $a1, $s4, $zero
/* 4FE10 8004F210 0C011BD8 */  jal        func_80046F60
/* 4FE14 8004F214 02403025 */   or        $a2, $s2, $zero
/* 4FE18 8004F218 8E680014 */  lw         $t0, 0x14($s3)
/* 4FE1C 8004F21C 26100001 */  addiu      $s0, $s0, 1
/* 4FE20 8004F220 26310004 */  addiu      $s1, $s1, 4
/* 4FE24 8004F224 0208082A */  slt        $at, $s0, $t0
/* 4FE28 8004F228 1420FFF7 */  bnez       $at, .L8004F208
/* 4FE2C 8004F22C 00409025 */   or        $s2, $v0, $zero
.L8004F230:
/* 4FE30 8004F230 8FBF002C */  lw         $ra, 0x2c($sp)
/* 4FE34 8004F234 02401025 */  or         $v0, $s2, $zero
/* 4FE38 8004F238 8FB20020 */  lw         $s2, 0x20($sp)
/* 4FE3C 8004F23C 8FB00018 */  lw         $s0, 0x18($sp)
/* 4FE40 8004F240 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4FE44 8004F244 8FB30024 */  lw         $s3, 0x24($sp)
/* 4FE48 8004F248 8FB40028 */  lw         $s4, 0x28($sp)
/* 4FE4C 8004F24C 03E00008 */  jr         $ra
/* 4FE50 8004F250 27BD0030 */   addiu     $sp, $sp, 0x30
/* 4FE54 8004F254 00000000 */  nop        
/* 4FE58 8004F258 00000000 */  nop        
/* 4FE5C 8004F25C 00000000 */  nop        
