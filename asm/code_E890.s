.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000DC90
/* E890 8000DC90 3C0E8000 */  lui        $t6, 0x8000
/* E894 8000DC94 8DCE0318 */  lw         $t6, 0x318($t6)
/* E898 8000DC98 3C010080 */  lui        $at, 0x80
/* E89C 8000DC9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E8A0 8000DCA0 01C1082B */  sltu       $at, $t6, $at
/* E8A4 8000DCA4 10200003 */  beqz       $at, .L8000DCB4
/* E8A8 8000DCA8 AFBF0014 */   sw        $ra, 0x14($sp)
/* E8AC 8000DCAC 1000002A */  b          .L8000DD58
/* E8B0 8000DCB0 24020002 */   addiu     $v0, $zero, 2
.L8000DCB4:
/* E8B4 8000DCB4 3C048008 */  lui        $a0, 0x8008
/* E8B8 8000DCB8 3C058007 */  lui        $a1, 0x8007
/* E8BC 8000DCBC 24A5F004 */  addiu      $a1, $a1, -0xffc
/* E8C0 8000DCC0 248418F8 */  addiu      $a0, $a0, 0x18f8
/* E8C4 8000DCC4 0C017B90 */  jal        func_8005EE40
/* E8C8 8000DCC8 24060002 */   addiu     $a2, $zero, 2
/* E8CC 8000DCCC 10400003 */  beqz       $v0, .L8000DCDC
/* E8D0 8000DCD0 3C048008 */   lui       $a0, 0x8008
/* E8D4 8000DCD4 10000020 */  b          .L8000DD58
/* E8D8 8000DCD8 24020001 */   addiu     $v0, $zero, 1
.L8000DCDC:
/* E8DC 8000DCDC 3C058007 */  lui        $a1, 0x8007
/* E8E0 8000DCE0 24A5F000 */  addiu      $a1, $a1, -0x1000
/* E8E4 8000DCE4 248418E1 */  addiu      $a0, $a0, 0x18e1
/* E8E8 8000DCE8 0C017B90 */  jal        func_8005EE40
/* E8EC 8000DCEC 24060003 */   addiu     $a2, $zero, 3
/* E8F0 8000DCF0 10400003 */  beqz       $v0, .L8000DD00
/* E8F4 8000DCF4 3C048008 */   lui       $a0, 0x8008
/* E8F8 8000DCF8 10000017 */  b          .L8000DD58
/* E8FC 8000DCFC 24020001 */   addiu     $v0, $zero, 1
.L8000DD00:
/* E900 8000DD00 248418E0 */  addiu      $a0, $a0, 0x18e0
/* E904 8000DD04 90820000 */  lbu        $v0, ($a0)
/* E908 8000DD08 28410045 */  slti       $at, $v0, 0x45
/* E90C 8000DD0C 50200004 */  beql       $at, $zero, .L8000DD20
/* E910 8000DD10 2841005B */   slti      $at, $v0, 0x5b
/* E914 8000DD14 10000010 */  b          .L8000DD58
/* E918 8000DD18 24020001 */   addiu     $v0, $zero, 1
/* E91C 8000DD1C 2841005B */  slti       $at, $v0, 0x5b
.L8000DD20:
/* E920 8000DD20 54200004 */  bnel       $at, $zero, .L8000DD34
/* E924 8000DD24 908F0005 */   lbu       $t7, 5($a0)
/* E928 8000DD28 1000000B */  b          .L8000DD58
/* E92C 8000DD2C 24020001 */   addiu     $v0, $zero, 1
/* E930 8000DD30 908F0005 */  lbu        $t7, 5($a0)
.L8000DD34:
/* E934 8000DD34 24010001 */  addiu      $at, $zero, 1
/* E938 8000DD38 3C058000 */  lui        $a1, 0x8000
/* E93C 8000DD3C 11E10003 */  beq        $t7, $at, .L8000DD4C
/* E940 8000DD40 24A501A0 */   addiu     $a1, $a1, 0x1a0
/* E944 8000DD44 10000004 */  b          .L8000DD58
/* E948 8000DD48 24020001 */   addiu     $v0, $zero, 1
.L8000DD4C:
/* E94C 8000DD4C 0C018958 */  jal        func_80062560
/* E950 8000DD50 24060020 */   addiu     $a2, $zero, 0x20
/* E954 8000DD54 00001025 */  or         $v0, $zero, $zero
.L8000DD58:
/* E958 8000DD58 8FBF0014 */  lw         $ra, 0x14($sp)
/* E95C 8000DD5C 27BD0018 */  addiu      $sp, $sp, 0x18
/* E960 8000DD60 03E00008 */  jr         $ra
/* E964 8000DD64 00000000 */   nop       

glabel func_8000DD68
/* E968 8000DD68 8C8E0000 */  lw         $t6, ($a0)
/* E96C 8000DD6C 3C01504F */  lui        $at, 0x504f
/* E970 8000DD70 34214B45 */  ori        $at, $at, 0x4b45
/* E974 8000DD74 15C1000C */  bne        $t6, $at, .L8000DDA8
/* E978 8000DD78 00001825 */   or        $v1, $zero, $zero
/* E97C 8000DD7C 8C990000 */  lw         $t9, ($a0)
/* E980 8000DD80 3C0F800B */  lui        $t7, 0x800b
/* E984 8000DD84 25EFA680 */  addiu      $t7, $t7, -0x5980
/* E988 8000DD88 ADF90000 */  sw         $t9, ($t7)
/* E98C 8000DD8C 8C980004 */  lw         $t8, 4($a0)
/* E990 8000DD90 24030001 */  addiu      $v1, $zero, 1
/* E994 8000DD94 ADF80004 */  sw         $t8, 4($t7)
/* E998 8000DD98 8C990008 */  lw         $t9, 8($a0)
/* E99C 8000DD9C ADF90008 */  sw         $t9, 8($t7)
/* E9A0 8000DDA0 8C98000C */  lw         $t8, 0xc($a0)
/* E9A4 8000DDA4 ADF8000C */  sw         $t8, 0xc($t7)
.L8000DDA8:
/* E9A8 8000DDA8 03E00008 */  jr         $ra
/* E9AC 8000DDAC 00601025 */   or        $v0, $v1, $zero

glabel func_8000DDB0
/* E9B0 8000DDB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E9B4 8000DDB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* E9B8 8000DDB8 3C04800B */  lui        $a0, 0x800b
/* E9BC 8000DDBC 2484A698 */  addiu      $a0, $a0, -0x5968
/* E9C0 8000DDC0 0C000449 */  jal        func_80001124
/* E9C4 8000DDC4 00002825 */   or        $a1, $zero, $zero
/* E9C8 8000DDC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* E9CC 8000DDCC 240E0003 */  addiu      $t6, $zero, 3
/* E9D0 8000DDD0 3C01800B */  lui        $at, 0x800b
/* E9D4 8000DDD4 A42EA690 */  sh         $t6, -0x5970($at)
/* E9D8 8000DDD8 27BD0018 */  addiu      $sp, $sp, 0x18
/* E9DC 8000DDDC 03E00008 */  jr         $ra
/* E9E0 8000DDE0 00001025 */   or        $v0, $zero, $zero

glabel func_8000DDE4
/* E9E4 8000DDE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E9E8 8000DDE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* E9EC 8000DDEC 3C04800B */  lui        $a0, 0x800b
/* E9F0 8000DDF0 2484A698 */  addiu      $a0, $a0, -0x5968
/* E9F4 8000DDF4 0C00048F */  jal        func_8000123C
/* E9F8 8000DDF8 00002825 */   or        $a1, $zero, $zero
/* E9FC 8000DDFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* EA00 8000DE00 240E0005 */  addiu      $t6, $zero, 5
/* EA04 8000DE04 3C01800B */  lui        $at, 0x800b
/* EA08 8000DE08 A42EA690 */  sh         $t6, -0x5970($at)
/* EA0C 8000DE0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* EA10 8000DE10 03E00008 */  jr         $ra
/* EA14 8000DE14 00001025 */   or        $v0, $zero, $zero

glabel func_8000DE18
/* EA18 8000DE18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* EA1C 8000DE1C 3C0E800B */  lui        $t6, 0x800b
/* EA20 8000DE20 AFBF001C */  sw         $ra, 0x1c($sp)
/* EA24 8000DE24 00802825 */  or         $a1, $a0, $zero
/* EA28 8000DE28 25CEA698 */  addiu      $t6, $t6, -0x5968
/* EA2C 8000DE2C 240F0001 */  addiu      $t7, $zero, 1
/* EA30 8000DE30 AFAF0014 */  sw         $t7, 0x14($sp)
/* EA34 8000DE34 AFAE0010 */  sw         $t6, 0x10($sp)
/* EA38 8000DE38 00002025 */  or         $a0, $zero, $zero
/* EA3C 8000DE3C 24060230 */  addiu      $a2, $zero, 0x230
/* EA40 8000DE40 0C000426 */  jal        func_80001098
/* EA44 8000DE44 24070001 */   addiu     $a3, $zero, 1
/* EA48 8000DE48 8FBF001C */  lw         $ra, 0x1c($sp)
/* EA4C 8000DE4C 3C03800B */  lui        $v1, 0x800b
/* EA50 8000DE50 2463A690 */  addiu      $v1, $v1, -0x5970
/* EA54 8000DE54 24180007 */  addiu      $t8, $zero, 7
/* EA58 8000DE58 A4600004 */  sh         $zero, 4($v1)
/* EA5C 8000DE5C A4600002 */  sh         $zero, 2($v1)
/* EA60 8000DE60 A4780000 */  sh         $t8, ($v1)
/* EA64 8000DE64 27BD0020 */  addiu      $sp, $sp, 0x20
/* EA68 8000DE68 03E00008 */  jr         $ra
/* EA6C 8000DE6C 00001025 */   or        $v0, $zero, $zero

glabel func_8000DE70
/* EA70 8000DE70 3C02800B */  lui        $v0, 0x800b
/* EA74 8000DE74 2442A680 */  addiu      $v0, $v0, -0x5980
/* EA78 8000DE78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* EA7C 8000DE7C 3C0E800B */  lui        $t6, 0x800b
/* EA80 8000DE80 AFBF001C */  sw         $ra, 0x1c($sp)
/* EA84 8000DE84 25CEA698 */  addiu      $t6, $t6, -0x5968
/* EA88 8000DE88 240F0001 */  addiu      $t7, $zero, 1
/* EA8C 8000DE8C AFAF0014 */  sw         $t7, 0x14($sp)
/* EA90 8000DE90 AFAE0010 */  sw         $t6, 0x10($sp)
/* EA94 8000DE94 8C450008 */  lw         $a1, 8($v0)
/* EA98 8000DE98 94460004 */  lhu        $a2, 4($v0)
/* EA9C 8000DE9C 94470006 */  lhu        $a3, 6($v0)
/* EAA0 8000DEA0 0C000426 */  jal        func_80001098
/* EAA4 8000DEA4 00002025 */   or        $a0, $zero, $zero
/* EAA8 8000DEA8 8FBF001C */  lw         $ra, 0x1c($sp)
/* EAAC 8000DEAC 3C03800B */  lui        $v1, 0x800b
/* EAB0 8000DEB0 2463A690 */  addiu      $v1, $v1, -0x5970
/* EAB4 8000DEB4 24180009 */  addiu      $t8, $zero, 9
/* EAB8 8000DEB8 A4600004 */  sh         $zero, 4($v1)
/* EABC 8000DEBC A4600002 */  sh         $zero, 2($v1)
/* EAC0 8000DEC0 A4780000 */  sh         $t8, ($v1)
/* EAC4 8000DEC4 27BD0020 */  addiu      $sp, $sp, 0x20
/* EAC8 8000DEC8 03E00008 */  jr         $ra
/* EACC 8000DECC 00001025 */   or        $v0, $zero, $zero

glabel func_8000DED0
/* EAD0 8000DED0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* EAD4 8000DED4 AFBF0014 */  sw         $ra, 0x14($sp)
/* EAD8 8000DED8 3C04800B */  lui        $a0, 0x800b
/* EADC 8000DEDC 2484A698 */  addiu      $a0, $a0, -0x5968
/* EAE0 8000DEE0 27A5001C */  addiu      $a1, $sp, 0x1c
/* EAE4 8000DEE4 0C015AB4 */  jal        func_80056AD0
/* EAE8 8000DEE8 00003025 */   or        $a2, $zero, $zero
/* EAEC 8000DEEC 2401FFFF */  addiu      $at, $zero, -1
/* EAF0 8000DEF0 5041007A */  beql       $v0, $at, .L8000E0DC
/* EAF4 8000DEF4 00001025 */   or        $v0, $zero, $zero
/* EAF8 8000DEF8 8FA2001C */  lw         $v0, 0x1c($sp)
/* EAFC 8000DEFC 2C410032 */  sltiu      $at, $v0, 0x32
/* EB00 8000DF00 1020006C */  beqz       $at, .L8000E0B4
/* EB04 8000DF04 00027080 */   sll       $t6, $v0, 2
/* EB08 8000DF08 3C018008 */  lui        $at, 0x8008
/* EB0C 8000DF0C 002E0821 */  addu       $at, $at, $t6
/* EB10 8000DF10 8C2EB400 */  lw         $t6, -0x4c00($at)
/* EB14 8000DF14 01C00008 */  jr         $t6
/* EB18 8000DF18 00000000 */   nop       
/* EB1C 8000DF1C 0C003724 */  jal        func_8000DC90
/* EB20 8000DF20 00000000 */   nop       
/* EB24 8000DF24 10400009 */  beqz       $v0, .L8000DF4C
/* EB28 8000DF28 3C03800B */   lui       $v1, 0x800b
/* EB2C 8000DF2C 24010001 */  addiu      $at, $zero, 1
/* EB30 8000DF30 1041000E */  beq        $v0, $at, .L8000DF6C
/* EB34 8000DF34 3C03800B */   lui       $v1, 0x800b
/* EB38 8000DF38 24010002 */  addiu      $at, $zero, 2
/* EB3C 8000DF3C 10410014 */  beq        $v0, $at, .L8000DF90
/* EB40 8000DF40 3C03800B */   lui       $v1, 0x800b
/* EB44 8000DF44 10000065 */  b          .L8000E0DC
/* EB48 8000DF48 24020001 */   addiu     $v0, $zero, 1
.L8000DF4C:
/* EB4C 8000DF4C 8FA2001C */  lw         $v0, 0x1c($sp)
/* EB50 8000DF50 2463A690 */  addiu      $v1, $v1, -0x5970
/* EB54 8000DF54 240F0006 */  addiu      $t7, $zero, 6
/* EB58 8000DF58 A4620004 */  sh         $v0, 4($v1)
/* EB5C 8000DF5C A4600002 */  sh         $zero, 2($v1)
/* EB60 8000DF60 A46F0000 */  sh         $t7, ($v1)
/* EB64 8000DF64 1000005D */  b          .L8000E0DC
/* EB68 8000DF68 24020001 */   addiu     $v0, $zero, 1
.L8000DF6C:
/* EB6C 8000DF6C 8FA2001C */  lw         $v0, 0x1c($sp)
/* EB70 8000DF70 2463A690 */  addiu      $v1, $v1, -0x5970
/* EB74 8000DF74 24040004 */  addiu      $a0, $zero, 4
/* EB78 8000DF78 24180005 */  addiu      $t8, $zero, 5
/* EB7C 8000DF7C A4620004 */  sh         $v0, 4($v1)
/* EB80 8000DF80 A4780002 */  sh         $t8, 2($v1)
/* EB84 8000DF84 A4640000 */  sh         $a0, ($v1)
/* EB88 8000DF88 10000054 */  b          .L8000E0DC
/* EB8C 8000DF8C 24020001 */   addiu     $v0, $zero, 1
.L8000DF90:
/* EB90 8000DF90 2463A690 */  addiu      $v1, $v1, -0x5970
/* EB94 8000DF94 24040004 */  addiu      $a0, $zero, 4
/* EB98 8000DF98 2419002C */  addiu      $t9, $zero, 0x2c
/* EB9C 8000DF9C A4640002 */  sh         $a0, 2($v1)
/* EBA0 8000DFA0 A4640000 */  sh         $a0, ($v1)
/* EBA4 8000DFA4 A4790004 */  sh         $t9, 4($v1)
/* EBA8 8000DFA8 1000004C */  b          .L8000E0DC
/* EBAC 8000DFAC 24020001 */   addiu     $v0, $zero, 1
/* EBB0 8000DFB0 3C03800B */  lui        $v1, 0x800b
/* EBB4 8000DFB4 2463A690 */  addiu      $v1, $v1, -0x5970
/* EBB8 8000DFB8 24040002 */  addiu      $a0, $zero, 2
/* EBBC 8000DFBC A4640000 */  sh         $a0, ($v1)
/* EBC0 8000DFC0 10000046 */  b          .L8000E0DC
/* EBC4 8000DFC4 24020001 */   addiu     $v0, $zero, 1
/* EBC8 8000DFC8 3C03800B */  lui        $v1, 0x800b
/* EBCC 8000DFCC 2463A690 */  addiu      $v1, $v1, -0x5970
/* EBD0 8000DFD0 24040002 */  addiu      $a0, $zero, 2
/* EBD4 8000DFD4 A4640000 */  sh         $a0, ($v1)
/* EBD8 8000DFD8 10000040 */  b          .L8000E0DC
/* EBDC 8000DFDC 24020001 */   addiu     $v0, $zero, 1
/* EBE0 8000DFE0 3C03800B */  lui        $v1, 0x800b
/* EBE4 8000DFE4 2463A690 */  addiu      $v1, $v1, -0x5970
/* EBE8 8000DFE8 24040002 */  addiu      $a0, $zero, 2
/* EBEC 8000DFEC A4620004 */  sh         $v0, 4($v1)
/* EBF0 8000DFF0 A4640002 */  sh         $a0, 2($v1)
/* EBF4 8000DFF4 A4640000 */  sh         $a0, ($v1)
/* EBF8 8000DFF8 10000038 */  b          .L8000E0DC
/* EBFC 8000DFFC 24020001 */   addiu     $v0, $zero, 1
/* EC00 8000E000 3C03800B */  lui        $v1, 0x800b
/* EC04 8000E004 2463A690 */  addiu      $v1, $v1, -0x5970
/* EC08 8000E008 24040004 */  addiu      $a0, $zero, 4
/* EC0C 8000E00C A4620004 */  sh         $v0, 4($v1)
/* EC10 8000E010 24080003 */  addiu      $t0, $zero, 3
/* EC14 8000E014 A4680002 */  sh         $t0, 2($v1)
/* EC18 8000E018 A4640000 */  sh         $a0, ($v1)
/* EC1C 8000E01C 1000002F */  b          .L8000E0DC
/* EC20 8000E020 24020001 */   addiu     $v0, $zero, 1
/* EC24 8000E024 3C03800B */  lui        $v1, 0x800b
/* EC28 8000E028 2463A690 */  addiu      $v1, $v1, -0x5970
/* EC2C 8000E02C 24040004 */  addiu      $a0, $zero, 4
/* EC30 8000E030 A4620004 */  sh         $v0, 4($v1)
/* EC34 8000E034 24090001 */  addiu      $t1, $zero, 1
/* EC38 8000E038 A4690002 */  sh         $t1, 2($v1)
/* EC3C 8000E03C A4640000 */  sh         $a0, ($v1)
/* EC40 8000E040 10000026 */  b          .L8000E0DC
/* EC44 8000E044 24020001 */   addiu     $v0, $zero, 1
/* EC48 8000E048 3C03800B */  lui        $v1, 0x800b
/* EC4C 8000E04C 2463A690 */  addiu      $v1, $v1, -0x5970
/* EC50 8000E050 24040004 */  addiu      $a0, $zero, 4
/* EC54 8000E054 A4620004 */  sh         $v0, 4($v1)
/* EC58 8000E058 240A0001 */  addiu      $t2, $zero, 1
/* EC5C 8000E05C A46A0002 */  sh         $t2, 2($v1)
/* EC60 8000E060 A4640000 */  sh         $a0, ($v1)
/* EC64 8000E064 1000001D */  b          .L8000E0DC
/* EC68 8000E068 24020001 */   addiu     $v0, $zero, 1
/* EC6C 8000E06C 3C03800B */  lui        $v1, 0x800b
/* EC70 8000E070 2463A690 */  addiu      $v1, $v1, -0x5970
/* EC74 8000E074 94620006 */  lhu        $v0, 6($v1)
/* EC78 8000E078 240C0001 */  addiu      $t4, $zero, 1
/* EC7C 8000E07C 2844001F */  slti       $a0, $v0, 0x1f
/* EC80 8000E080 38840001 */  xori       $a0, $a0, 1
/* EC84 8000E084 244B0001 */  addiu      $t3, $v0, 1
/* EC88 8000E088 10800002 */  beqz       $a0, .L8000E094
/* EC8C 8000E08C A46B0006 */   sh        $t3, 6($v1)
/* EC90 8000E090 A46C0002 */  sh         $t4, 2($v1)
.L8000E094:
/* EC94 8000E094 0C01450E */  jal        func_80051438
/* EC98 8000E098 00000000 */   nop       
/* EC9C 8000E09C 3C03800B */  lui        $v1, 0x800b
/* ECA0 8000E0A0 2463A690 */  addiu      $v1, $v1, -0x5970
/* ECA4 8000E0A4 24040002 */  addiu      $a0, $zero, 2
/* ECA8 8000E0A8 A4640000 */  sh         $a0, ($v1)
/* ECAC 8000E0AC 1000000B */  b          .L8000E0DC
/* ECB0 8000E0B0 24020001 */   addiu     $v0, $zero, 1
.L8000E0B4:
/* ECB4 8000E0B4 3C03800B */  lui        $v1, 0x800b
/* ECB8 8000E0B8 2463A690 */  addiu      $v1, $v1, -0x5970
/* ECBC 8000E0BC 24040004 */  addiu      $a0, $zero, 4
/* ECC0 8000E0C0 240D0001 */  addiu      $t5, $zero, 1
/* ECC4 8000E0C4 A4620004 */  sh         $v0, 4($v1)
/* ECC8 8000E0C8 A46D0002 */  sh         $t5, 2($v1)
/* ECCC 8000E0CC A4640000 */  sh         $a0, ($v1)
/* ECD0 8000E0D0 10000002 */  b          .L8000E0DC
/* ECD4 8000E0D4 24020001 */   addiu     $v0, $zero, 1
/* ECD8 8000E0D8 00001025 */  or         $v0, $zero, $zero
.L8000E0DC:
/* ECDC 8000E0DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* ECE0 8000E0E0 27BD0020 */  addiu      $sp, $sp, 0x20
/* ECE4 8000E0E4 03E00008 */  jr         $ra
/* ECE8 8000E0E8 00000000 */   nop       

glabel func_8000E0EC
/* ECEC 8000E0EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* ECF0 8000E0F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* ECF4 8000E0F4 3C04800B */  lui        $a0, 0x800b
/* ECF8 8000E0F8 2484A698 */  addiu      $a0, $a0, -0x5968
/* ECFC 8000E0FC 27A5001C */  addiu      $a1, $sp, 0x1c
/* ED00 8000E100 0C015AB4 */  jal        func_80056AD0
/* ED04 8000E104 00003025 */   or        $a2, $zero, $zero
/* ED08 8000E108 2401FFFF */  addiu      $at, $zero, -1
/* ED0C 8000E10C 1041003E */  beq        $v0, $at, .L8000E208
/* ED10 8000E110 8FA3001C */   lw        $v1, 0x1c($sp)
/* ED14 8000E114 10600018 */  beqz       $v1, .L8000E178
/* ED18 8000E118 3C02800B */   lui       $v0, 0x800b
/* ED1C 8000E11C 24010002 */  addiu      $at, $zero, 2
/* ED20 8000E120 1061001F */  beq        $v1, $at, .L8000E1A0
/* ED24 8000E124 3C02800B */   lui       $v0, 0x800b
/* ED28 8000E128 24010022 */  addiu      $at, $zero, 0x22
/* ED2C 8000E12C 1061002F */  beq        $v1, $at, .L8000E1EC
/* ED30 8000E130 3C02800B */   lui       $v0, 0x800b
/* ED34 8000E134 24010023 */  addiu      $at, $zero, 0x23
/* ED38 8000E138 10610014 */  beq        $v1, $at, .L8000E18C
/* ED3C 8000E13C 3C02800B */   lui       $v0, 0x800b
/* ED40 8000E140 2401002A */  addiu      $at, $zero, 0x2a
/* ED44 8000E144 1061001B */  beq        $v1, $at, .L8000E1B4
/* ED48 8000E148 3C02800B */   lui       $v0, 0x800b
/* ED4C 8000E14C 2401002F */  addiu      $at, $zero, 0x2f
/* ED50 8000E150 1061001F */  beq        $v1, $at, .L8000E1D0
/* ED54 8000E154 3C02800B */   lui       $v0, 0x800b
/* ED58 8000E158 3C02800B */  lui        $v0, 0x800b
/* ED5C 8000E15C 2442A690 */  addiu      $v0, $v0, -0x5970
/* ED60 8000E160 24040001 */  addiu      $a0, $zero, 1
/* ED64 8000E164 A4440002 */  sh         $a0, 2($v0)
/* ED68 8000E168 A4440000 */  sh         $a0, ($v0)
/* ED6C 8000E16C A4430004 */  sh         $v1, 4($v0)
/* ED70 8000E170 10000026 */  b          .L8000E20C
/* ED74 8000E174 24020001 */   addiu     $v0, $zero, 1
.L8000E178:
/* ED78 8000E178 2442A690 */  addiu      $v0, $v0, -0x5970
/* ED7C 8000E17C 240E0004 */  addiu      $t6, $zero, 4
/* ED80 8000E180 A44E0000 */  sh         $t6, ($v0)
/* ED84 8000E184 10000021 */  b          .L8000E20C
/* ED88 8000E188 24020001 */   addiu     $v0, $zero, 1
.L8000E18C:
/* ED8C 8000E18C 2442A690 */  addiu      $v0, $v0, -0x5970
/* ED90 8000E190 240F0004 */  addiu      $t7, $zero, 4
/* ED94 8000E194 A44F0000 */  sh         $t7, ($v0)
/* ED98 8000E198 1000001C */  b          .L8000E20C
/* ED9C 8000E19C 24020001 */   addiu     $v0, $zero, 1
.L8000E1A0:
/* EDA0 8000E1A0 2442A690 */  addiu      $v0, $v0, -0x5970
/* EDA4 8000E1A4 24180004 */  addiu      $t8, $zero, 4
/* EDA8 8000E1A8 A4580000 */  sh         $t8, ($v0)
/* EDAC 8000E1AC 10000017 */  b          .L8000E20C
/* EDB0 8000E1B0 24020001 */   addiu     $v0, $zero, 1
.L8000E1B4:
/* EDB4 8000E1B4 2442A690 */  addiu      $v0, $v0, -0x5970
/* EDB8 8000E1B8 24190002 */  addiu      $t9, $zero, 2
/* EDBC 8000E1BC A4400004 */  sh         $zero, 4($v0)
/* EDC0 8000E1C0 A4400002 */  sh         $zero, 2($v0)
/* EDC4 8000E1C4 A4590000 */  sh         $t9, ($v0)
/* EDC8 8000E1C8 10000010 */  b          .L8000E20C
/* EDCC 8000E1CC 24020001 */   addiu     $v0, $zero, 1
.L8000E1D0:
/* EDD0 8000E1D0 2442A690 */  addiu      $v0, $v0, -0x5970
/* EDD4 8000E1D4 24080002 */  addiu      $t0, $zero, 2
/* EDD8 8000E1D8 A4400004 */  sh         $zero, 4($v0)
/* EDDC 8000E1DC A4400002 */  sh         $zero, 2($v0)
/* EDE0 8000E1E0 A4480000 */  sh         $t0, ($v0)
/* EDE4 8000E1E4 10000009 */  b          .L8000E20C
/* EDE8 8000E1E8 24020001 */   addiu     $v0, $zero, 1
.L8000E1EC:
/* EDEC 8000E1EC 2442A690 */  addiu      $v0, $v0, -0x5970
/* EDF0 8000E1F0 24040001 */  addiu      $a0, $zero, 1
/* EDF4 8000E1F4 A4430004 */  sh         $v1, 4($v0)
/* EDF8 8000E1F8 A4440002 */  sh         $a0, 2($v0)
/* EDFC 8000E1FC A4440000 */  sh         $a0, ($v0)
/* EE00 8000E200 10000002 */  b          .L8000E20C
/* EE04 8000E204 24020001 */   addiu     $v0, $zero, 1
.L8000E208:
/* EE08 8000E208 00001025 */  or         $v0, $zero, $zero
.L8000E20C:
/* EE0C 8000E20C 8FBF0014 */  lw         $ra, 0x14($sp)
/* EE10 8000E210 27BD0020 */  addiu      $sp, $sp, 0x20
/* EE14 8000E214 03E00008 */  jr         $ra
/* EE18 8000E218 00000000 */   nop       

glabel func_8000E21C
/* EE1C 8000E21C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* EE20 8000E220 AFA40028 */  sw         $a0, 0x28($sp)
/* EE24 8000E224 AFBF0014 */  sw         $ra, 0x14($sp)
/* EE28 8000E228 3C04800B */  lui        $a0, 0x800b
/* EE2C 8000E22C 2484A698 */  addiu      $a0, $a0, -0x5968
/* EE30 8000E230 27A50024 */  addiu      $a1, $sp, 0x24
/* EE34 8000E234 0C015AB4 */  jal        func_80056AD0
/* EE38 8000E238 00003025 */   or        $a2, $zero, $zero
/* EE3C 8000E23C 2401FFFF */  addiu      $at, $zero, -1
/* EE40 8000E240 10410057 */  beq        $v0, $at, .L8000E3A0
/* EE44 8000E244 8FA30024 */   lw        $v1, 0x24($sp)
/* EE48 8000E248 28610003 */  slti       $at, $v1, 3
/* EE4C 8000E24C 14200009 */  bnez       $at, .L8000E274
/* EE50 8000E250 246EFFDE */   addiu     $t6, $v1, -0x22
/* EE54 8000E254 2DC10010 */  sltiu      $at, $t6, 0x10
/* EE58 8000E258 10200048 */  beqz       $at, .L8000E37C
/* EE5C 8000E25C 000E7080 */   sll       $t6, $t6, 2
/* EE60 8000E260 3C018008 */  lui        $at, 0x8008
/* EE64 8000E264 002E0821 */  addu       $at, $at, $t6
/* EE68 8000E268 8C2EB4C8 */  lw         $t6, -0x4b38($at)
/* EE6C 8000E26C 01C00008 */  jr         $t6
/* EE70 8000E270 00000000 */   nop       
.L8000E274:
/* EE74 8000E274 10600005 */  beqz       $v1, .L8000E28C
/* EE78 8000E278 24010002 */   addiu     $at, $zero, 2
/* EE7C 8000E27C 1061002E */  beq        $v1, $at, .L8000E338
/* EE80 8000E280 3C02800B */   lui       $v0, 0x800b
/* EE84 8000E284 1000003D */  b          .L8000E37C
/* EE88 8000E288 00000000 */   nop       
.L8000E28C:
/* EE8C 8000E28C 0C00375A */  jal        func_8000DD68
/* EE90 8000E290 8FA40028 */   lw        $a0, 0x28($sp)
/* EE94 8000E294 10400007 */  beqz       $v0, .L8000E2B4
/* EE98 8000E298 24180005 */   addiu     $t8, $zero, 5
/* EE9C 8000E29C 3C02800B */  lui        $v0, 0x800b
/* EEA0 8000E2A0 2442A690 */  addiu      $v0, $v0, -0x5970
/* EEA4 8000E2A4 240F0008 */  addiu      $t7, $zero, 8
/* EEA8 8000E2A8 A44F0000 */  sh         $t7, ($v0)
/* EEAC 8000E2AC 1000003D */  b          .L8000E3A4
/* EEB0 8000E2B0 24020001 */   addiu     $v0, $zero, 1
.L8000E2B4:
/* EEB4 8000E2B4 3C02800B */  lui        $v0, 0x800b
/* EEB8 8000E2B8 2442A690 */  addiu      $v0, $v0, -0x5970
/* EEBC 8000E2BC 24190004 */  addiu      $t9, $zero, 4
/* EEC0 8000E2C0 A4580002 */  sh         $t8, 2($v0)
/* EEC4 8000E2C4 A4590000 */  sh         $t9, ($v0)
/* EEC8 8000E2C8 10000036 */  b          .L8000E3A4
/* EECC 8000E2CC 24020001 */   addiu     $v0, $zero, 1
/* EED0 8000E2D0 3C02800B */  lui        $v0, 0x800b
/* EED4 8000E2D4 2442A690 */  addiu      $v0, $v0, -0x5970
/* EED8 8000E2D8 24080008 */  addiu      $t0, $zero, 8
/* EEDC 8000E2DC A4480000 */  sh         $t0, ($v0)
/* EEE0 8000E2E0 10000030 */  b          .L8000E3A4
/* EEE4 8000E2E4 24020001 */   addiu     $v0, $zero, 1
/* EEE8 8000E2E8 3C02800B */  lui        $v0, 0x800b
/* EEEC 8000E2EC 2442A690 */  addiu      $v0, $v0, -0x5970
/* EEF0 8000E2F0 24040002 */  addiu      $a0, $zero, 2
/* EEF4 8000E2F4 A4440000 */  sh         $a0, ($v0)
/* EEF8 8000E2F8 1000002A */  b          .L8000E3A4
/* EEFC 8000E2FC 24020001 */   addiu     $v0, $zero, 1
/* EF00 8000E300 3C02800B */  lui        $v0, 0x800b
/* EF04 8000E304 2442A690 */  addiu      $v0, $v0, -0x5970
/* EF08 8000E308 24040002 */  addiu      $a0, $zero, 2
/* EF0C 8000E30C A4440000 */  sh         $a0, ($v0)
/* EF10 8000E310 10000024 */  b          .L8000E3A4
/* EF14 8000E314 24020001 */   addiu     $v0, $zero, 1
/* EF18 8000E318 3C02800B */  lui        $v0, 0x800b
/* EF1C 8000E31C 2442A690 */  addiu      $v0, $v0, -0x5970
/* EF20 8000E320 24040002 */  addiu      $a0, $zero, 2
/* EF24 8000E324 A4430004 */  sh         $v1, 4($v0)
/* EF28 8000E328 A4440002 */  sh         $a0, 2($v0)
/* EF2C 8000E32C A4440000 */  sh         $a0, ($v0)
/* EF30 8000E330 1000001C */  b          .L8000E3A4
/* EF34 8000E334 24020001 */   addiu     $v0, $zero, 1
.L8000E338:
/* EF38 8000E338 2442A690 */  addiu      $v0, $v0, -0x5970
/* EF3C 8000E33C 24090003 */  addiu      $t1, $zero, 3
/* EF40 8000E340 240A0004 */  addiu      $t2, $zero, 4
/* EF44 8000E344 A4430004 */  sh         $v1, 4($v0)
/* EF48 8000E348 A4490002 */  sh         $t1, 2($v0)
/* EF4C 8000E34C A44A0000 */  sh         $t2, ($v0)
/* EF50 8000E350 10000014 */  b          .L8000E3A4
/* EF54 8000E354 24020001 */   addiu     $v0, $zero, 1
/* EF58 8000E358 3C02800B */  lui        $v0, 0x800b
/* EF5C 8000E35C 2442A690 */  addiu      $v0, $v0, -0x5970
/* EF60 8000E360 240B0001 */  addiu      $t3, $zero, 1
/* EF64 8000E364 240C0004 */  addiu      $t4, $zero, 4
/* EF68 8000E368 A4430004 */  sh         $v1, 4($v0)
/* EF6C 8000E36C A44B0002 */  sh         $t3, 2($v0)
/* EF70 8000E370 A44C0000 */  sh         $t4, ($v0)
/* EF74 8000E374 1000000B */  b          .L8000E3A4
/* EF78 8000E378 24020001 */   addiu     $v0, $zero, 1
.L8000E37C:
/* EF7C 8000E37C 3C02800B */  lui        $v0, 0x800b
/* EF80 8000E380 2442A690 */  addiu      $v0, $v0, -0x5970
/* EF84 8000E384 240D0001 */  addiu      $t5, $zero, 1
/* EF88 8000E388 240E0004 */  addiu      $t6, $zero, 4
/* EF8C 8000E38C A4430004 */  sh         $v1, 4($v0)
/* EF90 8000E390 A44D0002 */  sh         $t5, 2($v0)
/* EF94 8000E394 A44E0000 */  sh         $t6, ($v0)
/* EF98 8000E398 10000002 */  b          .L8000E3A4
/* EF9C 8000E39C 24020001 */   addiu     $v0, $zero, 1
.L8000E3A0:
/* EFA0 8000E3A0 00001025 */  or         $v0, $zero, $zero
.L8000E3A4:
/* EFA4 8000E3A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* EFA8 8000E3A8 27BD0028 */  addiu      $sp, $sp, 0x28
/* EFAC 8000E3AC 03E00008 */  jr         $ra
/* EFB0 8000E3B0 00000000 */   nop       

