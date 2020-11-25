.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001C330
/* 1CF30 8001C330 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1CF34 8001C334 AFA40038 */  sw         $a0, 0x38($sp)
/* 1CF38 8001C338 AFA5003C */  sw         $a1, 0x3c($sp)
/* 1CF3C 8001C33C AFA60040 */  sw         $a2, 0x40($sp)
/* 1CF40 8001C340 87A5003A */  lh         $a1, 0x3a($sp)
/* 1CF44 8001C344 87AE0042 */  lh         $t6, 0x42($sp)
/* 1CF48 8001C348 AFA70044 */  sw         $a3, 0x44($sp)
/* 1CF4C 8001C34C 87A6003E */  lh         $a2, 0x3e($sp)
/* 1CF50 8001C350 87AF0046 */  lh         $t7, 0x46($sp)
/* 1CF54 8001C354 00AE3821 */  addu       $a3, $a1, $t6
/* 1CF58 8001C358 24E7FFFF */  addiu      $a3, $a3, -1
/* 1CF5C 8001C35C 00CFC021 */  addu       $t8, $a2, $t7
/* 1CF60 8001C360 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1CF64 8001C364 2719FFFF */  addiu      $t9, $t8, -1
/* 1CF68 8001C368 00073C00 */  sll        $a3, $a3, 0x10
/* 1CF6C 8001C36C 00073C03 */  sra        $a3, $a3, 0x10
/* 1CF70 8001C370 AFB90010 */  sw         $t9, 0x10($sp)
/* 1CF74 8001C374 27A40030 */  addiu      $a0, $sp, 0x30
/* 1CF78 8001C378 A7A5003A */  sh         $a1, 0x3a($sp)
/* 1CF7C 8001C37C 0C0017F0 */  jal        func_80005FC0
/* 1CF80 8001C380 A7A6003E */   sh        $a2, 0x3e($sp)
/* 1CF84 8001C384 0C00180C */  jal        func_80006030
/* 1CF88 8001C388 27A40030 */   addiu     $a0, $sp, 0x30
/* 1CF8C 8001C38C 10400051 */  beqz       $v0, .L8001C4D4
/* 1CF90 8001C390 87A70052 */   lh        $a3, 0x52($sp)
/* 1CF94 8001C394 10E0000A */  beqz       $a3, .L8001C3C0
/* 1CF98 8001C398 3C03800A */   lui       $v1, 0x800a
/* 1CF9C 8001C39C 87A90030 */  lh         $t1, 0x30($sp)
/* 1CFA0 8001C3A0 87AA003A */  lh         $t2, 0x3a($sp)
/* 1CFA4 8001C3A4 87AE004A */  lh         $t6, 0x4a($sp)
/* 1CFA8 8001C3A8 012A5823 */  subu       $t3, $t1, $t2
/* 1CFAC 8001C3AC 01670019 */  multu      $t3, $a3
/* 1CFB0 8001C3B0 00006012 */  mflo       $t4
/* 1CFB4 8001C3B4 000C6943 */  sra        $t5, $t4, 5
/* 1CFB8 8001C3B8 01CD7821 */  addu       $t7, $t6, $t5
/* 1CFBC 8001C3BC A7AF004A */  sh         $t7, 0x4a($sp)
.L8001C3C0:
/* 1CFC0 8001C3C0 87A80056 */  lh         $t0, 0x56($sp)
/* 1CFC4 8001C3C4 87B80036 */  lh         $t8, 0x36($sp)
/* 1CFC8 8001C3C8 87B9003E */  lh         $t9, 0x3e($sp)
/* 1CFCC 8001C3CC 11000008 */  beqz       $t0, .L8001C3F0
/* 1CFD0 8001C3D0 24637420 */   addiu     $v1, $v1, 0x7420
/* 1CFD4 8001C3D4 03194823 */  subu       $t1, $t8, $t9
/* 1CFD8 8001C3D8 01280019 */  multu      $t1, $t0
/* 1CFDC 8001C3DC 87AC004E */  lh         $t4, 0x4e($sp)
/* 1CFE0 8001C3E0 00005012 */  mflo       $t2
/* 1CFE4 8001C3E4 000A5943 */  sra        $t3, $t2, 5
/* 1CFE8 8001C3E8 018B7021 */  addu       $t6, $t4, $t3
/* 1CFEC 8001C3EC A7AE004E */  sh         $t6, 0x4e($sp)
.L8001C3F0:
/* 1CFF0 8001C3F0 8FAD0058 */  lw         $t5, 0x58($sp)
/* 1CFF4 8001C3F4 3C010020 */  lui        $at, 0x20
/* 1CFF8 8001C3F8 87AF0032 */  lh         $t7, 0x32($sp)
/* 1CFFC 8001C3FC 55A10006 */  bnel       $t5, $at, .L8001C418
/* 1D000 8001C400 87B90034 */   lh        $t9, 0x34($sp)
/* 1D004 8001C404 00073880 */  sll        $a3, $a3, 2
/* 1D008 8001C408 00073C00 */  sll        $a3, $a3, 0x10
/* 1D00C 8001C40C 10000006 */  b          .L8001C428
/* 1D010 8001C410 00073C03 */   sra       $a3, $a3, 0x10
/* 1D014 8001C414 87B90034 */  lh         $t9, 0x34($sp)
.L8001C418:
/* 1D018 8001C418 25F80001 */  addiu      $t8, $t7, 1
/* 1D01C 8001C41C A7B80032 */  sh         $t8, 0x32($sp)
/* 1D020 8001C420 27290001 */  addiu      $t1, $t9, 1
/* 1D024 8001C424 A7A90034 */  sh         $t1, 0x34($sp)
.L8001C428:
/* 1D028 8001C428 87AC0032 */  lh         $t4, 0x32($sp)
/* 1D02C 8001C42C 8C620000 */  lw         $v0, ($v1)
/* 1D030 8001C430 87B80034 */  lh         $t8, 0x34($sp)
/* 1D034 8001C434 000C5880 */  sll        $t3, $t4, 2
/* 1D038 8001C438 316E0FFF */  andi       $t6, $t3, 0xfff
/* 1D03C 8001C43C 000E6B00 */  sll        $t5, $t6, 0xc
/* 1D040 8001C440 3C01E400 */  lui        $at, 0xe400
/* 1D044 8001C444 244A0008 */  addiu      $t2, $v0, 8
/* 1D048 8001C448 0018C880 */  sll        $t9, $t8, 2
/* 1D04C 8001C44C 33290FFF */  andi       $t1, $t9, 0xfff
/* 1D050 8001C450 AC6A0000 */  sw         $t2, ($v1)
/* 1D054 8001C454 01A17825 */  or         $t7, $t5, $at
/* 1D058 8001C458 01E95025 */  or         $t2, $t7, $t1
/* 1D05C 8001C45C AC4A0000 */  sw         $t2, ($v0)
/* 1D060 8001C460 87AC0030 */  lh         $t4, 0x30($sp)
/* 1D064 8001C464 87B80036 */  lh         $t8, 0x36($sp)
/* 1D068 8001C468 000C5880 */  sll        $t3, $t4, 2
/* 1D06C 8001C46C 316E0FFF */  andi       $t6, $t3, 0xfff
/* 1D070 8001C470 0018C880 */  sll        $t9, $t8, 2
/* 1D074 8001C474 332F0FFF */  andi       $t7, $t9, 0xfff
/* 1D078 8001C478 000E6B00 */  sll        $t5, $t6, 0xc
/* 1D07C 8001C47C 01AF4825 */  or         $t1, $t5, $t7
/* 1D080 8001C480 AC490004 */  sw         $t1, 4($v0)
/* 1D084 8001C484 8C620000 */  lw         $v0, ($v1)
/* 1D088 8001C488 3C0CE100 */  lui        $t4, 0xe100
/* 1D08C 8001C48C 00075C00 */  sll        $t3, $a3, 0x10
/* 1D090 8001C490 244A0008 */  addiu      $t2, $v0, 8
/* 1D094 8001C494 AC6A0000 */  sw         $t2, ($v1)
/* 1D098 8001C498 AC4C0000 */  sw         $t4, ($v0)
/* 1D09C 8001C49C 87B9004E */  lh         $t9, 0x4e($sp)
/* 1D0A0 8001C4A0 87AE004A */  lh         $t6, 0x4a($sp)
/* 1D0A4 8001C4A4 3C0AF100 */  lui        $t2, 0xf100
/* 1D0A8 8001C4A8 332DFFFF */  andi       $t5, $t9, 0xffff
/* 1D0AC 8001C4AC 000EC400 */  sll        $t8, $t6, 0x10
/* 1D0B0 8001C4B0 030D7825 */  or         $t7, $t8, $t5
/* 1D0B4 8001C4B4 AC4F0004 */  sw         $t7, 4($v0)
/* 1D0B8 8001C4B8 8C620000 */  lw         $v0, ($v1)
/* 1D0BC 8001C4BC 310EFFFF */  andi       $t6, $t0, 0xffff
/* 1D0C0 8001C4C0 016EC825 */  or         $t9, $t3, $t6
/* 1D0C4 8001C4C4 24490008 */  addiu      $t1, $v0, 8
/* 1D0C8 8001C4C8 AC690000 */  sw         $t1, ($v1)
/* 1D0CC 8001C4CC AC590004 */  sw         $t9, 4($v0)
/* 1D0D0 8001C4D0 AC4A0000 */  sw         $t2, ($v0)
.L8001C4D4:
/* 1D0D4 8001C4D4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1D0D8 8001C4D8 27BD0038 */  addiu      $sp, $sp, 0x38
/* 1D0DC 8001C4DC 03E00008 */  jr         $ra
/* 1D0E0 8001C4E0 00000000 */   nop       

glabel func_8001C4E4
/* 1D0E4 8001C4E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1D0E8 8001C4E8 AFA40030 */  sw         $a0, 0x30($sp)
/* 1D0EC 8001C4EC AFA50034 */  sw         $a1, 0x34($sp)
/* 1D0F0 8001C4F0 8FB90034 */  lw         $t9, 0x34($sp)
/* 1D0F4 8001C4F4 8FAF0030 */  lw         $t7, 0x30($sp)
/* 1D0F8 8001C4F8 AFA60038 */  sw         $a2, 0x38($sp)
/* 1D0FC 8001C4FC AFA7003C */  sw         $a3, 0x3c($sp)
/* 1D100 8001C500 00F93823 */  subu       $a3, $a3, $t9
/* 1D104 8001C504 00CF3023 */  subu       $a2, $a2, $t7
/* 1D108 8001C508 8FA80040 */  lw         $t0, 0x40($sp)
/* 1D10C 8001C50C 8FA90044 */  lw         $t1, 0x44($sp)
/* 1D110 8001C510 8FAA0048 */  lw         $t2, 0x48($sp)
/* 1D114 8001C514 24C60001 */  addiu      $a2, $a2, 1
/* 1D118 8001C518 24E70001 */  addiu      $a3, $a3, 1
/* 1D11C 8001C51C AFBF002C */  sw         $ra, 0x2c($sp)
/* 1D120 8001C520 00073C00 */  sll        $a3, $a3, 0x10
/* 1D124 8001C524 00063400 */  sll        $a2, $a2, 0x10
/* 1D128 8001C528 00063403 */  sra        $a2, $a2, 0x10
/* 1D12C 8001C52C 00073C03 */  sra        $a3, $a3, 0x10
/* 1D130 8001C530 87A50036 */  lh         $a1, 0x36($sp)
/* 1D134 8001C534 87A40032 */  lh         $a0, 0x32($sp)
/* 1D138 8001C538 AFA00010 */  sw         $zero, 0x10($sp)
/* 1D13C 8001C53C AFA00014 */  sw         $zero, 0x14($sp)
/* 1D140 8001C540 AFA80018 */  sw         $t0, 0x18($sp)
/* 1D144 8001C544 AFA9001C */  sw         $t1, 0x1c($sp)
/* 1D148 8001C548 0C0070CC */  jal        func_8001C330
/* 1D14C 8001C54C AFAA0020 */   sw        $t2, 0x20($sp)
/* 1D150 8001C550 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1D154 8001C554 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1D158 8001C558 03E00008 */  jr         $ra
/* 1D15C 8001C55C 00000000 */   nop       

glabel func_8001C560
/* 1D160 8001C560 3C08800A */  lui        $t0, 0x800a
/* 1D164 8001C564 25087420 */  addiu      $t0, $t0, 0x7420
/* 1D168 8001C568 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1D16C 8001C56C 8D030000 */  lw         $v1, ($t0)
/* 1D170 8001C570 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1D174 8001C574 AFA40030 */  sw         $a0, 0x30($sp)
/* 1D178 8001C578 246E0008 */  addiu      $t6, $v1, 8
/* 1D17C 8001C57C AFA50034 */  sw         $a1, 0x34($sp)
/* 1D180 8001C580 AFA60038 */  sw         $a2, 0x38($sp)
/* 1D184 8001C584 AFA7003C */  sw         $a3, 0x3c($sp)
/* 1D188 8001C588 AD0E0000 */  sw         $t6, ($t0)
/* 1D18C 8001C58C 3C0FFA00 */  lui        $t7, 0xfa00
/* 1D190 8001C590 AC6F0000 */  sw         $t7, ($v1)
/* 1D194 8001C594 93AB0047 */  lbu        $t3, 0x47($sp)
/* 1D198 8001C598 93B90043 */  lbu        $t9, 0x43($sp)
/* 1D19C 8001C59C 93AF004B */  lbu        $t7, 0x4b($sp)
/* 1D1A0 8001C5A0 000B6400 */  sll        $t4, $t3, 0x10
/* 1D1A4 8001C5A4 00194E00 */  sll        $t1, $t9, 0x18
/* 1D1A8 8001C5A8 012C6825 */  or         $t5, $t1, $t4
/* 1D1AC 8001C5AC 000FC200 */  sll        $t8, $t7, 8
/* 1D1B0 8001C5B0 01B8C825 */  or         $t9, $t5, $t8
/* 1D1B4 8001C5B4 372A00FF */  ori        $t2, $t9, 0xff
/* 1D1B8 8001C5B8 AC6A0004 */  sw         $t2, 4($v1)
/* 1D1BC 8001C5BC 00073C00 */  sll        $a3, $a3, 0x10
/* 1D1C0 8001C5C0 00063400 */  sll        $a2, $a2, 0x10
/* 1D1C4 8001C5C4 00052C00 */  sll        $a1, $a1, 0x10
/* 1D1C8 8001C5C8 00042400 */  sll        $a0, $a0, 0x10
/* 1D1CC 8001C5CC 00042403 */  sra        $a0, $a0, 0x10
/* 1D1D0 8001C5D0 00052C03 */  sra        $a1, $a1, 0x10
/* 1D1D4 8001C5D4 00063403 */  sra        $a2, $a2, 0x10
/* 1D1D8 8001C5D8 00073C03 */  sra        $a3, $a3, 0x10
/* 1D1DC 8001C5DC AFA00020 */  sw         $zero, 0x20($sp)
/* 1D1E0 8001C5E0 AFA0001C */  sw         $zero, 0x1c($sp)
/* 1D1E4 8001C5E4 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D1E8 8001C5E8 AFA00014 */  sw         $zero, 0x14($sp)
/* 1D1EC 8001C5EC 0C0070CC */  jal        func_8001C330
/* 1D1F0 8001C5F0 AFA00010 */   sw        $zero, 0x10($sp)
/* 1D1F4 8001C5F4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1D1F8 8001C5F8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1D1FC 8001C5FC 03E00008 */  jr         $ra
/* 1D200 8001C600 00000000 */   nop       

glabel func_8001C604
/* 1D204 8001C604 3C08800A */  lui        $t0, 0x800a
/* 1D208 8001C608 25087420 */  addiu      $t0, $t0, 0x7420
/* 1D20C 8001C60C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1D210 8001C610 8D030000 */  lw         $v1, ($t0)
/* 1D214 8001C614 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1D218 8001C618 AFA40030 */  sw         $a0, 0x30($sp)
/* 1D21C 8001C61C 246E0008 */  addiu      $t6, $v1, 8
/* 1D220 8001C620 AFA50034 */  sw         $a1, 0x34($sp)
/* 1D224 8001C624 AFA60038 */  sw         $a2, 0x38($sp)
/* 1D228 8001C628 AFA7003C */  sw         $a3, 0x3c($sp)
/* 1D22C 8001C62C AD0E0000 */  sw         $t6, ($t0)
/* 1D230 8001C630 3C0FFA00 */  lui        $t7, 0xfa00
/* 1D234 8001C634 AC6F0000 */  sw         $t7, ($v1)
/* 1D238 8001C638 93AB0047 */  lbu        $t3, 0x47($sp)
/* 1D23C 8001C63C 93B90043 */  lbu        $t9, 0x43($sp)
/* 1D240 8001C640 93AF004B */  lbu        $t7, 0x4b($sp)
/* 1D244 8001C644 000B6400 */  sll        $t4, $t3, 0x10
/* 1D248 8001C648 93AB004F */  lbu        $t3, 0x4f($sp)
/* 1D24C 8001C64C 00194E00 */  sll        $t1, $t9, 0x18
/* 1D250 8001C650 012C6825 */  or         $t5, $t1, $t4
/* 1D254 8001C654 000FC200 */  sll        $t8, $t7, 8
/* 1D258 8001C658 01B8C825 */  or         $t9, $t5, $t8
/* 1D25C 8001C65C 032B4825 */  or         $t1, $t9, $t3
/* 1D260 8001C660 AC690004 */  sw         $t1, 4($v1)
/* 1D264 8001C664 00073C00 */  sll        $a3, $a3, 0x10
/* 1D268 8001C668 00063400 */  sll        $a2, $a2, 0x10
/* 1D26C 8001C66C 00052C00 */  sll        $a1, $a1, 0x10
/* 1D270 8001C670 00042400 */  sll        $a0, $a0, 0x10
/* 1D274 8001C674 00042403 */  sra        $a0, $a0, 0x10
/* 1D278 8001C678 00052C03 */  sra        $a1, $a1, 0x10
/* 1D27C 8001C67C 00063403 */  sra        $a2, $a2, 0x10
/* 1D280 8001C680 00073C03 */  sra        $a3, $a3, 0x10
/* 1D284 8001C684 AFA00020 */  sw         $zero, 0x20($sp)
/* 1D288 8001C688 AFA0001C */  sw         $zero, 0x1c($sp)
/* 1D28C 8001C68C AFA00018 */  sw         $zero, 0x18($sp)
/* 1D290 8001C690 AFA00014 */  sw         $zero, 0x14($sp)
/* 1D294 8001C694 0C0070CC */  jal        func_8001C330
/* 1D298 8001C698 AFA00010 */   sw        $zero, 0x10($sp)
/* 1D29C 8001C69C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1D2A0 8001C6A0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1D2A4 8001C6A4 03E00008 */  jr         $ra
/* 1D2A8 8001C6A8 00000000 */   nop       

glabel func_8001C6AC
/* 1D2AC 8001C6AC 3C03800A */  lui        $v1, 0x800a
/* 1D2B0 8001C6B0 24637420 */  addiu      $v1, $v1, 0x7420
/* 1D2B4 8001C6B4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1D2B8 8001C6B8 8C680000 */  lw         $t0, ($v1)
/* 1D2BC 8001C6BC AFBF002C */  sw         $ra, 0x2c($sp)
/* 1D2C0 8001C6C0 AFA40040 */  sw         $a0, 0x40($sp)
/* 1D2C4 8001C6C4 250E0008 */  addiu      $t6, $t0, 8
/* 1D2C8 8001C6C8 AFA50044 */  sw         $a1, 0x44($sp)
/* 1D2CC 8001C6CC AFA60048 */  sw         $a2, 0x48($sp)
/* 1D2D0 8001C6D0 AFA7004C */  sw         $a3, 0x4c($sp)
/* 1D2D4 8001C6D4 AC6E0000 */  sw         $t6, ($v1)
/* 1D2D8 8001C6D8 3C0FFD10 */  lui        $t7, 0xfd10
/* 1D2DC 8001C6DC AD0F0000 */  sw         $t7, ($t0)
/* 1D2E0 8001C6E0 8FB80050 */  lw         $t8, 0x50($sp)
/* 1D2E4 8001C6E4 3C0F0708 */  lui        $t7, 0x708
/* 1D2E8 8001C6E8 35EF0200 */  ori        $t7, $t7, 0x200
/* 1D2EC 8001C6EC AD180004 */  sw         $t8, 4($t0)
/* 1D2F0 8001C6F0 8C690000 */  lw         $t1, ($v1)
/* 1D2F4 8001C6F4 3C0EF510 */  lui        $t6, 0xf510
/* 1D2F8 8001C6F8 00073C00 */  sll        $a3, $a3, 0x10
/* 1D2FC 8001C6FC 25390008 */  addiu      $t9, $t1, 8
/* 1D300 8001C700 AC790000 */  sw         $t9, ($v1)
/* 1D304 8001C704 AD2F0004 */  sw         $t7, 4($t1)
/* 1D308 8001C708 AD2E0000 */  sw         $t6, ($t1)
/* 1D30C 8001C70C 8C6A0000 */  lw         $t2, ($v1)
/* 1D310 8001C710 3C19E600 */  lui        $t9, 0xe600
/* 1D314 8001C714 3C0FF300 */  lui        $t7, 0xf300
/* 1D318 8001C718 25580008 */  addiu      $t8, $t2, 8
/* 1D31C 8001C71C AC780000 */  sw         $t8, ($v1)
/* 1D320 8001C720 AD400004 */  sw         $zero, 4($t2)
/* 1D324 8001C724 AD590000 */  sw         $t9, ($t2)
/* 1D328 8001C728 8C780000 */  lw         $t8, ($v1)
/* 1D32C 8001C72C 00073C03 */  sra        $a3, $a3, 0x10
/* 1D330 8001C730 00063400 */  sll        $a2, $a2, 0x10
/* 1D334 8001C734 270E0008 */  addiu      $t6, $t8, 8
/* 1D338 8001C738 AC6E0000 */  sw         $t6, ($v1)
/* 1D33C 8001C73C AFB80030 */  sw         $t8, 0x30($sp)
/* 1D340 8001C740 AF0F0000 */  sw         $t7, ($t8)
/* 1D344 8001C744 87B90056 */  lh         $t9, 0x56($sp)
/* 1D348 8001C748 87AD0056 */  lh         $t5, 0x56($sp)
/* 1D34C 8001C74C 00052C00 */  sll        $a1, $a1, 0x10
/* 1D350 8001C750 03270019 */  multu      $t9, $a3
/* 1D354 8001C754 00042400 */  sll        $a0, $a0, 0x10
/* 1D358 8001C758 00042403 */  sra        $a0, $a0, 0x10
/* 1D35C 8001C75C 00052C03 */  sra        $a1, $a1, 0x10
/* 1D360 8001C760 00063403 */  sra        $a2, $a2, 0x10
/* 1D364 8001C764 240C07FF */  addiu      $t4, $zero, 0x7ff
/* 1D368 8001C768 000D6840 */  sll        $t5, $t5, 1
/* 1D36C 8001C76C 00005812 */  mflo       $t3
/* 1D370 8001C770 256BFFFF */  addiu      $t3, $t3, -1
/* 1D374 8001C774 296107FF */  slti       $at, $t3, 0x7ff
/* 1D378 8001C778 10200003 */  beqz       $at, .L8001C788
/* 1D37C 8001C77C 00000000 */   nop       
/* 1D380 8001C780 10000001 */  b          .L8001C788
/* 1D384 8001C784 01606025 */   or        $t4, $t3, $zero
.L8001C788:
/* 1D388 8001C788 05A10003 */  bgez       $t5, .L8001C798
/* 1D38C 8001C78C 000D10C3 */   sra       $v0, $t5, 3
/* 1D390 8001C790 25A10007 */  addiu      $at, $t5, 7
/* 1D394 8001C794 000110C3 */  sra        $v0, $at, 3
.L8001C798:
/* 1D398 8001C798 1C400003 */  bgtz       $v0, .L8001C7A8
/* 1D39C 8001C79C 0040F825 */   or        $ra, $v0, $zero
/* 1D3A0 8001C7A0 10000001 */  b          .L8001C7A8
/* 1D3A4 8001C7A4 241F0001 */   addiu     $ra, $zero, 1
.L8001C7A8:
/* 1D3A8 8001C7A8 1C400003 */  bgtz       $v0, .L8001C7B8
/* 1D3AC 8001C7AC 27EE07FF */   addiu     $t6, $ra, 0x7ff
/* 1D3B0 8001C7B0 10000002 */  b          .L8001C7BC
/* 1D3B4 8001C7B4 240B0001 */   addiu     $t3, $zero, 1
.L8001C7B8:
/* 1D3B8 8001C7B8 00405825 */  or         $t3, $v0, $zero
.L8001C7BC:
/* 1D3BC 8001C7BC 01CB001A */  div        $zero, $t6, $t3
/* 1D3C0 8001C7C0 15600002 */  bnez       $t3, .L8001C7CC
/* 1D3C4 8001C7C4 00000000 */   nop       
/* 1D3C8 8001C7C8 0007000D */  break      7
.L8001C7CC:
/* 1D3CC 8001C7CC 2401FFFF */   addiu     $at, $zero, -1
/* 1D3D0 8001C7D0 15610004 */  bne        $t3, $at, .L8001C7E4
/* 1D3D4 8001C7D4 3C018000 */   lui       $at, 0x8000
/* 1D3D8 8001C7D8 15C10002 */  bne        $t6, $at, .L8001C7E4
/* 1D3DC 8001C7DC 00000000 */   nop       
/* 1D3E0 8001C7E0 0006000D */  break      6
.L8001C7E4:
/* 1D3E4 8001C7E4 00007812 */   mflo      $t7
/* 1D3E8 8001C7E8 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1D3EC 8001C7EC 318E0FFF */  andi       $t6, $t4, 0xfff
/* 1D3F0 8001C7F0 000E7B00 */  sll        $t7, $t6, 0xc
/* 1D3F4 8001C7F4 8FAE0030 */  lw         $t6, 0x30($sp)
/* 1D3F8 8001C7F8 3C010700 */  lui        $at, 0x700
/* 1D3FC 8001C7FC 0301C825 */  or         $t9, $t8, $at
/* 1D400 8001C800 032FC025 */  or         $t8, $t9, $t7
/* 1D404 8001C804 ADD80004 */  sw         $t8, 4($t6)
/* 1D408 8001C808 8C620000 */  lw         $v0, ($v1)
/* 1D40C 8001C80C 3C0FE700 */  lui        $t7, 0xe700
/* 1D410 8001C810 25AE0007 */  addiu      $t6, $t5, 7
/* 1D414 8001C814 24590008 */  addiu      $t9, $v0, 8
/* 1D418 8001C818 AC790000 */  sw         $t9, ($v1)
/* 1D41C 8001C81C AC400004 */  sw         $zero, 4($v0)
/* 1D420 8001C820 AC4F0000 */  sw         $t7, ($v0)
/* 1D424 8001C824 8C620000 */  lw         $v0, ($v1)
/* 1D428 8001C828 000EC8C3 */  sra        $t9, $t6, 3
/* 1D42C 8001C82C 332F01FF */  andi       $t7, $t9, 0x1ff
/* 1D430 8001C830 24580008 */  addiu      $t8, $v0, 8
/* 1D434 8001C834 AC780000 */  sw         $t8, ($v1)
/* 1D438 8001C838 000FC240 */  sll        $t8, $t7, 9
/* 1D43C 8001C83C 3C190008 */  lui        $t9, 8
/* 1D440 8001C840 3C01F510 */  lui        $at, 0xf510
/* 1D444 8001C844 03017025 */  or         $t6, $t8, $at
/* 1D448 8001C848 37390200 */  ori        $t9, $t9, 0x200
/* 1D44C 8001C84C AC590004 */  sw         $t9, 4($v0)
/* 1D450 8001C850 AC4E0000 */  sw         $t6, ($v0)
/* 1D454 8001C854 8C620000 */  lw         $v0, ($v1)
/* 1D458 8001C858 3C18F200 */  lui        $t8, 0xf200
/* 1D45C 8001C85C 244F0008 */  addiu      $t7, $v0, 8
/* 1D460 8001C860 AC6F0000 */  sw         $t7, ($v1)
/* 1D464 8001C864 AC580000 */  sw         $t8, ($v0)
/* 1D468 8001C868 87AE0056 */  lh         $t6, 0x56($sp)
/* 1D46C 8001C86C 25D9FFFF */  addiu      $t9, $t6, -1
/* 1D470 8001C870 00197880 */  sll        $t7, $t9, 2
/* 1D474 8001C874 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1D478 8001C878 24F9FFFF */  addiu      $t9, $a3, -1
/* 1D47C 8001C87C 00197880 */  sll        $t7, $t9, 2
/* 1D480 8001C880 00187300 */  sll        $t6, $t8, 0xc
/* 1D484 8001C884 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1D488 8001C888 01D8C825 */  or         $t9, $t6, $t8
/* 1D48C 8001C88C AC590004 */  sw         $t9, 4($v0)
/* 1D490 8001C890 8FB80058 */  lw         $t8, 0x58($sp)
/* 1D494 8001C894 240E0400 */  addiu      $t6, $zero, 0x400
/* 1D498 8001C898 240F0400 */  addiu      $t7, $zero, 0x400
/* 1D49C 8001C89C AFAF0018 */  sw         $t7, 0x18($sp)
/* 1D4A0 8001C8A0 AFAE001C */  sw         $t6, 0x1c($sp)
/* 1D4A4 8001C8A4 AFA00014 */  sw         $zero, 0x14($sp)
/* 1D4A8 8001C8A8 AFA00010 */  sw         $zero, 0x10($sp)
/* 1D4AC 8001C8AC 0C0070CC */  jal        func_8001C330
/* 1D4B0 8001C8B0 AFB80020 */   sw        $t8, 0x20($sp)
/* 1D4B4 8001C8B4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1D4B8 8001C8B8 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1D4BC 8001C8BC 03E00008 */  jr         $ra
/* 1D4C0 8001C8C0 00000000 */   nop       

