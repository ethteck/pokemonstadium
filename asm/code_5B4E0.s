.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005A8E0
/* 5B4E0 8005A8E0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 5B4E4 8005A8E4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 5B4E8 8005A8E8 AFA5001C */  sw        $a1, 0x1c($sp)
/* 5B4EC 8005A8EC 3C0EA480 */  lui       $t6, 0xa480
/* 5B4F0 8005A8F0 8DCF0018 */  lw        $t7, 0x18($t6)
/* 5B4F4 8005A8F4 00803025 */  or        $a2, $a0, $zero
/* 5B4F8 8005A8F8 24010001 */  addiu     $at, $zero, 1
/* 5B4FC 8005A8FC 31F80003 */  andi      $t8, $t7, 3
/* 5B500 8005A900 13000003 */  beqz      $t8, .L8005A910
/* 5B504 8005A904 00000000 */  nop       
/* 5B508 8005A908 1000001C */  b         .L8005A97C
/* 5B50C 8005A90C 2402FFFF */  addiu     $v0, $zero, -1
.L8005A910:
/* 5B510 8005A910 14C10005 */  bne       $a2, $at, .L8005A928
/* 5B514 8005A914 8FA4001C */  lw        $a0, 0x1c($sp)
/* 5B518 8005A918 24050040 */  addiu     $a1, $zero, 0x40
/* 5B51C 8005A91C 0C016448 */  jal       func_80059120
/* 5B520 8005A920 AFA60018 */  sw        $a2, 0x18($sp)
/* 5B524 8005A924 8FA60018 */  lw        $a2, 0x18($sp)
.L8005A928:
/* 5B528 8005A928 8FA4001C */  lw        $a0, 0x1c($sp)
/* 5B52C 8005A92C 0C016424 */  jal       func_80059090
/* 5B530 8005A930 AFA60018 */  sw        $a2, 0x18($sp)
/* 5B534 8005A934 8FA60018 */  lw        $a2, 0x18($sp)
/* 5B538 8005A938 3C19A480 */  lui       $t9, 0xa480
/* 5B53C 8005A93C AF220000 */  sw        $v0, ($t9)
/* 5B540 8005A940 14C00006 */  bnez      $a2, .L8005A95C
/* 5B544 8005A944 3C0A1FC0 */  lui       $t2, 0x1fc0
/* 5B548 8005A948 3C081FC0 */  lui       $t0, 0x1fc0
/* 5B54C 8005A94C 350807C0 */  ori       $t0, $t0, 0x7c0
/* 5B550 8005A950 3C09A480 */  lui       $t1, 0xa480
/* 5B554 8005A954 10000004 */  b         .L8005A968
/* 5B558 8005A958 AD280004 */  sw        $t0, 4($t1)
.L8005A95C:
/* 5B55C 8005A95C 354A07C0 */  ori       $t2, $t2, 0x7c0
/* 5B560 8005A960 3C0BA480 */  lui       $t3, 0xa480
/* 5B564 8005A964 AD6A0010 */  sw        $t2, 0x10($t3)
.L8005A968:
/* 5B568 8005A968 14C00003 */  bnez      $a2, .L8005A978
/* 5B56C 8005A96C 8FA4001C */  lw        $a0, 0x1c($sp)
/* 5B570 8005A970 0C0178BC */  jal       func_8005E2F0
/* 5B574 8005A974 24050040 */  addiu     $a1, $zero, 0x40
.L8005A978:
/* 5B578 8005A978 00001025 */  or        $v0, $zero, $zero
.L8005A97C:
/* 5B57C 8005A97C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 5B580 8005A980 27BD0018 */  addiu     $sp, $sp, 0x18
/* 5B584 8005A984 03E00008 */  jr        $ra
/* 5B588 8005A988 00000000 */  nop       
/* 5B58C 8005A98C 00000000 */  nop       
