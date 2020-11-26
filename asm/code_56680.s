.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80055A80
/* 56680 80055A80 3C078010 */  lui        $a3, 0x8010
/* 56684 80055A84 24E706C8 */  addiu      $a3, $a3, 0x6c8
/* 56688 80055A88 8CE40000 */  lw         $a0, ($a3)
/* 5668C 80055A8C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 56690 80055A90 AFBF0014 */  sw         $ra, 0x14($sp)
/* 56694 80055A94 8C82000C */  lw         $v0, 0xc($a0)
/* 56698 80055A98 8C830010 */  lw         $v1, 0x10($a0)
/* 5669C 80055A9C 24190020 */  addiu      $t9, $zero, 0x20
/* 566A0 80055AA0 00437025 */  or         $t6, $v0, $v1
/* 566A4 80055AA4 000E7C02 */  srl        $t7, $t6, 0x10
/* 566A8 80055AA8 15E00007 */  bnez       $t7, .L80055AC8
/* 566AC 80055AAC 24420018 */   addiu     $v0, $v0, 0x18
/* 566B0 80055AB0 2C4110DC */  sltiu      $at, $v0, 0x10dc
/* 566B4 80055AB4 10200004 */  beqz       $at, .L80055AC8
/* 566B8 80055AB8 0043C021 */   addu      $t8, $v0, $v1
/* 566BC 80055ABC 2F0110DD */  sltiu      $at, $t8, 0x10dd
/* 566C0 80055AC0 14200006 */  bnez       $at, .L80055ADC
/* 566C4 80055AC4 3C0A8010 */   lui       $t2, 0x8010
.L80055AC8:
/* 566C8 80055AC8 A0990005 */  sb         $t9, 5($a0)
/* 566CC 80055ACC 8CE90000 */  lw         $t1, ($a3)
/* 566D0 80055AD0 24080002 */  addiu      $t0, $zero, 2
/* 566D4 80055AD4 10000030 */  b          .L80055B98
/* 566D8 80055AD8 A1280004 */   sb        $t0, 4($t1)
.L80055ADC:
/* 566DC 80055ADC 914A06D8 */  lbu        $t2, 0x6d8($t2)
/* 566E0 80055AE0 3C0C8008 */  lui        $t4, 0x8008
/* 566E4 80055AE4 240D0021 */  addiu      $t5, $zero, 0x21
/* 566E8 80055AE8 000A5840 */  sll        $t3, $t2, 1
/* 566EC 80055AEC 018B6021 */  addu       $t4, $t4, $t3
/* 566F0 80055AF0 958CDD18 */  lhu        $t4, -0x22e8($t4)
/* 566F4 80055AF4 004C082B */  sltu       $at, $v0, $t4
/* 566F8 80055AF8 10200006 */  beqz       $at, .L80055B14
/* 566FC 80055AFC 00000000 */   nop       
/* 56700 80055B00 A08D0005 */  sb         $t5, 5($a0)
/* 56704 80055B04 8CEF0000 */  lw         $t7, ($a3)
/* 56708 80055B08 240E0002 */  addiu      $t6, $zero, 2
/* 5670C 80055B0C 10000022 */  b          .L80055B98
/* 56710 80055B10 A1EE0004 */   sb        $t6, 4($t7)
.L80055B14:
/* 56714 80055B14 14600005 */  bnez       $v1, .L80055B2C
/* 56718 80055B18 34198000 */   ori       $t9, $zero, 0x8000
/* 5671C 80055B1C A0800005 */  sb         $zero, 5($a0)
/* 56720 80055B20 8CF80000 */  lw         $t8, ($a3)
/* 56724 80055B24 1000001C */  b          .L80055B98
/* 56728 80055B28 A3000004 */   sb        $zero, 4($t8)
.L80055B2C:
/* 5672C 80055B2C 3C018010 */  lui        $at, 0x8010
/* 56730 80055B30 A43906D6 */  sh         $t9, 0x6d6($at)
/* 56734 80055B34 3C018010 */  lui        $at, 0x8010
/* 56738 80055B38 3C048010 */  lui        $a0, 0x8010
/* 5673C 80055B3C A42206E0 */  sh         $v0, 0x6e0($at)
/* 56740 80055B40 0C0194DC */  jal        osStartThread
/* 56744 80055B44 2484FC88 */   addiu     $a0, $a0, -0x378
/* 56748 80055B48 3C048010 */  lui        $a0, 0x8010
/* 5674C 80055B4C 24840668 */  addiu      $a0, $a0, 0x668
/* 56750 80055B50 27A5002C */  addiu      $a1, $sp, 0x2c
/* 56754 80055B54 0C015AB4 */  jal        func_80056AD0
/* 56758 80055B58 24060001 */   addiu     $a2, $zero, 1
/* 5675C 80055B5C 8FA8002C */  lw         $t0, 0x2c($sp)
/* 56760 80055B60 3C078010 */  lui        $a3, 0x8010
/* 56764 80055B64 3C010009 */  lui        $at, 9
/* 56768 80055B68 11010007 */  beq        $t0, $at, .L80055B88
/* 5676C 80055B6C 24E706C8 */   addiu     $a3, $a3, 0x6c8
/* 56770 80055B70 8CE90000 */  lw         $t1, ($a3)
/* 56774 80055B74 240A0002 */  addiu      $t2, $zero, 2
/* 56778 80055B78 A1280005 */  sb         $t0, 5($t1)
/* 5677C 80055B7C 8CEB0000 */  lw         $t3, ($a3)
/* 56780 80055B80 10000005 */  b          .L80055B98
/* 56784 80055B84 A16A0004 */   sb        $t2, 4($t3)
.L80055B88:
/* 56788 80055B88 8CEC0000 */  lw         $t4, ($a3)
/* 5678C 80055B8C A1800005 */  sb         $zero, 5($t4)
/* 56790 80055B90 8CED0000 */  lw         $t5, ($a3)
/* 56794 80055B94 A1A00004 */  sb         $zero, 4($t5)
.L80055B98:
/* 56798 80055B98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5679C 80055B9C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 567A0 80055BA0 03E00008 */  jr         $ra
/* 567A4 80055BA4 00000000 */   nop       
/* 567A8 80055BA8 00000000 */  nop        
/* 567AC 80055BAC 00000000 */  nop        
