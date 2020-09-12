.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80005830
/* 6430 80005830 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 6434 80005834 AFB10018 */  sw        $s1, 0x18($sp)
/* 6438 80005838 AFB00014 */  sw        $s0, 0x14($sp)
/* 643C 8000583C 3C10800A */  lui       $s0, 0x800a
/* 6440 80005840 3C11800A */  lui       $s1, 0x800a
/* 6444 80005844 AFBF001C */  sw        $ra, 0x1c($sp)
/* 6448 80005848 263173B0 */  addiu     $s1, $s1, 0x73b0
/* 644C 8000584C 26107320 */  addiu     $s0, $s0, 0x7320
/* 6450 80005850 02002025 */  or        $a0, $s0, $zero
.L80005854:
/* 6454 80005854 0C015FF4 */  jal       func_80057FD0
/* 6458 80005858 24050024 */  addiu     $a1, $zero, 0x24
/* 645C 8000585C 26100024 */  addiu     $s0, $s0, 0x24
/* 6460 80005860 0211082B */  sltu      $at, $s0, $s1
/* 6464 80005864 5420FFFB */  bnel      $at, $zero, .L80005854
/* 6468 80005868 02002025 */  or        $a0, $s0, $zero
/* 646C 8000586C 3C02800A */  lui       $v0, 0x800a
/* 6470 80005870 904273C8 */  lbu       $v0, 0x73c8($v0)
/* 6474 80005874 240F0001 */  addiu     $t7, $zero, 1
/* 6478 80005878 3C01800A */  lui       $at, 0x800a
/* 647C 8000587C 304E0001 */  andi      $t6, $v0, 1
/* 6480 80005880 11C0000A */  beqz      $t6, .L800058AC
/* 6484 80005884 30480002 */  andi      $t0, $v0, 2
/* 6488 80005888 A42F7320 */  sh        $t7, 0x7320($at)
/* 648C 8000588C 3C18800A */  lui       $t8, 0x800a
/* 6490 80005890 271873D0 */  addiu     $t8, $t8, 0x73d0
/* 6494 80005894 3C01800A */  lui       $at, 0x800a
/* 6498 80005898 AC38733C */  sw        $t8, 0x733c($at)
/* 649C 8000589C 3C19800A */  lui       $t9, 0x800a
/* 64A0 800058A0 273973E0 */  addiu     $t9, $t9, 0x73e0
/* 64A4 800058A4 3C01800A */  lui       $at, 0x800a
/* 64A8 800058A8 AC397340 */  sw        $t9, 0x7340($at)
.L800058AC:
/* 64AC 800058AC 1100000B */  beqz      $t0, .L800058DC
/* 64B0 800058B0 304C0004 */  andi      $t4, $v0, 4
/* 64B4 800058B4 24090002 */  addiu     $t1, $zero, 2
/* 64B8 800058B8 3C01800A */  lui       $at, 0x800a
/* 64BC 800058BC A4297344 */  sh        $t1, 0x7344($at)
/* 64C0 800058C0 3C01800A */  lui       $at, 0x800a
/* 64C4 800058C4 3C0A800A */  lui       $t2, 0x800a
/* 64C8 800058C8 3C0B800A */  lui       $t3, 0x800a
/* 64CC 800058CC 256B73E6 */  addiu     $t3, $t3, 0x73e6
/* 64D0 800058D0 254A73D4 */  addiu     $t2, $t2, 0x73d4
/* 64D4 800058D4 AC2A7360 */  sw        $t2, 0x7360($at)
/* 64D8 800058D8 AC2B7364 */  sw        $t3, 0x7364($at)
.L800058DC:
/* 64DC 800058DC 1180000C */  beqz      $t4, .L80005910
/* 64E0 800058E0 30580008 */  andi      $t8, $v0, 8
/* 64E4 800058E4 240D0003 */  addiu     $t5, $zero, 3
/* 64E8 800058E8 3C01800A */  lui       $at, 0x800a
/* 64EC 800058EC A42D7368 */  sh        $t5, 0x7368($at)
/* 64F0 800058F0 3C0E800A */  lui       $t6, 0x800a
/* 64F4 800058F4 25CE73D8 */  addiu     $t6, $t6, 0x73d8
/* 64F8 800058F8 3C01800A */  lui       $at, 0x800a
/* 64FC 800058FC AC2E7384 */  sw        $t6, 0x7384($at)
/* 6500 80005900 3C0F800A */  lui       $t7, 0x800a
/* 6504 80005904 25EF73EC */  addiu     $t7, $t7, 0x73ec
/* 6508 80005908 3C01800A */  lui       $at, 0x800a
/* 650C 8000590C AC2F7388 */  sw        $t7, 0x7388($at)
.L80005910:
/* 6510 80005910 1300000A */  beqz      $t8, .L8000593C
/* 6514 80005914 24190004 */  addiu     $t9, $zero, 4
/* 6518 80005918 3C01800A */  lui       $at, 0x800a
/* 651C 8000591C A439738C */  sh        $t9, 0x738c($at)
/* 6520 80005920 3C01800A */  lui       $at, 0x800a
/* 6524 80005924 3C08800A */  lui       $t0, 0x800a
/* 6528 80005928 3C09800A */  lui       $t1, 0x800a
/* 652C 8000592C 252973F2 */  addiu     $t1, $t1, 0x73f2
/* 6530 80005930 250873DC */  addiu     $t0, $t0, 0x73dc
/* 6534 80005934 AC2873A8 */  sw        $t0, 0x73a8($at)
/* 6538 80005938 AC2973AC */  sw        $t1, 0x73ac($at)
.L8000593C:
/* 653C 8000593C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 6540 80005940 8FB00014 */  lw        $s0, 0x14($sp)
/* 6544 80005944 8FB10018 */  lw        $s1, 0x18($sp)
/* 6548 80005948 03E00008 */  jr        $ra
/* 654C 8000594C 27BD0020 */  addiu     $sp, $sp, 0x20

