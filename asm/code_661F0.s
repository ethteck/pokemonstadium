.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800655F0
/* 661F0 800655F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 661F4 800655F4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 661F8 800655F8 E7AC0028 */  swc1       $f12, 0x28($sp)
/* 661FC 800655FC 0C018AA4 */  jal        __osDisableInt
/* 66200 80065600 AFB00018 */   sw        $s0, 0x18($sp)
/* 66204 80065604 3C0E8008 */  lui        $t6, 0x8008
/* 66208 80065608 8DCEACF4 */  lw         $t6, -0x530c($t6)
/* 6620C 8006560C C7A40028 */  lwc1       $f4, 0x28($sp)
/* 66210 80065610 3C0F8008 */  lui        $t7, 0x8008
/* 66214 80065614 00408025 */  or         $s0, $v0, $zero
/* 66218 80065618 E5C40024 */  swc1       $f4, 0x24($t6)
/* 6621C 8006561C 8DEFACF4 */  lw         $t7, -0x530c($t7)
/* 66220 80065620 02002025 */  or         $a0, $s0, $zero
/* 66224 80065624 95F80000 */  lhu        $t8, ($t7)
/* 66228 80065628 37190004 */  ori        $t9, $t8, 4
/* 6622C 8006562C 0C018AC0 */  jal        __osRestoreInt
/* 66230 80065630 A5F90000 */   sh        $t9, ($t7)
/* 66234 80065634 8FBF001C */  lw         $ra, 0x1c($sp)
/* 66238 80065638 8FB00018 */  lw         $s0, 0x18($sp)
/* 6623C 8006563C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 66240 80065640 03E00008 */  jr         $ra
/* 66244 80065644 00000000 */   nop       
/* 66248 80065648 00000000 */  nop        
/* 6624C 8006564C 00000000 */  nop        
