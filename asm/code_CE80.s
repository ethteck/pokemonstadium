.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000C280
/* CE80 8000C280 27BDFF98 */  addiu      $sp, $sp, -0x68
/* CE84 8000C284 AFBF003C */  sw         $ra, 0x3c($sp)
/* CE88 8000C288 AFBE0038 */  sw         $fp, 0x38($sp)
/* CE8C 8000C28C AFB70034 */  sw         $s7, 0x34($sp)
/* CE90 8000C290 AFB60030 */  sw         $s6, 0x30($sp)
/* CE94 8000C294 AFB5002C */  sw         $s5, 0x2c($sp)
/* CE98 8000C298 AFB40028 */  sw         $s4, 0x28($sp)
/* CE9C 8000C29C AFB30024 */  sw         $s3, 0x24($sp)
/* CEA0 8000C2A0 AFB20020 */  sw         $s2, 0x20($sp)
/* CEA4 8000C2A4 AFB1001C */  sw         $s1, 0x1c($sp)
/* CEA8 8000C2A8 AFB00018 */  sw         $s0, 0x18($sp)
/* CEAC 8000C2AC AFA70074 */  sw         $a3, 0x74($sp)
/* CEB0 8000C2B0 AFA00058 */  sw         $zero, 0x58($sp)
/* CEB4 8000C2B4 8C8F0000 */  lw         $t7, ($a0)
/* CEB8 8000C2B8 3C01800B */  lui        $at, 0x800b
/* CEBC 8000C2BC 30EE00FF */  andi       $t6, $a3, 0xff
/* CEC0 8000C2C0 AC2F82D0 */  sw         $t7, -0x7d30($at)
/* CEC4 8000C2C4 90980004 */  lbu        $t8, 4($a0)
/* CEC8 8000C2C8 01C03825 */  or         $a3, $t6, $zero
/* CECC 8000C2CC 00A08825 */  or         $s1, $a1, $zero
/* CED0 8000C2D0 17000003 */  bnez       $t8, .L8000C2E0
/* CED4 8000C2D4 00C0B025 */   or        $s6, $a2, $zero
/* CED8 8000C2D8 10000007 */  b          .L8000C2F8
/* CEDC 8000C2DC 24020002 */   addiu     $v0, $zero, 2
.L8000C2E0:
/* CEE0 8000C2E0 90990005 */  lbu        $t9, 5($a0)
/* CEE4 8000C2E4 24010001 */  addiu      $at, $zero, 1
/* CEE8 8000C2E8 24020004 */  addiu      $v0, $zero, 4
/* CEEC 8000C2EC 17210002 */  bne        $t9, $at, .L8000C2F8
/* CEF0 8000C2F0 24080080 */   addiu     $t0, $zero, 0x80
/* CEF4 8000C2F4 AFA80058 */  sw         $t0, 0x58($sp)
.L8000C2F8:
/* CEF8 8000C2F8 8C940008 */  lw         $s4, 8($a0)
/* CEFC 8000C2FC 8C95000C */  lw         $s5, 0xc($a0)
/* CF00 8000C300 8C970010 */  lw         $s7, 0x10($a0)
/* CF04 8000C304 14E0000E */  bnez       $a3, .L8000C340
/* CF08 8000C308 8C9E0014 */   lw        $fp, 0x14($a0)
/* CF0C 8000C30C 3C01800B */  lui        $at, 0x800b
/* CF10 8000C310 AC2082D4 */  sw         $zero, -0x7d2c($at)
/* CF14 8000C314 3C01800B */  lui        $at, 0x800b
/* CF18 8000C318 24090020 */  addiu      $t1, $zero, 0x20
/* CF1C 8000C31C A02982D8 */  sb         $t1, -0x7d28($at)
/* CF20 8000C320 3C01800B */  lui        $at, 0x800b
/* CF24 8000C324 AC2082DC */  sw         $zero, -0x7d24($at)
/* CF28 8000C328 3C01800B */  lui        $at, 0x800b
/* CF2C 8000C32C A02082D9 */  sb         $zero, -0x7d27($at)
/* CF30 8000C330 A7A00064 */  sh         $zero, 0x64($sp)
/* CF34 8000C334 A7A00062 */  sh         $zero, 0x62($sp)
/* CF38 8000C338 10000014 */  b          .L8000C38C
/* CF3C 8000C33C A7A00060 */   sh        $zero, 0x60($sp)
.L8000C340:
/* CF40 8000C340 8FAA0078 */  lw         $t2, 0x78($sp)
/* CF44 8000C344 3C01800B */  lui        $at, 0x800b
/* CF48 8000C348 8D4B0000 */  lw         $t3, ($t2)
/* CF4C 8000C34C AC2B82D4 */  sw         $t3, -0x7d2c($at)
/* CF50 8000C350 914C0004 */  lbu        $t4, 4($t2)
/* CF54 8000C354 3C01800B */  lui        $at, 0x800b
/* CF58 8000C358 A02C82D8 */  sb         $t4, -0x7d28($at)
/* CF5C 8000C35C 8D4D0008 */  lw         $t5, 8($t2)
/* CF60 8000C360 3C01800B */  lui        $at, 0x800b
/* CF64 8000C364 AC2D82DC */  sw         $t5, -0x7d24($at)
/* CF68 8000C368 914E0005 */  lbu        $t6, 5($t2)
/* CF6C 8000C36C 3C01800B */  lui        $at, 0x800b
/* CF70 8000C370 A02E82D9 */  sb         $t6, -0x7d27($at)
/* CF74 8000C374 854F000C */  lh         $t7, 0xc($t2)
/* CF78 8000C378 A7AF0064 */  sh         $t7, 0x64($sp)
/* CF7C 8000C37C 8558000E */  lh         $t8, 0xe($t2)
/* CF80 8000C380 A7B80062 */  sh         $t8, 0x62($sp)
/* CF84 8000C384 85590010 */  lh         $t9, 0x10($t2)
/* CF88 8000C388 A7B90060 */  sh         $t9, 0x60($sp)
.L8000C38C:
/* CF8C 8000C38C 12C00026 */  beqz       $s6, .L8000C428
/* CF90 8000C390 00409025 */   or        $s2, $v0, $zero
/* CF94 8000C394 27B30064 */  addiu      $s3, $sp, 0x64
.L8000C398:
/* CF98 8000C398 1240000C */  beqz       $s2, .L8000C3CC
/* CF9C 8000C39C 00008025 */   or        $s0, $zero, $zero
.L8000C3A0:
/* CFA0 8000C3A0 02802025 */  or         $a0, $s4, $zero
/* CFA4 8000C3A4 02A02825 */  or         $a1, $s5, $zero
/* CFA8 8000C3A8 02203025 */  or         $a2, $s1, $zero
/* CFAC 8000C3AC 0C00312A */  jal        func_8000C4A8
/* CFB0 8000C3B0 02603825 */   or        $a3, $s3, $zero
/* CFB4 8000C3B4 10400003 */  beqz       $v0, .L8000C3C4
/* CFB8 8000C3B8 26100001 */   addiu     $s0, $s0, 1
/* CFBC 8000C3BC 1000002E */  b          .L8000C478
/* CFC0 8000C3C0 24020002 */   addiu     $v0, $zero, 2
.L8000C3C4:
/* CFC4 8000C3C4 1612FFF6 */  bne        $s0, $s2, .L8000C3A0
/* CFC8 8000C3C8 26310080 */   addiu     $s1, $s1, 0x80
.L8000C3CC:
/* CFCC 8000C3CC 02E02025 */  or         $a0, $s7, $zero
/* CFD0 8000C3D0 03C02825 */  or         $a1, $fp, $zero
/* CFD4 8000C3D4 02203025 */  or         $a2, $s1, $zero
/* CFD8 8000C3D8 0C00312A */  jal        func_8000C4A8
/* CFDC 8000C3DC 27A70062 */   addiu     $a3, $sp, 0x62
/* CFE0 8000C3E0 10400003 */  beqz       $v0, .L8000C3F0
/* CFE4 8000C3E4 26310080 */   addiu     $s1, $s1, 0x80
/* CFE8 8000C3E8 10000023 */  b          .L8000C478
/* CFEC 8000C3EC 24020002 */   addiu     $v0, $zero, 2
.L8000C3F0:
/* CFF0 8000C3F0 02E02025 */  or         $a0, $s7, $zero
/* CFF4 8000C3F4 03C02825 */  or         $a1, $fp, $zero
/* CFF8 8000C3F8 02203025 */  or         $a2, $s1, $zero
/* CFFC 8000C3FC 0C00312A */  jal        func_8000C4A8
/* D000 8000C400 27A70060 */   addiu     $a3, $sp, 0x60
/* D004 8000C404 10400003 */  beqz       $v0, .L8000C414
/* D008 8000C408 8FA80058 */   lw        $t0, 0x58($sp)
/* D00C 8000C40C 1000001A */  b          .L8000C478
/* D010 8000C410 24020002 */   addiu     $v0, $zero, 2
.L8000C414:
/* D014 8000C414 26D6FFFF */  addiu      $s6, $s6, -1
/* D018 8000C418 26310080 */  addiu      $s1, $s1, 0x80
/* D01C 8000C41C 00084840 */  sll        $t1, $t0, 1
/* D020 8000C420 16C0FFDD */  bnez       $s6, .L8000C398
/* D024 8000C424 02298821 */   addu      $s1, $s1, $t1
.L8000C428:
/* D028 8000C428 3C0B800B */  lui        $t3, 0x800b
/* D02C 8000C42C 8FA30078 */  lw         $v1, 0x78($sp)
/* D030 8000C430 8D6B82D4 */  lw         $t3, -0x7d2c($t3)
/* D034 8000C434 3C0C800B */  lui        $t4, 0x800b
/* D038 8000C438 3C0D800B */  lui        $t5, 0x800b
/* D03C 8000C43C AC6B0000 */  sw         $t3, ($v1)
/* D040 8000C440 918C82D8 */  lbu        $t4, -0x7d28($t4)
/* D044 8000C444 3C0E800B */  lui        $t6, 0x800b
/* D048 8000C448 00001025 */  or         $v0, $zero, $zero
/* D04C 8000C44C A06C0004 */  sb         $t4, 4($v1)
/* D050 8000C450 8DAD82DC */  lw         $t5, -0x7d24($t5)
/* D054 8000C454 AC6D0008 */  sw         $t5, 8($v1)
/* D058 8000C458 91CE82D9 */  lbu        $t6, -0x7d27($t6)
/* D05C 8000C45C A06E0005 */  sb         $t6, 5($v1)
/* D060 8000C460 87AF0064 */  lh         $t7, 0x64($sp)
/* D064 8000C464 A46F000C */  sh         $t7, 0xc($v1)
/* D068 8000C468 87B80062 */  lh         $t8, 0x62($sp)
/* D06C 8000C46C A478000E */  sh         $t8, 0xe($v1)
/* D070 8000C470 87AA0060 */  lh         $t2, 0x60($sp)
/* D074 8000C474 A46A0010 */  sh         $t2, 0x10($v1)
.L8000C478:
/* D078 8000C478 8FBF003C */  lw         $ra, 0x3c($sp)
/* D07C 8000C47C 8FB00018 */  lw         $s0, 0x18($sp)
/* D080 8000C480 8FB1001C */  lw         $s1, 0x1c($sp)
/* D084 8000C484 8FB20020 */  lw         $s2, 0x20($sp)
/* D088 8000C488 8FB30024 */  lw         $s3, 0x24($sp)
/* D08C 8000C48C 8FB40028 */  lw         $s4, 0x28($sp)
/* D090 8000C490 8FB5002C */  lw         $s5, 0x2c($sp)
/* D094 8000C494 8FB60030 */  lw         $s6, 0x30($sp)
/* D098 8000C498 8FB70034 */  lw         $s7, 0x34($sp)
/* D09C 8000C49C 8FBE0038 */  lw         $fp, 0x38($sp)
/* D0A0 8000C4A0 03E00008 */  jr         $ra
/* D0A4 8000C4A4 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8000C4A8
/* D0A8 8000C4A8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* D0AC 8000C4AC AFB50028 */  sw         $s5, 0x28($sp)
/* D0B0 8000C4B0 AFB40024 */  sw         $s4, 0x24($sp)
/* D0B4 8000C4B4 AFB30020 */  sw         $s3, 0x20($sp)
/* D0B8 8000C4B8 AFB10018 */  sw         $s1, 0x18($sp)
/* D0BC 8000C4BC 00C08825 */  or         $s1, $a2, $zero
/* D0C0 8000C4C0 00A09825 */  or         $s3, $a1, $zero
/* D0C4 8000C4C4 27B40034 */  addiu      $s4, $sp, 0x34
/* D0C8 8000C4C8 27B50036 */  addiu      $s5, $sp, 0x36
/* D0CC 8000C4CC AFBF002C */  sw         $ra, 0x2c($sp)
/* D0D0 8000C4D0 AFB2001C */  sw         $s2, 0x1c($sp)
/* D0D4 8000C4D4 00E09025 */  or         $s2, $a3, $zero
/* D0D8 8000C4D8 AFB00014 */  sw         $s0, 0x14($sp)
/* D0DC 8000C4DC 02A03025 */  or         $a2, $s5, $zero
/* D0E0 8000C4E0 0C003191 */  jal        func_8000C644
/* D0E4 8000C4E4 02802825 */   or        $a1, $s4, $zero
/* D0E8 8000C4E8 10400003 */  beqz       $v0, .L8000C4F8
/* D0EC 8000C4EC 87AF0034 */   lh        $t7, 0x34($sp)
/* D0F0 8000C4F0 1000004B */  b          .L8000C620
/* D0F4 8000C4F4 24020001 */   addiu     $v0, $zero, 1
.L8000C4F8:
/* D0F8 8000C4F8 864E0000 */  lh         $t6, ($s2)
/* D0FC 8000C4FC 24100001 */  addiu      $s0, $zero, 1
/* D100 8000C500 2A010040 */  slti       $at, $s0, 0x40
/* D104 8000C504 01CFC021 */  addu       $t8, $t6, $t7
/* D108 8000C508 A6580000 */  sh         $t8, ($s2)
/* D10C 8000C50C 86590000 */  lh         $t9, ($s2)
/* D110 8000C510 2412000F */  addiu      $s2, $zero, 0xf
/* D114 8000C514 10200041 */  beqz       $at, .L8000C61C
/* D118 8000C518 A6390000 */   sh        $t9, ($s1)
/* D11C 8000C51C 02602025 */  or         $a0, $s3, $zero
.L8000C520:
/* D120 8000C520 02802825 */  or         $a1, $s4, $zero
/* D124 8000C524 0C003191 */  jal        func_8000C644
/* D128 8000C528 02A03025 */   or        $a2, $s5, $zero
/* D12C 8000C52C 10400003 */  beqz       $v0, .L8000C53C
/* D130 8000C530 87A80034 */   lh        $t0, 0x34($sp)
/* D134 8000C534 1000003A */  b          .L8000C620
/* D138 8000C538 24020001 */   addiu     $v0, $zero, 1
.L8000C53C:
/* D13C 8000C53C 1500001E */  bnez       $t0, .L8000C5B8
/* D140 8000C540 83A30036 */   lb        $v1, 0x36($sp)
/* D144 8000C544 83A30036 */  lb         $v1, 0x36($sp)
/* D148 8000C548 1472000F */  bne        $v1, $s2, .L8000C588
/* D14C 8000C54C 246AFFFF */   addiu     $t2, $v1, -1
/* D150 8000C550 0460002F */  bltz       $v1, .L8000C610
/* D154 8000C554 A3AA0036 */   sb        $t2, 0x36($sp)
.L8000C558:
/* D158 8000C558 00105840 */  sll        $t3, $s0, 1
/* D15C 8000C55C 022B6021 */  addu       $t4, $s1, $t3
/* D160 8000C560 A5800000 */  sh         $zero, ($t4)
/* D164 8000C564 83AF0036 */  lb         $t7, 0x36($sp)
/* D168 8000C568 26100001 */  addiu      $s0, $s0, 1
/* D16C 8000C56C 00106E00 */  sll        $t5, $s0, 0x18
/* D170 8000C570 25F8FFFF */  addiu      $t8, $t7, -1
/* D174 8000C574 A3B80036 */  sb         $t8, 0x36($sp)
/* D178 8000C578 05E1FFF7 */  bgez       $t7, .L8000C558
/* D17C 8000C57C 000D8603 */   sra       $s0, $t5, 0x18
/* D180 8000C580 10000024 */  b          .L8000C614
/* D184 8000C584 2A010040 */   slti      $at, $s0, 0x40
.L8000C588:
/* D188 8000C588 2A010040 */  slti       $at, $s0, 0x40
/* D18C 8000C58C 10200023 */  beqz       $at, .L8000C61C
.L8000C590:
/* D190 8000C590 0010C840 */   sll       $t9, $s0, 1
/* D194 8000C594 26100001 */  addiu      $s0, $s0, 1
/* D198 8000C598 00104E00 */  sll        $t1, $s0, 0x18
/* D19C 8000C59C 00098603 */  sra        $s0, $t1, 0x18
/* D1A0 8000C5A0 2A010040 */  slti       $at, $s0, 0x40
/* D1A4 8000C5A4 02394021 */  addu       $t0, $s1, $t9
/* D1A8 8000C5A8 1420FFF9 */  bnez       $at, .L8000C590
/* D1AC 8000C5AC A5000000 */   sh        $zero, ($t0)
/* D1B0 8000C5B0 1000001B */  b          .L8000C620
/* D1B4 8000C5B4 00001025 */   or        $v0, $zero, $zero
.L8000C5B8:
/* D1B8 8000C5B8 0003102A */  slt        $v0, $zero, $v1
/* D1BC 8000C5BC 246CFFFF */  addiu      $t4, $v1, -1
/* D1C0 8000C5C0 1040000C */  beqz       $v0, .L8000C5F4
/* D1C4 8000C5C4 A3AC0036 */   sb        $t4, 0x36($sp)
.L8000C5C8:
/* D1C8 8000C5C8 00106840 */  sll        $t5, $s0, 1
/* D1CC 8000C5CC 022D7021 */  addu       $t6, $s1, $t5
/* D1D0 8000C5D0 A5C00000 */  sh         $zero, ($t6)
/* D1D4 8000C5D4 83B90036 */  lb         $t9, 0x36($sp)
/* D1D8 8000C5D8 26100001 */  addiu      $s0, $s0, 1
/* D1DC 8000C5DC 00107E00 */  sll        $t7, $s0, 0x18
/* D1E0 8000C5E0 0019102A */  slt        $v0, $zero, $t9
/* D1E4 8000C5E4 2728FFFF */  addiu      $t0, $t9, -1
/* D1E8 8000C5E8 A3A80036 */  sb         $t0, 0x36($sp)
/* D1EC 8000C5EC 1440FFF6 */  bnez       $v0, .L8000C5C8
/* D1F0 8000C5F0 000F8603 */   sra       $s0, $t7, 0x18
.L8000C5F4:
/* D1F4 8000C5F4 87A90034 */  lh         $t1, 0x34($sp)
/* D1F8 8000C5F8 00105040 */  sll        $t2, $s0, 1
/* D1FC 8000C5FC 26100001 */  addiu      $s0, $s0, 1
/* D200 8000C600 00106600 */  sll        $t4, $s0, 0x18
/* D204 8000C604 022A5821 */  addu       $t3, $s1, $t2
/* D208 8000C608 000C8603 */  sra        $s0, $t4, 0x18
/* D20C 8000C60C A5690000 */  sh         $t1, ($t3)
.L8000C610:
/* D210 8000C610 2A010040 */  slti       $at, $s0, 0x40
.L8000C614:
/* D214 8000C614 5420FFC2 */  bnel       $at, $zero, .L8000C520
/* D218 8000C618 02602025 */   or        $a0, $s3, $zero
.L8000C61C:
/* D21C 8000C61C 00001025 */  or         $v0, $zero, $zero
.L8000C620:
/* D220 8000C620 8FBF002C */  lw         $ra, 0x2c($sp)
/* D224 8000C624 8FB00014 */  lw         $s0, 0x14($sp)
/* D228 8000C628 8FB10018 */  lw         $s1, 0x18($sp)
/* D22C 8000C62C 8FB2001C */  lw         $s2, 0x1c($sp)
/* D230 8000C630 8FB30020 */  lw         $s3, 0x20($sp)
/* D234 8000C634 8FB40024 */  lw         $s4, 0x24($sp)
/* D238 8000C638 8FB50028 */  lw         $s5, 0x28($sp)
/* D23C 8000C63C 03E00008 */  jr         $ra
/* D240 8000C640 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8000C644
/* D244 8000C644 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D248 8000C648 AFB00018 */  sw         $s0, 0x18($sp)
/* D24C 8000C64C 00808025 */  or         $s0, $a0, $zero
/* D250 8000C650 AFBF001C */  sw         $ra, 0x1c($sp)
/* D254 8000C654 AFA5002C */  sw         $a1, 0x2c($sp)
/* D258 8000C658 AFA60030 */  sw         $a2, 0x30($sp)
/* D25C 8000C65C 24040010 */  addiu      $a0, $zero, 0x10
/* D260 8000C660 0C0031E0 */  jal        func_8000C780
/* D264 8000C664 A7A00024 */   sh        $zero, 0x24($sp)
/* D268 8000C668 97A90024 */  lhu        $t1, 0x24($sp)
/* D26C 8000C66C 8FAA002C */  lw         $t2, 0x2c($sp)
/* D270 8000C670 00003025 */  or         $a2, $zero, $zero
/* D274 8000C674 2408000F */  addiu      $t0, $zero, 0xf
/* D278 8000C678 3407FFFF */  ori        $a3, $zero, 0xffff
.L8000C67C:
/* D27C 8000C67C 00067040 */  sll        $t6, $a2, 1
/* D280 8000C680 020E7821 */  addu       $t7, $s0, $t6
/* D284 8000C684 95E40030 */  lhu        $a0, 0x30($t7)
/* D288 8000C688 0106C023 */  subu       $t8, $t0, $a2
/* D28C 8000C68C 03021807 */  srav       $v1, $v0, $t8
/* D290 8000C690 10E40005 */  beq        $a3, $a0, .L8000C6A8
/* D294 8000C694 00C02825 */   or        $a1, $a2, $zero
/* D298 8000C698 3079FFFF */  andi       $t9, $v1, 0xffff
/* D29C 8000C69C 0099082A */  slt        $at, $a0, $t9
/* D2A0 8000C6A0 10200006 */  beqz       $at, .L8000C6BC
/* D2A4 8000C6A4 3069FFFF */   andi      $t1, $v1, 0xffff
.L8000C6A8:
/* D2A8 8000C6A8 24C60001 */  addiu      $a2, $a2, 1
/* D2AC 8000C6AC 30C500FF */  andi       $a1, $a2, 0xff
/* D2B0 8000C6B0 28A10010 */  slti       $at, $a1, 0x10
/* D2B4 8000C6B4 1420FFF1 */  bnez       $at, .L8000C67C
/* D2B8 8000C6B8 00A03025 */   or        $a2, $a1, $zero
.L8000C6BC:
/* D2BC 8000C6BC 28A10010 */  slti       $at, $a1, 0x10
/* D2C0 8000C6C0 14200003 */  bnez       $at, .L8000C6D0
/* D2C4 8000C6C4 3C02800B */   lui       $v0, 0x800b
/* D2C8 8000C6C8 10000028 */  b          .L8000C76C
/* D2CC 8000C6CC 24020001 */   addiu     $v0, $zero, 1
.L8000C6D0:
/* D2D0 8000C6D0 02066021 */  addu       $t4, $s0, $a2
/* D2D4 8000C6D4 00067840 */  sll        $t7, $a2, 1
/* D2D8 8000C6D8 918D0000 */  lbu        $t5, ($t4)
/* D2DC 8000C6DC 020FC021 */  addu       $t8, $s0, $t7
/* D2E0 8000C6E0 97190010 */  lhu        $t9, 0x10($t8)
/* D2E4 8000C6E4 8E0C0050 */  lw         $t4, 0x50($s0)
/* D2E8 8000C6E8 01A97021 */  addu       $t6, $t5, $t1
/* D2EC 8000C6EC 01D95823 */  subu       $t3, $t6, $t9
/* D2F0 8000C6F0 016C6821 */  addu       $t5, $t3, $t4
/* D2F4 8000C6F4 91A40000 */  lbu        $a0, ($t5)
/* D2F8 8000C6F8 8FB80030 */  lw         $t8, 0x30($sp)
/* D2FC 8000C6FC 244282D8 */  addiu      $v0, $v0, -0x7d28
/* D300 8000C700 00047903 */  sra        $t7, $a0, 4
/* D304 8000C704 A30F0000 */  sb         $t7, ($t8)
/* D308 8000C708 90590000 */  lbu        $t9, ($v0)
/* D30C 8000C70C 308E000F */  andi       $t6, $a0, 0xf
/* D310 8000C710 01C02025 */  or         $a0, $t6, $zero
/* D314 8000C714 03255821 */  addu       $t3, $t9, $a1
/* D318 8000C718 256CFFF1 */  addiu      $t4, $t3, -0xf
/* D31C 8000C71C A04C0000 */  sb         $t4, ($v0)
/* D320 8000C720 11C00011 */  beqz       $t6, .L8000C768
/* D324 8000C724 A5400000 */   sh        $zero, ($t2)
/* D328 8000C728 0C0031E0 */  jal        func_8000C780
/* D32C 8000C72C A3AE0026 */   sb        $t6, 0x26($sp)
/* D330 8000C730 8FAA002C */  lw         $t2, 0x2c($sp)
/* D334 8000C734 93A40026 */  lbu        $a0, 0x26($sp)
/* D338 8000C738 240F0001 */  addiu      $t7, $zero, 1
/* D33C 8000C73C A5420000 */  sh         $v0, ($t2)
/* D340 8000C740 85450000 */  lh         $a1, ($t2)
/* D344 8000C744 248D001F */  addiu      $t5, $a0, 0x1f
/* D348 8000C748 01AFC004 */  sllv       $t8, $t7, $t5
/* D34C 8000C74C 00B8082A */  slt        $at, $a1, $t8
/* D350 8000C750 10200005 */  beqz       $at, .L8000C768
/* D354 8000C754 240EFFFF */   addiu     $t6, $zero, -1
/* D358 8000C758 008EC804 */  sllv       $t9, $t6, $a0
/* D35C 8000C75C 00B95821 */  addu       $t3, $a1, $t9
/* D360 8000C760 256C0001 */  addiu      $t4, $t3, 1
/* D364 8000C764 A54C0000 */  sh         $t4, ($t2)
.L8000C768:
/* D368 8000C768 00001025 */  or         $v0, $zero, $zero
.L8000C76C:
/* D36C 8000C76C 8FBF001C */  lw         $ra, 0x1c($sp)
/* D370 8000C770 8FB00018 */  lw         $s0, 0x18($sp)
/* D374 8000C774 27BD0028 */  addiu      $sp, $sp, 0x28
/* D378 8000C778 03E00008 */  jr         $ra
/* D37C 8000C77C 00000000 */   nop       

