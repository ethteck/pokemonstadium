.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005E250
/* 5EE50 8005E250 00801025 */  or        $v0, $a0, $zero
/* 5EE54 8005E254 10C00007 */  beqz      $a2, .L8005E274
/* 5EE58 8005E258 00A01825 */  or        $v1, $a1, $zero
.L8005E25C:
/* 5EE5C 8005E25C 906E0000 */  lbu       $t6, ($v1)
/* 5EE60 8005E260 24C6FFFF */  addiu     $a2, $a2, -1
/* 5EE64 8005E264 24420001 */  addiu     $v0, $v0, 1
/* 5EE68 8005E268 24630001 */  addiu     $v1, $v1, 1
/* 5EE6C 8005E26C 14C0FFFB */  bnez      $a2, .L8005E25C
/* 5EE70 8005E270 A04EFFFF */  sb        $t6, -1($v0)
.L8005E274:
/* 5EE74 8005E274 03E00008 */  jr        $ra
/* 5EE78 8005E278 00801025 */  or        $v0, $a0, $zero

glabel func_8005E27C
/* 5EE7C 8005E27C 908E0000 */  lbu       $t6, ($a0)
/* 5EE80 8005E280 00801825 */  or        $v1, $a0, $zero
/* 5EE84 8005E284 11C00005 */  beqz      $t6, .L8005E29C
/* 5EE88 8005E288 00000000 */  nop       
/* 5EE8C 8005E28C 906F0001 */  lbu       $t7, 1($v1)
.L8005E290:
/* 5EE90 8005E290 24630001 */  addiu     $v1, $v1, 1
/* 5EE94 8005E294 55E0FFFE */  bnel      $t7, $zero, .L8005E290
/* 5EE98 8005E298 906F0001 */  lbu       $t7, 1($v1)
.L8005E29C:
/* 5EE9C 8005E29C 03E00008 */  jr        $ra
/* 5EEA0 8005E2A0 00641023 */  subu      $v0, $v1, $a0

glabel func_8005E2A4
/* 5EEA4 8005E2A4 90830000 */  lbu       $v1, ($a0)
/* 5EEA8 8005E2A8 30AE00FF */  andi      $t6, $a1, 0xff
/* 5EEAC 8005E2AC 30A200FF */  andi      $v0, $a1, 0xff
/* 5EEB0 8005E2B0 51C3000A */  beql      $t6, $v1, .L8005E2DC
/* 5EEB4 8005E2B4 00801025 */  or        $v0, $a0, $zero
.L8005E2B8:
/* 5EEB8 8005E2B8 54600004 */  bnel      $v1, $zero, .L8005E2CC
/* 5EEBC 8005E2BC 90830001 */  lbu       $v1, 1($a0)
/* 5EEC0 8005E2C0 03E00008 */  jr        $ra
/* 5EEC4 8005E2C4 00001025 */  or        $v0, $zero, $zero
/* 5EEC8 8005E2C8 90830001 */  lbu       $v1, 1($a0)
.L8005E2CC:
/* 5EECC 8005E2CC 24840001 */  addiu     $a0, $a0, 1
/* 5EED0 8005E2D0 1443FFF9 */  bne       $v0, $v1, .L8005E2B8
/* 5EED4 8005E2D4 00000000 */  nop       
/* 5EED8 8005E2D8 00801025 */  or        $v0, $a0, $zero
.L8005E2DC:
/* 5EEDC 8005E2DC 03E00008 */  jr        $ra
/* 5EEE0 8005E2E0 00000000 */  nop       
/* 5EEE4 8005E2E4 00000000 */  nop       
/* 5EEE8 8005E2E8 00000000 */  nop       
/* 5EEEC 8005E2EC 00000000 */  nop       
