.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80062270
/* 62E70 80062270 3C058008 */  lui        $a1, 0x8008
/* 62E74 80062274 24A596A8 */  addiu      $a1, $a1, -0x6958
/* 62E78 80062278 8CAE0000 */  lw         $t6, ($a1)
/* 62E7C 8006227C 44844000 */  mtc1       $a0, $f8
/* 62E80 80062280 3C014F80 */  lui        $at, 0x4f80
/* 62E84 80062284 448E2000 */  mtc1       $t6, $f4
/* 62E88 80062288 468042A0 */  cvt.s.w    $f10, $f8
/* 62E8C 8006228C 04810004 */  bgez       $a0, .L800622A0
/* 62E90 80062290 468021A0 */   cvt.s.w   $f6, $f4
/* 62E94 80062294 44818000 */  mtc1       $at, $f16
/* 62E98 80062298 00000000 */  nop        
/* 62E9C 8006229C 46105280 */  add.s      $f10, $f10, $f16
.L800622A0:
/* 62EA0 800622A0 460A3483 */  div.s      $f18, $f6, $f10
/* 62EA4 800622A4 3C013F00 */  lui        $at, 0x3f00
/* 62EA8 800622A8 44812000 */  mtc1       $at, $f4
/* 62EAC 800622AC 24030001 */  addiu      $v1, $zero, 1
/* 62EB0 800622B0 3C014F00 */  lui        $at, 0x4f00
/* 62EB4 800622B4 3C08A450 */  lui        $t0, 0xa450
/* 62EB8 800622B8 3C0AA450 */  lui        $t2, 0xa450
/* 62EBC 800622BC 46049000 */  add.s      $f0, $f18, $f4
/* 62EC0 800622C0 444FF800 */  cfc1       $t7, $31
/* 62EC4 800622C4 44C3F800 */  ctc1       $v1, $31
/* 62EC8 800622C8 00000000 */  nop        
/* 62ECC 800622CC 46000224 */  cvt.w.s    $f8, $f0
/* 62ED0 800622D0 4443F800 */  cfc1       $v1, $31
/* 62ED4 800622D4 00000000 */  nop        
/* 62ED8 800622D8 30630078 */  andi       $v1, $v1, 0x78
/* 62EDC 800622DC 50600013 */  beql       $v1, $zero, .L8006232C
/* 62EE0 800622E0 44034000 */   mfc1      $v1, $f8
/* 62EE4 800622E4 44814000 */  mtc1       $at, $f8
/* 62EE8 800622E8 24030001 */  addiu      $v1, $zero, 1
/* 62EEC 800622EC 46080201 */  sub.s      $f8, $f0, $f8
/* 62EF0 800622F0 44C3F800 */  ctc1       $v1, $31
/* 62EF4 800622F4 00000000 */  nop        
/* 62EF8 800622F8 46004224 */  cvt.w.s    $f8, $f8
/* 62EFC 800622FC 4443F800 */  cfc1       $v1, $31
/* 62F00 80062300 00000000 */  nop        
/* 62F04 80062304 30630078 */  andi       $v1, $v1, 0x78
/* 62F08 80062308 14600005 */  bnez       $v1, .L80062320
/* 62F0C 8006230C 00000000 */   nop       
/* 62F10 80062310 44034000 */  mfc1       $v1, $f8
/* 62F14 80062314 3C018000 */  lui        $at, 0x8000
/* 62F18 80062318 10000007 */  b          .L80062338
/* 62F1C 8006231C 00611825 */   or        $v1, $v1, $at
.L80062320:
/* 62F20 80062320 10000005 */  b          .L80062338
/* 62F24 80062324 2403FFFF */   addiu     $v1, $zero, -1
/* 62F28 80062328 44034000 */  mfc1       $v1, $f8
.L8006232C:
/* 62F2C 8006232C 00000000 */  nop        
/* 62F30 80062330 0460FFFB */  bltz       $v1, .L80062320
/* 62F34 80062334 00000000 */   nop       
.L80062338:
/* 62F38 80062338 44CFF800 */  ctc1       $t7, $31
/* 62F3C 8006233C 2C610084 */  sltiu      $at, $v1, 0x84
/* 62F40 80062340 10200003 */  beqz       $at, .L80062350
/* 62F44 80062344 2479FFFF */   addiu     $t9, $v1, -1
/* 62F48 80062348 03E00008 */  jr         $ra
/* 62F4C 8006234C 2402FFFF */   addiu     $v0, $zero, -1
.L80062350:
/* 62F50 80062350 24010042 */  addiu      $at, $zero, 0x42
/* 62F54 80062354 0061001B */  divu       $zero, $v1, $at
/* 62F58 80062358 00001012 */  mflo       $v0
/* 62F5C 8006235C 305800FF */  andi       $t8, $v0, 0xff
/* 62F60 80062360 2B010011 */  slti       $at, $t8, 0x11
/* 62F64 80062364 14200002 */  bnez       $at, .L80062370
/* 62F68 80062368 304400FF */   andi      $a0, $v0, 0xff
/* 62F6C 8006236C 24040010 */  addiu      $a0, $zero, 0x10
.L80062370:
/* 62F70 80062370 AD190010 */  sw         $t9, 0x10($t0)
/* 62F74 80062374 2489FFFF */  addiu      $t1, $a0, -1
/* 62F78 80062378 AD490014 */  sw         $t1, 0x14($t2)
/* 62F7C 8006237C 8CAB0000 */  lw         $t3, ($a1)
/* 62F80 80062380 0163001A */  div        $zero, $t3, $v1
/* 62F84 80062384 00001012 */  mflo       $v0
/* 62F88 80062388 14600002 */  bnez       $v1, .L80062394
/* 62F8C 8006238C 00000000 */   nop       
/* 62F90 80062390 0007000D */  break      7
.L80062394:
/* 62F94 80062394 2401FFFF */   addiu     $at, $zero, -1
/* 62F98 80062398 14610004 */  bne        $v1, $at, .L800623AC
/* 62F9C 8006239C 3C018000 */   lui       $at, 0x8000
/* 62FA0 800623A0 15610002 */  bne        $t3, $at, .L800623AC
/* 62FA4 800623A4 00000000 */   nop       
/* 62FA8 800623A8 0006000D */  break      6
.L800623AC:
/* 62FAC 800623AC 03E00008 */   jr        $ra
/* 62FB0 800623B0 00000000 */   nop       
/* 62FB4 800623B4 00000000 */  nop        
/* 62FB8 800623B8 00000000 */  nop        
/* 62FBC 800623BC 00000000 */  nop        