glabel func_8001C8C4
/* 1D4C4 8001C8C4 3C03800A */  lui        $v1, 0x800a
/* 1D4C8 8001C8C8 24637420 */  addiu      $v1, $v1, 0x7420
/* 1D4CC 8001C8CC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1D4D0 8001C8D0 8C680000 */  lw         $t0, ($v1)
/* 1D4D4 8001C8D4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1D4D8 8001C8D8 AFA40030 */  sw         $a0, 0x30($sp)
/* 1D4DC 8001C8DC 250E0008 */  addiu      $t6, $t0, 8
/* 1D4E0 8001C8E0 AFA50034 */  sw         $a1, 0x34($sp)
/* 1D4E4 8001C8E4 AFA60038 */  sw         $a2, 0x38($sp)
/* 1D4E8 8001C8E8 AFA7003C */  sw         $a3, 0x3c($sp)
/* 1D4EC 8001C8EC AC6E0000 */  sw         $t6, ($v1)
/* 1D4F0 8001C8F0 3C0FFD18 */  lui        $t7, 0xfd18
/* 1D4F4 8001C8F4 AD0F0000 */  sw         $t7, ($t0)
/* 1D4F8 8001C8F8 8FB80040 */  lw         $t8, 0x40($sp)
/* 1D4FC 8001C8FC 3C0F0708 */  lui        $t7, 0x708
/* 1D500 8001C900 35EF0200 */  ori        $t7, $t7, 0x200
/* 1D504 8001C904 AD180004 */  sw         $t8, 4($t0)
/* 1D508 8001C908 8C690000 */  lw         $t1, ($v1)
/* 1D50C 8001C90C 3C0EF518 */  lui        $t6, 0xf518
/* 1D510 8001C910 00073C00 */  sll        $a3, $a3, 0x10
/* 1D514 8001C914 25390008 */  addiu      $t9, $t1, 8
/* 1D518 8001C918 AC790000 */  sw         $t9, ($v1)
/* 1D51C 8001C91C AD2F0004 */  sw         $t7, 4($t1)
/* 1D520 8001C920 AD2E0000 */  sw         $t6, ($t1)
/* 1D524 8001C924 8C6A0000 */  lw         $t2, ($v1)
/* 1D528 8001C928 3C19E600 */  lui        $t9, 0xe600
/* 1D52C 8001C92C 3C0FF300 */  lui        $t7, 0xf300
/* 1D530 8001C930 25580008 */  addiu      $t8, $t2, 8
/* 1D534 8001C934 AC780000 */  sw         $t8, ($v1)
/* 1D538 8001C938 AD400004 */  sw         $zero, 4($t2)
/* 1D53C 8001C93C AD590000 */  sw         $t9, ($t2)
/* 1D540 8001C940 8C7F0000 */  lw         $ra, ($v1)
/* 1D544 8001C944 00073C03 */  sra        $a3, $a3, 0x10
/* 1D548 8001C948 00063400 */  sll        $a2, $a2, 0x10
/* 1D54C 8001C94C 27EE0008 */  addiu      $t6, $ra, 8
/* 1D550 8001C950 AC6E0000 */  sw         $t6, ($v1)
/* 1D554 8001C954 AFEF0000 */  sw         $t7, ($ra)
/* 1D558 8001C958 87B80046 */  lh         $t8, 0x46($sp)
/* 1D55C 8001C95C 87A20046 */  lh         $v0, 0x46($sp)
/* 1D560 8001C960 00052C00 */  sll        $a1, $a1, 0x10
/* 1D564 8001C964 03070019 */  multu      $t8, $a3
/* 1D568 8001C968 00042400 */  sll        $a0, $a0, 0x10
/* 1D56C 8001C96C 00042403 */  sra        $a0, $a0, 0x10
/* 1D570 8001C970 00052C03 */  sra        $a1, $a1, 0x10
/* 1D574 8001C974 00063403 */  sra        $a2, $a2, 0x10
/* 1D578 8001C978 240C07FF */  addiu      $t4, $zero, 0x7ff
/* 1D57C 8001C97C 00021080 */  sll        $v0, $v0, 2
/* 1D580 8001C980 00005812 */  mflo       $t3
/* 1D584 8001C984 256BFFFF */  addiu      $t3, $t3, -1
/* 1D588 8001C988 296107FF */  slti       $at, $t3, 0x7ff
/* 1D58C 8001C98C 10200003 */  beqz       $at, .L8001C99C
/* 1D590 8001C990 00000000 */   nop       
/* 1D594 8001C994 10000001 */  b          .L8001C99C
/* 1D598 8001C998 01606025 */   or        $t4, $t3, $zero
.L8001C99C:
/* 1D59C 8001C99C 04410002 */  bgez       $v0, .L8001C9A8
/* 1D5A0 8001C9A0 00400821 */   addu      $at, $v0, $zero
/* 1D5A4 8001C9A4 24410007 */  addiu      $at, $v0, 7
.L8001C9A8:
/* 1D5A8 8001C9A8 000110C3 */  sra        $v0, $at, 3
/* 1D5AC 8001C9AC 1C400003 */  bgtz       $v0, .L8001C9BC
/* 1D5B0 8001C9B0 00406825 */   or        $t5, $v0, $zero
/* 1D5B4 8001C9B4 10000001 */  b          .L8001C9BC
/* 1D5B8 8001C9B8 240D0001 */   addiu     $t5, $zero, 1
.L8001C9BC:
/* 1D5BC 8001C9BC 1C400003 */  bgtz       $v0, .L8001C9CC
/* 1D5C0 8001C9C0 25B907FF */   addiu     $t9, $t5, 0x7ff
/* 1D5C4 8001C9C4 10000002 */  b          .L8001C9D0
/* 1D5C8 8001C9C8 240B0001 */   addiu     $t3, $zero, 1
.L8001C9CC:
/* 1D5CC 8001C9CC 00405825 */  or         $t3, $v0, $zero
.L8001C9D0:
/* 1D5D0 8001C9D0 032B001A */  div        $zero, $t9, $t3
/* 1D5D4 8001C9D4 15600002 */  bnez       $t3, .L8001C9E0
/* 1D5D8 8001C9D8 00000000 */   nop       
/* 1D5DC 8001C9DC 0007000D */  break      7
.L8001C9E0:
/* 1D5E0 8001C9E0 2401FFFF */   addiu     $at, $zero, -1
/* 1D5E4 8001C9E4 15610004 */  bne        $t3, $at, .L8001C9F8
/* 1D5E8 8001C9E8 3C018000 */   lui       $at, 0x8000
/* 1D5EC 8001C9EC 17210002 */  bne        $t9, $at, .L8001C9F8
/* 1D5F0 8001C9F0 00000000 */   nop       
/* 1D5F4 8001C9F4 0006000D */  break      6
.L8001C9F8:
/* 1D5F8 8001C9F8 00007012 */   mflo      $t6
/* 1D5FC 8001C9FC 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 1D600 8001CA00 3C010700 */  lui        $at, 0x700
/* 1D604 8001CA04 31990FFF */  andi       $t9, $t4, 0xfff
/* 1D608 8001CA08 00197300 */  sll        $t6, $t9, 0xc
/* 1D60C 8001CA0C 01E1C025 */  or         $t8, $t7, $at
/* 1D610 8001CA10 030E7825 */  or         $t7, $t8, $t6
/* 1D614 8001CA14 AFEF0004 */  sw         $t7, 4($ra)
/* 1D618 8001CA18 8C620000 */  lw         $v0, ($v1)
/* 1D61C 8001CA1C 3C18E700 */  lui        $t8, 0xe700
/* 1D620 8001CA20 3C01F518 */  lui        $at, 0xf518
/* 1D624 8001CA24 24590008 */  addiu      $t9, $v0, 8
/* 1D628 8001CA28 AC790000 */  sw         $t9, ($v1)
/* 1D62C 8001CA2C AC400004 */  sw         $zero, 4($v0)
/* 1D630 8001CA30 AC580000 */  sw         $t8, ($v0)
/* 1D634 8001CA34 87AF0046 */  lh         $t7, 0x46($sp)
/* 1D638 8001CA38 8C620000 */  lw         $v0, ($v1)
/* 1D63C 8001CA3C 000FC840 */  sll        $t9, $t7, 1
/* 1D640 8001CA40 244E0008 */  addiu      $t6, $v0, 8
/* 1D644 8001CA44 AC6E0000 */  sw         $t6, ($v1)
/* 1D648 8001CA48 27380007 */  addiu      $t8, $t9, 7
/* 1D64C 8001CA4C 001870C3 */  sra        $t6, $t8, 3
/* 1D650 8001CA50 31CF01FF */  andi       $t7, $t6, 0x1ff
/* 1D654 8001CA54 000FCA40 */  sll        $t9, $t7, 9
/* 1D658 8001CA58 3C0E0008 */  lui        $t6, 8
/* 1D65C 8001CA5C 35CE0200 */  ori        $t6, $t6, 0x200
/* 1D660 8001CA60 0321C025 */  or         $t8, $t9, $at
/* 1D664 8001CA64 AC580000 */  sw         $t8, ($v0)
/* 1D668 8001CA68 AC4E0004 */  sw         $t6, 4($v0)
/* 1D66C 8001CA6C 8C620000 */  lw         $v0, ($v1)
/* 1D670 8001CA70 3C19F200 */  lui        $t9, 0xf200
/* 1D674 8001CA74 244F0008 */  addiu      $t7, $v0, 8
/* 1D678 8001CA78 AC6F0000 */  sw         $t7, ($v1)
/* 1D67C 8001CA7C AC590000 */  sw         $t9, ($v0)
/* 1D680 8001CA80 87B80046 */  lh         $t8, 0x46($sp)
/* 1D684 8001CA84 270EFFFF */  addiu      $t6, $t8, -1
/* 1D688 8001CA88 000E7880 */  sll        $t7, $t6, 2
/* 1D68C 8001CA8C 31F90FFF */  andi       $t9, $t7, 0xfff
/* 1D690 8001CA90 24EEFFFF */  addiu      $t6, $a3, -1
/* 1D694 8001CA94 000E7880 */  sll        $t7, $t6, 2
/* 1D698 8001CA98 0019C300 */  sll        $t8, $t9, 0xc
/* 1D69C 8001CA9C 31F90FFF */  andi       $t9, $t7, 0xfff
/* 1D6A0 8001CAA0 03197025 */  or         $t6, $t8, $t9
/* 1D6A4 8001CAA4 AC4E0004 */  sw         $t6, 4($v0)
/* 1D6A8 8001CAA8 8FB90048 */  lw         $t9, 0x48($sp)
/* 1D6AC 8001CAAC 24180400 */  addiu      $t8, $zero, 0x400
/* 1D6B0 8001CAB0 240F0400 */  addiu      $t7, $zero, 0x400
/* 1D6B4 8001CAB4 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1D6B8 8001CAB8 AFB8001C */  sw         $t8, 0x1c($sp)
/* 1D6BC 8001CABC AFA00014 */  sw         $zero, 0x14($sp)
/* 1D6C0 8001CAC0 AFA00010 */  sw         $zero, 0x10($sp)
/* 1D6C4 8001CAC4 0C0070CC */  jal        func_8001C330
/* 1D6C8 8001CAC8 AFB90020 */   sw        $t9, 0x20($sp)
/* 1D6CC 8001CACC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1D6D0 8001CAD0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1D6D4 8001CAD4 03E00008 */  jr         $ra
/* 1D6D8 8001CAD8 00000000 */   nop       

glabel func_8001CADC
/* 1D6DC 8001CADC 3C03800A */  lui        $v1, 0x800a
/* 1D6E0 8001CAE0 24637420 */  addiu      $v1, $v1, 0x7420
/* 1D6E4 8001CAE4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1D6E8 8001CAE8 8C680000 */  lw         $t0, ($v1)
/* 1D6EC 8001CAEC AFBF002C */  sw         $ra, 0x2c($sp)
/* 1D6F0 8001CAF0 AFA40040 */  sw         $a0, 0x40($sp)
/* 1D6F4 8001CAF4 250E0008 */  addiu      $t6, $t0, 8
/* 1D6F8 8001CAF8 AFA50044 */  sw         $a1, 0x44($sp)
/* 1D6FC 8001CAFC AFA60048 */  sw         $a2, 0x48($sp)
/* 1D700 8001CB00 AFA7004C */  sw         $a3, 0x4c($sp)
/* 1D704 8001CB04 AC6E0000 */  sw         $t6, ($v1)
/* 1D708 8001CB08 3C0FFD70 */  lui        $t7, 0xfd70
/* 1D70C 8001CB0C AD0F0000 */  sw         $t7, ($t0)
/* 1D710 8001CB10 8FB80050 */  lw         $t8, 0x50($sp)
/* 1D714 8001CB14 3C0F0708 */  lui        $t7, 0x708
/* 1D718 8001CB18 35EF0200 */  ori        $t7, $t7, 0x200
/* 1D71C 8001CB1C AD180004 */  sw         $t8, 4($t0)
/* 1D720 8001CB20 8C690000 */  lw         $t1, ($v1)
/* 1D724 8001CB24 3C0EF570 */  lui        $t6, 0xf570
/* 1D728 8001CB28 00073C00 */  sll        $a3, $a3, 0x10
/* 1D72C 8001CB2C 25390008 */  addiu      $t9, $t1, 8
/* 1D730 8001CB30 AC790000 */  sw         $t9, ($v1)
/* 1D734 8001CB34 AD2F0004 */  sw         $t7, 4($t1)
/* 1D738 8001CB38 AD2E0000 */  sw         $t6, ($t1)
/* 1D73C 8001CB3C 8C6A0000 */  lw         $t2, ($v1)
/* 1D740 8001CB40 3C19E600 */  lui        $t9, 0xe600
/* 1D744 8001CB44 3C0FF300 */  lui        $t7, 0xf300
/* 1D748 8001CB48 25580008 */  addiu      $t8, $t2, 8
/* 1D74C 8001CB4C AC780000 */  sw         $t8, ($v1)
/* 1D750 8001CB50 AD400004 */  sw         $zero, 4($t2)
/* 1D754 8001CB54 AD590000 */  sw         $t9, ($t2)
/* 1D758 8001CB58 8C780000 */  lw         $t8, ($v1)
/* 1D75C 8001CB5C 00073C03 */  sra        $a3, $a3, 0x10
/* 1D760 8001CB60 00063400 */  sll        $a2, $a2, 0x10
/* 1D764 8001CB64 270E0008 */  addiu      $t6, $t8, 8
/* 1D768 8001CB68 AC6E0000 */  sw         $t6, ($v1)
/* 1D76C 8001CB6C AFB80030 */  sw         $t8, 0x30($sp)
/* 1D770 8001CB70 AF0F0000 */  sw         $t7, ($t8)
/* 1D774 8001CB74 87B90056 */  lh         $t9, 0x56($sp)
/* 1D778 8001CB78 00052C00 */  sll        $a1, $a1, 0x10
/* 1D77C 8001CB7C 00042400 */  sll        $a0, $a0, 0x10
/* 1D780 8001CB80 03270019 */  multu      $t9, $a3
/* 1D784 8001CB84 00042403 */  sra        $a0, $a0, 0x10
/* 1D788 8001CB88 00052C03 */  sra        $a1, $a1, 0x10
/* 1D78C 8001CB8C 00063403 */  sra        $a2, $a2, 0x10
/* 1D790 8001CB90 87AD0056 */  lh         $t5, 0x56($sp)
/* 1D794 8001CB94 240C07FF */  addiu      $t4, $zero, 0x7ff
/* 1D798 8001CB98 00005812 */  mflo       $t3
/* 1D79C 8001CB9C 256B0001 */  addiu      $t3, $t3, 1
/* 1D7A0 8001CBA0 000B5843 */  sra        $t3, $t3, 1
/* 1D7A4 8001CBA4 256BFFFF */  addiu      $t3, $t3, -1
/* 1D7A8 8001CBA8 296107FF */  slti       $at, $t3, 0x7ff
/* 1D7AC 8001CBAC 10200003 */  beqz       $at, .L8001CBBC
/* 1D7B0 8001CBB0 00000000 */   nop       
/* 1D7B4 8001CBB4 10000001 */  b          .L8001CBBC
/* 1D7B8 8001CBB8 01606025 */   or        $t4, $t3, $zero
.L8001CBBC:
/* 1D7BC 8001CBBC 05A10003 */  bgez       $t5, .L8001CBCC
/* 1D7C0 8001CBC0 000D10C3 */   sra       $v0, $t5, 3
/* 1D7C4 8001CBC4 25A10007 */  addiu      $at, $t5, 7
/* 1D7C8 8001CBC8 000110C3 */  sra        $v0, $at, 3
.L8001CBCC:
/* 1D7CC 8001CBCC 1C400003 */  bgtz       $v0, .L8001CBDC
/* 1D7D0 8001CBD0 0040F825 */   or        $ra, $v0, $zero
/* 1D7D4 8001CBD4 10000001 */  b          .L8001CBDC
/* 1D7D8 8001CBD8 241F0001 */   addiu     $ra, $zero, 1
.L8001CBDC:
/* 1D7DC 8001CBDC 1C400003 */  bgtz       $v0, .L8001CBEC
/* 1D7E0 8001CBE0 27EE07FF */   addiu     $t6, $ra, 0x7ff
/* 1D7E4 8001CBE4 10000002 */  b          .L8001CBF0
/* 1D7E8 8001CBE8 240B0001 */   addiu     $t3, $zero, 1
.L8001CBEC:
/* 1D7EC 8001CBEC 00405825 */  or         $t3, $v0, $zero
.L8001CBF0:
/* 1D7F0 8001CBF0 01CB001A */  div        $zero, $t6, $t3
/* 1D7F4 8001CBF4 15600002 */  bnez       $t3, .L8001CC00
/* 1D7F8 8001CBF8 00000000 */   nop       
/* 1D7FC 8001CBFC 0007000D */  break      7
.L8001CC00:
/* 1D800 8001CC00 2401FFFF */   addiu     $at, $zero, -1
/* 1D804 8001CC04 15610004 */  bne        $t3, $at, .L8001CC18
/* 1D808 8001CC08 3C018000 */   lui       $at, 0x8000
/* 1D80C 8001CC0C 15C10002 */  bne        $t6, $at, .L8001CC18
/* 1D810 8001CC10 00000000 */   nop       
/* 1D814 8001CC14 0006000D */  break      6
.L8001CC18:
/* 1D818 8001CC18 00007812 */   mflo      $t7
/* 1D81C 8001CC1C 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1D820 8001CC20 318E0FFF */  andi       $t6, $t4, 0xfff
/* 1D824 8001CC24 000E7B00 */  sll        $t7, $t6, 0xc
/* 1D828 8001CC28 8FAE0030 */  lw         $t6, 0x30($sp)
/* 1D82C 8001CC2C 3C010700 */  lui        $at, 0x700
/* 1D830 8001CC30 0301C825 */  or         $t9, $t8, $at
/* 1D834 8001CC34 032FC025 */  or         $t8, $t9, $t7
/* 1D838 8001CC38 ADD80004 */  sw         $t8, 4($t6)
/* 1D83C 8001CC3C 8C620000 */  lw         $v0, ($v1)
/* 1D840 8001CC40 3C0FE700 */  lui        $t7, 0xe700
/* 1D844 8001CC44 25AE0007 */  addiu      $t6, $t5, 7
/* 1D848 8001CC48 24590008 */  addiu      $t9, $v0, 8
/* 1D84C 8001CC4C AC790000 */  sw         $t9, ($v1)
/* 1D850 8001CC50 AC400004 */  sw         $zero, 4($v0)
/* 1D854 8001CC54 AC4F0000 */  sw         $t7, ($v0)
/* 1D858 8001CC58 8C620000 */  lw         $v0, ($v1)
/* 1D85C 8001CC5C 000EC8C3 */  sra        $t9, $t6, 3
/* 1D860 8001CC60 332F01FF */  andi       $t7, $t9, 0x1ff
/* 1D864 8001CC64 24580008 */  addiu      $t8, $v0, 8
/* 1D868 8001CC68 AC780000 */  sw         $t8, ($v1)
/* 1D86C 8001CC6C 000FC240 */  sll        $t8, $t7, 9
/* 1D870 8001CC70 3C190008 */  lui        $t9, 8
/* 1D874 8001CC74 3C01F568 */  lui        $at, 0xf568
/* 1D878 8001CC78 03017025 */  or         $t6, $t8, $at
/* 1D87C 8001CC7C 37390200 */  ori        $t9, $t9, 0x200
/* 1D880 8001CC80 AC590004 */  sw         $t9, 4($v0)
/* 1D884 8001CC84 AC4E0000 */  sw         $t6, ($v0)
/* 1D888 8001CC88 8C620000 */  lw         $v0, ($v1)
/* 1D88C 8001CC8C 3C18F200 */  lui        $t8, 0xf200
/* 1D890 8001CC90 244F0008 */  addiu      $t7, $v0, 8
/* 1D894 8001CC94 AC6F0000 */  sw         $t7, ($v1)
/* 1D898 8001CC98 AC580000 */  sw         $t8, ($v0)
/* 1D89C 8001CC9C 87AE0056 */  lh         $t6, 0x56($sp)
/* 1D8A0 8001CCA0 25D9FFFF */  addiu      $t9, $t6, -1
/* 1D8A4 8001CCA4 00197880 */  sll        $t7, $t9, 2
/* 1D8A8 8001CCA8 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1D8AC 8001CCAC 24F9FFFF */  addiu      $t9, $a3, -1
/* 1D8B0 8001CCB0 00197880 */  sll        $t7, $t9, 2
/* 1D8B4 8001CCB4 00187300 */  sll        $t6, $t8, 0xc
/* 1D8B8 8001CCB8 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1D8BC 8001CCBC 01D8C825 */  or         $t9, $t6, $t8
/* 1D8C0 8001CCC0 AC590004 */  sw         $t9, 4($v0)
/* 1D8C4 8001CCC4 8FB80058 */  lw         $t8, 0x58($sp)
/* 1D8C8 8001CCC8 240E0400 */  addiu      $t6, $zero, 0x400
/* 1D8CC 8001CCCC 240F0400 */  addiu      $t7, $zero, 0x400
/* 1D8D0 8001CCD0 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1D8D4 8001CCD4 AFAE001C */  sw         $t6, 0x1c($sp)
/* 1D8D8 8001CCD8 AFA00014 */  sw         $zero, 0x14($sp)
/* 1D8DC 8001CCDC AFA00010 */  sw         $zero, 0x10($sp)
/* 1D8E0 8001CCE0 0C0070CC */  jal        func_8001C330
/* 1D8E4 8001CCE4 AFB80020 */   sw        $t8, 0x20($sp)
/* 1D8E8 8001CCE8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1D8EC 8001CCEC 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1D8F0 8001CCF0 03E00008 */  jr         $ra
/* 1D8F4 8001CCF4 00000000 */   nop       

glabel func_8001CCF8
/* 1D8F8 8001CCF8 3C03800A */  lui        $v1, 0x800a
/* 1D8FC 8001CCFC 24637420 */  addiu      $v1, $v1, 0x7420
/* 1D900 8001CD00 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1D904 8001CD04 8C680000 */  lw         $t0, ($v1)
/* 1D908 8001CD08 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1D90C 8001CD0C AFA40040 */  sw         $a0, 0x40($sp)
/* 1D910 8001CD10 250E0008 */  addiu      $t6, $t0, 8
/* 1D914 8001CD14 AFA50044 */  sw         $a1, 0x44($sp)
/* 1D918 8001CD18 AFA60048 */  sw         $a2, 0x48($sp)
/* 1D91C 8001CD1C AFA7004C */  sw         $a3, 0x4c($sp)
/* 1D920 8001CD20 AC6E0000 */  sw         $t6, ($v1)
/* 1D924 8001CD24 3C0FFD70 */  lui        $t7, 0xfd70
/* 1D928 8001CD28 AD0F0000 */  sw         $t7, ($t0)
/* 1D92C 8001CD2C 8FB80050 */  lw         $t8, 0x50($sp)
/* 1D930 8001CD30 3C0F0708 */  lui        $t7, 0x708
/* 1D934 8001CD34 35EF0200 */  ori        $t7, $t7, 0x200
/* 1D938 8001CD38 AD180004 */  sw         $t8, 4($t0)
/* 1D93C 8001CD3C 8C690000 */  lw         $t1, ($v1)
/* 1D940 8001CD40 3C0EF570 */  lui        $t6, 0xf570
/* 1D944 8001CD44 00073C00 */  sll        $a3, $a3, 0x10
/* 1D948 8001CD48 25390008 */  addiu      $t9, $t1, 8
/* 1D94C 8001CD4C AC790000 */  sw         $t9, ($v1)
/* 1D950 8001CD50 AD2F0004 */  sw         $t7, 4($t1)
/* 1D954 8001CD54 AD2E0000 */  sw         $t6, ($t1)
/* 1D958 8001CD58 8C6A0000 */  lw         $t2, ($v1)
/* 1D95C 8001CD5C 3C19E600 */  lui        $t9, 0xe600
/* 1D960 8001CD60 3C0FF300 */  lui        $t7, 0xf300
/* 1D964 8001CD64 25580008 */  addiu      $t8, $t2, 8
/* 1D968 8001CD68 AC780000 */  sw         $t8, ($v1)
/* 1D96C 8001CD6C AD400004 */  sw         $zero, 4($t2)
/* 1D970 8001CD70 AD590000 */  sw         $t9, ($t2)
/* 1D974 8001CD74 8C780000 */  lw         $t8, ($v1)
/* 1D978 8001CD78 00073C03 */  sra        $a3, $a3, 0x10
/* 1D97C 8001CD7C 00063400 */  sll        $a2, $a2, 0x10
/* 1D980 8001CD80 270E0008 */  addiu      $t6, $t8, 8
/* 1D984 8001CD84 AC6E0000 */  sw         $t6, ($v1)
/* 1D988 8001CD88 AFB80030 */  sw         $t8, 0x30($sp)
/* 1D98C 8001CD8C AF0F0000 */  sw         $t7, ($t8)
/* 1D990 8001CD90 87B90056 */  lh         $t9, 0x56($sp)
/* 1D994 8001CD94 87AD0056 */  lh         $t5, 0x56($sp)
/* 1D998 8001CD98 00052C00 */  sll        $a1, $a1, 0x10
/* 1D99C 8001CD9C 03270019 */  multu      $t9, $a3
/* 1D9A0 8001CDA0 00042400 */  sll        $a0, $a0, 0x10
/* 1D9A4 8001CDA4 00042403 */  sra        $a0, $a0, 0x10
/* 1D9A8 8001CDA8 00052C03 */  sra        $a1, $a1, 0x10
/* 1D9AC 8001CDAC 00063403 */  sra        $a2, $a2, 0x10
/* 1D9B0 8001CDB0 240C07FF */  addiu      $t4, $zero, 0x7ff
/* 1D9B4 8001CDB4 000D6840 */  sll        $t5, $t5, 1
/* 1D9B8 8001CDB8 00005812 */  mflo       $t3
/* 1D9BC 8001CDBC 256BFFFF */  addiu      $t3, $t3, -1
/* 1D9C0 8001CDC0 296107FF */  slti       $at, $t3, 0x7ff
/* 1D9C4 8001CDC4 10200003 */  beqz       $at, .L8001CDD4
/* 1D9C8 8001CDC8 00000000 */   nop       
/* 1D9CC 8001CDCC 10000001 */  b          .L8001CDD4
/* 1D9D0 8001CDD0 01606025 */   or        $t4, $t3, $zero
.L8001CDD4:
/* 1D9D4 8001CDD4 05A10003 */  bgez       $t5, .L8001CDE4
/* 1D9D8 8001CDD8 000D10C3 */   sra       $v0, $t5, 3
/* 1D9DC 8001CDDC 25A10007 */  addiu      $at, $t5, 7
/* 1D9E0 8001CDE0 000110C3 */  sra        $v0, $at, 3
.L8001CDE4:
/* 1D9E4 8001CDE4 1C400003 */  bgtz       $v0, .L8001CDF4
/* 1D9E8 8001CDE8 0040F825 */   or        $ra, $v0, $zero
/* 1D9EC 8001CDEC 10000001 */  b          .L8001CDF4
/* 1D9F0 8001CDF0 241F0001 */   addiu     $ra, $zero, 1
.L8001CDF4:
/* 1D9F4 8001CDF4 1C400003 */  bgtz       $v0, .L8001CE04
/* 1D9F8 8001CDF8 27EE07FF */   addiu     $t6, $ra, 0x7ff
/* 1D9FC 8001CDFC 10000002 */  b          .L8001CE08
/* 1DA00 8001CE00 240B0001 */   addiu     $t3, $zero, 1
.L8001CE04:
/* 1DA04 8001CE04 00405825 */  or         $t3, $v0, $zero
.L8001CE08:
/* 1DA08 8001CE08 01CB001A */  div        $zero, $t6, $t3
/* 1DA0C 8001CE0C 15600002 */  bnez       $t3, .L8001CE18
/* 1DA10 8001CE10 00000000 */   nop       
/* 1DA14 8001CE14 0007000D */  break      7
.L8001CE18:
/* 1DA18 8001CE18 2401FFFF */   addiu     $at, $zero, -1
/* 1DA1C 8001CE1C 15610004 */  bne        $t3, $at, .L8001CE30
/* 1DA20 8001CE20 3C018000 */   lui       $at, 0x8000
/* 1DA24 8001CE24 15C10002 */  bne        $t6, $at, .L8001CE30
/* 1DA28 8001CE28 00000000 */   nop       
/* 1DA2C 8001CE2C 0006000D */  break      6
.L8001CE30:
/* 1DA30 8001CE30 00007812 */   mflo      $t7
/* 1DA34 8001CE34 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1DA38 8001CE38 318E0FFF */  andi       $t6, $t4, 0xfff
/* 1DA3C 8001CE3C 000E7B00 */  sll        $t7, $t6, 0xc
/* 1DA40 8001CE40 8FAE0030 */  lw         $t6, 0x30($sp)
/* 1DA44 8001CE44 3C010700 */  lui        $at, 0x700
/* 1DA48 8001CE48 0301C825 */  or         $t9, $t8, $at
/* 1DA4C 8001CE4C 032FC025 */  or         $t8, $t9, $t7
/* 1DA50 8001CE50 ADD80004 */  sw         $t8, 4($t6)
/* 1DA54 8001CE54 8C620000 */  lw         $v0, ($v1)
/* 1DA58 8001CE58 3C0FE700 */  lui        $t7, 0xe700
/* 1DA5C 8001CE5C 25AE0007 */  addiu      $t6, $t5, 7
/* 1DA60 8001CE60 24590008 */  addiu      $t9, $v0, 8
/* 1DA64 8001CE64 AC790000 */  sw         $t9, ($v1)
/* 1DA68 8001CE68 AC400004 */  sw         $zero, 4($v0)
/* 1DA6C 8001CE6C AC4F0000 */  sw         $t7, ($v0)
/* 1DA70 8001CE70 8C620000 */  lw         $v0, ($v1)
/* 1DA74 8001CE74 000EC8C3 */  sra        $t9, $t6, 3
/* 1DA78 8001CE78 332F01FF */  andi       $t7, $t9, 0x1ff
/* 1DA7C 8001CE7C 24580008 */  addiu      $t8, $v0, 8
/* 1DA80 8001CE80 AC780000 */  sw         $t8, ($v1)
/* 1DA84 8001CE84 000FC240 */  sll        $t8, $t7, 9
/* 1DA88 8001CE88 3C190008 */  lui        $t9, 8
/* 1DA8C 8001CE8C 3C01F570 */  lui        $at, 0xf570
/* 1DA90 8001CE90 03017025 */  or         $t6, $t8, $at
/* 1DA94 8001CE94 37390200 */  ori        $t9, $t9, 0x200
/* 1DA98 8001CE98 AC590004 */  sw         $t9, 4($v0)
/* 1DA9C 8001CE9C AC4E0000 */  sw         $t6, ($v0)
/* 1DAA0 8001CEA0 8C620000 */  lw         $v0, ($v1)
/* 1DAA4 8001CEA4 3C18F200 */  lui        $t8, 0xf200
/* 1DAA8 8001CEA8 244F0008 */  addiu      $t7, $v0, 8
/* 1DAAC 8001CEAC AC6F0000 */  sw         $t7, ($v1)
/* 1DAB0 8001CEB0 AC580000 */  sw         $t8, ($v0)
/* 1DAB4 8001CEB4 87AE0056 */  lh         $t6, 0x56($sp)
/* 1DAB8 8001CEB8 25D9FFFF */  addiu      $t9, $t6, -1
/* 1DABC 8001CEBC 00197880 */  sll        $t7, $t9, 2
/* 1DAC0 8001CEC0 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1DAC4 8001CEC4 24F9FFFF */  addiu      $t9, $a3, -1
/* 1DAC8 8001CEC8 00197880 */  sll        $t7, $t9, 2
/* 1DACC 8001CECC 00187300 */  sll        $t6, $t8, 0xc
/* 1DAD0 8001CED0 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1DAD4 8001CED4 01D8C825 */  or         $t9, $t6, $t8
/* 1DAD8 8001CED8 AC590004 */  sw         $t9, 4($v0)
/* 1DADC 8001CEDC 8FB80058 */  lw         $t8, 0x58($sp)
/* 1DAE0 8001CEE0 240E0400 */  addiu      $t6, $zero, 0x400
/* 1DAE4 8001CEE4 240F0400 */  addiu      $t7, $zero, 0x400
/* 1DAE8 8001CEE8 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1DAEC 8001CEEC AFAE001C */  sw         $t6, 0x1c($sp)
/* 1DAF0 8001CEF0 AFA00014 */  sw         $zero, 0x14($sp)
/* 1DAF4 8001CEF4 AFA00010 */  sw         $zero, 0x10($sp)
/* 1DAF8 8001CEF8 0C0070CC */  jal        func_8001C330
/* 1DAFC 8001CEFC AFB80020 */   sw        $t8, 0x20($sp)
/* 1DB00 8001CF00 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1DB04 8001CF04 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1DB08 8001CF08 03E00008 */  jr         $ra
/* 1DB0C 8001CF0C 00000000 */   nop       

glabel func_8001CF10
/* 1DB10 8001CF10 3C03800A */  lui        $v1, 0x800a
/* 1DB14 8001CF14 24637420 */  addiu      $v1, $v1, 0x7420
/* 1DB18 8001CF18 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1DB1C 8001CF1C 8C680000 */  lw         $t0, ($v1)
/* 1DB20 8001CF20 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1DB24 8001CF24 AFA40030 */  sw         $a0, 0x30($sp)
/* 1DB28 8001CF28 250E0008 */  addiu      $t6, $t0, 8
/* 1DB2C 8001CF2C AFA50034 */  sw         $a1, 0x34($sp)
/* 1DB30 8001CF30 AFA60038 */  sw         $a2, 0x38($sp)
/* 1DB34 8001CF34 AFA7003C */  sw         $a3, 0x3c($sp)
/* 1DB38 8001CF38 AC6E0000 */  sw         $t6, ($v1)
/* 1DB3C 8001CF3C 3C0FFD90 */  lui        $t7, 0xfd90
/* 1DB40 8001CF40 AD0F0000 */  sw         $t7, ($t0)
/* 1DB44 8001CF44 8FB80040 */  lw         $t8, 0x40($sp)
/* 1DB48 8001CF48 3C0F0708 */  lui        $t7, 0x708
/* 1DB4C 8001CF4C 35EF0200 */  ori        $t7, $t7, 0x200
/* 1DB50 8001CF50 AD180004 */  sw         $t8, 4($t0)
/* 1DB54 8001CF54 8C690000 */  lw         $t1, ($v1)
/* 1DB58 8001CF58 3C0EF590 */  lui        $t6, 0xf590
/* 1DB5C 8001CF5C 00073C00 */  sll        $a3, $a3, 0x10
/* 1DB60 8001CF60 25390008 */  addiu      $t9, $t1, 8
/* 1DB64 8001CF64 AC790000 */  sw         $t9, ($v1)
/* 1DB68 8001CF68 AD2F0004 */  sw         $t7, 4($t1)
/* 1DB6C 8001CF6C AD2E0000 */  sw         $t6, ($t1)
/* 1DB70 8001CF70 8C6A0000 */  lw         $t2, ($v1)
/* 1DB74 8001CF74 3C19E600 */  lui        $t9, 0xe600
/* 1DB78 8001CF78 3C0FF300 */  lui        $t7, 0xf300
/* 1DB7C 8001CF7C 25580008 */  addiu      $t8, $t2, 8
/* 1DB80 8001CF80 AC780000 */  sw         $t8, ($v1)
/* 1DB84 8001CF84 AD400004 */  sw         $zero, 4($t2)
/* 1DB88 8001CF88 AD590000 */  sw         $t9, ($t2)
/* 1DB8C 8001CF8C 8C7F0000 */  lw         $ra, ($v1)
/* 1DB90 8001CF90 00073C03 */  sra        $a3, $a3, 0x10
/* 1DB94 8001CF94 00063400 */  sll        $a2, $a2, 0x10
/* 1DB98 8001CF98 27EE0008 */  addiu      $t6, $ra, 8
/* 1DB9C 8001CF9C AC6E0000 */  sw         $t6, ($v1)
/* 1DBA0 8001CFA0 AFEF0000 */  sw         $t7, ($ra)
/* 1DBA4 8001CFA4 87B80046 */  lh         $t8, 0x46($sp)
/* 1DBA8 8001CFA8 00052C00 */  sll        $a1, $a1, 0x10
/* 1DBAC 8001CFAC 00042400 */  sll        $a0, $a0, 0x10
/* 1DBB0 8001CFB0 03070019 */  multu      $t8, $a3
/* 1DBB4 8001CFB4 00042403 */  sra        $a0, $a0, 0x10
/* 1DBB8 8001CFB8 00052C03 */  sra        $a1, $a1, 0x10
/* 1DBBC 8001CFBC 00063403 */  sra        $a2, $a2, 0x10
/* 1DBC0 8001CFC0 87A20046 */  lh         $v0, 0x46($sp)
/* 1DBC4 8001CFC4 240C07FF */  addiu      $t4, $zero, 0x7ff
/* 1DBC8 8001CFC8 00005812 */  mflo       $t3
/* 1DBCC 8001CFCC 256B0003 */  addiu      $t3, $t3, 3
/* 1DBD0 8001CFD0 000B5883 */  sra        $t3, $t3, 2
/* 1DBD4 8001CFD4 256BFFFF */  addiu      $t3, $t3, -1
/* 1DBD8 8001CFD8 296107FF */  slti       $at, $t3, 0x7ff
/* 1DBDC 8001CFDC 10200003 */  beqz       $at, .L8001CFEC
/* 1DBE0 8001CFE0 00000000 */   nop       
/* 1DBE4 8001CFE4 10000001 */  b          .L8001CFEC
/* 1DBE8 8001CFE8 01606025 */   or        $t4, $t3, $zero
.L8001CFEC:
/* 1DBEC 8001CFEC 04410002 */  bgez       $v0, .L8001CFF8
/* 1DBF0 8001CFF0 00400821 */   addu      $at, $v0, $zero
/* 1DBF4 8001CFF4 2441000F */  addiu      $at, $v0, 0xf
.L8001CFF8:
/* 1DBF8 8001CFF8 00011103 */  sra        $v0, $at, 4
/* 1DBFC 8001CFFC 1C400003 */  bgtz       $v0, .L8001D00C
/* 1DC00 8001D000 00406825 */   or        $t5, $v0, $zero
/* 1DC04 8001D004 10000001 */  b          .L8001D00C
/* 1DC08 8001D008 240D0001 */   addiu     $t5, $zero, 1
.L8001D00C:
/* 1DC0C 8001D00C 1C400003 */  bgtz       $v0, .L8001D01C
/* 1DC10 8001D010 25B907FF */   addiu     $t9, $t5, 0x7ff
/* 1DC14 8001D014 10000002 */  b          .L8001D020
/* 1DC18 8001D018 240B0001 */   addiu     $t3, $zero, 1
.L8001D01C:
/* 1DC1C 8001D01C 00405825 */  or         $t3, $v0, $zero
.L8001D020:
/* 1DC20 8001D020 032B001A */  div        $zero, $t9, $t3
/* 1DC24 8001D024 15600002 */  bnez       $t3, .L8001D030
/* 1DC28 8001D028 00000000 */   nop       
/* 1DC2C 8001D02C 0007000D */  break      7
.L8001D030:
/* 1DC30 8001D030 2401FFFF */   addiu     $at, $zero, -1
/* 1DC34 8001D034 15610004 */  bne        $t3, $at, .L8001D048
/* 1DC38 8001D038 3C018000 */   lui       $at, 0x8000
/* 1DC3C 8001D03C 17210002 */  bne        $t9, $at, .L8001D048
/* 1DC40 8001D040 00000000 */   nop       
/* 1DC44 8001D044 0006000D */  break      6
.L8001D048:
/* 1DC48 8001D048 00007012 */   mflo      $t6
/* 1DC4C 8001D04C 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 1DC50 8001D050 3C010700 */  lui        $at, 0x700
/* 1DC54 8001D054 31990FFF */  andi       $t9, $t4, 0xfff
/* 1DC58 8001D058 00197300 */  sll        $t6, $t9, 0xc
/* 1DC5C 8001D05C 01E1C025 */  or         $t8, $t7, $at
/* 1DC60 8001D060 030E7825 */  or         $t7, $t8, $t6
/* 1DC64 8001D064 AFEF0004 */  sw         $t7, 4($ra)
/* 1DC68 8001D068 8C620000 */  lw         $v0, ($v1)
/* 1DC6C 8001D06C 3C18E700 */  lui        $t8, 0xe700
/* 1DC70 8001D070 3C01F580 */  lui        $at, 0xf580
/* 1DC74 8001D074 24590008 */  addiu      $t9, $v0, 8
/* 1DC78 8001D078 AC790000 */  sw         $t9, ($v1)
/* 1DC7C 8001D07C AC400004 */  sw         $zero, 4($v0)
/* 1DC80 8001D080 AC580000 */  sw         $t8, ($v0)
/* 1DC84 8001D084 87AF0046 */  lh         $t7, 0x46($sp)
/* 1DC88 8001D088 8C620000 */  lw         $v0, ($v1)
/* 1DC8C 8001D08C 000FC843 */  sra        $t9, $t7, 1
/* 1DC90 8001D090 244E0008 */  addiu      $t6, $v0, 8
/* 1DC94 8001D094 AC6E0000 */  sw         $t6, ($v1)
/* 1DC98 8001D098 27380007 */  addiu      $t8, $t9, 7
/* 1DC9C 8001D09C 001870C3 */  sra        $t6, $t8, 3
/* 1DCA0 8001D0A0 31CF01FF */  andi       $t7, $t6, 0x1ff
/* 1DCA4 8001D0A4 000FCA40 */  sll        $t9, $t7, 9
/* 1DCA8 8001D0A8 3C0E0008 */  lui        $t6, 8
/* 1DCAC 8001D0AC 35CE0200 */  ori        $t6, $t6, 0x200
/* 1DCB0 8001D0B0 0321C025 */  or         $t8, $t9, $at
/* 1DCB4 8001D0B4 AC580000 */  sw         $t8, ($v0)
/* 1DCB8 8001D0B8 AC4E0004 */  sw         $t6, 4($v0)
/* 1DCBC 8001D0BC 8C620000 */  lw         $v0, ($v1)
/* 1DCC0 8001D0C0 3C19F200 */  lui        $t9, 0xf200
/* 1DCC4 8001D0C4 244F0008 */  addiu      $t7, $v0, 8
/* 1DCC8 8001D0C8 AC6F0000 */  sw         $t7, ($v1)
/* 1DCCC 8001D0CC AC590000 */  sw         $t9, ($v0)
/* 1DCD0 8001D0D0 87B80046 */  lh         $t8, 0x46($sp)
/* 1DCD4 8001D0D4 270EFFFF */  addiu      $t6, $t8, -1
/* 1DCD8 8001D0D8 000E7880 */  sll        $t7, $t6, 2
/* 1DCDC 8001D0DC 31F90FFF */  andi       $t9, $t7, 0xfff
/* 1DCE0 8001D0E0 24EEFFFF */  addiu      $t6, $a3, -1
/* 1DCE4 8001D0E4 000E7880 */  sll        $t7, $t6, 2
/* 1DCE8 8001D0E8 0019C300 */  sll        $t8, $t9, 0xc
/* 1DCEC 8001D0EC 31F90FFF */  andi       $t9, $t7, 0xfff
/* 1DCF0 8001D0F0 03197025 */  or         $t6, $t8, $t9
/* 1DCF4 8001D0F4 AC4E0004 */  sw         $t6, 4($v0)
/* 1DCF8 8001D0F8 8FB90048 */  lw         $t9, 0x48($sp)
/* 1DCFC 8001D0FC 24180400 */  addiu      $t8, $zero, 0x400
/* 1DD00 8001D100 240F0400 */  addiu      $t7, $zero, 0x400
/* 1DD04 8001D104 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1DD08 8001D108 AFB8001C */  sw         $t8, 0x1c($sp)
/* 1DD0C 8001D10C AFA00014 */  sw         $zero, 0x14($sp)
/* 1DD10 8001D110 AFA00010 */  sw         $zero, 0x10($sp)
/* 1DD14 8001D114 0C0070CC */  jal        func_8001C330
/* 1DD18 8001D118 AFB90020 */   sw        $t9, 0x20($sp)
/* 1DD1C 8001D11C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1DD20 8001D120 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1DD24 8001D124 03E00008 */  jr         $ra
/* 1DD28 8001D128 00000000 */   nop       

