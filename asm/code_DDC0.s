.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000D1C0
/* DDC0 8000D1C0 03E00008 */  jr         $ra
/* DDC4 8000D1C4 00000000 */   nop       

glabel func_8000D1C8
/* DDC8 8000D1C8 03E00008 */  jr         $ra
/* DDCC 8000D1CC 00000000 */   nop       

glabel func_8000D1D0
/* DDD0 8000D1D0 03E00008 */  jr         $ra
/* DDD4 8000D1D4 00000000 */   nop       

glabel func_8000D1D8
/* DDD8 8000D1D8 03E00008 */  jr         $ra
/* DDDC 8000D1DC 00000000 */   nop       

glabel func_8000D1E0
/* DDE0 8000D1E0 240EFFFF */  addiu      $t6, $zero, -1
/* DDE4 8000D1E4 3C01800B */  lui        $at, 0x800b
/* DDE8 8000D1E8 03E00008 */  jr         $ra
/* DDEC 8000D1EC AC2E847C */   sw        $t6, -0x7b84($at)

glabel func_8000D1F0
/* DDF0 8000D1F0 3C02800B */  lui        $v0, 0x800b
/* DDF4 8000D1F4 8C42847C */  lw         $v0, -0x7b84($v0)
/* DDF8 8000D1F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DDFC 8000D1FC AFBF0014 */  sw         $ra, 0x14($sp)
/* DE00 8000D200 1082000A */  beq        $a0, $v0, .L8000D22C
/* DE04 8000D204 AFA40018 */   sw        $a0, 0x18($sp)
/* DE08 8000D208 04400003 */  bltz       $v0, .L8000D218
/* DE0C 8000D20C 00000000 */   nop       
/* DE10 8000D210 0C012E71 */  jal        func_8004B9C4
/* DE14 8000D214 00002025 */   or        $a0, $zero, $zero
.L8000D218:
/* DE18 8000D218 0C012C73 */  jal        func_8004B1CC
/* DE1C 8000D21C 8FA40018 */   lw        $a0, 0x18($sp)
/* DE20 8000D220 8FAF0018 */  lw         $t7, 0x18($sp)
/* DE24 8000D224 3C01800B */  lui        $at, 0x800b
/* DE28 8000D228 AC2F847C */  sw         $t7, -0x7b84($at)
.L8000D22C:
/* DE2C 8000D22C 8FBF0014 */  lw         $ra, 0x14($sp)
/* DE30 8000D230 27BD0018 */  addiu      $sp, $sp, 0x18
/* DE34 8000D234 03E00008 */  jr         $ra
/* DE38 8000D238 00000000 */   nop       

glabel func_8000D23C
/* DE3C 8000D23C 3C0E800B */  lui        $t6, 0x800b
/* DE40 8000D240 8DCE847C */  lw         $t6, -0x7b84($t6)
/* DE44 8000D244 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE48 8000D248 AFBF0014 */  sw         $ra, 0x14($sp)
/* DE4C 8000D24C 508E0007 */  beql       $a0, $t6, .L8000D26C
/* DE50 8000D250 8FBF0014 */   lw        $ra, 0x14($sp)
/* DE54 8000D254 0C012C73 */  jal        func_8004B1CC
/* DE58 8000D258 AFA40018 */   sw        $a0, 0x18($sp)
/* DE5C 8000D25C 8FA40018 */  lw         $a0, 0x18($sp)
/* DE60 8000D260 3C01800B */  lui        $at, 0x800b
/* DE64 8000D264 AC24847C */  sw         $a0, -0x7b84($at)
/* DE68 8000D268 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000D26C:
/* DE6C 8000D26C 27BD0018 */  addiu      $sp, $sp, 0x18
/* DE70 8000D270 03E00008 */  jr         $ra
/* DE74 8000D274 00000000 */   nop       