glabel func_8000E3B4
/* EFB4 8000E3B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* EFB8 8000E3B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* EFBC 8000E3BC 3C04800B */  lui        $a0, 0x800b
/* EFC0 8000E3C0 2484A698 */  addiu      $a0, $a0, -0x5968
/* EFC4 8000E3C4 27A5001C */  addiu      $a1, $sp, 0x1c
/* EFC8 8000E3C8 0C015AB4 */  jal        func_80056AD0
/* EFCC 8000E3CC 00003025 */   or        $a2, $zero, $zero
/* EFD0 8000E3D0 2401FFFF */  addiu      $at, $zero, -1
/* EFD4 8000E3D4 1041004C */  beq        $v0, $at, .L8000E508
/* EFD8 8000E3D8 8FA3001C */   lw        $v1, 0x1c($sp)
/* EFDC 8000E3DC 28610003 */  slti       $at, $v1, 3
/* EFE0 8000E3E0 14200009 */  bnez       $at, .L8000E408
/* EFE4 8000E3E4 246EFFDE */   addiu     $t6, $v1, -0x22
/* EFE8 8000E3E8 2DC10010 */  sltiu      $at, $t6, 0x10
/* EFEC 8000E3EC 1020003D */  beqz       $at, .L8000E4E4
/* EFF0 8000E3F0 000E7080 */   sll       $t6, $t6, 2
/* EFF4 8000E3F4 3C018008 */  lui        $at, 0x8008
/* EFF8 8000E3F8 002E0821 */  addu       $at, $at, $t6
/* EFFC 8000E3FC 8C2EB508 */  lw         $t6, -0x4af8($at)
/* F000 8000E400 01C00008 */  jr         $t6
/* F004 8000E404 00000000 */   nop       
.L8000E408:
/* F008 8000E408 10600006 */  beqz       $v1, .L8000E424
/* F00C 8000E40C 3C02800B */   lui       $v0, 0x800b
/* F010 8000E410 24010002 */  addiu      $at, $zero, 2
/* F014 8000E414 10610022 */  beq        $v1, $at, .L8000E4A0
/* F018 8000E418 3C02800B */   lui       $v0, 0x800b
/* F01C 8000E41C 10000031 */  b          .L8000E4E4
/* F020 8000E420 00000000 */   nop       
.L8000E424:
/* F024 8000E424 2442A690 */  addiu      $v0, $v0, -0x5970
/* F028 8000E428 240F000A */  addiu      $t7, $zero, 0xa
/* F02C 8000E42C A44F0000 */  sh         $t7, ($v0)
/* F030 8000E430 10000036 */  b          .L8000E50C
/* F034 8000E434 24020001 */   addiu     $v0, $zero, 1
/* F038 8000E438 3C02800B */  lui        $v0, 0x800b
/* F03C 8000E43C 2442A690 */  addiu      $v0, $v0, -0x5970
/* F040 8000E440 24180008 */  addiu      $t8, $zero, 8
/* F044 8000E444 A4580000 */  sh         $t8, ($v0)
/* F048 8000E448 10000030 */  b          .L8000E50C
/* F04C 8000E44C 24020001 */   addiu     $v0, $zero, 1
/* F050 8000E450 3C02800B */  lui        $v0, 0x800b
/* F054 8000E454 2442A690 */  addiu      $v0, $v0, -0x5970
/* F058 8000E458 24040002 */  addiu      $a0, $zero, 2
/* F05C 8000E45C A4440000 */  sh         $a0, ($v0)
/* F060 8000E460 1000002A */  b          .L8000E50C
/* F064 8000E464 24020001 */   addiu     $v0, $zero, 1
/* F068 8000E468 3C02800B */  lui        $v0, 0x800b
/* F06C 8000E46C 2442A690 */  addiu      $v0, $v0, -0x5970
/* F070 8000E470 24040002 */  addiu      $a0, $zero, 2
/* F074 8000E474 A4440000 */  sh         $a0, ($v0)
/* F078 8000E478 10000024 */  b          .L8000E50C
/* F07C 8000E47C 24020001 */   addiu     $v0, $zero, 1
/* F080 8000E480 3C02800B */  lui        $v0, 0x800b
/* F084 8000E484 2442A690 */  addiu      $v0, $v0, -0x5970
/* F088 8000E488 24040002 */  addiu      $a0, $zero, 2
/* F08C 8000E48C A4430004 */  sh         $v1, 4($v0)
/* F090 8000E490 A4440002 */  sh         $a0, 2($v0)
/* F094 8000E494 A4440000 */  sh         $a0, ($v0)
/* F098 8000E498 1000001C */  b          .L8000E50C
/* F09C 8000E49C 24020001 */   addiu     $v0, $zero, 1
.L8000E4A0:
/* F0A0 8000E4A0 2442A690 */  addiu      $v0, $v0, -0x5970
/* F0A4 8000E4A4 24190003 */  addiu      $t9, $zero, 3
/* F0A8 8000E4A8 24080004 */  addiu      $t0, $zero, 4
/* F0AC 8000E4AC A4430004 */  sh         $v1, 4($v0)
/* F0B0 8000E4B0 A4590002 */  sh         $t9, 2($v0)
/* F0B4 8000E4B4 A4480000 */  sh         $t0, ($v0)
/* F0B8 8000E4B8 10000014 */  b          .L8000E50C
/* F0BC 8000E4BC 24020001 */   addiu     $v0, $zero, 1
/* F0C0 8000E4C0 3C02800B */  lui        $v0, 0x800b
/* F0C4 8000E4C4 2442A690 */  addiu      $v0, $v0, -0x5970
/* F0C8 8000E4C8 24090001 */  addiu      $t1, $zero, 1
/* F0CC 8000E4CC 240A0004 */  addiu      $t2, $zero, 4
/* F0D0 8000E4D0 A4430004 */  sh         $v1, 4($v0)
/* F0D4 8000E4D4 A4490002 */  sh         $t1, 2($v0)
/* F0D8 8000E4D8 A44A0000 */  sh         $t2, ($v0)
/* F0DC 8000E4DC 1000000B */  b          .L8000E50C
/* F0E0 8000E4E0 24020001 */   addiu     $v0, $zero, 1
.L8000E4E4:
/* F0E4 8000E4E4 3C02800B */  lui        $v0, 0x800b
/* F0E8 8000E4E8 2442A690 */  addiu      $v0, $v0, -0x5970
/* F0EC 8000E4EC 240B0001 */  addiu      $t3, $zero, 1
/* F0F0 8000E4F0 240C0004 */  addiu      $t4, $zero, 4
/* F0F4 8000E4F4 A4430004 */  sh         $v1, 4($v0)
/* F0F8 8000E4F8 A44B0002 */  sh         $t3, 2($v0)
/* F0FC 8000E4FC A44C0000 */  sh         $t4, ($v0)
/* F100 8000E500 10000002 */  b          .L8000E50C
/* F104 8000E504 24020001 */   addiu     $v0, $zero, 1
.L8000E508:
/* F108 8000E508 00001025 */  or         $v0, $zero, $zero
.L8000E50C:
/* F10C 8000E50C 8FBF0014 */  lw         $ra, 0x14($sp)
/* F110 8000E510 27BD0020 */  addiu      $sp, $sp, 0x20
/* F114 8000E514 03E00008 */  jr         $ra
/* F118 8000E518 00000000 */   nop       

glabel func_8000E51C
/* F11C 8000E51C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F120 8000E520 AFBF0014 */  sw         $ra, 0x14($sp)
/* F124 8000E524 0C015964 */  jal        func_80056590
/* F128 8000E528 27A40023 */   addiu     $a0, $sp, 0x23
/* F12C 8000E52C 1040001C */  beqz       $v0, .L8000E5A0
/* F130 8000E530 24010008 */   addiu     $at, $zero, 8
/* F134 8000E534 1041001A */  beq        $v0, $at, .L8000E5A0
/* F138 8000E538 24010023 */   addiu     $at, $zero, 0x23
/* F13C 8000E53C 10410018 */  beq        $v0, $at, .L8000E5A0
/* F140 8000E540 2401002A */   addiu     $at, $zero, 0x2a
/* F144 8000E544 1041000A */  beq        $v0, $at, .L8000E570
/* F148 8000E548 2401002F */   addiu     $at, $zero, 0x2f
/* F14C 8000E54C 1041000F */  beq        $v0, $at, .L8000E58C
/* F150 8000E550 3C03800B */   lui       $v1, 0x800b
/* F154 8000E554 3C03800B */  lui        $v1, 0x800b
/* F158 8000E558 3C01800B */  lui        $at, 0x800b
/* F15C 8000E55C A422A694 */  sh         $v0, -0x596c($at)
/* F160 8000E560 2463A690 */  addiu      $v1, $v1, -0x5970
/* F164 8000E564 240E0001 */  addiu      $t6, $zero, 1
/* F168 8000E568 1000000D */  b          .L8000E5A0
/* F16C 8000E56C A46E0002 */   sh        $t6, 2($v1)
.L8000E570:
/* F170 8000E570 3C03800B */  lui        $v1, 0x800b
/* F174 8000E574 2463A690 */  addiu      $v1, $v1, -0x5970
/* F178 8000E578 240F0002 */  addiu      $t7, $zero, 2
/* F17C 8000E57C A4600004 */  sh         $zero, 4($v1)
/* F180 8000E580 A4600002 */  sh         $zero, 2($v1)
/* F184 8000E584 10000006 */  b          .L8000E5A0
/* F188 8000E588 A46F0000 */   sh        $t7, ($v1)
.L8000E58C:
/* F18C 8000E58C 2463A690 */  addiu      $v1, $v1, -0x5970
/* F190 8000E590 24180002 */  addiu      $t8, $zero, 2
/* F194 8000E594 A4600004 */  sh         $zero, 4($v1)
/* F198 8000E598 A4600002 */  sh         $zero, 2($v1)
/* F19C 8000E59C A4780000 */  sh         $t8, ($v1)
.L8000E5A0:
/* F1A0 8000E5A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* F1A4 8000E5A4 27BD0028 */  addiu      $sp, $sp, 0x28
/* F1A8 8000E5A8 00001025 */  or         $v0, $zero, $zero
/* F1AC 8000E5AC 03E00008 */  jr         $ra
/* F1B0 8000E5B0 00000000 */   nop       

glabel func_8000E5B4
/* F1B4 8000E5B4 03E00008 */  jr         $ra
/* F1B8 8000E5B8 00000000 */   nop       

glabel func_8000E5BC
/* F1BC 8000E5BC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F1C0 8000E5C0 AFBF001C */  sw         $ra, 0x1c($sp)
/* F1C4 8000E5C4 AFB00014 */  sw         $s0, 0x14($sp)
/* F1C8 8000E5C8 24030001 */  addiu      $v1, $zero, 1
/* F1CC 8000E5CC 00808025 */  or         $s0, $a0, $zero
/* F1D0 8000E5D0 AFB10018 */  sw         $s1, 0x18($sp)
/* F1D4 8000E5D4 0C0004BE */  jal        func_800012F8
/* F1D8 8000E5D8 AFA30024 */   sw        $v1, 0x24($sp)
/* F1DC 8000E5DC 10400035 */  beqz       $v0, .L8000E6B4
/* F1E0 8000E5E0 8FA30024 */   lw        $v1, 0x24($sp)
/* F1E4 8000E5E4 3C11800B */  lui        $s1, 0x800b
/* F1E8 8000E5E8 2631A690 */  addiu      $s1, $s1, -0x5970
/* F1EC 8000E5EC 962E0000 */  lhu        $t6, ($s1)
.L8000E5F0:
/* F1F0 8000E5F0 2DC1000B */  sltiu      $at, $t6, 0xb
/* F1F4 8000E5F4 1020002D */  beqz       $at, .L8000E6AC
/* F1F8 8000E5F8 000E7080 */   sll       $t6, $t6, 2
/* F1FC 8000E5FC 3C018008 */  lui        $at, 0x8008
/* F200 8000E600 002E0821 */  addu       $at, $at, $t6
/* F204 8000E604 8C2EB548 */  lw         $t6, -0x4ab8($at)
/* F208 8000E608 01C00008 */  jr         $t6
/* F20C 8000E60C 00000000 */   nop       
/* F210 8000E610 10000026 */  b          .L8000E6AC
/* F214 8000E614 00001825 */   or        $v1, $zero, $zero
/* F218 8000E618 0C003947 */  jal        func_8000E51C
/* F21C 8000E61C 00000000 */   nop       
/* F220 8000E620 10000022 */  b          .L8000E6AC
/* F224 8000E624 00401825 */   or        $v1, $v0, $zero
/* F228 8000E628 0C00376C */  jal        func_8000DDB0
/* F22C 8000E62C 00000000 */   nop       
/* F230 8000E630 1000001E */  b          .L8000E6AC
/* F234 8000E634 00401825 */   or        $v1, $v0, $zero
/* F238 8000E638 0C0037B4 */  jal        func_8000DED0
/* F23C 8000E63C 00000000 */   nop       
/* F240 8000E640 1000001A */  b          .L8000E6AC
/* F244 8000E644 00401825 */   or        $v1, $v0, $zero
/* F248 8000E648 0C003779 */  jal        func_8000DDE4
/* F24C 8000E64C 00000000 */   nop       
/* F250 8000E650 10000016 */  b          .L8000E6AC
/* F254 8000E654 00401825 */   or        $v1, $v0, $zero
/* F258 8000E658 0C00383B */  jal        func_8000E0EC
/* F25C 8000E65C 00000000 */   nop       
/* F260 8000E660 10000012 */  b          .L8000E6AC
/* F264 8000E664 00401825 */   or        $v1, $v0, $zero
/* F268 8000E668 0C003786 */  jal        func_8000DE18
/* F26C 8000E66C 02002025 */   or        $a0, $s0, $zero
/* F270 8000E670 1000000E */  b          .L8000E6AC
/* F274 8000E674 00401825 */   or        $v1, $v0, $zero
/* F278 8000E678 0C003887 */  jal        func_8000E21C
/* F27C 8000E67C 02002025 */   or        $a0, $s0, $zero
/* F280 8000E680 1000000A */  b          .L8000E6AC
/* F284 8000E684 00401825 */   or        $v1, $v0, $zero
/* F288 8000E688 0C00379C */  jal        func_8000DE70
/* F28C 8000E68C 00000000 */   nop       
/* F290 8000E690 10000006 */  b          .L8000E6AC
/* F294 8000E694 00401825 */   or        $v1, $v0, $zero
/* F298 8000E698 0C0038ED */  jal        func_8000E3B4
/* F29C 8000E69C 00000000 */   nop       
/* F2A0 8000E6A0 10000002 */  b          .L8000E6AC
/* F2A4 8000E6A4 00401825 */   or        $v1, $v0, $zero
/* F2A8 8000E6A8 00001825 */  or         $v1, $zero, $zero
.L8000E6AC:
/* F2AC 8000E6AC 5460FFD0 */  bnel       $v1, $zero, .L8000E5F0
/* F2B0 8000E6B0 962E0000 */   lhu       $t6, ($s1)
.L8000E6B4:
/* F2B4 8000E6B4 3C11800B */  lui        $s1, 0x800b
/* F2B8 8000E6B8 2631A690 */  addiu      $s1, $s1, -0x5970
/* F2BC 8000E6BC 962F0000 */  lhu        $t7, ($s1)
/* F2C0 8000E6C0 96390002 */  lhu        $t9, 2($s1)
/* F2C4 8000E6C4 962A0004 */  lhu        $t2, 4($s1)
/* F2C8 8000E6C8 8FBF001C */  lw         $ra, 0x1c($sp)
/* F2CC 8000E6CC 000FC400 */  sll        $t8, $t7, 0x10
/* F2D0 8000E6D0 00194200 */  sll        $t0, $t9, 8
/* F2D4 8000E6D4 03084825 */  or         $t1, $t8, $t0
/* F2D8 8000E6D8 8FB10018 */  lw         $s1, 0x18($sp)
/* F2DC 8000E6DC 8FB00014 */  lw         $s0, 0x14($sp)
/* F2E0 8000E6E0 27BD0028 */  addiu      $sp, $sp, 0x28
/* F2E4 8000E6E4 03E00008 */  jr         $ra
/* F2E8 8000E6E8 012A1025 */   or        $v0, $t1, $t2

glabel func_8000E6EC
/* F2EC 8000E6EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F2F0 8000E6F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* F2F4 8000E6F4 0C0004BE */  jal        func_800012F8
/* F2F8 8000E6F8 00000000 */   nop       
/* F2FC 8000E6FC 10400006 */  beqz       $v0, .L8000E718
/* F300 8000E700 00401825 */   or        $v1, $v0, $zero
/* F304 8000E704 3C02800B */  lui        $v0, 0x800b
/* F308 8000E708 2442A690 */  addiu      $v0, $v0, -0x5970
/* F30C 8000E70C 240E0002 */  addiu      $t6, $zero, 2
/* F310 8000E710 10000004 */  b          .L8000E724
/* F314 8000E714 A44E0000 */   sh        $t6, ($v0)
.L8000E718:
/* F318 8000E718 3C02800B */  lui        $v0, 0x800b
/* F31C 8000E71C 2442A690 */  addiu      $v0, $v0, -0x5970
/* F320 8000E720 A4400000 */  sh         $zero, ($v0)
.L8000E724:
/* F324 8000E724 3C04800B */  lui        $a0, 0x800b
/* F328 8000E728 3C05800B */  lui        $a1, 0x800b
/* F32C 8000E72C A4400004 */  sh         $zero, 4($v0)
/* F330 8000E730 A4400002 */  sh         $zero, 2($v0)
/* F334 8000E734 A4400006 */  sh         $zero, 6($v0)
/* F338 8000E738 24A5A6B0 */  addiu      $a1, $a1, -0x5950
/* F33C 8000E73C 2484A698 */  addiu      $a0, $a0, -0x5968
/* F340 8000E740 24060001 */  addiu      $a2, $zero, 1
/* F344 8000E744 0C0178E8 */  jal        func_8005E3A0
/* F348 8000E748 AFA3001C */   sw        $v1, 0x1c($sp)
/* F34C 8000E74C 8FBF0014 */  lw         $ra, 0x14($sp)
/* F350 8000E750 8FA2001C */  lw         $v0, 0x1c($sp)
/* F354 8000E754 27BD0020 */  addiu      $sp, $sp, 0x20
/* F358 8000E758 03E00008 */  jr         $ra
/* F35C 8000E75C 00000000 */   nop       

glabel func_8000E760
/* F360 8000E760 3C02800B */  lui        $v0, 0x800b
/* F364 8000E764 9442A690 */  lhu        $v0, -0x5970($v0)
/* F368 8000E768 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F36C 8000E76C 24010003 */  addiu      $at, $zero, 3
/* F370 8000E770 1441000A */  bne        $v0, $at, .L8000E79C
/* F374 8000E774 AFBF0014 */   sw        $ra, 0x14($sp)
/* F378 8000E778 3C04800B */  lui        $a0, 0x800b
/* F37C 8000E77C 2484A698 */  addiu      $a0, $a0, -0x5968
/* F380 8000E780 00002825 */  or         $a1, $zero, $zero
/* F384 8000E784 0C015AB4 */  jal        func_80056AD0
/* F388 8000E788 24060001 */   addiu     $a2, $zero, 1
/* F38C 8000E78C 240E0002 */  addiu      $t6, $zero, 2
/* F390 8000E790 3C01800B */  lui        $at, 0x800b
/* F394 8000E794 1000000F */  b          .L8000E7D4
/* F398 8000E798 A42EA690 */   sh        $t6, -0x5970($at)
.L8000E79C:
/* F39C 8000E79C 24010005 */  addiu      $at, $zero, 5
/* F3A0 8000E7A0 10410005 */  beq        $v0, $at, .L8000E7B8
/* F3A4 8000E7A4 3C04800B */   lui       $a0, 0x800b
/* F3A8 8000E7A8 24010007 */  addiu      $at, $zero, 7
/* F3AC 8000E7AC 10410002 */  beq        $v0, $at, .L8000E7B8
/* F3B0 8000E7B0 24010009 */   addiu     $at, $zero, 9
/* F3B4 8000E7B4 14410007 */  bne        $v0, $at, .L8000E7D4
.L8000E7B8:
/* F3B8 8000E7B8 2484A698 */   addiu     $a0, $a0, -0x5968
/* F3BC 8000E7BC 00002825 */  or         $a1, $zero, $zero
/* F3C0 8000E7C0 0C015AB4 */  jal        func_80056AD0
/* F3C4 8000E7C4 24060001 */   addiu     $a2, $zero, 1
/* F3C8 8000E7C8 240F0004 */  addiu      $t7, $zero, 4
/* F3CC 8000E7CC 3C01800B */  lui        $at, 0x800b
/* F3D0 8000E7D0 A42FA690 */  sh         $t7, -0x5970($at)
.L8000E7D4:
/* F3D4 8000E7D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* F3D8 8000E7D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* F3DC 8000E7DC 03E00008 */  jr         $ra
/* F3E0 8000E7E0 00000000 */   nop       

glabel func_8000E7E4
/* F3E4 8000E7E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F3E8 8000E7E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* F3EC 8000E7EC 0C0004BE */  jal        func_800012F8
/* F3F0 8000E7F0 00000000 */   nop       
/* F3F4 8000E7F4 10400006 */  beqz       $v0, .L8000E810
/* F3F8 8000E7F8 240E0002 */   addiu     $t6, $zero, 2
/* F3FC 8000E7FC 3C02800B */  lui        $v0, 0x800b
/* F400 8000E800 2442A690 */  addiu      $v0, $v0, -0x5970
/* F404 8000E804 A44E0000 */  sh         $t6, ($v0)
/* F408 8000E808 A4400004 */  sh         $zero, 4($v0)
/* F40C 8000E80C A4400002 */  sh         $zero, 2($v0)
.L8000E810:
/* F410 8000E810 8FBF0014 */  lw         $ra, 0x14($sp)
/* F414 8000E814 27BD0018 */  addiu      $sp, $sp, 0x18
/* F418 8000E818 03E00008 */  jr         $ra
/* F41C 8000E81C 00000000 */   nop       

glabel func_8000E820
/* F420 8000E820 AFA50004 */  sw         $a1, 4($sp)
/* F424 8000E824 AFA60008 */  sw         $a2, 8($sp)
/* F428 8000E828 AFA7000C */  sw         $a3, 0xc($sp)
/* F42C 8000E82C A0850000 */  sb         $a1, ($a0)
/* F430 8000E830 A0860001 */  sb         $a2, 1($a0)
/* F434 8000E834 A0870002 */  sb         $a3, 2($a0)
/* F438 8000E838 03E00008 */  jr         $ra
/* F43C 8000E83C 00801025 */   or        $v0, $a0, $zero

glabel func_8000E840
/* F440 8000E840 AFA50004 */  sw         $a1, 4($sp)
/* F444 8000E844 AFA60008 */  sw         $a2, 8($sp)
/* F448 8000E848 AFA7000C */  sw         $a3, 0xc($sp)
/* F44C 8000E84C A0850000 */  sb         $a1, ($a0)
/* F450 8000E850 A0860001 */  sb         $a2, 1($a0)
/* F454 8000E854 A0870002 */  sb         $a3, 2($a0)
/* F458 8000E858 93AE0013 */  lbu        $t6, 0x13($sp)
/* F45C 8000E85C 00801025 */  or         $v0, $a0, $zero
/* F460 8000E860 03E00008 */  jr         $ra
/* F464 8000E864 A08E0003 */   sb        $t6, 3($a0)

glabel func_8000E868
/* F468 8000E868 44856000 */  mtc1       $a1, $f12
/* F46C 8000E86C 44867000 */  mtc1       $a2, $f14
/* F470 8000E870 AFA7000C */  sw         $a3, 0xc($sp)
/* F474 8000E874 E48C0000 */  swc1       $f12, ($a0)
/* F478 8000E878 E48E0004 */  swc1       $f14, 4($a0)
/* F47C 8000E87C C7A4000C */  lwc1       $f4, 0xc($sp)
/* F480 8000E880 00801025 */  or         $v0, $a0, $zero
/* F484 8000E884 03E00008 */  jr         $ra
/* F488 8000E888 E4840008 */   swc1      $f4, 8($a0)

glabel func_8000E88C
/* F48C 8000E88C 44856000 */  mtc1       $a1, $f12
/* F490 8000E890 44867000 */  mtc1       $a2, $f14
/* F494 8000E894 AFA7000C */  sw         $a3, 0xc($sp)
/* F498 8000E898 E48C0000 */  swc1       $f12, ($a0)
/* F49C 8000E89C E48E0004 */  swc1       $f14, 4($a0)
/* F4A0 8000E8A0 C7A4000C */  lwc1       $f4, 0xc($sp)
/* F4A4 8000E8A4 00801025 */  or         $v0, $a0, $zero
/* F4A8 8000E8A8 03E00008 */  jr         $ra
/* F4AC 8000E8AC E4840008 */   swc1      $f4, 8($a0)

glabel func_8000E8B0
/* F4B0 8000E8B0 C4840000 */  lwc1       $f4, ($a0)
/* F4B4 8000E8B4 C4A60000 */  lwc1       $f6, ($a1)
/* F4B8 8000E8B8 C48A0004 */  lwc1       $f10, 4($a0)
/* F4BC 8000E8BC 00801025 */  or         $v0, $a0, $zero
/* F4C0 8000E8C0 46062200 */  add.s      $f8, $f4, $f6
/* F4C4 8000E8C4 C4840008 */  lwc1       $f4, 8($a0)
/* F4C8 8000E8C8 E4880000 */  swc1       $f8, ($a0)
/* F4CC 8000E8CC C4B00004 */  lwc1       $f16, 4($a1)
/* F4D0 8000E8D0 46105480 */  add.s      $f18, $f10, $f16
/* F4D4 8000E8D4 E4920004 */  swc1       $f18, 4($a0)
/* F4D8 8000E8D8 C4A60008 */  lwc1       $f6, 8($a1)
/* F4DC 8000E8DC 46062200 */  add.s      $f8, $f4, $f6
/* F4E0 8000E8E0 03E00008 */  jr         $ra
/* F4E4 8000E8E4 E4880008 */   swc1      $f8, 8($a0)

glabel func_8000E8E8
/* F4E8 8000E8E8 C4A40000 */  lwc1       $f4, ($a1)
/* F4EC 8000E8EC C4C60000 */  lwc1       $f6, ($a2)
/* F4F0 8000E8F0 00801025 */  or         $v0, $a0, $zero
/* F4F4 8000E8F4 46062200 */  add.s      $f8, $f4, $f6
/* F4F8 8000E8F8 E4880000 */  swc1       $f8, ($a0)
/* F4FC 8000E8FC C4D00004 */  lwc1       $f16, 4($a2)
/* F500 8000E900 C4AA0004 */  lwc1       $f10, 4($a1)
/* F504 8000E904 46105480 */  add.s      $f18, $f10, $f16
/* F508 8000E908 E4920004 */  swc1       $f18, 4($a0)
/* F50C 8000E90C C4C60008 */  lwc1       $f6, 8($a2)
/* F510 8000E910 C4A40008 */  lwc1       $f4, 8($a1)
/* F514 8000E914 46062200 */  add.s      $f8, $f4, $f6
/* F518 8000E918 03E00008 */  jr         $ra
/* F51C 8000E91C E4880008 */   swc1      $f8, 8($a0)

glabel func_8000E920
/* F520 8000E920 C4840000 */  lwc1       $f4, ($a0)
/* F524 8000E924 C4A60000 */  lwc1       $f6, ($a1)
/* F528 8000E928 C48A0004 */  lwc1       $f10, 4($a0)
/* F52C 8000E92C 00801025 */  or         $v0, $a0, $zero
/* F530 8000E930 46062201 */  sub.s      $f8, $f4, $f6
/* F534 8000E934 C4840008 */  lwc1       $f4, 8($a0)
/* F538 8000E938 E4880000 */  swc1       $f8, ($a0)
/* F53C 8000E93C C4B00004 */  lwc1       $f16, 4($a1)
/* F540 8000E940 46105481 */  sub.s      $f18, $f10, $f16
/* F544 8000E944 E4920004 */  swc1       $f18, 4($a0)
/* F548 8000E948 C4A60008 */  lwc1       $f6, 8($a1)
/* F54C 8000E94C 46062201 */  sub.s      $f8, $f4, $f6
/* F550 8000E950 03E00008 */  jr         $ra
/* F554 8000E954 E4880008 */   swc1      $f8, 8($a0)

glabel func_8000E958
/* F558 8000E958 C4A40000 */  lwc1       $f4, ($a1)
/* F55C 8000E95C C4C60000 */  lwc1       $f6, ($a2)
/* F560 8000E960 00801025 */  or         $v0, $a0, $zero
/* F564 8000E964 46062201 */  sub.s      $f8, $f4, $f6
/* F568 8000E968 E4880000 */  swc1       $f8, ($a0)
/* F56C 8000E96C C4D00004 */  lwc1       $f16, 4($a2)
/* F570 8000E970 C4AA0004 */  lwc1       $f10, 4($a1)
/* F574 8000E974 46105481 */  sub.s      $f18, $f10, $f16
/* F578 8000E978 E4920004 */  swc1       $f18, 4($a0)
/* F57C 8000E97C C4C60008 */  lwc1       $f6, 8($a2)
/* F580 8000E980 C4A40008 */  lwc1       $f4, 8($a1)
/* F584 8000E984 46062201 */  sub.s      $f8, $f4, $f6
/* F588 8000E988 03E00008 */  jr         $ra
/* F58C 8000E98C E4880008 */   swc1      $f8, 8($a0)

