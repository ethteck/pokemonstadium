.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80051050
/* 51C50 80051050 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 51C54 80051054 00A4082A */  slt        $at, $a1, $a0
/* 51C58 80051058 AFBF001C */  sw         $ra, 0x1c($sp)
/* 51C5C 8005105C AFA40030 */  sw         $a0, 0x30($sp)
/* 51C60 80051060 AFA50034 */  sw         $a1, 0x34($sp)
/* 51C64 80051064 AFA60038 */  sw         $a2, 0x38($sp)
/* 51C68 80051068 10200003 */  beqz       $at, .L80051078
/* 51C6C 8005106C AFA7003C */   sw        $a3, 0x3c($sp)
/* 51C70 80051070 10000002 */  b          .L8005107C
/* 51C74 80051074 00802825 */   or        $a1, $a0, $zero
.L80051078:
/* 51C78 80051078 8FA50034 */  lw         $a1, 0x34($sp)
.L8005107C:
/* 51C7C 8005107C 2418FFFF */  addiu      $t8, $zero, -1
/* 51C80 80051080 AFB80028 */  sw         $t8, 0x28($sp)
/* 51C84 80051084 00002025 */  or         $a0, $zero, $zero
/* 51C88 80051088 0C017A1C */  jal        func_8005E870
/* 51C8C 8005108C AFA50020 */   sw        $a1, 0x20($sp)
/* 51C90 80051090 8FA50020 */  lw         $a1, 0x20($sp)
/* 51C94 80051094 0045082A */  slt        $at, $v0, $a1
/* 51C98 80051098 10200004 */  beqz       $at, .L800510AC
/* 51C9C 8005109C 00000000 */   nop       
/* 51CA0 800510A0 AFA20028 */  sw         $v0, 0x28($sp)
/* 51CA4 800510A4 0C0179E4 */  jal        func_8005E790
/* 51CA8 800510A8 00002025 */   or        $a0, $zero, $zero
.L800510AC:
/* 51CAC 800510AC 0C018AA4 */  jal        __osDisableInt
/* 51CB0 800510B0 00000000 */   nop       
/* 51CB4 800510B4 24190001 */  addiu      $t9, $zero, 1
/* 51CB8 800510B8 3C018008 */  lui        $at, 0x8008
/* 51CBC 800510BC 3C048010 */  lui        $a0, 0x8010
/* 51CC0 800510C0 AFA2002C */  sw         $v0, 0x2c($sp)
/* 51CC4 800510C4 AC399514 */  sw         $t9, -0x6aec($at)
/* 51CC8 800510C8 24840638 */  addiu      $a0, $a0, 0x638
/* 51CCC 800510CC 8FA50038 */  lw         $a1, 0x38($sp)
/* 51CD0 800510D0 0C0178E8 */  jal        func_8005E3A0
/* 51CD4 800510D4 8FA6003C */   lw        $a2, 0x3c($sp)
/* 51CD8 800510D8 3C048010 */  lui        $a0, 0x8010
/* 51CDC 800510DC 3C058010 */  lui        $a1, 0x8010
/* 51CE0 800510E0 24A506B4 */  addiu      $a1, $a1, 0x6b4
/* 51CE4 800510E4 24840668 */  addiu      $a0, $a0, 0x668
/* 51CE8 800510E8 0C0178E8 */  jal        func_8005E3A0
/* 51CEC 800510EC 24060001 */   addiu     $a2, $zero, 1
/* 51CF0 800510F0 3C048010 */  lui        $a0, 0x8010
/* 51CF4 800510F4 3C058010 */  lui        $a1, 0x8010
/* 51CF8 800510F8 24A506B0 */  addiu      $a1, $a1, 0x6b0
/* 51CFC 800510FC 24840650 */  addiu      $a0, $a0, 0x650
/* 51D00 80051100 0C0178E8 */  jal        func_8005E3A0
/* 51D04 80051104 24060001 */   addiu     $a2, $zero, 1
/* 51D08 80051108 3C048010 */  lui        $a0, 0x8010
/* 51D0C 8005110C 3C058010 */  lui        $a1, 0x8010
/* 51D10 80051110 24A506B8 */  addiu      $a1, $a1, 0x6b8
/* 51D14 80051114 24840680 */  addiu      $a0, $a0, 0x680
/* 51D18 80051118 0C0178E8 */  jal        func_8005E3A0
/* 51D1C 8005111C 24060002 */   addiu     $a2, $zero, 2
/* 51D20 80051120 3C048010 */  lui        $a0, 0x8010
/* 51D24 80051124 3C058010 */  lui        $a1, 0x8010
/* 51D28 80051128 24A506C0 */  addiu      $a1, $a1, 0x6c0
/* 51D2C 8005112C 24840698 */  addiu      $a0, $a0, 0x698
/* 51D30 80051130 0C0178E8 */  jal        func_8005E3A0
/* 51D34 80051134 24060001 */   addiu     $a2, $zero, 1
/* 51D38 80051138 3C048010 */  lui        $a0, 0x8010
/* 51D3C 8005113C 3C058010 */  lui        $a1, 0x8010
/* 51D40 80051140 24A5F9E8 */  addiu      $a1, $a1, -0x618
/* 51D44 80051144 2484F9D0 */  addiu      $a0, $a0, -0x630
/* 51D48 80051148 0C0178E8 */  jal        func_8005E3A0
/* 51D4C 8005114C 24060001 */   addiu     $a2, $zero, 1
/* 51D50 80051150 8FA90030 */  lw         $t1, 0x30($sp)
/* 51D54 80051154 3C088010 */  lui        $t0, 0x8010
/* 51D58 80051158 25080238 */  addiu      $t0, $t0, 0x238
/* 51D5C 8005115C 3C048010 */  lui        $a0, 0x8010
/* 51D60 80051160 3C068005 */  lui        $a2, 0x8005
/* 51D64 80051164 24C61EC0 */  addiu      $a2, $a2, 0x1ec0
/* 51D68 80051168 2484FAD8 */  addiu      $a0, $a0, -0x528
/* 51D6C 8005116C AFA80010 */  sw         $t0, 0x10($sp)
/* 51D70 80051170 24050001 */  addiu      $a1, $zero, 1
/* 51D74 80051174 00003825 */  or         $a3, $zero, $zero
/* 51D78 80051178 0C016330 */  jal        func_80058CC0
/* 51D7C 8005117C AFA90014 */   sw        $t1, 0x14($sp)
/* 51D80 80051180 3C048010 */  lui        $a0, 0x8010
/* 51D84 80051184 0C0194DC */  jal        osStartThread
/* 51D88 80051188 2484FAD8 */   addiu     $a0, $a0, -0x528
/* 51D8C 8005118C 8FAB0034 */  lw         $t3, 0x34($sp)
/* 51D90 80051190 3C0A8010 */  lui        $t2, 0x8010
/* 51D94 80051194 254A0638 */  addiu      $t2, $t2, 0x638
/* 51D98 80051198 3C048010 */  lui        $a0, 0x8010
/* 51D9C 8005119C 3C068005 */  lui        $a2, 0x8005
/* 51DA0 800511A0 24C614C0 */  addiu      $a2, $a2, 0x14c0
/* 51DA4 800511A4 2484FC88 */  addiu      $a0, $a0, -0x378
/* 51DA8 800511A8 AFAA0010 */  sw         $t2, 0x10($sp)
/* 51DAC 800511AC 24050001 */  addiu      $a1, $zero, 1
/* 51DB0 800511B0 00003825 */  or         $a3, $zero, $zero
/* 51DB4 800511B4 0C016330 */  jal        func_80058CC0
/* 51DB8 800511B8 AFAB0014 */   sw        $t3, 0x14($sp)
/* 51DBC 800511BC 3C048010 */  lui        $a0, 0x8010
/* 51DC0 800511C0 0C0194DC */  jal        osStartThread
/* 51DC4 800511C4 2484FC88 */   addiu     $a0, $a0, -0x378
/* 51DC8 800511C8 3C058010 */  lui        $a1, 0x8010
/* 51DCC 800511CC 24A50650 */  addiu      $a1, $a1, 0x650
/* 51DD0 800511D0 24040002 */  addiu      $a0, $zero, 2
/* 51DD4 800511D4 0C01737C */  jal        func_8005CDF0
/* 51DD8 800511D8 3C060003 */   lui       $a2, 3
/* 51DDC 800511DC 3C048010 */  lui        $a0, 0x8010
/* 51DE0 800511E0 24840698 */  addiu      $a0, $a0, 0x698
/* 51DE4 800511E4 00002825 */  or         $a1, $zero, $zero
/* 51DE8 800511E8 0C015A30 */  jal        osSendMesg
/* 51DEC 800511EC 00003025 */   or        $a2, $zero, $zero
/* 51DF0 800511F0 0C018AC0 */  jal        __osRestoreInt
/* 51DF4 800511F4 8FA4002C */   lw        $a0, 0x2c($sp)
/* 51DF8 800511F8 8FAC0028 */  lw         $t4, 0x28($sp)
/* 51DFC 800511FC 2401FFFF */  addiu      $at, $zero, -1
/* 51E00 80051200 00002025 */  or         $a0, $zero, $zero
/* 51E04 80051204 51810004 */  beql       $t4, $at, .L80051218
/* 51E08 80051208 8FBF001C */   lw        $ra, 0x1c($sp)
/* 51E0C 8005120C 0C0179E4 */  jal        func_8005E790
/* 51E10 80051210 01802825 */   or        $a1, $t4, $zero
/* 51E14 80051214 8FBF001C */  lw         $ra, 0x1c($sp)
.L80051218:
/* 51E18 80051218 27BD0030 */  addiu      $sp, $sp, 0x30
/* 51E1C 8005121C 03E00008 */  jr         $ra
/* 51E20 80051220 00000000 */   nop       

