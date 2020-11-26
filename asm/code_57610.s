.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80056A10
/* 57610 80056A10 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 57614 80056A14 AFBF0024 */  sw         $ra, 0x24($sp)
/* 57618 80056A18 AFA40038 */  sw         $a0, 0x38($sp)
/* 5761C 80056A1C AFB20020 */  sw         $s2, 0x20($sp)
/* 57620 80056A20 AFB1001C */  sw         $s1, 0x1c($sp)
/* 57624 80056A24 0C018AA4 */  jal        __osDisableInt
/* 57628 80056A28 AFB00018 */   sw        $s0, 0x18($sp)
/* 5762C 80056A2C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 57630 80056A30 00408025 */  or         $s0, $v0, $zero
/* 57634 80056A34 15C00003 */  bnez       $t6, .L80056A44
/* 57638 80056A38 00000000 */   nop       
/* 5763C 80056A3C 10000003 */  b          .L80056A4C
/* 57640 80056A40 24110004 */   addiu     $s1, $zero, 4
.L80056A44:
/* 57644 80056A44 8FAF0038 */  lw         $t7, 0x38($sp)
/* 57648 80056A48 95F10010 */  lhu        $s1, 0x10($t7)
.L80056A4C:
/* 5764C 80056A4C 02209025 */  or         $s2, $s1, $zero
/* 57650 80056A50 24010002 */  addiu      $at, $zero, 2
/* 57654 80056A54 1241000F */  beq        $s2, $at, .L80056A94
/* 57658 80056A58 24010004 */   addiu     $at, $zero, 4
/* 5765C 80056A5C 12410005 */  beq        $s2, $at, .L80056A74
/* 57660 80056A60 24010008 */   addiu     $at, $zero, 8
/* 57664 80056A64 1241000B */  beq        $s2, $at, .L80056A94
/* 57668 80056A68 00000000 */   nop       
/* 5766C 80056A6C 10000010 */  b          .L80056AB0
/* 57670 80056A70 00000000 */   nop       
.L80056A74:
/* 57674 80056A74 3C198008 */  lui        $t9, %hi(__osRunningThread)
/* 57678 80056A78 8F399630 */  lw         $t9, %lo(__osRunningThread)($t9)
/* 5767C 80056A7C 24180001 */  addiu      $t8, $zero, 1
/* 57680 80056A80 00002025 */  or         $a0, $zero, $zero
/* 57684 80056A84 0C015F3B */  jal        __osEnqueueAndYield
/* 57688 80056A88 A7380010 */   sh        $t8, 0x10($t9)
/* 5768C 80056A8C 10000008 */  b          .L80056AB0
/* 57690 80056A90 00000000 */   nop       
.L80056A94:
/* 57694 80056A94 8FA90038 */  lw         $t1, 0x38($sp)
/* 57698 80056A98 24080001 */  addiu      $t0, $zero, 1
/* 5769C 80056A9C A5280010 */  sh         $t0, 0x10($t1)
/* 576A0 80056AA0 8FAA0038 */  lw         $t2, 0x38($sp)
/* 576A4 80056AA4 8D440008 */  lw         $a0, 8($t2)
/* 576A8 80056AA8 0C015B2C */  jal        func_80056CB0
/* 576AC 80056AAC 01402825 */   or        $a1, $t2, $zero
.L80056AB0:
/* 576B0 80056AB0 0C018AC0 */  jal        __osRestoreInt
/* 576B4 80056AB4 02002025 */   or        $a0, $s0, $zero
/* 576B8 80056AB8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 576BC 80056ABC 8FB00018 */  lw         $s0, 0x18($sp)
/* 576C0 80056AC0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 576C4 80056AC4 8FB20020 */  lw         $s2, 0x20($sp)
/* 576C8 80056AC8 03E00008 */  jr         $ra
/* 576CC 80056ACC 27BD0038 */   addiu     $sp, $sp, 0x38

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
