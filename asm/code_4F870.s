.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8004EC70
/* 4F870 8004EC70 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 4F874 8004EC74 AFB00040 */  sw        $s0, 0x40($sp)
/* 4F878 8004EC78 00808025 */  or        $s0, $a0, $zero
/* 4F87C 8004EC7C AFBF0064 */  sw        $ra, 0x64($sp)
/* 4F880 8004EC80 AFB60058 */  sw        $s6, 0x58($sp)
/* 4F884 8004EC84 AFA5006C */  sw        $a1, 0x6c($sp)
/* 4F888 8004EC88 240E002C */  addiu     $t6, $zero, 0x2c
/* 4F88C 8004EC8C 00C0B025 */  or        $s6, $a2, $zero
/* 4F890 8004EC90 AFBE0060 */  sw        $fp, 0x60($sp)
/* 4F894 8004EC94 AFB7005C */  sw        $s7, 0x5c($sp)
/* 4F898 8004EC98 AFB50054 */  sw        $s5, 0x54($sp)
/* 4F89C 8004EC9C AFB40050 */  sw        $s4, 0x50($sp)
/* 4F8A0 8004ECA0 AFB3004C */  sw        $s3, 0x4c($sp)
/* 4F8A4 8004ECA4 AFB20048 */  sw        $s2, 0x48($sp)
/* 4F8A8 8004ECA8 AFB10044 */  sw        $s1, 0x44($sp)
/* 4F8AC 8004ECAC F7BA0038 */  sdc1      $f26, 0x38($sp)
/* 4F8B0 8004ECB0 F7B80030 */  sdc1      $f24, 0x30($sp)
/* 4F8B4 8004ECB4 F7B60028 */  sdc1      $f22, 0x28($sp)
/* 4F8B8 8004ECB8 F7B40020 */  sdc1      $f20, 0x20($sp)
/* 4F8BC 8004ECBC AFAE0010 */  sw        $t6, 0x10($sp)
/* 4F8C0 8004ECC0 00002825 */  or        $a1, $zero, $zero
/* 4F8C4 8004ECC4 00002025 */  or        $a0, $zero, $zero
/* 4F8C8 8004ECC8 0C0194C4 */  jal       func_80065310
/* 4F8CC 8004ECCC 24070001 */  addiu     $a3, $zero, 1
/* 4F8D0 8004ECD0 8FA3006C */  lw        $v1, 0x6c($sp)
/* 4F8D4 8004ECD4 AE020000 */  sw        $v0, ($s0)
/* 4F8D8 8004ECD8 3C138008 */  lui       $s3, 0x8008
/* 4F8DC 8004ECDC 906F001C */  lbu       $t7, 0x1c($v1)
/* 4F8E0 8004ECE0 0040A825 */  or        $s5, $v0, $zero
/* 4F8E4 8004ECE4 267394D8 */  addiu     $s3, $s3, -0x6b28
/* 4F8E8 8004ECE8 25F8FFFF */  addiu     $t8, $t7, -1
/* 4F8EC 8004ECEC 2F010006 */  sltiu     $at, $t8, 6
/* 4F8F0 8004ECF0 10200017 */  beqz      $at, .L8004ED50
/* 4F8F4 8004ECF4 0018C080 */  sll       $t8, $t8, 2
/* 4F8F8 8004ECF8 3C018008 */  lui       $at, 0x8008
/* 4F8FC 8004ECFC 00380821 */  addu      $at, $at, $t8
/* 4F900 8004ED00 8C38D9D0 */  lw        $t8, -0x2630($at)
/* 4F904 8004ED04 03000008 */  jr        $t8
/* 4F908 8004ED08 00000000 */  nop       
/* 4F90C 8004ED0C 3C138008 */  lui       $s3, 0x8008
/* 4F910 8004ED10 1000000F */  b         .L8004ED50
/* 4F914 8004ED14 26739370 */  addiu     $s3, $s3, -0x6c90
/* 4F918 8004ED18 3C138008 */  lui       $s3, 0x8008
/* 4F91C 8004ED1C 1000000C */  b         .L8004ED50
/* 4F920 8004ED20 267393D8 */  addiu     $s3, $s3, -0x6c28
/* 4F924 8004ED24 3C138008 */  lui       $s3, 0x8008
/* 4F928 8004ED28 10000009 */  b         .L8004ED50
/* 4F92C 8004ED2C 26739460 */  addiu     $s3, $s3, -0x6ba0
/* 4F930 8004ED30 3C138008 */  lui       $s3, 0x8008
/* 4F934 8004ED34 10000006 */  b         .L8004ED50
/* 4F938 8004ED38 26739488 */  addiu     $s3, $s3, -0x6b78
/* 4F93C 8004ED3C 3C138008 */  lui       $s3, 0x8008
/* 4F940 8004ED40 10000003 */  b         .L8004ED50
/* 4F944 8004ED44 267394B0 */  addiu     $s3, $s3, -0x6b50
/* 4F948 8004ED48 10000001 */  b         .L8004ED50
/* 4F94C 8004ED4C 8C730020 */  lw        $s3, 0x20($v1)
.L8004ED50:
/* 4F950 8004ED50 8E790000 */  lw        $t9, ($s3)
/* 4F954 8004ED54 24090028 */  addiu     $t1, $zero, 0x28
/* 4F958 8004ED58 24110002 */  addiu     $s1, $zero, 2
/* 4F95C 8004ED5C A2B90024 */  sb        $t9, 0x24($s5)
/* 4F960 8004ED60 8E680004 */  lw        $t0, 4($s3)
/* 4F964 8004ED64 00002025 */  or        $a0, $zero, $zero
/* 4F968 8004ED68 00002825 */  or        $a1, $zero, $zero
/* 4F96C 8004ED6C AEA8001C */  sw        $t0, 0x1c($s5)
/* 4F970 8004ED70 AFA90010 */  sw        $t1, 0x10($sp)
/* 4F974 8004ED74 02C03025 */  or        $a2, $s6, $zero
/* 4F978 8004ED78 0C0194C4 */  jal       func_80065310
/* 4F97C 8004ED7C 332700FF */  andi      $a3, $t9, 0xff
/* 4F980 8004ED80 AEA20020 */  sw        $v0, 0x20($s5)
/* 4F984 8004ED84 8EA7001C */  lw        $a3, 0x1c($s5)
/* 4F988 8004ED88 240A0002 */  addiu     $t2, $zero, 2
/* 4F98C 8004ED8C AFAA0010 */  sw        $t2, 0x10($sp)
/* 4F990 8004ED90 00002025 */  or        $a0, $zero, $zero
/* 4F994 8004ED94 00002825 */  or        $a1, $zero, $zero
/* 4F998 8004ED98 0C0194C4 */  jal       func_80065310
/* 4F99C 8004ED9C 02C03025 */  or        $a2, $s6, $zero
/* 4F9A0 8004EDA0 8EAB001C */  lw        $t3, 0x1c($s5)
/* 4F9A4 8004EDA4 AEA20014 */  sw        $v0, 0x14($s5)
/* 4F9A8 8004EDA8 AEA20018 */  sw        $v0, 0x18($s5)
/* 4F9AC 8004EDAC 1160000B */  beqz      $t3, .L8004EDDC
/* 4F9B0 8004EDB0 00001825 */  or        $v1, $zero, $zero
/* 4F9B4 8004EDB4 8EAC0014 */  lw        $t4, 0x14($s5)
.L8004EDB8:
/* 4F9B8 8004EDB8 00036840 */  sll       $t5, $v1, 1
/* 4F9BC 8004EDBC 24630001 */  addiu     $v1, $v1, 1
/* 4F9C0 8004EDC0 018D7021 */  addu      $t6, $t4, $t5
/* 4F9C4 8004EDC4 A5C00000 */  sh        $zero, ($t6)
/* 4F9C8 8004EDC8 8EAF001C */  lw        $t7, 0x1c($s5)
/* 4F9CC 8004EDCC 3063FFFF */  andi      $v1, $v1, 0xffff
/* 4F9D0 8004EDD0 006F082B */  sltu      $at, $v1, $t7
/* 4F9D4 8004EDD4 5420FFF8 */  bnel      $at, $zero, .L8004EDB8
/* 4F9D8 8004EDD8 8EAC0014 */  lw        $t4, 0x14($s5)
.L8004EDDC:
/* 4F9DC 8004EDDC 92B80024 */  lbu       $t8, 0x24($s5)
/* 4F9E0 8004EDE0 0000A025 */  or        $s4, $zero, $zero
/* 4F9E4 8004EDE4 3C013F80 */  lui       $at, 0x3f80
/* 4F9E8 8004EDE8 1B000096 */  blez      $t8, .L8004F044
/* 4F9EC 8004EDEC 241E0001 */  addiu     $fp, $zero, 1
/* 4F9F0 8004EDF0 4481C000 */  mtc1      $at, $f24
/* 4F9F4 8004EDF4 3C01447A */  lui       $at, 0x447a
/* 4F9F8 8004EDF8 4481B000 */  mtc1      $at, $f22
/* 4F9FC 8004EDFC 3C018008 */  lui       $at, 0x8008
/* 4FA00 8004EE00 4480D000 */  mtc1      $zero, $f26
/* 4FA04 8004EE04 D434D9E8 */  ldc1      $f20, -0x2618($at)
/* 4FA08 8004EE08 24170028 */  addiu     $s7, $zero, 0x28
.L8004EE0C:
/* 4FA0C 8004EE0C 02970019 */  multu     $s4, $s7
/* 4FA10 8004EE10 00114880 */  sll       $t1, $s1, 2
/* 4FA14 8004EE14 8EB90020 */  lw        $t9, 0x20($s5)
/* 4FA18 8004EE18 02695021 */  addu      $t2, $s3, $t1
/* 4FA1C 8004EE1C 8D4B0000 */  lw        $t3, ($t2)
/* 4FA20 8004EE20 26310001 */  addiu     $s1, $s1, 1
/* 4FA24 8004EE24 3231FFFF */  andi      $s1, $s1, 0xffff
/* 4FA28 8004EE28 00116080 */  sll       $t4, $s1, 2
/* 4FA2C 8004EE2C 026C6821 */  addu      $t5, $s3, $t4
/* 4FA30 8004EE30 26310001 */  addiu     $s1, $s1, 1
/* 4FA34 8004EE34 00004012 */  mflo      $t0
/* 4FA38 8004EE38 03288021 */  addu      $s0, $t9, $t0
/* 4FA3C 8004EE3C AE0B0000 */  sw        $t3, ($s0)
/* 4FA40 8004EE40 8DAE0000 */  lw        $t6, ($t5)
/* 4FA44 8004EE44 3231FFFF */  andi      $s1, $s1, 0xffff
/* 4FA48 8004EE48 00117880 */  sll       $t7, $s1, 2
/* 4FA4C 8004EE4C 026FC021 */  addu      $t8, $s3, $t7
/* 4FA50 8004EE50 AE0E0004 */  sw        $t6, 4($s0)
/* 4FA54 8004EE54 8F190000 */  lw        $t9, ($t8)
/* 4FA58 8004EE58 26310001 */  addiu     $s1, $s1, 1
/* 4FA5C 8004EE5C 3231FFFF */  andi      $s1, $s1, 0xffff
/* 4FA60 8004EE60 00114080 */  sll       $t0, $s1, 2
/* 4FA64 8004EE64 02684821 */  addu      $t1, $s3, $t0
/* 4FA68 8004EE68 A619000A */  sh        $t9, 0xa($s0)
/* 4FA6C 8004EE6C 8D2A0000 */  lw        $t2, ($t1)
/* 4FA70 8004EE70 26310001 */  addiu     $s1, $s1, 1
/* 4FA74 8004EE74 3231FFFF */  andi      $s1, $s1, 0xffff
/* 4FA78 8004EE78 00115880 */  sll       $t3, $s1, 2
/* 4FA7C 8004EE7C 026B6021 */  addu      $t4, $s3, $t3
/* 4FA80 8004EE80 A60A0008 */  sh        $t2, 8($s0)
/* 4FA84 8004EE84 8D8D0000 */  lw        $t5, ($t4)
/* 4FA88 8004EE88 26310001 */  addiu     $s1, $s1, 1
/* 4FA8C 8004EE8C 3231FFFF */  andi      $s1, $s1, 0xffff
/* 4FA90 8004EE90 00117080 */  sll       $t6, $s1, 2
/* 4FA94 8004EE94 026E7821 */  addu      $t7, $s3, $t6
/* 4FA98 8004EE98 A60D000C */  sh        $t5, 0xc($s0)
/* 4FA9C 8004EE9C 8DE20000 */  lw        $v0, ($t7)
/* 4FAA0 8004EEA0 5040003F */  beql      $v0, $zero, .L8004EFA0
/* 4FAA4 8004EEA4 26310002 */  addiu     $s1, $s1, 2
/* 4FAA8 8004EEA8 44822000 */  mtc1      $v0, $f4
/* 4FAAC 8004EEAC 8FB8006C */  lw        $t8, 0x6c($sp)
/* 4FAB0 8004EEB0 8E080004 */  lw        $t0, 4($s0)
/* 4FAB4 8004EEB4 468021A0 */  cvt.s.w   $f6, $f4
/* 4FAB8 8004EEB8 8F190018 */  lw        $t9, 0x18($t8)
/* 4FABC 8004EEBC 8E090000 */  lw        $t1, ($s0)
/* 4FAC0 8004EEC0 26310001 */  addiu     $s1, $s1, 1
/* 4FAC4 8004EEC4 44998000 */  mtc1      $t9, $f16
/* 4FAC8 8004EEC8 01095023 */  subu      $t2, $t0, $t1
/* 4FACC 8004EECC 46163203 */  div.s     $f8, $f6, $f22
/* 4FAD0 8004EED0 3231FFFF */  andi      $s1, $s1, 0xffff
/* 4FAD4 8004EED4 00115880 */  sll       $t3, $s1, 2
/* 4FAD8 8004EED8 026B6021 */  addu      $t4, $s3, $t3
/* 4FADC 8004EEDC 468084A1 */  cvt.d.w   $f18, $f16
/* 4FAE0 8004EEE0 3C0141F0 */  lui       $at, 0x41f0
/* 4FAE4 8004EEE4 46004021 */  cvt.d.s   $f0, $f8
/* 4FAE8 8004EEE8 448A4000 */  mtc1      $t2, $f8
/* 4FAEC 8004EEEC 46200280 */  add.d     $f10, $f0, $f0
/* 4FAF0 8004EEF0 46804421 */  cvt.d.w   $f16, $f8
/* 4FAF4 8004EEF4 46325103 */  div.d     $f4, $f10, $f18
/* 4FAF8 8004EEF8 462021A0 */  cvt.s.d   $f6, $f4
/* 4FAFC 8004EEFC 05410005 */  bgez      $t2, .L8004EF14
/* 4FB00 8004EF00 E6060010 */  swc1      $f6, 0x10($s0)
/* 4FB04 8004EF04 44815800 */  mtc1      $at, $f11
/* 4FB08 8004EF08 44805000 */  mtc1      $zero, $f10
/* 4FB0C 8004EF0C 00000000 */  nop       
/* 4FB10 8004EF10 462A8400 */  add.d     $f16, $f16, $f10
.L8004EF14:
/* 4FB14 8004EF14 8D8D0000 */  lw        $t5, ($t4)
/* 4FB18 8004EF18 26310001 */  addiu     $s1, $s1, 1
/* 4FB1C 8004EF1C E6180014 */  swc1      $f24, 0x14($s0)
/* 4FB20 8004EF20 448D9000 */  mtc1      $t5, $f18
/* 4FB24 8004EF24 AE000018 */  sw        $zero, 0x18($s0)
/* 4FB28 8004EF28 240E0034 */  addiu     $t6, $zero, 0x34
/* 4FB2C 8004EF2C 46809120 */  cvt.s.w   $f4, $f18
/* 4FB30 8004EF30 3231FFFF */  andi      $s1, $s1, 0xffff
/* 4FB34 8004EF34 00002025 */  or        $a0, $zero, $zero
/* 4FB38 8004EF38 00002825 */  or        $a1, $zero, $zero
/* 4FB3C 8004EF3C 02C03025 */  or        $a2, $s6, $zero
/* 4FB40 8004EF40 03C03825 */  or        $a3, $fp, $zero
/* 4FB44 8004EF44 460021A1 */  cvt.d.s   $f6, $f4
/* 4FB48 8004EF48 46343203 */  div.d     $f8, $f6, $f20
/* 4FB4C 8004EF4C 46304282 */  mul.d     $f10, $f8, $f16
/* 4FB50 8004EF50 462054A0 */  cvt.s.d   $f18, $f10
/* 4FB54 8004EF54 E612001C */  swc1      $f18, 0x1c($s0)
/* 4FB58 8004EF58 0C0194C4 */  jal       func_80065310
/* 4FB5C 8004EF5C AFAE0010 */  sw        $t6, 0x10($sp)
/* 4FB60 8004EF60 AE020024 */  sw        $v0, 0x24($s0)
/* 4FB64 8004EF64 240F0020 */  addiu     $t7, $zero, 0x20
/* 4FB68 8004EF68 AFAF0010 */  sw        $t7, 0x10($sp)
/* 4FB6C 8004EF6C 00002025 */  or        $a0, $zero, $zero
/* 4FB70 8004EF70 00002825 */  or        $a1, $zero, $zero
/* 4FB74 8004EF74 02C03025 */  or        $a2, $s6, $zero
/* 4FB78 8004EF78 0C0194C4 */  jal       func_80065310
/* 4FB7C 8004EF7C 03C03825 */  or        $a3, $fp, $zero
/* 4FB80 8004EF80 8E180024 */  lw        $t8, 0x24($s0)
/* 4FB84 8004EF84 AF020014 */  sw        $v0, 0x14($t8)
/* 4FB88 8004EF88 8E190024 */  lw        $t9, 0x24($s0)
/* 4FB8C 8004EF8C E73A0020 */  swc1      $f26, 0x20($t9)
/* 4FB90 8004EF90 8E080024 */  lw        $t0, 0x24($s0)
/* 4FB94 8004EF94 10000004 */  b         .L8004EFA8
/* 4FB98 8004EF98 AD1E0024 */  sw        $fp, 0x24($t0)
/* 4FB9C 8004EF9C 26310002 */  addiu     $s1, $s1, 2
.L8004EFA0:
/* 4FBA0 8004EFA0 AE000024 */  sw        $zero, 0x24($s0)
/* 4FBA4 8004EFA4 3231FFFF */  andi      $s1, $s1, 0xffff
.L8004EFA8:
/* 4FBA8 8004EFA8 00114880 */  sll       $t1, $s1, 2
/* 4FBAC 8004EFAC 02699021 */  addu      $s2, $s3, $t1
/* 4FBB0 8004EFB0 8E4A0000 */  lw        $t2, ($s2)
/* 4FBB4 8004EFB4 00002025 */  or        $a0, $zero, $zero
/* 4FBB8 8004EFB8 00002825 */  or        $a1, $zero, $zero
/* 4FBBC 8004EFBC 11400018 */  beqz      $t2, .L8004F020
/* 4FBC0 8004EFC0 02C03025 */  or        $a2, $s6, $zero
/* 4FBC4 8004EFC4 240B0030 */  addiu     $t3, $zero, 0x30
/* 4FBC8 8004EFC8 AFAB0010 */  sw        $t3, 0x10($sp)
/* 4FBCC 8004EFCC 0C0194C4 */  jal       func_80065310
/* 4FBD0 8004EFD0 03C03825 */  or        $a3, $fp, $zero
/* 4FBD4 8004EFD4 AE020020 */  sw        $v0, 0x20($s0)
/* 4FBD8 8004EFD8 240C0008 */  addiu     $t4, $zero, 8
/* 4FBDC 8004EFDC AFAC0010 */  sw        $t4, 0x10($sp)
/* 4FBE0 8004EFE0 00002025 */  or        $a0, $zero, $zero
/* 4FBE4 8004EFE4 00002825 */  or        $a1, $zero, $zero
/* 4FBE8 8004EFE8 02C03025 */  or        $a2, $s6, $zero
/* 4FBEC 8004EFEC 0C0194C4 */  jal       func_80065310
/* 4FBF0 8004EFF0 03C03825 */  or        $a3, $fp, $zero
/* 4FBF4 8004EFF4 8E0D0020 */  lw        $t5, 0x20($s0)
/* 4FBF8 8004EFF8 26310001 */  addiu     $s1, $s1, 1
/* 4FBFC 8004EFFC 3231FFFF */  andi      $s1, $s1, 0xffff
/* 4FC00 8004F000 ADA20028 */  sw        $v0, 0x28($t5)
/* 4FC04 8004F004 8E0F0020 */  lw        $t7, 0x20($s0)
/* 4FC08 8004F008 8E4E0000 */  lw        $t6, ($s2)
/* 4FC0C 8004F00C A5EE0000 */  sh        $t6, ($t7)
/* 4FC10 8004F010 0C017F18 */  jal       func_8005FC60
/* 4FC14 8004F014 8E040020 */  lw        $a0, 0x20($s0)
/* 4FC18 8004F018 10000005 */  b         .L8004F030
/* 4FC1C 8004F01C 92B80024 */  lbu       $t8, 0x24($s5)
.L8004F020:
/* 4FC20 8004F020 26310001 */  addiu     $s1, $s1, 1
/* 4FC24 8004F024 AE000020 */  sw        $zero, 0x20($s0)
/* 4FC28 8004F028 3231FFFF */  andi      $s1, $s1, 0xffff
/* 4FC2C 8004F02C 92B80024 */  lbu       $t8, 0x24($s5)
.L8004F030:
/* 4FC30 8004F030 26940001 */  addiu     $s4, $s4, 1
/* 4FC34 8004F034 3294FFFF */  andi      $s4, $s4, 0xffff
/* 4FC38 8004F038 0298082A */  slt       $at, $s4, $t8
/* 4FC3C 8004F03C 1420FF73 */  bnez      $at, .L8004EE0C
/* 4FC40 8004F040 00000000 */  nop       
.L8004F044:
/* 4FC44 8004F044 8FBF0064 */  lw        $ra, 0x64($sp)
/* 4FC48 8004F048 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 4FC4C 8004F04C D7B60028 */  ldc1      $f22, 0x28($sp)
/* 4FC50 8004F050 D7B80030 */  ldc1      $f24, 0x30($sp)
/* 4FC54 8004F054 D7BA0038 */  ldc1      $f26, 0x38($sp)
/* 4FC58 8004F058 8FB00040 */  lw        $s0, 0x40($sp)
/* 4FC5C 8004F05C 8FB10044 */  lw        $s1, 0x44($sp)
/* 4FC60 8004F060 8FB20048 */  lw        $s2, 0x48($sp)
/* 4FC64 8004F064 8FB3004C */  lw        $s3, 0x4c($sp)
/* 4FC68 8004F068 8FB40050 */  lw        $s4, 0x50($sp)
/* 4FC6C 8004F06C 8FB50054 */  lw        $s5, 0x54($sp)
/* 4FC70 8004F070 8FB60058 */  lw        $s6, 0x58($sp)
/* 4FC74 8004F074 8FB7005C */  lw        $s7, 0x5c($sp)
/* 4FC78 8004F078 8FBE0060 */  lw        $fp, 0x60($sp)
/* 4FC7C 8004F07C 03E00008 */  jr        $ra
/* 4FC80 8004F080 27BD0068 */  addiu     $sp, $sp, 0x68

