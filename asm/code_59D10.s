.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80059110
/* 59D10 80059110 40846000 */  mtc0      $a0, $12
/* 59D14 80059114 00000000 */  nop       
/* 59D18 80059118 03E00008 */  jr        $ra
/* 59D1C 8005911C 00000000 */  nop       

glabel func_80059120
/* 59D20 80059120 18A00011 */  blez      $a1, .L80059168
/* 59D24 80059124 00000000 */  nop       
/* 59D28 80059128 240B2000 */  addiu     $t3, $zero, 0x2000
/* 59D2C 8005912C 00AB082B */  sltu      $at, $a1, $t3
/* 59D30 80059130 1020000F */  beqz      $at, .L80059170
/* 59D34 80059134 00000000 */  nop       
/* 59D38 80059138 00804025 */  or        $t0, $a0, $zero
/* 59D3C 8005913C 00854821 */  addu      $t1, $a0, $a1
/* 59D40 80059140 0109082B */  sltu      $at, $t0, $t1
/* 59D44 80059144 10200008 */  beqz      $at, .L80059168
/* 59D48 80059148 00000000 */  nop       
/* 59D4C 8005914C 310A000F */  andi      $t2, $t0, 0xf
/* 59D50 80059150 2529FFF0 */  addiu     $t1, $t1, -0x10
/* 59D54 80059154 010A4023 */  subu      $t0, $t0, $t2
.L80059158:
/* 59D58 80059158 BD190000 */  cache     0x19, ($t0)
/* 59D5C 8005915C 0109082B */  sltu      $at, $t0, $t1
/* 59D60 80059160 1420FFFD */  bnez      $at, .L80059158
/* 59D64 80059164 25080010 */  addiu     $t0, $t0, 0x10
.L80059168:
/* 59D68 80059168 03E00008 */  jr        $ra
/* 59D6C 8005916C 00000000 */  nop       
.L80059170:
/* 59D70 80059170 3C088000 */  lui       $t0, 0x8000
/* 59D74 80059174 010B4821 */  addu      $t1, $t0, $t3
/* 59D78 80059178 2529FFF0 */  addiu     $t1, $t1, -0x10
.L8005917C:
/* 59D7C 8005917C BD010000 */  cache     1, ($t0)
/* 59D80 80059180 0109082B */  sltu      $at, $t0, $t1
/* 59D84 80059184 1420FFFD */  bnez      $at, .L8005917C
/* 59D88 80059188 25080010 */  addiu     $t0, $t0, 0x10
/* 59D8C 8005918C 03E00008 */  jr        $ra
/* 59D90 80059190 00000000 */  nop       
/* 59D94 80059194 00000000 */  nop       
/* 59D98 80059198 00000000 */  nop       
/* 59D9C 8005919C 00000000 */  nop       