glabel func_8000C780
/* D380 8000C780 3C08800B */  lui        $t0, 0x800b
/* D384 8000C784 250882D8 */  addiu      $t0, $t0, -0x7d28
/* D388 8000C788 91050000 */  lbu        $a1, ($t0)
/* D38C 8000C78C AFA40000 */  sw         $a0, ($sp)
/* D390 8000C790 308700FF */  andi       $a3, $a0, 0xff
/* D394 8000C794 000510C3 */  sra        $v0, $a1, 3
/* D398 8000C798 304E00FF */  andi       $t6, $v0, 0xff
/* D39C 8000C79C 19C00029 */  blez       $t6, .L8000C844
/* D3A0 8000C7A0 01C01025 */   or        $v0, $t6, $zero
/* D3A4 8000C7A4 3C06800B */  lui        $a2, 0x800b
/* D3A8 8000C7A8 3C0D800B */  lui        $t5, 0x800b
/* D3AC 8000C7AC 3C0A800B */  lui        $t2, 0x800b
/* D3B0 8000C7B0 3C09800B */  lui        $t1, 0x800b
/* D3B4 8000C7B4 252982D4 */  addiu      $t1, $t1, -0x7d2c
/* D3B8 8000C7B8 254A82D9 */  addiu      $t2, $t2, -0x7d27
/* D3BC 8000C7BC 25AD82DC */  addiu      $t5, $t5, -0x7d24
/* D3C0 8000C7C0 8CC682D0 */  lw         $a2, -0x7d30($a2)
/* D3C4 8000C7C4 240C0001 */  addiu      $t4, $zero, 1
/* D3C8 8000C7C8 240B00FF */  addiu      $t3, $zero, 0xff
.L8000C7CC:
/* D3CC 8000C7CC 8D240000 */  lw         $a0, ($t1)
/* D3D0 8000C7D0 91590000 */  lbu        $t9, ($t2)
/* D3D4 8000C7D4 91050000 */  lbu        $a1, ($t0)
/* D3D8 8000C7D8 00867821 */  addu       $t7, $a0, $a2
/* D3DC 8000C7DC 91E30000 */  lbu        $v1, ($t7)
/* D3E0 8000C7E0 24980001 */  addiu      $t8, $a0, 1
/* D3E4 8000C7E4 13200006 */  beqz       $t9, .L8000C800
/* D3E8 8000C7E8 AD380000 */   sw        $t8, ($t1)
/* D3EC 8000C7EC 14600004 */  bnez       $v1, .L8000C800
/* D3F0 8000C7F0 03067021 */   addu      $t6, $t8, $a2
/* D3F4 8000C7F4 91C30000 */  lbu        $v1, ($t6)
/* D3F8 8000C7F8 270F0001 */  addiu      $t7, $t8, 1
/* D3FC 8000C7FC AD2F0000 */  sw         $t7, ($t1)
.L8000C800:
/* D400 8000C800 15630003 */  bne        $t3, $v1, .L8000C810
/* D404 8000C804 00602025 */   or        $a0, $v1, $zero
/* D408 8000C808 10000002 */  b          .L8000C814
/* D40C 8000C80C A14C0000 */   sb        $t4, ($t2)
.L8000C810:
/* D410 8000C810 A1400000 */  sb         $zero, ($t2)
.L8000C814:
/* D414 8000C814 8DB80000 */  lw         $t8, ($t5)
/* D418 8000C818 2442FFFF */  addiu      $v0, $v0, -1
/* D41C 8000C81C 0018CA00 */  sll        $t9, $t8, 8
/* D420 8000C820 ADB90000 */  sw         $t9, ($t5)
/* D424 8000C824 03247825 */  or         $t7, $t9, $a0
/* D428 8000C828 305900FF */  andi       $t9, $v0, 0xff
/* D42C 8000C82C 24B8FFF8 */  addiu      $t8, $a1, -8
/* D430 8000C830 03201025 */  or         $v0, $t9, $zero
/* D434 8000C834 ADAF0000 */  sw         $t7, ($t5)
/* D438 8000C838 1F20FFE4 */  bgtz       $t9, .L8000C7CC
/* D43C 8000C83C A1180000 */   sb        $t8, ($t0)
/* D440 8000C840 330500FF */  andi       $a1, $t8, 0xff
.L8000C844:
/* D444 8000C844 3C0D800B */  lui        $t5, 0x800b
/* D448 8000C848 25AD82DC */  addiu      $t5, $t5, -0x7d24
/* D44C 8000C84C 8DAE0000 */  lw         $t6, ($t5)
/* D450 8000C850 00077823 */  negu       $t7, $a3
/* D454 8000C854 00A7C021 */  addu       $t8, $a1, $a3
/* D458 8000C858 00AE1804 */  sllv       $v1, $t6, $a1
/* D45C 8000C85C 01E31806 */  srlv       $v1, $v1, $t7
/* D460 8000C860 A1180000 */  sb         $t8, ($t0)
/* D464 8000C864 03E00008 */  jr         $ra
/* D468 8000C868 3062FFFF */   andi      $v0, $v1, 0xffff
/* D46C 8000C86C 00000000 */  nop        

