.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005C270
/* 5CE70 8005C270 00001825 */  or         $v1, $zero, $zero
/* 5CE74 8005C274 00801025 */  or         $v0, $a0, $zero
/* 5CE78 8005C278 18A00016 */  blez       $a1, .L8005C2D4
/* 5CE7C 8005C27C 00003025 */   or        $a2, $zero, $zero
/* 5CE80 8005C280 30A70003 */  andi       $a3, $a1, 3
/* 5CE84 8005C284 10E00008 */  beqz       $a3, .L8005C2A8
/* 5CE88 8005C288 00E02025 */   or        $a0, $a3, $zero
.L8005C28C:
/* 5CE8C 8005C28C 904E0000 */  lbu        $t6, ($v0)
/* 5CE90 8005C290 24C60001 */  addiu      $a2, $a2, 1
/* 5CE94 8005C294 24420001 */  addiu      $v0, $v0, 1
/* 5CE98 8005C298 1486FFFC */  bne        $a0, $a2, .L8005C28C
/* 5CE9C 8005C29C 006E1821 */   addu      $v1, $v1, $t6
/* 5CEA0 8005C2A0 50C5000D */  beql       $a2, $a1, .L8005C2D8
/* 5CEA4 8005C2A4 00601025 */   or        $v0, $v1, $zero
.L8005C2A8:
/* 5CEA8 8005C2A8 904F0000 */  lbu        $t7, ($v0)
/* 5CEAC 8005C2AC 90580001 */  lbu        $t8, 1($v0)
/* 5CEB0 8005C2B0 90590002 */  lbu        $t9, 2($v0)
/* 5CEB4 8005C2B4 006F1821 */  addu       $v1, $v1, $t7
/* 5CEB8 8005C2B8 90480003 */  lbu        $t0, 3($v0)
/* 5CEBC 8005C2BC 00781821 */  addu       $v1, $v1, $t8
/* 5CEC0 8005C2C0 24C60004 */  addiu      $a2, $a2, 4
/* 5CEC4 8005C2C4 00791821 */  addu       $v1, $v1, $t9
/* 5CEC8 8005C2C8 24420004 */  addiu      $v0, $v0, 4
/* 5CECC 8005C2CC 14C5FFF6 */  bne        $a2, $a1, .L8005C2A8
/* 5CED0 8005C2D0 00681821 */   addu      $v1, $v1, $t0
.L8005C2D4:
/* 5CED4 8005C2D4 00601025 */  or         $v0, $v1, $zero
.L8005C2D8:
/* 5CED8 8005C2D8 3049FFFF */  andi       $t1, $v0, 0xffff
/* 5CEDC 8005C2DC 03E00008 */  jr         $ra
/* 5CEE0 8005C2E0 01201025 */   or        $v0, $t1, $zero

glabel func_8005C2E4
/* 5CEE4 8005C2E4 A4C00000 */  sh         $zero, ($a2)
/* 5CEE8 8005C2E8 A4A00000 */  sh         $zero, ($a1)
/* 5CEEC 8005C2EC 94820000 */  lhu        $v0, ($a0)
/* 5CEF0 8005C2F0 24870004 */  addiu      $a3, $a0, 4
/* 5CEF4 8005C2F4 24E90002 */  addiu      $t1, $a3, 2
/* 5CEF8 8005C2F8 0002C021 */  addu       $t8, $zero, $v0
/* 5CEFC 8005C2FC A4B80000 */  sh         $t8, ($a1)
/* 5CF00 8005C300 94D90000 */  lhu        $t9, ($a2)
/* 5CF04 8005C304 00406827 */  not        $t5, $v0
/* 5CF08 8005C308 24EA0004 */  addiu      $t2, $a3, 4
/* 5CF0C 8005C30C 032D7021 */  addu       $t6, $t9, $t5
/* 5CF10 8005C310 A4CE0000 */  sh         $t6, ($a2)
/* 5CF14 8005C314 94AF0000 */  lhu        $t7, ($a1)
/* 5CF18 8005C318 94820002 */  lhu        $v0, 2($a0)
/* 5CF1C 8005C31C 2404001C */  addiu      $a0, $zero, 0x1c
/* 5CF20 8005C320 24EB0006 */  addiu      $t3, $a3, 6
/* 5CF24 8005C324 01E2C021 */  addu       $t8, $t7, $v0
/* 5CF28 8005C328 A4B80000 */  sh         $t8, ($a1)
/* 5CF2C 8005C32C 94D90000 */  lhu        $t9, ($a2)
/* 5CF30 8005C330 00406827 */  not        $t5, $v0
/* 5CF34 8005C334 24030004 */  addiu      $v1, $zero, 4
/* 5CF38 8005C338 032D7021 */  addu       $t6, $t9, $t5
/* 5CF3C 8005C33C A4CE0000 */  sh         $t6, ($a2)
.L8005C340:
/* 5CF40 8005C340 94E20000 */  lhu        $v0, ($a3)
/* 5CF44 8005C344 94AF0000 */  lhu        $t7, ($a1)
/* 5CF48 8005C348 24630008 */  addiu      $v1, $v1, 8
/* 5CF4C 8005C34C 00406827 */  not        $t5, $v0
/* 5CF50 8005C350 01E2C021 */  addu       $t8, $t7, $v0
/* 5CF54 8005C354 A4B80000 */  sh         $t8, ($a1)
/* 5CF58 8005C358 94D90000 */  lhu        $t9, ($a2)
/* 5CF5C 8005C35C 24E70008 */  addiu      $a3, $a3, 8
/* 5CF60 8005C360 25290008 */  addiu      $t1, $t1, 8
/* 5CF64 8005C364 032D7021 */  addu       $t6, $t9, $t5
/* 5CF68 8005C368 A4CE0000 */  sh         $t6, ($a2)
/* 5CF6C 8005C36C 94AF0000 */  lhu        $t7, ($a1)
/* 5CF70 8005C370 9522FFF8 */  lhu        $v0, -8($t1)
/* 5CF74 8005C374 254A0008 */  addiu      $t2, $t2, 8
/* 5CF78 8005C378 256B0008 */  addiu      $t3, $t3, 8
/* 5CF7C 8005C37C 01E2C021 */  addu       $t8, $t7, $v0
/* 5CF80 8005C380 A4B80000 */  sh         $t8, ($a1)
/* 5CF84 8005C384 94D90000 */  lhu        $t9, ($a2)
/* 5CF88 8005C388 00406827 */  not        $t5, $v0
/* 5CF8C 8005C38C 032D7021 */  addu       $t6, $t9, $t5
/* 5CF90 8005C390 A4CE0000 */  sh         $t6, ($a2)
/* 5CF94 8005C394 94AF0000 */  lhu        $t7, ($a1)
/* 5CF98 8005C398 9542FFF8 */  lhu        $v0, -8($t2)
/* 5CF9C 8005C39C 01E2C021 */  addu       $t8, $t7, $v0
/* 5CFA0 8005C3A0 A4B80000 */  sh         $t8, ($a1)
/* 5CFA4 8005C3A4 94D90000 */  lhu        $t9, ($a2)
/* 5CFA8 8005C3A8 00406827 */  not        $t5, $v0
/* 5CFAC 8005C3AC 032D7021 */  addu       $t6, $t9, $t5
/* 5CFB0 8005C3B0 A4CE0000 */  sh         $t6, ($a2)
/* 5CFB4 8005C3B4 94AF0000 */  lhu        $t7, ($a1)
/* 5CFB8 8005C3B8 9562FFF8 */  lhu        $v0, -8($t3)
/* 5CFBC 8005C3BC 01E2C021 */  addu       $t8, $t7, $v0
/* 5CFC0 8005C3C0 A4B80000 */  sh         $t8, ($a1)
/* 5CFC4 8005C3C4 94D90000 */  lhu        $t9, ($a2)
/* 5CFC8 8005C3C8 00406827 */  not        $t5, $v0
/* 5CFCC 8005C3CC 032D7021 */  addu       $t6, $t9, $t5
/* 5CFD0 8005C3D0 1464FFDB */  bne        $v1, $a0, .L8005C340
/* 5CFD4 8005C3D4 A4CE0000 */   sh        $t6, ($a2)
/* 5CFD8 8005C3D8 03E00008 */  jr         $ra
/* 5CFDC 8005C3DC 00001025 */   or        $v0, $zero, $zero

