.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005E0F0
/* 5ECF0 8005E0F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5ECF4 8005E0F4 3C0E8008 */  lui        $t6, %hi(D_8007A860)
/* 5ECF8 8005E0F8 8DCEA860 */  lw         $t6, %lo(D_8007A860)($t6)
/* 5ECFC 8005E0FC AFBF001C */  sw         $ra, 0x1c($sp)
/* 5ED00 8005E100 AFA40028 */  sw         $a0, 0x28($sp)
/* 5ED04 8005E104 AFA5002C */  sw         $a1, 0x2c($sp)
/* 5ED08 8005E108 AFA60030 */  sw         $a2, 0x30($sp)
/* 5ED0C 8005E10C AFB10018 */  sw         $s1, 0x18($sp)
/* 5ED10 8005E110 15C00003 */  bnez       $t6, .L8005E120
/* 5ED14 8005E114 AFB00014 */   sw        $s0, 0x14($sp)
/* 5ED18 8005E118 10000025 */  b          .L8005E1B0
/* 5ED1C 8005E11C 2402FFFF */   addiu     $v0, $zero, -1
.L8005E120:
/* 5ED20 8005E120 8FAF0028 */  lw         $t7, 0x28($sp)
/* 5ED24 8005E124 8FB8002C */  lw         $t8, 0x2c($sp)
/* 5ED28 8005E128 AF0F0014 */  sw         $t7, 0x14($t8)
/* 5ED2C 8005E12C 8FB90030 */  lw         $t9, 0x30($sp)
/* 5ED30 8005E130 17200005 */  bnez       $t9, .L8005E148
/* 5ED34 8005E134 00000000 */   nop       
/* 5ED38 8005E138 8FA9002C */  lw         $t1, 0x2c($sp)
/* 5ED3C 8005E13C 2408000F */  addiu      $t0, $zero, 0xf
/* 5ED40 8005E140 10000004 */  b          .L8005E154
/* 5ED44 8005E144 A5280000 */   sh        $t0, ($t1)
.L8005E148:
/* 5ED48 8005E148 8FAB002C */  lw         $t3, 0x2c($sp)
/* 5ED4C 8005E14C 240A0010 */  addiu      $t2, $zero, 0x10
/* 5ED50 8005E150 A56A0000 */  sh         $t2, ($t3)
.L8005E154:
/* 5ED54 8005E154 8FAC002C */  lw         $t4, 0x2c($sp)
/* 5ED58 8005E158 24010001 */  addiu      $at, $zero, 1
/* 5ED5C 8005E15C 918D0002 */  lbu        $t5, 2($t4)
/* 5ED60 8005E160 15A1000A */  bne        $t5, $at, .L8005E18C
/* 5ED64 8005E164 00000000 */   nop       
/* 5ED68 8005E168 0C018BD8 */  jal        func_80062F60
/* 5ED6C 8005E16C 00000000 */   nop       
/* 5ED70 8005E170 00408825 */  or         $s1, $v0, $zero
/* 5ED74 8005E174 02202025 */  or         $a0, $s1, $zero
/* 5ED78 8005E178 8FA5002C */  lw         $a1, 0x2c($sp)
/* 5ED7C 8005E17C 0C017990 */  jal        func_8005E640
/* 5ED80 8005E180 00003025 */   or        $a2, $zero, $zero
/* 5ED84 8005E184 10000009 */  b          .L8005E1AC
/* 5ED88 8005E188 00408025 */   or        $s0, $v0, $zero
.L8005E18C:
/* 5ED8C 8005E18C 0C018BD8 */  jal        func_80062F60
/* 5ED90 8005E190 00000000 */   nop       
/* 5ED94 8005E194 00408825 */  or         $s1, $v0, $zero
/* 5ED98 8005E198 02202025 */  or         $a0, $s1, $zero
/* 5ED9C 8005E19C 8FA5002C */  lw         $a1, 0x2c($sp)
/* 5EDA0 8005E1A0 0C015A30 */  jal        func_800568C0
/* 5EDA4 8005E1A4 00003025 */   or        $a2, $zero, $zero
/* 5EDA8 8005E1A8 00408025 */  or         $s0, $v0, $zero
.L8005E1AC:
/* 5EDAC 8005E1AC 02001025 */  or         $v0, $s0, $zero
.L8005E1B0:
/* 5EDB0 8005E1B0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5EDB4 8005E1B4 8FB00014 */  lw         $s0, 0x14($sp)
/* 5EDB8 8005E1B8 8FB10018 */  lw         $s1, 0x18($sp)
/* 5EDBC 8005E1BC 03E00008 */  jr         $ra
/* 5EDC0 8005E1C0 27BD0028 */   addiu     $sp, $sp, 0x28
/* 5EDC4 8005E1C4 00000000 */  nop        
/* 5EDC8 8005E1C8 00000000 */  nop        
/* 5EDCC 8005E1CC 00000000 */  nop        