glabel func_8000D278
/* DE78 8000D278 3C0E800B */  lui        $t6, 0x800b
/* DE7C 8000D27C 8DCE847C */  lw         $t6, -0x7b84($t6)
/* DE80 8000D280 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE84 8000D284 AFBF0014 */  sw         $ra, 0x14($sp)
/* DE88 8000D288 05C20007 */  bltzl      $t6, .L8000D2A8
/* DE8C 8000D28C 8FBF0014 */   lw        $ra, 0x14($sp)
/* DE90 8000D290 0C012E71 */  jal        func_8004B9C4
/* DE94 8000D294 00000000 */   nop       
/* DE98 8000D298 240FFFFF */  addiu      $t7, $zero, -1
/* DE9C 8000D29C 3C01800B */  lui        $at, 0x800b
/* DEA0 8000D2A0 AC2F847C */  sw         $t7, -0x7b84($at)
/* DEA4 8000D2A4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000D2A8:
/* DEA8 8000D2A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* DEAC 8000D2AC 03E00008 */  jr         $ra
/* DEB0 8000D2B0 00000000 */   nop       

glabel func_8000D2B4
/* DEB4 8000D2B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DEB8 8000D2B8 AFB00014 */  sw         $s0, 0x14($sp)
/* DEBC 8000D2BC AFBF001C */  sw         $ra, 0x1c($sp)
/* DEC0 8000D2C0 AFB10018 */  sw         $s1, 0x18($sp)
/* DEC4 8000D2C4 10800003 */  beqz       $a0, .L8000D2D4
/* DEC8 8000D2C8 00008025 */   or        $s0, $zero, $zero
/* DECC 8000D2CC 0C013F36 */  jal        func_8004FCD8
/* DED0 8000D2D0 24040002 */   addiu     $a0, $zero, 2
.L8000D2D4:
/* DED4 8000D2D4 0C012138 */  jal        func_800484E0
/* DED8 8000D2D8 00000000 */   nop       
/* DEDC 8000D2DC 10400010 */  beqz       $v0, .L8000D320
/* DEE0 8000D2E0 3C11000F */   lui       $s1, 0xf
/* DEE4 8000D2E4 36314240 */  ori        $s1, $s1, 0x4240
/* DEE8 8000D2E8 0211082A */  slt        $at, $s0, $s1
.L8000D2EC:
/* DEEC 8000D2EC 10200003 */  beqz       $at, .L8000D2FC
/* DEF0 8000D2F0 00000000 */   nop       
/* DEF4 8000D2F4 10000006 */  b          .L8000D310
/* DEF8 8000D2F8 26100001 */   addiu     $s0, $s0, 1
.L8000D2FC:
/* DEFC 8000D2FC 16110004 */  bne        $s0, $s1, .L8000D310
/* DF00 8000D300 00000000 */   nop       
/* DF04 8000D304 0C013F51 */  jal        func_8004FD44
/* DF08 8000D308 00000000 */   nop       
/* DF0C 8000D30C 26100001 */  addiu      $s0, $s0, 1
.L8000D310:
/* DF10 8000D310 0C012138 */  jal        func_800484E0
/* DF14 8000D314 00000000 */   nop       
/* DF18 8000D318 5440FFF4 */  bnel       $v0, $zero, .L8000D2EC
/* DF1C 8000D31C 0211082A */   slt       $at, $s0, $s1
.L8000D320:
/* DF20 8000D320 8FBF001C */  lw         $ra, 0x1c($sp)
/* DF24 8000D324 02001025 */  or         $v0, $s0, $zero
/* DF28 8000D328 8FB00014 */  lw         $s0, 0x14($sp)
/* DF2C 8000D32C 8FB10018 */  lw         $s1, 0x18($sp)
/* DF30 8000D330 03E00008 */  jr         $ra
/* DF34 8000D334 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000D338
/* DF38 8000D338 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF3C 8000D33C AFBF0014 */  sw         $ra, 0x14($sp)
/* DF40 8000D340 0C013F59 */  jal        func_8004FD64
/* DF44 8000D344 24040010 */   addiu     $a0, $zero, 0x10
/* DF48 8000D348 8FBF0014 */  lw         $ra, 0x14($sp)
/* DF4C 8000D34C 27BD0018 */  addiu      $sp, $sp, 0x18
/* DF50 8000D350 03E00008 */  jr         $ra
/* DF54 8000D354 00000000 */   nop       