glabel func_8000E990
/* F590 8000E990 84AE0000 */  lh         $t6, ($a1)
/* F594 8000E994 00801025 */  or         $v0, $a0, $zero
/* F598 8000E998 448E2000 */  mtc1       $t6, $f4
/* F59C 8000E99C 00000000 */  nop        
/* F5A0 8000E9A0 468021A0 */  cvt.s.w    $f6, $f4
/* F5A4 8000E9A4 E4860000 */  swc1       $f6, ($a0)
/* F5A8 8000E9A8 84AF0002 */  lh         $t7, 2($a1)
/* F5AC 8000E9AC 448F4000 */  mtc1       $t7, $f8
/* F5B0 8000E9B0 00000000 */  nop        
/* F5B4 8000E9B4 468042A0 */  cvt.s.w    $f10, $f8
/* F5B8 8000E9B8 E48A0004 */  swc1       $f10, 4($a0)
/* F5BC 8000E9BC 84B80004 */  lh         $t8, 4($a1)
/* F5C0 8000E9C0 44988000 */  mtc1       $t8, $f16
/* F5C4 8000E9C4 00000000 */  nop        
/* F5C8 8000E9C8 468084A0 */  cvt.s.w    $f18, $f16
/* F5CC 8000E9CC 03E00008 */  jr         $ra
/* F5D0 8000E9D0 E4920008 */   swc1      $f18, 8($a0)

glabel func_8000E9D4
/* F5D4 8000E9D4 C4C00004 */  lwc1       $f0, 4($a2)
/* F5D8 8000E9D8 C4C20008 */  lwc1       $f2, 8($a2)
/* F5DC 8000E9DC C4A40004 */  lwc1       $f4, 4($a1)
/* F5E0 8000E9E0 C4E80008 */  lwc1       $f8, 8($a3)
/* F5E4 8000E9E4 C4F20004 */  lwc1       $f18, 4($a3)
/* F5E8 8000E9E8 46040181 */  sub.s      $f6, $f0, $f4
/* F5EC 8000E9EC 00801025 */  or         $v0, $a0, $zero
/* F5F0 8000E9F0 46024281 */  sub.s      $f10, $f8, $f2
/* F5F4 8000E9F4 C4A80008 */  lwc1       $f8, 8($a1)
/* F5F8 8000E9F8 46009101 */  sub.s      $f4, $f18, $f0
/* F5FC 8000E9FC 460A3402 */  mul.s      $f16, $f6, $f10
/* F600 8000EA00 46081181 */  sub.s      $f6, $f2, $f8
/* F604 8000EA04 46062282 */  mul.s      $f10, $f4, $f6
/* F608 8000EA08 460A8481 */  sub.s      $f18, $f16, $f10
/* F60C 8000EA0C E4920000 */  swc1       $f18, ($a0)
/* F610 8000EA10 C4E60000 */  lwc1       $f6, ($a3)
/* F614 8000EA14 C4CC0000 */  lwc1       $f12, ($a2)
/* F618 8000EA18 C4A80008 */  lwc1       $f8, 8($a1)
/* F61C 8000EA1C C4C20008 */  lwc1       $f2, 8($a2)
/* F620 8000EA20 460C3401 */  sub.s      $f16, $f6, $f12
/* F624 8000EA24 C4A60000 */  lwc1       $f6, ($a1)
/* F628 8000EA28 C4F20008 */  lwc1       $f18, 8($a3)
/* F62C 8000EA2C 46081101 */  sub.s      $f4, $f2, $f8
/* F630 8000EA30 46029201 */  sub.s      $f8, $f18, $f2
/* F634 8000EA34 46102282 */  mul.s      $f10, $f4, $f16
/* F638 8000EA38 46066101 */  sub.s      $f4, $f12, $f6
/* F63C 8000EA3C 46044402 */  mul.s      $f16, $f8, $f4
/* F640 8000EA40 46105481 */  sub.s      $f18, $f10, $f16
/* F644 8000EA44 E4920004 */  swc1       $f18, 4($a0)
/* F648 8000EA48 C4E40004 */  lwc1       $f4, 4($a3)
/* F64C 8000EA4C C4A60000 */  lwc1       $f6, ($a1)
/* F650 8000EA50 C4C00004 */  lwc1       $f0, 4($a2)
/* F654 8000EA54 C4CC0000 */  lwc1       $f12, ($a2)
/* F658 8000EA58 C4F20000 */  lwc1       $f18, ($a3)
/* F65C 8000EA5C 46002281 */  sub.s      $f10, $f4, $f0
/* F660 8000EA60 C4A40004 */  lwc1       $f4, 4($a1)
/* F664 8000EA64 46066201 */  sub.s      $f8, $f12, $f6
/* F668 8000EA68 460C9181 */  sub.s      $f6, $f18, $f12
/* F66C 8000EA6C 460A4402 */  mul.s      $f16, $f8, $f10
/* F670 8000EA70 46040201 */  sub.s      $f8, $f0, $f4
/* F674 8000EA74 46083282 */  mul.s      $f10, $f6, $f8
/* F678 8000EA78 460A8481 */  sub.s      $f18, $f16, $f10
/* F67C 8000EA7C 03E00008 */  jr         $ra
/* F680 8000EA80 E4920008 */   swc1      $f18, 8($a0)

glabel func_8000EA84
/* F684 8000EA84 C4A40004 */  lwc1       $f4, 4($a1)
/* F688 8000EA88 C4C60008 */  lwc1       $f6, 8($a2)
/* F68C 8000EA8C C4CA0004 */  lwc1       $f10, 4($a2)
/* F690 8000EA90 C4B00008 */  lwc1       $f16, 8($a1)
/* F694 8000EA94 46062202 */  mul.s      $f8, $f4, $f6
/* F698 8000EA98 00801025 */  or         $v0, $a0, $zero
/* F69C 8000EA9C 46105482 */  mul.s      $f18, $f10, $f16
/* F6A0 8000EAA0 46124101 */  sub.s      $f4, $f8, $f18
/* F6A4 8000EAA4 E4840000 */  swc1       $f4, ($a0)
/* F6A8 8000EAA8 C4CA0000 */  lwc1       $f10, ($a2)
/* F6AC 8000EAAC C4A60008 */  lwc1       $f6, 8($a1)
/* F6B0 8000EAB0 C4B20000 */  lwc1       $f18, ($a1)
/* F6B4 8000EAB4 C4C80008 */  lwc1       $f8, 8($a2)
/* F6B8 8000EAB8 460A3402 */  mul.s      $f16, $f6, $f10
/* F6BC 8000EABC 00000000 */  nop        
/* F6C0 8000EAC0 46124102 */  mul.s      $f4, $f8, $f18
/* F6C4 8000EAC4 46048181 */  sub.s      $f6, $f16, $f4
/* F6C8 8000EAC8 E4860004 */  swc1       $f6, 4($a0)
/* F6CC 8000EACC C4C80004 */  lwc1       $f8, 4($a2)
/* F6D0 8000EAD0 C4AA0000 */  lwc1       $f10, ($a1)
/* F6D4 8000EAD4 C4A40004 */  lwc1       $f4, 4($a1)
/* F6D8 8000EAD8 C4D00000 */  lwc1       $f16, ($a2)
/* F6DC 8000EADC 46085482 */  mul.s      $f18, $f10, $f8
/* F6E0 8000EAE0 00000000 */  nop        
/* F6E4 8000EAE4 46048182 */  mul.s      $f6, $f16, $f4
/* F6E8 8000EAE8 46069281 */  sub.s      $f10, $f18, $f6
/* F6EC 8000EAEC 03E00008 */  jr         $ra
/* F6F0 8000EAF0 E48A0008 */   swc1      $f10, 8($a0)

glabel func_8000EAF4
/* F6F4 8000EAF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F6F8 8000EAF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* F6FC 8000EAFC C4800000 */  lwc1       $f0, ($a0)
/* F700 8000EB00 C4820004 */  lwc1       $f2, 4($a0)
/* F704 8000EB04 C48E0008 */  lwc1       $f14, 8($a0)
/* F708 8000EB08 46000102 */  mul.s      $f4, $f0, $f0
/* F70C 8000EB0C AFA40018 */  sw         $a0, 0x18($sp)
/* F710 8000EB10 46021182 */  mul.s      $f6, $f2, $f2
/* F714 8000EB14 46062200 */  add.s      $f8, $f4, $f6
/* F718 8000EB18 460E7282 */  mul.s      $f10, $f14, $f14
/* F71C 8000EB1C 0C0173AC */  jal        func_8005CEB0
/* F720 8000EB20 460A4300 */   add.s     $f12, $f8, $f10
/* F724 8000EB24 3C013F80 */  lui        $at, 0x3f80
/* F728 8000EB28 44818000 */  mtc1       $at, $f16
/* F72C 8000EB2C 8FA20018 */  lw         $v0, 0x18($sp)
/* F730 8000EB30 46008083 */  div.s      $f2, $f16, $f0
/* F734 8000EB34 C4520000 */  lwc1       $f18, ($v0)
/* F738 8000EB38 C4460004 */  lwc1       $f6, 4($v0)
/* F73C 8000EB3C C44A0008 */  lwc1       $f10, 8($v0)
/* F740 8000EB40 46029102 */  mul.s      $f4, $f18, $f2
/* F744 8000EB44 00000000 */  nop        
/* F748 8000EB48 46023202 */  mul.s      $f8, $f6, $f2
/* F74C 8000EB4C 00000000 */  nop        
/* F750 8000EB50 46025402 */  mul.s      $f16, $f10, $f2
/* F754 8000EB54 E4440000 */  swc1       $f4, ($v0)
/* F758 8000EB58 E4480004 */  swc1       $f8, 4($v0)
/* F75C 8000EB5C E4500008 */  swc1       $f16, 8($v0)
/* F760 8000EB60 8FBF0014 */  lw         $ra, 0x14($sp)
/* F764 8000EB64 27BD0018 */  addiu      $sp, $sp, 0x18
/* F768 8000EB68 03E00008 */  jr         $ra
/* F76C 8000EB6C 00000000 */   nop       

glabel func_8000EB70
/* F770 8000EB70 AFA50004 */  sw         $a1, 4($sp)
/* F774 8000EB74 AFA60008 */  sw         $a2, 8($sp)
/* F778 8000EB78 AFA7000C */  sw         $a3, 0xc($sp)
/* F77C 8000EB7C 00073C00 */  sll        $a3, $a3, 0x10
/* F780 8000EB80 00063400 */  sll        $a2, $a2, 0x10
/* F784 8000EB84 00052C00 */  sll        $a1, $a1, 0x10
/* F788 8000EB88 00052C03 */  sra        $a1, $a1, 0x10
/* F78C 8000EB8C 00063403 */  sra        $a2, $a2, 0x10
/* F790 8000EB90 00073C03 */  sra        $a3, $a3, 0x10
/* F794 8000EB94 A4850000 */  sh         $a1, ($a0)
/* F798 8000EB98 A4860002 */  sh         $a2, 2($a0)
/* F79C 8000EB9C A4870004 */  sh         $a3, 4($a0)
/* F7A0 8000EBA0 03E00008 */  jr         $ra
/* F7A4 8000EBA4 00801025 */   or        $v0, $a0, $zero

glabel func_8000EBA8
/* F7A8 8000EBA8 848E0000 */  lh         $t6, ($a0)
/* F7AC 8000EBAC 84AF0000 */  lh         $t7, ($a1)
/* F7B0 8000EBB0 84990002 */  lh         $t9, 2($a0)
/* F7B4 8000EBB4 848A0004 */  lh         $t2, 4($a0)
/* F7B8 8000EBB8 01CFC021 */  addu       $t8, $t6, $t7
/* F7BC 8000EBBC A4980000 */  sh         $t8, ($a0)
/* F7C0 8000EBC0 84A80002 */  lh         $t0, 2($a1)
/* F7C4 8000EBC4 00801025 */  or         $v0, $a0, $zero
/* F7C8 8000EBC8 03284821 */  addu       $t1, $t9, $t0
/* F7CC 8000EBCC A4890002 */  sh         $t1, 2($a0)
/* F7D0 8000EBD0 84AB0004 */  lh         $t3, 4($a1)
/* F7D4 8000EBD4 014B6021 */  addu       $t4, $t2, $t3
/* F7D8 8000EBD8 03E00008 */  jr         $ra
/* F7DC 8000EBDC A48C0004 */   sh        $t4, 4($a0)

glabel func_8000EBE0
/* F7E0 8000EBE0 84AE0000 */  lh         $t6, ($a1)
/* F7E4 8000EBE4 84CF0000 */  lh         $t7, ($a2)
/* F7E8 8000EBE8 00801025 */  or         $v0, $a0, $zero
/* F7EC 8000EBEC 01CFC021 */  addu       $t8, $t6, $t7
/* F7F0 8000EBF0 A4980000 */  sh         $t8, ($a0)
/* F7F4 8000EBF4 84C80002 */  lh         $t0, 2($a2)
/* F7F8 8000EBF8 84B90002 */  lh         $t9, 2($a1)
/* F7FC 8000EBFC 03284821 */  addu       $t1, $t9, $t0
/* F800 8000EC00 A4890002 */  sh         $t1, 2($a0)
/* F804 8000EC04 84CB0004 */  lh         $t3, 4($a2)
/* F808 8000EC08 84AA0004 */  lh         $t2, 4($a1)
/* F80C 8000EC0C 014B6021 */  addu       $t4, $t2, $t3
/* F810 8000EC10 03E00008 */  jr         $ra
/* F814 8000EC14 A48C0004 */   sh        $t4, 4($a0)

glabel func_8000EC18
/* F818 8000EC18 848E0000 */  lh         $t6, ($a0)
/* F81C 8000EC1C 84AF0000 */  lh         $t7, ($a1)
/* F820 8000EC20 84990002 */  lh         $t9, 2($a0)
/* F824 8000EC24 848A0004 */  lh         $t2, 4($a0)
/* F828 8000EC28 01CFC023 */  subu       $t8, $t6, $t7
/* F82C 8000EC2C A4980000 */  sh         $t8, ($a0)
/* F830 8000EC30 84A80002 */  lh         $t0, 2($a1)
/* F834 8000EC34 00801025 */  or         $v0, $a0, $zero
/* F838 8000EC38 03284823 */  subu       $t1, $t9, $t0
/* F83C 8000EC3C A4890002 */  sh         $t1, 2($a0)
/* F840 8000EC40 84AB0004 */  lh         $t3, 4($a1)
/* F844 8000EC44 014B6023 */  subu       $t4, $t2, $t3
/* F848 8000EC48 03E00008 */  jr         $ra
/* F84C 8000EC4C A48C0004 */   sh        $t4, 4($a0)

glabel func_8000EC50
/* F850 8000EC50 84AE0000 */  lh         $t6, ($a1)
/* F854 8000EC54 84CF0000 */  lh         $t7, ($a2)
/* F858 8000EC58 00801025 */  or         $v0, $a0, $zero
/* F85C 8000EC5C 01CFC023 */  subu       $t8, $t6, $t7
/* F860 8000EC60 A4980000 */  sh         $t8, ($a0)
/* F864 8000EC64 84C80002 */  lh         $t0, 2($a2)
/* F868 8000EC68 84B90002 */  lh         $t9, 2($a1)
/* F86C 8000EC6C 03284823 */  subu       $t1, $t9, $t0
/* F870 8000EC70 A4890002 */  sh         $t1, 2($a0)
/* F874 8000EC74 84CB0004 */  lh         $t3, 4($a2)
/* F878 8000EC78 84AA0004 */  lh         $t2, 4($a1)
/* F87C 8000EC7C 014B6023 */  subu       $t4, $t2, $t3
/* F880 8000EC80 03E00008 */  jr         $ra
/* F884 8000EC84 A48C0004 */   sh        $t4, 4($a0)

glabel func_8000EC88
/* F888 8000EC88 44807000 */  mtc1       $zero, $f14
/* F88C 8000EC8C C4A00000 */  lwc1       $f0, ($a1)
/* F890 8000EC90 3C01BF00 */  lui        $at, 0xbf00
/* F894 8000EC94 4600703C */  c.lt.s     $f14, $f0
/* F898 8000EC98 00000000 */  nop        
/* F89C 8000EC9C 45020008 */  bc1fl      .L8000ECC0
/* F8A0 8000ECA0 44819000 */   mtc1      $at, $f18
/* F8A4 8000ECA4 3C013F00 */  lui        $at, 0x3f00
/* F8A8 8000ECA8 44818000 */  mtc1       $at, $f16
/* F8AC 8000ECAC 3C01BF00 */  lui        $at, 0xbf00
/* F8B0 8000ECB0 44819000 */  mtc1       $at, $f18
/* F8B4 8000ECB4 10000005 */  b          .L8000ECCC
/* F8B8 8000ECB8 46008086 */   mov.s     $f2, $f16
/* F8BC 8000ECBC 44819000 */  mtc1       $at, $f18
.L8000ECC0:
/* F8C0 8000ECC0 3C013F00 */  lui        $at, 0x3f00
/* F8C4 8000ECC4 44818000 */  mtc1       $at, $f16
/* F8C8 8000ECC8 46009086 */  mov.s      $f2, $f18
.L8000ECCC:
/* F8CC 8000ECCC 46001100 */  add.s      $f4, $f2, $f0
/* F8D0 8000ECD0 4600218D */  trunc.w.s  $f6, $f4
/* F8D4 8000ECD4 440F3000 */  mfc1       $t7, $f6
/* F8D8 8000ECD8 00000000 */  nop        
/* F8DC 8000ECDC A48F0000 */  sh         $t7, ($a0)
/* F8E0 8000ECE0 C4AC0004 */  lwc1       $f12, 4($a1)
/* F8E4 8000ECE4 460C703C */  c.lt.s     $f14, $f12
/* F8E8 8000ECE8 00000000 */  nop        
/* F8EC 8000ECEC 45020004 */  bc1fl      .L8000ED00
/* F8F0 8000ECF0 46009086 */   mov.s     $f2, $f18
/* F8F4 8000ECF4 10000002 */  b          .L8000ED00
/* F8F8 8000ECF8 46008086 */   mov.s     $f2, $f16
/* F8FC 8000ECFC 46009086 */  mov.s      $f2, $f18
.L8000ED00:
/* F900 8000ED00 460C1200 */  add.s      $f8, $f2, $f12
/* F904 8000ED04 4600428D */  trunc.w.s  $f10, $f8
/* F908 8000ED08 44195000 */  mfc1       $t9, $f10
/* F90C 8000ED0C 00000000 */  nop        
/* F910 8000ED10 A4990002 */  sh         $t9, 2($a0)
/* F914 8000ED14 C4A00008 */  lwc1       $f0, 8($a1)
/* F918 8000ED18 4600703C */  c.lt.s     $f14, $f0
/* F91C 8000ED1C 00000000 */  nop        
/* F920 8000ED20 45020004 */  bc1fl      .L8000ED34
/* F924 8000ED24 46009086 */   mov.s     $f2, $f18
/* F928 8000ED28 10000002 */  b          .L8000ED34
/* F92C 8000ED2C 46008086 */   mov.s     $f2, $f16
/* F930 8000ED30 46009086 */  mov.s      $f2, $f18
.L8000ED34:
/* F934 8000ED34 46001100 */  add.s      $f4, $f2, $f0
/* F938 8000ED38 00801025 */  or         $v0, $a0, $zero
/* F93C 8000ED3C 4600218D */  trunc.w.s  $f6, $f4
/* F940 8000ED40 44093000 */  mfc1       $t1, $f6
/* F944 8000ED44 03E00008 */  jr         $ra
/* F948 8000ED48 A4890004 */   sh        $t1, 4($a0)

glabel func_8000ED4C
/* F94C 8000ED4C 10850010 */  beq        $a0, $a1, .L8000ED90
/* F950 8000ED50 00801025 */   or        $v0, $a0, $zero
/* F954 8000ED54 00A01825 */  or         $v1, $a1, $zero
/* F958 8000ED58 00003025 */  or         $a2, $zero, $zero
/* F95C 8000ED5C 24040010 */  addiu      $a0, $zero, 0x10
.L8000ED60:
/* F960 8000ED60 8C6E0000 */  lw         $t6, ($v1)
/* F964 8000ED64 24C60004 */  addiu      $a2, $a2, 4
/* F968 8000ED68 24420010 */  addiu      $v0, $v0, 0x10
/* F96C 8000ED6C AC4EFFF0 */  sw         $t6, -0x10($v0)
/* F970 8000ED70 8C6F0004 */  lw         $t7, 4($v1)
/* F974 8000ED74 24630010 */  addiu      $v1, $v1, 0x10
/* F978 8000ED78 AC4FFFF4 */  sw         $t7, -0xc($v0)
/* F97C 8000ED7C 8C78FFF8 */  lw         $t8, -8($v1)
/* F980 8000ED80 AC58FFF8 */  sw         $t8, -8($v0)
/* F984 8000ED84 8C79FFFC */  lw         $t9, -4($v1)
/* F988 8000ED88 14C4FFF5 */  bne        $a2, $a0, .L8000ED60
/* F98C 8000ED8C AC59FFFC */   sw        $t9, -4($v0)
.L8000ED90:
/* F990 8000ED90 03E00008 */  jr         $ra
/* F994 8000ED94 00000000 */   nop       

glabel func_8000ED98
/* F998 8000ED98 44800000 */  mtc1       $zero, $f0
/* F99C 8000ED9C 24820004 */  addiu      $v0, $a0, 4
/* F9A0 8000EDA0 00001825 */  or         $v1, $zero, $zero
.L8000EDA4:
/* F9A4 8000EDA4 24630001 */  addiu      $v1, $v1, 1
/* F9A8 8000EDA8 2861000E */  slti       $at, $v1, 0xe
/* F9AC 8000EDAC E4400000 */  swc1       $f0, ($v0)
/* F9B0 8000EDB0 1420FFFC */  bnez       $at, .L8000EDA4
/* F9B4 8000EDB4 24420004 */   addiu     $v0, $v0, 4
/* F9B8 8000EDB8 3C013F80 */  lui        $at, 0x3f80
/* F9BC 8000EDBC 44810000 */  mtc1       $at, $f0
/* F9C0 8000EDC0 2482003C */  addiu      $v0, $a0, 0x3c
/* F9C4 8000EDC4 E4800000 */  swc1       $f0, ($a0)
/* F9C8 8000EDC8 E4800014 */  swc1       $f0, 0x14($a0)
/* F9CC 8000EDCC E4800028 */  swc1       $f0, 0x28($a0)
/* F9D0 8000EDD0 03E00008 */  jr         $ra
/* F9D4 8000EDD4 E4400000 */   swc1      $f0, ($v0)

glabel func_8000EDD8
/* F9D8 8000EDD8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F9DC 8000EDDC AFBF0014 */  sw         $ra, 0x14($sp)
/* F9E0 8000EDE0 AFA40018 */  sw         $a0, 0x18($sp)
/* F9E4 8000EDE4 0C003B66 */  jal        func_8000ED98
/* F9E8 8000EDE8 AFA5001C */   sw        $a1, 0x1c($sp)
/* F9EC 8000EDEC 8FA5001C */  lw         $a1, 0x1c($sp)
/* F9F0 8000EDF0 8FA40018 */  lw         $a0, 0x18($sp)
/* F9F4 8000EDF4 C4A40000 */  lwc1       $f4, ($a1)
/* F9F8 8000EDF8 E4840030 */  swc1       $f4, 0x30($a0)
/* F9FC 8000EDFC C4A60004 */  lwc1       $f6, 4($a1)
/* FA00 8000EE00 E4860034 */  swc1       $f6, 0x34($a0)
/* FA04 8000EE04 C4A80008 */  lwc1       $f8, 8($a1)
/* FA08 8000EE08 E4880038 */  swc1       $f8, 0x38($a0)
/* FA0C 8000EE0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* FA10 8000EE10 27BD0018 */  addiu      $sp, $sp, 0x18
/* FA14 8000EE14 03E00008 */  jr         $ra
/* FA18 8000EE18 00000000 */   nop       

