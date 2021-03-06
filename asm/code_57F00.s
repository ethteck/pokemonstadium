.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80057300
/* 57F00 80057300 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 57F04 80057304 AFBF0024 */  sw         $ra, 0x24($sp)
/* 57F08 80057308 AFA40038 */  sw         $a0, 0x38($sp)
/* 57F0C 8005730C AFB20020 */  sw         $s2, 0x20($sp)
/* 57F10 80057310 AFB1001C */  sw         $s1, 0x1c($sp)
/* 57F14 80057314 0C018AA4 */  jal        __osDisableInt
/* 57F18 80057318 AFB00018 */   sw        $s0, 0x18($sp)
/* 57F1C 8005731C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 57F20 80057320 00408025 */  or         $s0, $v0, $zero
/* 57F24 80057324 15C00005 */  bnez       $t6, .L8005733C
/* 57F28 80057328 00000000 */   nop       
/* 57F2C 8005732C 3C0F8008 */  lui        $t7, %hi(__osRunningThread)
/* 57F30 80057330 8DEF9630 */  lw         $t7, %lo(__osRunningThread)($t7)
/* 57F34 80057334 10000009 */  b          .L8005735C
/* 57F38 80057338 AFAF0038 */   sw        $t7, 0x38($sp)
.L8005733C:
/* 57F3C 8005733C 8FB80038 */  lw         $t8, 0x38($sp)
/* 57F40 80057340 24010001 */  addiu      $at, $zero, 1
/* 57F44 80057344 97190010 */  lhu        $t9, 0x10($t8)
/* 57F48 80057348 13210004 */  beq        $t9, $at, .L8005735C
/* 57F4C 8005734C 00000000 */   nop       
/* 57F50 80057350 8F040008 */  lw         $a0, 8($t8)
/* 57F54 80057354 0C015B2C */  jal        __osDequeueThread
/* 57F58 80057358 03002825 */   or        $a1, $t8, $zero
.L8005735C:
/* 57F5C 8005735C 3C088008 */  lui        $t0, 0x8008
/* 57F60 80057360 8D08962C */  lw         $t0, -0x69d4($t0)
/* 57F64 80057364 8FA90038 */  lw         $t1, 0x38($sp)
/* 57F68 80057368 15090005 */  bne        $t0, $t1, .L80057380
/* 57F6C 8005736C 00000000 */   nop       
/* 57F70 80057370 8D0A000C */  lw         $t2, 0xc($t0)
/* 57F74 80057374 3C018008 */  lui        $at, 0x8008
/* 57F78 80057378 10000013 */  b          .L800573C8
/* 57F7C 8005737C AC2A962C */   sw        $t2, -0x69d4($at)
.L80057380:
/* 57F80 80057380 3C118008 */  lui        $s1, 0x8008
/* 57F84 80057384 8E31962C */  lw         $s1, -0x69d4($s1)
/* 57F88 80057388 2401FFFF */  addiu      $at, $zero, -1
/* 57F8C 8005738C 8E2B0004 */  lw         $t3, 4($s1)
/* 57F90 80057390 1161000D */  beq        $t3, $at, .L800573C8
/* 57F94 80057394 00000000 */   nop       
.L80057398:
/* 57F98 80057398 8E32000C */  lw         $s2, 0xc($s1)
/* 57F9C 8005739C 8FAC0038 */  lw         $t4, 0x38($sp)
/* 57FA0 800573A0 164C0004 */  bne        $s2, $t4, .L800573B4
/* 57FA4 800573A4 00000000 */   nop       
/* 57FA8 800573A8 8D8D000C */  lw         $t5, 0xc($t4)
/* 57FAC 800573AC 10000006 */  b          .L800573C8
/* 57FB0 800573B0 AE2D000C */   sw        $t5, 0xc($s1)
.L800573B4:
/* 57FB4 800573B4 02408825 */  or         $s1, $s2, $zero
/* 57FB8 800573B8 8E2E0004 */  lw         $t6, 4($s1)
/* 57FBC 800573BC 2401FFFF */  addiu      $at, $zero, -1
/* 57FC0 800573C0 15C1FFF5 */  bne        $t6, $at, .L80057398
/* 57FC4 800573C4 00000000 */   nop       
.L800573C8:
/* 57FC8 800573C8 3C198008 */  lui        $t9, %hi(__osRunningThread)
/* 57FCC 800573CC 8F399630 */  lw         $t9, %lo(__osRunningThread)($t9)
/* 57FD0 800573D0 8FAF0038 */  lw         $t7, 0x38($sp)
/* 57FD4 800573D4 15F90003 */  bne        $t7, $t9, .L800573E4
/* 57FD8 800573D8 00000000 */   nop       
/* 57FDC 800573DC 0C015F91 */  jal        __osDispatchThread
/* 57FE0 800573E0 00000000 */   nop       
.L800573E4:
/* 57FE4 800573E4 0C018AC0 */  jal        __osRestoreInt
/* 57FE8 800573E8 02002025 */   or        $a0, $s0, $zero
/* 57FEC 800573EC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 57FF0 800573F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 57FF4 800573F4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 57FF8 800573F8 8FB20020 */  lw         $s2, 0x20($sp)
/* 57FFC 800573FC 03E00008 */  jr         $ra
/* 58000 80057400 27BD0038 */   addiu     $sp, $sp, 0x38
/* 58004 80057404 00000000 */  nop        
/* 58008 80057408 00000000 */  nop        
/* 5800C 8005740C 00000000 */  nop        