glabel func_8001D12C
/* 1DD2C 8001D12C 3C03800A */  lui        $v1, 0x800a
/* 1DD30 8001D130 24637420 */  addiu      $v1, $v1, 0x7420
/* 1DD34 8001D134 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1DD38 8001D138 8C680000 */  lw         $t0, ($v1)
/* 1DD3C 8001D13C AFBF002C */  sw         $ra, 0x2c($sp)
/* 1DD40 8001D140 AFA40040 */  sw         $a0, 0x40($sp)
/* 1DD44 8001D144 250E0008 */  addiu      $t6, $t0, 8
/* 1DD48 8001D148 AFA50044 */  sw         $a1, 0x44($sp)
/* 1DD4C 8001D14C AFA60048 */  sw         $a2, 0x48($sp)
/* 1DD50 8001D150 AFA7004C */  sw         $a3, 0x4c($sp)
/* 1DD54 8001D154 AC6E0000 */  sw         $t6, ($v1)
/* 1DD58 8001D158 3C0FFD90 */  lui        $t7, 0xfd90
/* 1DD5C 8001D15C AD0F0000 */  sw         $t7, ($t0)
/* 1DD60 8001D160 8FB80050 */  lw         $t8, 0x50($sp)
/* 1DD64 8001D164 3C0F0708 */  lui        $t7, 0x708
/* 1DD68 8001D168 35EF0200 */  ori        $t7, $t7, 0x200
/* 1DD6C 8001D16C AD180004 */  sw         $t8, 4($t0)
/* 1DD70 8001D170 8C690000 */  lw         $t1, ($v1)
/* 1DD74 8001D174 3C0EF590 */  lui        $t6, 0xf590
/* 1DD78 8001D178 00073C00 */  sll        $a3, $a3, 0x10
/* 1DD7C 8001D17C 25390008 */  addiu      $t9, $t1, 8
/* 1DD80 8001D180 AC790000 */  sw         $t9, ($v1)
/* 1DD84 8001D184 AD2F0004 */  sw         $t7, 4($t1)
/* 1DD88 8001D188 AD2E0000 */  sw         $t6, ($t1)
/* 1DD8C 8001D18C 8C6A0000 */  lw         $t2, ($v1)
/* 1DD90 8001D190 3C19E600 */  lui        $t9, 0xe600
/* 1DD94 8001D194 3C0FF300 */  lui        $t7, 0xf300
/* 1DD98 8001D198 25580008 */  addiu      $t8, $t2, 8
/* 1DD9C 8001D19C AC780000 */  sw         $t8, ($v1)
/* 1DDA0 8001D1A0 AD400004 */  sw         $zero, 4($t2)
/* 1DDA4 8001D1A4 AD590000 */  sw         $t9, ($t2)
/* 1DDA8 8001D1A8 8C780000 */  lw         $t8, ($v1)
/* 1DDAC 8001D1AC 00073C03 */  sra        $a3, $a3, 0x10
/* 1DDB0 8001D1B0 00063400 */  sll        $a2, $a2, 0x10
/* 1DDB4 8001D1B4 270E0008 */  addiu      $t6, $t8, 8
/* 1DDB8 8001D1B8 AC6E0000 */  sw         $t6, ($v1)
/* 1DDBC 8001D1BC AFB80030 */  sw         $t8, 0x30($sp)
/* 1DDC0 8001D1C0 AF0F0000 */  sw         $t7, ($t8)
/* 1DDC4 8001D1C4 87B90056 */  lh         $t9, 0x56($sp)
/* 1DDC8 8001D1C8 00052C00 */  sll        $a1, $a1, 0x10
/* 1DDCC 8001D1CC 00042400 */  sll        $a0, $a0, 0x10
/* 1DDD0 8001D1D0 03270019 */  multu      $t9, $a3
/* 1DDD4 8001D1D4 00042403 */  sra        $a0, $a0, 0x10
/* 1DDD8 8001D1D8 00052C03 */  sra        $a1, $a1, 0x10
/* 1DDDC 8001D1DC 00063403 */  sra        $a2, $a2, 0x10
/* 1DDE0 8001D1E0 87AD0056 */  lh         $t5, 0x56($sp)
/* 1DDE4 8001D1E4 240C07FF */  addiu      $t4, $zero, 0x7ff
/* 1DDE8 8001D1E8 00005812 */  mflo       $t3
/* 1DDEC 8001D1EC 256B0001 */  addiu      $t3, $t3, 1
/* 1DDF0 8001D1F0 000B5843 */  sra        $t3, $t3, 1
/* 1DDF4 8001D1F4 256BFFFF */  addiu      $t3, $t3, -1
/* 1DDF8 8001D1F8 296107FF */  slti       $at, $t3, 0x7ff
/* 1DDFC 8001D1FC 10200003 */  beqz       $at, .L8001D20C
/* 1DE00 8001D200 00000000 */   nop       
/* 1DE04 8001D204 10000001 */  b          .L8001D20C
/* 1DE08 8001D208 01606025 */   or        $t4, $t3, $zero
.L8001D20C:
/* 1DE0C 8001D20C 05A10003 */  bgez       $t5, .L8001D21C
/* 1DE10 8001D210 000D10C3 */   sra       $v0, $t5, 3
/* 1DE14 8001D214 25A10007 */  addiu      $at, $t5, 7
/* 1DE18 8001D218 000110C3 */  sra        $v0, $at, 3
.L8001D21C:
/* 1DE1C 8001D21C 1C400003 */  bgtz       $v0, .L8001D22C
/* 1DE20 8001D220 0040F825 */   or        $ra, $v0, $zero
/* 1DE24 8001D224 10000001 */  b          .L8001D22C
/* 1DE28 8001D228 241F0001 */   addiu     $ra, $zero, 1
.L8001D22C:
/* 1DE2C 8001D22C 1C400003 */  bgtz       $v0, .L8001D23C
/* 1DE30 8001D230 27EE07FF */   addiu     $t6, $ra, 0x7ff
/* 1DE34 8001D234 10000002 */  b          .L8001D240
/* 1DE38 8001D238 240B0001 */   addiu     $t3, $zero, 1
.L8001D23C:
/* 1DE3C 8001D23C 00405825 */  or         $t3, $v0, $zero
.L8001D240:
/* 1DE40 8001D240 01CB001A */  div        $zero, $t6, $t3
/* 1DE44 8001D244 15600002 */  bnez       $t3, .L8001D250
/* 1DE48 8001D248 00000000 */   nop       
/* 1DE4C 8001D24C 0007000D */  break      7
.L8001D250:
/* 1DE50 8001D250 2401FFFF */   addiu     $at, $zero, -1
/* 1DE54 8001D254 15610004 */  bne        $t3, $at, .L8001D268
/* 1DE58 8001D258 3C018000 */   lui       $at, 0x8000
/* 1DE5C 8001D25C 15C10002 */  bne        $t6, $at, .L8001D268
/* 1DE60 8001D260 00000000 */   nop       
/* 1DE64 8001D264 0006000D */  break      6
.L8001D268:
/* 1DE68 8001D268 00007812 */   mflo      $t7
/* 1DE6C 8001D26C 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1DE70 8001D270 318E0FFF */  andi       $t6, $t4, 0xfff
/* 1DE74 8001D274 000E7B00 */  sll        $t7, $t6, 0xc
/* 1DE78 8001D278 8FAE0030 */  lw         $t6, 0x30($sp)
/* 1DE7C 8001D27C 3C010700 */  lui        $at, 0x700
/* 1DE80 8001D280 0301C825 */  or         $t9, $t8, $at
/* 1DE84 8001D284 032FC025 */  or         $t8, $t9, $t7
/* 1DE88 8001D288 ADD80004 */  sw         $t8, 4($t6)
/* 1DE8C 8001D28C 8C620000 */  lw         $v0, ($v1)
/* 1DE90 8001D290 3C0FE700 */  lui        $t7, 0xe700
/* 1DE94 8001D294 25AE0007 */  addiu      $t6, $t5, 7
/* 1DE98 8001D298 24590008 */  addiu      $t9, $v0, 8
/* 1DE9C 8001D29C AC790000 */  sw         $t9, ($v1)
/* 1DEA0 8001D2A0 AC400004 */  sw         $zero, 4($v0)
/* 1DEA4 8001D2A4 AC4F0000 */  sw         $t7, ($v0)
/* 1DEA8 8001D2A8 8C620000 */  lw         $v0, ($v1)
/* 1DEAC 8001D2AC 000EC8C3 */  sra        $t9, $t6, 3
/* 1DEB0 8001D2B0 332F01FF */  andi       $t7, $t9, 0x1ff
/* 1DEB4 8001D2B4 24580008 */  addiu      $t8, $v0, 8
/* 1DEB8 8001D2B8 AC780000 */  sw         $t8, ($v1)
/* 1DEBC 8001D2BC 000FC240 */  sll        $t8, $t7, 9
/* 1DEC0 8001D2C0 3C190008 */  lui        $t9, 8
/* 1DEC4 8001D2C4 3C01F588 */  lui        $at, 0xf588
/* 1DEC8 8001D2C8 03017025 */  or         $t6, $t8, $at
/* 1DECC 8001D2CC 37390200 */  ori        $t9, $t9, 0x200
/* 1DED0 8001D2D0 AC590004 */  sw         $t9, 4($v0)
/* 1DED4 8001D2D4 AC4E0000 */  sw         $t6, ($v0)
/* 1DED8 8001D2D8 8C620000 */  lw         $v0, ($v1)
/* 1DEDC 8001D2DC 3C18F200 */  lui        $t8, 0xf200
/* 1DEE0 8001D2E0 244F0008 */  addiu      $t7, $v0, 8
/* 1DEE4 8001D2E4 AC6F0000 */  sw         $t7, ($v1)
/* 1DEE8 8001D2E8 AC580000 */  sw         $t8, ($v0)
/* 1DEEC 8001D2EC 87AE0056 */  lh         $t6, 0x56($sp)
/* 1DEF0 8001D2F0 25D9FFFF */  addiu      $t9, $t6, -1
/* 1DEF4 8001D2F4 00197880 */  sll        $t7, $t9, 2
/* 1DEF8 8001D2F8 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1DEFC 8001D2FC 24F9FFFF */  addiu      $t9, $a3, -1
/* 1DF00 8001D300 00197880 */  sll        $t7, $t9, 2
/* 1DF04 8001D304 00187300 */  sll        $t6, $t8, 0xc
/* 1DF08 8001D308 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1DF0C 8001D30C 01D8C825 */  or         $t9, $t6, $t8
/* 1DF10 8001D310 AC590004 */  sw         $t9, 4($v0)
/* 1DF14 8001D314 8FB80058 */  lw         $t8, 0x58($sp)
/* 1DF18 8001D318 240E0400 */  addiu      $t6, $zero, 0x400
/* 1DF1C 8001D31C 240F0400 */  addiu      $t7, $zero, 0x400
/* 1DF20 8001D320 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1DF24 8001D324 AFAE001C */  sw         $t6, 0x1c($sp)
/* 1DF28 8001D328 AFA00014 */  sw         $zero, 0x14($sp)
/* 1DF2C 8001D32C AFA00010 */  sw         $zero, 0x10($sp)
/* 1DF30 8001D330 0C0070CC */  jal        func_8001C330
/* 1DF34 8001D334 AFB80020 */   sw        $t8, 0x20($sp)
/* 1DF38 8001D338 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1DF3C 8001D33C 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1DF40 8001D340 03E00008 */  jr         $ra
/* 1DF44 8001D344 00000000 */   nop       

glabel func_8001D348
/* 1DF48 8001D348 3C03800A */  lui        $v1, 0x800a
/* 1DF4C 8001D34C 24637420 */  addiu      $v1, $v1, 0x7420
/* 1DF50 8001D350 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1DF54 8001D354 8C680000 */  lw         $t0, ($v1)
/* 1DF58 8001D358 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1DF5C 8001D35C AFA40040 */  sw         $a0, 0x40($sp)
/* 1DF60 8001D360 250E0008 */  addiu      $t6, $t0, 8
/* 1DF64 8001D364 AFA50044 */  sw         $a1, 0x44($sp)
/* 1DF68 8001D368 AFA60048 */  sw         $a2, 0x48($sp)
/* 1DF6C 8001D36C AFA7004C */  sw         $a3, 0x4c($sp)
/* 1DF70 8001D370 AC6E0000 */  sw         $t6, ($v1)
/* 1DF74 8001D374 3C0FFD90 */  lui        $t7, 0xfd90
/* 1DF78 8001D378 AD0F0000 */  sw         $t7, ($t0)
/* 1DF7C 8001D37C 8FB80050 */  lw         $t8, 0x50($sp)
/* 1DF80 8001D380 3C0F0708 */  lui        $t7, 0x708
/* 1DF84 8001D384 35EF0200 */  ori        $t7, $t7, 0x200
/* 1DF88 8001D388 AD180004 */  sw         $t8, 4($t0)
/* 1DF8C 8001D38C 8C690000 */  lw         $t1, ($v1)
/* 1DF90 8001D390 3C0EF590 */  lui        $t6, 0xf590
/* 1DF94 8001D394 00073C00 */  sll        $a3, $a3, 0x10
/* 1DF98 8001D398 25390008 */  addiu      $t9, $t1, 8
/* 1DF9C 8001D39C AC790000 */  sw         $t9, ($v1)
/* 1DFA0 8001D3A0 AD2F0004 */  sw         $t7, 4($t1)
/* 1DFA4 8001D3A4 AD2E0000 */  sw         $t6, ($t1)
/* 1DFA8 8001D3A8 8C6A0000 */  lw         $t2, ($v1)
/* 1DFAC 8001D3AC 3C19E600 */  lui        $t9, 0xe600
/* 1DFB0 8001D3B0 3C0FF300 */  lui        $t7, 0xf300
/* 1DFB4 8001D3B4 25580008 */  addiu      $t8, $t2, 8
/* 1DFB8 8001D3B8 AC780000 */  sw         $t8, ($v1)
/* 1DFBC 8001D3BC AD400004 */  sw         $zero, 4($t2)
/* 1DFC0 8001D3C0 AD590000 */  sw         $t9, ($t2)
/* 1DFC4 8001D3C4 8C780000 */  lw         $t8, ($v1)
/* 1DFC8 8001D3C8 00073C03 */  sra        $a3, $a3, 0x10
/* 1DFCC 8001D3CC 00063400 */  sll        $a2, $a2, 0x10
/* 1DFD0 8001D3D0 270E0008 */  addiu      $t6, $t8, 8
/* 1DFD4 8001D3D4 AC6E0000 */  sw         $t6, ($v1)
/* 1DFD8 8001D3D8 AFB80030 */  sw         $t8, 0x30($sp)
/* 1DFDC 8001D3DC AF0F0000 */  sw         $t7, ($t8)
/* 1DFE0 8001D3E0 87B90056 */  lh         $t9, 0x56($sp)
/* 1DFE4 8001D3E4 87AD0056 */  lh         $t5, 0x56($sp)
/* 1DFE8 8001D3E8 00052C00 */  sll        $a1, $a1, 0x10
/* 1DFEC 8001D3EC 03270019 */  multu      $t9, $a3
/* 1DFF0 8001D3F0 00042400 */  sll        $a0, $a0, 0x10
/* 1DFF4 8001D3F4 00042403 */  sra        $a0, $a0, 0x10
/* 1DFF8 8001D3F8 00052C03 */  sra        $a1, $a1, 0x10
/* 1DFFC 8001D3FC 00063403 */  sra        $a2, $a2, 0x10
/* 1E000 8001D400 240C07FF */  addiu      $t4, $zero, 0x7ff
/* 1E004 8001D404 000D6840 */  sll        $t5, $t5, 1
/* 1E008 8001D408 00005812 */  mflo       $t3
/* 1E00C 8001D40C 256BFFFF */  addiu      $t3, $t3, -1
/* 1E010 8001D410 296107FF */  slti       $at, $t3, 0x7ff
/* 1E014 8001D414 10200003 */  beqz       $at, .L8001D424
/* 1E018 8001D418 00000000 */   nop       
/* 1E01C 8001D41C 10000001 */  b          .L8001D424
/* 1E020 8001D420 01606025 */   or        $t4, $t3, $zero
.L8001D424:
/* 1E024 8001D424 05A10003 */  bgez       $t5, .L8001D434
/* 1E028 8001D428 000D10C3 */   sra       $v0, $t5, 3
/* 1E02C 8001D42C 25A10007 */  addiu      $at, $t5, 7
/* 1E030 8001D430 000110C3 */  sra        $v0, $at, 3
.L8001D434:
/* 1E034 8001D434 1C400003 */  bgtz       $v0, .L8001D444
/* 1E038 8001D438 0040F825 */   or        $ra, $v0, $zero
/* 1E03C 8001D43C 10000001 */  b          .L8001D444
/* 1E040 8001D440 241F0001 */   addiu     $ra, $zero, 1
.L8001D444:
/* 1E044 8001D444 1C400003 */  bgtz       $v0, .L8001D454
/* 1E048 8001D448 27EE07FF */   addiu     $t6, $ra, 0x7ff
/* 1E04C 8001D44C 10000002 */  b          .L8001D458
/* 1E050 8001D450 240B0001 */   addiu     $t3, $zero, 1
.L8001D454:
/* 1E054 8001D454 00405825 */  or         $t3, $v0, $zero
.L8001D458:
/* 1E058 8001D458 01CB001A */  div        $zero, $t6, $t3
/* 1E05C 8001D45C 15600002 */  bnez       $t3, .L8001D468
/* 1E060 8001D460 00000000 */   nop       
/* 1E064 8001D464 0007000D */  break      7
.L8001D468:
/* 1E068 8001D468 2401FFFF */   addiu     $at, $zero, -1
/* 1E06C 8001D46C 15610004 */  bne        $t3, $at, .L8001D480
/* 1E070 8001D470 3C018000 */   lui       $at, 0x8000
/* 1E074 8001D474 15C10002 */  bne        $t6, $at, .L8001D480
/* 1E078 8001D478 00000000 */   nop       
/* 1E07C 8001D47C 0006000D */  break      6
.L8001D480:
/* 1E080 8001D480 00007812 */   mflo      $t7
/* 1E084 8001D484 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1E088 8001D488 318E0FFF */  andi       $t6, $t4, 0xfff
/* 1E08C 8001D48C 000E7B00 */  sll        $t7, $t6, 0xc
/* 1E090 8001D490 8FAE0030 */  lw         $t6, 0x30($sp)
/* 1E094 8001D494 3C010700 */  lui        $at, 0x700
/* 1E098 8001D498 0301C825 */  or         $t9, $t8, $at
/* 1E09C 8001D49C 032FC025 */  or         $t8, $t9, $t7
/* 1E0A0 8001D4A0 ADD80004 */  sw         $t8, 4($t6)
/* 1E0A4 8001D4A4 8C620000 */  lw         $v0, ($v1)
/* 1E0A8 8001D4A8 3C0FE700 */  lui        $t7, 0xe700
/* 1E0AC 8001D4AC 25AE0007 */  addiu      $t6, $t5, 7
/* 1E0B0 8001D4B0 24590008 */  addiu      $t9, $v0, 8
/* 1E0B4 8001D4B4 AC790000 */  sw         $t9, ($v1)
/* 1E0B8 8001D4B8 AC400004 */  sw         $zero, 4($v0)
/* 1E0BC 8001D4BC AC4F0000 */  sw         $t7, ($v0)
/* 1E0C0 8001D4C0 8C620000 */  lw         $v0, ($v1)
/* 1E0C4 8001D4C4 000EC8C3 */  sra        $t9, $t6, 3
/* 1E0C8 8001D4C8 332F01FF */  andi       $t7, $t9, 0x1ff
/* 1E0CC 8001D4CC 24580008 */  addiu      $t8, $v0, 8
/* 1E0D0 8001D4D0 AC780000 */  sw         $t8, ($v1)
/* 1E0D4 8001D4D4 000FC240 */  sll        $t8, $t7, 9
/* 1E0D8 8001D4D8 3C190008 */  lui        $t9, 8
/* 1E0DC 8001D4DC 3C01F590 */  lui        $at, 0xf590
/* 1E0E0 8001D4E0 03017025 */  or         $t6, $t8, $at
/* 1E0E4 8001D4E4 37390200 */  ori        $t9, $t9, 0x200
/* 1E0E8 8001D4E8 AC590004 */  sw         $t9, 4($v0)
/* 1E0EC 8001D4EC AC4E0000 */  sw         $t6, ($v0)
/* 1E0F0 8001D4F0 8C620000 */  lw         $v0, ($v1)
/* 1E0F4 8001D4F4 3C18F200 */  lui        $t8, 0xf200
/* 1E0F8 8001D4F8 244F0008 */  addiu      $t7, $v0, 8
/* 1E0FC 8001D4FC AC6F0000 */  sw         $t7, ($v1)
/* 1E100 8001D500 AC580000 */  sw         $t8, ($v0)
/* 1E104 8001D504 87AE0056 */  lh         $t6, 0x56($sp)
/* 1E108 8001D508 25D9FFFF */  addiu      $t9, $t6, -1
/* 1E10C 8001D50C 00197880 */  sll        $t7, $t9, 2
/* 1E110 8001D510 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1E114 8001D514 24F9FFFF */  addiu      $t9, $a3, -1
/* 1E118 8001D518 00197880 */  sll        $t7, $t9, 2
/* 1E11C 8001D51C 00187300 */  sll        $t6, $t8, 0xc
/* 1E120 8001D520 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1E124 8001D524 01D8C825 */  or         $t9, $t6, $t8
/* 1E128 8001D528 AC590004 */  sw         $t9, 4($v0)
/* 1E12C 8001D52C 8FB80058 */  lw         $t8, 0x58($sp)
/* 1E130 8001D530 240E0400 */  addiu      $t6, $zero, 0x400
/* 1E134 8001D534 240F0400 */  addiu      $t7, $zero, 0x400
/* 1E138 8001D538 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1E13C 8001D53C AFAE001C */  sw         $t6, 0x1c($sp)
/* 1E140 8001D540 AFA00014 */  sw         $zero, 0x14($sp)
/* 1E144 8001D544 AFA00010 */  sw         $zero, 0x10($sp)
/* 1E148 8001D548 0C0070CC */  jal        func_8001C330
/* 1E14C 8001D54C AFB80020 */   sw        $t8, 0x20($sp)
/* 1E150 8001D550 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1E154 8001D554 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1E158 8001D558 03E00008 */  jr         $ra
/* 1E15C 8001D55C 00000000 */   nop       