glabel func_8005C3E0
/* 5CFE0 8005C3E0 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 5CFE4 8005C3E4 AFBF003C */  sw         $ra, 0x3c($sp)
/* 5CFE8 8005C3E8 AFB60038 */  sw         $s6, 0x38($sp)
/* 5CFEC 8005C3EC AFB50034 */  sw         $s5, 0x34($sp)
/* 5CFF0 8005C3F0 AFB40030 */  sw         $s4, 0x30($sp)
/* 5CFF4 8005C3F4 AFB3002C */  sw         $s3, 0x2c($sp)
/* 5CFF8 8005C3F8 AFB20028 */  sw         $s2, 0x28($sp)
/* 5CFFC 8005C3FC AFB10024 */  sw         $s1, 0x24($sp)
/* 5D000 8005C400 AFB00020 */  sw         $s0, 0x20($sp)
/* 5D004 8005C404 240EFFFF */  addiu      $t6, $zero, -1
/* 5D008 8005C408 00809025 */  or         $s2, $a0, $zero
/* 5D00C 8005C40C 00C0A025 */  or         $s4, $a2, $zero
/* 5D010 8005C410 00A0B025 */  or         $s6, $a1, $zero
/* 5D014 8005C414 00009825 */  or         $s3, $zero, $zero
/* 5D018 8005C418 0C016F40 */  jal        func_8005BD00
/* 5D01C 8005C41C ACCE0000 */   sw        $t6, ($a2)
/* 5D020 8005C420 AE820004 */  sw         $v0, 4($s4)
/* 5D024 8005C424 8ED9000C */  lw         $t9, 0xc($s6)
/* 5D028 8005C428 8ED80008 */  lw         $t8, 8($s6)
/* 5D02C 8005C42C 02402025 */  or         $a0, $s2, $zero
/* 5D030 8005C430 AE99000C */  sw         $t9, 0xc($s4)
/* 5D034 8005C434 AE980008 */  sw         $t8, 8($s4)
/* 5D038 8005C438 8EC90014 */  lw         $t1, 0x14($s6)
/* 5D03C 8005C43C 8EC80010 */  lw         $t0, 0x10($s6)
/* 5D040 8005C440 AE890014 */  sw         $t1, 0x14($s4)
/* 5D044 8005C444 AE880010 */  sw         $t0, 0x10($s4)
/* 5D048 8005C448 924F0065 */  lbu        $t7, 0x65($s2)
/* 5D04C 8005C44C 51E00008 */  beql       $t7, $zero, .L8005C470
/* 5D050 8005C450 27B1007C */   addiu     $s1, $sp, 0x7c
/* 5D054 8005C454 0C018D9C */  jal        func_80063670
/* 5D058 8005C458 00002825 */   or        $a1, $zero, $zero
/* 5D05C 8005C45C 50400004 */  beql       $v0, $zero, .L8005C470
/* 5D060 8005C460 27B1007C */   addiu     $s1, $sp, 0x7c
/* 5D064 8005C464 100000A9 */  b          .L8005C70C
/* 5D068 8005C468 8FBF003C */   lw        $ra, 0x3c($sp)
/* 5D06C 8005C46C 27B1007C */  addiu      $s1, $sp, 0x7c
.L8005C470:
/* 5D070 8005C470 0220A825 */  or         $s5, $s1, $zero
/* 5D074 8005C474 27B0009C */  addiu      $s0, $sp, 0x9c
/* 5D078 8005C478 02402025 */  or         $a0, $s2, $zero
.L8005C47C:
/* 5D07C 8005C47C 0C018D9C */  jal        func_80063670
/* 5D080 8005C480 326500FF */   andi      $a1, $s3, 0xff
/* 5D084 8005C484 10400003 */  beqz       $v0, .L8005C494
/* 5D088 8005C488 00003025 */   or        $a2, $zero, $zero
/* 5D08C 8005C48C 1000009F */  b          .L8005C70C
/* 5D090 8005C490 8FBF003C */   lw        $ra, 0x3c($sp)
.L8005C494:
/* 5D094 8005C494 8E440004 */  lw         $a0, 4($s2)
/* 5D098 8005C498 8E450008 */  lw         $a1, 8($s2)
/* 5D09C 8005C49C 0C018E98 */  jal        func_80063A60
/* 5D0A0 8005C4A0 02A03825 */   or        $a3, $s5, $zero
/* 5D0A4 8005C4A4 10400003 */  beqz       $v0, .L8005C4B4
/* 5D0A8 8005C4A8 366B0080 */   ori       $t3, $s3, 0x80
/* 5D0AC 8005C4AC 10000097 */  b          .L8005C70C
/* 5D0B0 8005C4B0 8FBF003C */   lw        $ra, 0x3c($sp)
.L8005C4B4:
/* 5D0B4 8005C4B4 A3AB007C */  sb         $t3, 0x7c($sp)
/* 5D0B8 8005C4B8 27A2007D */  addiu      $v0, $sp, 0x7d
.L8005C4BC:
/* 5D0BC 8005C4BC 904C0000 */  lbu        $t4, ($v0)
/* 5D0C0 8005C4C0 24420001 */  addiu      $v0, $v0, 1
/* 5D0C4 8005C4C4 0050082B */  sltu       $at, $v0, $s0
/* 5D0C8 8005C4C8 01806827 */  not        $t5, $t4
/* 5D0CC 8005C4CC 1420FFFB */  bnez       $at, .L8005C4BC
/* 5D0D0 8005C4D0 A04DFFFF */   sb        $t5, -1($v0)
/* 5D0D4 8005C4D4 8E440004 */  lw         $a0, 4($s2)
/* 5D0D8 8005C4D8 8E450008 */  lw         $a1, 8($s2)
/* 5D0DC 8005C4DC AFA00010 */  sw         $zero, 0x10($sp)
/* 5D0E0 8005C4E0 00003025 */  or         $a2, $zero, $zero
/* 5D0E4 8005C4E4 0C018E04 */  jal        func_80063810
/* 5D0E8 8005C4E8 02A03825 */   or        $a3, $s5, $zero
/* 5D0EC 8005C4EC 10400003 */  beqz       $v0, .L8005C4FC
/* 5D0F0 8005C4F0 00003025 */   or        $a2, $zero, $zero
/* 5D0F4 8005C4F4 10000085 */  b          .L8005C70C
/* 5D0F8 8005C4F8 8FBF003C */   lw        $ra, 0x3c($sp)
.L8005C4FC:
/* 5D0FC 8005C4FC 8E440004 */  lw         $a0, 4($s2)
/* 5D100 8005C500 8E450008 */  lw         $a1, 8($s2)
/* 5D104 8005C504 0C018E98 */  jal        func_80063A60
/* 5D108 8005C508 27A7005C */   addiu     $a3, $sp, 0x5c
/* 5D10C 8005C50C 10400003 */  beqz       $v0, .L8005C51C
/* 5D110 8005C510 27A3005C */   addiu     $v1, $sp, 0x5c
/* 5D114 8005C514 1000007D */  b          .L8005C70C
/* 5D118 8005C518 8FBF003C */   lw        $ra, 0x3c($sp)
.L8005C51C:
/* 5D11C 8005C51C 27A2007C */  addiu      $v0, $sp, 0x7c
.L8005C520:
/* 5D120 8005C520 906E0000 */  lbu        $t6, ($v1)
/* 5D124 8005C524 90580000 */  lbu        $t8, ($v0)
/* 5D128 8005C528 55D80006 */  bnel       $t6, $t8, .L8005C544
/* 5D12C 8005C52C 27B9007C */   addiu     $t9, $sp, 0x7c
/* 5D130 8005C530 24630001 */  addiu      $v1, $v1, 1
/* 5D134 8005C534 0071082B */  sltu       $at, $v1, $s1
/* 5D138 8005C538 1420FFF9 */  bnez       $at, .L8005C520
/* 5D13C 8005C53C 24420001 */   addiu     $v0, $v0, 1
/* 5D140 8005C540 27B9007C */  addiu      $t9, $sp, 0x7c
.L8005C544:
/* 5D144 8005C544 14790018 */  bne        $v1, $t9, .L8005C5A8
/* 5D148 8005C548 02402025 */   or        $a0, $s2, $zero
/* 5D14C 8005C54C 5A600013 */  blezl      $s3, .L8005C59C
/* 5D150 8005C550 26730001 */   addiu     $s3, $s3, 1
/* 5D154 8005C554 0C018D9C */  jal        func_80063670
/* 5D158 8005C558 00002825 */   or        $a1, $zero, $zero
/* 5D15C 8005C55C 10400003 */  beqz       $v0, .L8005C56C
/* 5D160 8005C560 00003025 */   or        $a2, $zero, $zero
/* 5D164 8005C564 10000069 */  b          .L8005C70C
/* 5D168 8005C568 8FBF003C */   lw        $ra, 0x3c($sp)
.L8005C56C:
/* 5D16C 8005C56C 8E440004 */  lw         $a0, 4($s2)
/* 5D170 8005C570 8E450008 */  lw         $a1, 8($s2)
/* 5D174 8005C574 0C018E98 */  jal        func_80063A60
/* 5D178 8005C578 02A03825 */   or        $a3, $s5, $zero
/* 5D17C 8005C57C 10400003 */  beqz       $v0, .L8005C58C
/* 5D180 8005C580 93A8007C */   lbu       $t0, 0x7c($sp)
/* 5D184 8005C584 10000061 */  b          .L8005C70C
/* 5D188 8005C588 8FBF003C */   lw        $ra, 0x3c($sp)
.L8005C58C:
/* 5D18C 8005C58C 24010080 */  addiu      $at, $zero, 0x80
/* 5D190 8005C590 55010006 */  bnel       $t0, $at, .L8005C5AC
/* 5D194 8005C594 92490065 */   lbu       $t1, 0x65($s2)
/* 5D198 8005C598 26730001 */  addiu      $s3, $s3, 1
.L8005C59C:
/* 5D19C 8005C59C 2A61003E */  slti       $at, $s3, 0x3e
/* 5D1A0 8005C5A0 5420FFB6 */  bnel       $at, $zero, .L8005C47C
/* 5D1A4 8005C5A4 02402025 */   or        $a0, $s2, $zero
.L8005C5A8:
/* 5D1A8 8005C5A8 92490065 */  lbu        $t1, 0x65($s2)
.L8005C5AC:
/* 5D1AC 8005C5AC 02402025 */  or         $a0, $s2, $zero
/* 5D1B0 8005C5B0 11200007 */  beqz       $t1, .L8005C5D0
/* 5D1B4 8005C5B4 00000000 */   nop       
/* 5D1B8 8005C5B8 0C018D9C */  jal        func_80063670
/* 5D1BC 8005C5BC 00002825 */   or        $a1, $zero, $zero
/* 5D1C0 8005C5C0 10400003 */  beqz       $v0, .L8005C5D0
/* 5D1C4 8005C5C4 00000000 */   nop       
/* 5D1C8 8005C5C8 10000050 */  b          .L8005C70C
/* 5D1CC 8005C5CC 8FBF003C */   lw        $ra, 0x3c($sp)
.L8005C5D0:
/* 5D1D0 8005C5D0 1A600003 */  blez       $s3, .L8005C5E0
/* 5D1D4 8005C5D4 02802025 */   or        $a0, $s4, $zero
/* 5D1D8 8005C5D8 10000002 */  b          .L8005C5E4
/* 5D1DC 8005C5DC 24020001 */   addiu     $v0, $zero, 1
.L8005C5E0:
/* 5D1E0 8005C5E0 00001025 */  or         $v0, $zero, $zero
.L8005C5E4:
/* 5D1E4 8005C5E4 96CF0018 */  lhu        $t7, 0x18($s6)
/* 5D1E8 8005C5E8 A293001A */  sb         $s3, 0x1a($s4)
/* 5D1EC 8005C5EC 2685001C */  addiu      $a1, $s4, 0x1c
/* 5D1F0 8005C5F0 31EAFFFE */  andi       $t2, $t7, 0xfffe
/* 5D1F4 8005C5F4 01425825 */  or         $t3, $t2, $v0
/* 5D1F8 8005C5F8 A68B0018 */  sh         $t3, 0x18($s4)
/* 5D1FC 8005C5FC 92CC001B */  lbu        $t4, 0x1b($s6)
/* 5D200 8005C600 2686001E */  addiu      $a2, $s4, 0x1e
/* 5D204 8005C604 0C0170B9 */  jal        func_8005C2E4
/* 5D208 8005C608 A28C001B */   sb        $t4, 0x1b($s4)
/* 5D20C 8005C60C 240D0001 */  addiu      $t5, $zero, 1
/* 5D210 8005C610 240E0003 */  addiu      $t6, $zero, 3
/* 5D214 8005C614 24180004 */  addiu      $t8, $zero, 4
/* 5D218 8005C618 24190006 */  addiu      $t9, $zero, 6
/* 5D21C 8005C61C A7AD0048 */  sh         $t5, 0x48($sp)
/* 5D220 8005C620 A7AE004A */  sh         $t6, 0x4a($sp)
/* 5D224 8005C624 A7B8004C */  sh         $t8, 0x4c($sp)
/* 5D228 8005C628 A7B9004E */  sh         $t9, 0x4e($sp)
/* 5D22C 8005C62C 27B00048 */  addiu      $s0, $sp, 0x48
/* 5D230 8005C630 27B10050 */  addiu      $s1, $sp, 0x50
/* 5D234 8005C634 8E440004 */  lw         $a0, 4($s2)
.L8005C638:
/* 5D238 8005C638 8E450008 */  lw         $a1, 8($s2)
/* 5D23C 8005C63C 96060000 */  lhu        $a2, ($s0)
/* 5D240 8005C640 24080001 */  addiu      $t0, $zero, 1
/* 5D244 8005C644 AFA80010 */  sw         $t0, 0x10($sp)
/* 5D248 8005C648 0C018E04 */  jal        func_80063810
/* 5D24C 8005C64C 02803825 */   or        $a3, $s4, $zero
/* 5D250 8005C650 10400003 */  beqz       $v0, .L8005C660
/* 5D254 8005C654 26100002 */   addiu     $s0, $s0, 2
/* 5D258 8005C658 1000002C */  b          .L8005C70C
/* 5D25C 8005C65C 8FBF003C */   lw        $ra, 0x3c($sp)
.L8005C660:
/* 5D260 8005C660 0211082B */  sltu       $at, $s0, $s1
/* 5D264 8005C664 5420FFF4 */  bnel       $at, $zero, .L8005C638
/* 5D268 8005C668 8E440004 */   lw        $a0, 4($s2)
/* 5D26C 8005C66C 8E440004 */  lw         $a0, 4($s2)
/* 5D270 8005C670 8E450008 */  lw         $a1, 8($s2)
/* 5D274 8005C674 24060001 */  addiu      $a2, $zero, 1
/* 5D278 8005C678 0C018E98 */  jal        func_80063A60
/* 5D27C 8005C67C 02A03825 */   or        $a3, $s5, $zero
/* 5D280 8005C680 10400003 */  beqz       $v0, .L8005C690
/* 5D284 8005C684 02801825 */   or        $v1, $s4, $zero
/* 5D288 8005C688 10000020 */  b          .L8005C70C
/* 5D28C 8005C68C 8FBF003C */   lw        $ra, 0x3c($sp)
.L8005C690:
/* 5D290 8005C690 27A2007C */  addiu      $v0, $sp, 0x7c
/* 5D294 8005C694 27A4009C */  addiu      $a0, $sp, 0x9c
.L8005C698:
/* 5D298 8005C698 90490000 */  lbu        $t1, ($v0)
/* 5D29C 8005C69C 906F0000 */  lbu        $t7, ($v1)
/* 5D2A0 8005C6A0 512F0004 */  beql       $t1, $t7, .L8005C6B4
/* 5D2A4 8005C6A4 904A0001 */   lbu       $t2, 1($v0)
/* 5D2A8 8005C6A8 10000017 */  b          .L8005C708
/* 5D2AC 8005C6AC 2402000B */   addiu     $v0, $zero, 0xb
/* 5D2B0 8005C6B0 904A0001 */  lbu        $t2, 1($v0)
.L8005C6B4:
/* 5D2B4 8005C6B4 906B0001 */  lbu        $t3, 1($v1)
/* 5D2B8 8005C6B8 514B0004 */  beql       $t2, $t3, .L8005C6CC
/* 5D2BC 8005C6BC 904C0002 */   lbu       $t4, 2($v0)
/* 5D2C0 8005C6C0 10000011 */  b          .L8005C708
/* 5D2C4 8005C6C4 2402000B */   addiu     $v0, $zero, 0xb
/* 5D2C8 8005C6C8 904C0002 */  lbu        $t4, 2($v0)
.L8005C6CC:
/* 5D2CC 8005C6CC 906D0002 */  lbu        $t5, 2($v1)
/* 5D2D0 8005C6D0 518D0004 */  beql       $t4, $t5, .L8005C6E4
/* 5D2D4 8005C6D4 904E0003 */   lbu       $t6, 3($v0)
/* 5D2D8 8005C6D8 1000000B */  b          .L8005C708
/* 5D2DC 8005C6DC 2402000B */   addiu     $v0, $zero, 0xb
/* 5D2E0 8005C6E0 904E0003 */  lbu        $t6, 3($v0)
.L8005C6E4:
/* 5D2E4 8005C6E4 90780003 */  lbu        $t8, 3($v1)
/* 5D2E8 8005C6E8 24420004 */  addiu      $v0, $v0, 4
/* 5D2EC 8005C6EC 11D80003 */  beq        $t6, $t8, .L8005C6FC
/* 5D2F0 8005C6F0 00000000 */   nop       
/* 5D2F4 8005C6F4 10000004 */  b          .L8005C708
/* 5D2F8 8005C6F8 2402000B */   addiu     $v0, $zero, 0xb
.L8005C6FC:
/* 5D2FC 8005C6FC 1444FFE6 */  bne        $v0, $a0, .L8005C698
/* 5D300 8005C700 24630004 */   addiu     $v1, $v1, 4
/* 5D304 8005C704 00001025 */  or         $v0, $zero, $zero
.L8005C708:
/* 5D308 8005C708 8FBF003C */  lw         $ra, 0x3c($sp)
.L8005C70C:
/* 5D30C 8005C70C 8FB00020 */  lw         $s0, 0x20($sp)
/* 5D310 8005C710 8FB10024 */  lw         $s1, 0x24($sp)
/* 5D314 8005C714 8FB20028 */  lw         $s2, 0x28($sp)
/* 5D318 8005C718 8FB3002C */  lw         $s3, 0x2c($sp)
/* 5D31C 8005C71C 8FB40030 */  lw         $s4, 0x30($sp)
/* 5D320 8005C720 8FB50034 */  lw         $s5, 0x34($sp)
/* 5D324 8005C724 8FB60038 */  lw         $s6, 0x38($sp)
/* 5D328 8005C728 03E00008 */  jr         $ra
/* 5D32C 8005C72C 27BD00A0 */   addiu     $sp, $sp, 0xa0