glabel func_80005950
/* 6550 80005950 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 6554 80005954 AFBF0014 */  sw        $ra, 0x14($sp)
/* 6558 80005958 84820002 */  lh        $v0, 2($a0)
/* 655C 8000595C 44807000 */  mtc1      $zero, $f14
/* 6560 80005960 2841FFF9 */  slti      $at, $v0, -7
/* 6564 80005964 E48E0014 */  swc1      $f14, 0x14($a0)
/* 6568 80005968 10200006 */  beqz      $at, .L80005984
/* 656C 8000596C E48E0018 */  swc1      $f14, 0x18($a0)
/* 6570 80005970 244E0006 */  addiu     $t6, $v0, 6
/* 6574 80005974 448E2000 */  mtc1      $t6, $f4
/* 6578 80005978 00000000 */  nop       
/* 657C 8000597C 468021A0 */  cvt.s.w   $f6, $f4
/* 6580 80005980 E4860014 */  swc1      $f6, 0x14($a0)
.L80005984:
/* 6584 80005984 28410008 */  slti      $at, $v0, 8
/* 6588 80005988 14200005 */  bnez      $at, .L800059A0
/* 658C 8000598C 244FFFFA */  addiu     $t7, $v0, -6
/* 6590 80005990 448F4000 */  mtc1      $t7, $f8
/* 6594 80005994 00000000 */  nop       
/* 6598 80005998 468042A0 */  cvt.s.w   $f10, $f8
/* 659C 8000599C E48A0014 */  swc1      $f10, 0x14($a0)
.L800059A0:
/* 65A0 800059A0 84820004 */  lh        $v0, 4($a0)
/* 65A4 800059A4 2841FFF9 */  slti      $at, $v0, -7
/* 65A8 800059A8 10200005 */  beqz      $at, .L800059C0
/* 65AC 800059AC 24580006 */  addiu     $t8, $v0, 6
/* 65B0 800059B0 44988000 */  mtc1      $t8, $f16
/* 65B4 800059B4 00000000 */  nop       
/* 65B8 800059B8 468084A0 */  cvt.s.w   $f18, $f16
/* 65BC 800059BC E4920018 */  swc1      $f18, 0x18($a0)
.L800059C0:
/* 65C0 800059C0 28410008 */  slti      $at, $v0, 8
/* 65C4 800059C4 14200005 */  bnez      $at, .L800059DC
/* 65C8 800059C8 2459FFFA */  addiu     $t9, $v0, -6
/* 65CC 800059CC 44992000 */  mtc1      $t9, $f4
/* 65D0 800059D0 00000000 */  nop       
/* 65D4 800059D4 468021A0 */  cvt.s.w   $f6, $f4
/* 65D8 800059D8 E4860018 */  swc1      $f6, 0x18($a0)
.L800059DC:
/* 65DC 800059DC C4800014 */  lwc1      $f0, 0x14($a0)
/* 65E0 800059E0 C4820018 */  lwc1      $f2, 0x18($a0)
/* 65E4 800059E4 AFA40018 */  sw        $a0, 0x18($sp)
/* 65E8 800059E8 46000202 */  mul.s     $f8, $f0, $f0
/* 65EC 800059EC 00000000 */  nop       
/* 65F0 800059F0 46021282 */  mul.s     $f10, $f2, $f2
/* 65F4 800059F4 0C0173AC */  jal       func_8005CEB0
/* 65F8 800059F8 460A4300 */  add.s     $f12, $f8, $f10
/* 65FC 800059FC 3C014280 */  lui       $at, 0x4280
/* 6600 80005A00 44811000 */  mtc1      $at, $f2
/* 6604 80005A04 8FA40018 */  lw        $a0, 0x18($sp)
/* 6608 80005A08 44807000 */  mtc1      $zero, $f14
/* 660C 80005A0C 4600103C */  c.lt.s    $f2, $f0
/* 6610 80005A10 E4800010 */  swc1      $f0, 0x10($a0)
/* 6614 80005A14 4502000C */  bc1fl     .L80005A48
/* 6618 80005A18 C48A0010 */  lwc1      $f10, 0x10($a0)
/* 661C 80005A1C C4900010 */  lwc1      $f16, 0x10($a0)
/* 6620 80005A20 C4920014 */  lwc1      $f18, 0x14($a0)
/* 6624 80005A24 C4860018 */  lwc1      $f6, 0x18($a0)
/* 6628 80005A28 46101003 */  div.s     $f0, $f2, $f16
/* 662C 80005A2C E4820010 */  swc1      $f2, 0x10($a0)
/* 6630 80005A30 46009102 */  mul.s     $f4, $f18, $f0
/* 6634 80005A34 00000000 */  nop       
/* 6638 80005A38 46003202 */  mul.s     $f8, $f6, $f0
/* 663C 80005A3C E4840014 */  swc1      $f4, 0x14($a0)
/* 6640 80005A40 E4880018 */  swc1      $f8, 0x18($a0)
/* 6644 80005A44 C48A0010 */  lwc1      $f10, 0x10($a0)
.L80005A48:
/* 6648 80005A48 460A703C */  c.lt.s    $f14, $f10
/* 664C 80005A4C 00000000 */  nop       
/* 6650 80005A50 45020009 */  bc1fl     .L80005A78
/* 6654 80005A54 8FBF0014 */  lw        $ra, 0x14($sp)
/* 6658 80005A58 C48C0018 */  lwc1      $f12, 0x18($a0)
/* 665C 80005A5C C48E0014 */  lwc1      $f14, 0x14($a0)
/* 6660 80005A60 AFA40018 */  sw        $a0, 0x18($sp)
/* 6664 80005A64 0C0028D8 */  jal       func_8000A360
/* 6668 80005A68 46006307 */  neg.s     $f12, $f12
/* 666C 80005A6C 8FA40018 */  lw        $a0, 0x18($sp)
/* 6670 80005A70 A482000E */  sh        $v0, 0xe($a0)
/* 6674 80005A74 8FBF0014 */  lw        $ra, 0x14($sp)
.L80005A78:
/* 6678 80005A78 27BD0018 */  addiu     $sp, $sp, 0x18
/* 667C 80005A7C 03E00008 */  jr        $ra
/* 6680 80005A80 00000000 */  nop       