glabel func_8001D560
/* 1E160 8001D560 3C03800A */  lui        $v1, 0x800a
/* 1E164 8001D564 24637420 */  addiu      $v1, $v1, 0x7420
/* 1E168 8001D568 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 1E16C 8001D56C 8C680000 */  lw         $t0, ($v1)
/* 1E170 8001D570 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1E174 8001D574 AFA40088 */  sw         $a0, 0x88($sp)
/* 1E178 8001D578 250E0008 */  addiu      $t6, $t0, 8
/* 1E17C 8001D57C AFA5008C */  sw         $a1, 0x8c($sp)
/* 1E180 8001D580 AFA60090 */  sw         $a2, 0x90($sp)
/* 1E184 8001D584 AFA70094 */  sw         $a3, 0x94($sp)
/* 1E188 8001D588 AC6E0000 */  sw         $t6, ($v1)
/* 1E18C 8001D58C 3C0FFD10 */  lui        $t7, 0xfd10
/* 1E190 8001D590 AD0F0000 */  sw         $t7, ($t0)
/* 1E194 8001D594 8FB80098 */  lw         $t8, 0x98($sp)
/* 1E198 8001D598 3C0F0708 */  lui        $t7, 0x708
/* 1E19C 8001D59C 35EF0200 */  ori        $t7, $t7, 0x200
/* 1E1A0 8001D5A0 AD180004 */  sw         $t8, 4($t0)
/* 1E1A4 8001D5A4 8C690000 */  lw         $t1, ($v1)
/* 1E1A8 8001D5A8 3C0EF510 */  lui        $t6, 0xf510
/* 1E1AC 8001D5AC 240D07FF */  addiu      $t5, $zero, 0x7ff
/* 1E1B0 8001D5B0 25390008 */  addiu      $t9, $t1, 8
/* 1E1B4 8001D5B4 AC790000 */  sw         $t9, ($v1)
/* 1E1B8 8001D5B8 AD2F0004 */  sw         $t7, 4($t1)
/* 1E1BC 8001D5BC AD2E0000 */  sw         $t6, ($t1)
/* 1E1C0 8001D5C0 8C620000 */  lw         $v0, ($v1)
/* 1E1C4 8001D5C4 3C19E600 */  lui        $t9, 0xe600
/* 1E1C8 8001D5C8 3C0FF300 */  lui        $t7, 0xf300
/* 1E1CC 8001D5CC 24580008 */  addiu      $t8, $v0, 8
/* 1E1D0 8001D5D0 AC780000 */  sw         $t8, ($v1)
/* 1E1D4 8001D5D4 AC400004 */  sw         $zero, 4($v0)
/* 1E1D8 8001D5D8 AC590000 */  sw         $t9, ($v0)
/* 1E1DC 8001D5DC 8C7F0000 */  lw         $ra, ($v1)
/* 1E1E0 8001D5E0 27EE0008 */  addiu      $t6, $ra, 8
/* 1E1E4 8001D5E4 AC6E0000 */  sw         $t6, ($v1)
/* 1E1E8 8001D5E8 AFEF0000 */  sw         $t7, ($ra)
/* 1E1EC 8001D5EC 87B800A2 */  lh         $t8, 0xa2($sp)
/* 1E1F0 8001D5F0 87B90096 */  lh         $t9, 0x96($sp)
/* 1E1F4 8001D5F4 87AA00A2 */  lh         $t2, 0xa2($sp)
/* 1E1F8 8001D5F8 03190019 */  multu      $t8, $t9
/* 1E1FC 8001D5FC 000A5040 */  sll        $t2, $t2, 1
/* 1E200 8001D600 00006012 */  mflo       $t4
/* 1E204 8001D604 258BFFFF */  addiu      $t3, $t4, -1
/* 1E208 8001D608 296107FF */  slti       $at, $t3, 0x7ff
/* 1E20C 8001D60C 10200003 */  beqz       $at, .L8001D61C
/* 1E210 8001D610 00000000 */   nop       
/* 1E214 8001D614 10000001 */  b          .L8001D61C
/* 1E218 8001D618 01606825 */   or        $t5, $t3, $zero
.L8001D61C:
/* 1E21C 8001D61C 05410003 */  bgez       $t2, .L8001D62C
/* 1E220 8001D620 000A10C3 */   sra       $v0, $t2, 3
/* 1E224 8001D624 25410007 */  addiu      $at, $t2, 7
/* 1E228 8001D628 000110C3 */  sra        $v0, $at, 3
.L8001D62C:
/* 1E22C 8001D62C 1C400003 */  bgtz       $v0, .L8001D63C
/* 1E230 8001D630 AFAC0040 */   sw        $t4, 0x40($sp)
/* 1E234 8001D634 10000002 */  b          .L8001D640
/* 1E238 8001D638 240C0001 */   addiu     $t4, $zero, 1
.L8001D63C:
/* 1E23C 8001D63C 00406025 */  or         $t4, $v0, $zero
.L8001D640:
/* 1E240 8001D640 1C400003 */  bgtz       $v0, .L8001D650
/* 1E244 8001D644 258E07FF */   addiu     $t6, $t4, 0x7ff
/* 1E248 8001D648 10000002 */  b          .L8001D654
/* 1E24C 8001D64C 240B0001 */   addiu     $t3, $zero, 1
.L8001D650:
/* 1E250 8001D650 00405825 */  or         $t3, $v0, $zero
.L8001D654:
/* 1E254 8001D654 01CB001A */  div        $zero, $t6, $t3
/* 1E258 8001D658 15600002 */  bnez       $t3, .L8001D664
/* 1E25C 8001D65C 00000000 */   nop       
/* 1E260 8001D660 0007000D */  break      7
.L8001D664:
/* 1E264 8001D664 2401FFFF */   addiu     $at, $zero, -1
/* 1E268 8001D668 15610004 */  bne        $t3, $at, .L8001D67C
/* 1E26C 8001D66C 3C018000 */   lui       $at, 0x8000
/* 1E270 8001D670 15C10002 */  bne        $t6, $at, .L8001D67C
/* 1E274 8001D674 00000000 */   nop       
/* 1E278 8001D678 0006000D */  break      6
.L8001D67C:
/* 1E27C 8001D67C 00007812 */   mflo      $t7
/* 1E280 8001D680 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1E284 8001D684 3C010700 */  lui        $at, 0x700
/* 1E288 8001D688 31AE0FFF */  andi       $t6, $t5, 0xfff
/* 1E28C 8001D68C 000E7B00 */  sll        $t7, $t6, 0xc
/* 1E290 8001D690 0301C825 */  or         $t9, $t8, $at
/* 1E294 8001D694 032FC025 */  or         $t8, $t9, $t7
/* 1E298 8001D698 AFF80004 */  sw         $t8, 4($ra)
/* 1E29C 8001D69C 8C620000 */  lw         $v0, ($v1)
/* 1E2A0 8001D6A0 3C19E700 */  lui        $t9, 0xe700
/* 1E2A4 8001D6A4 25580007 */  addiu      $t8, $t2, 7
/* 1E2A8 8001D6A8 244E0008 */  addiu      $t6, $v0, 8
/* 1E2AC 8001D6AC AC6E0000 */  sw         $t6, ($v1)
/* 1E2B0 8001D6B0 AC590000 */  sw         $t9, ($v0)
/* 1E2B4 8001D6B4 AC400004 */  sw         $zero, 4($v0)
/* 1E2B8 8001D6B8 8C620000 */  lw         $v0, ($v1)
/* 1E2BC 8001D6BC 001870C3 */  sra        $t6, $t8, 3
/* 1E2C0 8001D6C0 31D901FF */  andi       $t9, $t6, 0x1ff
/* 1E2C4 8001D6C4 244F0008 */  addiu      $t7, $v0, 8
/* 1E2C8 8001D6C8 AC6F0000 */  sw         $t7, ($v1)
/* 1E2CC 8001D6CC 00197A40 */  sll        $t7, $t9, 9
/* 1E2D0 8001D6D0 3C0E0008 */  lui        $t6, 8
/* 1E2D4 8001D6D4 3C01F510 */  lui        $at, 0xf510
/* 1E2D8 8001D6D8 01E1C025 */  or         $t8, $t7, $at
/* 1E2DC 8001D6DC 35CE0200 */  ori        $t6, $t6, 0x200
/* 1E2E0 8001D6E0 AC4E0004 */  sw         $t6, 4($v0)
/* 1E2E4 8001D6E4 AC580000 */  sw         $t8, ($v0)
/* 1E2E8 8001D6E8 00402825 */  or         $a1, $v0, $zero
/* 1E2EC 8001D6EC 8C620000 */  lw         $v0, ($v1)
/* 1E2F0 8001D6F0 3C0FF200 */  lui        $t7, 0xf200
/* 1E2F4 8001D6F4 240D07FF */  addiu      $t5, $zero, 0x7ff
/* 1E2F8 8001D6F8 24590008 */  addiu      $t9, $v0, 8
/* 1E2FC 8001D6FC AC790000 */  sw         $t9, ($v1)
/* 1E300 8001D700 AC4F0000 */  sw         $t7, ($v0)
/* 1E304 8001D704 87B800A2 */  lh         $t8, 0xa2($sp)
/* 1E308 8001D708 00403025 */  or         $a2, $v0, $zero
/* 1E30C 8001D70C 270EFFFF */  addiu      $t6, $t8, -1
/* 1E310 8001D710 000EC880 */  sll        $t9, $t6, 2
/* 1E314 8001D714 87AE0096 */  lh         $t6, 0x96($sp)
/* 1E318 8001D718 332F0FFF */  andi       $t7, $t9, 0xfff
/* 1E31C 8001D71C 000FC300 */  sll        $t8, $t7, 0xc
/* 1E320 8001D720 25D9FFFF */  addiu      $t9, $t6, -1
/* 1E324 8001D724 00197880 */  sll        $t7, $t9, 2
/* 1E328 8001D728 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 1E32C 8001D72C AFAE0034 */  sw         $t6, 0x34($sp)
/* 1E330 8001D730 030EC825 */  or         $t9, $t8, $t6
/* 1E334 8001D734 AFB80038 */  sw         $t8, 0x38($sp)
/* 1E338 8001D738 AC590004 */  sw         $t9, 4($v0)
/* 1E33C 8001D73C 8C620000 */  lw         $v0, ($v1)
/* 1E340 8001D740 3C18FD90 */  lui        $t8, 0xfd90
/* 1E344 8001D744 244F0008 */  addiu      $t7, $v0, 8
/* 1E348 8001D748 AC6F0000 */  sw         $t7, ($v1)
/* 1E34C 8001D74C AC580000 */  sw         $t8, ($v0)
/* 1E350 8001D750 8FAE009C */  lw         $t6, 0x9c($sp)
/* 1E354 8001D754 00403825 */  or         $a3, $v0, $zero
/* 1E358 8001D758 3C180708 */  lui        $t8, 0x708
/* 1E35C 8001D75C AC4E0004 */  sw         $t6, 4($v0)
/* 1E360 8001D760 8C620000 */  lw         $v0, ($v1)
/* 1E364 8001D764 3C0FF590 */  lui        $t7, 0xf590
/* 1E368 8001D768 35EF0100 */  ori        $t7, $t7, 0x100
/* 1E36C 8001D76C 24590008 */  addiu      $t9, $v0, 8
/* 1E370 8001D770 AC790000 */  sw         $t9, ($v1)
/* 1E374 8001D774 37180200 */  ori        $t8, $t8, 0x200
/* 1E378 8001D778 AC580004 */  sw         $t8, 4($v0)
/* 1E37C 8001D77C AC4F0000 */  sw         $t7, ($v0)
/* 1E380 8001D780 00404025 */  or         $t0, $v0, $zero
/* 1E384 8001D784 8C620000 */  lw         $v0, ($v1)
/* 1E388 8001D788 3C19E600 */  lui        $t9, 0xe600
/* 1E38C 8001D78C 3C18F300 */  lui        $t8, 0xf300
/* 1E390 8001D790 244E0008 */  addiu      $t6, $v0, 8
/* 1E394 8001D794 AC6E0000 */  sw         $t6, ($v1)
/* 1E398 8001D798 AC590000 */  sw         $t9, ($v0)
/* 1E39C 8001D79C AC400004 */  sw         $zero, 4($v0)
/* 1E3A0 8001D7A0 00404825 */  or         $t1, $v0, $zero
/* 1E3A4 8001D7A4 8C620000 */  lw         $v0, ($v1)
/* 1E3A8 8001D7A8 244F0008 */  addiu      $t7, $v0, 8
/* 1E3AC 8001D7AC AC6F0000 */  sw         $t7, ($v1)
/* 1E3B0 8001D7B0 AFA2005C */  sw         $v0, 0x5c($sp)
/* 1E3B4 8001D7B4 AC580000 */  sw         $t8, ($v0)
/* 1E3B8 8001D7B8 8FA40040 */  lw         $a0, 0x40($sp)
/* 1E3BC 8001D7BC 87BF00A2 */  lh         $ra, 0xa2($sp)
/* 1E3C0 8001D7C0 00407025 */  or         $t6, $v0, $zero
/* 1E3C4 8001D7C4 24840001 */  addiu      $a0, $a0, 1
/* 1E3C8 8001D7C8 00042043 */  sra        $a0, $a0, 1
/* 1E3CC 8001D7CC 2484FFFF */  addiu      $a0, $a0, -1
/* 1E3D0 8001D7D0 288107FF */  slti       $at, $a0, 0x7ff
/* 1E3D4 8001D7D4 10200003 */  beqz       $at, .L8001D7E4
/* 1E3D8 8001D7D8 00000000 */   nop       
/* 1E3DC 8001D7DC 10000001 */  b          .L8001D7E4
/* 1E3E0 8001D7E0 00806825 */   or        $t5, $a0, $zero
.L8001D7E4:
/* 1E3E4 8001D7E4 07E10003 */  bgez       $ra, .L8001D7F4
/* 1E3E8 8001D7E8 001F10C3 */   sra       $v0, $ra, 3
/* 1E3EC 8001D7EC 27E10007 */  addiu      $at, $ra, 7
/* 1E3F0 8001D7F0 000110C3 */  sra        $v0, $at, 3
.L8001D7F4:
/* 1E3F4 8001D7F4 1C400003 */  bgtz       $v0, .L8001D804
/* 1E3F8 8001D7F8 00406025 */   or        $t4, $v0, $zero
/* 1E3FC 8001D7FC 10000001 */  b          .L8001D804
/* 1E400 8001D800 240C0001 */   addiu     $t4, $zero, 1
.L8001D804:
/* 1E404 8001D804 1C400003 */  bgtz       $v0, .L8001D814
/* 1E408 8001D808 259907FF */   addiu     $t9, $t4, 0x7ff
/* 1E40C 8001D80C 10000002 */  b          .L8001D818
/* 1E410 8001D810 240B0001 */   addiu     $t3, $zero, 1
.L8001D814:
/* 1E414 8001D814 00405825 */  or         $t3, $v0, $zero
.L8001D818:
/* 1E418 8001D818 032B001A */  div        $zero, $t9, $t3
/* 1E41C 8001D81C 15600002 */  bnez       $t3, .L8001D828
/* 1E420 8001D820 00000000 */   nop       
/* 1E424 8001D824 0007000D */  break      7
.L8001D828:
/* 1E428 8001D828 2401FFFF */   addiu     $at, $zero, -1
/* 1E42C 8001D82C 15610004 */  bne        $t3, $at, .L8001D840
/* 1E430 8001D830 3C018000 */   lui       $at, 0x8000
/* 1E434 8001D834 17210002 */  bne        $t9, $at, .L8001D840
/* 1E438 8001D838 00000000 */   nop       
/* 1E43C 8001D83C 0006000D */  break      6
.L8001D840:
/* 1E440 8001D840 00007812 */   mflo      $t7
/* 1E444 8001D844 31F80FFF */  andi       $t8, $t7, 0xfff
/* 1E448 8001D848 31B90FFF */  andi       $t9, $t5, 0xfff
/* 1E44C 8001D84C 00197B00 */  sll        $t7, $t9, 0xc
/* 1E450 8001D850 8FB9005C */  lw         $t9, 0x5c($sp)
/* 1E454 8001D854 3C010700 */  lui        $at, 0x700
/* 1E458 8001D858 03017025 */  or         $t6, $t8, $at
/* 1E45C 8001D85C 01CFC025 */  or         $t8, $t6, $t7
/* 1E460 8001D860 AF380004 */  sw         $t8, 4($t9)
/* 1E464 8001D864 8C620000 */  lw         $v0, ($v1)
/* 1E468 8001D868 3C0FE700 */  lui        $t7, 0xe700
/* 1E46C 8001D86C 27F90007 */  addiu      $t9, $ra, 7
/* 1E470 8001D870 244E0008 */  addiu      $t6, $v0, 8
/* 1E474 8001D874 AC6E0000 */  sw         $t6, ($v1)
/* 1E478 8001D878 AC400004 */  sw         $zero, 4($v0)
/* 1E47C 8001D87C AC4F0000 */  sw         $t7, ($v0)
/* 1E480 8001D880 8C620000 */  lw         $v0, ($v1)
/* 1E484 8001D884 001970C3 */  sra        $t6, $t9, 3
/* 1E488 8001D888 31CF01FF */  andi       $t7, $t6, 0x1ff
/* 1E48C 8001D88C 24580008 */  addiu      $t8, $v0, 8
/* 1E490 8001D890 AC780000 */  sw         $t8, ($v1)
/* 1E494 8001D894 000FC240 */  sll        $t8, $t7, 9
/* 1E498 8001D898 3C01F588 */  lui        $at, 0xf588
/* 1E49C 8001D89C 0301C825 */  or         $t9, $t8, $at
/* 1E4A0 8001D8A0 3C0F0108 */  lui        $t7, 0x108
/* 1E4A4 8001D8A4 35EF0200 */  ori        $t7, $t7, 0x200
/* 1E4A8 8001D8A8 372E0100 */  ori        $t6, $t9, 0x100
/* 1E4AC 8001D8AC AC4E0000 */  sw         $t6, ($v0)
/* 1E4B0 8001D8B0 AC4F0004 */  sw         $t7, 4($v0)
/* 1E4B4 8001D8B4 8C620000 */  lw         $v0, ($v1)
/* 1E4B8 8001D8B8 3C19F200 */  lui        $t9, 0xf200
/* 1E4BC 8001D8BC 3C010100 */  lui        $at, 0x100
/* 1E4C0 8001D8C0 24580008 */  addiu      $t8, $v0, 8
/* 1E4C4 8001D8C4 AC780000 */  sw         $t8, ($v1)
/* 1E4C8 8001D8C8 AC590000 */  sw         $t9, ($v0)
/* 1E4CC 8001D8CC 8FAE0038 */  lw         $t6, 0x38($sp)
/* 1E4D0 8001D8D0 8FB80034 */  lw         $t8, 0x34($sp)
/* 1E4D4 8001D8D4 01C17825 */  or         $t7, $t6, $at
/* 1E4D8 8001D8D8 01F8C825 */  or         $t9, $t7, $t8
/* 1E4DC 8001D8DC AC590004 */  sw         $t9, 4($v0)
/* 1E4E0 8001D8E0 8FB800A4 */  lw         $t8, 0xa4($sp)
/* 1E4E4 8001D8E4 240F0400 */  addiu      $t7, $zero, 0x400
/* 1E4E8 8001D8E8 240E0400 */  addiu      $t6, $zero, 0x400
/* 1E4EC 8001D8EC AFAE0018 */  sw         $t6, 0x18($sp)
/* 1E4F0 8001D8F0 AFAF001C */  sw         $t7, 0x1c($sp)
/* 1E4F4 8001D8F4 AFA00014 */  sw         $zero, 0x14($sp)
/* 1E4F8 8001D8F8 AFA00010 */  sw         $zero, 0x10($sp)
/* 1E4FC 8001D8FC 87A70096 */  lh         $a3, 0x96($sp)
/* 1E500 8001D900 87A60092 */  lh         $a2, 0x92($sp)
/* 1E504 8001D904 87A5008E */  lh         $a1, 0x8e($sp)
/* 1E508 8001D908 87A4008A */  lh         $a0, 0x8a($sp)
/* 1E50C 8001D90C 0C0070CC */  jal        func_8001C330
/* 1E510 8001D910 AFB80020 */   sw        $t8, 0x20($sp)
/* 1E514 8001D914 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1E518 8001D918 27BD0088 */  addiu      $sp, $sp, 0x88
/* 1E51C 8001D91C 03E00008 */  jr         $ra
/* 1E520 8001D920 00000000 */   nop       

glabel func_8001D924
/* 1E524 8001D924 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 1E528 8001D928 3C03800A */  lui        $v1, 0x800a
/* 1E52C 8001D92C 24637420 */  addiu      $v1, $v1, 0x7420
/* 1E530 8001D930 8C620000 */  lw         $v0, ($v1)
/* 1E534 8001D934 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1E538 8001D938 AFBE0028 */  sw         $fp, 0x28($sp)
/* 1E53C 8001D93C 244E0008 */  addiu      $t6, $v0, 8
/* 1E540 8001D940 AFB70024 */  sw         $s7, 0x24($sp)
/* 1E544 8001D944 AFB60020 */  sw         $s6, 0x20($sp)
/* 1E548 8001D948 AFB5001C */  sw         $s5, 0x1c($sp)
/* 1E54C 8001D94C AFB40018 */  sw         $s4, 0x18($sp)
/* 1E550 8001D950 AFB30014 */  sw         $s3, 0x14($sp)
/* 1E554 8001D954 AFB20010 */  sw         $s2, 0x10($sp)
/* 1E558 8001D958 AFB1000C */  sw         $s1, 0xc($sp)
/* 1E55C 8001D95C AFB00008 */  sw         $s0, 8($sp)
/* 1E560 8001D960 AC6E0000 */  sw         $t6, ($v1)
/* 1E564 8001D964 3C0DE700 */  lui        $t5, 0xe700
/* 1E568 8001D968 AC4D0000 */  sw         $t5, ($v0)
/* 1E56C 8001D96C AC400004 */  sw         $zero, 4($v0)
/* 1E570 8001D970 8C620000 */  lw         $v0, ($v1)
/* 1E574 8001D974 3C18E300 */  lui        $t8, 0xe300
/* 1E578 8001D978 37180A01 */  ori        $t8, $t8, 0xa01
/* 1E57C 8001D97C 244F0008 */  addiu      $t7, $v0, 8
/* 1E580 8001D980 AC6F0000 */  sw         $t7, ($v1)
/* 1E584 8001D984 AC400004 */  sw         $zero, 4($v0)
/* 1E588 8001D988 AC580000 */  sw         $t8, ($v0)
/* 1E58C 8001D98C 8C620000 */  lw         $v0, ($v1)
/* 1E590 8001D990 3C0F0F0A */  lui        $t7, 0xf0a
/* 1E594 8001D994 3C0EE200 */  lui        $t6, 0xe200
/* 1E598 8001D998 24590008 */  addiu      $t9, $v0, 8
/* 1E59C 8001D99C AC790000 */  sw         $t9, ($v1)
/* 1E5A0 8001D9A0 35CE001C */  ori        $t6, $t6, 0x1c
/* 1E5A4 8001D9A4 35EF4000 */  ori        $t7, $t7, 0x4000
/* 1E5A8 8001D9A8 AC4F0004 */  sw         $t7, 4($v0)
/* 1E5AC 8001D9AC AC4E0000 */  sw         $t6, ($v0)
/* 1E5B0 8001D9B0 8C620000 */  lw         $v0, ($v1)
/* 1E5B4 8001D9B4 3C19E300 */  lui        $t9, 0xe300
/* 1E5B8 8001D9B8 37390C00 */  ori        $t9, $t9, 0xc00
/* 1E5BC 8001D9BC 24580008 */  addiu      $t8, $v0, 8
/* 1E5C0 8001D9C0 AC780000 */  sw         $t8, ($v1)
/* 1E5C4 8001D9C4 AC400004 */  sw         $zero, 4($v0)
/* 1E5C8 8001D9C8 AC590000 */  sw         $t9, ($v0)
/* 1E5CC 8001D9CC 8C620000 */  lw         $v0, ($v1)
/* 1E5D0 8001D9D0 3C1800A0 */  lui        $t8, 0xa0
/* 1E5D4 8001D9D4 37180780 */  ori        $t8, $t8, 0x780
/* 1E5D8 8001D9D8 244E0008 */  addiu      $t6, $v0, 8
/* 1E5DC 8001D9DC AC6E0000 */  sw         $t6, ($v1)
/* 1E5E0 8001D9E0 3C0FED00 */  lui        $t7, 0xed00
/* 1E5E4 8001D9E4 AC4F0000 */  sw         $t7, ($v0)
/* 1E5E8 8001D9E8 AC580004 */  sw         $t8, 4($v0)
/* 1E5EC 8001D9EC 8C620000 */  lw         $v0, ($v1)
/* 1E5F0 8001D9F0 3C0FFFFC */  lui        $t7, 0xfffc
/* 1E5F4 8001D9F4 3C0EFCFF */  lui        $t6, 0xfcff
/* 1E5F8 8001D9F8 24590008 */  addiu      $t9, $v0, 8
/* 1E5FC 8001D9FC AC790000 */  sw         $t9, ($v1)
/* 1E600 8001DA00 35CEFFFF */  ori        $t6, $t6, 0xffff
/* 1E604 8001DA04 35EFF87C */  ori        $t7, $t7, 0xf87c
/* 1E608 8001DA08 AC4F0004 */  sw         $t7, 4($v0)
/* 1E60C 8001DA0C AC4E0000 */  sw         $t6, ($v0)
/* 1E610 8001DA10 8C620000 */  lw         $v0, ($v1)
/* 1E614 8001DA14 3C150708 */  lui        $s5, 0x708
/* 1E618 8001DA18 3C1E070F */  lui        $fp, 0x70f
/* 1E61C 8001DA1C 24580008 */  addiu      $t8, $v0, 8
/* 1E620 8001DA20 AC780000 */  sw         $t8, ($v1)
/* 1E624 8001DA24 3C1FF510 */  lui        $ra, 0xf510
/* 1E628 8001DA28 00808025 */  or         $s0, $a0, $zero
/* 1E62C 8001DA2C 37FF0800 */  ori        $ra, $ra, 0x800
/* 1E630 8001DA30 37DEF200 */  ori        $fp, $fp, 0xf200
/* 1E634 8001DA34 36B50200 */  ori        $s5, $s5, 0x200
/* 1E638 8001DA38 3C13FD10 */  lui        $s3, 0xfd10
/* 1E63C 8001DA3C 3C14F510 */  lui        $s4, 0xf510
/* 1E640 8001DA40 3C16E600 */  lui        $s6, 0xe600
/* 1E644 8001DA44 3C17F300 */  lui        $s7, 0xf300
/* 1E648 8001DA48 00002825 */  or         $a1, $zero, $zero
/* 1E64C 8001DA4C AC400004 */  sw         $zero, 4($v0)
/* 1E650 8001DA50 AC4D0000 */  sw         $t5, ($v0)
/* 1E654 8001DA54 24A20020 */  addiu      $v0, $a1, 0x20
.L8001DA58:
/* 1E658 8001DA58 00028880 */  sll        $s1, $v0, 2
/* 1E65C 8001DA5C 00059080 */  sll        $s2, $a1, 2
/* 1E660 8001DA60 32520FFF */  andi       $s2, $s2, 0xfff
/* 1E664 8001DA64 32310FFF */  andi       $s1, $s1, 0xfff
/* 1E668 8001DA68 AFA20034 */  sw         $v0, 0x34($sp)
/* 1E66C 8001DA6C 00006025 */  or         $t4, $zero, $zero
.L8001DA70:
/* 1E670 8001DA70 8C620000 */  lw         $v0, ($v1)
/* 1E674 8001DA74 258D0020 */  addiu      $t5, $t4, 0x20
/* 1E678 8001DA78 3C01E400 */  lui        $at, 0xe400
/* 1E67C 8001DA7C 24590008 */  addiu      $t9, $v0, 8
/* 1E680 8001DA80 AC790000 */  sw         $t9, ($v1)
/* 1E684 8001DA84 AC500004 */  sw         $s0, 4($v0)
/* 1E688 8001DA88 AC530000 */  sw         $s3, ($v0)
/* 1E68C 8001DA8C 8C620000 */  lw         $v0, ($v1)
/* 1E690 8001DA90 26100200 */  addiu      $s0, $s0, 0x200
/* 1E694 8001DA94 244E0008 */  addiu      $t6, $v0, 8
/* 1E698 8001DA98 AC6E0000 */  sw         $t6, ($v1)
/* 1E69C 8001DA9C AC550004 */  sw         $s5, 4($v0)
/* 1E6A0 8001DAA0 AC540000 */  sw         $s4, ($v0)
/* 1E6A4 8001DAA4 8C620000 */  lw         $v0, ($v1)
/* 1E6A8 8001DAA8 3C0EE700 */  lui        $t6, 0xe700
/* 1E6AC 8001DAAC 244F0008 */  addiu      $t7, $v0, 8
/* 1E6B0 8001DAB0 AC6F0000 */  sw         $t7, ($v1)
/* 1E6B4 8001DAB4 AC400004 */  sw         $zero, 4($v0)
/* 1E6B8 8001DAB8 AC560000 */  sw         $s6, ($v0)
/* 1E6BC 8001DABC 8C620000 */  lw         $v0, ($v1)
/* 1E6C0 8001DAC0 24580008 */  addiu      $t8, $v0, 8
/* 1E6C4 8001DAC4 AC780000 */  sw         $t8, ($v1)
/* 1E6C8 8001DAC8 AC5E0004 */  sw         $fp, 4($v0)
/* 1E6CC 8001DACC AC570000 */  sw         $s7, ($v0)
/* 1E6D0 8001DAD0 8C620000 */  lw         $v0, ($v1)
/* 1E6D4 8001DAD4 3C180008 */  lui        $t8, 8
/* 1E6D8 8001DAD8 37180200 */  ori        $t8, $t8, 0x200
/* 1E6DC 8001DADC 24590008 */  addiu      $t9, $v0, 8
/* 1E6E0 8001DAE0 AC790000 */  sw         $t9, ($v1)
/* 1E6E4 8001DAE4 AC400004 */  sw         $zero, 4($v0)
/* 1E6E8 8001DAE8 AC4E0000 */  sw         $t6, ($v0)
/* 1E6EC 8001DAEC 8C620000 */  lw         $v0, ($v1)
/* 1E6F0 8001DAF0 3C0EF200 */  lui        $t6, 0xf200
/* 1E6F4 8001DAF4 244F0008 */  addiu      $t7, $v0, 8
/* 1E6F8 8001DAF8 AC6F0000 */  sw         $t7, ($v1)
/* 1E6FC 8001DAFC AC580004 */  sw         $t8, 4($v0)
/* 1E700 8001DB00 AC5F0000 */  sw         $ra, ($v0)
/* 1E704 8001DB04 8C620000 */  lw         $v0, ($v1)
/* 1E708 8001DB08 3C0F0003 */  lui        $t7, 3
/* 1E70C 8001DB0C 35EFC03C */  ori        $t7, $t7, 0xc03c
/* 1E710 8001DB10 24590008 */  addiu      $t9, $v0, 8
/* 1E714 8001DB14 AC790000 */  sw         $t9, ($v1)
/* 1E718 8001DB18 AC4F0004 */  sw         $t7, 4($v0)
/* 1E71C 8001DB1C AC4E0000 */  sw         $t6, ($v0)
/* 1E720 8001DB20 8C620000 */  lw         $v0, ($v1)
/* 1E724 8001DB24 000DC880 */  sll        $t9, $t5, 2
/* 1E728 8001DB28 332E0FFF */  andi       $t6, $t9, 0xfff
/* 1E72C 8001DB2C 24580008 */  addiu      $t8, $v0, 8
/* 1E730 8001DB30 AC780000 */  sw         $t8, ($v1)
/* 1E734 8001DB34 000E7B00 */  sll        $t7, $t6, 0xc
/* 1E738 8001DB38 01E1C025 */  or         $t8, $t7, $at
/* 1E73C 8001DB3C 0311C825 */  or         $t9, $t8, $s1
/* 1E740 8001DB40 000C7080 */  sll        $t6, $t4, 2
/* 1E744 8001DB44 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 1E748 8001DB48 000FC300 */  sll        $t8, $t7, 0xc
/* 1E74C 8001DB4C AC590000 */  sw         $t9, ($v0)
/* 1E750 8001DB50 0312C825 */  or         $t9, $t8, $s2
/* 1E754 8001DB54 AC590004 */  sw         $t9, 4($v0)
/* 1E758 8001DB58 8C620000 */  lw         $v0, ($v1)
/* 1E75C 8001DB5C 3C0FE100 */  lui        $t7, 0xe100
/* 1E760 8001DB60 24010280 */  addiu      $at, $zero, 0x280
/* 1E764 8001DB64 244E0008 */  addiu      $t6, $v0, 8
/* 1E768 8001DB68 AC6E0000 */  sw         $t6, ($v1)
/* 1E76C 8001DB6C AC400004 */  sw         $zero, 4($v0)
/* 1E770 8001DB70 AC4F0000 */  sw         $t7, ($v0)
/* 1E774 8001DB74 8C620000 */  lw         $v0, ($v1)
/* 1E778 8001DB78 3C0E0200 */  lui        $t6, 0x200
/* 1E77C 8001DB7C 35CE0200 */  ori        $t6, $t6, 0x200
/* 1E780 8001DB80 24580008 */  addiu      $t8, $v0, 8
/* 1E784 8001DB84 AC780000 */  sw         $t8, ($v1)
/* 1E788 8001DB88 3C19F100 */  lui        $t9, 0xf100
/* 1E78C 8001DB8C 01A06025 */  or         $t4, $t5, $zero
/* 1E790 8001DB90 AC590000 */  sw         $t9, ($v0)
/* 1E794 8001DB94 15A1FFB6 */  bne        $t5, $at, .L8001DA70
/* 1E798 8001DB98 AC4E0004 */   sw        $t6, 4($v0)
/* 1E79C 8001DB9C 8FA50034 */  lw         $a1, 0x34($sp)
/* 1E7A0 8001DBA0 240101E0 */  addiu      $at, $zero, 0x1e0
/* 1E7A4 8001DBA4 54A1FFAC */  bnel       $a1, $at, .L8001DA58
/* 1E7A8 8001DBA8 24A20020 */   addiu     $v0, $a1, 0x20
/* 1E7AC 8001DBAC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1E7B0 8001DBB0 8FB00008 */  lw         $s0, 8($sp)
/* 1E7B4 8001DBB4 8FB1000C */  lw         $s1, 0xc($sp)
/* 1E7B8 8001DBB8 8FB20010 */  lw         $s2, 0x10($sp)
/* 1E7BC 8001DBBC 8FB30014 */  lw         $s3, 0x14($sp)
/* 1E7C0 8001DBC0 8FB40018 */  lw         $s4, 0x18($sp)
/* 1E7C4 8001DBC4 8FB5001C */  lw         $s5, 0x1c($sp)
/* 1E7C8 8001DBC8 8FB60020 */  lw         $s6, 0x20($sp)
/* 1E7CC 8001DBCC 8FB70024 */  lw         $s7, 0x24($sp)
/* 1E7D0 8001DBD0 8FBE0028 */  lw         $fp, 0x28($sp)
/* 1E7D4 8001DBD4 03E00008 */  jr         $ra
/* 1E7D8 8001DBD8 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_8001DBDC
/* 1E7DC 8001DBDC 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 1E7E0 8001DBE0 3C03800A */  lui        $v1, 0x800a
/* 1E7E4 8001DBE4 24637420 */  addiu      $v1, $v1, 0x7420
/* 1E7E8 8001DBE8 87AE00B2 */  lh         $t6, 0xb2($sp)
/* 1E7EC 8001DBEC 8C620000 */  lw         $v0, ($v1)
/* 1E7F0 8001DBF0 AFB70024 */  sw         $s7, 0x24($sp)
/* 1E7F4 8001DBF4 AFB60020 */  sw         $s6, 0x20($sp)
/* 1E7F8 8001DBF8 AFA700AC */  sw         $a3, 0xac($sp)
/* 1E7FC 8001DBFC 00073C00 */  sll        $a3, $a3, 0x10
/* 1E800 8001DC00 0005B400 */  sll        $s6, $a1, 0x10
/* 1E804 8001DC04 0006BC00 */  sll        $s7, $a2, 0x10
/* 1E808 8001DC08 0017BC03 */  sra        $s7, $s7, 0x10
/* 1E80C 8001DC0C 0016B403 */  sra        $s6, $s6, 0x10
/* 1E810 8001DC10 00073C03 */  sra        $a3, $a3, 0x10
/* 1E814 8001DC14 AFB40018 */  sw         $s4, 0x18($sp)
/* 1E818 8001DC18 AFB5001C */  sw         $s5, 0x1c($sp)
/* 1E81C 8001DC1C 02C7A021 */  addu       $s4, $s6, $a3
/* 1E820 8001DC20 02EE4021 */  addu       $t0, $s7, $t6
/* 1E824 8001DC24 244F0008 */  addiu      $t7, $v0, 8
/* 1E828 8001DC28 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1E82C 8001DC2C AFBE0028 */  sw         $fp, 0x28($sp)
/* 1E830 8001DC30 AFB30014 */  sw         $s3, 0x14($sp)
/* 1E834 8001DC34 AFB20010 */  sw         $s2, 0x10($sp)
/* 1E838 8001DC38 AFB1000C */  sw         $s1, 0xc($sp)
/* 1E83C 8001DC3C AFB00008 */  sw         $s0, 8($sp)
/* 1E840 8001DC40 AFA400A0 */  sw         $a0, 0xa0($sp)
/* 1E844 8001DC44 AFA500A4 */  sw         $a1, 0xa4($sp)
/* 1E848 8001DC48 AFA600A8 */  sw         $a2, 0xa8($sp)
/* 1E84C 8001DC4C A7B4009A */  sh         $s4, 0x9a($sp)
/* 1E850 8001DC50 A7A80098 */  sh         $t0, 0x98($sp)
/* 1E854 8001DC54 AC6F0000 */  sw         $t7, ($v1)
/* 1E858 8001DC58 3C15E700 */  lui        $s5, 0xe700
/* 1E85C 8001DC5C AC550000 */  sw         $s5, ($v0)
/* 1E860 8001DC60 AC400004 */  sw         $zero, 4($v0)
/* 1E864 8001DC64 8C620000 */  lw         $v0, ($v1)
/* 1E868 8001DC68 3C19E300 */  lui        $t9, 0xe300
/* 1E86C 8001DC6C 37390A01 */  ori        $t9, $t9, 0xa01
/* 1E870 8001DC70 24580008 */  addiu      $t8, $v0, 8
/* 1E874 8001DC74 AC780000 */  sw         $t8, ($v1)
/* 1E878 8001DC78 AC400004 */  sw         $zero, 4($v0)
/* 1E87C 8001DC7C AC590000 */  sw         $t9, ($v0)
/* 1E880 8001DC80 8C620000 */  lw         $v0, ($v1)
/* 1E884 8001DC84 3C180F0A */  lui        $t8, 0xf0a
/* 1E888 8001DC88 3C0FE200 */  lui        $t7, 0xe200
/* 1E88C 8001DC8C 244E0008 */  addiu      $t6, $v0, 8
/* 1E890 8001DC90 AC6E0000 */  sw         $t6, ($v1)
/* 1E894 8001DC94 35EF001C */  ori        $t7, $t7, 0x1c
/* 1E898 8001DC98 37184000 */  ori        $t8, $t8, 0x4000
/* 1E89C 8001DC9C AC580004 */  sw         $t8, 4($v0)
/* 1E8A0 8001DCA0 AC4F0000 */  sw         $t7, ($v0)
/* 1E8A4 8001DCA4 8C620000 */  lw         $v0, ($v1)
/* 1E8A8 8001DCA8 3C0EE300 */  lui        $t6, 0xe300
/* 1E8AC 8001DCAC 35CE0C00 */  ori        $t6, $t6, 0xc00
/* 1E8B0 8001DCB0 24590008 */  addiu      $t9, $v0, 8
/* 1E8B4 8001DCB4 AC790000 */  sw         $t9, ($v1)
/* 1E8B8 8001DCB8 AC400004 */  sw         $zero, 4($v0)
/* 1E8BC 8001DCBC AC4E0000 */  sw         $t6, ($v0)
/* 1E8C0 8001DCC0 8C620000 */  lw         $v0, ($v1)
/* 1E8C4 8001DCC4 3C1900A0 */  lui        $t9, 0xa0
/* 1E8C8 8001DCC8 37390780 */  ori        $t9, $t9, 0x780
/* 1E8CC 8001DCCC 244F0008 */  addiu      $t7, $v0, 8
/* 1E8D0 8001DCD0 AC6F0000 */  sw         $t7, ($v1)
/* 1E8D4 8001DCD4 3C18ED00 */  lui        $t8, 0xed00
/* 1E8D8 8001DCD8 AC580000 */  sw         $t8, ($v0)
/* 1E8DC 8001DCDC AC590004 */  sw         $t9, 4($v0)
/* 1E8E0 8001DCE0 8C620000 */  lw         $v0, ($v1)
/* 1E8E4 8001DCE4 3C18FFFC */  lui        $t8, 0xfffc
/* 1E8E8 8001DCE8 3C0FFCFF */  lui        $t7, 0xfcff
/* 1E8EC 8001DCEC 244E0008 */  addiu      $t6, $v0, 8
/* 1E8F0 8001DCF0 AC6E0000 */  sw         $t6, ($v1)
/* 1E8F4 8001DCF4 35EFFFFF */  ori        $t7, $t7, 0xffff
/* 1E8F8 8001DCF8 3718F87C */  ori        $t8, $t8, 0xf87c
/* 1E8FC 8001DCFC AC580004 */  sw         $t8, 4($v0)
/* 1E900 8001DD00 AC4F0000 */  sw         $t7, ($v0)
/* 1E904 8001DD04 8C620000 */  lw         $v0, ($v1)
/* 1E908 8001DD08 00179143 */  sra        $s2, $s7, 5
/* 1E90C 8001DD0C 00129140 */  sll        $s2, $s2, 5
/* 1E910 8001DD10 00127400 */  sll        $t6, $s2, 0x10
/* 1E914 8001DD14 0008F400 */  sll        $fp, $t0, 0x10
/* 1E918 8001DD18 001EF403 */  sra        $fp, $fp, 0x10
/* 1E91C 8001DD1C 000E7C03 */  sra        $t7, $t6, 0x10
/* 1E920 8001DD20 24590008 */  addiu      $t9, $v0, 8
/* 1E924 8001DD24 AC790000 */  sw         $t9, ($v1)
/* 1E928 8001DD28 01FE082A */  slt        $at, $t7, $fp
/* 1E92C 8001DD2C 00129C00 */  sll        $s3, $s2, 0x10
/* 1E930 8001DD30 00139C03 */  sra        $s3, $s3, 0x10
/* 1E934 8001DD34 AC400004 */  sw         $zero, 4($v0)
/* 1E938 8001DD38 102000A5 */  beqz       $at, .L8001DFD0
/* 1E93C 8001DD3C AC550000 */   sw        $s5, ($v0)
/* 1E940 8001DD40 0016C143 */  sra        $t8, $s6, 5
/* 1E944 8001DD44 0018C940 */  sll        $t9, $t8, 5
/* 1E948 8001DD48 AFB90034 */  sw         $t9, 0x34($sp)
/* 1E94C 8001DD4C 87AE0036 */  lh         $t6, 0x36($sp)
/* 1E950 8001DD50 0014AC00 */  sll        $s5, $s4, 0x10
/* 1E954 8001DD54 0015AC03 */  sra        $s5, $s5, 0x10
/* 1E958 8001DD58 AFAE0030 */  sw         $t6, 0x30($sp)
/* 1E95C 8001DD5C 8FAF0030 */  lw         $t7, 0x30($sp)
.L8001DD60:
/* 1E960 8001DD60 87AB0036 */  lh         $t3, 0x36($sp)
/* 1E964 8001DD64 26740020 */  addiu      $s4, $s3, 0x20
/* 1E968 8001DD68 01F5082A */  slt        $at, $t7, $s5
/* 1E96C 8001DD6C 50200092 */  beql       $at, $zero, .L8001DFB8
/* 1E970 8001DD70 87B90098 */   lh        $t9, 0x98($sp)
/* 1E974 8001DD74 06610003 */  bgez       $s3, .L8001DD84
/* 1E978 8001DD78 0013F943 */   sra       $ra, $s3, 5
/* 1E97C 8001DD7C 2661001F */  addiu      $at, $s3, 0x1f
/* 1E980 8001DD80 0001F943 */  sra        $ra, $at, 5
.L8001DD84:
/* 1E984 8001DD84 03E00821 */  addu       $at, $ra, $zero
/* 1E988 8001DD88 001FF880 */  sll        $ra, $ra, 2
/* 1E98C 8001DD8C 03E1F821 */  addu       $ra, $ra, $at
/* 1E990 8001DD90 001FF880 */  sll        $ra, $ra, 2
/* 1E994 8001DD94 0176082A */  slt        $at, $t3, $s6
.L8001DD98:
/* 1E998 8001DD98 10200004 */  beqz       $at, .L8001DDAC
/* 1E99C 8001DD9C 25700020 */   addiu     $s0, $t3, 0x20
/* 1E9A0 8001DDA0 00166C00 */  sll        $t5, $s6, 0x10
/* 1E9A4 8001DDA4 10000003 */  b          .L8001DDB4
/* 1E9A8 8001DDA8 000D6C03 */   sra       $t5, $t5, 0x10
.L8001DDAC:
/* 1E9AC 8001DDAC 000B6C00 */  sll        $t5, $t3, 0x10
/* 1E9B0 8001DDB0 000D6C03 */  sra        $t5, $t5, 0x10
.L8001DDB4:
/* 1E9B4 8001DDB4 02B0082A */  slt        $at, $s5, $s0
/* 1E9B8 8001DDB8 10200004 */  beqz       $at, .L8001DDCC
/* 1E9BC 8001DDBC 01AB8823 */   subu      $s1, $t5, $t3
/* 1E9C0 8001DDC0 00159400 */  sll        $s2, $s5, 0x10
/* 1E9C4 8001DDC4 10000003 */  b          .L8001DDD4
/* 1E9C8 8001DDC8 00129403 */   sra       $s2, $s2, 0x10
.L8001DDCC:
/* 1E9CC 8001DDCC 00109400 */  sll        $s2, $s0, 0x10
/* 1E9D0 8001DDD0 00129403 */  sra        $s2, $s2, 0x10
.L8001DDD4:
/* 1E9D4 8001DDD4 0277082A */  slt        $at, $s3, $s7
/* 1E9D8 8001DDD8 10200004 */  beqz       $at, .L8001DDEC
/* 1E9DC 8001DDDC 00118C00 */   sll       $s1, $s1, 0x10
/* 1E9E0 8001DDE0 00176400 */  sll        $t4, $s7, 0x10
/* 1E9E4 8001DDE4 10000003 */  b          .L8001DDF4
/* 1E9E8 8001DDE8 000C6403 */   sra       $t4, $t4, 0x10
.L8001DDEC:
/* 1E9EC 8001DDEC 00136400 */  sll        $t4, $s3, 0x10
/* 1E9F0 8001DDF0 000C6403 */  sra        $t4, $t4, 0x10
.L8001DDF4:
/* 1E9F4 8001DDF4 03D4082A */  slt        $at, $fp, $s4
/* 1E9F8 8001DDF8 10200004 */  beqz       $at, .L8001DE0C
/* 1E9FC 8001DDFC 00144C00 */   sll       $t1, $s4, 0x10
/* 1EA00 8001DE00 001E4C00 */  sll        $t1, $fp, 0x10
/* 1EA04 8001DE04 10000002 */  b          .L8001DE10
/* 1EA08 8001DE08 00094C03 */   sra       $t1, $t1, 0x10
.L8001DE0C:
/* 1EA0C 8001DE0C 00094C03 */  sra        $t1, $t1, 0x10
.L8001DE10:
/* 1EA10 8001DE10 8C620000 */  lw         $v0, ($v1)
/* 1EA14 8001DE14 3C19FD10 */  lui        $t9, 0xfd10
/* 1EA18 8001DE18 00118C03 */  sra        $s1, $s1, 0x10
/* 1EA1C 8001DE1C 24580008 */  addiu      $t8, $v0, 8
/* 1EA20 8001DE20 AC780000 */  sw         $t8, ($v1)
/* 1EA24 8001DE24 AC590000 */  sw         $t9, ($v0)
/* 1EA28 8001DE28 8FB900A0 */  lw         $t9, 0xa0($sp)
/* 1EA2C 8001DE2C 00402025 */  or         $a0, $v0, $zero
/* 1EA30 8001DE30 05610003 */  bgez       $t3, .L8001DE40
/* 1EA34 8001DE34 000B7143 */   sra       $t6, $t3, 5
/* 1EA38 8001DE38 2561001F */  addiu      $at, $t3, 0x1f
/* 1EA3C 8001DE3C 00017143 */  sra        $t6, $at, 5
.L8001DE40:
/* 1EA40 8001DE40 03EE7821 */  addu       $t7, $ra, $t6
/* 1EA44 8001DE44 000FC240 */  sll        $t8, $t7, 9
/* 1EA48 8001DE48 03197021 */  addu       $t6, $t8, $t9
/* 1EA4C 8001DE4C AC8E0004 */  sw         $t6, 4($a0)
/* 1EA50 8001DE50 8C620000 */  lw         $v0, ($v1)
/* 1EA54 8001DE54 3C190708 */  lui        $t9, 0x708
/* 1EA58 8001DE58 37390200 */  ori        $t9, $t9, 0x200
/* 1EA5C 8001DE5C 244F0008 */  addiu      $t7, $v0, 8
/* 1EA60 8001DE60 AC6F0000 */  sw         $t7, ($v1)
/* 1EA64 8001DE64 3C18F510 */  lui        $t8, 0xf510
/* 1EA68 8001DE68 AC580000 */  sw         $t8, ($v0)
/* 1EA6C 8001DE6C AC590004 */  sw         $t9, 4($v0)
/* 1EA70 8001DE70 8C620000 */  lw         $v0, ($v1)
/* 1EA74 8001DE74 3C0FE600 */  lui        $t7, 0xe600
/* 1EA78 8001DE78 3C19F300 */  lui        $t9, 0xf300
/* 1EA7C 8001DE7C 244E0008 */  addiu      $t6, $v0, 8
/* 1EA80 8001DE80 AC6E0000 */  sw         $t6, ($v1)
/* 1EA84 8001DE84 AC400004 */  sw         $zero, 4($v0)
/* 1EA88 8001DE88 AC4F0000 */  sw         $t7, ($v0)
/* 1EA8C 8001DE8C 8C620000 */  lw         $v0, ($v1)
/* 1EA90 8001DE90 3C0E070F */  lui        $t6, 0x70f
/* 1EA94 8001DE94 35CEF200 */  ori        $t6, $t6, 0xf200
/* 1EA98 8001DE98 24580008 */  addiu      $t8, $v0, 8
/* 1EA9C 8001DE9C AC780000 */  sw         $t8, ($v1)
/* 1EAA0 8001DEA0 AC4E0004 */  sw         $t6, 4($v0)
/* 1EAA4 8001DEA4 AC590000 */  sw         $t9, ($v0)
/* 1EAA8 8001DEA8 8C620000 */  lw         $v0, ($v1)
/* 1EAAC 8001DEAC 3C18E700 */  lui        $t8, 0xe700
/* 1EAB0 8001DEB0 3C0EF510 */  lui        $t6, 0xf510
/* 1EAB4 8001DEB4 244F0008 */  addiu      $t7, $v0, 8
/* 1EAB8 8001DEB8 AC6F0000 */  sw         $t7, ($v1)
/* 1EABC 8001DEBC AC400004 */  sw         $zero, 4($v0)
/* 1EAC0 8001DEC0 AC580000 */  sw         $t8, ($v0)
/* 1EAC4 8001DEC4 8C620000 */  lw         $v0, ($v1)
/* 1EAC8 8001DEC8 3C0F0008 */  lui        $t7, 8
/* 1EACC 8001DECC 35EF0200 */  ori        $t7, $t7, 0x200
/* 1EAD0 8001DED0 24590008 */  addiu      $t9, $v0, 8
/* 1EAD4 8001DED4 AC790000 */  sw         $t9, ($v1)
/* 1EAD8 8001DED8 35CE0800 */  ori        $t6, $t6, 0x800
/* 1EADC 8001DEDC AC4E0000 */  sw         $t6, ($v0)
/* 1EAE0 8001DEE0 AC4F0004 */  sw         $t7, 4($v0)
/* 1EAE4 8001DEE4 8C620000 */  lw         $v0, ($v1)
/* 1EAE8 8001DEE8 3C0E0003 */  lui        $t6, 3
/* 1EAEC 8001DEEC 35CEC03C */  ori        $t6, $t6, 0xc03c
/* 1EAF0 8001DEF0 24580008 */  addiu      $t8, $v0, 8
/* 1EAF4 8001DEF4 AC780000 */  sw         $t8, ($v1)
/* 1EAF8 8001DEF8 3C19F200 */  lui        $t9, 0xf200
/* 1EAFC 8001DEFC AC590000 */  sw         $t9, ($v0)
/* 1EB00 8001DF00 AC4E0004 */  sw         $t6, 4($v0)
/* 1EB04 8001DF04 8C620000 */  lw         $v0, ($v1)
/* 1EB08 8001DF08 0012C080 */  sll        $t8, $s2, 2
/* 1EB0C 8001DF0C 33190FFF */  andi       $t9, $t8, 0xfff
/* 1EB10 8001DF10 00197300 */  sll        $t6, $t9, 0xc
/* 1EB14 8001DF14 244F0008 */  addiu      $t7, $v0, 8
/* 1EB18 8001DF18 AC6F0000 */  sw         $t7, ($v1)
/* 1EB1C 8001DF1C 0009C080 */  sll        $t8, $t1, 2
/* 1EB20 8001DF20 3C01E400 */  lui        $at, 0xe400
/* 1EB24 8001DF24 01C17825 */  or         $t7, $t6, $at
/* 1EB28 8001DF28 33190FFF */  andi       $t9, $t8, 0xfff
/* 1EB2C 8001DF2C 01F97025 */  or         $t6, $t7, $t9
/* 1EB30 8001DF30 000DC080 */  sll        $t8, $t5, 2
/* 1EB34 8001DF34 330F0FFF */  andi       $t7, $t8, 0xfff
/* 1EB38 8001DF38 AC4E0000 */  sw         $t6, ($v0)
/* 1EB3C 8001DF3C 000C7080 */  sll        $t6, $t4, 2
/* 1EB40 8001DF40 31D80FFF */  andi       $t8, $t6, 0xfff
/* 1EB44 8001DF44 000FCB00 */  sll        $t9, $t7, 0xc
/* 1EB48 8001DF48 03387825 */  or         $t7, $t9, $t8
/* 1EB4C 8001DF4C AC4F0004 */  sw         $t7, 4($v0)
/* 1EB50 8001DF50 8C620000 */  lw         $v0, ($v1)
/* 1EB54 8001DF54 3C19E100 */  lui        $t9, 0xe100
/* 1EB58 8001DF58 01937823 */  subu       $t7, $t4, $s3
/* 1EB5C 8001DF5C 244E0008 */  addiu      $t6, $v0, 8
/* 1EB60 8001DF60 AC6E0000 */  sw         $t6, ($v1)
/* 1EB64 8001DF64 AC590000 */  sw         $t9, ($v0)
/* 1EB68 8001DF68 000FC900 */  sll        $t9, $t7, 4
/* 1EB6C 8001DF6C 3338FFFF */  andi       $t8, $t9, 0xffff
/* 1EB70 8001DF70 00117500 */  sll        $t6, $s1, 0x14
/* 1EB74 8001DF74 01D87825 */  or         $t7, $t6, $t8
/* 1EB78 8001DF78 AC4F0004 */  sw         $t7, 4($v0)
/* 1EB7C 8001DF7C 8C620000 */  lw         $v0, ($v1)
/* 1EB80 8001DF80 3C180200 */  lui        $t8, 0x200
/* 1EB84 8001DF84 37180200 */  ori        $t8, $t8, 0x200
/* 1EB88 8001DF88 24590008 */  addiu      $t9, $v0, 8
/* 1EB8C 8001DF8C AC790000 */  sw         $t9, ($v1)
/* 1EB90 8001DF90 3C0EF100 */  lui        $t6, 0xf100
/* 1EB94 8001DF94 AC4E0000 */  sw         $t6, ($v0)
/* 1EB98 8001DF98 AC580004 */  sw         $t8, 4($v0)
/* 1EB9C 8001DF9C 87AF009A */  lh         $t7, 0x9a($sp)
/* 1EBA0 8001DFA0 00105C00 */  sll        $t3, $s0, 0x10
/* 1EBA4 8001DFA4 000B5C03 */  sra        $t3, $t3, 0x10
/* 1EBA8 8001DFA8 016F082A */  slt        $at, $t3, $t7
/* 1EBAC 8001DFAC 5420FF7A */  bnel       $at, $zero, .L8001DD98
/* 1EBB0 8001DFB0 0176082A */   slt       $at, $t3, $s6
/* 1EBB4 8001DFB4 87B90098 */  lh         $t9, 0x98($sp)
.L8001DFB8:
/* 1EBB8 8001DFB8 26730020 */  addiu      $s3, $s3, 0x20
/* 1EBBC 8001DFBC 00139C00 */  sll        $s3, $s3, 0x10
/* 1EBC0 8001DFC0 00139C03 */  sra        $s3, $s3, 0x10
/* 1EBC4 8001DFC4 0279082A */  slt        $at, $s3, $t9
/* 1EBC8 8001DFC8 5420FF65 */  bnel       $at, $zero, .L8001DD60
/* 1EBCC 8001DFCC 8FAF0030 */   lw        $t7, 0x30($sp)
.L8001DFD0:
/* 1EBD0 8001DFD0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1EBD4 8001DFD4 8FB00008 */  lw         $s0, 8($sp)
/* 1EBD8 8001DFD8 8FB1000C */  lw         $s1, 0xc($sp)
/* 1EBDC 8001DFDC 8FB20010 */  lw         $s2, 0x10($sp)
/* 1EBE0 8001DFE0 8FB30014 */  lw         $s3, 0x14($sp)
/* 1EBE4 8001DFE4 8FB40018 */  lw         $s4, 0x18($sp)
/* 1EBE8 8001DFE8 8FB5001C */  lw         $s5, 0x1c($sp)
/* 1EBEC 8001DFEC 8FB60020 */  lw         $s6, 0x20($sp)
/* 1EBF0 8001DFF0 8FB70024 */  lw         $s7, 0x24($sp)
/* 1EBF4 8001DFF4 8FBE0028 */  lw         $fp, 0x28($sp)
/* 1EBF8 8001DFF8 03E00008 */  jr         $ra
/* 1EBFC 8001DFFC 27BD00A0 */   addiu     $sp, $sp, 0xa0