glabel func_80051224
/* 51E24 80051224 3C0E8008 */  lui        $t6, 0x8008
/* 51E28 80051228 8DCE9510 */  lw         $t6, -0x6af0($t6)
/* 51E2C 8005122C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 51E30 80051230 AFBF0014 */  sw         $ra, 0x14($sp)
/* 51E34 80051234 11C0000E */  beqz       $t6, .L80051270
/* 51E38 80051238 00803825 */   or        $a3, $a0, $zero
/* 51E3C 8005123C 90990002 */  lbu        $t9, 2($a0)
/* 51E40 80051240 240F0002 */  addiu      $t7, $zero, 2
/* 51E44 80051244 24180025 */  addiu      $t8, $zero, 0x25
/* 51E48 80051248 33280080 */  andi       $t0, $t9, 0x80
/* 51E4C 8005124C A08F0004 */  sb         $t7, 4($a0)
/* 51E50 80051250 11000048 */  beqz       $t0, .L80051374
/* 51E54 80051254 A0980005 */   sb        $t8, 5($a0)
/* 51E58 80051258 8C840008 */  lw         $a0, 8($a0)
/* 51E5C 8005125C 24050025 */  addiu      $a1, $zero, 0x25
/* 51E60 80051260 0C015A30 */  jal        osSendMesg
/* 51E64 80051264 24060001 */   addiu     $a2, $zero, 1
/* 51E68 80051268 10000043 */  b          .L80051378
/* 51E6C 8005126C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80051270:
/* 51E70 80051270 3C048010 */  lui        $a0, 0x8010
/* 51E74 80051274 24840698 */  addiu      $a0, $a0, 0x698
/* 51E78 80051278 00002825 */  or         $a1, $zero, $zero
/* 51E7C 8005127C 24060001 */  addiu      $a2, $zero, 1
/* 51E80 80051280 0C015AB4 */  jal        func_80056AD0
/* 51E84 80051284 AFA70018 */   sw        $a3, 0x18($sp)
/* 51E88 80051288 8FA70018 */  lw         $a3, 0x18($sp)
/* 51E8C 8005128C 24090008 */  addiu      $t1, $zero, 8
/* 51E90 80051290 24010001 */  addiu      $at, $zero, 1
/* 51E94 80051294 90E40000 */  lbu        $a0, ($a3)
/* 51E98 80051298 240A00FF */  addiu      $t2, $zero, 0xff
/* 51E9C 8005129C A0E90004 */  sb         $t1, 4($a3)
/* 51EA0 800512A0 10810009 */  beq        $a0, $at, .L800512C8
/* 51EA4 800512A4 A0E00005 */   sb        $zero, 5($a3)
/* 51EA8 800512A8 24010005 */  addiu      $at, $zero, 5
/* 51EAC 800512AC 10810019 */  beq        $a0, $at, .L80051314
/* 51EB0 800512B0 00E02825 */   or        $a1, $a3, $zero
/* 51EB4 800512B4 24010006 */  addiu      $at, $zero, 6
/* 51EB8 800512B8 10810016 */  beq        $a0, $at, .L80051314
/* 51EBC 800512BC 248FFFFF */   addiu     $t7, $a0, -1
/* 51EC0 800512C0 10000016 */  b          .L8005131C
/* 51EC4 800512C4 2DE1000E */   sltiu     $at, $t7, 0xe
.L800512C8:
/* 51EC8 800512C8 3C0B8010 */  lui        $t3, 0x8010
/* 51ECC 800512CC 256B06D5 */  addiu      $t3, $t3, 0x6d5
/* 51ED0 800512D0 A16A0000 */  sb         $t2, ($t3)
/* 51ED4 800512D4 0C01546C */  jal        func_800551B0
/* 51ED8 800512D8 AFA70018 */   sw        $a3, 0x18($sp)
/* 51EDC 800512DC 8FA70018 */  lw         $a3, 0x18($sp)
/* 51EE0 800512E0 3C0C8010 */  lui        $t4, 0x8010
/* 51EE4 800512E4 258C06D5 */  addiu      $t4, $t4, 0x6d5
/* 51EE8 800512E8 A1800000 */  sb         $zero, ($t4)
/* 51EEC 800512EC 90ED0002 */  lbu        $t5, 2($a3)
/* 51EF0 800512F0 00002825 */  or         $a1, $zero, $zero
/* 51EF4 800512F4 24060001 */  addiu      $a2, $zero, 1
/* 51EF8 800512F8 31AE0080 */  andi       $t6, $t5, 0x80
/* 51EFC 800512FC 11C00018 */  beqz       $t6, .L80051360
/* 51F00 80051300 A0E00004 */   sb        $zero, 4($a3)
/* 51F04 80051304 0C015A30 */  jal        osSendMesg
/* 51F08 80051308 8CE40008 */   lw        $a0, 8($a3)
/* 51F0C 8005130C 10000014 */  b          .L80051360
/* 51F10 80051310 00000000 */   nop       
.L80051314:
/* 51F14 80051314 10000007 */  b          .L80051334
/* 51F18 80051318 ACE00018 */   sw        $zero, 0x18($a3)
.L8005131C:
/* 51F1C 8005131C 14200005 */  bnez       $at, .L80051334
/* 51F20 80051320 2418001F */   addiu     $t8, $zero, 0x1f
/* 51F24 80051324 24190002 */  addiu      $t9, $zero, 2
/* 51F28 80051328 A0F80005 */  sb         $t8, 5($a3)
/* 51F2C 8005132C 1000000C */  b          .L80051360
/* 51F30 80051330 A0F90004 */   sb        $t9, 4($a3)
.L80051334:
/* 51F34 80051334 3C048010 */  lui        $a0, 0x8010
/* 51F38 80051338 24840638 */  addiu      $a0, $a0, 0x638
/* 51F3C 8005133C 00003025 */  or         $a2, $zero, $zero
/* 51F40 80051340 0C015A30 */  jal        osSendMesg
/* 51F44 80051344 AFA70018 */   sw        $a3, 0x18($sp)
/* 51F48 80051348 10400005 */  beqz       $v0, .L80051360
/* 51F4C 8005134C 8FA70018 */   lw        $a3, 0x18($sp)
/* 51F50 80051350 24080023 */  addiu      $t0, $zero, 0x23
/* 51F54 80051354 24090002 */  addiu      $t1, $zero, 2
/* 51F58 80051358 A0E80005 */  sb         $t0, 5($a3)
/* 51F5C 8005135C A0E90004 */  sb         $t1, 4($a3)
.L80051360:
/* 51F60 80051360 3C048010 */  lui        $a0, 0x8010
/* 51F64 80051364 24840698 */  addiu      $a0, $a0, 0x698
/* 51F68 80051368 00002825 */  or         $a1, $zero, $zero
/* 51F6C 8005136C 0C015A30 */  jal        osSendMesg
/* 51F70 80051370 24060001 */   addiu     $a2, $zero, 1
.L80051374:
/* 51F74 80051374 8FBF0014 */  lw         $ra, 0x14($sp)
.L80051378:
/* 51F78 80051378 27BD0018 */  addiu      $sp, $sp, 0x18
/* 51F7C 8005137C 03E00008 */  jr         $ra
/* 51F80 80051380 00000000 */   nop       