glabel func_8000EE1C
/* FA1C 8000EE1C 27BDFF78 */  addiu      $sp, $sp, -0x88
/* FA20 8000EE20 AFBF004C */  sw         $ra, 0x4c($sp)
/* FA24 8000EE24 AFB10048 */  sw         $s1, 0x48($sp)
/* FA28 8000EE28 AFB00044 */  sw         $s0, 0x44($sp)
/* FA2C 8000EE2C F7BE0038 */  sdc1       $f30, 0x38($sp)
/* FA30 8000EE30 F7BC0030 */  sdc1       $f28, 0x30($sp)
/* FA34 8000EE34 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* FA38 8000EE38 F7B80020 */  sdc1       $f24, 0x20($sp)
/* FA3C 8000EE3C F7B60018 */  sdc1       $f22, 0x18($sp)
/* FA40 8000EE40 F7B40010 */  sdc1       $f20, 0x10($sp)
/* FA44 8000EE44 AFA70094 */  sw         $a3, 0x94($sp)
/* FA48 8000EE48 C4A60000 */  lwc1       $f6, ($a1)
/* FA4C 8000EE4C C4CA0000 */  lwc1       $f10, ($a2)
/* FA50 8000EE50 C4A80008 */  lwc1       $f8, 8($a1)
/* FA54 8000EE54 C4C40008 */  lwc1       $f4, 8($a2)
/* FA58 8000EE58 46065081 */  sub.s      $f2, $f10, $f6
/* FA5C 8000EE5C 00808025 */  or         $s0, $a0, $zero
/* FA60 8000EE60 00A08825 */  or         $s1, $a1, $zero
/* FA64 8000EE64 46082381 */  sub.s      $f14, $f4, $f8
/* FA68 8000EE68 46021282 */  mul.s      $f10, $f2, $f2
/* FA6C 8000EE6C E7A20080 */  swc1       $f2, 0x80($sp)
/* FA70 8000EE70 AFA60090 */  sw         $a2, 0x90($sp)
/* FA74 8000EE74 460E7182 */  mul.s      $f6, $f14, $f14
/* FA78 8000EE78 E7AE007C */  swc1       $f14, 0x7c($sp)
/* FA7C 8000EE7C 0C0173AC */  jal        func_8005CEB0
/* FA80 8000EE80 46065300 */   add.s     $f12, $f10, $f6
/* FA84 8000EE84 3C01BFF0 */  lui        $at, 0xbff0
/* FA88 8000EE88 44812800 */  mtc1       $at, $f5
/* FA8C 8000EE8C 44802000 */  mtc1       $zero, $f4
/* FA90 8000EE90 46000221 */  cvt.d.s    $f8, $f0
/* FA94 8000EE94 C7A20080 */  lwc1       $f2, 0x80($sp)
/* FA98 8000EE98 46282283 */  div.d      $f10, $f4, $f8
/* FA9C 8000EE9C 97A20096 */  lhu        $v0, 0x96($sp)
/* FAA0 8000EEA0 C7AE007C */  lwc1       $f14, 0x7c($sp)
/* FAA4 8000EEA4 3C018007 */  lui        $at, 0x8007
/* FAA8 8000EEA8 00021103 */  sra        $v0, $v0, 4
/* FAAC 8000EEAC 00021080 */  sll        $v0, $v0, 2
/* FAB0 8000EEB0 00220821 */  addu       $at, $at, $v0
/* FAB4 8000EEB4 C43AA7F0 */  lwc1       $f26, -0x5810($at)
/* FAB8 8000EEB8 3C018007 */  lui        $at, 0x8007
/* FABC 8000EEBC 00220821 */  addu       $at, $at, $v0
/* FAC0 8000EEC0 C43097F0 */  lwc1       $f16, -0x6810($at)
/* FAC4 8000EEC4 8FA60090 */  lw         $a2, 0x90($sp)
/* FAC8 8000EEC8 C6280000 */  lwc1       $f8, ($s1)
/* FACC 8000EECC 46008187 */  neg.s      $f6, $f16
/* FAD0 8000EED0 C4C40000 */  lwc1       $f4, ($a2)
/* FAD4 8000EED4 46082501 */  sub.s      $f20, $f4, $f8
/* FAD8 8000EED8 C6280008 */  lwc1       $f8, 8($s1)
/* FADC 8000EEDC C4C40008 */  lwc1       $f4, 8($a2)
/* FAE0 8000EEE0 46082601 */  sub.s      $f24, $f4, $f8
/* FAE4 8000EEE4 462054A0 */  cvt.s.d    $f18, $f10
/* FAE8 8000EEE8 C4CA0004 */  lwc1       $f10, 4($a2)
/* FAEC 8000EEEC 46121082 */  mul.s      $f2, $f2, $f18
/* FAF0 8000EEF0 00000000 */  nop        
/* FAF4 8000EEF4 46127382 */  mul.s      $f14, $f14, $f18
/* FAF8 8000EEF8 00000000 */  nop        
/* FAFC 8000EEFC 460E8702 */  mul.s      $f28, $f16, $f14
/* FB00 8000EF00 00000000 */  nop        
/* FB04 8000EF04 46023782 */  mul.s      $f30, $f6, $f2
/* FB08 8000EF08 C6260004 */  lwc1       $f6, 4($s1)
/* FB0C 8000EF0C 46065581 */  sub.s      $f22, $f10, $f6
/* FB10 8000EF10 4614A282 */  mul.s      $f10, $f20, $f20
/* FB14 8000EF14 00000000 */  nop        
/* FB18 8000EF18 4616B182 */  mul.s      $f6, $f22, $f22
/* FB1C 8000EF1C 46065100 */  add.s      $f4, $f10, $f6
/* FB20 8000EF20 4618C202 */  mul.s      $f8, $f24, $f24
/* FB24 8000EF24 0C0173AC */  jal        func_8005CEB0
/* FB28 8000EF28 46082300 */   add.s     $f12, $f4, $f8
/* FB2C 8000EF2C 3C01BFF0 */  lui        $at, 0xbff0
/* FB30 8000EF30 44815800 */  mtc1       $at, $f11
/* FB34 8000EF34 44805000 */  mtc1       $zero, $f10
/* FB38 8000EF38 460001A1 */  cvt.d.s    $f6, $f0
/* FB3C 8000EF3C 46265103 */  div.d      $f4, $f10, $f6
/* FB40 8000EF40 462024A0 */  cvt.s.d    $f18, $f4
/* FB44 8000EF44 4612A502 */  mul.s      $f20, $f20, $f18
/* FB48 8000EF48 00000000 */  nop        
/* FB4C 8000EF4C 4612B582 */  mul.s      $f22, $f22, $f18
/* FB50 8000EF50 00000000 */  nop        
/* FB54 8000EF54 4612C602 */  mul.s      $f24, $f24, $f18
/* FB58 8000EF58 00000000 */  nop        
/* FB5C 8000EF5C 4618D202 */  mul.s      $f8, $f26, $f24
/* FB60 8000EF60 00000000 */  nop        
/* FB64 8000EF64 4616F282 */  mul.s      $f10, $f30, $f22
/* FB68 8000EF68 00000000 */  nop        
/* FB6C 8000EF6C 4614F182 */  mul.s      $f6, $f30, $f20
/* FB70 8000EF70 00000000 */  nop        
/* FB74 8000EF74 4618E102 */  mul.s      $f4, $f28, $f24
/* FB78 8000EF78 460A4081 */  sub.s      $f2, $f8, $f10
/* FB7C 8000EF7C 4616E202 */  mul.s      $f8, $f28, $f22
/* FB80 8000EF80 00000000 */  nop        
/* FB84 8000EF84 4614D282 */  mul.s      $f10, $f26, $f20
/* FB88 8000EF88 E7A20060 */  swc1       $f2, 0x60($sp)
/* FB8C 8000EF8C 46043381 */  sub.s      $f14, $f6, $f4
/* FB90 8000EF90 46021182 */  mul.s      $f6, $f2, $f2
/* FB94 8000EF94 00000000 */  nop        
/* FB98 8000EF98 460E7102 */  mul.s      $f4, $f14, $f14
/* FB9C 8000EF9C E7AE005C */  swc1       $f14, 0x5c($sp)
/* FBA0 8000EFA0 460A4401 */  sub.s      $f16, $f8, $f10
/* FBA4 8000EFA4 46108282 */  mul.s      $f10, $f16, $f16
/* FBA8 8000EFA8 46043200 */  add.s      $f8, $f6, $f4
/* FBAC 8000EFAC E7B00058 */  swc1       $f16, 0x58($sp)
/* FBB0 8000EFB0 0C0173AC */  jal        func_8005CEB0
/* FBB4 8000EFB4 460A4300 */   add.s     $f12, $f8, $f10
/* FBB8 8000EFB8 3C013FF0 */  lui        $at, 0x3ff0
/* FBBC 8000EFBC 44813800 */  mtc1       $at, $f7
/* FBC0 8000EFC0 44803000 */  mtc1       $zero, $f6
/* FBC4 8000EFC4 46000121 */  cvt.d.s    $f4, $f0
/* FBC8 8000EFC8 C7AA0060 */  lwc1       $f10, 0x60($sp)
/* FBCC 8000EFCC 46243203 */  div.d      $f8, $f6, $f4
/* FBD0 8000EFD0 C7A4005C */  lwc1       $f4, 0x5c($sp)
/* FBD4 8000EFD4 462040A0 */  cvt.s.d    $f2, $f8
/* FBD8 8000EFD8 46025182 */  mul.s      $f6, $f10, $f2
/* FBDC 8000EFDC C7AA0058 */  lwc1       $f10, 0x58($sp)
/* FBE0 8000EFE0 46022202 */  mul.s      $f8, $f4, $f2
/* FBE4 8000EFE4 00000000 */  nop        
/* FBE8 8000EFE8 46025102 */  mul.s      $f4, $f10, $f2
/* FBEC 8000EFEC E7A60060 */  swc1       $f6, 0x60($sp)
/* FBF0 8000EFF0 E7A60050 */  swc1       $f6, 0x50($sp)
/* FBF4 8000EFF4 E7A8005C */  swc1       $f8, 0x5c($sp)
/* FBF8 8000EFF8 4604B282 */  mul.s      $f10, $f22, $f4
/* FBFC 8000EFFC E7A40058 */  swc1       $f4, 0x58($sp)
/* FC00 8000F000 4608C182 */  mul.s      $f6, $f24, $f8
/* FC04 8000F004 46065701 */  sub.s      $f28, $f10, $f6
/* FC08 8000F008 C7AA0050 */  lwc1       $f10, 0x50($sp)
/* FC0C 8000F00C 460AC182 */  mul.s      $f6, $f24, $f10
/* FC10 8000F010 00000000 */  nop        
/* FC14 8000F014 4604A102 */  mul.s      $f4, $f20, $f4
/* FC18 8000F018 46043681 */  sub.s      $f26, $f6, $f4
/* FC1C 8000F01C 4608A182 */  mul.s      $f6, $f20, $f8
/* FC20 8000F020 00000000 */  nop        
/* FC24 8000F024 460AB102 */  mul.s      $f4, $f22, $f10
/* FC28 8000F028 46043781 */  sub.s      $f30, $f6, $f4
/* FC2C 8000F02C 461CE202 */  mul.s      $f8, $f28, $f28
/* FC30 8000F030 00000000 */  nop        
/* FC34 8000F034 461AD282 */  mul.s      $f10, $f26, $f26
/* FC38 8000F038 460A4180 */  add.s      $f6, $f8, $f10
/* FC3C 8000F03C 461EF102 */  mul.s      $f4, $f30, $f30
/* FC40 8000F040 0C0173AC */  jal        func_8005CEB0
/* FC44 8000F044 46043300 */   add.s     $f12, $f6, $f4
/* FC48 8000F048 3C013FF0 */  lui        $at, 0x3ff0
/* FC4C 8000F04C 44814800 */  mtc1       $at, $f9
/* FC50 8000F050 44804000 */  mtc1       $zero, $f8
/* FC54 8000F054 460002A1 */  cvt.d.s    $f10, $f0
/* FC58 8000F058 C7AC0058 */  lwc1       $f12, 0x58($sp)
/* FC5C 8000F05C 462A4183 */  div.d      $f6, $f8, $f10
/* FC60 8000F060 C7AE005C */  lwc1       $f14, 0x5c($sp)
/* FC64 8000F064 C7B00060 */  lwc1       $f16, 0x60($sp)
/* FC68 8000F068 E60C0020 */  swc1       $f12, 0x20($s0)
/* FC6C 8000F06C E60E0010 */  swc1       $f14, 0x10($s0)
/* FC70 8000F070 E6100000 */  swc1       $f16, ($s0)
/* FC74 8000F074 C6240000 */  lwc1       $f4, ($s1)
/* FC78 8000F078 C62A0004 */  lwc1       $f10, 4($s1)
/* FC7C 8000F07C 44800000 */  mtc1       $zero, $f0
/* FC80 8000F080 3C013F80 */  lui        $at, 0x3f80
/* FC84 8000F084 462030A0 */  cvt.s.d    $f2, $f6
/* FC88 8000F088 4602E702 */  mul.s      $f28, $f28, $f2
/* FC8C 8000F08C 00000000 */  nop        
/* FC90 8000F090 4602D682 */  mul.s      $f26, $f26, $f2
/* FC94 8000F094 00000000 */  nop        
/* FC98 8000F098 4602F782 */  mul.s      $f30, $f30, $f2
/* FC9C 8000F09C 00000000 */  nop        
/* FCA0 8000F0A0 46102202 */  mul.s      $f8, $f4, $f16
/* FCA4 8000F0A4 00000000 */  nop        
/* FCA8 8000F0A8 460E5182 */  mul.s      $f6, $f10, $f14
/* FCAC 8000F0AC C62A0008 */  lwc1       $f10, 8($s1)
/* FCB0 8000F0B0 E61C0004 */  swc1       $f28, 4($s0)
/* FCB4 8000F0B4 E61A0014 */  swc1       $f26, 0x14($s0)
/* FCB8 8000F0B8 E61E0024 */  swc1       $f30, 0x24($s0)
/* FCBC 8000F0BC 46064100 */  add.s      $f4, $f8, $f6
/* FCC0 8000F0C0 460C5202 */  mul.s      $f8, $f10, $f12
/* FCC4 8000F0C4 46082180 */  add.s      $f6, $f4, $f8
/* FCC8 8000F0C8 46003287 */  neg.s      $f10, $f6
/* FCCC 8000F0CC E60A0030 */  swc1       $f10, 0x30($s0)
/* FCD0 8000F0D0 C6240000 */  lwc1       $f4, ($s1)
/* FCD4 8000F0D4 C6260004 */  lwc1       $f6, 4($s1)
/* FCD8 8000F0D8 461C2202 */  mul.s      $f8, $f4, $f28
/* FCDC 8000F0DC 00000000 */  nop        
/* FCE0 8000F0E0 461A3282 */  mul.s      $f10, $f6, $f26
/* FCE4 8000F0E4 C6260008 */  lwc1       $f6, 8($s1)
/* FCE8 8000F0E8 E6140008 */  swc1       $f20, 8($s0)
/* FCEC 8000F0EC E6160018 */  swc1       $f22, 0x18($s0)
/* FCF0 8000F0F0 E6180028 */  swc1       $f24, 0x28($s0)
/* FCF4 8000F0F4 460A4100 */  add.s      $f4, $f8, $f10
/* FCF8 8000F0F8 461E3202 */  mul.s      $f8, $f6, $f30
/* FCFC 8000F0FC 46082280 */  add.s      $f10, $f4, $f8
/* FD00 8000F100 46005187 */  neg.s      $f6, $f10
/* FD04 8000F104 E6060034 */  swc1       $f6, 0x34($s0)
/* FD08 8000F108 C6240000 */  lwc1       $f4, ($s1)
/* FD0C 8000F10C C62A0004 */  lwc1       $f10, 4($s1)
/* FD10 8000F110 46142202 */  mul.s      $f8, $f4, $f20
/* FD14 8000F114 00000000 */  nop        
/* FD18 8000F118 46165182 */  mul.s      $f6, $f10, $f22
/* FD1C 8000F11C C62A0008 */  lwc1       $f10, 8($s1)
/* FD20 8000F120 E600000C */  swc1       $f0, 0xc($s0)
/* FD24 8000F124 E600001C */  swc1       $f0, 0x1c($s0)
/* FD28 8000F128 E600002C */  swc1       $f0, 0x2c($s0)
/* FD2C 8000F12C 46064100 */  add.s      $f4, $f8, $f6
/* FD30 8000F130 46185202 */  mul.s      $f8, $f10, $f24
/* FD34 8000F134 46082180 */  add.s      $f6, $f4, $f8
/* FD38 8000F138 44812000 */  mtc1       $at, $f4
/* FD3C 8000F13C 46003287 */  neg.s      $f10, $f6
/* FD40 8000F140 E604003C */  swc1       $f4, 0x3c($s0)
/* FD44 8000F144 E60A0038 */  swc1       $f10, 0x38($s0)
/* FD48 8000F148 8FBF004C */  lw         $ra, 0x4c($sp)
/* FD4C 8000F14C 8FB10048 */  lw         $s1, 0x48($sp)
/* FD50 8000F150 8FB00044 */  lw         $s0, 0x44($sp)
/* FD54 8000F154 D7BE0038 */  ldc1       $f30, 0x38($sp)
/* FD58 8000F158 D7BC0030 */  ldc1       $f28, 0x30($sp)
/* FD5C 8000F15C D7BA0028 */  ldc1       $f26, 0x28($sp)
/* FD60 8000F160 D7B80020 */  ldc1       $f24, 0x20($sp)
/* FD64 8000F164 D7B60018 */  ldc1       $f22, 0x18($sp)
/* FD68 8000F168 D7B40010 */  ldc1       $f20, 0x10($sp)
/* FD6C 8000F16C 03E00008 */  jr         $ra
/* FD70 8000F170 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_8000F174
/* FD74 8000F174 94C20000 */  lhu        $v0, ($a2)
/* FD78 8000F178 94C30002 */  lhu        $v1, 2($a2)
/* FD7C 8000F17C 3C088007 */  lui        $t0, 0x8007
/* FD80 8000F180 250897F0 */  addiu      $t0, $t0, -0x6810
/* FD84 8000F184 00021103 */  sra        $v0, $v0, 4
/* FD88 8000F188 00031903 */  sra        $v1, $v1, 4
/* FD8C 8000F18C 00021080 */  sll        $v0, $v0, 2
/* FD90 8000F190 00031880 */  sll        $v1, $v1, 2
/* FD94 8000F194 01027021 */  addu       $t6, $t0, $v0
/* FD98 8000F198 0103C021 */  addu       $t8, $t0, $v1
/* FD9C 8000F19C C5C00000 */  lwc1       $f0, ($t6)
/* FDA0 8000F1A0 C70C0000 */  lwc1       $f12, ($t8)
/* FDA4 8000F1A4 94C70004 */  lhu        $a3, 4($a2)
/* FDA8 8000F1A8 3C098007 */  lui        $t1, 0x8007
/* FDAC 8000F1AC 460C0102 */  mul.s      $f4, $f0, $f12
/* FDB0 8000F1B0 2529A7F0 */  addiu      $t1, $t1, -0x5810
/* FDB4 8000F1B4 00073903 */  sra        $a3, $a3, 4
/* FDB8 8000F1B8 00073880 */  sll        $a3, $a3, 2
/* FDBC 8000F1BC 0123C821 */  addu       $t9, $t1, $v1
/* FDC0 8000F1C0 01275821 */  addu       $t3, $t1, $a3
/* FDC4 8000F1C4 C72E0000 */  lwc1       $f14, ($t9)
/* FDC8 8000F1C8 C5720000 */  lwc1       $f18, ($t3)
/* FDCC 8000F1CC 01227821 */  addu       $t7, $t1, $v0
/* FDD0 8000F1D0 01075021 */  addu       $t2, $t0, $a3
/* FDD4 8000F1D4 C5E20000 */  lwc1       $f2, ($t7)
/* FDD8 8000F1D8 C5500000 */  lwc1       $f16, ($t2)
/* FDDC 8000F1DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FDE0 8000F1E0 E7A40004 */  swc1       $f4, 4($sp)
/* FDE4 8000F1E4 46127182 */  mul.s      $f6, $f14, $f18
/* FDE8 8000F1E8 C7A80004 */  lwc1       $f8, 4($sp)
/* FDEC 8000F1EC 3C013F80 */  lui        $at, 0x3f80
/* FDF0 8000F1F0 46104282 */  mul.s      $f10, $f8, $f16
/* FDF4 8000F1F4 46007207 */  neg.s      $f8, $f14
/* FDF8 8000F1F8 460A3100 */  add.s      $f4, $f6, $f10
/* FDFC 8000F1FC 46104182 */  mul.s      $f6, $f8, $f16
/* FE00 8000F200 E4840000 */  swc1       $f4, ($a0)
/* FE04 8000F204 C7AA0004 */  lwc1       $f10, 4($sp)
/* FE08 8000F208 46125102 */  mul.s      $f4, $f10, $f18
/* FE0C 8000F20C 46043200 */  add.s      $f8, $f6, $f4
/* FE10 8000F210 460C1282 */  mul.s      $f10, $f2, $f12
/* FE14 8000F214 E4880004 */  swc1       $f8, 4($a0)
/* FE18 8000F218 46101202 */  mul.s      $f8, $f2, $f16
/* FE1C 8000F21C E48A0008 */  swc1       $f10, 8($a0)
/* FE20 8000F220 84AC0000 */  lh         $t4, ($a1)
/* FE24 8000F224 46121282 */  mul.s      $f10, $f2, $f18
/* FE28 8000F228 448C3000 */  mtc1       $t4, $f6
/* FE2C 8000F22C E4880010 */  swc1       $f8, 0x10($a0)
/* FE30 8000F230 46803120 */  cvt.s.w    $f4, $f6
/* FE34 8000F234 E48A0014 */  swc1       $f10, 0x14($a0)
/* FE38 8000F238 460E0282 */  mul.s      $f10, $f0, $f14
/* FE3C 8000F23C 46000187 */  neg.s      $f6, $f0
/* FE40 8000F240 E484000C */  swc1       $f4, 0xc($a0)
/* FE44 8000F244 E4860018 */  swc1       $f6, 0x18($a0)
/* FE48 8000F248 84AD0002 */  lh         $t5, 2($a1)
/* FE4C 8000F24C 46006187 */  neg.s      $f6, $f12
/* FE50 8000F250 44800000 */  mtc1       $zero, $f0
/* FE54 8000F254 448D2000 */  mtc1       $t5, $f4
/* FE58 8000F258 00000000 */  nop        
/* FE5C 8000F25C 46802220 */  cvt.s.w    $f8, $f4
/* FE60 8000F260 46123102 */  mul.s      $f4, $f6, $f18
/* FE64 8000F264 E488001C */  swc1       $f8, 0x1c($a0)
/* FE68 8000F268 E7AA0004 */  swc1       $f10, 4($sp)
/* FE6C 8000F26C C7A80004 */  lwc1       $f8, 4($sp)
/* FE70 8000F270 46104282 */  mul.s      $f10, $f8, $f16
/* FE74 8000F274 460A2180 */  add.s      $f6, $f4, $f10
/* FE78 8000F278 46106202 */  mul.s      $f8, $f12, $f16
/* FE7C 8000F27C E4860020 */  swc1       $f6, 0x20($a0)
/* FE80 8000F280 C7A40004 */  lwc1       $f4, 4($sp)
/* FE84 8000F284 46122282 */  mul.s      $f10, $f4, $f18
/* FE88 8000F288 460A4180 */  add.s      $f6, $f8, $f10
/* FE8C 8000F28C 460E1102 */  mul.s      $f4, $f2, $f14
/* FE90 8000F290 E4860024 */  swc1       $f6, 0x24($a0)
/* FE94 8000F294 44813000 */  mtc1       $at, $f6
/* FE98 8000F298 E4840028 */  swc1       $f4, 0x28($a0)
/* FE9C 8000F29C 84AE0004 */  lh         $t6, 4($a1)
/* FEA0 8000F2A0 27BD0020 */  addiu      $sp, $sp, 0x20
/* FEA4 8000F2A4 E4800030 */  swc1       $f0, 0x30($a0)
/* FEA8 8000F2A8 448E4000 */  mtc1       $t6, $f8
/* FEAC 8000F2AC E4800034 */  swc1       $f0, 0x34($a0)
/* FEB0 8000F2B0 E4800038 */  swc1       $f0, 0x38($a0)
/* FEB4 8000F2B4 468042A0 */  cvt.s.w    $f10, $f8
/* FEB8 8000F2B8 E486003C */  swc1       $f6, 0x3c($a0)
/* FEBC 8000F2BC 03E00008 */  jr         $ra
/* FEC0 8000F2C0 E48A002C */   swc1      $f10, 0x2c($a0)

glabel func_8000F2C4
/* FEC4 8000F2C4 94C20000 */  lhu        $v0, ($a2)
/* FEC8 8000F2C8 94C30002 */  lhu        $v1, 2($a2)
/* FECC 8000F2CC 3C088007 */  lui        $t0, 0x8007
/* FED0 8000F2D0 250897F0 */  addiu      $t0, $t0, -0x6810
/* FED4 8000F2D4 00021103 */  sra        $v0, $v0, 4
/* FED8 8000F2D8 00031903 */  sra        $v1, $v1, 4
/* FEDC 8000F2DC 00021080 */  sll        $v0, $v0, 2
/* FEE0 8000F2E0 00031880 */  sll        $v1, $v1, 2
/* FEE4 8000F2E4 01027021 */  addu       $t6, $t0, $v0
/* FEE8 8000F2E8 0103C021 */  addu       $t8, $t0, $v1
/* FEEC 8000F2EC C5C00000 */  lwc1       $f0, ($t6)
/* FEF0 8000F2F0 C70C0000 */  lwc1       $f12, ($t8)
/* FEF4 8000F2F4 94C70004 */  lhu        $a3, 4($a2)
/* FEF8 8000F2F8 3C098007 */  lui        $t1, 0x8007
/* FEFC 8000F2FC 460C0102 */  mul.s      $f4, $f0, $f12
/* FF00 8000F300 2529A7F0 */  addiu      $t1, $t1, -0x5810
/* FF04 8000F304 00073903 */  sra        $a3, $a3, 4
/* FF08 8000F308 00073880 */  sll        $a3, $a3, 2
/* FF0C 8000F30C 0123C821 */  addu       $t9, $t1, $v1
/* FF10 8000F310 01275821 */  addu       $t3, $t1, $a3
/* FF14 8000F314 C72E0000 */  lwc1       $f14, ($t9)
/* FF18 8000F318 C5720000 */  lwc1       $f18, ($t3)
/* FF1C 8000F31C 01227821 */  addu       $t7, $t1, $v0
/* FF20 8000F320 01075021 */  addu       $t2, $t0, $a3
/* FF24 8000F324 C5E20000 */  lwc1       $f2, ($t7)
/* FF28 8000F328 C5500000 */  lwc1       $f16, ($t2)
/* FF2C 8000F32C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FF30 8000F330 E7A40000 */  swc1       $f4, ($sp)
/* FF34 8000F334 46127182 */  mul.s      $f6, $f14, $f18
/* FF38 8000F338 C7A80000 */  lwc1       $f8, ($sp)
/* FF3C 8000F33C 3C013F80 */  lui        $at, 0x3f80
/* FF40 8000F340 46104282 */  mul.s      $f10, $f8, $f16
/* FF44 8000F344 46007207 */  neg.s      $f8, $f14
/* FF48 8000F348 460A3100 */  add.s      $f4, $f6, $f10
/* FF4C 8000F34C 46104182 */  mul.s      $f6, $f8, $f16
/* FF50 8000F350 E4840000 */  swc1       $f4, ($a0)
/* FF54 8000F354 C7AA0000 */  lwc1       $f10, ($sp)
/* FF58 8000F358 46125102 */  mul.s      $f4, $f10, $f18
/* FF5C 8000F35C 46043200 */  add.s      $f8, $f6, $f4
/* FF60 8000F360 460C1282 */  mul.s      $f10, $f2, $f12
/* FF64 8000F364 00000000 */  nop        
/* FF68 8000F368 46101102 */  mul.s      $f4, $f2, $f16
/* FF6C 8000F36C E4880010 */  swc1       $f8, 0x10($a0)
/* FF70 8000F370 46121202 */  mul.s      $f8, $f2, $f18
/* FF74 8000F374 E48A0020 */  swc1       $f10, 0x20($a0)
/* FF78 8000F378 C4A60000 */  lwc1       $f6, ($a1)
/* FF7C 8000F37C 46000287 */  neg.s      $f10, $f0
/* FF80 8000F380 E4840004 */  swc1       $f4, 4($a0)
/* FF84 8000F384 460E0102 */  mul.s      $f4, $f0, $f14
/* FF88 8000F388 E48A0024 */  swc1       $f10, 0x24($a0)
/* FF8C 8000F38C E4880014 */  swc1       $f8, 0x14($a0)
/* FF90 8000F390 E4860030 */  swc1       $f6, 0x30($a0)
/* FF94 8000F394 C4A60004 */  lwc1       $f6, 4($a1)
/* FF98 8000F398 44800000 */  mtc1       $zero, $f0
/* FF9C 8000F39C 46006207 */  neg.s      $f8, $f12
/* FFA0 8000F3A0 E4860034 */  swc1       $f6, 0x34($a0)
/* FFA4 8000F3A4 E7A40000 */  swc1       $f4, ($sp)
/* FFA8 8000F3A8 46124282 */  mul.s      $f10, $f8, $f18
/* FFAC 8000F3AC C7A60000 */  lwc1       $f6, ($sp)
/* FFB0 8000F3B0 46103102 */  mul.s      $f4, $f6, $f16
/* FFB4 8000F3B4 46045200 */  add.s      $f8, $f10, $f4
/* FFB8 8000F3B8 46106182 */  mul.s      $f6, $f12, $f16
/* FFBC 8000F3BC E4880008 */  swc1       $f8, 8($a0)
/* FFC0 8000F3C0 C7AA0000 */  lwc1       $f10, ($sp)
/* FFC4 8000F3C4 46125102 */  mul.s      $f4, $f10, $f18
/* FFC8 8000F3C8 46043200 */  add.s      $f8, $f6, $f4
/* FFCC 8000F3CC 460E1282 */  mul.s      $f10, $f2, $f14
/* FFD0 8000F3D0 44812000 */  mtc1       $at, $f4
/* FFD4 8000F3D4 E4880018 */  swc1       $f8, 0x18($a0)
/* FFD8 8000F3D8 E48A0028 */  swc1       $f10, 0x28($a0)
/* FFDC 8000F3DC C4A60008 */  lwc1       $f6, 8($a1)
/* FFE0 8000F3E0 27BD0020 */  addiu      $sp, $sp, 0x20
/* FFE4 8000F3E4 E480000C */  swc1       $f0, 0xc($a0)
/* FFE8 8000F3E8 E480001C */  swc1       $f0, 0x1c($a0)
/* FFEC 8000F3EC E480002C */  swc1       $f0, 0x2c($a0)
/* FFF0 8000F3F0 E484003C */  swc1       $f4, 0x3c($a0)
/* FFF4 8000F3F4 03E00008 */  jr         $ra
/* FFF8 8000F3F8 E4860038 */   swc1      $f6, 0x38($a0)

glabel func_8000F3FC
/* FFFC 8000F3FC 94C20000 */  lhu        $v0, ($a2)
/* 10000 8000F400 94C30002 */  lhu        $v1, 2($a2)
/* 10004 8000F404 3C088007 */  lui        $t0, 0x8007
/* 10008 8000F408 250897F0 */  addiu      $t0, $t0, -0x6810
/* 1000C 8000F40C 00021103 */  sra        $v0, $v0, 4
/* 10010 8000F410 00031903 */  sra        $v1, $v1, 4
/* 10014 8000F414 00021080 */  sll        $v0, $v0, 2
/* 10018 8000F418 00031880 */  sll        $v1, $v1, 2
/* 1001C 8000F41C 01027021 */  addu       $t6, $t0, $v0
/* 10020 8000F420 0103C021 */  addu       $t8, $t0, $v1
/* 10024 8000F424 C5C00000 */  lwc1       $f0, ($t6)
/* 10028 8000F428 C70C0000 */  lwc1       $f12, ($t8)
/* 1002C 8000F42C 94C70004 */  lhu        $a3, 4($a2)
/* 10030 8000F430 3C098007 */  lui        $t1, 0x8007
/* 10034 8000F434 460C0102 */  mul.s      $f4, $f0, $f12
/* 10038 8000F438 2529A7F0 */  addiu      $t1, $t1, -0x5810
/* 1003C 8000F43C 00073903 */  sra        $a3, $a3, 4
/* 10040 8000F440 00073880 */  sll        $a3, $a3, 2
/* 10044 8000F444 0123C821 */  addu       $t9, $t1, $v1
/* 10048 8000F448 01275821 */  addu       $t3, $t1, $a3
/* 1004C 8000F44C C72E0000 */  lwc1       $f14, ($t9)
/* 10050 8000F450 C5720000 */  lwc1       $f18, ($t3)
/* 10054 8000F454 01227821 */  addu       $t7, $t1, $v0
/* 10058 8000F458 01075021 */  addu       $t2, $t0, $a3
/* 1005C 8000F45C C5E20000 */  lwc1       $f2, ($t7)
/* 10060 8000F460 C5500000 */  lwc1       $f16, ($t2)
/* 10064 8000F464 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10068 8000F468 E7A40000 */  swc1       $f4, ($sp)
/* 1006C 8000F46C 46127182 */  mul.s      $f6, $f14, $f18
/* 10070 8000F470 C7A80000 */  lwc1       $f8, ($sp)
/* 10074 8000F474 3C013F80 */  lui        $at, 0x3f80
/* 10078 8000F478 46104282 */  mul.s      $f10, $f8, $f16
/* 1007C 8000F47C 46007207 */  neg.s      $f8, $f14
/* 10080 8000F480 460A3100 */  add.s      $f4, $f6, $f10
/* 10084 8000F484 46104182 */  mul.s      $f6, $f8, $f16
/* 10088 8000F488 E4840000 */  swc1       $f4, ($a0)
/* 1008C 8000F48C C7AA0000 */  lwc1       $f10, ($sp)
/* 10090 8000F490 46125102 */  mul.s      $f4, $f10, $f18
/* 10094 8000F494 46043200 */  add.s      $f8, $f6, $f4
/* 10098 8000F498 460C1282 */  mul.s      $f10, $f2, $f12
/* 1009C 8000F49C 00000000 */  nop        
/* 100A0 8000F4A0 46101182 */  mul.s      $f6, $f2, $f16
/* 100A4 8000F4A4 E4880004 */  swc1       $f8, 4($a0)
/* 100A8 8000F4A8 46121102 */  mul.s      $f4, $f2, $f18
/* 100AC 8000F4AC E48A0008 */  swc1       $f10, 8($a0)
/* 100B0 8000F4B0 460E0282 */  mul.s      $f10, $f0, $f14
/* 100B4 8000F4B4 46000207 */  neg.s      $f8, $f0
/* 100B8 8000F4B8 E4860010 */  swc1       $f6, 0x10($a0)
/* 100BC 8000F4BC 46006187 */  neg.s      $f6, $f12
/* 100C0 8000F4C0 E4840014 */  swc1       $f4, 0x14($a0)
/* 100C4 8000F4C4 E4880018 */  swc1       $f8, 0x18($a0)
/* 100C8 8000F4C8 46123102 */  mul.s      $f4, $f6, $f18
/* 100CC 8000F4CC E7AA0000 */  swc1       $f10, ($sp)
/* 100D0 8000F4D0 C7A80000 */  lwc1       $f8, ($sp)
/* 100D4 8000F4D4 46104282 */  mul.s      $f10, $f8, $f16
/* 100D8 8000F4D8 460A2180 */  add.s      $f6, $f4, $f10
/* 100DC 8000F4DC 46106202 */  mul.s      $f8, $f12, $f16
/* 100E0 8000F4E0 E4860020 */  swc1       $f6, 0x20($a0)
/* 100E4 8000F4E4 C7A40000 */  lwc1       $f4, ($sp)
/* 100E8 8000F4E8 46122282 */  mul.s      $f10, $f4, $f18
/* 100EC 8000F4EC C4840000 */  lwc1       $f4, ($a0)
/* 100F0 8000F4F0 460E1002 */  mul.s      $f0, $f2, $f14
/* 100F4 8000F4F4 460A4180 */  add.s      $f6, $f8, $f10
/* 100F8 8000F4F8 E4800028 */  swc1       $f0, 0x28($a0)
/* 100FC 8000F4FC E4860024 */  swc1       $f6, 0x24($a0)
/* 10100 8000F500 C4A80000 */  lwc1       $f8, ($a1)
/* 10104 8000F504 C4860010 */  lwc1       $f6, 0x10($a0)
/* 10108 8000F508 46082282 */  mul.s      $f10, $f4, $f8
/* 1010C 8000F50C C4A40004 */  lwc1       $f4, 4($a1)
/* 10110 8000F510 46043202 */  mul.s      $f8, $f6, $f4
/* 10114 8000F514 C4840020 */  lwc1       $f4, 0x20($a0)
/* 10118 8000F518 46085180 */  add.s      $f6, $f10, $f8
/* 1011C 8000F51C C4AA0008 */  lwc1       $f10, 8($a1)
/* 10120 8000F520 460A2202 */  mul.s      $f8, $f4, $f10
/* 10124 8000F524 C48A0004 */  lwc1       $f10, 4($a0)
/* 10128 8000F528 46064100 */  add.s      $f4, $f8, $f6
/* 1012C 8000F52C E4840030 */  swc1       $f4, 0x30($a0)
/* 10130 8000F530 C4A80000 */  lwc1       $f8, ($a1)
/* 10134 8000F534 C4840014 */  lwc1       $f4, 0x14($a0)
/* 10138 8000F538 46085182 */  mul.s      $f6, $f10, $f8
/* 1013C 8000F53C C4AA0004 */  lwc1       $f10, 4($a1)
/* 10140 8000F540 460A2202 */  mul.s      $f8, $f4, $f10
/* 10144 8000F544 C48A0024 */  lwc1       $f10, 0x24($a0)
/* 10148 8000F548 46083100 */  add.s      $f4, $f6, $f8
/* 1014C 8000F54C C4A60008 */  lwc1       $f6, 8($a1)
/* 10150 8000F550 46065202 */  mul.s      $f8, $f10, $f6
/* 10154 8000F554 C4860008 */  lwc1       $f6, 8($a0)
/* 10158 8000F558 46044280 */  add.s      $f10, $f8, $f4
/* 1015C 8000F55C E48A0034 */  swc1       $f10, 0x34($a0)
/* 10160 8000F560 C4A80000 */  lwc1       $f8, ($a1)
/* 10164 8000F564 C48A0018 */  lwc1       $f10, 0x18($a0)
/* 10168 8000F568 46083102 */  mul.s      $f4, $f6, $f8
/* 1016C 8000F56C C4A60004 */  lwc1       $f6, 4($a1)
/* 10170 8000F570 46065202 */  mul.s      $f8, $f10, $f6
/* 10174 8000F574 C4A60008 */  lwc1       $f6, 8($a1)
/* 10178 8000F578 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1017C 8000F57C 46082280 */  add.s      $f10, $f4, $f8
/* 10180 8000F580 46060102 */  mul.s      $f4, $f0, $f6
/* 10184 8000F584 44800000 */  mtc1       $zero, $f0
/* 10188 8000F588 44813000 */  mtc1       $at, $f6
/* 1018C 8000F58C E480002C */  swc1       $f0, 0x2c($a0)
/* 10190 8000F590 E480001C */  swc1       $f0, 0x1c($a0)
/* 10194 8000F594 E480000C */  swc1       $f0, 0xc($a0)
/* 10198 8000F598 460A2200 */  add.s      $f8, $f4, $f10
/* 1019C 8000F59C E486003C */  swc1       $f6, 0x3c($a0)
/* 101A0 8000F5A0 03E00008 */  jr         $ra
/* 101A4 8000F5A4 E4880038 */   swc1      $f8, 0x38($a0)