glabel func_8001E000
/* 1EC00 8001E000 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* 1EC04 8001E004 AFBE0048 */  sw         $fp, 0x48($sp)
/* 1EC08 8001E008 AFB70044 */  sw         $s7, 0x44($sp)
/* 1EC0C 8001E00C AFB60040 */  sw         $s6, 0x40($sp)
/* 1EC10 8001E010 0006B400 */  sll        $s6, $a2, 0x10
/* 1EC14 8001E014 0004BC00 */  sll        $s7, $a0, 0x10
/* 1EC18 8001E018 0005F400 */  sll        $fp, $a1, 0x10
/* 1EC1C 8001E01C AFBF004C */  sw         $ra, 0x4c($sp)
/* 1EC20 8001E020 AFA400D8 */  sw         $a0, 0xd8($sp)
/* 1EC24 8001E024 001EF403 */  sra        $fp, $fp, 0x10
/* 1EC28 8001E028 0017BC03 */  sra        $s7, $s7, 0x10
/* 1EC2C 8001E02C 0016B403 */  sra        $s6, $s6, 0x10
/* 1EC30 8001E030 AFB5003C */  sw         $s5, 0x3c($sp)
/* 1EC34 8001E034 AFB40038 */  sw         $s4, 0x38($sp)
/* 1EC38 8001E038 AFB30034 */  sw         $s3, 0x34($sp)
/* 1EC3C 8001E03C AFB20030 */  sw         $s2, 0x30($sp)
/* 1EC40 8001E040 AFB1002C */  sw         $s1, 0x2c($sp)
/* 1EC44 8001E044 AFB00028 */  sw         $s0, 0x28($sp)
/* 1EC48 8001E048 AFA500DC */  sw         $a1, 0xdc($sp)
/* 1EC4C 8001E04C AFA600E0 */  sw         $a2, 0xe0($sp)
/* 1EC50 8001E050 AFA700E4 */  sw         $a3, 0xe4($sp)
/* 1EC54 8001E054 0C0017D7 */  jal        func_80005F5C
/* 1EC58 8001E058 24040040 */   addiu     $a0, $zero, 0x40
/* 1EC5C 8001E05C 00409825 */  or         $s3, $v0, $zero
/* 1EC60 8001E060 0C0017D7 */  jal        func_80005F5C
/* 1EC64 8001E064 24040040 */   addiu     $a0, $zero, 0x40
/* 1EC68 8001E068 0040A025 */  or         $s4, $v0, $zero
/* 1EC6C 8001E06C 0C0017D7 */  jal        func_80005F5C
/* 1EC70 8001E070 24040040 */   addiu     $a0, $zero, 0x40
/* 1EC74 8001E074 00408025 */  or         $s0, $v0, $zero
/* 1EC78 8001E078 0C0017D7 */  jal        func_80005F5C
/* 1EC7C 8001E07C 24040010 */   addiu     $a0, $zero, 0x10
/* 1EC80 8001E080 0C001923 */  jal        func_8000648C
/* 1EC84 8001E084 00409025 */   or        $s2, $v0, $zero
/* 1EC88 8001E088 27B500CC */  addiu      $s5, $sp, 0xcc
/* 1EC8C 8001E08C 00163C00 */  sll        $a3, $s6, 0x10
/* 1EC90 8001E090 00408825 */  or         $s1, $v0, $zero
/* 1EC94 8001E094 00073C03 */  sra        $a3, $a3, 0x10
/* 1EC98 8001E098 02A02025 */  or         $a0, $s5, $zero
/* 1EC9C 8001E09C 00002825 */  or         $a1, $zero, $zero
/* 1ECA0 8001E0A0 0C003ADC */  jal        func_8000EB70
/* 1ECA4 8001E0A4 00003025 */   or        $a2, $zero, $zero
/* 1ECA8 8001E0A8 44972000 */  mtc1       $s7, $f4
/* 1ECAC 8001E0AC 449E3000 */  mtc1       $fp, $f6
/* 1ECB0 8001E0B0 27B600C0 */  addiu      $s6, $sp, 0xc0
/* 1ECB4 8001E0B4 46802120 */  cvt.s.w    $f4, $f4
/* 1ECB8 8001E0B8 02C02025 */  or         $a0, $s6, $zero
/* 1ECBC 8001E0BC 24070000 */  addiu      $a3, $zero, 0
/* 1ECC0 8001E0C0 468031A0 */  cvt.s.w    $f6, $f6
/* 1ECC4 8001E0C4 44052000 */  mfc1       $a1, $f4
/* 1ECC8 8001E0C8 44063000 */  mfc1       $a2, $f6
/* 1ECCC 8001E0CC 0C003A23 */  jal        func_8000E88C
/* 1ECD0 8001E0D0 00000000 */   nop       
/* 1ECD4 8001E0D4 C7A000E4 */  lwc1       $f0, 0xe4($sp)
/* 1ECD8 8001E0D8 27B700B4 */  addiu      $s7, $sp, 0xb4
/* 1ECDC 8001E0DC 02E02025 */  or         $a0, $s7, $zero
/* 1ECE0 8001E0E0 44050000 */  mfc1       $a1, $f0
/* 1ECE4 8001E0E4 44060000 */  mfc1       $a2, $f0
/* 1ECE8 8001E0E8 0C003A23 */  jal        func_8000E88C
/* 1ECEC 8001E0EC 3C073F80 */   lui       $a3, 0x3f80
/* 1ECF0 8001E0F0 02002025 */  or         $a0, $s0, $zero
/* 1ECF4 8001E0F4 02C02825 */  or         $a1, $s6, $zero
/* 1ECF8 8001E0F8 0C003CB1 */  jal        func_8000F2C4
/* 1ECFC 8001E0FC 02A03025 */   or        $a2, $s5, $zero
/* 1ED00 8001E100 02002025 */  or         $a0, $s0, $zero
/* 1ED04 8001E104 02002825 */  or         $a1, $s0, $zero
/* 1ED08 8001E108 0C003F79 */  jal        func_8000FDE4
/* 1ED0C 8001E10C 02E03025 */   or        $a2, $s7, $zero
/* 1ED10 8001E110 02602025 */  or         $a0, $s3, $zero
/* 1ED14 8001E114 0C004024 */  jal        func_80010090
/* 1ED18 8001E118 02002825 */   or        $a1, $s0, $zero
/* 1ED1C 8001E11C 02402025 */  or         $a0, $s2, $zero
/* 1ED20 8001E120 86250004 */  lh         $a1, 4($s1)
/* 1ED24 8001E124 0C0079BA */  jal        func_8001E6E8
/* 1ED28 8001E128 86260006 */   lh        $a2, 6($s1)
/* 1ED2C 8001E12C 3C03800A */  lui        $v1, 0x800a
/* 1ED30 8001E130 24637420 */  addiu      $v1, $v1, 0x7420
/* 1ED34 8001E134 8C620000 */  lw         $v0, ($v1)
/* 1ED38 8001E138 3C101FFF */  lui        $s0, 0x1fff
/* 1ED3C 8001E13C 3610FFFF */  ori        $s0, $s0, 0xffff
/* 1ED40 8001E140 244E0008 */  addiu      $t6, $v0, 8
/* 1ED44 8001E144 AC6E0000 */  sw         $t6, ($v1)
/* 1ED48 8001E148 3C0FDC08 */  lui        $t7, 0xdc08
/* 1ED4C 8001E14C 35EF0008 */  ori        $t7, $t7, 8
/* 1ED50 8001E150 0250C024 */  and        $t8, $s2, $s0
/* 1ED54 8001E154 AC580004 */  sw         $t8, 4($v0)
/* 1ED58 8001E158 AC4F0000 */  sw         $t7, ($v0)
/* 1ED5C 8001E15C 96390004 */  lhu        $t9, 4($s1)
/* 1ED60 8001E160 3C013F00 */  lui        $at, 0x3f00
/* 1ED64 8001E164 44810000 */  mtc1       $at, $f0
/* 1ED68 8001E168 44994000 */  mtc1       $t9, $f8
/* 1ED6C 8001E16C 02802025 */  or         $a0, $s4, $zero
/* 1ED70 8001E170 44050000 */  mfc1       $a1, $f0
/* 1ED74 8001E174 07210005 */  bgez       $t9, .L8001E18C
/* 1ED78 8001E178 468042A0 */   cvt.s.w   $f10, $f8
/* 1ED7C 8001E17C 3C014F80 */  lui        $at, 0x4f80
/* 1ED80 8001E180 44818000 */  mtc1       $at, $f16
/* 1ED84 8001E184 00000000 */  nop        
/* 1ED88 8001E188 46105280 */  add.s      $f10, $f10, $f16
.L8001E18C:
/* 1ED8C 8001E18C 46005481 */  sub.s      $f18, $f10, $f0
/* 1ED90 8001E190 962E0006 */  lhu        $t6, 6($s1)
/* 1ED94 8001E194 3C014F80 */  lui        $at, 0x4f80
/* 1ED98 8001E198 448E2000 */  mtc1       $t6, $f4
/* 1ED9C 8001E19C 44069000 */  mfc1       $a2, $f18
/* 1EDA0 8001E1A0 05C10004 */  bgez       $t6, .L8001E1B4
/* 1EDA4 8001E1A4 468021A0 */   cvt.s.w   $f6, $f4
/* 1EDA8 8001E1A8 44814000 */  mtc1       $at, $f8
/* 1EDAC 8001E1AC 00000000 */  nop        
/* 1EDB0 8001E1B0 46083180 */  add.s      $f6, $f6, $f8
.L8001E1B4:
/* 1EDB4 8001E1B4 3C01C000 */  lui        $at, 0xc000
/* 1EDB8 8001E1B8 44815000 */  mtc1       $at, $f10
/* 1EDBC 8001E1BC 46003401 */  sub.s      $f16, $f6, $f0
/* 1EDC0 8001E1C0 3C014000 */  lui        $at, 0x4000
/* 1EDC4 8001E1C4 44819000 */  mtc1       $at, $f18
/* 1EDC8 8001E1C8 3C013F80 */  lui        $at, 0x3f80
/* 1EDCC 8001E1CC 44812000 */  mtc1       $at, $f4
/* 1EDD0 8001E1D0 44078000 */  mfc1       $a3, $f16
/* 1EDD4 8001E1D4 E7A00010 */  swc1       $f0, 0x10($sp)
/* 1EDD8 8001E1D8 E7AA0014 */  swc1       $f10, 0x14($sp)
/* 1EDDC 8001E1DC E7B20018 */  swc1       $f18, 0x18($sp)
/* 1EDE0 8001E1E0 0C018A89 */  jal        func_80062A24
/* 1EDE4 8001E1E4 E7A4001C */   swc1      $f4, 0x1c($sp)
/* 1EDE8 8001E1E8 3C03800A */  lui        $v1, 0x800a
/* 1EDEC 8001E1EC 24637420 */  addiu      $v1, $v1, 0x7420
/* 1EDF0 8001E1F0 8C620000 */  lw         $v0, ($v1)
/* 1EDF4 8001E1F4 3C18DA38 */  lui        $t8, 0xda38
/* 1EDF8 8001E1F8 37180007 */  ori        $t8, $t8, 7
/* 1EDFC 8001E1FC 244F0008 */  addiu      $t7, $v0, 8
/* 1EE00 8001E200 AC6F0000 */  sw         $t7, ($v1)
/* 1EE04 8001E204 0290C824 */  and        $t9, $s4, $s0
/* 1EE08 8001E208 AC590004 */  sw         $t9, 4($v0)
/* 1EE0C 8001E20C AC580000 */  sw         $t8, ($v0)
/* 1EE10 8001E210 8C620000 */  lw         $v0, ($v1)
/* 1EE14 8001E214 3C0FDA38 */  lui        $t7, 0xda38
/* 1EE18 8001E218 35EF0003 */  ori        $t7, $t7, 3
/* 1EE1C 8001E21C 244E0008 */  addiu      $t6, $v0, 8
/* 1EE20 8001E220 AC6E0000 */  sw         $t6, ($v1)
/* 1EE24 8001E224 0270C024 */  and        $t8, $s3, $s0
/* 1EE28 8001E228 AC580004 */  sw         $t8, 4($v0)
/* 1EE2C 8001E22C AC4F0000 */  sw         $t7, ($v0)
/* 1EE30 8001E230 8C620000 */  lw         $v0, ($v1)
/* 1EE34 8001E234 3C0EE700 */  lui        $t6, 0xe700
/* 1EE38 8001E238 3C18E300 */  lui        $t8, 0xe300
/* 1EE3C 8001E23C 24590008 */  addiu      $t9, $v0, 8
/* 1EE40 8001E240 AC790000 */  sw         $t9, ($v1)
/* 1EE44 8001E244 AC400004 */  sw         $zero, 4($v0)
/* 1EE48 8001E248 AC4E0000 */  sw         $t6, ($v0)
/* 1EE4C 8001E24C 8C620000 */  lw         $v0, ($v1)
/* 1EE50 8001E250 37180A01 */  ori        $t8, $t8, 0xa01
/* 1EE54 8001E254 3C0EE300 */  lui        $t6, 0xe300
/* 1EE58 8001E258 244F0008 */  addiu      $t7, $v0, 8
/* 1EE5C 8001E25C AC6F0000 */  sw         $t7, ($v1)
/* 1EE60 8001E260 AC400004 */  sw         $zero, 4($v0)
/* 1EE64 8001E264 AC580000 */  sw         $t8, ($v0)
/* 1EE68 8001E268 8C620000 */  lw         $v0, ($v1)
/* 1EE6C 8001E26C 3C0F0008 */  lui        $t7, 8
/* 1EE70 8001E270 35CE0C00 */  ori        $t6, $t6, 0xc00
/* 1EE74 8001E274 24590008 */  addiu      $t9, $v0, 8
/* 1EE78 8001E278 AC790000 */  sw         $t9, ($v1)
/* 1EE7C 8001E27C AC4F0004 */  sw         $t7, 4($v0)
/* 1EE80 8001E280 AC4E0000 */  sw         $t6, ($v0)
/* 1EE84 8001E284 8C620000 */  lw         $v0, ($v1)
/* 1EE88 8001E288 3C0E0F0A */  lui        $t6, 0xf0a
/* 1EE8C 8001E28C 3C19E200 */  lui        $t9, 0xe200
/* 1EE90 8001E290 24580008 */  addiu      $t8, $v0, 8
/* 1EE94 8001E294 AC780000 */  sw         $t8, ($v1)
/* 1EE98 8001E298 3739001C */  ori        $t9, $t9, 0x1c
/* 1EE9C 8001E29C 35CE4000 */  ori        $t6, $t6, 0x4000
/* 1EEA0 8001E2A0 AC4E0004 */  sw         $t6, 4($v0)
/* 1EEA4 8001E2A4 AC590000 */  sw         $t9, ($v0)
/* 1EEA8 8001E2A8 8C620000 */  lw         $v0, ($v1)
/* 1EEAC 8001E2AC 3C19FFFC */  lui        $t9, 0xfffc
/* 1EEB0 8001E2B0 3C18FCFF */  lui        $t8, 0xfcff
/* 1EEB4 8001E2B4 244F0008 */  addiu      $t7, $v0, 8
/* 1EEB8 8001E2B8 AC6F0000 */  sw         $t7, ($v1)
/* 1EEBC 8001E2BC 3718FFFF */  ori        $t8, $t8, 0xffff
/* 1EEC0 8001E2C0 3739F87C */  ori        $t9, $t9, 0xf87c
/* 1EEC4 8001E2C4 AC590004 */  sw         $t9, 4($v0)
/* 1EEC8 8001E2C8 AC580000 */  sw         $t8, ($v0)
/* 1EECC 8001E2CC 8C620000 */  lw         $v0, ($v1)
/* 1EED0 8001E2D0 3C0FD9FD */  lui        $t7, 0xd9fd
/* 1EED4 8001E2D4 35EFF9FE */  ori        $t7, $t7, 0xf9fe
/* 1EED8 8001E2D8 244E0008 */  addiu      $t6, $v0, 8
/* 1EEDC 8001E2DC AC6E0000 */  sw         $t6, ($v1)
/* 1EEE0 8001E2E0 AC400004 */  sw         $zero, 4($v0)
/* 1EEE4 8001E2E4 AC4F0000 */  sw         $t7, ($v0)
/* 1EEE8 8001E2E8 8C620000 */  lw         $v0, ($v1)
/* 1EEEC 8001E2EC 3C19D700 */  lui        $t9, 0xd700
/* 1EEF0 8001E2F0 37390002 */  ori        $t9, $t9, 2
/* 1EEF4 8001E2F4 24580008 */  addiu      $t8, $v0, 8
/* 1EEF8 8001E2F8 AC780000 */  sw         $t8, ($v1)
/* 1EEFC 8001E2FC 240EFFFF */  addiu      $t6, $zero, -1
/* 1EF00 8001E300 AC4E0004 */  sw         $t6, 4($v0)
/* 1EF04 8001E304 AC590000 */  sw         $t9, ($v0)
/* 1EF08 8001E308 3C130709 */  lui        $s3, 0x709
/* 1EF0C 8001E30C 3C1E0009 */  lui        $fp, 9
/* 1EF10 8001E310 3C17F510 */  lui        $s7, 0xf510
/* 1EF14 8001E314 3C16070F */  lui        $s6, 0x70f
/* 1EF18 8001E318 36D6F200 */  ori        $s6, $s6, 0xf200
/* 1EF1C 8001E31C 36F70800 */  ori        $s7, $s7, 0x800
/* 1EF20 8001E320 37DE0240 */  ori        $fp, $fp, 0x240
/* 1EF24 8001E324 36730240 */  ori        $s3, $s3, 0x240
/* 1EF28 8001E328 8FBF00EC */  lw         $ra, 0xec($sp)
/* 1EF2C 8001E32C 8FB000E8 */  lw         $s0, 0xe8($sp)
/* 1EF30 8001E330 A7A000D4 */  sh         $zero, 0xd4($sp)
/* 1EF34 8001E334 3C14E600 */  lui        $s4, 0xe600
/* 1EF38 8001E338 3C15F300 */  lui        $s5, 0xf300
/* 1EF3C 8001E33C 3C12F510 */  lui        $s2, 0xf510
/* 1EF40 8001E340 3C11FD10 */  lui        $s1, 0xfd10
.L8001E344:
/* 1EF44 8001E344 00006825 */  or         $t5, $zero, $zero
.L8001E348:
/* 1EF48 8001E348 8C620000 */  lw         $v0, ($v1)
/* 1EF4C 8001E34C 25AD0001 */  addiu      $t5, $t5, 1
/* 1EF50 8001E350 000D6C00 */  sll        $t5, $t5, 0x10
/* 1EF54 8001E354 244F0008 */  addiu      $t7, $v0, 8
/* 1EF58 8001E358 AC6F0000 */  sw         $t7, ($v1)
/* 1EF5C 8001E35C AC5F0004 */  sw         $ra, 4($v0)
/* 1EF60 8001E360 AC510000 */  sw         $s1, ($v0)
/* 1EF64 8001E364 8C620000 */  lw         $v0, ($v1)
/* 1EF68 8001E368 000D6C03 */  sra        $t5, $t5, 0x10
/* 1EF6C 8001E36C 29A10014 */  slti       $at, $t5, 0x14
/* 1EF70 8001E370 24580008 */  addiu      $t8, $v0, 8
/* 1EF74 8001E374 AC780000 */  sw         $t8, ($v1)
/* 1EF78 8001E378 AC530004 */  sw         $s3, 4($v0)
/* 1EF7C 8001E37C AC520000 */  sw         $s2, ($v0)
/* 1EF80 8001E380 8C620000 */  lw         $v0, ($v1)
/* 1EF84 8001E384 3C18E700 */  lui        $t8, 0xe700
/* 1EF88 8001E388 27FF0200 */  addiu      $ra, $ra, 0x200
/* 1EF8C 8001E38C 24590008 */  addiu      $t9, $v0, 8
/* 1EF90 8001E390 AC790000 */  sw         $t9, ($v1)
/* 1EF94 8001E394 AC400004 */  sw         $zero, 4($v0)
/* 1EF98 8001E398 AC540000 */  sw         $s4, ($v0)
/* 1EF9C 8001E39C 8C620000 */  lw         $v0, ($v1)
/* 1EFA0 8001E3A0 244E0008 */  addiu      $t6, $v0, 8
/* 1EFA4 8001E3A4 AC6E0000 */  sw         $t6, ($v1)
/* 1EFA8 8001E3A8 AC560004 */  sw         $s6, 4($v0)
/* 1EFAC 8001E3AC AC550000 */  sw         $s5, ($v0)
/* 1EFB0 8001E3B0 8C620000 */  lw         $v0, ($v1)
/* 1EFB4 8001E3B4 244F0008 */  addiu      $t7, $v0, 8
/* 1EFB8 8001E3B8 AC6F0000 */  sw         $t7, ($v1)
/* 1EFBC 8001E3BC AC400004 */  sw         $zero, 4($v0)
/* 1EFC0 8001E3C0 AC580000 */  sw         $t8, ($v0)
/* 1EFC4 8001E3C4 8C620000 */  lw         $v0, ($v1)
/* 1EFC8 8001E3C8 3C180003 */  lui        $t8, 3
/* 1EFCC 8001E3CC 3718C03C */  ori        $t8, $t8, 0xc03c
/* 1EFD0 8001E3D0 24590008 */  addiu      $t9, $v0, 8
/* 1EFD4 8001E3D4 AC790000 */  sw         $t9, ($v1)
/* 1EFD8 8001E3D8 AC5E0004 */  sw         $fp, 4($v0)
/* 1EFDC 8001E3DC AC570000 */  sw         $s7, ($v0)
/* 1EFE0 8001E3E0 8C620000 */  lw         $v0, ($v1)
/* 1EFE4 8001E3E4 3C0FF200 */  lui        $t7, 0xf200
/* 1EFE8 8001E3E8 244E0008 */  addiu      $t6, $v0, 8
/* 1EFEC 8001E3EC AC6E0000 */  sw         $t6, ($v1)
/* 1EFF0 8001E3F0 AC580004 */  sw         $t8, 4($v0)
/* 1EFF4 8001E3F4 AC4F0000 */  sw         $t7, ($v0)
/* 1EFF8 8001E3F8 8C620000 */  lw         $v0, ($v1)
/* 1EFFC 8001E3FC 3C0E0100 */  lui        $t6, 0x100
/* 1F000 8001E400 35CE4008 */  ori        $t6, $t6, 0x4008
/* 1F004 8001E404 24590008 */  addiu      $t9, $v0, 8
/* 1F008 8001E408 AC790000 */  sw         $t9, ($v1)
/* 1F00C 8001E40C AC500004 */  sw         $s0, 4($v0)
/* 1F010 8001E410 AC4E0000 */  sw         $t6, ($v0)
/* 1F014 8001E414 8C620000 */  lw         $v0, ($v1)
/* 1F018 8001E418 3C180600 */  lui        $t8, 0x600
/* 1F01C 8001E41C 37180204 */  ori        $t8, $t8, 0x204
/* 1F020 8001E420 244F0008 */  addiu      $t7, $v0, 8
/* 1F024 8001E424 AC6F0000 */  sw         $t7, ($v1)
/* 1F028 8001E428 24190406 */  addiu      $t9, $zero, 0x406
/* 1F02C 8001E42C 26100040 */  addiu      $s0, $s0, 0x40
/* 1F030 8001E430 AC590004 */  sw         $t9, 4($v0)
/* 1F034 8001E434 1420FFC4 */  bnez       $at, .L8001E348
/* 1F038 8001E438 AC580000 */   sw        $t8, ($v0)
/* 1F03C 8001E43C 87A200D4 */  lh         $v0, 0xd4($sp)
/* 1F040 8001E440 24420001 */  addiu      $v0, $v0, 1
/* 1F044 8001E444 00021400 */  sll        $v0, $v0, 0x10
/* 1F048 8001E448 00021403 */  sra        $v0, $v0, 0x10
/* 1F04C 8001E44C 2841000F */  slti       $at, $v0, 0xf
/* 1F050 8001E450 1420FFBC */  bnez       $at, .L8001E344
/* 1F054 8001E454 A7A200D4 */   sh        $v0, 0xd4($sp)
/* 1F058 8001E458 AFBF00EC */  sw         $ra, 0xec($sp)
/* 1F05C 8001E45C 8FBF004C */  lw         $ra, 0x4c($sp)
/* 1F060 8001E460 AFB000E8 */  sw         $s0, 0xe8($sp)
/* 1F064 8001E464 8FB00028 */  lw         $s0, 0x28($sp)
/* 1F068 8001E468 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1F06C 8001E46C 8FB20030 */  lw         $s2, 0x30($sp)
/* 1F070 8001E470 8FB30034 */  lw         $s3, 0x34($sp)
/* 1F074 8001E474 8FB40038 */  lw         $s4, 0x38($sp)
/* 1F078 8001E478 8FB5003C */  lw         $s5, 0x3c($sp)
/* 1F07C 8001E47C 8FB60040 */  lw         $s6, 0x40($sp)
/* 1F080 8001E480 8FB70044 */  lw         $s7, 0x44($sp)
/* 1F084 8001E484 8FBE0048 */  lw         $fp, 0x48($sp)
/* 1F088 8001E488 03E00008 */  jr         $ra
/* 1F08C 8001E48C 27BD00D8 */   addiu     $sp, $sp, 0xd8