glabel func_80051384
/* 51F84 80051384 3C0F8008 */  lui        $t7, 0x8008
/* 51F88 80051388 8DEF9514 */  lw         $t7, -0x6aec($t7)
/* 51F8C 8005138C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 51F90 80051390 240E0001 */  addiu      $t6, $zero, 1
/* 51F94 80051394 3C018008 */  lui        $at, 0x8008
/* 51F98 80051398 AFBF0014 */  sw         $ra, 0x14($sp)
/* 51F9C 8005139C 11E00019 */  beqz       $t7, .L80051404
/* 51FA0 800513A0 AC2E9510 */   sw        $t6, -0x6af0($at)
/* 51FA4 800513A4 3C198010 */  lui        $t9, 0x8010
/* 51FA8 800513A8 273906D5 */  addiu      $t9, $t9, 0x6d5
/* 51FAC 800513AC 241800FF */  addiu      $t8, $zero, 0xff
/* 51FB0 800513B0 0C01546C */  jal        func_800551B0
/* 51FB4 800513B4 A3380000 */   sb        $t8, ($t9)
/* 51FB8 800513B8 3C088010 */  lui        $t0, 0x8010
/* 51FBC 800513BC 250806D5 */  addiu      $t0, $t0, 0x6d5
/* 51FC0 800513C0 3C048010 */  lui        $a0, 0x8010
/* 51FC4 800513C4 A1000000 */  sb         $zero, ($t0)
/* 51FC8 800513C8 24840650 */  addiu      $a0, $a0, 0x650
/* 51FCC 800513CC 00002825 */  or         $a1, $zero, $zero
/* 51FD0 800513D0 0C015AB4 */  jal        func_80056AD0
/* 51FD4 800513D4 00003025 */   or        $a2, $zero, $zero
/* 51FD8 800513D8 3C048010 */  lui        $a0, 0x8010
/* 51FDC 800513DC 24840650 */  addiu      $a0, $a0, 0x650
/* 51FE0 800513E0 3C05000A */  lui        $a1, 0xa
/* 51FE4 800513E4 0C015A30 */  jal        osSendMesg
/* 51FE8 800513E8 24060001 */   addiu     $a2, $zero, 1
/* 51FEC 800513EC 3C048010 */  lui        $a0, 0x8010
/* 51FF0 800513F0 3C058008 */  lui        $a1, 0x8008
/* 51FF4 800513F4 24A5DA30 */  addiu      $a1, $a1, -0x25d0
/* 51FF8 800513F8 24840638 */  addiu      $a0, $a0, 0x638
/* 51FFC 800513FC 0C015A30 */  jal        osSendMesg
/* 52000 80051400 24060001 */   addiu     $a2, $zero, 1
.L80051404:
/* 52004 80051404 8FBF0014 */  lw         $ra, 0x14($sp)
/* 52008 80051408 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5200C 8005140C 03E00008 */  jr         $ra
/* 52010 80051410 00000000 */   nop       