glabel func_8000C870
/* D470 8000C870 308400FF */  andi       $a0, $a0, 0xff
/* D474 8000C874 30A500FF */  andi       $a1, $a1, 0xff
/* D478 8000C878 30C600FF */  andi       $a2, $a2, 0xff
/* D47C 8000C87C 30E700FF */  andi       $a3, $a3, 0xff
/* D480 8000C880 8FAE0010 */  lw         $t6, 0x10($sp)
/* D484 8000C884 3C01A000 */  lui        $at, 0xa000
/* D488 8000C888 01C17825 */  or         $t7, $t6, $at
/* D48C 8000C88C 3C01800B */  lui        $at, 0x800b
/* D490 8000C890 AC2F832C */  sw         $t7, -0x7cd4($at)
/* D494 8000C894 3C18800B */  lui        $t8, 0x800b
/* D498 8000C898 93188324 */  lbu        $t8, -0x7cdc($t8)
/* D49C 8000C89C 00000000 */  nop        
/* D4A0 8000C8A0 27190001 */  addiu      $t9, $t8, 1
/* D4A4 8000C8A4 3C01800B */  lui        $at, 0x800b
/* D4A8 8000C8A8 A0398324 */  sb         $t9, -0x7cdc($at)
/* D4AC 8000C8AC 3C01800B */  lui        $at, 0x800b
/* D4B0 8000C8B0 A0248325 */  sb         $a0, -0x7cdb($at)
/* D4B4 8000C8B4 3C01800B */  lui        $at, 0x800b
/* D4B8 8000C8B8 A0258328 */  sb         $a1, -0x7cd8($at)
/* D4BC 8000C8BC 3C01800B */  lui        $at, 0x800b
/* D4C0 8000C8C0 A0268326 */  sb         $a2, -0x7cda($at)
/* D4C4 8000C8C4 3C01800B */  lui        $at, 0x800b
/* D4C8 8000C8C8 A0278327 */  sb         $a3, -0x7cd9($at)
/* D4CC 8000C8CC 24080001 */  addiu      $t0, $zero, 1
/* D4D0 8000C8D0 3C01800B */  lui        $at, 0x800b
/* D4D4 8000C8D4 A0288329 */  sb         $t0, -0x7cd7($at)
/* D4D8 8000C8D8 3C02800B */  lui        $v0, 0x800b
/* D4DC 8000C8DC 24428320 */  addiu      $v0, $v0, -0x7ce0
/* D4E0 8000C8E0 03E00008 */  jr         $ra
/* D4E4 8000C8E4 00000000 */   nop       