glabel func_80005A84
/* 6684 80005A84 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 6688 80005A88 AFBF0014 */  sw        $ra, 0x14($sp)
/* 668C 80005A8C 0C001747 */  jal       func_80005D1C
/* 6690 80005A90 00000000 */  nop       
/* 6694 80005A94 3C04800A */  lui       $a0, 0x800a
/* 6698 80005A98 0C016384 */  jal       func_80058E10
/* 669C 80005A9C 248473B0 */  addiu     $a0, $a0, 0x73b0
/* 66A0 80005AA0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 66A4 80005AA4 27BD0018 */  addiu     $sp, $sp, 0x18
/* 66A8 80005AA8 03E00008 */  jr        $ra
/* 66AC 80005AAC 00000000 */  nop       

glabel func_80005AB0
/* 66B0 80005AB0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 66B4 80005AB4 AFB00018 */  sw        $s0, 0x18($sp)
/* 66B8 80005AB8 AFBF0024 */  sw        $ra, 0x24($sp)
/* 66BC 80005ABC 3C10800A */  lui       $s0, 0x800a
/* 66C0 80005AC0 3C04800A */  lui       $a0, 0x800a
/* 66C4 80005AC4 AFB20020 */  sw        $s2, 0x20($sp)
/* 66C8 80005AC8 AFB1001C */  sw        $s1, 0x1c($sp)
/* 66CC 80005ACC 26107320 */  addiu     $s0, $s0, 0x7320
/* 66D0 80005AD0 248473B0 */  addiu     $a0, $a0, 0x73b0
/* 66D4 80005AD4 00002825 */  or        $a1, $zero, $zero
/* 66D8 80005AD8 0C015AB4 */  jal       func_80056AD0
/* 66DC 80005ADC 24060001 */  addiu     $a2, $zero, 1
/* 66E0 80005AE0 3C04800A */  lui       $a0, 0x800a
/* 66E4 80005AE4 0C0163A5 */  jal       func_80058E94
/* 66E8 80005AE8 248473E0 */  addiu     $a0, $a0, 0x73e0
/* 66EC 80005AEC 0C001752 */  jal       func_80005D48
/* 66F0 80005AF0 00000000 */  nop       
/* 66F4 80005AF4 00008825 */  or        $s1, $zero, $zero
/* 66F8 80005AF8 24120004 */  addiu     $s2, $zero, 4
.L80005AFC:
/* 66FC 80005AFC 860E0000 */  lh        $t6, ($s0)
/* 6700 80005B00 51C00016 */  beql      $t6, $zero, .L80005B5C
/* 6704 80005B04 A6000008 */  sh        $zero, 8($s0)
/* 6708 80005B08 8E020020 */  lw        $v0, 0x20($s0)
/* 670C 80005B0C 96030006 */  lhu       $v1, 6($s0)
/* 6710 80005B10 02002025 */  or        $a0, $s0, $zero
/* 6714 80005B14 804F0002 */  lb        $t7, 2($v0)
/* 6718 80005B18 A60F0002 */  sh        $t7, 2($s0)
/* 671C 80005B1C 80580003 */  lb        $t8, 3($v0)
/* 6720 80005B20 A6180004 */  sh        $t8, 4($s0)
/* 6724 80005B24 94450000 */  lhu       $a1, ($v0)
/* 6728 80005B28 00A3C826 */  xor       $t9, $a1, $v1
/* 672C 80005B2C 00B94024 */  and       $t0, $a1, $t9
/* 6730 80005B30 A6080008 */  sh        $t0, 8($s0)
/* 6734 80005B34 94490000 */  lhu       $t1, ($v0)
/* 6738 80005B38 01235026 */  xor       $t2, $t1, $v1
/* 673C 80005B3C 006A5824 */  and       $t3, $v1, $t2
/* 6740 80005B40 A60B000A */  sh        $t3, 0xa($s0)
/* 6744 80005B44 944C0000 */  lhu       $t4, ($v0)
/* 6748 80005B48 0C001654 */  jal       func_80005950
/* 674C 80005B4C A60C0006 */  sh        $t4, 6($s0)
/* 6750 80005B50 10000005 */  b         .L80005B68
/* 6754 80005B54 26310001 */  addiu     $s1, $s1, 1
/* 6758 80005B58 A6000008 */  sh        $zero, 8($s0)
.L80005B5C:
/* 675C 80005B5C A600000A */  sh        $zero, 0xa($s0)
/* 6760 80005B60 A6000006 */  sh        $zero, 6($s0)
/* 6764 80005B64 26310001 */  addiu     $s1, $s1, 1
.L80005B68:
/* 6768 80005B68 1632FFE4 */  bne       $s1, $s2, .L80005AFC
/* 676C 80005B6C 26100024 */  addiu     $s0, $s0, 0x24
/* 6770 80005B70 0C002CCC */  jal       func_8000B330
/* 6774 80005B74 00000000 */  nop       
/* 6778 80005B78 8FBF0024 */  lw        $ra, 0x24($sp)
/* 677C 80005B7C 8FB00018 */  lw        $s0, 0x18($sp)
/* 6780 80005B80 8FB1001C */  lw        $s1, 0x1c($sp)
/* 6784 80005B84 8FB20020 */  lw        $s2, 0x20($sp)
/* 6788 80005B88 03E00008 */  jr        $ra
/* 678C 80005B8C 27BD0028 */  addiu     $sp, $sp, 0x28

