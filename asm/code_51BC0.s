.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80050FC0
/* 51BC0 80050FC0 3C0E8008 */  lui        $t6, 0x8008
/* 51BC4 80050FC4 8DCE95B0 */  lw         $t6, -0x6a50($t6)
/* 51BC8 80050FC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 51BCC 80050FCC AFBF0014 */  sw         $ra, 0x14($sp)
/* 51BD0 80050FD0 15C00003 */  bnez       $t6, .L80050FE0
/* 51BD4 80050FD4 00000000 */   nop       
/* 51BD8 80050FD8 10000017 */  b          .L80051038
/* 51BDC 80050FDC 2402FFFF */   addiu     $v0, $zero, -1
.L80050FE0:
/* 51BE0 80050FE0 14A00004 */  bnez       $a1, .L80050FF4
/* 51BE4 80050FE4 24180006 */   addiu     $t8, $zero, 6
/* 51BE8 80050FE8 240F0005 */  addiu      $t7, $zero, 5
/* 51BEC 80050FEC 10000002 */  b          .L80050FF8
/* 51BF0 80050FF0 A08F0000 */   sb        $t7, ($a0)
.L80050FF4:
/* 51BF4 80050FF4 A0980000 */  sb         $t8, ($a0)
.L80050FF8:
/* 51BF8 80050FF8 8FA2002C */  lw         $v0, 0x2c($sp)
/* 51BFC 80050FFC A0800001 */  sb         $zero, 1($a0)
/* 51C00 80051000 24190080 */  addiu      $t9, $zero, 0x80
/* 51C04 80051004 50400004 */  beql       $v0, $zero, .L80051018
/* 51C08 80051008 A0800002 */   sb        $zero, 2($a0)
/* 51C0C 8005100C 10000002 */  b          .L80051018
/* 51C10 80051010 A0990002 */   sb        $t9, 2($a0)
/* 51C14 80051014 A0800002 */  sb         $zero, 2($a0)
.L80051018:
/* 51C18 80051018 A0800003 */  sb         $zero, 3($a0)
/* 51C1C 8005101C AC820008 */  sw         $v0, 8($a0)
/* 51C20 80051020 AC86000C */  sw         $a2, 0xc($a0)
/* 51C24 80051024 8FA80028 */  lw         $t0, 0x28($sp)
/* 51C28 80051028 AC870014 */  sw         $a3, 0x14($a0)
/* 51C2C 8005102C 0C014489 */  jal        func_80051224
/* 51C30 80051030 AC880010 */   sw        $t0, 0x10($a0)
/* 51C34 80051034 00001025 */  or         $v0, $zero, $zero
.L80051038:
/* 51C38 80051038 8FBF0014 */  lw         $ra, 0x14($sp)
/* 51C3C 8005103C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 51C40 80051040 03E00008 */  jr         $ra
/* 51C44 80051044 00000000 */   nop       
/* 51C48 80051048 00000000 */  nop        
/* 51C4C 8005104C 00000000 */  nop        
