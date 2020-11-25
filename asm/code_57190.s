.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80056590
/* 57190 80056590 3C0E8008 */  lui        $t6, 0x8008
/* 57194 80056594 8DCE95B0 */  lw         $t6, -0x6a50($t6)
/* 57198 80056598 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5719C 8005659C AFBF0014 */  sw         $ra, 0x14($sp)
/* 571A0 800565A0 15C00003 */  bnez       $t6, .L800565B0
/* 571A4 800565A4 AFA40028 */   sw        $a0, 0x28($sp)
/* 571A8 800565A8 1000001A */  b          .L80056614
/* 571AC 800565AC 2402FFFF */   addiu     $v0, $zero, -1
.L800565B0:
/* 571B0 800565B0 3C0FA460 */  lui        $t7, 0xa460
/* 571B4 800565B4 8DF80010 */  lw         $t8, 0x10($t7)
/* 571B8 800565B8 24080003 */  addiu      $t0, $zero, 3
/* 571BC 800565BC 27A40018 */  addiu      $a0, $sp, 0x18
/* 571C0 800565C0 33190001 */  andi       $t9, $t8, 1
/* 571C4 800565C4 53200004 */  beql       $t9, $zero, .L800565D8
/* 571C8 800565C8 A3A80018 */   sb        $t0, 0x18($sp)
/* 571CC 800565CC 10000011 */  b          .L80056614
/* 571D0 800565D0 24020008 */   addiu     $v0, $zero, 8
/* 571D4 800565D4 A3A80018 */  sb         $t0, 0x18($sp)
.L800565D8:
/* 571D8 800565D8 A3A00019 */  sb         $zero, 0x19($sp)
/* 571DC 800565DC A3A0001A */  sb         $zero, 0x1a($sp)
/* 571E0 800565E0 0C014489 */  jal        func_80051224
/* 571E4 800565E4 A3A0001B */   sb        $zero, 0x1b($sp)
/* 571E8 800565E8 93A9001C */  lbu        $t1, 0x1c($sp)
/* 571EC 800565EC 24020008 */  addiu      $v0, $zero, 8
/* 571F0 800565F0 8FAC0028 */  lw         $t4, 0x28($sp)
/* 571F4 800565F4 54490005 */  bnel       $v0, $t1, .L8005660C
/* 571F8 800565F8 93AB0024 */   lbu       $t3, 0x24($sp)
/* 571FC 800565FC 93AA001C */  lbu        $t2, 0x1c($sp)
.L80056600:
/* 57200 80056600 504AFFFF */  beql       $v0, $t2, .L80056600
/* 57204 80056604 93AA001C */   lbu       $t2, 0x1c($sp)
/* 57208 80056608 93AB0024 */  lbu        $t3, 0x24($sp)
.L8005660C:
/* 5720C 8005660C A18B0000 */  sb         $t3, ($t4)
/* 57210 80056610 93A2001D */  lbu        $v0, 0x1d($sp)
.L80056614:
/* 57214 80056614 8FBF0014 */  lw         $ra, 0x14($sp)
/* 57218 80056618 27BD0028 */  addiu      $sp, $sp, 0x28
/* 5721C 8005661C 03E00008 */  jr         $ra
/* 57220 80056620 00000000 */   nop       
/* 57224 80056624 00000000 */  nop        
/* 57228 80056628 00000000 */  nop        
/* 5722C 8005662C 00000000 */  nop        