glabel func_80005B90
/* 6790 80005B90 3C02800A */  lui       $v0, 0x800a
/* 6794 80005B94 03E00008 */  jr        $ra
/* 6798 80005B98 904273C8 */  lbu       $v0, 0x73c8($v0)

glabel func_80005B9C
/* 679C 80005B9C 3C02800A */  lui       $v0, 0x800a
/* 67A0 80005BA0 904273C9 */  lbu       $v0, 0x73c9($v0)
/* 67A4 80005BA4 03E00008 */  jr        $ra
/* 67A8 80005BA8 0002102B */  sltu      $v0, $zero, $v0

glabel func_80005BAC
/* 67AC 80005BAC 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 67B0 80005BB0 3C0E800A */  lui       $t6, 0x800a
/* 67B4 80005BB4 91CE73C9 */  lbu       $t6, 0x73c9($t6)
/* 67B8 80005BB8 AFB40028 */  sw        $s4, 0x28($sp)
/* 67BC 80005BBC AFB30024 */  sw        $s3, 0x24($sp)
/* 67C0 80005BC0 00A09825 */  or        $s3, $a1, $zero
/* 67C4 80005BC4 0080A025 */  or        $s4, $a0, $zero
/* 67C8 80005BC8 AFBF002C */  sw        $ra, 0x2c($sp)
/* 67CC 80005BCC AFB20020 */  sw        $s2, 0x20($sp)
/* 67D0 80005BD0 AFB1001C */  sw        $s1, 0x1c($sp)
/* 67D4 80005BD4 AFB00018 */  sw        $s0, 0x18($sp)
/* 67D8 80005BD8 AFA60040 */  sw        $a2, 0x40($sp)
/* 67DC 80005BDC 11C00018 */  beqz      $t6, .L80005C40
/* 67E0 80005BE0 24030001 */  addiu     $v1, $zero, 1
/* 67E4 80005BE4 0C001747 */  jal       func_80005D1C
/* 67E8 80005BE8 24100004 */  addiu     $s0, $zero, 4
/* 67EC 80005BEC 8FB10040 */  lw        $s1, 0x40($sp)
/* 67F0 80005BF0 001390C2 */  srl       $s2, $s3, 3
/* 67F4 80005BF4 3C13800A */  lui       $s3, 0x800a
/* 67F8 80005BF8 2401FFF8 */  addiu     $at, $zero, -8
/* 67FC 80005BFC 26310007 */  addiu     $s1, $s1, 7
/* 6800 80005C00 02218824 */  and       $s1, $s1, $at
/* 6804 80005C04 267373B0 */  addiu     $s3, $s3, 0x73b0
/* 6808 80005C08 325200FF */  andi      $s2, $s2, 0xff
/* 680C 80005C0C 2610FFFF */  addiu     $s0, $s0, -1
.L80005C10:
/* 6810 80005C10 02602025 */  or        $a0, $s3, $zero
/* 6814 80005C14 324500FF */  andi      $a1, $s2, 0xff
/* 6818 80005C18 02803025 */  or        $a2, $s4, $zero
/* 681C 80005C1C 0C016400 */  jal       func_80059000
/* 6820 80005C20 02203825 */  or        $a3, $s1, $zero
/* 6824 80005C24 1A000003 */  blez      $s0, .L80005C34
/* 6828 80005C28 00401825 */  or        $v1, $v0, $zero
/* 682C 80005C2C 5440FFF8 */  bnel      $v0, $zero, .L80005C10
/* 6830 80005C30 2610FFFF */  addiu     $s0, $s0, -1
.L80005C34:
/* 6834 80005C34 0C001752 */  jal       func_80005D48
/* 6838 80005C38 AFA30034 */  sw        $v1, 0x34($sp)
/* 683C 80005C3C 8FA30034 */  lw        $v1, 0x34($sp)
.L80005C40:
/* 6840 80005C40 8FBF002C */  lw        $ra, 0x2c($sp)
/* 6844 80005C44 8FB00018 */  lw        $s0, 0x18($sp)
/* 6848 80005C48 8FB1001C */  lw        $s1, 0x1c($sp)
/* 684C 80005C4C 8FB20020 */  lw        $s2, 0x20($sp)
/* 6850 80005C50 8FB30024 */  lw        $s3, 0x24($sp)
/* 6854 80005C54 8FB40028 */  lw        $s4, 0x28($sp)
/* 6858 80005C58 27BD0038 */  addiu     $sp, $sp, 0x38
/* 685C 80005C5C 03E00008 */  jr        $ra
/* 6860 80005C60 00601025 */  or        $v0, $v1, $zero