glabel func_8000F5A8
/* 101A8 8000F5A8 94C30002 */  lhu        $v1, 2($a2)
/* 101AC 8000F5AC 94C80004 */  lhu        $t0, 4($a2)
/* 101B0 8000F5B0 3C0A8007 */  lui        $t2, 0x8007
/* 101B4 8000F5B4 254AA7F0 */  addiu      $t2, $t2, -0x5810
/* 101B8 8000F5B8 00031903 */  sra        $v1, $v1, 4
/* 101BC 8000F5BC 00084103 */  sra        $t0, $t0, 4
/* 101C0 8000F5C0 00031880 */  sll        $v1, $v1, 2
/* 101C4 8000F5C4 00084080 */  sll        $t0, $t0, 2
/* 101C8 8000F5C8 0143C821 */  addu       $t9, $t2, $v1
/* 101CC 8000F5CC 01486021 */  addu       $t4, $t2, $t0
/* 101D0 8000F5D0 C72E0000 */  lwc1       $f14, ($t9)
/* 101D4 8000F5D4 C5920000 */  lwc1       $f18, ($t4)
/* 101D8 8000F5D8 C4E60000 */  lwc1       $f6, ($a3)
/* 101DC 8000F5DC 3C098007 */  lui        $t1, 0x8007
/* 101E0 8000F5E0 46127102 */  mul.s      $f4, $f14, $f18
/* 101E4 8000F5E4 94C20000 */  lhu        $v0, ($a2)
/* 101E8 8000F5E8 252997F0 */  addiu      $t1, $t1, -0x6810
/* 101EC 8000F5EC 01285821 */  addu       $t3, $t1, $t0
/* 101F0 8000F5F0 C5700000 */  lwc1       $f16, ($t3)
/* 101F4 8000F5F4 00021103 */  sra        $v0, $v0, 4
/* 101F8 8000F5F8 00021080 */  sll        $v0, $v0, 2
/* 101FC 8000F5FC 46062202 */  mul.s      $f8, $f4, $f6
/* 10200 8000F600 01227021 */  addu       $t6, $t1, $v0
/* 10204 8000F604 01427821 */  addu       $t7, $t2, $v0
/* 10208 8000F608 46107282 */  mul.s      $f10, $f14, $f16
/* 1020C 8000F60C 0123C021 */  addu       $t8, $t1, $v1
/* 10210 8000F610 C5C00000 */  lwc1       $f0, ($t6)
/* 10214 8000F614 C5E20000 */  lwc1       $f2, ($t7)
/* 10218 8000F618 C70C0000 */  lwc1       $f12, ($t8)
/* 1021C 8000F61C E4880000 */  swc1       $f8, ($a0)
/* 10220 8000F620 C4E40000 */  lwc1       $f4, ($a3)
/* 10224 8000F624 46006207 */  neg.s      $f8, $f12
/* 10228 8000F628 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1022C 8000F62C 46045182 */  mul.s      $f6, $f10, $f4
/* 10230 8000F630 3C013F80 */  lui        $at, 0x3f80
/* 10234 8000F634 E4860004 */  swc1       $f6, 4($a0)
/* 10238 8000F638 C4EA0000 */  lwc1       $f10, ($a3)
/* 1023C 8000F63C 44803000 */  mtc1       $zero, $f6
/* 10240 8000F640 460A4102 */  mul.s      $f4, $f8, $f10
/* 10244 8000F644 E486000C */  swc1       $f6, 0xc($a0)
/* 10248 8000F648 460C0202 */  mul.s      $f8, $f0, $f12
/* 1024C 8000F64C E4840008 */  swc1       $f4, 8($a0)
/* 10250 8000F650 E7A80004 */  swc1       $f8, 4($sp)
/* 10254 8000F654 C7AA0004 */  lwc1       $f10, 4($sp)
/* 10258 8000F658 46125102 */  mul.s      $f4, $f10, $f18
/* 1025C 8000F65C C4EA0004 */  lwc1       $f10, 4($a3)
/* 10260 8000F660 46101182 */  mul.s      $f6, $f2, $f16
/* 10264 8000F664 46062201 */  sub.s      $f8, $f4, $f6
/* 10268 8000F668 460A4102 */  mul.s      $f4, $f8, $f10
/* 1026C 8000F66C E4840010 */  swc1       $f4, 0x10($a0)
/* 10270 8000F670 C7A60004 */  lwc1       $f6, 4($sp)
/* 10274 8000F674 46103202 */  mul.s      $f8, $f6, $f16
/* 10278 8000F678 C4E60004 */  lwc1       $f6, 4($a3)
/* 1027C 8000F67C 46121282 */  mul.s      $f10, $f2, $f18
/* 10280 8000F680 460A4100 */  add.s      $f4, $f8, $f10
/* 10284 8000F684 46062202 */  mul.s      $f8, $f4, $f6
/* 10288 8000F688 E4880014 */  swc1       $f8, 0x14($a0)
/* 1028C 8000F68C 460E0282 */  mul.s      $f10, $f0, $f14
/* 10290 8000F690 C4E40004 */  lwc1       $f4, 4($a3)
/* 10294 8000F694 44804000 */  mtc1       $zero, $f8
/* 10298 8000F698 00000000 */  nop        
/* 1029C 8000F69C E488001C */  swc1       $f8, 0x1c($a0)
/* 102A0 8000F6A0 46045182 */  mul.s      $f6, $f10, $f4
/* 102A4 8000F6A4 00000000 */  nop        
/* 102A8 8000F6A8 460C1282 */  mul.s      $f10, $f2, $f12
/* 102AC 8000F6AC E4860018 */  swc1       $f6, 0x18($a0)
/* 102B0 8000F6B0 E7AA0000 */  swc1       $f10, ($sp)
/* 102B4 8000F6B4 C7A40000 */  lwc1       $f4, ($sp)
/* 102B8 8000F6B8 46122182 */  mul.s      $f6, $f4, $f18
/* 102BC 8000F6BC C4E40008 */  lwc1       $f4, 8($a3)
/* 102C0 8000F6C0 46100202 */  mul.s      $f8, $f0, $f16
/* 102C4 8000F6C4 46083280 */  add.s      $f10, $f6, $f8
/* 102C8 8000F6C8 46045182 */  mul.s      $f6, $f10, $f4
/* 102CC 8000F6CC E4860020 */  swc1       $f6, 0x20($a0)
/* 102D0 8000F6D0 C7A80000 */  lwc1       $f8, ($sp)
/* 102D4 8000F6D4 46104282 */  mul.s      $f10, $f8, $f16
/* 102D8 8000F6D8 C4E80008 */  lwc1       $f8, 8($a3)
/* 102DC 8000F6DC 46120102 */  mul.s      $f4, $f0, $f18
/* 102E0 8000F6E0 46045181 */  sub.s      $f6, $f10, $f4
/* 102E4 8000F6E4 46083282 */  mul.s      $f10, $f6, $f8
/* 102E8 8000F6E8 E48A0024 */  swc1       $f10, 0x24($a0)
/* 102EC 8000F6EC 460E1102 */  mul.s      $f4, $f2, $f14
/* 102F0 8000F6F0 C4E60008 */  lwc1       $f6, 8($a3)
/* 102F4 8000F6F4 44805000 */  mtc1       $zero, $f10
/* 102F8 8000F6F8 00000000 */  nop        
/* 102FC 8000F6FC E48A002C */  swc1       $f10, 0x2c($a0)
/* 10300 8000F700 44815000 */  mtc1       $at, $f10
/* 10304 8000F704 46062202 */  mul.s      $f8, $f4, $f6
/* 10308 8000F708 E4880028 */  swc1       $f8, 0x28($a0)
/* 1030C 8000F70C C4A40000 */  lwc1       $f4, ($a1)
/* 10310 8000F710 E4840030 */  swc1       $f4, 0x30($a0)
/* 10314 8000F714 C4A60004 */  lwc1       $f6, 4($a1)
/* 10318 8000F718 E4860034 */  swc1       $f6, 0x34($a0)
/* 1031C 8000F71C C4A80008 */  lwc1       $f8, 8($a1)
/* 10320 8000F720 27BD0020 */  addiu      $sp, $sp, 0x20
/* 10324 8000F724 E48A003C */  swc1       $f10, 0x3c($a0)
/* 10328 8000F728 03E00008 */  jr         $ra
/* 1032C 8000F72C E4880038 */   swc1      $f8, 0x38($a0)

glabel func_8000F730
/* 10330 8000F730 94C30002 */  lhu        $v1, 2($a2)
/* 10334 8000F734 94C80004 */  lhu        $t0, 4($a2)
/* 10338 8000F738 3C0A8007 */  lui        $t2, 0x8007
/* 1033C 8000F73C 254AA7F0 */  addiu      $t2, $t2, -0x5810
/* 10340 8000F740 00031903 */  sra        $v1, $v1, 4
/* 10344 8000F744 00084103 */  sra        $t0, $t0, 4
/* 10348 8000F748 00031880 */  sll        $v1, $v1, 2
/* 1034C 8000F74C 00084080 */  sll        $t0, $t0, 2
/* 10350 8000F750 0143C821 */  addu       $t9, $t2, $v1
/* 10354 8000F754 01486021 */  addu       $t4, $t2, $t0
/* 10358 8000F758 C72E0000 */  lwc1       $f14, ($t9)
/* 1035C 8000F75C C5920000 */  lwc1       $f18, ($t4)
/* 10360 8000F760 94C20000 */  lhu        $v0, ($a2)
/* 10364 8000F764 3C098007 */  lui        $t1, 0x8007
/* 10368 8000F768 46127102 */  mul.s      $f4, $f14, $f18
/* 1036C 8000F76C 252997F0 */  addiu      $t1, $t1, -0x6810
/* 10370 8000F770 01285821 */  addu       $t3, $t1, $t0
/* 10374 8000F774 C5700000 */  lwc1       $f16, ($t3)
/* 10378 8000F778 00021103 */  sra        $v0, $v0, 4
/* 1037C 8000F77C 00021080 */  sll        $v0, $v0, 2
/* 10380 8000F780 01227021 */  addu       $t6, $t1, $v0
/* 10384 8000F784 0123C021 */  addu       $t8, $t1, $v1
/* 10388 8000F788 46107182 */  mul.s      $f6, $f14, $f16
/* 1038C 8000F78C C5C00000 */  lwc1       $f0, ($t6)
/* 10390 8000F790 C70C0000 */  lwc1       $f12, ($t8)
/* 10394 8000F794 01427821 */  addu       $t7, $t2, $v0
/* 10398 8000F798 C5E20000 */  lwc1       $f2, ($t7)
/* 1039C 8000F79C E4840000 */  swc1       $f4, ($a0)
/* 103A0 8000F7A0 460C0102 */  mul.s      $f4, $f0, $f12
/* 103A4 8000F7A4 44805000 */  mtc1       $zero, $f10
/* 103A8 8000F7A8 46006207 */  neg.s      $f8, $f12
/* 103AC 8000F7AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 103B0 8000F7B0 E4860004 */  swc1       $f6, 4($a0)
/* 103B4 8000F7B4 E4880008 */  swc1       $f8, 8($a0)
/* 103B8 8000F7B8 E48A000C */  swc1       $f10, 0xc($a0)
/* 103BC 8000F7BC E7A40004 */  swc1       $f4, 4($sp)
/* 103C0 8000F7C0 C7A60004 */  lwc1       $f6, 4($sp)
/* 103C4 8000F7C4 3C013F80 */  lui        $at, 0x3f80
/* 103C8 8000F7C8 46123202 */  mul.s      $f8, $f6, $f18
/* 103CC 8000F7CC 00000000 */  nop        
/* 103D0 8000F7D0 46101282 */  mul.s      $f10, $f2, $f16
/* 103D4 8000F7D4 460A4101 */  sub.s      $f4, $f8, $f10
/* 103D8 8000F7D8 E4840010 */  swc1       $f4, 0x10($a0)
/* 103DC 8000F7DC C7A60004 */  lwc1       $f6, 4($sp)
/* 103E0 8000F7E0 46103202 */  mul.s      $f8, $f6, $f16
/* 103E4 8000F7E4 00000000 */  nop        
/* 103E8 8000F7E8 46121282 */  mul.s      $f10, $f2, $f18
/* 103EC 8000F7EC 460A4100 */  add.s      $f4, $f8, $f10
/* 103F0 8000F7F0 460E0182 */  mul.s      $f6, $f0, $f14
/* 103F4 8000F7F4 44804000 */  mtc1       $zero, $f8
/* 103F8 8000F7F8 460C1282 */  mul.s      $f10, $f2, $f12
/* 103FC 8000F7FC E4840014 */  swc1       $f4, 0x14($a0)
/* 10400 8000F800 E488001C */  swc1       $f8, 0x1c($a0)
/* 10404 8000F804 E4860018 */  swc1       $f6, 0x18($a0)
/* 10408 8000F808 E7AA0000 */  swc1       $f10, ($sp)
/* 1040C 8000F80C C7A40000 */  lwc1       $f4, ($sp)
/* 10410 8000F810 46122182 */  mul.s      $f6, $f4, $f18
/* 10414 8000F814 00000000 */  nop        
/* 10418 8000F818 46100202 */  mul.s      $f8, $f0, $f16
/* 1041C 8000F81C 46083280 */  add.s      $f10, $f6, $f8
/* 10420 8000F820 E48A0020 */  swc1       $f10, 0x20($a0)
/* 10424 8000F824 C7A40000 */  lwc1       $f4, ($sp)
/* 10428 8000F828 46102182 */  mul.s      $f6, $f4, $f16
/* 1042C 8000F82C 00000000 */  nop        
/* 10430 8000F830 46120202 */  mul.s      $f8, $f0, $f18
/* 10434 8000F834 46083281 */  sub.s      $f10, $f6, $f8
/* 10438 8000F838 460E1102 */  mul.s      $f4, $f2, $f14
/* 1043C 8000F83C 44803000 */  mtc1       $zero, $f6
/* 10440 8000F840 E48A0024 */  swc1       $f10, 0x24($a0)
/* 10444 8000F844 E486002C */  swc1       $f6, 0x2c($a0)
/* 10448 8000F848 E4840028 */  swc1       $f4, 0x28($a0)
/* 1044C 8000F84C C4EA0000 */  lwc1       $f10, ($a3)
/* 10450 8000F850 C4A80000 */  lwc1       $f8, ($a1)
/* 10454 8000F854 460A4102 */  mul.s      $f4, $f8, $f10
/* 10458 8000F858 E4840030 */  swc1       $f4, 0x30($a0)
/* 1045C 8000F85C C4E80004 */  lwc1       $f8, 4($a3)
/* 10460 8000F860 C4A60004 */  lwc1       $f6, 4($a1)
/* 10464 8000F864 46083282 */  mul.s      $f10, $f6, $f8
/* 10468 8000F868 E48A0034 */  swc1       $f10, 0x34($a0)
/* 1046C 8000F86C C4E60008 */  lwc1       $f6, 8($a3)
/* 10470 8000F870 C4A40008 */  lwc1       $f4, 8($a1)
/* 10474 8000F874 44815000 */  mtc1       $at, $f10
/* 10478 8000F878 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1047C 8000F87C 46062202 */  mul.s      $f8, $f4, $f6
/* 10480 8000F880 E48A003C */  swc1       $f10, 0x3c($a0)
/* 10484 8000F884 03E00008 */  jr         $ra
/* 10488 8000F888 E4880038 */   swc1      $f8, 0x38($a0)

glabel func_8000F88C
/* 1048C 8000F88C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10490 8000F890 AFBF001C */  sw         $ra, 0x1c($sp)
/* 10494 8000F894 AFB00018 */  sw         $s0, 0x18($sp)
/* 10498 8000F898 C4C20000 */  lwc1       $f2, ($a2)
/* 1049C 8000F89C C4CE0004 */  lwc1       $f14, 4($a2)
/* 104A0 8000F8A0 C4C00008 */  lwc1       $f0, 8($a2)
/* 104A4 8000F8A4 46021102 */  mul.s      $f4, $f2, $f2
/* 104A8 8000F8A8 00C08025 */  or         $s0, $a2, $zero
/* 104AC 8000F8AC AFA70034 */  sw         $a3, 0x34($sp)
/* 104B0 8000F8B0 460E7182 */  mul.s      $f6, $f14, $f14
/* 104B4 8000F8B4 AFA5002C */  sw         $a1, 0x2c($sp)
/* 104B8 8000F8B8 AFA40028 */  sw         $a0, 0x28($sp)
/* 104BC 8000F8BC 46000282 */  mul.s      $f10, $f0, $f0
/* 104C0 8000F8C0 46062200 */  add.s      $f8, $f4, $f6
/* 104C4 8000F8C4 0C0173AC */  jal        func_8005CEB0
/* 104C8 8000F8C8 46085300 */   add.s     $f12, $f10, $f8
/* 104CC 8000F8CC C7A40038 */  lwc1       $f4, 0x38($sp)
/* 104D0 8000F8D0 C60E0010 */  lwc1       $f14, 0x10($s0)
/* 104D4 8000F8D4 C6100014 */  lwc1       $f16, 0x14($s0)
/* 104D8 8000F8D8 46040482 */  mul.s      $f18, $f0, $f4
/* 104DC 8000F8DC C6020018 */  lwc1       $f2, 0x18($s0)
/* 104E0 8000F8E0 460E7182 */  mul.s      $f6, $f14, $f14
/* 104E4 8000F8E4 00000000 */  nop        
/* 104E8 8000F8E8 46108282 */  mul.s      $f10, $f16, $f16
/* 104EC 8000F8EC E7B20024 */  swc1       $f18, 0x24($sp)
/* 104F0 8000F8F0 46021102 */  mul.s      $f4, $f2, $f2
/* 104F4 8000F8F4 460A3200 */  add.s      $f8, $f6, $f10
/* 104F8 8000F8F8 0C0173AC */  jal        func_8005CEB0
/* 104FC 8000F8FC 46082300 */   add.s     $f12, $f4, $f8
/* 10500 8000F900 C7A60038 */  lwc1       $f6, 0x38($sp)
/* 10504 8000F904 46060282 */  mul.s      $f10, $f0, $f6
/* 10508 8000F908 E7AA0020 */  swc1       $f10, 0x20($sp)
/* 1050C 8000F90C C60E0020 */  lwc1       $f14, 0x20($s0)
/* 10510 8000F910 C6100024 */  lwc1       $f16, 0x24($s0)
/* 10514 8000F914 C6020028 */  lwc1       $f2, 0x28($s0)
/* 10518 8000F918 460E7102 */  mul.s      $f4, $f14, $f14
/* 1051C 8000F91C 00000000 */  nop        
/* 10520 8000F920 46108202 */  mul.s      $f8, $f16, $f16
/* 10524 8000F924 46082180 */  add.s      $f6, $f4, $f8
/* 10528 8000F928 46021282 */  mul.s      $f10, $f2, $f2
/* 1052C 8000F92C 0C0173AC */  jal        func_8005CEB0
/* 10530 8000F930 46065300 */   add.s     $f12, $f10, $f6
/* 10534 8000F934 8FA5002C */  lw         $a1, 0x2c($sp)
/* 10538 8000F938 C7A40038 */  lwc1       $f4, 0x38($sp)
/* 1053C 8000F93C C7B20024 */  lwc1       $f18, 0x24($sp)
/* 10540 8000F940 C4A80000 */  lwc1       $f8, ($a1)
/* 10544 8000F944 46040082 */  mul.s      $f2, $f0, $f4
/* 10548 8000F948 8FA40028 */  lw         $a0, 0x28($sp)
/* 1054C 8000F94C 8FA70034 */  lw         $a3, 0x34($sp)
/* 10550 8000F950 46124282 */  mul.s      $f10, $f8, $f18
/* 10554 8000F954 C7AC0020 */  lwc1       $f12, 0x20($sp)
/* 10558 8000F958 44807000 */  mtc1       $zero, $f14
/* 1055C 8000F95C 3C013F80 */  lui        $at, 0x3f80
/* 10560 8000F960 E48A0000 */  swc1       $f10, ($a0)
/* 10564 8000F964 C4A60010 */  lwc1       $f6, 0x10($a1)
/* 10568 8000F968 46123102 */  mul.s      $f4, $f6, $f18
/* 1056C 8000F96C E4840004 */  swc1       $f4, 4($a0)
/* 10570 8000F970 C4A80020 */  lwc1       $f8, 0x20($a1)
/* 10574 8000F974 E48E000C */  swc1       $f14, 0xc($a0)
/* 10578 8000F978 46124282 */  mul.s      $f10, $f8, $f18
/* 1057C 8000F97C E48A0008 */  swc1       $f10, 8($a0)
/* 10580 8000F980 C4A60004 */  lwc1       $f6, 4($a1)
/* 10584 8000F984 460C3102 */  mul.s      $f4, $f6, $f12
/* 10588 8000F988 E4840010 */  swc1       $f4, 0x10($a0)
/* 1058C 8000F98C C4A80014 */  lwc1       $f8, 0x14($a1)
/* 10590 8000F990 460C4282 */  mul.s      $f10, $f8, $f12
/* 10594 8000F994 E48A0014 */  swc1       $f10, 0x14($a0)
/* 10598 8000F998 C4A60024 */  lwc1       $f6, 0x24($a1)
/* 1059C 8000F99C E48E001C */  swc1       $f14, 0x1c($a0)
/* 105A0 8000F9A0 460C3102 */  mul.s      $f4, $f6, $f12
/* 105A4 8000F9A4 E4840018 */  swc1       $f4, 0x18($a0)
/* 105A8 8000F9A8 C4A80008 */  lwc1       $f8, 8($a1)
/* 105AC 8000F9AC 46024282 */  mul.s      $f10, $f8, $f2
/* 105B0 8000F9B0 E48A0020 */  swc1       $f10, 0x20($a0)
/* 105B4 8000F9B4 C4A60018 */  lwc1       $f6, 0x18($a1)
/* 105B8 8000F9B8 46023102 */  mul.s      $f4, $f6, $f2
/* 105BC 8000F9BC E4840024 */  swc1       $f4, 0x24($a0)
/* 105C0 8000F9C0 C4A80028 */  lwc1       $f8, 0x28($a1)
/* 105C4 8000F9C4 E48E002C */  swc1       $f14, 0x2c($a0)
/* 105C8 8000F9C8 46024282 */  mul.s      $f10, $f8, $f2
/* 105CC 8000F9CC E48A0028 */  swc1       $f10, 0x28($a0)
/* 105D0 8000F9D0 C6060000 */  lwc1       $f6, ($s0)
/* 105D4 8000F9D4 C4E40000 */  lwc1       $f4, ($a3)
/* 105D8 8000F9D8 C60A0010 */  lwc1       $f10, 0x10($s0)
/* 105DC 8000F9DC 46043202 */  mul.s      $f8, $f6, $f4
/* 105E0 8000F9E0 C4E60004 */  lwc1       $f6, 4($a3)
/* 105E4 8000F9E4 46065102 */  mul.s      $f4, $f10, $f6
/* 105E8 8000F9E8 C6060020 */  lwc1       $f6, 0x20($s0)
/* 105EC 8000F9EC 46044280 */  add.s      $f10, $f8, $f4
/* 105F0 8000F9F0 C4E80008 */  lwc1       $f8, 8($a3)
/* 105F4 8000F9F4 46083102 */  mul.s      $f4, $f6, $f8
/* 105F8 8000F9F8 C6080030 */  lwc1       $f8, 0x30($s0)
/* 105FC 8000F9FC 46045180 */  add.s      $f6, $f10, $f4
/* 10600 8000FA00 46064280 */  add.s      $f10, $f8, $f6
/* 10604 8000FA04 E48A0030 */  swc1       $f10, 0x30($a0)
/* 10608 8000FA08 C6040004 */  lwc1       $f4, 4($s0)
/* 1060C 8000FA0C C4E80000 */  lwc1       $f8, ($a3)
/* 10610 8000FA10 C60A0014 */  lwc1       $f10, 0x14($s0)
/* 10614 8000FA14 46082182 */  mul.s      $f6, $f4, $f8
/* 10618 8000FA18 C4E40004 */  lwc1       $f4, 4($a3)
/* 1061C 8000FA1C 46045202 */  mul.s      $f8, $f10, $f4
/* 10620 8000FA20 C6040024 */  lwc1       $f4, 0x24($s0)
/* 10624 8000FA24 46083280 */  add.s      $f10, $f6, $f8
/* 10628 8000FA28 C4E60008 */  lwc1       $f6, 8($a3)
/* 1062C 8000FA2C 46062202 */  mul.s      $f8, $f4, $f6
/* 10630 8000FA30 C6060034 */  lwc1       $f6, 0x34($s0)
/* 10634 8000FA34 46085100 */  add.s      $f4, $f10, $f8
/* 10638 8000FA38 46043280 */  add.s      $f10, $f6, $f4
/* 1063C 8000FA3C E48A0034 */  swc1       $f10, 0x34($a0)
/* 10640 8000FA40 C6080008 */  lwc1       $f8, 8($s0)
/* 10644 8000FA44 C4E60000 */  lwc1       $f6, ($a3)
/* 10648 8000FA48 C60A0018 */  lwc1       $f10, 0x18($s0)
/* 1064C 8000FA4C 46064102 */  mul.s      $f4, $f8, $f6
/* 10650 8000FA50 C4E80004 */  lwc1       $f8, 4($a3)
/* 10654 8000FA54 46085182 */  mul.s      $f6, $f10, $f8
/* 10658 8000FA58 C6080028 */  lwc1       $f8, 0x28($s0)
/* 1065C 8000FA5C 46062280 */  add.s      $f10, $f4, $f6
/* 10660 8000FA60 C4E40008 */  lwc1       $f4, 8($a3)
/* 10664 8000FA64 46044182 */  mul.s      $f6, $f8, $f4
/* 10668 8000FA68 C6040038 */  lwc1       $f4, 0x38($s0)
/* 1066C 8000FA6C 46065200 */  add.s      $f8, $f10, $f6
/* 10670 8000FA70 44813000 */  mtc1       $at, $f6
/* 10674 8000FA74 46082280 */  add.s      $f10, $f4, $f8
/* 10678 8000FA78 E486003C */  swc1       $f6, 0x3c($a0)
/* 1067C 8000FA7C E48A0038 */  swc1       $f10, 0x38($a0)
/* 10680 8000FA80 8FBF001C */  lw         $ra, 0x1c($sp)
/* 10684 8000FA84 8FB00018 */  lw         $s0, 0x18($sp)
/* 10688 8000FA88 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1068C 8000FA8C 03E00008 */  jr         $ra
/* 10690 8000FA90 00000000 */   nop       

