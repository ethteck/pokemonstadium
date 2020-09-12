.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80059000
/* 59C00 80059000 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 59C04 80059004 AFA7002C */  sw        $a3, 0x2c($sp)
/* 59C08 80059008 8FAE002C */  lw        $t6, 0x2c($sp)
/* 59C0C 8005900C AFBF0014 */  sw        $ra, 0x14($sp)
/* 59C10 80059010 AFA40020 */  sw        $a0, 0x20($sp)
/* 59C14 80059014 AFA50024 */  sw        $a1, 0x24($sp)
/* 59C18 80059018 AFA60028 */  sw        $a2, 0x28($sp)
/* 59C1C 8005901C 19C00016 */  blez      $t6, .L80059078
/* 59C20 80059020 AFA0001C */  sw        $zero, 0x1c($sp)
.L80059024:
/* 59C24 80059024 8FA40020 */  lw        $a0, 0x20($sp)
/* 59C28 80059028 93A50027 */  lbu       $a1, 0x27($sp)
/* 59C2C 8005902C 0C019720 */  jal       func_80065C80
/* 59C30 80059030 8FA60028 */  lw        $a2, 0x28($sp)
/* 59C34 80059034 AFA2001C */  sw        $v0, 0x1c($sp)
/* 59C38 80059038 8FAF001C */  lw        $t7, 0x1c($sp)
/* 59C3C 8005903C 11E00003 */  beqz      $t7, .L8005904C
/* 59C40 80059040 00000000 */  nop       
/* 59C44 80059044 1000000D */  b         .L8005907C
/* 59C48 80059048 01E01025 */  or        $v0, $t7, $zero
.L8005904C:
/* 59C4C 8005904C 8FB8002C */  lw        $t8, 0x2c($sp)
/* 59C50 80059050 93A80027 */  lbu       $t0, 0x27($sp)
/* 59C54 80059054 8FAA0028 */  lw        $t2, 0x28($sp)
/* 59C58 80059058 2719FFF8 */  addiu     $t9, $t8, -8
/* 59C5C 8005905C AFB9002C */  sw        $t9, 0x2c($sp)
/* 59C60 80059060 8FAC002C */  lw        $t4, 0x2c($sp)
/* 59C64 80059064 25090001 */  addiu     $t1, $t0, 1
/* 59C68 80059068 254B0008 */  addiu     $t3, $t2, 8
/* 59C6C 8005906C A3A90027 */  sb        $t1, 0x27($sp)
/* 59C70 80059070 1D80FFEC */  bgtz      $t4, .L80059024
/* 59C74 80059074 AFAB0028 */  sw        $t3, 0x28($sp)
.L80059078:
/* 59C78 80059078 8FA2001C */  lw        $v0, 0x1c($sp)
.L8005907C:
/* 59C7C 8005907C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 59C80 80059080 27BD0020 */  addiu     $sp, $sp, 0x20
/* 59C84 80059084 03E00008 */  jr        $ra
/* 59C88 80059088 00000000 */  nop       
/* 59C8C 8005908C 00000000 */  nop       