glabel func_80005C64
/* 6864 80005C64 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 6868 80005C68 3C0E800A */  lui       $t6, 0x800a
/* 686C 80005C6C 91CE73C9 */  lbu       $t6, 0x73c9($t6)
/* 6870 80005C70 AFB40028 */  sw        $s4, 0x28($sp)
/* 6874 80005C74 AFB30024 */  sw        $s3, 0x24($sp)
/* 6878 80005C78 00A09825 */  or        $s3, $a1, $zero
/* 687C 80005C7C 0080A025 */  or        $s4, $a0, $zero
/* 6880 80005C80 AFBF002C */  sw        $ra, 0x2c($sp)
/* 6884 80005C84 AFB20020 */  sw        $s2, 0x20($sp)
/* 6888 80005C88 AFB1001C */  sw        $s1, 0x1c($sp)
/* 688C 80005C8C AFB00018 */  sw        $s0, 0x18($sp)
/* 6890 80005C90 AFA60040 */  sw        $a2, 0x40($sp)
/* 6894 80005C94 11C00018 */  beqz      $t6, .L80005CF8
/* 6898 80005C98 24030001 */  addiu     $v1, $zero, 1
/* 689C 80005C9C 0C001747 */  jal       func_80005D1C
/* 68A0 80005CA0 24100004 */  addiu     $s0, $zero, 4
/* 68A4 80005CA4 8FB10040 */  lw        $s1, 0x40($sp)
/* 68A8 80005CA8 001390C2 */  srl       $s2, $s3, 3
/* 68AC 80005CAC 3C13800A */  lui       $s3, 0x800a
/* 68B0 80005CB0 2401FFF8 */  addiu     $at, $zero, -8
/* 68B4 80005CB4 26310007 */  addiu     $s1, $s1, 7
/* 68B8 80005CB8 02218824 */  and       $s1, $s1, $at
/* 68BC 80005CBC 267373B0 */  addiu     $s3, $s3, 0x73b0
/* 68C0 80005CC0 325200FF */  andi      $s2, $s2, 0xff
/* 68C4 80005CC4 2610FFFF */  addiu     $s0, $s0, -1
.L80005CC8:
/* 68C8 80005CC8 02602025 */  or        $a0, $s3, $zero
/* 68CC 80005CCC 324500FF */  andi      $a1, $s2, 0xff
/* 68D0 80005CD0 02803025 */  or        $a2, $s4, $zero
/* 68D4 80005CD4 0C017914 */  jal       func_8005E450
/* 68D8 80005CD8 02203825 */  or        $a3, $s1, $zero
/* 68DC 80005CDC 1A000003 */  blez      $s0, .L80005CEC
/* 68E0 80005CE0 00401825 */  or        $v1, $v0, $zero
/* 68E4 80005CE4 5440FFF8 */  bnel      $v0, $zero, .L80005CC8
/* 68E8 80005CE8 2610FFFF */  addiu     $s0, $s0, -1
.L80005CEC:
/* 68EC 80005CEC 0C001752 */  jal       func_80005D48
/* 68F0 80005CF0 AFA30034 */  sw        $v1, 0x34($sp)
/* 68F4 80005CF4 8FA30034 */  lw        $v1, 0x34($sp)
.L80005CF8:
/* 68F8 80005CF8 8FBF002C */  lw        $ra, 0x2c($sp)
/* 68FC 80005CFC 8FB00018 */  lw        $s0, 0x18($sp)
/* 6900 80005D00 8FB1001C */  lw        $s1, 0x1c($sp)
/* 6904 80005D04 8FB20020 */  lw        $s2, 0x20($sp)
/* 6908 80005D08 8FB30024 */  lw        $s3, 0x24($sp)
/* 690C 80005D0C 8FB40028 */  lw        $s4, 0x28($sp)
/* 6910 80005D10 27BD0038 */  addiu     $sp, $sp, 0x38
/* 6914 80005D14 03E00008 */  jr        $ra
/* 6918 80005D18 00601025 */  or        $v0, $v1, $zero

