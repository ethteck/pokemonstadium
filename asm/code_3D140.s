.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8003C540
/* 3D140 8003C540 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 3D144 8003C544 AFBF003C */  sw        $ra, 0x3c($sp)
/* 3D148 8003C548 AFB60034 */  sw        $s6, 0x34($sp)
/* 3D14C 8003C54C AFB50030 */  sw        $s5, 0x30($sp)
/* 3D150 8003C550 AFB30028 */  sw        $s3, 0x28($sp)
/* 3D154 8003C554 AFB10020 */  sw        $s1, 0x20($sp)
/* 3D158 8003C558 00C08825 */  or        $s1, $a2, $zero
/* 3D15C 8003C55C 00809825 */  or        $s3, $a0, $zero
/* 3D160 8003C560 00E0A825 */  or        $s5, $a3, $zero
/* 3D164 8003C564 00A0B025 */  or        $s6, $a1, $zero
/* 3D168 8003C568 AFB70038 */  sw        $s7, 0x38($sp)
/* 3D16C 8003C56C AFB4002C */  sw        $s4, 0x2c($sp)
/* 3D170 8003C570 AFB20024 */  sw        $s2, 0x24($sp)
/* 3D174 8003C574 0C018D44 */  jal       func_80063510
/* 3D178 8003C578 AFB0001C */  sw        $s0, 0x1c($sp)
/* 3D17C 8003C57C 3C018010 */  lui       $at, 0x8010
/* 3D180 8003C580 AC22CB08 */  sw        $v0, -0x34f8($at)
/* 3D184 8003C584 3C018010 */  lui       $at, 0x8010
/* 3D188 8003C588 AC35CB04 */  sw        $s5, -0x34fc($at)
/* 3D18C 8003C58C 3C018010 */  lui       $at, 0x8010
/* 3D190 8003C590 3C0E8004 */  lui       $t6, 0x8004
/* 3D194 8003C594 A020CAB8 */  sb        $zero, -0x3548($at)
/* 3D198 8003C598 25CED128 */  addiu     $t6, $t6, -0x2ed8
/* 3D19C 8003C59C AE6E0010 */  sw        $t6, 0x10($s3)
/* 3D1A0 8003C5A0 8ECF0000 */  lw        $t7, ($s6)
/* 3D1A4 8003C5A4 0011C080 */  sll       $t8, $s1, 2
/* 3D1A8 8003C5A8 0311C021 */  addu      $t8, $t8, $s1
/* 3D1AC 8003C5AC 0018C080 */  sll       $t8, $t8, 2
/* 3D1B0 8003C5B0 8E660014 */  lw        $a2, 0x14($s3)
/* 3D1B4 8003C5B4 AE6F0018 */  sw        $t7, 0x18($s3)
/* 3D1B8 8003C5B8 AFB80010 */  sw        $t8, 0x10($sp)
/* 3D1BC 8003C5BC 00002025 */  or        $a0, $zero, $zero
/* 3D1C0 8003C5C0 00002825 */  or        $a1, $zero, $zero
/* 3D1C4 8003C5C4 0C0194C4 */  jal       func_80065310
/* 3D1C8 8003C5C8 24070001 */  addiu     $a3, $zero, 1
/* 3D1CC 8003C5CC 3C148010 */  lui       $s4, 0x8010
/* 3D1D0 8003C5D0 00111840 */  sll       $v1, $s1, 1
/* 3D1D4 8003C5D4 2694CAF8 */  addiu     $s4, $s4, -0x3508
/* 3D1D8 8003C5D8 0003C880 */  sll       $t9, $v1, 2
/* 3D1DC 8003C5DC AE820000 */  sw        $v0, ($s4)
/* 3D1E0 8003C5E0 0323C823 */  subu      $t9, $t9, $v1
/* 3D1E4 8003C5E4 0019C8C0 */  sll       $t9, $t9, 3
/* 3D1E8 8003C5E8 8E660014 */  lw        $a2, 0x14($s3)
/* 3D1EC 8003C5EC AFA30044 */  sw        $v1, 0x44($sp)
/* 3D1F0 8003C5F0 AFB90010 */  sw        $t9, 0x10($sp)
/* 3D1F4 8003C5F4 00608025 */  or        $s0, $v1, $zero
/* 3D1F8 8003C5F8 00002025 */  or        $a0, $zero, $zero
/* 3D1FC 8003C5FC 00002825 */  or        $a1, $zero, $zero
/* 3D200 8003C600 0C0194C4 */  jal       func_80065310
/* 3D204 8003C604 24070001 */  addiu     $a3, $zero, 1
/* 3D208 8003C608 3C018010 */  lui       $at, 0x8010
/* 3D20C 8003C60C AC22CAFC */  sw        $v0, -0x3504($at)
/* 3D210 8003C610 8E660014 */  lw        $a2, 0x14($s3)
/* 3D214 8003C614 00104080 */  sll       $t0, $s0, 2
/* 3D218 8003C618 AFA80010 */  sw        $t0, 0x10($sp)
/* 3D21C 8003C61C 00002025 */  or        $a0, $zero, $zero
/* 3D220 8003C620 00002825 */  or        $a1, $zero, $zero
/* 3D224 8003C624 0C0194C4 */  jal       func_80065310
/* 3D228 8003C628 24070001 */  addiu     $a3, $zero, 1
/* 3D22C 8003C62C 3C018010 */  lui       $at, 0x8010
/* 3D230 8003C630 AC22CB00 */  sw        $v0, -0x3500($at)
/* 3D234 8003C634 8EC90004 */  lw        $t1, 4($s6)
/* 3D238 8003C638 3C068010 */  lui       $a2, 0x8010
/* 3D23C 8003C63C 24C6CAC8 */  addiu     $a2, $a2, -0x3538
/* 3D240 8003C640 44892000 */  mtc1      $t1, $f4
/* 3D244 8003C644 240200B8 */  addiu     $v0, $zero, 0xb8
/* 3D248 8003C648 05210005 */  bgez      $t1, .L8003C660
/* 3D24C 8003C64C 468021A0 */  cvt.s.w   $f6, $f4
/* 3D250 8003C650 3C014F80 */  lui       $at, 0x4f80
/* 3D254 8003C654 44814000 */  mtc1      $at, $f8
/* 3D258 8003C658 00000000 */  nop       
/* 3D25C 8003C65C 46083180 */  add.s     $f6, $f6, $f8
.L8003C660:
/* 3D260 8003C660 8E6A0018 */  lw        $t2, 0x18($s3)
/* 3D264 8003C664 8FAB0060 */  lw        $t3, 0x60($sp)
/* 3D268 8003C668 448A5000 */  mtc1      $t2, $f10
/* 3D26C 8003C66C 448B2000 */  mtc1      $t3, $f4
/* 3D270 8003C670 46805420 */  cvt.s.w   $f16, $f10
/* 3D274 8003C674 46802220 */  cvt.s.w   $f8, $f4
/* 3D278 8003C678 46103482 */  mul.s     $f18, $f6, $f16
/* 3D27C 8003C67C 46089003 */  div.s     $f0, $f18, $f8
/* 3D280 8003C680 4600028D */  trunc.w.s $f10, $f0
/* 3D284 8003C684 440D5000 */  mfc1      $t5, $f10
/* 3D288 8003C688 00000000 */  nop       
/* 3D28C 8003C68C 01A01825 */  or        $v1, $t5, $zero
/* 3D290 8003C690 44833000 */  mtc1      $v1, $f6
/* 3D294 8003C694 ACCD0000 */  sw        $t5, ($a2)
/* 3D298 8003C698 05A10005 */  bgez      $t5, .L8003C6B0
/* 3D29C 8003C69C 46803420 */  cvt.s.w   $f16, $f6
/* 3D2A0 8003C6A0 3C014F80 */  lui       $at, 0x4f80
/* 3D2A4 8003C6A4 44812000 */  mtc1      $at, $f4
/* 3D2A8 8003C6A8 00000000 */  nop       
/* 3D2AC 8003C6AC 46048400 */  add.s     $f16, $f16, $f4
.L8003C6B0:
/* 3D2B0 8003C6B0 4600803C */  c.lt.s    $f16, $f0
/* 3D2B4 8003C6B4 00000000 */  nop       
/* 3D2B8 8003C6B8 45000004 */  bc1f      .L8003C6CC
/* 3D2BC 8003C6BC 00000000 */  nop       
/* 3D2C0 8003C6C0 246E0001 */  addiu     $t6, $v1, 1
/* 3D2C4 8003C6C4 ACCE0000 */  sw        $t6, ($a2)
/* 3D2C8 8003C6C8 01C01825 */  or        $v1, $t6, $zero
.L8003C6CC:
/* 3D2CC 8003C6CC 0062001B */  divu      $zero, $v1, $v0
/* 3D2D0 8003C6D0 00007812 */  mflo      $t7
/* 3D2D4 8003C6D4 3C178010 */  lui       $s7, 0x8010
/* 3D2D8 8003C6D8 3C018010 */  lui       $at, 0x8010
/* 3D2DC 8003C6DC 01E20019 */  multu     $t7, $v0
/* 3D2E0 8003C6E0 26F7CACC */  addiu     $s7, $s7, -0x3534
/* 3D2E4 8003C6E4 14400002 */  bnez      $v0, .L8003C6F0
/* 3D2E8 8003C6E8 00000000 */  nop       
/* 3D2EC 8003C6EC 0007000D */  break     7
.L8003C6F0:
/* 3D2F0 8003C6F0 3C048010 */  lui       $a0, 0x8010
/* 3D2F4 8003C6F4 2484CA68 */  addiu     $a0, $a0, -0x3598
/* 3D2F8 8003C6F8 02602825 */  or        $a1, $s3, $zero
/* 3D2FC 8003C6FC 0000C012 */  mflo      $t8
/* 3D300 8003C700 271900B8 */  addiu     $t9, $t8, 0xb8
/* 3D304 8003C704 ACD90000 */  sw        $t9, ($a2)
/* 3D308 8003C708 2728FF48 */  addiu     $t0, $t9, -0xb8
/* 3D30C 8003C70C AC28CAC4 */  sw        $t0, -0x353c($at)
/* 3D310 8003C710 27290100 */  addiu     $t1, $t9, 0x100
/* 3D314 8003C714 0C010A48 */  jal       func_80042920
/* 3D318 8003C718 AEE90000 */  sw        $t1, ($s7)
/* 3D31C 8003C71C 8E8A0000 */  lw        $t2, ($s4)
/* 3D320 8003C720 2630FFFF */  addiu     $s0, $s1, -1
/* 3D324 8003C724 00008825 */  or        $s1, $zero, $zero
/* 3D328 8003C728 AD400004 */  sw        $zero, 4($t2)
/* 3D32C 8003C72C 8E8B0000 */  lw        $t3, ($s4)
/* 3D330 8003C730 00009025 */  or        $s2, $zero, $zero
/* 3D334 8003C734 12000011 */  beqz      $s0, .L8003C77C
/* 3D338 8003C738 AD600000 */  sw        $zero, ($t3)
.L8003C73C:
/* 3D33C 8003C73C 8E8C0000 */  lw        $t4, ($s4)
/* 3D340 8003C740 022C2821 */  addu      $a1, $s1, $t4
/* 3D344 8003C744 0C015BE0 */  jal       func_80056F80
/* 3D348 8003C748 24A40014 */  addiu     $a0, $a1, 0x14
/* 3D34C 8003C74C 8E660014 */  lw        $a2, 0x14($s3)
/* 3D350 8003C750 AFB50010 */  sw        $s5, 0x10($sp)
/* 3D354 8003C754 00002025 */  or        $a0, $zero, $zero
/* 3D358 8003C758 00002825 */  or        $a1, $zero, $zero
/* 3D35C 8003C75C 0C0194C4 */  jal       func_80065310
/* 3D360 8003C760 24070001 */  addiu     $a3, $zero, 1
/* 3D364 8003C764 8E8D0000 */  lw        $t5, ($s4)
/* 3D368 8003C768 26520001 */  addiu     $s2, $s2, 1
/* 3D36C 8003C76C 01B17021 */  addu      $t6, $t5, $s1
/* 3D370 8003C770 26310014 */  addiu     $s1, $s1, 0x14
/* 3D374 8003C774 1650FFF1 */  bne       $s2, $s0, .L8003C73C
/* 3D378 8003C778 ADC20010 */  sw        $v0, 0x10($t6)
.L8003C77C:
/* 3D37C 8003C77C 00128880 */  sll       $s1, $s2, 2
/* 3D380 8003C780 02328821 */  addu      $s1, $s1, $s2
/* 3D384 8003C784 8E660014 */  lw        $a2, 0x14($s3)
/* 3D388 8003C788 AFB50010 */  sw        $s5, 0x10($sp)
/* 3D38C 8003C78C 00118880 */  sll       $s1, $s1, 2
/* 3D390 8003C790 00002025 */  or        $a0, $zero, $zero
/* 3D394 8003C794 00002825 */  or        $a1, $zero, $zero
/* 3D398 8003C798 0C0194C4 */  jal       func_80065310
/* 3D39C 8003C79C 24070001 */  addiu     $a3, $zero, 1
/* 3D3A0 8003C7A0 8E8F0000 */  lw        $t7, ($s4)
/* 3D3A4 8003C7A4 3C108010 */  lui       $s0, 0x8010
/* 3D3A8 8003C7A8 2610C830 */  addiu     $s0, $s0, -0x37d0
/* 3D3AC 8003C7AC 01F1C021 */  addu      $t8, $t7, $s1
/* 3D3B0 8003C7B0 3C118010 */  lui       $s1, 0x8010
/* 3D3B4 8003C7B4 AF020010 */  sw        $v0, 0x10($t8)
/* 3D3B8 8003C7B8 2631C838 */  addiu     $s1, $s1, -0x37c8
.L8003C7BC:
/* 3D3BC 8003C7BC 8ED90008 */  lw        $t9, 8($s6)
/* 3D3C0 8003C7C0 8E660014 */  lw        $a2, 0x14($s3)
/* 3D3C4 8003C7C4 00002025 */  or        $a0, $zero, $zero
/* 3D3C8 8003C7C8 001940C0 */  sll       $t0, $t9, 3
/* 3D3CC 8003C7CC AFA80010 */  sw        $t0, 0x10($sp)
/* 3D3D0 8003C7D0 00002825 */  or        $a1, $zero, $zero
/* 3D3D4 8003C7D4 0C0194C4 */  jal       func_80065310
/* 3D3D8 8003C7D8 24070001 */  addiu     $a3, $zero, 1
/* 3D3DC 8003C7DC 26100004 */  addiu     $s0, $s0, 4
/* 3D3E0 8003C7E0 0211082B */  sltu      $at, $s0, $s1
/* 3D3E4 8003C7E4 1420FFF5 */  bnez      $at, .L8003C7BC
/* 3D3E8 8003C7E8 AE02FFFC */  sw        $v0, -4($s0)
/* 3D3EC 8003C7EC 8EC90008 */  lw        $t1, 8($s6)
/* 3D3F0 8003C7F0 3C018010 */  lui       $at, 0x8010
/* 3D3F4 8003C7F4 3C108010 */  lui       $s0, 0x8010
/* 3D3F8 8003C7F8 3C118010 */  lui       $s1, 0x8010
/* 3D3FC 8003C7FC 2631C83C */  addiu     $s1, $s1, -0x37c4
/* 3D400 8003C800 2610C830 */  addiu     $s0, $s0, -0x37d0
/* 3D404 8003C804 AC29CAD0 */  sw        $t1, -0x3530($at)
.L8003C808:
/* 3D408 8003C808 8E660014 */  lw        $a2, 0x14($s3)
/* 3D40C 8003C80C 240A0010 */  addiu     $t2, $zero, 0x10
/* 3D410 8003C810 AFAA0010 */  sw        $t2, 0x10($sp)
/* 3D414 8003C814 00002025 */  or        $a0, $zero, $zero
/* 3D418 8003C818 00002825 */  or        $a1, $zero, $zero
/* 3D41C 8003C81C 0C0194C4 */  jal       func_80065310
/* 3D420 8003C820 24070001 */  addiu     $a3, $zero, 1
/* 3D424 8003C824 AE020008 */  sw        $v0, 8($s0)
/* 3D428 8003C828 A4400008 */  sh        $zero, 8($v0)
/* 3D42C 8003C82C 8E030008 */  lw        $v1, 8($s0)
/* 3D430 8003C830 00002025 */  or        $a0, $zero, $zero
/* 3D434 8003C834 00002825 */  or        $a1, $zero, $zero
/* 3D438 8003C838 AC63000C */  sw        $v1, 0xc($v1)
/* 3D43C 8003C83C 8EEB0000 */  lw        $t3, ($s7)
/* 3D440 8003C840 8E660014 */  lw        $a2, 0x14($s3)
/* 3D444 8003C844 24070001 */  addiu     $a3, $zero, 1
/* 3D448 8003C848 000B6080 */  sll       $t4, $t3, 2
/* 3D44C 8003C84C 0C0194C4 */  jal       func_80065310
/* 3D450 8003C850 AFAC0010 */  sw        $t4, 0x10($sp)
/* 3D454 8003C854 8E0D0008 */  lw        $t5, 8($s0)
/* 3D458 8003C858 26100004 */  addiu     $s0, $s0, 4
/* 3D45C 8003C85C 1611FFEA */  bne       $s0, $s1, .L8003C808
/* 3D460 8003C860 ADA20000 */  sw        $v0, ($t5)
/* 3D464 8003C864 3C048010 */  lui       $a0, 0x8010
/* 3D468 8003C868 3C058010 */  lui       $a1, 0x8010
/* 3D46C 8003C86C 8CA5CB00 */  lw        $a1, -0x3500($a1)
/* 3D470 8003C870 2484CAE0 */  addiu     $a0, $a0, -0x3520
/* 3D474 8003C874 0C0178E8 */  jal       func_8005E3A0
/* 3D478 8003C878 8FA60044 */  lw        $a2, 0x44($sp)
/* 3D47C 8003C87C 8E6E0018 */  lw        $t6, 0x18($s3)
/* 3D480 8003C880 3C018010 */  lui       $at, 0x8010
/* 3D484 8003C884 3C058010 */  lui       $a1, 0x8010
/* 3D488 8003C888 AC2ECAD4 */  sw        $t6, -0x352c($at)
/* 3D48C 8003C88C 8E6F0000 */  lw        $t7, ($s3)
/* 3D490 8003C890 3C018010 */  lui       $at, 0x8010
/* 3D494 8003C894 8CA5CAC4 */  lw        $a1, -0x353c($a1)
/* 3D498 8003C898 AC2FCAD8 */  sw        $t7, -0x3528($at)
/* 3D49C 8003C89C 3C018010 */  lui       $at, 0x8010
/* 3D4A0 8003C8A0 A020C824 */  sb        $zero, -0x37dc($at)
/* 3D4A4 8003C8A4 8EE60000 */  lw        $a2, ($s7)
/* 3D4A8 8003C8A8 0C0112C8 */  jal       func_80044B20
/* 3D4AC 8003C8AC 8E640014 */  lw        $a0, 0x14($s3)
/* 3D4B0 8003C8B0 8FBF003C */  lw        $ra, 0x3c($sp)
/* 3D4B4 8003C8B4 8FB0001C */  lw        $s0, 0x1c($sp)
/* 3D4B8 8003C8B8 8FB10020 */  lw        $s1, 0x20($sp)
/* 3D4BC 8003C8BC 8FB20024 */  lw        $s2, 0x24($sp)
/* 3D4C0 8003C8C0 8FB30028 */  lw        $s3, 0x28($sp)
/* 3D4C4 8003C8C4 8FB4002C */  lw        $s4, 0x2c($sp)
/* 3D4C8 8003C8C8 8FB50030 */  lw        $s5, 0x30($sp)
/* 3D4CC 8003C8CC 8FB60034 */  lw        $s6, 0x34($sp)
/* 3D4D0 8003C8D0 8FB70038 */  lw        $s7, 0x38($sp)
/* 3D4D4 8003C8D4 03E00008 */  jr        $ra
/* 3D4D8 8003C8D8 27BD0050 */  addiu     $sp, $sp, 0x50

glabel func_8003C8DC
/* 3D4DC 8003C8DC 3C0E8010 */  lui       $t6, 0x8010
/* 3D4E0 8003C8E0 8DCEC820 */  lw        $t6, -0x37e0($t6)
/* 3D4E4 8003C8E4 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 3D4E8 8003C8E8 AFB00018 */  sw        $s0, 0x18($sp)
/* 3D4EC 8003C8EC 000E7800 */  sll       $t7, $t6, 0
/* 3D4F0 8003C8F0 00A08025 */  or        $s0, $a1, $zero
/* 3D4F4 8003C8F4 AFBF001C */  sw        $ra, 0x1c($sp)
/* 3D4F8 8003C8F8 AFA60050 */  sw        $a2, 0x50($sp)
/* 3D4FC 8003C8FC 05E10005 */  bgez      $t7, .L8003C914
/* 3D500 8003C900 00803825 */  or        $a3, $a0, $zero
/* 3D504 8003C904 0C016424 */  jal       func_80059090
/* 3D508 8003C908 00000000 */  nop       
/* 3D50C 8003C90C 1000006F */  b         .L8003CACC
/* 3D510 8003C910 8FBF001C */  lw        $ra, 0x1c($sp)
.L8003C914:
/* 3D514 8003C914 3C088010 */  lui       $t0, 0x8010
/* 3D518 8003C918 2508CAB8 */  addiu     $t0, $t0, -0x3548
/* 3D51C 8003C91C 8D060004 */  lw        $a2, 4($t0)
/* 3D520 8003C920 3C188010 */  lui       $t8, 0x8010
/* 3D524 8003C924 8F18CB08 */  lw        $t8, -0x34f8($t8)
/* 3D528 8003C928 00002825 */  or        $a1, $zero, $zero
/* 3D52C 8003C92C AFA60024 */  sw        $a2, 0x24($sp)
/* 3D530 8003C930 10C00017 */  beqz      $a2, .L8003C990
/* 3D534 8003C934 AFB8002C */  sw        $t8, 0x2c($sp)
/* 3D538 8003C938 3C048010 */  lui       $a0, 0x8010
/* 3D53C 8003C93C 8C84CB04 */  lw        $a0, -0x34fc($a0)
/* 3D540 8003C940 8CC20008 */  lw        $v0, 8($a2)
.L8003C944:
/* 3D544 8003C944 00F05021 */  addu      $t2, $a3, $s0
/* 3D548 8003C948 00E2082B */  sltu      $at, $a3, $v0
/* 3D54C 8003C94C 14200010 */  bnez      $at, .L8003C990
/* 3D550 8003C950 00441821 */  addu      $v1, $v0, $a0
/* 3D554 8003C954 006A082A */  slt       $at, $v1, $t2
/* 3D558 8003C958 1420000A */  bnez      $at, .L8003C984
/* 3D55C 8003C95C 00C02825 */  or        $a1, $a2, $zero
/* 3D560 8003C960 8CCC0010 */  lw        $t4, 0x10($a2)
/* 3D564 8003C964 3C0B8007 */  lui       $t3, 0x8007
/* 3D568 8003C968 8D6B7DB0 */  lw        $t3, 0x7db0($t3)
/* 3D56C 8003C96C 01876821 */  addu      $t5, $t4, $a3
/* 3D570 8003C970 01A22023 */  subu      $a0, $t5, $v0
/* 3D574 8003C974 0C016424 */  jal       func_80059090
/* 3D578 8003C978 ACCB000C */  sw        $t3, 0xc($a2)
/* 3D57C 8003C97C 10000053 */  b         .L8003CACC
/* 3D580 8003C980 8FBF001C */  lw        $ra, 0x1c($sp)
.L8003C984:
/* 3D584 8003C984 8CC60000 */  lw        $a2, ($a2)
/* 3D588 8003C988 54C0FFEE */  bnel      $a2, $zero, .L8003C944
/* 3D58C 8003C98C 8CC20008 */  lw        $v0, 8($a2)
.L8003C990:
/* 3D590 8003C990 8D060008 */  lw        $a2, 8($t0)
/* 3D594 8003C994 14C00005 */  bnez      $a2, .L8003C9AC
/* 3D598 8003C998 00C02025 */  or        $a0, $a2, $zero
/* 3D59C 8003C99C 0C016424 */  jal       func_80059090
/* 3D5A0 8003C9A0 8FA40024 */  lw        $a0, 0x24($sp)
/* 3D5A4 8003C9A4 10000049 */  b         .L8003CACC
/* 3D5A8 8003C9A8 8FBF001C */  lw        $ra, 0x1c($sp)
.L8003C9AC:
/* 3D5AC 8003C9AC 8CCE0000 */  lw        $t6, ($a2)
/* 3D5B0 8003C9B0 AFA70048 */  sw        $a3, 0x48($sp)
/* 3D5B4 8003C9B4 AFA60034 */  sw        $a2, 0x34($sp)
/* 3D5B8 8003C9B8 AFA50030 */  sw        $a1, 0x30($sp)
/* 3D5BC 8003C9BC 0C015BD4 */  jal       func_80056F50
/* 3D5C0 8003C9C0 AD0E0008 */  sw        $t6, 8($t0)
/* 3D5C4 8003C9C4 8FA50030 */  lw        $a1, 0x30($sp)
/* 3D5C8 8003C9C8 3C088010 */  lui       $t0, 0x8010
/* 3D5CC 8003C9CC 2508CAB8 */  addiu     $t0, $t0, -0x3548
/* 3D5D0 8003C9D0 8FA60034 */  lw        $a2, 0x34($sp)
/* 3D5D4 8003C9D4 10A00008 */  beqz      $a1, .L8003C9F8
/* 3D5D8 8003C9D8 8FA70048 */  lw        $a3, 0x48($sp)
/* 3D5DC 8003C9DC 00C02025 */  or        $a0, $a2, $zero
/* 3D5E0 8003C9E0 AFA60034 */  sw        $a2, 0x34($sp)
/* 3D5E4 8003C9E4 0C015BE0 */  jal       func_80056F80
/* 3D5E8 8003C9E8 AFA70048 */  sw        $a3, 0x48($sp)
/* 3D5EC 8003C9EC 8FA60034 */  lw        $a2, 0x34($sp)
/* 3D5F0 8003C9F0 1000000C */  b         .L8003CA24
/* 3D5F4 8003C9F4 8FA70048 */  lw        $a3, 0x48($sp)
.L8003C9F8:
/* 3D5F8 8003C9F8 8D020004 */  lw        $v0, 4($t0)
/* 3D5FC 8003C9FC 50400007 */  beql      $v0, $zero, .L8003CA1C
/* 3D600 8003CA00 AD060004 */  sw        $a2, 4($t0)
/* 3D604 8003CA04 AD060004 */  sw        $a2, 4($t0)
/* 3D608 8003CA08 ACC20000 */  sw        $v0, ($a2)
/* 3D60C 8003CA0C ACC00004 */  sw        $zero, 4($a2)
/* 3D610 8003CA10 10000004 */  b         .L8003CA24
/* 3D614 8003CA14 AC460004 */  sw        $a2, 4($v0)
/* 3D618 8003CA18 AD060004 */  sw        $a2, 4($t0)
.L8003CA1C:
/* 3D61C 8003CA1C ACC00000 */  sw        $zero, ($a2)
/* 3D620 8003CA20 ACC00004 */  sw        $zero, 4($a2)
.L8003CA24:
/* 3D624 8003CA24 30E20001 */  andi      $v0, $a3, 1
/* 3D628 8003CA28 8CC40010 */  lw        $a0, 0x10($a2)
/* 3D62C 8003CA2C AFA20040 */  sw        $v0, 0x40($sp)
/* 3D630 8003CA30 00E23823 */  subu      $a3, $a3, $v0
/* 3D634 8003CA34 ACC70008 */  sw        $a3, 8($a2)
/* 3D638 8003CA38 3C0F8007 */  lui       $t7, 0x8007
/* 3D63C 8003CA3C 8DEF7DB0 */  lw        $t7, 0x7db0($t7)
/* 3D640 8003CA40 3C088007 */  lui       $t0, 0x8007
/* 3D644 8003CA44 25087DB4 */  addiu     $t0, $t0, 0x7db4
/* 3D648 8003CA48 ACCF000C */  sw        $t7, 0xc($a2)
/* 3D64C 8003CA4C 8D030000 */  lw        $v1, ($t0)
/* 3D650 8003CA50 3C198010 */  lui       $t9, 0x8010
/* 3D654 8003CA54 8F39CAFC */  lw        $t9, -0x3504($t9)
/* 3D658 8003CA58 0003C080 */  sll       $t8, $v1, 2
/* 3D65C 8003CA5C 0303C023 */  subu      $t8, $t8, $v1
/* 3D660 8003CA60 0018C0C0 */  sll       $t8, $t8, 3
/* 3D664 8003CA64 246A0001 */  addiu     $t2, $v1, 1
/* 3D668 8003CA68 AD0A0000 */  sw        $t2, ($t0)
/* 3D66C 8003CA6C 03198021 */  addu      $s0, $t8, $t9
/* 3D670 8003CA70 3C0C8010 */  lui       $t4, 0x8010
/* 3D674 8003CA74 3C098010 */  lui       $t1, 0x8010
/* 3D678 8003CA78 240B0001 */  addiu     $t3, $zero, 1
/* 3D67C 8003CA7C 258CCAE0 */  addiu     $t4, $t4, -0x3520
/* 3D680 8003CA80 2529CB04 */  addiu     $t1, $t1, -0x34fc
/* 3D684 8003CA84 A20B0002 */  sb        $t3, 2($s0)
/* 3D688 8003CA88 AE0C0004 */  sw        $t4, 4($s0)
/* 3D68C 8003CA8C AE07000C */  sw        $a3, 0xc($s0)
/* 3D690 8003CA90 AE040008 */  sw        $a0, 8($s0)
/* 3D694 8003CA94 8D2D0000 */  lw        $t5, ($t1)
/* 3D698 8003CA98 AE0D0010 */  sw        $t5, 0x10($s0)
/* 3D69C 8003CA9C 8D250000 */  lw        $a1, ($t1)
/* 3D6A0 8003CAA0 0C0178BC */  jal       func_8005E2F0
/* 3D6A4 8003CAA4 AFA40044 */  sw        $a0, 0x44($sp)
/* 3D6A8 8003CAA8 8FA4002C */  lw        $a0, 0x2c($sp)
/* 3D6AC 8003CAAC 02002825 */  or        $a1, $s0, $zero
/* 3D6B0 8003CAB0 0C01783C */  jal       func_8005E0F0
/* 3D6B4 8003CAB4 00003025 */  or        $a2, $zero, $zero
/* 3D6B8 8003CAB8 0C016424 */  jal       func_80059090
/* 3D6BC 8003CABC 8FA40044 */  lw        $a0, 0x44($sp)
/* 3D6C0 8003CAC0 8FAE0040 */  lw        $t6, 0x40($sp)
/* 3D6C4 8003CAC4 004E1021 */  addu      $v0, $v0, $t6
/* 3D6C8 8003CAC8 8FBF001C */  lw        $ra, 0x1c($sp)
.L8003CACC:
/* 3D6CC 8003CACC 8FB00018 */  lw        $s0, 0x18($sp)
/* 3D6D0 8003CAD0 27BD0048 */  addiu     $sp, $sp, 0x48
/* 3D6D4 8003CAD4 03E00008 */  jr        $ra
/* 3D6D8 8003CAD8 00000000 */  nop       

glabel func_8003CADC
/* 3D6DC 8003CADC 3C0E8007 */  lui       $t6, 0x8007
/* 3D6E0 8003CAE0 8DCE7DB0 */  lw        $t6, 0x7db0($t6)
/* 3D6E4 8003CAE4 24010003 */  addiu     $at, $zero, 3
/* 3D6E8 8003CAE8 3C028010 */  lui       $v0, 0x8010
/* 3D6EC 8003CAEC 01C1001B */  divu      $zero, $t6, $at
/* 3D6F0 8003CAF0 00007810 */  mfhi      $t7
/* 3D6F4 8003CAF4 000FC080 */  sll       $t8, $t7, 2
/* 3D6F8 8003CAF8 00581021 */  addu      $v0, $v0, $t8
/* 3D6FC 8003CAFC 8C42C838 */  lw        $v0, -0x37c8($v0)
/* 3D700 8003CB00 27BDFF78 */  addiu     $sp, $sp, -0x88
/* 3D704 8003CB04 AFBF0014 */  sw        $ra, 0x14($sp)
/* 3D708 8003CB08 AFA40088 */  sw        $a0, 0x88($sp)
/* 3D70C 8003CB0C 8C440000 */  lw        $a0, ($v0)
/* 3D710 8003CB10 0C016424 */  jal       func_80059090
/* 3D714 8003CB14 AFA2002C */  sw        $v0, 0x2c($sp)
/* 3D718 8003CB18 3C088007 */  lui       $t0, 0x8007
/* 3D71C 8003CB1C 91087DA8 */  lbu       $t0, 0x7da8($t0)
/* 3D720 8003CB20 AFA20084 */  sw        $v0, 0x84($sp)
/* 3D724 8003CB24 3C19A450 */  lui       $t9, 0xa450
/* 3D728 8003CB28 8F230004 */  lw        $v1, 4($t9)
/* 3D72C 8003CB2C 1500000B */  bnez      $t0, .L8003CB5C
/* 3D730 8003CB30 00031882 */  srl       $v1, $v1, 2
/* 3D734 8003CB34 3C028007 */  lui       $v0, 0x8007
/* 3D738 8003CB38 8C427DBC */  lw        $v0, 0x7dbc($v0)
/* 3D73C 8003CB3C 50400008 */  beql      $v0, $zero, .L8003CB60
/* 3D740 8003CB40 286101A9 */  slti      $at, $v1, 0x1a9
/* 3D744 8003CB44 84450004 */  lh        $a1, 4($v0)
/* 3D748 8003CB48 8C440000 */  lw        $a0, ($v0)
/* 3D74C 8003CB4C AFA30078 */  sw        $v1, 0x78($sp)
/* 3D750 8003CB50 0C0196E8 */  jal       func_80065BA0
/* 3D754 8003CB54 00052880 */  sll       $a1, $a1, 2
/* 3D758 8003CB58 8FA30078 */  lw        $v1, 0x78($sp)
.L8003CB5C:
/* 3D75C 8003CB5C 286101A9 */  slti      $at, $v1, 0x1a9
.L8003CB60:
/* 3D760 8003CB60 1420000B */  bnez      $at, .L8003CB90
/* 3D764 8003CB64 3C028007 */  lui       $v0, 0x8007
/* 3D768 8003CB68 24427DC0 */  addiu     $v0, $v0, 0x7dc0
/* 3D76C 8003CB6C 8C490000 */  lw        $t1, ($v0)
/* 3D770 8003CB70 3C0A8010 */  lui       $t2, 0x8010
/* 3D774 8003CB74 8FAB002C */  lw        $t3, 0x2c($sp)
/* 3D778 8003CB78 11200005 */  beqz      $t1, .L8003CB90
/* 3D77C 8003CB7C 00000000 */  nop       
/* 3D780 8003CB80 8D4ACAC4 */  lw        $t2, -0x353c($t2)
/* 3D784 8003CB84 A56A0004 */  sh        $t2, 4($t3)
/* 3D788 8003CB88 10000009 */  b         .L8003CBB0
/* 3D78C 8003CB8C AC400000 */  sw        $zero, ($v0)
.L8003CB90:
/* 3D790 8003CB90 3C0C8010 */  lui       $t4, 0x8010
/* 3D794 8003CB94 8D8CCAC8 */  lw        $t4, -0x3538($t4)
/* 3D798 8003CB98 8FAD002C */  lw        $t5, 0x2c($sp)
/* 3D79C 8003CB9C 3C028007 */  lui       $v0, 0x8007
/* 3D7A0 8003CBA0 24427DC0 */  addiu     $v0, $v0, 0x7dc0
/* 3D7A4 8003CBA4 240E0001 */  addiu     $t6, $zero, 1
/* 3D7A8 8003CBA8 A5AC0004 */  sh        $t4, 4($t5)
/* 3D7AC 8003CBAC AC4E0000 */  sw        $t6, ($v0)
.L8003CBB0:
/* 3D7B0 8003CBB0 0C00F458 */  jal       func_8003D160
/* 3D7B4 8003CBB4 00000000 */  nop       
/* 3D7B8 8003CBB8 3C0F8007 */  lui       $t7, 0x8007
/* 3D7BC 8003CBBC 8DEF7DAC */  lw        $t7, 0x7dac($t7)
/* 3D7C0 8003CBC0 11E00005 */  beqz      $t7, .L8003CBD8
/* 3D7C4 8003CBC4 3C048010 */  lui       $a0, 0x8010
/* 3D7C8 8003CBC8 0C015964 */  jal       func_80056590
/* 3D7CC 8003CBCC 2484C825 */  addiu     $a0, $a0, -0x37db
/* 3D7D0 8003CBD0 3C018010 */  lui       $at, 0x8010
/* 3D7D4 8003CBD4 AC22C828 */  sw        $v0, -0x37d8($at)
.L8003CBD8:
/* 3D7D8 8003CBD8 3C188007 */  lui       $t8, 0x8007
/* 3D7DC 8003CBDC 8F187DB8 */  lw        $t8, 0x7db8($t8)
/* 3D7E0 8003CBE0 8FA8002C */  lw        $t0, 0x2c($sp)
/* 3D7E4 8003CBE4 3C048010 */  lui       $a0, 0x8010
/* 3D7E8 8003CBE8 0018C880 */  sll       $t9, $t8, 2
/* 3D7EC 8003CBEC 00992021 */  addu      $a0, $a0, $t9
/* 3D7F0 8003CBF0 8C84C830 */  lw        $a0, -0x37d0($a0)
/* 3D7F4 8003CBF4 27A5007C */  addiu     $a1, $sp, 0x7c
/* 3D7F8 8003CBF8 8FA60084 */  lw        $a2, 0x84($sp)
/* 3D7FC 8003CBFC 0C012524 */  jal       func_80049490
/* 3D800 8003CC00 85070004 */  lh        $a3, 4($t0)
/* 3D804 8003CC04 3C078007 */  lui       $a3, 0x8007
/* 3D808 8003CC08 24E77DB8 */  addiu     $a3, $a3, 0x7db8
/* 3D80C 8003CC0C 8CE40000 */  lw        $a0, ($a3)
/* 3D810 8003CC10 3C058010 */  lui       $a1, 0x8010
/* 3D814 8003CC14 3C038007 */  lui       $v1, 0x8007
/* 3D818 8003CC18 00044880 */  sll       $t1, $a0, 2
/* 3D81C 8003CC1C 00A92821 */  addu      $a1, $a1, $t1
/* 3D820 8003CC20 8CA5C830 */  lw        $a1, -0x37d0($a1)
/* 3D824 8003CC24 38890001 */  xori      $t1, $a0, 1
/* 3D828 8003CC28 ACE90000 */  sw        $t1, ($a3)
/* 3D82C 8003CC2C 8C637DB0 */  lw        $v1, 0x7db0($v1)
/* 3D830 8003CC30 24010003 */  addiu     $at, $zero, 3
/* 3D834 8003CC34 00455023 */  subu      $t2, $v0, $a1
/* 3D838 8003CC38 0061001B */  divu      $zero, $v1, $at
/* 3D83C 8003CC3C 000A58C3 */  sra       $t3, $t2, 3
/* 3D840 8003CC40 000B60C0 */  sll       $t4, $t3, 3
/* 3D844 8003CC44 AFAC006C */  sw        $t4, 0x6c($sp)
/* 3D848 8003CC48 00005010 */  mfhi      $t2
/* 3D84C 8003CC4C 3C068006 */  lui       $a2, 0x8006
/* 3D850 8003CC50 3C0E8006 */  lui       $t6, 0x8006
/* 3D854 8003CC54 000A5880 */  sll       $t3, $t2, 2
/* 3D858 8003CC58 3C0C8010 */  lui       $t4, 0x8010
/* 3D85C 8003CC5C 24C65FC0 */  addiu     $a2, $a2, 0x5fc0
/* 3D860 8003CC60 25CE6090 */  addiu     $t6, $t6, 0x6090
/* 3D864 8003CC64 018B6021 */  addu      $t4, $t4, $t3
/* 3D868 8003CC68 8D8CC838 */  lw        $t4, -0x37c8($t4)
/* 3D86C 8003CC6C 01C67823 */  subu      $t7, $t6, $a2
/* 3D870 8003CC70 3C0E8007 */  lui       $t6, 0x8007
/* 3D874 8003CC74 91CE7D9C */  lbu       $t6, 0x7d9c($t6)
/* 3D878 8003CC78 240D0002 */  addiu     $t5, $zero, 2
/* 3D87C 8003CC7C 3C018007 */  lui       $at, 0x8007
/* 3D880 8003CC80 AFAD0038 */  sw        $t5, 0x38($sp)
/* 3D884 8003CC84 3C188006 */  lui       $t8, 0x8006
/* 3D888 8003CC88 3C198008 */  lui       $t9, 0x8008
/* 3D88C 8003CC8C AC2C7DBC */  sw        $t4, 0x7dbc($at)
/* 3D890 8003CC90 27187420 */  addiu     $t8, $t8, 0x7420
/* 3D894 8003CC94 2739EA70 */  addiu     $t9, $t9, -0x1590
/* 3D898 8003CC98 24080800 */  addiu     $t0, $zero, 0x800
/* 3D89C 8003CC9C 3C018007 */  lui       $at, 0x8007
/* 3D8A0 8003CCA0 246D0001 */  addiu     $t5, $v1, 1
/* 3D8A4 8003CCA4 AFA60040 */  sw        $a2, 0x40($sp)
/* 3D8A8 8003CCA8 AFAF0044 */  sw        $t7, 0x44($sp)
/* 3D8AC 8003CCAC AFA0003C */  sw        $zero, 0x3c($sp)
/* 3D8B0 8003CCB0 AFB80048 */  sw        $t8, 0x48($sp)
/* 3D8B4 8003CCB4 AFB90050 */  sw        $t9, 0x50($sp)
/* 3D8B8 8003CCB8 AFA80054 */  sw        $t0, 0x54($sp)
/* 3D8BC 8003CCBC AFA00058 */  sw        $zero, 0x58($sp)
/* 3D8C0 8003CCC0 AFA0005C */  sw        $zero, 0x5c($sp)
/* 3D8C4 8003CCC4 AFA00060 */  sw        $zero, 0x60($sp)
/* 3D8C8 8003CCC8 AFA00064 */  sw        $zero, 0x64($sp)
/* 3D8CC 8003CCCC AFA00070 */  sw        $zero, 0x70($sp)
/* 3D8D0 8003CCD0 AFA00074 */  sw        $zero, 0x74($sp)
/* 3D8D4 8003CCD4 AC2D7DB0 */  sw        $t5, 0x7db0($at)
/* 3D8D8 8003CCD8 11C00003 */  beqz      $t6, .L8003CCE8
/* 3D8DC 8003CCDC AFA50068 */  sw        $a1, 0x68($sp)
/* 3D8E0 8003CCE0 0C00F4CB */  jal       func_8003D32C
/* 3D8E4 8003CCE4 00000000 */  nop       
.L8003CCE8:
/* 3D8E8 8003CCE8 3C0F8007 */  lui       $t7, 0x8007
/* 3D8EC 8003CCEC 91EF7D90 */  lbu       $t7, 0x7d90($t7)
/* 3D8F0 8003CCF0 11E00014 */  beqz      $t7, .L8003CD44
/* 3D8F4 8003CCF4 00000000 */  nop       
/* 3D8F8 8003CCF8 0C010A74 */  jal       func_800429D0
/* 3D8FC 8003CCFC 00000000 */  nop       
/* 3D900 8003CD00 3C028007 */  lui       $v0, 0x8007
/* 3D904 8003CD04 8C427DBC */  lw        $v0, 0x7dbc($v0)
/* 3D908 8003CD08 3C188007 */  lui       $t8, 0x8007
/* 3D90C 8003CD0C 00002825 */  or        $a1, $zero, $zero
/* 3D910 8003CD10 1040000C */  beqz      $v0, .L8003CD44
/* 3D914 8003CD14 24070000 */  addiu     $a3, $zero, 0
/* 3D918 8003CD18 8F187DB0 */  lw        $t8, 0x7db0($t8)
/* 3D91C 8003CD1C 24010003 */  addiu     $at, $zero, 3
/* 3D920 8003CD20 24060215 */  addiu     $a2, $zero, 0x215
/* 3D924 8003CD24 0301001B */  divu      $zero, $t8, $at
/* 3D928 8003CD28 0000C810 */  mfhi      $t9
/* 3D92C 8003CD2C 17200003 */  bnez      $t9, .L8003CD3C
/* 3D930 8003CD30 00000000 */  nop       
/* 3D934 8003CD34 10000001 */  b         .L8003CD3C
/* 3D938 8003CD38 24060216 */  addiu     $a2, $zero, 0x216
.L8003CD3C:
/* 3D93C 8003CD3C 0C0125F8 */  jal       func_800497E0
/* 3D940 8003CD40 8C440000 */  lw        $a0, ($v0)
.L8003CD44:
/* 3D944 8003CD44 3C088007 */  lui       $t0, 0x8007
/* 3D948 8003CD48 91087D98 */  lbu       $t0, 0x7d98($t0)
/* 3D94C 8003CD4C 11000003 */  beqz      $t0, .L8003CD5C
/* 3D950 8003CD50 00000000 */  nop       
/* 3D954 8003CD54 0C0113A9 */  jal       func_80044EA4
/* 3D958 8003CD58 00000000 */  nop       
.L8003CD5C:
/* 3D95C 8003CD5C 0C0105AF */  jal       func_800416BC
/* 3D960 8003CD60 00000000 */  nop       
/* 3D964 8003CD64 3C048007 */  lui       $a0, 0x8007
/* 3D968 8003CD68 8C847DC4 */  lw        $a0, 0x7dc4($a0)
/* 3D96C 8003CD6C 3C028007 */  lui       $v0, 0x8007
/* 3D970 8003CD70 3C018007 */  lui       $at, 0x8007
/* 3D974 8003CD74 1080005C */  beqz      $a0, .L8003CEE8
/* 3D978 8003CD78 24050001 */  addiu     $a1, $zero, 1
/* 3D97C 8003CD7C C4207DD0 */  lwc1      $f0, 0x7dd0($at)
/* 3D980 8003CD80 44804000 */  mtc1      $zero, $f8
/* 3D984 8003CD84 24427DC8 */  addiu     $v0, $v0, 0x7dc8
/* 3D988 8003CD88 C4440000 */  lwc1      $f4, ($v0)
/* 3D98C 8003CD8C 4600403C */  c.lt.s    $f8, $f0
/* 3D990 8003CD90 3C098007 */  lui       $t1, 0x8007
/* 3D994 8003CD94 46002180 */  add.s     $f6, $f4, $f0
/* 3D998 8003CD98 3C0A8007 */  lui       $t2, 0x8007
/* 3D99C 8003CD9C 45000011 */  bc1f      .L8003CDE4
/* 3D9A0 8003CDA0 E4460000 */  swc1      $f6, ($v0)
/* 3D9A4 8003CDA4 91297DCC */  lbu       $t1, 0x7dcc($t1)
/* 3D9A8 8003CDA8 C4420000 */  lwc1      $f2, ($v0)
/* 3D9AC 8003CDAC 3C014F80 */  lui       $at, 0x4f80
/* 3D9B0 8003CDB0 44895000 */  mtc1      $t1, $f10
/* 3D9B4 8003CDB4 05210004 */  bgez      $t1, .L8003CDC8
/* 3D9B8 8003CDB8 46805020 */  cvt.s.w   $f0, $f10
/* 3D9BC 8003CDBC 44818000 */  mtc1      $at, $f16
/* 3D9C0 8003CDC0 00000000 */  nop       
/* 3D9C4 8003CDC4 46100000 */  add.s     $f0, $f0, $f16
.L8003CDC8:
/* 3D9C8 8003CDC8 4602003E */  c.le.s    $f0, $f2
/* 3D9CC 8003CDCC 00000000 */  nop       
/* 3D9D0 8003CDD0 45020014 */  bc1fl     .L8003CE24
/* 3D9D4 8003CDD4 444BF800 */  cfc1      $t3, $31
/* 3D9D8 8003CDD8 E4400000 */  swc1      $f0, ($v0)
/* 3D9DC 8003CDDC 10000010 */  b         .L8003CE20
/* 3D9E0 8003CDE0 C4420000 */  lwc1      $f2, ($v0)
.L8003CDE4:
/* 3D9E4 8003CDE4 914A7DCC */  lbu       $t2, 0x7dcc($t2)
/* 3D9E8 8003CDE8 3C014F80 */  lui       $at, 0x4f80
/* 3D9EC 8003CDEC 448A9000 */  mtc1      $t2, $f18
/* 3D9F0 8003CDF0 05410004 */  bgez      $t2, .L8003CE04
/* 3D9F4 8003CDF4 46809020 */  cvt.s.w   $f0, $f18
/* 3D9F8 8003CDF8 44812000 */  mtc1      $at, $f4
/* 3D9FC 8003CDFC 00000000 */  nop       
/* 3DA00 8003CE00 46040000 */  add.s     $f0, $f0, $f4
.L8003CE04:
/* 3DA04 8003CE04 C4420000 */  lwc1      $f2, ($v0)
/* 3DA08 8003CE08 4600103E */  c.le.s    $f2, $f0
/* 3DA0C 8003CE0C 00000000 */  nop       
/* 3DA10 8003CE10 45020004 */  bc1fl     .L8003CE24
/* 3DA14 8003CE14 444BF800 */  cfc1      $t3, $31
/* 3DA18 8003CE18 E4400000 */  swc1      $f0, ($v0)
/* 3DA1C 8003CE1C C4420000 */  lwc1      $f2, ($v0)
.L8003CE20:
/* 3DA20 8003CE20 444BF800 */  cfc1      $t3, $31
.L8003CE24:
/* 3DA24 8003CE24 44C5F800 */  ctc1      $a1, $31
/* 3DA28 8003CE28 3C014F00 */  lui       $at, 0x4f00
/* 3DA2C 8003CE2C 460011A4 */  cvt.w.s   $f6, $f2
/* 3DA30 8003CE30 4445F800 */  cfc1      $a1, $31
/* 3DA34 8003CE34 00000000 */  nop       
/* 3DA38 8003CE38 30A50078 */  andi      $a1, $a1, 0x78
/* 3DA3C 8003CE3C 50A00013 */  beql      $a1, $zero, .L8003CE8C
/* 3DA40 8003CE40 44053000 */  mfc1      $a1, $f6
/* 3DA44 8003CE44 44813000 */  mtc1      $at, $f6
/* 3DA48 8003CE48 24050001 */  addiu     $a1, $zero, 1
/* 3DA4C 8003CE4C 46061181 */  sub.s     $f6, $f2, $f6
/* 3DA50 8003CE50 44C5F800 */  ctc1      $a1, $31
/* 3DA54 8003CE54 00000000 */  nop       
/* 3DA58 8003CE58 460031A4 */  cvt.w.s   $f6, $f6
/* 3DA5C 8003CE5C 4445F800 */  cfc1      $a1, $31
/* 3DA60 8003CE60 00000000 */  nop       
/* 3DA64 8003CE64 30A50078 */  andi      $a1, $a1, 0x78
/* 3DA68 8003CE68 14A00005 */  bnez      $a1, .L8003CE80
/* 3DA6C 8003CE6C 00000000 */  nop       
/* 3DA70 8003CE70 44053000 */  mfc1      $a1, $f6
/* 3DA74 8003CE74 3C018000 */  lui       $at, 0x8000
/* 3DA78 8003CE78 10000007 */  b         .L8003CE98
/* 3DA7C 8003CE7C 00A12825 */  or        $a1, $a1, $at
.L8003CE80:
/* 3DA80 8003CE80 10000005 */  b         .L8003CE98
/* 3DA84 8003CE84 2405FFFF */  addiu     $a1, $zero, -1
/* 3DA88 8003CE88 44053000 */  mfc1      $a1, $f6
.L8003CE8C:
/* 3DA8C 8003CE8C 00000000 */  nop       
/* 3DA90 8003CE90 04A0FFFB */  bltz      $a1, .L8003CE80
/* 3DA94 8003CE94 00000000 */  nop       
.L8003CE98:
/* 3DA98 8003CE98 44CBF800 */  ctc1      $t3, $31
/* 3DA9C 8003CE9C 0C00E4F7 */  jal       func_800393DC
/* 3DAA0 8003CEA0 30A500FF */  andi      $a1, $a1, 0xff
/* 3DAA4 8003CEA4 3C0C8007 */  lui       $t4, 0x8007
/* 3DAA8 8003CEA8 918C7DCC */  lbu       $t4, 0x7dcc($t4)
/* 3DAAC 8003CEAC 3C028007 */  lui       $v0, 0x8007
/* 3DAB0 8003CEB0 24427DC8 */  addiu     $v0, $v0, 0x7dc8
/* 3DAB4 8003CEB4 448C5000 */  mtc1      $t4, $f10
/* 3DAB8 8003CEB8 C4480000 */  lwc1      $f8, ($v0)
/* 3DABC 8003CEBC 05810005 */  bgez      $t4, .L8003CED4
/* 3DAC0 8003CEC0 46805420 */  cvt.s.w   $f16, $f10
/* 3DAC4 8003CEC4 3C014F80 */  lui       $at, 0x4f80
/* 3DAC8 8003CEC8 44819000 */  mtc1      $at, $f18
/* 3DACC 8003CECC 00000000 */  nop       
/* 3DAD0 8003CED0 46128400 */  add.s     $f16, $f16, $f18
.L8003CED4:
/* 3DAD4 8003CED4 46104032 */  c.eq.s    $f8, $f16
/* 3DAD8 8003CED8 3C018007 */  lui       $at, 0x8007
/* 3DADC 8003CEDC 45000002 */  bc1f      .L8003CEE8
/* 3DAE0 8003CEE0 00000000 */  nop       
/* 3DAE4 8003CEE4 AC207DC4 */  sw        $zero, 0x7dc4($at)
.L8003CEE8:
/* 3DAE8 8003CEE8 3C028007 */  lui       $v0, 0x8007
/* 3DAEC 8003CEEC 24427DD4 */  addiu     $v0, $v0, 0x7dd4
/* 3DAF0 8003CEF0 44801000 */  mtc1      $zero, $f2
/* 3DAF4 8003CEF4 C4400000 */  lwc1      $f0, ($v0)
/* 3DAF8 8003CEF8 3C018007 */  lui       $at, 0x8007
/* 3DAFC 8003CEFC 46001032 */  c.eq.s    $f2, $f0
/* 3DB00 8003CF00 00000000 */  nop       
/* 3DB04 8003CF04 45010035 */  bc1t      .L8003CFDC
/* 3DB08 8003CF08 00000000 */  nop       
/* 3DB0C 8003CF0C C4247DD8 */  lwc1      $f4, 0x7dd8($at)
/* 3DB10 8003CF10 44805000 */  mtc1      $zero, $f10
/* 3DB14 8003CF14 24040002 */  addiu     $a0, $zero, 2
/* 3DB18 8003CF18 46040181 */  sub.s     $f6, $f0, $f4
/* 3DB1C 8003CF1C 24050001 */  addiu     $a1, $zero, 1
/* 3DB20 8003CF20 E4460000 */  swc1      $f6, ($v0)
/* 3DB24 8003CF24 C4400000 */  lwc1      $f0, ($v0)
/* 3DB28 8003CF28 460A003E */  c.le.s    $f0, $f10
/* 3DB2C 8003CF2C 00000000 */  nop       
/* 3DB30 8003CF30 45020006 */  bc1fl     .L8003CF4C
/* 3DB34 8003CF34 444DF800 */  cfc1      $t5, $31
/* 3DB38 8003CF38 0C00E45B */  jal       func_8003916C
/* 3DB3C 8003CF3C E4420000 */  swc1      $f2, ($v0)
/* 3DB40 8003CF40 3C018007 */  lui       $at, 0x8007
/* 3DB44 8003CF44 C4207DD4 */  lwc1      $f0, 0x7dd4($at)
/* 3DB48 8003CF48 444DF800 */  cfc1      $t5, $31
.L8003CF4C:
/* 3DB4C 8003CF4C 24050001 */  addiu     $a1, $zero, 1
/* 3DB50 8003CF50 44C5F800 */  ctc1      $a1, $31
/* 3DB54 8003CF54 24040002 */  addiu     $a0, $zero, 2
/* 3DB58 8003CF58 3C014F00 */  lui       $at, 0x4f00
/* 3DB5C 8003CF5C 460004A4 */  cvt.w.s   $f18, $f0
/* 3DB60 8003CF60 4445F800 */  cfc1      $a1, $31
/* 3DB64 8003CF64 00000000 */  nop       
/* 3DB68 8003CF68 30A50078 */  andi      $a1, $a1, 0x78
/* 3DB6C 8003CF6C 50A00013 */  beql      $a1, $zero, .L8003CFBC
/* 3DB70 8003CF70 44059000 */  mfc1      $a1, $f18
/* 3DB74 8003CF74 44819000 */  mtc1      $at, $f18
/* 3DB78 8003CF78 24050001 */  addiu     $a1, $zero, 1
/* 3DB7C 8003CF7C 46120481 */  sub.s     $f18, $f0, $f18
/* 3DB80 8003CF80 44C5F800 */  ctc1      $a1, $31
/* 3DB84 8003CF84 00000000 */  nop       
/* 3DB88 8003CF88 460094A4 */  cvt.w.s   $f18, $f18
/* 3DB8C 8003CF8C 4445F800 */  cfc1      $a1, $31
/* 3DB90 8003CF90 00000000 */  nop       
/* 3DB94 8003CF94 30A50078 */  andi      $a1, $a1, 0x78
/* 3DB98 8003CF98 14A00005 */  bnez      $a1, .L8003CFB0
/* 3DB9C 8003CF9C 00000000 */  nop       
/* 3DBA0 8003CFA0 44059000 */  mfc1      $a1, $f18
/* 3DBA4 8003CFA4 3C018000 */  lui       $at, 0x8000
/* 3DBA8 8003CFA8 10000007 */  b         .L8003CFC8
/* 3DBAC 8003CFAC 00A12825 */  or        $a1, $a1, $at
.L8003CFB0:
/* 3DBB0 8003CFB0 10000005 */  b         .L8003CFC8
/* 3DBB4 8003CFB4 2405FFFF */  addiu     $a1, $zero, -1
/* 3DBB8 8003CFB8 44059000 */  mfc1      $a1, $f18
.L8003CFBC:
/* 3DBBC 8003CFBC 00000000 */  nop       
/* 3DBC0 8003CFC0 04A0FFFB */  bltz      $a1, .L8003CFB0
/* 3DBC4 8003CFC4 00000000 */  nop       
.L8003CFC8:
/* 3DBC8 8003CFC8 44CDF800 */  ctc1      $t5, $31
/* 3DBCC 8003CFCC 0C00E3A6 */  jal       func_80038E98
/* 3DBD0 8003CFD0 00000000 */  nop       
/* 3DBD4 8003CFD4 44801000 */  mtc1      $zero, $f2
/* 3DBD8 8003CFD8 00000000 */  nop       
.L8003CFDC:
/* 3DBDC 8003CFDC 3C028007 */  lui       $v0, 0x8007
/* 3DBE0 8003CFE0 24427DDC */  addiu     $v0, $v0, 0x7ddc
/* 3DBE4 8003CFE4 C4400000 */  lwc1      $f0, ($v0)
/* 3DBE8 8003CFE8 3C018007 */  lui       $at, 0x8007
/* 3DBEC 8003CFEC 46001032 */  c.eq.s    $f2, $f0
/* 3DBF0 8003CFF0 00000000 */  nop       
/* 3DBF4 8003CFF4 45010033 */  bc1t      .L8003D0C4
/* 3DBF8 8003CFF8 00000000 */  nop       
/* 3DBFC 8003CFFC C4287DE0 */  lwc1      $f8, 0x7de0($at)
/* 3DC00 8003D000 44802000 */  mtc1      $zero, $f4
/* 3DC04 8003D004 24040001 */  addiu     $a0, $zero, 1
/* 3DC08 8003D008 46080401 */  sub.s     $f16, $f0, $f8
/* 3DC0C 8003D00C 24050001 */  addiu     $a1, $zero, 1
/* 3DC10 8003D010 E4500000 */  swc1      $f16, ($v0)
/* 3DC14 8003D014 C4400000 */  lwc1      $f0, ($v0)
/* 3DC18 8003D018 4604003E */  c.le.s    $f0, $f4
/* 3DC1C 8003D01C 00000000 */  nop       
/* 3DC20 8003D020 45020006 */  bc1fl     .L8003D03C
/* 3DC24 8003D024 444EF800 */  cfc1      $t6, $31
/* 3DC28 8003D028 0C00E45B */  jal       func_8003916C
/* 3DC2C 8003D02C E4420000 */  swc1      $f2, ($v0)
/* 3DC30 8003D030 3C018007 */  lui       $at, 0x8007
/* 3DC34 8003D034 C4207DDC */  lwc1      $f0, 0x7ddc($at)
/* 3DC38 8003D038 444EF800 */  cfc1      $t6, $31
.L8003D03C:
/* 3DC3C 8003D03C 24050001 */  addiu     $a1, $zero, 1
/* 3DC40 8003D040 44C5F800 */  ctc1      $a1, $31
/* 3DC44 8003D044 24040001 */  addiu     $a0, $zero, 1
/* 3DC48 8003D048 3C014F00 */  lui       $at, 0x4f00
/* 3DC4C 8003D04C 460001A4 */  cvt.w.s   $f6, $f0
/* 3DC50 8003D050 4445F800 */  cfc1      $a1, $31
/* 3DC54 8003D054 00000000 */  nop       
/* 3DC58 8003D058 30A50078 */  andi      $a1, $a1, 0x78
/* 3DC5C 8003D05C 50A00013 */  beql      $a1, $zero, .L8003D0AC
/* 3DC60 8003D060 44053000 */  mfc1      $a1, $f6
/* 3DC64 8003D064 44813000 */  mtc1      $at, $f6
/* 3DC68 8003D068 24050001 */  addiu     $a1, $zero, 1
/* 3DC6C 8003D06C 46060181 */  sub.s     $f6, $f0, $f6
/* 3DC70 8003D070 44C5F800 */  ctc1      $a1, $31
/* 3DC74 8003D074 00000000 */  nop       
/* 3DC78 8003D078 460031A4 */  cvt.w.s   $f6, $f6
/* 3DC7C 8003D07C 4445F800 */  cfc1      $a1, $31
/* 3DC80 8003D080 00000000 */  nop       
/* 3DC84 8003D084 30A50078 */  andi      $a1, $a1, 0x78
/* 3DC88 8003D088 14A00005 */  bnez      $a1, .L8003D0A0
/* 3DC8C 8003D08C 00000000 */  nop       
/* 3DC90 8003D090 44053000 */  mfc1      $a1, $f6
/* 3DC94 8003D094 3C018000 */  lui       $at, 0x8000
/* 3DC98 8003D098 10000007 */  b         .L8003D0B8
/* 3DC9C 8003D09C 00A12825 */  or        $a1, $a1, $at
.L8003D0A0:
/* 3DCA0 8003D0A0 10000005 */  b         .L8003D0B8
/* 3DCA4 8003D0A4 2405FFFF */  addiu     $a1, $zero, -1
/* 3DCA8 8003D0A8 44053000 */  mfc1      $a1, $f6
.L8003D0AC:
/* 3DCAC 8003D0AC 00000000 */  nop       
/* 3DCB0 8003D0B0 04A0FFFB */  bltz      $a1, .L8003D0A0
/* 3DCB4 8003D0B4 00000000 */  nop       
.L8003D0B8:
/* 3DCB8 8003D0B8 44CEF800 */  ctc1      $t6, $31
/* 3DCBC 8003D0BC 0C00E3A6 */  jal       func_80038E98
/* 3DCC0 8003D0C0 00000000 */  nop       
.L8003D0C4:
/* 3DCC4 8003D0C4 3C0F8007 */  lui       $t7, 0x8007
/* 3DCC8 8003D0C8 91EF7DA8 */  lbu       $t7, 0x7da8($t7)
/* 3DCCC 8003D0CC 51E00003 */  beql      $t7, $zero, .L8003D0DC
/* 3DCD0 8003D0D0 8FA30088 */  lw        $v1, 0x88($sp)
/* 3DCD4 8003D0D4 AFA0006C */  sw        $zero, 0x6c($sp)
/* 3DCD8 8003D0D8 8FA30088 */  lw        $v1, 0x88($sp)
.L8003D0DC:
/* 3DCDC 8003D0DC 27B80038 */  addiu     $t8, $sp, 0x38
/* 3DCE0 8003D0E0 270A003C */  addiu     $t2, $t8, 0x3c
/* 3DCE4 8003D0E4 00604825 */  or        $t1, $v1, $zero
.L8003D0E8:
/* 3DCE8 8003D0E8 8F080000 */  lw        $t0, ($t8)
/* 3DCEC 8003D0EC 2718000C */  addiu     $t8, $t8, 0xc
/* 3DCF0 8003D0F0 2529000C */  addiu     $t1, $t1, 0xc
/* 3DCF4 8003D0F4 AD28FFF4 */  sw        $t0, -0xc($t1)
/* 3DCF8 8003D0F8 8F19FFF8 */  lw        $t9, -8($t8)
/* 3DCFC 8003D0FC AD39FFF8 */  sw        $t9, -8($t1)
/* 3DD00 8003D100 8F08FFFC */  lw        $t0, -4($t8)
/* 3DD04 8003D104 170AFFF8 */  bne       $t8, $t2, .L8003D0E8
/* 3DD08 8003D108 AD28FFFC */  sw        $t0, -4($t1)
/* 3DD0C 8003D10C 8F080000 */  lw        $t0, ($t8)
/* 3DD10 8003D110 00601025 */  or        $v0, $v1, $zero
/* 3DD14 8003D114 AD280000 */  sw        $t0, ($t1)
/* 3DD18 8003D118 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3DD1C 8003D11C 27BD0088 */  addiu     $sp, $sp, 0x88
/* 3DD20 8003D120 03E00008 */  jr        $ra
/* 3DD24 8003D124 00000000 */  nop       

glabel func_8003D128
/* 3DD28 8003D128 3C038010 */  lui       $v1, 0x8010
/* 3DD2C 8003D12C 2463CAB8 */  addiu     $v1, $v1, -0x3548
/* 3DD30 8003D130 906E0000 */  lbu       $t6, ($v1)
/* 3DD34 8003D134 3C028004 */  lui       $v0, 0x8004
/* 3DD38 8003D138 3C0F8010 */  lui       $t7, 0x8010
/* 3DD3C 8003D13C 15C00006 */  bnez      $t6, .L8003D158
/* 3DD40 8003D140 2442C8DC */  addiu     $v0, $v0, -0x3724
/* 3DD44 8003D144 AC600004 */  sw        $zero, 4($v1)
/* 3DD48 8003D148 8DEFCAF8 */  lw        $t7, -0x3508($t7)
/* 3DD4C 8003D14C 24180001 */  addiu     $t8, $zero, 1
/* 3DD50 8003D150 A0780000 */  sb        $t8, ($v1)
/* 3DD54 8003D154 AC6F0008 */  sw        $t7, 8($v1)
.L8003D158:
/* 3DD58 8003D158 03E00008 */  jr        $ra
/* 3DD5C 8003D15C AC830000 */  sw        $v1, ($a0)

glabel func_8003D160
/* 3DD60 8003D160 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 3DD64 8003D164 AFB40028 */  sw        $s4, 0x28($sp)
/* 3DD68 8003D168 3C148007 */  lui       $s4, 0x8007
/* 3DD6C 8003D16C 26947DB4 */  addiu     $s4, $s4, 0x7db4
/* 3DD70 8003D170 8E8E0000 */  lw        $t6, ($s4)
/* 3DD74 8003D174 AFB00018 */  sw        $s0, 0x18($sp)
/* 3DD78 8003D178 AFBF002C */  sw        $ra, 0x2c($sp)
/* 3DD7C 8003D17C AFB30024 */  sw        $s3, 0x24($sp)
/* 3DD80 8003D180 AFB20020 */  sw        $s2, 0x20($sp)
/* 3DD84 8003D184 AFB1001C */  sw        $s1, 0x1c($sp)
/* 3DD88 8003D188 11C0000D */  beqz      $t6, .L8003D1C0
/* 3DD8C 8003D18C 00008025 */  or        $s0, $zero, $zero
/* 3DD90 8003D190 3C118010 */  lui       $s1, 0x8010
/* 3DD94 8003D194 2631CAE0 */  addiu     $s1, $s1, -0x3520
/* 3DD98 8003D198 27B20040 */  addiu     $s2, $sp, 0x40
/* 3DD9C 8003D19C 02202025 */  or        $a0, $s1, $zero
.L8003D1A0:
/* 3DDA0 8003D1A0 02402825 */  or        $a1, $s2, $zero
/* 3DDA4 8003D1A4 0C015AB4 */  jal       func_80056AD0
/* 3DDA8 8003D1A8 00003025 */  or        $a2, $zero, $zero
/* 3DDAC 8003D1AC 8E8F0000 */  lw        $t7, ($s4)
/* 3DDB0 8003D1B0 26100001 */  addiu     $s0, $s0, 1
/* 3DDB4 8003D1B4 020F082B */  sltu      $at, $s0, $t7
/* 3DDB8 8003D1B8 5420FFF9 */  bnel      $at, $zero, .L8003D1A0
/* 3DDBC 8003D1BC 02202025 */  or        $a0, $s1, $zero
.L8003D1C0:
/* 3DDC0 8003D1C0 3C128010 */  lui       $s2, 0x8010
/* 3DDC4 8003D1C4 2652CAB8 */  addiu     $s2, $s2, -0x3548
/* 3DDC8 8003D1C8 8E500004 */  lw        $s0, 4($s2)
/* 3DDCC 8003D1CC 3C138007 */  lui       $s3, 0x8007
/* 3DDD0 8003D1D0 26737DB0 */  addiu     $s3, $s3, 0x7db0
/* 3DDD4 8003D1D4 5200001B */  beql      $s0, $zero, .L8003D244
/* 3DDD8 8003D1D8 8FBF002C */  lw        $ra, 0x2c($sp)
.L8003D1DC:
/* 3DDDC 8003D1DC 8E19000C */  lw        $t9, 0xc($s0)
/* 3DDE0 8003D1E0 8E780000 */  lw        $t8, ($s3)
/* 3DDE4 8003D1E4 8E020000 */  lw        $v0, ($s0)
/* 3DDE8 8003D1E8 27280001 */  addiu     $t0, $t9, 1
/* 3DDEC 8003D1EC 0118082B */  sltu      $at, $t0, $t8
/* 3DDF0 8003D1F0 10200011 */  beqz      $at, .L8003D238
/* 3DDF4 8003D1F4 00408825 */  or        $s1, $v0, $zero
/* 3DDF8 8003D1F8 8E490004 */  lw        $t1, 4($s2)
/* 3DDFC 8003D1FC 16090002 */  bne       $s0, $t1, .L8003D208
/* 3DE00 8003D200 00000000 */  nop       
/* 3DE04 8003D204 AE420004 */  sw        $v0, 4($s2)
.L8003D208:
/* 3DE08 8003D208 0C015BD4 */  jal       func_80056F50
/* 3DE0C 8003D20C 02002025 */  or        $a0, $s0, $zero
/* 3DE10 8003D210 8E450008 */  lw        $a1, 8($s2)
/* 3DE14 8003D214 50A00006 */  beql      $a1, $zero, .L8003D230
/* 3DE18 8003D218 AE500008 */  sw        $s0, 8($s2)
/* 3DE1C 8003D21C 0C015BE0 */  jal       func_80056F80
/* 3DE20 8003D220 02002025 */  or        $a0, $s0, $zero
/* 3DE24 8003D224 10000004 */  b         .L8003D238
/* 3DE28 8003D228 00000000 */  nop       
/* 3DE2C 8003D22C AE500008 */  sw        $s0, 8($s2)
.L8003D230:
/* 3DE30 8003D230 AE000000 */  sw        $zero, ($s0)
/* 3DE34 8003D234 AE000004 */  sw        $zero, 4($s0)
.L8003D238:
/* 3DE38 8003D238 1620FFE8 */  bnez      $s1, .L8003D1DC
/* 3DE3C 8003D23C 02208025 */  or        $s0, $s1, $zero
/* 3DE40 8003D240 8FBF002C */  lw        $ra, 0x2c($sp)
.L8003D244:
/* 3DE44 8003D244 AE800000 */  sw        $zero, ($s4)
/* 3DE48 8003D248 8FB40028 */  lw        $s4, 0x28($sp)
/* 3DE4C 8003D24C 8FB00018 */  lw        $s0, 0x18($sp)
/* 3DE50 8003D250 8FB1001C */  lw        $s1, 0x1c($sp)
/* 3DE54 8003D254 8FB20020 */  lw        $s2, 0x20($sp)
/* 3DE58 8003D258 8FB30024 */  lw        $s3, 0x24($sp)
/* 3DE5C 8003D25C 03E00008 */  jr        $ra
/* 3DE60 8003D260 27BD0048 */  addiu     $sp, $sp, 0x48

glabel func_8003D264
/* 3DE64 8003D264 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3DE68 8003D268 1080000D */  beqz      $a0, .L8003D2A0
/* 3DE6C 8003D26C AFBF0014 */  sw        $ra, 0x14($sp)
/* 3DE70 8003D270 24047D00 */  addiu     $a0, $zero, 0x7d00
/* 3DE74 8003D274 24050078 */  addiu     $a1, $zero, 0x78
/* 3DE78 8003D278 0C01262A */  jal       func_800498A8
/* 3DE7C 8003D27C 24060640 */  addiu     $a2, $zero, 0x640
/* 3DE80 8003D280 240E0001 */  addiu     $t6, $zero, 1
/* 3DE84 8003D284 3C018007 */  lui       $at, 0x8007
/* 3DE88 8003D288 A02E7D90 */  sb        $t6, 0x7d90($at)
/* 3DE8C 8003D28C 3C018008 */  lui       $at, 0x8008
/* 3DE90 8003D290 C424C7C0 */  lwc1      $f4, -0x3840($at)
/* 3DE94 8003D294 3C018007 */  lui       $at, 0x8007
/* 3DE98 8003D298 10000003 */  b         .L8003D2A8
/* 3DE9C 8003D29C E4247D94 */  swc1      $f4, 0x7d94($at)
.L8003D2A0:
/* 3DEA0 8003D2A0 3C018007 */  lui       $at, 0x8007
/* 3DEA4 8003D2A4 A0207D90 */  sb        $zero, 0x7d90($at)
.L8003D2A8:
/* 3DEA8 8003D2A8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3DEAC 8003D2AC 27BD0018 */  addiu     $sp, $sp, 0x18
/* 3DEB0 8003D2B0 03E00008 */  jr        $ra
/* 3DEB4 8003D2B4 00000000 */  nop       

glabel func_8003D2B8
/* 3DEB8 8003D2B8 3C0E8007 */  lui       $t6, 0x8007
/* 3DEBC 8003D2BC 91CE7D90 */  lbu       $t6, 0x7d90($t6)
/* 3DEC0 8003D2C0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3DEC4 8003D2C4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 3DEC8 8003D2C8 15C00014 */  bnez      $t6, .L8003D31C
/* 3DECC 8003D2CC AFA40018 */  sw        $a0, 0x18($sp)
/* 3DED0 8003D2D0 24047D00 */  addiu     $a0, $zero, 0x7d00
/* 3DED4 8003D2D4 24050078 */  addiu     $a1, $zero, 0x78
/* 3DED8 8003D2D8 0C01262A */  jal       func_800498A8
/* 3DEDC 8003D2DC 24060320 */  addiu     $a2, $zero, 0x320
/* 3DEE0 8003D2E0 24020001 */  addiu     $v0, $zero, 1
/* 3DEE4 8003D2E4 3C018007 */  lui       $at, 0x8007
/* 3DEE8 8003D2E8 A0227D90 */  sb        $v0, 0x7d90($at)
/* 3DEEC 8003D2EC 44802000 */  mtc1      $zero, $f4
/* 3DEF0 8003D2F0 3C018007 */  lui       $at, 0x8007
/* 3DEF4 8003D2F4 A0227D9C */  sb        $v0, 0x7d9c($at)
/* 3DEF8 8003D2F8 8FAF0018 */  lw        $t7, 0x18($sp)
/* 3DEFC 8003D2FC 3C018007 */  lui       $at, 0x8007
/* 3DF00 8003D300 E4247D94 */  swc1      $f4, 0x7d94($at)
/* 3DF04 8003D304 3C018007 */  lui       $at, 0x8007
/* 3DF08 8003D308 A42F7DA0 */  sh        $t7, 0x7da0($at)
/* 3DF0C 8003D30C 3C018007 */  lui       $at, 0x8007
/* 3DF10 8003D310 AC207DA4 */  sw        $zero, 0x7da4($at)
/* 3DF14 8003D314 3C018010 */  lui       $at, 0x8010
/* 3DF18 8003D318 A020C824 */  sb        $zero, -0x37dc($at)
.L8003D31C:
/* 3DF1C 8003D31C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3DF20 8003D320 27BD0018 */  addiu     $sp, $sp, 0x18
/* 3DF24 8003D324 03E00008 */  jr        $ra
/* 3DF28 8003D328 00000000 */  nop       

glabel func_8003D32C
/* 3DF2C 8003D32C 3C088007 */  lui       $t0, 0x8007
/* 3DF30 8003D330 25087D9C */  addiu     $t0, $t0, 0x7d9c
/* 3DF34 8003D334 91020000 */  lbu       $v0, ($t0)
/* 3DF38 8003D338 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3DF3C 8003D33C AFBF0014 */  sw        $ra, 0x14($sp)
/* 3DF40 8003D340 244EFFFF */  addiu     $t6, $v0, -1
/* 3DF44 8003D344 2DC10005 */  sltiu     $at, $t6, 5
/* 3DF48 8003D348 1020004E */  beqz      $at, .L8003D484
/* 3DF4C 8003D34C 000E7080 */  sll       $t6, $t6, 2
/* 3DF50 8003D350 3C018008 */  lui       $at, 0x8008
/* 3DF54 8003D354 002E0821 */  addu      $at, $at, $t6
/* 3DF58 8003D358 8C2EC7C4 */  lw        $t6, -0x383c($at)
/* 3DF5C 8003D35C 01C00008 */  jr        $t6
/* 3DF60 8003D360 00000000 */  nop       
/* 3DF64 8003D364 3C048008 */  lui       $a0, 0x8008
/* 3DF68 8003D368 8C848E70 */  lw        $a0, -0x7190($a0)
/* 3DF6C 8003D36C 24050050 */  addiu     $a1, $zero, 0x50
/* 3DF70 8003D370 24060018 */  addiu     $a2, $zero, 0x18
/* 3DF74 8003D374 0C00E6E2 */  jal       func_80039B88
/* 3DF78 8003D378 24070003 */  addiu     $a3, $zero, 3
/* 3DF7C 8003D37C 3C048007 */  lui       $a0, 0x8007
/* 3DF80 8003D380 0C010AAC */  jal       func_80042AB0
/* 3DF84 8003D384 94847DA0 */  lhu       $a0, 0x7da0($a0)
/* 3DF88 8003D388 3C088007 */  lui       $t0, 0x8007
/* 3DF8C 8003D38C 25087D9C */  addiu     $t0, $t0, 0x7d9c
/* 3DF90 8003D390 910F0000 */  lbu       $t7, ($t0)
/* 3DF94 8003D394 3C098007 */  lui       $t1, 0x8007
/* 3DF98 8003D398 25297DA4 */  addiu     $t1, $t1, 0x7da4
/* 3DF9C 8003D39C 25F80001 */  addiu     $t8, $t7, 1
/* 3DFA0 8003D3A0 A1180000 */  sb        $t8, ($t0)
/* 3DFA4 8003D3A4 10000037 */  b         .L8003D484
/* 3DFA8 8003D3A8 AD200000 */  sw        $zero, ($t1)
/* 3DFAC 8003D3AC 3C098007 */  lui       $t1, 0x8007
/* 3DFB0 8003D3B0 25297DA4 */  addiu     $t1, $t1, 0x7da4
/* 3DFB4 8003D3B4 8D390000 */  lw        $t9, ($t1)
/* 3DFB8 8003D3B8 244C0001 */  addiu     $t4, $v0, 1
/* 3DFBC 8003D3BC 240D0001 */  addiu     $t5, $zero, 1
/* 3DFC0 8003D3C0 272A0001 */  addiu     $t2, $t9, 1
/* 3DFC4 8003D3C4 2D410002 */  sltiu     $at, $t2, 2
/* 3DFC8 8003D3C8 1420002E */  bnez      $at, .L8003D484
/* 3DFCC 8003D3CC AD2A0000 */  sw        $t2, ($t1)
/* 3DFD0 8003D3D0 AD200000 */  sw        $zero, ($t1)
/* 3DFD4 8003D3D4 A10C0000 */  sb        $t4, ($t0)
/* 3DFD8 8003D3D8 3C018010 */  lui       $at, 0x8010
/* 3DFDC 8003D3DC 10000029 */  b         .L8003D484
/* 3DFE0 8003D3E0 A02DC824 */  sb        $t5, -0x37dc($at)
/* 3DFE4 8003D3E4 0C01127E */  jal       func_800449F8
/* 3DFE8 8003D3E8 00000000 */  nop       
/* 3DFEC 8003D3EC 3C088007 */  lui       $t0, 0x8007
/* 3DFF0 8003D3F0 14400024 */  bnez      $v0, .L8003D484
/* 3DFF4 8003D3F4 25087D9C */  addiu     $t0, $t0, 0x7d9c
/* 3DFF8 8003D3F8 910E0000 */  lbu       $t6, ($t0)
/* 3DFFC 8003D3FC 3C098007 */  lui       $t1, 0x8007
/* 3E000 8003D400 25297DA4 */  addiu     $t1, $t1, 0x7da4
/* 3E004 8003D404 25CF0001 */  addiu     $t7, $t6, 1
/* 3E008 8003D408 A10F0000 */  sb        $t7, ($t0)
/* 3E00C 8003D40C 1000001D */  b         .L8003D484
/* 3E010 8003D410 AD200000 */  sw        $zero, ($t1)
/* 3E014 8003D414 3C098007 */  lui       $t1, 0x8007
/* 3E018 8003D418 25297DA4 */  addiu     $t1, $t1, 0x7da4
/* 3E01C 8003D41C 8D230000 */  lw        $v1, ($t1)
/* 3E020 8003D420 3C048008 */  lui       $a0, 0x8008
/* 3E024 8003D424 24050018 */  addiu     $a1, $zero, 0x18
/* 3E028 8003D428 14600009 */  bnez      $v1, .L8003D450
/* 3E02C 8003D42C 24060050 */  addiu     $a2, $zero, 0x50
/* 3E030 8003D430 8C848E70 */  lw        $a0, -0x7190($a0)
/* 3E034 8003D434 0C00E6E2 */  jal       func_80039B88
/* 3E038 8003D438 24070014 */  addiu     $a3, $zero, 0x14
/* 3E03C 8003D43C 3C098007 */  lui       $t1, 0x8007
/* 3E040 8003D440 25297DA4 */  addiu     $t1, $t1, 0x7da4
/* 3E044 8003D444 3C088007 */  lui       $t0, 0x8007
/* 3E048 8003D448 25087D9C */  addiu     $t0, $t0, 0x7d9c
/* 3E04C 8003D44C 8D230000 */  lw        $v1, ($t1)
.L8003D450:
/* 3E050 8003D450 2C61001F */  sltiu     $at, $v1, 0x1f
/* 3E054 8003D454 14200004 */  bnez      $at, .L8003D468
/* 3E058 8003D458 246A0001 */  addiu     $t2, $v1, 1
/* 3E05C 8003D45C 91180000 */  lbu       $t8, ($t0)
/* 3E060 8003D460 27190001 */  addiu     $t9, $t8, 1
/* 3E064 8003D464 A1190000 */  sb        $t9, ($t0)
.L8003D468:
/* 3E068 8003D468 10000006 */  b         .L8003D484
/* 3E06C 8003D46C AD2A0000 */  sw        $t2, ($t1)
/* 3E070 8003D470 A1000000 */  sb        $zero, ($t0)
/* 3E074 8003D474 3C018007 */  lui       $at, 0x8007
/* 3E078 8003D478 A0207D90 */  sb        $zero, 0x7d90($at)
/* 3E07C 8003D47C 3C018010 */  lui       $at, 0x8010
/* 3E080 8003D480 A020C824 */  sb        $zero, -0x37dc($at)
.L8003D484:
/* 3E084 8003D484 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3E088 8003D488 27BD0018 */  addiu     $sp, $sp, 0x18
/* 3E08C 8003D48C 03E00008 */  jr        $ra
/* 3E090 8003D490 00000000 */  nop       

glabel func_8003D494
/* 3E094 8003D494 3C028007 */  lui       $v0, 0x8007
/* 3E098 8003D498 03E00008 */  jr        $ra
/* 3E09C 8003D49C 90427D90 */  lbu       $v0, 0x7d90($v0)

glabel func_8003D4A0
/* 3E0A0 8003D4A0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3E0A4 8003D4A4 1480000D */  bnez      $a0, .L8003D4DC
/* 3E0A8 8003D4A8 AFBF0014 */  sw        $ra, 0x14($sp)
/* 3E0AC 8003D4AC 3C0E8010 */  lui       $t6, 0x8010
/* 3E0B0 8003D4B0 3C0F8010 */  lui       $t7, 0x8010
/* 3E0B4 8003D4B4 8DEFC818 */  lw        $t7, -0x37e8($t7)
/* 3E0B8 8003D4B8 8DCECAD8 */  lw        $t6, -0x3528($t6)
/* 3E0BC 8003D4BC 24180001 */  addiu     $t8, $zero, 1
/* 3E0C0 8003D4C0 3C018007 */  lui       $at, 0x8007
/* 3E0C4 8003D4C4 11CF0003 */  beq       $t6, $t7, .L8003D4D4
/* 3E0C8 8003D4C8 00000000 */  nop       
/* 3E0CC 8003D4CC 1000000D */  b         .L8003D504
/* 3E0D0 8003D4D0 00001025 */  or        $v0, $zero, $zero
.L8003D4D4:
/* 3E0D4 8003D4D4 1000000A */  b         .L8003D500
/* 3E0D8 8003D4D8 A0387DA8 */  sb        $t8, 0x7da8($at)
.L8003D4DC:
/* 3E0DC 8003D4DC 3C048010 */  lui       $a0, 0x8010
/* 3E0E0 8003D4E0 0C01889C */  jal       func_80062270
/* 3E0E4 8003D4E4 8C84CAD4 */  lw        $a0, -0x352c($a0)
/* 3E0E8 8003D4E8 3C018007 */  lui       $at, 0x8007
/* 3E0EC 8003D4EC AC207DBC */  sw        $zero, 0x7dbc($at)
/* 3E0F0 8003D4F0 3C018010 */  lui       $at, 0x8010
/* 3E0F4 8003D4F4 A020CAB8 */  sb        $zero, -0x3548($at)
/* 3E0F8 8003D4F8 3C018007 */  lui       $at, 0x8007
/* 3E0FC 8003D4FC A0207DA8 */  sb        $zero, 0x7da8($at)
.L8003D500:
/* 3E100 8003D500 24020001 */  addiu     $v0, $zero, 1
.L8003D504:
/* 3E104 8003D504 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3E108 8003D508 27BD0018 */  addiu     $sp, $sp, 0x18
/* 3E10C 8003D50C 03E00008 */  jr        $ra
/* 3E110 8003D510 00000000 */  nop       

glabel func_8003D514
/* 3E114 8003D514 3C0E8007 */  lui       $t6, 0x8007
/* 3E118 8003D518 8DCE7DAC */  lw        $t6, 0x7dac($t6)
/* 3E11C 8003D51C 240F0007 */  addiu     $t7, $zero, 7
/* 3E120 8003D520 24020008 */  addiu     $v0, $zero, 8
/* 3E124 8003D524 15C00003 */  bnez      $t6, .L8003D534
/* 3E128 8003D528 3C188010 */  lui       $t8, 0x8010
/* 3E12C 8003D52C 03E00008 */  jr        $ra
/* 3E130 8003D530 A08F0000 */  sb        $t7, ($a0)
.L8003D534:
/* 3E134 8003D534 9318C825 */  lbu       $t8, -0x37db($t8)
/* 3E138 8003D538 3C028010 */  lui       $v0, 0x8010
/* 3E13C 8003D53C A0980000 */  sb        $t8, ($a0)
/* 3E140 8003D540 8C42C828 */  lw        $v0, -0x37d8($v0)
/* 3E144 8003D544 03E00008 */  jr        $ra
/* 3E148 8003D548 00000000 */  nop       

glabel func_8003D54C
/* 3E14C 8003D54C 24020001 */  addiu     $v0, $zero, 1
/* 3E150 8003D550 14820004 */  bne       $a0, $v0, .L8003D564
/* 3E154 8003D554 3C018007 */  lui       $at, 0x8007
/* 3E158 8003D558 3C018007 */  lui       $at, 0x8007
/* 3E15C 8003D55C 03E00008 */  jr        $ra
/* 3E160 8003D560 AC227DAC */  sw        $v0, 0x7dac($at)
.L8003D564:
/* 3E164 8003D564 AC207DAC */  sw        $zero, 0x7dac($at)
/* 3E168 8003D568 03E00008 */  jr        $ra
/* 3E16C 8003D56C 00000000 */  nop       

glabel func_8003D570
/* 3E170 8003D570 AFA60008 */  sw        $a2, 8($sp)
/* 3E174 8003D574 30C600FF */  andi      $a2, $a2, 0xff
/* 3E178 8003D578 AFA50004 */  sw        $a1, 4($sp)
/* 3E17C 8003D57C 10C00014 */  beqz      $a2, .L8003D5D0
/* 3E180 8003D580 30A500FF */  andi      $a1, $a1, 0xff
/* 3E184 8003D584 00A01025 */  or        $v0, $a1, $zero
/* 3E188 8003D588 04410003 */  bgez      $v0, .L8003D598
/* 3E18C 8003D58C 000270C3 */  sra       $t6, $v0, 3
/* 3E190 8003D590 24410007 */  addiu     $at, $v0, 7
/* 3E194 8003D594 000170C3 */  sra       $t6, $at, 3
.L8003D598:
/* 3E198 8003D598 31CF00FF */  andi      $t7, $t6, 0xff
/* 3E19C 8003D59C 01E41821 */  addu      $v1, $t7, $a0
/* 3E1A0 8003D5A0 90780000 */  lbu       $t8, ($v1)
/* 3E1A4 8003D5A4 04410004 */  bgez      $v0, .L8003D5B8
/* 3E1A8 8003D5A8 30590007 */  andi      $t9, $v0, 7
/* 3E1AC 8003D5AC 13200002 */  beqz      $t9, .L8003D5B8
/* 3E1B0 8003D5B0 00000000 */  nop       
/* 3E1B4 8003D5B4 2739FFF8 */  addiu     $t9, $t9, -8
.L8003D5B8:
/* 3E1B8 8003D5B8 332800FF */  andi      $t0, $t9, 0xff
/* 3E1BC 8003D5BC 24090001 */  addiu     $t1, $zero, 1
/* 3E1C0 8003D5C0 01095804 */  sllv      $t3, $t1, $t0
/* 3E1C4 8003D5C4 030B6025 */  or        $t4, $t8, $t3
/* 3E1C8 8003D5C8 03E00008 */  jr        $ra
/* 3E1CC 8003D5CC A06C0000 */  sb        $t4, ($v1)
.L8003D5D0:
/* 3E1D0 8003D5D0 00A01025 */  or        $v0, $a1, $zero
/* 3E1D4 8003D5D4 04410003 */  bgez      $v0, .L8003D5E4
/* 3E1D8 8003D5D8 000268C3 */  sra       $t5, $v0, 3
/* 3E1DC 8003D5DC 24410007 */  addiu     $at, $v0, 7
/* 3E1E0 8003D5E0 000168C3 */  sra       $t5, $at, 3
.L8003D5E4:
/* 3E1E4 8003D5E4 31AE00FF */  andi      $t6, $t5, 0xff
/* 3E1E8 8003D5E8 01C41821 */  addu      $v1, $t6, $a0
/* 3E1EC 8003D5EC 906F0000 */  lbu       $t7, ($v1)
/* 3E1F0 8003D5F0 04410004 */  bgez      $v0, .L8003D604
/* 3E1F4 8003D5F4 30590007 */  andi      $t9, $v0, 7
/* 3E1F8 8003D5F8 13200002 */  beqz      $t9, .L8003D604
/* 3E1FC 8003D5FC 00000000 */  nop       
/* 3E200 8003D600 2739FFF8 */  addiu     $t9, $t9, -8
.L8003D604:
/* 3E204 8003D604 332900FF */  andi      $t1, $t9, 0xff
/* 3E208 8003D608 24080001 */  addiu     $t0, $zero, 1
/* 3E20C 8003D60C 0128C004 */  sllv      $t8, $t0, $t1
/* 3E210 8003D610 03005827 */  not       $t3, $t8
/* 3E214 8003D614 01EB6024 */  and       $t4, $t7, $t3
/* 3E218 8003D618 A06C0000 */  sb        $t4, ($v1)
/* 3E21C 8003D61C 03E00008 */  jr        $ra
/* 3E220 8003D620 00000000 */  nop       

glabel func_8003D624
/* 3E224 8003D624 AFA50004 */  sw        $a1, 4($sp)
/* 3E228 8003D628 30A500FF */  andi      $a1, $a1, 0xff
/* 3E22C 8003D62C 00A01025 */  or        $v0, $a1, $zero
/* 3E230 8003D630 04410003 */  bgez      $v0, .L8003D640
/* 3E234 8003D634 000270C3 */  sra       $t6, $v0, 3
/* 3E238 8003D638 24410007 */  addiu     $at, $v0, 7
/* 3E23C 8003D63C 000170C3 */  sra       $t6, $at, 3
.L8003D640:
/* 3E240 8003D640 31CF00FF */  andi      $t7, $t6, 0xff
/* 3E244 8003D644 01E4C021 */  addu      $t8, $t7, $a0
/* 3E248 8003D648 93190000 */  lbu       $t9, ($t8)
/* 3E24C 8003D64C 04410004 */  bgez      $v0, .L8003D660
/* 3E250 8003D650 30480007 */  andi      $t0, $v0, 7
/* 3E254 8003D654 11000002 */  beqz      $t0, .L8003D660
/* 3E258 8003D658 00000000 */  nop       
/* 3E25C 8003D65C 2508FFF8 */  addiu     $t0, $t0, -8
.L8003D660:
/* 3E260 8003D660 310900FF */  andi      $t1, $t0, 0xff
/* 3E264 8003D664 240A0001 */  addiu     $t2, $zero, 1
/* 3E268 8003D668 012A6004 */  sllv      $t4, $t2, $t1
/* 3E26C 8003D66C 032C1824 */  and       $v1, $t9, $t4
/* 3E270 8003D670 306300FF */  andi      $v1, $v1, 0xff
/* 3E274 8003D674 10600003 */  beqz      $v1, .L8003D684
/* 3E278 8003D678 00001025 */  or        $v0, $zero, $zero
/* 3E27C 8003D67C 03E00008 */  jr        $ra
/* 3E280 8003D680 24020001 */  addiu     $v0, $zero, 1
.L8003D684:
/* 3E284 8003D684 03E00008 */  jr        $ra
/* 3E288 8003D688 00000000 */  nop       

glabel func_8003D68C
/* 3E28C 8003D68C 10800005 */  beqz      $a0, .L8003D6A4
/* 3E290 8003D690 3C018008 */  lui       $at, 0x8008
/* 3E294 8003D694 240E0001 */  addiu     $t6, $zero, 1
/* 3E298 8003D698 3C018008 */  lui       $at, 0x8008
/* 3E29C 8003D69C 03E00008 */  jr        $ra
/* 3E2A0 8003D6A0 AC2E8388 */  sw        $t6, -0x7c78($at)
.L8003D6A4:
/* 3E2A4 8003D6A4 AC208388 */  sw        $zero, -0x7c78($at)
/* 3E2A8 8003D6A8 03E00008 */  jr        $ra
/* 3E2AC 8003D6AC 00000000 */  nop       

glabel func_8003D6B0
/* 3E2B0 8003D6B0 3C028008 */  lui       $v0, 0x8008
/* 3E2B4 8003D6B4 2442838C */  addiu     $v0, $v0, -0x7c74
/* 3E2B8 8003D6B8 AFA40000 */  sw        $a0, ($sp)
/* 3E2BC 8003D6BC AFA50004 */  sw        $a1, 4($sp)
/* 3E2C0 8003D6C0 AFA60008 */  sw        $a2, 8($sp)
/* 3E2C4 8003D6C4 AFA7000C */  sw        $a3, 0xc($sp)
/* 3E2C8 8003D6C8 A0440000 */  sb        $a0, ($v0)
/* 3E2CC 8003D6CC A0450001 */  sb        $a1, 1($v0)
/* 3E2D0 8003D6D0 A0460002 */  sb        $a2, 2($v0)
/* 3E2D4 8003D6D4 03E00008 */  jr        $ra
/* 3E2D8 8003D6D8 A0470003 */  sb        $a3, 3($v0)

glabel func_8003D6DC
/* 3E2DC 8003D6DC AFA40000 */  sw        $a0, ($sp)
/* 3E2E0 8003D6E0 308400FF */  andi      $a0, $a0, 0xff
/* 3E2E4 8003D6E4 28810003 */  slti      $at, $a0, 3
/* 3E2E8 8003D6E8 1020004D */  beqz      $at, .L8003D820
/* 3E2EC 8003D6EC 00001025 */  or        $v0, $zero, $zero
/* 3E2F0 8003D6F0 00047140 */  sll       $t6, $a0, 5
/* 3E2F4 8003D6F4 01C47021 */  addu      $t6, $t6, $a0
/* 3E2F8 8003D6F8 3C0F8010 */  lui       $t7, 0x8010
/* 3E2FC 8003D6FC 25EFCB48 */  addiu     $t7, $t7, -0x34b8
/* 3E300 8003D700 000E7080 */  sll       $t6, $t6, 2
/* 3E304 8003D704 01CF1821 */  addu      $v1, $t6, $t7
/* 3E308 8003D708 24050010 */  addiu     $a1, $zero, 0x10
.L8003D70C:
/* 3E30C 8003D70C 24420004 */  addiu     $v0, $v0, 4
/* 3E310 8003D710 A4600002 */  sh        $zero, 2($v1)
/* 3E314 8003D714 A460002A */  sh        $zero, 0x2a($v1)
/* 3E318 8003D718 A4600052 */  sh        $zero, 0x52($v1)
/* 3E31C 8003D71C A4600004 */  sh        $zero, 4($v1)
/* 3E320 8003D720 A460002C */  sh        $zero, 0x2c($v1)
/* 3E324 8003D724 A4600054 */  sh        $zero, 0x54($v1)
/* 3E328 8003D728 A4600006 */  sh        $zero, 6($v1)
/* 3E32C 8003D72C A460002E */  sh        $zero, 0x2e($v1)
/* 3E330 8003D730 A4600056 */  sh        $zero, 0x56($v1)
/* 3E334 8003D734 24630008 */  addiu     $v1, $v1, 8
/* 3E338 8003D738 A460FFF8 */  sh        $zero, -8($v1)
/* 3E33C 8003D73C A4600020 */  sh        $zero, 0x20($v1)
/* 3E340 8003D740 1445FFF2 */  bne       $v0, $a1, .L8003D70C
/* 3E344 8003D744 A4600048 */  sh        $zero, 0x48($v1)
/* 3E348 8003D748 0004C140 */  sll       $t8, $a0, 5
/* 3E34C 8003D74C 0304C021 */  addu      $t8, $t8, $a0
/* 3E350 8003D750 3C198010 */  lui       $t9, 0x8010
/* 3E354 8003D754 2739CB48 */  addiu     $t9, $t9, -0x34b8
/* 3E358 8003D758 0018C080 */  sll       $t8, $t8, 2
/* 3E35C 8003D75C 03191021 */  addu      $v0, $t8, $t9
/* 3E360 8003D760 3C018010 */  lui       $at, 0x8010
/* 3E364 8003D764 AC400020 */  sw        $zero, 0x20($v0)
/* 3E368 8003D768 AC400024 */  sw        $zero, 0x24($v0)
/* 3E36C 8003D76C AC400048 */  sw        $zero, 0x48($v0)
/* 3E370 8003D770 AC40004C */  sw        $zero, 0x4c($v0)
/* 3E374 8003D774 AC400070 */  sw        $zero, 0x70($v0)
/* 3E378 8003D778 AC400074 */  sw        $zero, 0x74($v0)
/* 3E37C 8003D77C AC400078 */  sw        $zero, 0x78($v0)
/* 3E380 8003D780 AC40007C */  sw        $zero, 0x7c($v0)
/* 3E384 8003D784 AC400080 */  sw        $zero, 0x80($v0)
/* 3E388 8003D788 00240821 */  addu      $at, $at, $a0
/* 3E38C 8003D78C A020CCBC */  sb        $zero, -0x3344($at)
/* 3E390 8003D790 3C018010 */  lui       $at, 0x8010
/* 3E394 8003D794 00240821 */  addu      $at, $at, $a0
/* 3E398 8003D798 A020CCBE */  sb        $zero, -0x3342($at)
/* 3E39C 8003D79C 3C018010 */  lui       $at, 0x8010
/* 3E3A0 8003D7A0 00240821 */  addu      $at, $at, $a0
/* 3E3A4 8003D7A4 A020CCC4 */  sb        $zero, -0x333c($at)
/* 3E3A8 8003D7A8 3C018010 */  lui       $at, 0x8010
/* 3E3AC 8003D7AC 00240821 */  addu      $at, $at, $a0
/* 3E3B0 8003D7B0 A020CCC6 */  sb        $zero, -0x333a($at)
/* 3E3B4 8003D7B4 3C018010 */  lui       $at, 0x8010
/* 3E3B8 8003D7B8 00240821 */  addu      $at, $at, $a0
/* 3E3BC 8003D7BC A020CCC8 */  sb        $zero, -0x3338($at)
/* 3E3C0 8003D7C0 3C018010 */  lui       $at, 0x8010
/* 3E3C4 8003D7C4 00240821 */  addu      $at, $at, $a0
/* 3E3C8 8003D7C8 A020CCCA */  sb        $zero, -0x3336($at)
/* 3E3CC 8003D7CC 3C018010 */  lui       $at, 0x8010
/* 3E3D0 8003D7D0 00240821 */  addu      $at, $at, $a0
/* 3E3D4 8003D7D4 A020CCCC */  sb        $zero, -0x3334($at)
/* 3E3D8 8003D7D8 3C018010 */  lui       $at, 0x8010
/* 3E3DC 8003D7DC 00240821 */  addu      $at, $at, $a0
/* 3E3E0 8003D7E0 A020CCCE */  sb        $zero, -0x3332($at)
/* 3E3E4 8003D7E4 3C018010 */  lui       $at, 0x8010
/* 3E3E8 8003D7E8 00240821 */  addu      $at, $at, $a0
/* 3E3EC 8003D7EC A020CCD0 */  sb        $zero, -0x3330($at)
/* 3E3F0 8003D7F0 3C018010 */  lui       $at, 0x8010
/* 3E3F4 8003D7F4 00240821 */  addu      $at, $at, $a0
/* 3E3F8 8003D7F8 A020CCD2 */  sb        $zero, -0x332e($at)
/* 3E3FC 8003D7FC 3C018010 */  lui       $at, 0x8010
/* 3E400 8003D800 00240821 */  addu      $at, $at, $a0
/* 3E404 8003D804 A020CCD4 */  sb        $zero, -0x332c($at)
/* 3E408 8003D808 3C018010 */  lui       $at, 0x8010
/* 3E40C 8003D80C 00240821 */  addu      $at, $at, $a0
/* 3E410 8003D810 A020CCC2 */  sb        $zero, -0x333e($at)
/* 3E414 8003D814 3C018010 */  lui       $at, 0x8010
/* 3E418 8003D818 00240821 */  addu      $at, $at, $a0
/* 3E41C 8003D81C A020CCC0 */  sb        $zero, -0x3340($at)
.L8003D820:
/* 3E420 8003D820 03E00008 */  jr        $ra
/* 3E424 8003D824 00000000 */  nop       

glabel func_8003D828
/* 3E428 8003D828 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3E42C 8003D82C 3C028008 */  lui       $v0, 0x8008
/* 3E430 8003D830 24428398 */  addiu     $v0, $v0, -0x7c68
/* 3E434 8003D834 3C038008 */  lui       $v1, 0x8008
/* 3E438 8003D838 24638394 */  addiu     $v1, $v1, -0x7c6c
/* 3E43C 8003D83C 3C098008 */  lui       $t1, 0x8008
/* 3E440 8003D840 240A00FF */  addiu     $t2, $zero, 0xff
/* 3E444 8003D844 25298390 */  addiu     $t1, $t1, -0x7c70
/* 3E448 8003D848 AFA60020 */  sw        $a2, 0x20($sp)
/* 3E44C 8003D84C A0460002 */  sb        $a2, 2($v0)
/* 3E450 8003D850 AFA70024 */  sw        $a3, 0x24($sp)
/* 3E454 8003D854 A0470003 */  sb        $a3, 3($v0)
/* 3E458 8003D858 A06A0000 */  sb        $t2, ($v1)
/* 3E45C 8003D85C A06A0001 */  sb        $t2, 1($v1)
/* 3E460 8003D860 3C068008 */  lui       $a2, 0x8008
/* 3E464 8003D864 AFBF0014 */  sw        $ra, 0x14($sp)
/* 3E468 8003D868 AFA40018 */  sw        $a0, 0x18($sp)
/* 3E46C 8003D86C AFA5001C */  sw        $a1, 0x1c($sp)
/* 3E470 8003D870 A0440000 */  sb        $a0, ($v0)
/* 3E474 8003D874 A0450001 */  sb        $a1, 1($v0)
/* 3E478 8003D878 A1200000 */  sb        $zero, ($t1)
/* 3E47C 8003D87C A1200001 */  sb        $zero, 1($t1)
/* 3E480 8003D880 24C6838C */  addiu     $a2, $a2, -0x7c74
/* 3E484 8003D884 240A0002 */  addiu     $t2, $zero, 2
/* 3E488 8003D888 24070004 */  addiu     $a3, $zero, 4
/* 3E48C 8003D88C 00004025 */  or        $t0, $zero, $zero
.L8003D890:
/* 3E490 8003D890 3C048008 */  lui       $a0, 0x8008
/* 3E494 8003D894 24848398 */  addiu     $a0, $a0, -0x7c68
/* 3E498 8003D898 00001825 */  or        $v1, $zero, $zero
/* 3E49C 8003D89C 25050001 */  addiu     $a1, $t0, 1
.L8003D8A0:
/* 3E4A0 8003D8A0 908E0000 */  lbu       $t6, ($a0)
/* 3E4A4 8003D8A4 01281021 */  addu      $v0, $t1, $t0
/* 3E4A8 8003D8A8 00C3C021 */  addu      $t8, $a2, $v1
/* 3E4AC 8003D8AC 54AE0006 */  bnel      $a1, $t6, .L8003D8C8
/* 3E4B0 8003D8B0 24630001 */  addiu     $v1, $v1, 1
/* 3E4B4 8003D8B4 904F0000 */  lbu       $t7, ($v0)
/* 3E4B8 8003D8B8 93190000 */  lbu       $t9, ($t8)
/* 3E4BC 8003D8BC 01F95821 */  addu      $t3, $t7, $t9
/* 3E4C0 8003D8C0 A04B0000 */  sb        $t3, ($v0)
/* 3E4C4 8003D8C4 24630001 */  addiu     $v1, $v1, 1
.L8003D8C8:
/* 3E4C8 8003D8C8 1467FFF5 */  bne       $v1, $a3, .L8003D8A0
/* 3E4CC 8003D8CC 24840001 */  addiu     $a0, $a0, 1
/* 3E4D0 8003D8D0 14AAFFEF */  bne       $a1, $t2, .L8003D890
/* 3E4D4 8003D8D4 00A04025 */  or        $t0, $a1, $zero
/* 3E4D8 8003D8D8 3C028010 */  lui       $v0, 0x8010
/* 3E4DC 8003D8DC 3C038010 */  lui       $v1, 0x8010
/* 3E4E0 8003D8E0 2463CB28 */  addiu     $v1, $v1, -0x34d8
/* 3E4E4 8003D8E4 2442CB18 */  addiu     $v0, $v0, -0x34e8
/* 3E4E8 8003D8E8 AC400000 */  sw        $zero, ($v0)
/* 3E4EC 8003D8EC AC400004 */  sw        $zero, 4($v0)
/* 3E4F0 8003D8F0 AC600000 */  sw        $zero, ($v1)
/* 3E4F4 8003D8F4 AC600004 */  sw        $zero, 4($v1)
/* 3E4F8 8003D8F8 0C00F5B7 */  jal       func_8003D6DC
/* 3E4FC 8003D8FC 00002025 */  or        $a0, $zero, $zero
/* 3E500 8003D900 0C00F5B7 */  jal       func_8003D6DC
/* 3E504 8003D904 24040001 */  addiu     $a0, $zero, 1
/* 3E508 8003D908 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3E50C 8003D90C 27BD0018 */  addiu     $sp, $sp, 0x18
/* 3E510 8003D910 03E00008 */  jr        $ra
/* 3E514 8003D914 00000000 */  nop       

glabel func_8003D918
/* 3E518 8003D918 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 3E51C 8003D91C AFBF0014 */  sw        $ra, 0x14($sp)
/* 3E520 8003D920 A3A0001B */  sb        $zero, 0x1b($sp)
/* 3E524 8003D924 AFA50024 */  sw        $a1, 0x24($sp)
/* 3E528 8003D928 0C0106A6 */  jal       func_80041A98
/* 3E52C 8003D92C AFA40020 */  sw        $a0, 0x20($sp)
/* 3E530 8003D930 8FA50024 */  lw        $a1, 0x24($sp)
/* 3E534 8003D934 8FA60020 */  lw        $a2, 0x20($sp)
/* 3E538 8003D938 3C018008 */  lui       $at, 0x8008
/* 3E53C 8003D93C AC258404 */  sw        $a1, -0x7bfc($at)
/* 3E540 8003D940 3C018008 */  lui       $at, 0x8008
/* 3E544 8003D944 AC268408 */  sw        $a2, -0x7bf8($at)
/* 3E548 8003D948 2CA10011 */  sltiu     $at, $a1, 0x11
/* 3E54C 8003D94C 10200089 */  beqz      $at, .L8003DB74
/* 3E550 8003D950 24030001 */  addiu     $v1, $zero, 1
/* 3E554 8003D954 3C078008 */  lui       $a3, 0x8008
/* 3E558 8003D958 24E783FC */  addiu     $a3, $a3, -0x7c04
/* 3E55C 8003D95C A0E30000 */  sb        $v1, ($a3)
/* 3E560 8003D960 3C018008 */  lui       $at, 0x8008
/* 3E564 8003D964 14C0000F */  bnez      $a2, .L8003D9A4
/* 3E568 8003D968 A023840C */  sb        $v1, -0x7bf4($at)
/* 3E56C 8003D96C 24010010 */  addiu     $at, $zero, 0x10
/* 3E570 8003D970 10A1000C */  beq       $a1, $at, .L8003D9A4
/* 3E574 8003D974 2401000F */  addiu     $at, $zero, 0xf
/* 3E578 8003D978 10A1000A */  beq       $a1, $at, .L8003D9A4
/* 3E57C 8003D97C 24040034 */  addiu     $a0, $zero, 0x34
/* 3E580 8003D980 AFA50024 */  sw        $a1, 0x24($sp)
/* 3E584 8003D984 0C01071C */  jal       func_80041C70
/* 3E588 8003D988 AFA60020 */  sw        $a2, 0x20($sp)
/* 3E58C 8003D98C 3C078008 */  lui       $a3, 0x8008
/* 3E590 8003D990 24E783FC */  addiu     $a3, $a3, -0x7c04
/* 3E594 8003D994 24030001 */  addiu     $v1, $zero, 1
/* 3E598 8003D998 8FA50024 */  lw        $a1, 0x24($sp)
/* 3E59C 8003D99C 10000010 */  b         .L8003D9E0
/* 3E5A0 8003D9A0 8FA60020 */  lw        $a2, 0x20($sp)
.L8003D9A4:
/* 3E5A4 8003D9A4 240100FF */  addiu     $at, $zero, 0xff
/* 3E5A8 8003D9A8 14C1000D */  bne       $a2, $at, .L8003D9E0
/* 3E5AC 8003D9AC 24010010 */  addiu     $at, $zero, 0x10
/* 3E5B0 8003D9B0 10A1000B */  beq       $a1, $at, .L8003D9E0
/* 3E5B4 8003D9B4 2401000F */  addiu     $at, $zero, 0xf
/* 3E5B8 8003D9B8 10A10009 */  beq       $a1, $at, .L8003D9E0
/* 3E5BC 8003D9BC 24040047 */  addiu     $a0, $zero, 0x47
/* 3E5C0 8003D9C0 0C01071C */  jal       func_80041C70
/* 3E5C4 8003D9C4 AFA50024 */  sw        $a1, 0x24($sp)
/* 3E5C8 8003D9C8 24030001 */  addiu     $v1, $zero, 1
/* 3E5CC 8003D9CC 3C078008 */  lui       $a3, 0x8008
/* 3E5D0 8003D9D0 24E783FC */  addiu     $a3, $a3, -0x7c04
/* 3E5D4 8003D9D4 8FA50024 */  lw        $a1, 0x24($sp)
/* 3E5D8 8003D9D8 00003025 */  or        $a2, $zero, $zero
/* 3E5DC 8003D9DC A3A3001B */  sb        $v1, 0x1b($sp)
.L8003D9E0:
/* 3E5E0 8003D9E0 2CA1000C */  sltiu     $at, $a1, 0xc
/* 3E5E4 8003D9E4 1020000F */  beqz      $at, .L8003DA24
/* 3E5E8 8003D9E8 2CC10009 */  sltiu     $at, $a2, 9
/* 3E5EC 8003D9EC 10200061 */  beqz      $at, .L8003DB74
/* 3E5F0 8003D9F0 3C088008 */  lui       $t0, 0x8008
/* 3E5F4 8003D9F4 000570C0 */  sll       $t6, $a1, 3
/* 3E5F8 8003D9F8 01C57021 */  addu      $t6, $t6, $a1
/* 3E5FC 8003D9FC 000E7040 */  sll       $t6, $t6, 1
/* 3E600 8003DA00 00067840 */  sll       $t7, $a2, 1
/* 3E604 8003DA04 01CFC021 */  addu      $t8, $t6, $t7
/* 3E608 8003DA08 3C048008 */  lui       $a0, 0x8008
/* 3E60C 8003DA0C 00982021 */  addu      $a0, $a0, $t8
/* 3E610 8003DA10 25088400 */  addiu     $t0, $t0, -0x7c00
/* 3E614 8003DA14 94848410 */  lhu       $a0, -0x7bf0($a0)
/* 3E618 8003DA18 A0E30000 */  sb        $v1, ($a3)
/* 3E61C 8003DA1C 1000004A */  b         .L8003DB48
/* 3E620 8003DA20 A1030000 */  sb        $v1, ($t0)
.L8003DA24:
/* 3E624 8003DA24 2401000C */  addiu     $at, $zero, 0xc
/* 3E628 8003DA28 14A10014 */  bne       $a1, $at, .L8003DA7C
/* 3E62C 8003DA2C 2CC10021 */  sltiu     $at, $a2, 0x21
/* 3E630 8003DA30 50200051 */  beql      $at, $zero, .L8003DB78
/* 3E634 8003DA34 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3E638 8003DA38 10C0004E */  beqz      $a2, .L8003DB74
/* 3E63C 8003DA3C 3C088008 */  lui       $t0, 0x8008
/* 3E640 8003DA40 24C2FFFF */  addiu     $v0, $a2, -1
/* 3E644 8003DA44 0002C8C2 */  srl       $t9, $v0, 3
/* 3E648 8003DA48 001948C0 */  sll       $t1, $t9, 3
/* 3E64C 8003DA4C 01394821 */  addu      $t1, $t1, $t9
/* 3E650 8003DA50 304A0007 */  andi      $t2, $v0, 7
/* 3E654 8003DA54 000A5840 */  sll       $t3, $t2, 1
/* 3E658 8003DA58 00094840 */  sll       $t1, $t1, 1
/* 3E65C 8003DA5C 012B6021 */  addu      $t4, $t1, $t3
/* 3E660 8003DA60 3C048008 */  lui       $a0, 0x8008
/* 3E664 8003DA64 008C2021 */  addu      $a0, $a0, $t4
/* 3E668 8003DA68 25088400 */  addiu     $t0, $t0, -0x7c00
/* 3E66C 8003DA6C 948484EA */  lhu       $a0, -0x7b16($a0)
/* 3E670 8003DA70 A0E30000 */  sb        $v1, ($a3)
/* 3E674 8003DA74 10000034 */  b         .L8003DB48
/* 3E678 8003DA78 A1000000 */  sb        $zero, ($t0)
.L8003DA7C:
/* 3E67C 8003DA7C 2401000D */  addiu     $at, $zero, 0xd
/* 3E680 8003DA80 14A1000F */  bne       $a1, $at, .L8003DAC0
/* 3E684 8003DA84 2CC10006 */  sltiu     $at, $a2, 6
/* 3E688 8003DA88 1020003A */  beqz      $at, .L8003DB74
/* 3E68C 8003DA8C 3C088008 */  lui       $t0, 0x8008
/* 3E690 8003DA90 000568C0 */  sll       $t5, $a1, 3
/* 3E694 8003DA94 01A56821 */  addu      $t5, $t5, $a1
/* 3E698 8003DA98 000D6840 */  sll       $t5, $t5, 1
/* 3E69C 8003DA9C 00067040 */  sll       $t6, $a2, 1
/* 3E6A0 8003DAA0 01AE7821 */  addu      $t7, $t5, $t6
/* 3E6A4 8003DAA4 3C048008 */  lui       $a0, 0x8008
/* 3E6A8 8003DAA8 008F2021 */  addu      $a0, $a0, $t7
/* 3E6AC 8003DAAC 25088400 */  addiu     $t0, $t0, -0x7c00
/* 3E6B0 8003DAB0 94848446 */  lhu       $a0, -0x7bba($a0)
/* 3E6B4 8003DAB4 A0E30000 */  sb        $v1, ($a3)
/* 3E6B8 8003DAB8 10000023 */  b         .L8003DB48
/* 3E6BC 8003DABC A1000000 */  sb        $zero, ($t0)
.L8003DAC0:
/* 3E6C0 8003DAC0 2401000E */  addiu     $at, $zero, 0xe
/* 3E6C4 8003DAC4 14A10007 */  bne       $a1, $at, .L8003DAE4
/* 3E6C8 8003DAC8 3C088008 */  lui       $t0, 0x8008
/* 3E6CC 8003DACC 25088400 */  addiu     $t0, $t0, -0x7c00
/* 3E6D0 8003DAD0 24180002 */  addiu     $t8, $zero, 2
/* 3E6D4 8003DAD4 24040049 */  addiu     $a0, $zero, 0x49
/* 3E6D8 8003DAD8 A0E30000 */  sb        $v1, ($a3)
/* 3E6DC 8003DADC 1000001A */  b         .L8003DB48
/* 3E6E0 8003DAE0 A1180000 */  sb        $t8, ($t0)
.L8003DAE4:
/* 3E6E4 8003DAE4 2401000F */  addiu     $at, $zero, 0xf
/* 3E6E8 8003DAE8 14A10007 */  bne       $a1, $at, .L8003DB08
/* 3E6EC 8003DAEC 3C088008 */  lui       $t0, 0x8008
/* 3E6F0 8003DAF0 25088400 */  addiu     $t0, $t0, -0x7c00
/* 3E6F4 8003DAF4 00002025 */  or        $a0, $zero, $zero
/* 3E6F8 8003DAF8 A0E00000 */  sb        $zero, ($a3)
/* 3E6FC 8003DAFC A1000000 */  sb        $zero, ($t0)
/* 3E700 8003DB00 10000011 */  b         .L8003DB48
/* 3E704 8003DB04 24060001 */  addiu     $a2, $zero, 1
.L8003DB08:
/* 3E708 8003DB08 38A20010 */  xori      $v0, $a1, 0x10
/* 3E70C 8003DB0C 2C420001 */  sltiu     $v0, $v0, 1
/* 3E710 8003DB10 24190001 */  addiu     $t9, $zero, 1
/* 3E714 8003DB14 3C018008 */  lui       $at, 0x8008
/* 3E718 8003DB18 10400007 */  beqz      $v0, .L8003DB38
/* 3E71C 8003DB1C A03983FC */  sb        $t9, -0x7c04($at)
/* 3E720 8003DB20 3C088008 */  lui       $t0, 0x8008
/* 3E724 8003DB24 25088400 */  addiu     $t0, $t0, -0x7c00
/* 3E728 8003DB28 24040048 */  addiu     $a0, $zero, 0x48
/* 3E72C 8003DB2C A1030000 */  sb        $v1, ($t0)
/* 3E730 8003DB30 10000005 */  b         .L8003DB48
/* 3E734 8003DB34 00603025 */  or        $a2, $v1, $zero
.L8003DB38:
/* 3E738 8003DB38 3C088008 */  lui       $t0, 0x8008
/* 3E73C 8003DB3C 25088400 */  addiu     $t0, $t0, -0x7c00
/* 3E740 8003DB40 00002025 */  or        $a0, $zero, $zero
/* 3E744 8003DB44 A1030000 */  sb        $v1, ($t0)
.L8003DB48:
/* 3E748 8003DB48 14C00006 */  bnez      $a2, .L8003DB64
/* 3E74C 8003DB4C 00000000 */  nop       
/* 3E750 8003DB50 93AA001B */  lbu       $t2, 0x1b($sp)
/* 3E754 8003DB54 24090002 */  addiu     $t1, $zero, 2
/* 3E758 8003DB58 15400002 */  bnez      $t2, .L8003DB64
/* 3E75C 8003DB5C 00000000 */  nop       
/* 3E760 8003DB60 A1090000 */  sb        $t1, ($t0)
.L8003DB64:
/* 3E764 8003DB64 50800004 */  beql      $a0, $zero, .L8003DB78
/* 3E768 8003DB68 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3E76C 8003DB6C 0C01071C */  jal       func_80041C70
/* 3E770 8003DB70 00000000 */  nop       
.L8003DB74:
/* 3E774 8003DB74 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003DB78:
/* 3E778 8003DB78 27BD0020 */  addiu     $sp, $sp, 0x20
/* 3E77C 8003DB7C 03E00008 */  jr        $ra
/* 3E780 8003DB80 00000000 */  nop       

glabel func_8003DB84
/* 3E784 8003DB84 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 3E788 8003DB88 10800396 */  beqz      $a0, .L8003E9E4
/* 3E78C 8003DB8C AFBF0014 */  sw        $ra, 0x14($sp)
/* 3E790 8003DB90 0C015B04 */  jal       func_80056C10
/* 3E794 8003DB94 24040001 */  addiu     $a0, $zero, 1
/* 3E798 8003DB98 240E0001 */  addiu     $t6, $zero, 1
/* 3E79C 8003DB9C 3C018008 */  lui       $at, 0x8008
/* 3E7A0 8003DBA0 A02E83BC */  sb        $t6, -0x7c44($at)
/* 3E7A4 8003DBA4 3C018008 */  lui       $at, 0x8008
/* 3E7A8 8003DBA8 AC2083C8 */  sw        $zero, -0x7c38($at)
/* 3E7AC 8003DBAC 3C018008 */  lui       $at, 0x8008
/* 3E7B0 8003DBB0 A02083C0 */  sb        $zero, -0x7c40($at)
/* 3E7B4 8003DBB4 3C018008 */  lui       $at, 0x8008
/* 3E7B8 8003DBB8 A02083C4 */  sb        $zero, -0x7c3c($at)
/* 3E7BC 8003DBBC 0C015B04 */  jal       func_80056C10
/* 3E7C0 8003DBC0 00402025 */  or        $a0, $v0, $zero
/* 3E7C4 8003DBC4 3C018008 */  lui       $at, 0x8008
/* 3E7C8 8003DBC8 A02083D4 */  sb        $zero, -0x7c2c($at)
/* 3E7CC 8003DBCC 3C018008 */  lui       $at, 0x8008
/* 3E7D0 8003DBD0 A02083D8 */  sb        $zero, -0x7c28($at)
/* 3E7D4 8003DBD4 3C018008 */  lui       $at, 0x8008
/* 3E7D8 8003DBD8 A02083DC */  sb        $zero, -0x7c24($at)
/* 3E7DC 8003DBDC 3C018010 */  lui       $at, 0x8010
/* 3E7E0 8003DBE0 A020CCAE */  sb        $zero, -0x3352($at)
/* 3E7E4 8003DBE4 3C018010 */  lui       $at, 0x8010
/* 3E7E8 8003DBE8 A020CCAF */  sb        $zero, -0x3351($at)
/* 3E7EC 8003DBEC 3C018010 */  lui       $at, 0x8010
/* 3E7F0 8003DBF0 A020CCB2 */  sb        $zero, -0x334e($at)
/* 3E7F4 8003DBF4 3C018010 */  lui       $at, 0x8010
/* 3E7F8 8003DBF8 A020CCB6 */  sb        $zero, -0x334a($at)
/* 3E7FC 8003DBFC 3C018008 */  lui       $at, 0x8008
/* 3E800 8003DC00 A02083E8 */  sb        $zero, -0x7c18($at)
/* 3E804 8003DC04 3C018008 */  lui       $at, 0x8008
/* 3E808 8003DC08 A02083EC */  sb        $zero, -0x7c14($at)
/* 3E80C 8003DC0C 3C018010 */  lui       $at, 0x8010
/* 3E810 8003DC10 3C058008 */  lui       $a1, 0x8008
/* 3E814 8003DC14 AC20CCA4 */  sw        $zero, -0x335c($at)
/* 3E818 8003DC18 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 3E81C 8003DC1C 2404005A */  addiu     $a0, $zero, 0x5a
/* 3E820 8003DC20 0C00D9E8 */  jal       func_800367A0
/* 3E824 8003DC24 00003025 */  or        $a2, $zero, $zero
/* 3E828 8003DC28 3C0B8010 */  lui       $t3, 0x8010
/* 3E82C 8003DC2C 256BCB18 */  addiu     $t3, $t3, -0x34e8
/* 3E830 8003DC30 8D650000 */  lw        $a1, ($t3)
/* 3E834 8003DC34 50A003BF */  beql      $a1, $zero, .L8003EB34
/* 3E838 8003DC38 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3E83C 8003DC3C 8D690004 */  lw        $t1, 4($t3)
/* 3E840 8003DC40 3C038010 */  lui       $v1, 0x8010
/* 3E844 8003DC44 2463CB48 */  addiu     $v1, $v1, -0x34b8
/* 3E848 8003DC48 512003BA */  beql      $t1, $zero, .L8003EB34
/* 3E84C 8003DC4C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3E850 8003DC50 10A00004 */  beqz      $a1, .L8003DC64
/* 3E854 8003DC54 00000000 */  nop       
/* 3E858 8003DC58 94AF000C */  lhu       $t7, 0xc($a1)
/* 3E85C 8003DC5C 3C018010 */  lui       $at, 0x8010
/* 3E860 8003DC60 AC2FCB28 */  sw        $t7, -0x34d8($at)
.L8003DC64:
/* 3E864 8003DC64 51200005 */  beql      $t1, $zero, .L8003DC7C
/* 3E868 8003DC68 8C790024 */  lw        $t9, 0x24($v1)
/* 3E86C 8003DC6C 9538000C */  lhu       $t8, 0xc($t1)
/* 3E870 8003DC70 3C018010 */  lui       $at, 0x8010
/* 3E874 8003DC74 AC38CB2C */  sw        $t8, -0x34d4($at)
/* 3E878 8003DC78 8C790024 */  lw        $t9, 0x24($v1)
.L8003DC7C:
/* 3E87C 8003DC7C 3C048008 */  lui       $a0, 0x8008
/* 3E880 8003DC80 248483CC */  addiu     $a0, $a0, -0x7c34
/* 3E884 8003DC84 272E0001 */  addiu     $t6, $t9, 1
/* 3E888 8003DC88 AC6E0024 */  sw        $t6, 0x24($v1)
/* 3E88C 8003DC8C 94AF000C */  lhu       $t7, 0xc($a1)
/* 3E890 8003DC90 31D9000F */  andi      $t9, $t6, 0xf
/* 3E894 8003DC94 00197040 */  sll       $t6, $t9, 1
/* 3E898 8003DC98 006EC021 */  addu      $t8, $v1, $t6
/* 3E89C 8003DC9C A70F0000 */  sh        $t7, ($t8)
/* 3E8A0 8003DCA0 8C7900A8 */  lw        $t9, 0xa8($v1)
/* 3E8A4 8003DCA4 272E0001 */  addiu     $t6, $t9, 1
/* 3E8A8 8003DCA8 AC6E00A8 */  sw        $t6, 0xa8($v1)
/* 3E8AC 8003DCAC 952F000C */  lhu       $t7, 0xc($t1)
/* 3E8B0 8003DCB0 31D9000F */  andi      $t9, $t6, 0xf
/* 3E8B4 8003DCB4 00197040 */  sll       $t6, $t9, 1
/* 3E8B8 8003DCB8 006EC021 */  addu      $t8, $v1, $t6
/* 3E8BC 8003DCBC A70F0084 */  sh        $t7, 0x84($t8)
/* 3E8C0 8003DCC0 8C820000 */  lw        $v0, ($a0)
/* 3E8C4 8003DCC4 5040039B */  beql      $v0, $zero, .L8003EB34
/* 3E8C8 8003DCC8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3E8CC 8003DCCC 90B90026 */  lbu       $t9, 0x26($a1)
/* 3E8D0 8003DCD0 912E0026 */  lbu       $t6, 0x26($t1)
/* 3E8D4 8003DCD4 240A0001 */  addiu     $t2, $zero, 1
/* 3E8D8 8003DCD8 00006025 */  or        $t4, $zero, $zero
/* 3E8DC 8003DCDC 032E082A */  slt       $at, $t9, $t6
/* 3E8E0 8003DCE0 10200004 */  beqz      $at, .L8003DCF4
/* 3E8E4 8003DCE4 24080001 */  addiu     $t0, $zero, 1
/* 3E8E8 8003DCE8 00005025 */  or        $t2, $zero, $zero
/* 3E8EC 8003DCEC 10000001 */  b         .L8003DCF4
/* 3E8F0 8003DCF0 240C0001 */  addiu     $t4, $zero, 1
.L8003DCF4:
/* 3E8F4 8003DCF4 94BF000C */  lhu       $ra, 0xc($a1)
/* 3E8F8 8003DCF8 9524000C */  lhu       $a0, 0xc($t1)
/* 3E8FC 8003DCFC 00006825 */  or        $t5, $zero, $zero
/* 3E900 8003DD00 03E03025 */  or        $a2, $ra, $zero
/* 3E904 8003DD04 03E4082A */  slt       $at, $ra, $a0
/* 3E908 8003DD08 10200004 */  beqz      $at, .L8003DD1C
/* 3E90C 8003DD0C 00803825 */  or        $a3, $a0, $zero
/* 3E910 8003DD10 00004025 */  or        $t0, $zero, $zero
/* 3E914 8003DD14 10000001 */  b         .L8003DD1C
/* 3E918 8003DD18 240D0001 */  addiu     $t5, $zero, 1
.L8003DD1C:
/* 3E91C 8003DD1C 2C410002 */  sltiu     $at, $v0, 2
/* 3E920 8003DD20 102000BA */  beqz      $at, .L8003E00C
/* 3E924 8003DD24 00000000 */  nop       
/* 3E928 8003DD28 10C00003 */  beqz      $a2, .L8003DD38
/* 3E92C 8003DD2C 00000000 */  nop       
/* 3E930 8003DD30 14E00026 */  bnez      $a3, .L8003DDCC
/* 3E934 8003DD34 24080064 */  addiu     $t0, $zero, 0x64
.L8003DD38:
/* 3E938 8003DD38 0C015B04 */  jal       func_80056C10
/* 3E93C 8003DD3C 24040001 */  addiu     $a0, $zero, 1
/* 3E940 8003DD40 240F0001 */  addiu     $t7, $zero, 1
/* 3E944 8003DD44 3C018008 */  lui       $at, 0x8008
/* 3E948 8003DD48 A02F83C0 */  sb        $t7, -0x7c40($at)
/* 3E94C 8003DD4C 0C015B04 */  jal       func_80056C10
/* 3E950 8003DD50 00402025 */  or        $a0, $v0, $zero
/* 3E954 8003DD54 3C0B8010 */  lui       $t3, 0x8010
/* 3E958 8003DD58 256BCB18 */  addiu     $t3, $t3, -0x34e8
/* 3E95C 8003DD5C 8D650000 */  lw        $a1, ($t3)
/* 3E960 8003DD60 24190001 */  addiu     $t9, $zero, 1
/* 3E964 8003DD64 240E0002 */  addiu     $t6, $zero, 2
/* 3E968 8003DD68 94B8000C */  lhu       $t8, 0xc($a1)
/* 3E96C 8003DD6C 3C018010 */  lui       $at, 0x8010
/* 3E970 8003DD70 3C048007 */  lui       $a0, 0x8007
/* 3E974 8003DD74 17000004 */  bnez      $t8, .L8003DD88
/* 3E978 8003DD78 00000000 */  nop       
/* 3E97C 8003DD7C 3C018010 */  lui       $at, 0x8010
/* 3E980 8003DD80 10000002 */  b         .L8003DD8C
/* 3E984 8003DD84 A039CCB0 */  sb        $t9, -0x3350($at)
.L8003DD88:
/* 3E988 8003DD88 A02ECCB0 */  sb        $t6, -0x3350($at)
.L8003DD8C:
/* 3E98C 8003DD8C 94AF000C */  lhu       $t7, 0xc($a1)
/* 3E990 8003DD90 15E0000A */  bnez      $t7, .L8003DDBC
/* 3E994 8003DD94 00000000 */  nop       
/* 3E998 8003DD98 8D780004 */  lw        $t8, 4($t3)
/* 3E99C 8003DD9C 9719000C */  lhu       $t9, 0xc($t8)
/* 3E9A0 8003DDA0 17200006 */  bnez      $t9, .L8003DDBC
/* 3E9A4 8003DDA4 00000000 */  nop       
/* 3E9A8 8003DDA8 3C048007 */  lui       $a0, 0x8007
/* 3E9AC 8003DDAC 0C010830 */  jal       func_800420C0
/* 3E9B0 8003DDB0 24847E90 */  addiu     $a0, $a0, 0x7e90
/* 3E9B4 8003DDB4 1000035F */  b         .L8003EB34
/* 3E9B8 8003DDB8 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003DDBC:
/* 3E9BC 8003DDBC 0C010830 */  jal       func_800420C0
/* 3E9C0 8003DDC0 24847E48 */  addiu     $a0, $a0, 0x7e48
/* 3E9C4 8003DDC4 1000035B */  b         .L8003EB34
/* 3E9C8 8003DDC8 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003DDCC:
/* 3E9CC 8003DDCC 03E80019 */  multu     $ra, $t0
/* 3E9D0 8003DDD0 94AF0028 */  lhu       $t7, 0x28($a1)
/* 3E9D4 8003DDD4 00007012 */  mflo      $t6
/* 3E9D8 8003DDD8 00000000 */  nop       
/* 3E9DC 8003DDDC 00000000 */  nop       
/* 3E9E0 8003DDE0 01CF001B */  divu      $zero, $t6, $t7
/* 3E9E4 8003DDE4 0000C012 */  mflo      $t8
/* 3E9E8 8003DDE8 2F01001E */  sltiu     $at, $t8, 0x1e
/* 3E9EC 8003DDEC 15E00002 */  bnez      $t7, .L8003DDF8
/* 3E9F0 8003DDF0 00000000 */  nop       
/* 3E9F4 8003DDF4 0007000D */  break     7
.L8003DDF8:
/* 3E9F8 8003DDF8 000CC080 */  sll       $t8, $t4, 2
/* 3E9FC 8003DDFC 50200014 */  beql      $at, $zero, .L8003DE50
/* 3EA00 8003DE00 000A7080 */  sll       $t6, $t2, 2
/* 3EA04 8003DE04 00880019 */  multu     $a0, $t0
/* 3EA08 8003DE08 952E0028 */  lhu       $t6, 0x28($t1)
/* 3EA0C 8003DE0C 3C048007 */  lui       $a0, 0x8007
/* 3EA10 8003DE10 0000C812 */  mflo      $t9
/* 3EA14 8003DE14 00000000 */  nop       
/* 3EA18 8003DE18 00000000 */  nop       
/* 3EA1C 8003DE1C 032E001B */  divu      $zero, $t9, $t6
/* 3EA20 8003DE20 00007812 */  mflo      $t7
/* 3EA24 8003DE24 2DE1001E */  sltiu     $at, $t7, 0x1e
/* 3EA28 8003DE28 15C00002 */  bnez      $t6, .L8003DE34
/* 3EA2C 8003DE2C 00000000 */  nop       
/* 3EA30 8003DE30 0007000D */  break     7
.L8003DE34:
/* 3EA34 8003DE34 50200006 */  beql      $at, $zero, .L8003DE50
/* 3EA38 8003DE38 000A7080 */  sll       $t6, $t2, 2
/* 3EA3C 8003DE3C 0C010830 */  jal       func_800420C0
/* 3EA40 8003DE40 24847E88 */  addiu     $a0, $a0, 0x7e88
/* 3EA44 8003DE44 1000033B */  b         .L8003EB34
/* 3EA48 8003DE48 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3EA4C 8003DE4C 000A7080 */  sll       $t6, $t2, 2
.L8003DE50:
/* 3EA50 8003DE50 016E7821 */  addu      $t7, $t3, $t6
/* 3EA54 8003DE54 0178C821 */  addu      $t9, $t3, $t8
/* 3EA58 8003DE58 8F230000 */  lw        $v1, ($t9)
/* 3EA5C 8003DE5C 8DE40000 */  lw        $a0, ($t7)
/* 3EA60 8003DE60 90780026 */  lbu       $t8, 0x26($v1)
/* 3EA64 8003DE64 90820026 */  lbu       $v0, 0x26($a0)
/* 3EA68 8003DE68 0302C823 */  subu      $t9, $t8, $v0
/* 3EA6C 8003DE6C 03280019 */  multu     $t9, $t0
/* 3EA70 8003DE70 00007012 */  mflo      $t6
/* 3EA74 8003DE74 00000000 */  nop       
/* 3EA78 8003DE78 00000000 */  nop       
/* 3EA7C 8003DE7C 01C2001B */  divu      $zero, $t6, $v0
/* 3EA80 8003DE80 00007812 */  mflo      $t7
/* 3EA84 8003DE84 2DE10015 */  sltiu     $at, $t7, 0x15
/* 3EA88 8003DE88 14400002 */  bnez      $v0, .L8003DE94
/* 3EA8C 8003DE8C 00000000 */  nop       
/* 3EA90 8003DE90 0007000D */  break     7
.L8003DE94:
/* 3EA94 8003DE94 5420002D */  bnel      $at, $zero, .L8003DF4C
/* 3EA98 8003DE98 8D650000 */  lw        $a1, ($t3)
/* 3EA9C 8003DE9C 9498000C */  lhu       $t8, 0xc($a0)
/* 3EAA0 8003DEA0 948E0028 */  lhu       $t6, 0x28($a0)
/* 3EAA4 8003DEA4 03080019 */  multu     $t8, $t0
/* 3EAA8 8003DEA8 0000C812 */  mflo      $t9
/* 3EAAC 8003DEAC 00000000 */  nop       
/* 3EAB0 8003DEB0 00000000 */  nop       
/* 3EAB4 8003DEB4 032E001B */  divu      $zero, $t9, $t6
/* 3EAB8 8003DEB8 00007812 */  mflo      $t7
/* 3EABC 8003DEBC 2DE10028 */  sltiu     $at, $t7, 0x28
/* 3EAC0 8003DEC0 15C00002 */  bnez      $t6, .L8003DECC
/* 3EAC4 8003DEC4 00000000 */  nop       
/* 3EAC8 8003DEC8 0007000D */  break     7
.L8003DECC:
/* 3EACC 8003DECC 5020001F */  beql      $at, $zero, .L8003DF4C
/* 3EAD0 8003DED0 8D650000 */  lw        $a1, ($t3)
/* 3EAD4 8003DED4 9478000C */  lhu       $t8, 0xc($v1)
/* 3EAD8 8003DED8 946E0028 */  lhu       $t6, 0x28($v1)
/* 3EADC 8003DEDC 03080019 */  multu     $t8, $t0
/* 3EAE0 8003DEE0 0000C812 */  mflo      $t9
/* 3EAE4 8003DEE4 00000000 */  nop       
/* 3EAE8 8003DEE8 00000000 */  nop       
/* 3EAEC 8003DEEC 032E001B */  divu      $zero, $t9, $t6
/* 3EAF0 8003DEF0 00007812 */  mflo      $t7
/* 3EAF4 8003DEF4 2DE10051 */  sltiu     $at, $t7, 0x51
/* 3EAF8 8003DEF8 15C00002 */  bnez      $t6, .L8003DF04
/* 3EAFC 8003DEFC 00000000 */  nop       
/* 3EB00 8003DF00 0007000D */  break     7
.L8003DF04:
/* 3EB04 8003DF04 54200011 */  bnel      $at, $zero, .L8003DF4C
/* 3EB08 8003DF08 8D650000 */  lw        $a1, ($t3)
/* 3EB0C 8003DF0C 0C017C54 */  jal       func_8005F150
/* 3EB10 8003DF10 00000000 */  nop       
/* 3EB14 8003DF14 00402025 */  or        $a0, $v0, $zero
/* 3EB18 8003DF18 00602825 */  or        $a1, $v1, $zero
/* 3EB1C 8003DF1C 24060000 */  addiu     $a2, $zero, 0
/* 3EB20 8003DF20 0C015D0F */  jal       func_8005743C
/* 3EB24 8003DF24 24070003 */  addiu     $a3, $zero, 3
/* 3EB28 8003DF28 3C0B8010 */  lui       $t3, 0x8010
/* 3EB2C 8003DF2C 256BCB18 */  addiu     $t3, $t3, -0x34e8
/* 3EB30 8003DF30 14400005 */  bnez      $v0, .L8003DF48
/* 3EB34 8003DF34 24080064 */  addiu     $t0, $zero, 0x64
/* 3EB38 8003DF38 54600004 */  bnel      $v1, $zero, .L8003DF4C
/* 3EB3C 8003DF3C 8D650000 */  lw        $a1, ($t3)
/* 3EB40 8003DF40 10000073 */  b         .L8003E110
/* 3EB44 8003DF44 24040256 */  addiu     $a0, $zero, 0x256
.L8003DF48:
/* 3EB48 8003DF48 8D650000 */  lw        $a1, ($t3)
.L8003DF4C:
/* 3EB4C 8003DF4C 94B8000C */  lhu       $t8, 0xc($a1)
/* 3EB50 8003DF50 94AE0028 */  lhu       $t6, 0x28($a1)
/* 3EB54 8003DF54 03080019 */  multu     $t8, $t0
/* 3EB58 8003DF58 0000C812 */  mflo      $t9
/* 3EB5C 8003DF5C 00000000 */  nop       
/* 3EB60 8003DF60 00000000 */  nop       
/* 3EB64 8003DF64 032E001B */  divu      $zero, $t9, $t6
/* 3EB68 8003DF68 00007812 */  mflo      $t7
/* 3EB6C 8003DF6C 2DE1005B */  sltiu     $at, $t7, 0x5b
/* 3EB70 8003DF70 15C00002 */  bnez      $t6, .L8003DF7C
/* 3EB74 8003DF74 00000000 */  nop       
/* 3EB78 8003DF78 0007000D */  break     7
.L8003DF7C:
/* 3EB7C 8003DF7C 14200015 */  bnez      $at, .L8003DFD4
/* 3EB80 8003DF80 00000000 */  nop       
/* 3EB84 8003DF84 8D690004 */  lw        $t1, 4($t3)
/* 3EB88 8003DF88 3C048007 */  lui       $a0, 0x8007
/* 3EB8C 8003DF8C 9538000C */  lhu       $t8, 0xc($t1)
/* 3EB90 8003DF90 952E0028 */  lhu       $t6, 0x28($t1)
/* 3EB94 8003DF94 03080019 */  multu     $t8, $t0
/* 3EB98 8003DF98 0000C812 */  mflo      $t9
/* 3EB9C 8003DF9C 00000000 */  nop       
/* 3EBA0 8003DFA0 00000000 */  nop       
/* 3EBA4 8003DFA4 032E001B */  divu      $zero, $t9, $t6
/* 3EBA8 8003DFA8 00007812 */  mflo      $t7
/* 3EBAC 8003DFAC 2DE1005B */  sltiu     $at, $t7, 0x5b
/* 3EBB0 8003DFB0 15C00002 */  bnez      $t6, .L8003DFBC
/* 3EBB4 8003DFB4 00000000 */  nop       
/* 3EBB8 8003DFB8 0007000D */  break     7
.L8003DFBC:
/* 3EBBC 8003DFBC 14200005 */  bnez      $at, .L8003DFD4
/* 3EBC0 8003DFC0 00000000 */  nop       
/* 3EBC4 8003DFC4 0C010830 */  jal       func_800420C0
/* 3EBC8 8003DFC8 24847E68 */  addiu     $a0, $a0, 0x7e68
/* 3EBCC 8003DFCC 100002D9 */  b         .L8003EB34
/* 3EBD0 8003DFD0 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003DFD4:
/* 3EBD4 8003DFD4 3C188008 */  lui       $t8, 0x8008
/* 3EBD8 8003DFD8 93188400 */  lbu       $t8, -0x7c00($t8)
/* 3EBDC 8003DFDC 3C048007 */  lui       $a0, 0x8007
/* 3EBE0 8003DFE0 17000006 */  bnez      $t8, .L8003DFFC
/* 3EBE4 8003DFE4 00000000 */  nop       
/* 3EBE8 8003DFE8 3C048007 */  lui       $a0, 0x8007
/* 3EBEC 8003DFEC 0C010830 */  jal       func_800420C0
/* 3EBF0 8003DFF0 24847E78 */  addiu     $a0, $a0, 0x7e78
/* 3EBF4 8003DFF4 100002CF */  b         .L8003EB34
/* 3EBF8 8003DFF8 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003DFFC:
/* 3EBFC 8003DFFC 0C010830 */  jal       func_800420C0
/* 3EC00 8003E000 24847DF0 */  addiu     $a0, $a0, 0x7df0
/* 3EC04 8003E004 100002CB */  b         .L8003EB34
/* 3EC08 8003E008 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E00C:
/* 3EC0C 8003E00C 10C00003 */  beqz      $a2, .L8003E01C
/* 3EC10 8003E010 00000000 */  nop       
/* 3EC14 8003E014 14E00050 */  bnez      $a3, .L8003E158
/* 3EC18 8003E018 3C0A8010 */  lui       $t2, 0x8010
.L8003E01C:
/* 3EC1C 8003E01C 0C015B04 */  jal       func_80056C10
/* 3EC20 8003E020 24040001 */  addiu     $a0, $zero, 1
/* 3EC24 8003E024 24190001 */  addiu     $t9, $zero, 1
/* 3EC28 8003E028 3C018008 */  lui       $at, 0x8008
/* 3EC2C 8003E02C A03983C0 */  sb        $t9, -0x7c40($at)
/* 3EC30 8003E030 0C015B04 */  jal       func_80056C10
/* 3EC34 8003E034 00402025 */  or        $a0, $v0, $zero
/* 3EC38 8003E038 3C0B8010 */  lui       $t3, 0x8010
/* 3EC3C 8003E03C 256BCB18 */  addiu     $t3, $t3, -0x34e8
/* 3EC40 8003E040 8D6E0000 */  lw        $t6, ($t3)
/* 3EC44 8003E044 3C088008 */  lui       $t0, 0x8008
/* 3EC48 8003E048 24180001 */  addiu     $t8, $zero, 1
/* 3EC4C 8003E04C 95CF000C */  lhu       $t7, 0xc($t6)
/* 3EC50 8003E050 25088390 */  addiu     $t0, $t0, -0x7c70
/* 3EC54 8003E054 24190002 */  addiu     $t9, $zero, 2
/* 3EC58 8003E058 15E00004 */  bnez      $t7, .L8003E06C
/* 3EC5C 8003E05C 3C018010 */  lui       $at, 0x8010
/* 3EC60 8003E060 3C018010 */  lui       $at, 0x8010
/* 3EC64 8003E064 10000002 */  b         .L8003E070
/* 3EC68 8003E068 A038CCB0 */  sb        $t8, -0x3350($at)
.L8003E06C:
/* 3EC6C 8003E06C A039CCB0 */  sb        $t9, -0x3350($at)
.L8003E070:
/* 3EC70 8003E070 91040000 */  lbu       $a0, ($t0)
/* 3EC74 8003E074 91030001 */  lbu       $v1, 1($t0)
/* 3EC78 8003E078 24050001 */  addiu     $a1, $zero, 1
/* 3EC7C 8003E07C 0083082A */  slt       $at, $a0, $v1
/* 3EC80 8003E080 14200003 */  bnez      $at, .L8003E090
/* 3EC84 8003E084 00641023 */  subu      $v0, $v1, $a0
/* 3EC88 8003E088 10000001 */  b         .L8003E090
/* 3EC8C 8003E08C 00831023 */  subu      $v0, $a0, $v1
.L8003E090:
/* 3EC90 8003E090 28410002 */  slti      $at, $v0, 2
/* 3EC94 8003E094 14200006 */  bnez      $at, .L8003E0B0
/* 3EC98 8003E098 00000000 */  nop       
/* 3EC9C 8003E09C 3C048007 */  lui       $a0, 0x8007
/* 3ECA0 8003E0A0 0C010830 */  jal       func_800420C0
/* 3ECA4 8003E0A4 24847E70 */  addiu     $a0, $a0, 0x7e70
/* 3ECA8 8003E0A8 100002A2 */  b         .L8003EB34
/* 3ECAC 8003E0AC 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E0B0:
/* 3ECB0 8003E0B0 14A4001B */  bne       $a1, $a0, .L8003E120
/* 3ECB4 8003E0B4 3C0F8010 */  lui       $t7, 0x8010
/* 3ECB8 8003E0B8 14A30019 */  bne       $a1, $v1, .L8003E120
/* 3ECBC 8003E0BC 3C028008 */  lui       $v0, 0x8008
/* 3ECC0 8003E0C0 244283E4 */  addiu     $v0, $v0, -0x7c1c
/* 3ECC4 8003E0C4 904E0000 */  lbu       $t6, ($v0)
/* 3ECC8 8003E0C8 24040290 */  addiu     $a0, $zero, 0x290
/* 3ECCC 8003E0CC 11C00003 */  beqz      $t6, .L8003E0DC
/* 3ECD0 8003E0D0 00000000 */  nop       
/* 3ECD4 8003E0D4 1000000E */  b         .L8003E110
/* 3ECD8 8003E0D8 A0400000 */  sb        $zero, ($v0)
.L8003E0DC:
/* 3ECDC 8003E0DC 0C017C54 */  jal       func_8005F150
/* 3ECE0 8003E0E0 00000000 */  nop       
/* 3ECE4 8003E0E4 00402025 */  or        $a0, $v0, $zero
/* 3ECE8 8003E0E8 00602825 */  or        $a1, $v1, $zero
/* 3ECEC 8003E0EC 24060000 */  addiu     $a2, $zero, 0
/* 3ECF0 8003E0F0 0C015D0F */  jal       func_8005743C
/* 3ECF4 8003E0F4 24070002 */  addiu     $a3, $zero, 2
/* 3ECF8 8003E0F8 14400003 */  bnez      $v0, .L8003E108
/* 3ECFC 8003E0FC 00000000 */  nop       
/* 3ED00 8003E100 10600003 */  beqz      $v1, .L8003E110
/* 3ED04 8003E104 2404026B */  addiu     $a0, $zero, 0x26b
.L8003E108:
/* 3ED08 8003E108 10000001 */  b         .L8003E110
/* 3ED0C 8003E10C 24040254 */  addiu     $a0, $zero, 0x254
.L8003E110:
/* 3ED10 8003E110 0C01071C */  jal       func_80041C70
/* 3ED14 8003E114 00000000 */  nop       
/* 3ED18 8003E118 10000286 */  b         .L8003EB34
/* 3ED1C 8003E11C 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E120:
/* 3ED20 8003E120 91EFCCB0 */  lbu       $t7, -0x3350($t7)
/* 3ED24 8003E124 3C048007 */  lui       $a0, 0x8007
/* 3ED28 8003E128 010FC021 */  addu      $t8, $t0, $t7
/* 3ED2C 8003E12C 9319FFFF */  lbu       $t9, -1($t8)
/* 3ED30 8003E130 14B90005 */  bne       $a1, $t9, .L8003E148
/* 3ED34 8003E134 00000000 */  nop       
/* 3ED38 8003E138 0C01071C */  jal       func_80041C70
/* 3ED3C 8003E13C 2404026A */  addiu     $a0, $zero, 0x26a
/* 3ED40 8003E140 1000027C */  b         .L8003EB34
/* 3ED44 8003E144 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E148:
/* 3ED48 8003E148 0C010830 */  jal       func_800420C0
/* 3ED4C 8003E14C 24847E00 */  addiu     $a0, $a0, 0x7e00
/* 3ED50 8003E150 10000278 */  b         .L8003EB34
/* 3ED54 8003E154 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E158:
/* 3ED58 8003E158 254ACCB0 */  addiu     $t2, $t2, -0x3350
/* 3ED5C 8003E15C 914E0000 */  lbu       $t6, ($t2)
/* 3ED60 8003E160 3C198010 */  lui       $t9, 0x8010
/* 3ED64 8003E164 11C000C3 */  beqz      $t6, .L8003E474
/* 3ED68 8003E168 00000000 */  nop       
/* 3ED6C 8003E16C 3C088008 */  lui       $t0, 0x8008
/* 3ED70 8003E170 25088390 */  addiu     $t0, $t0, -0x7c70
/* 3ED74 8003E174 91040000 */  lbu       $a0, ($t0)
/* 3ED78 8003E178 24050001 */  addiu     $a1, $zero, 1
/* 3ED7C 8003E17C 10A40004 */  beq       $a1, $a0, .L8003E190
/* 3ED80 8003E180 28810004 */  slti      $at, $a0, 4
/* 3ED84 8003E184 910F0001 */  lbu       $t7, 1($t0)
/* 3ED88 8003E188 14AF0053 */  bne       $a1, $t7, .L8003E2D8
/* 3ED8C 8003E18C 00000000 */  nop       
.L8003E190:
/* 3ED90 8003E190 10200051 */  beqz      $at, .L8003E2D8
/* 3ED94 8003E194 00000000 */  nop       
/* 3ED98 8003E198 91030001 */  lbu       $v1, 1($t0)
/* 3ED9C 8003E19C 28610004 */  slti      $at, $v1, 4
/* 3EDA0 8003E1A0 1020004D */  beqz      $at, .L8003E2D8
/* 3EDA4 8003E1A4 00000000 */  nop       
/* 3EDA8 8003E1A8 54A4002B */  bnel      $a1, $a0, .L8003E258
/* 3EDAC 8003E1AC 24030002 */  addiu     $v1, $zero, 2
/* 3EDB0 8003E1B0 10650008 */  beq       $v1, $a1, .L8003E1D4
/* 3EDB4 8003E1B4 00601025 */  or        $v0, $v1, $zero
/* 3EDB8 8003E1B8 24030002 */  addiu     $v1, $zero, 2
/* 3EDBC 8003E1BC 1043000B */  beq       $v0, $v1, .L8003E1EC
/* 3EDC0 8003E1C0 24010003 */  addiu     $at, $zero, 3
/* 3EDC4 8003E1C4 10410018 */  beq       $v0, $at, .L8003E228
/* 3EDC8 8003E1C8 00000000 */  nop       
/* 3EDCC 8003E1CC 1000001C */  b         .L8003E240
/* 3EDD0 8003E1D0 00000000 */  nop       
.L8003E1D4:
/* 3EDD4 8003E1D4 0C01071C */  jal       func_80041C70
/* 3EDD8 8003E1D8 24040260 */  addiu     $a0, $zero, 0x260
/* 3EDDC 8003E1DC 0C01071C */  jal       func_80041C70
/* 3EDE0 8003E1E0 24040266 */  addiu     $a0, $zero, 0x266
/* 3EDE4 8003E1E4 10000018 */  b         .L8003E248
/* 3EDE8 8003E1E8 00000000 */  nop       
.L8003E1EC:
/* 3EDEC 8003E1EC 0C01071C */  jal       func_80041C70
/* 3EDF0 8003E1F0 24040261 */  addiu     $a0, $zero, 0x261
/* 3EDF4 8003E1F4 3C188010 */  lui       $t8, 0x8010
/* 3EDF8 8003E1F8 9318CCB0 */  lbu       $t8, -0x3350($t8)
/* 3EDFC 8003E1FC 24050001 */  addiu     $a1, $zero, 1
/* 3EE00 8003E200 14B80005 */  bne       $a1, $t8, .L8003E218
/* 3EE04 8003E204 00000000 */  nop       
/* 3EE08 8003E208 0C01071C */  jal       func_80041C70
/* 3EE0C 8003E20C 24040265 */  addiu     $a0, $zero, 0x265
/* 3EE10 8003E210 1000000D */  b         .L8003E248
/* 3EE14 8003E214 00000000 */  nop       
.L8003E218:
/* 3EE18 8003E218 0C01071C */  jal       func_80041C70
/* 3EE1C 8003E21C 24040267 */  addiu     $a0, $zero, 0x267
/* 3EE20 8003E220 10000009 */  b         .L8003E248
/* 3EE24 8003E224 00000000 */  nop       
.L8003E228:
/* 3EE28 8003E228 0C01071C */  jal       func_80041C70
/* 3EE2C 8003E22C 24040262 */  addiu     $a0, $zero, 0x262
/* 3EE30 8003E230 0C01071C */  jal       func_80041C70
/* 3EE34 8003E234 24040264 */  addiu     $a0, $zero, 0x264
/* 3EE38 8003E238 10000003 */  b         .L8003E248
/* 3EE3C 8003E23C 00000000 */  nop       
.L8003E240:
/* 3EE40 8003E240 0C01071C */  jal       func_80041C70
/* 3EE44 8003E244 24040271 */  addiu     $a0, $zero, 0x271
.L8003E248:
/* 3EE48 8003E248 3C018010 */  lui       $at, 0x8010
/* 3EE4C 8003E24C 10000238 */  b         .L8003EB30
/* 3EE50 8003E250 A020CCB0 */  sb        $zero, -0x3350($at)
/* 3EE54 8003E254 24030002 */  addiu     $v1, $zero, 2
.L8003E258:
/* 3EE58 8003E258 10830005 */  beq       $a0, $v1, .L8003E270
/* 3EE5C 8003E25C 24010003 */  addiu     $at, $zero, 3
/* 3EE60 8003E260 10810012 */  beq       $a0, $at, .L8003E2AC
/* 3EE64 8003E264 00000000 */  nop       
/* 3EE68 8003E268 10000016 */  b         .L8003E2C4
/* 3EE6C 8003E26C 00000000 */  nop       
.L8003E270:
/* 3EE70 8003E270 0C01071C */  jal       func_80041C70
/* 3EE74 8003E274 2404025E */  addiu     $a0, $zero, 0x25e
/* 3EE78 8003E278 3C198010 */  lui       $t9, 0x8010
/* 3EE7C 8003E27C 9339CCB0 */  lbu       $t9, -0x3350($t9)
/* 3EE80 8003E280 24030002 */  addiu     $v1, $zero, 2
/* 3EE84 8003E284 14790005 */  bne       $v1, $t9, .L8003E29C
/* 3EE88 8003E288 00000000 */  nop       
/* 3EE8C 8003E28C 0C01071C */  jal       func_80041C70
/* 3EE90 8003E290 24040265 */  addiu     $a0, $zero, 0x265
/* 3EE94 8003E294 1000000D */  b         .L8003E2CC
/* 3EE98 8003E298 00000000 */  nop       
.L8003E29C:
/* 3EE9C 8003E29C 0C01071C */  jal       func_80041C70
/* 3EEA0 8003E2A0 24040267 */  addiu     $a0, $zero, 0x267
/* 3EEA4 8003E2A4 10000009 */  b         .L8003E2CC
/* 3EEA8 8003E2A8 00000000 */  nop       
.L8003E2AC:
/* 3EEAC 8003E2AC 0C01071C */  jal       func_80041C70
/* 3EEB0 8003E2B0 2404025C */  addiu     $a0, $zero, 0x25c
/* 3EEB4 8003E2B4 0C01071C */  jal       func_80041C70
/* 3EEB8 8003E2B8 24040264 */  addiu     $a0, $zero, 0x264
/* 3EEBC 8003E2BC 10000003 */  b         .L8003E2CC
/* 3EEC0 8003E2C0 00000000 */  nop       
.L8003E2C4:
/* 3EEC4 8003E2C4 0C01071C */  jal       func_80041C70
/* 3EEC8 8003E2C8 24040271 */  addiu     $a0, $zero, 0x271
.L8003E2CC:
/* 3EECC 8003E2CC 3C018010 */  lui       $at, 0x8010
/* 3EED0 8003E2D0 10000217 */  b         .L8003EB30
/* 3EED4 8003E2D4 A020CCB0 */  sb        $zero, -0x3350($at)
.L8003E2D8:
/* 3EED8 8003E2D8 3C0E8010 */  lui       $t6, 0x8010
/* 3EEDC 8003E2DC 91CECCB1 */  lbu       $t6, -0x334f($t6)
/* 3EEE0 8003E2E0 51C00016 */  beql      $t6, $zero, .L8003E33C
/* 3EEE4 8003E2E4 8D650000 */  lw        $a1, ($t3)
/* 3EEE8 8003E2E8 0C017C54 */  jal       func_8005F150
/* 3EEEC 8003E2EC 00000000 */  nop       
/* 3EEF0 8003E2F0 00402025 */  or        $a0, $v0, $zero
/* 3EEF4 8003E2F4 00602825 */  or        $a1, $v1, $zero
/* 3EEF8 8003E2F8 24060000 */  addiu     $a2, $zero, 0
/* 3EEFC 8003E2FC 0C015D0F */  jal       func_8005743C
/* 3EF00 8003E300 24070002 */  addiu     $a3, $zero, 2
/* 3EF04 8003E304 3C088008 */  lui       $t0, 0x8008
/* 3EF08 8003E308 3C0B8010 */  lui       $t3, 0x8010
/* 3EF0C 8003E30C 256BCB18 */  addiu     $t3, $t3, -0x34e8
/* 3EF10 8003E310 14400002 */  bnez      $v0, .L8003E31C
/* 3EF14 8003E314 25088390 */  addiu     $t0, $t0, -0x7c70
/* 3EF18 8003E318 10600007 */  beqz      $v1, .L8003E338
.L8003E31C:
/* 3EF1C 8003E31C 3C018010 */  lui       $at, 0x8010
/* 3EF20 8003E320 3C048007 */  lui       $a0, 0x8007
/* 3EF24 8003E324 A020CCB0 */  sb        $zero, -0x3350($at)
/* 3EF28 8003E328 0C010830 */  jal       func_800420C0
/* 3EF2C 8003E32C 24847E10 */  addiu     $a0, $a0, 0x7e10
/* 3EF30 8003E330 10000200 */  b         .L8003EB34
/* 3EF34 8003E334 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E338:
/* 3EF38 8003E338 8D650000 */  lw        $a1, ($t3)
.L8003E33C:
/* 3EF3C 8003E33C 8D690004 */  lw        $t1, 4($t3)
/* 3EF40 8003E340 3C0A8010 */  lui       $t2, 0x8010
/* 3EF44 8003E344 90A2001C */  lbu       $v0, 0x1c($a1)
/* 3EF48 8003E348 9123001C */  lbu       $v1, 0x1c($t1)
/* 3EF4C 8003E34C 254ACCB0 */  addiu     $t2, $t2, -0x3350
/* 3EF50 8003E350 5043000F */  beql      $v0, $v1, .L8003E390
/* 3EF54 8003E354 91020000 */  lbu       $v0, ($t0)
/* 3EF58 8003E358 9124001D */  lbu       $a0, 0x1d($t1)
/* 3EF5C 8003E35C 5044000C */  beql      $v0, $a0, .L8003E390
/* 3EF60 8003E360 91020000 */  lbu       $v0, ($t0)
/* 3EF64 8003E364 90A2001D */  lbu       $v0, 0x1d($a1)
/* 3EF68 8003E368 50430009 */  beql      $v0, $v1, .L8003E390
/* 3EF6C 8003E36C 91020000 */  lbu       $v0, ($t0)
/* 3EF70 8003E370 10440006 */  beq       $v0, $a0, .L8003E38C
/* 3EF74 8003E374 3C048007 */  lui       $a0, 0x8007
/* 3EF78 8003E378 A1400000 */  sb        $zero, ($t2)
/* 3EF7C 8003E37C 0C010830 */  jal       func_800420C0
/* 3EF80 8003E380 24847E18 */  addiu     $a0, $a0, 0x7e18
/* 3EF84 8003E384 100001EB */  b         .L8003EB34
/* 3EF88 8003E388 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E38C:
/* 3EF8C 8003E38C 91020000 */  lbu       $v0, ($t0)
.L8003E390:
/* 3EF90 8003E390 24030002 */  addiu     $v1, $zero, 2
/* 3EF94 8003E394 A1400000 */  sb        $zero, ($t2)
/* 3EF98 8003E398 10430005 */  beq       $v0, $v1, .L8003E3B0
/* 3EF9C 8003E39C 24010003 */  addiu     $at, $zero, 3
/* 3EFA0 8003E3A0 1041001B */  beq       $v0, $at, .L8003E410
/* 3EFA4 8003E3A4 3C188008 */  lui       $t8, 0x8008
/* 3EFA8 8003E3A8 10000026 */  b         .L8003E444
/* 3EFAC 8003E3AC 3C048007 */  lui       $a0, 0x8007
.L8003E3B0:
/* 3EFB0 8003E3B0 91020001 */  lbu       $v0, 1($t0)
/* 3EFB4 8003E3B4 24010003 */  addiu     $at, $zero, 3
/* 3EFB8 8003E3B8 10430005 */  beq       $v0, $v1, .L8003E3D0
/* 3EFBC 8003E3BC 00000000 */  nop       
/* 3EFC0 8003E3C0 10410009 */  beq       $v0, $at, .L8003E3E8
/* 3EFC4 8003E3C4 00000000 */  nop       
/* 3EFC8 8003E3C8 1000000D */  b         .L8003E400
/* 3EFCC 8003E3CC 00000000 */  nop       
.L8003E3D0:
/* 3EFD0 8003E3D0 0C01071C */  jal       func_80041C70
/* 3EFD4 8003E3D4 2404025D */  addiu     $a0, $zero, 0x25d
/* 3EFD8 8003E3D8 0C01071C */  jal       func_80041C70
/* 3EFDC 8003E3DC 24040268 */  addiu     $a0, $zero, 0x268
/* 3EFE0 8003E3E0 100001D4 */  b         .L8003EB34
/* 3EFE4 8003E3E4 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E3E8:
/* 3EFE8 8003E3E8 0C01071C */  jal       func_80041C70
/* 3EFEC 8003E3EC 2404025F */  addiu     $a0, $zero, 0x25f
/* 3EFF0 8003E3F0 0C01071C */  jal       func_80041C70
/* 3EFF4 8003E3F4 24040263 */  addiu     $a0, $zero, 0x263
/* 3EFF8 8003E3F8 100001CE */  b         .L8003EB34
/* 3EFFC 8003E3FC 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E400:
/* 3F000 8003E400 0C01071C */  jal       func_80041C70
/* 3F004 8003E404 24040271 */  addiu     $a0, $zero, 0x271
/* 3F008 8003E408 100001CA */  b         .L8003EB34
/* 3F00C 8003E40C 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E410:
/* 3F010 8003E410 910F0001 */  lbu       $t7, 1($t0)
/* 3F014 8003E414 146F0007 */  bne       $v1, $t7, .L8003E434
/* 3F018 8003E418 00000000 */  nop       
/* 3F01C 8003E41C 0C01071C */  jal       func_80041C70
/* 3F020 8003E420 2404025B */  addiu     $a0, $zero, 0x25b
/* 3F024 8003E424 0C01071C */  jal       func_80041C70
/* 3F028 8003E428 24040263 */  addiu     $a0, $zero, 0x263
/* 3F02C 8003E42C 100001C1 */  b         .L8003EB34
/* 3F030 8003E430 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E434:
/* 3F034 8003E434 0C01071C */  jal       func_80041C70
/* 3F038 8003E438 24040271 */  addiu     $a0, $zero, 0x271
/* 3F03C 8003E43C 100001BD */  b         .L8003EB34
/* 3F040 8003E440 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E444:
/* 3F044 8003E444 93188400 */  lbu       $t8, -0x7c00($t8)
/* 3F048 8003E448 17000006 */  bnez      $t8, .L8003E464
/* 3F04C 8003E44C 00000000 */  nop       
/* 3F050 8003E450 3C048007 */  lui       $a0, 0x8007
/* 3F054 8003E454 0C010830 */  jal       func_800420C0
/* 3F058 8003E458 24847E78 */  addiu     $a0, $a0, 0x7e78
/* 3F05C 8003E45C 100001B5 */  b         .L8003EB34
/* 3F060 8003E460 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E464:
/* 3F064 8003E464 0C010830 */  jal       func_800420C0
/* 3F068 8003E468 24847DF0 */  addiu     $a0, $a0, 0x7df0
/* 3F06C 8003E46C 100001B1 */  b         .L8003EB34
/* 3F070 8003E470 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E474:
/* 3F074 8003E474 9339CCB3 */  lbu       $t9, -0x334d($t9)
/* 3F078 8003E478 3C0E8010 */  lui       $t6, 0x8010
/* 3F07C 8003E47C 13200007 */  beqz      $t9, .L8003E49C
/* 3F080 8003E480 00000000 */  nop       
/* 3F084 8003E484 3C048007 */  lui       $a0, 0x8007
/* 3F088 8003E488 0C010830 */  jal       func_800420C0
/* 3F08C 8003E48C 24847E38 */  addiu     $a0, $a0, 0x7e38
/* 3F090 8003E490 3C018010 */  lui       $at, 0x8010
/* 3F094 8003E494 100001A6 */  b         .L8003EB30
/* 3F098 8003E498 A020CCB3 */  sb        $zero, -0x334d($at)
.L8003E49C:
/* 3F09C 8003E49C 91CECCB4 */  lbu       $t6, -0x334c($t6)
/* 3F0A0 8003E4A0 3C0F8010 */  lui       $t7, 0x8010
/* 3F0A4 8003E4A4 11C00007 */  beqz      $t6, .L8003E4C4
/* 3F0A8 8003E4A8 00000000 */  nop       
/* 3F0AC 8003E4AC 3C048007 */  lui       $a0, 0x8007
/* 3F0B0 8003E4B0 0C010830 */  jal       func_800420C0
/* 3F0B4 8003E4B4 24847E40 */  addiu     $a0, $a0, 0x7e40
/* 3F0B8 8003E4B8 3C018010 */  lui       $at, 0x8010
/* 3F0BC 8003E4BC 1000019C */  b         .L8003EB30
/* 3F0C0 8003E4C0 A020CCB4 */  sb        $zero, -0x334c($at)
.L8003E4C4:
/* 3F0C4 8003E4C4 91EFCCB5 */  lbu       $t7, -0x334b($t7)
/* 3F0C8 8003E4C8 AFA4001C */  sw        $a0, 0x1c($sp)
/* 3F0CC 8003E4CC 3C048007 */  lui       $a0, 0x8007
/* 3F0D0 8003E4D0 11E00006 */  beqz      $t7, .L8003E4EC
/* 3F0D4 8003E4D4 8FAC001C */  lw        $t4, 0x1c($sp)
/* 3F0D8 8003E4D8 0C010830 */  jal       func_800420C0
/* 3F0DC 8003E4DC 24847E50 */  addiu     $a0, $a0, 0x7e50
/* 3F0E0 8003E4E0 3C018010 */  lui       $at, 0x8010
/* 3F0E4 8003E4E4 10000192 */  b         .L8003EB30
/* 3F0E8 8003E4E8 A020CCB5 */  sb        $zero, -0x334b($at)
.L8003E4EC:
/* 3F0EC 8003E4EC 94AA0028 */  lhu       $t2, 0x28($a1)
/* 3F0F0 8003E4F0 3C013F00 */  lui       $at, 0x3f00
/* 3F0F4 8003E4F4 44810000 */  mtc1      $at, $f0
/* 3F0F8 8003E4F8 448A2000 */  mtc1      $t2, $f4
/* 3F0FC 8003E4FC 8C620024 */  lw        $v0, 0x24($v1)
/* 3F100 8003E500 05410005 */  bgez      $t2, .L8003E518
/* 3F104 8003E504 468021A0 */  cvt.s.w   $f6, $f4
/* 3F108 8003E508 3C014F80 */  lui       $at, 0x4f80
/* 3F10C 8003E50C 44814000 */  mtc1      $at, $f8
/* 3F110 8003E510 00000000 */  nop       
/* 3F114 8003E514 46083180 */  add.s     $f6, $f6, $f8
.L8003E518:
/* 3F118 8003E518 2458FFFF */  addiu     $t8, $v0, -1
/* 3F11C 8003E51C 3319000F */  andi      $t9, $t8, 0xf
/* 3F120 8003E520 00197040 */  sll       $t6, $t9, 1
/* 3F124 8003E524 006E7821 */  addu      $t7, $v1, $t6
/* 3F128 8003E528 3059000F */  andi      $t9, $v0, 0xf
/* 3F12C 8003E52C 95F80000 */  lhu       $t8, ($t7)
/* 3F130 8003E530 00197040 */  sll       $t6, $t9, 1
/* 3F134 8003E534 006E7821 */  addu      $t7, $v1, $t6
/* 3F138 8003E538 95F90000 */  lhu       $t9, ($t7)
/* 3F13C 8003E53C 46003282 */  mul.s     $f10, $f6, $f0
/* 3F140 8003E540 03197023 */  subu      $t6, $t8, $t9
/* 3F144 8003E544 448E8000 */  mtc1      $t6, $f16
/* 3F148 8003E548 00000000 */  nop       
/* 3F14C 8003E54C 468084A0 */  cvt.s.w   $f18, $f16
/* 3F150 8003E550 4612503C */  c.lt.s    $f10, $f18
/* 3F154 8003E554 00000000 */  nop       
/* 3F158 8003E558 45020040 */  bc1fl     .L8003E65C
/* 3F15C 8003E55C 00C7082A */  slt       $at, $a2, $a3
/* 3F160 8003E560 95240028 */  lhu       $a0, 0x28($t1)
/* 3F164 8003E564 8C6200A8 */  lw        $v0, 0xa8($v1)
/* 3F168 8003E568 44842000 */  mtc1      $a0, $f4
/* 3F16C 8003E56C 244FFFFF */  addiu     $t7, $v0, -1
/* 3F170 8003E570 04810005 */  bgez      $a0, .L8003E588
/* 3F174 8003E574 46802220 */  cvt.s.w   $f8, $f4
/* 3F178 8003E578 3C014F80 */  lui       $at, 0x4f80
/* 3F17C 8003E57C 44813000 */  mtc1      $at, $f6
/* 3F180 8003E580 00000000 */  nop       
/* 3F184 8003E584 46064200 */  add.s     $f8, $f8, $f6
.L8003E588:
/* 3F188 8003E588 31F8000F */  andi      $t8, $t7, 0xf
/* 3F18C 8003E58C 0018C840 */  sll       $t9, $t8, 1
/* 3F190 8003E590 00797021 */  addu      $t6, $v1, $t9
/* 3F194 8003E594 3058000F */  andi      $t8, $v0, 0xf
/* 3F198 8003E598 95CF0084 */  lhu       $t7, 0x84($t6)
/* 3F19C 8003E59C 0018C840 */  sll       $t9, $t8, 1
/* 3F1A0 8003E5A0 00797021 */  addu      $t6, $v1, $t9
/* 3F1A4 8003E5A4 95D80084 */  lhu       $t8, 0x84($t6)
/* 3F1A8 8003E5A8 46004402 */  mul.s     $f16, $f8, $f0
/* 3F1AC 8003E5AC 01F8C823 */  subu      $t9, $t7, $t8
/* 3F1B0 8003E5B0 44995000 */  mtc1      $t9, $f10
/* 3F1B4 8003E5B4 00000000 */  nop       
/* 3F1B8 8003E5B8 468054A0 */  cvt.s.w   $f18, $f10
/* 3F1BC 8003E5BC 4612803C */  c.lt.s    $f16, $f18
/* 3F1C0 8003E5C0 00000000 */  nop       
/* 3F1C4 8003E5C4 45020025 */  bc1fl     .L8003E65C
/* 3F1C8 8003E5C8 00C7082A */  slt       $at, $a2, $a3
/* 3F1CC 8003E5CC 24080064 */  addiu     $t0, $zero, 0x64
/* 3F1D0 8003E5D0 03E80019 */  multu     $ra, $t0
/* 3F1D4 8003E5D4 00007012 */  mflo      $t6
/* 3F1D8 8003E5D8 00000000 */  nop       
/* 3F1DC 8003E5DC 00000000 */  nop       
/* 3F1E0 8003E5E0 01CA001B */  divu      $zero, $t6, $t2
/* 3F1E4 8003E5E4 00007812 */  mflo      $t7
/* 3F1E8 8003E5E8 2DE10014 */  sltiu     $at, $t7, 0x14
/* 3F1EC 8003E5EC 15400002 */  bnez      $t2, .L8003E5F8
/* 3F1F0 8003E5F0 00000000 */  nop       
/* 3F1F4 8003E5F4 0007000D */  break     7
.L8003E5F8:
/* 3F1F8 8003E5F8 10200012 */  beqz      $at, .L8003E644
/* 3F1FC 8003E5FC 00000000 */  nop       
/* 3F200 8003E600 01880019 */  multu     $t4, $t0
/* 3F204 8003E604 0000C012 */  mflo      $t8
/* 3F208 8003E608 00000000 */  nop       
/* 3F20C 8003E60C 00000000 */  nop       
/* 3F210 8003E610 0304001B */  divu      $zero, $t8, $a0
/* 3F214 8003E614 0000C812 */  mflo      $t9
/* 3F218 8003E618 2F210014 */  sltiu     $at, $t9, 0x14
/* 3F21C 8003E61C 14800002 */  bnez      $a0, .L8003E628
/* 3F220 8003E620 00000000 */  nop       
/* 3F224 8003E624 0007000D */  break     7
.L8003E628:
/* 3F228 8003E628 3C048007 */  lui       $a0, 0x8007
/* 3F22C 8003E62C 10200005 */  beqz      $at, .L8003E644
/* 3F230 8003E630 00000000 */  nop       
/* 3F234 8003E634 0C010830 */  jal       func_800420C0
/* 3F238 8003E638 24847E60 */  addiu     $a0, $a0, 0x7e60
/* 3F23C 8003E63C 1000013D */  b         .L8003EB34
/* 3F240 8003E640 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E644:
/* 3F244 8003E644 3C048007 */  lui       $a0, 0x8007
/* 3F248 8003E648 0C010830 */  jal       func_800420C0
/* 3F24C 8003E64C 24847E58 */  addiu     $a0, $a0, 0x7e58
/* 3F250 8003E650 10000138 */  b         .L8003EB34
/* 3F254 8003E654 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3F258 8003E658 00C7082A */  slt       $at, $a2, $a3
.L8003E65C:
/* 3F25C 8003E65C 14200003 */  bnez      $at, .L8003E66C
/* 3F260 8003E660 00087080 */  sll       $t6, $t0, 2
/* 3F264 8003E664 10000002 */  b         .L8003E670
/* 3F268 8003E668 00C71023 */  subu      $v0, $a2, $a3
.L8003E66C:
/* 3F26C 8003E66C 00E61023 */  subu      $v0, $a3, $a2
.L8003E670:
/* 3F270 8003E670 016E7821 */  addu      $t7, $t3, $t6
/* 3F274 8003E674 8DE50000 */  lw        $a1, ($t7)
/* 3F278 8003E678 44828000 */  mtc1      $v0, $f16
/* 3F27C 8003E67C 000DC880 */  sll       $t9, $t5, 2
/* 3F280 8003E680 94B80028 */  lhu       $t8, 0x28($a1)
/* 3F284 8003E684 01797021 */  addu      $t6, $t3, $t9
/* 3F288 8003E688 3C0141F0 */  lui       $at, 0x41f0
/* 3F28C 8003E68C 44982000 */  mtc1      $t8, $f4
/* 3F290 8003E690 07010005 */  bgez      $t8, .L8003E6A8
/* 3F294 8003E694 46802021 */  cvt.d.w   $f0, $f4
/* 3F298 8003E698 44813800 */  mtc1      $at, $f7
/* 3F29C 8003E69C 44803000 */  mtc1      $zero, $f6
/* 3F2A0 8003E6A0 00000000 */  nop       
/* 3F2A4 8003E6A4 46260000 */  add.d     $f0, $f0, $f6
.L8003E6A8:
/* 3F2A8 8003E6A8 3C018008 */  lui       $at, 0x8008
/* 3F2AC 8003E6AC D428C7E0 */  ldc1      $f8, -0x3820($at)
/* 3F2B0 8003E6B0 468084A1 */  cvt.d.w   $f18, $f16
/* 3F2B4 8003E6B4 46280282 */  mul.d     $f10, $f0, $f8
/* 3F2B8 8003E6B8 4632503C */  c.lt.d    $f10, $f18
/* 3F2BC 8003E6BC 00000000 */  nop       
/* 3F2C0 8003E6C0 45020044 */  bc1fl     .L8003E7D4
/* 3F2C4 8003E6C4 00C7082A */  slt       $at, $a2, $a3
/* 3F2C8 8003E6C8 8DC20000 */  lw        $v0, ($t6)
/* 3F2CC 8003E6CC 24080064 */  addiu     $t0, $zero, 0x64
/* 3F2D0 8003E6D0 9443000C */  lhu       $v1, 0xc($v0)
/* 3F2D4 8003E6D4 94440028 */  lhu       $a0, 0x28($v0)
/* 3F2D8 8003E6D8 00680019 */  multu     $v1, $t0
/* 3F2DC 8003E6DC 00007812 */  mflo      $t7
/* 3F2E0 8003E6E0 00000000 */  nop       
/* 3F2E4 8003E6E4 00000000 */  nop       
/* 3F2E8 8003E6E8 01E4001B */  divu      $zero, $t7, $a0
/* 3F2EC 8003E6EC 0000C012 */  mflo      $t8
/* 3F2F0 8003E6F0 2F010047 */  sltiu     $at, $t8, 0x47
/* 3F2F4 8003E6F4 14800002 */  bnez      $a0, .L8003E700
/* 3F2F8 8003E6F8 00000000 */  nop       
/* 3F2FC 8003E6FC 0007000D */  break     7
.L8003E700:
/* 3F300 8003E700 54200034 */  bnel      $at, $zero, .L8003E7D4
/* 3F304 8003E704 00C7082A */  slt       $at, $a2, $a3
/* 3F308 8003E708 50CA0032 */  beql      $a2, $t2, .L8003E7D4
/* 3F30C 8003E70C 00C7082A */  slt       $at, $a2, $a3
/* 3F310 8003E710 95390028 */  lhu       $t9, 0x28($t1)
/* 3F314 8003E714 50F9002F */  beql      $a3, $t9, .L8003E7D4
/* 3F318 8003E718 00C7082A */  slt       $at, $a2, $a3
/* 3F31C 8003E71C 44842000 */  mtc1      $a0, $f4
/* 3F320 8003E720 44839000 */  mtc1      $v1, $f18
/* 3F324 8003E724 04810006 */  bgez      $a0, .L8003E740
/* 3F328 8003E728 468021A1 */  cvt.d.w   $f6, $f4
/* 3F32C 8003E72C 3C0141F0 */  lui       $at, 0x41f0
/* 3F330 8003E730 44814800 */  mtc1      $at, $f9
/* 3F334 8003E734 44804000 */  mtc1      $zero, $f8
/* 3F338 8003E738 00000000 */  nop       
/* 3F33C 8003E73C 46283180 */  add.d     $f6, $f6, $f8
.L8003E740:
/* 3F340 8003E740 3C018008 */  lui       $at, 0x8008
/* 3F344 8003E744 D430C7E8 */  ldc1      $f16, -0x3818($at)
/* 3F348 8003E748 3C0141F0 */  lui       $at, 0x41f0
/* 3F34C 8003E74C 46809121 */  cvt.d.w   $f4, $f18
/* 3F350 8003E750 46303282 */  mul.d     $f10, $f6, $f16
/* 3F354 8003E754 04630006 */  bgezl     $v1, .L8003E770
/* 3F358 8003E758 4624503C */  c.lt.d    $f10, $f4
/* 3F35C 8003E75C 44814800 */  mtc1      $at, $f9
/* 3F360 8003E760 44804000 */  mtc1      $zero, $f8
/* 3F364 8003E764 00000000 */  nop       
/* 3F368 8003E768 46282100 */  add.d     $f4, $f4, $f8
/* 3F36C 8003E76C 4624503C */  c.lt.d    $f10, $f4
.L8003E770:
/* 3F370 8003E770 00000000 */  nop       
/* 3F374 8003E774 45020017 */  bc1fl     .L8003E7D4
/* 3F378 8003E778 00C7082A */  slt       $at, $a2, $a3
/* 3F37C 8003E77C 94AE000C */  lhu       $t6, 0xc($a1)
/* 3F380 8003E780 3C0141F0 */  lui       $at, 0x41f0
/* 3F384 8003E784 3C048007 */  lui       $a0, 0x8007
/* 3F388 8003E788 448E3000 */  mtc1      $t6, $f6
/* 3F38C 8003E78C 05C10005 */  bgez      $t6, .L8003E7A4
/* 3F390 8003E790 46803421 */  cvt.d.w   $f16, $f6
/* 3F394 8003E794 44819800 */  mtc1      $at, $f19
/* 3F398 8003E798 44809000 */  mtc1      $zero, $f18
/* 3F39C 8003E79C 00000000 */  nop       
/* 3F3A0 8003E7A0 46328400 */  add.d     $f16, $f16, $f18
.L8003E7A4:
/* 3F3A4 8003E7A4 3C018008 */  lui       $at, 0x8008
/* 3F3A8 8003E7A8 D428C7F0 */  ldc1      $f8, -0x3810($at)
/* 3F3AC 8003E7AC 46280282 */  mul.d     $f10, $f0, $f8
/* 3F3B0 8003E7B0 462A803C */  c.lt.d    $f16, $f10
/* 3F3B4 8003E7B4 00000000 */  nop       
/* 3F3B8 8003E7B8 45020006 */  bc1fl     .L8003E7D4
/* 3F3BC 8003E7BC 00C7082A */  slt       $at, $a2, $a3
/* 3F3C0 8003E7C0 0C010830 */  jal       func_800420C0
/* 3F3C4 8003E7C4 24847E20 */  addiu     $a0, $a0, 0x7e20
/* 3F3C8 8003E7C8 100000DA */  b         .L8003EB34
/* 3F3CC 8003E7CC 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3F3D0 8003E7D0 00C7082A */  slt       $at, $a2, $a3
.L8003E7D4:
/* 3F3D4 8003E7D4 14200003 */  bnez      $at, .L8003E7E4
/* 3F3D8 8003E7D8 00E61023 */  subu      $v0, $a3, $a2
/* 3F3DC 8003E7DC 10000001 */  b         .L8003E7E4
/* 3F3E0 8003E7E0 00C71023 */  subu      $v0, $a2, $a3
.L8003E7E4:
/* 3F3E4 8003E7E4 2841000A */  slti      $at, $v0, 0xa
/* 3F3E8 8003E7E8 50200038 */  beql      $at, $zero, .L8003E8CC
/* 3F3EC 8003E7EC 00C7082A */  slt       $at, $a2, $a3
/* 3F3F0 8003E7F0 448A2000 */  mtc1      $t2, $f4
/* 3F3F4 8003E7F4 3C013FE0 */  lui       $at, 0x3fe0
/* 3F3F8 8003E7F8 44810800 */  mtc1      $at, $f1
/* 3F3FC 8003E7FC 44800000 */  mtc1      $zero, $f0
/* 3F400 8003E800 05410006 */  bgez      $t2, .L8003E81C
/* 3F404 8003E804 468021A1 */  cvt.d.w   $f6, $f4
/* 3F408 8003E808 3C0141F0 */  lui       $at, 0x41f0
/* 3F40C 8003E80C 44819800 */  mtc1      $at, $f19
/* 3F410 8003E810 44809000 */  mtc1      $zero, $f18
/* 3F414 8003E814 00000000 */  nop       
/* 3F418 8003E818 46323180 */  add.d     $f6, $f6, $f18
.L8003E81C:
/* 3F41C 8003E81C 449F8000 */  mtc1      $ra, $f16
/* 3F420 8003E820 46203202 */  mul.d     $f8, $f6, $f0
/* 3F424 8003E824 3C0141F0 */  lui       $at, 0x41f0
/* 3F428 8003E828 07E10005 */  bgez      $ra, .L8003E840
/* 3F42C 8003E82C 468082A1 */  cvt.d.w   $f10, $f16
/* 3F430 8003E830 44812800 */  mtc1      $at, $f5
/* 3F434 8003E834 44802000 */  mtc1      $zero, $f4
/* 3F438 8003E838 00000000 */  nop       
/* 3F43C 8003E83C 46245280 */  add.d     $f10, $f10, $f4
.L8003E840:
/* 3F440 8003E840 462A403C */  c.lt.d    $f8, $f10
/* 3F444 8003E844 00000000 */  nop       
/* 3F448 8003E848 45020020 */  bc1fl     .L8003E8CC
/* 3F44C 8003E84C 00C7082A */  slt       $at, $a2, $a3
/* 3F450 8003E850 95240028 */  lhu       $a0, 0x28($t1)
/* 3F454 8003E854 448C4000 */  mtc1      $t4, $f8
/* 3F458 8003E858 3C0141F0 */  lui       $at, 0x41f0
/* 3F45C 8003E85C 44849000 */  mtc1      $a0, $f18
/* 3F460 8003E860 468042A1 */  cvt.d.w   $f10, $f8
/* 3F464 8003E864 04810005 */  bgez      $a0, .L8003E87C
/* 3F468 8003E868 468091A1 */  cvt.d.w   $f6, $f18
/* 3F46C 8003E86C 44818800 */  mtc1      $at, $f17
/* 3F470 8003E870 44808000 */  mtc1      $zero, $f16
/* 3F474 8003E874 00000000 */  nop       
/* 3F478 8003E878 46303180 */  add.d     $f6, $f6, $f16
.L8003E87C:
/* 3F47C 8003E87C 46203102 */  mul.d     $f4, $f6, $f0
/* 3F480 8003E880 05810005 */  bgez      $t4, .L8003E898
/* 3F484 8003E884 3C0141F0 */  lui       $at, 0x41f0
/* 3F488 8003E888 44819800 */  mtc1      $at, $f19
/* 3F48C 8003E88C 44809000 */  mtc1      $zero, $f18
/* 3F490 8003E890 00000000 */  nop       
/* 3F494 8003E894 46325280 */  add.d     $f10, $f10, $f18
.L8003E898:
/* 3F498 8003E898 462A203C */  c.lt.d    $f4, $f10
/* 3F49C 8003E89C 00CA082A */  slt       $at, $a2, $t2
/* 3F4A0 8003E8A0 4502000A */  bc1fl     .L8003E8CC
/* 3F4A4 8003E8A4 00C7082A */  slt       $at, $a2, $a3
/* 3F4A8 8003E8A8 10200007 */  beqz      $at, .L8003E8C8
/* 3F4AC 8003E8AC 00E4082A */  slt       $at, $a3, $a0
/* 3F4B0 8003E8B0 10200005 */  beqz      $at, .L8003E8C8
/* 3F4B4 8003E8B4 3C048007 */  lui       $a0, 0x8007
/* 3F4B8 8003E8B8 0C010830 */  jal       func_800420C0
/* 3F4BC 8003E8BC 24847E30 */  addiu     $a0, $a0, 0x7e30
/* 3F4C0 8003E8C0 1000009C */  b         .L8003EB34
/* 3F4C4 8003E8C4 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E8C8:
/* 3F4C8 8003E8C8 00C7082A */  slt       $at, $a2, $a3
.L8003E8CC:
/* 3F4CC 8003E8CC 14200003 */  bnez      $at, .L8003E8DC
/* 3F4D0 8003E8D0 00E61023 */  subu      $v0, $a3, $a2
/* 3F4D4 8003E8D4 10000001 */  b         .L8003E8DC
/* 3F4D8 8003E8D8 00C71023 */  subu      $v0, $a2, $a3
.L8003E8DC:
/* 3F4DC 8003E8DC 2841000A */  slti      $at, $v0, 0xa
/* 3F4E0 8003E8E0 10200033 */  beqz      $at, .L8003E9B0
/* 3F4E4 8003E8E4 3C188008 */  lui       $t8, 0x8008
/* 3F4E8 8003E8E8 449F8000 */  mtc1      $ra, $f16
/* 3F4EC 8003E8EC 3C018008 */  lui       $at, 0x8008
/* 3F4F0 8003E8F0 D420C7F8 */  ldc1      $f0, -0x3808($at)
/* 3F4F4 8003E8F4 07E10006 */  bgez      $ra, .L8003E910
/* 3F4F8 8003E8F8 468081A1 */  cvt.d.w   $f6, $f16
/* 3F4FC 8003E8FC 3C0141F0 */  lui       $at, 0x41f0
/* 3F500 8003E900 44814800 */  mtc1      $at, $f9
/* 3F504 8003E904 44804000 */  mtc1      $zero, $f8
/* 3F508 8003E908 00000000 */  nop       
/* 3F50C 8003E90C 46283180 */  add.d     $f6, $f6, $f8
.L8003E910:
/* 3F510 8003E910 448A9000 */  mtc1      $t2, $f18
/* 3F514 8003E914 3C0141F0 */  lui       $at, 0x41f0
/* 3F518 8003E918 05410005 */  bgez      $t2, .L8003E930
/* 3F51C 8003E91C 46809121 */  cvt.d.w   $f4, $f18
/* 3F520 8003E920 44815800 */  mtc1      $at, $f11
/* 3F524 8003E924 44805000 */  mtc1      $zero, $f10
/* 3F528 8003E928 00000000 */  nop       
/* 3F52C 8003E92C 462A2100 */  add.d     $f4, $f4, $f10
.L8003E930:
/* 3F530 8003E930 46202402 */  mul.d     $f16, $f4, $f0
/* 3F534 8003E934 4630303C */  c.lt.d    $f6, $f16
/* 3F538 8003E938 00000000 */  nop       
/* 3F53C 8003E93C 4500001C */  bc1f      .L8003E9B0
/* 3F540 8003E940 00000000 */  nop       
/* 3F544 8003E944 448C4000 */  mtc1      $t4, $f8
/* 3F548 8003E948 3C0141F0 */  lui       $at, 0x41f0
/* 3F54C 8003E94C 05810005 */  bgez      $t4, .L8003E964
/* 3F550 8003E950 468044A1 */  cvt.d.w   $f18, $f8
/* 3F554 8003E954 44815800 */  mtc1      $at, $f11
/* 3F558 8003E958 44805000 */  mtc1      $zero, $f10
/* 3F55C 8003E95C 00000000 */  nop       
/* 3F560 8003E960 462A9480 */  add.d     $f18, $f18, $f10
.L8003E964:
/* 3F564 8003E964 952F0028 */  lhu       $t7, 0x28($t1)
/* 3F568 8003E968 3C0141F0 */  lui       $at, 0x41f0
/* 3F56C 8003E96C 3C048007 */  lui       $a0, 0x8007
/* 3F570 8003E970 448F2000 */  mtc1      $t7, $f4
/* 3F574 8003E974 05E10005 */  bgez      $t7, .L8003E98C
/* 3F578 8003E978 468021A1 */  cvt.d.w   $f6, $f4
/* 3F57C 8003E97C 44818800 */  mtc1      $at, $f17
/* 3F580 8003E980 44808000 */  mtc1      $zero, $f16
/* 3F584 8003E984 00000000 */  nop       
/* 3F588 8003E988 46303180 */  add.d     $f6, $f6, $f16
.L8003E98C:
/* 3F58C 8003E98C 46203202 */  mul.d     $f8, $f6, $f0
/* 3F590 8003E990 4628903C */  c.lt.d    $f18, $f8
/* 3F594 8003E994 00000000 */  nop       
/* 3F598 8003E998 45000005 */  bc1f      .L8003E9B0
/* 3F59C 8003E99C 00000000 */  nop       
/* 3F5A0 8003E9A0 0C010830 */  jal       func_800420C0
/* 3F5A4 8003E9A4 24847E28 */  addiu     $a0, $a0, 0x7e28
/* 3F5A8 8003E9A8 10000062 */  b         .L8003EB34
/* 3F5AC 8003E9AC 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E9B0:
/* 3F5B0 8003E9B0 93188400 */  lbu       $t8, -0x7c00($t8)
/* 3F5B4 8003E9B4 3C048007 */  lui       $a0, 0x8007
/* 3F5B8 8003E9B8 17000006 */  bnez      $t8, .L8003E9D4
/* 3F5BC 8003E9BC 00000000 */  nop       
/* 3F5C0 8003E9C0 3C048007 */  lui       $a0, 0x8007
/* 3F5C4 8003E9C4 0C010830 */  jal       func_800420C0
/* 3F5C8 8003E9C8 24847E78 */  addiu     $a0, $a0, 0x7e78
/* 3F5CC 8003E9CC 10000059 */  b         .L8003EB34
/* 3F5D0 8003E9D0 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E9D4:
/* 3F5D4 8003E9D4 0C010830 */  jal       func_800420C0
/* 3F5D8 8003E9D8 24847DF0 */  addiu     $a0, $a0, 0x7df0
/* 3F5DC 8003E9DC 10000055 */  b         .L8003EB34
/* 3F5E0 8003E9E0 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003E9E4:
/* 3F5E4 8003E9E4 0C015B04 */  jal       func_80056C10
/* 3F5E8 8003E9E8 24040001 */  addiu     $a0, $zero, 1
/* 3F5EC 8003E9EC 3C018008 */  lui       $at, 0x8008
/* 3F5F0 8003E9F0 A02083BC */  sb        $zero, -0x7c44($at)
/* 3F5F4 8003E9F4 0C015B04 */  jal       func_80056C10
/* 3F5F8 8003E9F8 00402025 */  or        $a0, $v0, $zero
/* 3F5FC 8003E9FC 2404005A */  addiu     $a0, $zero, 0x5a
/* 3F600 8003EA00 0C00DC8D */  jal       func_80037234
/* 3F604 8003EA04 00002825 */  or        $a1, $zero, $zero
/* 3F608 8003EA08 2404005B */  addiu     $a0, $zero, 0x5b
/* 3F60C 8003EA0C 0C00DC8D */  jal       func_80037234
/* 3F610 8003EA10 00002825 */  or        $a1, $zero, $zero
/* 3F614 8003EA14 3C0B8010 */  lui       $t3, 0x8010
/* 3F618 8003EA18 256BCB18 */  addiu     $t3, $t3, -0x34e8
/* 3F61C 8003EA1C 8D650000 */  lw        $a1, ($t3)
/* 3F620 8003EA20 3C048008 */  lui       $a0, 0x8008
/* 3F624 8003EA24 248483CC */  addiu     $a0, $a0, -0x7c34
/* 3F628 8003EA28 50A00005 */  beql      $a1, $zero, .L8003EA40
/* 3F62C 8003EA2C 8D690004 */  lw        $t1, 4($t3)
/* 3F630 8003EA30 94B9000C */  lhu       $t9, 0xc($a1)
/* 3F634 8003EA34 3C018010 */  lui       $at, 0x8010
/* 3F638 8003EA38 AC39CB28 */  sw        $t9, -0x34d8($at)
/* 3F63C 8003EA3C 8D690004 */  lw        $t1, 4($t3)
.L8003EA40:
/* 3F640 8003EA40 51200005 */  beql      $t1, $zero, .L8003EA58
/* 3F644 8003EA44 8C8F0000 */  lw        $t7, ($a0)
/* 3F648 8003EA48 952E000C */  lhu       $t6, 0xc($t1)
/* 3F64C 8003EA4C 3C018010 */  lui       $at, 0x8010
/* 3F650 8003EA50 AC2ECB2C */  sw        $t6, -0x34d4($at)
/* 3F654 8003EA54 8C8F0000 */  lw        $t7, ($a0)
.L8003EA58:
/* 3F658 8003EA58 3C028010 */  lui       $v0, 0x8010
/* 3F65C 8003EA5C 2442CB48 */  addiu     $v0, $v0, -0x34b8
/* 3F660 8003EA60 25F80001 */  addiu     $t8, $t7, 1
/* 3F664 8003EA64 AC980000 */  sw        $t8, ($a0)
/* 3F668 8003EA68 3C048010 */  lui       $a0, 0x8010
/* 3F66C 8003EA6C 2484CC50 */  addiu     $a0, $a0, -0x33b0
/* 3F670 8003EA70 8C590078 */  lw        $t9, 0x78($v0)
.L8003EA74:
/* 3F674 8003EA74 8C43007C */  lw        $v1, 0x7c($v0)
/* 3F678 8003EA78 272E0001 */  addiu     $t6, $t9, 1
/* 3F67C 8003EA7C 10600003 */  beqz      $v1, .L8003EA8C
/* 3F680 8003EA80 AC4E0078 */  sw        $t6, 0x78($v0)
/* 3F684 8003EA84 246F0001 */  addiu     $t7, $v1, 1
/* 3F688 8003EA88 AC4F007C */  sw        $t7, 0x7c($v0)
.L8003EA8C:
/* 3F68C 8003EA8C 24420084 */  addiu     $v0, $v0, 0x84
/* 3F690 8003EA90 5444FFF8 */  bnel      $v0, $a0, .L8003EA74
/* 3F694 8003EA94 8C590078 */  lw        $t9, 0x78($v0)
/* 3F698 8003EA98 3C018010 */  lui       $at, 0x8010
/* 3F69C 8003EA9C A020CCB4 */  sb        $zero, -0x334c($at)
/* 3F6A0 8003EAA0 3C018010 */  lui       $at, 0x8010
/* 3F6A4 8003EAA4 A020CCB3 */  sb        $zero, -0x334d($at)
/* 3F6A8 8003EAA8 3C028008 */  lui       $v0, 0x8008
/* 3F6AC 8003EAAC 3C018010 */  lui       $at, 0x8010
/* 3F6B0 8003EAB0 244283E4 */  addiu     $v0, $v0, -0x7c1c
/* 3F6B4 8003EAB4 A020CCB5 */  sb        $zero, -0x334b($at)
/* 3F6B8 8003EAB8 10A0001D */  beqz      $a1, .L8003EB30
/* 3F6BC 8003EABC A0400000 */  sb        $zero, ($v0)
/* 3F6C0 8003EAC0 1120001B */  beqz      $t1, .L8003EB30
/* 3F6C4 8003EAC4 3C188008 */  lui       $t8, 0x8008
/* 3F6C8 8003EAC8 9318840C */  lbu       $t8, -0x7bf4($t8)
/* 3F6CC 8003EACC 53000019 */  beql      $t8, $zero, .L8003EB34
/* 3F6D0 8003EAD0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3F6D4 8003EAD4 94B9000C */  lhu       $t9, 0xc($a1)
/* 3F6D8 8003EAD8 53200016 */  beql      $t9, $zero, .L8003EB34
/* 3F6DC 8003EADC 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3F6E0 8003EAE0 952E000C */  lhu       $t6, 0xc($t1)
/* 3F6E4 8003EAE4 51C00013 */  beql      $t6, $zero, .L8003EB34
/* 3F6E8 8003EAE8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3F6EC 8003EAEC 0C011395 */  jal       func_80044E54
/* 3F6F0 8003EAF0 24040001 */  addiu     $a0, $zero, 1
/* 3F6F4 8003EAF4 5440000F */  bnel      $v0, $zero, .L8003EB34
/* 3F6F8 8003EAF8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3F6FC 8003EAFC 0C017C54 */  jal       func_8005F150
/* 3F700 8003EB00 00000000 */  nop       
/* 3F704 8003EB04 00402025 */  or        $a0, $v0, $zero
/* 3F708 8003EB08 00602825 */  or        $a1, $v1, $zero
/* 3F70C 8003EB0C 24060000 */  addiu     $a2, $zero, 0
/* 3F710 8003EB10 0C015D0F */  jal       func_8005743C
/* 3F714 8003EB14 24070002 */  addiu     $a3, $zero, 2
/* 3F718 8003EB18 54400006 */  bnel      $v0, $zero, .L8003EB34
/* 3F71C 8003EB1C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3F720 8003EB20 14600003 */  bnez      $v1, .L8003EB30
/* 3F724 8003EB24 3C048008 */  lui       $a0, 0x8008
/* 3F728 8003EB28 0C010830 */  jal       func_800420C0
/* 3F72C 8003EB2C 248480A8 */  addiu     $a0, $a0, -0x7f58
.L8003EB30:
/* 3F730 8003EB30 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003EB34:
/* 3F734 8003EB34 27BD0048 */  addiu     $sp, $sp, 0x48
/* 3F738 8003EB38 03E00008 */  jr        $ra
/* 3F73C 8003EB3C 00000000 */  nop       

glabel func_8003EB40
/* 3F740 8003EB40 3C018010 */  lui       $at, 0x8010
/* 3F744 8003EB44 A020CCB1 */  sb        $zero, -0x334f($at)
/* 3F748 8003EB48 3C018008 */  lui       $at, 0x8008
/* 3F74C 8003EB4C A42083F0 */  sh        $zero, -0x7c10($at)
/* 3F750 8003EB50 3C018008 */  lui       $at, 0x8008
/* 3F754 8003EB54 A42083F4 */  sh        $zero, -0x7c0c($at)
/* 3F758 8003EB58 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 3F75C 8003EB5C 3C018008 */  lui       $at, 0x8008
/* 3F760 8003EB60 AFBF0014 */  sw        $ra, 0x14($sp)
/* 3F764 8003EB64 00001825 */  or        $v1, $zero, $zero
/* 3F768 8003EB68 10A0018C */  beqz      $a1, .L8003F19C
/* 3F76C 8003EB6C A42083F8 */  sh        $zero, -0x7c08($at)
/* 3F770 8003EB70 1080018A */  beqz      $a0, .L8003F19C
/* 3F774 8003EB74 2C810005 */  sltiu     $at, $a0, 5
/* 3F778 8003EB78 10200188 */  beqz      $at, .L8003F19C
/* 3F77C 8003EB7C 2484FFFF */  addiu     $a0, $a0, -1
/* 3F780 8003EB80 3C078008 */  lui       $a3, 0x8008
/* 3F784 8003EB84 00E43821 */  addu      $a3, $a3, $a0
/* 3F788 8003EB88 90E78398 */  lbu       $a3, -0x7c68($a3)
/* 3F78C 8003EB8C 18E00183 */  blez      $a3, .L8003F19C
/* 3F790 8003EB90 28E10003 */  slti      $at, $a3, 3
/* 3F794 8003EB94 10200181 */  beqz      $at, .L8003F19C
/* 3F798 8003EB98 24E7FFFF */  addiu     $a3, $a3, -1
/* 3F79C 8003EB9C 3C0E8008 */  lui       $t6, 0x8008
/* 3F7A0 8003EBA0 30E700FF */  andi      $a3, $a3, 0xff
/* 3F7A4 8003EBA4 25CE8394 */  addiu     $t6, $t6, -0x7c6c
/* 3F7A8 8003EBA8 00EE1021 */  addu      $v0, $a3, $t6
/* 3F7AC 8003EBAC 904F0000 */  lbu       $t7, ($v0)
/* 3F7B0 8003EBB0 3C188010 */  lui       $t8, 0x8010
/* 3F7B4 8003EBB4 2718CB18 */  addiu     $t8, $t8, -0x34e8
/* 3F7B8 8003EBB8 108F0003 */  beq       $a0, $t7, .L8003EBC8
/* 3F7BC 8003EBBC 00073080 */  sll       $a2, $a3, 2
/* 3F7C0 8003EBC0 24030001 */  addiu     $v1, $zero, 1
/* 3F7C4 8003EBC4 A0440000 */  sb        $a0, ($v0)
.L8003EBC8:
/* 3F7C8 8003EBC8 00D81021 */  addu      $v0, $a2, $t8
/* 3F7CC 8003EBCC AC450000 */  sw        $a1, ($v0)
/* 3F7D0 8003EBD0 AFA20020 */  sw        $v0, 0x20($sp)
/* 3F7D4 8003EBD4 30E400FF */  andi      $a0, $a3, 0xff
/* 3F7D8 8003EBD8 A3A3003C */  sb        $v1, 0x3c($sp)
/* 3F7DC 8003EBDC AFA60024 */  sw        $a2, 0x24($sp)
/* 3F7E0 8003EBE0 0C00F5B7 */  jal       func_8003D6DC
/* 3F7E4 8003EBE4 A3A7003D */  sb        $a3, 0x3d($sp)
/* 3F7E8 8003EBE8 93A7003D */  lbu       $a3, 0x3d($sp)
/* 3F7EC 8003EBEC 8FAB0020 */  lw        $t3, 0x20($sp)
/* 3F7F0 8003EBF0 3C018010 */  lui       $at, 0x8010
/* 3F7F4 8003EBF4 38F90001 */  xori      $t9, $a3, 1
/* 3F7F8 8003EBF8 00390821 */  addu      $at, $at, $t9
/* 3F7FC 8003EBFC A020CCC8 */  sb        $zero, -0x3338($at)
/* 3F800 8003EC00 AFB9001C */  sw        $t9, 0x1c($sp)
/* 3F804 8003EC04 8D630000 */  lw        $v1, ($t3)
/* 3F808 8003EC08 8FA60024 */  lw        $a2, 0x24($sp)
/* 3F80C 8003EC0C 00076940 */  sll       $t5, $a3, 5
/* 3F810 8003EC10 946C000C */  lhu       $t4, 0xc($v1)
/* 3F814 8003EC14 3C018010 */  lui       $at, 0x8010
/* 3F818 8003EC18 3C0E8010 */  lui       $t6, 0x8010
/* 3F81C 8003EC1C 01A76821 */  addu      $t5, $t5, $a3
/* 3F820 8003EC20 000D6880 */  sll       $t5, $t5, 2
/* 3F824 8003EC24 25CECB48 */  addiu     $t6, $t6, -0x34b8
/* 3F828 8003EC28 00260821 */  addu      $at, $at, $a2
/* 3F82C 8003EC2C 01AE1021 */  addu      $v0, $t5, $t6
/* 3F830 8003EC30 AC2CCB28 */  sw        $t4, -0x34d8($at)
/* 3F834 8003EC34 8C4F0024 */  lw        $t7, 0x24($v0)
/* 3F838 8003EC38 25F80001 */  addiu     $t8, $t7, 1
/* 3F83C 8003EC3C AC580024 */  sw        $t8, 0x24($v0)
/* 3F840 8003EC40 9479000C */  lhu       $t9, 0xc($v1)
/* 3F844 8003EC44 330B000F */  andi      $t3, $t8, 0xf
/* 3F848 8003EC48 000B6040 */  sll       $t4, $t3, 1
/* 3F84C 8003EC4C 004C6821 */  addu      $t5, $v0, $t4
/* 3F850 8003EC50 A5B90000 */  sh        $t9, ($t5)
/* 3F854 8003EC54 9069000B */  lbu       $t1, 0xb($v1)
/* 3F858 8003EC58 19200150 */  blez      $t1, .L8003F19C
/* 3F85C 8003EC5C 01202825 */  or        $a1, $t1, $zero
/* 3F860 8003EC60 29210098 */  slti      $at, $t1, 0x98
/* 3F864 8003EC64 1020014D */  beqz      $at, .L8003F19C
/* 3F868 8003EC68 3C0E8008 */  lui       $t6, 0x8008
/* 3F86C 8003EC6C 25CE839C */  addiu     $t6, $t6, -0x7c64
/* 3F870 8003EC70 00EE3021 */  addu      $a2, $a3, $t6
/* 3F874 8003EC74 90C80000 */  lbu       $t0, ($a2)
/* 3F878 8003EC78 00001025 */  or        $v0, $zero, $zero
/* 3F87C 8003EC7C 000778C0 */  sll       $t7, $a3, 3
/* 3F880 8003EC80 1100000B */  beqz      $t0, .L8003ECB0
/* 3F884 8003EC84 01002025 */  or        $a0, $t0, $zero
/* 3F888 8003EC88 3C188010 */  lui       $t8, 0x8010
/* 3F88C 8003EC8C 2718CB38 */  addiu     $t8, $t8, -0x34c8
/* 3F890 8003EC90 01F81821 */  addu      $v1, $t7, $t8
.L8003EC94:
/* 3F894 8003EC94 906A0000 */  lbu       $t2, ($v1)
/* 3F898 8003EC98 24420001 */  addiu     $v0, $v0, 1
/* 3F89C 8003EC9C 0044082B */  sltu      $at, $v0, $a0
/* 3F8A0 8003ECA0 10AA00B7 */  beq       $a1, $t2, .L8003EF80
/* 3F8A4 8003ECA4 00000000 */  nop       
/* 3F8A8 8003ECA8 1420FFFA */  bnez      $at, .L8003EC94
/* 3F8AC 8003ECAC 24630001 */  addiu     $v1, $v1, 1
.L8003ECB0:
/* 3F8B0 8003ECB0 000758C0 */  sll       $t3, $a3, 3
/* 3F8B4 8003ECB4 01686021 */  addu      $t4, $t3, $t0
/* 3F8B8 8003ECB8 3C018010 */  lui       $at, 0x8010
/* 3F8BC 8003ECBC 002C0821 */  addu      $at, $at, $t4
/* 3F8C0 8003ECC0 25190001 */  addiu     $t9, $t0, 1
/* 3F8C4 8003ECC4 A029CB38 */  sb        $t1, -0x34c8($at)
/* 3F8C8 8003ECC8 332D00FF */  andi      $t5, $t9, 0xff
/* 3F8CC 8003ECCC 29A10008 */  slti      $at, $t5, 8
/* 3F8D0 8003ECD0 14200003 */  bnez      $at, .L8003ECE0
/* 3F8D4 8003ECD4 A0D90000 */  sb        $t9, ($a2)
/* 3F8D8 8003ECD8 240E0007 */  addiu     $t6, $zero, 7
/* 3F8DC 8003ECDC A0CE0000 */  sb        $t6, ($a2)
.L8003ECE0:
/* 3F8E0 8003ECE0 3C0F8008 */  lui       $t7, 0x8008
/* 3F8E4 8003ECE4 8DEF83CC */  lw        $t7, -0x7c34($t7)
/* 3F8E8 8003ECE8 3C018010 */  lui       $at, 0x8010
/* 3F8EC 8003ECEC 00270821 */  addu      $at, $at, $a3
/* 3F8F0 8003ECF0 11E0009C */  beqz      $t7, .L8003EF64
/* 3F8F4 8003ECF4 A020CB30 */  sb        $zero, -0x34d0($at)
/* 3F8F8 8003ECF8 24A400CB */  addiu     $a0, $a1, 0xcb
/* 3F8FC 8003ECFC 0C01071C */  jal       func_80041C70
/* 3F900 8003ED00 A3A7003D */  sb        $a3, 0x3d($sp)
/* 3F904 8003ED04 93B8003C */  lbu       $t8, 0x3c($sp)
/* 3F908 8003ED08 3C048007 */  lui       $a0, 0x8007
/* 3F90C 8003ED0C 93A7003D */  lbu       $a3, 0x3d($sp)
/* 3F910 8003ED10 13000004 */  beqz      $t8, .L8003ED24
/* 3F914 8003ED14 24847FEC */  addiu     $a0, $a0, 0x7fec
/* 3F918 8003ED18 0C010830 */  jal       func_800420C0
/* 3F91C 8003ED1C A3A7003D */  sb        $a3, 0x3d($sp)
/* 3F920 8003ED20 93A7003D */  lbu       $a3, 0x3d($sp)
.L8003ED24:
/* 3F924 8003ED24 8FAA001C */  lw        $t2, 0x1c($sp)
/* 3F928 8003ED28 3C048010 */  lui       $a0, 0x8010
/* 3F92C 8003ED2C 8FAC0020 */  lw        $t4, 0x20($sp)
/* 3F930 8003ED30 000A5880 */  sll       $t3, $t2, 2
/* 3F934 8003ED34 008B2021 */  addu      $a0, $a0, $t3
/* 3F938 8003ED38 8C84CB18 */  lw        $a0, -0x34e8($a0)
/* 3F93C 8003ED3C 50800118 */  beql      $a0, $zero, .L8003F1A0
/* 3F940 8003ED40 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3F944 8003ED44 8D990000 */  lw        $t9, ($t4)
/* 3F948 8003ED48 3C014F80 */  lui       $at, 0x4f80
/* 3F94C 8003ED4C 240F0001 */  addiu     $t7, $zero, 1
/* 3F950 8003ED50 932D0026 */  lbu       $t5, 0x26($t9)
/* 3F954 8003ED54 448D2000 */  mtc1      $t5, $f4
/* 3F958 8003ED58 05A10004 */  bgez      $t5, .L8003ED6C
/* 3F95C 8003ED5C 46802020 */  cvt.s.w   $f0, $f4
/* 3F960 8003ED60 44813000 */  mtc1      $at, $f6
/* 3F964 8003ED64 00000000 */  nop       
/* 3F968 8003ED68 46060000 */  add.s     $f0, $f0, $f6
.L8003ED6C:
/* 3F96C 8003ED6C 908E0026 */  lbu       $t6, 0x26($a0)
/* 3F970 8003ED70 46000400 */  add.s     $f16, $f0, $f0
/* 3F974 8003ED74 3C014F80 */  lui       $at, 0x4f80
/* 3F978 8003ED78 448E4000 */  mtc1      $t6, $f8
/* 3F97C 8003ED7C 05C10004 */  bgez      $t6, .L8003ED90
/* 3F980 8003ED80 468040A0 */  cvt.s.w   $f2, $f8
/* 3F984 8003ED84 44815000 */  mtc1      $at, $f10
/* 3F988 8003ED88 00000000 */  nop       
/* 3F98C 8003ED8C 460A1080 */  add.s     $f2, $f2, $f10
.L8003ED90:
/* 3F990 8003ED90 46001301 */  sub.s     $f12, $f2, $f0
/* 3F994 8003ED94 3C018008 */  lui       $at, 0x8008
/* 3F998 8003ED98 460C803C */  c.lt.s    $f16, $f12
/* 3F99C 8003ED9C 00000000 */  nop       
/* 3F9A0 8003EDA0 45000007 */  bc1f      .L8003EDC0
/* 3F9A4 8003EDA4 00000000 */  nop       
/* 3F9A8 8003EDA8 3C018010 */  lui       $at, 0x8010
/* 3F9AC 8003EDAC A02FCCB1 */  sb        $t7, -0x334f($at)
/* 3F9B0 8003EDB0 3C018010 */  lui       $at, 0x8010
/* 3F9B4 8003EDB4 00270821 */  addu      $at, $at, $a3
/* 3F9B8 8003EDB8 100000F8 */  b         .L8003F19C
/* 3F9BC 8003EDBC A020CCBA */  sb        $zero, -0x3346($at)
.L8003EDC0:
/* 3F9C0 8003EDC0 C42EC800 */  lwc1      $f14, -0x3800($at)
/* 3F9C4 8003EDC4 3C018010 */  lui       $at, 0x8010
/* 3F9C8 8003EDC8 24180001 */  addiu     $t8, $zero, 1
/* 3F9CC 8003EDCC 460E0482 */  mul.s     $f18, $f0, $f14
/* 3F9D0 8003EDD0 460C903C */  c.lt.s    $f18, $f12
/* 3F9D4 8003EDD4 00000000 */  nop       
/* 3F9D8 8003EDD8 45000006 */  bc1f      .L8003EDF4
/* 3F9DC 8003EDDC 00000000 */  nop       
/* 3F9E0 8003EDE0 A038CCB1 */  sb        $t8, -0x334f($at)
/* 3F9E4 8003EDE4 3C018010 */  lui       $at, 0x8010
/* 3F9E8 8003EDE8 00270821 */  addu      $at, $at, $a3
/* 3F9EC 8003EDEC 100000EB */  b         .L8003F19C
/* 3F9F0 8003EDF0 A020CCBA */  sb        $zero, -0x3346($at)
.L8003EDF4:
/* 3F9F4 8003EDF4 460E1102 */  mul.s     $f4, $f2, $f14
/* 3F9F8 8003EDF8 46020181 */  sub.s     $f6, $f0, $f2
/* 3F9FC 8003EDFC 3C0B8010 */  lui       $t3, 0x8010
/* 3FA00 8003EE00 256BCCD6 */  addiu     $t3, $t3, -0x332a
/* 3FA04 8003EE04 240A0001 */  addiu     $t2, $zero, 1
/* 3FA08 8003EE08 3C018010 */  lui       $at, 0x8010
/* 3FA0C 8003EE0C 00EB1021 */  addu      $v0, $a3, $t3
/* 3FA10 8003EE10 4606203C */  c.lt.s    $f4, $f6
/* 3FA14 8003EE14 00000000 */  nop       
/* 3FA18 8003EE18 45000029 */  bc1f      .L8003EEC0
/* 3FA1C 8003EE1C 00000000 */  nop       
/* 3FA20 8003EE20 A02ACCB1 */  sb        $t2, -0x334f($at)
/* 3FA24 8003EE24 904C0000 */  lbu       $t4, ($v0)
/* 3FA28 8003EE28 3C198010 */  lui       $t9, 0x8010
/* 3FA2C 8003EE2C 0327C821 */  addu      $t9, $t9, $a3
/* 3FA30 8003EE30 1180000E */  beqz      $t4, .L8003EE6C
/* 3FA34 8003EE34 93AF003C */  lbu       $t7, 0x3c($sp)
/* 3FA38 8003EE38 9339CCBA */  lbu       $t9, -0x3346($t9)
/* 3FA3C 8003EE3C 93AD003C */  lbu       $t5, 0x3c($sp)
/* 3FA40 8003EE40 1320000A */  beqz      $t9, .L8003EE6C
/* 3FA44 8003EE44 00000000 */  nop       
/* 3FA48 8003EE48 15A00018 */  bnez      $t5, .L8003EEAC
/* 3FA4C 8003EE4C 3C048008 */  lui       $a0, 0x8008
/* 3FA50 8003EE50 24848014 */  addiu     $a0, $a0, -0x7fec
/* 3FA54 8003EE54 AFA20020 */  sw        $v0, 0x20($sp)
/* 3FA58 8003EE58 0C010830 */  jal       func_800420C0
/* 3FA5C 8003EE5C A3A7003D */  sb        $a3, 0x3d($sp)
/* 3FA60 8003EE60 8FA20020 */  lw        $v0, 0x20($sp)
/* 3FA64 8003EE64 10000011 */  b         .L8003EEAC
/* 3FA68 8003EE68 93A7003D */  lbu       $a3, 0x3d($sp)
.L8003EE6C:
/* 3FA6C 8003EE6C 3C0E8010 */  lui       $t6, 0x8010
/* 3FA70 8003EE70 25CECCBA */  addiu     $t6, $t6, -0x3346
/* 3FA74 8003EE74 15E0000A */  bnez      $t7, .L8003EEA0
/* 3FA78 8003EE78 00EE3021 */  addu      $a2, $a3, $t6
/* 3FA7C 8003EE7C 3C058007 */  lui       $a1, 0x8007
/* 3FA80 8003EE80 24A57FF4 */  addiu     $a1, $a1, 0x7ff4
/* 3FA84 8003EE84 24040009 */  addiu     $a0, $zero, 9
/* 3FA88 8003EE88 AFA20020 */  sw        $v0, 0x20($sp)
/* 3FA8C 8003EE8C 0C01083C */  jal       func_800420F0
/* 3FA90 8003EE90 A3A7003D */  sb        $a3, 0x3d($sp)
/* 3FA94 8003EE94 8FA20020 */  lw        $v0, 0x20($sp)
/* 3FA98 8003EE98 10000004 */  b         .L8003EEAC
/* 3FA9C 8003EE9C 93A7003D */  lbu       $a3, 0x3d($sp)
.L8003EEA0:
/* 3FAA0 8003EEA0 90D80000 */  lbu       $t8, ($a2)
/* 3FAA4 8003EEA4 270A0001 */  addiu     $t2, $t8, 1
/* 3FAA8 8003EEA8 A0CA0000 */  sb        $t2, ($a2)
.L8003EEAC:
/* 3FAAC 8003EEAC 3C018010 */  lui       $at, 0x8010
/* 3FAB0 8003EEB0 00270821 */  addu      $at, $at, $a3
/* 3FAB4 8003EEB4 A020CCB8 */  sb        $zero, -0x3348($at)
/* 3FAB8 8003EEB8 100000B8 */  b         .L8003F19C
/* 3FABC 8003EEBC A0400000 */  sb        $zero, ($v0)
.L8003EEC0:
/* 3FAC0 8003EEC0 3C028008 */  lui       $v0, 0x8008
/* 3FAC4 8003EEC4 24428390 */  addiu     $v0, $v0, -0x7c70
/* 3FAC8 8003EEC8 00475821 */  addu      $t3, $v0, $a3
/* 3FACC 8003EECC 916C0000 */  lbu       $t4, ($t3)
/* 3FAD0 8003EED0 24010002 */  addiu     $at, $zero, 2
/* 3FAD4 8003EED4 15810023 */  bne       $t4, $at, .L8003EF64
/* 3FAD8 8003EED8 00000000 */  nop       
/* 3FADC 8003EEDC 8FB9001C */  lw        $t9, 0x1c($sp)
/* 3FAE0 8003EEE0 24010003 */  addiu     $at, $zero, 3
/* 3FAE4 8003EEE4 00596821 */  addu      $t5, $v0, $t9
/* 3FAE8 8003EEE8 91AE0000 */  lbu       $t6, ($t5)
/* 3FAEC 8003EEEC 15C1001D */  bne       $t6, $at, .L8003EF64
/* 3FAF0 8003EEF0 00000000 */  nop       
/* 3FAF4 8003EEF4 948F000C */  lhu       $t7, 0xc($a0)
/* 3FAF8 8003EEF8 948A0028 */  lhu       $t2, 0x28($a0)
/* 3FAFC 8003EEFC 3C0C8008 */  lui       $t4, 0x8008
/* 3FB00 8003EF00 000FC080 */  sll       $t8, $t7, 2
/* 3FB04 8003EF04 030FC023 */  subu      $t8, $t8, $t7
/* 3FB08 8003EF08 0018C0C0 */  sll       $t8, $t8, 3
/* 3FB0C 8003EF0C 030FC021 */  addu      $t8, $t8, $t7
/* 3FB10 8003EF10 0018C080 */  sll       $t8, $t8, 2
/* 3FB14 8003EF14 030A001B */  divu      $zero, $t8, $t2
/* 3FB18 8003EF18 00005812 */  mflo      $t3
/* 3FB1C 8003EF1C 2D610032 */  sltiu     $at, $t3, 0x32
/* 3FB20 8003EF20 15400002 */  bnez      $t2, .L8003EF2C
/* 3FB24 8003EF24 00000000 */  nop       
/* 3FB28 8003EF28 0007000D */  break     7
.L8003EF2C:
/* 3FB2C 8003EF2C 1020000D */  beqz      $at, .L8003EF64
/* 3FB30 8003EF30 00000000 */  nop       
/* 3FB34 8003EF34 918C83E0 */  lbu       $t4, -0x7c20($t4)
/* 3FB38 8003EF38 93B9003C */  lbu       $t9, 0x3c($sp)
/* 3FB3C 8003EF3C 15800009 */  bnez      $t4, .L8003EF64
/* 3FB40 8003EF40 00000000 */  nop       
/* 3FB44 8003EF44 17200004 */  bnez      $t9, .L8003EF58
/* 3FB48 8003EF48 2404000A */  addiu     $a0, $zero, 0xa
/* 3FB4C 8003EF4C 0C01071C */  jal       func_80041C70
/* 3FB50 8003EF50 A3A7003D */  sb        $a3, 0x3d($sp)
/* 3FB54 8003EF54 93A7003D */  lbu       $a3, 0x3d($sp)
.L8003EF58:
/* 3FB58 8003EF58 240D0001 */  addiu     $t5, $zero, 1
/* 3FB5C 8003EF5C 3C018008 */  lui       $at, 0x8008
/* 3FB60 8003EF60 A02D83E0 */  sb        $t5, -0x7c20($at)
.L8003EF64:
/* 3FB64 8003EF64 3C018010 */  lui       $at, 0x8010
/* 3FB68 8003EF68 00270821 */  addu      $at, $at, $a3
/* 3FB6C 8003EF6C A020CCB8 */  sb        $zero, -0x3348($at)
/* 3FB70 8003EF70 3C018010 */  lui       $at, 0x8010
/* 3FB74 8003EF74 00270821 */  addu      $at, $at, $a3
/* 3FB78 8003EF78 10000088 */  b         .L8003F19C
/* 3FB7C 8003EF7C A020CCBA */  sb        $zero, -0x3346($at)
.L8003EF80:
/* 3FB80 8003EF80 3C0E8010 */  lui       $t6, 0x8010
/* 3FB84 8003EF84 25CECB30 */  addiu     $t6, $t6, -0x34d0
/* 3FB88 8003EF88 00EE7821 */  addu      $t7, $a3, $t6
/* 3FB8C 8003EF8C AFAF0024 */  sw        $t7, 0x24($sp)
/* 3FB90 8003EF90 91EA0000 */  lbu       $t2, ($t7)
/* 3FB94 8003EF94 3C0B8008 */  lui       $t3, 0x8008
/* 3FB98 8003EF98 93B8003C */  lbu       $t8, 0x3c($sp)
/* 3FB9C 8003EF9C 15400034 */  bnez      $t2, .L8003F070
/* 3FBA0 8003EFA0 00000000 */  nop       
/* 3FBA4 8003EFA4 916B83DC */  lbu       $t3, -0x7c24($t3)
/* 3FBA8 8003EFA8 3C028008 */  lui       $v0, 0x8008
/* 3FBAC 8003EFAC 24428390 */  addiu     $v0, $v0, -0x7c70
/* 3FBB0 8003EFB0 15600024 */  bnez      $t3, .L8003F044
/* 3FBB4 8003EFB4 00476021 */  addu      $t4, $v0, $a3
/* 3FBB8 8003EFB8 91990000 */  lbu       $t9, ($t4)
/* 3FBBC 8003EFBC 2B210002 */  slti      $at, $t9, 2
/* 3FBC0 8003EFC0 10200014 */  beqz      $at, .L8003F014
/* 3FBC4 8003EFC4 00000000 */  nop       
/* 3FBC8 8003EFC8 0C017C54 */  jal       func_8005F150
/* 3FBCC 8003EFCC 00000000 */  nop       
/* 3FBD0 8003EFD0 00402025 */  or        $a0, $v0, $zero
/* 3FBD4 8003EFD4 00602825 */  or        $a1, $v1, $zero
/* 3FBD8 8003EFD8 24060000 */  addiu     $a2, $zero, 0
/* 3FBDC 8003EFDC 0C015D0F */  jal       func_8005743C
/* 3FBE0 8003EFE0 24070002 */  addiu     $a3, $zero, 2
/* 3FBE4 8003EFE4 14400007 */  bnez      $v0, .L8003F004
/* 3FBE8 8003EFE8 00000000 */  nop       
/* 3FBEC 8003EFEC 14600005 */  bnez      $v1, .L8003F004
/* 3FBF0 8003EFF0 00000000 */  nop       
/* 3FBF4 8003EFF4 0C01071C */  jal       func_80041C70
/* 3FBF8 8003EFF8 24040002 */  addiu     $a0, $zero, 2
/* 3FBFC 8003EFFC 1000000E */  b         .L8003F038
/* 3FC00 8003F000 240E0001 */  addiu     $t6, $zero, 1
.L8003F004:
/* 3FC04 8003F004 0C01071C */  jal       func_80041C70
/* 3FC08 8003F008 24040001 */  addiu     $a0, $zero, 1
/* 3FC0C 8003F00C 1000000A */  b         .L8003F038
/* 3FC10 8003F010 240E0001 */  addiu     $t6, $zero, 1
.L8003F014:
/* 3FC14 8003F014 0C01071C */  jal       func_80041C70
/* 3FC18 8003F018 24040050 */  addiu     $a0, $zero, 0x50
/* 3FC1C 8003F01C 93AD003C */  lbu       $t5, 0x3c($sp)
/* 3FC20 8003F020 3C048007 */  lui       $a0, 0x8007
/* 3FC24 8003F024 51A00004 */  beql      $t5, $zero, .L8003F038
/* 3FC28 8003F028 240E0001 */  addiu     $t6, $zero, 1
/* 3FC2C 8003F02C 0C010830 */  jal       func_800420C0
/* 3FC30 8003F030 24847FEC */  addiu     $a0, $a0, 0x7fec
/* 3FC34 8003F034 240E0001 */  addiu     $t6, $zero, 1
.L8003F038:
/* 3FC38 8003F038 3C018008 */  lui       $at, 0x8008
/* 3FC3C 8003F03C 10000010 */  b         .L8003F080
/* 3FC40 8003F040 A02E83DC */  sb        $t6, -0x7c24($at)
.L8003F044:
/* 3FC44 8003F044 0C01071C */  jal       func_80041C70
/* 3FC48 8003F048 24040058 */  addiu     $a0, $zero, 0x58
/* 3FC4C 8003F04C 93AF003C */  lbu       $t7, 0x3c($sp)
/* 3FC50 8003F050 3C018008 */  lui       $at, 0x8008
/* 3FC54 8003F054 A02083DC */  sb        $zero, -0x7c24($at)
/* 3FC58 8003F058 11E00009 */  beqz      $t7, .L8003F080
/* 3FC5C 8003F05C 3C048007 */  lui       $a0, 0x8007
/* 3FC60 8003F060 0C010830 */  jal       func_800420C0
/* 3FC64 8003F064 24847FEC */  addiu     $a0, $a0, 0x7fec
/* 3FC68 8003F068 10000006 */  b         .L8003F084
/* 3FC6C 8003F06C 8FAA0024 */  lw        $t2, 0x24($sp)
.L8003F070:
/* 3FC70 8003F070 13000003 */  beqz      $t8, .L8003F080
/* 3FC74 8003F074 3C048007 */  lui       $a0, 0x8007
/* 3FC78 8003F078 0C010830 */  jal       func_800420C0
/* 3FC7C 8003F07C 24847FEC */  addiu     $a0, $a0, 0x7fec
.L8003F080:
/* 3FC80 8003F080 8FAA0024 */  lw        $t2, 0x24($sp)
.L8003F084:
/* 3FC84 8003F084 3C048010 */  lui       $a0, 0x8010
/* 3FC88 8003F088 A1400000 */  sb        $zero, ($t2)
/* 3FC8C 8003F08C 8FAB001C */  lw        $t3, 0x1c($sp)
/* 3FC90 8003F090 93B9003C */  lbu       $t9, 0x3c($sp)
/* 3FC94 8003F094 000B6080 */  sll       $t4, $t3, 2
/* 3FC98 8003F098 008C2021 */  addu      $a0, $a0, $t4
/* 3FC9C 8003F09C 8C84CB18 */  lw        $a0, -0x34e8($a0)
/* 3FCA0 8003F0A0 5080003F */  beql      $a0, $zero, .L8003F1A0
/* 3FCA4 8003F0A4 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3FCA8 8003F0A8 1720003C */  bnez      $t9, .L8003F19C
/* 3FCAC 8003F0AC 8FAD0020 */  lw        $t5, 0x20($sp)
/* 3FCB0 8003F0B0 8DA30000 */  lw        $v1, ($t5)
/* 3FCB4 8003F0B4 90620015 */  lbu       $v0, 0x15($v1)
/* 3FCB8 8003F0B8 304E0020 */  andi      $t6, $v0, 0x20
/* 3FCBC 8003F0BC 11C00006 */  beqz      $t6, .L8003F0D8
/* 3FCC0 8003F0C0 304F0007 */  andi      $t7, $v0, 7
/* 3FCC4 8003F0C4 3C048007 */  lui       $a0, 0x8007
/* 3FCC8 8003F0C8 0C010830 */  jal       func_800420C0
/* 3FCCC 8003F0CC 24847FFC */  addiu     $a0, $a0, 0x7ffc
/* 3FCD0 8003F0D0 10000033 */  b         .L8003F1A0
/* 3FCD4 8003F0D4 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F0D8:
/* 3FCD8 8003F0D8 11E00006 */  beqz      $t7, .L8003F0F4
/* 3FCDC 8003F0DC 30580008 */  andi      $t8, $v0, 8
/* 3FCE0 8003F0E0 3C048008 */  lui       $a0, 0x8008
/* 3FCE4 8003F0E4 0C010830 */  jal       func_800420C0
/* 3FCE8 8003F0E8 24848004 */  addiu     $a0, $a0, -0x7ffc
/* 3FCEC 8003F0EC 1000002C */  b         .L8003F1A0
/* 3FCF0 8003F0F0 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F0F4:
/* 3FCF4 8003F0F4 13000005 */  beqz      $t8, .L8003F10C
/* 3FCF8 8003F0F8 304A0010 */  andi      $t2, $v0, 0x10
/* 3FCFC 8003F0FC 0C01071C */  jal       func_80041C70
/* 3FD00 8003F100 24040006 */  addiu     $a0, $zero, 6
/* 3FD04 8003F104 10000026 */  b         .L8003F1A0
/* 3FD08 8003F108 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F10C:
/* 3FD0C 8003F10C 51400006 */  beql      $t2, $zero, .L8003F128
/* 3FD10 8003F110 9462000C */  lhu       $v0, 0xc($v1)
/* 3FD14 8003F114 0C01071C */  jal       func_80041C70
/* 3FD18 8003F118 24040007 */  addiu     $a0, $zero, 7
/* 3FD1C 8003F11C 10000020 */  b         .L8003F1A0
/* 3FD20 8003F120 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3FD24 8003F124 9462000C */  lhu       $v0, 0xc($v1)
.L8003F128:
/* 3FD28 8003F128 3C014F80 */  lui       $at, 0x4f80
/* 3FD2C 8003F12C 44824000 */  mtc1      $v0, $f8
/* 3FD30 8003F130 04410004 */  bgez      $v0, .L8003F144
/* 3FD34 8003F134 468042A0 */  cvt.s.w   $f10, $f8
/* 3FD38 8003F138 44818000 */  mtc1      $at, $f16
/* 3FD3C 8003F13C 00000000 */  nop       
/* 3FD40 8003F140 46105280 */  add.s     $f10, $f10, $f16
.L8003F144:
/* 3FD44 8003F144 946B0028 */  lhu       $t3, 0x28($v1)
/* 3FD48 8003F148 3C014F80 */  lui       $at, 0x4f80
/* 3FD4C 8003F14C 448B9000 */  mtc1      $t3, $f18
/* 3FD50 8003F150 05610004 */  bgez      $t3, .L8003F164
/* 3FD54 8003F154 46809120 */  cvt.s.w   $f4, $f18
/* 3FD58 8003F158 44813000 */  mtc1      $at, $f6
/* 3FD5C 8003F15C 00000000 */  nop       
/* 3FD60 8003F160 46062100 */  add.s     $f4, $f4, $f6
.L8003F164:
/* 3FD64 8003F164 46045203 */  div.s     $f8, $f10, $f4
/* 3FD68 8003F168 3C018008 */  lui       $at, 0x8008
/* 3FD6C 8003F16C C430C804 */  lwc1      $f16, -0x37fc($at)
/* 3FD70 8003F170 4610403C */  c.lt.s    $f8, $f16
/* 3FD74 8003F174 00000000 */  nop       
/* 3FD78 8003F178 45020009 */  bc1fl     .L8003F1A0
/* 3FD7C 8003F17C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3FD80 8003F180 948C000C */  lhu       $t4, 0xc($a0)
/* 3FD84 8003F184 3C048008 */  lui       $a0, 0x8008
/* 3FD88 8003F188 004C082A */  slt       $at, $v0, $t4
/* 3FD8C 8003F18C 50200004 */  beql      $at, $zero, .L8003F1A0
/* 3FD90 8003F190 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3FD94 8003F194 0C010830 */  jal       func_800420C0
/* 3FD98 8003F198 2484800C */  addiu     $a0, $a0, -0x7ff4
.L8003F19C:
/* 3FD9C 8003F19C 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F1A0:
/* 3FDA0 8003F1A0 27BD0040 */  addiu     $sp, $sp, 0x40
/* 3FDA4 8003F1A4 03E00008 */  jr        $ra
/* 3FDA8 8003F1A8 00000000 */  nop       

glabel func_8003F1AC
/* 3FDAC 8003F1AC 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 3FDB0 8003F1B0 108000BF */  beqz      $a0, .L8003F4B0
/* 3FDB4 8003F1B4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 3FDB8 8003F1B8 2C810005 */  sltiu     $at, $a0, 5
/* 3FDBC 8003F1BC 102000BC */  beqz      $at, .L8003F4B0
/* 3FDC0 8003F1C0 2484FFFF */  addiu     $a0, $a0, -1
/* 3FDC4 8003F1C4 3C078008 */  lui       $a3, 0x8008
/* 3FDC8 8003F1C8 00E43821 */  addu      $a3, $a3, $a0
/* 3FDCC 8003F1CC 90E78398 */  lbu       $a3, -0x7c68($a3)
/* 3FDD0 8003F1D0 18E000B7 */  blez      $a3, .L8003F4B0
/* 3FDD4 8003F1D4 28E10003 */  slti      $at, $a3, 3
/* 3FDD8 8003F1D8 102000B5 */  beqz      $at, .L8003F4B0
/* 3FDDC 8003F1DC 3C088010 */  lui       $t0, 0x8010
/* 3FDE0 8003F1E0 24E7FFFF */  addiu     $a3, $a3, -1
/* 3FDE4 8003F1E4 3C0E8008 */  lui       $t6, 0x8008
/* 3FDE8 8003F1E8 3C198008 */  lui       $t9, 0x8008
/* 3FDEC 8003F1EC 30E700FF */  andi      $a3, $a3, 0xff
/* 3FDF0 8003F1F0 25CE838C */  addiu     $t6, $t6, -0x7c74
/* 3FDF4 8003F1F4 27398390 */  addiu     $t9, $t9, -0x7c70
/* 3FDF8 8003F1F8 008E1021 */  addu      $v0, $a0, $t6
/* 3FDFC 8003F1FC 00F91821 */  addu      $v1, $a3, $t9
/* 3FE00 8003F200 904F0000 */  lbu       $t7, ($v0)
/* 3FE04 8003F204 90690000 */  lbu       $t1, ($v1)
/* 3FE08 8003F208 3C018010 */  lui       $at, 0x8010
/* 3FE0C 8003F20C 25F8FFFF */  addiu     $t8, $t7, -1
/* 3FE10 8003F210 252AFFFF */  addiu     $t2, $t1, -1
/* 3FE14 8003F214 A0580000 */  sb        $t8, ($v0)
/* 3FE18 8003F218 A06A0000 */  sb        $t2, ($v1)
/* 3FE1C 8003F21C 00270821 */  addu      $at, $at, $a3
/* 3FE20 8003F220 2508CB18 */  addiu     $t0, $t0, -0x34e8
/* 3FE24 8003F224 A020CB30 */  sb        $zero, -0x34d0($at)
/* 3FE28 8003F228 8D0B0000 */  lw        $t3, ($t0)
/* 3FE2C 8003F22C 516000A1 */  beql      $t3, $zero, .L8003F4B4
/* 3FE30 8003F230 8FBF0014 */  lw        $ra, 0x14($sp)
/* 3FE34 8003F234 8D0C0004 */  lw        $t4, 4($t0)
/* 3FE38 8003F238 24040016 */  addiu     $a0, $zero, 0x16
/* 3FE3C 8003F23C 3C058008 */  lui       $a1, 0x8008
/* 3FE40 8003F240 1180009B */  beqz      $t4, .L8003F4B0
/* 3FE44 8003F244 00003025 */  or        $a2, $zero, $zero
/* 3FE48 8003F248 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 3FE4C 8003F24C 0C00D9E8 */  jal       func_800367A0
/* 3FE50 8003F250 A3A7001F */  sb        $a3, 0x1f($sp)
/* 3FE54 8003F254 3C058008 */  lui       $a1, 0x8008
/* 3FE58 8003F258 24A583D8 */  addiu     $a1, $a1, -0x7c28
/* 3FE5C 8003F25C 90AD0000 */  lbu       $t5, ($a1)
/* 3FE60 8003F260 3C088010 */  lui       $t0, 0x8010
/* 3FE64 8003F264 2508CB18 */  addiu     $t0, $t0, -0x34e8
/* 3FE68 8003F268 11A0000A */  beqz      $t5, .L8003F294
/* 3FE6C 8003F26C 93A7001F */  lbu       $a3, 0x1f($sp)
/* 3FE70 8003F270 0C01071C */  jal       func_80041C70
/* 3FE74 8003F274 240400C3 */  addiu     $a0, $zero, 0xc3
/* 3FE78 8003F278 3C058008 */  lui       $a1, 0x8008
/* 3FE7C 8003F27C 24A583D8 */  addiu     $a1, $a1, -0x7c28
/* 3FE80 8003F280 A0A00000 */  sb        $zero, ($a1)
/* 3FE84 8003F284 240E0001 */  addiu     $t6, $zero, 1
/* 3FE88 8003F288 3C018008 */  lui       $at, 0x8008
/* 3FE8C 8003F28C 10000088 */  b         .L8003F4B0
/* 3FE90 8003F290 A02E83E4 */  sb        $t6, -0x7c1c($at)
.L8003F294:
/* 3FE94 8003F294 240F0001 */  addiu     $t7, $zero, 1
/* 3FE98 8003F298 A0AF0000 */  sb        $t7, ($a1)
/* 3FE9C 8003F29C 3C188008 */  lui       $t8, 0x8008
/* 3FEA0 8003F2A0 931883D4 */  lbu       $t8, -0x7c2c($t8)
/* 3FEA4 8003F2A4 3C198008 */  lui       $t9, 0x8008
/* 3FEA8 8003F2A8 13000006 */  beqz      $t8, .L8003F2C4
/* 3FEAC 8003F2AC 00000000 */  nop       
/* 3FEB0 8003F2B0 0C01071C */  jal       func_80041C70
/* 3FEB4 8003F2B4 240400B9 */  addiu     $a0, $zero, 0xb9
/* 3FEB8 8003F2B8 3C018008 */  lui       $at, 0x8008
/* 3FEBC 8003F2BC 1000007C */  b         .L8003F4B0
/* 3FEC0 8003F2C0 A02083D4 */  sb        $zero, -0x7c2c($at)
.L8003F2C4:
/* 3FEC4 8003F2C4 8F3983CC */  lw        $t9, -0x7c34($t9)
/* 3FEC8 8003F2C8 3C098008 */  lui       $t1, 0x8008
/* 3FECC 8003F2CC 2F210002 */  sltiu     $at, $t9, 2
/* 3FED0 8003F2D0 10200014 */  beqz      $at, .L8003F324
/* 3FED4 8003F2D4 00000000 */  nop       
/* 3FED8 8003F2D8 0C017C54 */  jal       func_8005F150
/* 3FEDC 8003F2DC 00000000 */  nop       
/* 3FEE0 8003F2E0 00402025 */  or        $a0, $v0, $zero
/* 3FEE4 8003F2E4 00602825 */  or        $a1, $v1, $zero
/* 3FEE8 8003F2E8 24060000 */  addiu     $a2, $zero, 0
/* 3FEEC 8003F2EC 0C015D0F */  jal       func_8005743C
/* 3FEF0 8003F2F0 24070002 */  addiu     $a3, $zero, 2
/* 3FEF4 8003F2F4 14400007 */  bnez      $v0, .L8003F314
/* 3FEF8 8003F2F8 00000000 */  nop       
/* 3FEFC 8003F2FC 14600005 */  bnez      $v1, .L8003F314
/* 3FF00 8003F300 00000000 */  nop       
/* 3FF04 8003F304 0C01071C */  jal       func_80041C70
/* 3FF08 8003F308 240400BC */  addiu     $a0, $zero, 0xbc
/* 3FF0C 8003F30C 10000069 */  b         .L8003F4B4
/* 3FF10 8003F310 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F314:
/* 3FF14 8003F314 0C01071C */  jal       func_80041C70
/* 3FF18 8003F318 240400C5 */  addiu     $a0, $zero, 0xc5
/* 3FF1C 8003F31C 10000065 */  b         .L8003F4B4
/* 3FF20 8003F320 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F324:
/* 3FF24 8003F324 912983D0 */  lbu       $t1, -0x7c30($t1)
/* 3FF28 8003F328 3C028010 */  lui       $v0, 0x8010
/* 3FF2C 8003F32C 11200006 */  beqz      $t1, .L8003F348
/* 3FF30 8003F330 00000000 */  nop       
/* 3FF34 8003F334 0C01071C */  jal       func_80041C70
/* 3FF38 8003F338 240400C4 */  addiu     $a0, $zero, 0xc4
/* 3FF3C 8003F33C 3C018008 */  lui       $at, 0x8008
/* 3FF40 8003F340 1000005B */  b         .L8003F4B0
/* 3FF44 8003F344 A02083D0 */  sb        $zero, -0x7c30($at)
.L8003F348:
/* 3FF48 8003F348 8C42CCA4 */  lw        $v0, -0x335c($v0)
/* 3FF4C 8003F34C 00076940 */  sll       $t5, $a3, 5
/* 3FF50 8003F350 3C0A8010 */  lui       $t2, 0x8010
/* 3FF54 8003F354 2C410064 */  sltiu     $at, $v0, 0x64
/* 3FF58 8003F358 14200038 */  bnez      $at, .L8003F43C
/* 3FF5C 8003F35C 01A76821 */  addu      $t5, $t5, $a3
/* 3FF60 8003F360 914ACCB2 */  lbu       $t2, -0x334e($t2)
/* 3FF64 8003F364 3C0B8008 */  lui       $t3, 0x8008
/* 3FF68 8003F368 55400035 */  bnel      $t2, $zero, .L8003F440
/* 3FF6C 8003F36C 000D6880 */  sll       $t5, $t5, 2
/* 3FF70 8003F370 916B83EC */  lbu       $t3, -0x7c14($t3)
/* 3FF74 8003F374 38F80001 */  xori      $t8, $a3, 1
/* 3FF78 8003F378 0018C880 */  sll       $t9, $t8, 2
/* 3FF7C 8003F37C 1560002F */  bnez      $t3, .L8003F43C
/* 3FF80 8003F380 00076080 */  sll       $t4, $a3, 2
/* 3FF84 8003F384 010C6821 */  addu      $t5, $t0, $t4
/* 3FF88 8003F388 8DAE0000 */  lw        $t6, ($t5)
/* 3FF8C 8003F38C 3C048007 */  lui       $a0, 0x8007
/* 3FF90 8003F390 01194821 */  addu      $t1, $t0, $t9
/* 3FF94 8003F394 91CF0026 */  lbu       $t7, 0x26($t6)
/* 3FF98 8003F398 3C014F80 */  lui       $at, 0x4f80
/* 3FF9C 8003F39C 24847FD0 */  addiu     $a0, $a0, 0x7fd0
/* 3FFA0 8003F3A0 448F2000 */  mtc1      $t7, $f4
/* 3FFA4 8003F3A4 05E10004 */  bgez      $t7, .L8003F3B8
/* 3FFA8 8003F3A8 46802020 */  cvt.s.w   $f0, $f4
/* 3FFAC 8003F3AC 44813000 */  mtc1      $at, $f6
/* 3FFB0 8003F3B0 00000000 */  nop       
/* 3FFB4 8003F3B4 46060000 */  add.s     $f0, $f0, $f6
.L8003F3B8:
/* 3FFB8 8003F3B8 8D2A0000 */  lw        $t2, ($t1)
/* 3FFBC 8003F3BC 3C018008 */  lui       $at, 0x8008
/* 3FFC0 8003F3C0 D42AC808 */  ldc1      $f10, -0x37f8($at)
/* 3FFC4 8003F3C4 914B0026 */  lbu       $t3, 0x26($t2)
/* 3FFC8 8003F3C8 46000221 */  cvt.d.s   $f8, $f0
/* 3FFCC 8003F3CC 3C014F80 */  lui       $at, 0x4f80
/* 3FFD0 8003F3D0 448B9000 */  mtc1      $t3, $f18
/* 3FFD4 8003F3D4 462A4402 */  mul.d     $f16, $f8, $f10
/* 3FFD8 8003F3D8 05610004 */  bgez      $t3, .L8003F3EC
/* 3FFDC 8003F3DC 46809120 */  cvt.s.w   $f4, $f18
/* 3FFE0 8003F3E0 44813000 */  mtc1      $at, $f6
/* 3FFE4 8003F3E4 00000000 */  nop       
/* 3FFE8 8003F3E8 46062100 */  add.s     $f4, $f4, $f6
.L8003F3EC:
/* 3FFEC 8003F3EC 46002201 */  sub.s     $f8, $f4, $f0
/* 3FFF0 8003F3F0 460042A1 */  cvt.d.s   $f10, $f8
/* 3FFF4 8003F3F4 462A803C */  c.lt.d    $f16, $f10
/* 3FFF8 8003F3F8 00000000 */  nop       
/* 3FFFC 8003F3FC 45000007 */  bc1f      .L8003F41C
/* 40000 8003F400 00000000 */  nop       
/* 40004 8003F404 3C048007 */  lui       $a0, 0x8007
/* 40008 8003F408 24847FC0 */  addiu     $a0, $a0, 0x7fc0
/* 4000C 8003F40C 0C010830 */  jal       func_800420C0
/* 40010 8003F410 A3A7001F */  sb        $a3, 0x1f($sp)
/* 40014 8003F414 10000004 */  b         .L8003F428
/* 40018 8003F418 93A7001F */  lbu       $a3, 0x1f($sp)
.L8003F41C:
/* 4001C 8003F41C 0C010830 */  jal       func_800420C0
/* 40020 8003F420 A3A7001F */  sb        $a3, 0x1f($sp)
/* 40024 8003F424 93A7001F */  lbu       $a3, 0x1f($sp)
.L8003F428:
/* 40028 8003F428 3C018010 */  lui       $at, 0x8010
/* 4002C 8003F42C 00270821 */  addu      $at, $at, $a3
/* 40030 8003F430 240C0001 */  addiu     $t4, $zero, 1
/* 40034 8003F434 1000001E */  b         .L8003F4B0
/* 40038 8003F438 A02CCCD6 */  sb        $t4, -0x332a($at)
.L8003F43C:
/* 4003C 8003F43C 000D6880 */  sll       $t5, $t5, 2
.L8003F440:
/* 40040 8003F440 3C0E8010 */  lui       $t6, 0x8010
/* 40044 8003F444 01CD7021 */  addu      $t6, $t6, $t5
/* 40048 8003F448 8DCECBC0 */  lw        $t6, -0x3440($t6)
/* 4004C 8003F44C 3C0F8010 */  lui       $t7, 0x8010
/* 40050 8003F450 3C048007 */  lui       $a0, 0x8007
/* 40054 8003F454 2DC10008 */  sltiu     $at, $t6, 8
/* 40058 8003F458 14200013 */  bnez      $at, .L8003F4A8
/* 4005C 8003F45C 00000000 */  nop       
/* 40060 8003F460 91EFCCB2 */  lbu       $t7, -0x334e($t7)
/* 40064 8003F464 2C410005 */  sltiu     $at, $v0, 5
/* 40068 8003F468 15E0000F */  bnez      $t7, .L8003F4A8
/* 4006C 8003F46C 00000000 */  nop       
/* 40070 8003F470 10200008 */  beqz      $at, .L8003F494
/* 40074 8003F474 3C188008 */  lui       $t8, 0x8008
/* 40078 8003F478 931883E8 */  lbu       $t8, -0x7c18($t8)
/* 4007C 8003F47C 17000005 */  bnez      $t8, .L8003F494
/* 40080 8003F480 00000000 */  nop       
/* 40084 8003F484 0C01071C */  jal       func_80041C70
/* 40088 8003F488 240400C2 */  addiu     $a0, $zero, 0xc2
/* 4008C 8003F48C 10000009 */  b         .L8003F4B4
/* 40090 8003F490 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F494:
/* 40094 8003F494 3C048007 */  lui       $a0, 0x8007
/* 40098 8003F498 0C010830 */  jal       func_800420C0
/* 4009C 8003F49C 24847FC8 */  addiu     $a0, $a0, 0x7fc8
/* 400A0 8003F4A0 10000004 */  b         .L8003F4B4
/* 400A4 8003F4A4 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F4A8:
/* 400A8 8003F4A8 0C010830 */  jal       func_800420C0
/* 400AC 8003F4AC 24847FB4 */  addiu     $a0, $a0, 0x7fb4
.L8003F4B0:
/* 400B0 8003F4B0 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F4B4:
/* 400B4 8003F4B4 27BD0020 */  addiu     $sp, $sp, 0x20
/* 400B8 8003F4B8 03E00008 */  jr        $ra
/* 400BC 8003F4BC 00000000 */  nop       

glabel func_8003F4C0
/* 400C0 8003F4C0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 400C4 8003F4C4 10800053 */  beqz      $a0, .L8003F614
/* 400C8 8003F4C8 AFBF0014 */  sw        $ra, 0x14($sp)
/* 400CC 8003F4CC 2C810005 */  sltiu     $at, $a0, 5
/* 400D0 8003F4D0 10200050 */  beqz      $at, .L8003F614
/* 400D4 8003F4D4 2484FFFF */  addiu     $a0, $a0, -1
/* 400D8 8003F4D8 3C028008 */  lui       $v0, 0x8008
/* 400DC 8003F4DC 00441021 */  addu      $v0, $v0, $a0
/* 400E0 8003F4E0 90428398 */  lbu       $v0, -0x7c68($v0)
/* 400E4 8003F4E4 1840004B */  blez      $v0, .L8003F614
/* 400E8 8003F4E8 28410003 */  slti      $at, $v0, 3
/* 400EC 8003F4EC 10200049 */  beqz      $at, .L8003F614
/* 400F0 8003F4F0 3C038010 */  lui       $v1, 0x8010
/* 400F4 8003F4F4 2463CB18 */  addiu     $v1, $v1, -0x34e8
/* 400F8 8003F4F8 8C6E0000 */  lw        $t6, ($v1)
/* 400FC 8003F4FC 2442FFFF */  addiu     $v0, $v0, -1
/* 40100 8003F500 304200FF */  andi      $v0, $v0, 0xff
/* 40104 8003F504 51C00044 */  beql      $t6, $zero, .L8003F618
/* 40108 8003F508 8FBF0014 */  lw        $ra, 0x14($sp)
/* 4010C 8003F50C 8C6F0004 */  lw        $t7, 4($v1)
/* 40110 8003F510 0002C080 */  sll       $t8, $v0, 2
/* 40114 8003F514 0078C821 */  addu      $t9, $v1, $t8
/* 40118 8003F518 51E0003F */  beql      $t7, $zero, .L8003F618
/* 4011C 8003F51C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 40120 8003F520 8F280000 */  lw        $t0, ($t9)
/* 40124 8003F524 3C058008 */  lui       $a1, 0x8008
/* 40128 8003F528 3C018010 */  lui       $at, 0x8010
/* 4012C 8003F52C 9509000C */  lhu       $t1, 0xc($t0)
/* 40130 8003F530 24A583DC */  addiu     $a1, $a1, -0x7c24
/* 40134 8003F534 24030001 */  addiu     $v1, $zero, 1
/* 40138 8003F538 19200036 */  blez      $t1, .L8003F614
/* 4013C 8003F53C 00220821 */  addu      $at, $at, $v0
/* 40140 8003F540 A023CB30 */  sb        $v1, -0x34d0($at)
/* 40144 8003F544 3C018010 */  lui       $at, 0x8010
/* 40148 8003F548 A023CCB5 */  sb        $v1, -0x334b($at)
/* 4014C 8003F54C 90AA0000 */  lbu       $t2, ($a1)
/* 40150 8003F550 3C0B8008 */  lui       $t3, 0x8008
/* 40154 8003F554 51400008 */  beql      $t2, $zero, .L8003F578
/* 40158 8003F558 A0A30000 */  sb        $v1, ($a1)
/* 4015C 8003F55C 0C01071C */  jal       func_80041C70
/* 40160 8003F560 24040058 */  addiu     $a0, $zero, 0x58
/* 40164 8003F564 3C058008 */  lui       $a1, 0x8008
/* 40168 8003F568 24A583DC */  addiu     $a1, $a1, -0x7c24
/* 4016C 8003F56C 10000029 */  b         .L8003F614
/* 40170 8003F570 A0A00000 */  sb        $zero, ($a1)
/* 40174 8003F574 A0A30000 */  sb        $v1, ($a1)
.L8003F578:
/* 40178 8003F578 8D6B83CC */  lw        $t3, -0x7c34($t3)
/* 4017C 8003F57C 00026140 */  sll       $t4, $v0, 5
/* 40180 8003F580 01826021 */  addu      $t4, $t4, $v0
/* 40184 8003F584 2D610002 */  sltiu     $at, $t3, 2
/* 40188 8003F588 10200014 */  beqz      $at, .L8003F5DC
/* 4018C 8003F58C 000C6080 */  sll       $t4, $t4, 2
/* 40190 8003F590 0C017C54 */  jal       func_8005F150
/* 40194 8003F594 00000000 */  nop       
/* 40198 8003F598 00402025 */  or        $a0, $v0, $zero
/* 4019C 8003F59C 00602825 */  or        $a1, $v1, $zero
/* 401A0 8003F5A0 24060000 */  addiu     $a2, $zero, 0
/* 401A4 8003F5A4 0C015D0F */  jal       func_8005743C
/* 401A8 8003F5A8 24070002 */  addiu     $a3, $zero, 2
/* 401AC 8003F5AC 14400007 */  bnez      $v0, .L8003F5CC
/* 401B0 8003F5B0 00000000 */  nop       
/* 401B4 8003F5B4 14600005 */  bnez      $v1, .L8003F5CC
/* 401B8 8003F5B8 00000000 */  nop       
/* 401BC 8003F5BC 0C01071C */  jal       func_80041C70
/* 401C0 8003F5C0 24040054 */  addiu     $a0, $zero, 0x54
/* 401C4 8003F5C4 10000014 */  b         .L8003F618
/* 401C8 8003F5C8 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F5CC:
/* 401CC 8003F5CC 0C01071C */  jal       func_80041C70
/* 401D0 8003F5D0 24040055 */  addiu     $a0, $zero, 0x55
/* 401D4 8003F5D4 10000010 */  b         .L8003F618
/* 401D8 8003F5D8 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F5DC:
/* 401DC 8003F5DC 3C0D8010 */  lui       $t5, 0x8010
/* 401E0 8003F5E0 01AC6821 */  addu      $t5, $t5, $t4
/* 401E4 8003F5E4 8DADCBC0 */  lw        $t5, -0x3440($t5)
/* 401E8 8003F5E8 3C048007 */  lui       $a0, 0x8007
/* 401EC 8003F5EC 2DA10002 */  sltiu     $at, $t5, 2
/* 401F0 8003F5F0 10200006 */  beqz      $at, .L8003F60C
/* 401F4 8003F5F4 00000000 */  nop       
/* 401F8 8003F5F8 3C048007 */  lui       $a0, 0x8007
/* 401FC 8003F5FC 0C010830 */  jal       func_800420C0
/* 40200 8003F600 24847FE4 */  addiu     $a0, $a0, 0x7fe4
/* 40204 8003F604 10000004 */  b         .L8003F618
/* 40208 8003F608 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F60C:
/* 4020C 8003F60C 0C010830 */  jal       func_800420C0
/* 40210 8003F610 24847FD8 */  addiu     $a0, $a0, 0x7fd8
.L8003F614:
/* 40214 8003F614 8FBF0014 */  lw        $ra, 0x14($sp)
.L8003F618:
/* 40218 8003F618 27BD0018 */  addiu     $sp, $sp, 0x18
/* 4021C 8003F61C 03E00008 */  jr        $ra
/* 40220 8003F620 00000000 */  nop       

glabel func_8003F624
/* 40224 8003F624 3C038008 */  lui       $v1, 0x8008
/* 40228 8003F628 24638544 */  addiu     $v1, $v1, -0x7abc
/* 4022C 8003F62C 8C620000 */  lw        $v0, ($v1)
/* 40230 8003F630 3C018010 */  lui       $at, 0x8010
/* 40234 8003F634 00027080 */  sll       $t6, $v0, 2
/* 40238 8003F638 002E0821 */  addu      $at, $at, $t6
/* 4023C 8003F63C AC24CCF0 */  sw        $a0, -0x3310($at)
/* 40240 8003F640 244F0001 */  addiu     $t7, $v0, 1
/* 40244 8003F644 2DE1000A */  sltiu     $at, $t7, 0xa
/* 40248 8003F648 14200003 */  bnez      $at, .L8003F658
/* 4024C 8003F64C AC6F0000 */  sw        $t7, ($v1)
/* 40250 8003F650 25F8FFFF */  addiu     $t8, $t7, -1
/* 40254 8003F654 AC780000 */  sw        $t8, ($v1)
.L8003F658:
/* 40258 8003F658 03E00008 */  jr        $ra
/* 4025C 8003F65C 00000000 */  nop       

glabel func_8003F660
/* 40260 8003F660 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 40264 8003F664 AFBF001C */  sw        $ra, 0x1c($sp)
/* 40268 8003F668 00802825 */  or        $a1, $a0, $zero
/* 4026C 8003F66C AFB00018 */  sw        $s0, 0x18($sp)
/* 40270 8003F670 A3A0003A */  sb        $zero, 0x3a($sp)
/* 40274 8003F674 A3A00039 */  sb        $zero, 0x39($sp)
/* 40278 8003F678 A3A00038 */  sb        $zero, 0x38($sp)
/* 4027C 8003F67C A3A00037 */  sb        $zero, 0x37($sp)
/* 40280 8003F680 A3A00036 */  sb        $zero, 0x36($sp)
/* 40284 8003F684 A3A00034 */  sb        $zero, 0x34($sp)
/* 40288 8003F688 A3A00032 */  sb        $zero, 0x32($sp)
/* 4028C 8003F68C AFA50048 */  sw        $a1, 0x48($sp)
/* 40290 8003F690 0C015B04 */  jal       func_80056C10
/* 40294 8003F694 24040001 */  addiu     $a0, $zero, 1
/* 40298 8003F698 3C038010 */  lui       $v1, 0x8010
/* 4029C 8003F69C 2463CCA2 */  addiu     $v1, $v1, -0x335e
/* 402A0 8003F6A0 906E0000 */  lbu       $t6, ($v1)
/* 402A4 8003F6A4 A0600000 */  sb        $zero, ($v1)
/* 402A8 8003F6A8 00402025 */  or        $a0, $v0, $zero
/* 402AC 8003F6AC 0C015B04 */  jal       func_80056C10
/* 402B0 8003F6B0 AFAE003C */  sw        $t6, 0x3c($sp)
/* 402B4 8003F6B4 8FA50048 */  lw        $a1, 0x48($sp)
/* 402B8 8003F6B8 3C068010 */  lui       $a2, 0x8010
/* 402BC 8003F6BC 3C098008 */  lui       $t1, 0x8008
/* 402C0 8003F6C0 252983D0 */  addiu     $t1, $t1, -0x7c30
/* 402C4 8003F6C4 24C6CCB2 */  addiu     $a2, $a2, -0x334e
/* 402C8 8003F6C8 A1200000 */  sb        $zero, ($t1)
/* 402CC 8003F6CC 10A004E3 */  beqz      $a1, .L80040A5C
/* 402D0 8003F6D0 A0C00000 */  sb        $zero, ($a2)
/* 402D4 8003F6D4 2CA10005 */  sltiu     $at, $a1, 5
/* 402D8 8003F6D8 102004E0 */  beqz      $at, .L80040A5C
/* 402DC 8003F6DC 24A5FFFF */  addiu     $a1, $a1, -1
/* 402E0 8003F6E0 3C108008 */  lui       $s0, 0x8008
/* 402E4 8003F6E4 02058021 */  addu      $s0, $s0, $a1
/* 402E8 8003F6E8 92108398 */  lbu       $s0, -0x7c68($s0)
/* 402EC 8003F6EC 1A0004DB */  blez      $s0, .L80040A5C
/* 402F0 8003F6F0 2A010003 */  slti      $at, $s0, 3
/* 402F4 8003F6F4 102004D9 */  beqz      $at, .L80040A5C
/* 402F8 8003F6F8 3C088010 */  lui       $t0, 0x8010
/* 402FC 8003F6FC 2508CB18 */  addiu     $t0, $t0, -0x34e8
/* 40300 8003F700 8D0F0000 */  lw        $t7, ($t0)
/* 40304 8003F704 2610FFFF */  addiu     $s0, $s0, -1
/* 40308 8003F708 321000FF */  andi      $s0, $s0, 0xff
/* 4030C 8003F70C 51E004D4 */  beql      $t7, $zero, .L80040A60
/* 40310 8003F710 8FBF001C */  lw        $ra, 0x1c($sp)
/* 40314 8003F714 8D180004 */  lw        $t8, 4($t0)
/* 40318 8003F718 3C038008 */  lui       $v1, 0x8008
/* 4031C 8003F71C 530004D0 */  beql      $t8, $zero, .L80040A60
/* 40320 8003F720 8FBF001C */  lw        $ra, 0x1c($sp)
/* 40324 8003F724 8C638544 */  lw        $v1, -0x7abc($v1)
/* 40328 8003F728 3C198010 */  lui       $t9, 0x8010
/* 4032C 8003F72C 2739CCF0 */  addiu     $t9, $t9, -0x3310
/* 40330 8003F730 10600362 */  beqz      $v1, .L800404BC
/* 40334 8003F734 AFA00040 */  sw        $zero, 0x40($sp)
/* 40338 8003F738 3C058008 */  lui       $a1, 0x8008
/* 4033C 8003F73C 24A583A0 */  addiu     $a1, $a1, -0x7c60
/* 40340 8003F740 AFB90024 */  sw        $t9, 0x24($sp)
/* 40344 8003F744 24070001 */  addiu     $a3, $zero, 1
.L8003F748:
/* 40348 8003F748 8FAA0024 */  lw        $t2, 0x24($sp)
/* 4034C 8003F74C 8D420000 */  lw        $v0, ($t2)
/* 40350 8003F750 2C41002D */  sltiu     $at, $v0, 0x2d
/* 40354 8003F754 14200009 */  bnez      $at, .L8003F77C
/* 40358 8003F758 244BFF9C */  addiu     $t3, $v0, -0x64
/* 4035C 8003F75C 2D610059 */  sltiu     $at, $t3, 0x59
/* 40360 8003F760 1020034E */  beqz      $at, .L8004049C
/* 40364 8003F764 000B5880 */  sll       $t3, $t3, 2
/* 40368 8003F768 3C018008 */  lui       $at, 0x8008
/* 4036C 8003F76C 002B0821 */  addu      $at, $at, $t3
/* 40370 8003F770 8C2BC810 */  lw        $t3, -0x37f0($at)
/* 40374 8003F774 01600008 */  jr        $t3
/* 40378 8003F778 00000000 */  nop       
.L8003F77C:
/* 4037C 8003F77C 2C41002D */  sltiu     $at, $v0, 0x2d
/* 40380 8003F780 10200346 */  beqz      $at, .L8004049C
/* 40384 8003F784 00026080 */  sll       $t4, $v0, 2
/* 40388 8003F788 3C018008 */  lui       $at, 0x8008
/* 4038C 8003F78C 002C0821 */  addu      $at, $at, $t4
/* 40390 8003F790 8C2CC974 */  lw        $t4, -0x368c($at)
/* 40394 8003F794 01800008 */  jr        $t4
/* 40398 8003F798 00000000 */  nop       
/* 4039C 8003F79C A3A7003A */  sb        $a3, 0x3a($sp)
/* 403A0 8003F7A0 1000033E */  b         .L8004049C
/* 403A4 8003F7A4 A0A70000 */  sb        $a3, ($a1)
/* 403A8 8003F7A8 A3A70037 */  sb        $a3, 0x37($sp)
/* 403AC 8003F7AC 1000033B */  b         .L8004049C
/* 403B0 8003F7B0 A0A70000 */  sb        $a3, ($a1)
/* 403B4 8003F7B4 A3A70039 */  sb        $a3, 0x39($sp)
/* 403B8 8003F7B8 10000338 */  b         .L8004049C
/* 403BC 8003F7BC A0A70000 */  sb        $a3, ($a1)
/* 403C0 8003F7C0 A3A70038 */  sb        $a3, 0x38($sp)
/* 403C4 8003F7C4 10000335 */  b         .L8004049C
/* 403C8 8003F7C8 A0A70000 */  sb        $a3, ($a1)
/* 403CC 8003F7CC 10000333 */  b         .L8004049C
/* 403D0 8003F7D0 A3A70036 */  sb        $a3, 0x36($sp)
/* 403D4 8003F7D4 10000331 */  b         .L8004049C
/* 403D8 8003F7D8 A3A70034 */  sb        $a3, 0x34($sp)
/* 403DC 8003F7DC 00106940 */  sll       $t5, $s0, 5
/* 403E0 8003F7E0 01B06821 */  addu      $t5, $t5, $s0
/* 403E4 8003F7E4 3C0E8010 */  lui       $t6, 0x8010
/* 403E8 8003F7E8 25CECB48 */  addiu     $t6, $t6, -0x34b8
/* 403EC 8003F7EC 000D6880 */  sll       $t5, $t5, 2
/* 403F0 8003F7F0 01AE1821 */  addu      $v1, $t5, $t6
/* 403F4 8003F7F4 8C6F0024 */  lw        $t7, 0x24($v1)
/* 403F8 8003F7F8 0010C880 */  sll       $t9, $s0, 2
/* 403FC 8003F7FC 01195021 */  addu      $t2, $t0, $t9
/* 40400 8003F800 8D4B0000 */  lw        $t3, ($t2)
/* 40404 8003F804 25F80001 */  addiu     $t8, $t7, 1
/* 40408 8003F808 AC780024 */  sw        $t8, 0x24($v1)
/* 4040C 8003F80C 330E000F */  andi      $t6, $t8, 0xf
/* 40410 8003F810 956C000C */  lhu       $t4, 0xc($t3)
/* 40414 8003F814 000E7840 */  sll       $t7, $t6, 1
/* 40418 8003F818 006FC021 */  addu      $t8, $v1, $t7
/* 4041C 8003F81C 00E02025 */  or        $a0, $a3, $zero
/* 40420 8003F820 0C015B04 */  jal       func_80056C10
/* 40424 8003F824 A70C0000 */  sh        $t4, ($t8)
/* 40428 8003F828 8FB9003C */  lw        $t9, 0x3c($sp)
/* 4042C 8003F82C 3C018010 */  lui       $at, 0x8010
/* 40430 8003F830 00402025 */  or        $a0, $v0, $zero
/* 40434 8003F834 0C015B04 */  jal       func_80056C10
/* 40438 8003F838 A039CCA2 */  sb        $t9, -0x335e($at)
/* 4043C 8003F83C 3C038008 */  lui       $v1, 0x8008
/* 40440 8003F840 3C098008 */  lui       $t1, 0x8008
/* 40444 8003F844 3C088010 */  lui       $t0, 0x8010
/* 40448 8003F848 3C068010 */  lui       $a2, 0x8010
/* 4044C 8003F84C 3C058008 */  lui       $a1, 0x8008
/* 40450 8003F850 24070001 */  addiu     $a3, $zero, 1
/* 40454 8003F854 24A583A0 */  addiu     $a1, $a1, -0x7c60
/* 40458 8003F858 24C6CCB2 */  addiu     $a2, $a2, -0x334e
/* 4045C 8003F85C 2508CB18 */  addiu     $t0, $t0, -0x34e8
/* 40460 8003F860 252983D0 */  addiu     $t1, $t1, -0x7c30
/* 40464 8003F864 1000030D */  b         .L8004049C
/* 40468 8003F868 8C638544 */  lw        $v1, -0x7abc($v1)
/* 4046C 8003F86C 0C015B04 */  jal       func_80056C10
/* 40470 8003F870 00E02025 */  or        $a0, $a3, $zero
/* 40474 8003F874 8FAA003C */  lw        $t2, 0x3c($sp)
/* 40478 8003F878 3C018010 */  lui       $at, 0x8010
/* 4047C 8003F87C 00402025 */  or        $a0, $v0, $zero
/* 40480 8003F880 0C015B04 */  jal       func_80056C10
/* 40484 8003F884 A02ACCA2 */  sb        $t2, -0x335e($at)
/* 40488 8003F888 3C038008 */  lui       $v1, 0x8008
/* 4048C 8003F88C 3C098008 */  lui       $t1, 0x8008
/* 40490 8003F890 3C088010 */  lui       $t0, 0x8010
/* 40494 8003F894 3C068010 */  lui       $a2, 0x8010
/* 40498 8003F898 3C058008 */  lui       $a1, 0x8008
/* 4049C 8003F89C 24070001 */  addiu     $a3, $zero, 1
/* 404A0 8003F8A0 24A583A0 */  addiu     $a1, $a1, -0x7c60
/* 404A4 8003F8A4 24C6CCB2 */  addiu     $a2, $a2, -0x334e
/* 404A8 8003F8A8 2508CB18 */  addiu     $t0, $t0, -0x34e8
/* 404AC 8003F8AC 252983D0 */  addiu     $t1, $t1, -0x7c30
/* 404B0 8003F8B0 100002FA */  b         .L8004049C
/* 404B4 8003F8B4 8C638544 */  lw        $v1, -0x7abc($v1)
/* 404B8 8003F8B8 A0C70000 */  sb        $a3, ($a2)
/* 404BC 8003F8BC 3C018008 */  lui       $at, 0x8008
/* 404C0 8003F8C0 100002F6 */  b         .L8004049C
/* 404C4 8003F8C4 A02783EC */  sb        $a3, -0x7c14($at)
/* 404C8 8003F8C8 A1270000 */  sb        $a3, ($t1)
/* 404CC 8003F8CC 100002F3 */  b         .L8004049C
/* 404D0 8003F8D0 A0C70000 */  sb        $a3, ($a2)
/* 404D4 8003F8D4 0C01071C */  jal       func_80041C70
/* 404D8 8003F8D8 24040165 */  addiu     $a0, $zero, 0x165
/* 404DC 8003F8DC 3C018008 */  lui       $at, 0x8008
/* 404E0 8003F8E0 AC208544 */  sw        $zero, -0x7abc($at)
/* 404E4 8003F8E4 3C018010 */  lui       $at, 0x8010
/* 404E8 8003F8E8 00300821 */  addu      $at, $at, $s0
/* 404EC 8003F8EC 3C058008 */  lui       $a1, 0x8008
/* 404F0 8003F8F0 A020CCBE */  sb        $zero, -0x3342($at)
/* 404F4 8003F8F4 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 404F8 8003F8F8 24040016 */  addiu     $a0, $zero, 0x16
/* 404FC 8003F8FC 0C00D9E8 */  jal       func_800367A0
/* 40500 8003F900 00003025 */  or        $a2, $zero, $zero
/* 40504 8003F904 10000456 */  b         .L80040A60
/* 40508 8003F908 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4050C 8003F90C 00105940 */  sll       $t3, $s0, 5
/* 40510 8003F910 01705821 */  addu      $t3, $t3, $s0
/* 40514 8003F914 3C0D8010 */  lui       $t5, 0x8010
/* 40518 8003F918 25ADCB48 */  addiu     $t5, $t5, -0x34b8
/* 4051C 8003F91C 000B5880 */  sll       $t3, $t3, 2
/* 40520 8003F920 016D1821 */  addu      $v1, $t3, $t5
/* 40524 8003F924 8C62007C */  lw        $v0, 0x7c($v1)
/* 40528 8003F928 2404019F */  addiu     $a0, $zero, 0x19f
/* 4052C 8003F92C 14E20005 */  bne       $a3, $v0, .L8003F944
/* 40530 8003F930 2C410004 */  sltiu     $at, $v0, 4
/* 40534 8003F934 0C01071C */  jal       func_80041C70
/* 40538 8003F938 AFA30028 */  sw        $v1, 0x28($sp)
/* 4053C 8003F93C 1000000B */  b         .L8003F96C
/* 40540 8003F940 8FA30028 */  lw        $v1, 0x28($sp)
.L8003F944:
/* 40544 8003F944 14200006 */  bnez      $at, .L8003F960
/* 40548 8003F948 24040163 */  addiu     $a0, $zero, 0x163
/* 4054C 8003F94C 24040164 */  addiu     $a0, $zero, 0x164
/* 40550 8003F950 0C01071C */  jal       func_80041C70
/* 40554 8003F954 AFA30028 */  sw        $v1, 0x28($sp)
/* 40558 8003F958 10000004 */  b         .L8003F96C
/* 4055C 8003F95C 8FA30028 */  lw        $v1, 0x28($sp)
.L8003F960:
/* 40560 8003F960 0C01071C */  jal       func_80041C70
/* 40564 8003F964 AFA30028 */  sw        $v1, 0x28($sp)
/* 40568 8003F968 8FA30028 */  lw        $v1, 0x28($sp)
.L8003F96C:
/* 4056C 8003F96C 3C018008 */  lui       $at, 0x8008
/* 40570 8003F970 AC208544 */  sw        $zero, -0x7abc($at)
/* 40574 8003F974 3C018010 */  lui       $at, 0x8010
/* 40578 8003F978 AC60007C */  sw        $zero, 0x7c($v1)
/* 4057C 8003F97C 00300821 */  addu      $at, $at, $s0
/* 40580 8003F980 A020CCBC */  sb        $zero, -0x3344($at)
/* 40584 8003F984 3C018010 */  lui       $at, 0x8010
/* 40588 8003F988 3C058008 */  lui       $a1, 0x8008
/* 4058C 8003F98C A020CCB4 */  sb        $zero, -0x334c($at)
/* 40590 8003F990 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 40594 8003F994 24040016 */  addiu     $a0, $zero, 0x16
/* 40598 8003F998 0C00D9E8 */  jal       func_800367A0
/* 4059C 8003F99C 00003025 */  or        $a2, $zero, $zero
/* 405A0 8003F9A0 1000042F */  b         .L80040A60
/* 405A4 8003F9A4 8FBF001C */  lw        $ra, 0x1c($sp)
/* 405A8 8003F9A8 0C01071C */  jal       func_80041C70
/* 405AC 8003F9AC 2404017B */  addiu     $a0, $zero, 0x17b
/* 405B0 8003F9B0 3C018008 */  lui       $at, 0x8008
/* 405B4 8003F9B4 10000429 */  b         .L80040A5C
/* 405B8 8003F9B8 AC208544 */  sw        $zero, -0x7abc($at)
/* 405BC 8003F9BC 0C01071C */  jal       func_80041C70
/* 405C0 8003F9C0 24040186 */  addiu     $a0, $zero, 0x186
/* 405C4 8003F9C4 3C018010 */  lui       $at, 0x8010
/* 405C8 8003F9C8 00300821 */  addu      $at, $at, $s0
/* 405CC 8003F9CC A020CCC4 */  sb        $zero, -0x333c($at)
/* 405D0 8003F9D0 3C018008 */  lui       $at, 0x8008
/* 405D4 8003F9D4 10000421 */  b         .L80040A5C
/* 405D8 8003F9D8 AC208544 */  sw        $zero, -0x7abc($at)
/* 405DC 8003F9DC 0C01071C */  jal       func_80041C70
/* 405E0 8003F9E0 24040192 */  addiu     $a0, $zero, 0x192
/* 405E4 8003F9E4 3C018010 */  lui       $at, 0x8010
/* 405E8 8003F9E8 00300821 */  addu      $at, $at, $s0
/* 405EC 8003F9EC A020CCD4 */  sb        $zero, -0x332c($at)
/* 405F0 8003F9F0 3C018008 */  lui       $at, 0x8008
/* 405F4 8003F9F4 10000419 */  b         .L80040A5C
/* 405F8 8003F9F8 AC208544 */  sw        $zero, -0x7abc($at)
/* 405FC 8003F9FC 3C028008 */  lui       $v0, 0x8008
/* 40600 8003FA00 24428390 */  addiu     $v0, $v0, -0x7c70
/* 40604 8003FA04 904E0000 */  lbu       $t6, ($v0)
/* 40608 8003FA08 24040001 */  addiu     $a0, $zero, 1
/* 4060C 8003FA0C 3C058008 */  lui       $a1, 0x8008
/* 40610 8003FA10 148E000C */  bne       $a0, $t6, .L8003FA44
/* 40614 8003FA14 24A5801C */  addiu     $a1, $a1, -0x7fe4
/* 40618 8003FA18 904F0001 */  lbu       $t7, 1($v0)
/* 4061C 8003FA1C 3C0C8010 */  lui       $t4, 0x8010
/* 40620 8003FA20 258CCCBC */  addiu     $t4, $t4, -0x3344
/* 40624 8003FA24 148F0007 */  bne       $a0, $t7, .L8003FA44
/* 40628 8003FA28 020C3021 */  addu      $a2, $s0, $t4
/* 4062C 8003FA2C 3C058008 */  lui       $a1, 0x8008
/* 40630 8003FA30 24A58040 */  addiu     $a1, $a1, -0x7fc0
/* 40634 8003FA34 0C01083C */  jal       func_800420F0
/* 40638 8003FA38 2404017D */  addiu     $a0, $zero, 0x17d
/* 4063C 8003FA3C 10000006 */  b         .L8003FA58
/* 40640 8003FA40 00000000 */  nop       
.L8003FA44:
/* 40644 8003FA44 3C188010 */  lui       $t8, 0x8010
/* 40648 8003FA48 2718CCBC */  addiu     $t8, $t8, -0x3344
/* 4064C 8003FA4C 02183021 */  addu      $a2, $s0, $t8
/* 40650 8003FA50 0C01083C */  jal       func_800420F0
/* 40654 8003FA54 2404017D */  addiu     $a0, $zero, 0x17d
.L8003FA58:
/* 40658 8003FA58 3C018008 */  lui       $at, 0x8008
/* 4065C 8003FA5C 100003FF */  b         .L80040A5C
/* 40660 8003FA60 AC208544 */  sw        $zero, -0x7abc($at)
/* 40664 8003FA64 3C028008 */  lui       $v0, 0x8008
/* 40668 8003FA68 24428390 */  addiu     $v0, $v0, -0x7c70
/* 4066C 8003FA6C 90590000 */  lbu       $t9, ($v0)
/* 40670 8003FA70 24040001 */  addiu     $a0, $zero, 1
/* 40674 8003FA74 3C058008 */  lui       $a1, 0x8008
/* 40678 8003FA78 1499000C */  bne       $a0, $t9, .L8003FAAC
/* 4067C 8003FA7C 24A58024 */  addiu     $a1, $a1, -0x7fdc
/* 40680 8003FA80 904A0001 */  lbu       $t2, 1($v0)
/* 40684 8003FA84 3C0B8010 */  lui       $t3, 0x8010
/* 40688 8003FA88 256BCCBE */  addiu     $t3, $t3, -0x3342
/* 4068C 8003FA8C 148A0007 */  bne       $a0, $t2, .L8003FAAC
/* 40690 8003FA90 020B3021 */  addu      $a2, $s0, $t3
/* 40694 8003FA94 3C058008 */  lui       $a1, 0x8008
/* 40698 8003FA98 24A58038 */  addiu     $a1, $a1, -0x7fc8
/* 4069C 8003FA9C 0C01083C */  jal       func_800420F0
/* 406A0 8003FAA0 2404017E */  addiu     $a0, $zero, 0x17e
/* 406A4 8003FAA4 10000006 */  b         .L8003FAC0
/* 406A8 8003FAA8 00000000 */  nop       
.L8003FAAC:
/* 406AC 8003FAAC 3C0D8010 */  lui       $t5, 0x8010
/* 406B0 8003FAB0 25ADCCBE */  addiu     $t5, $t5, -0x3342
/* 406B4 8003FAB4 020D3021 */  addu      $a2, $s0, $t5
/* 406B8 8003FAB8 0C01083C */  jal       func_800420F0
/* 406BC 8003FABC 2404017E */  addiu     $a0, $zero, 0x17e
.L8003FAC0:
/* 406C0 8003FAC0 3C018008 */  lui       $at, 0x8008
/* 406C4 8003FAC4 100003E5 */  b         .L80040A5C
/* 406C8 8003FAC8 AC208544 */  sw        $zero, -0x7abc($at)
/* 406CC 8003FACC 3C028008 */  lui       $v0, 0x8008
/* 406D0 8003FAD0 24428390 */  addiu     $v0, $v0, -0x7c70
/* 406D4 8003FAD4 904E0000 */  lbu       $t6, ($v0)
/* 406D8 8003FAD8 24040001 */  addiu     $a0, $zero, 1
/* 406DC 8003FADC 3C058008 */  lui       $a1, 0x8008
/* 406E0 8003FAE0 148E000C */  bne       $a0, $t6, .L8003FB14
/* 406E4 8003FAE4 24A58030 */  addiu     $a1, $a1, -0x7fd0
/* 406E8 8003FAE8 904F0001 */  lbu       $t7, 1($v0)
/* 406EC 8003FAEC 3C0C8010 */  lui       $t4, 0x8010
/* 406F0 8003FAF0 258CCCC0 */  addiu     $t4, $t4, -0x3340
/* 406F4 8003FAF4 148F0007 */  bne       $a0, $t7, .L8003FB14
/* 406F8 8003FAF8 020C3021 */  addu      $a2, $s0, $t4
/* 406FC 8003FAFC 3C058008 */  lui       $a1, 0x8008
/* 40700 8003FB00 24A58040 */  addiu     $a1, $a1, -0x7fc0
/* 40704 8003FB04 0C01083C */  jal       func_800420F0
/* 40708 8003FB08 2404017F */  addiu     $a0, $zero, 0x17f
/* 4070C 8003FB0C 10000006 */  b         .L8003FB28
/* 40710 8003FB10 00000000 */  nop       
.L8003FB14:
/* 40714 8003FB14 3C188010 */  lui       $t8, 0x8010
/* 40718 8003FB18 2718CCC0 */  addiu     $t8, $t8, -0x3340
/* 4071C 8003FB1C 02183021 */  addu      $a2, $s0, $t8
/* 40720 8003FB20 0C01083C */  jal       func_800420F0
/* 40724 8003FB24 2404017F */  addiu     $a0, $zero, 0x17f
.L8003FB28:
/* 40728 8003FB28 3C018008 */  lui       $at, 0x8008
/* 4072C 8003FB2C 100003CB */  b         .L80040A5C
/* 40730 8003FB30 AC208544 */  sw        $zero, -0x7abc($at)
/* 40734 8003FB34 3C028008 */  lui       $v0, 0x8008
/* 40738 8003FB38 24428390 */  addiu     $v0, $v0, -0x7c70
/* 4073C 8003FB3C 90590000 */  lbu       $t9, ($v0)
/* 40740 8003FB40 24040001 */  addiu     $a0, $zero, 1
/* 40744 8003FB44 3C058008 */  lui       $a1, 0x8008
/* 40748 8003FB48 1499000C */  bne       $a0, $t9, .L8003FB7C
/* 4074C 8003FB4C 24A58048 */  addiu     $a1, $a1, -0x7fb8
/* 40750 8003FB50 904A0001 */  lbu       $t2, 1($v0)
/* 40754 8003FB54 3C0B8010 */  lui       $t3, 0x8010
/* 40758 8003FB58 256BCCC2 */  addiu     $t3, $t3, -0x333e
/* 4075C 8003FB5C 148A0007 */  bne       $a0, $t2, .L8003FB7C
/* 40760 8003FB60 020B3021 */  addu      $a2, $s0, $t3
/* 40764 8003FB64 3C058008 */  lui       $a1, 0x8008
/* 40768 8003FB68 24A58040 */  addiu     $a1, $a1, -0x7fc0
/* 4076C 8003FB6C 0C01083C */  jal       func_800420F0
/* 40770 8003FB70 2404017C */  addiu     $a0, $zero, 0x17c
/* 40774 8003FB74 10000006 */  b         .L8003FB90
/* 40778 8003FB78 00000000 */  nop       
.L8003FB7C:
/* 4077C 8003FB7C 3C0D8010 */  lui       $t5, 0x8010
/* 40780 8003FB80 25ADCCC2 */  addiu     $t5, $t5, -0x333e
/* 40784 8003FB84 020D3021 */  addu      $a2, $s0, $t5
/* 40788 8003FB88 0C01083C */  jal       func_800420F0
/* 4078C 8003FB8C 2404017C */  addiu     $a0, $zero, 0x17c
.L8003FB90:
/* 40790 8003FB90 3C018008 */  lui       $at, 0x8008
/* 40794 8003FB94 100003B1 */  b         .L80040A5C
/* 40798 8003FB98 AC208544 */  sw        $zero, -0x7abc($at)
/* 4079C 8003FB9C 3C028008 */  lui       $v0, 0x8008
/* 407A0 8003FBA0 24428390 */  addiu     $v0, $v0, -0x7c70
/* 407A4 8003FBA4 904E0000 */  lbu       $t6, ($v0)
/* 407A8 8003FBA8 24040001 */  addiu     $a0, $zero, 1
/* 407AC 8003FBAC 148E0008 */  bne       $a0, $t6, .L8003FBD0
/* 407B0 8003FBB0 00000000 */  nop       
/* 407B4 8003FBB4 904F0001 */  lbu       $t7, 1($v0)
/* 407B8 8003FBB8 148F0005 */  bne       $a0, $t7, .L8003FBD0
/* 407BC 8003FBBC 00000000 */  nop       
/* 407C0 8003FBC0 0C01071C */  jal       func_80041C70
/* 407C4 8003FBC4 24040180 */  addiu     $a0, $zero, 0x180
/* 407C8 8003FBC8 10000003 */  b         .L8003FBD8
/* 407CC 8003FBCC 00000000 */  nop       
.L8003FBD0:
/* 407D0 8003FBD0 0C01071C */  jal       func_80041C70
/* 407D4 8003FBD4 2404017C */  addiu     $a0, $zero, 0x17c
.L8003FBD8:
/* 407D8 8003FBD8 3C018008 */  lui       $at, 0x8008
/* 407DC 8003FBDC 1000039F */  b         .L80040A5C
/* 407E0 8003FBE0 AC208544 */  sw        $zero, -0x7abc($at)
/* 407E4 8003FBE4 3C048008 */  lui       $a0, 0x8008
/* 407E8 8003FBE8 0C010830 */  jal       func_800420C0
/* 407EC 8003FBEC 24848050 */  addiu     $a0, $a0, -0x7fb0
/* 407F0 8003FBF0 24070001 */  addiu     $a3, $zero, 1
/* 407F4 8003FBF4 3C018010 */  lui       $at, 0x8010
/* 407F8 8003FBF8 A027CCB6 */  sb        $a3, -0x334a($at)
/* 407FC 8003FBFC 3C018008 */  lui       $at, 0x8008
/* 40800 8003FC00 10000396 */  b         .L80040A5C
/* 40804 8003FC04 AC208544 */  sw        $zero, -0x7abc($at)
/* 40808 8003FC08 0C01071C */  jal       func_80041C70
/* 4080C 8003FC0C 2404017A */  addiu     $a0, $zero, 0x17a
/* 40810 8003FC10 3C018008 */  lui       $at, 0x8008
/* 40814 8003FC14 10000391 */  b         .L80040A5C
/* 40818 8003FC18 AC208544 */  sw        $zero, -0x7abc($at)
/* 4081C 8003FC1C 3C0C8010 */  lui       $t4, 0x8010
/* 40820 8003FC20 258CCCC4 */  addiu     $t4, $t4, -0x333c
/* 40824 8003FC24 020C1021 */  addu      $v0, $s0, $t4
/* 40828 8003FC28 90580000 */  lbu       $t8, ($v0)
/* 4082C 8003FC2C 3C048008 */  lui       $a0, 0x8008
/* 40830 8003FC30 A1270000 */  sb        $a3, ($t1)
/* 40834 8003FC34 13000006 */  beqz      $t8, .L8003FC50
/* 40838 8003FC38 24848058 */  addiu     $a0, $a0, -0x7fa8
/* 4083C 8003FC3C 3C048008 */  lui       $a0, 0x8008
/* 40840 8003FC40 0C010830 */  jal       func_800420C0
/* 40844 8003FC44 24848060 */  addiu     $a0, $a0, -0x7fa0
/* 40848 8003FC48 10000006 */  b         .L8003FC64
/* 4084C 8003FC4C 00000000 */  nop       
.L8003FC50:
/* 40850 8003FC50 0C010830 */  jal       func_800420C0
/* 40854 8003FC54 AFA20028 */  sw        $v0, 0x28($sp)
/* 40858 8003FC58 8FA20028 */  lw        $v0, 0x28($sp)
/* 4085C 8003FC5C 24070001 */  addiu     $a3, $zero, 1
/* 40860 8003FC60 A0470000 */  sb        $a3, ($v0)
.L8003FC64:
/* 40864 8003FC64 3C018008 */  lui       $at, 0x8008
/* 40868 8003FC68 3C058008 */  lui       $a1, 0x8008
/* 4086C 8003FC6C AC208544 */  sw        $zero, -0x7abc($at)
/* 40870 8003FC70 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 40874 8003FC74 24040016 */  addiu     $a0, $zero, 0x16
/* 40878 8003FC78 0C00D9E8 */  jal       func_800367A0
/* 4087C 8003FC7C 00003025 */  or        $a2, $zero, $zero
/* 40880 8003FC80 10000377 */  b         .L80040A60
/* 40884 8003FC84 8FBF001C */  lw        $ra, 0x1c($sp)
/* 40888 8003FC88 3C198010 */  lui       $t9, 0x8010
/* 4088C 8003FC8C 2739CCCA */  addiu     $t9, $t9, -0x3336
/* 40890 8003FC90 02191021 */  addu      $v0, $s0, $t9
/* 40894 8003FC94 904A0000 */  lbu       $t2, ($v0)
/* 40898 8003FC98 2404018E */  addiu     $a0, $zero, 0x18e
/* 4089C 8003FC9C 15400006 */  bnez      $t2, .L8003FCB8
/* 408A0 8003FCA0 00000000 */  nop       
/* 408A4 8003FCA4 2404018C */  addiu     $a0, $zero, 0x18c
/* 408A8 8003FCA8 0C01071C */  jal       func_80041C70
/* 408AC 8003FCAC AFA20028 */  sw        $v0, 0x28($sp)
/* 408B0 8003FCB0 10000004 */  b         .L8003FCC4
/* 408B4 8003FCB4 8FA20028 */  lw        $v0, 0x28($sp)
.L8003FCB8:
/* 408B8 8003FCB8 0C01071C */  jal       func_80041C70
/* 408BC 8003FCBC AFA20028 */  sw        $v0, 0x28($sp)
/* 408C0 8003FCC0 8FA20028 */  lw        $v0, 0x28($sp)
.L8003FCC4:
/* 408C4 8003FCC4 904B0000 */  lbu       $t3, ($v0)
/* 408C8 8003FCC8 3C018008 */  lui       $at, 0x8008
/* 408CC 8003FCCC 3C058008 */  lui       $a1, 0x8008
/* 408D0 8003FCD0 396D0001 */  xori      $t5, $t3, 1
/* 408D4 8003FCD4 A04D0000 */  sb        $t5, ($v0)
/* 408D8 8003FCD8 AC208544 */  sw        $zero, -0x7abc($at)
/* 408DC 8003FCDC 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 408E0 8003FCE0 24040016 */  addiu     $a0, $zero, 0x16
/* 408E4 8003FCE4 0C00D9E8 */  jal       func_800367A0
/* 408E8 8003FCE8 00003025 */  or        $a2, $zero, $zero
/* 408EC 8003FCEC 1000035C */  b         .L80040A60
/* 408F0 8003FCF0 8FBF001C */  lw        $ra, 0x1c($sp)
/* 408F4 8003FCF4 3C0E8010 */  lui       $t6, 0x8010
/* 408F8 8003FCF8 25CECCC6 */  addiu     $t6, $t6, -0x333a
/* 408FC 8003FCFC 3C058008 */  lui       $a1, 0x8008
/* 40900 8003FD00 24A58068 */  addiu     $a1, $a1, -0x7f98
/* 40904 8003FD04 020E3021 */  addu      $a2, $s0, $t6
/* 40908 8003FD08 0C01083C */  jal       func_800420F0
/* 4090C 8003FD0C 2404016A */  addiu     $a0, $zero, 0x16a
/* 40910 8003FD10 3C018008 */  lui       $at, 0x8008
/* 40914 8003FD14 10000351 */  b         .L80040A5C
/* 40918 8003FD18 AC208544 */  sw        $zero, -0x7abc($at)
/* 4091C 8003FD1C 3C0F8010 */  lui       $t7, 0x8010
/* 40920 8003FD20 25EFCCC6 */  addiu     $t7, $t7, -0x333a
/* 40924 8003FD24 3C058008 */  lui       $a1, 0x8008
/* 40928 8003FD28 24A58068 */  addiu     $a1, $a1, -0x7f98
/* 4092C 8003FD2C 020F3021 */  addu      $a2, $s0, $t7
/* 40930 8003FD30 0C01083C */  jal       func_800420F0
/* 40934 8003FD34 2404016B */  addiu     $a0, $zero, 0x16b
/* 40938 8003FD38 3C018008 */  lui       $at, 0x8008
/* 4093C 8003FD3C 10000347 */  b         .L80040A5C
/* 40940 8003FD40 AC208544 */  sw        $zero, -0x7abc($at)
/* 40944 8003FD44 3C0C8010 */  lui       $t4, 0x8010
/* 40948 8003FD48 258CCCC6 */  addiu     $t4, $t4, -0x333a
/* 4094C 8003FD4C 3C058008 */  lui       $a1, 0x8008
/* 40950 8003FD50 24A58068 */  addiu     $a1, $a1, -0x7f98
/* 40954 8003FD54 020C3021 */  addu      $a2, $s0, $t4
/* 40958 8003FD58 0C01083C */  jal       func_800420F0
/* 4095C 8003FD5C 2404016C */  addiu     $a0, $zero, 0x16c
/* 40960 8003FD60 3C018008 */  lui       $at, 0x8008
/* 40964 8003FD64 1000033D */  b         .L80040A5C
/* 40968 8003FD68 AC208544 */  sw        $zero, -0x7abc($at)
/* 4096C 8003FD6C 3C188010 */  lui       $t8, 0x8010
/* 40970 8003FD70 2718CCC6 */  addiu     $t8, $t8, -0x333a
/* 40974 8003FD74 3C058008 */  lui       $a1, 0x8008
/* 40978 8003FD78 24A58068 */  addiu     $a1, $a1, -0x7f98
/* 4097C 8003FD7C 02183021 */  addu      $a2, $s0, $t8
/* 40980 8003FD80 0C01083C */  jal       func_800420F0
/* 40984 8003FD84 2404016D */  addiu     $a0, $zero, 0x16d
/* 40988 8003FD88 3C018008 */  lui       $at, 0x8008
/* 4098C 8003FD8C 10000333 */  b         .L80040A5C
/* 40990 8003FD90 AC208544 */  sw        $zero, -0x7abc($at)
/* 40994 8003FD94 3C198010 */  lui       $t9, 0x8010
/* 40998 8003FD98 2739CCC6 */  addiu     $t9, $t9, -0x333a
/* 4099C 8003FD9C 3C058008 */  lui       $a1, 0x8008
/* 409A0 8003FDA0 24A58068 */  addiu     $a1, $a1, -0x7f98
/* 409A4 8003FDA4 02193021 */  addu      $a2, $s0, $t9
/* 409A8 8003FDA8 0C01083C */  jal       func_800420F0
/* 409AC 8003FDAC 2404016E */  addiu     $a0, $zero, 0x16e
/* 409B0 8003FDB0 3C018008 */  lui       $at, 0x8008
/* 409B4 8003FDB4 10000329 */  b         .L80040A5C
/* 409B8 8003FDB8 AC208544 */  sw        $zero, -0x7abc($at)
/* 409BC 8003FDBC 3C0A8010 */  lui       $t2, 0x8010
/* 409C0 8003FDC0 254ACCC6 */  addiu     $t2, $t2, -0x333a
/* 409C4 8003FDC4 3C058008 */  lui       $a1, 0x8008
/* 409C8 8003FDC8 24A58068 */  addiu     $a1, $a1, -0x7f98
/* 409CC 8003FDCC 020A3021 */  addu      $a2, $s0, $t2
/* 409D0 8003FDD0 0C01083C */  jal       func_800420F0
/* 409D4 8003FDD4 2404016F */  addiu     $a0, $zero, 0x16f
/* 409D8 8003FDD8 3C018008 */  lui       $at, 0x8008
/* 409DC 8003FDDC 1000031F */  b         .L80040A5C
/* 409E0 8003FDE0 AC208544 */  sw        $zero, -0x7abc($at)
/* 409E4 8003FDE4 3C0B8010 */  lui       $t3, 0x8010
/* 409E8 8003FDE8 256BCCC6 */  addiu     $t3, $t3, -0x333a
/* 409EC 8003FDEC 3C058008 */  lui       $a1, 0x8008
/* 409F0 8003FDF0 24A58068 */  addiu     $a1, $a1, -0x7f98
/* 409F4 8003FDF4 020B3021 */  addu      $a2, $s0, $t3
/* 409F8 8003FDF8 0C01083C */  jal       func_800420F0
/* 409FC 8003FDFC 24040170 */  addiu     $a0, $zero, 0x170
/* 40A00 8003FE00 3C018008 */  lui       $at, 0x8008
/* 40A04 8003FE04 10000315 */  b         .L80040A5C
/* 40A08 8003FE08 AC208544 */  sw        $zero, -0x7abc($at)
/* 40A0C 8003FE0C 3C0D8010 */  lui       $t5, 0x8010
/* 40A10 8003FE10 25ADCCC6 */  addiu     $t5, $t5, -0x333a
/* 40A14 8003FE14 3C058008 */  lui       $a1, 0x8008
/* 40A18 8003FE18 24A58068 */  addiu     $a1, $a1, -0x7f98
/* 40A1C 8003FE1C 020D3021 */  addu      $a2, $s0, $t5
/* 40A20 8003FE20 0C01083C */  jal       func_800420F0
/* 40A24 8003FE24 24040171 */  addiu     $a0, $zero, 0x171
/* 40A28 8003FE28 3C018008 */  lui       $at, 0x8008
/* 40A2C 8003FE2C 1000030B */  b         .L80040A5C
/* 40A30 8003FE30 AC208544 */  sw        $zero, -0x7abc($at)
/* 40A34 8003FE34 3C0E8010 */  lui       $t6, 0x8010
/* 40A38 8003FE38 25CECCC6 */  addiu     $t6, $t6, -0x333a
/* 40A3C 8003FE3C 3C058008 */  lui       $a1, 0x8008
/* 40A40 8003FE40 24A58068 */  addiu     $a1, $a1, -0x7f98
/* 40A44 8003FE44 020E3021 */  addu      $a2, $s0, $t6
/* 40A48 8003FE48 0C01083C */  jal       func_800420F0
/* 40A4C 8003FE4C 24040169 */  addiu     $a0, $zero, 0x169
/* 40A50 8003FE50 3C018008 */  lui       $at, 0x8008
/* 40A54 8003FE54 10000301 */  b         .L80040A5C
/* 40A58 8003FE58 AC208544 */  sw        $zero, -0x7abc($at)
/* 40A5C 8003FE5C 3C0F8010 */  lui       $t7, 0x8010
/* 40A60 8003FE60 25EFCCC6 */  addiu     $t7, $t7, -0x333a
/* 40A64 8003FE64 3C058008 */  lui       $a1, 0x8008
/* 40A68 8003FE68 24A58068 */  addiu     $a1, $a1, -0x7f98
/* 40A6C 8003FE6C 020F3021 */  addu      $a2, $s0, $t7
/* 40A70 8003FE70 0C01083C */  jal       func_800420F0
/* 40A74 8003FE74 24040194 */  addiu     $a0, $zero, 0x194
/* 40A78 8003FE78 3C018008 */  lui       $at, 0x8008
/* 40A7C 8003FE7C 100002F7 */  b         .L80040A5C
/* 40A80 8003FE80 AC208544 */  sw        $zero, -0x7abc($at)
/* 40A84 8003FE84 0C01071C */  jal       func_80041C70
/* 40A88 8003FE88 240401A0 */  addiu     $a0, $zero, 0x1a0
/* 40A8C 8003FE8C 3C018008 */  lui       $at, 0x8008
/* 40A90 8003FE90 100002F2 */  b         .L80040A5C
/* 40A94 8003FE94 AC208544 */  sw        $zero, -0x7abc($at)
/* 40A98 8003FE98 3C0C8010 */  lui       $t4, 0x8010
/* 40A9C 8003FE9C 258CCCC8 */  addiu     $t4, $t4, -0x3338
/* 40AA0 8003FEA0 020C3021 */  addu      $a2, $s0, $t4
/* 40AA4 8003FEA4 90D80000 */  lbu       $t8, ($a2)
/* 40AA8 8003FEA8 3C058008 */  lui       $a1, 0x8008
/* 40AAC 8003FEAC 24A58070 */  addiu     $a1, $a1, -0x7f90
/* 40AB0 8003FEB0 2B010003 */  slti      $at, $t8, 3
/* 40AB4 8003FEB4 10200005 */  beqz      $at, .L8003FECC
/* 40AB8 8003FEB8 3C048008 */  lui       $a0, 0x8008
/* 40ABC 8003FEBC 0C01083C */  jal       func_800420F0
/* 40AC0 8003FEC0 240400A2 */  addiu     $a0, $zero, 0xa2
/* 40AC4 8003FEC4 10000003 */  b         .L8003FED4
/* 40AC8 8003FEC8 00000000 */  nop       
.L8003FECC:
/* 40ACC 8003FECC 0C010830 */  jal       func_800420C0
/* 40AD0 8003FED0 24848078 */  addiu     $a0, $a0, -0x7f88
.L8003FED4:
/* 40AD4 8003FED4 3C018008 */  lui       $at, 0x8008
/* 40AD8 8003FED8 100002E0 */  b         .L80040A5C
/* 40ADC 8003FEDC AC208544 */  sw        $zero, -0x7abc($at)
/* 40AE0 8003FEE0 3C198010 */  lui       $t9, 0x8010
/* 40AE4 8003FEE4 2739CCC8 */  addiu     $t9, $t9, -0x3338
/* 40AE8 8003FEE8 02193021 */  addu      $a2, $s0, $t9
/* 40AEC 8003FEEC 90CA0000 */  lbu       $t2, ($a2)
/* 40AF0 8003FEF0 3C058008 */  lui       $a1, 0x8008
/* 40AF4 8003FEF4 24A58070 */  addiu     $a1, $a1, -0x7f90
/* 40AF8 8003FEF8 29410003 */  slti      $at, $t2, 3
/* 40AFC 8003FEFC 10200005 */  beqz      $at, .L8003FF14
/* 40B00 8003FF00 3C048008 */  lui       $a0, 0x8008
/* 40B04 8003FF04 0C01083C */  jal       func_800420F0
/* 40B08 8003FF08 240400A3 */  addiu     $a0, $zero, 0xa3
/* 40B0C 8003FF0C 10000003 */  b         .L8003FF1C
/* 40B10 8003FF10 00000000 */  nop       
.L8003FF14:
/* 40B14 8003FF14 0C010830 */  jal       func_800420C0
/* 40B18 8003FF18 24848078 */  addiu     $a0, $a0, -0x7f88
.L8003FF1C:
/* 40B1C 8003FF1C 3C018008 */  lui       $at, 0x8008
/* 40B20 8003FF20 100002CE */  b         .L80040A5C
/* 40B24 8003FF24 AC208544 */  sw        $zero, -0x7abc($at)
/* 40B28 8003FF28 3C0B8010 */  lui       $t3, 0x8010
/* 40B2C 8003FF2C 256BCCC8 */  addiu     $t3, $t3, -0x3338
/* 40B30 8003FF30 020B3021 */  addu      $a2, $s0, $t3
/* 40B34 8003FF34 90CD0000 */  lbu       $t5, ($a2)
/* 40B38 8003FF38 3C058008 */  lui       $a1, 0x8008
/* 40B3C 8003FF3C 24A58070 */  addiu     $a1, $a1, -0x7f90
/* 40B40 8003FF40 29A10003 */  slti      $at, $t5, 3
/* 40B44 8003FF44 10200005 */  beqz      $at, .L8003FF5C
/* 40B48 8003FF48 3C048008 */  lui       $a0, 0x8008
/* 40B4C 8003FF4C 0C01083C */  jal       func_800420F0
/* 40B50 8003FF50 240400A7 */  addiu     $a0, $zero, 0xa7
/* 40B54 8003FF54 10000003 */  b         .L8003FF64
/* 40B58 8003FF58 00000000 */  nop       
.L8003FF5C:
/* 40B5C 8003FF5C 0C010830 */  jal       func_800420C0
/* 40B60 8003FF60 24848078 */  addiu     $a0, $a0, -0x7f88
.L8003FF64:
/* 40B64 8003FF64 3C018008 */  lui       $at, 0x8008
/* 40B68 8003FF68 100002BC */  b         .L80040A5C
/* 40B6C 8003FF6C AC208544 */  sw        $zero, -0x7abc($at)
/* 40B70 8003FF70 3C0E8010 */  lui       $t6, 0x8010
/* 40B74 8003FF74 25CECCC8 */  addiu     $t6, $t6, -0x3338
/* 40B78 8003FF78 020E3021 */  addu      $a2, $s0, $t6
/* 40B7C 8003FF7C 90CF0000 */  lbu       $t7, ($a2)
/* 40B80 8003FF80 3C058008 */  lui       $a1, 0x8008
/* 40B84 8003FF84 24A58070 */  addiu     $a1, $a1, -0x7f90
/* 40B88 8003FF88 29E10003 */  slti      $at, $t7, 3
/* 40B8C 8003FF8C 10200005 */  beqz      $at, .L8003FFA4
/* 40B90 8003FF90 3C048008 */  lui       $a0, 0x8008
/* 40B94 8003FF94 0C01083C */  jal       func_800420F0
/* 40B98 8003FF98 240400A4 */  addiu     $a0, $zero, 0xa4
/* 40B9C 8003FF9C 10000003 */  b         .L8003FFAC
/* 40BA0 8003FFA0 00000000 */  nop       
.L8003FFA4:
/* 40BA4 8003FFA4 0C010830 */  jal       func_800420C0
/* 40BA8 8003FFA8 24848078 */  addiu     $a0, $a0, -0x7f88
.L8003FFAC:
/* 40BAC 8003FFAC 3C018008 */  lui       $at, 0x8008
/* 40BB0 8003FFB0 100002AA */  b         .L80040A5C
/* 40BB4 8003FFB4 AC208544 */  sw        $zero, -0x7abc($at)
/* 40BB8 8003FFB8 3C0C8010 */  lui       $t4, 0x8010
/* 40BBC 8003FFBC 258CCCC8 */  addiu     $t4, $t4, -0x3338
/* 40BC0 8003FFC0 020C3021 */  addu      $a2, $s0, $t4
/* 40BC4 8003FFC4 90D80000 */  lbu       $t8, ($a2)
/* 40BC8 8003FFC8 3C058008 */  lui       $a1, 0x8008
/* 40BCC 8003FFCC 24A58070 */  addiu     $a1, $a1, -0x7f90
/* 40BD0 8003FFD0 2B010003 */  slti      $at, $t8, 3
/* 40BD4 8003FFD4 10200005 */  beqz      $at, .L8003FFEC
/* 40BD8 8003FFD8 3C048008 */  lui       $a0, 0x8008
/* 40BDC 8003FFDC 0C01083C */  jal       func_800420F0
/* 40BE0 8003FFE0 240400A5 */  addiu     $a0, $zero, 0xa5
/* 40BE4 8003FFE4 10000003 */  b         .L8003FFF4
/* 40BE8 8003FFE8 00000000 */  nop       
.L8003FFEC:
/* 40BEC 8003FFEC 0C010830 */  jal       func_800420C0
/* 40BF0 8003FFF0 24848078 */  addiu     $a0, $a0, -0x7f88
.L8003FFF4:
/* 40BF4 8003FFF4 3C018008 */  lui       $at, 0x8008
/* 40BF8 8003FFF8 10000298 */  b         .L80040A5C
/* 40BFC 8003FFFC AC208544 */  sw        $zero, -0x7abc($at)
/* 40C00 80040000 3C198010 */  lui       $t9, 0x8010
/* 40C04 80040004 2739CCC8 */  addiu     $t9, $t9, -0x3338
/* 40C08 80040008 02193021 */  addu      $a2, $s0, $t9
/* 40C0C 8004000C 90CA0000 */  lbu       $t2, ($a2)
/* 40C10 80040010 3C058008 */  lui       $a1, 0x8008
/* 40C14 80040014 24A58070 */  addiu     $a1, $a1, -0x7f90
/* 40C18 80040018 29410003 */  slti      $at, $t2, 3
/* 40C1C 8004001C 10200005 */  beqz      $at, .L80040034
/* 40C20 80040020 3C048008 */  lui       $a0, 0x8008
/* 40C24 80040024 0C01083C */  jal       func_800420F0
/* 40C28 80040028 240400A6 */  addiu     $a0, $zero, 0xa6
/* 40C2C 8004002C 10000003 */  b         .L8004003C
/* 40C30 80040030 00000000 */  nop       
.L80040034:
/* 40C34 80040034 0C010830 */  jal       func_800420C0
/* 40C38 80040038 24848078 */  addiu     $a0, $a0, -0x7f88
.L8004003C:
/* 40C3C 8004003C 3C018008 */  lui       $at, 0x8008
/* 40C40 80040040 10000286 */  b         .L80040A5C
/* 40C44 80040044 AC208544 */  sw        $zero, -0x7abc($at)
/* 40C48 80040048 3C0B8010 */  lui       $t3, 0x8010
/* 40C4C 8004004C 916BCCAC */  lbu       $t3, -0x3354($t3)
/* 40C50 80040050 3C0E8008 */  lui       $t6, 0x8008
/* 40C54 80040054 00107880 */  sll       $t7, $s0, 2
/* 40C58 80040058 000B6880 */  sll       $t5, $t3, 2
/* 40C5C 8004005C 01AB6823 */  subu      $t5, $t5, $t3
/* 40C60 80040060 01CD7021 */  addu      $t6, $t6, $t5
/* 40C64 80040064 91CE80B3 */  lbu       $t6, -0x7f4d($t6)
/* 40C68 80040068 010F6021 */  addu      $t4, $t0, $t7
/* 40C6C 8004006C 3C048007 */  lui       $a0, 0x8007
/* 40C70 80040070 15C0000E */  bnez      $t6, .L800400AC
/* 40C74 80040074 00000000 */  nop       
/* 40C78 80040078 8D820000 */  lw        $v0, ($t4)
/* 40C7C 8004007C 24030008 */  addiu     $v1, $zero, 8
/* 40C80 80040080 9058001C */  lbu       $t8, 0x1c($v0)
/* 40C84 80040084 10780004 */  beq       $v1, $t8, .L80040098
/* 40C88 80040088 00000000 */  nop       
/* 40C8C 8004008C 9059001D */  lbu       $t9, 0x1d($v0)
/* 40C90 80040090 14790006 */  bne       $v1, $t9, .L800400AC
/* 40C94 80040094 00000000 */  nop       
.L80040098:
/* 40C98 80040098 3C048007 */  lui       $a0, 0x8007
/* 40C9C 8004009C 0C010830 */  jal       func_800420C0
/* 40CA0 800400A0 24847F24 */  addiu     $a0, $a0, 0x7f24
/* 40CA4 800400A4 10000003 */  b         .L800400B4
/* 40CA8 800400A8 00000000 */  nop       
.L800400AC:
/* 40CAC 800400AC 0C010830 */  jal       func_800420C0
/* 40CB0 800400B0 24847F14 */  addiu     $a0, $a0, 0x7f14
.L800400B4:
/* 40CB4 800400B4 3C018008 */  lui       $at, 0x8008
/* 40CB8 800400B8 10000268 */  b         .L80040A5C
/* 40CBC 800400BC AC208544 */  sw        $zero, -0x7abc($at)
/* 40CC0 800400C0 3C0A8010 */  lui       $t2, 0x8010
/* 40CC4 800400C4 254ACCD2 */  addiu     $t2, $t2, -0x332e
/* 40CC8 800400C8 3A030001 */  xori      $v1, $s0, 1
/* 40CCC 800400CC 006A5821 */  addu      $t3, $v1, $t2
/* 40CD0 800400D0 AFAB0024 */  sw        $t3, 0x24($sp)
/* 40CD4 800400D4 916E0000 */  lbu       $t6, ($t3)
/* 40CD8 800400D8 3C048007 */  lui       $a0, 0x8007
/* 40CDC 800400DC 3C0F8008 */  lui       $t7, 0x8008
/* 40CE0 800400E0 11C00005 */  beqz      $t6, .L800400F8
/* 40CE4 800400E4 00000000 */  nop       
/* 40CE8 800400E8 0C010830 */  jal       func_800420C0
/* 40CEC 800400EC 24847F50 */  addiu     $a0, $a0, 0x7f50
/* 40CF0 800400F0 1000001F */  b         .L80040170
/* 40CF4 800400F4 00000000 */  nop       
.L800400F8:
/* 40CF8 800400F8 91EF83D4 */  lbu       $t7, -0x7c2c($t7)
/* 40CFC 800400FC 3C028008 */  lui       $v0, 0x8008
/* 40D00 80040100 24428390 */  addiu     $v0, $v0, -0x7c70
/* 40D04 80040104 15E0000A */  bnez      $t7, .L80040130
/* 40D08 80040108 00436021 */  addu      $t4, $v0, $v1
/* 40D0C 8004010C 91980000 */  lbu       $t8, ($t4)
/* 40D10 80040110 24040001 */  addiu     $a0, $zero, 1
/* 40D14 80040114 0003C880 */  sll       $t9, $v1, 2
/* 40D18 80040118 1498000F */  bne       $a0, $t8, .L80040158
/* 40D1C 8004011C 01195021 */  addu      $t2, $t0, $t9
/* 40D20 80040120 8D4B0000 */  lw        $t3, ($t2)
/* 40D24 80040124 956D000C */  lhu       $t5, 0xc($t3)
/* 40D28 80040128 29A10013 */  slti      $at, $t5, 0x13
/* 40D2C 8004012C 1020000A */  beqz      $at, .L80040158
.L80040130:
/* 40D30 80040130 3C048007 */  lui       $a0, 0x8007
/* 40D34 80040134 0C010830 */  jal       func_800420C0
/* 40D38 80040138 24847F1C */  addiu     $a0, $a0, 0x7f1c
/* 40D3C 8004013C 3C058008 */  lui       $a1, 0x8008
/* 40D40 80040140 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 40D44 80040144 24040016 */  addiu     $a0, $zero, 0x16
/* 40D48 80040148 0C00D9E8 */  jal       func_800367A0
/* 40D4C 8004014C 00003025 */  or        $a2, $zero, $zero
/* 40D50 80040150 10000005 */  b         .L80040168
/* 40D54 80040154 24070001 */  addiu     $a3, $zero, 1
.L80040158:
/* 40D58 80040158 3C048007 */  lui       $a0, 0x8007
/* 40D5C 8004015C 0C010830 */  jal       func_800420C0
/* 40D60 80040160 24847F0C */  addiu     $a0, $a0, 0x7f0c
/* 40D64 80040164 24070001 */  addiu     $a3, $zero, 1
.L80040168:
/* 40D68 80040168 8FAE0024 */  lw        $t6, 0x24($sp)
/* 40D6C 8004016C A1C70000 */  sb        $a3, ($t6)
.L80040170:
/* 40D70 80040170 3C018008 */  lui       $at, 0x8008
/* 40D74 80040174 10000239 */  b         .L80040A5C
/* 40D78 80040178 AC208544 */  sw        $zero, -0x7abc($at)
/* 40D7C 8004017C 3C048007 */  lui       $a0, 0x8007
/* 40D80 80040180 0C010830 */  jal       func_800420C0
/* 40D84 80040184 24847F0C */  addiu     $a0, $a0, 0x7f0c
/* 40D88 80040188 3C018008 */  lui       $at, 0x8008
/* 40D8C 8004018C 10000233 */  b         .L80040A5C
/* 40D90 80040190 AC208544 */  sw        $zero, -0x7abc($at)
/* 40D94 80040194 3C048008 */  lui       $a0, 0x8008
/* 40D98 80040198 0C010830 */  jal       func_800420C0
/* 40D9C 8004019C 24848088 */  addiu     $a0, $a0, -0x7f78
/* 40DA0 800401A0 3C018008 */  lui       $at, 0x8008
/* 40DA4 800401A4 1000022D */  b         .L80040A5C
/* 40DA8 800401A8 AC208544 */  sw        $zero, -0x7abc($at)
/* 40DAC 800401AC 3C048008 */  lui       $a0, 0x8008
/* 40DB0 800401B0 0C010830 */  jal       func_800420C0
/* 40DB4 800401B4 24848090 */  addiu     $a0, $a0, -0x7f70
/* 40DB8 800401B8 3C018008 */  lui       $at, 0x8008
/* 40DBC 800401BC 10000227 */  b         .L80040A5C
/* 40DC0 800401C0 AC208544 */  sw        $zero, -0x7abc($at)
/* 40DC4 800401C4 0C01071C */  jal       func_80041C70
/* 40DC8 800401C8 2404018D */  addiu     $a0, $zero, 0x18d
/* 40DCC 800401CC 3C018008 */  lui       $at, 0x8008
/* 40DD0 800401D0 10000222 */  b         .L80040A5C
/* 40DD4 800401D4 AC208544 */  sw        $zero, -0x7abc($at)
/* 40DD8 800401D8 0C01071C */  jal       func_80041C70
/* 40DDC 800401DC 2404018F */  addiu     $a0, $zero, 0x18f
/* 40DE0 800401E0 3C018008 */  lui       $at, 0x8008
/* 40DE4 800401E4 1000021D */  b         .L80040A5C
/* 40DE8 800401E8 AC208544 */  sw        $zero, -0x7abc($at)
/* 40DEC 800401EC 3C0F8010 */  lui       $t7, 0x8010
/* 40DF0 800401F0 25EFCCCE */  addiu     $t7, $t7, -0x3332
/* 40DF4 800401F4 3C058008 */  lui       $a1, 0x8008
/* 40DF8 800401F8 24A58098 */  addiu     $a1, $a1, -0x7f68
/* 40DFC 800401FC 020F3021 */  addu      $a2, $s0, $t7
/* 40E00 80040200 0C01083C */  jal       func_800420F0
/* 40E04 80040204 2404018A */  addiu     $a0, $zero, 0x18a
/* 40E08 80040208 3C018008 */  lui       $at, 0x8008
/* 40E0C 8004020C 3C058008 */  lui       $a1, 0x8008
/* 40E10 80040210 AC208544 */  sw        $zero, -0x7abc($at)
/* 40E14 80040214 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 40E18 80040218 24040016 */  addiu     $a0, $zero, 0x16
/* 40E1C 8004021C 0C00D9E8 */  jal       func_800367A0
/* 40E20 80040220 00003025 */  or        $a2, $zero, $zero
/* 40E24 80040224 1000020E */  b         .L80040A60
/* 40E28 80040228 8FBF001C */  lw        $ra, 0x1c($sp)
/* 40E2C 8004022C 3C0C8010 */  lui       $t4, 0x8010
/* 40E30 80040230 258CCCD0 */  addiu     $t4, $t4, -0x3330
/* 40E34 80040234 3C058008 */  lui       $a1, 0x8008
/* 40E38 80040238 24A580A0 */  addiu     $a1, $a1, -0x7f60
/* 40E3C 8004023C 020C3021 */  addu      $a2, $s0, $t4
/* 40E40 80040240 0C01083C */  jal       func_800420F0
/* 40E44 80040244 2404018B */  addiu     $a0, $zero, 0x18b
/* 40E48 80040248 3C018008 */  lui       $at, 0x8008
/* 40E4C 8004024C 3C058008 */  lui       $a1, 0x8008
/* 40E50 80040250 AC208544 */  sw        $zero, -0x7abc($at)
/* 40E54 80040254 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 40E58 80040258 24040016 */  addiu     $a0, $zero, 0x16
/* 40E5C 8004025C 0C00D9E8 */  jal       func_800367A0
/* 40E60 80040260 00003025 */  or        $a2, $zero, $zero
/* 40E64 80040264 100001FE */  b         .L80040A60
/* 40E68 80040268 8FBF001C */  lw        $ra, 0x1c($sp)
/* 40E6C 8004026C 0C01071C */  jal       func_80041C70
/* 40E70 80040270 24040076 */  addiu     $a0, $zero, 0x76
/* 40E74 80040274 3C018008 */  lui       $at, 0x8008
/* 40E78 80040278 100001F8 */  b         .L80040A5C
/* 40E7C 8004027C AC208544 */  sw        $zero, -0x7abc($at)
/* 40E80 80040280 3C048008 */  lui       $a0, 0x8008
/* 40E84 80040284 0C010830 */  jal       func_800420C0
/* 40E88 80040288 24848080 */  addiu     $a0, $a0, -0x7f80
/* 40E8C 8004028C 3C018008 */  lui       $at, 0x8008
/* 40E90 80040290 100001F2 */  b         .L80040A5C
/* 40E94 80040294 AC208544 */  sw        $zero, -0x7abc($at)
/* 40E98 80040298 0C01071C */  jal       func_80041C70
/* 40E9C 8004029C 24040189 */  addiu     $a0, $zero, 0x189
/* 40EA0 800402A0 3C018008 */  lui       $at, 0x8008
/* 40EA4 800402A4 3C058008 */  lui       $a1, 0x8008
/* 40EA8 800402A8 AC208544 */  sw        $zero, -0x7abc($at)
/* 40EAC 800402AC 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 40EB0 800402B0 24040016 */  addiu     $a0, $zero, 0x16
/* 40EB4 800402B4 0C00D9E8 */  jal       func_800367A0
/* 40EB8 800402B8 00003025 */  or        $a2, $zero, $zero
/* 40EBC 800402BC 24070001 */  addiu     $a3, $zero, 1
/* 40EC0 800402C0 3C018008 */  lui       $at, 0x8008
/* 40EC4 800402C4 100001E5 */  b         .L80040A5C
/* 40EC8 800402C8 A02783D0 */  sb        $a3, -0x7c30($at)
/* 40ECC 800402CC 3C048007 */  lui       $a0, 0x8007
/* 40ED0 800402D0 0C010830 */  jal       func_800420C0
/* 40ED4 800402D4 24847F34 */  addiu     $a0, $a0, 0x7f34
/* 40ED8 800402D8 3C018008 */  lui       $at, 0x8008
/* 40EDC 800402DC 100001DF */  b         .L80040A5C
/* 40EE0 800402E0 AC208544 */  sw        $zero, -0x7abc($at)
/* 40EE4 800402E4 3C048007 */  lui       $a0, 0x8007
/* 40EE8 800402E8 0C010830 */  jal       func_800420C0
/* 40EEC 800402EC 24847F3C */  addiu     $a0, $a0, 0x7f3c
/* 40EF0 800402F0 3C018008 */  lui       $at, 0x8008
/* 40EF4 800402F4 100001D9 */  b         .L80040A5C
/* 40EF8 800402F8 AC208544 */  sw        $zero, -0x7abc($at)
/* 40EFC 800402FC 0C01071C */  jal       func_80041C70
/* 40F00 80040300 2404007A */  addiu     $a0, $zero, 0x7a
/* 40F04 80040304 3C018008 */  lui       $at, 0x8008
/* 40F08 80040308 100001D4 */  b         .L80040A5C
/* 40F0C 8004030C AC208544 */  sw        $zero, -0x7abc($at)
/* 40F10 80040310 3C048007 */  lui       $a0, 0x8007
/* 40F14 80040314 0C010830 */  jal       func_800420C0
/* 40F18 80040318 24847F2C */  addiu     $a0, $a0, 0x7f2c
/* 40F1C 8004031C 3C018008 */  lui       $at, 0x8008
/* 40F20 80040320 100001CE */  b         .L80040A5C
/* 40F24 80040324 AC208544 */  sw        $zero, -0x7abc($at)
/* 40F28 80040328 0010C140 */  sll       $t8, $s0, 5
/* 40F2C 8004032C 0310C021 */  addu      $t8, $t8, $s0
/* 40F30 80040330 3C198010 */  lui       $t9, 0x8010
/* 40F34 80040334 3C0B8010 */  lui       $t3, 0x8010
/* 40F38 80040338 256BCB18 */  addiu     $t3, $t3, -0x34e8
/* 40F3C 8004033C 2739CB48 */  addiu     $t9, $t9, -0x34b8
/* 40F40 80040340 0018C080 */  sll       $t8, $t8, 2
/* 40F44 80040344 00105080 */  sll       $t2, $s0, 2
/* 40F48 80040348 014B6821 */  addu      $t5, $t2, $t3
/* 40F4C 8004034C 03191821 */  addu      $v1, $t8, $t9
/* 40F50 80040350 AFA30028 */  sw        $v1, 0x28($sp)
/* 40F54 80040354 AFAD0024 */  sw        $t5, 0x24($sp)
/* 40F58 80040358 0C01071C */  jal       func_80041C70
/* 40F5C 8004035C 24040167 */  addiu     $a0, $zero, 0x167
/* 40F60 80040360 8FA30028 */  lw        $v1, 0x28($sp)
/* 40F64 80040364 8FAC0024 */  lw        $t4, 0x24($sp)
/* 40F68 80040368 3C018008 */  lui       $at, 0x8008
/* 40F6C 8004036C 8C6E0024 */  lw        $t6, 0x24($v1)
/* 40F70 80040370 25CF0001 */  addiu     $t7, $t6, 1
/* 40F74 80040374 AC6F0024 */  sw        $t7, 0x24($v1)
/* 40F78 80040378 8D980000 */  lw        $t8, ($t4)
/* 40F7C 8004037C 31EB000F */  andi      $t3, $t7, 0xf
/* 40F80 80040380 000B6840 */  sll       $t5, $t3, 1
/* 40F84 80040384 9719000C */  lhu       $t9, 0xc($t8)
/* 40F88 80040388 006D7021 */  addu      $t6, $v1, $t5
/* 40F8C 8004038C A5D90000 */  sh        $t9, ($t6)
/* 40F90 80040390 100001B2 */  b         .L80040A5C
/* 40F94 80040394 AC208544 */  sw        $zero, -0x7abc($at)
/* 40F98 80040398 00107940 */  sll       $t7, $s0, 5
/* 40F9C 8004039C 01F07821 */  addu      $t7, $t7, $s0
/* 40FA0 800403A0 3C0C8010 */  lui       $t4, 0x8010
/* 40FA4 800403A4 3C0A8010 */  lui       $t2, 0x8010
/* 40FA8 800403A8 254ACB18 */  addiu     $t2, $t2, -0x34e8
/* 40FAC 800403AC 258CCB48 */  addiu     $t4, $t4, -0x34b8
/* 40FB0 800403B0 000F7880 */  sll       $t7, $t7, 2
/* 40FB4 800403B4 0010C080 */  sll       $t8, $s0, 2
/* 40FB8 800403B8 030A5821 */  addu      $t3, $t8, $t2
/* 40FBC 800403BC 01EC1821 */  addu      $v1, $t7, $t4
/* 40FC0 800403C0 AFA30028 */  sw        $v1, 0x28($sp)
/* 40FC4 800403C4 AFAB0024 */  sw        $t3, 0x24($sp)
/* 40FC8 800403C8 0C01071C */  jal       func_80041C70
/* 40FCC 800403CC 24040166 */  addiu     $a0, $zero, 0x166
/* 40FD0 800403D0 8FA30028 */  lw        $v1, 0x28($sp)
/* 40FD4 800403D4 8FAE0024 */  lw        $t6, 0x24($sp)
/* 40FD8 800403D8 3C018008 */  lui       $at, 0x8008
/* 40FDC 800403DC 8C6D0024 */  lw        $t5, 0x24($v1)
/* 40FE0 800403E0 25B90001 */  addiu     $t9, $t5, 1
/* 40FE4 800403E4 AC790024 */  sw        $t9, 0x24($v1)
/* 40FE8 800403E8 8DCF0000 */  lw        $t7, ($t6)
/* 40FEC 800403EC 332A000F */  andi      $t2, $t9, 0xf
/* 40FF0 800403F0 000A5840 */  sll       $t3, $t2, 1
/* 40FF4 800403F4 95EC000C */  lhu       $t4, 0xc($t7)
/* 40FF8 800403F8 006B6821 */  addu      $t5, $v1, $t3
/* 40FFC 800403FC A5AC0000 */  sh        $t4, ($t5)
/* 41000 80040400 10000196 */  b         .L80040A5C
/* 41004 80040404 AC208544 */  sw        $zero, -0x7abc($at)
/* 41008 80040408 0C01071C */  jal       func_80041C70
/* 4100C 8004040C 24040188 */  addiu     $a0, $zero, 0x188
/* 41010 80040410 3C018008 */  lui       $at, 0x8008
/* 41014 80040414 3C058008 */  lui       $a1, 0x8008
/* 41018 80040418 AC208544 */  sw        $zero, -0x7abc($at)
/* 4101C 8004041C 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 41020 80040420 24040016 */  addiu     $a0, $zero, 0x16
/* 41024 80040424 0C00D9E8 */  jal       func_800367A0
/* 41028 80040428 00003025 */  or        $a2, $zero, $zero
/* 4102C 8004042C 1000018C */  b         .L80040A60
/* 41030 80040430 8FBF001C */  lw        $ra, 0x1c($sp)
/* 41034 80040434 0C01071C */  jal       func_80041C70
/* 41038 80040438 24040197 */  addiu     $a0, $zero, 0x197
/* 4103C 8004043C 3C018008 */  lui       $at, 0x8008
/* 41040 80040440 10000186 */  b         .L80040A5C
/* 41044 80040444 AC208544 */  sw        $zero, -0x7abc($at)
/* 41048 80040448 0C01071C */  jal       func_80041C70
/* 4104C 8004044C 24040193 */  addiu     $a0, $zero, 0x193
/* 41050 80040450 3C018008 */  lui       $at, 0x8008
/* 41054 80040454 10000181 */  b         .L80040A5C
/* 41058 80040458 AC208544 */  sw        $zero, -0x7abc($at)
/* 4105C 8004045C 0C01071C */  jal       func_80041C70
/* 41060 80040460 24040195 */  addiu     $a0, $zero, 0x195
/* 41064 80040464 3C018008 */  lui       $at, 0x8008
/* 41068 80040468 1000017C */  b         .L80040A5C
/* 4106C 8004046C AC208544 */  sw        $zero, -0x7abc($at)
/* 41070 80040470 0C01071C */  jal       func_80041C70
/* 41074 80040474 24040196 */  addiu     $a0, $zero, 0x196
/* 41078 80040478 3C018008 */  lui       $at, 0x8008
/* 4107C 8004047C 10000177 */  b         .L80040A5C
/* 41080 80040480 AC208544 */  sw        $zero, -0x7abc($at)
/* 41084 80040484 0C01071C */  jal       func_80041C70
/* 41088 80040488 24040087 */  addiu     $a0, $zero, 0x87
/* 4108C 8004048C 3C018008 */  lui       $at, 0x8008
/* 41090 80040490 10000172 */  b         .L80040A5C
/* 41094 80040494 AC208544 */  sw        $zero, -0x7abc($at)
/* 41098 80040498 A3A70032 */  sb        $a3, 0x32($sp)
.L8004049C:
/* 4109C 8004049C 8FB90040 */  lw        $t9, 0x40($sp)
/* 410A0 800404A0 8FAF0024 */  lw        $t7, 0x24($sp)
/* 410A4 800404A4 272E0001 */  addiu     $t6, $t9, 1
/* 410A8 800404A8 01C3082B */  sltu      $at, $t6, $v1
/* 410AC 800404AC 25F80004 */  addiu     $t8, $t7, 4
/* 410B0 800404B0 AFB80024 */  sw        $t8, 0x24($sp)
/* 410B4 800404B4 1420FCA4 */  bnez      $at, .L8003F748
/* 410B8 800404B8 AFAE0040 */  sw        $t6, 0x40($sp)
.L800404BC:
/* 410BC 800404BC 93AA0034 */  lbu       $t2, 0x34($sp)
/* 410C0 800404C0 3C018008 */  lui       $at, 0x8008
/* 410C4 800404C4 24070001 */  addiu     $a3, $zero, 1
/* 410C8 800404C8 11400013 */  beqz      $t2, .L80040518
/* 410CC 800404CC AC208544 */  sw        $zero, -0x7abc($at)
/* 410D0 800404D0 0C015B04 */  jal       func_80056C10
/* 410D4 800404D4 00E02025 */  or        $a0, $a3, $zero
/* 410D8 800404D8 3C018010 */  lui       $at, 0x8010
/* 410DC 800404DC A020CCA2 */  sb        $zero, -0x335e($at)
/* 410E0 800404E0 0C015B04 */  jal       func_80056C10
/* 410E4 800404E4 00402025 */  or        $a0, $v0, $zero
/* 410E8 800404E8 0C01071C */  jal       func_80041C70
/* 410EC 800404EC 24040079 */  addiu     $a0, $zero, 0x79
/* 410F0 800404F0 24070001 */  addiu     $a3, $zero, 1
/* 410F4 800404F4 3C018010 */  lui       $at, 0x8010
/* 410F8 800404F8 3C058008 */  lui       $a1, 0x8008
/* 410FC 800404FC A027CCB3 */  sb        $a3, -0x334d($at)
/* 41100 80040500 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 41104 80040504 24040016 */  addiu     $a0, $zero, 0x16
/* 41108 80040508 0C00D9E8 */  jal       func_800367A0
/* 4110C 8004050C 00003025 */  or        $a2, $zero, $zero
/* 41110 80040510 10000153 */  b         .L80040A60
/* 41114 80040514 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040518:
/* 41118 80040518 93AB0036 */  lbu       $t3, 0x36($sp)
/* 4111C 8004051C 00E02025 */  or        $a0, $a3, $zero
/* 41120 80040520 00106140 */  sll       $t4, $s0, 5
/* 41124 80040524 1160002D */  beqz      $t3, .L800405DC
/* 41128 80040528 93B80037 */  lbu       $t8, 0x37($sp)
/* 4112C 8004052C 01906021 */  addu      $t4, $t4, $s0
/* 41130 80040530 3C0D8010 */  lui       $t5, 0x8010
/* 41134 80040534 25ADCB48 */  addiu     $t5, $t5, -0x34b8
/* 41138 80040538 000C6080 */  sll       $t4, $t4, 2
/* 4113C 8004053C 018D1821 */  addu      $v1, $t4, $t5
/* 41140 80040540 0C015B04 */  jal       func_80056C10
/* 41144 80040544 AFA30028 */  sw        $v1, 0x28($sp)
/* 41148 80040548 3C018010 */  lui       $at, 0x8010
/* 4114C 8004054C A020CCA2 */  sb        $zero, -0x335e($at)
/* 41150 80040550 0C015B04 */  jal       func_80056C10
/* 41154 80040554 00402025 */  or        $a0, $v0, $zero
/* 41158 80040558 3C198010 */  lui       $t9, 0x8010
/* 4115C 8004055C 2739CCCC */  addiu     $t9, $t9, -0x3334
/* 41160 80040560 02194021 */  addu      $t0, $s0, $t9
/* 41164 80040564 910F0000 */  lbu       $t7, ($t0)
/* 41168 80040568 8FA30028 */  lw        $v1, 0x28($sp)
/* 4116C 8004056C 24040078 */  addiu     $a0, $zero, 0x78
/* 41170 80040570 51E0000A */  beql      $t7, $zero, .L8004059C
/* 41174 80040574 AFA30028 */  sw        $v1, 0x28($sp)
/* 41178 80040578 240400AD */  addiu     $a0, $zero, 0xad
/* 4117C 8004057C AFA30028 */  sw        $v1, 0x28($sp)
/* 41180 80040580 0C01071C */  jal       func_80041C70
/* 41184 80040584 AFA80024 */  sw        $t0, 0x24($sp)
/* 41188 80040588 8FA30028 */  lw        $v1, 0x28($sp)
/* 4118C 8004058C 24070001 */  addiu     $a3, $zero, 1
/* 41190 80040590 10000007 */  b         .L800405B0
/* 41194 80040594 8FA80024 */  lw        $t0, 0x24($sp)
/* 41198 80040598 AFA30028 */  sw        $v1, 0x28($sp)
.L8004059C:
/* 4119C 8004059C 0C01071C */  jal       func_80041C70
/* 411A0 800405A0 AFA80024 */  sw        $t0, 0x24($sp)
/* 411A4 800405A4 8FA30028 */  lw        $v1, 0x28($sp)
/* 411A8 800405A8 24070001 */  addiu     $a3, $zero, 1
/* 411AC 800405AC 8FA80024 */  lw        $t0, 0x24($sp)
.L800405B0:
/* 411B0 800405B0 AC67007C */  sw        $a3, 0x7c($v1)
/* 411B4 800405B4 A1070000 */  sb        $a3, ($t0)
/* 411B8 800405B8 3C018010 */  lui       $at, 0x8010
/* 411BC 800405BC 3C058008 */  lui       $a1, 0x8008
/* 411C0 800405C0 A027CCB4 */  sb        $a3, -0x334c($at)
/* 411C4 800405C4 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 411C8 800405C8 24040016 */  addiu     $a0, $zero, 0x16
/* 411CC 800405CC 0C00D9E8 */  jal       func_800367A0
/* 411D0 800405D0 00003025 */  or        $a2, $zero, $zero
/* 411D4 800405D4 10000122 */  b         .L80040A60
/* 411D8 800405D8 8FBF001C */  lw        $ra, 0x1c($sp)
.L800405DC:
/* 411DC 800405DC 13000013 */  beqz      $t8, .L8004062C
/* 411E0 800405E0 93AE003A */  lbu       $t6, 0x3a($sp)
/* 411E4 800405E4 0C015B04 */  jal       func_80056C10
/* 411E8 800405E8 00E02025 */  or        $a0, $a3, $zero
/* 411EC 800405EC 3C018010 */  lui       $at, 0x8010
/* 411F0 800405F0 A020CCA2 */  sb        $zero, -0x335e($at)
/* 411F4 800405F4 0C015B04 */  jal       func_80056C10
/* 411F8 800405F8 00402025 */  or        $a0, $v0, $zero
/* 411FC 800405FC 24070001 */  addiu     $a3, $zero, 1
/* 41200 80040600 3C018008 */  lui       $at, 0x8008
/* 41204 80040604 A02783E8 */  sb        $a3, -0x7c18($at)
/* 41208 80040608 0C01071C */  jal       func_80041C70
/* 4120C 8004060C 24040077 */  addiu     $a0, $zero, 0x77
/* 41210 80040610 3C058008 */  lui       $a1, 0x8008
/* 41214 80040614 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 41218 80040618 24040016 */  addiu     $a0, $zero, 0x16
/* 4121C 8004061C 0C00D9E8 */  jal       func_800367A0
/* 41220 80040620 00003025 */  or        $a2, $zero, $zero
/* 41224 80040624 1000010E */  b         .L80040A60
/* 41228 80040628 8FBF001C */  lw        $ra, 0x1c($sp)
.L8004062C:
/* 4122C 8004062C 11C0007E */  beqz      $t6, .L80040828
/* 41230 80040630 93B80039 */  lbu       $t8, 0x39($sp)
/* 41234 80040634 0C015B04 */  jal       func_80056C10
/* 41238 80040638 00E02025 */  or        $a0, $a3, $zero
/* 4123C 8004063C 3C018010 */  lui       $at, 0x8010
/* 41240 80040640 A020CCA2 */  sb        $zero, -0x335e($at)
/* 41244 80040644 0C015B04 */  jal       func_80056C10
/* 41248 80040648 00402025 */  or        $a0, $v0, $zero
/* 4124C 8004064C 93AA0039 */  lbu       $t2, 0x39($sp)
/* 41250 80040650 24070001 */  addiu     $a3, $zero, 1
/* 41254 80040654 3C018008 */  lui       $at, 0x8008
/* 41258 80040658 1140004B */  beqz      $t2, .L80040788
/* 4125C 8004065C A02783E8 */  sb        $a3, -0x7c18($at)
/* 41260 80040660 3C0B8010 */  lui       $t3, 0x8010
/* 41264 80040664 8D6BCCA4 */  lw        $t3, -0x335c($t3)
/* 41268 80040668 00106080 */  sll       $t4, $s0, 2
/* 4126C 8004066C 3C0D8010 */  lui       $t5, 0x8010
/* 41270 80040670 2D61000A */  sltiu     $at, $t3, 0xa
/* 41274 80040674 10200019 */  beqz      $at, .L800406DC
/* 41278 80040678 3C0F8008 */  lui       $t7, 0x8008
/* 4127C 8004067C 25ADCB18 */  addiu     $t5, $t5, -0x34e8
/* 41280 80040680 018DC821 */  addu      $t9, $t4, $t5
/* 41284 80040684 8F2F0000 */  lw        $t7, ($t9)
/* 41288 80040688 3A0E0001 */  xori      $t6, $s0, 1
/* 4128C 8004068C 000E5080 */  sll       $t2, $t6, 2
/* 41290 80040690 95F8000C */  lhu       $t8, 0xc($t7)
/* 41294 80040694 014D5821 */  addu      $t3, $t2, $t5
/* 41298 80040698 3C048007 */  lui       $a0, 0x8007
/* 4129C 8004069C 1B00000B */  blez      $t8, .L800406CC
/* 412A0 800406A0 00000000 */  nop       
/* 412A4 800406A4 8D6C0000 */  lw        $t4, ($t3)
/* 412A8 800406A8 9599000C */  lhu       $t9, 0xc($t4)
/* 412AC 800406AC 2B21000B */  slti      $at, $t9, 0xb
/* 412B0 800406B0 14200006 */  bnez      $at, .L800406CC
/* 412B4 800406B4 00000000 */  nop       
/* 412B8 800406B8 3C048007 */  lui       $a0, 0x8007
/* 412BC 800406BC 0C010830 */  jal       func_800420C0
/* 412C0 800406C0 24847EF0 */  addiu     $a0, $a0, 0x7ef0
/* 412C4 800406C4 100000E6 */  b         .L80040A60
/* 412C8 800406C8 8FBF001C */  lw        $ra, 0x1c($sp)
.L800406CC:
/* 412CC 800406CC 0C010830 */  jal       func_800420C0
/* 412D0 800406D0 24847F04 */  addiu     $a0, $a0, 0x7f04
/* 412D4 800406D4 100000E2 */  b         .L80040A60
/* 412D8 800406D8 8FBF001C */  lw        $ra, 0x1c($sp)
.L800406DC:
/* 412DC 800406DC 8DEF83CC */  lw        $t7, -0x7c34($t7)
/* 412E0 800406E0 3A030001 */  xori      $v1, $s0, 1
/* 412E4 800406E4 0003C140 */  sll       $t8, $v1, 5
/* 412E8 800406E8 2DE10002 */  sltiu     $at, $t7, 2
/* 412EC 800406EC 1020000A */  beqz      $at, .L80040718
/* 412F0 800406F0 0303C021 */  addu      $t8, $t8, $v1
/* 412F4 800406F4 0C01071C */  jal       func_80041C70
/* 412F8 800406F8 24040068 */  addiu     $a0, $zero, 0x68
/* 412FC 800406FC 3C058008 */  lui       $a1, 0x8008
/* 41300 80040700 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 41304 80040704 24040016 */  addiu     $a0, $zero, 0x16
/* 41308 80040708 0C00D9E8 */  jal       func_800367A0
/* 4130C 8004070C 00003025 */  or        $a2, $zero, $zero
/* 41310 80040710 100000D3 */  b         .L80040A60
/* 41314 80040714 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040718:
/* 41318 80040718 0018C080 */  sll       $t8, $t8, 2
/* 4131C 8004071C 3C0E8010 */  lui       $t6, 0x8010
/* 41320 80040720 01D87021 */  addu      $t6, $t6, $t8
/* 41324 80040724 8DCECBC0 */  lw        $t6, -0x3440($t6)
/* 41328 80040728 3C028008 */  lui       $v0, 0x8008
/* 4132C 8004072C 24428390 */  addiu     $v0, $v0, -0x7c70
/* 41330 80040730 2DC10002 */  sltiu     $at, $t6, 2
/* 41334 80040734 1020000A */  beqz      $at, .L80040760
/* 41338 80040738 00435021 */  addu      $t2, $v0, $v1
/* 4133C 8004073C 914D0000 */  lbu       $t5, ($t2)
/* 41340 80040740 3C048007 */  lui       $a0, 0x8007
/* 41344 80040744 29A10002 */  slti      $at, $t5, 2
/* 41348 80040748 14200005 */  bnez      $at, .L80040760
/* 4134C 8004074C 00000000 */  nop       
/* 41350 80040750 0C010830 */  jal       func_800420C0
/* 41354 80040754 24847F58 */  addiu     $a0, $a0, 0x7f58
/* 41358 80040758 10000004 */  b         .L8004076C
/* 4135C 8004075C 00000000 */  nop       
.L80040760:
/* 41360 80040760 3C048007 */  lui       $a0, 0x8007
/* 41364 80040764 0C010830 */  jal       func_800420C0
/* 41368 80040768 24847EE4 */  addiu     $a0, $a0, 0x7ee4
.L8004076C:
/* 4136C 8004076C 3C058008 */  lui       $a1, 0x8008
/* 41370 80040770 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 41374 80040774 24040016 */  addiu     $a0, $zero, 0x16
/* 41378 80040778 0C00D9E8 */  jal       func_800367A0
/* 4137C 8004077C 00003025 */  or        $a2, $zero, $zero
/* 41380 80040780 100000B7 */  b         .L80040A60
/* 41384 80040784 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040788:
/* 41388 80040788 3C0B8010 */  lui       $t3, 0x8010
/* 4138C 8004078C 8D6BCCA4 */  lw        $t3, -0x335c($t3)
/* 41390 80040790 00106080 */  sll       $t4, $s0, 2
/* 41394 80040794 3C198010 */  lui       $t9, 0x8010
/* 41398 80040798 2D61000A */  sltiu     $at, $t3, 0xa
/* 4139C 8004079C 10200019 */  beqz      $at, .L80040804
/* 413A0 800407A0 3C048007 */  lui       $a0, 0x8007
/* 413A4 800407A4 2739CB18 */  addiu     $t9, $t9, -0x34e8
/* 413A8 800407A8 01997821 */  addu      $t7, $t4, $t9
/* 413AC 800407AC 8DF80000 */  lw        $t8, ($t7)
/* 413B0 800407B0 3A0A0001 */  xori      $t2, $s0, 1
/* 413B4 800407B4 000A6880 */  sll       $t5, $t2, 2
/* 413B8 800407B8 970E000C */  lhu       $t6, 0xc($t8)
/* 413BC 800407BC 01B95821 */  addu      $t3, $t5, $t9
/* 413C0 800407C0 3C048007 */  lui       $a0, 0x8007
/* 413C4 800407C4 19C0000B */  blez      $t6, .L800407F4
/* 413C8 800407C8 00000000 */  nop       
/* 413CC 800407CC 8D6C0000 */  lw        $t4, ($t3)
/* 413D0 800407D0 958F000C */  lhu       $t7, 0xc($t4)
/* 413D4 800407D4 29E1000B */  slti      $at, $t7, 0xb
/* 413D8 800407D8 14200006 */  bnez      $at, .L800407F4
/* 413DC 800407DC 00000000 */  nop       
/* 413E0 800407E0 3C048007 */  lui       $a0, 0x8007
/* 413E4 800407E4 0C010830 */  jal       func_800420C0
/* 413E8 800407E8 24847EF0 */  addiu     $a0, $a0, 0x7ef0
/* 413EC 800407EC 1000009C */  b         .L80040A60
/* 413F0 800407F0 8FBF001C */  lw        $ra, 0x1c($sp)
.L800407F4:
/* 413F4 800407F4 0C010830 */  jal       func_800420C0
/* 413F8 800407F8 24847F04 */  addiu     $a0, $a0, 0x7f04
/* 413FC 800407FC 10000098 */  b         .L80040A60
/* 41400 80040800 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040804:
/* 41404 80040804 0C010830 */  jal       func_800420C0
/* 41408 80040808 24847EC0 */  addiu     $a0, $a0, 0x7ec0
/* 4140C 8004080C 3C058008 */  lui       $a1, 0x8008
/* 41410 80040810 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 41414 80040814 24040016 */  addiu     $a0, $zero, 0x16
/* 41418 80040818 0C00D9E8 */  jal       func_800367A0
/* 4141C 8004081C 00003025 */  or        $a2, $zero, $zero
/* 41420 80040820 1000008F */  b         .L80040A60
/* 41424 80040824 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040828:
/* 41428 80040828 13000029 */  beqz      $t8, .L800408D0
/* 4142C 8004082C 93AB0038 */  lbu       $t3, 0x38($sp)
/* 41430 80040830 0C015B04 */  jal       func_80056C10
/* 41434 80040834 00E02025 */  or        $a0, $a3, $zero
/* 41438 80040838 3C018010 */  lui       $at, 0x8010
/* 4143C 8004083C A020CCA2 */  sb        $zero, -0x335e($at)
/* 41440 80040840 0C015B04 */  jal       func_80056C10
/* 41444 80040844 00402025 */  or        $a0, $v0, $zero
/* 41448 80040848 3A030001 */  xori      $v1, $s0, 1
/* 4144C 8004084C 00037140 */  sll       $t6, $v1, 5
/* 41450 80040850 01C37021 */  addu      $t6, $t6, $v1
/* 41454 80040854 000E7080 */  sll       $t6, $t6, 2
/* 41458 80040858 3C0A8010 */  lui       $t2, 0x8010
/* 4145C 8004085C 014E5021 */  addu      $t2, $t2, $t6
/* 41460 80040860 8D4ACBC0 */  lw        $t2, -0x3440($t2)
/* 41464 80040864 24070001 */  addiu     $a3, $zero, 1
/* 41468 80040868 3C018008 */  lui       $at, 0x8008
/* 4146C 8004086C A02783E8 */  sb        $a3, -0x7c18($at)
/* 41470 80040870 2D410002 */  sltiu     $at, $t2, 2
/* 41474 80040874 1020000C */  beqz      $at, .L800408A8
/* 41478 80040878 3C028008 */  lui       $v0, 0x8008
/* 4147C 8004087C 24428390 */  addiu     $v0, $v0, -0x7c70
/* 41480 80040880 00436821 */  addu      $t5, $v0, $v1
/* 41484 80040884 91B90000 */  lbu       $t9, ($t5)
/* 41488 80040888 3C048007 */  lui       $a0, 0x8007
/* 4148C 8004088C 2B210002 */  slti      $at, $t9, 2
/* 41490 80040890 14200005 */  bnez      $at, .L800408A8
/* 41494 80040894 00000000 */  nop       
/* 41498 80040898 0C010830 */  jal       func_800420C0
/* 4149C 8004089C 24847F58 */  addiu     $a0, $a0, 0x7f58
/* 414A0 800408A0 10000004 */  b         .L800408B4
/* 414A4 800408A4 00000000 */  nop       
.L800408A8:
/* 414A8 800408A8 3C048007 */  lui       $a0, 0x8007
/* 414AC 800408AC 0C010830 */  jal       func_800420C0
/* 414B0 800408B0 24847ECC */  addiu     $a0, $a0, 0x7ecc
.L800408B4:
/* 414B4 800408B4 3C058008 */  lui       $a1, 0x8008
/* 414B8 800408B8 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 414BC 800408BC 24040016 */  addiu     $a0, $zero, 0x16
/* 414C0 800408C0 0C00D9E8 */  jal       func_800367A0
/* 414C4 800408C4 00003025 */  or        $a2, $zero, $zero
/* 414C8 800408C8 10000065 */  b         .L80040A60
/* 414CC 800408CC 8FBF001C */  lw        $ra, 0x1c($sp)
.L800408D0:
/* 414D0 800408D0 1160002F */  beqz      $t3, .L80040990
/* 414D4 800408D4 93AD0032 */  lbu       $t5, 0x32($sp)
/* 414D8 800408D8 0C015B04 */  jal       func_80056C10
/* 414DC 800408DC 24040001 */  addiu     $a0, $zero, 1
/* 414E0 800408E0 3C018010 */  lui       $at, 0x8010
/* 414E4 800408E4 A020CCA2 */  sb        $zero, -0x335e($at)
/* 414E8 800408E8 0C015B04 */  jal       func_80056C10
/* 414EC 800408EC 00402025 */  or        $a0, $v0, $zero
/* 414F0 800408F0 3C0C8010 */  lui       $t4, 0x8010
/* 414F4 800408F4 8D8CCCA4 */  lw        $t4, -0x335c($t4)
/* 414F8 800408F8 3C048007 */  lui       $a0, 0x8007
/* 414FC 800408FC 3C0F8010 */  lui       $t7, 0x8010
/* 41500 80040900 2D810029 */  sltiu     $at, $t4, 0x29
/* 41504 80040904 1420000A */  bnez      $at, .L80040930
/* 41508 80040908 00000000 */  nop       
/* 4150C 8004090C 0C010830 */  jal       func_800420C0
/* 41510 80040910 24847EF8 */  addiu     $a0, $a0, 0x7ef8
/* 41514 80040914 3C058008 */  lui       $a1, 0x8008
/* 41518 80040918 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 4151C 8004091C 24040016 */  addiu     $a0, $zero, 0x16
/* 41520 80040920 0C00D9E8 */  jal       func_800367A0
/* 41524 80040924 00003025 */  or        $a2, $zero, $zero
/* 41528 80040928 1000004D */  b         .L80040A60
/* 4152C 8004092C 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040930:
/* 41530 80040930 8DEFCB18 */  lw        $t7, -0x34e8($t7)
/* 41534 80040934 3C0E8010 */  lui       $t6, 0x8010
/* 41538 80040938 3C048007 */  lui       $a0, 0x8007
/* 4153C 8004093C 95F8000C */  lhu       $t8, 0xc($t7)
/* 41540 80040940 1B00000A */  blez      $t8, .L8004096C
/* 41544 80040944 00000000 */  nop       
/* 41548 80040948 8DCECB1C */  lw        $t6, -0x34e4($t6)
/* 4154C 8004094C 95CA000C */  lhu       $t2, 0xc($t6)
/* 41550 80040950 19400006 */  blez      $t2, .L8004096C
/* 41554 80040954 00000000 */  nop       
/* 41558 80040958 3C048007 */  lui       $a0, 0x8007
/* 4155C 8004095C 0C010830 */  jal       func_800420C0
/* 41560 80040960 24847ED8 */  addiu     $a0, $a0, 0x7ed8
/* 41564 80040964 1000003E */  b         .L80040A60
/* 41568 80040968 8FBF001C */  lw        $ra, 0x1c($sp)
.L8004096C:
/* 4156C 8004096C 0C010830 */  jal       func_800420C0
/* 41570 80040970 24847F04 */  addiu     $a0, $a0, 0x7f04
/* 41574 80040974 3C058008 */  lui       $a1, 0x8008
/* 41578 80040978 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 4157C 8004097C 24040016 */  addiu     $a0, $zero, 0x16
/* 41580 80040980 0C00D9E8 */  jal       func_800367A0
/* 41584 80040984 00003025 */  or        $a2, $zero, $zero
/* 41588 80040988 10000035 */  b         .L80040A60
/* 4158C 8004098C 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040990:
/* 41590 80040990 11A00032 */  beqz      $t5, .L80040A5C
/* 41594 80040994 3C028010 */  lui       $v0, 0x8010
/* 41598 80040998 8C42CCA4 */  lw        $v0, -0x335c($v0)
/* 4159C 8004099C 1040002F */  beqz      $v0, .L80040A5C
/* 415A0 800409A0 2C410029 */  sltiu     $at, $v0, 0x29
/* 415A4 800409A4 1420000A */  bnez      $at, .L800409D0
/* 415A8 800409A8 3C048007 */  lui       $a0, 0x8007
/* 415AC 800409AC 0C010830 */  jal       func_800420C0
/* 415B0 800409B0 24847E98 */  addiu     $a0, $a0, 0x7e98
/* 415B4 800409B4 3C058008 */  lui       $a1, 0x8008
/* 415B8 800409B8 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 415BC 800409BC 24040016 */  addiu     $a0, $zero, 0x16
/* 415C0 800409C0 0C00D9E8 */  jal       func_800367A0
/* 415C4 800409C4 00003025 */  or        $a2, $zero, $zero
/* 415C8 800409C8 10000025 */  b         .L80040A60
/* 415CC 800409CC 8FBF001C */  lw        $ra, 0x1c($sp)
.L800409D0:
/* 415D0 800409D0 2C410006 */  sltiu     $at, $v0, 6
/* 415D4 800409D4 14200012 */  bnez      $at, .L80040A20
/* 415D8 800409D8 8D030000 */  lw        $v1, ($t0)
/* 415DC 800409DC 9479000C */  lhu       $t9, 0xc($v1)
/* 415E0 800409E0 3C048007 */  lui       $a0, 0x8007
/* 415E4 800409E4 1B20000A */  blez      $t9, .L80040A10
/* 415E8 800409E8 00000000 */  nop       
/* 415EC 800409EC 8D0B0004 */  lw        $t3, 4($t0)
/* 415F0 800409F0 956C000C */  lhu       $t4, 0xc($t3)
/* 415F4 800409F4 19800006 */  blez      $t4, .L80040A10
/* 415F8 800409F8 00000000 */  nop       
/* 415FC 800409FC 3C048007 */  lui       $a0, 0x8007
/* 41600 80040A00 0C010830 */  jal       func_800420C0
/* 41604 80040A04 24847EA4 */  addiu     $a0, $a0, 0x7ea4
/* 41608 80040A08 10000015 */  b         .L80040A60
/* 4160C 80040A0C 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040A10:
/* 41610 80040A10 0C010830 */  jal       func_800420C0
/* 41614 80040A14 24847F60 */  addiu     $a0, $a0, 0x7f60
/* 41618 80040A18 10000011 */  b         .L80040A60
/* 4161C 80040A1C 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040A20:
/* 41620 80040A20 946F000C */  lhu       $t7, 0xc($v1)
/* 41624 80040A24 3C048007 */  lui       $a0, 0x8007
/* 41628 80040A28 19E0000A */  blez      $t7, .L80040A54
/* 4162C 80040A2C 00000000 */  nop       
/* 41630 80040A30 8D180004 */  lw        $t8, 4($t0)
/* 41634 80040A34 970E000C */  lhu       $t6, 0xc($t8)
/* 41638 80040A38 19C00006 */  blez      $t6, .L80040A54
/* 4163C 80040A3C 00000000 */  nop       
/* 41640 80040A40 3C048007 */  lui       $a0, 0x8007
/* 41644 80040A44 0C010830 */  jal       func_800420C0
/* 41648 80040A48 24847EB4 */  addiu     $a0, $a0, 0x7eb4
/* 4164C 80040A4C 10000004 */  b         .L80040A60
/* 41650 80040A50 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040A54:
/* 41654 80040A54 0C010830 */  jal       func_800420C0
/* 41658 80040A58 24847F04 */  addiu     $a0, $a0, 0x7f04
.L80040A5C:
/* 4165C 80040A5C 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040A60:
/* 41660 80040A60 8FB00018 */  lw        $s0, 0x18($sp)
/* 41664 80040A64 27BD0048 */  addiu     $sp, $sp, 0x48
/* 41668 80040A68 03E00008 */  jr        $ra
/* 4166C 80040A6C 00000000 */  nop       

glabel func_80040A70
/* 41670 80040A70 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 41674 80040A74 AFB00018 */  sw        $s0, 0x18($sp)
/* 41678 80040A78 00A08025 */  or        $s0, $a1, $zero
/* 4167C 80040A7C AFBF001C */  sw        $ra, 0x1c($sp)
/* 41680 80040A80 AFA60050 */  sw        $a2, 0x50($sp)
/* 41684 80040A84 10800287 */  beqz      $a0, .L800414A4
/* 41688 80040A88 AFA70054 */  sw        $a3, 0x54($sp)
/* 4168C 80040A8C 3C0A8010 */  lui       $t2, 0x8010
/* 41690 80040A90 254ACB18 */  addiu     $t2, $t2, -0x34e8
/* 41694 80040A94 8D420000 */  lw        $v0, ($t2)
/* 41698 80040A98 54820004 */  bnel      $a0, $v0, .L80040AAC
/* 4169C 80040A9C 8D4E0004 */  lw        $t6, 4($t2)
/* 416A0 80040AA0 10000005 */  b         .L80040AB8
/* 416A4 80040AA4 00003825 */  or        $a3, $zero, $zero
/* 416A8 80040AA8 8D4E0004 */  lw        $t6, 4($t2)
.L80040AAC:
/* 416AC 80040AAC 24070001 */  addiu     $a3, $zero, 1
/* 416B0 80040AB0 548E027D */  bnel      $a0, $t6, .L800414A8
/* 416B4 80040AB4 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040AB8:
/* 416B8 80040AB8 5040027B */  beql      $v0, $zero, .L800414A8
/* 416BC 80040ABC 8FBF001C */  lw        $ra, 0x1c($sp)
/* 416C0 80040AC0 8D4F0004 */  lw        $t7, 4($t2)
/* 416C4 80040AC4 51E00278 */  beql      $t7, $zero, .L800414A8
/* 416C8 80040AC8 8FBF001C */  lw        $ra, 0x1c($sp)
/* 416CC 80040ACC 8FA20054 */  lw        $v0, 0x54($sp)
/* 416D0 80040AD0 3C018010 */  lui       $at, 0x8010
/* 416D4 80040AD4 A030CCAC */  sb        $s0, -0x3354($at)
/* 416D8 80040AD8 2C410006 */  sltiu     $at, $v0, 6
/* 416DC 80040ADC 1020026C */  beqz      $at, .L80041490
/* 416E0 80040AE0 0002C080 */  sll       $t8, $v0, 2
/* 416E4 80040AE4 3C018008 */  lui       $at, 0x8008
/* 416E8 80040AE8 00380821 */  addu      $at, $at, $t8
/* 416EC 80040AEC 8C38CA28 */  lw        $t8, -0x35d8($at)
/* 416F0 80040AF0 03000008 */  jr        $t8
/* 416F4 80040AF4 00000000 */  nop       
/* 416F8 80040AF8 3C028010 */  lui       $v0, 0x8010
/* 416FC 80040AFC 2442CCB7 */  addiu     $v0, $v0, -0x3349
/* 41700 80040B00 A0400000 */  sb        $zero, ($v0)
/* 41704 80040B04 0C01073B */  jal       func_80041CEC
/* 41708 80040B08 AFA70040 */  sw        $a3, 0x40($sp)
/* 4170C 80040B0C 8FA70040 */  lw        $a3, 0x40($sp)
/* 41710 80040B10 3C0A8010 */  lui       $t2, 0x8010
/* 41714 80040B14 254ACB18 */  addiu     $t2, $t2, -0x34e8
/* 41718 80040B18 38E70001 */  xori      $a3, $a3, 1
/* 4171C 80040B1C 0007C880 */  sll       $t9, $a3, 2
/* 41720 80040B20 01594821 */  addu      $t1, $t2, $t9
/* 41724 80040B24 8D260000 */  lw        $a2, ($t1)
/* 41728 80040B28 3C028008 */  lui       $v0, 0x8008
/* 4172C 80040B2C 3C038008 */  lui       $v1, 0x8008
/* 41730 80040B30 94C5000C */  lhu       $a1, 0xc($a2)
/* 41734 80040B34 8FA80050 */  lw        $t0, 0x50($sp)
/* 41738 80040B38 24638552 */  addiu     $v1, $v1, -0x7aae
/* 4173C 80040B3C 10A0004C */  beqz      $a1, .L80040C70
/* 41740 80040B40 24428548 */  addiu     $v0, $v0, -0x7ab8
/* 41744 80040B44 904C0000 */  lbu       $t4, ($v0)
.L80040B48:
/* 41748 80040B48 160C0022 */  bne       $s0, $t4, .L80040BD4
/* 4174C 80040B4C 00076940 */  sll       $t5, $a3, 5
/* 41750 80040B50 01A76821 */  addu      $t5, $t5, $a3
/* 41754 80040B54 3C0E8010 */  lui       $t6, 0x8010
/* 41758 80040B58 25CECB48 */  addiu     $t6, $t6, -0x34b8
/* 4175C 80040B5C 000D6880 */  sll       $t5, $t5, 2
/* 41760 80040B60 01AE1821 */  addu      $v1, $t5, $t6
/* 41764 80040B64 8C6F0024 */  lw        $t7, 0x24($v1)
/* 41768 80040B68 31F8000F */  andi      $t8, $t7, 0xf
/* 4176C 80040B6C 0018C840 */  sll       $t9, $t8, 1
/* 41770 80040B70 00796021 */  addu      $t4, $v1, $t9
/* 41774 80040B74 95840000 */  lhu       $a0, ($t4)
/* 41778 80040B78 00A4082A */  slt       $at, $a1, $a0
/* 4177C 80040B7C 10200010 */  beqz      $at, .L80040BC0
/* 41780 80040B80 00851823 */  subu      $v1, $a0, $a1
/* 41784 80040B84 00036880 */  sll       $t5, $v1, 2
/* 41788 80040B88 01A36823 */  subu      $t5, $t5, $v1
/* 4178C 80040B8C 94CE0028 */  lhu       $t6, 0x28($a2)
/* 41790 80040B90 000D68C0 */  sll       $t5, $t5, 3
/* 41794 80040B94 01A36821 */  addu      $t5, $t5, $v1
/* 41798 80040B98 000D6880 */  sll       $t5, $t5, 2
/* 4179C 80040B9C 01AE001B */  divu      $zero, $t5, $t6
/* 417A0 80040BA0 00007812 */  mflo      $t7
/* 417A4 80040BA4 3C018010 */  lui       $at, 0x8010
/* 417A8 80040BA8 15C00002 */  bnez      $t6, .L80040BB4
/* 417AC 80040BAC 00000000 */  nop       
/* 417B0 80040BB0 0007000D */  break     7
.L80040BB4:
/* 417B4 80040BB4 AC2FCCA4 */  sw        $t7, -0x335c($at)
/* 417B8 80040BB8 10000003 */  b         .L80040BC8
/* 417BC 80040BBC 00000000 */  nop       
.L80040BC0:
/* 417C0 80040BC0 3C018010 */  lui       $at, 0x8010
/* 417C4 80040BC4 AC20CCA4 */  sw        $zero, -0x335c($at)
.L80040BC8:
/* 417C8 80040BC8 3C018010 */  lui       $at, 0x8010
/* 417CC 80040BCC 10000235 */  b         .L800414A4
/* 417D0 80040BD0 A028CCAD */  sb        $t0, -0x3353($at)
.L80040BD4:
/* 417D4 80040BD4 90580001 */  lbu       $t8, 1($v0)
/* 417D8 80040BD8 16180022 */  bne       $s0, $t8, .L80040C64
/* 417DC 80040BDC 0007C940 */  sll       $t9, $a3, 5
/* 417E0 80040BE0 0327C821 */  addu      $t9, $t9, $a3
/* 417E4 80040BE4 3C0C8010 */  lui       $t4, 0x8010
/* 417E8 80040BE8 258CCB48 */  addiu     $t4, $t4, -0x34b8
/* 417EC 80040BEC 0019C880 */  sll       $t9, $t9, 2
/* 417F0 80040BF0 032C1821 */  addu      $v1, $t9, $t4
/* 417F4 80040BF4 8C6D0024 */  lw        $t5, 0x24($v1)
/* 417F8 80040BF8 31AE000F */  andi      $t6, $t5, 0xf
/* 417FC 80040BFC 000E7840 */  sll       $t7, $t6, 1
/* 41800 80040C00 006FC021 */  addu      $t8, $v1, $t7
/* 41804 80040C04 97040000 */  lhu       $a0, ($t8)
/* 41808 80040C08 00A4082A */  slt       $at, $a1, $a0
/* 4180C 80040C0C 10200010 */  beqz      $at, .L80040C50
/* 41810 80040C10 00851823 */  subu      $v1, $a0, $a1
/* 41814 80040C14 0003C880 */  sll       $t9, $v1, 2
/* 41818 80040C18 0323C823 */  subu      $t9, $t9, $v1
/* 4181C 80040C1C 94CC0028 */  lhu       $t4, 0x28($a2)
/* 41820 80040C20 0019C8C0 */  sll       $t9, $t9, 3
/* 41824 80040C24 0323C821 */  addu      $t9, $t9, $v1
/* 41828 80040C28 0019C880 */  sll       $t9, $t9, 2
/* 4182C 80040C2C 032C001B */  divu      $zero, $t9, $t4
/* 41830 80040C30 00006812 */  mflo      $t5
/* 41834 80040C34 3C018010 */  lui       $at, 0x8010
/* 41838 80040C38 15800002 */  bnez      $t4, .L80040C44
/* 4183C 80040C3C 00000000 */  nop       
/* 41840 80040C40 0007000D */  break     7
.L80040C44:
/* 41844 80040C44 AC2DCCA4 */  sw        $t5, -0x335c($at)
/* 41848 80040C48 10000003 */  b         .L80040C58
/* 4184C 80040C4C 00000000 */  nop       
.L80040C50:
/* 41850 80040C50 3C018010 */  lui       $at, 0x8010
/* 41854 80040C54 AC20CCA4 */  sw        $zero, -0x335c($at)
.L80040C58:
/* 41858 80040C58 3C018010 */  lui       $at, 0x8010
/* 4185C 80040C5C 10000211 */  b         .L800414A4
/* 41860 80040C60 A028CCAD */  sb        $t0, -0x3353($at)
.L80040C64:
/* 41864 80040C64 24420002 */  addiu     $v0, $v0, 2
/* 41868 80040C68 5443FFB7 */  bnel      $v0, $v1, .L80040B48
/* 4186C 80040C6C 904C0000 */  lbu       $t4, ($v0)
.L80040C70:
/* 41870 80040C70 8FA4002C */  lw        $a0, 0x2c($sp)
/* 41874 80040C74 AFA70040 */  sw        $a3, 0x40($sp)
/* 41878 80040C78 0C015B04 */  jal       func_80056C10
/* 4187C 80040C7C AFA90028 */  sw        $t1, 0x28($sp)
/* 41880 80040C80 8FA70040 */  lw        $a3, 0x40($sp)
/* 41884 80040C84 3C188010 */  lui       $t8, 0x8010
/* 41888 80040C88 240E001E */  addiu     $t6, $zero, 0x1e
/* 4188C 80040C8C 00077940 */  sll       $t7, $a3, 5
/* 41890 80040C90 01E77821 */  addu      $t7, $t7, $a3
/* 41894 80040C94 3C018010 */  lui       $at, 0x8010
/* 41898 80040C98 000F7880 */  sll       $t7, $t7, 2
/* 4189C 80040C9C 2718CB48 */  addiu     $t8, $t8, -0x34b8
/* 418A0 80040CA0 A02ECCA2 */  sb        $t6, -0x335e($at)
/* 418A4 80040CA4 01F81821 */  addu      $v1, $t7, $t8
/* 418A8 80040CA8 8FA90028 */  lw        $t1, 0x28($sp)
/* 418AC 80040CAC 8C790024 */  lw        $t9, 0x24($v1)
/* 418B0 80040CB0 8FA80050 */  lw        $t0, 0x50($sp)
/* 418B4 80040CB4 8D260000 */  lw        $a2, ($t1)
/* 418B8 80040CB8 332C000F */  andi      $t4, $t9, 0xf
/* 418BC 80040CBC 000C6840 */  sll       $t5, $t4, 1
/* 418C0 80040CC0 006D7021 */  addu      $t6, $v1, $t5
/* 418C4 80040CC4 95C40000 */  lhu       $a0, ($t6)
/* 418C8 80040CC8 94C5000C */  lhu       $a1, 0xc($a2)
/* 418CC 80040CCC 00408025 */  or        $s0, $v0, $zero
/* 418D0 80040CD0 00A4082A */  slt       $at, $a1, $a0
/* 418D4 80040CD4 10200010 */  beqz      $at, .L80040D18
/* 418D8 80040CD8 00851823 */  subu      $v1, $a0, $a1
/* 418DC 80040CDC 00037880 */  sll       $t7, $v1, 2
/* 418E0 80040CE0 01E37823 */  subu      $t7, $t7, $v1
/* 418E4 80040CE4 94D80028 */  lhu       $t8, 0x28($a2)
/* 418E8 80040CE8 000F78C0 */  sll       $t7, $t7, 3
/* 418EC 80040CEC 01E37821 */  addu      $t7, $t7, $v1
/* 418F0 80040CF0 000F7880 */  sll       $t7, $t7, 2
/* 418F4 80040CF4 01F8001B */  divu      $zero, $t7, $t8
/* 418F8 80040CF8 0000C812 */  mflo      $t9
/* 418FC 80040CFC 3C018010 */  lui       $at, 0x8010
/* 41900 80040D00 17000002 */  bnez      $t8, .L80040D0C
/* 41904 80040D04 00000000 */  nop       
/* 41908 80040D08 0007000D */  break     7
.L80040D0C:
/* 4190C 80040D0C AC39CCA4 */  sw        $t9, -0x335c($at)
/* 41910 80040D10 10000003 */  b         .L80040D20
/* 41914 80040D14 00000000 */  nop       
.L80040D18:
/* 41918 80040D18 3C018010 */  lui       $at, 0x8010
/* 4191C 80040D1C AC20CCA4 */  sw        $zero, -0x335c($at)
.L80040D20:
/* 41920 80040D20 3C018010 */  lui       $at, 0x8010
/* 41924 80040D24 A028CCAD */  sb        $t0, -0x3353($at)
/* 41928 80040D28 0C015B04 */  jal       func_80056C10
/* 4192C 80040D2C 02002025 */  or        $a0, $s0, $zero
/* 41930 80040D30 3C0C8010 */  lui       $t4, 0x8010
/* 41934 80040D34 8D8CCCA4 */  lw        $t4, -0x335c($t4)
/* 41938 80040D38 24040016 */  addiu     $a0, $zero, 0x16
/* 4193C 80040D3C 3C058008 */  lui       $a1, 0x8008
/* 41940 80040D40 2D810029 */  sltiu     $at, $t4, 0x29
/* 41944 80040D44 142001D7 */  bnez      $at, .L800414A4
/* 41948 80040D48 00003025 */  or        $a2, $zero, $zero
/* 4194C 80040D4C 0C00D9E8 */  jal       func_800367A0
/* 41950 80040D50 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 41954 80040D54 100001D4 */  b         .L800414A8
/* 41958 80040D58 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4195C 80040D5C AFA20028 */  sw        $v0, 0x28($sp)
/* 41960 80040D60 0C01073B */  jal       func_80041CEC
/* 41964 80040D64 AFA70040 */  sw        $a3, 0x40($sp)
/* 41968 80040D68 8FA70040 */  lw        $a3, 0x40($sp)
/* 4196C 80040D6C 3C018010 */  lui       $at, 0x8010
/* 41970 80040D70 3C0A8010 */  lui       $t2, 0x8010
/* 41974 80040D74 00270821 */  addu      $at, $at, $a3
/* 41978 80040D78 A020CCC0 */  sb        $zero, -0x3340($at)
/* 4197C 80040D7C 3C018010 */  lui       $at, 0x8010
/* 41980 80040D80 00270821 */  addu      $at, $at, $a3
/* 41984 80040D84 A020CCC2 */  sb        $zero, -0x333e($at)
/* 41988 80040D88 24010013 */  addiu     $at, $zero, 0x13
/* 4198C 80040D8C 254ACB18 */  addiu     $t2, $t2, -0x34e8
/* 41990 80040D90 12010004 */  beq       $s0, $at, .L80040DA4
/* 41994 80040D94 8FA20028 */  lw        $v0, 0x28($sp)
/* 41998 80040D98 3C018010 */  lui       $at, 0x8010
/* 4199C 80040D9C 00270821 */  addu      $at, $at, $a3
/* 419A0 80040DA0 A020CCCE */  sb        $zero, -0x3332($at)
.L80040DA4:
/* 419A4 80040DA4 2401005B */  addiu     $at, $zero, 0x5b
/* 419A8 80040DA8 12010004 */  beq       $s0, $at, .L80040DBC
/* 419AC 80040DAC 3C0B8010 */  lui       $t3, 0x8010
/* 419B0 80040DB0 3C018010 */  lui       $at, 0x8010
/* 419B4 80040DB4 00270821 */  addu      $at, $at, $a3
/* 419B8 80040DB8 A020CCD0 */  sb        $zero, -0x3330($at)
.L80040DBC:
/* 419BC 80040DBC 24010002 */  addiu     $at, $zero, 2
/* 419C0 80040DC0 10410004 */  beq       $v0, $at, .L80040DD4
/* 419C4 80040DC4 256BCCAE */  addiu     $t3, $t3, -0x3352
/* 419C8 80040DC8 3C018010 */  lui       $at, 0x8010
/* 419CC 80040DCC 00270821 */  addu      $at, $at, $a3
/* 419D0 80040DD0 A020CCD2 */  sb        $zero, -0x332e($at)
.L80040DD4:
/* 419D4 80040DD4 916D0000 */  lbu       $t5, ($t3)
/* 419D8 80040DD8 3C028008 */  lui       $v0, 0x8008
/* 419DC 80040DDC 3C038008 */  lui       $v1, 0x8008
/* 419E0 80040DE0 25AE0001 */  addiu     $t6, $t5, 1
/* 419E4 80040DE4 A16E0000 */  sb        $t6, ($t3)
/* 419E8 80040DE8 24638565 */  addiu     $v1, $v1, -0x7a9b
/* 419EC 80040DEC 24428554 */  addiu     $v0, $v0, -0x7aac
/* 419F0 80040DF0 904F0000 */  lbu       $t7, ($v0)
.L80040DF4:
/* 419F4 80040DF4 24420001 */  addiu     $v0, $v0, 1
/* 419F8 80040DF8 0043082B */  sltu      $at, $v0, $v1
/* 419FC 80040DFC 160F0003 */  bne       $s0, $t7, .L80040E0C
/* 41A00 80040E00 00000000 */  nop       
/* 41A04 80040E04 10000006 */  b         .L80040E20
/* 41A08 80040E08 00000000 */  nop       
.L80040E0C:
/* 41A0C 80040E0C 5420FFF9 */  bnel      $at, $zero, .L80040DF4
/* 41A10 80040E10 904F0000 */  lbu       $t7, ($v0)
/* 41A14 80040E14 3C018010 */  lui       $at, 0x8010
/* 41A18 80040E18 00270821 */  addu      $at, $at, $a3
/* 41A1C 80040E1C A020CCC6 */  sb        $zero, -0x333a($at)
.L80040E20:
/* 41A20 80040E20 3C028008 */  lui       $v0, 0x8008
/* 41A24 80040E24 3C038008 */  lui       $v1, 0x8008
/* 41A28 80040E28 24638571 */  addiu     $v1, $v1, -0x7a8f
/* 41A2C 80040E2C 24428568 */  addiu     $v0, $v0, -0x7a98
/* 41A30 80040E30 90580000 */  lbu       $t8, ($v0)
.L80040E34:
/* 41A34 80040E34 24420001 */  addiu     $v0, $v0, 1
/* 41A38 80040E38 12180006 */  beq       $s0, $t8, .L80040E54
/* 41A3C 80040E3C 00000000 */  nop       
/* 41A40 80040E40 5443FFFC */  bnel      $v0, $v1, .L80040E34
/* 41A44 80040E44 90580000 */  lbu       $t8, ($v0)
/* 41A48 80040E48 3C018010 */  lui       $at, 0x8010
/* 41A4C 80040E4C 00270821 */  addu      $at, $at, $a3
/* 41A50 80040E50 A020CCC8 */  sb        $zero, -0x3338($at)
.L80040E54:
/* 41A54 80040E54 3C028010 */  lui       $v0, 0x8010
/* 41A58 80040E58 3C018010 */  lui       $at, 0x8010
/* 41A5C 80040E5C 2442CCB7 */  addiu     $v0, $v0, -0x3349
/* 41A60 80040E60 A020CCA2 */  sb        $zero, -0x335e($at)
/* 41A64 80040E64 90590000 */  lbu       $t9, ($v0)
/* 41A68 80040E68 00076080 */  sll       $t4, $a3, 2
/* 41A6C 80040E6C 014C6821 */  addu      $t5, $t2, $t4
/* 41A70 80040E70 1720018C */  bnez      $t9, .L800414A4
/* 41A74 80040E74 02002025 */  or        $a0, $s0, $zero
/* 41A78 80040E78 38E80001 */  xori      $t0, $a3, 1
/* 41A7C 80040E7C 00087080 */  sll       $t6, $t0, 2
/* 41A80 80040E80 014E4821 */  addu      $t1, $t2, $t6
/* 41A84 80040E84 8DA50000 */  lw        $a1, ($t5)
/* 41A88 80040E88 AFA90024 */  sw        $t1, 0x24($sp)
/* 41A8C 80040E8C AFA80028 */  sw        $t0, 0x28($sp)
/* 41A90 80040E90 0C010856 */  jal       func_80042158
/* 41A94 80040E94 8D260000 */  lw        $a2, ($t1)
/* 41A98 80040E98 3C0B8010 */  lui       $t3, 0x8010
/* 41A9C 80040E9C 2401FFFF */  addiu     $at, $zero, -1
/* 41AA0 80040EA0 256BCCAE */  addiu     $t3, $t3, -0x3352
/* 41AA4 80040EA4 8FA80028 */  lw        $t0, 0x28($sp)
/* 41AA8 80040EA8 14410018 */  bne       $v0, $at, .L80040F0C
/* 41AAC 80040EAC 8FA90024 */  lw        $t1, 0x24($sp)
/* 41AB0 80040EB0 2605FFFF */  addiu     $a1, $s0, -1
/* 41AB4 80040EB4 30A500FF */  andi      $a1, $a1, 0xff
/* 41AB8 80040EB8 3C048010 */  lui       $a0, 0x8010
/* 41ABC 80040EBC 2484CCD8 */  addiu     $a0, $a0, -0x3328
/* 41AC0 80040EC0 0C00F589 */  jal       func_8003D624
/* 41AC4 80040EC4 AFA50028 */  sw        $a1, 0x28($sp)
/* 41AC8 80040EC8 1440000B */  bnez      $v0, .L80040EF8
/* 41ACC 80040ECC 8FA50028 */  lw        $a1, 0x28($sp)
/* 41AD0 80040ED0 260F01A2 */  addiu     $t7, $s0, 0x1a2
/* 41AD4 80040ED4 3C048010 */  lui       $a0, 0x8010
/* 41AD8 80040ED8 AFAF0034 */  sw        $t7, 0x34($sp)
/* 41ADC 80040EDC 2484CCD8 */  addiu     $a0, $a0, -0x3328
/* 41AE0 80040EE0 0C00F55C */  jal       func_8003D570
/* 41AE4 80040EE4 24060001 */  addiu     $a2, $zero, 1
/* 41AE8 80040EE8 0C01071C */  jal       func_80041C70
/* 41AEC 80040EEC 8FA40034 */  lw        $a0, 0x34($sp)
/* 41AF0 80040EF0 1000016D */  b         .L800414A8
/* 41AF4 80040EF4 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040EF8:
/* 41AF8 80040EF8 3C048007 */  lui       $a0, 0x8007
/* 41AFC 80040EFC 0C010830 */  jal       func_800420C0
/* 41B00 80040F00 24847F6C */  addiu     $a0, $a0, 0x7f6c
/* 41B04 80040F04 10000168 */  b         .L800414A8
/* 41B08 80040F08 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040F0C:
/* 41B0C 80040F0C 2401FFFE */  addiu     $at, $zero, -2
/* 41B10 80040F10 14410017 */  bne       $v0, $at, .L80040F70
/* 41B14 80040F14 3C048010 */  lui       $a0, 0x8010
/* 41B18 80040F18 2605FFFF */  addiu     $a1, $s0, -1
/* 41B1C 80040F1C 30A500FF */  andi      $a1, $a1, 0xff
/* 41B20 80040F20 AFA50028 */  sw        $a1, 0x28($sp)
/* 41B24 80040F24 0C00F589 */  jal       func_8003D624
/* 41B28 80040F28 2484CCD8 */  addiu     $a0, $a0, -0x3328
/* 41B2C 80040F2C 1440000B */  bnez      $v0, .L80040F5C
/* 41B30 80040F30 8FA50028 */  lw        $a1, 0x28($sp)
/* 41B34 80040F34 261801A2 */  addiu     $t8, $s0, 0x1a2
/* 41B38 80040F38 3C048010 */  lui       $a0, 0x8010
/* 41B3C 80040F3C AFB80034 */  sw        $t8, 0x34($sp)
/* 41B40 80040F40 2484CCD8 */  addiu     $a0, $a0, -0x3328
/* 41B44 80040F44 0C00F55C */  jal       func_8003D570
/* 41B48 80040F48 24060001 */  addiu     $a2, $zero, 1
/* 41B4C 80040F4C 0C01071C */  jal       func_80041C70
/* 41B50 80040F50 8FA40034 */  lw        $a0, 0x34($sp)
/* 41B54 80040F54 10000154 */  b         .L800414A8
/* 41B58 80040F58 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040F5C:
/* 41B5C 80040F5C 3C048007 */  lui       $a0, 0x8007
/* 41B60 80040F60 0C010830 */  jal       func_800420C0
/* 41B64 80040F64 24847F74 */  addiu     $a0, $a0, 0x7f74
/* 41B68 80040F68 1000014F */  b         .L800414A8
/* 41B6C 80040F6C 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040F70:
/* 41B70 80040F70 2401FFFD */  addiu     $at, $zero, -3
/* 41B74 80040F74 14410019 */  bne       $v0, $at, .L80040FDC
/* 41B78 80040F78 3C048010 */  lui       $a0, 0x8010
/* 41B7C 80040F7C 2605FFFF */  addiu     $a1, $s0, -1
/* 41B80 80040F80 24060001 */  addiu     $a2, $zero, 1
/* 41B84 80040F84 3C018008 */  lui       $at, 0x8008
/* 41B88 80040F88 30A500FF */  andi      $a1, $a1, 0xff
/* 41B8C 80040F8C A02683D4 */  sb        $a2, -0x7c2c($at)
/* 41B90 80040F90 AFA50028 */  sw        $a1, 0x28($sp)
/* 41B94 80040F94 0C00F589 */  jal       func_8003D624
/* 41B98 80040F98 2484CCD8 */  addiu     $a0, $a0, -0x3328
/* 41B9C 80040F9C 1440000B */  bnez      $v0, .L80040FCC
/* 41BA0 80040FA0 8FA50028 */  lw        $a1, 0x28($sp)
/* 41BA4 80040FA4 261901A2 */  addiu     $t9, $s0, 0x1a2
/* 41BA8 80040FA8 3C048010 */  lui       $a0, 0x8010
/* 41BAC 80040FAC AFB90034 */  sw        $t9, 0x34($sp)
/* 41BB0 80040FB0 2484CCD8 */  addiu     $a0, $a0, -0x3328
/* 41BB4 80040FB4 0C00F55C */  jal       func_8003D570
/* 41BB8 80040FB8 24060001 */  addiu     $a2, $zero, 1
/* 41BBC 80040FBC 0C01071C */  jal       func_80041C70
/* 41BC0 80040FC0 8FA40034 */  lw        $a0, 0x34($sp)
/* 41BC4 80040FC4 10000138 */  b         .L800414A8
/* 41BC8 80040FC8 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040FCC:
/* 41BCC 80040FCC 0C01071C */  jal       func_80041C70
/* 41BD0 80040FD0 24040187 */  addiu     $a0, $zero, 0x187
/* 41BD4 80040FD4 10000134 */  b         .L800414A8
/* 41BD8 80040FD8 8FBF001C */  lw        $ra, 0x1c($sp)
.L80040FDC:
/* 41BDC 80040FDC 2401FFFC */  addiu     $at, $zero, -4
/* 41BE0 80040FE0 14410017 */  bne       $v0, $at, .L80041040
/* 41BE4 80040FE4 3C048010 */  lui       $a0, 0x8010
/* 41BE8 80040FE8 2605FFFF */  addiu     $a1, $s0, -1
/* 41BEC 80040FEC 30A500FF */  andi      $a1, $a1, 0xff
/* 41BF0 80040FF0 AFA50028 */  sw        $a1, 0x28($sp)
/* 41BF4 80040FF4 0C00F589 */  jal       func_8003D624
/* 41BF8 80040FF8 2484CCD8 */  addiu     $a0, $a0, -0x3328
/* 41BFC 80040FFC 1440000B */  bnez      $v0, .L8004102C
/* 41C00 80041000 8FA50028 */  lw        $a1, 0x28($sp)
/* 41C04 80041004 260C01A2 */  addiu     $t4, $s0, 0x1a2
/* 41C08 80041008 3C048010 */  lui       $a0, 0x8010
/* 41C0C 8004100C AFAC0034 */  sw        $t4, 0x34($sp)
/* 41C10 80041010 2484CCD8 */  addiu     $a0, $a0, -0x3328
/* 41C14 80041014 0C00F55C */  jal       func_8003D570
/* 41C18 80041018 24060001 */  addiu     $a2, $zero, 1
/* 41C1C 8004101C 0C01071C */  jal       func_80041C70
/* 41C20 80041020 8FA40034 */  lw        $a0, 0x34($sp)
/* 41C24 80041024 10000120 */  b         .L800414A8
/* 41C28 80041028 8FBF001C */  lw        $ra, 0x1c($sp)
.L8004102C:
/* 41C2C 8004102C 3C048007 */  lui       $a0, 0x8007
/* 41C30 80041030 0C010830 */  jal       func_800420C0
/* 41C34 80041034 24847F98 */  addiu     $a0, $a0, 0x7f98
/* 41C38 80041038 1000011B */  b         .L800414A8
/* 41C3C 8004103C 8FBF001C */  lw        $ra, 0x1c($sp)
.L80041040:
/* 41C40 80041040 2401FFFB */  addiu     $at, $zero, -5
/* 41C44 80041044 10410117 */  beq       $v0, $at, .L800414A4
/* 41C48 80041048 00086940 */  sll       $t5, $t0, 5
/* 41C4C 8004104C 01A86821 */  addu      $t5, $t5, $t0
/* 41C50 80041050 3C0E8010 */  lui       $t6, 0x8010
/* 41C54 80041054 25CECB48 */  addiu     $t6, $t6, -0x34b8
/* 41C58 80041058 000D6880 */  sll       $t5, $t5, 2
/* 41C5C 8004105C 01AE2021 */  addu      $a0, $t5, $t6
/* 41C60 80041060 8C8F0024 */  lw        $t7, 0x24($a0)
/* 41C64 80041064 31F8000F */  andi      $t8, $t7, 0xf
/* 41C68 80041068 0018C840 */  sll       $t9, $t8, 1
/* 41C6C 8004106C 00996021 */  addu      $t4, $a0, $t9
/* 41C70 80041070 958D0000 */  lhu       $t5, ($t4)
/* 41C74 80041074 0002C080 */  sll       $t8, $v0, 2
/* 41C78 80041078 01A2082B */  sltu      $at, $t5, $v0
/* 41C7C 8004107C 1020001D */  beqz      $at, .L800410F4
/* 41C80 80041080 00000000 */  nop       
/* 41C84 80041084 3C0E8010 */  lui       $t6, 0x8010
/* 41C88 80041088 91CECCB6 */  lbu       $t6, -0x334a($t6)
/* 41C8C 8004108C 15C00019 */  bnez      $t6, .L800410F4
/* 41C90 80041090 00000000 */  nop       
/* 41C94 80041094 2605FFFF */  addiu     $a1, $s0, -1
/* 41C98 80041098 30A500FF */  andi      $a1, $a1, 0xff
/* 41C9C 8004109C 3C048010 */  lui       $a0, 0x8010
/* 41CA0 800410A0 2484CCD8 */  addiu     $a0, $a0, -0x3328
/* 41CA4 800410A4 0C00F589 */  jal       func_8003D624
/* 41CA8 800410A8 AFA50028 */  sw        $a1, 0x28($sp)
/* 41CAC 800410AC 1440000B */  bnez      $v0, .L800410DC
/* 41CB0 800410B0 8FA50028 */  lw        $a1, 0x28($sp)
/* 41CB4 800410B4 260F01A2 */  addiu     $t7, $s0, 0x1a2
/* 41CB8 800410B8 3C048010 */  lui       $a0, 0x8010
/* 41CBC 800410BC AFAF0034 */  sw        $t7, 0x34($sp)
/* 41CC0 800410C0 2484CCD8 */  addiu     $a0, $a0, -0x3328
/* 41CC4 800410C4 0C00F55C */  jal       func_8003D570
/* 41CC8 800410C8 24060001 */  addiu     $a2, $zero, 1
/* 41CCC 800410CC 0C01071C */  jal       func_80041C70
/* 41CD0 800410D0 8FA40034 */  lw        $a0, 0x34($sp)
/* 41CD4 800410D4 100000F4 */  b         .L800414A8
/* 41CD8 800410D8 8FBF001C */  lw        $ra, 0x1c($sp)
.L800410DC:
/* 41CDC 800410DC 3C048007 */  lui       $a0, 0x8007
/* 41CE0 800410E0 0C010830 */  jal       func_800420C0
/* 41CE4 800410E4 24847F90 */  addiu     $a0, $a0, 0x7f90
/* 41CE8 800410E8 3C018010 */  lui       $at, 0x8010
/* 41CEC 800410EC 100000ED */  b         .L800414A4
/* 41CF0 800410F0 A020CCB6 */  sb        $zero, -0x334a($at)
.L800410F4:
/* 41CF4 800410F4 3C018010 */  lui       $at, 0x8010
/* 41CF8 800410F8 A020CCB6 */  sb        $zero, -0x334a($at)
/* 41CFC 800410FC 8D390000 */  lw        $t9, ($t1)
/* 41D00 80041100 0302C023 */  subu      $t8, $t8, $v0
/* 41D04 80041104 0018C0C0 */  sll       $t8, $t8, 3
/* 41D08 80041108 972C0028 */  lhu       $t4, 0x28($t9)
/* 41D0C 8004110C 0302C021 */  addu      $t8, $t8, $v0
/* 41D10 80041110 0018C080 */  sll       $t8, $t8, 2
/* 41D14 80041114 030C001B */  divu      $zero, $t8, $t4
/* 41D18 80041118 00002012 */  mflo      $a0
/* 41D1C 8004111C 2C810051 */  sltiu     $at, $a0, 0x51
/* 41D20 80041120 15800002 */  bnez      $t4, .L8004112C
/* 41D24 80041124 00000000 */  nop       
/* 41D28 80041128 0007000D */  break     7
.L8004112C:
/* 41D2C 8004112C 3C028010 */  lui       $v0, 0x8010
/* 41D30 80041130 14200010 */  bnez      $at, .L80041174
/* 41D34 80041134 2442CCAF */  addiu     $v0, $v0, -0x3351
/* 41D38 80041138 904D0000 */  lbu       $t5, ($v0)
/* 41D3C 8004113C 24060001 */  addiu     $a2, $zero, 1
/* 41D40 80041140 3C048007 */  lui       $a0, 0x8007
/* 41D44 80041144 15A00007 */  bnez      $t5, .L80041164
/* 41D48 80041148 00000000 */  nop       
/* 41D4C 8004114C 3C048007 */  lui       $a0, 0x8007
/* 41D50 80041150 A0460000 */  sb        $a2, ($v0)
/* 41D54 80041154 0C010830 */  jal       func_800420C0
/* 41D58 80041158 24847F6C */  addiu     $a0, $a0, 0x7f6c
/* 41D5C 8004115C 100000D2 */  b         .L800414A8
/* 41D60 80041160 8FBF001C */  lw        $ra, 0x1c($sp)
.L80041164:
/* 41D64 80041164 0C010830 */  jal       func_800420C0
/* 41D68 80041168 24847F74 */  addiu     $a0, $a0, 0x7f74
/* 41D6C 8004116C 100000CE */  b         .L800414A8
/* 41D70 80041170 8FBF001C */  lw        $ra, 0x1c($sp)
.L80041174:
/* 41D74 80041174 2C810033 */  sltiu     $at, $a0, 0x33
/* 41D78 80041178 1420000F */  bnez      $at, .L800411B8
/* 41D7C 8004117C 3C0E8008 */  lui       $t6, 0x8008
/* 41D80 80041180 8DCE83CC */  lw        $t6, -0x7c34($t6)
/* 41D84 80041184 24060001 */  addiu     $a2, $zero, 1
/* 41D88 80041188 3C048007 */  lui       $a0, 0x8007
/* 41D8C 8004118C 14CE0006 */  bne       $a2, $t6, .L800411A8
/* 41D90 80041190 00000000 */  nop       
/* 41D94 80041194 3C048007 */  lui       $a0, 0x8007
/* 41D98 80041198 0C010830 */  jal       func_800420C0
/* 41D9C 8004119C 24847F88 */  addiu     $a0, $a0, 0x7f88
/* 41DA0 800411A0 100000C1 */  b         .L800414A8
/* 41DA4 800411A4 8FBF001C */  lw        $ra, 0x1c($sp)
.L800411A8:
/* 41DA8 800411A8 0C010830 */  jal       func_800420C0
/* 41DAC 800411AC 24847F7C */  addiu     $a0, $a0, 0x7f7c
/* 41DB0 800411B0 100000BD */  b         .L800414A8
/* 41DB4 800411B4 8FBF001C */  lw        $ra, 0x1c($sp)
.L800411B8:
/* 41DB8 800411B8 0C011395 */  jal       func_80044E54
/* 41DBC 800411BC 24040001 */  addiu     $a0, $zero, 1
/* 41DC0 800411C0 3C0B8010 */  lui       $t3, 0x8010
/* 41DC4 800411C4 144000B7 */  bnez      $v0, .L800414A4
/* 41DC8 800411C8 256BCCAE */  addiu     $t3, $t3, -0x3352
/* 41DCC 800411CC 3C0F8008 */  lui       $t7, 0x8008
/* 41DD0 800411D0 8DEF83CC */  lw        $t7, -0x7c34($t7)
/* 41DD4 800411D4 24060001 */  addiu     $a2, $zero, 1
/* 41DD8 800411D8 3C048007 */  lui       $a0, 0x8007
/* 41DDC 800411DC 14CF000F */  bne       $a2, $t7, .L8004121C
/* 41DE0 800411E0 00000000 */  nop       
/* 41DE4 800411E4 91790000 */  lbu       $t9, ($t3)
/* 41DE8 800411E8 24010002 */  addiu     $at, $zero, 2
/* 41DEC 800411EC 3C048007 */  lui       $a0, 0x8007
/* 41DF0 800411F0 17210006 */  bne       $t9, $at, .L8004120C
/* 41DF4 800411F4 00000000 */  nop       
/* 41DF8 800411F8 3C048007 */  lui       $a0, 0x8007
/* 41DFC 800411FC 0C010830 */  jal       func_800420C0
/* 41E00 80041200 24847FAC */  addiu     $a0, $a0, 0x7fac
/* 41E04 80041204 100000A8 */  b         .L800414A8
/* 41E08 80041208 8FBF001C */  lw        $ra, 0x1c($sp)
.L8004120C:
/* 41E0C 8004120C 0C010830 */  jal       func_800420C0
/* 41E10 80041210 24847FA4 */  addiu     $a0, $a0, 0x7fa4
/* 41E14 80041214 100000A4 */  b         .L800414A8
/* 41E18 80041218 8FBF001C */  lw        $ra, 0x1c($sp)
.L8004121C:
/* 41E1C 8004121C 0C010830 */  jal       func_800420C0
/* 41E20 80041220 24847F98 */  addiu     $a0, $a0, 0x7f98
/* 41E24 80041224 100000A0 */  b         .L800414A8
/* 41E28 80041228 8FBF001C */  lw        $ra, 0x1c($sp)
/* 41E2C 8004122C 3C028010 */  lui       $v0, 0x8010
/* 41E30 80041230 2442CCB7 */  addiu     $v0, $v0, -0x3349
/* 41E34 80041234 90580000 */  lbu       $t8, ($v0)
/* 41E38 80041238 240C0001 */  addiu     $t4, $zero, 1
/* 41E3C 8004123C 3C018010 */  lui       $at, 0x8010
/* 41E40 80041240 17000098 */  bnez      $t8, .L800414A4
/* 41E44 80041244 02002025 */  or        $a0, $s0, $zero
/* 41E48 80041248 A04C0000 */  sb        $t4, ($v0)
/* 41E4C 8004124C 00076880 */  sll       $t5, $a3, 2
/* 41E50 80041250 38E80001 */  xori      $t0, $a3, 1
/* 41E54 80041254 A020CCA2 */  sb        $zero, -0x335e($at)
/* 41E58 80041258 00087880 */  sll       $t7, $t0, 2
/* 41E5C 8004125C 014D7021 */  addu      $t6, $t2, $t5
/* 41E60 80041260 8DC50000 */  lw        $a1, ($t6)
/* 41E64 80041264 014F4821 */  addu      $t1, $t2, $t7
/* 41E68 80041268 8D260000 */  lw        $a2, ($t1)
/* 41E6C 8004126C AFA90024 */  sw        $t1, 0x24($sp)
/* 41E70 80041270 0C010856 */  jal       func_80042158
/* 41E74 80041274 AFA80028 */  sw        $t0, 0x28($sp)
/* 41E78 80041278 0002CC02 */  srl       $t9, $v0, 0x10
/* 41E7C 8004127C 24060001 */  addiu     $a2, $zero, 1
/* 41E80 80041280 8FA80028 */  lw        $t0, 0x28($sp)
/* 41E84 80041284 17200087 */  bnez      $t9, .L800414A4
/* 41E88 80041288 8FA90024 */  lw        $t1, 0x24($sp)
/* 41E8C 8004128C 0008C140 */  sll       $t8, $t0, 5
/* 41E90 80041290 0308C021 */  addu      $t8, $t8, $t0
/* 41E94 80041294 3C0C8010 */  lui       $t4, 0x8010
/* 41E98 80041298 258CCB48 */  addiu     $t4, $t4, -0x34b8
/* 41E9C 8004129C 0018C080 */  sll       $t8, $t8, 2
/* 41EA0 800412A0 030C2021 */  addu      $a0, $t8, $t4
/* 41EA4 800412A4 8C8D0024 */  lw        $t5, 0x24($a0)
/* 41EA8 800412A8 00021840 */  sll       $v1, $v0, 1
/* 41EAC 800412AC 31AE000F */  andi      $t6, $t5, 0xf
/* 41EB0 800412B0 000E7840 */  sll       $t7, $t6, 1
/* 41EB4 800412B4 008FC821 */  addu      $t9, $a0, $t7
/* 41EB8 800412B8 97380000 */  lhu       $t8, ($t9)
/* 41EBC 800412BC 00036880 */  sll       $t5, $v1, 2
/* 41EC0 800412C0 0303082B */  sltu      $at, $t8, $v1
/* 41EC4 800412C4 50200019 */  beql      $at, $zero, .L8004132C
/* 41EC8 800412C8 8D2E0000 */  lw        $t6, ($t1)
/* 41ECC 800412CC 2605FFFF */  addiu     $a1, $s0, -1
/* 41ED0 800412D0 30A500FF */  andi      $a1, $a1, 0xff
/* 41ED4 800412D4 3C048010 */  lui       $a0, 0x8010
/* 41ED8 800412D8 2484CCD8 */  addiu     $a0, $a0, -0x3328
/* 41EDC 800412DC 0C00F589 */  jal       func_8003D624
/* 41EE0 800412E0 AFA50028 */  sw        $a1, 0x28($sp)
/* 41EE4 800412E4 1440000B */  bnez      $v0, .L80041314
/* 41EE8 800412E8 8FA50028 */  lw        $a1, 0x28($sp)
/* 41EEC 800412EC 260C01A2 */  addiu     $t4, $s0, 0x1a2
/* 41EF0 800412F0 3C048010 */  lui       $a0, 0x8010
/* 41EF4 800412F4 AFAC0034 */  sw        $t4, 0x34($sp)
/* 41EF8 800412F8 2484CCD8 */  addiu     $a0, $a0, -0x3328
/* 41EFC 800412FC 0C00F55C */  jal       func_8003D570
/* 41F00 80041300 24060001 */  addiu     $a2, $zero, 1
/* 41F04 80041304 0C01071C */  jal       func_80041C70
/* 41F08 80041308 8FA40034 */  lw        $a0, 0x34($sp)
/* 41F0C 8004130C 10000066 */  b         .L800414A8
/* 41F10 80041310 8FBF001C */  lw        $ra, 0x1c($sp)
.L80041314:
/* 41F14 80041314 3C048007 */  lui       $a0, 0x8007
/* 41F18 80041318 0C010830 */  jal       func_800420C0
/* 41F1C 8004131C 24847F90 */  addiu     $a0, $a0, 0x7f90
/* 41F20 80041320 10000061 */  b         .L800414A8
/* 41F24 80041324 8FBF001C */  lw        $ra, 0x1c($sp)
/* 41F28 80041328 8D2E0000 */  lw        $t6, ($t1)
.L8004132C:
/* 41F2C 8004132C 01A36823 */  subu      $t5, $t5, $v1
/* 41F30 80041330 000D68C0 */  sll       $t5, $t5, 3
/* 41F34 80041334 95CF0028 */  lhu       $t7, 0x28($t6)
/* 41F38 80041338 01A36821 */  addu      $t5, $t5, $v1
/* 41F3C 8004133C 000D6880 */  sll       $t5, $t5, 2
/* 41F40 80041340 01AF001B */  divu      $zero, $t5, $t7
/* 41F44 80041344 00002012 */  mflo      $a0
/* 41F48 80041348 2C810051 */  sltiu     $at, $a0, 0x51
/* 41F4C 8004134C 15E00002 */  bnez      $t7, .L80041358
/* 41F50 80041350 00000000 */  nop       
/* 41F54 80041354 0007000D */  break     7
.L80041358:
/* 41F58 80041358 3C028010 */  lui       $v0, 0x8010
/* 41F5C 8004135C 1420000F */  bnez      $at, .L8004139C
/* 41F60 80041360 2442CCAF */  addiu     $v0, $v0, -0x3351
/* 41F64 80041364 90590000 */  lbu       $t9, ($v0)
/* 41F68 80041368 3C048007 */  lui       $a0, 0x8007
/* 41F6C 8004136C 17200007 */  bnez      $t9, .L8004138C
/* 41F70 80041370 00000000 */  nop       
/* 41F74 80041374 3C048007 */  lui       $a0, 0x8007
/* 41F78 80041378 A0460000 */  sb        $a2, ($v0)
/* 41F7C 8004137C 0C010830 */  jal       func_800420C0
/* 41F80 80041380 24847F6C */  addiu     $a0, $a0, 0x7f6c
/* 41F84 80041384 10000048 */  b         .L800414A8
/* 41F88 80041388 8FBF001C */  lw        $ra, 0x1c($sp)
.L8004138C:
/* 41F8C 8004138C 0C010830 */  jal       func_800420C0
/* 41F90 80041390 24847F74 */  addiu     $a0, $a0, 0x7f74
/* 41F94 80041394 10000044 */  b         .L800414A8
/* 41F98 80041398 8FBF001C */  lw        $ra, 0x1c($sp)
.L8004139C:
/* 41F9C 8004139C 2C810033 */  sltiu     $at, $a0, 0x33
/* 41FA0 800413A0 1420000E */  bnez      $at, .L800413DC
/* 41FA4 800413A4 3C188008 */  lui       $t8, 0x8008
/* 41FA8 800413A8 8F1883CC */  lw        $t8, -0x7c34($t8)
/* 41FAC 800413AC 3C048007 */  lui       $a0, 0x8007
/* 41FB0 800413B0 14D80006 */  bne       $a2, $t8, .L800413CC
/* 41FB4 800413B4 00000000 */  nop       
/* 41FB8 800413B8 3C048007 */  lui       $a0, 0x8007
/* 41FBC 800413BC 0C010830 */  jal       func_800420C0
/* 41FC0 800413C0 24847F88 */  addiu     $a0, $a0, 0x7f88
/* 41FC4 800413C4 10000038 */  b         .L800414A8
/* 41FC8 800413C8 8FBF001C */  lw        $ra, 0x1c($sp)
.L800413CC:
/* 41FCC 800413CC 0C010830 */  jal       func_800420C0
/* 41FD0 800413D0 24847F7C */  addiu     $a0, $a0, 0x7f7c
/* 41FD4 800413D4 10000034 */  b         .L800414A8
/* 41FD8 800413D8 8FBF001C */  lw        $ra, 0x1c($sp)
.L800413DC:
/* 41FDC 800413DC 0C011395 */  jal       func_80044E54
/* 41FE0 800413E0 00C02025 */  or        $a0, $a2, $zero
/* 41FE4 800413E4 1440002F */  bnez      $v0, .L800414A4
/* 41FE8 800413E8 24060001 */  addiu     $a2, $zero, 1
/* 41FEC 800413EC 3C0C8008 */  lui       $t4, 0x8008
/* 41FF0 800413F0 8D8C83CC */  lw        $t4, -0x7c34($t4)
/* 41FF4 800413F4 3C0B8010 */  lui       $t3, 0x8010
/* 41FF8 800413F8 256BCCAE */  addiu     $t3, $t3, -0x3352
/* 41FFC 800413FC 14CC000F */  bne       $a2, $t4, .L8004143C
/* 42000 80041400 3C048007 */  lui       $a0, 0x8007
/* 42004 80041404 916E0000 */  lbu       $t6, ($t3)
/* 42008 80041408 24010002 */  addiu     $at, $zero, 2
/* 4200C 8004140C 3C048007 */  lui       $a0, 0x8007
/* 42010 80041410 15C10006 */  bne       $t6, $at, .L8004142C
/* 42014 80041414 00000000 */  nop       
/* 42018 80041418 3C048007 */  lui       $a0, 0x8007
/* 4201C 8004141C 0C010830 */  jal       func_800420C0
/* 42020 80041420 24847FAC */  addiu     $a0, $a0, 0x7fac
/* 42024 80041424 10000020 */  b         .L800414A8
/* 42028 80041428 8FBF001C */  lw        $ra, 0x1c($sp)
.L8004142C:
/* 4202C 8004142C 0C010830 */  jal       func_800420C0
/* 42030 80041430 24847FA4 */  addiu     $a0, $a0, 0x7fa4
/* 42034 80041434 1000001C */  b         .L800414A8
/* 42038 80041438 8FBF001C */  lw        $ra, 0x1c($sp)
.L8004143C:
/* 4203C 8004143C 0C010830 */  jal       func_800420C0
/* 42040 80041440 24847F98 */  addiu     $a0, $a0, 0x7f98
/* 42044 80041444 10000018 */  b         .L800414A8
/* 42048 80041448 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4204C 8004144C 3C0B8010 */  lui       $t3, 0x8010
/* 42050 80041450 256BCCAE */  addiu     $t3, $t3, -0x3352
/* 42054 80041454 916D0000 */  lbu       $t5, ($t3)
/* 42058 80041458 3C028010 */  lui       $v0, 0x8010
/* 4205C 8004145C 2442CCB7 */  addiu     $v0, $v0, -0x3349
/* 42060 80041460 25AF0001 */  addiu     $t7, $t5, 1
/* 42064 80041464 A16F0000 */  sb        $t7, ($t3)
/* 42068 80041468 A0400000 */  sb        $zero, ($v0)
/* 4206C 8004146C 3C018010 */  lui       $at, 0x8010
/* 42070 80041470 1000000C */  b         .L800414A4
/* 42074 80041474 A020CCA2 */  sb        $zero, -0x335e($at)
/* 42078 80041478 3C028010 */  lui       $v0, 0x8010
/* 4207C 8004147C 2442CCB7 */  addiu     $v0, $v0, -0x3349
/* 42080 80041480 A0400000 */  sb        $zero, ($v0)
/* 42084 80041484 3C018010 */  lui       $at, 0x8010
/* 42088 80041488 10000006 */  b         .L800414A4
/* 4208C 8004148C A020CCA2 */  sb        $zero, -0x335e($at)
.L80041490:
/* 42090 80041490 3C028010 */  lui       $v0, 0x8010
/* 42094 80041494 2442CCB7 */  addiu     $v0, $v0, -0x3349
/* 42098 80041498 A0400000 */  sb        $zero, ($v0)
/* 4209C 8004149C 3C018010 */  lui       $at, 0x8010
/* 420A0 800414A0 A020CCA2 */  sb        $zero, -0x335e($at)
.L800414A4:
/* 420A4 800414A4 8FBF001C */  lw        $ra, 0x1c($sp)
.L800414A8:
/* 420A8 800414A8 8FB00018 */  lw        $s0, 0x18($sp)
/* 420AC 800414AC 27BD0048 */  addiu     $sp, $sp, 0x48
/* 420B0 800414B0 03E00008 */  jr        $ra
/* 420B4 800414B4 00000000 */  nop       

glabel func_800414B8
/* 420B8 800414B8 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 420BC 800414BC 1080001B */  beqz      $a0, .L8004152C
/* 420C0 800414C0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 420C4 800414C4 2C810005 */  sltiu     $at, $a0, 5
/* 420C8 800414C8 10200018 */  beqz      $at, .L8004152C
/* 420CC 800414CC 2484FFFF */  addiu     $a0, $a0, -1
/* 420D0 800414D0 3C028008 */  lui       $v0, 0x8008
/* 420D4 800414D4 00441021 */  addu      $v0, $v0, $a0
/* 420D8 800414D8 90428398 */  lbu       $v0, -0x7c68($v0)
/* 420DC 800414DC 18400013 */  blez      $v0, .L8004152C
/* 420E0 800414E0 28410003 */  slti      $at, $v0, 3
/* 420E4 800414E4 10200011 */  beqz      $at, .L8004152C
/* 420E8 800414E8 2442FFFF */  addiu     $v0, $v0, -1
/* 420EC 800414EC 3C0E8010 */  lui       $t6, 0x8010
/* 420F0 800414F0 304200FF */  andi      $v0, $v0, 0xff
/* 420F4 800414F4 25CECCD4 */  addiu     $t6, $t6, -0x332c
/* 420F8 800414F8 004E1821 */  addu      $v1, $v0, $t6
/* 420FC 800414FC 906F0000 */  lbu       $t7, ($v1)
/* 42100 80041500 24040190 */  addiu     $a0, $zero, 0x190
/* 42104 80041504 15E00007 */  bnez      $t7, .L80041524
/* 42108 80041508 00000000 */  nop       
/* 4210C 8004150C 0C01071C */  jal       func_80041C70
/* 42110 80041510 AFA30018 */  sw        $v1, 0x18($sp)
/* 42114 80041514 8FA30018 */  lw        $v1, 0x18($sp)
/* 42118 80041518 24180001 */  addiu     $t8, $zero, 1
/* 4211C 8004151C 10000003 */  b         .L8004152C
/* 42120 80041520 A0780000 */  sb        $t8, ($v1)
.L80041524:
/* 42124 80041524 0C01071C */  jal       func_80041C70
/* 42128 80041528 24040191 */  addiu     $a0, $zero, 0x191
.L8004152C:
/* 4212C 8004152C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 42130 80041530 27BD0020 */  addiu     $sp, $sp, 0x20
/* 42134 80041534 03E00008 */  jr        $ra
/* 42138 80041538 00000000 */  nop       

glabel func_8004153C
/* 4213C 8004153C 3C0E8008 */  lui       $t6, 0x8008
/* 42140 80041540 91CE8E80 */  lbu       $t6, -0x7180($t6)
/* 42144 80041544 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 42148 80041548 AFBF0014 */  sw        $ra, 0x14($sp)
/* 4214C 8004154C 55C0004B */  bnel      $t6, $zero, .L8004167C
/* 42150 80041550 8FBF0014 */  lw        $ra, 0x14($sp)
/* 42154 80041554 0C012C73 */  jal       func_8004B1CC
/* 42158 80041558 2404003D */  addiu     $a0, $zero, 0x3d
/* 4215C 8004155C 3C058008 */  lui       $a1, 0x8008
/* 42160 80041560 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 42164 80041564 24040016 */  addiu     $a0, $zero, 0x16
/* 42168 80041568 0C00D9E8 */  jal       func_800367A0
/* 4216C 8004156C 00003025 */  or        $a2, $zero, $zero
/* 42170 80041570 3C028008 */  lui       $v0, 0x8008
/* 42174 80041574 8C428404 */  lw        $v0, -0x7bfc($v0)
/* 42178 80041578 2401000C */  addiu     $at, $zero, 0xc
/* 4217C 8004157C 3C0F8008 */  lui       $t7, 0x8008
/* 42180 80041580 54410012 */  bnel      $v0, $at, .L800415CC
/* 42184 80041584 2401000D */  addiu     $at, $zero, 0xd
/* 42188 80041588 8DEF8408 */  lw        $t7, -0x7bf8($t7)
/* 4218C 8004158C 3C198008 */  lui       $t9, 0x8008
/* 42190 80041590 31F80003 */  andi      $t8, $t7, 3
/* 42194 80041594 17000008 */  bnez      $t8, .L800415B8
/* 42198 80041598 00000000 */  nop       
/* 4219C 8004159C 93398390 */  lbu       $t9, -0x7c70($t9)
/* 421A0 800415A0 13200005 */  beqz      $t9, .L800415B8
/* 421A4 800415A4 00000000 */  nop       
/* 421A8 800415A8 0C01071C */  jal       func_80041C70
/* 421AC 800415AC 240400CA */  addiu     $a0, $zero, 0xca
/* 421B0 800415B0 10000032 */  b         .L8004167C
/* 421B4 800415B4 8FBF0014 */  lw        $ra, 0x14($sp)
.L800415B8:
/* 421B8 800415B8 0C01071C */  jal       func_80041C70
/* 421BC 800415BC 240400C8 */  addiu     $a0, $zero, 0xc8
/* 421C0 800415C0 1000002E */  b         .L8004167C
/* 421C4 800415C4 8FBF0014 */  lw        $ra, 0x14($sp)
/* 421C8 800415C8 2401000D */  addiu     $at, $zero, 0xd
.L800415CC:
/* 421CC 800415CC 1441001C */  bne       $v0, $at, .L80041640
/* 421D0 800415D0 3C0A8008 */  lui       $t2, 0x8008
/* 421D4 800415D4 3C028008 */  lui       $v0, 0x8008
/* 421D8 800415D8 8C428408 */  lw        $v0, -0x7bf8($v0)
/* 421DC 800415DC 24010004 */  addiu     $at, $zero, 4
/* 421E0 800415E0 3C088008 */  lui       $t0, 0x8008
/* 421E4 800415E4 54410009 */  bnel      $v0, $at, .L8004160C
/* 421E8 800415E8 24010005 */  addiu     $at, $zero, 5
/* 421EC 800415EC 91088390 */  lbu       $t0, -0x7c70($t0)
/* 421F0 800415F0 51000006 */  beql      $t0, $zero, .L8004160C
/* 421F4 800415F4 24010005 */  addiu     $at, $zero, 5
/* 421F8 800415F8 0C01071C */  jal       func_80041C70
/* 421FC 800415FC 240400CA */  addiu     $a0, $zero, 0xca
/* 42200 80041600 1000001E */  b         .L8004167C
/* 42204 80041604 8FBF0014 */  lw        $ra, 0x14($sp)
/* 42208 80041608 24010005 */  addiu     $at, $zero, 5
.L8004160C:
/* 4220C 8004160C 14410008 */  bne       $v0, $at, .L80041630
/* 42210 80041610 3C098008 */  lui       $t1, 0x8008
/* 42214 80041614 91298390 */  lbu       $t1, -0x7c70($t1)
/* 42218 80041618 11200005 */  beqz      $t1, .L80041630
/* 4221C 8004161C 00000000 */  nop       
/* 42220 80041620 0C01071C */  jal       func_80041C70
/* 42224 80041624 240400CB */  addiu     $a0, $zero, 0xcb
/* 42228 80041628 10000014 */  b         .L8004167C
/* 4222C 8004162C 8FBF0014 */  lw        $ra, 0x14($sp)
.L80041630:
/* 42230 80041630 0C01071C */  jal       func_80041C70
/* 42234 80041634 240400C8 */  addiu     $a0, $zero, 0xc8
/* 42238 80041638 10000010 */  b         .L8004167C
/* 4223C 8004163C 8FBF0014 */  lw        $ra, 0x14($sp)
.L80041640:
/* 42240 80041640 8D4A8408 */  lw        $t2, -0x7bf8($t2)
/* 42244 80041644 24010008 */  addiu     $at, $zero, 8
/* 42248 80041648 3C0B8008 */  lui       $t3, 0x8008
/* 4224C 8004164C 15410008 */  bne       $t2, $at, .L80041670
/* 42250 80041650 00000000 */  nop       
/* 42254 80041654 916B8390 */  lbu       $t3, -0x7c70($t3)
/* 42258 80041658 11600005 */  beqz      $t3, .L80041670
/* 4225C 8004165C 00000000 */  nop       
/* 42260 80041660 0C01071C */  jal       func_80041C70
/* 42264 80041664 240400C9 */  addiu     $a0, $zero, 0xc9
/* 42268 80041668 10000004 */  b         .L8004167C
/* 4226C 8004166C 8FBF0014 */  lw        $ra, 0x14($sp)
.L80041670:
/* 42270 80041670 0C01071C */  jal       func_80041C70
/* 42274 80041674 240400C8 */  addiu     $a0, $zero, 0xc8
/* 42278 80041678 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004167C:
/* 4227C 8004167C 27BD0018 */  addiu     $sp, $sp, 0x18
/* 42280 80041680 03E00008 */  jr        $ra
/* 42284 80041684 00000000 */  nop       

glabel func_80041688
/* 42288 80041688 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 4228C 8004168C AFBF0014 */  sw        $ra, 0x14($sp)
/* 42290 80041690 3C058008 */  lui       $a1, 0x8008
/* 42294 80041694 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 42298 80041698 24040016 */  addiu     $a0, $zero, 0x16
/* 4229C 8004169C 0C00D9E8 */  jal       func_800367A0
/* 422A0 800416A0 00003025 */  or        $a2, $zero, $zero
/* 422A4 800416A4 0C01071C */  jal       func_80041C70
/* 422A8 800416A8 240401A2 */  addiu     $a0, $zero, 0x1a2
/* 422AC 800416AC 8FBF0014 */  lw        $ra, 0x14($sp)
/* 422B0 800416B0 27BD0018 */  addiu     $sp, $sp, 0x18
/* 422B4 800416B4 03E00008 */  jr        $ra
/* 422B8 800416B8 00000000 */  nop       

glabel func_800416BC
/* 422BC 800416BC 3C0E8008 */  lui       $t6, 0x8008
/* 422C0 800416C0 3C0F8008 */  lui       $t7, 0x8008
/* 422C4 800416C4 8DEF83B8 */  lw        $t7, -0x7c48($t7)
/* 422C8 800416C8 8DCE83B4 */  lw        $t6, -0x7c4c($t6)
/* 422CC 800416CC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 422D0 800416D0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 422D4 800416D4 01CF082B */  sltu      $at, $t6, $t7
/* 422D8 800416D8 1020001D */  beqz      $at, .L80041750
/* 422DC 800416DC 3C188008 */  lui       $t8, 0x8008
/* 422E0 800416E0 8F188388 */  lw        $t8, -0x7c78($t8)
/* 422E4 800416E4 1300001A */  beqz      $t8, .L80041750
/* 422E8 800416E8 00000000 */  nop       
/* 422EC 800416EC 0C011395 */  jal       func_80044E54
/* 422F0 800416F0 24040001 */  addiu     $a0, $zero, 1
/* 422F4 800416F4 14400016 */  bnez      $v0, .L80041750
/* 422F8 800416F8 3C028008 */  lui       $v0, 0x8008
/* 422FC 800416FC 8C4283B4 */  lw        $v0, -0x7c4c($v0)
/* 42300 80041700 3C038008 */  lui       $v1, 0x8008
/* 42304 80041704 3C098010 */  lui       $t1, 0x8010
/* 42308 80041708 30590003 */  andi      $t9, $v0, 3
/* 4230C 8004170C 00194080 */  sll       $t0, $t9, 2
/* 42310 80041710 00681821 */  addu      $v1, $v1, $t0
/* 42314 80041714 8C6383A4 */  lw        $v1, -0x7c5c($v1)
/* 42318 80041718 24040001 */  addiu     $a0, $zero, 1
/* 4231C 8004171C 10600009 */  beqz      $v1, .L80041744
/* 42320 80041720 000350C0 */  sll       $t2, $v1, 3
/* 42324 80041724 8D29C714 */  lw        $t1, -0x38ec($t1)
/* 42328 80041728 2406007E */  addiu     $a2, $zero, 0x7e
/* 4232C 8004172C 00003825 */  or        $a3, $zero, $zero
/* 42330 80041730 012A5821 */  addu      $t3, $t1, $t2
/* 42334 80041734 0C01132F */  jal       func_80044CBC
/* 42338 80041738 8D65FFFC */  lw        $a1, -4($t3)
/* 4233C 8004173C 3C028008 */  lui       $v0, 0x8008
/* 42340 80041740 8C4283B4 */  lw        $v0, -0x7c4c($v0)
.L80041744:
/* 42344 80041744 244C0001 */  addiu     $t4, $v0, 1
/* 42348 80041748 3C018008 */  lui       $at, 0x8008
/* 4234C 8004174C AC2C83B4 */  sw        $t4, -0x7c4c($at)
.L80041750:
/* 42350 80041750 3C0D8008 */  lui       $t5, 0x8008
/* 42354 80041754 91AD83BC */  lbu       $t5, -0x7c44($t5)
/* 42358 80041758 3C028008 */  lui       $v0, 0x8008
/* 4235C 8004175C 11A0005F */  beqz      $t5, .L800418DC
/* 42360 80041760 00000000 */  nop       
/* 42364 80041764 8C4283C8 */  lw        $v0, -0x7c38($v0)
/* 42368 80041768 3C038008 */  lui       $v1, 0x8008
/* 4236C 8004176C 246383C0 */  addiu     $v1, $v1, -0x7c40
/* 42370 80041770 2C4103E9 */  sltiu     $at, $v0, 0x3e9
/* 42374 80041774 14200011 */  bnez      $at, .L800417BC
/* 42378 80041778 00000000 */  nop       
/* 4237C 8004177C 906E0000 */  lbu       $t6, ($v1)
/* 42380 80041780 3C0F8008 */  lui       $t7, 0x8008
/* 42384 80041784 15C0000D */  bnez      $t6, .L800417BC
/* 42388 80041788 00000000 */  nop       
/* 4238C 8004178C 8DEF83CC */  lw        $t7, -0x7c34($t7)
/* 42390 80041790 11E0000A */  beqz      $t7, .L800417BC
/* 42394 80041794 00000000 */  nop       
/* 42398 80041798 0C01071C */  jal       func_80041C70
/* 4239C 8004179C 24040248 */  addiu     $a0, $zero, 0x248
/* 423A0 800417A0 3C038008 */  lui       $v1, 0x8008
/* 423A4 800417A4 246383C0 */  addiu     $v1, $v1, -0x7c40
/* 423A8 800417A8 24180001 */  addiu     $t8, $zero, 1
/* 423AC 800417AC A0780000 */  sb        $t8, ($v1)
/* 423B0 800417B0 3C028008 */  lui       $v0, 0x8008
/* 423B4 800417B4 10000046 */  b         .L800418D0
/* 423B8 800417B8 8C4283C8 */  lw        $v0, -0x7c38($v0)
.L800417BC:
/* 423BC 800417BC 3C038008 */  lui       $v1, 0x8008
/* 423C0 800417C0 2C4107D1 */  sltiu     $at, $v0, 0x7d1
/* 423C4 800417C4 14200013 */  bnez      $at, .L80041814
/* 423C8 800417C8 246383C0 */  addiu     $v1, $v1, -0x7c40
/* 423CC 800417CC 90790000 */  lbu       $t9, ($v1)
/* 423D0 800417D0 3C088008 */  lui       $t0, 0x8008
/* 423D4 800417D4 57200010 */  bnel      $t9, $zero, .L80041818
/* 423D8 800417D8 2C410641 */  sltiu     $at, $v0, 0x641
/* 423DC 800417DC 8D0883CC */  lw        $t0, -0x7c34($t0)
/* 423E0 800417E0 5500000D */  bnel      $t0, $zero, .L80041818
/* 423E4 800417E4 2C410641 */  sltiu     $at, $v0, 0x641
/* 423E8 800417E8 0C01071C */  jal       func_80041C70
/* 423EC 800417EC 24040248 */  addiu     $a0, $zero, 0x248
/* 423F0 800417F0 3C038008 */  lui       $v1, 0x8008
/* 423F4 800417F4 246383C0 */  addiu     $v1, $v1, -0x7c40
/* 423F8 800417F8 24090001 */  addiu     $t1, $zero, 1
/* 423FC 800417FC A0690000 */  sb        $t1, ($v1)
/* 42400 80041800 240A03E8 */  addiu     $t2, $zero, 0x3e8
/* 42404 80041804 3C018008 */  lui       $at, 0x8008
/* 42408 80041808 AC2A83C8 */  sw        $t2, -0x7c38($at)
/* 4240C 8004180C 10000030 */  b         .L800418D0
/* 42410 80041810 240203E8 */  addiu     $v0, $zero, 0x3e8
.L80041814:
/* 42414 80041814 2C410641 */  sltiu     $at, $v0, 0x641
.L80041818:
/* 42418 80041818 5420001C */  bnel      $at, $zero, .L8004188C
/* 4241C 8004181C 2C410899 */  sltiu     $at, $v0, 0x899
/* 42420 80041820 906B0000 */  lbu       $t3, ($v1)
/* 42424 80041824 24010001 */  addiu     $at, $zero, 1
/* 42428 80041828 55610018 */  bnel      $t3, $at, .L8004188C
/* 4242C 8004182C 2C410899 */  sltiu     $at, $v0, 0x899
/* 42430 80041830 0C01071C */  jal       func_80041C70
/* 42434 80041834 24040249 */  addiu     $a0, $zero, 0x249
/* 42438 80041838 3C0C8008 */  lui       $t4, 0x8008
/* 4243C 8004183C 918C83C4 */  lbu       $t4, -0x7c3c($t4)
/* 42440 80041840 3C038008 */  lui       $v1, 0x8008
/* 42444 80041844 246383C0 */  addiu     $v1, $v1, -0x7c40
/* 42448 80041848 1580000A */  bnez      $t4, .L80041874
/* 4244C 8004184C 2404005B */  addiu     $a0, $zero, 0x5b
/* 42450 80041850 3C058008 */  lui       $a1, 0x8008
/* 42454 80041854 90A58400 */  lbu       $a1, -0x7c00($a1)
/* 42458 80041858 0C00D9E8 */  jal       func_800367A0
/* 4245C 8004185C 00003025 */  or        $a2, $zero, $zero
/* 42460 80041860 3C038008 */  lui       $v1, 0x8008
/* 42464 80041864 240D0001 */  addiu     $t5, $zero, 1
/* 42468 80041868 3C018008 */  lui       $at, 0x8008
/* 4246C 8004186C 246383C0 */  addiu     $v1, $v1, -0x7c40
/* 42470 80041870 A02D83C4 */  sb        $t5, -0x7c3c($at)
.L80041874:
/* 42474 80041874 240E0002 */  addiu     $t6, $zero, 2
/* 42478 80041878 A06E0000 */  sb        $t6, ($v1)
/* 4247C 8004187C 3C028008 */  lui       $v0, 0x8008
/* 42480 80041880 10000013 */  b         .L800418D0
/* 42484 80041884 8C4283C8 */  lw        $v0, -0x7c38($v0)
/* 42488 80041888 2C410899 */  sltiu     $at, $v0, 0x899
.L8004188C:
/* 4248C 8004188C 54200011 */  bnel      $at, $zero, .L800418D4
/* 42490 80041890 24480001 */  addiu     $t0, $v0, 1
/* 42494 80041894 906F0000 */  lbu       $t7, ($v1)
/* 42498 80041898 24010002 */  addiu     $at, $zero, 2
/* 4249C 8004189C 55E1000D */  bnel      $t7, $at, .L800418D4
/* 424A0 800418A0 24480001 */  addiu     $t0, $v0, 1
/* 424A4 800418A4 0C01071C */  jal       func_80041C70
/* 424A8 800418A8 2404024A */  addiu     $a0, $zero, 0x24a
/* 424AC 800418AC 3C038008 */  lui       $v1, 0x8008
/* 424B0 800418B0 241803E8 */  addiu     $t8, $zero, 0x3e8
/* 424B4 800418B4 3C018008 */  lui       $at, 0x8008
/* 424B8 800418B8 246383C0 */  addiu     $v1, $v1, -0x7c40
/* 424BC 800418BC AC3883C8 */  sw        $t8, -0x7c38($at)
/* 424C0 800418C0 24190001 */  addiu     $t9, $zero, 1
/* 424C4 800418C4 A0790000 */  sb        $t9, ($v1)
/* 424C8 800418C8 3C028008 */  lui       $v0, 0x8008
/* 424CC 800418CC 8C4283C8 */  lw        $v0, -0x7c38($v0)
.L800418D0:
/* 424D0 800418D0 24480001 */  addiu     $t0, $v0, 1
.L800418D4:
/* 424D4 800418D4 3C018008 */  lui       $at, 0x8008
/* 424D8 800418D8 AC2883C8 */  sw        $t0, -0x7c38($at)
.L800418DC:
/* 424DC 800418DC 3C038010 */  lui       $v1, 0x8010
/* 424E0 800418E0 9063CCA2 */  lbu       $v1, -0x335e($v1)
/* 424E4 800418E4 24010001 */  addiu     $at, $zero, 1
/* 424E8 800418E8 50600068 */  beql      $v1, $zero, .L80041A8C
/* 424EC 800418EC 8FBF0014 */  lw        $ra, 0x14($sp)
/* 424F0 800418F0 14610062 */  bne       $v1, $at, .L80041A7C
/* 424F4 800418F4 3C028010 */  lui       $v0, 0x8010
/* 424F8 800418F8 8C42CCA4 */  lw        $v0, -0x335c($v0)
/* 424FC 800418FC 1040005D */  beqz      $v0, .L80041A74
/* 42500 80041900 2C410029 */  sltiu     $at, $v0, 0x29
/* 42504 80041904 5420002A */  bnel      $at, $zero, .L800419B0
/* 42508 80041908 2C410006 */  sltiu     $at, $v0, 6
/* 4250C 8004190C 3C028010 */  lui       $v0, 0x8010
/* 42510 80041910 9042CCAD */  lbu       $v0, -0x3353($v0)
/* 42514 80041914 24010010 */  addiu     $at, $zero, 0x10
/* 42518 80041918 1041000E */  beq       $v0, $at, .L80041954
/* 4251C 8004191C 24010011 */  addiu     $at, $zero, 0x11
/* 42520 80041920 1041000C */  beq       $v0, $at, .L80041954
/* 42524 80041924 24010012 */  addiu     $at, $zero, 0x12
/* 42528 80041928 1041000A */  beq       $v0, $at, .L80041954
/* 4252C 8004192C 24010015 */  addiu     $at, $zero, 0x15
/* 42530 80041930 10410008 */  beq       $v0, $at, .L80041954
/* 42534 80041934 24010016 */  addiu     $at, $zero, 0x16
/* 42538 80041938 10410006 */  beq       $v0, $at, .L80041954
/* 4253C 8004193C 24010053 */  addiu     $at, $zero, 0x53
/* 42540 80041940 10410004 */  beq       $v0, $at, .L80041954
/* 42544 80041944 24010054 */  addiu     $at, $zero, 0x54
/* 42548 80041948 10410002 */  beq       $v0, $at, .L80041954
/* 4254C 8004194C 24010055 */  addiu     $at, $zero, 0x55
/* 42550 80041950 1441000E */  bne       $v0, $at, .L8004198C
.L80041954:
/* 42554 80041954 3C028010 */  lui       $v0, 0x8010
/* 42558 80041958 9042CCAC */  lbu       $v0, -0x3354($v0)
/* 4255C 8004195C 24010034 */  addiu     $at, $zero, 0x34
/* 42560 80041960 3C048007 */  lui       $a0, 0x8007
/* 42564 80041964 10410005 */  beq       $v0, $at, .L8004197C
/* 42568 80041968 24010035 */  addiu     $at, $zero, 0x35
/* 4256C 8004196C 10410003 */  beq       $v0, $at, .L8004197C
/* 42570 80041970 2401007E */  addiu     $at, $zero, 0x7e
/* 42574 80041974 14410005 */  bne       $v0, $at, .L8004198C
/* 42578 80041978 00000000 */  nop       
.L8004197C:
/* 4257C 8004197C 0C010830 */  jal       func_800420C0
/* 42580 80041980 24847F44 */  addiu     $a0, $a0, 0x7f44
/* 42584 80041984 10000004 */  b         .L80041998
/* 42588 80041988 00000000 */  nop       
.L8004198C:
/* 4258C 8004198C 3C048007 */  lui       $a0, 0x8007
/* 42590 80041990 0C010830 */  jal       func_800420C0
/* 42594 80041994 24847E98 */  addiu     $a0, $a0, 0x7e98
.L80041998:
/* 42598 80041998 3C038010 */  lui       $v1, 0x8010
/* 4259C 8004199C 3C028010 */  lui       $v0, 0x8010
/* 425A0 800419A0 8C42CCA4 */  lw        $v0, -0x335c($v0)
/* 425A4 800419A4 10000033 */  b         .L80041A74
/* 425A8 800419A8 9063CCA2 */  lbu       $v1, -0x335e($v1)
/* 425AC 800419AC 2C410006 */  sltiu     $at, $v0, 6
.L800419B0:
/* 425B0 800419B0 14200018 */  bnez      $at, .L80041A14
/* 425B4 800419B4 3C028010 */  lui       $v0, 0x8010
/* 425B8 800419B8 3C028010 */  lui       $v0, 0x8010
/* 425BC 800419BC 2442CB18 */  addiu     $v0, $v0, -0x34e8
/* 425C0 800419C0 8C490000 */  lw        $t1, ($v0)
/* 425C4 800419C4 3C048007 */  lui       $a0, 0x8007
/* 425C8 800419C8 952A000C */  lhu       $t2, 0xc($t1)
/* 425CC 800419CC 1940000A */  blez      $t2, .L800419F8
/* 425D0 800419D0 00000000 */  nop       
/* 425D4 800419D4 8C4B0004 */  lw        $t3, 4($v0)
/* 425D8 800419D8 956C000C */  lhu       $t4, 0xc($t3)
/* 425DC 800419DC 19800006 */  blez      $t4, .L800419F8
/* 425E0 800419E0 00000000 */  nop       
/* 425E4 800419E4 3C048007 */  lui       $a0, 0x8007
/* 425E8 800419E8 0C010830 */  jal       func_800420C0
/* 425EC 800419EC 24847EA4 */  addiu     $a0, $a0, 0x7ea4
/* 425F0 800419F0 10000003 */  b         .L80041A00
/* 425F4 800419F4 00000000 */  nop       
.L800419F8:
/* 425F8 800419F8 0C010830 */  jal       func_800420C0
/* 425FC 800419FC 24847F60 */  addiu     $a0, $a0, 0x7f60
.L80041A00:
/* 42600 80041A00 3C038010 */  lui       $v1, 0x8010
/* 42604 80041A04 3C028010 */  lui       $v0, 0x8010
/* 42608 80041A08 8C42CCA4 */  lw        $v0, -0x335c($v0)
/* 4260C 80041A0C 10000019 */  b         .L80041A74
/* 42610 80041A10 9063CCA2 */  lbu       $v1, -0x335e($v1)
.L80041A14:
/* 42614 80041A14 2442CB18 */  addiu     $v0, $v0, -0x34e8
/* 42618 80041A18 8C4D0000 */  lw        $t5, ($v0)
/* 4261C 80041A1C 3C048007 */  lui       $a0, 0x8007
/* 42620 80041A20 95AE000C */  lhu       $t6, 0xc($t5)
/* 42624 80041A24 19C0000D */  blez      $t6, .L80041A5C
/* 42628 80041A28 00000000 */  nop       
/* 4262C 80041A2C 8C4F0004 */  lw        $t7, 4($v0)
/* 42630 80041A30 95F8000C */  lhu       $t8, 0xc($t7)
/* 42634 80041A34 1B000009 */  blez      $t8, .L80041A5C
/* 42638 80041A38 00000000 */  nop       
/* 4263C 80041A3C 3C048007 */  lui       $a0, 0x8007
/* 42640 80041A40 0C010830 */  jal       func_800420C0
/* 42644 80041A44 24847EB4 */  addiu     $a0, $a0, 0x7eb4
/* 42648 80041A48 3C038010 */  lui       $v1, 0x8010
/* 4264C 80041A4C 3C028010 */  lui       $v0, 0x8010
/* 42650 80041A50 8C42CCA4 */  lw        $v0, -0x335c($v0)
/* 42654 80041A54 10000007 */  b         .L80041A74
/* 42658 80041A58 9063CCA2 */  lbu       $v1, -0x335e($v1)
.L80041A5C:
/* 4265C 80041A5C 0C010830 */  jal       func_800420C0
/* 42660 80041A60 24847F04 */  addiu     $a0, $a0, 0x7f04
/* 42664 80041A64 3C038010 */  lui       $v1, 0x8010
/* 42668 80041A68 3C028010 */  lui       $v0, 0x8010
/* 4266C 80041A6C 8C42CCA4 */  lw        $v0, -0x335c($v0)
/* 42670 80041A70 9063CCA2 */  lbu       $v1, -0x335e($v1)
.L80041A74:
/* 42674 80041A74 3C018010 */  lui       $at, 0x8010
/* 42678 80041A78 AC22CCA8 */  sw        $v0, -0x3358($at)
.L80041A7C:
/* 4267C 80041A7C 2479FFFF */  addiu     $t9, $v1, -1
/* 42680 80041A80 3C018010 */  lui       $at, 0x8010
/* 42684 80041A84 A039CCA2 */  sb        $t9, -0x335e($at)
/* 42688 80041A88 8FBF0014 */  lw        $ra, 0x14($sp)
.L80041A8C:
/* 4268C 80041A8C 27BD0018 */  addiu     $sp, $sp, 0x18
/* 42690 80041A90 03E00008 */  jr        $ra
/* 42694 80041A94 00000000 */  nop       

glabel func_80041A98
/* 42698 80041A98 3C018008 */  lui       $at, 0x8008
/* 4269C 80041A9C 3C038010 */  lui       $v1, 0x8010
/* 426A0 80041AA0 3C068010 */  lui       $a2, 0x8010
/* 426A4 80041AA4 AC2083CC */  sw        $zero, -0x7c34($at)
/* 426A8 80041AA8 24C6CB48 */  addiu     $a2, $a2, -0x34b8
/* 426AC 80041AAC 2463CB38 */  addiu     $v1, $v1, -0x34c8
/* 426B0 80041AB0 24050008 */  addiu     $a1, $zero, 8
/* 426B4 80041AB4 00001025 */  or        $v0, $zero, $zero
.L80041AB8:
/* 426B8 80041AB8 00602025 */  or        $a0, $v1, $zero
.L80041ABC:
/* 426BC 80041ABC 24420004 */  addiu     $v0, $v0, 4
/* 426C0 80041AC0 A0800001 */  sb        $zero, 1($a0)
/* 426C4 80041AC4 A0800002 */  sb        $zero, 2($a0)
/* 426C8 80041AC8 A0800003 */  sb        $zero, 3($a0)
/* 426CC 80041ACC 24840004 */  addiu     $a0, $a0, 4
/* 426D0 80041AD0 1445FFFA */  bne       $v0, $a1, .L80041ABC
/* 426D4 80041AD4 A080FFFC */  sb        $zero, -4($a0)
/* 426D8 80041AD8 24630008 */  addiu     $v1, $v1, 8
/* 426DC 80041ADC 0066082B */  sltu      $at, $v1, $a2
/* 426E0 80041AE0 5420FFF5 */  bnel      $at, $zero, .L80041AB8
/* 426E4 80041AE4 00001025 */  or        $v0, $zero, $zero
/* 426E8 80041AE8 3C038008 */  lui       $v1, 0x8008
/* 426EC 80041AEC 2463839C */  addiu     $v1, $v1, -0x7c64
/* 426F0 80041AF0 3C048010 */  lui       $a0, 0x8010
/* 426F4 80041AF4 2484CCA1 */  addiu     $a0, $a0, -0x335f
/* 426F8 80041AF8 A0600000 */  sb        $zero, ($v1)
/* 426FC 80041AFC A0600001 */  sb        $zero, 1($v1)
/* 42700 80041B00 A0800000 */  sb        $zero, ($a0)
/* 42704 80041B04 3C018010 */  lui       $at, 0x8010
/* 42708 80041B08 A020CCA0 */  sb        $zero, -0x3360($at)
/* 4270C 80041B0C 3C018010 */  lui       $at, 0x8010
/* 42710 80041B10 A020CCA2 */  sb        $zero, -0x335e($at)
/* 42714 80041B14 3C018010 */  lui       $at, 0x8010
/* 42718 80041B18 AC20CCA4 */  sw        $zero, -0x335c($at)
/* 4271C 80041B1C 3C018010 */  lui       $at, 0x8010
/* 42720 80041B20 A020CCAC */  sb        $zero, -0x3354($at)
/* 42724 80041B24 3C018008 */  lui       $at, 0x8008
/* 42728 80041B28 A02083E0 */  sb        $zero, -0x7c20($at)
/* 4272C 80041B2C 3C018010 */  lui       $at, 0x8010
/* 42730 80041B30 A020CCAF */  sb        $zero, -0x3351($at)
/* 42734 80041B34 3C018010 */  lui       $at, 0x8010
/* 42738 80041B38 A020CCB0 */  sb        $zero, -0x3350($at)
/* 4273C 80041B3C 3C018010 */  lui       $at, 0x8010
/* 42740 80041B40 A020CCB2 */  sb        $zero, -0x334e($at)
/* 42744 80041B44 3C018010 */  lui       $at, 0x8010
/* 42748 80041B48 A020CCB3 */  sb        $zero, -0x334d($at)
/* 4274C 80041B4C 3C018010 */  lui       $at, 0x8010
/* 42750 80041B50 A020CCB4 */  sb        $zero, -0x334c($at)
/* 42754 80041B54 3C018010 */  lui       $at, 0x8010
/* 42758 80041B58 A020CCB5 */  sb        $zero, -0x334b($at)
/* 4275C 80041B5C 3C018010 */  lui       $at, 0x8010
/* 42760 80041B60 A020CCB7 */  sb        $zero, -0x3349($at)
/* 42764 80041B64 3C018010 */  lui       $at, 0x8010
/* 42768 80041B68 A020CCB6 */  sb        $zero, -0x334a($at)
/* 4276C 80041B6C 3C018008 */  lui       $at, 0x8008
/* 42770 80041B70 A02083E4 */  sb        $zero, -0x7c1c($at)
/* 42774 80041B74 3C018008 */  lui       $at, 0x8008
/* 42778 80041B78 A02083E8 */  sb        $zero, -0x7c18($at)
/* 4277C 80041B7C 3C018008 */  lui       $at, 0x8008
/* 42780 80041B80 A02083EC */  sb        $zero, -0x7c14($at)
/* 42784 80041B84 3C018008 */  lui       $at, 0x8008
/* 42788 80041B88 A42083F0 */  sh        $zero, -0x7c10($at)
/* 4278C 80041B8C 3C018008 */  lui       $at, 0x8008
/* 42790 80041B90 A42083F4 */  sh        $zero, -0x7c0c($at)
/* 42794 80041B94 3C018008 */  lui       $at, 0x8008
/* 42798 80041B98 3C038010 */  lui       $v1, 0x8010
/* 4279C 80041B9C 3C028010 */  lui       $v0, 0x8010
/* 427A0 80041BA0 A42083F8 */  sh        $zero, -0x7c08($at)
/* 427A4 80041BA4 2442CCD8 */  addiu     $v0, $v0, -0x3328
/* 427A8 80041BA8 2463CCED */  addiu     $v1, $v1, -0x3313
.L80041BAC:
/* 427AC 80041BAC 24420001 */  addiu     $v0, $v0, 1
/* 427B0 80041BB0 0043082B */  sltu      $at, $v0, $v1
/* 427B4 80041BB4 1420FFFD */  bnez      $at, .L80041BAC
/* 427B8 80041BB8 A040FFFF */  sb        $zero, -1($v0)
/* 427BC 80041BBC 3C028010 */  lui       $v0, 0x8010
/* 427C0 80041BC0 3C038010 */  lui       $v1, 0x8010
/* 427C4 80041BC4 2463CCA0 */  addiu     $v1, $v1, -0x3360
/* 427C8 80041BC8 2442CC50 */  addiu     $v0, $v0, -0x33b0
.L80041BCC:
/* 427CC 80041BCC 24420004 */  addiu     $v0, $v0, 4
/* 427D0 80041BD0 0043082B */  sltu      $at, $v0, $v1
/* 427D4 80041BD4 1420FFFD */  bnez      $at, .L80041BCC
/* 427D8 80041BD8 AC40FFFC */  sw        $zero, -4($v0)
/* 427DC 80041BDC 3C028010 */  lui       $v0, 0x8010
/* 427E0 80041BE0 3C038010 */  lui       $v1, 0x8010
/* 427E4 80041BE4 3C048010 */  lui       $a0, 0x8010
/* 427E8 80041BE8 3C068010 */  lui       $a2, 0x8010
/* 427EC 80041BEC 3C078010 */  lui       $a3, 0x8010
/* 427F0 80041BF0 3C088010 */  lui       $t0, 0x8010
/* 427F4 80041BF4 3C098010 */  lui       $t1, 0x8010
/* 427F8 80041BF8 3C0A8010 */  lui       $t2, 0x8010
/* 427FC 80041BFC 3C058010 */  lui       $a1, 0x8010
/* 42800 80041C00 24A5CCD8 */  addiu     $a1, $a1, -0x3328
/* 42804 80041C04 254ACCD6 */  addiu     $t2, $t2, -0x332a
/* 42808 80041C08 2529CCD4 */  addiu     $t1, $t1, -0x332c
/* 4280C 80041C0C 2508CCC2 */  addiu     $t0, $t0, -0x333e
/* 42810 80041C10 24E7CCC0 */  addiu     $a3, $a3, -0x3340
/* 42814 80041C14 24C6CCBE */  addiu     $a2, $a2, -0x3342
/* 42818 80041C18 2484CCBC */  addiu     $a0, $a0, -0x3344
/* 4281C 80041C1C 2463CCBA */  addiu     $v1, $v1, -0x3346
/* 42820 80041C20 2442CCB8 */  addiu     $v0, $v0, -0x3348
.L80041C24:
/* 42824 80041C24 254A0001 */  addiu     $t2, $t2, 1
/* 42828 80041C28 24420001 */  addiu     $v0, $v0, 1
/* 4282C 80041C2C 24630001 */  addiu     $v1, $v1, 1
/* 42830 80041C30 24840001 */  addiu     $a0, $a0, 1
/* 42834 80041C34 24C60001 */  addiu     $a2, $a2, 1
/* 42838 80041C38 24E70001 */  addiu     $a3, $a3, 1
/* 4283C 80041C3C 25080001 */  addiu     $t0, $t0, 1
/* 42840 80041C40 25290001 */  addiu     $t1, $t1, 1
/* 42844 80041C44 A040FFFF */  sb        $zero, -1($v0)
/* 42848 80041C48 A060FFFF */  sb        $zero, -1($v1)
/* 4284C 80041C4C A080FFFF */  sb        $zero, -1($a0)
/* 42850 80041C50 A0C0FFFF */  sb        $zero, -1($a2)
/* 42854 80041C54 A0E0FFFF */  sb        $zero, -1($a3)
/* 42858 80041C58 A100FFFF */  sb        $zero, -1($t0)
/* 4285C 80041C5C A120FFFF */  sb        $zero, -1($t1)
/* 42860 80041C60 1545FFF0 */  bne       $t2, $a1, .L80041C24
/* 42864 80041C64 A140FFFF */  sb        $zero, -1($t2)
/* 42868 80041C68 03E00008 */  jr        $ra
/* 4286C 80041C6C 00000000 */  nop       

glabel func_80041C70
/* 42870 80041C70 3C0E8008 */  lui       $t6, 0x8008
/* 42874 80041C74 8DCE8388 */  lw        $t6, -0x7c78($t6)
/* 42878 80041C78 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 4287C 80041C7C AFBF0014 */  sw        $ra, 0x14($sp)
/* 42880 80041C80 11C00016 */  beqz      $t6, .L80041CDC
/* 42884 80041C84 00802825 */  or        $a1, $a0, $zero
/* 42888 80041C88 3C0F8008 */  lui       $t7, 0x8008
/* 4288C 80041C8C 91EF83FC */  lbu       $t7, -0x7c04($t7)
/* 42890 80041C90 51E00013 */  beql      $t7, $zero, .L80041CE0
/* 42894 80041C94 8FBF0014 */  lw        $ra, 0x14($sp)
/* 42898 80041C98 10800010 */  beqz      $a0, .L80041CDC
/* 4289C 80041C9C 24040001 */  addiu     $a0, $zero, 1
/* 428A0 80041CA0 0C015B04 */  jal       func_80056C10
/* 428A4 80041CA4 AFA50018 */  sw        $a1, 0x18($sp)
/* 428A8 80041CA8 3C068008 */  lui       $a2, 0x8008
/* 428AC 80041CAC 24C683B8 */  addiu     $a2, $a2, -0x7c48
/* 428B0 80041CB0 8CC30000 */  lw        $v1, ($a2)
/* 428B4 80041CB4 8FA50018 */  lw        $a1, 0x18($sp)
/* 428B8 80041CB8 3C018008 */  lui       $at, 0x8008
/* 428BC 80041CBC 30780003 */  andi      $t8, $v1, 3
/* 428C0 80041CC0 0018C880 */  sll       $t9, $t8, 2
/* 428C4 80041CC4 00390821 */  addu      $at, $at, $t9
/* 428C8 80041CC8 24680001 */  addiu     $t0, $v1, 1
/* 428CC 80041CCC AC2583A4 */  sw        $a1, -0x7c5c($at)
/* 428D0 80041CD0 ACC80000 */  sw        $t0, ($a2)
/* 428D4 80041CD4 0C015B04 */  jal       func_80056C10
/* 428D8 80041CD8 00402025 */  or        $a0, $v0, $zero
.L80041CDC:
/* 428DC 80041CDC 8FBF0014 */  lw        $ra, 0x14($sp)
.L80041CE0:
/* 428E0 80041CE0 27BD0018 */  addiu     $sp, $sp, 0x18
/* 428E4 80041CE4 03E00008 */  jr        $ra
/* 428E8 80041CE8 00000000 */  nop       

glabel func_80041CEC
/* 428EC 80041CEC 3C0E8008 */  lui       $t6, 0x8008
/* 428F0 80041CF0 8DCE8388 */  lw        $t6, -0x7c78($t6)
/* 428F4 80041CF4 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 428F8 80041CF8 AFBF0014 */  sw        $ra, 0x14($sp)
/* 428FC 80041CFC 11C00010 */  beqz      $t6, .L80041D40
/* 42900 80041D00 3C0F8008 */  lui       $t7, 0x8008
/* 42904 80041D04 91EF83FC */  lbu       $t7, -0x7c04($t7)
/* 42908 80041D08 51E0000E */  beql      $t7, $zero, .L80041D44
/* 4290C 80041D0C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 42910 80041D10 0C015B04 */  jal       func_80056C10
/* 42914 80041D14 24040001 */  addiu     $a0, $zero, 1
/* 42918 80041D18 3C188008 */  lui       $t8, 0x8008
/* 4291C 80041D1C 8F1883B8 */  lw        $t8, -0x7c48($t8)
/* 42920 80041D20 3C018008 */  lui       $at, 0x8008
/* 42924 80041D24 00402025 */  or        $a0, $v0, $zero
/* 42928 80041D28 2719FFFF */  addiu     $t9, $t8, -1
/* 4292C 80041D2C 33280003 */  andi      $t0, $t9, 3
/* 42930 80041D30 00084880 */  sll       $t1, $t0, 2
/* 42934 80041D34 00290821 */  addu      $at, $at, $t1
/* 42938 80041D38 0C015B04 */  jal       func_80056C10
/* 4293C 80041D3C AC2083A4 */  sw        $zero, -0x7c5c($at)
.L80041D40:
/* 42940 80041D40 8FBF0014 */  lw        $ra, 0x14($sp)
.L80041D44:
/* 42944 80041D44 27BD0018 */  addiu     $sp, $sp, 0x18
/* 42948 80041D48 03E00008 */  jr        $ra
/* 4294C 80041D4C 00000000 */  nop       

glabel func_80041D50
/* 42950 80041D50 90820000 */  lbu       $v0, ($a0)
/* 42954 80041D54 90A30000 */  lbu       $v1, ($a1)
/* 42958 80041D58 10430003 */  beq       $v0, $v1, .L80041D68
/* 4295C 80041D5C 00000000 */  nop       
/* 42960 80041D60 A0830000 */  sb        $v1, ($a0)
/* 42964 80041D64 A0A20000 */  sb        $v0, ($a1)
.L80041D68:
/* 42968 80041D68 03E00008 */  jr        $ra
/* 4296C 80041D6C 00000000 */  nop       

glabel func_80041D70
/* 42970 80041D70 AFA40000 */  sw        $a0, ($sp)
/* 42974 80041D74 3084FFFF */  andi      $a0, $a0, 0xffff
/* 42978 80041D78 3C058010 */  lui       $a1, 0x8010
/* 4297C 80041D7C 3C028010 */  lui       $v0, 0x8010
/* 42980 80041D80 2442CCA0 */  addiu     $v0, $v0, -0x3360
/* 42984 80041D84 24A5CC50 */  addiu     $a1, $a1, -0x33b0
/* 42988 80041D88 00801825 */  or        $v1, $a0, $zero
/* 4298C 80041D8C 8CAE0000 */  lw        $t6, ($a1)
.L80041D90:
/* 42990 80041D90 546E0004 */  bnel      $v1, $t6, .L80041DA4
/* 42994 80041D94 8CAF0004 */  lw        $t7, 4($a1)
/* 42998 80041D98 03E00008 */  jr        $ra
/* 4299C 80041D9C 00001025 */  or        $v0, $zero, $zero
/* 429A0 80041DA0 8CAF0004 */  lw        $t7, 4($a1)
.L80041DA4:
/* 429A4 80041DA4 546F0004 */  bnel      $v1, $t7, .L80041DB8
/* 429A8 80041DA8 8CB80008 */  lw        $t8, 8($a1)
/* 429AC 80041DAC 03E00008 */  jr        $ra
/* 429B0 80041DB0 00001025 */  or        $v0, $zero, $zero
/* 429B4 80041DB4 8CB80008 */  lw        $t8, 8($a1)
.L80041DB8:
/* 429B8 80041DB8 54780004 */  bnel      $v1, $t8, .L80041DCC
/* 429BC 80041DBC 8CB9000C */  lw        $t9, 0xc($a1)
/* 429C0 80041DC0 03E00008 */  jr        $ra
/* 429C4 80041DC4 00001025 */  or        $v0, $zero, $zero
/* 429C8 80041DC8 8CB9000C */  lw        $t9, 0xc($a1)
.L80041DCC:
/* 429CC 80041DCC 24A50010 */  addiu     $a1, $a1, 0x10
/* 429D0 80041DD0 14790003 */  bne       $v1, $t9, .L80041DE0
/* 429D4 80041DD4 00000000 */  nop       
/* 429D8 80041DD8 03E00008 */  jr        $ra
/* 429DC 80041DDC 00001025 */  or        $v0, $zero, $zero
.L80041DE0:
/* 429E0 80041DE0 54A2FFEB */  bnel      $a1, $v0, .L80041D90
/* 429E4 80041DE4 8CAE0000 */  lw        $t6, ($a1)
/* 429E8 80041DE8 00801025 */  or        $v0, $a0, $zero
/* 429EC 80041DEC 03E00008 */  jr        $ra
/* 429F0 80041DF0 00000000 */  nop       

glabel func_80041DF4
/* 429F4 80041DF4 AFA40000 */  sw        $a0, ($sp)
/* 429F8 80041DF8 3C058010 */  lui       $a1, 0x8010
/* 429FC 80041DFC 3084FFFF */  andi      $a0, $a0, 0xffff
/* 42A00 80041E00 24A5CC50 */  addiu     $a1, $a1, -0x33b0
/* 42A04 80041E04 00001025 */  or        $v0, $zero, $zero
/* 42A08 80041E08 00001825 */  or        $v1, $zero, $zero
.L80041E0C:
/* 42A0C 80041E0C 00037080 */  sll       $t6, $v1, 2
/* 42A10 80041E10 0002C880 */  sll       $t9, $v0, 2
/* 42A14 80041E14 24420001 */  addiu     $v0, $v0, 1
/* 42A18 80041E18 00AE7821 */  addu      $t7, $a1, $t6
/* 42A1C 80041E1C 8DF80004 */  lw        $t8, 4($t7)
/* 42A20 80041E20 3042FFFF */  andi      $v0, $v0, 0xffff
/* 42A24 80041E24 28410013 */  slti      $at, $v0, 0x13
/* 42A28 80041E28 00B94021 */  addu      $t0, $a1, $t9
/* 42A2C 80041E2C 00401825 */  or        $v1, $v0, $zero
/* 42A30 80041E30 1420FFF6 */  bnez      $at, .L80041E0C
/* 42A34 80041E34 AD180000 */  sw        $t8, ($t0)
/* 42A38 80041E38 03E00008 */  jr        $ra
/* 42A3C 80041E3C ACA4004C */  sw        $a0, 0x4c($a1)

glabel func_80041E40
/* 42A40 80041E40 AFA40000 */  sw        $a0, ($sp)
/* 42A44 80041E44 3084FFFF */  andi      $a0, $a0, 0xffff
/* 42A48 80041E48 10800027 */  beqz      $a0, .L80041EE8
/* 42A4C 80041E4C 00801025 */  or        $v0, $a0, $zero
/* 42A50 80041E50 30870003 */  andi      $a3, $a0, 3
/* 42A54 80041E54 00073823 */  negu      $a3, $a3
/* 42A58 80041E58 10E0000F */  beqz      $a3, .L80041E98
/* 42A5C 80041E5C 00E43021 */  addu      $a2, $a3, $a0
/* 42A60 80041E60 3C0F8010 */  lui       $t7, 0x8010
/* 42A64 80041E64 25EFCC50 */  addiu     $t7, $t7, -0x33b0
/* 42A68 80041E68 0004C080 */  sll       $t8, $a0, 2
/* 42A6C 80041E6C 2719FFFC */  addiu     $t9, $t8, -4
/* 42A70 80041E70 00047080 */  sll       $t6, $a0, 2
/* 42A74 80041E74 01CF1821 */  addu      $v1, $t6, $t7
/* 42A78 80041E78 032F2821 */  addu      $a1, $t9, $t7
.L80041E7C:
/* 42A7C 80041E7C 8CA80000 */  lw        $t0, ($a1)
/* 42A80 80041E80 2442FFFF */  addiu     $v0, $v0, -1
/* 42A84 80041E84 2463FFFC */  addiu     $v1, $v1, -4
/* 42A88 80041E88 24A5FFFC */  addiu     $a1, $a1, -4
/* 42A8C 80041E8C 14C2FFFB */  bne       $a2, $v0, .L80041E7C
/* 42A90 80041E90 AC680004 */  sw        $t0, 4($v1)
/* 42A94 80041E94 10400014 */  beqz      $v0, .L80041EE8
.L80041E98:
/* 42A98 80041E98 3C0A8010 */  lui       $t2, 0x8010
/* 42A9C 80041E9C 00025880 */  sll       $t3, $v0, 2
/* 42AA0 80041EA0 254ACC50 */  addiu     $t2, $t2, -0x33b0
/* 42AA4 80041EA4 00024880 */  sll       $t1, $v0, 2
/* 42AA8 80041EA8 3C028010 */  lui       $v0, 0x8010
/* 42AAC 80041EAC 256CFFFC */  addiu     $t4, $t3, -4
/* 42AB0 80041EB0 018A2821 */  addu      $a1, $t4, $t2
/* 42AB4 80041EB4 2442CC50 */  addiu     $v0, $v0, -0x33b0
/* 42AB8 80041EB8 012A1821 */  addu      $v1, $t1, $t2
.L80041EBC:
/* 42ABC 80041EBC 8CAD0000 */  lw        $t5, ($a1)
/* 42AC0 80041EC0 2463FFF0 */  addiu     $v1, $v1, -0x10
/* 42AC4 80041EC4 24A5FFF0 */  addiu     $a1, $a1, -0x10
/* 42AC8 80041EC8 AC6D0010 */  sw        $t5, 0x10($v1)
/* 42ACC 80041ECC 8CAE000C */  lw        $t6, 0xc($a1)
/* 42AD0 80041ED0 AC6E000C */  sw        $t6, 0xc($v1)
/* 42AD4 80041ED4 8CB80008 */  lw        $t8, 8($a1)
/* 42AD8 80041ED8 AC780008 */  sw        $t8, 8($v1)
/* 42ADC 80041EDC 8CB90004 */  lw        $t9, 4($a1)
/* 42AE0 80041EE0 1462FFF6 */  bne       $v1, $v0, .L80041EBC
/* 42AE4 80041EE4 AC790004 */  sw        $t9, 4($v1)
.L80041EE8:
/* 42AE8 80041EE8 3C018010 */  lui       $at, 0x8010
/* 42AEC 80041EEC 03E00008 */  jr        $ra
/* 42AF0 80041EF0 AC20CC50 */  sw        $zero, -0x33b0($at)

glabel func_80041EF4
/* 42AF4 80041EF4 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 42AF8 80041EF8 AFBF002C */  sw        $ra, 0x2c($sp)
/* 42AFC 80041EFC AFB40028 */  sw        $s4, 0x28($sp)
/* 42B00 80041F00 AFB30024 */  sw        $s3, 0x24($sp)
/* 42B04 80041F04 AFB20020 */  sw        $s2, 0x20($sp)
/* 42B08 80041F08 AFB1001C */  sw        $s1, 0x1c($sp)
/* 42B0C 80041F0C AFB00018 */  sw        $s0, 0x18($sp)
/* 42B10 80041F10 94820000 */  lhu       $v0, ($a0)
/* 42B14 80041F14 0080A025 */  or        $s4, $a0, $zero
/* 42B18 80041F18 00008825 */  or        $s1, $zero, $zero
/* 42B1C 80041F1C 00402825 */  or        $a1, $v0, $zero
/* 42B20 80041F20 1040001C */  beqz      $v0, .L80041F94
/* 42B24 80041F24 00409025 */  or        $s2, $v0, $zero
/* 42B28 80041F28 30420003 */  andi      $v0, $v0, 3
/* 42B2C 80041F2C 1040000A */  beqz      $v0, .L80041F58
/* 42B30 80041F30 00401825 */  or        $v1, $v0, $zero
/* 42B34 80041F34 3C0E8010 */  lui       $t6, 0x8010
/* 42B38 80041F38 25CECD18 */  addiu     $t6, $t6, -0x32e8
/* 42B3C 80041F3C 000E8021 */  addu      $s0, $zero, $t6
.L80041F40:
/* 42B40 80041F40 26220001 */  addiu     $v0, $s1, 1
/* 42B44 80041F44 A2020000 */  sb        $v0, ($s0)
/* 42B48 80041F48 00408825 */  or        $s1, $v0, $zero
/* 42B4C 80041F4C 1462FFFC */  bne       $v1, $v0, .L80041F40
/* 42B50 80041F50 26100001 */  addiu     $s0, $s0, 1
/* 42B54 80041F54 1052000E */  beq       $v0, $s2, .L80041F90
.L80041F58:
/* 42B58 80041F58 3C0F8010 */  lui       $t7, 0x8010
/* 42B5C 80041F5C 25EFCD18 */  addiu     $t7, $t7, -0x32e8
/* 42B60 80041F60 022F8021 */  addu      $s0, $s1, $t7
.L80041F64:
/* 42B64 80041F64 26220004 */  addiu     $v0, $s1, 4
/* 42B68 80041F68 26390002 */  addiu     $t9, $s1, 2
/* 42B6C 80041F6C 26280003 */  addiu     $t0, $s1, 3
/* 42B70 80041F70 26380001 */  addiu     $t8, $s1, 1
/* 42B74 80041F74 00408825 */  or        $s1, $v0, $zero
/* 42B78 80041F78 A2080002 */  sb        $t0, 2($s0)
/* 42B7C 80041F7C A2190001 */  sb        $t9, 1($s0)
/* 42B80 80041F80 A2020003 */  sb        $v0, 3($s0)
/* 42B84 80041F84 26100004 */  addiu     $s0, $s0, 4
/* 42B88 80041F88 1452FFF6 */  bne       $v0, $s2, .L80041F64
/* 42B8C 80041F8C A218FFFC */  sb        $t8, -4($s0)
.L80041F90:
/* 42B90 80041F90 00008825 */  or        $s1, $zero, $zero
.L80041F94:
/* 42B94 80041F94 00059840 */  sll       $s3, $a1, 1
/* 42B98 80041F98 12600013 */  beqz      $s3, .L80041FE8
/* 42B9C 80041F9C 000557C3 */  sra       $t2, $a1, 0x1f
/* 42BA0 80041FA0 3C108010 */  lui       $s0, 0x8010
/* 42BA4 80041FA4 2610CD18 */  addiu     $s0, $s0, -0x32e8
/* 42BA8 80041FA8 AFAA0030 */  sw        $t2, 0x30($sp)
/* 42BAC 80041FAC AFA50034 */  sw        $a1, 0x34($sp)
.L80041FB0:
/* 42BB0 80041FB0 0C017C54 */  jal       func_8005F150
/* 42BB4 80041FB4 00000000 */  nop       
/* 42BB8 80041FB8 00402025 */  or        $a0, $v0, $zero
/* 42BBC 80041FBC 00602825 */  or        $a1, $v1, $zero
/* 42BC0 80041FC0 8FA60030 */  lw        $a2, 0x30($sp)
/* 42BC4 80041FC4 0C015D0F */  jal       func_8005743C
/* 42BC8 80041FC8 8FA70034 */  lw        $a3, 0x34($sp)
/* 42BCC 80041FCC 02002025 */  or        $a0, $s0, $zero
/* 42BD0 80041FD0 0C010754 */  jal       func_80041D50
/* 42BD4 80041FD4 00702821 */  addu      $a1, $v1, $s0
/* 42BD8 80041FD8 26310001 */  addiu     $s1, $s1, 1
/* 42BDC 80041FDC 1633FFF4 */  bne       $s1, $s3, .L80041FB0
/* 42BE0 80041FE0 00000000 */  nop       
/* 42BE4 80041FE4 00008825 */  or        $s1, $zero, $zero
.L80041FE8:
/* 42BE8 80041FE8 12400011 */  beqz      $s2, .L80042030
/* 42BEC 80041FEC 3C108010 */  lui       $s0, 0x8010
/* 42BF0 80041FF0 2610CD18 */  addiu     $s0, $s0, -0x32e8
.L80041FF4:
/* 42BF4 80041FF4 920C0000 */  lbu       $t4, ($s0)
/* 42BF8 80041FF8 000C6840 */  sll       $t5, $t4, 1
/* 42BFC 80041FFC 028D7021 */  addu      $t6, $s4, $t5
/* 42C00 80042000 0C01075C */  jal       func_80041D70
/* 42C04 80042004 95C40000 */  lhu       $a0, ($t6)
/* 42C08 80042008 10400005 */  beqz      $v0, .L80042020
/* 42C0C 8004200C 3044FFFF */  andi      $a0, $v0, 0xffff
/* 42C10 80042010 0C01077D */  jal       func_80041DF4
/* 42C14 80042014 A7A4005A */  sh        $a0, 0x5a($sp)
/* 42C18 80042018 10000021 */  b         .L800420A0
/* 42C1C 8004201C 97A2005A */  lhu       $v0, 0x5a($sp)
.L80042020:
/* 42C20 80042020 26310001 */  addiu     $s1, $s1, 1
/* 42C24 80042024 1632FFF3 */  bne       $s1, $s2, .L80041FF4
/* 42C28 80042028 26100001 */  addiu     $s0, $s0, 1
/* 42C2C 8004202C 00008825 */  or        $s1, $zero, $zero
.L80042030:
/* 42C30 80042030 24040014 */  addiu     $a0, $zero, 0x14
.L80042034:
/* 42C34 80042034 12400016 */  beqz      $s2, .L80042090
/* 42C38 80042038 24020001 */  addiu     $v0, $zero, 1
/* 42C3C 8004203C 00117880 */  sll       $t7, $s1, 2
/* 42C40 80042040 3C038010 */  lui       $v1, 0x8010
/* 42C44 80042044 006F1821 */  addu      $v1, $v1, $t7
/* 42C48 80042048 8C63CC50 */  lw        $v1, -0x33b0($v1)
/* 42C4C 8004204C 26850002 */  addiu     $a1, $s4, 2
.L80042050:
/* 42C50 80042050 94B80000 */  lhu       $t8, ($a1)
/* 42C54 80042054 24420001 */  addiu     $v0, $v0, 1
/* 42C58 80042058 0242082B */  sltu      $at, $s2, $v0
/* 42C5C 8004205C 1478000A */  bne       $v1, $t8, .L80042088
/* 42C60 80042060 00000000 */  nop       
/* 42C64 80042064 3224FFFF */  andi      $a0, $s1, 0xffff
/* 42C68 80042068 0C010790 */  jal       func_80041E40
/* 42C6C 8004206C AFA50038 */  sw        $a1, 0x38($sp)
/* 42C70 80042070 8FA50038 */  lw        $a1, 0x38($sp)
/* 42C74 80042074 0C01077D */  jal       func_80041DF4
/* 42C78 80042078 94A40000 */  lhu       $a0, ($a1)
/* 42C7C 8004207C 8FA50038 */  lw        $a1, 0x38($sp)
/* 42C80 80042080 10000007 */  b         .L800420A0
/* 42C84 80042084 94A20000 */  lhu       $v0, ($a1)
.L80042088:
/* 42C88 80042088 1020FFF1 */  beqz      $at, .L80042050
/* 42C8C 8004208C 24A50002 */  addiu     $a1, $a1, 2
.L80042090:
/* 42C90 80042090 26310001 */  addiu     $s1, $s1, 1
/* 42C94 80042094 1624FFE7 */  bne       $s1, $a0, .L80042034
/* 42C98 80042098 00000000 */  nop       
/* 42C9C 8004209C 00001025 */  or        $v0, $zero, $zero
.L800420A0:
/* 42CA0 800420A0 8FBF002C */  lw        $ra, 0x2c($sp)
/* 42CA4 800420A4 8FB00018 */  lw        $s0, 0x18($sp)
/* 42CA8 800420A8 8FB1001C */  lw        $s1, 0x1c($sp)
/* 42CAC 800420AC 8FB20020 */  lw        $s2, 0x20($sp)
/* 42CB0 800420B0 8FB30024 */  lw        $s3, 0x24($sp)
/* 42CB4 800420B4 8FB40028 */  lw        $s4, 0x28($sp)
/* 42CB8 800420B8 03E00008 */  jr        $ra
/* 42CBC 800420BC 27BD0068 */  addiu     $sp, $sp, 0x68

glabel func_800420C0
/* 42CC0 800420C0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 42CC4 800420C4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 42CC8 800420C8 0C0107BD */  jal       func_80041EF4
/* 42CCC 800420CC 00000000 */  nop       
/* 42CD0 800420D0 10400003 */  beqz      $v0, .L800420E0
/* 42CD4 800420D4 00402025 */  or        $a0, $v0, $zero
/* 42CD8 800420D8 0C01071C */  jal       func_80041C70
/* 42CDC 800420DC 00000000 */  nop       
.L800420E0:
/* 42CE0 800420E0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 42CE4 800420E4 27BD0018 */  addiu     $sp, $sp, 0x18
/* 42CE8 800420E8 03E00008 */  jr        $ra
/* 42CEC 800420EC 00000000 */  nop       

glabel func_800420F0
/* 42CF0 800420F0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 42CF4 800420F4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 42CF8 800420F8 AFA40018 */  sw        $a0, 0x18($sp)
/* 42CFC 800420FC 90CE0000 */  lbu       $t6, ($a2)
/* 42D00 80042100 3084FFFF */  andi      $a0, $a0, 0xffff
/* 42D04 80042104 55C00006 */  bnel      $t6, $zero, .L80042120
/* 42D08 80042108 00A02025 */  or        $a0, $a1, $zero
/* 42D0C 8004210C 0C01071C */  jal       func_80041C70
/* 42D10 80042110 AFA60020 */  sw        $a2, 0x20($sp)
/* 42D14 80042114 10000005 */  b         .L8004212C
/* 42D18 80042118 8FA60020 */  lw        $a2, 0x20($sp)
/* 42D1C 8004211C 00A02025 */  or        $a0, $a1, $zero
.L80042120:
/* 42D20 80042120 0C010830 */  jal       func_800420C0
/* 42D24 80042124 AFA60020 */  sw        $a2, 0x20($sp)
/* 42D28 80042128 8FA60020 */  lw        $a2, 0x20($sp)
.L8004212C:
/* 42D2C 8004212C 90C20000 */  lbu       $v0, ($a2)
/* 42D30 80042130 284100FF */  slti      $at, $v0, 0xff
/* 42D34 80042134 10200002 */  beqz      $at, .L80042140
/* 42D38 80042138 244F0001 */  addiu     $t7, $v0, 1
/* 42D3C 8004213C A0CF0000 */  sb        $t7, ($a2)
.L80042140:
/* 42D40 80042140 8FBF0014 */  lw        $ra, 0x14($sp)
/* 42D44 80042144 27BD0018 */  addiu     $sp, $sp, 0x18
/* 42D48 80042148 03E00008 */  jr        $ra
/* 42D4C 8004214C 00000000 */  nop       

glabel func_80042150
/* 42D50 80042150 03E00008 */  jr        $ra
/* 42D54 80042154 00000000 */  nop       

glabel func_80042158
/* 42D58 80042158 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 42D5C 8004215C AFBF0014 */  sw        $ra, 0x14($sp)
/* 42D60 80042160 AFA60078 */  sw        $a2, 0x78($sp)
/* 42D64 80042164 10800004 */  beqz      $a0, .L80042178
/* 42D68 80042168 00803825 */  or        $a3, $a0, $zero
/* 42D6C 8004216C 2C8100A6 */  sltiu     $at, $a0, 0xa6
/* 42D70 80042170 14200002 */  bnez      $at, .L8004217C
/* 42D74 80042174 00000000 */  nop       
.L80042178:
/* 42D78 80042178 24070001 */  addiu     $a3, $zero, 1
.L8004217C:
/* 42D7C 8004217C 3C028010 */  lui       $v0, 0x8010
/* 42D80 80042180 2442CB18 */  addiu     $v0, $v0, -0x34e8
/* 42D84 80042184 8C4E0000 */  lw        $t6, ($v0)
/* 42D88 80042188 0007C080 */  sll       $t8, $a3, 2
/* 42D8C 8004218C 0307C023 */  subu      $t8, $t8, $a3
/* 42D90 80042190 14AE0003 */  bne       $a1, $t6, .L800421A0
/* 42D94 80042194 3C198008 */  lui       $t9, 0x8008
/* 42D98 80042198 10000008 */  b         .L800421BC
/* 42D9C 8004219C 00004825 */  or        $t1, $zero, $zero
.L800421A0:
/* 42DA0 800421A0 8C4F0004 */  lw        $t7, 4($v0)
/* 42DA4 800421A4 14AF0003 */  bne       $a1, $t7, .L800421B4
/* 42DA8 800421A8 00000000 */  nop       
/* 42DAC 800421AC 10000003 */  b         .L800421BC
/* 42DB0 800421B0 24090001 */  addiu     $t1, $zero, 1
.L800421B4:
/* 42DB4 800421B4 100001A2 */  b         .L80042840
/* 42DB8 800421B8 00001025 */  or        $v0, $zero, $zero
.L800421BC:
/* 42DBC 800421BC 273980B4 */  addiu     $t9, $t9, -0x7f4c
/* 42DC0 800421C0 03191821 */  addu      $v1, $t8, $t9
/* 42DC4 800421C4 2466FFFD */  addiu     $a2, $v1, -3
/* 42DC8 800421C8 90C40002 */  lbu       $a0, 2($a2)
/* 42DCC 800421CC AFA60018 */  sw        $a2, 0x18($sp)
/* 42DD0 800421D0 AFA3001C */  sw        $v1, 0x1c($sp)
/* 42DD4 800421D4 AFA50074 */  sw        $a1, 0x74($sp)
/* 42DD8 800421D8 AFA70070 */  sw        $a3, 0x70($sp)
/* 42DDC 800421DC 0C010A14 */  jal       func_80042850
/* 42DE0 800421E0 AFA90024 */  sw        $t1, 0x24($sp)
/* 42DE4 800421E4 8FA60018 */  lw        $a2, 0x18($sp)
/* 42DE8 800421E8 8FA3001C */  lw        $v1, 0x1c($sp)
/* 42DEC 800421EC 8FA70070 */  lw        $a3, 0x70($sp)
/* 42DF0 800421F0 90C40000 */  lbu       $a0, ($a2)
/* 42DF4 800421F4 8FA80074 */  lw        $t0, 0x74($sp)
/* 42DF8 800421F8 8FA90024 */  lw        $t1, 0x24($sp)
/* 42DFC 800421FC 248BFFF9 */  addiu     $t3, $a0, -7
/* 42E00 80042200 2D610050 */  sltiu     $at, $t3, 0x50
/* 42E04 80042204 8FAA0078 */  lw        $t2, 0x78($sp)
/* 42E08 80042208 A3A20039 */  sb        $v0, 0x39($sp)
/* 42E0C 8004220C 10200065 */  beqz      $at, .L800423A4
/* 42E10 80042210 90C50001 */  lbu       $a1, 1($a2)
/* 42E14 80042214 000B5880 */  sll       $t3, $t3, 2
/* 42E18 80042218 3C018008 */  lui       $at, 0x8008
/* 42E1C 8004221C 002B0821 */  addu      $at, $at, $t3
/* 42E20 80042220 8C2BCA40 */  lw        $t3, -0x35c0($at)
/* 42E24 80042224 01600008 */  jr        $t3
/* 42E28 80042228 00000000 */  nop       
/* 42E2C 8004222C 10000184 */  b         .L80042840
/* 42E30 80042230 2402FFFF */  addiu     $v0, $zero, -1
/* 42E34 80042234 95420028 */  lhu       $v0, 0x28($t2)
/* 42E38 80042238 04410002 */  bgez      $v0, .L80042244
/* 42E3C 8004223C 00400821 */  addu      $at, $v0, $zero
/* 42E40 80042240 24410001 */  addiu     $at, $v0, 1
.L80042244:
/* 42E44 80042244 00011043 */  sra       $v0, $at, 1
/* 42E48 80042248 1000017E */  b         .L80042844
/* 42E4C 8004224C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 42E50 80042250 24010031 */  addiu     $at, $zero, 0x31
/* 42E54 80042254 10E1000B */  beq       $a3, $at, .L80042284
/* 42E58 80042258 24010045 */  addiu     $at, $zero, 0x45
/* 42E5C 8004225C 10E1000B */  beq       $a3, $at, .L8004228C
/* 42E60 80042260 24010052 */  addiu     $at, $zero, 0x52
/* 42E64 80042264 10E1000B */  beq       $a3, $at, .L80042294
/* 42E68 80042268 24010065 */  addiu     $at, $zero, 0x65
/* 42E6C 8004226C 10E1000B */  beq       $a3, $at, .L8004229C
/* 42E70 80042270 24010095 */  addiu     $at, $zero, 0x95
/* 42E74 80042274 50E1000C */  beql      $a3, $at, .L800422A8
/* 42E78 80042278 910C0026 */  lbu       $t4, 0x26($t0)
/* 42E7C 8004227C 10000170 */  b         .L80042840
/* 42E80 80042280 00001025 */  or        $v0, $zero, $zero
.L80042284:
/* 42E84 80042284 1000016E */  b         .L80042840
/* 42E88 80042288 24020014 */  addiu     $v0, $zero, 0x14
.L8004228C:
/* 42E8C 8004228C 1000016C */  b         .L80042840
/* 42E90 80042290 91020026 */  lbu       $v0, 0x26($t0)
.L80042294:
/* 42E94 80042294 1000016A */  b         .L80042840
/* 42E98 80042298 24020028 */  addiu     $v0, $zero, 0x28
.L8004229C:
/* 42E9C 8004229C 10000168 */  b         .L80042840
/* 42EA0 800422A0 91020026 */  lbu       $v0, 0x26($t0)
/* 42EA4 800422A4 910C0026 */  lbu       $t4, 0x26($t0)
.L800422A8:
/* 42EA8 800422A8 3C014F80 */  lui       $at, 0x4f80
/* 42EAC 800422AC 448C2000 */  mtc1      $t4, $f4
/* 42EB0 800422B0 05810004 */  bgez      $t4, .L800422C4
/* 42EB4 800422B4 468021A0 */  cvt.s.w   $f6, $f4
/* 42EB8 800422B8 44814000 */  mtc1      $at, $f8
/* 42EBC 800422BC 00000000 */  nop       
/* 42EC0 800422C0 46083180 */  add.s     $f6, $f6, $f8
.L800422C4:
/* 42EC4 800422C4 3C013FC0 */  lui       $at, 0x3fc0
/* 42EC8 800422C8 44815000 */  mtc1      $at, $f10
/* 42ECC 800422CC 24020001 */  addiu     $v0, $zero, 1
/* 42ED0 800422D0 3C014F00 */  lui       $at, 0x4f00
/* 42ED4 800422D4 460A3102 */  mul.s     $f4, $f6, $f10
/* 42ED8 800422D8 444DF800 */  cfc1      $t5, $31
/* 42EDC 800422DC 44C2F800 */  ctc1      $v0, $31
/* 42EE0 800422E0 00000000 */  nop       
/* 42EE4 800422E4 46002224 */  cvt.w.s   $f8, $f4
/* 42EE8 800422E8 4442F800 */  cfc1      $v0, $31
/* 42EEC 800422EC 00000000 */  nop       
/* 42EF0 800422F0 30420078 */  andi      $v0, $v0, 0x78
/* 42EF4 800422F4 50400015 */  beql      $v0, $zero, .L8004234C
/* 42EF8 800422F8 44024000 */  mfc1      $v0, $f8
/* 42EFC 800422FC 44814000 */  mtc1      $at, $f8
/* 42F00 80042300 24020001 */  addiu     $v0, $zero, 1
/* 42F04 80042304 3C018000 */  lui       $at, 0x8000
/* 42F08 80042308 46082201 */  sub.s     $f8, $f4, $f8
/* 42F0C 8004230C 44C2F800 */  ctc1      $v0, $31
/* 42F10 80042310 00000000 */  nop       
/* 42F14 80042314 46004224 */  cvt.w.s   $f8, $f8
/* 42F18 80042318 4442F800 */  cfc1      $v0, $31
/* 42F1C 8004231C 00000000 */  nop       
/* 42F20 80042320 30420078 */  andi      $v0, $v0, 0x78
/* 42F24 80042324 54400006 */  bnel      $v0, $zero, .L80042340
/* 42F28 80042328 44CDF800 */  ctc1      $t5, $31
/* 42F2C 8004232C 44024000 */  mfc1      $v0, $f8
/* 42F30 80042330 44CDF800 */  ctc1      $t5, $31
/* 42F34 80042334 10000142 */  b         .L80042840
/* 42F38 80042338 00411025 */  or        $v0, $v0, $at
/* 42F3C 8004233C 44CDF800 */  ctc1      $t5, $31
.L80042340:
/* 42F40 80042340 1000013F */  b         .L80042840
/* 42F44 80042344 2402FFFF */  addiu     $v0, $zero, -1
/* 42F48 80042348 44024000 */  mfc1      $v0, $f8
.L8004234C:
/* 42F4C 8004234C 00000000 */  nop       
/* 42F50 80042350 0442FFFB */  bltzl     $v0, .L80042340
/* 42F54 80042354 44CDF800 */  ctc1      $t5, $31
/* 42F58 80042358 44CDF800 */  ctc1      $t5, $31
/* 42F5C 8004235C 10000139 */  b         .L80042844
/* 42F60 80042360 8FBF0014 */  lw        $ra, 0x14($sp)
/* 42F64 80042364 10000136 */  b         .L80042840
/* 42F68 80042368 00001025 */  or        $v0, $zero, $zero
/* 42F6C 8004236C 10000134 */  b         .L80042840
/* 42F70 80042370 2402FFFD */  addiu     $v0, $zero, -3
/* 42F74 80042374 10000132 */  b         .L80042840
/* 42F78 80042378 2402FFFB */  addiu     $v0, $zero, -5
/* 42F7C 8004237C 10000130 */  b         .L80042840
/* 42F80 80042380 2402FFFC */  addiu     $v0, $zero, -4
/* 42F84 80042384 3C0E8008 */  lui       $t6, 0x8008
/* 42F88 80042388 25CE81E0 */  addiu     $t6, $t6, -0x7e20
/* 42F8C 8004238C 146E0003 */  bne       $v1, $t6, .L8004239C
/* 42F90 80042390 00000000 */  nop       
/* 42F94 80042394 1000012A */  b         .L80042840
/* 42F98 80042398 2402FFFB */  addiu     $v0, $zero, -5
.L8004239C:
/* 42F9C 8004239C 10000128 */  b         .L80042840
/* 42FA0 800423A0 2402FFFC */  addiu     $v0, $zero, -4
.L800423A4:
/* 42FA4 800423A4 3C0F8008 */  lui       $t7, 0x8008
/* 42FA8 800423A8 25EF8180 */  addiu     $t7, $t7, -0x7e80
/* 42FAC 800423AC 546F0004 */  bnel      $v1, $t7, .L800423C0
/* 42FB0 800423B0 9502002A */  lhu       $v0, 0x2a($t0)
/* 42FB4 800423B4 10000122 */  b         .L80042840
/* 42FB8 800423B8 2402FFFE */  addiu     $v0, $zero, -2
/* 42FBC 800423BC 9502002A */  lhu       $v0, 0x2a($t0)
.L800423C0:
/* 42FC0 800423C0 5040000D */  beql      $v0, $zero, .L800423F8
/* 42FC4 800423C4 3C013F80 */  lui       $at, 0x3f80
/* 42FC8 800423C8 44823000 */  mtc1      $v0, $f6
/* 42FCC 800423CC 3C014F80 */  lui       $at, 0x4f80
/* 42FD0 800423D0 04410004 */  bgez      $v0, .L800423E4
/* 42FD4 800423D4 468030A0 */  cvt.s.w   $f2, $f6
/* 42FD8 800423D8 44815000 */  mtc1      $at, $f10
/* 42FDC 800423DC 00000000 */  nop       
/* 42FE0 800423E0 460A1080 */  add.s     $f2, $f2, $f10
.L800423E4:
/* 42FE4 800423E4 3C013F80 */  lui       $at, 0x3f80
/* 42FE8 800423E8 44817000 */  mtc1      $at, $f14
/* 42FEC 800423EC 10000006 */  b         .L80042408
/* 42FF0 800423F0 9542002C */  lhu       $v0, 0x2c($t2)
/* 42FF4 800423F4 3C013F80 */  lui       $at, 0x3f80
.L800423F8:
/* 42FF8 800423F8 44817000 */  mtc1      $at, $f14
/* 42FFC 800423FC 00000000 */  nop       
/* 43000 80042400 46007086 */  mov.s     $f2, $f14
/* 43004 80042404 9542002C */  lhu       $v0, 0x2c($t2)
.L80042408:
/* 43008 80042408 5040000B */  beql      $v0, $zero, .L80042438
/* 4300C 8004240C 46007006 */  mov.s     $f0, $f14
/* 43010 80042410 44822000 */  mtc1      $v0, $f4
/* 43014 80042414 3C014F80 */  lui       $at, 0x4f80
/* 43018 80042418 04410007 */  bgez      $v0, .L80042438
/* 4301C 8004241C 46802020 */  cvt.s.w   $f0, $f4
/* 43020 80042420 44814000 */  mtc1      $at, $f8
/* 43024 80042424 00000000 */  nop       
/* 43028 80042428 46080000 */  add.s     $f0, $f0, $f8
/* 4302C 8004242C 10000003 */  b         .L8004243C
/* 43030 80042430 91180026 */  lbu       $t8, 0x26($t0)
/* 43034 80042434 46007006 */  mov.s     $f0, $f14
.L80042438:
/* 43038 80042438 91180026 */  lbu       $t8, 0x26($t0)
.L8004243C:
/* 4303C 8004243C 24010005 */  addiu     $at, $zero, 5
/* 43040 80042440 44852000 */  mtc1      $a1, $f4
/* 43044 80042444 0018C840 */  sll       $t9, $t8, 1
/* 43048 80042448 0321001A */  div       $zero, $t9, $at
/* 4304C 8004244C 00005812 */  mflo      $t3
/* 43050 80042450 256C0002 */  addiu     $t4, $t3, 2
/* 43054 80042454 448C3000 */  mtc1      $t4, $f6
/* 43058 80042458 46802220 */  cvt.s.w   $f8, $f4
/* 4305C 8004245C 04A10005 */  bgez      $a1, .L80042474
/* 43060 80042460 468032A0 */  cvt.s.w   $f10, $f6
/* 43064 80042464 3C014F80 */  lui       $at, 0x4f80
/* 43068 80042468 44813000 */  mtc1      $at, $f6
/* 4306C 8004246C 00000000 */  nop       
/* 43070 80042470 46064200 */  add.s     $f8, $f8, $f6
.L80042474:
/* 43074 80042474 46085102 */  mul.s     $f4, $f10, $f8
/* 43078 80042478 3C014248 */  lui       $at, 0x4248
/* 4307C 8004247C 44814000 */  mtc1      $at, $f8
/* 43080 80042480 46022182 */  mul.s     $f6, $f4, $f2
/* 43084 80042484 46003283 */  div.s     $f10, $f6, $f0
/* 43088 80042488 46085103 */  div.s     $f4, $f10, $f8
/* 4308C 8004248C E7A40060 */  swc1      $f4, 0x60($sp)
/* 43090 80042490 9144001C */  lbu       $a0, 0x1c($t2)
/* 43094 80042494 AFA90024 */  sw        $t1, 0x24($sp)
/* 43098 80042498 0C010A14 */  jal       func_80042850
/* 4309C 8004249C AFA60018 */  sw        $a2, 0x18($sp)
/* 430A0 800424A0 8FAA0078 */  lw        $t2, 0x78($sp)
/* 430A4 800424A4 A3A2003B */  sb        $v0, 0x3b($sp)
/* 430A8 800424A8 0C010A14 */  jal       func_80042850
/* 430AC 800424AC 9144001D */  lbu       $a0, 0x1d($t2)
/* 430B0 800424B0 93AD0039 */  lbu       $t5, 0x39($sp)
/* 430B4 800424B4 93B8003B */  lbu       $t8, 0x3b($sp)
/* 430B8 800424B8 3C0F8008 */  lui       $t7, 0x8008
/* 430BC 800424BC 000D7100 */  sll       $t6, $t5, 4
/* 430C0 800424C0 25EF82A4 */  addiu     $t7, $t7, -0x7d5c
/* 430C4 800424C4 01CD7023 */  subu      $t6, $t6, $t5
/* 430C8 800424C8 01CF2821 */  addu      $a1, $t6, $t7
/* 430CC 800424CC 00B8C821 */  addu      $t9, $a1, $t8
/* 430D0 800424D0 93240000 */  lbu       $a0, ($t9)
/* 430D4 800424D4 3C013F80 */  lui       $at, 0x3f80
/* 430D8 800424D8 44817000 */  mtc1      $at, $f14
/* 430DC 800424DC 24070001 */  addiu     $a3, $zero, 1
/* 430E0 800424E0 8FA60018 */  lw        $a2, 0x18($sp)
/* 430E4 800424E4 8FA80074 */  lw        $t0, 0x74($sp)
/* 430E8 800424E8 8FA90024 */  lw        $t1, 0x24($sp)
/* 430EC 800424EC 10E40008 */  beq       $a3, $a0, .L80042510
/* 430F0 800424F0 8FAA0078 */  lw        $t2, 0x78($sp)
/* 430F4 800424F4 24010002 */  addiu     $at, $zero, 2
/* 430F8 800424F8 10810008 */  beq       $a0, $at, .L8004251C
/* 430FC 800424FC 24010003 */  addiu     $at, $zero, 3
/* 43100 80042500 5081000B */  beql      $a0, $at, .L80042530
/* 43104 80042504 3C014000 */  lui       $at, 0x4000
/* 43108 80042508 1000000C */  b         .L8004253C
/* 4310C 8004250C 46007306 */  mov.s     $f12, $f14
.L80042510:
/* 43110 80042510 44806000 */  mtc1      $zero, $f12
/* 43114 80042514 1000000A */  b         .L80042540
/* 43118 80042518 304B00FF */  andi      $t3, $v0, 0xff
.L8004251C:
/* 4311C 8004251C 3C013F00 */  lui       $at, 0x3f00
/* 43120 80042520 44816000 */  mtc1      $at, $f12
/* 43124 80042524 10000006 */  b         .L80042540
/* 43128 80042528 304B00FF */  andi      $t3, $v0, 0xff
/* 4312C 8004252C 3C014000 */  lui       $at, 0x4000
.L80042530:
/* 43130 80042530 44816000 */  mtc1      $at, $f12
/* 43134 80042534 10000002 */  b         .L80042540
/* 43138 80042538 304B00FF */  andi      $t3, $v0, 0xff
.L8004253C:
/* 4313C 8004253C 304B00FF */  andi      $t3, $v0, 0xff
.L80042540:
/* 43140 80042540 C7A60060 */  lwc1      $f6, 0x60($sp)
/* 43144 80042544 00AB6021 */  addu      $t4, $a1, $t3
/* 43148 80042548 91840000 */  lbu       $a0, ($t4)
/* 4314C 8004254C 460C3282 */  mul.s     $f10, $f6, $f12
/* 43150 80042550 24050084 */  addiu     $a1, $zero, 0x84
/* 43154 80042554 10E40008 */  beq       $a3, $a0, .L80042578
/* 43158 80042558 39230001 */  xori      $v1, $t1, 1
/* 4315C 8004255C 24010002 */  addiu     $at, $zero, 2
/* 43160 80042560 10810008 */  beq       $a0, $at, .L80042584
/* 43164 80042564 24010003 */  addiu     $at, $zero, 3
/* 43168 80042568 5081000B */  beql      $a0, $at, .L80042598
/* 4316C 8004256C 3C014000 */  lui       $at, 0x4000
/* 43170 80042570 1000000C */  b         .L800425A4
/* 43174 80042574 46007086 */  mov.s     $f2, $f14
.L80042578:
/* 43178 80042578 44801000 */  mtc1      $zero, $f2
/* 4317C 8004257C 1000000A */  b         .L800425A8
/* 43180 80042580 90C20002 */  lbu       $v0, 2($a2)
.L80042584:
/* 43184 80042584 3C013F00 */  lui       $at, 0x3f00
/* 43188 80042588 44811000 */  mtc1      $at, $f2
/* 4318C 8004258C 10000006 */  b         .L800425A8
/* 43190 80042590 90C20002 */  lbu       $v0, 2($a2)
/* 43194 80042594 3C014000 */  lui       $at, 0x4000
.L80042598:
/* 43198 80042598 44811000 */  mtc1      $at, $f2
/* 4319C 8004259C 10000002 */  b         .L800425A8
/* 431A0 800425A0 90C20002 */  lbu       $v0, 2($a2)
.L800425A4:
/* 431A4 800425A4 90C20002 */  lbu       $v0, 2($a2)
.L800425A8:
/* 431A8 800425A8 910D001C */  lbu       $t5, 0x1c($t0)
/* 431AC 800425AC 51A20004 */  beql      $t5, $v0, .L800425C0
/* 431B0 800425B0 3C013FC0 */  lui       $at, 0x3fc0
/* 431B4 800425B4 910E001D */  lbu       $t6, 0x1d($t0)
/* 431B8 800425B8 15C20004 */  bne       $t6, $v0, .L800425CC
/* 431BC 800425BC 3C013FC0 */  lui       $at, 0x3fc0
.L800425C0:
/* 431C0 800425C0 44810000 */  mtc1      $at, $f0
/* 431C4 800425C4 10000002 */  b         .L800425D0
/* 431C8 800425C8 00000000 */  nop       
.L800425CC:
/* 431CC 800425CC 46007006 */  mov.s     $f0, $f14
.L800425D0:
/* 431D0 800425D0 00650019 */  multu     $v1, $a1
/* 431D4 800425D4 3C048010 */  lui       $a0, 0x8010
/* 431D8 800425D8 46025202 */  mul.s     $f8, $f10, $f2
/* 431DC 800425DC 2484CB48 */  addiu     $a0, $a0, -0x34b8
/* 431E0 800425E0 46004102 */  mul.s     $f4, $f8, $f0
/* 431E4 800425E4 00007812 */  mflo      $t7
/* 431E8 800425E8 008F1021 */  addu      $v0, $a0, $t7
/* 431EC 800425EC 8C580024 */  lw        $t8, 0x24($v0)
/* 431F0 800425F0 44804000 */  mtc1      $zero, $f8
/* 431F4 800425F4 3319000F */  andi      $t9, $t8, 0xf
/* 431F8 800425F8 00195840 */  sll       $t3, $t9, 1
/* 431FC 800425FC 004B6021 */  addu      $t4, $v0, $t3
/* 43200 80042600 958D0000 */  lhu       $t5, ($t4)
/* 43204 80042604 E7A4005C */  swc1      $f4, 0x5c($sp)
/* 43208 80042608 448D3000 */  mtc1      $t5, $f6
/* 4320C 8004260C 05A10005 */  bgez      $t5, .L80042624
/* 43210 80042610 46803420 */  cvt.s.w   $f16, $f6
/* 43214 80042614 3C014F80 */  lui       $at, 0x4f80
/* 43218 80042618 44815000 */  mtc1      $at, $f10
/* 4321C 8004261C 00000000 */  nop       
/* 43220 80042620 460A8400 */  add.s     $f16, $f16, $f10
.L80042624:
/* 43224 80042624 46088032 */  c.eq.s    $f16, $f8
/* 43228 80042628 3C013F80 */  lui       $at, 0x3f80
/* 4322C 8004262C 45020004 */  bc1fl     .L80042640
/* 43230 80042630 954E0028 */  lhu       $t6, 0x28($t2)
/* 43234 80042634 44818000 */  mtc1      $at, $f16
/* 43238 80042638 00000000 */  nop       
/* 4323C 8004263C 954E0028 */  lhu       $t6, 0x28($t2)
.L80042640:
/* 43240 80042640 3C068008 */  lui       $a2, 0x8008
/* 43244 80042644 24C68390 */  addiu     $a2, $a2, -0x7c70
/* 43248 80042648 448E2000 */  mtc1      $t6, $f4
/* 4324C 8004264C 00C37821 */  addu      $t7, $a2, $v1
/* 43250 80042650 05C10005 */  bgez      $t6, .L80042668
/* 43254 80042654 468021A0 */  cvt.s.w   $f6, $f4
/* 43258 80042658 3C014F80 */  lui       $at, 0x4f80
/* 4325C 8004265C 44815000 */  mtc1      $at, $f10
/* 43260 80042660 00000000 */  nop       
/* 43264 80042664 460A3180 */  add.s     $f6, $f6, $f10
.L80042668:
/* 43268 80042668 91F80000 */  lbu       $t8, ($t7)
/* 4326C 8004266C 44805000 */  mtc1      $zero, $f10
/* 43270 80042670 E7A60054 */  swc1      $f6, 0x54($sp)
/* 43274 80042674 14F80003 */  bne       $a3, $t8, .L80042684
/* 43278 80042678 3C018008 */  lui       $at, 0x8008
/* 4327C 8004267C 10000002 */  b         .L80042688
/* 43280 80042680 C432CB80 */  lwc1      $f18, -0x3480($at)
.L80042684:
/* 43284 80042684 46007486 */  mov.s     $f18, $f14
.L80042688:
/* 43288 80042688 01250019 */  multu     $t1, $a1
/* 4328C 8004268C 3C014F80 */  lui       $at, 0x4f80
/* 43290 80042690 0000C812 */  mflo      $t9
/* 43294 80042694 00991021 */  addu      $v0, $a0, $t9
/* 43298 80042698 8C4B0024 */  lw        $t3, 0x24($v0)
/* 4329C 8004269C 00C9C821 */  addu      $t9, $a2, $t1
/* 432A0 800426A0 316C000F */  andi      $t4, $t3, 0xf
/* 432A4 800426A4 000C6840 */  sll       $t5, $t4, 1
/* 432A8 800426A8 004D7021 */  addu      $t6, $v0, $t5
/* 432AC 800426AC 95CF0000 */  lhu       $t7, ($t6)
/* 432B0 800426B0 448F4000 */  mtc1      $t7, $f8
/* 432B4 800426B4 05E10004 */  bgez      $t7, .L800426C8
/* 432B8 800426B8 468040A0 */  cvt.s.w   $f2, $f8
/* 432BC 800426BC 44812000 */  mtc1      $at, $f4
/* 432C0 800426C0 00000000 */  nop       
/* 432C4 800426C4 46041080 */  add.s     $f2, $f2, $f4
.L800426C8:
/* 432C8 800426C8 460A1032 */  c.eq.s    $f2, $f10
/* 432CC 800426CC 3C013F80 */  lui       $at, 0x3f80
/* 432D0 800426D0 45020004 */  bc1fl     .L800426E4
/* 432D4 800426D4 95180028 */  lhu       $t8, 0x28($t0)
/* 432D8 800426D8 44811000 */  mtc1      $at, $f2
/* 432DC 800426DC 00000000 */  nop       
/* 432E0 800426E0 95180028 */  lhu       $t8, 0x28($t0)
.L800426E4:
/* 432E4 800426E4 3C014F80 */  lui       $at, 0x4f80
/* 432E8 800426E8 44983000 */  mtc1      $t8, $f6
/* 432EC 800426EC 07010004 */  bgez      $t8, .L80042700
/* 432F0 800426F0 46803220 */  cvt.s.w   $f8, $f6
/* 432F4 800426F4 44812000 */  mtc1      $at, $f4
/* 432F8 800426F8 00000000 */  nop       
/* 432FC 800426FC 46044200 */  add.s     $f8, $f8, $f4
.L80042700:
/* 43300 80042700 932B0000 */  lbu       $t3, ($t9)
/* 43304 80042704 C7AA0054 */  lwc1      $f10, 0x54($sp)
/* 43308 80042708 E7A80048 */  swc1      $f8, 0x48($sp)
/* 4330C 8004270C 14EB0004 */  bne       $a3, $t3, .L80042720
/* 43310 80042710 46105183 */  div.s     $f6, $f10, $f16
/* 43314 80042714 3C018008 */  lui       $at, 0x8008
/* 43318 80042718 10000002 */  b         .L80042724
/* 4331C 8004271C C42CCB84 */  lwc1      $f12, -0x347c($at)
.L80042720:
/* 43320 80042720 46007306 */  mov.s     $f12, $f14
.L80042724:
/* 43324 80042724 91420015 */  lbu       $v0, 0x15($t2)
/* 43328 80042728 3C018008 */  lui       $at, 0x8008
/* 4332C 8004272C 304C0020 */  andi      $t4, $v0, 0x20
/* 43330 80042730 11800003 */  beqz      $t4, .L80042740
/* 43334 80042734 304D0007 */  andi      $t5, $v0, 7
/* 43338 80042738 10000006 */  b         .L80042754
/* 4333C 8004273C C420CB88 */  lwc1      $f0, -0x3478($at)
.L80042740:
/* 43340 80042740 11A00003 */  beqz      $t5, .L80042750
/* 43344 80042744 3C018008 */  lui       $at, 0x8008
/* 43348 80042748 10000002 */  b         .L80042754
/* 4334C 8004274C C420CB8C */  lwc1      $f0, -0x3474($at)
.L80042750:
/* 43350 80042750 46007006 */  mov.s     $f0, $f14
.L80042754:
/* 43354 80042754 3C018008 */  lui       $at, 0x8008
/* 43358 80042758 C42ECB90 */  lwc1      $f14, -0x3470($at)
/* 4335C 8004275C 3C013F80 */  lui       $at, 0x3f80
/* 43360 80042760 44814000 */  mtc1      $at, $f8
/* 43364 80042764 460E3102 */  mul.s     $f4, $f6, $f14
/* 43368 80042768 C7A6005C */  lwc1      $f6, 0x5c($sp)
/* 4336C 8004276C 24020001 */  addiu     $v0, $zero, 1
/* 43370 80042770 46082280 */  add.s     $f10, $f4, $f8
/* 43374 80042774 44814000 */  mtc1      $at, $f8
/* 43378 80042778 3C014F00 */  lui       $at, 0x4f00
/* 4337C 8004277C 46065102 */  mul.s     $f4, $f10, $f6
/* 43380 80042780 C7AA0048 */  lwc1      $f10, 0x48($sp)
/* 43384 80042784 46025183 */  div.s     $f6, $f10, $f2
/* 43388 80042788 460E3282 */  mul.s     $f10, $f6, $f14
/* 4338C 8004278C 460A4180 */  add.s     $f6, $f8, $f10
/* 43390 80042790 46062202 */  mul.s     $f8, $f4, $f6
/* 43394 80042794 00000000 */  nop       
/* 43398 80042798 46124282 */  mul.s     $f10, $f8, $f18
/* 4339C 8004279C 00000000 */  nop       
/* 433A0 800427A0 460C5102 */  mul.s     $f4, $f10, $f12
/* 433A4 800427A4 00000000 */  nop       
/* 433A8 800427A8 46002182 */  mul.s     $f6, $f4, $f0
/* 433AC 800427AC 444EF800 */  cfc1      $t6, $31
/* 433B0 800427B0 44C2F800 */  ctc1      $v0, $31
/* 433B4 800427B4 00000000 */  nop       
/* 433B8 800427B8 46003224 */  cvt.w.s   $f8, $f6
/* 433BC 800427BC 4442F800 */  cfc1      $v0, $31
/* 433C0 800427C0 00000000 */  nop       
/* 433C4 800427C4 30420078 */  andi      $v0, $v0, 0x78
/* 433C8 800427C8 10400012 */  beqz      $v0, .L80042814
/* 433CC 800427CC 00000000 */  nop       
/* 433D0 800427D0 44814000 */  mtc1      $at, $f8
/* 433D4 800427D4 24020001 */  addiu     $v0, $zero, 1
/* 433D8 800427D8 46083201 */  sub.s     $f8, $f6, $f8
/* 433DC 800427DC 44C2F800 */  ctc1      $v0, $31
/* 433E0 800427E0 00000000 */  nop       
/* 433E4 800427E4 46004224 */  cvt.w.s   $f8, $f8
/* 433E8 800427E8 4442F800 */  cfc1      $v0, $31
/* 433EC 800427EC 00000000 */  nop       
/* 433F0 800427F0 30420078 */  andi      $v0, $v0, 0x78
/* 433F4 800427F4 14400005 */  bnez      $v0, .L8004280C
/* 433F8 800427F8 00000000 */  nop       
/* 433FC 800427FC 44024000 */  mfc1      $v0, $f8
/* 43400 80042800 3C018000 */  lui       $at, 0x8000
/* 43404 80042804 10000007 */  b         .L80042824
/* 43408 80042808 00411025 */  or        $v0, $v0, $at
.L8004280C:
/* 4340C 8004280C 10000005 */  b         .L80042824
/* 43410 80042810 2402FFFF */  addiu     $v0, $zero, -1
.L80042814:
/* 43414 80042814 44024000 */  mfc1      $v0, $f8
/* 43418 80042818 00000000 */  nop       
/* 4341C 8004281C 0440FFFB */  bltz      $v0, .L8004280C
/* 43420 80042820 00000000 */  nop       
.L80042824:
/* 43424 80042824 34018000 */  ori       $at, $zero, 0x8000
/* 43428 80042828 44CEF800 */  ctc1      $t6, $31
/* 4342C 8004282C 0041082B */  sltu      $at, $v0, $at
/* 43430 80042830 14200002 */  bnez      $at, .L8004283C
/* 43434 80042834 00401825 */  or        $v1, $v0, $zero
/* 43438 80042838 24037FFF */  addiu     $v1, $zero, 0x7fff
.L8004283C:
/* 4343C 8004283C 00601025 */  or        $v0, $v1, $zero
.L80042840:
/* 43440 80042840 8FBF0014 */  lw        $ra, 0x14($sp)
.L80042844:
/* 43444 80042844 27BD0070 */  addiu     $sp, $sp, 0x70
/* 43448 80042848 03E00008 */  jr        $ra
/* 4344C 8004284C 00000000 */  nop       

glabel func_80042850
/* 43450 80042850 AFA40000 */  sw        $a0, ($sp)
/* 43454 80042854 308400FF */  andi      $a0, $a0, 0xff
/* 43458 80042858 2C81001B */  sltiu     $at, $a0, 0x1b
/* 4345C 8004285C 10200024 */  beqz      $at, .L800428F0
/* 43460 80042860 00047080 */  sll       $t6, $a0, 2
/* 43464 80042864 3C018008 */  lui       $at, 0x8008
/* 43468 80042868 002E0821 */  addu      $at, $at, $t6
/* 4346C 8004286C 8C2ECB94 */  lw        $t6, -0x346c($at)
/* 43470 80042870 01C00008 */  jr        $t6
/* 43474 80042874 00000000 */  nop       
/* 43478 80042878 03E00008 */  jr        $ra
/* 4347C 8004287C 00001025 */  or        $v0, $zero, $zero
/* 43480 80042880 03E00008 */  jr        $ra
/* 43484 80042884 24020001 */  addiu     $v0, $zero, 1
/* 43488 80042888 03E00008 */  jr        $ra
/* 4348C 8004288C 24020002 */  addiu     $v0, $zero, 2
/* 43490 80042890 03E00008 */  jr        $ra
/* 43494 80042894 24020003 */  addiu     $v0, $zero, 3
/* 43498 80042898 03E00008 */  jr        $ra
/* 4349C 8004289C 24020004 */  addiu     $v0, $zero, 4
/* 434A0 800428A0 03E00008 */  jr        $ra
/* 434A4 800428A4 24020005 */  addiu     $v0, $zero, 5
/* 434A8 800428A8 03E00008 */  jr        $ra
/* 434AC 800428AC 24020006 */  addiu     $v0, $zero, 6
/* 434B0 800428B0 03E00008 */  jr        $ra
/* 434B4 800428B4 24020007 */  addiu     $v0, $zero, 7
/* 434B8 800428B8 03E00008 */  jr        $ra
/* 434BC 800428BC 24020008 */  addiu     $v0, $zero, 8
/* 434C0 800428C0 03E00008 */  jr        $ra
/* 434C4 800428C4 24020009 */  addiu     $v0, $zero, 9
/* 434C8 800428C8 03E00008 */  jr        $ra
/* 434CC 800428CC 2402000A */  addiu     $v0, $zero, 0xa
/* 434D0 800428D0 03E00008 */  jr        $ra
/* 434D4 800428D4 2402000B */  addiu     $v0, $zero, 0xb
/* 434D8 800428D8 03E00008 */  jr        $ra
/* 434DC 800428DC 2402000C */  addiu     $v0, $zero, 0xc
/* 434E0 800428E0 03E00008 */  jr        $ra
/* 434E4 800428E4 2402000D */  addiu     $v0, $zero, 0xd
/* 434E8 800428E8 03E00008 */  jr        $ra
/* 434EC 800428EC 2402000E */  addiu     $v0, $zero, 0xe
.L800428F0:
/* 434F0 800428F0 00001025 */  or        $v0, $zero, $zero
/* 434F4 800428F4 03E00008 */  jr        $ra
/* 434F8 800428F8 00000000 */  nop       

glabel func_800428FC
/* 434FC 800428FC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 43500 80042900 AFBF0014 */  sw        $ra, 0x14($sp)
/* 43504 80042904 0C01071C */  jal       func_80041C70
/* 43508 80042908 00000000 */  nop       
/* 4350C 8004290C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 43510 80042910 27BD0018 */  addiu     $sp, $sp, 0x18
/* 43514 80042914 03E00008 */  jr        $ra
/* 43518 80042918 00000000 */  nop       
/* 4351C 8004291C 00000000 */  nop       