glabel func_80051414
/* 52014 80051414 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 52018 80051418 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5201C 8005141C 0C014D60 */  jal        func_80053580
/* 52020 80051420 00000000 */   nop       
/* 52024 80051424 8FBF0014 */  lw         $ra, 0x14($sp)
/* 52028 80051428 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5202C 8005142C 00001025 */  or         $v0, $zero, $zero
/* 52030 80051430 03E00008 */  jr         $ra
/* 52034 80051434 00000000 */   nop       

glabel func_80051438
/* 52038 80051438 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5203C 8005143C 3C188010 */  lui        $t8, 0x8010
/* 52040 80051440 AFBF0014 */  sw         $ra, 0x14($sp)
/* 52044 80051444 240E000F */  addiu      $t6, $zero, 0xf
/* 52048 80051448 240F0080 */  addiu      $t7, $zero, 0x80
/* 5204C 8005144C 2718F9D0 */  addiu      $t8, $t8, -0x630
/* 52050 80051450 3C048010 */  lui        $a0, 0x8010
/* 52054 80051454 A3AE001C */  sb         $t6, 0x1c($sp)
/* 52058 80051458 A3AF001E */  sb         $t7, 0x1e($sp)
/* 5205C 8005145C A3A00020 */  sb         $zero, 0x20($sp)
/* 52060 80051460 AFB80024 */  sw         $t8, 0x24($sp)
/* 52064 80051464 24840638 */  addiu      $a0, $a0, 0x638
/* 52068 80051468 27A5001C */  addiu      $a1, $sp, 0x1c
/* 5206C 8005146C 0C015A30 */  jal        osSendMesg
/* 52070 80051470 00003025 */   or        $a2, $zero, $zero
/* 52074 80051474 10400003 */  beqz       $v0, .L80051484
/* 52078 80051478 3C048010 */   lui       $a0, 0x8010
/* 5207C 8005147C 1000000B */  b          .L800514AC
/* 52080 80051480 24020023 */   addiu     $v0, $zero, 0x23
.L80051484:
/* 52084 80051484 2484F9D0 */  addiu      $a0, $a0, -0x630
/* 52088 80051488 00002825 */  or         $a1, $zero, $zero
/* 5208C 8005148C 0C015AB4 */  jal        func_80056AD0
/* 52090 80051490 24060001 */   addiu     $a2, $zero, 1
/* 52094 80051494 93B90020 */  lbu        $t9, 0x20($sp)
/* 52098 80051498 93A20021 */  lbu        $v0, 0x21($sp)
/* 5209C 8005149C 17200003 */  bnez       $t9, .L800514AC
/* 520A0 800514A0 00000000 */   nop       
/* 520A4 800514A4 10000001 */  b          .L800514AC
/* 520A8 800514A8 00001025 */   or        $v0, $zero, $zero
.L800514AC:
/* 520AC 800514AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 520B0 800514B0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 520B4 800514B4 03E00008 */  jr         $ra
/* 520B8 800514B8 00000000 */   nop       
/* 520BC 800514BC 00000000 */  nop        