glabel func_8005C730
/* 5D330 8005C730 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 5D334 8005C734 AFBF003C */  sw         $ra, 0x3c($sp)
/* 5D338 8005C738 AFB60038 */  sw         $s6, 0x38($sp)
/* 5D33C 8005C73C AFB50034 */  sw         $s5, 0x34($sp)
/* 5D340 8005C740 AFB40030 */  sw         $s4, 0x30($sp)
/* 5D344 8005C744 AFB3002C */  sw         $s3, 0x2c($sp)
/* 5D348 8005C748 AFB20028 */  sw         $s2, 0x28($sp)
/* 5D34C 8005C74C AFB10024 */  sw         $s1, 0x24($sp)
/* 5D350 8005C750 AFB00020 */  sw         $s0, 0x20($sp)
/* 5D354 8005C754 908E0065 */  lbu        $t6, 0x65($a0)
/* 5D358 8005C758 00A09025 */  or         $s2, $a1, $zero
/* 5D35C 8005C75C 00809825 */  or         $s3, $a0, $zero
/* 5D360 8005C760 51C00008 */  beql       $t6, $zero, .L8005C784
/* 5D364 8005C764 240F0001 */   addiu     $t7, $zero, 1
/* 5D368 8005C768 0C018D9C */  jal        func_80063670
/* 5D36C 8005C76C 00002825 */   or        $a1, $zero, $zero
/* 5D370 8005C770 50400004 */  beql       $v0, $zero, .L8005C784
/* 5D374 8005C774 240F0001 */   addiu     $t7, $zero, 1
/* 5D378 8005C778 1000003D */  b          .L8005C870
/* 5D37C 8005C77C 8FBF003C */   lw        $ra, 0x3c($sp)
/* 5D380 8005C780 240F0001 */  addiu      $t7, $zero, 1
.L8005C784:
/* 5D384 8005C784 24180003 */  addiu      $t8, $zero, 3
/* 5D388 8005C788 24190004 */  addiu      $t9, $zero, 4
/* 5D38C 8005C78C 24080006 */  addiu      $t0, $zero, 6
/* 5D390 8005C790 A7AF0058 */  sh         $t7, 0x58($sp)
/* 5D394 8005C794 A7B8005A */  sh         $t8, 0x5a($sp)
/* 5D398 8005C798 A7B9005C */  sh         $t9, 0x5c($sp)
/* 5D39C 8005C79C A7A8005E */  sh         $t0, 0x5e($sp)
/* 5D3A0 8005C7A0 24110001 */  addiu      $s1, $zero, 1
/* 5D3A4 8005C7A4 27B0005A */  addiu      $s0, $sp, 0x5a
/* 5D3A8 8005C7A8 27B60050 */  addiu      $s6, $sp, 0x50
/* 5D3AC 8005C7AC 24150004 */  addiu      $s5, $zero, 4
/* 5D3B0 8005C7B0 27B40052 */  addiu      $s4, $sp, 0x52
.L8005C7B4:
/* 5D3B4 8005C7B4 8E640004 */  lw         $a0, 4($s3)
/* 5D3B8 8005C7B8 8E650008 */  lw         $a1, 8($s3)
/* 5D3BC 8005C7BC 96060000 */  lhu        $a2, ($s0)
/* 5D3C0 8005C7C0 0C018E98 */  jal        func_80063A60
/* 5D3C4 8005C7C4 02403825 */   or        $a3, $s2, $zero
/* 5D3C8 8005C7C8 10400003 */  beqz       $v0, .L8005C7D8
/* 5D3CC 8005C7CC 02402025 */   or        $a0, $s2, $zero
/* 5D3D0 8005C7D0 10000027 */  b          .L8005C870
/* 5D3D4 8005C7D4 8FBF003C */   lw        $ra, 0x3c($sp)
.L8005C7D8:
/* 5D3D8 8005C7D8 02802825 */  or         $a1, $s4, $zero
/* 5D3DC 8005C7DC 0C0170B9 */  jal        func_8005C2E4
/* 5D3E0 8005C7E0 02C03025 */   or        $a2, $s6, $zero
/* 5D3E4 8005C7E4 97A90052 */  lhu        $t1, 0x52($sp)
/* 5D3E8 8005C7E8 964A001C */  lhu        $t2, 0x1c($s2)
/* 5D3EC 8005C7EC 97AB0050 */  lhu        $t3, 0x50($sp)
/* 5D3F0 8005C7F0 552A0005 */  bnel       $t1, $t2, .L8005C808
/* 5D3F4 8005C7F4 26310001 */   addiu     $s1, $s1, 1
/* 5D3F8 8005C7F8 964C001E */  lhu        $t4, 0x1e($s2)
/* 5D3FC 8005C7FC 116C0004 */  beq        $t3, $t4, .L8005C810
/* 5D400 8005C800 00000000 */   nop       
/* 5D404 8005C804 26310001 */  addiu      $s1, $s1, 1
.L8005C808:
/* 5D408 8005C808 1635FFEA */  bne        $s1, $s5, .L8005C7B4
/* 5D40C 8005C80C 26100002 */   addiu     $s0, $s0, 2
.L8005C810:
/* 5D410 8005C810 16350003 */  bne        $s1, $s5, .L8005C820
/* 5D414 8005C814 00008025 */   or        $s0, $zero, $zero
/* 5D418 8005C818 10000014 */  b          .L8005C86C
/* 5D41C 8005C81C 2402000A */   addiu     $v0, $zero, 0xa
.L8005C820:
/* 5D420 8005C820 27B40058 */  addiu      $s4, $sp, 0x58
.L8005C824:
/* 5D424 8005C824 1211000D */  beq        $s0, $s1, .L8005C85C
/* 5D428 8005C828 00106840 */   sll       $t5, $s0, 1
/* 5D42C 8005C82C 028D7021 */  addu       $t6, $s4, $t5
/* 5D430 8005C830 95C60000 */  lhu        $a2, ($t6)
/* 5D434 8005C834 8E640004 */  lw         $a0, 4($s3)
/* 5D438 8005C838 8E650008 */  lw         $a1, 8($s3)
/* 5D43C 8005C83C 240F0001 */  addiu      $t7, $zero, 1
/* 5D440 8005C840 AFAF0010 */  sw         $t7, 0x10($sp)
/* 5D444 8005C844 0C018E04 */  jal        func_80063810
/* 5D448 8005C848 02403825 */   or        $a3, $s2, $zero
/* 5D44C 8005C84C 50400004 */  beql       $v0, $zero, .L8005C860
/* 5D450 8005C850 26100001 */   addiu     $s0, $s0, 1
/* 5D454 8005C854 10000006 */  b          .L8005C870
/* 5D458 8005C858 8FBF003C */   lw        $ra, 0x3c($sp)
.L8005C85C:
/* 5D45C 8005C85C 26100001 */  addiu      $s0, $s0, 1
.L8005C860:
/* 5D460 8005C860 1615FFF0 */  bne        $s0, $s5, .L8005C824
/* 5D464 8005C864 00000000 */   nop       
/* 5D468 8005C868 00001025 */  or         $v0, $zero, $zero
.L8005C86C:
/* 5D46C 8005C86C 8FBF003C */  lw         $ra, 0x3c($sp)
.L8005C870:
/* 5D470 8005C870 8FB00020 */  lw         $s0, 0x20($sp)
/* 5D474 8005C874 8FB10024 */  lw         $s1, 0x24($sp)
/* 5D478 8005C878 8FB20028 */  lw         $s2, 0x28($sp)
/* 5D47C 8005C87C 8FB3002C */  lw         $s3, 0x2c($sp)
/* 5D480 8005C880 8FB40030 */  lw         $s4, 0x30($sp)
/* 5D484 8005C884 8FB50034 */  lw         $s5, 0x34($sp)
/* 5D488 8005C888 8FB60038 */  lw         $s6, 0x38($sp)
/* 5D48C 8005C88C 03E00008 */  jr         $ra
/* 5D490 8005C890 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8005C894
/* 5D494 8005C894 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 5D498 8005C898 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5D49C 8005C89C AFB10018 */  sw         $s1, 0x18($sp)
/* 5D4A0 8005C8A0 AFB00014 */  sw         $s0, 0x14($sp)
/* 5D4A4 8005C8A4 908E0065 */  lbu        $t6, 0x65($a0)
/* 5D4A8 8005C8A8 00808025 */  or         $s0, $a0, $zero
/* 5D4AC 8005C8AC 51C00008 */  beql       $t6, $zero, .L8005C8D0
/* 5D4B0 8005C8B0 8E040004 */   lw        $a0, 4($s0)
/* 5D4B4 8005C8B4 0C018D9C */  jal        func_80063670
/* 5D4B8 8005C8B8 00002825 */   or        $a1, $zero, $zero
/* 5D4BC 8005C8BC 50400004 */  beql       $v0, $zero, .L8005C8D0
/* 5D4C0 8005C8C0 8E040004 */   lw        $a0, 4($s0)
/* 5D4C4 8005C8C4 1000005A */  b          .L8005CA30
/* 5D4C8 8005C8C8 8FBF001C */   lw        $ra, 0x1c($sp)
/* 5D4CC 8005C8CC 8E040004 */  lw         $a0, 4($s0)
.L8005C8D0:
/* 5D4D0 8005C8D0 8E050008 */  lw         $a1, 8($s0)
/* 5D4D4 8005C8D4 24060001 */  addiu      $a2, $zero, 1
/* 5D4D8 8005C8D8 0C018E98 */  jal        func_80063A60
/* 5D4DC 8005C8DC 27A7004C */   addiu     $a3, $sp, 0x4c
/* 5D4E0 8005C8E0 10400003 */  beqz       $v0, .L8005C8F0
/* 5D4E4 8005C8E4 27A4004C */   addiu     $a0, $sp, 0x4c
/* 5D4E8 8005C8E8 10000051 */  b          .L8005CA30
/* 5D4EC 8005C8EC 8FBF001C */   lw        $ra, 0x1c($sp)
.L8005C8F0:
/* 5D4F0 8005C8F0 27A5006E */  addiu      $a1, $sp, 0x6e
/* 5D4F4 8005C8F4 0C0170B9 */  jal        func_8005C2E4
/* 5D4F8 8005C8F8 27A6006C */   addiu     $a2, $sp, 0x6c
/* 5D4FC 8005C8FC 97AF006E */  lhu        $t7, 0x6e($sp)
/* 5D500 8005C900 97B80068 */  lhu        $t8, 0x68($sp)
/* 5D504 8005C904 27A5004C */  addiu      $a1, $sp, 0x4c
/* 5D508 8005C908 00A08825 */  or         $s1, $a1, $zero
/* 5D50C 8005C90C 15F80004 */  bne        $t7, $t8, .L8005C920
/* 5D510 8005C910 97B9006C */   lhu       $t9, 0x6c($sp)
/* 5D514 8005C914 97A9006A */  lhu        $t1, 0x6a($sp)
/* 5D518 8005C918 53290015 */  beql       $t9, $t1, .L8005C970
/* 5D51C 8005C91C 962A0018 */   lhu       $t2, 0x18($s1)
.L8005C920:
/* 5D520 8005C920 0C0171CC */  jal        func_8005C730
/* 5D524 8005C924 02002025 */   or        $a0, $s0, $zero
/* 5D528 8005C928 2401000A */  addiu      $at, $zero, 0xa
/* 5D52C 8005C92C 1441000B */  bne        $v0, $at, .L8005C95C
/* 5D530 8005C930 00401825 */   or        $v1, $v0, $zero
/* 5D534 8005C934 02002025 */  or         $a0, $s0, $zero
/* 5D538 8005C938 27A5004C */  addiu      $a1, $sp, 0x4c
/* 5D53C 8005C93C 0C0170F8 */  jal        func_8005C3E0
/* 5D540 8005C940 27A60028 */   addiu     $a2, $sp, 0x28
/* 5D544 8005C944 10400003 */  beqz       $v0, .L8005C954
/* 5D548 8005C948 00000000 */   nop       
/* 5D54C 8005C94C 10000038 */  b          .L8005CA30
/* 5D550 8005C950 8FBF001C */   lw        $ra, 0x1c($sp)
.L8005C954:
/* 5D554 8005C954 10000005 */  b          .L8005C96C
/* 5D558 8005C958 27B10028 */   addiu     $s1, $sp, 0x28
.L8005C95C:
/* 5D55C 8005C95C 50400004 */  beql       $v0, $zero, .L8005C970
/* 5D560 8005C960 962A0018 */   lhu       $t2, 0x18($s1)
/* 5D564 8005C964 10000031 */  b          .L8005CA2C
/* 5D568 8005C968 00601025 */   or        $v0, $v1, $zero
.L8005C96C:
/* 5D56C 8005C96C 962A0018 */  lhu        $t2, 0x18($s1)
.L8005C970:
/* 5D570 8005C970 02002025 */  or         $a0, $s0, $zero
/* 5D574 8005C974 02202825 */  or         $a1, $s1, $zero
/* 5D578 8005C978 314B0001 */  andi       $t3, $t2, 1
/* 5D57C 8005C97C 5560000D */  bnel       $t3, $zero, .L8005C9B4
/* 5D580 8005C980 02202025 */   or        $a0, $s1, $zero
/* 5D584 8005C984 0C0170F8 */  jal        func_8005C3E0
/* 5D588 8005C988 27A60028 */   addiu     $a2, $sp, 0x28
/* 5D58C 8005C98C 10400003 */  beqz       $v0, .L8005C99C
/* 5D590 8005C990 97AC0040 */   lhu       $t4, 0x40($sp)
/* 5D594 8005C994 10000026 */  b          .L8005CA30
/* 5D598 8005C998 8FBF001C */   lw        $ra, 0x1c($sp)
.L8005C99C:
/* 5D59C 8005C99C 318D0001 */  andi       $t5, $t4, 1
/* 5D5A0 8005C9A0 15A00003 */  bnez       $t5, .L8005C9B0
/* 5D5A4 8005C9A4 27B10028 */   addiu     $s1, $sp, 0x28
/* 5D5A8 8005C9A8 10000020 */  b          .L8005CA2C
/* 5D5AC 8005C9AC 2402000B */   addiu     $v0, $zero, 0xb
.L8005C9B0:
/* 5D5B0 8005C9B0 02202025 */  or         $a0, $s1, $zero
.L8005C9B4:
/* 5D5B4 8005C9B4 2605000C */  addiu      $a1, $s0, 0xc
/* 5D5B8 8005C9B8 0C018958 */  jal        func_80062560
/* 5D5BC 8005C9BC 24060020 */   addiu     $a2, $zero, 0x20
/* 5D5C0 8005C9C0 922E001B */  lbu        $t6, 0x1b($s1)
/* 5D5C4 8005C9C4 24090010 */  addiu      $t1, $zero, 0x10
/* 5D5C8 8005C9C8 240A0008 */  addiu      $t2, $zero, 8
/* 5D5CC 8005C9CC AE0E004C */  sw         $t6, 0x4c($s0)
/* 5D5D0 8005C9D0 922F001A */  lbu        $t7, 0x1a($s1)
/* 5D5D4 8005C9D4 AE090050 */  sw         $t1, 0x50($s0)
/* 5D5D8 8005C9D8 AE0A0054 */  sw         $t2, 0x54($s0)
/* 5D5DC 8005C9DC 31E200FF */  andi       $v0, $t7, 0xff
/* 5D5E0 8005C9E0 000218C0 */  sll        $v1, $v0, 3
/* 5D5E4 8005C9E4 0002C040 */  sll        $t8, $v0, 1
/* 5D5E8 8005C9E8 24680008 */  addiu      $t0, $v1, 8
/* 5D5EC 8005C9EC 27190003 */  addiu      $t9, $t8, 3
/* 5D5F0 8005C9F0 01035821 */  addu       $t3, $t0, $v1
/* 5D5F4 8005C9F4 AE190060 */  sw         $t9, 0x60($s0)
/* 5D5F8 8005C9F8 AE080058 */  sw         $t0, 0x58($s0)
/* 5D5FC 8005C9FC AE0B005C */  sw         $t3, 0x5c($s0)
/* 5D600 8005CA00 8E040004 */  lw         $a0, 4($s0)
/* 5D604 8005CA04 8E050008 */  lw         $a1, 8($s0)
/* 5D608 8005CA08 24060007 */  addiu      $a2, $zero, 7
/* 5D60C 8005CA0C 2607002C */  addiu      $a3, $s0, 0x2c
/* 5D610 8005CA10 0C018E98 */  jal        func_80063A60
/* 5D614 8005CA14 A20F0064 */   sb        $t7, 0x64($s0)
/* 5D618 8005CA18 50400004 */  beql       $v0, $zero, .L8005CA2C
/* 5D61C 8005CA1C 00001025 */   or        $v0, $zero, $zero
/* 5D620 8005CA20 10000003 */  b          .L8005CA30
/* 5D624 8005CA24 8FBF001C */   lw        $ra, 0x1c($sp)
/* 5D628 8005CA28 00001025 */  or         $v0, $zero, $zero
.L8005CA2C:
/* 5D62C 8005CA2C 8FBF001C */  lw         $ra, 0x1c($sp)
.L8005CA30:
/* 5D630 8005CA30 8FB00014 */  lw         $s0, 0x14($sp)
/* 5D634 8005CA34 8FB10018 */  lw         $s1, 0x18($sp)
/* 5D638 8005CA38 03E00008 */  jr         $ra
/* 5D63C 8005CA3C 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8005CA40
/* 5D640 8005CA40 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 5D644 8005CA44 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5D648 8005CA48 AFB00018 */  sw         $s0, 0x18($sp)
/* 5D64C 8005CA4C 908E0065 */  lbu        $t6, 0x65($a0)
/* 5D650 8005CA50 00808025 */  or         $s0, $a0, $zero
/* 5D654 8005CA54 51C0000F */  beql       $t6, $zero, .L8005CA94
/* 5D658 8005CA58 8E040004 */   lw        $a0, 4($s0)
/* 5D65C 8005CA5C 0C018D9C */  jal        func_80063670
/* 5D660 8005CA60 00002825 */   or        $a1, $zero, $zero
/* 5D664 8005CA64 24010002 */  addiu      $at, $zero, 2
/* 5D668 8005CA68 14410005 */  bne        $v0, $at, .L8005CA80
/* 5D66C 8005CA6C 00401825 */   or        $v1, $v0, $zero
/* 5D670 8005CA70 02002025 */  or         $a0, $s0, $zero
/* 5D674 8005CA74 0C018D9C */  jal        func_80063670
/* 5D678 8005CA78 00002825 */   or        $a1, $zero, $zero
/* 5D67C 8005CA7C 00401825 */  or         $v1, $v0, $zero
.L8005CA80:
/* 5D680 8005CA80 50400004 */  beql       $v0, $zero, .L8005CA94
/* 5D684 8005CA84 8E040004 */   lw        $a0, 4($s0)
/* 5D688 8005CA88 1000001D */  b          .L8005CB00
/* 5D68C 8005CA8C 00601025 */   or        $v0, $v1, $zero
/* 5D690 8005CA90 8E040004 */  lw         $a0, 4($s0)
.L8005CA94:
/* 5D694 8005CA94 8E050008 */  lw         $a1, 8($s0)
/* 5D698 8005CA98 24060001 */  addiu      $a2, $zero, 1
/* 5D69C 8005CA9C 0C018E98 */  jal        func_80063A60
/* 5D6A0 8005CAA0 27A70028 */   addiu     $a3, $sp, 0x28
/* 5D6A4 8005CAA4 1040000D */  beqz       $v0, .L8005CADC
/* 5D6A8 8005CAA8 24010002 */   addiu     $at, $zero, 2
/* 5D6AC 8005CAAC 10410003 */  beq        $v0, $at, .L8005CABC
/* 5D6B0 8005CAB0 24060001 */   addiu     $a2, $zero, 1
/* 5D6B4 8005CAB4 10000013 */  b          .L8005CB04
/* 5D6B8 8005CAB8 8FBF001C */   lw        $ra, 0x1c($sp)
.L8005CABC:
/* 5D6BC 8005CABC 8E040004 */  lw         $a0, 4($s0)
/* 5D6C0 8005CAC0 8E050008 */  lw         $a1, 8($s0)
/* 5D6C4 8005CAC4 0C018E98 */  jal        func_80063A60
/* 5D6C8 8005CAC8 27A70028 */   addiu     $a3, $sp, 0x28
/* 5D6CC 8005CACC 50400004 */  beql       $v0, $zero, .L8005CAE0
/* 5D6D0 8005CAD0 2604000C */   addiu     $a0, $s0, 0xc
/* 5D6D4 8005CAD4 1000000B */  b          .L8005CB04
/* 5D6D8 8005CAD8 8FBF001C */   lw        $ra, 0x1c($sp)
.L8005CADC:
/* 5D6DC 8005CADC 2604000C */  addiu      $a0, $s0, 0xc
.L8005CAE0:
/* 5D6E0 8005CAE0 27A50028 */  addiu      $a1, $sp, 0x28
/* 5D6E4 8005CAE4 0C017B90 */  jal        func_8005EE40
/* 5D6E8 8005CAE8 24060020 */   addiu     $a2, $zero, 0x20
/* 5D6EC 8005CAEC 50400004 */  beql       $v0, $zero, .L8005CB00
/* 5D6F0 8005CAF0 00001025 */   or        $v0, $zero, $zero
/* 5D6F4 8005CAF4 10000002 */  b          .L8005CB00
/* 5D6F8 8005CAF8 24020002 */   addiu     $v0, $zero, 2
/* 5D6FC 8005CAFC 00001025 */  or         $v0, $zero, $zero
.L8005CB00:
/* 5D700 8005CB00 8FBF001C */  lw         $ra, 0x1c($sp)
.L8005CB04:
/* 5D704 8005CB04 8FB00018 */  lw         $s0, 0x18($sp)
/* 5D708 8005CB08 27BD0048 */  addiu      $sp, $sp, 0x48
/* 5D70C 8005CB0C 03E00008 */  jr         $ra
/* 5D710 8005CB10 00000000 */   nop       