glabel func_8000FA94
/* 10694 8000FA94 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 10698 8000FA98 AFA70054 */  sw         $a3, 0x54($sp)
/* 1069C 8000FA9C 97A20056 */  lhu        $v0, 0x56($sp)
/* 106A0 8000FAA0 AFB10018 */  sw         $s1, 0x18($sp)
/* 106A4 8000FAA4 00A08825 */  or         $s1, $a1, $zero
/* 106A8 8000FAA8 00021103 */  sra        $v0, $v0, 4
/* 106AC 8000FAAC 00021080 */  sll        $v0, $v0, 2
/* 106B0 8000FAB0 AFB00014 */  sw         $s0, 0x14($sp)
/* 106B4 8000FAB4 3C058007 */  lui        $a1, 0x8007
/* 106B8 8000FAB8 3C078007 */  lui        $a3, 0x8007
/* 106BC 8000FABC 00808025 */  or         $s0, $a0, $zero
/* 106C0 8000FAC0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 106C4 8000FAC4 AFA60050 */  sw         $a2, 0x50($sp)
/* 106C8 8000FAC8 00E23821 */  addu       $a3, $a3, $v0
/* 106CC 8000FACC 00A22821 */  addu       $a1, $a1, $v0
/* 106D0 8000FAD0 8CA597F0 */  lw         $a1, -0x6810($a1)
/* 106D4 8000FAD4 8CE7A7F0 */  lw         $a3, -0x5810($a3)
/* 106D8 8000FAD8 24060000 */  addiu      $a2, $zero, 0
/* 106DC 8000FADC 0C003A23 */  jal        func_8000E88C
/* 106E0 8000FAE0 27A4003C */   addiu     $a0, $sp, 0x3c
/* 106E4 8000FAE4 0C003ABD */  jal        func_8000EAF4
/* 106E8 8000FAE8 02202025 */   or        $a0, $s1, $zero
/* 106EC 8000FAEC 27A40030 */  addiu      $a0, $sp, 0x30
/* 106F0 8000FAF0 02202825 */  or         $a1, $s1, $zero
/* 106F4 8000FAF4 0C003AA1 */  jal        func_8000EA84
/* 106F8 8000FAF8 27A6003C */   addiu     $a2, $sp, 0x3c
/* 106FC 8000FAFC 0C003ABD */  jal        func_8000EAF4
/* 10700 8000FB00 27A40030 */   addiu     $a0, $sp, 0x30
/* 10704 8000FB04 27A40024 */  addiu      $a0, $sp, 0x24
/* 10708 8000FB08 27A50030 */  addiu      $a1, $sp, 0x30
/* 1070C 8000FB0C 0C003AA1 */  jal        func_8000EA84
/* 10710 8000FB10 02203025 */   or        $a2, $s1, $zero
/* 10714 8000FB14 0C003ABD */  jal        func_8000EAF4
/* 10718 8000FB18 27A40024 */   addiu     $a0, $sp, 0x24
/* 1071C 8000FB1C C7A40030 */  lwc1       $f4, 0x30($sp)
/* 10720 8000FB20 8FA20050 */  lw         $v0, 0x50($sp)
/* 10724 8000FB24 44800000 */  mtc1       $zero, $f0
/* 10728 8000FB28 E6040000 */  swc1       $f4, ($s0)
/* 1072C 8000FB2C C7A60034 */  lwc1       $f6, 0x34($sp)
/* 10730 8000FB30 3C013F80 */  lui        $at, 0x3f80
/* 10734 8000FB34 E6060004 */  swc1       $f6, 4($s0)
/* 10738 8000FB38 C7A80038 */  lwc1       $f8, 0x38($sp)
/* 1073C 8000FB3C E6080008 */  swc1       $f8, 8($s0)
/* 10740 8000FB40 C44A0000 */  lwc1       $f10, ($v0)
/* 10744 8000FB44 E60A0030 */  swc1       $f10, 0x30($s0)
/* 10748 8000FB48 C6300000 */  lwc1       $f16, ($s1)
/* 1074C 8000FB4C E6100010 */  swc1       $f16, 0x10($s0)
/* 10750 8000FB50 C6320004 */  lwc1       $f18, 4($s1)
/* 10754 8000FB54 E6120014 */  swc1       $f18, 0x14($s0)
/* 10758 8000FB58 C6240008 */  lwc1       $f4, 8($s1)
/* 1075C 8000FB5C E6040018 */  swc1       $f4, 0x18($s0)
/* 10760 8000FB60 C4460004 */  lwc1       $f6, 4($v0)
/* 10764 8000FB64 44812000 */  mtc1       $at, $f4
/* 10768 8000FB68 E6060034 */  swc1       $f6, 0x34($s0)
/* 1076C 8000FB6C C7A80024 */  lwc1       $f8, 0x24($sp)
/* 10770 8000FB70 E6080020 */  swc1       $f8, 0x20($s0)
/* 10774 8000FB74 C7AA0028 */  lwc1       $f10, 0x28($sp)
/* 10778 8000FB78 E60A0024 */  swc1       $f10, 0x24($s0)
/* 1077C 8000FB7C C7B0002C */  lwc1       $f16, 0x2c($sp)
/* 10780 8000FB80 E6100028 */  swc1       $f16, 0x28($s0)
/* 10784 8000FB84 C4520008 */  lwc1       $f18, 8($v0)
/* 10788 8000FB88 E600000C */  swc1       $f0, 0xc($s0)
/* 1078C 8000FB8C E600001C */  swc1       $f0, 0x1c($s0)
/* 10790 8000FB90 E600002C */  swc1       $f0, 0x2c($s0)
/* 10794 8000FB94 E604003C */  swc1       $f4, 0x3c($s0)
/* 10798 8000FB98 E6120038 */  swc1       $f18, 0x38($s0)
/* 1079C 8000FB9C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 107A0 8000FBA0 8FB10018 */  lw         $s1, 0x18($sp)
/* 107A4 8000FBA4 8FB00014 */  lw         $s0, 0x14($sp)
/* 107A8 8000FBA8 03E00008 */  jr         $ra
/* 107AC 8000FBAC 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8000FBB0
/* 107B0 8000FBB0 C4A00000 */  lwc1       $f0, ($a1)
/* 107B4 8000FBB4 C4C40000 */  lwc1       $f4, ($a2)
/* 107B8 8000FBB8 C4A20004 */  lwc1       $f2, 4($a1)
/* 107BC 8000FBBC C4C80010 */  lwc1       $f8, 0x10($a2)
/* 107C0 8000FBC0 46040182 */  mul.s      $f6, $f0, $f4
/* 107C4 8000FBC4 C4AC0008 */  lwc1       $f12, 8($a1)
/* 107C8 8000FBC8 C4D20020 */  lwc1       $f18, 0x20($a2)
/* 107CC 8000FBCC 46081282 */  mul.s      $f10, $f2, $f8
/* 107D0 8000FBD0 3C013F80 */  lui        $at, 0x3f80
/* 107D4 8000FBD4 460C9102 */  mul.s      $f4, $f18, $f12
/* 107D8 8000FBD8 460A3400 */  add.s      $f16, $f6, $f10
/* 107DC 8000FBDC 46102200 */  add.s      $f8, $f4, $f16
/* 107E0 8000FBE0 E4880000 */  swc1       $f8, ($a0)
/* 107E4 8000FBE4 C4C60004 */  lwc1       $f6, 4($a2)
/* 107E8 8000FBE8 C4D20014 */  lwc1       $f18, 0x14($a2)
/* 107EC 8000FBEC C4C80024 */  lwc1       $f8, 0x24($a2)
/* 107F0 8000FBF0 46060282 */  mul.s      $f10, $f0, $f6
/* 107F4 8000FBF4 00000000 */  nop        
/* 107F8 8000FBF8 46121102 */  mul.s      $f4, $f2, $f18
/* 107FC 8000FBFC 46045400 */  add.s      $f16, $f10, $f4
/* 10800 8000FC00 460C4182 */  mul.s      $f6, $f8, $f12
/* 10804 8000FC04 46103480 */  add.s      $f18, $f6, $f16
/* 10808 8000FC08 E4920004 */  swc1       $f18, 4($a0)
/* 1080C 8000FC0C C4CA0008 */  lwc1       $f10, 8($a2)
/* 10810 8000FC10 C4C80018 */  lwc1       $f8, 0x18($a2)
/* 10814 8000FC14 C4D20028 */  lwc1       $f18, 0x28($a2)
/* 10818 8000FC18 460A0102 */  mul.s      $f4, $f0, $f10
/* 1081C 8000FC1C 00000000 */  nop        
/* 10820 8000FC20 46081182 */  mul.s      $f6, $f2, $f8
/* 10824 8000FC24 46062400 */  add.s      $f16, $f4, $f6
/* 10828 8000FC28 460C9282 */  mul.s      $f10, $f18, $f12
/* 1082C 8000FC2C 46105200 */  add.s      $f8, $f10, $f16
/* 10830 8000FC30 E4880008 */  swc1       $f8, 8($a0)
/* 10834 8000FC34 C4A00010 */  lwc1       $f0, 0x10($a1)
/* 10838 8000FC38 C4C40000 */  lwc1       $f4, ($a2)
/* 1083C 8000FC3C C4A20014 */  lwc1       $f2, 0x14($a1)
/* 10840 8000FC40 C4D20010 */  lwc1       $f18, 0x10($a2)
/* 10844 8000FC44 46040182 */  mul.s      $f6, $f0, $f4
/* 10848 8000FC48 C4AC0018 */  lwc1       $f12, 0x18($a1)
/* 1084C 8000FC4C C4C80020 */  lwc1       $f8, 0x20($a2)
/* 10850 8000FC50 46121282 */  mul.s      $f10, $f2, $f18
/* 10854 8000FC54 460A3400 */  add.s      $f16, $f6, $f10
/* 10858 8000FC58 460C4102 */  mul.s      $f4, $f8, $f12
/* 1085C 8000FC5C 46102480 */  add.s      $f18, $f4, $f16
/* 10860 8000FC60 E4920010 */  swc1       $f18, 0x10($a0)
/* 10864 8000FC64 C4C60004 */  lwc1       $f6, 4($a2)
/* 10868 8000FC68 C4C80014 */  lwc1       $f8, 0x14($a2)
/* 1086C 8000FC6C C4D20024 */  lwc1       $f18, 0x24($a2)
/* 10870 8000FC70 46060282 */  mul.s      $f10, $f0, $f6
/* 10874 8000FC74 00000000 */  nop        
/* 10878 8000FC78 46081102 */  mul.s      $f4, $f2, $f8
/* 1087C 8000FC7C 46045400 */  add.s      $f16, $f10, $f4
/* 10880 8000FC80 460C9182 */  mul.s      $f6, $f18, $f12
/* 10884 8000FC84 46103200 */  add.s      $f8, $f6, $f16
/* 10888 8000FC88 E4880014 */  swc1       $f8, 0x14($a0)
/* 1088C 8000FC8C C4CA0008 */  lwc1       $f10, 8($a2)
/* 10890 8000FC90 C4D20018 */  lwc1       $f18, 0x18($a2)
/* 10894 8000FC94 C4C80028 */  lwc1       $f8, 0x28($a2)
/* 10898 8000FC98 460A0102 */  mul.s      $f4, $f0, $f10
/* 1089C 8000FC9C 00000000 */  nop        
/* 108A0 8000FCA0 46121182 */  mul.s      $f6, $f2, $f18
/* 108A4 8000FCA4 46062400 */  add.s      $f16, $f4, $f6
/* 108A8 8000FCA8 460C4282 */  mul.s      $f10, $f8, $f12
/* 108AC 8000FCAC 46105480 */  add.s      $f18, $f10, $f16
/* 108B0 8000FCB0 E4920018 */  swc1       $f18, 0x18($a0)
/* 108B4 8000FCB4 C4A00020 */  lwc1       $f0, 0x20($a1)
/* 108B8 8000FCB8 C4C40000 */  lwc1       $f4, ($a2)
/* 108BC 8000FCBC C4A20024 */  lwc1       $f2, 0x24($a1)
/* 108C0 8000FCC0 C4C80010 */  lwc1       $f8, 0x10($a2)
/* 108C4 8000FCC4 46040182 */  mul.s      $f6, $f0, $f4
/* 108C8 8000FCC8 C4AC0028 */  lwc1       $f12, 0x28($a1)
/* 108CC 8000FCCC C4D20020 */  lwc1       $f18, 0x20($a2)
/* 108D0 8000FCD0 46081282 */  mul.s      $f10, $f2, $f8
/* 108D4 8000FCD4 460A3400 */  add.s      $f16, $f6, $f10
/* 108D8 8000FCD8 460C9102 */  mul.s      $f4, $f18, $f12
/* 108DC 8000FCDC 46102200 */  add.s      $f8, $f4, $f16
/* 108E0 8000FCE0 E4880020 */  swc1       $f8, 0x20($a0)
/* 108E4 8000FCE4 C4C60004 */  lwc1       $f6, 4($a2)
/* 108E8 8000FCE8 C4D20014 */  lwc1       $f18, 0x14($a2)
/* 108EC 8000FCEC C4C80024 */  lwc1       $f8, 0x24($a2)
/* 108F0 8000FCF0 46060282 */  mul.s      $f10, $f0, $f6
/* 108F4 8000FCF4 00000000 */  nop        
/* 108F8 8000FCF8 46121102 */  mul.s      $f4, $f2, $f18
/* 108FC 8000FCFC 46045400 */  add.s      $f16, $f10, $f4
/* 10900 8000FD00 460C4182 */  mul.s      $f6, $f8, $f12
/* 10904 8000FD04 46103480 */  add.s      $f18, $f6, $f16
/* 10908 8000FD08 E4920024 */  swc1       $f18, 0x24($a0)
/* 1090C 8000FD0C C4CA0008 */  lwc1       $f10, 8($a2)
/* 10910 8000FD10 C4C80018 */  lwc1       $f8, 0x18($a2)
/* 10914 8000FD14 C4D20028 */  lwc1       $f18, 0x28($a2)
/* 10918 8000FD18 460A0102 */  mul.s      $f4, $f0, $f10
/* 1091C 8000FD1C 00000000 */  nop        
/* 10920 8000FD20 46081182 */  mul.s      $f6, $f2, $f8
/* 10924 8000FD24 46062400 */  add.s      $f16, $f4, $f6
/* 10928 8000FD28 460C9282 */  mul.s      $f10, $f18, $f12
/* 1092C 8000FD2C 46105200 */  add.s      $f8, $f10, $f16
/* 10930 8000FD30 E4880028 */  swc1       $f8, 0x28($a0)
/* 10934 8000FD34 C4A00030 */  lwc1       $f0, 0x30($a1)
/* 10938 8000FD38 C4C40000 */  lwc1       $f4, ($a2)
/* 1093C 8000FD3C C4A20034 */  lwc1       $f2, 0x34($a1)
/* 10940 8000FD40 C4D20010 */  lwc1       $f18, 0x10($a2)
/* 10944 8000FD44 46040182 */  mul.s      $f6, $f0, $f4
/* 10948 8000FD48 C4AC0038 */  lwc1       $f12, 0x38($a1)
/* 1094C 8000FD4C C4C80020 */  lwc1       $f8, 0x20($a2)
/* 10950 8000FD50 46121282 */  mul.s      $f10, $f2, $f18
/* 10954 8000FD54 460A3400 */  add.s      $f16, $f6, $f10
/* 10958 8000FD58 46086102 */  mul.s      $f4, $f12, $f8
/* 1095C 8000FD5C C4C60030 */  lwc1       $f6, 0x30($a2)
/* 10960 8000FD60 46048480 */  add.s      $f18, $f16, $f4
/* 10964 8000FD64 46123280 */  add.s      $f10, $f6, $f18
/* 10968 8000FD68 E48A0030 */  swc1       $f10, 0x30($a0)
/* 1096C 8000FD6C C4C80004 */  lwc1       $f8, 4($a2)
/* 10970 8000FD70 C4C40014 */  lwc1       $f4, 0x14($a2)
/* 10974 8000FD74 C4CA0024 */  lwc1       $f10, 0x24($a2)
/* 10978 8000FD78 46080402 */  mul.s      $f16, $f0, $f8
/* 1097C 8000FD7C 00000000 */  nop        
/* 10980 8000FD80 46041182 */  mul.s      $f6, $f2, $f4
/* 10984 8000FD84 46068480 */  add.s      $f18, $f16, $f6
/* 10988 8000FD88 460A6202 */  mul.s      $f8, $f12, $f10
/* 1098C 8000FD8C C4D00034 */  lwc1       $f16, 0x34($a2)
/* 10990 8000FD90 46089100 */  add.s      $f4, $f18, $f8
/* 10994 8000FD94 46048180 */  add.s      $f6, $f16, $f4
/* 10998 8000FD98 E4860034 */  swc1       $f6, 0x34($a0)
/* 1099C 8000FD9C C4CA0008 */  lwc1       $f10, 8($a2)
/* 109A0 8000FDA0 C4C80018 */  lwc1       $f8, 0x18($a2)
/* 109A4 8000FDA4 C4C60028 */  lwc1       $f6, 0x28($a2)
/* 109A8 8000FDA8 460A0482 */  mul.s      $f18, $f0, $f10
/* 109AC 8000FDAC 44800000 */  mtc1       $zero, $f0
/* 109B0 8000FDB0 46081402 */  mul.s      $f16, $f2, $f8
/* 109B4 8000FDB4 46109100 */  add.s      $f4, $f18, $f16
/* 109B8 8000FDB8 46066282 */  mul.s      $f10, $f12, $f6
/* 109BC 8000FDBC C4D20038 */  lwc1       $f18, 0x38($a2)
/* 109C0 8000FDC0 44813000 */  mtc1       $at, $f6
/* 109C4 8000FDC4 E480000C */  swc1       $f0, 0xc($a0)
/* 109C8 8000FDC8 E480001C */  swc1       $f0, 0x1c($a0)
/* 109CC 8000FDCC E480002C */  swc1       $f0, 0x2c($a0)
/* 109D0 8000FDD0 E486003C */  swc1       $f6, 0x3c($a0)
/* 109D4 8000FDD4 460A2200 */  add.s      $f8, $f4, $f10
/* 109D8 8000FDD8 46089400 */  add.s      $f16, $f18, $f8
/* 109DC 8000FDDC 03E00008 */  jr         $ra
/* 109E0 8000FDE0 E4900038 */   swc1      $f16, 0x38($a0)

glabel func_8000FDE4
/* 109E4 8000FDE4 00801825 */  or         $v1, $a0, $zero
/* 109E8 8000FDE8 24040004 */  addiu      $a0, $zero, 4
/* 109EC 8000FDEC 00001025 */  or         $v0, $zero, $zero
/* 109F0 8000FDF0 00A03825 */  or         $a3, $a1, $zero
/* 109F4 8000FDF4 C4EE0000 */  lwc1       $f14, ($a3)
/* 109F8 8000FDF8 C4D00000 */  lwc1       $f16, ($a2)
/* 109FC 8000FDFC 24420002 */  addiu      $v0, $v0, 2
/* 10A00 8000FE00 46107482 */  mul.s      $f18, $f14, $f16
/* 10A04 8000FE04 50440023 */  beql       $v0, $a0, .L8000FE94
/* 10A08 8000FE08 E4720000 */   swc1      $f18, ($v1)
/* 10A0C 8000FE0C E4720000 */  swc1       $f18, ($v1)
.L8000FE10:
/* 10A10 8000FE10 C4F00010 */  lwc1       $f16, 0x10($a3)
/* 10A14 8000FE14 C4CE0004 */  lwc1       $f14, 4($a2)
/* 10A18 8000FE18 24420002 */  addiu      $v0, $v0, 2
/* 10A1C 8000FE1C 24630008 */  addiu      $v1, $v1, 8
/* 10A20 8000FE20 460E8382 */  mul.s      $f14, $f16, $f14
/* 10A24 8000FE24 24E70008 */  addiu      $a3, $a3, 8
/* 10A28 8000FE28 E46E0008 */  swc1       $f14, 8($v1)
/* 10A2C 8000FE2C C4EE0018 */  lwc1       $f14, 0x18($a3)
/* 10A30 8000FE30 C4D00008 */  lwc1       $f16, 8($a2)
/* 10A34 8000FE34 46107402 */  mul.s      $f16, $f14, $f16
/* 10A38 8000FE38 E4700018 */  swc1       $f16, 0x18($v1)
/* 10A3C 8000FE3C C4F00028 */  lwc1       $f16, 0x28($a3)
/* 10A40 8000FE40 E4700028 */  swc1       $f16, 0x28($v1)
/* 10A44 8000FE44 C4F0FFFC */  lwc1       $f16, -4($a3)
/* 10A48 8000FE48 C4CE0000 */  lwc1       $f14, ($a2)
/* 10A4C 8000FE4C 460E8382 */  mul.s      $f14, $f16, $f14
/* 10A50 8000FE50 E46EFFFC */  swc1       $f14, -4($v1)
/* 10A54 8000FE54 C4EE000C */  lwc1       $f14, 0xc($a3)
/* 10A58 8000FE58 C4D00004 */  lwc1       $f16, 4($a2)
/* 10A5C 8000FE5C 46107402 */  mul.s      $f16, $f14, $f16
/* 10A60 8000FE60 E470000C */  swc1       $f16, 0xc($v1)
/* 10A64 8000FE64 C4F0001C */  lwc1       $f16, 0x1c($a3)
/* 10A68 8000FE68 C4CE0008 */  lwc1       $f14, 8($a2)
/* 10A6C 8000FE6C 460E8382 */  mul.s      $f14, $f16, $f14
/* 10A70 8000FE70 E46E001C */  swc1       $f14, 0x1c($v1)
/* 10A74 8000FE74 C4EE002C */  lwc1       $f14, 0x2c($a3)
/* 10A78 8000FE78 E46E002C */  swc1       $f14, 0x2c($v1)
/* 10A7C 8000FE7C C4EE0000 */  lwc1       $f14, ($a3)
/* 10A80 8000FE80 C4D00000 */  lwc1       $f16, ($a2)
/* 10A84 8000FE84 46107482 */  mul.s      $f18, $f14, $f16
/* 10A88 8000FE88 5444FFE1 */  bnel       $v0, $a0, .L8000FE10
/* 10A8C 8000FE8C E4720000 */   swc1      $f18, ($v1)
/* 10A90 8000FE90 E4720000 */  swc1       $f18, ($v1)
.L8000FE94:
/* 10A94 8000FE94 C4CE0004 */  lwc1       $f14, 4($a2)
/* 10A98 8000FE98 C4F00010 */  lwc1       $f16, 0x10($a3)
/* 10A9C 8000FE9C 24630008 */  addiu      $v1, $v1, 8
/* 10AA0 8000FEA0 24E70008 */  addiu      $a3, $a3, 8
/* 10AA4 8000FEA4 460E8382 */  mul.s      $f14, $f16, $f14
/* 10AA8 8000FEA8 E46E0008 */  swc1       $f14, 8($v1)
/* 10AAC 8000FEAC C4D00008 */  lwc1       $f16, 8($a2)
/* 10AB0 8000FEB0 C4EE0018 */  lwc1       $f14, 0x18($a3)
/* 10AB4 8000FEB4 46107402 */  mul.s      $f16, $f14, $f16
/* 10AB8 8000FEB8 E4700018 */  swc1       $f16, 0x18($v1)
/* 10ABC 8000FEBC C4F00028 */  lwc1       $f16, 0x28($a3)
/* 10AC0 8000FEC0 E4700028 */  swc1       $f16, 0x28($v1)
/* 10AC4 8000FEC4 C4CE0000 */  lwc1       $f14, ($a2)
/* 10AC8 8000FEC8 C4F0FFFC */  lwc1       $f16, -4($a3)
/* 10ACC 8000FECC 460E8382 */  mul.s      $f14, $f16, $f14
/* 10AD0 8000FED0 E46EFFFC */  swc1       $f14, -4($v1)
/* 10AD4 8000FED4 C4D00004 */  lwc1       $f16, 4($a2)
/* 10AD8 8000FED8 C4EE000C */  lwc1       $f14, 0xc($a3)
/* 10ADC 8000FEDC 46107402 */  mul.s      $f16, $f14, $f16
/* 10AE0 8000FEE0 E470000C */  swc1       $f16, 0xc($v1)
/* 10AE4 8000FEE4 C4CE0008 */  lwc1       $f14, 8($a2)
/* 10AE8 8000FEE8 C4F0001C */  lwc1       $f16, 0x1c($a3)
/* 10AEC 8000FEEC 460E8382 */  mul.s      $f14, $f16, $f14
/* 10AF0 8000FEF0 E46E001C */  swc1       $f14, 0x1c($v1)
/* 10AF4 8000FEF4 C4EE002C */  lwc1       $f14, 0x2c($a3)
/* 10AF8 8000FEF8 E46E002C */  swc1       $f14, 0x2c($v1)
/* 10AFC 8000FEFC 03E00008 */  jr         $ra
/* 10B00 8000FF00 00000000 */   nop       

glabel func_8000FF04
/* 10B04 8000FF04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10B08 8000FF08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10B0C 8000FF0C AFA5001C */  sw         $a1, 0x1c($sp)
/* 10B10 8000FF10 C4820000 */  lwc1       $f2, ($a0)
/* 10B14 8000FF14 C48E0004 */  lwc1       $f14, 4($a0)
/* 10B18 8000FF18 C4800008 */  lwc1       $f0, 8($a0)
/* 10B1C 8000FF1C 46021102 */  mul.s      $f4, $f2, $f2
/* 10B20 8000FF20 AFA40018 */  sw         $a0, 0x18($sp)
/* 10B24 8000FF24 460E7182 */  mul.s      $f6, $f14, $f14
/* 10B28 8000FF28 46062200 */  add.s      $f8, $f4, $f6
/* 10B2C 8000FF2C 46000282 */  mul.s      $f10, $f0, $f0
/* 10B30 8000FF30 0C0173AC */  jal        func_8005CEB0
/* 10B34 8000FF34 46085300 */   add.s     $f12, $f10, $f8
/* 10B38 8000FF38 8FAE001C */  lw         $t6, 0x1c($sp)
/* 10B3C 8000FF3C 8FA40018 */  lw         $a0, 0x18($sp)
/* 10B40 8000FF40 E5C00000 */  swc1       $f0, ($t6)
/* 10B44 8000FF44 C48E0010 */  lwc1       $f14, 0x10($a0)
/* 10B48 8000FF48 C4900014 */  lwc1       $f16, 0x14($a0)
/* 10B4C 8000FF4C C4820018 */  lwc1       $f2, 0x18($a0)
/* 10B50 8000FF50 460E7482 */  mul.s      $f18, $f14, $f14
/* 10B54 8000FF54 00000000 */  nop        
/* 10B58 8000FF58 46108102 */  mul.s      $f4, $f16, $f16
/* 10B5C 8000FF5C 46049180 */  add.s      $f6, $f18, $f4
/* 10B60 8000FF60 46021282 */  mul.s      $f10, $f2, $f2
/* 10B64 8000FF64 0C0173AC */  jal        func_8005CEB0
/* 10B68 8000FF68 46065300 */   add.s     $f12, $f10, $f6
/* 10B6C 8000FF6C 8FAF001C */  lw         $t7, 0x1c($sp)
/* 10B70 8000FF70 8FA40018 */  lw         $a0, 0x18($sp)
/* 10B74 8000FF74 E5E00004 */  swc1       $f0, 4($t7)
/* 10B78 8000FF78 C48E0020 */  lwc1       $f14, 0x20($a0)
/* 10B7C 8000FF7C C4900024 */  lwc1       $f16, 0x24($a0)
/* 10B80 8000FF80 C4820028 */  lwc1       $f2, 0x28($a0)
/* 10B84 8000FF84 460E7202 */  mul.s      $f8, $f14, $f14
/* 10B88 8000FF88 00000000 */  nop        
/* 10B8C 8000FF8C 46108482 */  mul.s      $f18, $f16, $f16
/* 10B90 8000FF90 46124100 */  add.s      $f4, $f8, $f18
/* 10B94 8000FF94 46021282 */  mul.s      $f10, $f2, $f2
/* 10B98 8000FF98 0C0173AC */  jal        func_8005CEB0
/* 10B9C 8000FF9C 46045300 */   add.s     $f12, $f10, $f4
/* 10BA0 8000FFA0 8FB8001C */  lw         $t8, 0x1c($sp)
/* 10BA4 8000FFA4 E7000008 */  swc1       $f0, 8($t8)
/* 10BA8 8000FFA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10BAC 8000FFAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10BB0 8000FFB0 03E00008 */  jr         $ra
/* 10BB4 8000FFB4 00000000 */   nop       

glabel func_8000FFB8
/* 10BB8 8000FFB8 84AE0000 */  lh         $t6, ($a1)
/* 10BBC 8000FFBC 84AF0002 */  lh         $t7, 2($a1)
/* 10BC0 8000FFC0 84B80004 */  lh         $t8, 4($a1)
/* 10BC4 8000FFC4 448E2000 */  mtc1       $t6, $f4
/* 10BC8 8000FFC8 448F3000 */  mtc1       $t7, $f6
/* 10BCC 8000FFCC C48A0000 */  lwc1       $f10, ($a0)
/* 10BD0 8000FFD0 46802020 */  cvt.s.w    $f0, $f4
/* 10BD4 8000FFD4 44984000 */  mtc1       $t8, $f8
/* 10BD8 8000FFD8 C4920010 */  lwc1       $f18, 0x10($a0)
/* 10BDC 8000FFDC 468030A0 */  cvt.s.w    $f2, $f6
/* 10BE0 8000FFE0 460A0402 */  mul.s      $f16, $f0, $f10
/* 10BE4 8000FFE4 00000000 */  nop        
/* 10BE8 8000FFE8 46121102 */  mul.s      $f4, $f2, $f18
/* 10BEC 8000FFEC 46804320 */  cvt.s.w    $f12, $f8
/* 10BF0 8000FFF0 C4880020 */  lwc1       $f8, 0x20($a0)
/* 10BF4 8000FFF4 46048180 */  add.s      $f6, $f16, $f4
/* 10BF8 8000FFF8 46086282 */  mul.s      $f10, $f12, $f8
/* 10BFC 8000FFFC C4900030 */  lwc1       $f16, 0x30($a0)
/* 10C00 80010000 460A3480 */  add.s      $f18, $f6, $f10
/* 10C04 80010004 46128100 */  add.s      $f4, $f16, $f18
/* 10C08 80010008 4600220D */  trunc.w.s  $f8, $f4
/* 10C0C 8001000C 44084000 */  mfc1       $t0, $f8
/* 10C10 80010010 00000000 */  nop        
/* 10C14 80010014 A4A80000 */  sh         $t0, ($a1)
/* 10C18 80010018 C4860004 */  lwc1       $f6, 4($a0)
/* 10C1C 8001001C C4900014 */  lwc1       $f16, 0x14($a0)
/* 10C20 80010020 C4880024 */  lwc1       $f8, 0x24($a0)
/* 10C24 80010024 46060282 */  mul.s      $f10, $f0, $f6
/* 10C28 80010028 00000000 */  nop        
/* 10C2C 8001002C 46101482 */  mul.s      $f18, $f2, $f16
/* 10C30 80010030 46125100 */  add.s      $f4, $f10, $f18
/* 10C34 80010034 46086182 */  mul.s      $f6, $f12, $f8
/* 10C38 80010038 C48A0034 */  lwc1       $f10, 0x34($a0)
/* 10C3C 8001003C 46062400 */  add.s      $f16, $f4, $f6
/* 10C40 80010040 46105480 */  add.s      $f18, $f10, $f16
/* 10C44 80010044 4600920D */  trunc.w.s  $f8, $f18
/* 10C48 80010048 440A4000 */  mfc1       $t2, $f8
/* 10C4C 8001004C 00000000 */  nop        
/* 10C50 80010050 A4AA0002 */  sh         $t2, 2($a1)
/* 10C54 80010054 C4840008 */  lwc1       $f4, 8($a0)
/* 10C58 80010058 C48A0018 */  lwc1       $f10, 0x18($a0)
/* 10C5C 8001005C C4880028 */  lwc1       $f8, 0x28($a0)
/* 10C60 80010060 46040182 */  mul.s      $f6, $f0, $f4
/* 10C64 80010064 00000000 */  nop        
/* 10C68 80010068 460A1402 */  mul.s      $f16, $f2, $f10
/* 10C6C 8001006C 46103480 */  add.s      $f18, $f6, $f16
/* 10C70 80010070 46086102 */  mul.s      $f4, $f12, $f8
/* 10C74 80010074 C4860038 */  lwc1       $f6, 0x38($a0)
/* 10C78 80010078 46049280 */  add.s      $f10, $f18, $f4
/* 10C7C 8001007C 460A3400 */  add.s      $f16, $f6, $f10
/* 10C80 80010080 4600820D */  trunc.w.s  $f8, $f16
/* 10C84 80010084 440C4000 */  mfc1       $t4, $f8
/* 10C88 80010088 03E00008 */  jr         $ra
/* 10C8C 8001008C A4AC0004 */   sh        $t4, 4($a1)

glabel func_80010090
/* 10C90 80010090 3C014780 */  lui        $at, 0x4780
/* 10C94 80010094 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10C98 80010098 00801025 */  or         $v0, $a0, $zero
/* 10C9C 8001009C 24830020 */  addiu      $v1, $a0, 0x20
/* 10CA0 800100A0 00A03025 */  or         $a2, $a1, $zero
/* 10CA4 800100A4 44810000 */  mtc1       $at, $f0
/* 10CA8 800100A8 24050010 */  addiu      $a1, $zero, 0x10
/* 10CAC 800100AC 27A40014 */  addiu      $a0, $sp, 0x14
/* 10CB0 800100B0 00003825 */  or         $a3, $zero, $zero
/* 10CB4 800100B4 C4D00000 */  lwc1       $f16, ($a2)
/* 10CB8 800100B8 24E70004 */  addiu      $a3, $a3, 4
/* 10CBC 800100BC 46008482 */  mul.s      $f18, $f16, $f0
/* 10CC0 800100C0 50E5002F */  beql       $a3, $a1, .L80010180
/* 10CC4 800100C4 4600940D */   trunc.w.s $f16, $f18
/* 10CC8 800100C8 4600940D */  trunc.w.s  $f16, $f18
.L800100CC:
/* 10CCC 800100CC 24E70004 */  addiu      $a3, $a3, 4
/* 10CD0 800100D0 24C60010 */  addiu      $a2, $a2, 0x10
/* 10CD4 800100D4 24420008 */  addiu      $v0, $v0, 8
/* 10CD8 800100D8 440F8000 */  mfc1       $t7, $f16
/* 10CDC 800100DC 24630008 */  addiu      $v1, $v1, 8
/* 10CE0 800100E0 AFAF0014 */  sw         $t7, 0x14($sp)
/* 10CE4 800100E4 84980000 */  lh         $t8, ($a0)
/* 10CE8 800100E8 A458FFF8 */  sh         $t8, -8($v0)
/* 10CEC 800100EC 84990002 */  lh         $t9, 2($a0)
/* 10CF0 800100F0 A479FFF8 */  sh         $t9, -8($v1)
/* 10CF4 800100F4 C4D0FFF4 */  lwc1       $f16, -0xc($a2)
/* 10CF8 800100F8 46008402 */  mul.s      $f16, $f16, $f0
/* 10CFC 800100FC 4600840D */  trunc.w.s  $f16, $f16
/* 10D00 80010100 44098000 */  mfc1       $t1, $f16
/* 10D04 80010104 00000000 */  nop        
/* 10D08 80010108 AFA90014 */  sw         $t1, 0x14($sp)
/* 10D0C 8001010C 848A0000 */  lh         $t2, ($a0)
/* 10D10 80010110 A44AFFFA */  sh         $t2, -6($v0)
/* 10D14 80010114 848B0002 */  lh         $t3, 2($a0)
/* 10D18 80010118 A46BFFFA */  sh         $t3, -6($v1)
/* 10D1C 8001011C C4D0FFF8 */  lwc1       $f16, -8($a2)
/* 10D20 80010120 46008402 */  mul.s      $f16, $f16, $f0
/* 10D24 80010124 4600840D */  trunc.w.s  $f16, $f16
/* 10D28 80010128 440D8000 */  mfc1       $t5, $f16
/* 10D2C 8001012C 00000000 */  nop        
/* 10D30 80010130 AFAD0014 */  sw         $t5, 0x14($sp)
/* 10D34 80010134 848E0000 */  lh         $t6, ($a0)
/* 10D38 80010138 A44EFFFC */  sh         $t6, -4($v0)
/* 10D3C 8001013C 848F0002 */  lh         $t7, 2($a0)
/* 10D40 80010140 A46FFFFC */  sh         $t7, -4($v1)
/* 10D44 80010144 C4D0FFFC */  lwc1       $f16, -4($a2)
/* 10D48 80010148 46008402 */  mul.s      $f16, $f16, $f0
/* 10D4C 8001014C 4600840D */  trunc.w.s  $f16, $f16
/* 10D50 80010150 44198000 */  mfc1       $t9, $f16
/* 10D54 80010154 00000000 */  nop        
/* 10D58 80010158 AFB90014 */  sw         $t9, 0x14($sp)
/* 10D5C 8001015C 84880000 */  lh         $t0, ($a0)
/* 10D60 80010160 A448FFFE */  sh         $t0, -2($v0)
/* 10D64 80010164 84890002 */  lh         $t1, 2($a0)
/* 10D68 80010168 A469FFFE */  sh         $t1, -2($v1)
/* 10D6C 8001016C C4D00000 */  lwc1       $f16, ($a2)
/* 10D70 80010170 46008482 */  mul.s      $f18, $f16, $f0
/* 10D74 80010174 54E5FFD5 */  bnel       $a3, $a1, .L800100CC
/* 10D78 80010178 4600940D */   trunc.w.s $f16, $f18
/* 10D7C 8001017C 4600940D */  trunc.w.s  $f16, $f18
.L80010180:
/* 10D80 80010180 24C60010 */  addiu      $a2, $a2, 0x10
/* 10D84 80010184 24420008 */  addiu      $v0, $v0, 8
/* 10D88 80010188 24630008 */  addiu      $v1, $v1, 8
/* 10D8C 8001018C 440F8000 */  mfc1       $t7, $f16
/* 10D90 80010190 00000000 */  nop        
/* 10D94 80010194 AFAF0014 */  sw         $t7, 0x14($sp)
/* 10D98 80010198 84980000 */  lh         $t8, ($a0)
/* 10D9C 8001019C A458FFF8 */  sh         $t8, -8($v0)
/* 10DA0 800101A0 84990002 */  lh         $t9, 2($a0)
/* 10DA4 800101A4 A479FFF8 */  sh         $t9, -8($v1)
/* 10DA8 800101A8 C4D0FFF4 */  lwc1       $f16, -0xc($a2)
/* 10DAC 800101AC 46008402 */  mul.s      $f16, $f16, $f0
/* 10DB0 800101B0 4600840D */  trunc.w.s  $f16, $f16
/* 10DB4 800101B4 44098000 */  mfc1       $t1, $f16
/* 10DB8 800101B8 00000000 */  nop        
/* 10DBC 800101BC AFA90014 */  sw         $t1, 0x14($sp)
/* 10DC0 800101C0 848A0000 */  lh         $t2, ($a0)
/* 10DC4 800101C4 A44AFFFA */  sh         $t2, -6($v0)
/* 10DC8 800101C8 848B0002 */  lh         $t3, 2($a0)
/* 10DCC 800101CC A46BFFFA */  sh         $t3, -6($v1)
/* 10DD0 800101D0 C4D0FFF8 */  lwc1       $f16, -8($a2)
/* 10DD4 800101D4 46008402 */  mul.s      $f16, $f16, $f0
/* 10DD8 800101D8 4600840D */  trunc.w.s  $f16, $f16
/* 10DDC 800101DC 440D8000 */  mfc1       $t5, $f16
/* 10DE0 800101E0 00000000 */  nop        
/* 10DE4 800101E4 AFAD0014 */  sw         $t5, 0x14($sp)
/* 10DE8 800101E8 848E0000 */  lh         $t6, ($a0)
/* 10DEC 800101EC A44EFFFC */  sh         $t6, -4($v0)
/* 10DF0 800101F0 848F0002 */  lh         $t7, 2($a0)
/* 10DF4 800101F4 A46FFFFC */  sh         $t7, -4($v1)
/* 10DF8 800101F8 C4D0FFFC */  lwc1       $f16, -4($a2)
/* 10DFC 800101FC 46008402 */  mul.s      $f16, $f16, $f0
/* 10E00 80010200 4600840D */  trunc.w.s  $f16, $f16
/* 10E04 80010204 44198000 */  mfc1       $t9, $f16
/* 10E08 80010208 00000000 */  nop        
/* 10E0C 8001020C AFB90014 */  sw         $t9, 0x14($sp)
/* 10E10 80010210 84880000 */  lh         $t0, ($a0)
/* 10E14 80010214 A448FFFE */  sh         $t0, -2($v0)
/* 10E18 80010218 84890002 */  lh         $t1, 2($a0)
/* 10E1C 8001021C A469FFFE */  sh         $t1, -2($v1)
/* 10E20 80010220 03E00008 */  jr         $ra
/* 10E24 80010224 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80010228
/* 10E28 80010228 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 10E2C 8001022C 3C013F80 */  lui        $at, 0x3f80
/* 10E30 80010230 44812000 */  mtc1       $at, $f4
/* 10E34 80010234 AFA700AC */  sw         $a3, 0xac($sp)
/* 10E38 80010238 00A03825 */  or         $a3, $a1, $zero
/* 10E3C 8001023C AFBF001C */  sw         $ra, 0x1c($sp)
/* 10E40 80010240 AFA400A0 */  sw         $a0, 0xa0($sp)
/* 10E44 80010244 AFA500A4 */  sw         $a1, 0xa4($sp)
/* 10E48 80010248 AFA600A8 */  sw         $a2, 0xa8($sp)
/* 10E4C 8001024C 8FA600B4 */  lw         $a2, 0xb4($sp)
/* 10E50 80010250 8FA500B0 */  lw         $a1, 0xb0($sp)
/* 10E54 80010254 27A40060 */  addiu      $a0, $sp, 0x60
/* 10E58 80010258 0C003E23 */  jal        func_8000F88C
/* 10E5C 8001025C E7A40010 */   swc1      $f4, 0x10($sp)
/* 10E60 80010260 3C058007 */  lui        $a1, 0x8007
/* 10E64 80010264 24A5F050 */  addiu      $a1, $a1, -0xfb0
/* 10E68 80010268 27A40020 */  addiu      $a0, $sp, 0x20
/* 10E6C 8001026C 0C003CB1 */  jal        func_8000F2C4
/* 10E70 80010270 8FA600A8 */   lw        $a2, 0xa8($sp)
/* 10E74 80010274 27A40020 */  addiu      $a0, $sp, 0x20
/* 10E78 80010278 00802825 */  or         $a1, $a0, $zero
/* 10E7C 8001027C 0C003EEC */  jal        func_8000FBB0
/* 10E80 80010280 27A60060 */   addiu     $a2, $sp, 0x60
/* 10E84 80010284 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 10E88 80010288 27A50020 */  addiu      $a1, $sp, 0x20
/* 10E8C 8001028C 0C003F79 */  jal        func_8000FDE4
/* 10E90 80010290 8FA600AC */   lw        $a2, 0xac($sp)
/* 10E94 80010294 8FBF001C */  lw         $ra, 0x1c($sp)
/* 10E98 80010298 27BD00A0 */  addiu      $sp, $sp, 0xa0
/* 10E9C 8001029C 03E00008 */  jr         $ra
/* 10EA0 800102A0 00000000 */   nop       

