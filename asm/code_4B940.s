.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8004AD40
/* 4B940 8004AD40 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 4B944 8004AD44 24010001 */  addiu     $at, $zero, 1
/* 4B948 8004AD48 10810006 */  beq       $a0, $at, .L8004AD64
/* 4B94C 8004AD4C AFBF0014 */  sw        $ra, 0x14($sp)
/* 4B950 8004AD50 24010002 */  addiu     $at, $zero, 2
/* 4B954 8004AD54 10810008 */  beq       $a0, $at, .L8004AD78
/* 4B958 8004AD58 00000000 */  nop       
/* 4B95C 8004AD5C 10000006 */  b         .L8004AD78
/* 4B960 8004AD60 00000000 */  nop       
.L8004AD64:
/* 4B964 8004AD64 0C014A18 */  jal       func_80052860
/* 4B968 8004AD68 00000000 */  nop       
/* 4B96C 8004AD6C 3C018010 */  lui       $at, 0x8010
/* 4B970 8004AD70 10000005 */  b         .L8004AD88
/* 4B974 8004AD74 AC22F9A8 */  sw        $v0, -0x658($at)
.L8004AD78:
/* 4B978 8004AD78 0C018D44 */  jal       func_80063510
/* 4B97C 8004AD7C 00000000 */  nop       
/* 4B980 8004AD80 3C018010 */  lui       $at, 0x8010
/* 4B984 8004AD84 AC22F9A8 */  sw        $v0, -0x658($at)
.L8004AD88:
/* 4B988 8004AD88 3C048010 */  lui       $a0, 0x8010
/* 4B98C 8004AD8C 3C058010 */  lui       $a1, 0x8010
/* 4B990 8004AD90 24A5F9AC */  addiu     $a1, $a1, -0x654
/* 4B994 8004AD94 2484F990 */  addiu     $a0, $a0, -0x670
/* 4B998 8004AD98 0C0178E8 */  jal       func_8005E3A0
/* 4B99C 8004AD9C 24060001 */  addiu     $a2, $zero, 1
/* 4B9A0 8004ADA0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 4B9A4 8004ADA4 27BD0018 */  addiu     $sp, $sp, 0x18
/* 4B9A8 8004ADA8 03E00008 */  jr        $ra
/* 4B9AC 8004ADAC 00000000 */  nop       

glabel func_8004ADB0
/* 4B9B0 8004ADB0 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 4B9B4 8004ADB4 AFB30024 */  sw        $s3, 0x24($sp)
/* 4B9B8 8004ADB8 AFB20020 */  sw        $s2, 0x20($sp)
/* 4B9BC 8004ADBC AFB1001C */  sw        $s1, 0x1c($sp)
/* 4B9C0 8004ADC0 00C08825 */  or        $s1, $a2, $zero
/* 4B9C4 8004ADC4 AFBF0034 */  sw        $ra, 0x34($sp)
/* 4B9C8 8004ADC8 AFB60030 */  sw        $s6, 0x30($sp)
/* 4B9CC 8004ADCC AFB5002C */  sw        $s5, 0x2c($sp)
/* 4B9D0 8004ADD0 AFB40028 */  sw        $s4, 0x28($sp)
/* 4B9D4 8004ADD4 AFB00018 */  sw        $s0, 0x18($sp)
/* 4B9D8 8004ADD8 00809825 */  or        $s3, $a0, $zero
/* 4B9DC 8004ADDC 10C0001F */  beqz      $a2, .L8004AE5C
/* 4B9E0 8004ADE0 00A09025 */  or        $s2, $a1, $zero
/* 4B9E4 8004ADE4 3C158010 */  lui       $s5, 0x8010
/* 4B9E8 8004ADE8 3C148010 */  lui       $s4, 0x8010
/* 4B9EC 8004ADEC 2694F990 */  addiu     $s4, $s4, -0x670
/* 4B9F0 8004ADF0 26B5F9A8 */  addiu     $s5, $s5, -0x658
/* 4B9F4 8004ADF4 27B60048 */  addiu     $s6, $sp, 0x48
.L8004ADF8:
/* 4B9F8 8004ADF8 2E214001 */  sltiu     $at, $s1, 0x4001
/* 4B9FC 8004ADFC 14200003 */  bnez      $at, .L8004AE0C
/* 4BA00 8004AE00 02402025 */  or        $a0, $s2, $zero
/* 4BA04 8004AE04 10000002 */  b         .L8004AE10
/* 4BA08 8004AE08 24104000 */  addiu     $s0, $zero, 0x4000
.L8004AE0C:
/* 4BA0C 8004AE0C 02208025 */  or        $s0, $s1, $zero
.L8004AE10:
/* 4BA10 8004AE10 A3A0004A */  sb        $zero, 0x4a($sp)
/* 4BA14 8004AE14 AFB4004C */  sw        $s4, 0x4c($sp)
/* 4BA18 8004AE18 AFB20050 */  sw        $s2, 0x50($sp)
/* 4BA1C 8004AE1C AFB30054 */  sw        $s3, 0x54($sp)
/* 4BA20 8004AE20 AFB00058 */  sw        $s0, 0x58($sp)
/* 4BA24 8004AE24 0C0178BC */  jal       func_8005E2F0
/* 4BA28 8004AE28 02002825 */  or        $a1, $s0, $zero
/* 4BA2C 8004AE2C 8EA40000 */  lw        $a0, ($s5)
/* 4BA30 8004AE30 02C02825 */  or        $a1, $s6, $zero
/* 4BA34 8004AE34 0C01783C */  jal       func_8005E0F0
/* 4BA38 8004AE38 00003025 */  or        $a2, $zero, $zero
/* 4BA3C 8004AE3C 02802025 */  or        $a0, $s4, $zero
/* 4BA40 8004AE40 00002825 */  or        $a1, $zero, $zero
/* 4BA44 8004AE44 0C015AB4 */  jal       func_80056AD0
/* 4BA48 8004AE48 24060001 */  addiu     $a2, $zero, 1
/* 4BA4C 8004AE4C 02308823 */  subu      $s1, $s1, $s0
/* 4BA50 8004AE50 02709821 */  addu      $s3, $s3, $s0
/* 4BA54 8004AE54 1620FFE8 */  bnez      $s1, .L8004ADF8
/* 4BA58 8004AE58 02509021 */  addu      $s2, $s2, $s0
.L8004AE5C:
/* 4BA5C 8004AE5C 8FBF0034 */  lw        $ra, 0x34($sp)
/* 4BA60 8004AE60 8FB00018 */  lw        $s0, 0x18($sp)
/* 4BA64 8004AE64 8FB1001C */  lw        $s1, 0x1c($sp)
/* 4BA68 8004AE68 8FB20020 */  lw        $s2, 0x20($sp)
/* 4BA6C 8004AE6C 8FB30024 */  lw        $s3, 0x24($sp)
/* 4BA70 8004AE70 8FB40028 */  lw        $s4, 0x28($sp)
/* 4BA74 8004AE74 8FB5002C */  lw        $s5, 0x2c($sp)
/* 4BA78 8004AE78 8FB60030 */  lw        $s6, 0x30($sp)
/* 4BA7C 8004AE7C 03E00008 */  jr        $ra
/* 4BA80 8004AE80 27BD0060 */  addiu     $sp, $sp, 0x60
/* 4BA84 8004AE84 00000000 */  nop       
/* 4BA88 8004AE88 00000000 */  nop       
/* 4BA8C 8004AE8C 00000000 */  nop       