glabel func_8005CB14
/* 5D714 8005CB14 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 5D718 8005CB18 AFB40030 */  sw         $s4, 0x30($sp)
/* 5D71C 8005CB1C 30D400FF */  andi       $s4, $a2, 0xff
/* 5D720 8005CB20 AFB20028 */  sw         $s2, 0x28($sp)
/* 5D724 8005CB24 00809025 */  or         $s2, $a0, $zero
/* 5D728 8005CB28 AFBF0034 */  sw         $ra, 0x34($sp)
/* 5D72C 8005CB2C AFB3002C */  sw         $s3, 0x2c($sp)
/* 5D730 8005CB30 AFB10024 */  sw         $s1, 0x24($sp)
/* 5D734 8005CB34 AFB00020 */  sw         $s0, 0x20($sp)
/* 5D738 8005CB38 AFA5005C */  sw         $a1, 0x5c($sp)
/* 5D73C 8005CB3C AFA60060 */  sw         $a2, 0x60($sp)
/* 5D740 8005CB40 16800011 */  bnez       $s4, .L8005CB88
/* 5D744 8005CB44 AFA70064 */   sw        $a3, 0x64($sp)
/* 5D748 8005CB48 3C0F8008 */  lui        $t7, 0x8008
/* 5D74C 8005CB4C 91EFA934 */  lbu        $t7, -0x56cc($t7)
/* 5D750 8005CB50 93B80067 */  lbu        $t8, 0x67($sp)
/* 5D754 8005CB54 3C198008 */  lui        $t9, 0x8008
/* 5D758 8005CB58 55F8000C */  bnel       $t7, $t8, .L8005CB8C
/* 5D75C 8005CB5C 92490065 */   lbu       $t1, 0x65($s2)
/* 5D760 8005CB60 8F39A930 */  lw         $t9, -0x56d0($t9)
/* 5D764 8005CB64 8C880008 */  lw         $t0, 8($a0)
/* 5D768 8005CB68 3C048010 */  lui        $a0, 0x8010
/* 5D76C 8005CB6C 248436F0 */  addiu      $a0, $a0, 0x36f0
/* 5D770 8005CB70 57280006 */  bnel       $t9, $t0, .L8005CB8C
/* 5D774 8005CB74 92490065 */   lbu       $t1, 0x65($s2)
/* 5D778 8005CB78 0C018958 */  jal        func_80062560
/* 5D77C 8005CB7C 24060100 */   addiu     $a2, $zero, 0x100
/* 5D780 8005CB80 10000091 */  b          .L8005CDC8
/* 5D784 8005CB84 00001025 */   or        $v0, $zero, $zero
.L8005CB88:
/* 5D788 8005CB88 92490065 */  lbu        $t1, 0x65($s2)
.L8005CB8C:
/* 5D78C 8005CB8C 02402025 */  or         $a0, $s2, $zero
/* 5D790 8005CB90 51200008 */  beql       $t1, $zero, .L8005CBB4
/* 5D794 8005CB94 93A30067 */   lbu       $v1, 0x67($sp)
/* 5D798 8005CB98 0C018D9C */  jal        func_80063670
/* 5D79C 8005CB9C 00002825 */   or        $a1, $zero, $zero
/* 5D7A0 8005CBA0 50400004 */  beql       $v0, $zero, .L8005CBB4
/* 5D7A4 8005CBA4 93A30067 */   lbu       $v1, 0x67($sp)
/* 5D7A8 8005CBA8 10000088 */  b          .L8005CDCC
/* 5D7AC 8005CBAC 8FBF0034 */   lw        $ra, 0x34($sp)
/* 5D7B0 8005CBB0 93A30067 */  lbu        $v1, 0x67($sp)
.L8005CBB4:
/* 5D7B4 8005CBB4 24020001 */  addiu      $v0, $zero, 1
/* 5D7B8 8005CBB8 240A0001 */  addiu      $t2, $zero, 1
/* 5D7BC 8005CBBC 58600004 */  blezl      $v1, .L8005CBD0
/* 5D7C0 8005CBC0 8E4B0060 */   lw        $t3, 0x60($s2)
/* 5D7C4 8005CBC4 10000003 */  b          .L8005CBD4
/* 5D7C8 8005CBC8 AFAA0048 */   sw        $t2, 0x48($sp)
/* 5D7CC 8005CBCC 8E4B0060 */  lw         $t3, 0x60($s2)
.L8005CBD0:
/* 5D7D0 8005CBD0 AFAB0048 */  sw         $t3, 0x48($sp)
.L8005CBD4:
/* 5D7D4 8005CBD4 1454000C */  bne        $v0, $s4, .L8005CC08
/* 5D7D8 8005CBD8 8FAD0048 */   lw        $t5, 0x48($sp)
/* 5D7DC 8005CBDC 8FAC005C */  lw         $t4, 0x5c($sp)
/* 5D7E0 8005CBE0 000D2823 */  negu       $a1, $t5
/* 5D7E4 8005CBE4 00057840 */  sll        $t7, $a1, 1
/* 5D7E8 8005CBE8 000D7040 */  sll        $t6, $t5, 1
/* 5D7EC 8005CBEC 25E50100 */  addiu      $a1, $t7, 0x100
/* 5D7F0 8005CBF0 AFA3003C */  sw         $v1, 0x3c($sp)
/* 5D7F4 8005CBF4 0C01709C */  jal        func_8005C270
/* 5D7F8 8005CBF8 018E2021 */   addu      $a0, $t4, $t6
/* 5D7FC 8005CBFC 8FB8005C */  lw         $t8, 0x5c($sp)
/* 5D800 8005CC00 8FA3003C */  lw         $v1, 0x3c($sp)
/* 5D804 8005CC04 A3020001 */  sb         $v0, 1($t8)
.L8005CC08:
/* 5D808 8005CC08 00008025 */  or         $s0, $zero, $zero
/* 5D80C 8005CC0C 8FB1005C */  lw         $s1, 0x5c($sp)
/* 5D810 8005CC10 000398C0 */  sll        $s3, $v1, 3
.L8005CC14:
/* 5D814 8005CC14 24020001 */  addiu      $v0, $zero, 1
/* 5D818 8005CC18 14540016 */  bne        $v0, $s4, .L8005CC74
/* 5D81C 8005CC1C 8E450008 */   lw        $a1, 8($s2)
/* 5D820 8005CC20 8E590054 */  lw         $t9, 0x54($s2)
/* 5D824 8005CC24 8E440004 */  lw         $a0, 4($s2)
/* 5D828 8005CC28 AFA00010 */  sw         $zero, 0x10($sp)
/* 5D82C 8005CC2C 03334021 */  addu       $t0, $t9, $s3
/* 5D830 8005CC30 01103021 */  addu       $a2, $t0, $s0
/* 5D834 8005CC34 30C9FFFF */  andi       $t1, $a2, 0xffff
/* 5D838 8005CC38 01203025 */  or         $a2, $t1, $zero
/* 5D83C 8005CC3C 0C018E04 */  jal        func_80063810
/* 5D840 8005CC40 02203825 */   or        $a3, $s1, $zero
/* 5D844 8005CC44 8E4A0058 */  lw         $t2, 0x58($s2)
/* 5D848 8005CC48 8E440004 */  lw         $a0, 4($s2)
/* 5D84C 8005CC4C 8E450008 */  lw         $a1, 8($s2)
/* 5D850 8005CC50 01535821 */  addu       $t3, $t2, $s3
/* 5D854 8005CC54 01703021 */  addu       $a2, $t3, $s0
/* 5D858 8005CC58 30CCFFFF */  andi       $t4, $a2, 0xffff
/* 5D85C 8005CC5C 01803025 */  or         $a2, $t4, $zero
/* 5D860 8005CC60 AFA00010 */  sw         $zero, 0x10($sp)
/* 5D864 8005CC64 0C018E04 */  jal        func_80063810
/* 5D868 8005CC68 02203825 */   or        $a3, $s1, $zero
/* 5D86C 8005CC6C 1000000A */  b          .L8005CC98
/* 5D870 8005CC70 00401825 */   or        $v1, $v0, $zero
.L8005CC74:
/* 5D874 8005CC74 8E4E0054 */  lw         $t6, 0x54($s2)
/* 5D878 8005CC78 8E440004 */  lw         $a0, 4($s2)
/* 5D87C 8005CC7C 02203825 */  or         $a3, $s1, $zero
/* 5D880 8005CC80 01D36821 */  addu       $t5, $t6, $s3
/* 5D884 8005CC84 01B03021 */  addu       $a2, $t5, $s0
/* 5D888 8005CC88 30CFFFFF */  andi       $t7, $a2, 0xffff
/* 5D88C 8005CC8C 0C018E98 */  jal        func_80063A60
/* 5D890 8005CC90 01E03025 */   or        $a2, $t7, $zero
/* 5D894 8005CC94 00401825 */  or         $v1, $v0, $zero
.L8005CC98:
/* 5D898 8005CC98 10400003 */  beqz       $v0, .L8005CCA8
/* 5D89C 8005CC9C 26100001 */   addiu     $s0, $s0, 1
/* 5D8A0 8005CCA0 10000049 */  b          .L8005CDC8
/* 5D8A4 8005CCA4 00601025 */   or        $v0, $v1, $zero
.L8005CCA8:
/* 5D8A8 8005CCA8 2A010008 */  slti       $at, $s0, 8
/* 5D8AC 8005CCAC 1420FFD9 */  bnez       $at, .L8005CC14
/* 5D8B0 8005CCB0 26310020 */   addiu     $s1, $s1, 0x20
/* 5D8B4 8005CCB4 16800038 */  bnez       $s4, .L8005CD98
/* 5D8B8 8005CCB8 8FB90048 */   lw        $t9, 0x48($sp)
/* 5D8BC 8005CCBC 8FB8005C */  lw         $t8, 0x5c($sp)
/* 5D8C0 8005CCC0 00192823 */  negu       $a1, $t9
/* 5D8C4 8005CCC4 00054840 */  sll        $t1, $a1, 1
/* 5D8C8 8005CCC8 00194040 */  sll        $t0, $t9, 1
/* 5D8CC 8005CCCC 25250100 */  addiu      $a1, $t1, 0x100
/* 5D8D0 8005CCD0 0308A021 */  addu       $s4, $t8, $t0
/* 5D8D4 8005CCD4 02802025 */  or         $a0, $s4, $zero
/* 5D8D8 8005CCD8 0C01709C */  jal        func_8005C270
/* 5D8DC 8005CCDC AFA5003C */   sw        $a1, 0x3c($sp)
/* 5D8E0 8005CCE0 8FAB005C */  lw         $t3, 0x5c($sp)
/* 5D8E4 8005CCE4 304A00FF */  andi       $t2, $v0, 0xff
/* 5D8E8 8005CCE8 00008025 */  or         $s0, $zero, $zero
/* 5D8EC 8005CCEC 916C0001 */  lbu        $t4, 1($t3)
/* 5D8F0 8005CCF0 01608825 */  or         $s1, $t3, $zero
/* 5D8F4 8005CCF4 514C0029 */  beql       $t2, $t4, .L8005CD9C
/* 5D8F8 8005CCF8 93AB0067 */   lbu       $t3, 0x67($sp)
.L8005CCFC:
/* 5D8FC 8005CCFC 8E4E0058 */  lw         $t6, 0x58($s2)
/* 5D900 8005CD00 8E440004 */  lw         $a0, 4($s2)
/* 5D904 8005CD04 8E450008 */  lw         $a1, 8($s2)
/* 5D908 8005CD08 01D36821 */  addu       $t5, $t6, $s3
/* 5D90C 8005CD0C 01B03021 */  addu       $a2, $t5, $s0
/* 5D910 8005CD10 30CFFFFF */  andi       $t7, $a2, 0xffff
/* 5D914 8005CD14 01E03025 */  or         $a2, $t7, $zero
/* 5D918 8005CD18 0C018E98 */  jal        func_80063A60
/* 5D91C 8005CD1C 02203825 */   or        $a3, $s1, $zero
/* 5D920 8005CD20 26100001 */  addiu      $s0, $s0, 1
/* 5D924 8005CD24 2A010008 */  slti       $at, $s0, 8
/* 5D928 8005CD28 1420FFF4 */  bnez       $at, .L8005CCFC
/* 5D92C 8005CD2C 26310020 */   addiu     $s1, $s1, 0x20
/* 5D930 8005CD30 02802025 */  or         $a0, $s4, $zero
/* 5D934 8005CD34 0C01709C */  jal        func_8005C270
/* 5D938 8005CD38 8FA5003C */   lw        $a1, 0x3c($sp)
/* 5D93C 8005CD3C 8FA8005C */  lw         $t0, 0x5c($sp)
/* 5D940 8005CD40 305800FF */  andi       $t8, $v0, 0xff
/* 5D944 8005CD44 00008025 */  or         $s0, $zero, $zero
/* 5D948 8005CD48 91190001 */  lbu        $t9, 1($t0)
/* 5D94C 8005CD4C 8FB1005C */  lw         $s1, 0x5c($sp)
/* 5D950 8005CD50 13190003 */  beq        $t8, $t9, .L8005CD60
/* 5D954 8005CD54 00000000 */   nop       
/* 5D958 8005CD58 1000001B */  b          .L8005CDC8
/* 5D95C 8005CD5C 24020003 */   addiu     $v0, $zero, 3
.L8005CD60:
/* 5D960 8005CD60 8E490054 */  lw         $t1, 0x54($s2)
/* 5D964 8005CD64 8E440004 */  lw         $a0, 4($s2)
/* 5D968 8005CD68 8E450008 */  lw         $a1, 8($s2)
/* 5D96C 8005CD6C 01335021 */  addu       $t2, $t1, $s3
/* 5D970 8005CD70 01503021 */  addu       $a2, $t2, $s0
/* 5D974 8005CD74 30CCFFFF */  andi       $t4, $a2, 0xffff
/* 5D978 8005CD78 01803025 */  or         $a2, $t4, $zero
/* 5D97C 8005CD7C AFA00010 */  sw         $zero, 0x10($sp)
/* 5D980 8005CD80 0C018E04 */  jal        func_80063810
/* 5D984 8005CD84 02203825 */   or        $a3, $s1, $zero
/* 5D988 8005CD88 26100001 */  addiu      $s0, $s0, 1
/* 5D98C 8005CD8C 24010008 */  addiu      $at, $zero, 8
/* 5D990 8005CD90 1601FFF3 */  bne        $s0, $at, .L8005CD60
/* 5D994 8005CD94 26310020 */   addiu     $s1, $s1, 0x20
.L8005CD98:
/* 5D998 8005CD98 93AB0067 */  lbu        $t3, 0x67($sp)
.L8005CD9C:
/* 5D99C 8005CD9C 3C018008 */  lui        $at, 0x8008
/* 5D9A0 8005CDA0 3C058010 */  lui        $a1, 0x8010
/* 5D9A4 8005CDA4 24A536F0 */  addiu      $a1, $a1, 0x36f0
/* 5D9A8 8005CDA8 8FA4005C */  lw         $a0, 0x5c($sp)
/* 5D9AC 8005CDAC 24060100 */  addiu      $a2, $zero, 0x100
/* 5D9B0 8005CDB0 0C018958 */  jal        func_80062560
/* 5D9B4 8005CDB4 A02BA934 */   sb        $t3, -0x56cc($at)
/* 5D9B8 8005CDB8 8E4E0008 */  lw         $t6, 8($s2)
/* 5D9BC 8005CDBC 3C018008 */  lui        $at, 0x8008
/* 5D9C0 8005CDC0 00001025 */  or         $v0, $zero, $zero
/* 5D9C4 8005CDC4 AC2EA930 */  sw         $t6, -0x56d0($at)
.L8005CDC8:
/* 5D9C8 8005CDC8 8FBF0034 */  lw         $ra, 0x34($sp)
.L8005CDCC:
/* 5D9CC 8005CDCC 8FB00020 */  lw         $s0, 0x20($sp)
/* 5D9D0 8005CDD0 8FB10024 */  lw         $s1, 0x24($sp)
/* 5D9D4 8005CDD4 8FB20028 */  lw         $s2, 0x28($sp)
/* 5D9D8 8005CDD8 8FB3002C */  lw         $s3, 0x2c($sp)
/* 5D9DC 8005CDDC 8FB40030 */  lw         $s4, 0x30($sp)
/* 5D9E0 8005CDE0 03E00008 */  jr         $ra
/* 5D9E4 8005CDE4 27BD0058 */   addiu     $sp, $sp, 0x58
/* 5D9E8 8005CDE8 00000000 */  nop        
/* 5D9EC 8005CDEC 00000000 */  nop        
