.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80065310
/* 65F10 80065310 8FAE0010 */  lw         $t6, 0x10($sp)
/* 65F14 80065314 AFA40000 */  sw         $a0, ($sp)
/* 65F18 80065318 AFA50004 */  sw         $a1, 4($sp)
/* 65F1C 8006531C 00EE0019 */  multu      $a3, $t6
/* 65F20 80065320 8CD90008 */  lw         $t9, 8($a2)
/* 65F24 80065324 8CD80000 */  lw         $t8, ($a2)
/* 65F28 80065328 8CC40004 */  lw         $a0, 4($a2)
/* 65F2C 8006532C 2401FFF0 */  addiu      $at, $zero, -0x10
/* 65F30 80065330 03194021 */  addu       $t0, $t8, $t9
/* 65F34 80065334 00001825 */  or         $v1, $zero, $zero
/* 65F38 80065338 00001012 */  mflo       $v0
/* 65F3C 8006533C 2442000F */  addiu      $v0, $v0, 0xf
/* 65F40 80065340 00417824 */  and        $t7, $v0, $at
/* 65F44 80065344 008F4821 */  addu       $t1, $a0, $t7
/* 65F48 80065348 0109082B */  sltu       $at, $t0, $t1
/* 65F4C 8006534C 14200003 */  bnez       $at, .L8006535C
/* 65F50 80065350 008F5021 */   addu      $t2, $a0, $t7
/* 65F54 80065354 00801825 */  or         $v1, $a0, $zero
/* 65F58 80065358 ACCA0004 */  sw         $t2, 4($a2)
.L8006535C:
/* 65F5C 8006535C 03E00008 */  jr         $ra
/* 65F60 80065360 00601025 */   or        $v0, $v1, $zero
/* 65F64 80065364 00000000 */  nop        
/* 65F68 80065368 00000000 */  nop        
/* 65F6C 8006536C 00000000 */  nop        
