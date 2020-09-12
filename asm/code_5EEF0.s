.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005E2F0
/* 5EEF0 8005E2F0 18A0001F */  blez      $a1, .L8005E370
/* 5EEF4 8005E2F4 00000000 */  nop       
/* 5EEF8 8005E2F8 240B2000 */  addiu     $t3, $zero, 0x2000
/* 5EEFC 8005E2FC 00AB082B */  sltu      $at, $a1, $t3
/* 5EF00 8005E300 1020001D */  beqz      $at, .L8005E378
/* 5EF04 8005E304 00000000 */  nop       
/* 5EF08 8005E308 00804025 */  or        $t0, $a0, $zero
/* 5EF0C 8005E30C 00854821 */  addu      $t1, $a0, $a1
/* 5EF10 8005E310 0109082B */  sltu      $at, $t0, $t1
/* 5EF14 8005E314 10200016 */  beqz      $at, .L8005E370
/* 5EF18 8005E318 00000000 */  nop       
/* 5EF1C 8005E31C 310A000F */  andi      $t2, $t0, 0xf
/* 5EF20 8005E320 11400007 */  beqz      $t2, .L8005E340
/* 5EF24 8005E324 2529FFF0 */  addiu     $t1, $t1, -0x10
/* 5EF28 8005E328 010A4023 */  subu      $t0, $t0, $t2
/* 5EF2C 8005E32C BD150000 */  cache     0x15, ($t0)
/* 5EF30 8005E330 0109082B */  sltu      $at, $t0, $t1
/* 5EF34 8005E334 1020000E */  beqz      $at, .L8005E370
/* 5EF38 8005E338 00000000 */  nop       
/* 5EF3C 8005E33C 25080010 */  addiu     $t0, $t0, 0x10
.L8005E340:
/* 5EF40 8005E340 312A000F */  andi      $t2, $t1, 0xf
/* 5EF44 8005E344 11400006 */  beqz      $t2, .L8005E360
/* 5EF48 8005E348 00000000 */  nop       
/* 5EF4C 8005E34C 012A4823 */  subu      $t1, $t1, $t2
/* 5EF50 8005E350 BD350010 */  cache     0x15, 0x10($t1)
/* 5EF54 8005E354 0128082B */  sltu      $at, $t1, $t0
/* 5EF58 8005E358 14200005 */  bnez      $at, .L8005E370
/* 5EF5C 8005E35C 00000000 */  nop       
.L8005E360:
/* 5EF60 8005E360 BD110000 */  cache     0x11, ($t0)
/* 5EF64 8005E364 0109082B */  sltu      $at, $t0, $t1
/* 5EF68 8005E368 1420FFFD */  bnez      $at, .L8005E360
/* 5EF6C 8005E36C 25080010 */  addiu     $t0, $t0, 0x10
.L8005E370:
/* 5EF70 8005E370 03E00008 */  jr        $ra
/* 5EF74 8005E374 00000000 */  nop       
.L8005E378:
/* 5EF78 8005E378 3C088000 */  lui       $t0, 0x8000
/* 5EF7C 8005E37C 010B4821 */  addu      $t1, $t0, $t3
/* 5EF80 8005E380 2529FFF0 */  addiu     $t1, $t1, -0x10
.L8005E384:
/* 5EF84 8005E384 BD010000 */  cache     1, ($t0)
/* 5EF88 8005E388 0109082B */  sltu      $at, $t0, $t1
/* 5EF8C 8005E38C 1420FFFD */  bnez      $at, .L8005E384
/* 5EF90 8005E390 25080010 */  addiu     $t0, $t0, 0x10
/* 5EF94 8005E394 03E00008 */  jr        $ra
/* 5EF98 8005E398 00000000 */  nop       
/* 5EF9C 8005E39C 00000000 */  nop       