glabel func_80005D1C
/* 691C 80005D1C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 6920 80005D20 AFBF0014 */  sw        $ra, 0x14($sp)
/* 6924 80005D24 3C04800A */  lui       $a0, 0x800a
/* 6928 80005D28 24847400 */  addiu     $a0, $a0, 0x7400
/* 692C 80005D2C 00002825 */  or        $a1, $zero, $zero
/* 6930 80005D30 0C015AB4 */  jal       func_80056AD0
/* 6934 80005D34 24060001 */  addiu     $a2, $zero, 1
/* 6938 80005D38 8FBF0014 */  lw        $ra, 0x14($sp)
/* 693C 80005D3C 27BD0018 */  addiu     $sp, $sp, 0x18
/* 6940 80005D40 03E00008 */  jr        $ra
/* 6944 80005D44 00000000 */  nop       

glabel func_80005D48
/* 6948 80005D48 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 694C 80005D4C AFBF0014 */  sw        $ra, 0x14($sp)
/* 6950 80005D50 3C04800A */  lui       $a0, 0x800a
/* 6954 80005D54 24847400 */  addiu     $a0, $a0, 0x7400
/* 6958 80005D58 00002825 */  or        $a1, $zero, $zero
/* 695C 80005D5C 0C015A30 */  jal       func_800568C0
/* 6960 80005D60 00003025 */  or        $a2, $zero, $zero
/* 6964 80005D64 8FBF0014 */  lw        $ra, 0x14($sp)
/* 6968 80005D68 27BD0018 */  addiu     $sp, $sp, 0x18
/* 696C 80005D6C 03E00008 */  jr        $ra
/* 6970 80005D70 00000000 */  nop       

glabel func_80005D74
/* 6974 80005D74 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 6978 80005D78 AFBF0014 */  sw        $ra, 0x14($sp)
/* 697C 80005D7C 3C04800A */  lui       $a0, 0x800a
/* 6980 80005D80 3C05800A */  lui       $a1, 0x800a
/* 6984 80005D84 24A573FC */  addiu     $a1, $a1, 0x73fc
/* 6988 80005D88 24847400 */  addiu     $a0, $a0, 0x7400
/* 698C 80005D8C 0C0178E8 */  jal       func_8005E3A0
/* 6990 80005D90 24060001 */  addiu     $a2, $zero, 1
/* 6994 80005D94 3C04800A */  lui       $a0, 0x800a
/* 6998 80005D98 24847400 */  addiu     $a0, $a0, 0x7400
/* 699C 80005D9C 00002825 */  or        $a1, $zero, $zero
/* 69A0 80005DA0 0C015A30 */  jal       func_800568C0
/* 69A4 80005DA4 00003025 */  or        $a2, $zero, $zero
/* 69A8 80005DA8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 69AC 80005DAC 27BD0018 */  addiu     $sp, $sp, 0x18
/* 69B0 80005DB0 03E00008 */  jr        $ra
/* 69B4 80005DB4 00000000 */  nop       

