.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80056AD0
/* 576D0 80056AD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 576D4 80056AD4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 576D8 80056AD8 AFA40028 */  sw         $a0, 0x28($sp)
/* 576DC 80056ADC AFA5002C */  sw         $a1, 0x2c($sp)
/* 576E0 80056AE0 AFA60030 */  sw         $a2, 0x30($sp)
/* 576E4 80056AE4 AFB10018 */  sw         $s1, 0x18($sp)
/* 576E8 80056AE8 0C018AA4 */  jal        __osDisableInt
/* 576EC 80056AEC AFB00014 */   sw        $s0, 0x14($sp)
/* 576F0 80056AF0 8FAE0028 */  lw         $t6, 0x28($sp)
/* 576F4 80056AF4 00408025 */  or         $s0, $v0, $zero
/* 576F8 80056AF8 8DCF0008 */  lw         $t7, 8($t6)
/* 576FC 80056AFC 15E00012 */  bnez       $t7, .L80056B48
/* 57700 80056B00 00000000 */   nop       
.L80056B04:
/* 57704 80056B04 8FB80030 */  lw         $t8, 0x30($sp)
/* 57708 80056B08 17000005 */  bnez       $t8, .L80056B20
/* 5770C 80056B0C 00000000 */   nop       
/* 57710 80056B10 0C018AC0 */  jal        __osRestoreInt
/* 57714 80056B14 02002025 */   or        $a0, $s0, $zero
/* 57718 80056B18 10000036 */  b          .L80056BF4
/* 5771C 80056B1C 2402FFFF */   addiu     $v0, $zero, -1
.L80056B20:
/* 57720 80056B20 3C088008 */  lui        $t0, %hi(__osRunningThread)
/* 57724 80056B24 8D089630 */  lw         $t0, %lo(__osRunningThread)($t0)
/* 57728 80056B28 24190008 */  addiu      $t9, $zero, 8
/* 5772C 80056B2C A5190010 */  sh         $t9, 0x10($t0)
/* 57730 80056B30 0C015F3B */  jal        __osEnqueueAndYield
/* 57734 80056B34 8FA40028 */   lw        $a0, 0x28($sp)
/* 57738 80056B38 8FA90028 */  lw         $t1, 0x28($sp)
/* 5773C 80056B3C 8D2A0008 */  lw         $t2, 8($t1)
/* 57740 80056B40 1140FFF0 */  beqz       $t2, .L80056B04
/* 57744 80056B44 00000000 */   nop       
.L80056B48:
/* 57748 80056B48 8FAB002C */  lw         $t3, 0x2c($sp)
/* 5774C 80056B4C 11600008 */  beqz       $t3, .L80056B70
/* 57750 80056B50 00000000 */   nop       
/* 57754 80056B54 8FAC0028 */  lw         $t4, 0x28($sp)
/* 57758 80056B58 8D8E000C */  lw         $t6, 0xc($t4)
/* 5775C 80056B5C 8D8D0014 */  lw         $t5, 0x14($t4)
/* 57760 80056B60 000E7880 */  sll        $t7, $t6, 2
/* 57764 80056B64 01AFC021 */  addu       $t8, $t5, $t7
/* 57768 80056B68 8F190000 */  lw         $t9, ($t8)
/* 5776C 80056B6C AD790000 */  sw         $t9, ($t3)
.L80056B70:
/* 57770 80056B70 8FA80028 */  lw         $t0, 0x28($sp)
/* 57774 80056B74 8D09000C */  lw         $t1, 0xc($t0)
/* 57778 80056B78 8D0C0010 */  lw         $t4, 0x10($t0)
/* 5777C 80056B7C 252A0001 */  addiu      $t2, $t1, 1
/* 57780 80056B80 014C001A */  div        $zero, $t2, $t4
/* 57784 80056B84 00007010 */  mfhi       $t6
/* 57788 80056B88 AD0E000C */  sw         $t6, 0xc($t0)
/* 5778C 80056B8C 8FAD0028 */  lw         $t5, 0x28($sp)
/* 57790 80056B90 15800002 */  bnez       $t4, .L80056B9C
/* 57794 80056B94 00000000 */   nop       
/* 57798 80056B98 0007000D */  break      7
.L80056B9C:
/* 5779C 80056B9C 2401FFFF */   addiu     $at, $zero, -1
/* 577A0 80056BA0 15810004 */  bne        $t4, $at, .L80056BB4
/* 577A4 80056BA4 3C018000 */   lui       $at, 0x8000
/* 577A8 80056BA8 15410002 */  bne        $t2, $at, .L80056BB4
/* 577AC 80056BAC 00000000 */   nop       
/* 577B0 80056BB0 0006000D */  break      6
.L80056BB4:
/* 577B4 80056BB4 8DAF0008 */   lw        $t7, 8($t5)
/* 577B8 80056BB8 25F8FFFF */  addiu      $t8, $t7, -1
/* 577BC 80056BBC ADB80008 */  sw         $t8, 8($t5)
/* 577C0 80056BC0 8FB90028 */  lw         $t9, 0x28($sp)
/* 577C4 80056BC4 8F2B0004 */  lw         $t3, 4($t9)
/* 577C8 80056BC8 8D690000 */  lw         $t1, ($t3)
/* 577CC 80056BCC 11200006 */  beqz       $t1, .L80056BE8
/* 577D0 80056BD0 00000000 */   nop       
/* 577D4 80056BD4 0C015F8D */  jal        __osPopThread
/* 577D8 80056BD8 27240004 */   addiu     $a0, $t9, 4
/* 577DC 80056BDC 00408825 */  or         $s1, $v0, $zero
/* 577E0 80056BE0 0C0194DC */  jal        osStartThread
/* 577E4 80056BE4 02202025 */   or        $a0, $s1, $zero
.L80056BE8:
/* 577E8 80056BE8 0C018AC0 */  jal        __osRestoreInt
/* 577EC 80056BEC 02002025 */   or        $a0, $s0, $zero
/* 577F0 80056BF0 00001025 */  or         $v0, $zero, $zero
.L80056BF4:
/* 577F4 80056BF4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 577F8 80056BF8 8FB00014 */  lw         $s0, 0x14($sp)
/* 577FC 80056BFC 8FB10018 */  lw         $s1, 0x18($sp)
/* 57800 80056C00 03E00008 */  jr         $ra
/* 57804 80056C04 27BD0028 */   addiu     $sp, $sp, 0x28
/* 57808 80056C08 00000000 */  nop        
/* 5780C 80056C0C 00000000 */  nop        