glabel func_8000C8E8
/* D4E8 8000C8E8 03E00008 */  jr         $ra
/* D4EC 8000C8EC 00000000 */   nop       

glabel func_8000C8F0
/* D4F0 8000C8F0 03E00008 */  jr         $ra
/* D4F4 8000C8F4 00000000 */   nop       

glabel func_8000C8F8
/* D4F8 8000C8F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D4FC 8000C8FC AFBF0014 */  sw         $ra, 0x14($sp)
/* D500 8000C900 3C04800B */  lui        $a0, 0x800b
/* D504 8000C904 24848308 */  addiu      $a0, $a0, -0x7cf8
/* D508 8000C908 3C05800B */  lui        $a1, 0x800b
/* D50C 8000C90C 24A58394 */  addiu      $a1, $a1, -0x7c6c
/* D510 8000C910 24060001 */  addiu      $a2, $zero, 1
/* D514 8000C914 0C0178E8 */  jal        func_8005E3A0
/* D518 8000C918 00000000 */   nop       
/* D51C 8000C91C 3C0E800B */  lui        $t6, 0x800b
/* D520 8000C920 8DCE832C */  lw         $t6, -0x7cd4($t6)
/* D524 8000C924 3C01A800 */  lui        $at, 0xa800
/* D528 8000C928 15C10005 */  bne        $t6, $at, .L8000C940
/* D52C 8000C92C 00000000 */   nop       
/* D530 8000C930 3C02800B */  lui        $v0, 0x800b
/* D534 8000C934 24428320 */  addiu      $v0, $v0, -0x7ce0
/* D538 8000C938 10000040 */  b          .L8000CA3C
/* D53C 8000C93C 00000000 */   nop       
.L8000C940:
/* D540 8000C940 240F0008 */  addiu      $t7, $zero, 8
/* D544 8000C944 3C01800B */  lui        $at, 0x800b
/* D548 8000C948 A02F8324 */  sb         $t7, -0x7cdc($at)
/* D54C 8000C94C 3C18A800 */  lui        $t8, 0xa800
/* D550 8000C950 3C01800B */  lui        $at, 0x800b
/* D554 8000C954 AC38832C */  sw         $t8, -0x7cd4($at)
/* D558 8000C958 24190005 */  addiu      $t9, $zero, 5
/* D55C 8000C95C 3C01800B */  lui        $at, 0x800b
/* D560 8000C960 A0398325 */  sb         $t9, -0x7cdb($at)
/* D564 8000C964 2408000C */  addiu      $t0, $zero, 0xc
/* D568 8000C968 3C01800B */  lui        $at, 0x800b
/* D56C 8000C96C A0288328 */  sb         $t0, -0x7cd8($at)
/* D570 8000C970 2409000F */  addiu      $t1, $zero, 0xf
/* D574 8000C974 3C01800B */  lui        $at, 0x800b
/* D578 8000C978 A0298326 */  sb         $t1, -0x7cda($at)
/* D57C 8000C97C 240A0002 */  addiu      $t2, $zero, 2
/* D580 8000C980 3C01800B */  lui        $at, 0x800b
/* D584 8000C984 A02A8327 */  sb         $t2, -0x7cd9($at)
/* D588 8000C988 240B0001 */  addiu      $t3, $zero, 1
/* D58C 8000C98C 3C01800B */  lui        $at, 0x800b
/* D590 8000C990 A02B8329 */  sb         $t3, -0x7cd7($at)
/* D594 8000C994 3C01800B */  lui        $at, 0x800b
/* D598 8000C998 AC208330 */  sw         $zero, -0x7cd0($at)
/* D59C 8000C99C 3C04800B */  lui        $a0, 0x800b
/* D5A0 8000C9A0 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D5A4 8000C9A4 24840014 */  addiu      $a0, $a0, 0x14
/* D5A8 8000C9A8 24050060 */  addiu      $a1, $zero, 0x60
/* D5AC 8000C9AC 0C015FF4 */  jal        func_80057FD0
/* D5B0 8000C9B0 00000000 */   nop       
/* D5B4 8000C9B4 3C04800B */  lui        $a0, 0x800b
/* D5B8 8000C9B8 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D5BC 8000C9BC 0C016A64 */  jal        func_8005A990
/* D5C0 8000C9C0 00000000 */   nop       
/* D5C4 8000C9C4 27A4001C */  addiu      $a0, $sp, 0x1c
/* D5C8 8000C9C8 27A50018 */  addiu      $a1, $sp, 0x18
/* D5CC 8000C9CC 0C0032C6 */  jal        func_8000CB18
/* D5D0 8000C9D0 00000000 */   nop       
/* D5D4 8000C9D4 8FAC0018 */  lw         $t4, 0x18($sp)
/* D5D8 8000C9D8 3C0100C2 */  lui        $at, 0xc2
/* D5DC 8000C9DC 3421001E */  ori        $at, $at, 0x1e
/* D5E0 8000C9E0 11810008 */  beq        $t4, $at, .L8000CA04
/* D5E4 8000C9E4 00000000 */   nop       
/* D5E8 8000C9E8 3C0100C2 */  lui        $at, 0xc2
/* D5EC 8000C9EC 34210001 */  ori        $at, $at, 1
/* D5F0 8000C9F0 11810004 */  beq        $t4, $at, .L8000CA04
/* D5F4 8000C9F4 00000000 */   nop       
/* D5F8 8000C9F8 3C0100C2 */  lui        $at, 0xc2
/* D5FC 8000C9FC 15810006 */  bne        $t4, $at, .L8000CA18
/* D600 8000CA00 00000000 */   nop       
.L8000CA04:
/* D604 8000CA04 240D0040 */  addiu      $t5, $zero, 0x40
/* D608 8000CA08 3C01800B */  lui        $at, 0x800b
/* D60C 8000CA0C AC2D8398 */  sw         $t5, -0x7c68($at)
/* D610 8000CA10 10000004 */  b          .L8000CA24
/* D614 8000CA14 00000000 */   nop       
.L8000CA18:
/* D618 8000CA18 240E0080 */  addiu      $t6, $zero, 0x80
/* D61C 8000CA1C 3C01800B */  lui        $at, 0x800b
/* D620 8000CA20 AC2E8398 */  sw         $t6, -0x7c68($at)
.L8000CA24:
/* D624 8000CA24 3C02800B */  lui        $v0, 0x800b
/* D628 8000CA28 24428320 */  addiu      $v0, $v0, -0x7ce0
/* D62C 8000CA2C 10000003 */  b          .L8000CA3C
/* D630 8000CA30 00000000 */   nop       
/* D634 8000CA34 10000001 */  b          .L8000CA3C
/* D638 8000CA38 00000000 */   nop       
.L8000CA3C:
/* D63C 8000CA3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* D640 8000CA40 27BD0020 */  addiu      $sp, $sp, 0x20
/* D644 8000CA44 03E00008 */  jr         $ra
/* D648 8000CA48 00000000 */   nop       