glabel func_80005DB8
/* 69B8 80005DB8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 69BC 80005DBC AFBF0014 */  sw        $ra, 0x14($sp)
/* 69C0 80005DC0 0C00175D */  jal       func_80005D74
/* 69C4 80005DC4 00000000 */  nop       
/* 69C8 80005DC8 3C04800A */  lui       $a0, 0x800a
/* 69CC 80005DCC 3C05800A */  lui       $a1, 0x800a
/* 69D0 80005DD0 24A573F8 */  addiu     $a1, $a1, 0x73f8
/* 69D4 80005DD4 248473B0 */  addiu     $a0, $a0, 0x73b0
/* 69D8 80005DD8 0C0178E8 */  jal       func_8005E3A0
/* 69DC 80005DDC 24060001 */  addiu     $a2, $zero, 1
/* 69E0 80005DE0 3C05800A */  lui       $a1, 0x800a
/* 69E4 80005DE4 24A573B0 */  addiu     $a1, $a1, 0x73b0
/* 69E8 80005DE8 24040005 */  addiu     $a0, $zero, 5
/* 69EC 80005DEC 0C01737C */  jal       func_8005CDF0
/* 69F0 80005DF0 00003025 */  or        $a2, $zero, $zero
/* 69F4 80005DF4 3C04800A */  lui       $a0, 0x800a
/* 69F8 80005DF8 3C05800A */  lui       $a1, 0x800a
/* 69FC 80005DFC 3C06800A */  lui       $a2, 0x800a
/* 6A00 80005E00 24C673D0 */  addiu     $a2, $a2, 0x73d0
/* 6A04 80005E04 24A573C8 */  addiu     $a1, $a1, 0x73c8
/* 6A08 80005E08 0C016218 */  jal       func_80058860
/* 6A0C 80005E0C 248473B0 */  addiu     $a0, $a0, 0x73b0
/* 6A10 80005E10 3C04800A */  lui       $a0, 0x800a
/* 6A14 80005E14 0C016F44 */  jal       func_8005BD10
/* 6A18 80005E18 248473B0 */  addiu     $a0, $a0, 0x73b0
/* 6A1C 80005E1C 3C01800A */  lui       $at, 0x800a
/* 6A20 80005E20 0C00160C */  jal       func_80005830
/* 6A24 80005E24 A02273C9 */  sb        $v0, 0x73c9($at)
/* 6A28 80005E28 8FBF0014 */  lw        $ra, 0x14($sp)
/* 6A2C 80005E2C 3C02800A */  lui       $v0, 0x800a
/* 6A30 80005E30 904273C8 */  lbu       $v0, 0x73c8($v0)
/* 6A34 80005E34 03E00008 */  jr        $ra
/* 6A38 80005E38 27BD0018 */  addiu     $sp, $sp, 0x18
/* 6A3C 80005E3C 00000000 */  nop       

glabel func_80005E40
/* 6A40 80005E40 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 6A44 80005E44 3C02800A */  lui       $v0, 0x800a
/* 6A48 80005E48 24427428 */  addiu     $v0, $v0, 0x7428
/* 6A4C 80005E4C AFBF0014 */  sw        $ra, 0x14($sp)
/* 6A50 80005E50 3C064459 */  lui       $a2, 0x4459
/* 6A54 80005E54 AFA5001C */  sw        $a1, 0x1c($sp)
/* 6A58 80005E58 A4400010 */  sh        $zero, 0x10($v0)
/* 6A5C 80005E5C AC44000C */  sw        $a0, 0xc($v0)
/* 6A60 80005E60 34C64E30 */  ori       $a2, $a2, 0x4e30
/* 6A64 80005E64 AFA40018 */  sw        $a0, 0x18($sp)
/* 6A68 80005E68 0C000953 */  jal       func_8000254C
/* 6A6C 80005E6C 00003825 */  or        $a3, $zero, $zero
/* 6A70 80005E70 3C01800A */  lui       $at, 0x800a
/* 6A74 80005E74 3C064459 */  lui       $a2, 0x4459
/* 6A78 80005E78 AC227428 */  sw        $v0, 0x7428($at)
/* 6A7C 80005E7C 8FA40018 */  lw        $a0, 0x18($sp)
/* 6A80 80005E80 34C64E31 */  ori       $a2, $a2, 0x4e31
/* 6A84 80005E84 8FA5001C */  lw        $a1, 0x1c($sp)
/* 6A88 80005E88 0C000953 */  jal       func_8000254C
/* 6A8C 80005E8C 00003825 */  or        $a3, $zero, $zero
/* 6A90 80005E90 3C01800A */  lui       $at, 0x800a
/* 6A94 80005E94 0C0017B7 */  jal       func_80005EDC
/* 6A98 80005E98 AC22742C */  sw        $v0, 0x742c($at)
/* 6A9C 80005E9C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 6AA0 80005EA0 27BD0018 */  addiu     $sp, $sp, 0x18
/* 6AA4 80005EA4 03E00008 */  jr        $ra
/* 6AA8 80005EA8 00000000 */  nop       

glabel func_80005EAC
/* 6AAC 80005EAC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 6AB0 80005EB0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 6AB4 80005EB4 3C04800A */  lui       $a0, 0x800a
/* 6AB8 80005EB8 0C000988 */  jal       func_80002620
/* 6ABC 80005EBC 8C84742C */  lw        $a0, 0x742c($a0)
/* 6AC0 80005EC0 3C04800A */  lui       $a0, 0x800a
/* 6AC4 80005EC4 0C000988 */  jal       func_80002620
/* 6AC8 80005EC8 8C847428 */  lw        $a0, 0x7428($a0)
/* 6ACC 80005ECC 8FBF0014 */  lw        $ra, 0x14($sp)
/* 6AD0 80005ED0 27BD0018 */  addiu     $sp, $sp, 0x18
/* 6AD4 80005ED4 03E00008 */  jr        $ra
/* 6AD8 80005ED8 00000000 */  nop       

