.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005F150
/* 5FD50 8005F150 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 5FD54 8005F154 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5FD58 8005F158 0C018AA4 */  jal        __osDisableInt
/* 5FD5C 8005F15C AFB00018 */   sw        $s0, 0x18($sp)
/* 5FD60 8005F160 0C016F40 */  jal        func_8005BD00
/* 5FD64 8005F164 00408025 */   or        $s0, $v0, $zero
/* 5FD68 8005F168 AFA20034 */  sw         $v0, 0x34($sp)
/* 5FD6C 8005F16C 3C0F8010 */  lui        $t7, 0x8010
/* 5FD70 8005F170 8DEF38B8 */  lw         $t7, 0x38b8($t7)
/* 5FD74 8005F174 8FAE0034 */  lw         $t6, 0x34($sp)
/* 5FD78 8005F178 3C088010 */  lui        $t0, 0x8010
/* 5FD7C 8005F17C 3C098010 */  lui        $t1, 0x8010
/* 5FD80 8005F180 8D2938B4 */  lw         $t1, 0x38b4($t1)
/* 5FD84 8005F184 8D0838B0 */  lw         $t0, 0x38b0($t0)
/* 5FD88 8005F188 01CFC023 */  subu       $t8, $t6, $t7
/* 5FD8C 8005F18C AFB80030 */  sw         $t8, 0x30($sp)
/* 5FD90 8005F190 02002025 */  or         $a0, $s0, $zero
/* 5FD94 8005F194 AFA9002C */  sw         $t1, 0x2c($sp)
/* 5FD98 8005F198 0C018AC0 */  jal        __osRestoreInt
/* 5FD9C 8005F19C AFA80028 */   sw        $t0, 0x28($sp)
/* 5FDA0 8005F1A0 8FB90030 */  lw         $t9, 0x30($sp)
/* 5FDA4 8005F1A4 8FAD002C */  lw         $t5, 0x2c($sp)
/* 5FDA8 8005F1A8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5FDAC 8005F1AC 03205825 */  or         $t3, $t9, $zero
/* 5FDB0 8005F1B0 016D1821 */  addu       $v1, $t3, $t5
/* 5FDB4 8005F1B4 8FAC0028 */  lw         $t4, 0x28($sp)
/* 5FDB8 8005F1B8 240A0000 */  addiu      $t2, $zero, 0
/* 5FDBC 8005F1BC 006D082B */  sltu       $at, $v1, $t5
/* 5FDC0 8005F1C0 002A1021 */  addu       $v0, $at, $t2
/* 5FDC4 8005F1C4 8FB00018 */  lw         $s0, 0x18($sp)
/* 5FDC8 8005F1C8 27BD0038 */  addiu      $sp, $sp, 0x38
/* 5FDCC 8005F1CC 03E00008 */  jr         $ra
/* 5FDD0 8005F1D0 004C1021 */   addu      $v0, $v0, $t4
/* 5FDD4 8005F1D4 00000000 */  nop        
/* 5FDD8 8005F1D8 00000000 */  nop        
/* 5FDDC 8005F1DC 00000000 */  nop        
