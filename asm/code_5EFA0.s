.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005E3A0
/* 5EFA0 8005E3A0 3C0E8008 */  lui       $t6, 0x8008
/* 5EFA4 8005E3A4 3C0F8008 */  lui       $t7, 0x8008
/* 5EFA8 8005E3A8 25CE9620 */  addiu     $t6, $t6, -0x69e0
/* 5EFAC 8005E3AC 25EF9620 */  addiu     $t7, $t7, -0x69e0
/* 5EFB0 8005E3B0 AC8E0000 */  sw        $t6, ($a0)
/* 5EFB4 8005E3B4 AC8F0004 */  sw        $t7, 4($a0)
/* 5EFB8 8005E3B8 AC800008 */  sw        $zero, 8($a0)
/* 5EFBC 8005E3BC AC80000C */  sw        $zero, 0xc($a0)
/* 5EFC0 8005E3C0 AC860010 */  sw        $a2, 0x10($a0)
/* 5EFC4 8005E3C4 03E00008 */  jr        $ra
/* 5EFC8 8005E3C8 AC850014 */  sw        $a1, 0x14($a0)
/* 5EFCC 8005E3CC 00000000 */  nop       

glabel func_8005E3D0
/* 5EFD0 8005E3D0 18A00011 */  blez      $a1, .L8005E418
/* 5EFD4 8005E3D4 00000000 */  nop       
/* 5EFD8 8005E3D8 240B4000 */  addiu     $t3, $zero, 0x4000
/* 5EFDC 8005E3DC 00AB082B */  sltu      $at, $a1, $t3
/* 5EFE0 8005E3E0 1020000F */  beqz      $at, .L8005E420
/* 5EFE4 8005E3E4 00000000 */  nop       
/* 5EFE8 8005E3E8 00804025 */  or        $t0, $a0, $zero
/* 5EFEC 8005E3EC 00854821 */  addu      $t1, $a0, $a1
/* 5EFF0 8005E3F0 0109082B */  sltu      $at, $t0, $t1
/* 5EFF4 8005E3F4 10200008 */  beqz      $at, .L8005E418
/* 5EFF8 8005E3F8 00000000 */  nop       
/* 5EFFC 8005E3FC 310A001F */  andi      $t2, $t0, 0x1f
/* 5F000 8005E400 2529FFE0 */  addiu     $t1, $t1, -0x20
/* 5F004 8005E404 010A4023 */  subu      $t0, $t0, $t2
.L8005E408:
/* 5F008 8005E408 BD100000 */  cache     0x10, ($t0)
/* 5F00C 8005E40C 0109082B */  sltu      $at, $t0, $t1
/* 5F010 8005E410 1420FFFD */  bnez      $at, .L8005E408
/* 5F014 8005E414 25080020 */  addiu     $t0, $t0, 0x20
.L8005E418:
/* 5F018 8005E418 03E00008 */  jr        $ra
/* 5F01C 8005E41C 00000000 */  nop       
.L8005E420:
/* 5F020 8005E420 3C088000 */  lui       $t0, 0x8000
/* 5F024 8005E424 010B4821 */  addu      $t1, $t0, $t3
/* 5F028 8005E428 2529FFE0 */  addiu     $t1, $t1, -0x20
.L8005E42C:
/* 5F02C 8005E42C BD000000 */  cache     0, ($t0)
/* 5F030 8005E430 0109082B */  sltu      $at, $t0, $t1
/* 5F034 8005E434 1420FFFD */  bnez      $at, .L8005E42C
/* 5F038 8005E438 25080020 */  addiu     $t0, $t0, 0x20
/* 5F03C 8005E43C 03E00008 */  jr        $ra
/* 5F040 8005E440 00000000 */  nop       
/* 5F044 8005E444 00000000 */  nop       
/* 5F048 8005E448 00000000 */  nop       
/* 5F04C 8005E44C 00000000 */  nop       