glabel func_8000CA4C
/* D64C 8000CA4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D650 8000CA50 AFBF0014 */  sw         $ra, 0x14($sp)
/* D654 8000CA54 AFA40020 */  sw         $a0, 0x20($sp)
/* D658 8000CA58 3C04800B */  lui        $a0, 0x800b
/* D65C 8000CA5C 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D660 8000CA60 3C05800B */  lui        $a1, 0x800b
/* D664 8000CA64 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* D668 8000CA68 3C010001 */  lui        $at, 1
/* D66C 8000CA6C 00A17025 */  or         $t6, $a1, $at
/* D670 8000CA70 01C02825 */  or         $a1, $t6, $zero
/* D674 8000CA74 3C06D200 */  lui        $a2, 0xd200
/* D678 8000CA78 0C018DC4 */  jal        func_80063710
/* D67C 8000CA7C 00000000 */   nop       
/* D680 8000CA80 3C04800B */  lui        $a0, 0x800b
/* D684 8000CA84 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D688 8000CA88 3C05800B */  lui        $a1, 0x800b
/* D68C 8000CA8C 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* D690 8000CA90 27A6001C */  addiu      $a2, $sp, 0x1c
/* D694 8000CA94 0C018C40 */  jal        func_80063100
/* D698 8000CA98 00000000 */   nop       
/* D69C 8000CA9C 3C04800B */  lui        $a0, 0x800b
/* D6A0 8000CAA0 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D6A4 8000CAA4 3C05800B */  lui        $a1, 0x800b
/* D6A8 8000CAA8 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* D6AC 8000CAAC 3C010001 */  lui        $at, 1
/* D6B0 8000CAB0 00A17825 */  or         $t7, $a1, $at
/* D6B4 8000CAB4 01E02825 */  or         $a1, $t7, $zero
/* D6B8 8000CAB8 3C06D200 */  lui        $a2, 0xd200
/* D6BC 8000CABC 0C018DC4 */  jal        func_80063710
/* D6C0 8000CAC0 00000000 */   nop       
/* D6C4 8000CAC4 3C04800B */  lui        $a0, 0x800b
/* D6C8 8000CAC8 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D6CC 8000CACC 3C05800B */  lui        $a1, 0x800b
/* D6D0 8000CAD0 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* D6D4 8000CAD4 27A6001C */  addiu      $a2, $sp, 0x1c
/* D6D8 8000CAD8 0C018C40 */  jal        func_80063100
/* D6DC 8000CADC 00000000 */   nop       
/* D6E0 8000CAE0 8FB8001C */  lw         $t8, 0x1c($sp)
/* D6E4 8000CAE4 00000000 */  nop        
/* D6E8 8000CAE8 331900FF */  andi       $t9, $t8, 0xff
/* D6EC 8000CAEC 8FA80020 */  lw         $t0, 0x20($sp)
/* D6F0 8000CAF0 00000000 */  nop        
/* D6F4 8000CAF4 A1190000 */  sb         $t9, ($t0)
/* D6F8 8000CAF8 10000003 */  b          .L8000CB08
/* D6FC 8000CAFC 00000000 */   nop       
/* D700 8000CB00 10000001 */  b          .L8000CB08
/* D704 8000CB04 00000000 */   nop       
.L8000CB08:
/* D708 8000CB08 8FBF0014 */  lw         $ra, 0x14($sp)
/* D70C 8000CB0C 27BD0020 */  addiu      $sp, $sp, 0x20
/* D710 8000CB10 03E00008 */  jr         $ra
/* D714 8000CB14 00000000 */   nop       

glabel func_8000CB18
/* D718 8000CB18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D71C 8000CB1C AFBF0014 */  sw         $ra, 0x14($sp)
/* D720 8000CB20 AFA40020 */  sw         $a0, 0x20($sp)
/* D724 8000CB24 AFA50024 */  sw         $a1, 0x24($sp)
/* D728 8000CB28 27A4001F */  addiu      $a0, $sp, 0x1f
/* D72C 8000CB2C 0C003293 */  jal        func_8000CA4C
/* D730 8000CB30 00000000 */   nop       
/* D734 8000CB34 3C04800B */  lui        $a0, 0x800b
/* D738 8000CB38 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D73C 8000CB3C 3C05800B */  lui        $a1, 0x800b
/* D740 8000CB40 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* D744 8000CB44 3C010001 */  lui        $at, 1
/* D748 8000CB48 00A17025 */  or         $t6, $a1, $at
/* D74C 8000CB4C 01C02825 */  or         $a1, $t6, $zero
/* D750 8000CB50 3C06E100 */  lui        $a2, 0xe100
/* D754 8000CB54 0C018DC4 */  jal        func_80063710
/* D758 8000CB58 00000000 */   nop       
/* D75C 8000CB5C 3C01800B */  lui        $at, 0x800b
/* D760 8000CB60 A02082F2 */  sb         $zero, -0x7d0e($at)
/* D764 8000CB64 3C0F800B */  lui        $t7, 0x800b
/* D768 8000CB68 25EF8308 */  addiu      $t7, $t7, -0x7cf8
/* D76C 8000CB6C 3C01800B */  lui        $at, 0x800b
/* D770 8000CB70 AC2F82F4 */  sw         $t7, -0x7d0c($at)
/* D774 8000CB74 3C18800B */  lui        $t8, 0x800b
/* D778 8000CB78 271882E0 */  addiu      $t8, $t8, -0x7d20
/* D77C 8000CB7C 3C01800B */  lui        $at, 0x800b
/* D780 8000CB80 AC3882F8 */  sw         $t8, -0x7d08($at)
/* D784 8000CB84 3C01800B */  lui        $at, 0x800b
/* D788 8000CB88 AC2082FC */  sw         $zero, -0x7d04($at)
/* D78C 8000CB8C 24190008 */  addiu      $t9, $zero, 8
/* D790 8000CB90 3C01800B */  lui        $at, 0x800b
/* D794 8000CB94 AC398300 */  sw         $t9, -0x7d00($at)
/* D798 8000CB98 3C04800B */  lui        $a0, 0x800b
/* D79C 8000CB9C 248482E0 */  addiu      $a0, $a0, -0x7d20
/* D7A0 8000CBA0 24050010 */  addiu      $a1, $zero, 0x10
/* D7A4 8000CBA4 0C016448 */  jal        func_80059120
/* D7A8 8000CBA8 00000000 */   nop       
/* D7AC 8000CBAC 3C04800B */  lui        $a0, 0x800b
/* D7B0 8000CBB0 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D7B4 8000CBB4 3C05800B */  lui        $a1, 0x800b
/* D7B8 8000CBB8 24A582F0 */  addiu      $a1, $a1, -0x7d10
/* D7BC 8000CBBC 00003025 */  or         $a2, $zero, $zero
/* D7C0 8000CBC0 0C01783C */  jal        func_8005E0F0
/* D7C4 8000CBC4 00000000 */   nop       
/* D7C8 8000CBC8 3C04800B */  lui        $a0, 0x800b
/* D7CC 8000CBCC 24848308 */  addiu      $a0, $a0, -0x7cf8
/* D7D0 8000CBD0 00002825 */  or         $a1, $zero, $zero
/* D7D4 8000CBD4 24060001 */  addiu      $a2, $zero, 1
/* D7D8 8000CBD8 0C015AB4 */  jal        osRecvMesg
/* D7DC 8000CBDC 00000000 */   nop       
/* D7E0 8000CBE0 3C08800B */  lui        $t0, 0x800b
/* D7E4 8000CBE4 250882E0 */  addiu      $t0, $t0, -0x7d20
/* D7E8 8000CBE8 8D090000 */  lw         $t1, ($t0)
/* D7EC 8000CBEC 8FAA0020 */  lw         $t2, 0x20($sp)
/* D7F0 8000CBF0 00000000 */  nop        
/* D7F4 8000CBF4 AD490000 */  sw         $t1, ($t2)
/* D7F8 8000CBF8 3C0B800B */  lui        $t3, 0x800b
/* D7FC 8000CBFC 256B82E0 */  addiu      $t3, $t3, -0x7d20
/* D800 8000CC00 8D6C0004 */  lw         $t4, 4($t3)
/* D804 8000CC04 8FAD0024 */  lw         $t5, 0x24($sp)
/* D808 8000CC08 00000000 */  nop        
/* D80C 8000CC0C ADAC0000 */  sw         $t4, ($t5)
/* D810 8000CC10 10000003 */  b          .L8000CC20
/* D814 8000CC14 00000000 */   nop       
/* D818 8000CC18 10000001 */  b          .L8000CC20
/* D81C 8000CC1C 00000000 */   nop       
.L8000CC20:
/* D820 8000CC20 8FBF0014 */  lw         $ra, 0x14($sp)
/* D824 8000CC24 27BD0020 */  addiu      $sp, $sp, 0x20
/* D828 8000CC28 03E00008 */  jr         $ra
/* D82C 8000CC2C 00000000 */   nop       

