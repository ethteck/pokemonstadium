.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005A9E0
/* 5B5E0 8005A9E0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 5B5E4 8005A9E4 AFBF001C */  sw        $ra, 0x1c($sp)
/* 5B5E8 8005A9E8 AFA40028 */  sw        $a0, 0x28($sp)
/* 5B5EC 8005A9EC 0C018AA4 */  jal       func_80062A90
/* 5B5F0 8005A9F0 AFB00018 */  sw        $s0, 0x18($sp)
/* 5B5F4 8005A9F4 93AE002B */  lbu       $t6, 0x2b($sp)
/* 5B5F8 8005A9F8 00408025 */  or        $s0, $v0, $zero
/* 5B5FC 8005A9FC 11C00007 */  beqz      $t6, .L8005AA1C
/* 5B600 8005AA00 00000000 */  nop       
/* 5B604 8005AA04 3C0F8008 */  lui       $t7, 0x8008
/* 5B608 8005AA08 8DEFACF4 */  lw        $t7, -0x530c($t7)
/* 5B60C 8005AA0C 95F80000 */  lhu       $t8, ($t7)
/* 5B610 8005AA10 37190020 */  ori       $t9, $t8, 0x20
/* 5B614 8005AA14 10000007 */  b         .L8005AA34
/* 5B618 8005AA18 A5F90000 */  sh        $t9, ($t7)
.L8005AA1C:
/* 5B61C 8005AA1C 3C088008 */  lui       $t0, 0x8008
/* 5B620 8005AA20 8D08ACF4 */  lw        $t0, -0x530c($t0)
/* 5B624 8005AA24 2401FFDF */  addiu     $at, $zero, -0x21
/* 5B628 8005AA28 95090000 */  lhu       $t1, ($t0)
/* 5B62C 8005AA2C 01215024 */  and       $t2, $t1, $at
/* 5B630 8005AA30 A50A0000 */  sh        $t2, ($t0)
.L8005AA34:
/* 5B634 8005AA34 0C018AC0 */  jal       func_80062B00
/* 5B638 8005AA38 02002025 */  or        $a0, $s0, $zero
/* 5B63C 8005AA3C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 5B640 8005AA40 8FB00018 */  lw        $s0, 0x18($sp)
/* 5B644 8005AA44 27BD0028 */  addiu     $sp, $sp, 0x28
/* 5B648 8005AA48 03E00008 */  jr        $ra
/* 5B64C 8005AA4C 00000000 */  nop       

glabel func_8005AA50
/* 5B650 8005AA50 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 5B654 8005AA54 AFBF0014 */  sw        $ra, 0x14($sp)
/* 5B658 8005AA58 AFA40018 */  sw        $a0, 0x18($sp)
/* 5B65C 8005AA5C 0C01795C */  jal       func_8005E570
/* 5B660 8005AA60 AFA5001C */  sw        $a1, 0x1c($sp)
/* 5B664 8005AA64 10400003 */  beqz      $v0, .L8005AA74
/* 5B668 8005AA68 8FAE0018 */  lw        $t6, 0x18($sp)
/* 5B66C 8005AA6C 10000007 */  b         .L8005AA8C
/* 5B670 8005AA70 2402FFFF */  addiu     $v0, $zero, -1
.L8005AA74:
/* 5B674 8005AA74 3C01A000 */  lui       $at, 0xa000
/* 5B678 8005AA78 01C17825 */  or        $t7, $t6, $at
/* 5B67C 8005AA7C 8DF80000 */  lw        $t8, ($t7)
/* 5B680 8005AA80 8FB9001C */  lw        $t9, 0x1c($sp)
/* 5B684 8005AA84 00001025 */  or        $v0, $zero, $zero
/* 5B688 8005AA88 AF380000 */  sw        $t8, ($t9)
.L8005AA8C:
/* 5B68C 8005AA8C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 5B690 8005AA90 27BD0018 */  addiu     $sp, $sp, 0x18
/* 5B694 8005AA94 03E00008 */  jr        $ra
/* 5B698 8005AA98 00000000 */  nop       
/* 5B69C 8005AA9C 00000000 */  nop       
