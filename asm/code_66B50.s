.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80065F50
/* 66B50 80065F50 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 66B54 80065F54 AFBF001C */  sw         $ra, 0x1c($sp)
/* 66B58 80065F58 AFA40028 */  sw         $a0, 0x28($sp)
/* 66B5C 80065F5C AFA5002C */  sw         $a1, 0x2c($sp)
/* 66B60 80065F60 AFA60030 */  sw         $a2, 0x30($sp)
/* 66B64 80065F64 0C018AA4 */  jal        __osDisableInt
/* 66B68 80065F68 AFB00018 */   sw        $s0, 0x18($sp)
/* 66B6C 80065F6C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 66B70 80065F70 8FAE002C */  lw         $t6, 0x2c($sp)
/* 66B74 80065F74 8FA80028 */  lw         $t0, 0x28($sp)
/* 66B78 80065F78 3C018008 */  lui        $at, 0x8008
/* 66B7C 80065F7C 000FC0C0 */  sll        $t8, $t7, 3
/* 66B80 80065F80 00380821 */  addu       $at, $at, $t8
/* 66B84 80065F84 AC2E9650 */  sw         $t6, -0x69b0($at)
/* 66B88 80065F88 8FB90030 */  lw         $t9, 0x30($sp)
/* 66B8C 80065F8C 3C018008 */  lui        $at, 0x8008
/* 66B90 80065F90 000848C0 */  sll        $t1, $t0, 3
/* 66B94 80065F94 00408025 */  or         $s0, $v0, $zero
/* 66B98 80065F98 00290821 */  addu       $at, $at, $t1
/* 66B9C 80065F9C 02002025 */  or         $a0, $s0, $zero
/* 66BA0 80065FA0 0C018AC0 */  jal        __osRestoreInt
/* 66BA4 80065FA4 AC399654 */   sw        $t9, -0x69ac($at)
/* 66BA8 80065FA8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 66BAC 80065FAC 8FB00018 */  lw         $s0, 0x18($sp)
/* 66BB0 80065FB0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 66BB4 80065FB4 03E00008 */  jr         $ra
/* 66BB8 80065FB8 00000000 */   nop       
/* 66BBC 80065FBC 00000000 */  nop        
