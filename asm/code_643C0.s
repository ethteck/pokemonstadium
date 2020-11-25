.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800637C0
/* 643C0 800637C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 643C4 800637C4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 643C8 800637C8 0C018AA4 */  jal        func_80062A90
/* 643CC 800637CC AFB00018 */   sw        $s0, 0x18($sp)
/* 643D0 800637D0 3C0F8008 */  lui        $t7, 0x8008
/* 643D4 800637D4 8DEF9630 */  lw         $t7, -0x69d0($t7)
/* 643D8 800637D8 240E0002 */  addiu      $t6, $zero, 2
/* 643DC 800637DC 3C048008 */  lui        $a0, 0x8008
/* 643E0 800637E0 00408025 */  or         $s0, $v0, $zero
/* 643E4 800637E4 24849628 */  addiu      $a0, $a0, -0x69d8
/* 643E8 800637E8 0C015F3B */  jal        func_80057CEC
/* 643EC 800637EC A5EE0010 */   sh        $t6, 0x10($t7)
/* 643F0 800637F0 0C018AC0 */  jal        func_80062B00
/* 643F4 800637F4 02002025 */   or        $a0, $s0, $zero
/* 643F8 800637F8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 643FC 800637FC 8FB00018 */  lw         $s0, 0x18($sp)
/* 64400 80063800 27BD0028 */  addiu      $sp, $sp, 0x28
/* 64404 80063804 03E00008 */  jr         $ra
/* 64408 80063808 00000000 */   nop       
/* 6440C 8006380C 00000000 */  nop        
