.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005CDF0
/* 5D9F0 8005CDF0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 5D9F4 8005CDF4 AFBF001C */  sw        $ra, 0x1c($sp)
/* 5D9F8 8005CDF8 AFA40028 */  sw        $a0, 0x28($sp)
/* 5D9FC 8005CDFC AFA5002C */  sw        $a1, 0x2c($sp)
/* 5DA00 8005CE00 AFA60030 */  sw        $a2, 0x30($sp)
/* 5DA04 8005CE04 0C018AA4 */  jal       func_80062A90
/* 5DA08 8005CE08 AFB00018 */  sw        $s0, 0x18($sp)
/* 5DA0C 8005CE0C 8FAE0028 */  lw        $t6, 0x28($sp)
/* 5DA10 8005CE10 3C188010 */  lui       $t8, 0x8010
/* 5DA14 8005CE14 8FA8002C */  lw        $t0, 0x2c($sp)
/* 5DA18 8005CE18 271837F0 */  addiu     $t8, $t8, 0x37f0
/* 5DA1C 8005CE1C 000E78C0 */  sll       $t7, $t6, 3
/* 5DA20 8005CE20 01F8C821 */  addu      $t9, $t7, $t8
/* 5DA24 8005CE24 AFB90020 */  sw        $t9, 0x20($sp)
/* 5DA28 8005CE28 AF280000 */  sw        $t0, ($t9)
/* 5DA2C 8005CE2C 8FAA0020 */  lw        $t2, 0x20($sp)
/* 5DA30 8005CE30 8FA90030 */  lw        $t1, 0x30($sp)
/* 5DA34 8005CE34 2401000E */  addiu     $at, $zero, 0xe
/* 5DA38 8005CE38 00408025 */  or        $s0, $v0, $zero
/* 5DA3C 8005CE3C AD490004 */  sw        $t1, 4($t2)
/* 5DA40 8005CE40 8FAB0028 */  lw        $t3, 0x28($sp)
/* 5DA44 8005CE44 15610010 */  bne       $t3, $at, .L8005CE88
/* 5DA48 8005CE48 00000000 */  nop       
/* 5DA4C 8005CE4C 3C0C8008 */  lui       $t4, 0x8008
/* 5DA50 8005CE50 8D8C96AC */  lw        $t4, -0x6954($t4)
/* 5DA54 8005CE54 11800009 */  beqz      $t4, .L8005CE7C
/* 5DA58 8005CE58 00000000 */  nop       
/* 5DA5C 8005CE5C 3C0D8008 */  lui       $t5, 0x8008
/* 5DA60 8005CE60 8DADA940 */  lw        $t5, -0x56c0($t5)
/* 5DA64 8005CE64 15A00005 */  bnez      $t5, .L8005CE7C
/* 5DA68 8005CE68 00000000 */  nop       
/* 5DA6C 8005CE6C 8FA4002C */  lw        $a0, 0x2c($sp)
/* 5DA70 8005CE70 8FA50030 */  lw        $a1, 0x30($sp)
/* 5DA74 8005CE74 0C015A30 */  jal       func_800568C0
/* 5DA78 8005CE78 00003025 */  or        $a2, $zero, $zero
.L8005CE7C:
/* 5DA7C 8005CE7C 240E0001 */  addiu     $t6, $zero, 1
/* 5DA80 8005CE80 3C018008 */  lui       $at, 0x8008
/* 5DA84 8005CE84 AC2EA940 */  sw        $t6, -0x56c0($at)
.L8005CE88:
/* 5DA88 8005CE88 0C018AC0 */  jal       func_80062B00
/* 5DA8C 8005CE8C 02002025 */  or        $a0, $s0, $zero
/* 5DA90 8005CE90 8FBF001C */  lw        $ra, 0x1c($sp)
/* 5DA94 8005CE94 8FB00018 */  lw        $s0, 0x18($sp)
/* 5DA98 8005CE98 27BD0028 */  addiu     $sp, $sp, 0x28
/* 5DA9C 8005CE9C 03E00008 */  jr        $ra
/* 5DAA0 8005CEA0 00000000 */  nop       
/* 5DAA4 8005CEA4 00000000 */  nop       
/* 5DAA8 8005CEA8 00000000 */  nop       
/* 5DAAC 8005CEAC 00000000 */  nop       