glabel func_8001E490
/* 1F090 8001E490 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1F094 8001E494 AFBF004C */  sw         $ra, 0x4c($sp)
/* 1F098 8001E498 AFB60048 */  sw         $s6, 0x48($sp)
/* 1F09C 8001E49C AFB50044 */  sw         $s5, 0x44($sp)
/* 1F0A0 8001E4A0 AFB40040 */  sw         $s4, 0x40($sp)
/* 1F0A4 8001E4A4 AFB3003C */  sw         $s3, 0x3c($sp)
/* 1F0A8 8001E4A8 AFB20038 */  sw         $s2, 0x38($sp)
/* 1F0AC 8001E4AC AFB10034 */  sw         $s1, 0x34($sp)
/* 1F0B0 8001E4B0 AFB00030 */  sw         $s0, 0x30($sp)
/* 1F0B4 8001E4B4 24044B00 */  addiu      $a0, $zero, 0x4b00
/* 1F0B8 8001E4B8 0C000971 */  jal        func_800025C4
/* 1F0BC 8001E4BC 00002825 */   or        $a1, $zero, $zero
/* 1F0C0 8001E4C0 10400064 */  beqz       $v0, .L8001E654
/* 1F0C4 8001E4C4 AFA20054 */   sw        $v0, 0x54($sp)
/* 1F0C8 8001E4C8 00408025 */  or         $s0, $v0, $zero
/* 1F0CC 8001E4CC 2403FF10 */  addiu      $v1, $zero, -0xf0
/* 1F0D0 8001E4D0 24760020 */  addiu      $s6, $v1, 0x20
.L8001E4D4:
/* 1F0D4 8001E4D4 0016AC00 */  sll        $s5, $s6, 0x10
/* 1F0D8 8001E4D8 0003A400 */  sll        $s4, $v1, 0x10
/* 1F0DC 8001E4DC 0014A403 */  sra        $s4, $s4, 0x10
/* 1F0E0 8001E4E0 0015AC03 */  sra        $s5, $s5, 0x10
/* 1F0E4 8001E4E4 2411FEC0 */  addiu      $s1, $zero, -0x140
/* 1F0E8 8001E4E8 00119400 */  sll        $s2, $s1, 0x10
.L8001E4EC:
/* 1F0EC 8001E4EC 00129403 */  sra        $s2, $s2, 0x10
/* 1F0F0 8001E4F0 00122C00 */  sll        $a1, $s2, 0x10
/* 1F0F4 8001E4F4 02002025 */  or         $a0, $s0, $zero
/* 1F0F8 8001E4F8 00143400 */  sll        $a2, $s4, 0x10
/* 1F0FC 8001E4FC 240E00FF */  addiu      $t6, $zero, 0xff
/* 1F100 8001E500 240F00FF */  addiu      $t7, $zero, 0xff
/* 1F104 8001E504 241800FF */  addiu      $t8, $zero, 0xff
/* 1F108 8001E508 241900FF */  addiu      $t9, $zero, 0xff
/* 1F10C 8001E50C AFB90024 */  sw         $t9, 0x24($sp)
/* 1F110 8001E510 AFB80020 */  sw         $t8, 0x20($sp)
/* 1F114 8001E514 AFAF001C */  sw         $t7, 0x1c($sp)
/* 1F118 8001E518 AFAE0018 */  sw         $t6, 0x18($sp)
/* 1F11C 8001E51C 00063403 */  sra        $a2, $a2, 0x10
/* 1F120 8001E520 26100010 */  addiu      $s0, $s0, 0x10
/* 1F124 8001E524 00052C03 */  sra        $a1, $a1, 0x10
/* 1F128 8001E528 00003825 */  or         $a3, $zero, $zero
/* 1F12C 8001E52C AFA00010 */  sw         $zero, 0x10($sp)
/* 1F130 8001E530 0C0079A0 */  jal        func_8001E680
/* 1F134 8001E534 AFA00014 */   sw        $zero, 0x14($sp)
/* 1F138 8001E538 02002025 */  or         $a0, $s0, $zero
/* 1F13C 8001E53C 00122C00 */  sll        $a1, $s2, 0x10
/* 1F140 8001E540 00153400 */  sll        $a2, $s5, 0x10
/* 1F144 8001E544 24080200 */  addiu      $t0, $zero, 0x200
/* 1F148 8001E548 240900FF */  addiu      $t1, $zero, 0xff
/* 1F14C 8001E54C 240A00FF */  addiu      $t2, $zero, 0xff
/* 1F150 8001E550 240B00FF */  addiu      $t3, $zero, 0xff
/* 1F154 8001E554 240C00FF */  addiu      $t4, $zero, 0xff
/* 1F158 8001E558 AFAC0024 */  sw         $t4, 0x24($sp)
/* 1F15C 8001E55C AFAB0020 */  sw         $t3, 0x20($sp)
/* 1F160 8001E560 AFAA001C */  sw         $t2, 0x1c($sp)
/* 1F164 8001E564 AFA90018 */  sw         $t1, 0x18($sp)
/* 1F168 8001E568 AFA80014 */  sw         $t0, 0x14($sp)
/* 1F16C 8001E56C 00063403 */  sra        $a2, $a2, 0x10
/* 1F170 8001E570 00052C03 */  sra        $a1, $a1, 0x10
/* 1F174 8001E574 26100010 */  addiu      $s0, $s0, 0x10
/* 1F178 8001E578 00003825 */  or         $a3, $zero, $zero
/* 1F17C 8001E57C 0C0079A0 */  jal        func_8001E680
/* 1F180 8001E580 AFA00010 */   sw        $zero, 0x10($sp)
/* 1F184 8001E584 26320020 */  addiu      $s2, $s1, 0x20
/* 1F188 8001E588 00129C00 */  sll        $s3, $s2, 0x10
/* 1F18C 8001E58C 00139C03 */  sra        $s3, $s3, 0x10
/* 1F190 8001E590 00132C00 */  sll        $a1, $s3, 0x10
/* 1F194 8001E594 02002025 */  or         $a0, $s0, $zero
/* 1F198 8001E598 00153400 */  sll        $a2, $s5, 0x10
/* 1F19C 8001E59C 240D0200 */  addiu      $t5, $zero, 0x200
/* 1F1A0 8001E5A0 240E0200 */  addiu      $t6, $zero, 0x200
/* 1F1A4 8001E5A4 240F00FF */  addiu      $t7, $zero, 0xff
/* 1F1A8 8001E5A8 241800FF */  addiu      $t8, $zero, 0xff
/* 1F1AC 8001E5AC 241900FF */  addiu      $t9, $zero, 0xff
/* 1F1B0 8001E5B0 240800FF */  addiu      $t0, $zero, 0xff
/* 1F1B4 8001E5B4 AFA80024 */  sw         $t0, 0x24($sp)
/* 1F1B8 8001E5B8 AFB90020 */  sw         $t9, 0x20($sp)
/* 1F1BC 8001E5BC AFB8001C */  sw         $t8, 0x1c($sp)
/* 1F1C0 8001E5C0 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1F1C4 8001E5C4 AFAE0014 */  sw         $t6, 0x14($sp)
/* 1F1C8 8001E5C8 AFAD0010 */  sw         $t5, 0x10($sp)
/* 1F1CC 8001E5CC 00063403 */  sra        $a2, $a2, 0x10
/* 1F1D0 8001E5D0 26100010 */  addiu      $s0, $s0, 0x10
/* 1F1D4 8001E5D4 00052C03 */  sra        $a1, $a1, 0x10
/* 1F1D8 8001E5D8 0C0079A0 */  jal        func_8001E680
/* 1F1DC 8001E5DC 00003825 */   or        $a3, $zero, $zero
/* 1F1E0 8001E5E0 02002025 */  or         $a0, $s0, $zero
/* 1F1E4 8001E5E4 00132C00 */  sll        $a1, $s3, 0x10
/* 1F1E8 8001E5E8 00143400 */  sll        $a2, $s4, 0x10
/* 1F1EC 8001E5EC 24090200 */  addiu      $t1, $zero, 0x200
/* 1F1F0 8001E5F0 240A00FF */  addiu      $t2, $zero, 0xff
/* 1F1F4 8001E5F4 240B00FF */  addiu      $t3, $zero, 0xff
/* 1F1F8 8001E5F8 240C00FF */  addiu      $t4, $zero, 0xff
/* 1F1FC 8001E5FC 240D00FF */  addiu      $t5, $zero, 0xff
/* 1F200 8001E600 AFAD0024 */  sw         $t5, 0x24($sp)
/* 1F204 8001E604 AFAC0020 */  sw         $t4, 0x20($sp)
/* 1F208 8001E608 AFAB001C */  sw         $t3, 0x1c($sp)
/* 1F20C 8001E60C AFAA0018 */  sw         $t2, 0x18($sp)
/* 1F210 8001E610 AFA90010 */  sw         $t1, 0x10($sp)
/* 1F214 8001E614 00063403 */  sra        $a2, $a2, 0x10
/* 1F218 8001E618 00052C03 */  sra        $a1, $a1, 0x10
/* 1F21C 8001E61C 26100010 */  addiu      $s0, $s0, 0x10
/* 1F220 8001E620 00003825 */  or         $a3, $zero, $zero
/* 1F224 8001E624 0C0079A0 */  jal        func_8001E680
/* 1F228 8001E628 AFA00014 */   sw        $zero, 0x14($sp)
/* 1F22C 8001E62C 00128C00 */  sll        $s1, $s2, 0x10
/* 1F230 8001E630 00118C03 */  sra        $s1, $s1, 0x10
/* 1F234 8001E634 2A210140 */  slti       $at, $s1, 0x140
/* 1F238 8001E638 5420FFAC */  bnel       $at, $zero, .L8001E4EC
/* 1F23C 8001E63C 00119400 */   sll       $s2, $s1, 0x10
/* 1F240 8001E640 00161C00 */  sll        $v1, $s6, 0x10
/* 1F244 8001E644 00031C03 */  sra        $v1, $v1, 0x10
/* 1F248 8001E648 286100F0 */  slti       $at, $v1, 0xf0
/* 1F24C 8001E64C 5420FFA1 */  bnel       $at, $zero, .L8001E4D4
/* 1F250 8001E650 24760020 */   addiu     $s6, $v1, 0x20
.L8001E654:
/* 1F254 8001E654 8FBF004C */  lw         $ra, 0x4c($sp)
/* 1F258 8001E658 8FA20054 */  lw         $v0, 0x54($sp)
/* 1F25C 8001E65C 8FB00030 */  lw         $s0, 0x30($sp)
/* 1F260 8001E660 8FB10034 */  lw         $s1, 0x34($sp)
/* 1F264 8001E664 8FB20038 */  lw         $s2, 0x38($sp)
/* 1F268 8001E668 8FB3003C */  lw         $s3, 0x3c($sp)
/* 1F26C 8001E66C 8FB40040 */  lw         $s4, 0x40($sp)
/* 1F270 8001E670 8FB50044 */  lw         $s5, 0x44($sp)
/* 1F274 8001E674 8FB60048 */  lw         $s6, 0x48($sp)
/* 1F278 8001E678 03E00008 */  jr         $ra
/* 1F27C 8001E67C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8001E680
/* 1F280 8001E680 AFA50004 */  sw         $a1, 4($sp)
/* 1F284 8001E684 AFA60008 */  sw         $a2, 8($sp)
/* 1F288 8001E688 AFA7000C */  sw         $a3, 0xc($sp)
/* 1F28C 8001E68C 00073C00 */  sll        $a3, $a3, 0x10
/* 1F290 8001E690 00063400 */  sll        $a2, $a2, 0x10
/* 1F294 8001E694 00052C00 */  sll        $a1, $a1, 0x10
/* 1F298 8001E698 00052C03 */  sra        $a1, $a1, 0x10
/* 1F29C 8001E69C 00063403 */  sra        $a2, $a2, 0x10
/* 1F2A0 8001E6A0 00073C03 */  sra        $a3, $a3, 0x10
/* 1F2A4 8001E6A4 A4850000 */  sh         $a1, ($a0)
/* 1F2A8 8001E6A8 A4860002 */  sh         $a2, 2($a0)
/* 1F2AC 8001E6AC A4870004 */  sh         $a3, 4($a0)
/* 1F2B0 8001E6B0 A4800006 */  sh         $zero, 6($a0)
/* 1F2B4 8001E6B4 87AE0012 */  lh         $t6, 0x12($sp)
/* 1F2B8 8001E6B8 A48E0008 */  sh         $t6, 8($a0)
/* 1F2BC 8001E6BC 87AF0016 */  lh         $t7, 0x16($sp)
/* 1F2C0 8001E6C0 A48F000A */  sh         $t7, 0xa($a0)
/* 1F2C4 8001E6C4 93B8001B */  lbu        $t8, 0x1b($sp)
/* 1F2C8 8001E6C8 A098000C */  sb         $t8, 0xc($a0)
/* 1F2CC 8001E6CC 93B9001F */  lbu        $t9, 0x1f($sp)
/* 1F2D0 8001E6D0 A099000D */  sb         $t9, 0xd($a0)
/* 1F2D4 8001E6D4 93A80023 */  lbu        $t0, 0x23($sp)
/* 1F2D8 8001E6D8 A088000E */  sb         $t0, 0xe($a0)
/* 1F2DC 8001E6DC 93A90027 */  lbu        $t1, 0x27($sp)
/* 1F2E0 8001E6E0 03E00008 */  jr         $ra
/* 1F2E4 8001E6E4 A089000F */   sb        $t1, 0xf($a0)

glabel func_8001E6E8
/* 1F2E8 8001E6E8 AFA50004 */  sw         $a1, 4($sp)
/* 1F2EC 8001E6EC AFA60008 */  sw         $a2, 8($sp)
/* 1F2F0 8001E6F0 00063400 */  sll        $a2, $a2, 0x10
/* 1F2F4 8001E6F4 00052C00 */  sll        $a1, $a1, 0x10
/* 1F2F8 8001E6F8 00052C03 */  sra        $a1, $a1, 0x10
/* 1F2FC 8001E6FC 00063403 */  sra        $a2, $a2, 0x10
/* 1F300 8001E700 240701FF */  addiu      $a3, $zero, 0x1ff
/* 1F304 8001E704 00051040 */  sll        $v0, $a1, 1
/* 1F308 8001E708 00061840 */  sll        $v1, $a2, 1
/* 1F30C 8001E70C A4820008 */  sh         $v0, 8($a0)
/* 1F310 8001E710 A483000A */  sh         $v1, 0xa($a0)
/* 1F314 8001E714 A487000C */  sh         $a3, 0xc($a0)
/* 1F318 8001E718 A480000E */  sh         $zero, 0xe($a0)
/* 1F31C 8001E71C A4820000 */  sh         $v0, ($a0)
/* 1F320 8001E720 A4830002 */  sh         $v1, 2($a0)
/* 1F324 8001E724 A4870004 */  sh         $a3, 4($a0)
/* 1F328 8001E728 03E00008 */  jr         $ra
/* 1F32C 8001E72C A4800006 */   sh        $zero, 6($a0)

glabel func_8001E730
/* 1F330 8001E730 AFA40000 */  sw         $a0, ($sp)
/* 1F334 8001E734 3084FFFF */  andi       $a0, $a0, 0xffff
/* 1F338 8001E738 28810020 */  slti       $at, $a0, 0x20
/* 1F33C 8001E73C 00001825 */  or         $v1, $zero, $zero
/* 1F340 8001E740 14200008 */  bnez       $at, .L8001E764
/* 1F344 8001E744 00801025 */   or        $v0, $a0, $zero
/* 1F348 8001E748 28810080 */  slti       $at, $a0, 0x80
/* 1F34C 8001E74C 50200006 */  beql       $at, $zero, .L8001E768
/* 1F350 8001E750 284100A0 */   slti      $at, $v0, 0xa0
/* 1F354 8001E754 3C038007 */  lui        $v1, 0x8007
/* 1F358 8001E758 00641821 */  addu       $v1, $v1, $a0
/* 1F35C 8001E75C 03E00008 */  jr         $ra
/* 1F360 8001E760 9062F630 */   lbu       $v0, -0x9d0($v1)
.L8001E764:
/* 1F364 8001E764 284100A0 */  slti       $at, $v0, 0xa0
.L8001E768:
/* 1F368 8001E768 14200006 */  bnez       $at, .L8001E784
/* 1F36C 8001E76C 28410100 */   slti      $at, $v0, 0x100
/* 1F370 8001E770 10200004 */  beqz       $at, .L8001E784
/* 1F374 8001E774 00000000 */   nop       
/* 1F378 8001E778 3C038007 */  lui        $v1, 0x8007
/* 1F37C 8001E77C 00621821 */  addu       $v1, $v1, $v0
/* 1F380 8001E780 9063F610 */  lbu        $v1, -0x9f0($v1)
.L8001E784:
/* 1F384 8001E784 03E00008 */  jr         $ra
/* 1F388 8001E788 00601025 */   or        $v0, $v1, $zero

glabel func_8001E78C
/* 1F38C 8001E78C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F390 8001E790 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F394 8001E794 AFA40018 */  sw         $a0, 0x18($sp)
/* 1F398 8001E798 AFA5001C */  sw         $a1, 0x1c($sp)
/* 1F39C 8001E79C 0C0079CC */  jal        func_8001E730
/* 1F3A0 8001E7A0 30A4FFFF */   andi      $a0, $a1, 0xffff
/* 1F3A4 8001E7A4 8FAE0018 */  lw         $t6, 0x18($sp)
/* 1F3A8 8001E7A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F3AC 8001E7AC 8DCF0004 */  lw         $t7, 4($t6)
/* 1F3B0 8001E7B0 01E2C021 */  addu       $t8, $t7, $v0
/* 1F3B4 8001E7B4 93020000 */  lbu        $v0, ($t8)
/* 1F3B8 8001E7B8 03E00008 */  jr         $ra
/* 1F3BC 8001E7BC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001E7C0
/* 1F3C0 8001E7C0 3C01800B */  lui        $at, 0x800b
/* 1F3C4 8001E7C4 AFA40000 */  sw         $a0, ($sp)
/* 1F3C8 8001E7C8 AFA50004 */  sw         $a1, 4($sp)
/* 1F3CC 8001E7CC 03E00008 */  jr         $ra
/* 1F3D0 8001E7D0 AC20C870 */   sw        $zero, -0x3790($at)

glabel func_8001E7D4
/* 1F3D4 8001E7D4 AFA40000 */  sw         $a0, ($sp)
/* 1F3D8 8001E7D8 3C04800B */  lui        $a0, 0x800b
/* 1F3DC 8001E7DC 2484C870 */  addiu      $a0, $a0, -0x3790
/* 1F3E0 8001E7E0 8C820000 */  lw         $v0, ($a0)
/* 1F3E4 8001E7E4 00051880 */  sll        $v1, $a1, 2
/* 1F3E8 8001E7E8 00651823 */  subu       $v1, $v1, $a1
/* 1F3EC 8001E7EC 10400006 */  beqz       $v0, .L8001E808
/* 1F3F0 8001E7F0 00031880 */   sll       $v1, $v1, 2
/* 1F3F4 8001E7F4 00437021 */  addu       $t6, $v0, $v1
/* 1F3F8 8001E7F8 ADC00004 */  sw         $zero, 4($t6)
/* 1F3FC 8001E7FC 8C8F0000 */  lw         $t7, ($a0)
/* 1F400 8001E800 01E3C021 */  addu       $t8, $t7, $v1
/* 1F404 8001E804 AF000008 */  sw         $zero, 8($t8)
.L8001E808:
/* 1F408 8001E808 03E00008 */  jr         $ra
/* 1F40C 8001E80C 00000000 */   nop       

glabel func_8001E810
/* 1F410 8001E810 24010001 */  addiu      $at, $zero, 1
/* 1F414 8001E814 10810019 */  beq        $a0, $at, .L8001E87C
/* 1F418 8001E818 00001825 */   or        $v1, $zero, $zero
/* 1F41C 8001E81C 24010002 */  addiu      $at, $zero, 2
/* 1F420 8001E820 54810004 */  bnel       $a0, $at, .L8001E834
/* 1F424 8001E824 24010004 */   addiu     $at, $zero, 4
/* 1F428 8001E828 03E00008 */  jr         $ra
/* 1F42C 8001E82C 24020001 */   addiu     $v0, $zero, 1
/* 1F430 8001E830 24010004 */  addiu      $at, $zero, 4
.L8001E834:
/* 1F434 8001E834 54810004 */  bnel       $a0, $at, .L8001E848
/* 1F438 8001E838 24010008 */   addiu     $at, $zero, 8
/* 1F43C 8001E83C 03E00008 */  jr         $ra
/* 1F440 8001E840 24020002 */   addiu     $v0, $zero, 2
/* 1F444 8001E844 24010008 */  addiu      $at, $zero, 8
.L8001E848:
/* 1F448 8001E848 54810004 */  bnel       $a0, $at, .L8001E85C
/* 1F44C 8001E84C 24010010 */   addiu     $at, $zero, 0x10
/* 1F450 8001E850 03E00008 */  jr         $ra
/* 1F454 8001E854 24020003 */   addiu     $v0, $zero, 3
/* 1F458 8001E858 24010010 */  addiu      $at, $zero, 0x10
.L8001E85C:
/* 1F45C 8001E85C 54810004 */  bnel       $a0, $at, .L8001E870
/* 1F460 8001E860 24010020 */   addiu     $at, $zero, 0x20
/* 1F464 8001E864 03E00008 */  jr         $ra
/* 1F468 8001E868 24020004 */   addiu     $v0, $zero, 4
/* 1F46C 8001E86C 24010020 */  addiu      $at, $zero, 0x20
.L8001E870:
/* 1F470 8001E870 14810002 */  bne        $a0, $at, .L8001E87C
/* 1F474 8001E874 00000000 */   nop       
/* 1F478 8001E878 24030005 */  addiu      $v1, $zero, 5
.L8001E87C:
/* 1F47C 8001E87C 03E00008 */  jr         $ra
/* 1F480 8001E880 00601025 */   or        $v0, $v1, $zero

glabel func_8001E884
/* 1F484 8001E884 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1F488 8001E888 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F48C 8001E88C AFA50024 */  sw         $a1, 0x24($sp)
/* 1F490 8001E890 0C007A04 */  jal        func_8001E810
/* 1F494 8001E894 AFA60028 */   sw        $a2, 0x28($sp)
/* 1F498 8001E898 3C07800B */  lui        $a3, 0x800b
/* 1F49C 8001E89C 24E7C870 */  addiu      $a3, $a3, -0x3790
/* 1F4A0 8001E8A0 8CE30000 */  lw         $v1, ($a3)
/* 1F4A4 8001E8A4 00027080 */  sll        $t6, $v0, 2
/* 1F4A8 8001E8A8 01C27023 */  subu       $t6, $t6, $v0
/* 1F4AC 8001E8AC 000E7080 */  sll        $t6, $t6, 2
/* 1F4B0 8001E8B0 006E7821 */  addu       $t7, $v1, $t6
/* 1F4B4 8001E8B4 8DF80004 */  lw         $t8, 4($t7)
/* 1F4B8 8001E8B8 00402825 */  or         $a1, $v0, $zero
/* 1F4BC 8001E8BC 57000020 */  bnel       $t8, $zero, .L8001E940
/* 1F4C0 8001E8C0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1F4C4 8001E8C4 8C640048 */  lw         $a0, 0x48($v1)
/* 1F4C8 8001E8C8 0C001213 */  jal        func_8000484C
/* 1F4CC 8001E8CC AFA2001C */   sw        $v0, 0x1c($sp)
/* 1F4D0 8001E8D0 3C07800B */  lui        $a3, 0x800b
/* 1F4D4 8001E8D4 24E7C870 */  addiu      $a3, $a3, -0x3790
/* 1F4D8 8001E8D8 8FA5001C */  lw         $a1, 0x1c($sp)
/* 1F4DC 8001E8DC 8CF90000 */  lw         $t9, ($a3)
/* 1F4E0 8001E8E0 24580090 */  addiu      $t8, $v0, 0x90
/* 1F4E4 8001E8E4 00051880 */  sll        $v1, $a1, 2
/* 1F4E8 8001E8E8 A3250050 */  sb         $a1, 0x50($t9)
/* 1F4EC 8001E8EC 8CE90000 */  lw         $t1, ($a3)
/* 1F4F0 8001E8F0 8FA80024 */  lw         $t0, 0x24($sp)
/* 1F4F4 8001E8F4 00651823 */  subu       $v1, $v1, $a1
/* 1F4F8 8001E8F8 00031880 */  sll        $v1, $v1, 2
/* 1F4FC 8001E8FC 01235021 */  addu       $t2, $t1, $v1
/* 1F500 8001E900 A5480000 */  sh         $t0, ($t2)
/* 1F504 8001E904 8CEC0000 */  lw         $t4, ($a3)
/* 1F508 8001E908 8FAB0028 */  lw         $t3, 0x28($sp)
/* 1F50C 8001E90C 3C068002 */  lui        $a2, 0x8002
/* 1F510 8001E910 01836821 */  addu       $t5, $t4, $v1
/* 1F514 8001E914 A5AB0002 */  sh         $t3, 2($t5)
/* 1F518 8001E918 8CEE0000 */  lw         $t6, ($a3)
/* 1F51C 8001E91C 24C6E7D4 */  addiu      $a2, $a2, -0x182c
/* 1F520 8001E920 00402025 */  or         $a0, $v0, $zero
/* 1F524 8001E924 01C37821 */  addu       $t7, $t6, $v1
/* 1F528 8001E928 ADE20004 */  sw         $v0, 4($t7)
/* 1F52C 8001E92C 8CF90000 */  lw         $t9, ($a3)
/* 1F530 8001E930 03234821 */  addu       $t1, $t9, $v1
/* 1F534 8001E934 0C000A85 */  jal        func_80002A14
/* 1F538 8001E938 AD380008 */   sw        $t8, 8($t1)
/* 1F53C 8001E93C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001E940:
/* 1F540 8001E940 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1F544 8001E944 03E00008 */  jr         $ra
/* 1F548 8001E948 00000000 */   nop       

glabel func_8001E94C
/* 1F54C 8001E94C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F550 8001E950 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F554 8001E954 AFA40018 */  sw         $a0, 0x18($sp)
/* 1F558 8001E958 3C065052 */  lui        $a2, 0x5052
/* 1F55C 8001E95C 3C078002 */  lui        $a3, 0x8002
/* 1F560 8001E960 24E7E7C0 */  addiu      $a3, $a3, -0x1840
/* 1F564 8001E964 34C64E54 */  ori        $a2, $a2, 0x4e54
/* 1F568 8001E968 0C000953 */  jal        func_8000254C
/* 1F56C 8001E96C 24040054 */   addiu     $a0, $zero, 0x54
/* 1F570 8001E970 3C03800B */  lui        $v1, 0x800b
/* 1F574 8001E974 2463C870 */  addiu      $v1, $v1, -0x3790
/* 1F578 8001E978 AC620000 */  sw         $v0, ($v1)
/* 1F57C 8001E97C 00402025 */  or         $a0, $v0, $zero
/* 1F580 8001E980 0C015FF4 */  jal        func_80057FD0
/* 1F584 8001E984 24050054 */   addiu     $a1, $zero, 0x54
/* 1F588 8001E988 3C04003C */  lui        $a0, 0x3c
/* 1F58C 8001E98C 3C05003D */  lui        $a1, 0x3d
/* 1F590 8001E990 24A5B130 */  addiu      $a1, $a1, -0x4ed0
/* 1F594 8001E994 2484A190 */  addiu      $a0, $a0, -0x5e70
/* 1F598 8001E998 24060001 */  addiu      $a2, $zero, 1
/* 1F59C 8001E99C 0C00113D */  jal        func_800044F4
/* 1F5A0 8001E9A0 24070001 */   addiu     $a3, $zero, 1
/* 1F5A4 8001E9A4 3C0E800B */  lui        $t6, 0x800b
/* 1F5A8 8001E9A8 8DCEC870 */  lw         $t6, -0x3790($t6)
/* 1F5AC 8001E9AC ADC20048 */  sw         $v0, 0x48($t6)
/* 1F5B0 8001E9B0 0C007A7C */  jal        func_8001E9F0
/* 1F5B4 8001E9B4 8FA40018 */   lw        $a0, 0x18($sp)
/* 1F5B8 8001E9B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F5BC 8001E9BC 3C02800B */  lui        $v0, 0x800b
/* 1F5C0 8001E9C0 8C42C870 */  lw         $v0, -0x3790($v0)
/* 1F5C4 8001E9C4 03E00008 */  jr         $ra
/* 1F5C8 8001E9C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001E9CC
/* 1F5CC 8001E9CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F5D0 8001E9D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F5D4 8001E9D4 3C04800B */  lui        $a0, 0x800b
/* 1F5D8 8001E9D8 0C000988 */  jal        func_80002620
/* 1F5DC 8001E9DC 8C84C870 */   lw        $a0, -0x3790($a0)
/* 1F5E0 8001E9E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F5E4 8001E9E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F5E8 8001E9E8 03E00008 */  jr         $ra
/* 1F5EC 8001E9EC 00000000 */   nop       

