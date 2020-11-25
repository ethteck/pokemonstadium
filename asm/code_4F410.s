.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004E810
/* 4F410 8004E810 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4F414 8004E814 240100C8 */  addiu      $at, $zero, 0xc8
/* 4F418 8004E818 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4F41C 8004E81C AFA40030 */  sw         $a0, 0x30($sp)
/* 4F420 8004E820 AFA50034 */  sw         $a1, 0x34($sp)
/* 4F424 8004E824 00003825 */  or         $a3, $zero, $zero
/* 4F428 8004E828 14810003 */  bne        $a0, $at, .L8004E838
/* 4F42C 8004E82C 00001025 */   or        $v0, $zero, $zero
/* 4F430 8004E830 10000008 */  b          .L8004E854
/* 4F434 8004E834 24020001 */   addiu     $v0, $zero, 1
.L8004E838:
/* 4F438 8004E838 8FAF0030 */  lw         $t7, 0x30($sp)
/* 4F43C 8004E83C 8FB80034 */  lw         $t8, 0x34($sp)
/* 4F440 8004E840 11E00002 */  beqz       $t7, .L8004E84C
/* 4F444 8004E844 2DE10098 */   sltiu     $at, $t7, 0x98
/* 4F448 8004E848 14200002 */  bnez       $at, .L8004E854
.L8004E84C:
/* 4F44C 8004E84C 2401000A */   addiu     $at, $zero, 0xa
/* 4F450 8004E850 170100D9 */  bne        $t8, $at, .L8004EBB8
.L8004E854:
/* 4F454 8004E854 3C198008 */   lui       $t9, 0x8008
/* 4F458 8004E858 93399364 */  lbu        $t9, -0x6c9c($t9)
/* 4F45C 8004E85C 24010001 */  addiu      $at, $zero, 1
/* 4F460 8004E860 3C088010 */  lui        $t0, 0x8010
/* 4F464 8004E864 17210012 */  bne        $t9, $at, .L8004E8B0
/* 4F468 8004E868 3C058010 */   lui       $a1, 0x8010
/* 4F46C 8004E86C 8D08C704 */  lw         $t0, -0x38fc($t0)
/* 4F470 8004E870 8CA5C708 */  lw         $a1, -0x38f8($a1)
/* 4F474 8004E874 240604BC */  addiu      $a2, $zero, 0x4bc
/* 4F478 8004E878 8D040004 */  lw         $a0, 4($t0)
/* 4F47C 8004E87C AFA70020 */  sw         $a3, 0x20($sp)
/* 4F480 8004E880 0C012B6C */  jal        func_8004ADB0
/* 4F484 8004E884 A3A2001F */   sb        $v0, 0x1f($sp)
/* 4F488 8004E888 3C098010 */  lui        $t1, 0x8010
/* 4F48C 8004E88C 8D29C704 */  lw         $t1, -0x38fc($t1)
/* 4F490 8004E890 3C048010 */  lui        $a0, 0x8010
/* 4F494 8004E894 8C84C708 */  lw         $a0, -0x38f8($a0)
/* 4F498 8004E898 0C01609E */  jal        func_80058278
/* 4F49C 8004E89C 8D250004 */   lw        $a1, 4($t1)
/* 4F4A0 8004E8A0 3C018008 */  lui        $at, 0x8008
/* 4F4A4 8004E8A4 93A2001F */  lbu        $v0, 0x1f($sp)
/* 4F4A8 8004E8A8 8FA70020 */  lw         $a3, 0x20($sp)
/* 4F4AC 8004E8AC A0209364 */  sb         $zero, -0x6c9c($at)
.L8004E8B0:
/* 4F4B0 8004E8B0 8FAA0034 */  lw         $t2, 0x34($sp)
/* 4F4B4 8004E8B4 2D41000B */  sltiu      $at, $t2, 0xb
/* 4F4B8 8004E8B8 102000B1 */  beqz       $at, .L8004EB80
/* 4F4BC 8004E8BC 000A5080 */   sll       $t2, $t2, 2
/* 4F4C0 8004E8C0 3C018008 */  lui        $at, 0x8008
/* 4F4C4 8004E8C4 002A0821 */  addu       $at, $at, $t2
/* 4F4C8 8004E8C8 8C2AD960 */  lw         $t2, -0x26a0($at)
/* 4F4CC 8004E8CC 01400008 */  jr         $t2
/* 4F4D0 8004E8D0 00000000 */   nop       
/* 4F4D4 8004E8D4 10400003 */  beqz       $v0, .L8004E8E4
/* 4F4D8 8004E8D8 240C0070 */   addiu     $t4, $zero, 0x70
/* 4F4DC 8004E8DC 240B009D */  addiu      $t3, $zero, 0x9d
/* 4F4E0 8004E8E0 AFAB0030 */  sw         $t3, 0x30($sp)
.L8004E8E4:
/* 4F4E4 8004E8E4 100000AB */  b          .L8004EB94
/* 4F4E8 8004E8E8 AFAC0024 */   sw        $t4, 0x24($sp)
/* 4F4EC 8004E8EC 10400003 */  beqz       $v0, .L8004E8FC
/* 4F4F0 8004E8F0 240E0010 */   addiu     $t6, $zero, 0x10
/* 4F4F4 8004E8F4 240D009D */  addiu      $t5, $zero, 0x9d
/* 4F4F8 8004E8F8 AFAD0030 */  sw         $t5, 0x30($sp)
.L8004E8FC:
/* 4F4FC 8004E8FC AFAE0024 */  sw         $t6, 0x24($sp)
/* 4F500 8004E900 100000A4 */  b          .L8004EB94
/* 4F504 8004E904 2407000A */   addiu     $a3, $zero, 0xa
/* 4F508 8004E908 10400003 */  beqz       $v0, .L8004E918
/* 4F50C 8004E90C 24180050 */   addiu     $t8, $zero, 0x50
/* 4F510 8004E910 240F009D */  addiu      $t7, $zero, 0x9d
/* 4F514 8004E914 AFAF0030 */  sw         $t7, 0x30($sp)
.L8004E918:
/* 4F518 8004E918 AFB80024 */  sw         $t8, 0x24($sp)
/* 4F51C 8004E91C 1000009D */  b          .L8004EB94
/* 4F520 8004E920 24070014 */   addiu     $a3, $zero, 0x14
/* 4F524 8004E924 10400005 */  beqz       $v0, .L8004E93C
/* 4F528 8004E928 240A0030 */   addiu     $t2, $zero, 0x30
/* 4F52C 8004E92C 2419009D */  addiu      $t9, $zero, 0x9d
/* 4F530 8004E930 AFB90030 */  sw         $t9, 0x30($sp)
/* 4F534 8004E934 10000007 */  b          .L8004E954
/* 4F538 8004E938 2407003C */   addiu     $a3, $zero, 0x3c
.L8004E93C:
/* 4F53C 8004E93C 8FA80030 */  lw         $t0, 0x30($sp)
/* 4F540 8004E940 3C078008 */  lui        $a3, 0x8008
/* 4F544 8004E944 00084880 */  sll        $t1, $t0, 2
/* 4F548 8004E948 01284821 */  addu       $t1, $t1, $t0
/* 4F54C 8004E94C 00E93821 */  addu       $a3, $a3, $t1
/* 4F550 8004E950 90E7906E */  lbu        $a3, -0x6f92($a3)
.L8004E954:
/* 4F554 8004E954 1000008F */  b          .L8004EB94
/* 4F558 8004E958 AFAA0024 */   sw        $t2, 0x24($sp)
/* 4F55C 8004E95C 10400005 */  beqz       $v0, .L8004E974
/* 4F560 8004E960 240E0060 */   addiu     $t6, $zero, 0x60
/* 4F564 8004E964 240B009D */  addiu      $t3, $zero, 0x9d
/* 4F568 8004E968 AFAB0030 */  sw         $t3, 0x30($sp)
/* 4F56C 8004E96C 10000007 */  b          .L8004E98C
/* 4F570 8004E970 2407003C */   addiu     $a3, $zero, 0x3c
.L8004E974:
/* 4F574 8004E974 8FAC0030 */  lw         $t4, 0x30($sp)
/* 4F578 8004E978 3C078008 */  lui        $a3, 0x8008
/* 4F57C 8004E97C 000C6880 */  sll        $t5, $t4, 2
/* 4F580 8004E980 01AC6821 */  addu       $t5, $t5, $t4
/* 4F584 8004E984 00ED3821 */  addu       $a3, $a3, $t5
/* 4F588 8004E988 90E7906E */  lbu        $a3, -0x6f92($a3)
.L8004E98C:
/* 4F58C 8004E98C 3C058008 */  lui        $a1, 0x8008
/* 4F590 8004E990 AFAE0024 */  sw         $t6, 0x24($sp)
/* 4F594 8004E994 90A58400 */  lbu        $a1, -0x7c00($a1)
/* 4F598 8004E998 24040015 */  addiu      $a0, $zero, 0x15
/* 4F59C 8004E99C 00003025 */  or         $a2, $zero, $zero
/* 4F5A0 8004E9A0 0C00D9E8 */  jal        func_800367A0
/* 4F5A4 8004E9A4 AFA70020 */   sw        $a3, 0x20($sp)
/* 4F5A8 8004E9A8 1000007A */  b          .L8004EB94
/* 4F5AC 8004E9AC 8FA70020 */   lw        $a3, 0x20($sp)
/* 4F5B0 8004E9B0 10400005 */  beqz       $v0, .L8004E9C8
/* 4F5B4 8004E9B4 24080070 */   addiu     $t0, $zero, 0x70
/* 4F5B8 8004E9B8 240F009C */  addiu      $t7, $zero, 0x9c
/* 4F5BC 8004E9BC AFAF0030 */  sw         $t7, 0x30($sp)
/* 4F5C0 8004E9C0 10000007 */  b          .L8004E9E0
/* 4F5C4 8004E9C4 24070032 */   addiu     $a3, $zero, 0x32
.L8004E9C8:
/* 4F5C8 8004E9C8 8FB80030 */  lw         $t8, 0x30($sp)
/* 4F5CC 8004E9CC 3C078008 */  lui        $a3, 0x8008
/* 4F5D0 8004E9D0 0018C880 */  sll        $t9, $t8, 2
/* 4F5D4 8004E9D4 0338C821 */  addu       $t9, $t9, $t8
/* 4F5D8 8004E9D8 00F93821 */  addu       $a3, $a3, $t9
/* 4F5DC 8004E9DC 90E7906E */  lbu        $a3, -0x6f92($a3)
.L8004E9E0:
/* 4F5E0 8004E9E0 3C058008 */  lui        $a1, 0x8008
/* 4F5E4 8004E9E4 AFA80024 */  sw         $t0, 0x24($sp)
/* 4F5E8 8004E9E8 90A58400 */  lbu        $a1, -0x7c00($a1)
/* 4F5EC 8004E9EC 24040015 */  addiu      $a0, $zero, 0x15
/* 4F5F0 8004E9F0 00003025 */  or         $a2, $zero, $zero
/* 4F5F4 8004E9F4 0C00D9E8 */  jal        func_800367A0
/* 4F5F8 8004E9F8 AFA70020 */   sw        $a3, 0x20($sp)
/* 4F5FC 8004E9FC 10000065 */  b          .L8004EB94
/* 4F600 8004EA00 8FA70020 */   lw        $a3, 0x20($sp)
/* 4F604 8004EA04 1040006C */  beqz       $v0, .L8004EBB8
/* 4F608 8004EA08 3C048010 */   lui       $a0, 0x8010
/* 4F60C 8004EA0C 2484CB18 */  addiu      $a0, $a0, -0x34e8
/* 4F610 8004EA10 8C820000 */  lw         $v0, ($a0)
/* 4F614 8004EA14 240D009A */  addiu      $t5, $zero, 0x9a
/* 4F618 8004EA18 240E0070 */  addiu      $t6, $zero, 0x70
/* 4F61C 8004EA1C 50400012 */  beql       $v0, $zero, .L8004EA68
/* 4F620 8004EA20 AFAD0030 */   sw        $t5, 0x30($sp)
/* 4F624 8004EA24 8C830004 */  lw         $v1, 4($a0)
/* 4F628 8004EA28 5060000F */  beql       $v1, $zero, .L8004EA68
/* 4F62C 8004EA2C AFAD0030 */   sw        $t5, 0x30($sp)
/* 4F630 8004EA30 90440015 */  lbu        $a0, 0x15($v0)
/* 4F634 8004EA34 30890007 */  andi       $t1, $a0, 7
/* 4F638 8004EA38 55200060 */  bnel       $t1, $zero, .L8004EBBC
/* 4F63C 8004EA3C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4F640 8004EA40 90620015 */  lbu        $v0, 0x15($v1)
/* 4F644 8004EA44 308B0020 */  andi       $t3, $a0, 0x20
/* 4F648 8004EA48 304A0007 */  andi       $t2, $v0, 7
/* 4F64C 8004EA4C 5540005B */  bnel       $t2, $zero, .L8004EBBC
/* 4F650 8004EA50 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4F654 8004EA54 15600058 */  bnez       $t3, .L8004EBB8
/* 4F658 8004EA58 304C0020 */   andi      $t4, $v0, 0x20
/* 4F65C 8004EA5C 55800057 */  bnel       $t4, $zero, .L8004EBBC
/* 4F660 8004EA60 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4F664 8004EA64 AFAD0030 */  sw         $t5, 0x30($sp)
.L8004EA68:
/* 4F668 8004EA68 1000004A */  b          .L8004EB94
/* 4F66C 8004EA6C AFAE0024 */   sw        $t6, 0x24($sp)
/* 4F670 8004EA70 10400051 */  beqz       $v0, .L8004EBB8
/* 4F674 8004EA74 3C048010 */   lui       $a0, 0x8010
/* 4F678 8004EA78 2484CB18 */  addiu      $a0, $a0, -0x34e8
/* 4F67C 8004EA7C 8C820000 */  lw         $v0, ($a0)
/* 4F680 8004EA80 2409009B */  addiu      $t1, $zero, 0x9b
/* 4F684 8004EA84 240A0070 */  addiu      $t2, $zero, 0x70
/* 4F688 8004EA88 50400012 */  beql       $v0, $zero, .L8004EAD4
/* 4F68C 8004EA8C AFA90030 */   sw        $t1, 0x30($sp)
/* 4F690 8004EA90 8C830004 */  lw         $v1, 4($a0)
/* 4F694 8004EA94 5060000F */  beql       $v1, $zero, .L8004EAD4
/* 4F698 8004EA98 AFA90030 */   sw        $t1, 0x30($sp)
/* 4F69C 8004EA9C 90440015 */  lbu        $a0, 0x15($v0)
/* 4F6A0 8004EAA0 308F0007 */  andi       $t7, $a0, 7
/* 4F6A4 8004EAA4 55E00045 */  bnel       $t7, $zero, .L8004EBBC
/* 4F6A8 8004EAA8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4F6AC 8004EAAC 90620015 */  lbu        $v0, 0x15($v1)
/* 4F6B0 8004EAB0 30990020 */  andi       $t9, $a0, 0x20
/* 4F6B4 8004EAB4 30580007 */  andi       $t8, $v0, 7
/* 4F6B8 8004EAB8 57000040 */  bnel       $t8, $zero, .L8004EBBC
/* 4F6BC 8004EABC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4F6C0 8004EAC0 1720003D */  bnez       $t9, .L8004EBB8
/* 4F6C4 8004EAC4 30480020 */   andi      $t0, $v0, 0x20
/* 4F6C8 8004EAC8 5500003C */  bnel       $t0, $zero, .L8004EBBC
/* 4F6CC 8004EACC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4F6D0 8004EAD0 AFA90030 */  sw         $t1, 0x30($sp)
.L8004EAD4:
/* 4F6D4 8004EAD4 1000002F */  b          .L8004EB94
/* 4F6D8 8004EAD8 AFAA0024 */   sw        $t2, 0x24($sp)
/* 4F6DC 8004EADC 10400006 */  beqz       $v0, .L8004EAF8
/* 4F6E0 8004EAE0 240D0060 */   addiu     $t5, $zero, 0x60
/* 4F6E4 8004EAE4 240B0098 */  addiu      $t3, $zero, 0x98
/* 4F6E8 8004EAE8 240C0070 */  addiu      $t4, $zero, 0x70
/* 4F6EC 8004EAEC AFAB0030 */  sw         $t3, 0x30($sp)
/* 4F6F0 8004EAF0 10000028 */  b          .L8004EB94
/* 4F6F4 8004EAF4 AFAC0024 */   sw        $t4, 0x24($sp)
.L8004EAF8:
/* 4F6F8 8004EAF8 8FAE0030 */  lw         $t6, 0x30($sp)
/* 4F6FC 8004EAFC 3C078008 */  lui        $a3, 0x8008
/* 4F700 8004EB00 AFAD0024 */  sw         $t5, 0x24($sp)
/* 4F704 8004EB04 000E7880 */  sll        $t7, $t6, 2
/* 4F708 8004EB08 01EE7821 */  addu       $t7, $t7, $t6
/* 4F70C 8004EB0C 00EF3821 */  addu       $a3, $a3, $t7
/* 4F710 8004EB10 10000020 */  b          .L8004EB94
/* 4F714 8004EB14 90E7906F */   lbu       $a3, -0x6f91($a3)
/* 4F718 8004EB18 8FB90030 */  lw         $t9, 0x30($sp)
/* 4F71C 8004EB1C 24180070 */  addiu      $t8, $zero, 0x70
/* 4F720 8004EB20 AFB80024 */  sw         $t8, 0x24($sp)
/* 4F724 8004EB24 2728FF68 */  addiu      $t0, $t9, -0x98
/* 4F728 8004EB28 2D01000E */  sltiu      $at, $t0, 0xe
/* 4F72C 8004EB2C 10200012 */  beqz       $at, .L8004EB78
/* 4F730 8004EB30 00084080 */   sll       $t0, $t0, 2
/* 4F734 8004EB34 3C018008 */  lui        $at, 0x8008
/* 4F738 8004EB38 00280821 */  addu       $at, $at, $t0
/* 4F73C 8004EB3C 8C28D98C */  lw         $t0, -0x2674($at)
/* 4F740 8004EB40 01000008 */  jr         $t0
/* 4F744 8004EB44 00000000 */   nop       
/* 4F748 8004EB48 10000012 */  b          .L8004EB94
/* 4F74C 8004EB4C 24070032 */   addiu     $a3, $zero, 0x32
/* 4F750 8004EB50 10000010 */  b          .L8004EB94
/* 4F754 8004EB54 2407003C */   addiu     $a3, $zero, 0x3c
/* 4F758 8004EB58 1000000E */  b          .L8004EB94
/* 4F75C 8004EB5C 24070014 */   addiu     $a3, $zero, 0x14
/* 4F760 8004EB60 1000000C */  b          .L8004EB94
/* 4F764 8004EB64 24070006 */   addiu     $a3, $zero, 6
/* 4F768 8004EB68 1000000A */  b          .L8004EB94
/* 4F76C 8004EB6C 2407002D */   addiu     $a3, $zero, 0x2d
/* 4F770 8004EB70 10000008 */  b          .L8004EB94
/* 4F774 8004EB74 2407002A */   addiu     $a3, $zero, 0x2a
.L8004EB78:
/* 4F778 8004EB78 10000006 */  b          .L8004EB94
/* 4F77C 8004EB7C 2407001E */   addiu     $a3, $zero, 0x1e
.L8004EB80:
/* 4F780 8004EB80 10400003 */  beqz       $v0, .L8004EB90
/* 4F784 8004EB84 240A0060 */   addiu     $t2, $zero, 0x60
/* 4F788 8004EB88 2409009D */  addiu      $t1, $zero, 0x9d
/* 4F78C 8004EB8C AFA90030 */  sw         $t1, 0x30($sp)
.L8004EB90:
/* 4F790 8004EB90 AFAA0024 */  sw         $t2, 0x24($sp)
.L8004EB94:
/* 4F794 8004EB94 8FAC0030 */  lw         $t4, 0x30($sp)
/* 4F798 8004EB98 3C0B8010 */  lui        $t3, 0x8010
/* 4F79C 8004EB9C 8D6BC708 */  lw         $t3, -0x38f8($t3)
/* 4F7A0 8004EBA0 000C68C0 */  sll        $t5, $t4, 3
/* 4F7A4 8004EBA4 00002025 */  or         $a0, $zero, $zero
/* 4F7A8 8004EBA8 016D7021 */  addu       $t6, $t3, $t5
/* 4F7AC 8004EBAC 8DC5FFFC */  lw         $a1, -4($t6)
/* 4F7B0 8004EBB0 0C01132F */  jal        func_80044CBC
/* 4F7B4 8004EBB4 8FA60024 */   lw        $a2, 0x24($sp)
.L8004EBB8:
/* 4F7B8 8004EBB8 8FBF0014 */  lw         $ra, 0x14($sp)
.L8004EBBC:
/* 4F7BC 8004EBBC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 4F7C0 8004EBC0 03E00008 */  jr         $ra
/* 4F7C4 8004EBC4 00000000 */   nop       

glabel func_8004EBC8
/* 4F7C8 8004EBC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4F7CC 8004EBCC AFBF0014 */  sw         $ra, 0x14($sp)
/* 4F7D0 8004EBD0 0C013A04 */  jal        func_8004E810
/* 4F7D4 8004EBD4 24050004 */   addiu     $a1, $zero, 4
/* 4F7D8 8004EBD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4F7DC 8004EBDC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4F7E0 8004EBE0 03E00008 */  jr         $ra
/* 4F7E4 8004EBE4 00000000 */   nop       
/* 4F7E8 8004EBE8 00000000 */  nop        
/* 4F7EC 8004EBEC 00000000 */  nop        
