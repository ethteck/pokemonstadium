.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005E450
/* 5F050 8005E450 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5F054 8005E454 AFA7003C */  sw         $a3, 0x3c($sp)
/* 5F058 8005E458 8FAE003C */  lw         $t6, 0x3c($sp)
/* 5F05C 8005E45C AFBF0024 */  sw         $ra, 0x24($sp)
/* 5F060 8005E460 AFA40030 */  sw         $a0, 0x30($sp)
/* 5F064 8005E464 AFA50034 */  sw         $a1, 0x34($sp)
/* 5F068 8005E468 AFA60038 */  sw         $a2, 0x38($sp)
/* 5F06C 8005E46C 19C0002C */  blez       $t6, .L8005E520
/* 5F070 8005E470 AFA0002C */   sw        $zero, 0x2c($sp)
.L8005E474:
/* 5F074 8005E474 8FA40030 */  lw         $a0, 0x30($sp)
/* 5F078 8005E478 93A50037 */  lbu        $a1, 0x37($sp)
/* 5F07C 8005E47C 0C016F60 */  jal        func_8005BD80
/* 5F080 8005E480 8FA60038 */   lw        $a2, 0x38($sp)
/* 5F084 8005E484 AFA2002C */  sw         $v0, 0x2c($sp)
/* 5F088 8005E488 8FAF002C */  lw         $t7, 0x2c($sp)
/* 5F08C 8005E48C 11E00003 */  beqz       $t7, .L8005E49C
/* 5F090 8005E490 00000000 */   nop       
/* 5F094 8005E494 10000023 */  b          .L8005E524
/* 5F098 8005E498 01E01025 */   or        $v0, $t7, $zero
.L8005E49C:
/* 5F09C 8005E49C 8FB8003C */  lw         $t8, 0x3c($sp)
/* 5F0A0 8005E4A0 93A80037 */  lbu        $t0, 0x37($sp)
/* 5F0A4 8005E4A4 8FAA0038 */  lw         $t2, 0x38($sp)
/* 5F0A8 8005E4A8 3C0E8010 */  lui        $t6, 0x8010
/* 5F0AC 8005E4AC 3C0F8010 */  lui        $t7, 0x8010
/* 5F0B0 8005E4B0 25EF21C0 */  addiu      $t7, $t7, 0x21c0
/* 5F0B4 8005E4B4 25CE21A8 */  addiu      $t6, $t6, 0x21a8
/* 5F0B8 8005E4B8 3C048010 */  lui        $a0, 0x8010
/* 5F0BC 8005E4BC 3C070008 */  lui        $a3, 8
/* 5F0C0 8005E4C0 240C0000 */  addiu      $t4, $zero, 0
/* 5F0C4 8005E4C4 240D0000 */  addiu      $t5, $zero, 0
/* 5F0C8 8005E4C8 2719FFF8 */  addiu      $t9, $t8, -8
/* 5F0CC 8005E4CC 25090001 */  addiu      $t1, $t0, 1
/* 5F0D0 8005E4D0 254B0008 */  addiu      $t3, $t2, 8
/* 5F0D4 8005E4D4 AFB9003C */  sw         $t9, 0x3c($sp)
/* 5F0D8 8005E4D8 A3A90037 */  sb         $t1, 0x37($sp)
/* 5F0DC 8005E4DC AFAB0038 */  sw         $t3, 0x38($sp)
/* 5F0E0 8005E4E0 AFAD0014 */  sw         $t5, 0x14($sp)
/* 5F0E4 8005E4E4 AFAC0010 */  sw         $t4, 0x10($sp)
/* 5F0E8 8005E4E8 34E79544 */  ori        $a3, $a3, 0x9544
/* 5F0EC 8005E4EC 24842188 */  addiu      $a0, $a0, 0x2188
/* 5F0F0 8005E4F0 AFAE0018 */  sw         $t6, 0x18($sp)
/* 5F0F4 8005E4F4 AFAF001C */  sw         $t7, 0x1c($sp)
/* 5F0F8 8005E4F8 0C018FDC */  jal        func_80063F70
/* 5F0FC 8005E4FC 24060000 */   addiu     $a2, $zero, 0
/* 5F100 8005E500 3C048010 */  lui        $a0, 0x8010
/* 5F104 8005E504 248421A8 */  addiu      $a0, $a0, 0x21a8
/* 5F108 8005E508 00002825 */  or         $a1, $zero, $zero
/* 5F10C 8005E50C 0C015AB4 */  jal        func_80056AD0
/* 5F110 8005E510 24060001 */   addiu     $a2, $zero, 1
/* 5F114 8005E514 8FB8003C */  lw         $t8, 0x3c($sp)
/* 5F118 8005E518 1F00FFD6 */  bgtz       $t8, .L8005E474
/* 5F11C 8005E51C 00000000 */   nop       
.L8005E520:
/* 5F120 8005E520 8FA2002C */  lw         $v0, 0x2c($sp)
.L8005E524:
/* 5F124 8005E524 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5F128 8005E528 27BD0030 */  addiu      $sp, $sp, 0x30
/* 5F12C 8005E52C 03E00008 */  jr         $ra
/* 5F130 8005E530 00000000 */   nop       
/* 5F134 8005E534 00000000 */  nop        
/* 5F138 8005E538 00000000 */  nop        
/* 5F13C 8005E53C 00000000 */  nop        
