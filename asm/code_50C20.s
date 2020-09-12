.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80050020
/* 50C20 80050020 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 50C24 80050024 AFBF0014 */  sw        $ra, 0x14($sp)
/* 50C28 80050028 8C850008 */  lw        $a1, 8($a0)
/* 50C2C 8005002C 00803825 */  or        $a3, $a0, $zero
/* 50C30 80050030 50A0001F */  beql      $a1, $zero, .L800500B0
/* 50C34 80050034 8FBF0014 */  lw        $ra, 0x14($sp)
/* 50C38 80050038 8CAE0088 */  lw        $t6, 0x88($a1)
/* 50C3C 8005003C 51C00017 */  beql      $t6, $zero, .L8005009C
/* 50C40 80050040 00A02025 */  or        $a0, $a1, $zero
/* 50C44 80050044 0C01257E */  jal       func_800495F8
/* 50C48 80050048 AFA40018 */  sw        $a0, 0x18($sp)
/* 50C4C 8005004C 8FA70018 */  lw        $a3, 0x18($sp)
/* 50C50 80050050 10400016 */  beqz      $v0, .L800500AC
/* 50C54 80050054 00403025 */  or        $a2, $v0, $zero
/* 50C58 80050058 3C0F8008 */  lui       $t7, 0x8008
/* 50C5C 8005005C 8DEF8584 */  lw        $t7, -0x7a7c($t7)
/* 50C60 80050060 8CF90008 */  lw        $t9, 8($a3)
/* 50C64 80050064 24050003 */  addiu     $a1, $zero, 3
/* 50C68 80050068 8DF8001C */  lw        $t8, 0x1c($t7)
/* 50C6C 8005006C 8F280088 */  lw        $t0, 0x88($t9)
/* 50C70 80050070 A4400008 */  sh        $zero, 8($v0)
/* 50C74 80050074 03084821 */  addu      $t1, $t8, $t0
/* 50C78 80050078 AC490004 */  sw        $t1, 4($v0)
/* 50C7C 8005007C 8CEA0008 */  lw        $t2, 8($a3)
/* 50C80 80050080 AC4A000C */  sw        $t2, 0xc($v0)
/* 50C84 80050084 8CE40008 */  lw        $a0, 8($a3)
/* 50C88 80050088 0C011D40 */  jal       func_80047500
/* 50C8C 8005008C AFA70018 */  sw        $a3, 0x18($sp)
/* 50C90 80050090 10000005 */  b         .L800500A8
/* 50C94 80050094 8FA70018 */  lw        $a3, 0x18($sp)
/* 50C98 80050098 00A02025 */  or        $a0, $a1, $zero
.L8005009C:
/* 50C9C 8005009C 0C0125AB */  jal       func_800496AC
/* 50CA0 800500A0 AFA70018 */  sw        $a3, 0x18($sp)
/* 50CA4 800500A4 8FA70018 */  lw        $a3, 0x18($sp)
.L800500A8:
/* 50CA8 800500A8 ACE00008 */  sw        $zero, 8($a3)
.L800500AC:
/* 50CAC 800500AC 8FBF0014 */  lw        $ra, 0x14($sp)
.L800500B0:
/* 50CB0 800500B0 27BD0018 */  addiu     $sp, $sp, 0x18
/* 50CB4 800500B4 03E00008 */  jr        $ra
/* 50CB8 800500B8 00000000 */  nop       
/* 50CBC 800500BC 00000000 */  nop       
