.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005D1B0
/* 5DDB0 8005D1B0 3C048008 */  lui        $a0, 0x8008
/* 5DDB4 8005D1B4 8C84A950 */  lw         $a0, -0x56b0($a0)
/* 5DDB8 8005D1B8 3C018008 */  lui        $at, 0x8008
/* 5DDBC 8005D1BC 00047080 */  sll        $t6, $a0, 2
/* 5DDC0 8005D1C0 25CF0002 */  addiu      $t7, $t6, 2
/* 5DDC4 8005D1C4 25D80003 */  addiu      $t8, $t6, 3
/* 5DDC8 8005D1C8 01F80019 */  multu      $t7, $t8
/* 5DDCC 8005D1CC 00002812 */  mflo       $a1
/* 5DDD0 8005D1D0 00051082 */  srl        $v0, $a1, 2
/* 5DDD4 8005D1D4 03E00008 */  jr         $ra
/* 5DDD8 8005D1D8 AC22A950 */   sw        $v0, -0x56b0($at)
/* 5DDDC 8005D1DC 00000000 */  nop        

glabel func_8005D1E0
/* 5DDE0 8005D1E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5DDE4 8005D1E4 AFA50020 */  sw         $a1, 0x20($sp)
/* 5DDE8 8005D1E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DDEC 8005D1EC 30AE00FF */  andi       $t6, $a1, 0xff
/* 5DDF0 8005D1F0 29C10026 */  slti       $at, $t6, 0x26
/* 5DDF4 8005D1F4 01C02825 */  or         $a1, $t6, $zero
/* 5DDF8 8005D1F8 AE00000C */  sw         $zero, 0xc($s0)
/* 5DDFC 8005D1FC AE000010 */  sw         $zero, 0x10($s0)
/* 5DE00 8005D200 AE000014 */  sw         $zero, 0x14($s0)
/* 5DE04 8005D204 AE000018 */  sw         $zero, 0x18($s0)
/* 5DE08 8005D208 AE00001C */  sw         $zero, 0x1c($s0)
/* 5DE0C 8005D20C AE000020 */  sw         $zero, 0x20($s0)
/* 5DE10 8005D210 1420000A */  bnez       $at, .L8005D23C
/* 5DE14 8005D214 01C01825 */   or        $v1, $t6, $zero
/* 5DE18 8005D218 25CFFFBB */  addiu      $t7, $t6, -0x45
/* 5DE1C 8005D21C 2DE10034 */  sltiu      $at, $t7, 0x34
/* 5DE20 8005D220 10200181 */  beqz       $at, .L8005D828
/* 5DE24 8005D224 000F7880 */   sll       $t7, $t7, 2
/* 5DE28 8005D228 3C018008 */  lui        $at, 0x8008
/* 5DE2C 8005D22C 002F0821 */  addu       $at, $at, $t7
/* 5DE30 8005D230 8C2FE3B4 */  lw         $t7, -0x1c4c($at)
/* 5DE34 8005D234 01E00008 */  jr         $t7
/* 5DE38 8005D238 00000000 */   nop       
.L8005D23C:
/* 5DE3C 8005D23C 24010025 */  addiu      $at, $zero, 0x25
/* 5DE40 8005D240 50610172 */  beql       $v1, $at, .L8005D80C
/* 5DE44 8005D244 8E18000C */   lw        $t8, 0xc($s0)
/* 5DE48 8005D248 10000178 */  b          .L8005D82C
/* 5DE4C 8005D24C 8E0E000C */   lw        $t6, 0xc($s0)
/* 5DE50 8005D250 8CD80000 */  lw         $t8, ($a2)
/* 5DE54 8005D254 2401FFFC */  addiu      $at, $zero, -4
/* 5DE58 8005D258 27190003 */  addiu      $t9, $t8, 3
/* 5DE5C 8005D25C 03217024 */  and        $t6, $t9, $at
/* 5DE60 8005D260 25CF0004 */  addiu      $t7, $t6, 4
/* 5DE64 8005D264 ACCF0000 */  sw         $t7, ($a2)
/* 5DE68 8005D268 8E0E000C */  lw         $t6, 0xc($s0)
/* 5DE6C 8005D26C 8DF9FFFC */  lw         $t9, -4($t7)
/* 5DE70 8005D270 00EE7821 */  addu       $t7, $a3, $t6
/* 5DE74 8005D274 A1F90000 */  sb         $t9, ($t7)
/* 5DE78 8005D278 8E18000C */  lw         $t8, 0xc($s0)
/* 5DE7C 8005D27C 270E0001 */  addiu      $t6, $t8, 1
/* 5DE80 8005D280 1000016F */  b          .L8005D840
/* 5DE84 8005D284 AE0E000C */   sw        $t6, 0xc($s0)
/* 5DE88 8005D288 92020034 */  lbu        $v0, 0x34($s0)
/* 5DE8C 8005D28C 2401006C */  addiu      $at, $zero, 0x6c
/* 5DE90 8005D290 5441000D */  bnel       $v0, $at, .L8005D2C8
/* 5DE94 8005D294 2401004C */   addiu     $at, $zero, 0x4c
/* 5DE98 8005D298 8CD90000 */  lw         $t9, ($a2)
/* 5DE9C 8005D29C 2401FFFC */  addiu      $at, $zero, -4
/* 5DEA0 8005D2A0 272F0003 */  addiu      $t7, $t9, 3
/* 5DEA4 8005D2A4 01E1C024 */  and        $t8, $t7, $at
/* 5DEA8 8005D2A8 270E0004 */  addiu      $t6, $t8, 4
/* 5DEAC 8005D2AC ACCE0000 */  sw         $t6, ($a2)
/* 5DEB0 8005D2B0 8DCFFFFC */  lw         $t7, -4($t6)
/* 5DEB4 8005D2B4 000FC7C3 */  sra        $t8, $t7, 0x1f
/* 5DEB8 8005D2B8 AE180000 */  sw         $t8, ($s0)
/* 5DEBC 8005D2BC 10000019 */  b          .L8005D324
/* 5DEC0 8005D2C0 AE0F0004 */   sw        $t7, 4($s0)
/* 5DEC4 8005D2C4 2401004C */  addiu      $at, $zero, 0x4c
.L8005D2C8:
/* 5DEC8 8005D2C8 5441000D */  bnel       $v0, $at, .L8005D300
/* 5DECC 8005D2CC 8CCF0000 */   lw        $t7, ($a2)
/* 5DED0 8005D2D0 8CCE0000 */  lw         $t6, ($a2)
/* 5DED4 8005D2D4 2401FFF8 */  addiu      $at, $zero, -8
/* 5DED8 8005D2D8 25CF0007 */  addiu      $t7, $t6, 7
/* 5DEDC 8005D2DC 01E1C024 */  and        $t8, $t7, $at
/* 5DEE0 8005D2E0 27190008 */  addiu      $t9, $t8, 8
/* 5DEE4 8005D2E4 ACD90000 */  sw         $t9, ($a2)
/* 5DEE8 8005D2E8 8F38FFF8 */  lw         $t8, -8($t9)
/* 5DEEC 8005D2EC 8F39FFFC */  lw         $t9, -4($t9)
/* 5DEF0 8005D2F0 AE180000 */  sw         $t8, ($s0)
/* 5DEF4 8005D2F4 1000000B */  b          .L8005D324
/* 5DEF8 8005D2F8 AE190004 */   sw        $t9, 4($s0)
/* 5DEFC 8005D2FC 8CCF0000 */  lw         $t7, ($a2)
.L8005D300:
/* 5DF00 8005D300 2401FFFC */  addiu      $at, $zero, -4
/* 5DF04 8005D304 25EE0003 */  addiu      $t6, $t7, 3
/* 5DF08 8005D308 01C1C024 */  and        $t8, $t6, $at
/* 5DF0C 8005D30C 27190004 */  addiu      $t9, $t8, 4
/* 5DF10 8005D310 ACD90000 */  sw         $t9, ($a2)
/* 5DF14 8005D314 8F2EFFFC */  lw         $t6, -4($t9)
/* 5DF18 8005D318 000EC7C3 */  sra        $t8, $t6, 0x1f
/* 5DF1C 8005D31C AE180000 */  sw         $t8, ($s0)
/* 5DF20 8005D320 AE0E0004 */  sw         $t6, 4($s0)
.L8005D324:
/* 5DF24 8005D324 920F0034 */  lbu        $t7, 0x34($s0)
/* 5DF28 8005D328 24010068 */  addiu      $at, $zero, 0x68
/* 5DF2C 8005D32C 55E10008 */  bnel       $t7, $at, .L8005D350
/* 5DF30 8005D330 8E0E0000 */   lw        $t6, ($s0)
/* 5DF34 8005D334 8E0F0004 */  lw         $t7, 4($s0)
/* 5DF38 8005D338 000FCC00 */  sll        $t9, $t7, 0x10
/* 5DF3C 8005D33C 00197403 */  sra        $t6, $t9, 0x10
/* 5DF40 8005D340 000EC7C3 */  sra        $t8, $t6, 0x1f
/* 5DF44 8005D344 AE180000 */  sw         $t8, ($s0)
/* 5DF48 8005D348 AE0E0004 */  sw         $t6, 4($s0)
/* 5DF4C 8005D34C 8E0E0000 */  lw         $t6, ($s0)
.L8005D350:
/* 5DF50 8005D350 5DC0000E */  bgtzl      $t6, .L8005D38C
/* 5DF54 8005D354 8E020030 */   lw        $v0, 0x30($s0)
/* 5DF58 8005D358 05C20004 */  bltzl      $t6, .L8005D36C
/* 5DF5C 8005D35C 8E19000C */   lw        $t9, 0xc($s0)
/* 5DF60 8005D360 1000000A */  b          .L8005D38C
/* 5DF64 8005D364 8E020030 */   lw        $v0, 0x30($s0)
/* 5DF68 8005D368 8E19000C */  lw         $t9, 0xc($s0)
.L8005D36C:
/* 5DF6C 8005D36C 2418002D */  addiu      $t8, $zero, 0x2d
/* 5DF70 8005D370 00F97021 */  addu       $t6, $a3, $t9
/* 5DF74 8005D374 A1D80000 */  sb         $t8, ($t6)
/* 5DF78 8005D378 8E0F000C */  lw         $t7, 0xc($s0)
/* 5DF7C 8005D37C 25F90001 */  addiu      $t9, $t7, 1
/* 5DF80 8005D380 10000016 */  b          .L8005D3DC
/* 5DF84 8005D384 AE19000C */   sw        $t9, 0xc($s0)
/* 5DF88 8005D388 8E020030 */  lw         $v0, 0x30($s0)
.L8005D38C:
/* 5DF8C 8005D38C 30580002 */  andi       $t8, $v0, 2
/* 5DF90 8005D390 13000009 */  beqz       $t8, .L8005D3B8
/* 5DF94 8005D394 304E0001 */   andi      $t6, $v0, 1
/* 5DF98 8005D398 8E0F000C */  lw         $t7, 0xc($s0)
/* 5DF9C 8005D39C 240E002B */  addiu      $t6, $zero, 0x2b
/* 5DFA0 8005D3A0 00EFC821 */  addu       $t9, $a3, $t7
/* 5DFA4 8005D3A4 A32E0000 */  sb         $t6, ($t9)
/* 5DFA8 8005D3A8 8E18000C */  lw         $t8, 0xc($s0)
/* 5DFAC 8005D3AC 270F0001 */  addiu      $t7, $t8, 1
/* 5DFB0 8005D3B0 1000000A */  b          .L8005D3DC
/* 5DFB4 8005D3B4 AE0F000C */   sw        $t7, 0xc($s0)
.L8005D3B8:
/* 5DFB8 8005D3B8 51C00009 */  beql       $t6, $zero, .L8005D3E0
/* 5DFBC 8005D3BC 8E19000C */   lw        $t9, 0xc($s0)
/* 5DFC0 8005D3C0 8E18000C */  lw         $t8, 0xc($s0)
/* 5DFC4 8005D3C4 24190020 */  addiu      $t9, $zero, 0x20
/* 5DFC8 8005D3C8 00F87821 */  addu       $t7, $a3, $t8
/* 5DFCC 8005D3CC A1F90000 */  sb         $t9, ($t7)
/* 5DFD0 8005D3D0 8E0E000C */  lw         $t6, 0xc($s0)
/* 5DFD4 8005D3D4 25D80001 */  addiu      $t8, $t6, 1
/* 5DFD8 8005D3D8 AE18000C */  sw         $t8, 0xc($s0)
.L8005D3DC:
/* 5DFDC 8005D3DC 8E19000C */  lw         $t9, 0xc($s0)
.L8005D3E0:
/* 5DFE0 8005D3E0 02002025 */  or         $a0, $s0, $zero
/* 5DFE4 8005D3E4 03277821 */  addu       $t7, $t9, $a3
/* 5DFE8 8005D3E8 0C019328 */  jal        func_80064CA0
/* 5DFEC 8005D3EC AE0F0008 */   sw        $t7, 8($s0)
/* 5DFF0 8005D3F0 10000114 */  b          .L8005D844
/* 5DFF4 8005D3F4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5DFF8 8005D3F8 92020034 */  lbu        $v0, 0x34($s0)
/* 5DFFC 8005D3FC 2401006C */  addiu      $at, $zero, 0x6c
/* 5E000 8005D400 5441000D */  bnel       $v0, $at, .L8005D438
/* 5E004 8005D404 2401004C */   addiu     $at, $zero, 0x4c
/* 5E008 8005D408 8CCE0000 */  lw         $t6, ($a2)
/* 5E00C 8005D40C 2401FFFC */  addiu      $at, $zero, -4
/* 5E010 8005D410 25D80003 */  addiu      $t8, $t6, 3
/* 5E014 8005D414 0301C824 */  and        $t9, $t8, $at
/* 5E018 8005D418 272F0004 */  addiu      $t7, $t9, 4
/* 5E01C 8005D41C ACCF0000 */  sw         $t7, ($a2)
/* 5E020 8005D420 8DF8FFFC */  lw         $t8, -4($t7)
/* 5E024 8005D424 001877C3 */  sra        $t6, $t8, 0x1f
/* 5E028 8005D428 AE0E0000 */  sw         $t6, ($s0)
/* 5E02C 8005D42C 10000019 */  b          .L8005D494
/* 5E030 8005D430 AE180004 */   sw        $t8, 4($s0)
/* 5E034 8005D434 2401004C */  addiu      $at, $zero, 0x4c
.L8005D438:
/* 5E038 8005D438 5441000D */  bnel       $v0, $at, .L8005D470
/* 5E03C 8005D43C 8CCE0000 */   lw        $t6, ($a2)
/* 5E040 8005D440 8CD90000 */  lw         $t9, ($a2)
/* 5E044 8005D444 2401FFF8 */  addiu      $at, $zero, -8
/* 5E048 8005D448 27380007 */  addiu      $t8, $t9, 7
/* 5E04C 8005D44C 03017024 */  and        $t6, $t8, $at
/* 5E050 8005D450 25CF0008 */  addiu      $t7, $t6, 8
/* 5E054 8005D454 ACCF0000 */  sw         $t7, ($a2)
/* 5E058 8005D458 8DF9FFFC */  lw         $t9, -4($t7)
/* 5E05C 8005D45C 8DF8FFF8 */  lw         $t8, -8($t7)
/* 5E060 8005D460 AE190004 */  sw         $t9, 4($s0)
/* 5E064 8005D464 1000000B */  b          .L8005D494
/* 5E068 8005D468 AE180000 */   sw        $t8, ($s0)
/* 5E06C 8005D46C 8CCE0000 */  lw         $t6, ($a2)
.L8005D470:
/* 5E070 8005D470 2401FFFC */  addiu      $at, $zero, -4
/* 5E074 8005D474 25CF0003 */  addiu      $t7, $t6, 3
/* 5E078 8005D478 01E1C024 */  and        $t8, $t7, $at
/* 5E07C 8005D47C 27190004 */  addiu      $t9, $t8, 4
/* 5E080 8005D480 ACD90000 */  sw         $t9, ($a2)
/* 5E084 8005D484 8F2FFFFC */  lw         $t7, -4($t9)
/* 5E088 8005D488 000FC7C3 */  sra        $t8, $t7, 0x1f
/* 5E08C 8005D48C AE180000 */  sw         $t8, ($s0)
/* 5E090 8005D490 AE0F0004 */  sw         $t7, 4($s0)
.L8005D494:
/* 5E094 8005D494 92020034 */  lbu        $v0, 0x34($s0)
/* 5E098 8005D498 24010068 */  addiu      $at, $zero, 0x68
/* 5E09C 8005D49C 14410007 */  bne        $v0, $at, .L8005D4BC
/* 5E0A0 8005D4A0 00000000 */   nop       
/* 5E0A4 8005D4A4 8E0F0004 */  lw         $t7, 4($s0)
/* 5E0A8 8005D4A8 240E0000 */  addiu      $t6, $zero, 0
/* 5E0AC 8005D4AC AE0E0000 */  sw         $t6, ($s0)
/* 5E0B0 8005D4B0 31F9FFFF */  andi       $t9, $t7, 0xffff
/* 5E0B4 8005D4B4 10000007 */  b          .L8005D4D4
/* 5E0B8 8005D4B8 AE190004 */   sw        $t9, 4($s0)
.L8005D4BC:
/* 5E0BC 8005D4BC 54400006 */  bnel       $v0, $zero, .L8005D4D8
/* 5E0C0 8005D4C0 8E0F0030 */   lw        $t7, 0x30($s0)
/* 5E0C4 8005D4C4 8E190004 */  lw         $t9, 4($s0)
/* 5E0C8 8005D4C8 24180000 */  addiu      $t8, $zero, 0
/* 5E0CC 8005D4CC AE180000 */  sw         $t8, ($s0)
/* 5E0D0 8005D4D0 AE190004 */  sw         $t9, 4($s0)
.L8005D4D4:
/* 5E0D4 8005D4D4 8E0F0030 */  lw         $t7, 0x30($s0)
.L8005D4D8:
/* 5E0D8 8005D4D8 31EE0008 */  andi       $t6, $t7, 8
/* 5E0DC 8005D4DC 51C00014 */  beql       $t6, $zero, .L8005D530
/* 5E0E0 8005D4E0 8E18000C */   lw        $t8, 0xc($s0)
/* 5E0E4 8005D4E4 8E19000C */  lw         $t9, 0xc($s0)
/* 5E0E8 8005D4E8 24180030 */  addiu      $t8, $zero, 0x30
/* 5E0EC 8005D4EC 24010078 */  addiu      $at, $zero, 0x78
/* 5E0F0 8005D4F0 00F97821 */  addu       $t7, $a3, $t9
/* 5E0F4 8005D4F4 A1F80000 */  sb         $t8, ($t7)
/* 5E0F8 8005D4F8 8E0E000C */  lw         $t6, 0xc($s0)
/* 5E0FC 8005D4FC 25D90001 */  addiu      $t9, $t6, 1
/* 5E100 8005D500 10610004 */  beq        $v1, $at, .L8005D514
/* 5E104 8005D504 AE19000C */   sw        $t9, 0xc($s0)
/* 5E108 8005D508 24010058 */  addiu      $at, $zero, 0x58
/* 5E10C 8005D50C 54610008 */  bnel       $v1, $at, .L8005D530
/* 5E110 8005D510 8E18000C */   lw        $t8, 0xc($s0)
.L8005D514:
/* 5E114 8005D514 8E18000C */  lw         $t8, 0xc($s0)
/* 5E118 8005D518 00F87821 */  addu       $t7, $a3, $t8
/* 5E11C 8005D51C A1E50000 */  sb         $a1, ($t7)
/* 5E120 8005D520 8E0E000C */  lw         $t6, 0xc($s0)
/* 5E124 8005D524 25D90001 */  addiu      $t9, $t6, 1
/* 5E128 8005D528 AE19000C */  sw         $t9, 0xc($s0)
/* 5E12C 8005D52C 8E18000C */  lw         $t8, 0xc($s0)
.L8005D530:
/* 5E130 8005D530 02002025 */  or         $a0, $s0, $zero
/* 5E134 8005D534 03077821 */  addu       $t7, $t8, $a3
/* 5E138 8005D538 0C019328 */  jal        func_80064CA0
/* 5E13C 8005D53C AE0F0008 */   sw        $t7, 8($s0)
/* 5E140 8005D540 100000C0 */  b          .L8005D844
/* 5E144 8005D544 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E148 8005D548 920E0034 */  lbu        $t6, 0x34($s0)
/* 5E14C 8005D54C 2401004C */  addiu      $at, $zero, 0x4c
/* 5E150 8005D550 55C10019 */  bnel       $t6, $at, .L8005D5B8
/* 5E154 8005D554 8CC20000 */   lw        $v0, ($a2)
/* 5E158 8005D558 8CC20000 */  lw         $v0, ($a2)
/* 5E15C 8005D55C 30590001 */  andi       $t9, $v0, 1
/* 5E160 8005D560 13200005 */  beqz       $t9, .L8005D578
/* 5E164 8005D564 00401825 */   or        $v1, $v0, $zero
/* 5E168 8005D568 24780007 */  addiu      $t8, $v1, 7
/* 5E16C 8005D56C ACD80000 */  sw         $t8, ($a2)
/* 5E170 8005D570 1000000D */  b          .L8005D5A8
/* 5E174 8005D574 2702FFEA */   addiu     $v0, $t8, -0x16
.L8005D578:
/* 5E178 8005D578 306F0002 */  andi       $t7, $v1, 2
/* 5E17C 8005D57C 11E00005 */  beqz       $t7, .L8005D594
/* 5E180 8005D580 24590007 */   addiu     $t9, $v0, 7
/* 5E184 8005D584 246E000A */  addiu      $t6, $v1, 0xa
/* 5E188 8005D588 ACCE0000 */  sw         $t6, ($a2)
/* 5E18C 8005D58C 10000005 */  b          .L8005D5A4
/* 5E190 8005D590 25C4FFD8 */   addiu     $a0, $t6, -0x28
.L8005D594:
/* 5E194 8005D594 2401FFF8 */  addiu      $at, $zero, -8
/* 5E198 8005D598 0321C024 */  and        $t8, $t9, $at
/* 5E19C 8005D59C 27040008 */  addiu      $a0, $t8, 8
/* 5E1A0 8005D5A0 ACC40000 */  sw         $a0, ($a2)
.L8005D5A4:
/* 5E1A4 8005D5A4 00801025 */  or         $v0, $a0, $zero
.L8005D5A8:
/* 5E1A8 8005D5A8 D444FFF8 */  ldc1       $f4, -8($v0)
/* 5E1AC 8005D5AC 10000017 */  b          .L8005D60C
/* 5E1B0 8005D5B0 F6040000 */   sdc1      $f4, ($s0)
/* 5E1B4 8005D5B4 8CC20000 */  lw         $v0, ($a2)
.L8005D5B8:
/* 5E1B8 8005D5B8 304E0001 */  andi       $t6, $v0, 1
/* 5E1BC 8005D5BC 11C00005 */  beqz       $t6, .L8005D5D4
/* 5E1C0 8005D5C0 00401825 */   or        $v1, $v0, $zero
/* 5E1C4 8005D5C4 24790007 */  addiu      $t9, $v1, 7
/* 5E1C8 8005D5C8 ACD90000 */  sw         $t9, ($a2)
/* 5E1CC 8005D5CC 1000000D */  b          .L8005D604
/* 5E1D0 8005D5D0 2722FFEA */   addiu     $v0, $t9, -0x16
.L8005D5D4:
/* 5E1D4 8005D5D4 30780002 */  andi       $t8, $v1, 2
/* 5E1D8 8005D5D8 13000005 */  beqz       $t8, .L8005D5F0
/* 5E1DC 8005D5DC 244E0007 */   addiu     $t6, $v0, 7
/* 5E1E0 8005D5E0 246F000A */  addiu      $t7, $v1, 0xa
/* 5E1E4 8005D5E4 ACCF0000 */  sw         $t7, ($a2)
/* 5E1E8 8005D5E8 10000005 */  b          .L8005D600
/* 5E1EC 8005D5EC 25E4FFD8 */   addiu     $a0, $t7, -0x28
.L8005D5F0:
/* 5E1F0 8005D5F0 2401FFF8 */  addiu      $at, $zero, -8
/* 5E1F4 8005D5F4 01C1C824 */  and        $t9, $t6, $at
/* 5E1F8 8005D5F8 27240008 */  addiu      $a0, $t9, 8
/* 5E1FC 8005D5FC ACC40000 */  sw         $a0, ($a2)
.L8005D600:
/* 5E200 8005D600 00801025 */  or         $v0, $a0, $zero
.L8005D604:
/* 5E204 8005D604 D446FFF8 */  ldc1       $f6, -8($v0)
/* 5E208 8005D608 F6060000 */  sdc1       $f6, ($s0)
.L8005D60C:
/* 5E20C 8005D60C 960F0000 */  lhu        $t7, ($s0)
/* 5E210 8005D610 31EE8000 */  andi       $t6, $t7, 0x8000
/* 5E214 8005D614 51C0000A */  beql       $t6, $zero, .L8005D640
/* 5E218 8005D618 8E020030 */   lw        $v0, 0x30($s0)
/* 5E21C 8005D61C 8E18000C */  lw         $t8, 0xc($s0)
/* 5E220 8005D620 2419002D */  addiu      $t9, $zero, 0x2d
/* 5E224 8005D624 00F87821 */  addu       $t7, $a3, $t8
/* 5E228 8005D628 A1F90000 */  sb         $t9, ($t7)
/* 5E22C 8005D62C 8E0E000C */  lw         $t6, 0xc($s0)
/* 5E230 8005D630 25D80001 */  addiu      $t8, $t6, 1
/* 5E234 8005D634 10000016 */  b          .L8005D690
/* 5E238 8005D638 AE18000C */   sw        $t8, 0xc($s0)
/* 5E23C 8005D63C 8E020030 */  lw         $v0, 0x30($s0)
.L8005D640:
/* 5E240 8005D640 30590002 */  andi       $t9, $v0, 2
/* 5E244 8005D644 13200009 */  beqz       $t9, .L8005D66C
/* 5E248 8005D648 304F0001 */   andi      $t7, $v0, 1
/* 5E24C 8005D64C 8E0E000C */  lw         $t6, 0xc($s0)
/* 5E250 8005D650 240F002B */  addiu      $t7, $zero, 0x2b
/* 5E254 8005D654 00EEC021 */  addu       $t8, $a3, $t6
/* 5E258 8005D658 A30F0000 */  sb         $t7, ($t8)
/* 5E25C 8005D65C 8E19000C */  lw         $t9, 0xc($s0)
/* 5E260 8005D660 272E0001 */  addiu      $t6, $t9, 1
/* 5E264 8005D664 1000000A */  b          .L8005D690
/* 5E268 8005D668 AE0E000C */   sw        $t6, 0xc($s0)
.L8005D66C:
/* 5E26C 8005D66C 51E00009 */  beql       $t7, $zero, .L8005D694
/* 5E270 8005D670 8E18000C */   lw        $t8, 0xc($s0)
/* 5E274 8005D674 8E19000C */  lw         $t9, 0xc($s0)
/* 5E278 8005D678 24180020 */  addiu      $t8, $zero, 0x20
/* 5E27C 8005D67C 00F97021 */  addu       $t6, $a3, $t9
/* 5E280 8005D680 A1D80000 */  sb         $t8, ($t6)
/* 5E284 8005D684 8E0F000C */  lw         $t7, 0xc($s0)
/* 5E288 8005D688 25F90001 */  addiu      $t9, $t7, 1
/* 5E28C 8005D68C AE19000C */  sw         $t9, 0xc($s0)
.L8005D690:
/* 5E290 8005D690 8E18000C */  lw         $t8, 0xc($s0)
.L8005D694:
/* 5E294 8005D694 02002025 */  or         $a0, $s0, $zero
/* 5E298 8005D698 03077021 */  addu       $t6, $t8, $a3
/* 5E29C 8005D69C 0C019170 */  jal        func_800645C0
/* 5E2A0 8005D6A0 AE0E0008 */   sw        $t6, 8($s0)
/* 5E2A4 8005D6A4 10000067 */  b          .L8005D844
/* 5E2A8 8005D6A8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E2AC 8005D6AC 92020034 */  lbu        $v0, 0x34($s0)
/* 5E2B0 8005D6B0 24010068 */  addiu      $at, $zero, 0x68
/* 5E2B4 8005D6B4 5441000C */  bnel       $v0, $at, .L8005D6E8
/* 5E2B8 8005D6B8 2401006C */   addiu     $at, $zero, 0x6c
/* 5E2BC 8005D6BC 8CCF0000 */  lw         $t7, ($a2)
/* 5E2C0 8005D6C0 2401FFFC */  addiu      $at, $zero, -4
/* 5E2C4 8005D6C4 25F90003 */  addiu      $t9, $t7, 3
/* 5E2C8 8005D6C8 0321C024 */  and        $t8, $t9, $at
/* 5E2CC 8005D6CC 270E0004 */  addiu      $t6, $t8, 4
/* 5E2D0 8005D6D0 ACCE0000 */  sw         $t6, ($a2)
/* 5E2D4 8005D6D4 8DD9FFFC */  lw         $t9, -4($t6)
/* 5E2D8 8005D6D8 8E0F002C */  lw         $t7, 0x2c($s0)
/* 5E2DC 8005D6DC 10000058 */  b          .L8005D840
/* 5E2E0 8005D6E0 A72F0000 */   sh        $t7, ($t9)
/* 5E2E4 8005D6E4 2401006C */  addiu      $at, $zero, 0x6c
.L8005D6E8:
/* 5E2E8 8005D6E8 5441000C */  bnel       $v0, $at, .L8005D71C
/* 5E2EC 8005D6EC 2401004C */   addiu     $at, $zero, 0x4c
/* 5E2F0 8005D6F0 8CD80000 */  lw         $t8, ($a2)
/* 5E2F4 8005D6F4 2401FFFC */  addiu      $at, $zero, -4
/* 5E2F8 8005D6F8 270E0003 */  addiu      $t6, $t8, 3
/* 5E2FC 8005D6FC 01C17824 */  and        $t7, $t6, $at
/* 5E300 8005D700 25F90004 */  addiu      $t9, $t7, 4
/* 5E304 8005D704 ACD90000 */  sw         $t9, ($a2)
/* 5E308 8005D708 8F2EFFFC */  lw         $t6, -4($t9)
/* 5E30C 8005D70C 8E18002C */  lw         $t8, 0x2c($s0)
/* 5E310 8005D710 1000004B */  b          .L8005D840
/* 5E314 8005D714 ADD80000 */   sw        $t8, ($t6)
/* 5E318 8005D718 2401004C */  addiu      $at, $zero, 0x4c
.L8005D71C:
/* 5E31C 8005D71C 5441000E */  bnel       $v0, $at, .L8005D758
/* 5E320 8005D720 8CCF0000 */   lw        $t7, ($a2)
/* 5E324 8005D724 8CCF0000 */  lw         $t7, ($a2)
/* 5E328 8005D728 2401FFFC */  addiu      $at, $zero, -4
/* 5E32C 8005D72C 25F90003 */  addiu      $t9, $t7, 3
/* 5E330 8005D730 0321C024 */  and        $t8, $t9, $at
/* 5E334 8005D734 270E0004 */  addiu      $t6, $t8, 4
/* 5E338 8005D738 ACCE0000 */  sw         $t6, ($a2)
/* 5E33C 8005D73C 8DCEFFFC */  lw         $t6, -4($t6)
/* 5E340 8005D740 8E0F002C */  lw         $t7, 0x2c($s0)
/* 5E344 8005D744 24180000 */  addiu      $t8, $zero, 0
/* 5E348 8005D748 ADD80000 */  sw         $t8, ($t6)
/* 5E34C 8005D74C 1000003C */  b          .L8005D840
/* 5E350 8005D750 ADCF0004 */   sw        $t7, 4($t6)
/* 5E354 8005D754 8CCF0000 */  lw         $t7, ($a2)
.L8005D758:
/* 5E358 8005D758 2401FFFC */  addiu      $at, $zero, -4
/* 5E35C 8005D75C 25F80003 */  addiu      $t8, $t7, 3
/* 5E360 8005D760 0301C824 */  and        $t9, $t8, $at
/* 5E364 8005D764 272E0004 */  addiu      $t6, $t9, 4
/* 5E368 8005D768 ACCE0000 */  sw         $t6, ($a2)
/* 5E36C 8005D76C 8DD8FFFC */  lw         $t8, -4($t6)
/* 5E370 8005D770 8E0F002C */  lw         $t7, 0x2c($s0)
/* 5E374 8005D774 10000032 */  b          .L8005D840
/* 5E378 8005D778 AF0F0000 */   sw        $t7, ($t8)
/* 5E37C 8005D77C 8CD90000 */  lw         $t9, ($a2)
/* 5E380 8005D780 2401FFFC */  addiu      $at, $zero, -4
/* 5E384 8005D784 02002025 */  or         $a0, $s0, $zero
/* 5E388 8005D788 272E0003 */  addiu      $t6, $t9, 3
/* 5E38C 8005D78C 01C17824 */  and        $t7, $t6, $at
/* 5E390 8005D790 25F80004 */  addiu      $t8, $t7, 4
/* 5E394 8005D794 ACD80000 */  sw         $t8, ($a2)
/* 5E398 8005D798 8F0EFFFC */  lw         $t6, -4($t8)
/* 5E39C 8005D79C 8E0F000C */  lw         $t7, 0xc($s0)
/* 5E3A0 8005D7A0 24050078 */  addiu      $a1, $zero, 0x78
/* 5E3A4 8005D7A4 000EC7C3 */  sra        $t8, $t6, 0x1f
/* 5E3A8 8005D7A8 AE0E0004 */  sw         $t6, 4($s0)
/* 5E3AC 8005D7AC 01E77021 */  addu       $t6, $t7, $a3
/* 5E3B0 8005D7B0 AE180000 */  sw         $t8, ($s0)
/* 5E3B4 8005D7B4 0C019328 */  jal        func_80064CA0
/* 5E3B8 8005D7B8 AE0E0008 */   sw        $t6, 8($s0)
/* 5E3BC 8005D7BC 10000021 */  b          .L8005D844
/* 5E3C0 8005D7C0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E3C4 8005D7C4 8CD80000 */  lw         $t8, ($a2)
/* 5E3C8 8005D7C8 2401FFFC */  addiu      $at, $zero, -4
/* 5E3CC 8005D7CC 27190003 */  addiu      $t9, $t8, 3
/* 5E3D0 8005D7D0 03217824 */  and        $t7, $t9, $at
/* 5E3D4 8005D7D4 25EE0004 */  addiu      $t6, $t7, 4
/* 5E3D8 8005D7D8 ACCE0000 */  sw         $t6, ($a2)
/* 5E3DC 8005D7DC 8DC4FFFC */  lw         $a0, -4($t6)
/* 5E3E0 8005D7E0 0C01789F */  jal        func_8005E27C
/* 5E3E4 8005D7E4 AE040008 */   sw        $a0, 8($s0)
/* 5E3E8 8005D7E8 8E030024 */  lw         $v1, 0x24($s0)
/* 5E3EC 8005D7EC AE020014 */  sw         $v0, 0x14($s0)
/* 5E3F0 8005D7F0 04600013 */  bltz       $v1, .L8005D840
/* 5E3F4 8005D7F4 0062082A */   slt       $at, $v1, $v0
/* 5E3F8 8005D7F8 50200012 */  beql       $at, $zero, .L8005D844
/* 5E3FC 8005D7FC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E400 8005D800 1000000F */  b          .L8005D840
/* 5E404 8005D804 AE030014 */   sw        $v1, 0x14($s0)
/* 5E408 8005D808 8E18000C */  lw         $t8, 0xc($s0)
.L8005D80C:
/* 5E40C 8005D80C 240E0025 */  addiu      $t6, $zero, 0x25
/* 5E410 8005D810 00F8C821 */  addu       $t9, $a3, $t8
/* 5E414 8005D814 A32E0000 */  sb         $t6, ($t9)
/* 5E418 8005D818 8E0F000C */  lw         $t7, 0xc($s0)
/* 5E41C 8005D81C 25F80001 */  addiu      $t8, $t7, 1
/* 5E420 8005D820 10000007 */  b          .L8005D840
/* 5E424 8005D824 AE18000C */   sw        $t8, 0xc($s0)
.L8005D828:
/* 5E428 8005D828 8E0E000C */  lw         $t6, 0xc($s0)
.L8005D82C:
/* 5E42C 8005D82C 00EEC821 */  addu       $t9, $a3, $t6
/* 5E430 8005D830 A3250000 */  sb         $a1, ($t9)
/* 5E434 8005D834 8E0F000C */  lw         $t7, 0xc($s0)
/* 5E438 8005D838 25F80001 */  addiu      $t8, $t7, 1
/* 5E43C 8005D83C AE18000C */  sw         $t8, 0xc($s0)
.L8005D840:
/* 5E440 8005D840 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D844:
/* 5E444 8005D844 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E448 8005D848 03E00008 */  jr         $ra
/* 5E44C 8005D84C 00000000 */   nop       