glabel func_80005EDC
/* 6ADC 80005EDC 3C03800A */  lui       $v1, 0x800a
/* 6AE0 80005EE0 24637428 */  addiu     $v1, $v1, 0x7428
/* 6AE4 80005EE4 846E0010 */  lh        $t6, 0x10($v1)
/* 6AE8 80005EE8 8C69000C */  lw        $t1, 0xc($v1)
/* 6AEC 80005EEC 3C01800A */  lui       $at, 0x800a
/* 6AF0 80005EF0 39CF0001 */  xori      $t7, $t6, 1
/* 6AF4 80005EF4 A46F0010 */  sh        $t7, 0x10($v1)
/* 6AF8 80005EF8 84780010 */  lh        $t8, 0x10($v1)
/* 6AFC 80005EFC 0018C880 */  sll       $t9, $t8, 2
/* 6B00 80005F00 00791021 */  addu      $v0, $v1, $t9
/* 6B04 80005F04 8C480000 */  lw        $t0, ($v0)
/* 6B08 80005F08 01095021 */  addu      $t2, $t0, $t1
/* 6B0C 80005F0C AC6A0008 */  sw        $t2, 8($v1)
/* 6B10 80005F10 8C4B0000 */  lw        $t3, ($v0)
/* 6B14 80005F14 03E00008 */  jr        $ra
/* 6B18 80005F18 AC2B7420 */  sw        $t3, 0x7420($at)

glabel func_80005F1C
/* 6B1C 80005F1C 3C02800A */  lui       $v0, 0x800a
/* 6B20 80005F20 24427428 */  addiu     $v0, $v0, 0x7428
/* 6B24 80005F24 844F0010 */  lh        $t7, 0x10($v0)
/* 6B28 80005F28 3C0E800A */  lui       $t6, 0x800a
/* 6B2C 80005F2C 8DCE7420 */  lw        $t6, 0x7420($t6)
/* 6B30 80005F30 000FC080 */  sll       $t8, $t7, 2
/* 6B34 80005F34 0058C821 */  addu      $t9, $v0, $t8
/* 6B38 80005F38 8F280000 */  lw        $t0, ($t9)
/* 6B3C 80005F3C 01C84823 */  subu      $t1, $t6, $t0
/* 6B40 80005F40 ACA90000 */  sw        $t1, ($a1)
/* 6B44 80005F44 844A0010 */  lh        $t2, 0x10($v0)
/* 6B48 80005F48 000A5880 */  sll       $t3, $t2, 2
/* 6B4C 80005F4C 004B6021 */  addu      $t4, $v0, $t3
/* 6B50 80005F50 8D8D0000 */  lw        $t5, ($t4)
/* 6B54 80005F54 03E00008 */  jr        $ra
/* 6B58 80005F58 AC8D0000 */  sw        $t5, ($a0)

glabel func_80005F5C
/* 6B5C 80005F5C 3C05800A */  lui       $a1, 0x800a
/* 6B60 80005F60 24A57428 */  addiu     $a1, $a1, 0x7428
/* 6B64 80005F64 8CAE0008 */  lw        $t6, 8($a1)
/* 6B68 80005F68 3C0F800A */  lui       $t7, 0x800a
/* 6B6C 80005F6C 8DEF7420 */  lw        $t7, 0x7420($t7)
/* 6B70 80005F70 24840007 */  addiu     $a0, $a0, 7
/* 6B74 80005F74 2401FFF8 */  addiu     $at, $zero, -8
/* 6B78 80005F78 00812024 */  and       $a0, $a0, $at
/* 6B7C 80005F7C 01C41023 */  subu      $v0, $t6, $a0
/* 6B80 80005F80 004F082B */  sltu      $at, $v0, $t7
/* 6B84 80005F84 14200003 */  bnez      $at, .L80005F94
/* 6B88 80005F88 00001825 */  or        $v1, $zero, $zero
/* 6B8C 80005F8C ACA20008 */  sw        $v0, 8($a1)
/* 6B90 80005F90 00401825 */  or        $v1, $v0, $zero
.L80005F94:
/* 6B94 80005F94 03E00008 */  jr        $ra
/* 6B98 80005F98 00601025 */  or        $v0, $v1, $zero

glabel func_80005F9C
/* 6B9C 80005F9C 3C0E800A */  lui       $t6, 0x800a
/* 6BA0 80005FA0 3C0F800A */  lui       $t7, 0x800a
/* 6BA4 80005FA4 8DEF7420 */  lw        $t7, 0x7420($t7)
/* 6BA8 80005FA8 8DCE7430 */  lw        $t6, 0x7430($t6)
/* 6BAC 80005FAC 03E00008 */  jr        $ra
/* 6BB0 80005FB0 01CF1023 */  subu      $v0, $t6, $t7
/* 6BB4 80005FB4 00000000 */  nop       
/* 6BB8 80005FB8 00000000 */  nop       
/* 6BBC 80005FBC 00000000 */  nop       