glabel func_8004F084
/* 4FC84 8004F084 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 4FC88 8004F088 AFB00020 */  sw        $s0, 0x20($sp)
/* 4FC8C 8004F08C 00808025 */  or        $s0, $a0, $zero
/* 4FC90 8004F090 AFBF0024 */  sw        $ra, 0x24($sp)
/* 4FC94 8004F094 AFA5002C */  sw        $a1, 0x2c($sp)
/* 4FC98 8004F098 240E0020 */  addiu     $t6, $zero, 0x20
/* 4FC9C 8004F09C AFA60030 */  sw        $a2, 0x30($sp)
/* 4FCA0 8004F0A0 AFAE0010 */  sw        $t6, 0x10($sp)
/* 4FCA4 8004F0A4 00002825 */  or        $a1, $zero, $zero
/* 4FCA8 8004F0A8 00002025 */  or        $a0, $zero, $zero
/* 4FCAC 8004F0AC 0C0194C4 */  jal       func_80065310
/* 4FCB0 8004F0B0 24070001 */  addiu     $a3, $zero, 1
/* 4FCB4 8004F0B4 AE02000C */  sw        $v0, 0xc($s0)
/* 4FCB8 8004F0B8 240F0020 */  addiu     $t7, $zero, 0x20
/* 4FCBC 8004F0BC AFAF0010 */  sw        $t7, 0x10($sp)
/* 4FCC0 8004F0C0 8FA60030 */  lw        $a2, 0x30($sp)
/* 4FCC4 8004F0C4 00002025 */  or        $a0, $zero, $zero
/* 4FCC8 8004F0C8 00002825 */  or        $a1, $zero, $zero
/* 4FCCC 8004F0CC 0C0194C4 */  jal       func_80065310
/* 4FCD0 8004F0D0 24070001 */  addiu     $a3, $zero, 1
/* 4FCD4 8004F0D4 AE020010 */  sw        $v0, 0x10($s0)
/* 4FCD8 8004F0D8 8FB9002C */  lw        $t9, 0x2c($sp)
/* 4FCDC 8004F0DC 2604002C */  addiu     $a0, $s0, 0x2c
/* 4FCE0 8004F0E0 0320F809 */  jalr      $t9
/* 4FCE4 8004F0E4 00000000 */  nop       
/* 4FCE8 8004F0E8 24070001 */  addiu     $a3, $zero, 1
/* 4FCEC 8004F0EC AE020028 */  sw        $v0, 0x28($s0)
/* 4FCF0 8004F0F0 AE000034 */  sw        $zero, 0x34($s0)
/* 4FCF4 8004F0F4 AE070038 */  sw        $a3, 0x38($s0)
/* 4FCF8 8004F0F8 AE00003C */  sw        $zero, 0x3c($s0)
/* 4FCFC 8004F0FC 24180020 */  addiu     $t8, $zero, 0x20
/* 4FD00 8004F100 AFB80010 */  sw        $t8, 0x10($sp)
/* 4FD04 8004F104 8FA60030 */  lw        $a2, 0x30($sp)
/* 4FD08 8004F108 00002025 */  or        $a0, $zero, $zero
/* 4FD0C 8004F10C 0C0194C4 */  jal       func_80065310
/* 4FD10 8004F110 00002825 */  or        $a1, $zero, $zero
/* 4FD14 8004F114 3C013F80 */  lui       $at, 0x3f80
/* 4FD18 8004F118 44802000 */  mtc1      $zero, $f4
/* 4FD1C 8004F11C 44813000 */  mtc1      $at, $f6
/* 4FD20 8004F120 24070001 */  addiu     $a3, $zero, 1
/* 4FD24 8004F124 AE020040 */  sw        $v0, 0x40($s0)
/* 4FD28 8004F128 AE070050 */  sw        $a3, 0x50($s0)
/* 4FD2C 8004F12C AE000048 */  sw        $zero, 0x48($s0)
/* 4FD30 8004F130 24080050 */  addiu     $t0, $zero, 0x50
/* 4FD34 8004F134 E604004C */  swc1      $f4, 0x4c($s0)
/* 4FD38 8004F138 E6060044 */  swc1      $f6, 0x44($s0)
/* 4FD3C 8004F13C AFA80010 */  sw        $t0, 0x10($sp)
/* 4FD40 8004F140 8FA60030 */  lw        $a2, 0x30($sp)
/* 4FD44 8004F144 00002025 */  or        $a0, $zero, $zero
/* 4FD48 8004F148 0C0194C4 */  jal       func_80065310
/* 4FD4C 8004F14C 00002825 */  or        $a1, $zero, $zero
/* 4FD50 8004F150 24030001 */  addiu     $v1, $zero, 1
/* 4FD54 8004F154 AE020054 */  sw        $v0, 0x54($s0)
/* 4FD58 8004F158 AE030078 */  sw        $v1, 0x78($s0)
/* 4FD5C 8004F15C AE000084 */  sw        $zero, 0x84($s0)
/* 4FD60 8004F160 A603005A */  sh        $v1, 0x5a($s0)
/* 4FD64 8004F164 A6030068 */  sh        $v1, 0x68($s0)
/* 4FD68 8004F168 A603006E */  sh        $v1, 0x6e($s0)
/* 4FD6C 8004F16C A603005C */  sh        $v1, 0x5c($s0)
/* 4FD70 8004F170 A603005E */  sh        $v1, 0x5e($s0)
/* 4FD74 8004F174 A6000060 */  sh        $zero, 0x60($s0)
/* 4FD78 8004F178 A6000062 */  sh        $zero, 0x62($s0)
/* 4FD7C 8004F17C A6030066 */  sh        $v1, 0x66($s0)
/* 4FD80 8004F180 A6000064 */  sh        $zero, 0x64($s0)
/* 4FD84 8004F184 AE000070 */  sw        $zero, 0x70($s0)
/* 4FD88 8004F188 AE000074 */  sw        $zero, 0x74($s0)
/* 4FD8C 8004F18C A6000058 */  sh        $zero, 0x58($s0)
/* 4FD90 8004F190 AE00007C */  sw        $zero, 0x7c($s0)
/* 4FD94 8004F194 AE000080 */  sw        $zero, 0x80($s0)
/* 4FD98 8004F198 8FBF0024 */  lw        $ra, 0x24($sp)
/* 4FD9C 8004F19C 8FB00020 */  lw        $s0, 0x20($sp)
/* 4FDA0 8004F1A0 27BD0028 */  addiu     $sp, $sp, 0x28
/* 4FDA4 8004F1A4 03E00008 */  jr        $ra
/* 4FDA8 8004F1A8 00000000 */  nop       
/* 4FDAC 8004F1AC 00000000 */  nop       