glabel func_8000CC30
/* D830 8000CC30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D834 8000CC34 AFBF0014 */  sw         $ra, 0x14($sp)
/* D838 8000CC38 3C04800B */  lui        $a0, 0x800b
/* D83C 8000CC3C 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D840 8000CC40 3C05800B */  lui        $a1, 0x800b
/* D844 8000CC44 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* D848 8000CC48 3C010001 */  lui        $at, 1
/* D84C 8000CC4C 00A17025 */  or         $t6, $a1, $at
/* D850 8000CC50 01C02825 */  or         $a1, $t6, $zero
/* D854 8000CC54 3C06D200 */  lui        $a2, 0xd200
/* D858 8000CC58 0C018DC4 */  jal        func_80063710
/* D85C 8000CC5C 00000000 */   nop       
/* D860 8000CC60 3C04800B */  lui        $a0, 0x800b
/* D864 8000CC64 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D868 8000CC68 3C05800B */  lui        $a1, 0x800b
/* D86C 8000CC6C 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* D870 8000CC70 00003025 */  or         $a2, $zero, $zero
/* D874 8000CC74 0C018DC4 */  jal        func_80063710
/* D878 8000CC78 00000000 */   nop       
/* D87C 8000CC7C 10000003 */  b          .L8000CC8C
/* D880 8000CC80 00000000 */   nop       
/* D884 8000CC84 10000001 */  b          .L8000CC8C
/* D888 8000CC88 00000000 */   nop       
.L8000CC8C:
/* D88C 8000CC8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* D890 8000CC90 27BD0018 */  addiu      $sp, $sp, 0x18
/* D894 8000CC94 03E00008 */  jr         $ra
/* D898 8000CC98 00000000 */   nop       

glabel func_8000CC9C
/* D89C 8000CC9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D8A0 8000CCA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* D8A4 8000CCA4 3C04800B */  lui        $a0, 0x800b
/* D8A8 8000CCA8 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D8AC 8000CCAC 3C05800B */  lui        $a1, 0x800b
/* D8B0 8000CCB0 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* D8B4 8000CCB4 3C010001 */  lui        $at, 1
/* D8B8 8000CCB8 00A17025 */  or         $t6, $a1, $at
/* D8BC 8000CCBC 01C02825 */  or         $a1, $t6, $zero
/* D8C0 8000CCC0 3C063C00 */  lui        $a2, 0x3c00
/* D8C4 8000CCC4 0C018DC4 */  jal        func_80063710
/* D8C8 8000CCC8 00000000 */   nop       
/* D8CC 8000CCCC 3C04800B */  lui        $a0, 0x800b
/* D8D0 8000CCD0 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D8D4 8000CCD4 3C05800B */  lui        $a1, 0x800b
/* D8D8 8000CCD8 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* D8DC 8000CCDC 3C010001 */  lui        $at, 1
/* D8E0 8000CCE0 00A17825 */  or         $t7, $a1, $at
/* D8E4 8000CCE4 01E02825 */  or         $a1, $t7, $zero
/* D8E8 8000CCE8 3C067800 */  lui        $a2, 0x7800
/* D8EC 8000CCEC 0C018DC4 */  jal        func_80063710
/* D8F0 8000CCF0 00000000 */   nop       
.L8000CCF4:
/* D8F4 8000CCF4 3C04800B */  lui        $a0, 0x800b
/* D8F8 8000CCF8 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D8FC 8000CCFC 3C05800B */  lui        $a1, 0x800b
/* D900 8000CD00 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* D904 8000CD04 27A6001C */  addiu      $a2, $sp, 0x1c
/* D908 8000CD08 0C018C40 */  jal        func_80063100
/* D90C 8000CD0C 00000000 */   nop       
/* D910 8000CD10 8FB8001C */  lw         $t8, 0x1c($sp)
/* D914 8000CD14 00000000 */  nop        
/* D918 8000CD18 33190002 */  andi       $t9, $t8, 2
/* D91C 8000CD1C 24010002 */  addiu      $at, $zero, 2
/* D920 8000CD20 1321FFF4 */  beq        $t9, $at, .L8000CCF4
/* D924 8000CD24 00000000 */   nop       
/* D928 8000CD28 3C04800B */  lui        $a0, 0x800b
/* D92C 8000CD2C 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D930 8000CD30 3C05800B */  lui        $a1, 0x800b
/* D934 8000CD34 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* D938 8000CD38 27A6001C */  addiu      $a2, $sp, 0x1c
/* D93C 8000CD3C 0C018C40 */  jal        func_80063100
/* D940 8000CD40 00000000 */   nop       
/* D944 8000CD44 0C00330C */  jal        func_8000CC30
/* D948 8000CD48 00000000 */   nop       
/* D94C 8000CD4C 8FA8001C */  lw         $t0, 0x1c($sp)
/* D950 8000CD50 00000000 */  nop        
/* D954 8000CD54 310900FF */  andi       $t1, $t0, 0xff
/* D958 8000CD58 24010008 */  addiu      $at, $zero, 8
/* D95C 8000CD5C 11210008 */  beq        $t1, $at, .L8000CD80
/* D960 8000CD60 00000000 */   nop       
/* D964 8000CD64 24010048 */  addiu      $at, $zero, 0x48
/* D968 8000CD68 11210005 */  beq        $t1, $at, .L8000CD80
/* D96C 8000CD6C 00000000 */   nop       
/* D970 8000CD70 310A0008 */  andi       $t2, $t0, 8
/* D974 8000CD74 24010008 */  addiu      $at, $zero, 8
/* D978 8000CD78 15410006 */  bne        $t2, $at, .L8000CD94
/* D97C 8000CD7C 00000000 */   nop       
.L8000CD80:
/* D980 8000CD80 00001025 */  or         $v0, $zero, $zero
/* D984 8000CD84 10000008 */  b          .L8000CDA8
/* D988 8000CD88 00000000 */   nop       
/* D98C 8000CD8C 10000004 */  b          .L8000CDA0
/* D990 8000CD90 00000000 */   nop       
.L8000CD94:
/* D994 8000CD94 2402FFFF */  addiu      $v0, $zero, -1
/* D998 8000CD98 10000003 */  b          .L8000CDA8
/* D99C 8000CD9C 00000000 */   nop       
.L8000CDA0:
/* D9A0 8000CDA0 10000001 */  b          .L8000CDA8
/* D9A4 8000CDA4 00000000 */   nop       
.L8000CDA8:
/* D9A8 8000CDA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* D9AC 8000CDAC 27BD0020 */  addiu      $sp, $sp, 0x20
/* D9B0 8000CDB0 03E00008 */  jr         $ra
/* D9B4 8000CDB4 00000000 */   nop       

