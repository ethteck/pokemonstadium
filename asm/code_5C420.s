.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005B820
/* 5C420 8005B820 27BDFF88 */  addiu     $sp, $sp, -0x78
/* 5C424 8005B824 AFB3002C */  sw        $s3, 0x2c($sp)
/* 5C428 8005B828 AFBE0040 */  sw        $fp, 0x40($sp)
/* 5C42C 8005B82C AFB7003C */  sw        $s7, 0x3c($sp)
/* 5C430 8005B830 AFB60038 */  sw        $s6, 0x38($sp)
/* 5C434 8005B834 AFB50034 */  sw        $s5, 0x34($sp)
/* 5C438 8005B838 AFB40030 */  sw        $s4, 0x30($sp)
/* 5C43C 8005B83C 3C130500 */  lui       $s3, 0x500
/* 5C440 8005B840 0080A025 */  or        $s4, $a0, $zero
/* 5C444 8005B844 AFBF0044 */  sw        $ra, 0x44($sp)
/* 5C448 8005B848 AFB20028 */  sw        $s2, 0x28($sp)
/* 5C44C 8005B84C AFB10024 */  sw        $s1, 0x24($sp)
/* 5C450 8005B850 AFB00020 */  sw        $s0, 0x20($sp)
/* 5C454 8005B854 AFA00074 */  sw        $zero, 0x74($sp)
/* 5C458 8005B858 36730510 */  ori       $s3, $s3, 0x510
/* 5C45C 8005B85C 24150024 */  addiu     $s5, $zero, 0x24
/* 5C460 8005B860 27B60070 */  addiu     $s6, $sp, 0x70
/* 5C464 8005B864 24170001 */  addiu     $s7, $zero, 1
/* 5C468 8005B868 241E001D */  addiu     $fp, $zero, 0x1d
.L8005B86C:
/* 5C46C 8005B86C 8E840008 */  lw        $a0, 8($s4)
.L8005B870:
/* 5C470 8005B870 27A50074 */  addiu     $a1, $sp, 0x74
/* 5C474 8005B874 0C015AB4 */  jal       func_80056AD0
/* 5C478 8005B878 02E03025 */  or        $a2, $s7, $zero
/* 5C47C 8005B87C 8FAE0074 */  lw        $t6, 0x74($sp)
/* 5C480 8005B880 8FA80074 */  lw        $t0, 0x74($sp)
/* 5C484 8005B884 8DC40014 */  lw        $a0, 0x14($t6)
/* 5C488 8005B888 50800081 */  beql      $a0, $zero, .L8005BA90
/* 5C48C 8005B88C 95090000 */  lhu       $t1, ($t0)
/* 5C490 8005B890 908F0004 */  lbu       $t7, 4($a0)
/* 5C494 8005B894 24010002 */  addiu     $at, $zero, 2
/* 5C498 8005B898 55E1007D */  bnel      $t7, $at, .L8005BA90
/* 5C49C 8005B89C 95090000 */  lhu       $t1, ($t0)
/* 5C4A0 8005B8A0 8C820014 */  lw        $v0, 0x14($a0)
/* 5C4A4 8005B8A4 24010001 */  addiu     $at, $zero, 1
/* 5C4A8 8005B8A8 24900014 */  addiu     $s0, $a0, 0x14
/* 5C4AC 8005B8AC 10400003 */  beqz      $v0, .L8005B8BC
/* 5C4B0 8005B8B0 27A5006C */  addiu     $a1, $sp, 0x6c
/* 5C4B4 8005B8B4 54410076 */  bnel      $v0, $at, .L8005BA90
/* 5C4B8 8005B8B8 95090000 */  lhu       $t1, ($t0)
.L8005B8BC:
/* 5C4BC 8005B8BC 96180006 */  lhu       $t8, 6($s0)
/* 5C4C0 8005B8C0 96020004 */  lhu       $v0, 4($s0)
/* 5C4C4 8005B8C4 2408FFFF */  addiu     $t0, $zero, -1
/* 5C4C8 8005B8C8 03150019 */  multu     $t8, $s5
/* 5C4CC 8005B8CC 24010003 */  addiu     $at, $zero, 3
/* 5C4D0 8005B8D0 AE080008 */  sw        $t0, 8($s0)
/* 5C4D4 8005B8D4 00009025 */  or        $s2, $zero, $zero
/* 5C4D8 8005B8D8 02E03025 */  or        $a2, $s7, $zero
/* 5C4DC 8005B8DC 0000C812 */  mflo      $t9
/* 5C4E0 8005B8E0 02198821 */  addu      $s1, $s0, $t9
/* 5C4E4 8005B8E4 10410006 */  beq       $v0, $at, .L8005B900
/* 5C4E8 8005B8E8 26310018 */  addiu     $s1, $s1, 0x18
/* 5C4EC 8005B8EC 8E290004 */  lw        $t1, 4($s1)
/* 5C4F0 8005B8F0 8E2A000C */  lw        $t2, 0xc($s1)
/* 5C4F4 8005B8F4 012A5823 */  subu      $t3, $t1, $t2
/* 5C4F8 8005B8F8 AE2B0004 */  sw        $t3, 4($s1)
/* 5C4FC 8005B8FC 96020004 */  lhu       $v0, 4($s0)
.L8005B900:
/* 5C500 8005B900 24010002 */  addiu     $at, $zero, 2
/* 5C504 8005B904 14410007 */  bne       $v0, $at, .L8005B924
/* 5C508 8005B908 8FAC0074 */  lw        $t4, 0x74($sp)
/* 5C50C 8005B90C 8D8D0014 */  lw        $t5, 0x14($t4)
/* 5C510 8005B910 8DAE0014 */  lw        $t6, 0x14($t5)
/* 5C514 8005B914 15C00003 */  bnez      $t6, .L8005B924
/* 5C518 8005B918 00000000 */  nop       
/* 5C51C 8005B91C 10000001 */  b         .L8005B924
/* 5C520 8005B920 02E09025 */  or        $s2, $s7, $zero
.L8005B924:
/* 5C524 8005B924 0C015AB4 */  jal       func_80056AD0
/* 5C528 8005B928 8E840010 */  lw        $a0, 0x10($s4)
/* 5C52C 8005B92C 3C040010 */  lui       $a0, 0x10
/* 5C530 8005B930 0C018A1C */  jal       func_80062870
/* 5C534 8005B934 34840401 */  ori       $a0, $a0, 0x401
/* 5C538 8005B938 8E060010 */  lw        $a2, 0x10($s0)
/* 5C53C 8005B93C 8FAF0074 */  lw        $t7, 0x74($sp)
/* 5C540 8005B940 3C018000 */  lui       $at, 0x8000
/* 5C544 8005B944 00C1C025 */  or        $t8, $a2, $at
/* 5C548 8005B948 03003025 */  or        $a2, $t8, $zero
/* 5C54C 8005B94C 02602825 */  or        $a1, $s3, $zero
/* 5C550 8005B950 0C018F84 */  jal       func_80063E10
/* 5C554 8005B954 8DE40014 */  lw        $a0, 0x14($t7)
.L8005B958:
/* 5C558 8005B958 8E84000C */  lw        $a0, 0xc($s4)
/* 5C55C 8005B95C 02C02825 */  or        $a1, $s6, $zero
/* 5C560 8005B960 0C015AB4 */  jal       func_80056AD0
/* 5C564 8005B964 02E03025 */  or        $a2, $s7, $zero
/* 5C568 8005B968 8FB90074 */  lw        $t9, 0x74($sp)
/* 5C56C 8005B96C 8F240014 */  lw        $a0, 0x14($t9)
/* 5C570 8005B970 24900014 */  addiu     $s0, $a0, 0x14
/* 5C574 8005B974 96080006 */  lhu       $t0, 6($s0)
/* 5C578 8005B978 01150019 */  multu     $t0, $s5
/* 5C57C 8005B97C 00004812 */  mflo      $t1
/* 5C580 8005B980 02098821 */  addu      $s1, $s0, $t1
/* 5C584 8005B984 8E2A0018 */  lw        $t2, 0x18($s1)
/* 5C588 8005B988 26310018 */  addiu     $s1, $s1, 0x18
/* 5C58C 8005B98C 57CA0027 */  bnel      $fp, $t2, .L8005BA2C
/* 5C590 8005B990 8FA50074 */  lw        $a1, 0x74($sp)
/* 5C594 8005B994 8E060010 */  lw        $a2, 0x10($s0)
/* 5C598 8005B998 3C011000 */  lui       $at, 0x1000
/* 5C59C 8005B99C 02602825 */  or        $a1, $s3, $zero
/* 5C5A0 8005B9A0 00C15825 */  or        $t3, $a2, $at
/* 5C5A4 8005B9A4 0C018F84 */  jal       func_80063E10
/* 5C5A8 8005B9A8 01603025 */  or        $a2, $t3, $zero
/* 5C5AC 8005B9AC 8FAC0074 */  lw        $t4, 0x74($sp)
/* 5C5B0 8005B9B0 02602825 */  or        $a1, $s3, $zero
/* 5C5B4 8005B9B4 8E060010 */  lw        $a2, 0x10($s0)
/* 5C5B8 8005B9B8 0C018F84 */  jal       func_80063E10
/* 5C5BC 8005B9BC 8D840014 */  lw        $a0, 0x14($t4)
/* 5C5C0 8005B9C0 8FAD0074 */  lw        $t5, 0x74($sp)
/* 5C5C4 8005B9C4 3C050500 */  lui       $a1, 0x500
/* 5C5C8 8005B9C8 34A50508 */  ori       $a1, $a1, 0x508
/* 5C5CC 8005B9CC 27A60054 */  addiu     $a2, $sp, 0x54
/* 5C5D0 8005B9D0 0C017A24 */  jal       func_8005E890
/* 5C5D4 8005B9D4 8DA40014 */  lw        $a0, 0x14($t5)
/* 5C5D8 8005B9D8 8FAE0054 */  lw        $t6, 0x54($sp)
/* 5C5DC 8005B9DC 8FB80074 */  lw        $t8, 0x74($sp)
/* 5C5E0 8005B9E0 02602825 */  or        $a1, $s3, $zero
/* 5C5E4 8005B9E4 000E7980 */  sll       $t7, $t6, 6
/* 5C5E8 8005B9E8 05E30008 */  bgezl     $t7, .L8005BA0C
/* 5C5EC 8005B9EC 24080004 */  addiu     $t0, $zero, 4
/* 5C5F0 8005B9F0 8E060010 */  lw        $a2, 0x10($s0)
/* 5C5F4 8005B9F4 3C010100 */  lui       $at, 0x100
/* 5C5F8 8005B9F8 8F040014 */  lw        $a0, 0x14($t8)
/* 5C5FC 8005B9FC 00C1C825 */  or        $t9, $a2, $at
/* 5C600 8005BA00 0C018F84 */  jal       func_80063E10
/* 5C604 8005BA04 03203025 */  or        $a2, $t9, $zero
/* 5C608 8005BA08 24080004 */  addiu     $t0, $zero, 4
.L8005BA0C:
/* 5C60C 8005BA0C AE280000 */  sw        $t0, ($s1)
/* 5C610 8005BA10 24090002 */  addiu     $t1, $zero, 2
/* 5C614 8005BA14 3C0AA460 */  lui       $t2, 0xa460
/* 5C618 8005BA18 3C040010 */  lui       $a0, 0x10
/* 5C61C 8005BA1C AD490010 */  sw        $t1, 0x10($t2)
/* 5C620 8005BA20 0C018888 */  jal       func_80062220
/* 5C624 8005BA24 34840C01 */  ori       $a0, $a0, 0xc01
/* 5C628 8005BA28 8FA50074 */  lw        $a1, 0x74($sp)
.L8005BA2C:
/* 5C62C 8005BA2C 00003025 */  or        $a2, $zero, $zero
/* 5C630 8005BA30 0C015A30 */  jal       func_800568C0
/* 5C634 8005BA34 8CA40004 */  lw        $a0, 4($a1)
/* 5C638 8005BA38 16570007 */  bne       $s2, $s7, .L8005BA58
/* 5C63C 8005BA3C 8FAC0074 */  lw        $t4, 0x74($sp)
/* 5C640 8005BA40 8D8D0014 */  lw        $t5, 0x14($t4)
/* 5C644 8005BA44 8DAE002C */  lw        $t6, 0x2c($t5)
/* 5C648 8005BA48 55C00004 */  bnel      $t6, $zero, .L8005BA5C
/* 5C64C 8005BA4C 8E840010 */  lw        $a0, 0x10($s4)
/* 5C650 8005BA50 1000FFC1 */  b         .L8005B958
/* 5C654 8005BA54 00009025 */  or        $s2, $zero, $zero
.L8005BA58:
/* 5C658 8005BA58 8E840010 */  lw        $a0, 0x10($s4)
.L8005BA5C:
/* 5C65C 8005BA5C 00002825 */  or        $a1, $zero, $zero
/* 5C660 8005BA60 0C015A30 */  jal       func_800568C0
/* 5C664 8005BA64 00003025 */  or        $a2, $zero, $zero
/* 5C668 8005BA68 8FAF0074 */  lw        $t7, 0x74($sp)
/* 5C66C 8005BA6C 8DF80014 */  lw        $t8, 0x14($t7)
/* 5C670 8005BA70 9719001A */  lhu       $t9, 0x1a($t8)
/* 5C674 8005BA74 56F9FF7E */  bnel      $s7, $t9, .L8005B870
/* 5C678 8005BA78 8E840008 */  lw        $a0, 8($s4)
/* 5C67C 8005BA7C 0C018DF0 */  jal       func_800637C0
/* 5C680 8005BA80 00000000 */  nop       
/* 5C684 8005BA84 1000FF7A */  b         .L8005B870
/* 5C688 8005BA88 8E840008 */  lw        $a0, 8($s4)
/* 5C68C 8005BA8C 95090000 */  lhu       $t1, ($t0)
.L8005BA90:
/* 5C690 8005BA90 252AFFF6 */  addiu     $t2, $t1, -0xa
/* 5C694 8005BA94 2D410007 */  sltiu     $at, $t2, 7
/* 5C698 8005BA98 10200047 */  beqz      $at, .L8005BBB8
/* 5C69C 8005BA9C 000A5080 */  sll       $t2, $t2, 2
/* 5C6A0 8005BAA0 3C018008 */  lui       $at, 0x8008
/* 5C6A4 8005BAA4 002A0821 */  addu      $at, $at, $t2
/* 5C6A8 8005BAA8 8C2AE370 */  lw        $t2, -0x1c90($at)
/* 5C6AC 8005BAAC 01400008 */  jr        $t2
/* 5C6B0 8005BAB0 00000000 */  nop       
/* 5C6B4 8005BAB4 8E840010 */  lw        $a0, 0x10($s4)
/* 5C6B8 8005BAB8 27A5006C */  addiu     $a1, $sp, 0x6c
/* 5C6BC 8005BABC 0C015AB4 */  jal       func_80056AD0
/* 5C6C0 8005BAC0 02E03025 */  or        $a2, $s7, $zero
/* 5C6C4 8005BAC4 8FAB0074 */  lw        $t3, 0x74($sp)
/* 5C6C8 8005BAC8 8E990014 */  lw        $t9, 0x14($s4)
/* 5C6CC 8005BACC 00002025 */  or        $a0, $zero, $zero
/* 5C6D0 8005BAD0 8D65000C */  lw        $a1, 0xc($t3)
/* 5C6D4 8005BAD4 8D660008 */  lw        $a2, 8($t3)
/* 5C6D8 8005BAD8 0320F809 */  jalr      $t9
/* 5C6DC 8005BADC 8D670010 */  lw        $a3, 0x10($t3)
/* 5C6E0 8005BAE0 10000036 */  b         .L8005BBBC
/* 5C6E4 8005BAE4 00408025 */  or        $s0, $v0, $zero
/* 5C6E8 8005BAE8 8E840010 */  lw        $a0, 0x10($s4)
/* 5C6EC 8005BAEC 27A5006C */  addiu     $a1, $sp, 0x6c
/* 5C6F0 8005BAF0 0C015AB4 */  jal       func_80056AD0
/* 5C6F4 8005BAF4 02E03025 */  or        $a2, $s7, $zero
/* 5C6F8 8005BAF8 8FAC0074 */  lw        $t4, 0x74($sp)
/* 5C6FC 8005BAFC 8E990014 */  lw        $t9, 0x14($s4)
/* 5C700 8005BB00 02E02025 */  or        $a0, $s7, $zero
/* 5C704 8005BB04 8D85000C */  lw        $a1, 0xc($t4)
/* 5C708 8005BB08 8D860008 */  lw        $a2, 8($t4)
/* 5C70C 8005BB0C 0320F809 */  jalr      $t9
/* 5C710 8005BB10 8D870010 */  lw        $a3, 0x10($t4)
/* 5C714 8005BB14 10000029 */  b         .L8005BBBC
/* 5C718 8005BB18 00408025 */  or        $s0, $v0, $zero
/* 5C71C 8005BB1C 8E840010 */  lw        $a0, 0x10($s4)
/* 5C720 8005BB20 27A5006C */  addiu     $a1, $sp, 0x6c
/* 5C724 8005BB24 0C015AB4 */  jal       func_80056AD0
/* 5C728 8005BB28 02E03025 */  or        $a2, $s7, $zero
/* 5C72C 8005BB2C 8FAD0074 */  lw        $t5, 0x74($sp)
/* 5C730 8005BB30 00002825 */  or        $a1, $zero, $zero
/* 5C734 8005BB34 8DAE0010 */  lw        $t6, 0x10($t5)
/* 5C738 8005BB38 8DA40014 */  lw        $a0, 0x14($t5)
/* 5C73C 8005BB3C 8DA6000C */  lw        $a2, 0xc($t5)
/* 5C740 8005BB40 8DA70008 */  lw        $a3, 8($t5)
/* 5C744 8005BB44 AFAE0010 */  sw        $t6, 0x10($sp)
/* 5C748 8005BB48 8E990018 */  lw        $t9, 0x18($s4)
/* 5C74C 8005BB4C 0320F809 */  jalr      $t9
/* 5C750 8005BB50 00000000 */  nop       
/* 5C754 8005BB54 10000019 */  b         .L8005BBBC
/* 5C758 8005BB58 00408025 */  or        $s0, $v0, $zero
/* 5C75C 8005BB5C 8E840010 */  lw        $a0, 0x10($s4)
/* 5C760 8005BB60 27A5006C */  addiu     $a1, $sp, 0x6c
/* 5C764 8005BB64 0C015AB4 */  jal       func_80056AD0
/* 5C768 8005BB68 02E03025 */  or        $a2, $s7, $zero
/* 5C76C 8005BB6C 8FAF0074 */  lw        $t7, 0x74($sp)
/* 5C770 8005BB70 02E02825 */  or        $a1, $s7, $zero
/* 5C774 8005BB74 8DF80010 */  lw        $t8, 0x10($t7)
/* 5C778 8005BB78 8DE40014 */  lw        $a0, 0x14($t7)
/* 5C77C 8005BB7C 8DE6000C */  lw        $a2, 0xc($t7)
/* 5C780 8005BB80 8DE70008 */  lw        $a3, 8($t7)
/* 5C784 8005BB84 AFB80010 */  sw        $t8, 0x10($sp)
/* 5C788 8005BB88 8E990018 */  lw        $t9, 0x18($s4)
/* 5C78C 8005BB8C 0320F809 */  jalr      $t9
/* 5C790 8005BB90 00000000 */  nop       
/* 5C794 8005BB94 10000009 */  b         .L8005BBBC
/* 5C798 8005BB98 00408025 */  or        $s0, $v0, $zero
/* 5C79C 8005BB9C 8FA50074 */  lw        $a1, 0x74($sp)
/* 5C7A0 8005BBA0 00003025 */  or        $a2, $zero, $zero
/* 5C7A4 8005BBA4 2410FFFF */  addiu     $s0, $zero, -1
/* 5C7A8 8005BBA8 0C015A30 */  jal       func_800568C0
/* 5C7AC 8005BBAC 8CA40004 */  lw        $a0, 4($a1)
/* 5C7B0 8005BBB0 10000002 */  b         .L8005BBBC
/* 5C7B4 8005BBB4 00000000 */  nop       
.L8005BBB8:
/* 5C7B8 8005BBB8 2410FFFF */  addiu     $s0, $zero, -1
.L8005BBBC:
/* 5C7BC 8005BBBC 1600FF2B */  bnez      $s0, .L8005B86C
/* 5C7C0 8005BBC0 02C02825 */  or        $a1, $s6, $zero
/* 5C7C4 8005BBC4 8E84000C */  lw        $a0, 0xc($s4)
/* 5C7C8 8005BBC8 0C015AB4 */  jal       func_80056AD0
/* 5C7CC 8005BBCC 02E03025 */  or        $a2, $s7, $zero
/* 5C7D0 8005BBD0 8FA50074 */  lw        $a1, 0x74($sp)
/* 5C7D4 8005BBD4 00003025 */  or        $a2, $zero, $zero
/* 5C7D8 8005BBD8 0C015A30 */  jal       func_800568C0
/* 5C7DC 8005BBDC 8CA40004 */  lw        $a0, 4($a1)
/* 5C7E0 8005BBE0 8E840010 */  lw        $a0, 0x10($s4)
/* 5C7E4 8005BBE4 00002825 */  or        $a1, $zero, $zero
/* 5C7E8 8005BBE8 0C015A30 */  jal       func_800568C0
/* 5C7EC 8005BBEC 00003025 */  or        $a2, $zero, $zero
/* 5C7F0 8005BBF0 1000FF1F */  b         .L8005B870
/* 5C7F4 8005BBF4 8E840008 */  lw        $a0, 8($s4)
/* 5C7F8 8005BBF8 00000000 */  nop       
/* 5C7FC 8005BBFC 00000000 */  nop       
/* 5C800 8005BC00 8FBF0044 */  lw        $ra, 0x44($sp)
/* 5C804 8005BC04 8FB00020 */  lw        $s0, 0x20($sp)
/* 5C808 8005BC08 8FB10024 */  lw        $s1, 0x24($sp)
/* 5C80C 8005BC0C 8FB20028 */  lw        $s2, 0x28($sp)
/* 5C810 8005BC10 8FB3002C */  lw        $s3, 0x2c($sp)
/* 5C814 8005BC14 8FB40030 */  lw        $s4, 0x30($sp)
/* 5C818 8005BC18 8FB50034 */  lw        $s5, 0x34($sp)
/* 5C81C 8005BC1C 8FB60038 */  lw        $s6, 0x38($sp)
/* 5C820 8005BC20 8FB7003C */  lw        $s7, 0x3c($sp)
/* 5C824 8005BC24 8FBE0040 */  lw        $fp, 0x40($sp)
/* 5C828 8005BC28 03E00008 */  jr        $ra
/* 5C82C 8005BC2C 27BD0078 */  addiu     $sp, $sp, 0x78