glabel func_8000D358
/* DF58 8000D358 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF5C 8000D35C AFBF0014 */  sw         $ra, 0x14($sp)
/* DF60 8000D360 3C01800B */  lui        $at, 0x800b
/* DF64 8000D364 AC2083A0 */  sw         $zero, -0x7c60($at)
/* DF68 8000D368 0C00F528 */  jal        func_8003D4A0
/* DF6C 8000D36C 00002025 */   or        $a0, $zero, $zero
/* DF70 8000D370 8FBF0014 */  lw         $ra, 0x14($sp)
/* DF74 8000D374 27BD0018 */  addiu      $sp, $sp, 0x18
/* DF78 8000D378 03E00008 */  jr         $ra
/* DF7C 8000D37C 00000000 */   nop       

glabel func_8000D380
/* DF80 8000D380 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF84 8000D384 AFBF0014 */  sw         $ra, 0x14($sp)
/* DF88 8000D388 0C00F528 */  jal        func_8003D4A0
/* DF8C 8000D38C 24040001 */   addiu     $a0, $zero, 1
/* DF90 8000D390 8FBF0014 */  lw         $ra, 0x14($sp)
/* DF94 8000D394 240E0001 */  addiu      $t6, $zero, 1
/* DF98 8000D398 3C01800B */  lui        $at, 0x800b
/* DF9C 8000D39C AC2E83A0 */  sw         $t6, -0x7c60($at)
/* DFA0 8000D3A0 03E00008 */  jr         $ra
/* DFA4 8000D3A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000D3A8
/* DFA8 8000D3A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* DFAC 8000D3AC AFA40030 */  sw         $a0, 0x30($sp)
/* DFB0 8000D3B0 AFBF002C */  sw         $ra, 0x2c($sp)
/* DFB4 8000D3B4 3C040100 */  lui        $a0, 0x100
/* DFB8 8000D3B8 AFB50028 */  sw         $s5, 0x28($sp)
/* DFBC 8000D3BC AFB40024 */  sw         $s4, 0x24($sp)
/* DFC0 8000D3C0 AFB30020 */  sw         $s3, 0x20($sp)
/* DFC4 8000D3C4 AFB2001C */  sw         $s2, 0x1c($sp)
/* DFC8 8000D3C8 AFB10018 */  sw         $s1, 0x18($sp)
/* DFCC 8000D3CC AFB00014 */  sw         $s0, 0x14($sp)
/* DFD0 8000D3D0 0C018DBC */  jal        func_800636F0
/* DFD4 8000D3D4 34840C01 */   ori       $a0, $a0, 0xc01
/* DFD8 8000D3D8 3C15800B */  lui        $s5, 0x800b
/* DFDC 8000D3DC 26B58480 */  addiu      $s5, $s5, -0x7b80
/* DFE0 8000D3E0 02A02025 */  or         $a0, $s5, $zero
/* DFE4 8000D3E4 24050001 */  addiu      $a1, $zero, 1
/* DFE8 8000D3E8 0C001330 */  jal        func_80004CC0
/* DFEC 8000D3EC 24060001 */   addiu     $a2, $zero, 1
/* DFF0 8000D3F0 0C0014CA */  jal        func_80005328
/* DFF4 8000D3F4 02A02025 */   or        $a0, $s5, $zero
/* DFF8 8000D3F8 3C14800B */  lui        $s4, 0x800b
/* DFFC 8000D3FC 269483A0 */  addiu      $s4, $s4, -0x7c60
/* E000 8000D400 240E0001 */  addiu      $t6, $zero, 1
/* E004 8000D404 3C10800B */  lui        $s0, 0x800b
/* E008 8000D408 3C11800B */  lui        $s1, 0x800b
/* E00C 8000D40C 3C12800B */  lui        $s2, 0x800b
/* E010 8000D410 AE8E0000 */  sw         $t6, ($s4)
/* E014 8000D414 240FFFFF */  addiu      $t7, $zero, -1
/* E018 8000D418 3C01800B */  lui        $at, 0x800b
/* E01C 8000D41C 265283A8 */  addiu      $s2, $s2, -0x7c58
/* E020 8000D420 263183AC */  addiu      $s1, $s1, -0x7c54
/* E024 8000D424 26108478 */  addiu      $s0, $s0, -0x7b88
/* E028 8000D428 AC2F847C */  sw         $t7, -0x7b84($at)
/* E02C 8000D42C AE000000 */  sw         $zero, ($s0)
/* E030 8000D430 02202025 */  or         $a0, $s1, $zero
/* E034 8000D434 02402825 */  or         $a1, $s2, $zero
/* E038 8000D438 0C0178E8 */  jal        func_8005E3A0
/* E03C 8000D43C 24060001 */   addiu     $a2, $zero, 1
/* E040 8000D440 3C13800B */  lui        $s3, 0x800b
/* E044 8000D444 26738414 */  addiu      $s3, $s3, -0x7bec
/* E048 8000D448 3C05800B */  lui        $a1, 0x800b
/* E04C 8000D44C 24A58410 */  addiu      $a1, $a1, -0x7bf0
/* E050 8000D450 02602025 */  or         $a0, $s3, $zero
/* E054 8000D454 0C0178E8 */  jal        func_8005E3A0
/* E058 8000D458 24060001 */   addiu     $a2, $zero, 1
/* E05C 8000D45C 3C05444F */  lui        $a1, 0x444f
/* E060 8000D460 34A54E45 */  ori        $a1, $a1, 0x4e45
/* E064 8000D464 02202025 */  or         $a0, $s1, $zero
/* E068 8000D468 0C015A30 */  jal        func_800568C0
/* E06C 8000D46C 00003025 */   or        $a2, $zero, $zero
/* E070 8000D470 3C05444F */  lui        $a1, 0x444f
/* E074 8000D474 34A54E45 */  ori        $a1, $a1, 0x4e45
/* E078 8000D478 02602025 */  or         $a0, $s3, $zero
/* E07C 8000D47C 0C015A30 */  jal        func_800568C0
/* E080 8000D480 00003025 */   or        $a2, $zero, $zero
/* E084 8000D484 0C00DCF6 */  jal        func_800373D8
/* E088 8000D488 00000000 */   nop       
/* E08C 8000D48C 0C012BC9 */  jal        func_8004AF24
/* E090 8000D490 00002025 */   or        $a0, $zero, $zero
/* E094 8000D494 24040003 */  addiu      $a0, $zero, 3
/* E098 8000D498 0C012BA4 */  jal        func_8004AE90
/* E09C 8000D49C 24050004 */   addiu     $a1, $zero, 4
/* E0A0 8000D4A0 3C13800A */  lui        $s3, 0x800a
/* E0A4 8000D4A4 267362E0 */  addiu      $s3, $s3, 0x62e0
/* E0A8 8000D4A8 24110068 */  addiu      $s1, $zero, 0x68
.L8000D4AC:
/* E0AC 8000D4AC 0C00133D */  jal        func_80004CF4
/* E0B0 8000D4B0 02A02025 */   or        $a0, $s5, $zero
/* E0B4 8000D4B4 0C002484 */  jal        func_80009210
/* E0B8 8000D4B8 00000000 */   nop       
/* E0BC 8000D4BC 8E980000 */  lw         $t8, ($s4)
/* E0C0 8000D4C0 53000013 */  beql       $t8, $zero, .L8000D510
/* E0C4 8000D4C4 8E0C0000 */   lw        $t4, ($s0)
/* E0C8 8000D4C8 86790A38 */  lh         $t9, 0xa38($s3)
/* E0CC 8000D4CC 2B210015 */  slti       $at, $t9, 0x15
/* E0D0 8000D4D0 5020000F */  beql       $at, $zero, .L8000D510
/* E0D4 8000D4D4 8E0C0000 */   lw        $t4, ($s0)
/* E0D8 8000D4D8 8E080000 */  lw         $t0, ($s0)
/* E0DC 8000D4DC 01110019 */  multu      $t0, $s1
/* E0E0 8000D4E0 00004812 */  mflo       $t1
/* E0E4 8000D4E4 02492021 */  addu       $a0, $s2, $t1
/* E0E8 8000D4E8 0C00DCD0 */  jal        func_80037340
/* E0EC 8000D4EC 24840020 */   addiu     $a0, $a0, 0x20
/* E0F0 8000D4F0 8E0A0000 */  lw         $t2, ($s0)
/* E0F4 8000D4F4 00002825 */  or         $a1, $zero, $zero
/* E0F8 8000D4F8 01510019 */  multu      $t2, $s1
/* E0FC 8000D4FC 00005812 */  mflo       $t3
/* E100 8000D500 024B2021 */  addu       $a0, $s2, $t3
/* E104 8000D504 0C0014ED */  jal        func_800053B4
/* E108 8000D508 00000000 */   nop       
/* E10C 8000D50C 8E0C0000 */  lw         $t4, ($s0)
.L8000D510:
/* E110 8000D510 398D0001 */  xori       $t5, $t4, 1
/* E114 8000D514 0C002484 */  jal        func_80009210
/* E118 8000D518 AE0D0000 */   sw        $t5, ($s0)
/* E11C 8000D51C 1000FFE3 */  b          .L8000D4AC
/* E120 8000D520 00000000 */   nop       
/* E124 8000D524 00000000 */  nop        
/* E128 8000D528 00000000 */  nop        
/* E12C 8000D52C 00000000 */  nop        
/* E130 8000D530 00000000 */  nop        
/* E134 8000D534 00000000 */  nop        
/* E138 8000D538 00000000 */  nop        
/* E13C 8000D53C 00000000 */  nop        
/* E140 8000D540 8FBF002C */  lw         $ra, 0x2c($sp)
/* E144 8000D544 8FB00014 */  lw         $s0, 0x14($sp)
/* E148 8000D548 8FB10018 */  lw         $s1, 0x18($sp)
/* E14C 8000D54C 8FB2001C */  lw         $s2, 0x1c($sp)
/* E150 8000D550 8FB30020 */  lw         $s3, 0x20($sp)
/* E154 8000D554 8FB40024 */  lw         $s4, 0x24($sp)
/* E158 8000D558 8FB50028 */  lw         $s5, 0x28($sp)
/* E15C 8000D55C 03E00008 */  jr         $ra
/* E160 8000D560 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000D564
/* E164 8000D564 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E168 8000D568 3C0E800B */  lui        $t6, 0x800b
/* E16C 8000D56C AFBF001C */  sw         $ra, 0x1c($sp)
/* E170 8000D570 25CEA660 */  addiu      $t6, $t6, -0x59a0
/* E174 8000D574 3C04800B */  lui        $a0, 0x800b
/* E178 8000D578 3C068001 */  lui        $a2, 0x8001
/* E17C 8000D57C 240F0050 */  addiu      $t7, $zero, 0x50
/* E180 8000D580 AFAF0014 */  sw         $t7, 0x14($sp)
/* E184 8000D584 24C6D3A8 */  addiu      $a2, $a2, -0x2c58
/* E188 8000D588 24848480 */  addiu      $a0, $a0, -0x7b80
/* E18C 8000D58C AFAE0010 */  sw         $t6, 0x10($sp)
/* E190 8000D590 24050004 */  addiu      $a1, $zero, 4
/* E194 8000D594 0C016330 */  jal        func_80058CC0
/* E198 8000D598 00003825 */   or        $a3, $zero, $zero
/* E19C 8000D59C 3C04800B */  lui        $a0, 0x800b
/* E1A0 8000D5A0 0C0194DC */  jal        func_80065370
/* E1A4 8000D5A4 24848480 */   addiu     $a0, $a0, -0x7b80
/* E1A8 8000D5A8 8FBF001C */  lw         $ra, 0x1c($sp)
/* E1AC 8000D5AC 27BD0020 */  addiu      $sp, $sp, 0x20
/* E1B0 8000D5B0 03E00008 */  jr         $ra
/* E1B4 8000D5B4 00000000 */   nop       
/* E1B8 8000D5B8 00000000 */  nop        
/* E1BC 8000D5BC 00000000 */  nop        