glabel func_800102A4
/* 10EA4 800102A4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10EA8 800102A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10EAC 800102AC AFA60038 */  sw         $a2, 0x38($sp)
/* 10EB0 800102B0 AFA7003C */  sw         $a3, 0x3c($sp)
/* 10EB4 800102B4 C4860000 */  lwc1       $f6, ($a0)
/* 10EB8 800102B8 C4A40000 */  lwc1       $f4, ($a1)
/* 10EBC 800102BC C48A0004 */  lwc1       $f10, 4($a0)
/* 10EC0 800102C0 C4A80004 */  lwc1       $f8, 4($a1)
/* 10EC4 800102C4 46062001 */  sub.s      $f0, $f4, $f6
/* 10EC8 800102C8 C4860008 */  lwc1       $f6, 8($a0)
/* 10ECC 800102CC C4A40008 */  lwc1       $f4, 8($a1)
/* 10ED0 800102D0 460A4381 */  sub.s      $f14, $f8, $f10
/* 10ED4 800102D4 46000402 */  mul.s      $f16, $f0, $f0
/* 10ED8 800102D8 E7A0002C */  swc1       $f0, 0x2c($sp)
/* 10EDC 800102DC 46062081 */  sub.s      $f2, $f4, $f6
/* 10EE0 800102E0 E7AE0028 */  swc1       $f14, 0x28($sp)
/* 10EE4 800102E4 46021482 */  mul.s      $f18, $f2, $f2
/* 10EE8 800102E8 E7A20024 */  swc1       $f2, 0x24($sp)
/* 10EEC 800102EC E7B0001C */  swc1       $f16, 0x1c($sp)
/* 10EF0 800102F0 460E7202 */  mul.s      $f8, $f14, $f14
/* 10EF4 800102F4 E7B20018 */  swc1       $f18, 0x18($sp)
/* 10EF8 800102F8 46088280 */  add.s      $f10, $f16, $f8
/* 10EFC 800102FC 0C0173AC */  jal        func_8005CEB0
/* 10F00 80010300 46125300 */   add.s     $f12, $f10, $f18
/* 10F04 80010304 C7B0001C */  lwc1       $f16, 0x1c($sp)
/* 10F08 80010308 C7B20018 */  lwc1       $f18, 0x18($sp)
/* 10F0C 8001030C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 10F10 80010310 46128300 */  add.s      $f12, $f16, $f18
/* 10F14 80010314 0C0173AC */  jal        func_8005CEB0
/* 10F18 80010318 E5C00000 */   swc1      $f0, ($t6)
/* 10F1C 8001031C C7AE0028 */  lwc1       $f14, 0x28($sp)
/* 10F20 80010320 0C0028D8 */  jal        func_8000A360
/* 10F24 80010324 46000306 */   mov.s     $f12, $f0
/* 10F28 80010328 8FAF003C */  lw         $t7, 0x3c($sp)
/* 10F2C 8001032C A5E20000 */  sh         $v0, ($t7)
/* 10F30 80010330 C7AE002C */  lwc1       $f14, 0x2c($sp)
/* 10F34 80010334 0C0028D8 */  jal        func_8000A360
/* 10F38 80010338 C7AC0024 */   lwc1      $f12, 0x24($sp)
/* 10F3C 8001033C 8FB80040 */  lw         $t8, 0x40($sp)
/* 10F40 80010340 A7020000 */  sh         $v0, ($t8)
/* 10F44 80010344 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10F48 80010348 27BD0030 */  addiu      $sp, $sp, 0x30
/* 10F4C 8001034C 03E00008 */  jr         $ra
/* 10F50 80010350 00000000 */   nop       

glabel func_80010354
/* 10F54 80010354 AFA7000C */  sw         $a3, 0xc($sp)
/* 10F58 80010358 00073C00 */  sll        $a3, $a3, 0x10
/* 10F5C 8001035C 00073C03 */  sra        $a3, $a3, 0x10
/* 10F60 80010360 30E3FFFF */  andi       $v1, $a3, 0xffff
/* 10F64 80010364 3C098007 */  lui        $t1, 0x8007
/* 10F68 80010368 00031903 */  sra        $v1, $v1, 4
/* 10F6C 8001036C 44866000 */  mtc1       $a2, $f12
/* 10F70 80010370 2529A7F0 */  addiu      $t1, $t1, -0x5810
/* 10F74 80010374 00031880 */  sll        $v1, $v1, 2
/* 10F78 80010378 01233021 */  addu       $a2, $t1, $v1
/* 10F7C 8001037C C4C60000 */  lwc1       $f6, ($a2)
/* 10F80 80010380 97A20012 */  lhu        $v0, 0x12($sp)
/* 10F84 80010384 3C088007 */  lui        $t0, 0x8007
/* 10F88 80010388 46066202 */  mul.s      $f8, $f12, $f6
/* 10F8C 8001038C 00021103 */  sra        $v0, $v0, 4
/* 10F90 80010390 250897F0 */  addiu      $t0, $t0, -0x6810
/* 10F94 80010394 00021080 */  sll        $v0, $v0, 2
/* 10F98 80010398 01027021 */  addu       $t6, $t0, $v0
/* 10F9C 8001039C C5C40000 */  lwc1       $f4, ($t6)
/* 10FA0 800103A0 C4900000 */  lwc1       $f16, ($a0)
/* 10FA4 800103A4 01037821 */  addu       $t7, $t0, $v1
/* 10FA8 800103A8 46082282 */  mul.s      $f10, $f4, $f8
/* 10FAC 800103AC 0122C021 */  addu       $t8, $t1, $v0
/* 10FB0 800103B0 46105480 */  add.s      $f18, $f10, $f16
/* 10FB4 800103B4 E4B20000 */  swc1       $f18, ($a1)
/* 10FB8 800103B8 C5E60000 */  lwc1       $f6, ($t7)
/* 10FBC 800103BC C4880004 */  lwc1       $f8, 4($a0)
/* 10FC0 800103C0 460C3102 */  mul.s      $f4, $f6, $f12
/* 10FC4 800103C4 46082280 */  add.s      $f10, $f4, $f8
/* 10FC8 800103C8 E4AA0004 */  swc1       $f10, 4($a1)
/* 10FCC 800103CC C4D20000 */  lwc1       $f18, ($a2)
/* 10FD0 800103D0 C7100000 */  lwc1       $f16, ($t8)
/* 10FD4 800103D4 C4880008 */  lwc1       $f8, 8($a0)
/* 10FD8 800103D8 46126182 */  mul.s      $f6, $f12, $f18
/* 10FDC 800103DC 00000000 */  nop        
/* 10FE0 800103E0 46068102 */  mul.s      $f4, $f16, $f6
/* 10FE4 800103E4 46082280 */  add.s      $f10, $f4, $f8
/* 10FE8 800103E8 03E00008 */  jr         $ra
/* 10FEC 800103EC E4AA0008 */   swc1      $f10, 8($a1)

glabel func_800103F0
/* 10FF0 800103F0 AFA40000 */  sw         $a0, ($sp)
/* 10FF4 800103F4 AFA50004 */  sw         $a1, 4($sp)
/* 10FF8 800103F8 00052C00 */  sll        $a1, $a1, 0x10
/* 10FFC 800103FC 00042400 */  sll        $a0, $a0, 0x10
/* 11000 80010400 00042403 */  sra        $a0, $a0, 0x10
/* 11004 80010404 00052C03 */  sra        $a1, $a1, 0x10
/* 11008 80010408 00A41023 */  subu       $v0, $a1, $a0
/* 1100C 8001040C AFA60008 */  sw         $a2, 8($sp)
/* 11010 80010410 00023C00 */  sll        $a3, $v0, 0x10
/* 11014 80010414 00063400 */  sll        $a2, $a2, 0x10
/* 11018 80010418 00073C03 */  sra        $a3, $a3, 0x10
/* 1101C 8001041C 04E10009 */  bgez       $a3, .L80010444
/* 11020 80010420 00063403 */   sra       $a2, $a2, 0x10
/* 11024 80010424 00E61821 */  addu       $v1, $a3, $a2
/* 11028 80010428 00031C00 */  sll        $v1, $v1, 0x10
/* 1102C 8001042C 00031C03 */  sra        $v1, $v1, 0x10
/* 11030 80010430 1860000A */  blez       $v1, .L8001045C
/* 11034 80010434 00A01023 */   subu      $v0, $a1, $zero
/* 11038 80010438 00021400 */  sll        $v0, $v0, 0x10
/* 1103C 8001043C 03E00008 */  jr         $ra
/* 11040 80010440 00021403 */   sra       $v0, $v0, 0x10
.L80010444:
/* 11044 80010444 00E61823 */  subu       $v1, $a3, $a2
/* 11048 80010448 00031C00 */  sll        $v1, $v1, 0x10
/* 1104C 8001044C 00031C03 */  sra        $v1, $v1, 0x10
/* 11050 80010450 04630003 */  bgezl      $v1, .L80010460
/* 11054 80010454 00A31023 */   subu      $v0, $a1, $v1
/* 11058 80010458 00001825 */  or         $v1, $zero, $zero
.L8001045C:
/* 1105C 8001045C 00A31023 */  subu       $v0, $a1, $v1
.L80010460:
/* 11060 80010460 00021400 */  sll        $v0, $v0, 0x10
/* 11064 80010464 03E00008 */  jr         $ra
/* 11068 80010468 00021403 */   sra       $v0, $v0, 0x10

glabel func_8001046C
/* 1106C 8001046C 0085082A */  slt        $at, $a0, $a1
/* 11070 80010470 50200008 */  beql       $at, $zero, .L80010494
/* 11074 80010474 00872023 */   subu      $a0, $a0, $a3
/* 11078 80010478 00862021 */  addu       $a0, $a0, $a2
/* 1107C 8001047C 00A4082A */  slt        $at, $a1, $a0
/* 11080 80010480 10200008 */  beqz       $at, .L800104A4
/* 11084 80010484 00000000 */   nop       
/* 11088 80010488 03E00008 */  jr         $ra
/* 1108C 8001048C 00A01025 */   or        $v0, $a1, $zero
/* 11090 80010490 00872023 */  subu       $a0, $a0, $a3
.L80010494:
/* 11094 80010494 0085082A */  slt        $at, $a0, $a1
/* 11098 80010498 10200002 */  beqz       $at, .L800104A4
/* 1109C 8001049C 00000000 */   nop       
/* 110A0 800104A0 00A02025 */  or         $a0, $a1, $zero
.L800104A4:
/* 110A4 800104A4 03E00008 */  jr         $ra
/* 110A8 800104A8 00801025 */   or        $v0, $a0, $zero

glabel func_800104AC
/* 110AC 800104AC 460E603C */  c.lt.s     $f12, $f14
/* 110B0 800104B0 AFA60008 */  sw         $a2, 8($sp)
/* 110B4 800104B4 AFA7000C */  sw         $a3, 0xc($sp)
/* 110B8 800104B8 C7A40008 */  lwc1       $f4, 8($sp)
/* 110BC 800104BC 45000008 */  bc1f       .L800104E0
/* 110C0 800104C0 C7A6000C */   lwc1      $f6, 0xc($sp)
/* 110C4 800104C4 46046300 */  add.s      $f12, $f12, $f4
/* 110C8 800104C8 460C703C */  c.lt.s     $f14, $f12
/* 110CC 800104CC 00000000 */  nop        
/* 110D0 800104D0 45000009 */  bc1f       .L800104F8
/* 110D4 800104D4 00000000 */   nop       
/* 110D8 800104D8 03E00008 */  jr         $ra
/* 110DC 800104DC 46007006 */   mov.s     $f0, $f14
.L800104E0:
/* 110E0 800104E0 46066301 */  sub.s      $f12, $f12, $f6
/* 110E4 800104E4 460E603C */  c.lt.s     $f12, $f14
/* 110E8 800104E8 00000000 */  nop        
/* 110EC 800104EC 45000002 */  bc1f       .L800104F8
/* 110F0 800104F0 00000000 */   nop       
/* 110F4 800104F4 46007306 */  mov.s      $f12, $f14
.L800104F8:
/* 110F8 800104F8 03E00008 */  jr         $ra
/* 110FC 800104FC 46006006 */   mov.s     $f0, $f12

glabel func_80010500
/* 11100 80010500 00A60019 */  multu      $a1, $a2
/* 11104 80010504 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 11108 80010508 27A8000C */  addiu      $t0, $sp, 0xc
/* 1110C 8001050C 00066023 */  negu       $t4, $a2
/* 11110 80010510 00001812 */  mflo       $v1
/* 11114 80010514 04610003 */  bgez       $v1, .L80010524
/* 11118 80010518 00037103 */   sra       $t6, $v1, 4
/* 1111C 8001051C 2461000F */  addiu      $at, $v1, 0xf
/* 11120 80010520 00017103 */  sra        $t6, $at, 4
.L80010524:
/* 11124 80010524 000E7840 */  sll        $t7, $t6, 1
/* 11128 80010528 01E43821 */  addu       $a3, $t7, $a0
/* 1112C 8001052C 84F80000 */  lh         $t8, ($a3)
/* 11130 80010530 A5180000 */  sh         $t8, ($t0)
/* 11134 80010534 84F90002 */  lh         $t9, 2($a3)
/* 11138 80010538 A5190002 */  sh         $t9, 2($t0)
/* 1113C 8001053C 8FA9000C */  lw         $t1, 0xc($sp)
/* 11140 80010540 04610004 */  bgez       $v1, .L80010554
/* 11144 80010544 306A000F */   andi      $t2, $v1, 0xf
/* 11148 80010548 11400002 */  beqz       $t2, .L80010554
/* 1114C 8001054C 00000000 */   nop       
/* 11150 80010550 254AFFF0 */  addiu      $t2, $t2, -0x10
.L80010554:
/* 11154 80010554 01495804 */  sllv       $t3, $t1, $t2
/* 11158 80010558 AFAB000C */  sw         $t3, 0xc($sp)
/* 1115C 8001055C 018B6807 */  srav       $t5, $t3, $t4
/* 11160 80010560 AFAD000C */  sw         $t5, 0xc($sp)
/* 11164 80010564 87A2000E */  lh         $v0, 0xe($sp)
/* 11168 80010568 03E00008 */  jr         $ra
/* 1116C 8001056C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_80010570
/* 11170 80010570 460C703E */  c.le.s     $f14, $f12
/* 11174 80010574 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 11178 80010578 F7B40008 */  sdc1       $f20, 8($sp)
/* 1117C 8001057C 4486A000 */  mtc1       $a2, $f20
/* 11180 80010580 45000004 */  bc1f       .L80010594
/* 11184 80010584 24020047 */   addiu     $v0, $zero, 0x47
/* 11188 80010588 46006006 */  mov.s      $f0, $f12
/* 1118C 8001058C 10000002 */  b          .L80010598
/* 11190 80010590 24020052 */   addiu     $v0, $zero, 0x52
.L80010594:
/* 11194 80010594 46007006 */  mov.s      $f0, $f14
.L80010598:
/* 11198 80010598 4614003C */  c.lt.s     $f0, $f20
/* 1119C 8001059C 00000000 */  nop        
/* 111A0 800105A0 45020004 */  bc1fl      .L800105B4
/* 111A4 800105A4 460E603E */   c.le.s    $f12, $f14
/* 111A8 800105A8 4600A006 */  mov.s      $f0, $f20
/* 111AC 800105AC 24020042 */  addiu      $v0, $zero, 0x42
/* 111B0 800105B0 460E603E */  c.le.s     $f12, $f14
.L800105B4:
/* 111B4 800105B4 00000000 */  nop        
/* 111B8 800105B8 45020004 */  bc1fl      .L800105CC
/* 111BC 800105BC 46007086 */   mov.s     $f2, $f14
/* 111C0 800105C0 10000002 */  b          .L800105CC
/* 111C4 800105C4 46006086 */   mov.s     $f2, $f12
/* 111C8 800105C8 46007086 */  mov.s      $f2, $f14
.L800105CC:
/* 111CC 800105CC 4602A03C */  c.lt.s     $f20, $f2
/* 111D0 800105D0 00000000 */  nop        
/* 111D4 800105D4 45020003 */  bc1fl      .L800105E4
/* 111D8 800105D8 46020400 */   add.s     $f16, $f0, $f2
/* 111DC 800105DC 4600A086 */  mov.s      $f2, $f20
/* 111E0 800105E0 46020400 */  add.s      $f16, $f0, $f2
.L800105E4:
/* 111E4 800105E4 3C013F80 */  lui        $at, 0x3f80
/* 111E8 800105E8 44812000 */  mtc1       $at, $f4
/* 111EC 800105EC 46020032 */  c.eq.s     $f0, $f2
/* 111F0 800105F0 46048181 */  sub.s      $f6, $f16, $f4
/* 111F4 800105F4 45000006 */  bc1f       .L80010610
/* 111F8 800105F8 E4E60008 */   swc1      $f6, 8($a3)
/* 111FC 800105FC 44804000 */  mtc1       $zero, $f8
/* 11200 80010600 44805000 */  mtc1       $zero, $f10
/* 11204 80010604 E4E80004 */  swc1       $f8, 4($a3)
/* 11208 80010608 10000042 */  b          .L80010714
/* 1120C 8001060C E4EA0000 */   swc1      $f10, ($a3)
.L80010610:
/* 11210 80010610 44802000 */  mtc1       $zero, $f4
/* 11214 80010614 C4E60008 */  lwc1       $f6, 8($a3)
/* 11218 80010618 3C014000 */  lui        $at, 0x4000
/* 1121C 8001061C 4604303E */  c.le.s     $f6, $f4
/* 11220 80010620 00000000 */  nop        
/* 11224 80010624 45020006 */  bc1fl      .L80010640
/* 11228 80010628 44815800 */   mtc1      $at, $f11
/* 1122C 8001062C 46020481 */  sub.s      $f18, $f0, $f2
/* 11230 80010630 46109203 */  div.s      $f8, $f18, $f16
/* 11234 80010634 1000000A */  b          .L80010660
/* 11238 80010638 E4E80004 */   swc1      $f8, 4($a3)
/* 1123C 8001063C 44815800 */  mtc1       $at, $f11
.L80010640:
/* 11240 80010640 44805000 */  mtc1       $zero, $f10
/* 11244 80010644 46020481 */  sub.s      $f18, $f0, $f2
/* 11248 80010648 46008121 */  cvt.d.s    $f4, $f16
/* 1124C 8001064C 46009221 */  cvt.d.s    $f8, $f18
/* 11250 80010650 46245181 */  sub.d      $f6, $f10, $f4
/* 11254 80010654 46264283 */  div.d      $f10, $f8, $f6
/* 11258 80010658 46205120 */  cvt.s.d    $f4, $f10
/* 1125C 8001065C E4E40004 */  swc1       $f4, 4($a3)
.L80010660:
/* 11260 80010660 24010052 */  addiu      $at, $zero, 0x52
/* 11264 80010664 54410006 */  bnel       $v0, $at, .L80010680
/* 11268 80010668 24010047 */   addiu     $at, $zero, 0x47
/* 1126C 8001066C 46147201 */  sub.s      $f8, $f14, $f20
/* 11270 80010670 46124183 */  div.s      $f6, $f8, $f18
/* 11274 80010674 10000017 */  b          .L800106D4
/* 11278 80010678 E4E60000 */   swc1      $f6, ($a3)
/* 1127C 8001067C 24010047 */  addiu      $at, $zero, 0x47
.L80010680:
/* 11280 80010680 5441000C */  bnel       $v0, $at, .L800106B4
/* 11284 80010684 460E6201 */   sub.s     $f8, $f12, $f14
/* 11288 80010688 460CA281 */  sub.s      $f10, $f20, $f12
/* 1128C 8001068C 3C014000 */  lui        $at, 0x4000
/* 11290 80010690 44813800 */  mtc1       $at, $f7
/* 11294 80010694 44803000 */  mtc1       $zero, $f6
/* 11298 80010698 46125103 */  div.s      $f4, $f10, $f18
/* 1129C 8001069C 46002221 */  cvt.d.s    $f8, $f4
/* 112A0 800106A0 46264280 */  add.d      $f10, $f8, $f6
/* 112A4 800106A4 46205120 */  cvt.s.d    $f4, $f10
/* 112A8 800106A8 1000000A */  b          .L800106D4
/* 112AC 800106AC E4E40000 */   swc1      $f4, ($a3)
/* 112B0 800106B0 460E6201 */  sub.s      $f8, $f12, $f14
.L800106B4:
/* 112B4 800106B4 3C014010 */  lui        $at, 0x4010
/* 112B8 800106B8 44812800 */  mtc1       $at, $f5
/* 112BC 800106BC 44802000 */  mtc1       $zero, $f4
/* 112C0 800106C0 46124183 */  div.s      $f6, $f8, $f18
/* 112C4 800106C4 460032A1 */  cvt.d.s    $f10, $f6
/* 112C8 800106C8 46245200 */  add.d      $f8, $f10, $f4
/* 112CC 800106CC 462041A0 */  cvt.s.d    $f6, $f8
/* 112D0 800106D0 E4E60000 */  swc1       $f6, ($a3)
.L800106D4:
/* 112D4 800106D4 3C014270 */  lui        $at, 0x4270
/* 112D8 800106D8 44812000 */  mtc1       $at, $f4
/* 112DC 800106DC C4EA0000 */  lwc1       $f10, ($a3)
/* 112E0 800106E0 44803000 */  mtc1       $zero, $f6
/* 112E4 800106E4 3C0143B4 */  lui        $at, 0x43b4
/* 112E8 800106E8 46045202 */  mul.s      $f8, $f10, $f4
/* 112EC 800106EC E4E80000 */  swc1       $f8, ($a3)
/* 112F0 800106F0 C4E00000 */  lwc1       $f0, ($a3)
/* 112F4 800106F4 4606003C */  c.lt.s     $f0, $f6
/* 112F8 800106F8 00000000 */  nop        
/* 112FC 800106FC 45020006 */  bc1fl      .L80010718
/* 11300 80010700 D7B40008 */   ldc1      $f20, 8($sp)
/* 11304 80010704 44815000 */  mtc1       $at, $f10
/* 11308 80010708 00000000 */  nop        
/* 1130C 8001070C 460A0100 */  add.s      $f4, $f0, $f10
/* 11310 80010710 E4E40000 */  swc1       $f4, ($a3)
.L80010714:
/* 11314 80010714 D7B40008 */  ldc1       $f20, 8($sp)
.L80010718:
/* 11318 80010718 03E00008 */  jr         $ra
/* 1131C 8001071C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_80010720
/* 11320 80010720 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11324 80010724 AFA40018 */  sw         $a0, 0x18($sp)
/* 11328 80010728 93B8001A */  lbu        $t8, 0x1a($sp)
/* 1132C 8001072C 93AE0018 */  lbu        $t6, 0x18($sp)
/* 11330 80010730 3C01437F */  lui        $at, 0x437f
/* 11334 80010734 44988000 */  mtc1       $t8, $f16
/* 11338 80010738 448E2000 */  mtc1       $t6, $f4
/* 1133C 8001073C 44810000 */  mtc1       $at, $f0
/* 11340 80010740 468084A0 */  cvt.s.w    $f18, $f16
/* 11344 80010744 93AF0019 */  lbu        $t7, 0x19($sp)
/* 11348 80010748 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1134C 8001074C 00A03825 */  or         $a3, $a1, $zero
/* 11350 80010750 448F4000 */  mtc1       $t7, $f8
/* 11354 80010754 468021A0 */  cvt.s.w    $f6, $f4
/* 11358 80010758 46009103 */  div.s      $f4, $f18, $f0
/* 1135C 8001075C 468042A0 */  cvt.s.w    $f10, $f8
/* 11360 80010760 46005383 */  div.s      $f14, $f10, $f0
/* 11364 80010764 44062000 */  mfc1       $a2, $f4
/* 11368 80010768 0C00415C */  jal        func_80010570
/* 1136C 8001076C 46003303 */   div.s     $f12, $f6, $f0
/* 11370 80010770 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11374 80010774 27BD0018 */  addiu      $sp, $sp, 0x18
/* 11378 80010778 03E00008 */  jr         $ra
/* 1137C 8001077C 00000000 */   nop       

glabel func_80010780
/* 11380 80010780 3082FFFF */  andi       $v0, $a0, 0xffff
/* 11384 80010784 3048003E */  andi       $t0, $v0, 0x3e
/* 11388 80010788 00084843 */  sra        $t1, $t0, 1
/* 1138C 8001078C 44898000 */  mtc1       $t1, $f16
/* 11390 80010790 304EF800 */  andi       $t6, $v0, 0xf800
/* 11394 80010794 000E7AC3 */  sra        $t7, $t6, 0xb
/* 11398 80010798 468084A0 */  cvt.s.w    $f18, $f16
/* 1139C 8001079C 448F2000 */  mtc1       $t7, $f4
/* 113A0 800107A0 3C0141F8 */  lui        $at, 0x41f8
/* 113A4 800107A4 44810000 */  mtc1       $at, $f0
/* 113A8 800107A8 305807C0 */  andi       $t8, $v0, 0x7c0
/* 113AC 800107AC 468021A0 */  cvt.s.w    $f6, $f4
/* 113B0 800107B0 0018C983 */  sra        $t9, $t8, 6
/* 113B4 800107B4 44994000 */  mtc1       $t9, $f8
/* 113B8 800107B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 113BC 800107BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 113C0 800107C0 46009103 */  div.s      $f4, $f18, $f0
/* 113C4 800107C4 AFA40018 */  sw         $a0, 0x18($sp)
/* 113C8 800107C8 00A03825 */  or         $a3, $a1, $zero
/* 113CC 800107CC 468042A0 */  cvt.s.w    $f10, $f8
/* 113D0 800107D0 46005383 */  div.s      $f14, $f10, $f0
/* 113D4 800107D4 44062000 */  mfc1       $a2, $f4
/* 113D8 800107D8 0C00415C */  jal        func_80010570
/* 113DC 800107DC 46003303 */   div.s     $f12, $f6, $f0
/* 113E0 800107E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 113E4 800107E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 113E8 800107E8 03E00008 */  jr         $ra
/* 113EC 800107EC 00000000 */   nop       

glabel func_800107F0
/* 113F0 800107F0 44802000 */  mtc1       $zero, $f4
/* 113F4 800107F4 AFA60008 */  sw         $a2, 8($sp)
/* 113F8 800107F8 3C0143B4 */  lui        $at, 0x43b4
/* 113FC 800107FC 4604603C */  c.lt.s     $f12, $f4
/* 11400 80010800 C7A60008 */  lwc1       $f6, 8($sp)
/* 11404 80010804 45020006 */  bc1fl      .L80010820
/* 11408 80010808 44810000 */   mtc1      $at, $f0
/* 1140C 8001080C 3C0143B4 */  lui        $at, 0x43b4
/* 11410 80010810 44810000 */  mtc1       $at, $f0
/* 11414 80010814 1000000C */  b          .L80010848
/* 11418 80010818 46006300 */   add.s     $f12, $f12, $f0
/* 1141C 8001081C 44810000 */  mtc1       $at, $f0
.L80010820:
/* 11420 80010820 00000000 */  nop        
/* 11424 80010824 460C003E */  c.le.s     $f0, $f12
/* 11428 80010828 00000000 */  nop        
/* 1142C 8001082C 45020007 */  bc1fl      .L8001084C
/* 11430 80010830 3C014270 */   lui       $at, 0x4270
/* 11434 80010834 46006301 */  sub.s      $f12, $f12, $f0
.L80010838:
/* 11438 80010838 460C003E */  c.le.s     $f0, $f12
/* 1143C 8001083C 00000000 */  nop        
/* 11440 80010840 4503FFFD */  bc1tl      .L80010838
/* 11444 80010844 46006301 */   sub.s     $f12, $f12, $f0
.L80010848:
/* 11448 80010848 3C014270 */  lui        $at, 0x4270
.L8001084C:
/* 1144C 8001084C 44810000 */  mtc1       $at, $f0
/* 11450 80010850 00000000 */  nop        
/* 11454 80010854 4600603C */  c.lt.s     $f12, $f0
/* 11458 80010858 00000000 */  nop        
/* 1145C 8001085C 45020008 */  bc1fl      .L80010880
/* 11460 80010860 460C003E */   c.le.s    $f0, $f12
/* 11464 80010864 460E3201 */  sub.s      $f8, $f6, $f14
/* 11468 80010868 460C4282 */  mul.s      $f10, $f8, $f12
/* 1146C 8001086C 46005403 */  div.s      $f16, $f10, $f0
/* 11470 80010870 460E8080 */  add.s      $f2, $f16, $f14
/* 11474 80010874 03E00008 */  jr         $ra
/* 11478 80010878 46001006 */   mov.s     $f0, $f2
/* 1147C 8001087C 460C003E */  c.le.s     $f0, $f12
.L80010880:
/* 11480 80010880 3C014334 */  lui        $at, 0x4334
/* 11484 80010884 4502000A */  bc1fl      .L800108B0
/* 11488 80010888 3C014334 */   lui       $at, 0x4334
/* 1148C 8001088C 44819000 */  mtc1       $at, $f18
/* 11490 80010890 C7A20008 */  lwc1       $f2, 8($sp)
/* 11494 80010894 4612603C */  c.lt.s     $f12, $f18
/* 11498 80010898 00000000 */  nop        
/* 1149C 8001089C 45020004 */  bc1fl      .L800108B0
/* 114A0 800108A0 3C014334 */   lui       $at, 0x4334
/* 114A4 800108A4 03E00008 */  jr         $ra
/* 114A8 800108A8 46001006 */   mov.s     $f0, $f2
/* 114AC 800108AC 3C014334 */  lui        $at, 0x4334
.L800108B0:
/* 114B0 800108B0 44812000 */  mtc1       $at, $f4
/* 114B4 800108B4 3C014370 */  lui        $at, 0x4370
/* 114B8 800108B8 460C203E */  c.le.s     $f4, $f12
/* 114BC 800108BC 00000000 */  nop        
/* 114C0 800108C0 45020019 */  bc1fl      .L80010928
/* 114C4 800108C4 46007086 */   mov.s     $f2, $f14
/* 114C8 800108C8 44813000 */  mtc1       $at, $f6
/* 114CC 800108CC 3C01406E */  lui        $at, 0x406e
/* 114D0 800108D0 C7B20008 */  lwc1       $f18, 8($sp)
/* 114D4 800108D4 4606603C */  c.lt.s     $f12, $f6
/* 114D8 800108D8 00000000 */  nop        
/* 114DC 800108DC 45020012 */  bc1fl      .L80010928
/* 114E0 800108E0 46007086 */   mov.s     $f2, $f14
/* 114E4 800108E4 44814800 */  mtc1       $at, $f9
/* 114E8 800108E8 44804000 */  mtc1       $zero, $f8
/* 114EC 800108EC 460E9101 */  sub.s      $f4, $f18, $f14
/* 114F0 800108F0 3C01404E */  lui        $at, 0x404e
/* 114F4 800108F4 460062A1 */  cvt.d.s    $f10, $f12
/* 114F8 800108F8 460021A1 */  cvt.d.s    $f6, $f4
/* 114FC 800108FC 462A4401 */  sub.d      $f16, $f8, $f10
/* 11500 80010900 44805000 */  mtc1       $zero, $f10
/* 11504 80010904 44815800 */  mtc1       $at, $f11
/* 11508 80010908 46007121 */  cvt.d.s    $f4, $f14
/* 1150C 8001090C 46303202 */  mul.d      $f8, $f6, $f16
/* 11510 80010910 462A4483 */  div.d      $f18, $f8, $f10
/* 11514 80010914 46322180 */  add.d      $f6, $f4, $f18
/* 11518 80010918 462030A0 */  cvt.s.d    $f2, $f6
/* 1151C 8001091C 03E00008 */  jr         $ra
/* 11520 80010920 46001006 */   mov.s     $f0, $f2
/* 11524 80010924 46007086 */  mov.s      $f2, $f14
.L80010928:
/* 11528 80010928 03E00008 */  jr         $ra
/* 1152C 8001092C 46001006 */   mov.s     $f0, $f2