glabel func_8005BC30
/* 5C830 8005BC30 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 5C834 8005BC34 3C03A460 */  lui       $v1, 0xa460
/* 5C838 8005BC38 34630010 */  ori       $v1, $v1, 0x10
/* 5C83C 8005BC3C AFBF0014 */  sw        $ra, 0x14($sp)
/* 5C840 8005BC40 AFA40018 */  sw        $a0, 0x18($sp)
/* 5C844 8005BC44 AFA5001C */  sw        $a1, 0x1c($sp)
/* 5C848 8005BC48 8C620000 */  lw        $v0, ($v1)
/* 5C84C 8005BC4C 00C02025 */  or        $a0, $a2, $zero
/* 5C850 8005BC50 304E0003 */  andi      $t6, $v0, 3
/* 5C854 8005BC54 11C00005 */  beqz      $t6, .L8005BC6C
/* 5C858 8005BC58 00000000 */  nop       
/* 5C85C 8005BC5C 8C620000 */  lw        $v0, ($v1)
.L8005BC60:
/* 5C860 8005BC60 304F0003 */  andi      $t7, $v0, 3
/* 5C864 8005BC64 55E0FFFE */  bnel      $t7, $zero, .L8005BC60
/* 5C868 8005BC68 8C620000 */  lw        $v0, ($v1)
.L8005BC6C:
/* 5C86C 8005BC6C 0C016424 */  jal       func_80059090
/* 5C870 8005BC70 AFA70024 */  sw        $a3, 0x24($sp)
/* 5C874 8005BC74 8FA30018 */  lw        $v1, 0x18($sp)
/* 5C878 8005BC78 8FA70024 */  lw        $a3, 0x24($sp)
/* 5C87C 8005BC7C 3C18A460 */  lui       $t8, 0xa460
/* 5C880 8005BC80 AF020000 */  sw        $v0, ($t8)
/* 5C884 8005BC84 3C198000 */  lui       $t9, 0x8000
/* 5C888 8005BC88 8F390308 */  lw        $t9, 0x308($t9)
/* 5C88C 8005BC8C 8FA8001C */  lw        $t0, 0x1c($sp)
/* 5C890 8005BC90 3C011FFF */  lui       $at, 0x1fff
/* 5C894 8005BC94 3421FFFF */  ori       $at, $at, 0xffff
/* 5C898 8005BC98 03284825 */  or        $t1, $t9, $t0
/* 5C89C 8005BC9C 01215024 */  and       $t2, $t1, $at
/* 5C8A0 8005BCA0 3C0BA460 */  lui       $t3, 0xa460
/* 5C8A4 8005BCA4 10600006 */  beqz      $v1, .L8005BCC0
/* 5C8A8 8005BCA8 AD6A0004 */  sw        $t2, 4($t3)
/* 5C8AC 8005BCAC 24010001 */  addiu     $at, $zero, 1
/* 5C8B0 8005BCB0 10610007 */  beq       $v1, $at, .L8005BCD0
/* 5C8B4 8005BCB4 24EEFFFF */  addiu     $t6, $a3, -1
/* 5C8B8 8005BCB8 1000000B */  b         .L8005BCE8
/* 5C8BC 8005BCBC 2402FFFF */  addiu     $v0, $zero, -1
.L8005BCC0:
/* 5C8C0 8005BCC0 24ECFFFF */  addiu     $t4, $a3, -1
/* 5C8C4 8005BCC4 3C0DA460 */  lui       $t5, 0xa460
/* 5C8C8 8005BCC8 10000006 */  b         .L8005BCE4
/* 5C8CC 8005BCCC ADAC000C */  sw        $t4, 0xc($t5)
.L8005BCD0:
/* 5C8D0 8005BCD0 3C0FA460 */  lui       $t7, 0xa460
/* 5C8D4 8005BCD4 10000003 */  b         .L8005BCE4
/* 5C8D8 8005BCD8 ADEE0008 */  sw        $t6, 8($t7)
/* 5C8DC 8005BCDC 10000002 */  b         .L8005BCE8
/* 5C8E0 8005BCE0 2402FFFF */  addiu     $v0, $zero, -1
.L8005BCE4:
/* 5C8E4 8005BCE4 00001025 */  or        $v0, $zero, $zero
.L8005BCE8:
/* 5C8E8 8005BCE8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 5C8EC 8005BCEC 27BD0018 */  addiu     $sp, $sp, 0x18
/* 5C8F0 8005BCF0 03E00008 */  jr        $ra
/* 5C8F4 8005BCF4 00000000 */  nop       
/* 5C8F8 8005BCF8 00000000 */  nop       
/* 5C8FC 8005BCFC 00000000 */  nop       