glabel func_8000CDB8
/* D9B8 8000CDB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D9BC 8000CDBC AFBF0014 */  sw         $ra, 0x14($sp)
/* D9C0 8000CDC0 AFA40020 */  sw         $a0, 0x20($sp)
/* D9C4 8000CDC4 3C04800B */  lui        $a0, 0x800b
/* D9C8 8000CDC8 24848320 */  addiu      $a0, $a0, -0x7ce0
/* D9CC 8000CDCC 3C05800B */  lui        $a1, 0x800b
/* D9D0 8000CDD0 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* D9D4 8000CDD4 3C010001 */  lui        $at, 1
/* D9D8 8000CDD8 00A17025 */  or         $t6, $a1, $at
/* D9DC 8000CDDC 01C02825 */  or         $a1, $t6, $zero
/* D9E0 8000CDE0 8FA60020 */  lw         $a2, 0x20($sp)
/* D9E4 8000CDE4 3C014B00 */  lui        $at, 0x4b00
/* D9E8 8000CDE8 00C17825 */  or         $t7, $a2, $at
/* D9EC 8000CDEC 01E03025 */  or         $a2, $t7, $zero
/* D9F0 8000CDF0 0C018DC4 */  jal        func_80063710
/* D9F4 8000CDF4 00000000 */   nop       
/* D9F8 8000CDF8 3C04800B */  lui        $a0, 0x800b
/* D9FC 8000CDFC 24848320 */  addiu      $a0, $a0, -0x7ce0
/* DA00 8000CE00 3C05800B */  lui        $a1, 0x800b
/* DA04 8000CE04 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* DA08 8000CE08 3C010001 */  lui        $at, 1
/* DA0C 8000CE0C 00A1C025 */  or         $t8, $a1, $at
/* DA10 8000CE10 03002825 */  or         $a1, $t8, $zero
/* DA14 8000CE14 3C067800 */  lui        $a2, 0x7800
/* DA18 8000CE18 0C018DC4 */  jal        func_80063710
/* DA1C 8000CE1C 00000000 */   nop       
.L8000CE20:
/* DA20 8000CE20 3C04800B */  lui        $a0, 0x800b
/* DA24 8000CE24 24848320 */  addiu      $a0, $a0, -0x7ce0
/* DA28 8000CE28 3C05800B */  lui        $a1, 0x800b
/* DA2C 8000CE2C 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* DA30 8000CE30 27A6001C */  addiu      $a2, $sp, 0x1c
/* DA34 8000CE34 0C018C40 */  jal        func_80063100
/* DA38 8000CE38 00000000 */   nop       
/* DA3C 8000CE3C 8FB9001C */  lw         $t9, 0x1c($sp)
/* DA40 8000CE40 00000000 */  nop        
/* DA44 8000CE44 33280002 */  andi       $t0, $t9, 2
/* DA48 8000CE48 24010002 */  addiu      $at, $zero, 2
/* DA4C 8000CE4C 1101FFF4 */  beq        $t0, $at, .L8000CE20
/* DA50 8000CE50 00000000 */   nop       
/* DA54 8000CE54 3C04800B */  lui        $a0, 0x800b
/* DA58 8000CE58 24848320 */  addiu      $a0, $a0, -0x7ce0
/* DA5C 8000CE5C 3C05800B */  lui        $a1, 0x800b
/* DA60 8000CE60 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* DA64 8000CE64 27A6001C */  addiu      $a2, $sp, 0x1c
/* DA68 8000CE68 0C018C40 */  jal        func_80063100
/* DA6C 8000CE6C 00000000 */   nop       
/* DA70 8000CE70 0C00330C */  jal        func_8000CC30
/* DA74 8000CE74 00000000 */   nop       
/* DA78 8000CE78 8FA9001C */  lw         $t1, 0x1c($sp)
/* DA7C 8000CE7C 00000000 */  nop        
/* DA80 8000CE80 312A00FF */  andi       $t2, $t1, 0xff
/* DA84 8000CE84 24010008 */  addiu      $at, $zero, 8
/* DA88 8000CE88 11410008 */  beq        $t2, $at, .L8000CEAC
/* DA8C 8000CE8C 00000000 */   nop       
/* DA90 8000CE90 24010048 */  addiu      $at, $zero, 0x48
/* DA94 8000CE94 11410005 */  beq        $t2, $at, .L8000CEAC
/* DA98 8000CE98 00000000 */   nop       
/* DA9C 8000CE9C 312B0008 */  andi       $t3, $t1, 8
/* DAA0 8000CEA0 24010008 */  addiu      $at, $zero, 8
/* DAA4 8000CEA4 15610006 */  bne        $t3, $at, .L8000CEC0
/* DAA8 8000CEA8 00000000 */   nop       
.L8000CEAC:
/* DAAC 8000CEAC 00001025 */  or         $v0, $zero, $zero
/* DAB0 8000CEB0 10000008 */  b          .L8000CED4
/* DAB4 8000CEB4 00000000 */   nop       
/* DAB8 8000CEB8 10000004 */  b          .L8000CECC
/* DABC 8000CEBC 00000000 */   nop       
.L8000CEC0:
/* DAC0 8000CEC0 2402FFFF */  addiu      $v0, $zero, -1
/* DAC4 8000CEC4 10000003 */  b          .L8000CED4
/* DAC8 8000CEC8 00000000 */   nop       
.L8000CECC:
/* DACC 8000CECC 10000001 */  b          .L8000CED4
/* DAD0 8000CED0 00000000 */   nop       
.L8000CED4:
/* DAD4 8000CED4 8FBF0014 */  lw         $ra, 0x14($sp)
/* DAD8 8000CED8 27BD0020 */  addiu      $sp, $sp, 0x20
/* DADC 8000CEDC 03E00008 */  jr         $ra
/* DAE0 8000CEE0 00000000 */   nop       

glabel func_8000CEE4
/* DAE4 8000CEE4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DAE8 8000CEE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* DAEC 8000CEEC AFA40020 */  sw         $a0, 0x20($sp)
/* DAF0 8000CEF0 AFA50024 */  sw         $a1, 0x24($sp)
/* DAF4 8000CEF4 AFA60028 */  sw         $a2, 0x28($sp)
/* DAF8 8000CEF8 AFA7002C */  sw         $a3, 0x2c($sp)
/* DAFC 8000CEFC 3C04800B */  lui        $a0, 0x800b
/* DB00 8000CF00 24848320 */  addiu      $a0, $a0, -0x7ce0
/* DB04 8000CF04 3C05800B */  lui        $a1, 0x800b
/* DB08 8000CF08 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* DB0C 8000CF0C 3C010001 */  lui        $at, 1
/* DB10 8000CF10 00A17025 */  or         $t6, $a1, $at
/* DB14 8000CF14 01C02825 */  or         $a1, $t6, $zero
/* DB18 8000CF18 3C06B400 */  lui        $a2, 0xb400
/* DB1C 8000CF1C 0C018DC4 */  jal        func_80063710
/* DB20 8000CF20 00000000 */   nop       
/* DB24 8000CF24 8FAF0024 */  lw         $t7, 0x24($sp)
/* DB28 8000CF28 8FB80020 */  lw         $t8, 0x20($sp)
/* DB2C 8000CF2C 00000000 */  nop        
/* DB30 8000CF30 A30F0002 */  sb         $t7, 2($t8)
/* DB34 8000CF34 8FB9002C */  lw         $t9, 0x2c($sp)
/* DB38 8000CF38 8FA80020 */  lw         $t0, 0x20($sp)
/* DB3C 8000CF3C 00000000 */  nop        
/* DB40 8000CF40 AD190004 */  sw         $t9, 4($t0)
/* DB44 8000CF44 8FA90028 */  lw         $t1, 0x28($sp)
/* DB48 8000CF48 8FAA0020 */  lw         $t2, 0x20($sp)
/* DB4C 8000CF4C 00000000 */  nop        
/* DB50 8000CF50 AD490008 */  sw         $t1, 8($t2)
/* DB54 8000CF54 8FAB0020 */  lw         $t3, 0x20($sp)
/* DB58 8000CF58 00000000 */  nop        
/* DB5C 8000CF5C AD60000C */  sw         $zero, 0xc($t3)
/* DB60 8000CF60 240C0080 */  addiu      $t4, $zero, 0x80
/* DB64 8000CF64 8FAD0020 */  lw         $t5, 0x20($sp)
/* DB68 8000CF68 00000000 */  nop        
/* DB6C 8000CF6C ADAC0010 */  sw         $t4, 0x10($t5)
/* DB70 8000CF70 3C04800B */  lui        $a0, 0x800b
/* DB74 8000CF74 24848320 */  addiu      $a0, $a0, -0x7ce0
/* DB78 8000CF78 8FA50020 */  lw         $a1, 0x20($sp)
/* DB7C 8000CF7C 24060001 */  addiu      $a2, $zero, 1
/* DB80 8000CF80 0C01783C */  jal        func_8005E0F0
/* DB84 8000CF84 00000000 */   nop       
/* DB88 8000CF88 AFA2001C */  sw         $v0, 0x1c($sp)
/* DB8C 8000CF8C 8FA2001C */  lw         $v0, 0x1c($sp)
/* DB90 8000CF90 10000003 */  b          .L8000CFA0
/* DB94 8000CF94 00000000 */   nop       
/* DB98 8000CF98 10000001 */  b          .L8000CFA0
/* DB9C 8000CF9C 00000000 */   nop       
.L8000CFA0:
/* DBA0 8000CFA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* DBA4 8000CFA4 27BD0020 */  addiu      $sp, $sp, 0x20
/* DBA8 8000CFA8 03E00008 */  jr         $ra
/* DBAC 8000CFAC 00000000 */   nop       