glabel func_80010930
/* 11530 80010930 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11534 80010934 AFBF001C */  sw         $ra, 0x1c($sp)
/* 11538 80010938 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 1153C 8001093C AFA40028 */  sw         $a0, 0x28($sp)
/* 11540 80010940 AFA5002C */  sw         $a1, 0x2c($sp)
/* 11544 80010944 AFA60030 */  sw         $a2, 0x30($sp)
/* 11548 80010948 3C01BF80 */  lui        $at, 0xbf80
/* 1154C 8001094C 44811000 */  mtc1       $at, $f2
/* 11550 80010950 C4E00008 */  lwc1       $f0, 8($a3)
/* 11554 80010954 44807000 */  mtc1       $zero, $f14
/* 11558 80010958 3C013F80 */  lui        $at, 0x3f80
/* 1155C 8001095C 4602003C */  c.lt.s     $f0, $f2
/* 11560 80010960 00000000 */  nop        
/* 11564 80010964 45020006 */  bc1fl      .L80010980
/* 11568 80010968 4481A000 */   mtc1      $at, $f20
/* 1156C 8001096C 3C013F80 */  lui        $at, 0x3f80
/* 11570 80010970 4481A000 */  mtc1       $at, $f20
/* 11574 80010974 10000008 */  b          .L80010998
/* 11578 80010978 E4E20008 */   swc1      $f2, 8($a3)
/* 1157C 8001097C 4481A000 */  mtc1       $at, $f20
.L80010980:
/* 11580 80010980 00000000 */  nop        
/* 11584 80010984 4600A03C */  c.lt.s     $f20, $f0
/* 11588 80010988 00000000 */  nop        
/* 1158C 8001098C 45020003 */  bc1fl      .L8001099C
/* 11590 80010990 C4EC0004 */   lwc1      $f12, 4($a3)
/* 11594 80010994 E4F40008 */  swc1       $f20, 8($a3)
.L80010998:
/* 11598 80010998 C4EC0004 */  lwc1       $f12, 4($a3)
.L8001099C:
/* 1159C 8001099C 3C0143B4 */  lui        $at, 0x43b4
/* 115A0 800109A0 460E603C */  c.lt.s     $f12, $f14
/* 115A4 800109A4 00000000 */  nop        
/* 115A8 800109A8 45020004 */  bc1fl      .L800109BC
/* 115AC 800109AC 460CA03C */   c.lt.s    $f20, $f12
/* 115B0 800109B0 10000006 */  b          .L800109CC
/* 115B4 800109B4 E4EE0004 */   swc1      $f14, 4($a3)
/* 115B8 800109B8 460CA03C */  c.lt.s     $f20, $f12
.L800109BC:
/* 115BC 800109BC 00000000 */  nop        
/* 115C0 800109C0 45020003 */  bc1fl      .L800109D0
/* 115C4 800109C4 C4E20000 */   lwc1      $f2, ($a3)
/* 115C8 800109C8 E4F40004 */  swc1       $f20, 4($a3)
.L800109CC:
/* 115CC 800109CC C4E20000 */  lwc1       $f2, ($a3)
.L800109D0:
/* 115D0 800109D0 460E103C */  c.lt.s     $f2, $f14
/* 115D4 800109D4 00000000 */  nop        
/* 115D8 800109D8 45020009 */  bc1fl      .L80010A00
/* 115DC 800109DC 44810000 */   mtc1      $at, $f0
/* 115E0 800109E0 3C0143B4 */  lui        $at, 0x43b4
/* 115E4 800109E4 44810000 */  mtc1       $at, $f0
/* 115E8 800109E8 00000000 */  nop        
/* 115EC 800109EC 46001100 */  add.s      $f4, $f2, $f0
/* 115F0 800109F0 E4E40000 */  swc1       $f4, ($a3)
/* 115F4 800109F4 1000000E */  b          .L80010A30
/* 115F8 800109F8 C4E20000 */   lwc1      $f2, ($a3)
/* 115FC 800109FC 44810000 */  mtc1       $at, $f0
.L80010A00:
/* 11600 80010A00 00000000 */  nop        
/* 11604 80010A04 4602003E */  c.le.s     $f0, $f2
/* 11608 80010A08 00000000 */  nop        
/* 1160C 80010A0C 45020009 */  bc1fl      .L80010A34
/* 11610 80010A10 C4E00008 */   lwc1      $f0, 8($a3)
/* 11614 80010A14 46001181 */  sub.s      $f6, $f2, $f0
.L80010A18:
/* 11618 80010A18 E4E60000 */  swc1       $f6, ($a3)
/* 1161C 80010A1C C4E20000 */  lwc1       $f2, ($a3)
/* 11620 80010A20 4602003E */  c.le.s     $f0, $f2
/* 11624 80010A24 00000000 */  nop        
/* 11628 80010A28 4503FFFB */  bc1tl      .L80010A18
/* 1162C 80010A2C 46001181 */   sub.s     $f6, $f2, $f0
.L80010A30:
/* 11630 80010A30 C4E00008 */  lwc1       $f0, 8($a3)
.L80010A34:
/* 11634 80010A34 C4EC0004 */  lwc1       $f12, 4($a3)
/* 11638 80010A38 3C013F00 */  lui        $at, 0x3f00
/* 1163C 80010A3C 460E003E */  c.le.s     $f0, $f14
/* 11640 80010A40 00000000 */  nop        
/* 11644 80010A44 4502000A */  bc1fl      .L80010A70
/* 11648 80010A48 46140400 */   add.s     $f16, $f0, $f20
/* 1164C 80010A4C 46140400 */  add.s      $f16, $f0, $f20
/* 11650 80010A50 44814000 */  mtc1       $at, $f8
/* 11654 80010A54 460CA101 */  sub.s      $f4, $f20, $f12
/* 11658 80010A58 46088282 */  mul.s      $f10, $f16, $f8
/* 1165C 80010A5C 00000000 */  nop        
/* 11660 80010A60 46045382 */  mul.s      $f14, $f10, $f4
/* 11664 80010A64 1000000E */  b          .L80010AA0
/* 11668 80010A68 460E8481 */   sub.s     $f18, $f16, $f14
/* 1166C 80010A6C 46140400 */  add.s      $f16, $f0, $f20
.L80010A70:
/* 11670 80010A70 3C013FE0 */  lui        $at, 0x3fe0
/* 11674 80010A74 44814800 */  mtc1       $at, $f9
/* 11678 80010A78 44804000 */  mtc1       $zero, $f8
/* 1167C 80010A7C 460081A1 */  cvt.d.s    $f6, $f16
/* 11680 80010A80 460CA101 */  sub.s      $f4, $f20, $f12
/* 11684 80010A84 46283282 */  mul.d      $f10, $f6, $f8
/* 11688 80010A88 460021A1 */  cvt.d.s    $f6, $f4
/* 1168C 80010A8C 46006121 */  cvt.d.s    $f4, $f12
/* 11690 80010A90 46265202 */  mul.d      $f8, $f10, $f6
/* 11694 80010A94 46244280 */  add.d      $f10, $f8, $f4
/* 11698 80010A98 462054A0 */  cvt.s.d    $f18, $f10
/* 1169C 80010A9C 46128381 */  sub.s      $f14, $f16, $f18
.L80010AA0:
/* 116A0 80010AA0 3C0142F0 */  lui        $at, 0x42f0
/* 116A4 80010AA4 4481A000 */  mtc1       $at, $f20
/* 116A8 80010AA8 44069000 */  mfc1       $a2, $f18
/* 116AC 80010AAC AFA70034 */  sw         $a3, 0x34($sp)
/* 116B0 80010AB0 E7AE0024 */  swc1       $f14, 0x24($sp)
/* 116B4 80010AB4 E7B20020 */  swc1       $f18, 0x20($sp)
/* 116B8 80010AB8 0C0041FC */  jal        func_800107F0
/* 116BC 80010ABC 46141300 */   add.s     $f12, $f2, $f20
/* 116C0 80010AC0 C7B20020 */  lwc1       $f18, 0x20($sp)
/* 116C4 80010AC4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 116C8 80010AC8 8FA70034 */  lw         $a3, 0x34($sp)
/* 116CC 80010ACC C7AE0024 */  lwc1       $f14, 0x24($sp)
/* 116D0 80010AD0 44069000 */  mfc1       $a2, $f18
/* 116D4 80010AD4 E5C00000 */  swc1       $f0, ($t6)
/* 116D8 80010AD8 0C0041FC */  jal        func_800107F0
/* 116DC 80010ADC C4EC0000 */   lwc1      $f12, ($a3)
/* 116E0 80010AE0 8FAF002C */  lw         $t7, 0x2c($sp)
/* 116E4 80010AE4 8FA70034 */  lw         $a3, 0x34($sp)
/* 116E8 80010AE8 C7B20020 */  lwc1       $f18, 0x20($sp)
/* 116EC 80010AEC C7AE0024 */  lwc1       $f14, 0x24($sp)
/* 116F0 80010AF0 E5E00000 */  swc1       $f0, ($t7)
/* 116F4 80010AF4 C4E60000 */  lwc1       $f6, ($a3)
/* 116F8 80010AF8 44069000 */  mfc1       $a2, $f18
/* 116FC 80010AFC 0C0041FC */  jal        func_800107F0
/* 11700 80010B00 46143301 */   sub.s     $f12, $f6, $f20
/* 11704 80010B04 8FB80030 */  lw         $t8, 0x30($sp)
/* 11708 80010B08 E7000000 */  swc1       $f0, ($t8)
/* 1170C 80010B0C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 11710 80010B10 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 11714 80010B14 27BD0028 */  addiu      $sp, $sp, 0x28
/* 11718 80010B18 03E00008 */  jr         $ra
/* 1171C 80010B1C 00000000 */   nop       

glabel func_80010B20
/* 11720 80010B20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 11724 80010B24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11728 80010B28 00803825 */  or         $a3, $a0, $zero
/* 1172C 80010B2C 27A4002C */  addiu      $a0, $sp, 0x2c
/* 11730 80010B30 27A50028 */  addiu      $a1, $sp, 0x28
/* 11734 80010B34 0C00424C */  jal        func_80010930
/* 11738 80010B38 27A60024 */   addiu     $a2, $sp, 0x24
/* 1173C 80010B3C 3C0141F8 */  lui        $at, 0x41f8
/* 11740 80010B40 44810000 */  mtc1       $at, $f0
/* 11744 80010B44 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* 11748 80010B48 C7B00028 */  lwc1       $f16, 0x28($sp)
/* 1174C 80010B4C 3C013F00 */  lui        $at, 0x3f00
/* 11750 80010B50 46002182 */  mul.s      $f6, $f4, $f0
/* 11754 80010B54 44811000 */  mtc1       $at, $f2
/* 11758 80010B58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1175C 80010B5C 46008482 */  mul.s      $f18, $f16, $f0
/* 11760 80010B60 46023200 */  add.s      $f8, $f6, $f2
/* 11764 80010B64 46029100 */  add.s      $f4, $f18, $f2
/* 11768 80010B68 4600428D */  trunc.w.s  $f10, $f8
/* 1176C 80010B6C C7A80024 */  lwc1       $f8, 0x24($sp)
/* 11770 80010B70 4600218D */  trunc.w.s  $f6, $f4
/* 11774 80010B74 44055000 */  mfc1       $a1, $f10
/* 11778 80010B78 46004282 */  mul.s      $f10, $f8, $f0
/* 1177C 80010B7C 44033000 */  mfc1       $v1, $f6
/* 11780 80010B80 28A10020 */  slti       $at, $a1, 0x20
/* 11784 80010B84 14200002 */  bnez       $at, .L80010B90
/* 11788 80010B88 46025400 */   add.s     $f16, $f10, $f2
/* 1178C 80010B8C 2405001F */  addiu      $a1, $zero, 0x1f
.L80010B90:
/* 11790 80010B90 28610020 */  slti       $at, $v1, 0x20
/* 11794 80010B94 14200002 */  bnez       $at, .L80010BA0
/* 11798 80010B98 4600848D */   trunc.w.s $f18, $f16
/* 1179C 80010B9C 2403001F */  addiu      $v1, $zero, 0x1f
.L80010BA0:
/* 117A0 80010BA0 44049000 */  mfc1       $a0, $f18
/* 117A4 80010BA4 0005CAC0 */  sll        $t9, $a1, 0xb
/* 117A8 80010BA8 00034180 */  sll        $t0, $v1, 6
/* 117AC 80010BAC 28810020 */  slti       $at, $a0, 0x20
/* 117B0 80010BB0 14200002 */  bnez       $at, .L80010BBC
/* 117B4 80010BB4 03284825 */   or        $t1, $t9, $t0
/* 117B8 80010BB8 2404001F */  addiu      $a0, $zero, 0x1f
.L80010BBC:
/* 117BC 80010BBC 00045040 */  sll        $t2, $a0, 1
/* 117C0 80010BC0 012A1025 */  or         $v0, $t1, $t2
/* 117C4 80010BC4 34420001 */  ori        $v0, $v0, 1
/* 117C8 80010BC8 3042FFFF */  andi       $v0, $v0, 0xffff
/* 117CC 80010BCC 03E00008 */  jr         $ra
/* 117D0 80010BD0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80010BD4
/* 117D4 80010BD4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 117D8 80010BD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 117DC 80010BDC AFA40038 */  sw         $a0, 0x38($sp)
/* 117E0 80010BE0 AFA60040 */  sw         $a2, 0x40($sp)
/* 117E4 80010BE4 00A03825 */  or         $a3, $a1, $zero
/* 117E8 80010BE8 27A50030 */  addiu      $a1, $sp, 0x30
/* 117EC 80010BEC 27A6002C */  addiu      $a2, $sp, 0x2c
/* 117F0 80010BF0 0C00424C */  jal        func_80010930
/* 117F4 80010BF4 27A40034 */   addiu     $a0, $sp, 0x34
/* 117F8 80010BF8 3C01437F */  lui        $at, 0x437f
/* 117FC 80010BFC 44810000 */  mtc1       $at, $f0
/* 11800 80010C00 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 11804 80010C04 C7B00030 */  lwc1       $f16, 0x30($sp)
/* 11808 80010C08 3C013F00 */  lui        $at, 0x3f00
/* 1180C 80010C0C 46002182 */  mul.s      $f6, $f4, $f0
/* 11810 80010C10 44811000 */  mtc1       $at, $f2
/* 11814 80010C14 8FA60038 */  lw         $a2, 0x38($sp)
/* 11818 80010C18 46008482 */  mul.s      $f18, $f16, $f0
/* 1181C 80010C1C 27A8001C */  addiu      $t0, $sp, 0x1c
/* 11820 80010C20 46023200 */  add.s      $f8, $f6, $f2
/* 11824 80010C24 46029100 */  add.s      $f4, $f18, $f2
/* 11828 80010C28 4600428D */  trunc.w.s  $f10, $f8
/* 1182C 80010C2C C7A8002C */  lwc1       $f8, 0x2c($sp)
/* 11830 80010C30 4600218D */  trunc.w.s  $f6, $f4
/* 11834 80010C34 44055000 */  mfc1       $a1, $f10
/* 11838 80010C38 46004282 */  mul.s      $f10, $f8, $f0
/* 1183C 80010C3C 44033000 */  mfc1       $v1, $f6
/* 11840 80010C40 28A10100 */  slti       $at, $a1, 0x100
/* 11844 80010C44 14200002 */  bnez       $at, .L80010C50
/* 11848 80010C48 46025400 */   add.s     $f16, $f10, $f2
/* 1184C 80010C4C 240500FF */  addiu      $a1, $zero, 0xff
.L80010C50:
/* 11850 80010C50 28610100 */  slti       $at, $v1, 0x100
/* 11854 80010C54 14200002 */  bnez       $at, .L80010C60
/* 11858 80010C58 4600848D */   trunc.w.s $f18, $f16
/* 1185C 80010C5C 240300FF */  addiu      $v1, $zero, 0xff
.L80010C60:
/* 11860 80010C60 44049000 */  mfc1       $a0, $f18
/* 11864 80010C64 00000000 */  nop        
/* 11868 80010C68 28810100 */  slti       $at, $a0, 0x100
/* 1186C 80010C6C 54200003 */  bnel       $at, $zero, .L80010C7C
/* 11870 80010C70 8FB90040 */   lw        $t9, 0x40($sp)
/* 11874 80010C74 240400FF */  addiu      $a0, $zero, 0xff
/* 11878 80010C78 8FB90040 */  lw         $t9, 0x40($sp)
.L80010C7C:
/* 1187C 80010C7C A3A5001C */  sb         $a1, 0x1c($sp)
/* 11880 80010C80 A3A3001D */  sb         $v1, 0x1d($sp)
/* 11884 80010C84 A3A4001E */  sb         $a0, 0x1e($sp)
/* 11888 80010C88 A3B9001F */  sb         $t9, 0x1f($sp)
/* 1188C 80010C8C 8D0A0000 */  lw         $t2, ($t0)
/* 11890 80010C90 00C01025 */  or         $v0, $a2, $zero
/* 11894 80010C94 ACCA0000 */  sw         $t2, ($a2)
/* 11898 80010C98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1189C 80010C9C 27BD0038 */  addiu      $sp, $sp, 0x38
/* 118A0 80010CA0 03E00008 */  jr         $ra
/* 118A4 80010CA4 00000000 */   nop       

glabel func_80010CA8
/* 118A8 80010CA8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 118AC 80010CAC AFA40030 */  sw         $a0, 0x30($sp)
/* 118B0 80010CB0 3084FFFF */  andi       $a0, $a0, 0xffff
/* 118B4 80010CB4 308E0001 */  andi       $t6, $a0, 1
/* 118B8 80010CB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 118BC 80010CBC 11C00053 */  beqz       $t6, .L80010E0C
/* 118C0 80010CC0 AFA50034 */   sw        $a1, 0x34($sp)
/* 118C4 80010CC4 0C0041E0 */  jal        func_80010780
/* 118C8 80010CC8 27A50024 */   addiu     $a1, $sp, 0x24
/* 118CC 80010CCC 87A20034 */  lh         $v0, 0x34($sp)
/* 118D0 80010CD0 3C098007 */  lui        $t1, 0x8007
/* 118D4 80010CD4 5040000A */  beql       $v0, $zero, .L80010D00
/* 118D8 80010CD8 83A20036 */   lb        $v0, 0x36($sp)
/* 118DC 80010CDC 44822000 */  mtc1       $v0, $f4
/* 118E0 80010CE0 3C013C80 */  lui        $at, 0x3c80
/* 118E4 80010CE4 44814000 */  mtc1       $at, $f8
/* 118E8 80010CE8 468021A0 */  cvt.s.w    $f6, $f4
/* 118EC 80010CEC C7B00024 */  lwc1       $f16, 0x24($sp)
/* 118F0 80010CF0 46083282 */  mul.s      $f10, $f6, $f8
/* 118F4 80010CF4 460A8480 */  add.s      $f18, $f16, $f10
/* 118F8 80010CF8 E7B20024 */  swc1       $f18, 0x24($sp)
/* 118FC 80010CFC 83A20036 */  lb         $v0, 0x36($sp)
.L80010D00:
/* 11900 80010D00 5040001B */  beql       $v0, $zero, .L80010D70
/* 11904 80010D04 83A20037 */   lb        $v0, 0x37($sp)
/* 11908 80010D08 1840000E */  blez       $v0, .L80010D44
/* 1190C 80010D0C C7A00028 */   lwc1      $f0, 0x28($sp)
/* 11910 80010D10 44823000 */  mtc1       $v0, $f6
/* 11914 80010D14 3C013F80 */  lui        $at, 0x3f80
/* 11918 80010D18 44811000 */  mtc1       $at, $f2
/* 1191C 80010D1C 46803220 */  cvt.s.w    $f8, $f6
/* 11920 80010D20 3C013E00 */  lui        $at, 0x3e00
/* 11924 80010D24 44815000 */  mtc1       $at, $f10
/* 11928 80010D28 46001101 */  sub.s      $f4, $f2, $f0
/* 1192C 80010D2C 46082402 */  mul.s      $f16, $f4, $f8
/* 11930 80010D30 00000000 */  nop        
/* 11934 80010D34 460A8482 */  mul.s      $f18, $f16, $f10
/* 11938 80010D38 46120000 */  add.s      $f0, $f0, $f18
/* 1193C 80010D3C 1000000B */  b          .L80010D6C
/* 11940 80010D40 E7A00028 */   swc1      $f0, 0x28($sp)
.L80010D44:
/* 11944 80010D44 44823000 */  mtc1       $v0, $f6
/* 11948 80010D48 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 1194C 80010D4C 3C013E00 */  lui        $at, 0x3e00
/* 11950 80010D50 46803120 */  cvt.s.w    $f4, $f6
/* 11954 80010D54 44818000 */  mtc1       $at, $f16
/* 11958 80010D58 46040202 */  mul.s      $f8, $f0, $f4
/* 1195C 80010D5C 00000000 */  nop        
/* 11960 80010D60 46104282 */  mul.s      $f10, $f8, $f16
/* 11964 80010D64 460A0000 */  add.s      $f0, $f0, $f10
/* 11968 80010D68 E7A00028 */  swc1       $f0, 0x28($sp)
.L80010D6C:
/* 1196C 80010D6C 83A20037 */  lb         $v0, 0x37($sp)
.L80010D70:
/* 11970 80010D70 3C013F80 */  lui        $at, 0x3f80
/* 11974 80010D74 44811000 */  mtc1       $at, $f2
/* 11978 80010D78 10400021 */  beqz       $v0, .L80010E00
/* 1197C 80010D7C C7B2002C */   lwc1      $f18, 0x2c($sp)
/* 11980 80010D80 46029180 */  add.s      $f6, $f18, $f2
/* 11984 80010D84 3C013F00 */  lui        $at, 0x3f00
/* 11988 80010D88 44812000 */  mtc1       $at, $f4
/* 1198C 80010D8C 3C01437F */  lui        $at, 0x437f
/* 11990 80010D90 44818000 */  mtc1       $at, $f16
/* 11994 80010D94 46043202 */  mul.s      $f8, $f6, $f4
/* 11998 80010D98 24430008 */  addiu      $v1, $v0, 8
/* 1199C 80010D9C 3C014F80 */  lui        $at, 0x4f80
/* 119A0 80010DA0 46104282 */  mul.s      $f10, $f8, $f16
/* 119A4 80010DA4 4600548D */  trunc.w.s  $f18, $f10
/* 119A8 80010DA8 44049000 */  mfc1       $a0, $f18
/* 119AC 80010DAC 18400003 */  blez       $v0, .L80010DBC
/* 119B0 80010DB0 00000000 */   nop       
/* 119B4 80010DB4 10000001 */  b          .L80010DBC
/* 119B8 80010DB8 24430007 */   addiu     $v1, $v0, 7
.L80010DBC:
/* 119BC 80010DBC 0003C240 */  sll        $t8, $v1, 9
/* 119C0 80010DC0 0004C840 */  sll        $t9, $a0, 1
/* 119C4 80010DC4 03194021 */  addu       $t0, $t8, $t9
/* 119C8 80010DC8 01284821 */  addu       $t1, $t1, $t0
/* 119CC 80010DCC 95293660 */  lhu        $t1, 0x3660($t1)
/* 119D0 80010DD0 44893000 */  mtc1       $t1, $f6
/* 119D4 80010DD4 05210004 */  bgez       $t1, .L80010DE8
/* 119D8 80010DD8 46803120 */   cvt.s.w   $f4, $f6
/* 119DC 80010DDC 44814000 */  mtc1       $at, $f8
/* 119E0 80010DE0 00000000 */  nop        
/* 119E4 80010DE4 46082100 */  add.s      $f4, $f4, $f8
.L80010DE8:
/* 119E8 80010DE8 3C018008 */  lui        $at, 0x8008
/* 119EC 80010DEC C430B580 */  lwc1       $f16, -0x4a80($at)
/* 119F0 80010DF0 46102003 */  div.s      $f0, $f4, $f16
/* 119F4 80010DF4 46000280 */  add.s      $f10, $f0, $f0
/* 119F8 80010DF8 46025481 */  sub.s      $f18, $f10, $f2
/* 119FC 80010DFC E7B2002C */  swc1       $f18, 0x2c($sp)
.L80010E00:
/* 11A00 80010E00 0C0042C8 */  jal        func_80010B20
/* 11A04 80010E04 27A40024 */   addiu     $a0, $sp, 0x24
/* 11A08 80010E08 3044FFFF */  andi       $a0, $v0, 0xffff
.L80010E0C:
/* 11A0C 80010E0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11A10 80010E10 27BD0030 */  addiu      $sp, $sp, 0x30
/* 11A14 80010E14 00801025 */  or         $v0, $a0, $zero
/* 11A18 80010E18 03E00008 */  jr         $ra
/* 11A1C 80010E1C 00000000 */   nop       

glabel func_80010E20
/* 11A20 80010E20 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 11A24 80010E24 AFA40028 */  sw         $a0, 0x28($sp)
/* 11A28 80010E28 93AE002B */  lbu        $t6, 0x2b($sp)
/* 11A2C 80010E2C AFA5003C */  sw         $a1, 0x3c($sp)
/* 11A30 80010E30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11A34 80010E34 19C00054 */  blez       $t6, .L80010F88
/* 11A38 80010E38 27A5002C */   addiu     $a1, $sp, 0x2c
/* 11A3C 80010E3C 0C0041C8 */  jal        func_80010720
/* 11A40 80010E40 AFA40000 */   sw        $a0, ($sp)
/* 11A44 80010E44 87A2003C */  lh         $v0, 0x3c($sp)
/* 11A48 80010E48 3C0A8007 */  lui        $t2, 0x8007
/* 11A4C 80010E4C 27A5002C */  addiu      $a1, $sp, 0x2c
/* 11A50 80010E50 5040000A */  beql       $v0, $zero, .L80010E7C
/* 11A54 80010E54 83A2003E */   lb        $v0, 0x3e($sp)
/* 11A58 80010E58 44822000 */  mtc1       $v0, $f4
/* 11A5C 80010E5C 3C013C80 */  lui        $at, 0x3c80
/* 11A60 80010E60 44814000 */  mtc1       $at, $f8
/* 11A64 80010E64 468021A0 */  cvt.s.w    $f6, $f4
/* 11A68 80010E68 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* 11A6C 80010E6C 46083282 */  mul.s      $f10, $f6, $f8
/* 11A70 80010E70 460A8480 */  add.s      $f18, $f16, $f10
/* 11A74 80010E74 E7B2002C */  swc1       $f18, 0x2c($sp)
/* 11A78 80010E78 83A2003E */  lb         $v0, 0x3e($sp)
.L80010E7C:
/* 11A7C 80010E7C 5040001B */  beql       $v0, $zero, .L80010EEC
/* 11A80 80010E80 83A2003F */   lb        $v0, 0x3f($sp)
/* 11A84 80010E84 1840000E */  blez       $v0, .L80010EC0
/* 11A88 80010E88 C7A00030 */   lwc1      $f0, 0x30($sp)
/* 11A8C 80010E8C 44823000 */  mtc1       $v0, $f6
/* 11A90 80010E90 3C013F80 */  lui        $at, 0x3f80
/* 11A94 80010E94 44811000 */  mtc1       $at, $f2
/* 11A98 80010E98 46803220 */  cvt.s.w    $f8, $f6
/* 11A9C 80010E9C 3C013E00 */  lui        $at, 0x3e00
/* 11AA0 80010EA0 44815000 */  mtc1       $at, $f10
/* 11AA4 80010EA4 46001101 */  sub.s      $f4, $f2, $f0
/* 11AA8 80010EA8 46082402 */  mul.s      $f16, $f4, $f8
/* 11AAC 80010EAC 00000000 */  nop        
/* 11AB0 80010EB0 460A8482 */  mul.s      $f18, $f16, $f10
/* 11AB4 80010EB4 46120000 */  add.s      $f0, $f0, $f18
/* 11AB8 80010EB8 1000000B */  b          .L80010EE8
/* 11ABC 80010EBC E7A00030 */   swc1      $f0, 0x30($sp)
.L80010EC0:
/* 11AC0 80010EC0 44823000 */  mtc1       $v0, $f6
/* 11AC4 80010EC4 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 11AC8 80010EC8 3C013E00 */  lui        $at, 0x3e00
/* 11ACC 80010ECC 46803120 */  cvt.s.w    $f4, $f6
/* 11AD0 80010ED0 44818000 */  mtc1       $at, $f16
/* 11AD4 80010ED4 46040202 */  mul.s      $f8, $f0, $f4
/* 11AD8 80010ED8 00000000 */  nop        
/* 11ADC 80010EDC 46104282 */  mul.s      $f10, $f8, $f16
/* 11AE0 80010EE0 460A0000 */  add.s      $f0, $f0, $f10
/* 11AE4 80010EE4 E7A00030 */  swc1       $f0, 0x30($sp)
.L80010EE8:
/* 11AE8 80010EE8 83A2003F */  lb         $v0, 0x3f($sp)
.L80010EEC:
/* 11AEC 80010EEC 3C013F80 */  lui        $at, 0x3f80
/* 11AF0 80010EF0 44811000 */  mtc1       $at, $f2
/* 11AF4 80010EF4 10400021 */  beqz       $v0, .L80010F7C
/* 11AF8 80010EF8 C7B20034 */   lwc1      $f18, 0x34($sp)
/* 11AFC 80010EFC 46029180 */  add.s      $f6, $f18, $f2
/* 11B00 80010F00 3C013F00 */  lui        $at, 0x3f00
/* 11B04 80010F04 44812000 */  mtc1       $at, $f4
/* 11B08 80010F08 3C01437F */  lui        $at, 0x437f
/* 11B0C 80010F0C 44818000 */  mtc1       $at, $f16
/* 11B10 80010F10 46043202 */  mul.s      $f8, $f6, $f4
/* 11B14 80010F14 24430008 */  addiu      $v1, $v0, 8
/* 11B18 80010F18 3C014F80 */  lui        $at, 0x4f80
/* 11B1C 80010F1C 46104282 */  mul.s      $f10, $f8, $f16
/* 11B20 80010F20 4600548D */  trunc.w.s  $f18, $f10
/* 11B24 80010F24 44049000 */  mfc1       $a0, $f18
/* 11B28 80010F28 18400003 */  blez       $v0, .L80010F38
/* 11B2C 80010F2C 00000000 */   nop       
/* 11B30 80010F30 10000001 */  b          .L80010F38
/* 11B34 80010F34 24430007 */   addiu     $v1, $v0, 7
.L80010F38:
/* 11B38 80010F38 0003CA40 */  sll        $t9, $v1, 9
/* 11B3C 80010F3C 00044040 */  sll        $t0, $a0, 1
/* 11B40 80010F40 03284821 */  addu       $t1, $t9, $t0
/* 11B44 80010F44 01495021 */  addu       $t2, $t2, $t1
/* 11B48 80010F48 954A3660 */  lhu        $t2, 0x3660($t2)
/* 11B4C 80010F4C 448A3000 */  mtc1       $t2, $f6
/* 11B50 80010F50 05410004 */  bgez       $t2, .L80010F64
/* 11B54 80010F54 46803120 */   cvt.s.w   $f4, $f6
/* 11B58 80010F58 44814000 */  mtc1       $at, $f8
/* 11B5C 80010F5C 00000000 */  nop        
/* 11B60 80010F60 46082100 */  add.s      $f4, $f4, $f8
.L80010F64:
/* 11B64 80010F64 3C018008 */  lui        $at, 0x8008
/* 11B68 80010F68 C430B584 */  lwc1       $f16, -0x4a7c($at)
/* 11B6C 80010F6C 46102003 */  div.s      $f0, $f4, $f16
/* 11B70 80010F70 46000280 */  add.s      $f10, $f0, $f0
/* 11B74 80010F74 46025481 */  sub.s      $f18, $f10, $f2
/* 11B78 80010F78 E7B20034 */  swc1       $f18, 0x34($sp)
.L80010F7C:
/* 11B7C 80010F7C 27A40028 */  addiu      $a0, $sp, 0x28
/* 11B80 80010F80 0C0042F5 */  jal        func_80010BD4
/* 11B84 80010F84 93A6002B */   lbu       $a2, 0x2b($sp)
.L80010F88:
/* 11B88 80010F88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11B8C 80010F8C 8FA20028 */  lw         $v0, 0x28($sp)
/* 11B90 80010F90 27BD0038 */  addiu      $sp, $sp, 0x38
/* 11B94 80010F94 03E00008 */  jr         $ra
/* 11B98 80010F98 00000000 */   nop       
/* 11B9C 80010F9C 00000000 */  nop        