glabel func_8001E9F0
/* 1F5F0 8001E9F0 3C0E800B */  lui        $t6, 0x800b
/* 1F5F4 8001E9F4 8DCEC870 */  lw         $t6, -0x3790($t6)
/* 1F5F8 8001E9F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F5FC 8001E9FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F600 8001EA00 11C0002F */  beqz       $t6, .L8001EAC0
/* 1F604 8001EA04 00803825 */   or        $a3, $a0, $zero
/* 1F608 8001EA08 308F0020 */  andi       $t7, $a0, 0x20
/* 1F60C 8001EA0C 11E00006 */  beqz       $t7, .L8001EA28
/* 1F610 8001EA10 24040020 */   addiu     $a0, $zero, 0x20
/* 1F614 8001EA14 24050020 */  addiu      $a1, $zero, 0x20
/* 1F618 8001EA18 24060020 */  addiu      $a2, $zero, 0x20
/* 1F61C 8001EA1C 0C007A21 */  jal        func_8001E884
/* 1F620 8001EA20 AFA70018 */   sw        $a3, 0x18($sp)
/* 1F624 8001EA24 8FA70018 */  lw         $a3, 0x18($sp)
.L8001EA28:
/* 1F628 8001EA28 30F80010 */  andi       $t8, $a3, 0x10
/* 1F62C 8001EA2C 13000006 */  beqz       $t8, .L8001EA48
/* 1F630 8001EA30 24040010 */   addiu     $a0, $zero, 0x10
/* 1F634 8001EA34 24050018 */  addiu      $a1, $zero, 0x18
/* 1F638 8001EA38 24060018 */  addiu      $a2, $zero, 0x18
/* 1F63C 8001EA3C 0C007A21 */  jal        func_8001E884
/* 1F640 8001EA40 AFA70018 */   sw        $a3, 0x18($sp)
/* 1F644 8001EA44 8FA70018 */  lw         $a3, 0x18($sp)
.L8001EA48:
/* 1F648 8001EA48 30F90008 */  andi       $t9, $a3, 8
/* 1F64C 8001EA4C 13200006 */  beqz       $t9, .L8001EA68
/* 1F650 8001EA50 24040008 */   addiu     $a0, $zero, 8
/* 1F654 8001EA54 24050018 */  addiu      $a1, $zero, 0x18
/* 1F658 8001EA58 24060014 */  addiu      $a2, $zero, 0x14
/* 1F65C 8001EA5C 0C007A21 */  jal        func_8001E884
/* 1F660 8001EA60 AFA70018 */   sw        $a3, 0x18($sp)
/* 1F664 8001EA64 8FA70018 */  lw         $a3, 0x18($sp)
.L8001EA68:
/* 1F668 8001EA68 30E80004 */  andi       $t0, $a3, 4
/* 1F66C 8001EA6C 11000006 */  beqz       $t0, .L8001EA88
/* 1F670 8001EA70 24040004 */   addiu     $a0, $zero, 4
/* 1F674 8001EA74 24050010 */  addiu      $a1, $zero, 0x10
/* 1F678 8001EA78 24060010 */  addiu      $a2, $zero, 0x10
/* 1F67C 8001EA7C 0C007A21 */  jal        func_8001E884
/* 1F680 8001EA80 AFA70018 */   sw        $a3, 0x18($sp)
/* 1F684 8001EA84 8FA70018 */  lw         $a3, 0x18($sp)
.L8001EA88:
/* 1F688 8001EA88 30E90002 */  andi       $t1, $a3, 2
/* 1F68C 8001EA8C 11200006 */  beqz       $t1, .L8001EAA8
/* 1F690 8001EA90 24040002 */   addiu     $a0, $zero, 2
/* 1F694 8001EA94 24050010 */  addiu      $a1, $zero, 0x10
/* 1F698 8001EA98 2406000C */  addiu      $a2, $zero, 0xc
/* 1F69C 8001EA9C 0C007A21 */  jal        func_8001E884
/* 1F6A0 8001EAA0 AFA70018 */   sw        $a3, 0x18($sp)
/* 1F6A4 8001EAA4 8FA70018 */  lw         $a3, 0x18($sp)
.L8001EAA8:
/* 1F6A8 8001EAA8 30EA0001 */  andi       $t2, $a3, 1
/* 1F6AC 8001EAAC 11400004 */  beqz       $t2, .L8001EAC0
/* 1F6B0 8001EAB0 24040001 */   addiu     $a0, $zero, 1
/* 1F6B4 8001EAB4 24050010 */  addiu      $a1, $zero, 0x10
/* 1F6B8 8001EAB8 0C007A21 */  jal        func_8001E884
/* 1F6BC 8001EABC 2406000A */   addiu     $a2, $zero, 0xa
.L8001EAC0:
/* 1F6C0 8001EAC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F6C4 8001EAC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F6C8 8001EAC8 03E00008 */  jr         $ra
/* 1F6CC 8001EACC 00000000 */   nop       

glabel func_8001EAD0
/* 1F6D0 8001EAD0 3C02800B */  lui        $v0, 0x800b
/* 1F6D4 8001EAD4 8C42C870 */  lw         $v0, -0x3790($v0)
/* 1F6D8 8001EAD8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F6DC 8001EADC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F6E0 8001EAE0 1040003B */  beqz       $v0, .L8001EBD0
/* 1F6E4 8001EAE4 00802825 */   or        $a1, $a0, $zero
/* 1F6E8 8001EAE8 308E0001 */  andi       $t6, $a0, 1
/* 1F6EC 8001EAEC 51C00008 */  beql       $t6, $zero, .L8001EB10
/* 1F6F0 8001EAF0 30AF0002 */   andi      $t7, $a1, 2
/* 1F6F4 8001EAF4 8C440004 */  lw         $a0, 4($v0)
/* 1F6F8 8001EAF8 50800005 */  beql       $a0, $zero, .L8001EB10
/* 1F6FC 8001EAFC 30AF0002 */   andi      $t7, $a1, 2
/* 1F700 8001EB00 0C000988 */  jal        func_80002620
/* 1F704 8001EB04 AFA50018 */   sw        $a1, 0x18($sp)
/* 1F708 8001EB08 8FA50018 */  lw         $a1, 0x18($sp)
/* 1F70C 8001EB0C 30AF0002 */  andi       $t7, $a1, 2
.L8001EB10:
/* 1F710 8001EB10 11E00008 */  beqz       $t7, .L8001EB34
/* 1F714 8001EB14 3C18800B */   lui       $t8, 0x800b
/* 1F718 8001EB18 8F18C870 */  lw         $t8, -0x3790($t8)
/* 1F71C 8001EB1C 8F040010 */  lw         $a0, 0x10($t8)
/* 1F720 8001EB20 50800005 */  beql       $a0, $zero, .L8001EB38
/* 1F724 8001EB24 30B90004 */   andi      $t9, $a1, 4
/* 1F728 8001EB28 0C000988 */  jal        func_80002620
/* 1F72C 8001EB2C AFA50018 */   sw        $a1, 0x18($sp)
/* 1F730 8001EB30 8FA50018 */  lw         $a1, 0x18($sp)
.L8001EB34:
/* 1F734 8001EB34 30B90004 */  andi       $t9, $a1, 4
.L8001EB38:
/* 1F738 8001EB38 13200008 */  beqz       $t9, .L8001EB5C
/* 1F73C 8001EB3C 3C08800B */   lui       $t0, 0x800b
/* 1F740 8001EB40 8D08C870 */  lw         $t0, -0x3790($t0)
/* 1F744 8001EB44 8D04001C */  lw         $a0, 0x1c($t0)
/* 1F748 8001EB48 50800005 */  beql       $a0, $zero, .L8001EB60
/* 1F74C 8001EB4C 30A90008 */   andi      $t1, $a1, 8
/* 1F750 8001EB50 0C000988 */  jal        func_80002620
/* 1F754 8001EB54 AFA50018 */   sw        $a1, 0x18($sp)
/* 1F758 8001EB58 8FA50018 */  lw         $a1, 0x18($sp)
.L8001EB5C:
/* 1F75C 8001EB5C 30A90008 */  andi       $t1, $a1, 8
.L8001EB60:
/* 1F760 8001EB60 11200008 */  beqz       $t1, .L8001EB84
/* 1F764 8001EB64 3C0A800B */   lui       $t2, 0x800b
/* 1F768 8001EB68 8D4AC870 */  lw         $t2, -0x3790($t2)
/* 1F76C 8001EB6C 8D440028 */  lw         $a0, 0x28($t2)
/* 1F770 8001EB70 50800005 */  beql       $a0, $zero, .L8001EB88
/* 1F774 8001EB74 30AB0010 */   andi      $t3, $a1, 0x10
/* 1F778 8001EB78 0C000988 */  jal        func_80002620
/* 1F77C 8001EB7C AFA50018 */   sw        $a1, 0x18($sp)
/* 1F780 8001EB80 8FA50018 */  lw         $a1, 0x18($sp)
.L8001EB84:
/* 1F784 8001EB84 30AB0010 */  andi       $t3, $a1, 0x10
.L8001EB88:
/* 1F788 8001EB88 11600008 */  beqz       $t3, .L8001EBAC
/* 1F78C 8001EB8C 3C0C800B */   lui       $t4, 0x800b
/* 1F790 8001EB90 8D8CC870 */  lw         $t4, -0x3790($t4)
/* 1F794 8001EB94 8D840034 */  lw         $a0, 0x34($t4)
/* 1F798 8001EB98 50800005 */  beql       $a0, $zero, .L8001EBB0
/* 1F79C 8001EB9C 30AD0020 */   andi      $t5, $a1, 0x20
/* 1F7A0 8001EBA0 0C000988 */  jal        func_80002620
/* 1F7A4 8001EBA4 AFA50018 */   sw        $a1, 0x18($sp)
/* 1F7A8 8001EBA8 8FA50018 */  lw         $a1, 0x18($sp)
.L8001EBAC:
/* 1F7AC 8001EBAC 30AD0020 */  andi       $t5, $a1, 0x20
.L8001EBB0:
/* 1F7B0 8001EBB0 11A00007 */  beqz       $t5, .L8001EBD0
/* 1F7B4 8001EBB4 3C0E800B */   lui       $t6, 0x800b
/* 1F7B8 8001EBB8 8DCEC870 */  lw         $t6, -0x3790($t6)
/* 1F7BC 8001EBBC 8DC40040 */  lw         $a0, 0x40($t6)
/* 1F7C0 8001EBC0 50800004 */  beql       $a0, $zero, .L8001EBD4
/* 1F7C4 8001EBC4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1F7C8 8001EBC8 0C000988 */  jal        func_80002620
/* 1F7CC 8001EBCC 00000000 */   nop       
.L8001EBD0:
/* 1F7D0 8001EBD0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001EBD4:
/* 1F7D4 8001EBD4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F7D8 8001EBD8 03E00008 */  jr         $ra
/* 1F7DC 8001EBDC 00000000 */   nop       

glabel func_8001EBE0
/* 1F7E0 8001EBE0 3C06800B */  lui        $a2, 0x800b
/* 1F7E4 8001EBE4 24C6C870 */  addiu      $a2, $a2, -0x3790
/* 1F7E8 8001EBE8 8CCE0000 */  lw         $t6, ($a2)
/* 1F7EC 8001EBEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F7F0 8001EBF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F7F4 8001EBF4 11C0000E */  beqz       $t6, .L8001EC30
/* 1F7F8 8001EBF8 AFA5001C */   sw        $a1, 0x1c($sp)
/* 1F7FC 8001EBFC 0C007A04 */  jal        func_8001E810
/* 1F800 8001EC00 00000000 */   nop       
/* 1F804 8001EC04 3C06800B */  lui        $a2, 0x800b
/* 1F808 8001EC08 24C6C870 */  addiu      $a2, $a2, -0x3790
/* 1F80C 8001EC0C 8CCF0000 */  lw         $t7, ($a2)
/* 1F810 8001EC10 A1E20050 */  sb         $v0, 0x50($t7)
/* 1F814 8001EC14 8CD90000 */  lw         $t9, ($a2)
/* 1F818 8001EC18 8FB8001C */  lw         $t8, 0x1c($sp)
/* 1F81C 8001EC1C A3380051 */  sb         $t8, 0x51($t9)
/* 1F820 8001EC20 8CC30000 */  lw         $v1, ($a2)
/* 1F824 8001EC24 90680053 */  lbu        $t0, 0x53($v1)
/* 1F828 8001EC28 3109FFFD */  andi       $t1, $t0, 0xfffd
/* 1F82C 8001EC2C A0690053 */  sb         $t1, 0x53($v1)
.L8001EC30:
/* 1F830 8001EC30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F834 8001EC34 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F838 8001EC38 03E00008 */  jr         $ra
/* 1F83C 8001EC3C 00000000 */   nop       

glabel func_8001EC40
/* 1F840 8001EC40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F844 8001EC44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F848 8001EC48 10A00015 */  beqz       $a1, .L8001ECA0
/* 1F84C 8001EC4C 00001825 */   or        $v1, $zero, $zero
/* 1F850 8001EC50 3C0E800B */  lui        $t6, 0x800b
/* 1F854 8001EC54 8DCEC870 */  lw         $t6, -0x3790($t6)
/* 1F858 8001EC58 51C00012 */  beql       $t6, $zero, .L8001ECA4
/* 1F85C 8001EC5C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1F860 8001EC60 0C007A04 */  jal        func_8001E810
/* 1F864 8001EC64 AFA5001C */   sw        $a1, 0x1c($sp)
/* 1F868 8001EC68 3C0F800B */  lui        $t7, 0x800b
/* 1F86C 8001EC6C 8DEFC870 */  lw         $t7, -0x3790($t7)
/* 1F870 8001EC70 0002C080 */  sll        $t8, $v0, 2
/* 1F874 8001EC74 0302C023 */  subu       $t8, $t8, $v0
/* 1F878 8001EC78 0018C080 */  sll        $t8, $t8, 2
/* 1F87C 8001EC7C 01F8C821 */  addu       $t9, $t7, $t8
/* 1F880 8001EC80 8F290000 */  lw         $t1, ($t9)
/* 1F884 8001EC84 8FA5001C */  lw         $a1, 0x1c($sp)
/* 1F888 8001EC88 24030001 */  addiu      $v1, $zero, 1
/* 1F88C 8001EC8C ACA90000 */  sw         $t1, ($a1)
/* 1F890 8001EC90 8F280004 */  lw         $t0, 4($t9)
/* 1F894 8001EC94 ACA80004 */  sw         $t0, 4($a1)
/* 1F898 8001EC98 8F290008 */  lw         $t1, 8($t9)
/* 1F89C 8001EC9C ACA90008 */  sw         $t1, 8($a1)
.L8001ECA0:
/* 1F8A0 8001ECA0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001ECA4:
/* 1F8A4 8001ECA4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F8A8 8001ECA8 00601025 */  or         $v0, $v1, $zero
/* 1F8AC 8001ECAC 03E00008 */  jr         $ra
/* 1F8B0 8001ECB0 00000000 */   nop       

glabel func_8001ECB4
/* 1F8B4 8001ECB4 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 1F8B8 8001ECB8 3C07800B */  lui        $a3, 0x800b
/* 1F8BC 8001ECBC 8CE7C870 */  lw         $a3, -0x3790($a3)
/* 1F8C0 8001ECC0 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1F8C4 8001ECC4 AFB10030 */  sw         $s1, 0x30($sp)
/* 1F8C8 8001ECC8 AFB0002C */  sw         $s0, 0x2c($sp)
/* 1F8CC 8001ECCC AFA40090 */  sw         $a0, 0x90($sp)
/* 1F8D0 8001ECD0 AFA50094 */  sw         $a1, 0x94($sp)
/* 1F8D4 8001ECD4 AFA60098 */  sw         $a2, 0x98($sp)
/* 1F8D8 8001ECD8 90EE0050 */  lbu        $t6, 0x50($a3)
/* 1F8DC 8001ECDC 00063400 */  sll        $a2, $a2, 0x10
/* 1F8E0 8001ECE0 00063403 */  sra        $a2, $a2, 0x10
/* 1F8E4 8001ECE4 000E7880 */  sll        $t7, $t6, 2
/* 1F8E8 8001ECE8 00048C00 */  sll        $s1, $a0, 0x10
/* 1F8EC 8001ECEC 01EE7823 */  subu       $t7, $t7, $t6
/* 1F8F0 8001ECF0 000F7880 */  sll        $t7, $t7, 2
/* 1F8F4 8001ECF4 30C4FFFF */  andi       $a0, $a2, 0xffff
/* 1F8F8 8001ECF8 00118C03 */  sra        $s1, $s1, 0x10
/* 1F8FC 8001ECFC AFA4003C */  sw         $a0, 0x3c($sp)
/* 1F900 8001ED00 0C0079CC */  jal        func_8001E730
/* 1F904 8001ED04 00EF8021 */   addu      $s0, $a3, $t7
/* 1F908 8001ED08 86180000 */  lh         $t8, ($s0)
/* 1F90C 8001ED0C 860D0002 */  lh         $t5, 2($s0)
/* 1F910 8001ED10 02002025 */  or         $a0, $s0, $zero
/* 1F914 8001ED14 00580019 */  multu      $v0, $t8
/* 1F918 8001ED18 97A5003E */  lhu        $a1, 0x3e($sp)
/* 1F91C 8001ED1C 0000C812 */  mflo       $t9
/* 1F920 8001ED20 00000000 */  nop        
/* 1F924 8001ED24 00000000 */  nop        
/* 1F928 8001ED28 032D0019 */  multu      $t9, $t5
/* 1F92C 8001ED2C 00006012 */  mflo       $t4
/* 1F930 8001ED30 AFAC0088 */  sw         $t4, 0x88($sp)
/* 1F934 8001ED34 0C0079E3 */  jal        func_8001E78C
/* 1F938 8001ED38 00000000 */   nop       
/* 1F93C 8001ED3C 3C07800B */  lui        $a3, 0x800b
/* 1F940 8001ED40 8CE7C870 */  lw         $a3, -0x3790($a3)
/* 1F944 8001ED44 A7A20086 */  sh         $v0, 0x86($sp)
/* 1F948 8001ED48 8FAC0088 */  lw         $t4, 0x88($sp)
/* 1F94C 8001ED4C 90EA0053 */  lbu        $t2, 0x53($a3)
/* 1F950 8001ED50 314E0001 */  andi       $t6, $t2, 1
/* 1F954 8001ED54 11C00081 */  beqz       $t6, .L8001EF5C
/* 1F958 8001ED58 314F0002 */   andi      $t7, $t2, 2
/* 1F95C 8001ED5C 15E0007F */  bnez       $t7, .L8001EF5C
/* 1F960 8001ED60 3C03800A */   lui       $v1, 0x800a
/* 1F964 8001ED64 35580002 */  ori        $t8, $t2, 2
/* 1F968 8001ED68 24637420 */  addiu      $v1, $v1, 0x7420
/* 1F96C 8001ED6C A0F80053 */  sb         $t8, 0x53($a3)
/* 1F970 8001ED70 8C640000 */  lw         $a0, ($v1)
/* 1F974 8001ED74 3C0DFD90 */  lui        $t5, 0xfd90
/* 1F978 8001ED78 240A07FF */  addiu      $t2, $zero, 0x7ff
/* 1F97C 8001ED7C 24990008 */  addiu      $t9, $a0, 8
/* 1F980 8001ED80 AC790000 */  sw         $t9, ($v1)
/* 1F984 8001ED84 AC8D0000 */  sw         $t5, ($a0)
/* 1F988 8001ED88 860E0000 */  lh         $t6, ($s0)
/* 1F98C 8001ED8C 86180002 */  lh         $t8, 2($s0)
/* 1F990 8001ED90 8E0D0008 */  lw         $t5, 8($s0)
/* 1F994 8001ED94 000E78C0 */  sll        $t7, $t6, 3
/* 1F998 8001ED98 01EE7821 */  addu       $t7, $t7, $t6
/* 1F99C 8001ED9C 000F7900 */  sll        $t7, $t7, 4
/* 1F9A0 8001EDA0 01F80019 */  multu      $t7, $t8
/* 1F9A4 8001EDA4 3C18F590 */  lui        $t8, 0xf590
/* 1F9A8 8001EDA8 37180100 */  ori        $t8, $t8, 0x100
/* 1F9AC 8001EDAC 0000C812 */  mflo       $t9
/* 1F9B0 8001EDB0 01B97021 */  addu       $t6, $t5, $t9
/* 1F9B4 8001EDB4 AC8E0004 */  sw         $t6, 4($a0)
/* 1F9B8 8001EDB8 8C650000 */  lw         $a1, ($v1)
/* 1F9BC 8001EDBC 3C0D0708 */  lui        $t5, 0x708
/* 1F9C0 8001EDC0 35AD0200 */  ori        $t5, $t5, 0x200
/* 1F9C4 8001EDC4 24AF0008 */  addiu      $t7, $a1, 8
/* 1F9C8 8001EDC8 AC6F0000 */  sw         $t7, ($v1)
/* 1F9CC 8001EDCC ACAD0004 */  sw         $t5, 4($a1)
/* 1F9D0 8001EDD0 ACB80000 */  sw         $t8, ($a1)
/* 1F9D4 8001EDD4 8C660000 */  lw         $a2, ($v1)
/* 1F9D8 8001EDD8 3C0EE600 */  lui        $t6, 0xe600
/* 1F9DC 8001EDDC 3C18F300 */  lui        $t8, 0xf300
/* 1F9E0 8001EDE0 24D90008 */  addiu      $t9, $a2, 8
/* 1F9E4 8001EDE4 AC790000 */  sw         $t9, ($v1)
/* 1F9E8 8001EDE8 ACC00004 */  sw         $zero, 4($a2)
/* 1F9EC 8001EDEC ACCE0000 */  sw         $t6, ($a2)
/* 1F9F0 8001EDF0 8C6B0000 */  lw         $t3, ($v1)
/* 1F9F4 8001EDF4 256F0008 */  addiu      $t7, $t3, 8
/* 1F9F8 8001EDF8 AC6F0000 */  sw         $t7, ($v1)
/* 1F9FC 8001EDFC AD780000 */  sw         $t8, ($t3)
/* 1FA00 8001EE00 860D0002 */  lh         $t5, 2($s0)
/* 1FA04 8001EE04 86090000 */  lh         $t1, ($s0)
/* 1FA08 8001EE08 012D0019 */  multu      $t1, $t5
/* 1FA0C 8001EE0C 00004012 */  mflo       $t0
/* 1FA10 8001EE10 25080001 */  addiu      $t0, $t0, 1
/* 1FA14 8001EE14 00084043 */  sra        $t0, $t0, 1
/* 1FA18 8001EE18 2508FFFF */  addiu      $t0, $t0, -1
/* 1FA1C 8001EE1C 290107FF */  slti       $at, $t0, 0x7ff
/* 1FA20 8001EE20 10200003 */  beqz       $at, .L8001EE30
/* 1FA24 8001EE24 00000000 */   nop       
/* 1FA28 8001EE28 10000001 */  b          .L8001EE30
/* 1FA2C 8001EE2C 01005025 */   or        $t2, $t0, $zero
.L8001EE30:
/* 1FA30 8001EE30 05210003 */  bgez       $t1, .L8001EE40
/* 1FA34 8001EE34 000910C3 */   sra       $v0, $t1, 3
/* 1FA38 8001EE38 25210007 */  addiu      $at, $t1, 7
/* 1FA3C 8001EE3C 000110C3 */  sra        $v0, $at, 3
.L8001EE40:
/* 1FA40 8001EE40 1C400003 */  bgtz       $v0, .L8001EE50
/* 1FA44 8001EE44 314D0FFF */   andi      $t5, $t2, 0xfff
/* 1FA48 8001EE48 10000002 */  b          .L8001EE54
/* 1FA4C 8001EE4C 24090001 */   addiu     $t1, $zero, 1
.L8001EE50:
/* 1FA50 8001EE50 00404825 */  or         $t1, $v0, $zero
.L8001EE54:
/* 1FA54 8001EE54 1C400003 */  bgtz       $v0, .L8001EE64
/* 1FA58 8001EE58 253907FF */   addiu     $t9, $t1, 0x7ff
/* 1FA5C 8001EE5C 10000002 */  b          .L8001EE68
/* 1FA60 8001EE60 24080001 */   addiu     $t0, $zero, 1
.L8001EE64:
/* 1FA64 8001EE64 00404025 */  or         $t0, $v0, $zero
.L8001EE68:
/* 1FA68 8001EE68 0328001A */  div        $zero, $t9, $t0
/* 1FA6C 8001EE6C 15000002 */  bnez       $t0, .L8001EE78
/* 1FA70 8001EE70 00000000 */   nop       
/* 1FA74 8001EE74 0007000D */  break      7
.L8001EE78:
/* 1FA78 8001EE78 2401FFFF */   addiu     $at, $zero, -1
/* 1FA7C 8001EE7C 15010004 */  bne        $t0, $at, .L8001EE90
/* 1FA80 8001EE80 3C018000 */   lui       $at, 0x8000
/* 1FA84 8001EE84 17210002 */  bne        $t9, $at, .L8001EE90
/* 1FA88 8001EE88 00000000 */   nop       
/* 1FA8C 8001EE8C 0006000D */  break      6
.L8001EE90:
/* 1FA90 8001EE90 00007012 */   mflo      $t6
/* 1FA94 8001EE94 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 1FA98 8001EE98 3C010700 */  lui        $at, 0x700
/* 1FA9C 8001EE9C 01E1C025 */  or         $t8, $t7, $at
/* 1FAA0 8001EEA0 000DCB00 */  sll        $t9, $t5, 0xc
/* 1FAA4 8001EEA4 03197025 */  or         $t6, $t8, $t9
/* 1FAA8 8001EEA8 AD6E0004 */  sw         $t6, 4($t3)
/* 1FAAC 8001EEAC 8C620000 */  lw         $v0, ($v1)
/* 1FAB0 8001EEB0 3C0DE700 */  lui        $t5, 0xe700
/* 1FAB4 8001EEB4 3C01F588 */  lui        $at, 0xf588
/* 1FAB8 8001EEB8 244F0008 */  addiu      $t7, $v0, 8
/* 1FABC 8001EEBC AC6F0000 */  sw         $t7, ($v1)
/* 1FAC0 8001EEC0 AC400004 */  sw         $zero, 4($v0)
/* 1FAC4 8001EEC4 AC4D0000 */  sw         $t5, ($v0)
/* 1FAC8 8001EEC8 00402025 */  or         $a0, $v0, $zero
/* 1FACC 8001EECC 8C620000 */  lw         $v0, ($v1)
/* 1FAD0 8001EED0 3C07800B */  lui        $a3, 0x800b
/* 1FAD4 8001EED4 24580008 */  addiu      $t8, $v0, 8
/* 1FAD8 8001EED8 AC780000 */  sw         $t8, ($v1)
/* 1FADC 8001EEDC 86190000 */  lh         $t9, ($s0)
/* 1FAE0 8001EEE0 00402825 */  or         $a1, $v0, $zero
/* 1FAE4 8001EEE4 272E0007 */  addiu      $t6, $t9, 7
/* 1FAE8 8001EEE8 000E78C3 */  sra        $t7, $t6, 3
/* 1FAEC 8001EEEC 31ED01FF */  andi       $t5, $t7, 0x1ff
/* 1FAF0 8001EEF0 000DC240 */  sll        $t8, $t5, 9
/* 1FAF4 8001EEF4 0301C825 */  or         $t9, $t8, $at
/* 1FAF8 8001EEF8 3C0F0108 */  lui        $t7, 0x108
/* 1FAFC 8001EEFC 35EF0200 */  ori        $t7, $t7, 0x200
/* 1FB00 8001EF00 372E0100 */  ori        $t6, $t9, 0x100
/* 1FB04 8001EF04 AC4E0000 */  sw         $t6, ($v0)
/* 1FB08 8001EF08 AC4F0004 */  sw         $t7, 4($v0)
/* 1FB0C 8001EF0C 8C620000 */  lw         $v0, ($v1)
/* 1FB10 8001EF10 3C18F200 */  lui        $t8, 0xf200
/* 1FB14 8001EF14 3C010100 */  lui        $at, 0x100
/* 1FB18 8001EF18 244D0008 */  addiu      $t5, $v0, 8
/* 1FB1C 8001EF1C AC6D0000 */  sw         $t5, ($v1)
/* 1FB20 8001EF20 AC580000 */  sw         $t8, ($v0)
/* 1FB24 8001EF24 86190000 */  lh         $t9, ($s0)
/* 1FB28 8001EF28 00403025 */  or         $a2, $v0, $zero
/* 1FB2C 8001EF2C 272EFFFF */  addiu      $t6, $t9, -1
/* 1FB30 8001EF30 000E7880 */  sll        $t7, $t6, 2
/* 1FB34 8001EF34 860E0002 */  lh         $t6, 2($s0)
/* 1FB38 8001EF38 31ED0FFF */  andi       $t5, $t7, 0xfff
/* 1FB3C 8001EF3C 000DC300 */  sll        $t8, $t5, 0xc
/* 1FB40 8001EF40 25CFFFFF */  addiu      $t7, $t6, -1
/* 1FB44 8001EF44 000F6880 */  sll        $t5, $t7, 2
/* 1FB48 8001EF48 0301C825 */  or         $t9, $t8, $at
/* 1FB4C 8001EF4C 31B80FFF */  andi       $t8, $t5, 0xfff
/* 1FB50 8001EF50 03387025 */  or         $t6, $t9, $t8
/* 1FB54 8001EF54 AC4E0004 */  sw         $t6, 4($v0)
/* 1FB58 8001EF58 8CE7C870 */  lw         $a3, -0x3790($a3)
.L8001EF5C:
/* 1FB5C 8001EF5C 8E0F0008 */  lw         $t7, 8($s0)
/* 1FB60 8001EF60 8CED004C */  lw         $t5, 0x4c($a3)
/* 1FB64 8001EF64 3C03800A */  lui        $v1, 0x800a
/* 1FB68 8001EF68 01EC5021 */  addu       $t2, $t7, $t4
/* 1FB6C 8001EF6C 11AA0070 */  beq        $t5, $t2, .L8001F130
/* 1FB70 8001EF70 24637420 */   addiu     $v1, $v1, 0x7420
/* 1FB74 8001EF74 ACEA004C */  sw         $t2, 0x4c($a3)
/* 1FB78 8001EF78 8C640000 */  lw         $a0, ($v1)
/* 1FB7C 8001EF7C 3C18FD70 */  lui        $t8, 0xfd70
/* 1FB80 8001EF80 240A07FF */  addiu      $t2, $zero, 0x7ff
/* 1FB84 8001EF84 24990008 */  addiu      $t9, $a0, 8
/* 1FB88 8001EF88 AC790000 */  sw         $t9, ($v1)
/* 1FB8C 8001EF8C AC980000 */  sw         $t8, ($a0)
/* 1FB90 8001EF90 8E0E0008 */  lw         $t6, 8($s0)
/* 1FB94 8001EF94 3C180708 */  lui        $t8, 0x708
/* 1FB98 8001EF98 37180200 */  ori        $t8, $t8, 0x200
/* 1FB9C 8001EF9C 01CC7821 */  addu       $t7, $t6, $t4
/* 1FBA0 8001EFA0 AC8F0004 */  sw         $t7, 4($a0)
/* 1FBA4 8001EFA4 8C650000 */  lw         $a1, ($v1)
/* 1FBA8 8001EFA8 3C19F570 */  lui        $t9, 0xf570
/* 1FBAC 8001EFAC 3C0FE600 */  lui        $t7, 0xe600
/* 1FBB0 8001EFB0 24AD0008 */  addiu      $t5, $a1, 8
/* 1FBB4 8001EFB4 AC6D0000 */  sw         $t5, ($v1)
/* 1FBB8 8001EFB8 ACB80004 */  sw         $t8, 4($a1)
/* 1FBBC 8001EFBC ACB90000 */  sw         $t9, ($a1)
/* 1FBC0 8001EFC0 8C660000 */  lw         $a2, ($v1)
/* 1FBC4 8001EFC4 3C19F300 */  lui        $t9, 0xf300
/* 1FBC8 8001EFC8 24CE0008 */  addiu      $t6, $a2, 8
/* 1FBCC 8001EFCC AC6E0000 */  sw         $t6, ($v1)
/* 1FBD0 8001EFD0 ACC00004 */  sw         $zero, 4($a2)
/* 1FBD4 8001EFD4 ACCF0000 */  sw         $t7, ($a2)
/* 1FBD8 8001EFD8 8C6B0000 */  lw         $t3, ($v1)
/* 1FBDC 8001EFDC 256D0008 */  addiu      $t5, $t3, 8
/* 1FBE0 8001EFE0 AC6D0000 */  sw         $t5, ($v1)
/* 1FBE4 8001EFE4 AD790000 */  sw         $t9, ($t3)
/* 1FBE8 8001EFE8 86180002 */  lh         $t8, 2($s0)
/* 1FBEC 8001EFEC 86090000 */  lh         $t1, ($s0)
/* 1FBF0 8001EFF0 01380019 */  multu      $t1, $t8
/* 1FBF4 8001EFF4 00004012 */  mflo       $t0
/* 1FBF8 8001EFF8 25080001 */  addiu      $t0, $t0, 1
/* 1FBFC 8001EFFC 00084043 */  sra        $t0, $t0, 1
/* 1FC00 8001F000 2508FFFF */  addiu      $t0, $t0, -1
/* 1FC04 8001F004 290107FF */  slti       $at, $t0, 0x7ff
/* 1FC08 8001F008 10200003 */  beqz       $at, .L8001F018
/* 1FC0C 8001F00C 00000000 */   nop       
/* 1FC10 8001F010 10000001 */  b          .L8001F018
/* 1FC14 8001F014 01005025 */   or        $t2, $t0, $zero
.L8001F018:
/* 1FC18 8001F018 05210003 */  bgez       $t1, .L8001F028
/* 1FC1C 8001F01C 000910C3 */   sra       $v0, $t1, 3
/* 1FC20 8001F020 25210007 */  addiu      $at, $t1, 7
/* 1FC24 8001F024 000110C3 */  sra        $v0, $at, 3
.L8001F028:
/* 1FC28 8001F028 1C400003 */  bgtz       $v0, .L8001F038
/* 1FC2C 8001F02C 31580FFF */   andi      $t8, $t2, 0xfff
/* 1FC30 8001F030 10000002 */  b          .L8001F03C
/* 1FC34 8001F034 24090001 */   addiu     $t1, $zero, 1
.L8001F038:
/* 1FC38 8001F038 00404825 */  or         $t1, $v0, $zero
.L8001F03C:
/* 1FC3C 8001F03C 1C400003 */  bgtz       $v0, .L8001F04C
/* 1FC40 8001F040 252E07FF */   addiu     $t6, $t1, 0x7ff
/* 1FC44 8001F044 10000002 */  b          .L8001F050
/* 1FC48 8001F048 24080001 */   addiu     $t0, $zero, 1
.L8001F04C:
/* 1FC4C 8001F04C 00404025 */  or         $t0, $v0, $zero
.L8001F050:
/* 1FC50 8001F050 01C8001A */  div        $zero, $t6, $t0
/* 1FC54 8001F054 15000002 */  bnez       $t0, .L8001F060
/* 1FC58 8001F058 00000000 */   nop       
/* 1FC5C 8001F05C 0007000D */  break      7
.L8001F060:
/* 1FC60 8001F060 2401FFFF */   addiu     $at, $zero, -1
/* 1FC64 8001F064 15010004 */  bne        $t0, $at, .L8001F078
/* 1FC68 8001F068 3C018000 */   lui       $at, 0x8000
/* 1FC6C 8001F06C 15C10002 */  bne        $t6, $at, .L8001F078
/* 1FC70 8001F070 00000000 */   nop       
/* 1FC74 8001F074 0006000D */  break      6
.L8001F078:
/* 1FC78 8001F078 00007812 */   mflo      $t7
/* 1FC7C 8001F07C 31ED0FFF */  andi       $t5, $t7, 0xfff
/* 1FC80 8001F080 3C010700 */  lui        $at, 0x700
/* 1FC84 8001F084 01A1C825 */  or         $t9, $t5, $at
/* 1FC88 8001F088 00187300 */  sll        $t6, $t8, 0xc
/* 1FC8C 8001F08C 032E7825 */  or         $t7, $t9, $t6
/* 1FC90 8001F090 AD6F0004 */  sw         $t7, 4($t3)
/* 1FC94 8001F094 8C620000 */  lw         $v0, ($v1)
/* 1FC98 8001F098 3C18E700 */  lui        $t8, 0xe700
/* 1FC9C 8001F09C 3C01F568 */  lui        $at, 0xf568
/* 1FCA0 8001F0A0 244D0008 */  addiu      $t5, $v0, 8
/* 1FCA4 8001F0A4 AC6D0000 */  sw         $t5, ($v1)
/* 1FCA8 8001F0A8 AC400004 */  sw         $zero, 4($v0)
/* 1FCAC 8001F0AC AC580000 */  sw         $t8, ($v0)
/* 1FCB0 8001F0B0 00402025 */  or         $a0, $v0, $zero
/* 1FCB4 8001F0B4 8C620000 */  lw         $v0, ($v1)
/* 1FCB8 8001F0B8 24590008 */  addiu      $t9, $v0, 8
/* 1FCBC 8001F0BC AC790000 */  sw         $t9, ($v1)
/* 1FCC0 8001F0C0 860E0000 */  lh         $t6, ($s0)
/* 1FCC4 8001F0C4 00402825 */  or         $a1, $v0, $zero
/* 1FCC8 8001F0C8 25CF0007 */  addiu      $t7, $t6, 7
/* 1FCCC 8001F0CC 000F68C3 */  sra        $t5, $t7, 3
/* 1FCD0 8001F0D0 31B801FF */  andi       $t8, $t5, 0x1ff
/* 1FCD4 8001F0D4 0018CA40 */  sll        $t9, $t8, 9
/* 1FCD8 8001F0D8 3C0F0008 */  lui        $t7, 8
/* 1FCDC 8001F0DC 35EF0200 */  ori        $t7, $t7, 0x200
/* 1FCE0 8001F0E0 03217025 */  or         $t6, $t9, $at
/* 1FCE4 8001F0E4 AC4E0000 */  sw         $t6, ($v0)
/* 1FCE8 8001F0E8 AC4F0004 */  sw         $t7, 4($v0)
/* 1FCEC 8001F0EC 8C620000 */  lw         $v0, ($v1)
/* 1FCF0 8001F0F0 3C18F200 */  lui        $t8, 0xf200
/* 1FCF4 8001F0F4 244D0008 */  addiu      $t5, $v0, 8
/* 1FCF8 8001F0F8 AC6D0000 */  sw         $t5, ($v1)
/* 1FCFC 8001F0FC AC580000 */  sw         $t8, ($v0)
/* 1FD00 8001F100 86190000 */  lh         $t9, ($s0)
/* 1FD04 8001F104 00403025 */  or         $a2, $v0, $zero
/* 1FD08 8001F108 272EFFFF */  addiu      $t6, $t9, -1
/* 1FD0C 8001F10C 86190002 */  lh         $t9, 2($s0)
/* 1FD10 8001F110 000E7880 */  sll        $t7, $t6, 2
/* 1FD14 8001F114 31ED0FFF */  andi       $t5, $t7, 0xfff
/* 1FD18 8001F118 272EFFFF */  addiu      $t6, $t9, -1
/* 1FD1C 8001F11C 000E7880 */  sll        $t7, $t6, 2
/* 1FD20 8001F120 000DC300 */  sll        $t8, $t5, 0xc
/* 1FD24 8001F124 31ED0FFF */  andi       $t5, $t7, 0xfff
/* 1FD28 8001F128 030DC825 */  or         $t9, $t8, $t5
/* 1FD2C 8001F12C AC590004 */  sw         $t9, 4($v0)
.L8001F130:
/* 1FD30 8001F130 86070002 */  lh         $a3, 2($s0)
/* 1FD34 8001F134 00112400 */  sll        $a0, $s1, 0x10
/* 1FD38 8001F138 240E0400 */  addiu      $t6, $zero, 0x400
/* 1FD3C 8001F13C 240F0400 */  addiu      $t7, $zero, 0x400
/* 1FD40 8001F140 AFAF001C */  sw         $t7, 0x1c($sp)
/* 1FD44 8001F144 AFAE0018 */  sw         $t6, 0x18($sp)
/* 1FD48 8001F148 00042403 */  sra        $a0, $a0, 0x10
/* 1FD4C 8001F14C AFA00020 */  sw         $zero, 0x20($sp)
/* 1FD50 8001F150 AFA00014 */  sw         $zero, 0x14($sp)
/* 1FD54 8001F154 AFA00010 */  sw         $zero, 0x10($sp)
/* 1FD58 8001F158 87A50096 */  lh         $a1, 0x96($sp)
/* 1FD5C 8001F15C 0C0070CC */  jal        func_8001C330
/* 1FD60 8001F160 87A60086 */   lh        $a2, 0x86($sp)
/* 1FD64 8001F164 3C07800B */  lui        $a3, 0x800b
/* 1FD68 8001F168 8CE7C870 */  lw         $a3, -0x3790($a3)
/* 1FD6C 8001F16C 87B80086 */  lh         $t8, 0x86($sp)
/* 1FD70 8001F170 8FB0002C */  lw         $s0, 0x2c($sp)
/* 1FD74 8001F174 80F90051 */  lb         $t9, 0x51($a3)
/* 1FD78 8001F178 90EE0050 */  lbu        $t6, 0x50($a3)
/* 1FD7C 8001F17C 02386821 */  addu       $t5, $s1, $t8
/* 1FD80 8001F180 01B98821 */  addu       $s1, $t5, $t9
/* 1FD84 8001F184 00118C00 */  sll        $s1, $s1, 0x10
/* 1FD88 8001F188 29C10002 */  slti       $at, $t6, 2
/* 1FD8C 8001F18C 14200005 */  bnez       $at, .L8001F1A4
/* 1FD90 8001F190 00118C03 */   sra       $s1, $s1, 0x10
/* 1FD94 8001F194 2631FFFE */  addiu      $s1, $s1, -2
/* 1FD98 8001F198 00118C00 */  sll        $s1, $s1, 0x10
/* 1FD9C 8001F19C 10000004 */  b          .L8001F1B0
/* 1FDA0 8001F1A0 00118C03 */   sra       $s1, $s1, 0x10
.L8001F1A4:
/* 1FDA4 8001F1A4 2631FFFF */  addiu      $s1, $s1, -1
/* 1FDA8 8001F1A8 00118C00 */  sll        $s1, $s1, 0x10
/* 1FDAC 8001F1AC 00118C03 */  sra        $s1, $s1, 0x10
.L8001F1B0:
/* 1FDB0 8001F1B0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1FDB4 8001F1B4 02201025 */  or         $v0, $s1, $zero
/* 1FDB8 8001F1B8 8FB10030 */  lw         $s1, 0x30($sp)
/* 1FDBC 8001F1BC 03E00008 */  jr         $ra
/* 1FDC0 8001F1C0 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_8001F1C4
/* 1FDC4 8001F1C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FDC8 8001F1C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FDCC 8001F1CC 0C017894 */  jal        func_8005E250
/* 1FDD0 8001F1D0 AFA60020 */   sw        $a2, 0x20($sp)
/* 1FDD4 8001F1D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FDD8 8001F1D8 8FAE0020 */  lw         $t6, 0x20($sp)
/* 1FDDC 8001F1DC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1FDE0 8001F1E0 03E00008 */  jr         $ra
/* 1FDE4 8001F1E4 004E1021 */   addu      $v0, $v0, $t6