glabel func_8005D850
/* 5E450 8005D850 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* 5E454 8005D854 AFB70034 */  sw         $s7, 0x34($sp)
/* 5E458 8005D858 AFB60030 */  sw         $s6, 0x30($sp)
/* 5E45C 8005D85C AFB5002C */  sw         $s5, 0x2c($sp)
/* 5E460 8005D860 AFBE0038 */  sw         $fp, 0x38($sp)
/* 5E464 8005D864 AFB40028 */  sw         $s4, 0x28($sp)
/* 5E468 8005D868 AFB30024 */  sw         $s3, 0x24($sp)
/* 5E46C 8005D86C AFA700E4 */  sw         $a3, 0xe4($sp)
/* 5E470 8005D870 3C158008 */  lui        $s5, 0x8008
/* 5E474 8005D874 3C168008 */  lui        $s6, 0x8008
/* 5E478 8005D878 3C178008 */  lui        $s7, 0x8008
/* 5E47C 8005D87C 00C03825 */  or         $a3, $a2, $zero
/* 5E480 8005D880 00A09825 */  or         $s3, $a1, $zero
/* 5E484 8005D884 0080A025 */  or         $s4, $a0, $zero
/* 5E488 8005D888 AFBF003C */  sw         $ra, 0x3c($sp)
/* 5E48C 8005D88C AFB20020 */  sw         $s2, 0x20($sp)
/* 5E490 8005D890 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5E494 8005D894 AFB00018 */  sw         $s0, 0x18($sp)
/* 5E498 8005D898 AFA600E0 */  sw         $a2, 0xe0($sp)
/* 5E49C 8005D89C AFA000CC */  sw         $zero, 0xcc($sp)
/* 5E4A0 8005D8A0 26F7A960 */  addiu      $s7, $s7, -0x56a0
/* 5E4A4 8005D8A4 26D6E394 */  addiu      $s6, $s6, -0x1c6c
/* 5E4A8 8005D8A8 26B5A984 */  addiu      $s5, $s5, -0x567c
/* 5E4AC 8005D8AC 241E000A */  addiu      $fp, $zero, 0xa
.L8005D8B0:
/* 5E4B0 8005D8B0 90E20000 */  lbu        $v0, ($a3)
/* 5E4B4 8005D8B4 00E09025 */  or         $s2, $a3, $zero
/* 5E4B8 8005D8B8 24030025 */  addiu      $v1, $zero, 0x25
/* 5E4BC 8005D8BC 10400009 */  beqz       $v0, .L8005D8E4
/* 5E4C0 8005D8C0 00408025 */   or        $s0, $v0, $zero
/* 5E4C4 8005D8C4 50620008 */  beql       $v1, $v0, .L8005D8E8
/* 5E4C8 8005D8C8 02471023 */   subu      $v0, $s2, $a3
/* 5E4CC 8005D8CC 92420001 */  lbu        $v0, 1($s2)
.L8005D8D0:
/* 5E4D0 8005D8D0 26520001 */  addiu      $s2, $s2, 1
/* 5E4D4 8005D8D4 10400003 */  beqz       $v0, .L8005D8E4
/* 5E4D8 8005D8D8 00408025 */   or        $s0, $v0, $zero
/* 5E4DC 8005D8DC 5462FFFC */  bnel       $v1, $v0, .L8005D8D0
/* 5E4E0 8005D8E0 92420001 */   lbu       $v0, 1($s2)
.L8005D8E4:
/* 5E4E4 8005D8E4 02471023 */  subu       $v0, $s2, $a3
.L8005D8E8:
/* 5E4E8 8005D8E8 1840000D */  blez       $v0, .L8005D920
/* 5E4EC 8005D8EC 02602025 */   or        $a0, $s3, $zero
/* 5E4F0 8005D8F0 00E02825 */  or         $a1, $a3, $zero
/* 5E4F4 8005D8F4 00408825 */  or         $s1, $v0, $zero
/* 5E4F8 8005D8F8 0280F809 */  jalr       $s4
/* 5E4FC 8005D8FC 00403025 */   or        $a2, $v0, $zero
/* 5E500 8005D900 10400005 */  beqz       $v0, .L8005D918
/* 5E504 8005D904 00409825 */   or        $s3, $v0, $zero
/* 5E508 8005D908 8FAE00CC */  lw         $t6, 0xcc($sp)
/* 5E50C 8005D90C 01D17821 */  addu       $t7, $t6, $s1
/* 5E510 8005D910 10000003 */  b          .L8005D920
/* 5E514 8005D914 AFAF00CC */   sw        $t7, 0xcc($sp)
.L8005D918:
/* 5E518 8005D918 10000153 */  b          .L8005DE68
/* 5E51C 8005D91C 8FA200CC */   lw        $v0, 0xcc($sp)
.L8005D920:
/* 5E520 8005D920 16000003 */  bnez       $s0, .L8005D930
/* 5E524 8005D924 26520001 */   addiu     $s2, $s2, 1
/* 5E528 8005D928 1000014F */  b          .L8005DE68
/* 5E52C 8005D92C 8FA200CC */   lw        $v0, 0xcc($sp)
.L8005D930:
/* 5E530 8005D930 AFA000D0 */  sw         $zero, 0xd0($sp)
/* 5E534 8005D934 92450000 */  lbu        $a1, ($s2)
/* 5E538 8005D938 0C0178A9 */  jal        func_8005E2A4
/* 5E53C 8005D93C 02C02025 */   or        $a0, $s6, $zero
/* 5E540 8005D940 1040000F */  beqz       $v0, .L8005D980
/* 5E544 8005D944 00408025 */   or        $s0, $v0, $zero
.L8005D948:
/* 5E548 8005D948 0216C823 */  subu       $t9, $s0, $s6
/* 5E54C 8005D94C 00197080 */  sll        $t6, $t9, 2
/* 5E550 8005D950 3C0F8008 */  lui        $t7, 0x8008
/* 5E554 8005D954 01EE7821 */  addu       $t7, $t7, $t6
/* 5E558 8005D958 8DEFE39C */  lw         $t7, -0x1c64($t7)
/* 5E55C 8005D95C 8FB800D0 */  lw         $t8, 0xd0($sp)
/* 5E560 8005D960 26520001 */  addiu      $s2, $s2, 1
/* 5E564 8005D964 02C02025 */  or         $a0, $s6, $zero
/* 5E568 8005D968 030FC825 */  or         $t9, $t8, $t7
/* 5E56C 8005D96C AFB900D0 */  sw         $t9, 0xd0($sp)
/* 5E570 8005D970 0C0178A9 */  jal        func_8005E2A4
/* 5E574 8005D974 92450000 */   lbu       $a1, ($s2)
/* 5E578 8005D978 1440FFF3 */  bnez       $v0, .L8005D948
/* 5E57C 8005D97C 00408025 */   or        $s0, $v0, $zero
.L8005D980:
/* 5E580 8005D980 924E0000 */  lbu        $t6, ($s2)
/* 5E584 8005D984 2402002A */  addiu      $v0, $zero, 0x2a
/* 5E588 8005D988 8FB800E4 */  lw         $t8, 0xe4($sp)
/* 5E58C 8005D98C 144E0011 */  bne        $v0, $t6, .L8005D9D4
/* 5E590 8005D990 3C048008 */   lui       $a0, 0x8008
/* 5E594 8005D994 270F0003 */  addiu      $t7, $t8, 3
/* 5E598 8005D998 2401FFFC */  addiu      $at, $zero, -4
/* 5E59C 8005D99C 01E1C824 */  and        $t9, $t7, $at
/* 5E5A0 8005D9A0 272E0004 */  addiu      $t6, $t9, 4
/* 5E5A4 8005D9A4 AFAE00E4 */  sw         $t6, 0xe4($sp)
/* 5E5A8 8005D9A8 8F380000 */  lw         $t8, ($t9)
/* 5E5AC 8005D9AC 26520001 */  addiu      $s2, $s2, 1
/* 5E5B0 8005D9B0 07010006 */  bgez       $t8, .L8005D9CC
/* 5E5B4 8005D9B4 AFB800C8 */   sw        $t8, 0xc8($sp)
/* 5E5B8 8005D9B8 8FAE00D0 */  lw         $t6, 0xd0($sp)
/* 5E5BC 8005D9BC 00187823 */  negu       $t7, $t8
/* 5E5C0 8005D9C0 AFAF00C8 */  sw         $t7, 0xc8($sp)
/* 5E5C4 8005D9C4 35D90004 */  ori        $t9, $t6, 4
/* 5E5C8 8005D9C8 AFB900D0 */  sw         $t9, 0xd0($sp)
.L8005D9CC:
/* 5E5CC 8005D9CC 10000018 */  b          .L8005DA30
/* 5E5D0 8005D9D0 92450000 */   lbu       $a1, ($s2)
.L8005D9D4:
/* 5E5D4 8005D9D4 AFA000C8 */  sw         $zero, 0xc8($sp)
/* 5E5D8 8005D9D8 92450000 */  lbu        $a1, ($s2)
/* 5E5DC 8005D9DC 28A10030 */  slti       $at, $a1, 0x30
/* 5E5E0 8005D9E0 14200013 */  bnez       $at, .L8005DA30
/* 5E5E4 8005D9E4 28A1003A */   slti      $at, $a1, 0x3a
/* 5E5E8 8005D9E8 50200012 */  beql       $at, $zero, .L8005DA34
/* 5E5EC 8005D9EC 2401002E */   addiu     $at, $zero, 0x2e
/* 5E5F0 8005D9F0 8FB800C8 */  lw         $t8, 0xc8($sp)
.L8005D9F4:
/* 5E5F4 8005D9F4 2B0103E7 */  slti       $at, $t8, 0x3e7
/* 5E5F8 8005D9F8 50200007 */  beql       $at, $zero, .L8005DA18
/* 5E5FC 8005D9FC 92450001 */   lbu       $a1, 1($s2)
/* 5E600 8005DA00 031E0019 */  multu      $t8, $fp
/* 5E604 8005DA04 00007812 */  mflo       $t7
/* 5E608 8005DA08 00AF7021 */  addu       $t6, $a1, $t7
/* 5E60C 8005DA0C 25D9FFD0 */  addiu      $t9, $t6, -0x30
/* 5E610 8005DA10 AFB900C8 */  sw         $t9, 0xc8($sp)
/* 5E614 8005DA14 92450001 */  lbu        $a1, 1($s2)
.L8005DA18:
/* 5E618 8005DA18 26520001 */  addiu      $s2, $s2, 1
/* 5E61C 8005DA1C 28A10030 */  slti       $at, $a1, 0x30
/* 5E620 8005DA20 14200003 */  bnez       $at, .L8005DA30
/* 5E624 8005DA24 28A1003A */   slti      $at, $a1, 0x3a
/* 5E628 8005DA28 5420FFF2 */  bnel       $at, $zero, .L8005D9F4
/* 5E62C 8005DA2C 8FB800C8 */   lw        $t8, 0xc8($sp)
.L8005DA30:
/* 5E630 8005DA30 2401002E */  addiu      $at, $zero, 0x2e
.L8005DA34:
/* 5E634 8005DA34 10A10004 */  beq        $a1, $at, .L8005DA48
/* 5E638 8005DA38 2418FFFF */   addiu     $t8, $zero, -1
/* 5E63C 8005DA3C AFB800C4 */  sw         $t8, 0xc4($sp)
/* 5E640 8005DA40 10000026 */  b          .L8005DADC
/* 5E644 8005DA44 92450000 */   lbu       $a1, ($s2)
.L8005DA48:
/* 5E648 8005DA48 924F0001 */  lbu        $t7, 1($s2)
/* 5E64C 8005DA4C 8FAE00E4 */  lw         $t6, 0xe4($sp)
/* 5E650 8005DA50 26520001 */  addiu      $s2, $s2, 1
/* 5E654 8005DA54 144F000A */  bne        $v0, $t7, .L8005DA80
/* 5E658 8005DA58 25D90003 */   addiu     $t9, $t6, 3
/* 5E65C 8005DA5C 2401FFFC */  addiu      $at, $zero, -4
/* 5E660 8005DA60 0321C024 */  and        $t8, $t9, $at
/* 5E664 8005DA64 270F0004 */  addiu      $t7, $t8, 4
/* 5E668 8005DA68 AFAF00E4 */  sw         $t7, 0xe4($sp)
/* 5E66C 8005DA6C 8F0E0000 */  lw         $t6, ($t8)
/* 5E670 8005DA70 26520001 */  addiu      $s2, $s2, 1
/* 5E674 8005DA74 AFAE00C4 */  sw         $t6, 0xc4($sp)
/* 5E678 8005DA78 10000018 */  b          .L8005DADC
/* 5E67C 8005DA7C 92450000 */   lbu       $a1, ($s2)
.L8005DA80:
/* 5E680 8005DA80 AFA000C4 */  sw         $zero, 0xc4($sp)
/* 5E684 8005DA84 92450000 */  lbu        $a1, ($s2)
/* 5E688 8005DA88 28A10030 */  slti       $at, $a1, 0x30
/* 5E68C 8005DA8C 14200013 */  bnez       $at, .L8005DADC
/* 5E690 8005DA90 28A1003A */   slti      $at, $a1, 0x3a
/* 5E694 8005DA94 10200011 */  beqz       $at, .L8005DADC
/* 5E698 8005DA98 00000000 */   nop       
/* 5E69C 8005DA9C 8FB900C4 */  lw         $t9, 0xc4($sp)
.L8005DAA0:
/* 5E6A0 8005DAA0 2B2103E7 */  slti       $at, $t9, 0x3e7
/* 5E6A4 8005DAA4 50200007 */  beql       $at, $zero, .L8005DAC4
/* 5E6A8 8005DAA8 92450001 */   lbu       $a1, 1($s2)
/* 5E6AC 8005DAAC 033E0019 */  multu      $t9, $fp
/* 5E6B0 8005DAB0 00007812 */  mflo       $t7
/* 5E6B4 8005DAB4 00AFC021 */  addu       $t8, $a1, $t7
/* 5E6B8 8005DAB8 270EFFD0 */  addiu      $t6, $t8, -0x30
/* 5E6BC 8005DABC AFAE00C4 */  sw         $t6, 0xc4($sp)
/* 5E6C0 8005DAC0 92450001 */  lbu        $a1, 1($s2)
.L8005DAC4:
/* 5E6C4 8005DAC4 26520001 */  addiu      $s2, $s2, 1
/* 5E6C8 8005DAC8 28A10030 */  slti       $at, $a1, 0x30
/* 5E6CC 8005DACC 14200003 */  bnez       $at, .L8005DADC
/* 5E6D0 8005DAD0 28A1003A */   slti      $at, $a1, 0x3a
/* 5E6D4 8005DAD4 5420FFF2 */  bnel       $at, $zero, .L8005DAA0
/* 5E6D8 8005DAD8 8FB900C4 */   lw        $t9, 0xc4($sp)
.L8005DADC:
/* 5E6DC 8005DADC 0C0178A9 */  jal        func_8005E2A4
/* 5E6E0 8005DAE0 2484E390 */   addiu     $a0, $a0, -0x1c70
/* 5E6E4 8005DAE4 10400005 */  beqz       $v0, .L8005DAFC
/* 5E6E8 8005DAE8 27B000A0 */   addiu     $s0, $sp, 0xa0
/* 5E6EC 8005DAEC 92590000 */  lbu        $t9, ($s2)
/* 5E6F0 8005DAF0 26520001 */  addiu      $s2, $s2, 1
/* 5E6F4 8005DAF4 10000002 */  b          .L8005DB00
/* 5E6F8 8005DAF8 A3B900D4 */   sb        $t9, 0xd4($sp)
.L8005DAFC:
/* 5E6FC 8005DAFC A3A000D4 */  sb         $zero, 0xd4($sp)
.L8005DB00:
/* 5E700 8005DB00 93AF00D4 */  lbu        $t7, 0xd4($sp)
/* 5E704 8005DB04 2402006C */  addiu      $v0, $zero, 0x6c
/* 5E708 8005DB08 27A600E4 */  addiu      $a2, $sp, 0xe4
/* 5E70C 8005DB0C 144F0007 */  bne        $v0, $t7, .L8005DB2C
/* 5E710 8005DB10 27A70074 */   addiu     $a3, $sp, 0x74
/* 5E714 8005DB14 92580000 */  lbu        $t8, ($s2)
/* 5E718 8005DB18 240E004C */  addiu      $t6, $zero, 0x4c
/* 5E71C 8005DB1C 14580003 */  bne        $v0, $t8, .L8005DB2C
/* 5E720 8005DB20 00000000 */   nop       
/* 5E724 8005DB24 A3AE00D4 */  sb         $t6, 0xd4($sp)
/* 5E728 8005DB28 26520001 */  addiu      $s2, $s2, 1
.L8005DB2C:
/* 5E72C 8005DB2C 0C017478 */  jal        func_8005D1E0
/* 5E730 8005DB30 92450000 */   lbu       $a1, ($s2)
/* 5E734 8005DB34 8FB900C8 */  lw         $t9, 0xc8($sp)
/* 5E738 8005DB38 8FAF00AC */  lw         $t7, 0xac($sp)
/* 5E73C 8005DB3C 8FAE00B0 */  lw         $t6, 0xb0($sp)
/* 5E740 8005DB40 032FC023 */  subu       $t8, $t9, $t7
/* 5E744 8005DB44 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* 5E748 8005DB48 030EC823 */  subu       $t9, $t8, $t6
/* 5E74C 8005DB4C 8FAE00B8 */  lw         $t6, 0xb8($sp)
/* 5E750 8005DB50 032FC023 */  subu       $t8, $t9, $t7
/* 5E754 8005DB54 8FAF00BC */  lw         $t7, 0xbc($sp)
/* 5E758 8005DB58 030EC823 */  subu       $t9, $t8, $t6
/* 5E75C 8005DB5C 8FAE00C0 */  lw         $t6, 0xc0($sp)
/* 5E760 8005DB60 032FC023 */  subu       $t8, $t9, $t7
/* 5E764 8005DB64 8FAF00D0 */  lw         $t7, 0xd0($sp)
/* 5E768 8005DB68 030EC823 */  subu       $t9, $t8, $t6
/* 5E76C 8005DB6C AFB900C8 */  sw         $t9, 0xc8($sp)
/* 5E770 8005DB70 31F80004 */  andi       $t8, $t7, 4
/* 5E774 8005DB74 1700001A */  bnez       $t8, .L8005DBE0
/* 5E778 8005DB78 0019702A */   slt       $t6, $zero, $t9
/* 5E77C 8005DB7C 51C00019 */  beql       $t6, $zero, .L8005DBE4
/* 5E780 8005DB80 8FB900AC */   lw        $t9, 0xac($sp)
/* 5E784 8005DB84 11C00016 */  beqz       $t6, .L8005DBE0
/* 5E788 8005DB88 03208825 */   or        $s1, $t9, $zero
/* 5E78C 8005DB8C 2E210021 */  sltiu      $at, $s1, 0x21
.L8005DB90:
/* 5E790 8005DB90 14200003 */  bnez       $at, .L8005DBA0
/* 5E794 8005DB94 02208025 */   or        $s0, $s1, $zero
/* 5E798 8005DB98 10000001 */  b          .L8005DBA0
/* 5E79C 8005DB9C 24100020 */   addiu     $s0, $zero, 0x20
.L8005DBA0:
/* 5E7A0 8005DBA0 1A00000C */  blez       $s0, .L8005DBD4
/* 5E7A4 8005DBA4 02602025 */   or        $a0, $s3, $zero
/* 5E7A8 8005DBA8 02E02825 */  or         $a1, $s7, $zero
/* 5E7AC 8005DBAC 0280F809 */  jalr       $s4
/* 5E7B0 8005DBB0 02003025 */   or        $a2, $s0, $zero
/* 5E7B4 8005DBB4 10400005 */  beqz       $v0, .L8005DBCC
/* 5E7B8 8005DBB8 00409825 */   or        $s3, $v0, $zero
/* 5E7BC 8005DBBC 8FAF00CC */  lw         $t7, 0xcc($sp)
/* 5E7C0 8005DBC0 01F0C021 */  addu       $t8, $t7, $s0
/* 5E7C4 8005DBC4 10000003 */  b          .L8005DBD4
/* 5E7C8 8005DBC8 AFB800CC */   sw        $t8, 0xcc($sp)
.L8005DBCC:
/* 5E7CC 8005DBCC 100000A6 */  b          .L8005DE68
/* 5E7D0 8005DBD0 8FA200CC */   lw        $v0, 0xcc($sp)
.L8005DBD4:
/* 5E7D4 8005DBD4 02308823 */  subu       $s1, $s1, $s0
/* 5E7D8 8005DBD8 5E20FFED */  bgtzl      $s1, .L8005DB90
/* 5E7DC 8005DBDC 2E210021 */   sltiu     $at, $s1, 0x21
.L8005DBE0:
/* 5E7E0 8005DBE0 8FB900AC */  lw         $t9, 0xac($sp)
.L8005DBE4:
/* 5E7E4 8005DBE4 02602025 */  or         $a0, $s3, $zero
/* 5E7E8 8005DBE8 27A50074 */  addiu      $a1, $sp, 0x74
/* 5E7EC 8005DBEC 5B20000D */  blezl      $t9, .L8005DC24
/* 5E7F0 8005DBF0 8FB900B0 */   lw        $t9, 0xb0($sp)
/* 5E7F4 8005DBF4 0280F809 */  jalr       $s4
/* 5E7F8 8005DBF8 03203025 */   or        $a2, $t9, $zero
/* 5E7FC 8005DBFC 10400006 */  beqz       $v0, .L8005DC18
/* 5E800 8005DC00 00409825 */   or        $s3, $v0, $zero
/* 5E804 8005DC04 8FAE00CC */  lw         $t6, 0xcc($sp)
/* 5E808 8005DC08 8FAF00AC */  lw         $t7, 0xac($sp)
/* 5E80C 8005DC0C 01CFC021 */  addu       $t8, $t6, $t7
/* 5E810 8005DC10 10000003 */  b          .L8005DC20
/* 5E814 8005DC14 AFB800CC */   sw        $t8, 0xcc($sp)
.L8005DC18:
/* 5E818 8005DC18 10000093 */  b          .L8005DE68
/* 5E81C 8005DC1C 8FA200CC */   lw        $v0, 0xcc($sp)
.L8005DC20:
/* 5E820 8005DC20 8FB900B0 */  lw         $t9, 0xb0($sp)
.L8005DC24:
/* 5E824 8005DC24 0019702A */  slt        $t6, $zero, $t9
/* 5E828 8005DC28 51C00019 */  beql       $t6, $zero, .L8005DC90
/* 5E82C 8005DC2C 8FB900B4 */   lw        $t9, 0xb4($sp)
/* 5E830 8005DC30 11C00016 */  beqz       $t6, .L8005DC8C
/* 5E834 8005DC34 03208825 */   or        $s1, $t9, $zero
/* 5E838 8005DC38 2E210021 */  sltiu      $at, $s1, 0x21
.L8005DC3C:
/* 5E83C 8005DC3C 14200003 */  bnez       $at, .L8005DC4C
/* 5E840 8005DC40 02208025 */   or        $s0, $s1, $zero
/* 5E844 8005DC44 10000001 */  b          .L8005DC4C
/* 5E848 8005DC48 24100020 */   addiu     $s0, $zero, 0x20
.L8005DC4C:
/* 5E84C 8005DC4C 1A00000C */  blez       $s0, .L8005DC80
/* 5E850 8005DC50 02602025 */   or        $a0, $s3, $zero
/* 5E854 8005DC54 02A02825 */  or         $a1, $s5, $zero
/* 5E858 8005DC58 0280F809 */  jalr       $s4
/* 5E85C 8005DC5C 02003025 */   or        $a2, $s0, $zero
/* 5E860 8005DC60 10400005 */  beqz       $v0, .L8005DC78
/* 5E864 8005DC64 00409825 */   or        $s3, $v0, $zero
/* 5E868 8005DC68 8FAF00CC */  lw         $t7, 0xcc($sp)
/* 5E86C 8005DC6C 01F0C021 */  addu       $t8, $t7, $s0
/* 5E870 8005DC70 10000003 */  b          .L8005DC80
/* 5E874 8005DC74 AFB800CC */   sw        $t8, 0xcc($sp)
.L8005DC78:
/* 5E878 8005DC78 1000007B */  b          .L8005DE68
/* 5E87C 8005DC7C 8FA200CC */   lw        $v0, 0xcc($sp)
.L8005DC80:
/* 5E880 8005DC80 02308823 */  subu       $s1, $s1, $s0
/* 5E884 8005DC84 5E20FFED */  bgtzl      $s1, .L8005DC3C
/* 5E888 8005DC88 2E210021 */   sltiu     $at, $s1, 0x21
.L8005DC8C:
/* 5E88C 8005DC8C 8FB900B4 */  lw         $t9, 0xb4($sp)
.L8005DC90:
/* 5E890 8005DC90 02602025 */  or         $a0, $s3, $zero
/* 5E894 8005DC94 8FA500A8 */  lw         $a1, 0xa8($sp)
/* 5E898 8005DC98 5B20000D */  blezl      $t9, .L8005DCD0
/* 5E89C 8005DC9C 8FB900B8 */   lw        $t9, 0xb8($sp)
/* 5E8A0 8005DCA0 0280F809 */  jalr       $s4
/* 5E8A4 8005DCA4 03203025 */   or        $a2, $t9, $zero
/* 5E8A8 8005DCA8 10400006 */  beqz       $v0, .L8005DCC4
/* 5E8AC 8005DCAC 00409825 */   or        $s3, $v0, $zero
/* 5E8B0 8005DCB0 8FAE00CC */  lw         $t6, 0xcc($sp)
/* 5E8B4 8005DCB4 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* 5E8B8 8005DCB8 01CFC021 */  addu       $t8, $t6, $t7
/* 5E8BC 8005DCBC 10000003 */  b          .L8005DCCC
/* 5E8C0 8005DCC0 AFB800CC */   sw        $t8, 0xcc($sp)
.L8005DCC4:
/* 5E8C4 8005DCC4 10000068 */  b          .L8005DE68
/* 5E8C8 8005DCC8 8FA200CC */   lw        $v0, 0xcc($sp)
.L8005DCCC:
/* 5E8CC 8005DCCC 8FB900B8 */  lw         $t9, 0xb8($sp)
.L8005DCD0:
/* 5E8D0 8005DCD0 0019702A */  slt        $t6, $zero, $t9
/* 5E8D4 8005DCD4 51C00019 */  beql       $t6, $zero, .L8005DD3C
/* 5E8D8 8005DCD8 8FB900BC */   lw        $t9, 0xbc($sp)
/* 5E8DC 8005DCDC 11C00016 */  beqz       $t6, .L8005DD38
/* 5E8E0 8005DCE0 03208825 */   or        $s1, $t9, $zero
/* 5E8E4 8005DCE4 2E210021 */  sltiu      $at, $s1, 0x21
.L8005DCE8:
/* 5E8E8 8005DCE8 14200003 */  bnez       $at, .L8005DCF8
/* 5E8EC 8005DCEC 02208025 */   or        $s0, $s1, $zero
/* 5E8F0 8005DCF0 10000001 */  b          .L8005DCF8
/* 5E8F4 8005DCF4 24100020 */   addiu     $s0, $zero, 0x20
.L8005DCF8:
/* 5E8F8 8005DCF8 1A00000C */  blez       $s0, .L8005DD2C
/* 5E8FC 8005DCFC 02602025 */   or        $a0, $s3, $zero
/* 5E900 8005DD00 02A02825 */  or         $a1, $s5, $zero
/* 5E904 8005DD04 0280F809 */  jalr       $s4
/* 5E908 8005DD08 02003025 */   or        $a2, $s0, $zero
/* 5E90C 8005DD0C 10400005 */  beqz       $v0, .L8005DD24
/* 5E910 8005DD10 00409825 */   or        $s3, $v0, $zero
/* 5E914 8005DD14 8FAF00CC */  lw         $t7, 0xcc($sp)
/* 5E918 8005DD18 01F0C021 */  addu       $t8, $t7, $s0
/* 5E91C 8005DD1C 10000003 */  b          .L8005DD2C
/* 5E920 8005DD20 AFB800CC */   sw        $t8, 0xcc($sp)
.L8005DD24:
/* 5E924 8005DD24 10000050 */  b          .L8005DE68
/* 5E928 8005DD28 8FA200CC */   lw        $v0, 0xcc($sp)
.L8005DD2C:
/* 5E92C 8005DD2C 02308823 */  subu       $s1, $s1, $s0
/* 5E930 8005DD30 5E20FFED */  bgtzl      $s1, .L8005DCE8
/* 5E934 8005DD34 2E210021 */   sltiu     $at, $s1, 0x21
.L8005DD38:
/* 5E938 8005DD38 8FB900BC */  lw         $t9, 0xbc($sp)
.L8005DD3C:
/* 5E93C 8005DD3C 02602025 */  or         $a0, $s3, $zero
/* 5E940 8005DD40 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* 5E944 8005DD44 1B20000D */  blez       $t9, .L8005DD7C
/* 5E948 8005DD48 8FAF00B4 */   lw        $t7, 0xb4($sp)
/* 5E94C 8005DD4C 01CF2821 */  addu       $a1, $t6, $t7
/* 5E950 8005DD50 0280F809 */  jalr       $s4
/* 5E954 8005DD54 03203025 */   or        $a2, $t9, $zero
/* 5E958 8005DD58 10400006 */  beqz       $v0, .L8005DD74
/* 5E95C 8005DD5C 00409825 */   or        $s3, $v0, $zero
/* 5E960 8005DD60 8FB800CC */  lw         $t8, 0xcc($sp)
/* 5E964 8005DD64 8FAE00BC */  lw         $t6, 0xbc($sp)
/* 5E968 8005DD68 030E7821 */  addu       $t7, $t8, $t6
/* 5E96C 8005DD6C 10000003 */  b          .L8005DD7C
/* 5E970 8005DD70 AFAF00CC */   sw        $t7, 0xcc($sp)
.L8005DD74:
/* 5E974 8005DD74 1000003C */  b          .L8005DE68
/* 5E978 8005DD78 8FA200CC */   lw        $v0, 0xcc($sp)
.L8005DD7C:
/* 5E97C 8005DD7C 8FB900C0 */  lw         $t9, 0xc0($sp)
/* 5E980 8005DD80 0019C02A */  slt        $t8, $zero, $t9
/* 5E984 8005DD84 53000019 */  beql       $t8, $zero, .L8005DDEC
/* 5E988 8005DD88 8FB900D0 */   lw        $t9, 0xd0($sp)
/* 5E98C 8005DD8C 13000016 */  beqz       $t8, .L8005DDE8
/* 5E990 8005DD90 03208825 */   or        $s1, $t9, $zero
/* 5E994 8005DD94 2E210021 */  sltiu      $at, $s1, 0x21
.L8005DD98:
/* 5E998 8005DD98 14200003 */  bnez       $at, .L8005DDA8
/* 5E99C 8005DD9C 02208025 */   or        $s0, $s1, $zero
/* 5E9A0 8005DDA0 10000001 */  b          .L8005DDA8
/* 5E9A4 8005DDA4 24100020 */   addiu     $s0, $zero, 0x20
.L8005DDA8:
/* 5E9A8 8005DDA8 1A00000C */  blez       $s0, .L8005DDDC
/* 5E9AC 8005DDAC 02602025 */   or        $a0, $s3, $zero
/* 5E9B0 8005DDB0 02A02825 */  or         $a1, $s5, $zero
/* 5E9B4 8005DDB4 0280F809 */  jalr       $s4
/* 5E9B8 8005DDB8 02003025 */   or        $a2, $s0, $zero
/* 5E9BC 8005DDBC 10400005 */  beqz       $v0, .L8005DDD4
/* 5E9C0 8005DDC0 00409825 */   or        $s3, $v0, $zero
/* 5E9C4 8005DDC4 8FAE00CC */  lw         $t6, 0xcc($sp)
/* 5E9C8 8005DDC8 01D07821 */  addu       $t7, $t6, $s0
/* 5E9CC 8005DDCC 10000003 */  b          .L8005DDDC
/* 5E9D0 8005DDD0 AFAF00CC */   sw        $t7, 0xcc($sp)
.L8005DDD4:
/* 5E9D4 8005DDD4 10000024 */  b          .L8005DE68
/* 5E9D8 8005DDD8 8FA200CC */   lw        $v0, 0xcc($sp)
.L8005DDDC:
/* 5E9DC 8005DDDC 02308823 */  subu       $s1, $s1, $s0
/* 5E9E0 8005DDE0 5E20FFED */  bgtzl      $s1, .L8005DD98
/* 5E9E4 8005DDE4 2E210021 */   sltiu     $at, $s1, 0x21
.L8005DDE8:
/* 5E9E8 8005DDE8 8FB900D0 */  lw         $t9, 0xd0($sp)
.L8005DDEC:
/* 5E9EC 8005DDEC 8FAE00C8 */  lw         $t6, 0xc8($sp)
/* 5E9F0 8005DDF0 33380004 */  andi       $t8, $t9, 4
/* 5E9F4 8005DDF4 1300001A */  beqz       $t8, .L8005DE60
/* 5E9F8 8005DDF8 000E782A */   slt       $t7, $zero, $t6
/* 5E9FC 8005DDFC 11E00018 */  beqz       $t7, .L8005DE60
/* 5EA00 8005DE00 00000000 */   nop       
/* 5EA04 8005DE04 11E00016 */  beqz       $t7, .L8005DE60
/* 5EA08 8005DE08 01C08825 */   or        $s1, $t6, $zero
/* 5EA0C 8005DE0C 2E210021 */  sltiu      $at, $s1, 0x21
.L8005DE10:
/* 5EA10 8005DE10 14200003 */  bnez       $at, .L8005DE20
/* 5EA14 8005DE14 02208025 */   or        $s0, $s1, $zero
/* 5EA18 8005DE18 10000001 */  b          .L8005DE20
/* 5EA1C 8005DE1C 24100020 */   addiu     $s0, $zero, 0x20
.L8005DE20:
/* 5EA20 8005DE20 1A00000C */  blez       $s0, .L8005DE54
/* 5EA24 8005DE24 02602025 */   or        $a0, $s3, $zero
/* 5EA28 8005DE28 02E02825 */  or         $a1, $s7, $zero
/* 5EA2C 8005DE2C 0280F809 */  jalr       $s4
/* 5EA30 8005DE30 02003025 */   or        $a2, $s0, $zero
/* 5EA34 8005DE34 10400005 */  beqz       $v0, .L8005DE4C
/* 5EA38 8005DE38 00409825 */   or        $s3, $v0, $zero
/* 5EA3C 8005DE3C 8FB900CC */  lw         $t9, 0xcc($sp)
/* 5EA40 8005DE40 0330C021 */  addu       $t8, $t9, $s0
/* 5EA44 8005DE44 10000003 */  b          .L8005DE54
/* 5EA48 8005DE48 AFB800CC */   sw        $t8, 0xcc($sp)
.L8005DE4C:
/* 5EA4C 8005DE4C 10000006 */  b          .L8005DE68
/* 5EA50 8005DE50 8FA200CC */   lw        $v0, 0xcc($sp)
.L8005DE54:
/* 5EA54 8005DE54 02308823 */  subu       $s1, $s1, $s0
/* 5EA58 8005DE58 5E20FFED */  bgtzl      $s1, .L8005DE10
/* 5EA5C 8005DE5C 2E210021 */   sltiu     $at, $s1, 0x21
.L8005DE60:
/* 5EA60 8005DE60 1000FE93 */  b          .L8005D8B0
/* 5EA64 8005DE64 26470001 */   addiu     $a3, $s2, 1
.L8005DE68:
/* 5EA68 8005DE68 8FBF003C */  lw         $ra, 0x3c($sp)
/* 5EA6C 8005DE6C 8FB00018 */  lw         $s0, 0x18($sp)
/* 5EA70 8005DE70 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5EA74 8005DE74 8FB20020 */  lw         $s2, 0x20($sp)
/* 5EA78 8005DE78 8FB30024 */  lw         $s3, 0x24($sp)
/* 5EA7C 8005DE7C 8FB40028 */  lw         $s4, 0x28($sp)
/* 5EA80 8005DE80 8FB5002C */  lw         $s5, 0x2c($sp)
/* 5EA84 8005DE84 8FB60030 */  lw         $s6, 0x30($sp)
/* 5EA88 8005DE88 8FB70034 */  lw         $s7, 0x34($sp)
/* 5EA8C 8005DE8C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 5EA90 8005DE90 03E00008 */  jr         $ra
/* 5EA94 8005DE94 27BD00D8 */   addiu     $sp, $sp, 0xd8
/* 5EA98 8005DE98 00000000 */  nop        
/* 5EA9C 8005DE9C 00000000 */  nop        