glabel func_8000CFB0
/* DBB0 8000CFB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DBB4 8000CFB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* DBB8 8000CFB8 AFA40020 */  sw         $a0, 0x20($sp)
/* DBBC 8000CFBC 3C04800B */  lui        $a0, 0x800b
/* DBC0 8000CFC0 24848320 */  addiu      $a0, $a0, -0x7ce0
/* DBC4 8000CFC4 3C05800B */  lui        $a1, 0x800b
/* DBC8 8000CFC8 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* DBCC 8000CFCC 3C010001 */  lui        $at, 1
/* DBD0 8000CFD0 00A17025 */  or         $t6, $a1, $at
/* DBD4 8000CFD4 01C02825 */  or         $a1, $t6, $zero
/* DBD8 8000CFD8 8FA60020 */  lw         $a2, 0x20($sp)
/* DBDC 8000CFDC 3C01A500 */  lui        $at, 0xa500
/* DBE0 8000CFE0 00C17825 */  or         $t7, $a2, $at
/* DBE4 8000CFE4 01E03025 */  or         $a2, $t7, $zero
/* DBE8 8000CFE8 0C018DC4 */  jal        func_80063710
/* DBEC 8000CFEC 00000000 */   nop       
.L8000CFF0:
/* DBF0 8000CFF0 3C04800B */  lui        $a0, 0x800b
/* DBF4 8000CFF4 24848320 */  addiu      $a0, $a0, -0x7ce0
/* DBF8 8000CFF8 3C05800B */  lui        $a1, 0x800b
/* DBFC 8000CFFC 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* DC00 8000D000 27A6001C */  addiu      $a2, $sp, 0x1c
/* DC04 8000D004 0C018C40 */  jal        func_80063100
/* DC08 8000D008 00000000 */   nop       
/* DC0C 8000D00C 8FB8001C */  lw         $t8, 0x1c($sp)
/* DC10 8000D010 00000000 */  nop        
/* DC14 8000D014 33190001 */  andi       $t9, $t8, 1
/* DC18 8000D018 24010001 */  addiu      $at, $zero, 1
/* DC1C 8000D01C 1321FFF4 */  beq        $t9, $at, .L8000CFF0
/* DC20 8000D020 00000000 */   nop       
/* DC24 8000D024 3C04800B */  lui        $a0, 0x800b
/* DC28 8000D028 24848320 */  addiu      $a0, $a0, -0x7ce0
/* DC2C 8000D02C 3C05800B */  lui        $a1, 0x800b
/* DC30 8000D030 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* DC34 8000D034 27A6001C */  addiu      $a2, $sp, 0x1c
/* DC38 8000D038 0C018C40 */  jal        func_80063100
/* DC3C 8000D03C 00000000 */   nop       
/* DC40 8000D040 0C00330C */  jal        func_8000CC30
/* DC44 8000D044 00000000 */   nop       
/* DC48 8000D048 8FA8001C */  lw         $t0, 0x1c($sp)
/* DC4C 8000D04C 00000000 */  nop        
/* DC50 8000D050 310900FF */  andi       $t1, $t0, 0xff
/* DC54 8000D054 24010004 */  addiu      $at, $zero, 4
/* DC58 8000D058 11210008 */  beq        $t1, $at, .L8000D07C
/* DC5C 8000D05C 00000000 */   nop       
/* DC60 8000D060 24010044 */  addiu      $at, $zero, 0x44
/* DC64 8000D064 11210005 */  beq        $t1, $at, .L8000D07C
/* DC68 8000D068 00000000 */   nop       
/* DC6C 8000D06C 310A0004 */  andi       $t2, $t0, 4
/* DC70 8000D070 24010004 */  addiu      $at, $zero, 4
/* DC74 8000D074 15410006 */  bne        $t2, $at, .L8000D090
/* DC78 8000D078 00000000 */   nop       
.L8000D07C:
/* DC7C 8000D07C 00001025 */  or         $v0, $zero, $zero
/* DC80 8000D080 10000008 */  b          .L8000D0A4
/* DC84 8000D084 00000000 */   nop       
/* DC88 8000D088 10000004 */  b          .L8000D09C
/* DC8C 8000D08C 00000000 */   nop       
.L8000D090:
/* DC90 8000D090 2402FFFF */  addiu      $v0, $zero, -1
/* DC94 8000D094 10000003 */  b          .L8000D0A4
/* DC98 8000D098 00000000 */   nop       
.L8000D09C:
/* DC9C 8000D09C 10000001 */  b          .L8000D0A4
/* DCA0 8000D0A0 00000000 */   nop       
.L8000D0A4:
/* DCA4 8000D0A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* DCA8 8000D0A8 27BD0020 */  addiu      $sp, $sp, 0x20
/* DCAC 8000D0AC 03E00008 */  jr         $ra
/* DCB0 8000D0B0 00000000 */   nop       

glabel func_8000D0B4
/* DCB4 8000D0B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DCB8 8000D0B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* DCBC 8000D0BC AFA40020 */  sw         $a0, 0x20($sp)
/* DCC0 8000D0C0 AFA50024 */  sw         $a1, 0x24($sp)
/* DCC4 8000D0C4 AFA60028 */  sw         $a2, 0x28($sp)
/* DCC8 8000D0C8 AFA7002C */  sw         $a3, 0x2c($sp)
/* DCCC 8000D0CC 3C04800B */  lui        $a0, 0x800b
/* DCD0 8000D0D0 24848320 */  addiu      $a0, $a0, -0x7ce0
/* DCD4 8000D0D4 3C05800B */  lui        $a1, 0x800b
/* DCD8 8000D0D8 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* DCDC 8000D0DC 3C010001 */  lui        $at, 1
/* DCE0 8000D0E0 00A17025 */  or         $t6, $a1, $at
/* DCE4 8000D0E4 01C02825 */  or         $a1, $t6, $zero
/* DCE8 8000D0E8 3C06F000 */  lui        $a2, 0xf000
/* DCEC 8000D0EC 0C018DC4 */  jal        func_80063710
/* DCF0 8000D0F0 00000000 */   nop       
/* DCF4 8000D0F4 3C04800B */  lui        $a0, 0x800b
/* DCF8 8000D0F8 24848320 */  addiu      $a0, $a0, -0x7ce0
/* DCFC 8000D0FC 3C05800B */  lui        $a1, 0x800b
/* DD00 8000D100 8CA5832C */  lw         $a1, -0x7cd4($a1)
/* DD04 8000D104 27A60018 */  addiu      $a2, $sp, 0x18
/* DD08 8000D108 0C018C40 */  jal        func_80063100
/* DD0C 8000D10C 00000000 */   nop       
/* DD10 8000D110 8FAF0024 */  lw         $t7, 0x24($sp)
/* DD14 8000D114 8FB80020 */  lw         $t8, 0x20($sp)
/* DD18 8000D118 00000000 */  nop        
/* DD1C 8000D11C A30F0002 */  sb         $t7, 2($t8)
/* DD20 8000D120 8FB90034 */  lw         $t9, 0x34($sp)
/* DD24 8000D124 8FA80020 */  lw         $t0, 0x20($sp)
/* DD28 8000D128 00000000 */  nop        
/* DD2C 8000D12C AD190004 */  sw         $t9, 4($t0)
/* DD30 8000D130 8FA9002C */  lw         $t1, 0x2c($sp)
/* DD34 8000D134 8FAA0020 */  lw         $t2, 0x20($sp)
/* DD38 8000D138 00000000 */  nop        
/* DD3C 8000D13C AD490008 */  sw         $t1, 8($t2)
/* DD40 8000D140 8FAB0028 */  lw         $t3, 0x28($sp)
/* DD44 8000D144 3C0C800B */  lui        $t4, 0x800b
/* DD48 8000D148 8D8C8398 */  lw         $t4, -0x7c68($t4)
/* DD4C 8000D14C 00000000 */  nop        
/* DD50 8000D150 016C0019 */  multu      $t3, $t4
/* DD54 8000D154 00006812 */  mflo       $t5
/* DD58 8000D158 8FAE0020 */  lw         $t6, 0x20($sp)
/* DD5C 8000D15C 00000000 */  nop        
/* DD60 8000D160 ADCD000C */  sw         $t5, 0xc($t6)
/* DD64 8000D164 8FAF0030 */  lw         $t7, 0x30($sp)
/* DD68 8000D168 00000000 */  nop        
/* DD6C 8000D16C 000FC1C0 */  sll        $t8, $t7, 7
/* DD70 8000D170 8FB90020 */  lw         $t9, 0x20($sp)
/* DD74 8000D174 00000000 */  nop        
/* DD78 8000D178 AF380010 */  sw         $t8, 0x10($t9)
/* DD7C 8000D17C 3C04800B */  lui        $a0, 0x800b
/* DD80 8000D180 24848320 */  addiu      $a0, $a0, -0x7ce0
/* DD84 8000D184 8FA50020 */  lw         $a1, 0x20($sp)
/* DD88 8000D188 00003025 */  or         $a2, $zero, $zero
/* DD8C 8000D18C 0C01783C */  jal        func_8005E0F0
/* DD90 8000D190 00000000 */   nop       
/* DD94 8000D194 AFA2001C */  sw         $v0, 0x1c($sp)
/* DD98 8000D198 8FA2001C */  lw         $v0, 0x1c($sp)
/* DD9C 8000D19C 10000003 */  b          .L8000D1AC
/* DDA0 8000D1A0 00000000 */   nop       
/* DDA4 8000D1A4 10000001 */  b          .L8000D1AC
/* DDA8 8000D1A8 00000000 */   nop       
.L8000D1AC:
/* DDAC 8000D1AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* DDB0 8000D1B0 27BD0020 */  addiu      $sp, $sp, 0x20
/* DDB4 8000D1B4 03E00008 */  jr         $ra
/* DDB8 8000D1B8 00000000 */   nop       
/* DDBC 8000D1BC 00000000 */  nop        