glabel func_8001F1E8
/* 1FDE8 8001F1E8 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* 1FDEC 8001F1EC AFB10018 */  sw         $s1, 0x18($sp)
/* 1FDF0 8001F1F0 AFB30020 */  sw         $s3, 0x20($sp)
/* 1FDF4 8001F1F4 AFB2001C */  sw         $s2, 0x1c($sp)
/* 1FDF8 8001F1F8 2491FFFF */  addiu      $s1, $a0, -1
/* 1FDFC 8001F1FC 00A09025 */  or         $s2, $a1, $zero
/* 1FE00 8001F200 27B30050 */  addiu      $s3, $sp, 0x50
/* 1FE04 8001F204 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1FE08 8001F208 AFB50028 */  sw         $s5, 0x28($sp)
/* 1FE0C 8001F20C AFA7015C */  sw         $a3, 0x15c($sp)
/* 1FE10 8001F210 3C048002 */  lui        $a0, 0x8002
/* 1FE14 8001F214 AFB40024 */  sw         $s4, 0x24($sp)
/* 1FE18 8001F218 AFB00014 */  sw         $s0, 0x14($sp)
/* 1FE1C 8001F21C AFA60158 */  sw         $a2, 0x158($sp)
/* 1FE20 8001F220 0220A825 */  or         $s5, $s1, $zero
/* 1FE24 8001F224 2484F1C4 */  addiu      $a0, $a0, -0xe3c
/* 1FE28 8001F228 27A7015C */  addiu      $a3, $sp, 0x15c
/* 1FE2C 8001F22C 0C017614 */  jal        func_8005D850
/* 1FE30 8001F230 02602825 */   or        $a1, $s3, $zero
/* 1FE34 8001F234 18400022 */  blez       $v0, .L8001F2C0
/* 1FE38 8001F238 02627021 */   addu      $t6, $s3, $v0
/* 1FE3C 8001F23C A1C00000 */  sb         $zero, ($t6)
/* 1FE40 8001F240 93A70050 */  lbu        $a3, 0x50($sp)
/* 1FE44 8001F244 27B00051 */  addiu      $s0, $sp, 0x51
/* 1FE48 8001F248 2414000A */  addiu      $s4, $zero, 0xa
/* 1FE4C 8001F24C 10E0001C */  beqz       $a3, .L8001F2C0
/* 1FE50 8001F250 3C13800B */   lui       $s3, 0x800b
/* 1FE54 8001F254 2673C870 */  addiu      $s3, $s3, -0x3790
/* 1FE58 8001F258 8E630000 */  lw         $v1, ($s3)
.L8001F25C:
/* 1FE5C 8001F25C 30E600FF */  andi       $a2, $a3, 0xff
/* 1FE60 8001F260 00063400 */  sll        $a2, $a2, 0x10
/* 1FE64 8001F264 906F0053 */  lbu        $t7, 0x53($v1)
/* 1FE68 8001F268 24020001 */  addiu      $v0, $zero, 1
/* 1FE6C 8001F26C 00063403 */  sra        $a2, $a2, 0x10
/* 1FE70 8001F270 31F80004 */  andi       $t8, $t7, 4
/* 1FE74 8001F274 17000007 */  bnez       $t8, .L8001F294
/* 1FE78 8001F278 00000000 */   nop       
/* 1FE7C 8001F27C 14F40005 */  bne        $a3, $s4, .L8001F294
/* 1FE80 8001F280 00000000 */   nop       
/* 1FE84 8001F284 90790052 */  lbu        $t9, 0x52($v1)
/* 1FE88 8001F288 02A08825 */  or         $s1, $s5, $zero
/* 1FE8C 8001F28C 00001025 */  or         $v0, $zero, $zero
/* 1FE90 8001F290 02599021 */  addu       $s2, $s2, $t9
.L8001F294:
/* 1FE94 8001F294 10400006 */  beqz       $v0, .L8001F2B0
/* 1FE98 8001F298 00112400 */   sll       $a0, $s1, 0x10
/* 1FE9C 8001F29C 00122C00 */  sll        $a1, $s2, 0x10
/* 1FEA0 8001F2A0 00052C03 */  sra        $a1, $a1, 0x10
/* 1FEA4 8001F2A4 0C007B2D */  jal        func_8001ECB4
/* 1FEA8 8001F2A8 00042403 */   sra       $a0, $a0, 0x10
/* 1FEAC 8001F2AC 00408825 */  or         $s1, $v0, $zero
.L8001F2B0:
/* 1FEB0 8001F2B0 92070000 */  lbu        $a3, ($s0)
/* 1FEB4 8001F2B4 26100001 */  addiu      $s0, $s0, 1
/* 1FEB8 8001F2B8 54E0FFE8 */  bnel       $a3, $zero, .L8001F25C
/* 1FEBC 8001F2BC 8E630000 */   lw        $v1, ($s3)
.L8001F2C0:
/* 1FEC0 8001F2C0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1FEC4 8001F2C4 8FB00014 */  lw         $s0, 0x14($sp)
/* 1FEC8 8001F2C8 8FB10018 */  lw         $s1, 0x18($sp)
/* 1FECC 8001F2CC 8FB2001C */  lw         $s2, 0x1c($sp)
/* 1FED0 8001F2D0 8FB30020 */  lw         $s3, 0x20($sp)
/* 1FED4 8001F2D4 8FB40024 */  lw         $s4, 0x24($sp)
/* 1FED8 8001F2D8 8FB50028 */  lw         $s5, 0x28($sp)
/* 1FEDC 8001F2DC 03E00008 */  jr         $ra
/* 1FEE0 8001F2E0 27BD0150 */   addiu     $sp, $sp, 0x150

glabel func_8001F2E4
/* 1FEE4 8001F2E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FEE8 8001F2E8 AFA60020 */  sw         $a2, 0x20($sp)
/* 1FEEC 8001F2EC 30C600FF */  andi       $a2, $a2, 0xff
/* 1FEF0 8001F2F0 2484FFFF */  addiu      $a0, $a0, -1
/* 1FEF4 8001F2F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FEF8 8001F2F8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 1FEFC 8001F2FC 00042400 */  sll        $a0, $a0, 0x10
/* 1FF00 8001F300 00063400 */  sll        $a2, $a2, 0x10
/* 1FF04 8001F304 00063403 */  sra        $a2, $a2, 0x10
/* 1FF08 8001F308 00042403 */  sra        $a0, $a0, 0x10
/* 1FF0C 8001F30C 0C007B2D */  jal        func_8001ECB4
/* 1FF10 8001F310 87A5001E */   lh        $a1, 0x1e($sp)
/* 1FF14 8001F314 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FF18 8001F318 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1FF1C 8001F31C 03E00008 */  jr         $ra
/* 1FF20 8001F320 00000000 */   nop       

glabel func_8001F324
/* 1FF24 8001F324 3C08800A */  lui        $t0, 0x800a
/* 1FF28 8001F328 25087420 */  addiu      $t0, $t0, 0x7420
/* 1FF2C 8001F32C 8D030000 */  lw         $v1, ($t0)
/* 1FF30 8001F330 30A900FF */  andi       $t1, $a1, 0xff
/* 1FF34 8001F334 00095400 */  sll        $t2, $t1, 0x10
/* 1FF38 8001F338 246E0008 */  addiu      $t6, $v1, 8
/* 1FF3C 8001F33C AD0E0000 */  sw         $t6, ($t0)
/* 1FF40 8001F340 3C0FFB00 */  lui        $t7, 0xfb00
/* 1FF44 8001F344 0004CE00 */  sll        $t9, $a0, 0x18
/* 1FF48 8001F348 30CC00FF */  andi       $t4, $a2, 0xff
/* 1FF4C 8001F34C 000C6A00 */  sll        $t5, $t4, 8
/* 1FF50 8001F350 032A5825 */  or         $t3, $t9, $t2
/* 1FF54 8001F354 AC6F0000 */  sw         $t7, ($v1)
/* 1FF58 8001F358 30EF00FF */  andi       $t7, $a3, 0xff
/* 1FF5C 8001F35C 016D7025 */  or         $t6, $t3, $t5
/* 1FF60 8001F360 01CFC025 */  or         $t8, $t6, $t7
/* 1FF64 8001F364 03E00008 */  jr         $ra
/* 1FF68 8001F368 AC780004 */   sw        $t8, 4($v1)

glabel func_8001F36C
/* 1FF6C 8001F36C 3C08800A */  lui        $t0, 0x800a
/* 1FF70 8001F370 25087420 */  addiu      $t0, $t0, 0x7420
/* 1FF74 8001F374 8D030000 */  lw         $v1, ($t0)
/* 1FF78 8001F378 30A900FF */  andi       $t1, $a1, 0xff
/* 1FF7C 8001F37C 00095400 */  sll        $t2, $t1, 0x10
/* 1FF80 8001F380 246E0008 */  addiu      $t6, $v1, 8
/* 1FF84 8001F384 AD0E0000 */  sw         $t6, ($t0)
/* 1FF88 8001F388 3C0FFA00 */  lui        $t7, 0xfa00
/* 1FF8C 8001F38C 0004CE00 */  sll        $t9, $a0, 0x18
/* 1FF90 8001F390 30CC00FF */  andi       $t4, $a2, 0xff
/* 1FF94 8001F394 000C6A00 */  sll        $t5, $t4, 8
/* 1FF98 8001F398 032A5825 */  or         $t3, $t9, $t2
/* 1FF9C 8001F39C AC6F0000 */  sw         $t7, ($v1)
/* 1FFA0 8001F3A0 30EF00FF */  andi       $t7, $a3, 0xff
/* 1FFA4 8001F3A4 016D7025 */  or         $t6, $t3, $t5
/* 1FFA8 8001F3A8 01CFC025 */  or         $t8, $t6, $t7
/* 1FFAC 8001F3AC 03E00008 */  jr         $ra
/* 1FFB0 8001F3B0 AC780004 */   sw        $t8, 4($v1)

glabel func_8001F3B4
/* 1FFB4 8001F3B4 3C0E800B */  lui        $t6, 0x800b
/* 1FFB8 8001F3B8 8DCEC870 */  lw         $t6, -0x3790($t6)
/* 1FFBC 8001F3BC 03E00008 */  jr         $ra
/* 1FFC0 8001F3C0 A1C40052 */   sb        $a0, 0x52($t6)

glabel func_8001F3C4
/* 1FFC4 8001F3C4 3C02800B */  lui        $v0, 0x800b
/* 1FFC8 8001F3C8 8C42C870 */  lw         $v0, -0x3790($v0)
/* 1FFCC 8001F3CC 904E0053 */  lbu        $t6, 0x53($v0)
/* 1FFD0 8001F3D0 35CF0004 */  ori        $t7, $t6, 4
/* 1FFD4 8001F3D4 03E00008 */  jr         $ra
/* 1FFD8 8001F3D8 A04F0053 */   sb        $t7, 0x53($v0)

glabel func_8001F3DC
/* 1FFDC 8001F3DC 3C02800B */  lui        $v0, 0x800b
/* 1FFE0 8001F3E0 8C42C870 */  lw         $v0, -0x3790($v0)
/* 1FFE4 8001F3E4 904E0053 */  lbu        $t6, 0x53($v0)
/* 1FFE8 8001F3E8 31CFFFFB */  andi       $t7, $t6, 0xfffb
/* 1FFEC 8001F3EC 03E00008 */  jr         $ra
/* 1FFF0 8001F3F0 A04F0053 */   sb        $t7, 0x53($v0)

glabel func_8001F3F4
/* 1FFF4 8001F3F4 3C04800B */  lui        $a0, 0x800b
/* 1FFF8 8001F3F8 2484C870 */  addiu      $a0, $a0, -0x3790
/* 1FFFC 8001F3FC 8C8E0000 */  lw         $t6, ($a0)
/* 20000 8001F400 240F0028 */  addiu      $t7, $zero, 0x28
/* 20004 8001F404 3C05800A */  lui        $a1, 0x800a
/* 20008 8001F408 A1C00053 */  sb         $zero, 0x53($t6)
/* 2000C 8001F40C 8C980000 */  lw         $t8, ($a0)
/* 20010 8001F410 24A57420 */  addiu      $a1, $a1, 0x7420
/* 20014 8001F414 3C0A8007 */  lui        $t2, 0x8007
/* 20018 8001F418 A30F0052 */  sb         $t7, 0x52($t8)
/* 2001C 8001F41C 8C990000 */  lw         $t9, ($a0)
/* 20020 8001F420 254AF710 */  addiu      $t2, $t2, -0x8f0
/* 20024 8001F424 3C09DE00 */  lui        $t1, 0xde00
/* 20028 8001F428 AF20004C */  sw         $zero, 0x4c($t9)
/* 2002C 8001F42C 8CA30000 */  lw         $v1, ($a1)
/* 20030 8001F430 24680008 */  addiu      $t0, $v1, 8
/* 20034 8001F434 ACA80000 */  sw         $t0, ($a1)
/* 20038 8001F438 AC6A0004 */  sw         $t2, 4($v1)
/* 2003C 8001F43C 03E00008 */  jr         $ra
/* 20040 8001F440 AC690000 */   sw        $t1, ($v1)

glabel func_8001F444
/* 20044 8001F444 3C04800A */  lui        $a0, 0x800a
/* 20048 8001F448 24847420 */  addiu      $a0, $a0, 0x7420
/* 2004C 8001F44C 8C830000 */  lw         $v1, ($a0)
/* 20050 8001F450 3C188007 */  lui        $t8, 0x8007
/* 20054 8001F454 2718F750 */  addiu      $t8, $t8, -0x8b0
/* 20058 8001F458 246E0008 */  addiu      $t6, $v1, 8
/* 2005C 8001F45C AC8E0000 */  sw         $t6, ($a0)
/* 20060 8001F460 3C0FDE00 */  lui        $t7, 0xde00
/* 20064 8001F464 AC6F0000 */  sw         $t7, ($v1)
/* 20068 8001F468 03E00008 */  jr         $ra
/* 2006C 8001F46C AC780004 */   sw        $t8, 4($v1)

glabel func_8001F470
/* 20070 8001F470 3C05800B */  lui        $a1, 0x800b
/* 20074 8001F474 24A5C870 */  addiu      $a1, $a1, -0x3790
/* 20078 8001F478 8CA20000 */  lw         $v0, ($a1)
/* 2007C 8001F47C 3C06800A */  lui        $a2, 0x800a
/* 20080 8001F480 24C67420 */  addiu      $a2, $a2, 0x7420
/* 20084 8001F484 904E0053 */  lbu        $t6, 0x53($v0)
/* 20088 8001F488 3C0A8007 */  lui        $t2, 0x8007
/* 2008C 8001F48C 254AF768 */  addiu      $t2, $t2, -0x898
/* 20090 8001F490 35CF0001 */  ori        $t7, $t6, 1
/* 20094 8001F494 A04F0053 */  sb         $t7, 0x53($v0)
/* 20098 8001F498 8CA20000 */  lw         $v0, ($a1)
/* 2009C 8001F49C 3C09DE00 */  lui        $t1, 0xde00
/* 200A0 8001F4A0 90580053 */  lbu        $t8, 0x53($v0)
/* 200A4 8001F4A4 3319FFFD */  andi       $t9, $t8, 0xfffd
/* 200A8 8001F4A8 A0590053 */  sb         $t9, 0x53($v0)
/* 200AC 8001F4AC 8CC40000 */  lw         $a0, ($a2)
/* 200B0 8001F4B0 24880008 */  addiu      $t0, $a0, 8
/* 200B4 8001F4B4 ACC80000 */  sw         $t0, ($a2)
/* 200B8 8001F4B8 AC8A0004 */  sw         $t2, 4($a0)
/* 200BC 8001F4BC 03E00008 */  jr         $ra
/* 200C0 8001F4C0 AC890000 */   sw        $t1, ($a0)

glabel func_8001F4C4
/* 200C4 8001F4C4 3C02800B */  lui        $v0, 0x800b
/* 200C8 8001F4C8 8C42C870 */  lw         $v0, -0x3790($v0)
/* 200CC 8001F4CC 3C05800A */  lui        $a1, 0x800a
/* 200D0 8001F4D0 24A57420 */  addiu      $a1, $a1, 0x7420
/* 200D4 8001F4D4 904E0053 */  lbu        $t6, 0x53($v0)
/* 200D8 8001F4D8 3C088007 */  lui        $t0, 0x8007
/* 200DC 8001F4DC 2508F798 */  addiu      $t0, $t0, -0x868
/* 200E0 8001F4E0 31CFFFFC */  andi       $t7, $t6, 0xfffc
/* 200E4 8001F4E4 A04F0053 */  sb         $t7, 0x53($v0)
/* 200E8 8001F4E8 8CA40000 */  lw         $a0, ($a1)
/* 200EC 8001F4EC 3C19DE00 */  lui        $t9, 0xde00
/* 200F0 8001F4F0 24980008 */  addiu      $t8, $a0, 8
/* 200F4 8001F4F4 ACB80000 */  sw         $t8, ($a1)
/* 200F8 8001F4F8 AC880004 */  sw         $t0, 4($a0)
/* 200FC 8001F4FC 03E00008 */  jr         $ra
/* 20100 8001F500 AC990000 */   sw        $t9, ($a0)

glabel func_8001F504
/* 20104 8001F504 3C08800A */  lui        $t0, 0x800a
/* 20108 8001F508 25087420 */  addiu      $t0, $t0, 0x7420
/* 2010C 8001F50C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 20110 8001F510 8D030000 */  lw         $v1, ($t0)
/* 20114 8001F514 AFBF0024 */  sw         $ra, 0x24($sp)
/* 20118 8001F518 AFA40028 */  sw         $a0, 0x28($sp)
/* 2011C 8001F51C 246E0008 */  addiu      $t6, $v1, 8
/* 20120 8001F520 AFA5002C */  sw         $a1, 0x2c($sp)
/* 20124 8001F524 AFA60030 */  sw         $a2, 0x30($sp)
/* 20128 8001F528 AFA70034 */  sw         $a3, 0x34($sp)
/* 2012C 8001F52C AD0E0000 */  sw         $t6, ($t0)
/* 20130 8001F530 3C188007 */  lui        $t8, 0x8007
/* 20134 8001F534 2718F498 */  addiu      $t8, $t8, -0xb68
/* 20138 8001F538 3C0FDE00 */  lui        $t7, 0xde00
/* 2013C 8001F53C AC6F0000 */  sw         $t7, ($v1)
/* 20140 8001F540 AC780004 */  sw         $t8, 4($v1)
/* 20144 8001F544 8FAB0044 */  lw         $t3, 0x44($sp)
/* 20148 8001F548 8FAA0040 */  lw         $t2, 0x40($sp)
/* 2014C 8001F54C 8FA9003C */  lw         $t1, 0x3c($sp)
/* 20150 8001F550 8FB90038 */  lw         $t9, 0x38($sp)
/* 20154 8001F554 87A70036 */  lh         $a3, 0x36($sp)
/* 20158 8001F558 87A60032 */  lh         $a2, 0x32($sp)
/* 2015C 8001F55C 87A5002E */  lh         $a1, 0x2e($sp)
/* 20160 8001F560 87A4002A */  lh         $a0, 0x2a($sp)
/* 20164 8001F564 AFAB001C */  sw         $t3, 0x1c($sp)
/* 20168 8001F568 AFAA0018 */  sw         $t2, 0x18($sp)
/* 2016C 8001F56C AFA90014 */  sw         $t1, 0x14($sp)
/* 20170 8001F570 0C007181 */  jal        func_8001C604
/* 20174 8001F574 AFB90010 */   sw        $t9, 0x10($sp)
/* 20178 8001F578 3C08800A */  lui        $t0, 0x800a
/* 2017C 8001F57C 25087420 */  addiu      $t0, $t0, 0x7420
/* 20180 8001F580 8D030000 */  lw         $v1, ($t0)
/* 20184 8001F584 3C0E8007 */  lui        $t6, 0x8007
/* 20188 8001F588 25CEF630 */  addiu      $t6, $t6, -0x9d0
/* 2018C 8001F58C 246C0008 */  addiu      $t4, $v1, 8
/* 20190 8001F590 AD0C0000 */  sw         $t4, ($t0)
/* 20194 8001F594 3C0DDE00 */  lui        $t5, 0xde00
/* 20198 8001F598 AC6D0000 */  sw         $t5, ($v1)
/* 2019C 8001F59C AC6E0004 */  sw         $t6, 4($v1)
/* 201A0 8001F5A0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 201A4 8001F5A4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 201A8 8001F5A8 03E00008 */  jr         $ra
/* 201AC 8001F5AC 00000000 */   nop       

glabel func_8001F5B0
/* 201B0 8001F5B0 27BDFE98 */  addiu      $sp, $sp, -0x168
/* 201B4 8001F5B4 AFB60030 */  sw         $s6, 0x30($sp)
/* 201B8 8001F5B8 AFB20020 */  sw         $s2, 0x20($sp)
/* 201BC 8001F5BC 00A0B025 */  or         $s6, $a1, $zero
/* 201C0 8001F5C0 AFBF0034 */  sw         $ra, 0x34($sp)
/* 201C4 8001F5C4 AFB5002C */  sw         $s5, 0x2c($sp)
/* 201C8 8001F5C8 AFB40028 */  sw         $s4, 0x28($sp)
/* 201CC 8001F5CC AFB30024 */  sw         $s3, 0x24($sp)
/* 201D0 8001F5D0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 201D4 8001F5D4 AFB00018 */  sw         $s0, 0x18($sp)
/* 201D8 8001F5D8 AFA60170 */  sw         $a2, 0x170($sp)
/* 201DC 8001F5DC AFA70174 */  sw         $a3, 0x174($sp)
/* 201E0 8001F5E0 14800005 */  bnez       $a0, .L8001F5F8
/* 201E4 8001F5E4 00009025 */   or        $s2, $zero, $zero
/* 201E8 8001F5E8 3C03800B */  lui        $v1, 0x800b
/* 201EC 8001F5EC 8C63C870 */  lw         $v1, -0x3790($v1)
/* 201F0 8001F5F0 10000006 */  b          .L8001F60C
/* 201F4 8001F5F4 90640050 */   lbu       $a0, 0x50($v1)
.L8001F5F8:
/* 201F8 8001F5F8 0C007A04 */  jal        func_8001E810
/* 201FC 8001F5FC 00000000 */   nop       
/* 20200 8001F600 3C03800B */  lui        $v1, 0x800b
/* 20204 8001F604 8C63C870 */  lw         $v1, -0x3790($v1)
/* 20208 8001F608 00402025 */  or         $a0, $v0, $zero
.L8001F60C:
/* 2020C 8001F60C 0004A880 */  sll        $s5, $a0, 2
/* 20210 8001F610 02A4A823 */  subu       $s5, $s5, $a0
/* 20214 8001F614 0015A880 */  sll        $s5, $s5, 2
/* 20218 8001F618 0075A021 */  addu       $s4, $v1, $s5
/* 2021C 8001F61C 8E8E0004 */  lw         $t6, 4($s4)
/* 20220 8001F620 27B3005C */  addiu      $s3, $sp, 0x5c
/* 20224 8001F624 00008025 */  or         $s0, $zero, $zero
/* 20228 8001F628 11C00024 */  beqz       $t6, .L8001F6BC
/* 2022C 8001F62C 3C048002 */   lui       $a0, 0x8002
/* 20230 8001F630 2484F1C4 */  addiu      $a0, $a0, -0xe3c
/* 20234 8001F634 02602825 */  or         $a1, $s3, $zero
/* 20238 8001F638 8FA60170 */  lw         $a2, 0x170($sp)
/* 2023C 8001F63C 0C017614 */  jal        func_8005D850
/* 20240 8001F640 27A70174 */   addiu     $a3, $sp, 0x174
/* 20244 8001F644 1840001D */  blez       $v0, .L8001F6BC
/* 20248 8001F648 02627821 */   addu      $t7, $s3, $v0
/* 2024C 8001F64C A1E00000 */  sb         $zero, ($t7)
/* 20250 8001F650 93A3005C */  lbu        $v1, 0x5c($sp)
/* 20254 8001F654 27B1005D */  addiu      $s1, $sp, 0x5d
/* 20258 8001F658 2413000A */  addiu      $s3, $zero, 0xa
/* 2025C 8001F65C 50600018 */  beql       $v1, $zero, .L8001F6C0
/* 20260 8001F660 8FBF0034 */   lw        $ra, 0x34($sp)
.L8001F664:
/* 20264 8001F664 14730003 */  bne        $v1, $s3, .L8001F674
/* 20268 8001F668 02802025 */   or        $a0, $s4, $zero
/* 2026C 8001F66C 1000000B */  b          .L8001F69C
/* 20270 8001F670 00008025 */   or        $s0, $zero, $zero
.L8001F674:
/* 20274 8001F674 00602825 */  or         $a1, $v1, $zero
/* 20278 8001F678 0C0079E3 */  jal        func_8001E78C
/* 2027C 8001F67C 30A500FF */   andi      $a1, $a1, 0xff
/* 20280 8001F680 0202C021 */  addu       $t8, $s0, $v0
/* 20284 8001F684 2AA10018 */  slti       $at, $s5, 0x18
/* 20288 8001F688 14200003 */  bnez       $at, .L8001F698
/* 2028C 8001F68C 03168021 */   addu      $s0, $t8, $s6
/* 20290 8001F690 10000002 */  b          .L8001F69C
/* 20294 8001F694 2610FFFE */   addiu     $s0, $s0, -2
.L8001F698:
/* 20298 8001F698 2610FFFF */  addiu      $s0, $s0, -1
.L8001F69C:
/* 2029C 8001F69C 0250082A */  slt        $at, $s2, $s0
/* 202A0 8001F6A0 50200003 */  beql       $at, $zero, .L8001F6B0
/* 202A4 8001F6A4 92230000 */   lbu       $v1, ($s1)
/* 202A8 8001F6A8 02009025 */  or         $s2, $s0, $zero
/* 202AC 8001F6AC 92230000 */  lbu        $v1, ($s1)
.L8001F6B0:
/* 202B0 8001F6B0 26310001 */  addiu      $s1, $s1, 1
/* 202B4 8001F6B4 1460FFEB */  bnez       $v1, .L8001F664
/* 202B8 8001F6B8 00000000 */   nop       
.L8001F6BC:
/* 202BC 8001F6BC 8FBF0034 */  lw         $ra, 0x34($sp)
.L8001F6C0:
/* 202C0 8001F6C0 02401025 */  or         $v0, $s2, $zero
/* 202C4 8001F6C4 8FB20020 */  lw         $s2, 0x20($sp)
/* 202C8 8001F6C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 202CC 8001F6CC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 202D0 8001F6D0 8FB30024 */  lw         $s3, 0x24($sp)
/* 202D4 8001F6D4 8FB40028 */  lw         $s4, 0x28($sp)
/* 202D8 8001F6D8 8FB5002C */  lw         $s5, 0x2c($sp)
/* 202DC 8001F6DC 8FB60030 */  lw         $s6, 0x30($sp)
/* 202E0 8001F6E0 03E00008 */  jr         $ra
/* 202E4 8001F6E4 27BD0168 */   addiu     $sp, $sp, 0x168

glabel func_8001F6E8
/* 202E8 8001F6E8 3C02800B */  lui        $v0, 0x800b
/* 202EC 8001F6EC 8C42C870 */  lw         $v0, -0x3790($v0)
/* 202F0 8001F6F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 202F4 8001F6F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 202F8 8001F6F8 AFA40018 */  sw         $a0, 0x18($sp)
/* 202FC 8001F6FC 904E0050 */  lbu        $t6, 0x50($v0)
/* 20300 8001F700 30A500FF */  andi       $a1, $a1, 0xff
/* 20304 8001F704 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 20308 8001F708 000E7880 */  sll        $t7, $t6, 2
/* 2030C 8001F70C 01EE7823 */  subu       $t7, $t7, $t6
/* 20310 8001F710 000F7880 */  sll        $t7, $t7, 2
/* 20314 8001F714 0C0079E3 */  jal        func_8001E78C
/* 20318 8001F718 004F2021 */   addu      $a0, $v0, $t7
/* 2031C 8001F71C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20320 8001F720 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20324 8001F724 03E00008 */  jr         $ra
/* 20328 8001F728 00000000 */   nop       
/* 2032C 8001F72C 00000000 */  nop        
