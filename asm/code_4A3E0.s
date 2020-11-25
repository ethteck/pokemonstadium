.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800497E0
/* 4A3E0 800497E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4A3E4 800497E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4A3E8 800497E8 AFA40018 */  sw         $a0, 0x18($sp)
/* 4A3EC 800497EC AFA5001C */  sw         $a1, 0x1c($sp)
/* 4A3F0 800497F0 AFA70024 */  sw         $a3, 0x24($sp)
/* 4A3F4 800497F4 0C012698 */  jal        func_80049A60
/* 4A3F8 800497F8 00C02025 */   or        $a0, $a2, $zero
/* 4A3FC 800497FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4A400 80049800 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4A404 80049804 03E00008 */  jr         $ra
/* 4A408 80049808 00000000 */   nop       

glabel func_8004980C
/* 4A40C 8004980C 3C098010 */  lui        $t1, 0x8010
/* 4A410 80049810 2529D6AC */  addiu      $t1, $t1, -0x2954
/* 4A414 80049814 8D220000 */  lw         $v0, ($t1)
/* 4A418 80049818 3C088010 */  lui        $t0, 0x8010
/* 4A41C 8004981C 2508D068 */  addiu      $t0, $t0, -0x2f98
/* 4A420 80049820 308700FF */  andi       $a3, $a0, 0xff
/* 4A424 80049824 000270C0 */  sll        $t6, $v0, 3
/* 4A428 80049828 010E1821 */  addu       $v1, $t0, $t6
/* 4A42C 8004982C 00077840 */  sll        $t7, $a3, 1
/* 4A430 80049830 3C198010 */  lui        $t9, 0x8010
/* 4A434 80049834 2739D008 */  addiu      $t9, $t9, -0x2ff8
/* 4A438 80049838 25F8FFE0 */  addiu      $t8, $t7, -0x20
/* 4A43C 8004983C 03195021 */  addu       $t2, $t8, $t9
/* 4A440 80049840 24CB0001 */  addiu      $t3, $a2, 1
/* 4A444 80049844 3C018010 */  lui        $at, 0x8010
/* 4A448 80049848 AC6A0000 */  sw         $t2, ($v1)
/* 4A44C 8004984C A0650004 */  sb         $a1, 4($v1)
/* 4A450 80049850 A46B0006 */  sh         $t3, 6($v1)
/* 4A454 80049854 00270821 */  addu       $at, $at, $a3
/* 4A458 80049858 A025D6A0 */  sb         $a1, -0x2960($at)
/* 4A45C 8004985C 240100C8 */  addiu      $at, $zero, 0xc8
/* 4A460 80049860 244C0001 */  addiu      $t4, $v0, 1
/* 4A464 80049864 0181001B */  divu       $zero, $t4, $at
/* 4A468 80049868 00007010 */  mfhi       $t6
/* 4A46C 8004986C 000EC0C0 */  sll        $t8, $t6, 3
/* 4A470 80049870 AD2C0000 */  sw         $t4, ($t1)
/* 4A474 80049874 0118C821 */  addu       $t9, $t0, $t8
/* 4A478 80049878 AFA40000 */  sw         $a0, ($sp)
/* 4A47C 8004987C AFA50004 */  sw         $a1, 4($sp)
/* 4A480 80049880 AFA60008 */  sw         $a2, 8($sp)
/* 4A484 80049884 AD2E0000 */  sw         $t6, ($t1)
/* 4A488 80049888 03E00008 */  jr         $ra
/* 4A48C 8004988C A7200006 */   sh        $zero, 6($t9)

glabel func_80049890
/* 4A490 80049890 308E00FF */  andi       $t6, $a0, 0xff
/* 4A494 80049894 3C028010 */  lui        $v0, 0x8010
/* 4A498 80049898 004E1021 */  addu       $v0, $v0, $t6
/* 4A49C 8004989C AFA40000 */  sw         $a0, ($sp)
/* 4A4A0 800498A0 03E00008 */  jr         $ra
/* 4A4A4 800498A4 9042D6A0 */   lbu       $v0, -0x2960($v0)

glabel func_800498A8
/* 4A4A8 800498A8 00047842 */  srl        $t7, $a0, 1
/* 4A4AC 800498AC 448F3000 */  mtc1       $t7, $f6
/* 4A4B0 800498B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4A4B4 800498B4 3C038010 */  lui        $v1, 0x8010
/* 4A4B8 800498B8 3C014980 */  lui        $at, 0x4980
/* 4A4BC 800498BC 2463D004 */  addiu      $v1, $v1, -0x2ffc
/* 4A4C0 800498C0 44812000 */  mtc1       $at, $f4
/* 4A4C4 800498C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4A4C8 800498C8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 4A4CC 800498CC AFA60020 */  sw         $a2, 0x20($sp)
/* 4A4D0 800498D0 AC6F0000 */  sw         $t7, ($v1)
/* 4A4D4 800498D4 05E10005 */  bgez       $t7, .L800498EC
/* 4A4D8 800498D8 46803220 */   cvt.s.w   $f8, $f6
/* 4A4DC 800498DC 3C014F80 */  lui        $at, 0x4f80
/* 4A4E0 800498E0 44815000 */  mtc1       $at, $f10
/* 4A4E4 800498E4 00000000 */  nop        
/* 4A4E8 800498E8 460A4200 */  add.s      $f8, $f8, $f10
.L800498EC:
/* 4A4EC 800498EC 46082403 */  div.s      $f16, $f4, $f8
/* 4A4F0 800498F0 3C018010 */  lui        $at, 0x8010
/* 4A4F4 800498F4 3C028010 */  lui        $v0, 0x8010
/* 4A4F8 800498F8 3C048010 */  lui        $a0, 0x8010
/* 4A4FC 800498FC 3C058010 */  lui        $a1, 0x8010
/* 4A500 80049900 2484D068 */  addiu      $a0, $a0, -0x2f98
/* 4A504 80049904 2442D008 */  addiu      $v0, $v0, -0x2ff8
/* 4A508 80049908 24030001 */  addiu      $v1, $zero, 1
/* 4A50C 8004990C 24180008 */  addiu      $t8, $zero, 8
/* 4A510 80049910 24A5CFB8 */  addiu      $a1, $a1, -0x3048
/* 4A514 80049914 241900FF */  addiu      $t9, $zero, 0xff
/* 4A518 80049918 E430D6E4 */  swc1       $f16, -0x291c($at)
.L8004991C:
/* 4A51C 8004991C 24420002 */  addiu      $v0, $v0, 2
/* 4A520 80049920 0044082B */  sltu       $at, $v0, $a0
/* 4A524 80049924 1420FFFD */  bnez       $at, .L8004991C
/* 4A528 80049928 A043FFFF */   sb        $v1, -1($v0)
/* 4A52C 8004992C 3C038010 */  lui        $v1, 0x8010
/* 4A530 80049930 2463D008 */  addiu      $v1, $v1, -0x2ff8
/* 4A534 80049934 24040040 */  addiu      $a0, $zero, 0x40
/* 4A538 80049938 A0780000 */  sb         $t8, ($v1)
/* 4A53C 8004993C A0600002 */  sb         $zero, 2($v1)
/* 4A540 80049940 A0600004 */  sb         $zero, 4($v1)
/* 4A544 80049944 A0600006 */  sb         $zero, 6($v1)
/* 4A548 80049948 A0640008 */  sb         $a0, 8($v1)
/* 4A54C 8004994C A060000C */  sb         $zero, 0xc($v1)
/* 4A550 80049950 A060000E */  sb         $zero, 0xe($v1)
/* 4A554 80049954 A0600010 */  sb         $zero, 0x10($v1)
/* 4A558 80049958 A0640012 */  sb         $a0, 0x12($v1)
/* 4A55C 8004995C A0600014 */  sb         $zero, 0x14($v1)
/* 4A560 80049960 A0600016 */  sb         $zero, 0x16($v1)
/* 4A564 80049964 A0600018 */  sb         $zero, 0x18($v1)
/* 4A568 80049968 A060001A */  sb         $zero, 0x1a($v1)
/* 4A56C 8004996C A064001C */  sb         $a0, 0x1c($v1)
/* 4A570 80049970 A0600020 */  sb         $zero, 0x20($v1)
/* 4A574 80049974 A0600022 */  sb         $zero, 0x22($v1)
/* 4A578 80049978 A0600024 */  sb         $zero, 0x24($v1)
/* 4A57C 8004997C A0640026 */  sb         $a0, 0x26($v1)
/* 4A580 80049980 A0600028 */  sb         $zero, 0x28($v1)
/* 4A584 80049984 A060002A */  sb         $zero, 0x2a($v1)
/* 4A588 80049988 A060002C */  sb         $zero, 0x2c($v1)
/* 4A58C 8004998C 3C038010 */  lui        $v1, 0x8010
/* 4A590 80049990 3C028010 */  lui        $v0, 0x8010
/* 4A594 80049994 2442D048 */  addiu      $v0, $v0, -0x2fb8
/* 4A598 80049998 2463D068 */  addiu      $v1, $v1, -0x2f98
.L8004999C:
/* 4A59C 8004999C 24420008 */  addiu      $v0, $v0, 8
/* 4A5A0 800499A0 A040FFFA */  sb         $zero, -6($v0)
/* 4A5A4 800499A4 A040FFFC */  sb         $zero, -4($v0)
/* 4A5A8 800499A8 A040FFFE */  sb         $zero, -2($v0)
/* 4A5AC 800499AC 1443FFFB */  bne        $v0, $v1, .L8004999C
/* 4A5B0 800499B0 A040FFF8 */   sb        $zero, -8($v0)
/* 4A5B4 800499B4 3C018010 */  lui        $at, 0x8010
/* 4A5B8 800499B8 AC20D6AC */  sw         $zero, -0x2954($at)
/* 4A5BC 800499BC 3C018010 */  lui        $at, 0x8010
/* 4A5C0 800499C0 A420D06E */  sh         $zero, -0x2f92($at)
/* 4A5C4 800499C4 3C018010 */  lui        $at, 0x8010
/* 4A5C8 800499C8 AC20D6A8 */  sw         $zero, -0x2958($at)
/* 4A5CC 800499CC 3C028010 */  lui        $v0, 0x8010
/* 4A5D0 800499D0 2442CFD8 */  addiu      $v0, $v0, -0x3028
/* 4A5D4 800499D4 3C038010 */  lui        $v1, 0x8010
/* 4A5D8 800499D8 3C048010 */  lui        $a0, 0x8010
/* 4A5DC 800499DC 2484CF90 */  addiu      $a0, $a0, -0x3070
/* 4A5E0 800499E0 2463CF60 */  addiu      $v1, $v1, -0x30a0
/* 4A5E4 800499E4 AC600000 */  sw         $zero, ($v1)
/* 4A5E8 800499E8 A060002C */  sb         $zero, 0x2c($v1)
/* 4A5EC 800499EC AC800000 */  sw         $zero, ($a0)
/* 4A5F0 800499F0 A0800024 */  sb         $zero, 0x24($a0)
/* 4A5F4 800499F4 ACA00000 */  sw         $zero, ($a1)
/* 4A5F8 800499F8 A0A0001C */  sb         $zero, 0x1c($a1)
/* 4A5FC 800499FC AC400000 */  sw         $zero, ($v0)
/* 4A600 80049A00 A0400028 */  sb         $zero, 0x28($v0)
/* 4A604 80049A04 0C012B34 */  jal        func_8004ACD0
/* 4A608 80049A08 A0590004 */   sb        $t9, 4($v0)
/* 4A60C 80049A0C 0C012B27 */  jal        func_8004AC9C
/* 4A610 80049A10 00000000 */   nop       
/* 4A614 80049A14 93A8001F */  lbu        $t0, 0x1f($sp)
/* 4A618 80049A18 8FA90020 */  lw         $t1, 0x20($sp)
/* 4A61C 80049A1C 3C018010 */  lui        $at, 0x8010
/* 4A620 80049A20 3C028010 */  lui        $v0, 0x8010
/* 4A624 80049A24 A028F97C */  sb         $t0, -0x684($at)
/* 4A628 80049A28 2442F980 */  addiu      $v0, $v0, -0x680
/* 4A62C 80049A2C 00095840 */  sll        $t3, $t1, 1
/* 4A630 80049A30 2D611141 */  sltiu      $at, $t3, 0x1141
/* 4A634 80049A34 AC490000 */  sw         $t1, ($v0)
/* 4A638 80049A38 14200003 */  bnez       $at, .L80049A48
/* 4A63C 80049A3C AC4B0000 */   sw        $t3, ($v0)
/* 4A640 80049A40 240D1140 */  addiu      $t5, $zero, 0x1140
/* 4A644 80049A44 AC4D0000 */  sw         $t5, ($v0)
.L80049A48:
/* 4A648 80049A48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4A64C 80049A4C 240E0002 */  addiu      $t6, $zero, 2
/* 4A650 80049A50 3C018010 */  lui        $at, 0x8010
/* 4A654 80049A54 AC2ED6E8 */  sw         $t6, -0x2918($at)
/* 4A658 80049A58 03E00008 */  jr         $ra
/* 4A65C 80049A5C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80049A60
/* 4A660 80049A60 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 4A664 80049A64 AFB10024 */  sw         $s1, 0x24($sp)
/* 4A668 80049A68 3C118010 */  lui        $s1, 0x8010
/* 4A66C 80049A6C 2631D6F4 */  addiu      $s1, $s1, -0x290c
/* 4A670 80049A70 3C028010 */  lui        $v0, 0x8010
/* 4A674 80049A74 8C42D6F0 */  lw         $v0, -0x2910($v0)
/* 4A678 80049A78 8E250000 */  lw         $a1, ($s1)
/* 4A67C 80049A7C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 4A680 80049A80 AFBE0040 */  sw         $fp, 0x40($sp)
/* 4A684 80049A84 AFB40030 */  sw         $s4, 0x30($sp)
/* 4A688 80049A88 4480A000 */  mtc1       $zero, $f20
/* 4A68C 80049A8C 00A2082B */  sltu       $at, $a1, $v0
/* 4A690 80049A90 AFBF0044 */  sw         $ra, 0x44($sp)
/* 4A694 80049A94 AFB7003C */  sw         $s7, 0x3c($sp)
/* 4A698 80049A98 AFB60038 */  sw         $s6, 0x38($sp)
/* 4A69C 80049A9C AFB50034 */  sw         $s5, 0x34($sp)
/* 4A6A0 80049AA0 AFB3002C */  sw         $s3, 0x2c($sp)
/* 4A6A4 80049AA4 AFB20028 */  sw         $s2, 0x28($sp)
/* 4A6A8 80049AA8 AFB00020 */  sw         $s0, 0x20($sp)
/* 4A6AC 80049AAC 24140001 */  addiu      $s4, $zero, 1
/* 4A6B0 80049AB0 1020000A */  beqz       $at, .L80049ADC
/* 4A6B4 80049AB4 0004F042 */   srl       $fp, $a0, 1
/* 4A6B8 80049AB8 001E7880 */  sll        $t7, $fp, 2
/* 4A6BC 80049ABC 24180B80 */  addiu      $t8, $zero, 0xb80
/* 4A6C0 80049AC0 030FC823 */  subu       $t9, $t8, $t7
/* 4A6C4 80049AC4 00457023 */  subu       $t6, $v0, $a1
/* 4A6C8 80049AC8 032E082B */  sltu       $at, $t9, $t6
/* 4A6CC 80049ACC 10200009 */  beqz       $at, .L80049AF4
/* 4A6D0 80049AD0 00000000 */   nop       
/* 4A6D4 80049AD4 10000007 */  b          .L80049AF4
/* 4A6D8 80049AD8 27DE0001 */   addiu     $fp, $fp, 1
.L80049ADC:
/* 4A6DC 80049ADC 00A24023 */  subu       $t0, $a1, $v0
/* 4A6E0 80049AE0 001E4880 */  sll        $t1, $fp, 2
/* 4A6E4 80049AE4 0109082B */  sltu       $at, $t0, $t1
/* 4A6E8 80049AE8 10200002 */  beqz       $at, .L80049AF4
/* 4A6EC 80049AEC 00000000 */   nop       
/* 4A6F0 80049AF0 27DE0001 */  addiu      $fp, $fp, 1
.L80049AF4:
/* 4A6F4 80049AF4 13C0008C */  beqz       $fp, .L80049D28
/* 4A6F8 80049AF8 00009025 */   or        $s2, $zero, $zero
/* 4A6FC 80049AFC 3C178010 */  lui        $s7, 0x8010
/* 4A700 80049B00 3C168010 */  lui        $s6, 0x8010
/* 4A704 80049B04 3C158010 */  lui        $s5, 0x8010
/* 4A708 80049B08 3C138010 */  lui        $s3, 0x8010
/* 4A70C 80049B0C 3C108010 */  lui        $s0, 0x8010
/* 4A710 80049B10 2610D008 */  addiu      $s0, $s0, -0x2ff8
/* 4A714 80049B14 2673F978 */  addiu      $s3, $s3, -0x688
/* 4A718 80049B18 26B5D6E0 */  addiu      $s5, $s5, -0x2920
/* 4A71C 80049B1C 26D6D6F8 */  addiu      $s6, $s6, -0x2908
/* 4A720 80049B20 26F7C6D8 */  addiu      $s7, $s7, -0x3928
.L80049B24:
/* 4A724 80049B24 44922000 */  mtc1       $s2, $f4
/* 4A728 80049B28 3C014F80 */  lui        $at, 0x4f80
/* 4A72C 80049B2C 06410004 */  bgez       $s2, .L80049B40
/* 4A730 80049B30 468021A0 */   cvt.s.w   $f6, $f4
/* 4A734 80049B34 44814000 */  mtc1       $at, $f8
/* 4A738 80049B38 00000000 */  nop        
/* 4A73C 80049B3C 46083180 */  add.s      $f6, $f6, $f8
.L80049B40:
/* 4A740 80049B40 4606A03E */  c.le.s     $f20, $f6
/* 4A744 80049B44 00000000 */  nop        
/* 4A748 80049B48 45020004 */  bc1fl      .L80049B5C
/* 4A74C 80049B4C 920A002C */   lbu       $t2, 0x2c($s0)
/* 4A750 80049B50 0C012757 */  jal        func_80049D5C
/* 4A754 80049B54 3284FFFF */   andi      $a0, $s4, 0xffff
/* 4A758 80049B58 920A002C */  lbu        $t2, 0x2c($s0)
.L80049B5C:
/* 4A75C 80049B5C 00002025 */  or         $a0, $zero, $zero
/* 4A760 80049B60 314B0080 */  andi       $t3, $t2, 0x80
/* 4A764 80049B64 51600034 */  beql       $t3, $zero, .L80049C38
/* 4A768 80049B68 8E250000 */   lw        $a1, ($s1)
/* 4A76C 80049B6C 920C0029 */  lbu        $t4, 0x29($s0)
/* 4A770 80049B70 11800009 */  beqz       $t4, .L80049B98
/* 4A774 80049B74 00000000 */   nop       
/* 4A778 80049B78 92020028 */  lbu        $v0, 0x28($s0)
/* 4A77C 80049B7C 3C018010 */  lui        $at, 0x8010
/* 4A780 80049B80 304D0007 */  andi       $t5, $v0, 7
/* 4A784 80049B84 30580070 */  andi       $t8, $v0, 0x70
/* 4A788 80049B88 A2AD0000 */  sb         $t5, ($s5)
/* 4A78C 80049B8C 00187903 */  sra        $t7, $t8, 4
/* 4A790 80049B90 A02FD6E1 */  sb         $t7, -0x291f($at)
/* 4A794 80049B94 A2000029 */  sb         $zero, 0x29($s0)
.L80049B98:
/* 4A798 80049B98 0C01277C */  jal        func_80049DF0
/* 4A79C 80049B9C 00000000 */   nop       
/* 4A7A0 80049BA0 0C01291D */  jal        func_8004A474
/* 4A7A4 80049BA4 A7A2004C */   sh        $v0, 0x4c($sp)
/* 4A7A8 80049BA8 0C012A27 */  jal        func_8004A89C
/* 4A7AC 80049BAC A7A2004E */   sh        $v0, 0x4e($sp)
/* 4A7B0 80049BB0 9205002A */  lbu        $a1, 0x2a($s0)
/* 4A7B4 80049BB4 A7A20052 */  sh         $v0, 0x52($sp)
/* 4A7B8 80049BB8 87AA004C */  lh         $t2, 0x4c($sp)
/* 4A7BC 80049BBC 30AE0002 */  andi       $t6, $a1, 2
/* 4A7C0 80049BC0 11C00003 */  beqz       $t6, .L80049BD0
/* 4A7C4 80049BC4 30B90001 */   andi      $t9, $a1, 1
/* 4A7C8 80049BC8 10000002 */  b          .L80049BD4
/* 4A7CC 80049BCC 2406FFFF */   addiu     $a2, $zero, -1
.L80049BD0:
/* 4A7D0 80049BD0 00003025 */  or         $a2, $zero, $zero
.L80049BD4:
/* 4A7D4 80049BD4 13200003 */  beqz       $t9, .L80049BE4
/* 4A7D8 80049BD8 30A80008 */   andi      $t0, $a1, 8
/* 4A7DC 80049BDC 10000002 */  b          .L80049BE8
/* 4A7E0 80049BE0 2407FFFF */   addiu     $a3, $zero, -1
.L80049BE4:
/* 4A7E4 80049BE4 00003825 */  or         $a3, $zero, $zero
.L80049BE8:
/* 4A7E8 80049BE8 11000003 */  beqz       $t0, .L80049BF8
/* 4A7EC 80049BEC 01475824 */   and       $t3, $t2, $a3
/* 4A7F0 80049BF0 10000002 */  b          .L80049BFC
/* 4A7F4 80049BF4 2403FFFF */   addiu     $v1, $zero, -1
.L80049BF8:
/* 4A7F8 80049BF8 00001825 */  or         $v1, $zero, $zero
.L80049BFC:
/* 4A7FC 80049BFC 87AD004E */  lh         $t5, 0x4e($sp)
/* 4A800 80049C00 92B90000 */  lbu        $t9, ($s5)
/* 4A804 80049C04 00624824 */  and        $t1, $v1, $v0
/* 4A808 80049C08 012B6021 */  addu       $t4, $t1, $t3
/* 4A80C 80049C0C 01A6C024 */  and        $t8, $t5, $a2
/* 4A810 80049C10 01987821 */  addu       $t7, $t4, $t8
/* 4A814 80049C14 000F7142 */  srl        $t6, $t7, 5
/* 4A818 80049C18 27280001 */  addiu      $t0, $t9, 1
/* 4A81C 80049C1C 01C80019 */  multu      $t6, $t0
/* 4A820 80049C20 8E250000 */  lw         $a1, ($s1)
/* 4A824 80049C24 00002012 */  mflo       $a0
/* 4A828 80049C28 00042400 */  sll        $a0, $a0, 0x10
/* 4A82C 80049C2C 10000002 */  b          .L80049C38
/* 4A830 80049C30 00042403 */   sra       $a0, $a0, 0x10
/* 4A834 80049C34 8E250000 */  lw         $a1, ($s1)
.L80049C38:
/* 4A838 80049C38 3C068010 */  lui        $a2, 0x8010
/* 4A83C 80049C3C 90C6F97C */  lbu        $a2, -0x684($a2)
/* 4A840 80049C40 3C0A8010 */  lui        $t2, 0x8010
/* 4A844 80049C44 26940001 */  addiu      $s4, $s4, 1
/* 4A848 80049C48 50C00023 */  beql       $a2, $zero, .L80049CD8
/* 4A84C 80049C4C 8EF90000 */   lw        $t9, ($s7)
/* 4A850 80049C50 8E620000 */  lw         $v0, ($s3)
/* 4A854 80049C54 8D4AF980 */  lw         $t2, -0x680($t2)
/* 4A858 80049C58 24011140 */  addiu      $at, $zero, 0x1140
/* 4A85C 80049C5C 004A4823 */  subu       $t1, $v0, $t2
/* 4A860 80049C60 252B1140 */  addiu      $t3, $t1, 0x1140
/* 4A864 80049C64 0161001B */  divu       $zero, $t3, $at
/* 4A868 80049C68 00006810 */  mfhi       $t5
/* 4A86C 80049C6C 000D6040 */  sll        $t4, $t5, 1
/* 4A870 80049C70 02CCC021 */  addu       $t8, $s6, $t4
/* 4A874 80049C74 870F0000 */  lh         $t7, ($t8)
/* 4A878 80049C78 00026840 */  sll        $t5, $v0, 1
/* 4A87C 80049C7C 02CD6021 */  addu       $t4, $s6, $t5
/* 4A880 80049C80 448F5000 */  mtc1       $t7, $f10
/* 4A884 80049C84 24580001 */  addiu      $t8, $v0, 1
/* 4A888 80049C88 2F011140 */  sltiu      $at, $t8, 0x1140
/* 4A88C 80049C8C 46805420 */  cvt.s.w    $f16, $f10
/* 4A890 80049C90 270FEEC0 */  addiu      $t7, $t8, -0x1140
/* 4A894 80049C94 4600848D */  trunc.w.s  $f18, $f16
/* 4A898 80049C98 44039000 */  mfc1       $v1, $f18
/* 4A89C 80049C9C 00000000 */  nop        
/* 4A8A0 80049CA0 00031C00 */  sll        $v1, $v1, 0x10
/* 4A8A4 80049CA4 00031C03 */  sra        $v1, $v1, 0x10
/* 4A8A8 80049CA8 00647023 */  subu       $t6, $v1, $a0
/* 4A8AC 80049CAC 01C60019 */  multu      $t6, $a2
/* 4A8B0 80049CB0 00004012 */  mflo       $t0
/* 4A8B4 80049CB4 00085A03 */  sra        $t3, $t0, 8
/* 4A8B8 80049CB8 008B2021 */  addu       $a0, $a0, $t3
/* 4A8BC 80049CBC 00042400 */  sll        $a0, $a0, 0x10
/* 4A8C0 80049CC0 00042403 */  sra        $a0, $a0, 0x10
/* 4A8C4 80049CC4 A5840000 */  sh         $a0, ($t4)
/* 4A8C8 80049CC8 14200002 */  bnez       $at, .L80049CD4
/* 4A8CC 80049CCC AE780000 */   sw        $t8, ($s3)
/* 4A8D0 80049CD0 AE6F0000 */  sw         $t7, ($s3)
.L80049CD4:
/* 4A8D4 80049CD4 8EF90000 */  lw         $t9, ($s7)
.L80049CD8:
/* 4A8D8 80049CD8 00057040 */  sll        $t6, $a1, 1
/* 4A8DC 80049CDC 032E4021 */  addu       $t0, $t9, $t6
/* 4A8E0 80049CE0 A5040000 */  sh         $a0, ($t0)
/* 4A8E4 80049CE4 8E290000 */  lw         $t1, ($s1)
/* 4A8E8 80049CE8 8EEA0000 */  lw         $t2, ($s7)
/* 4A8EC 80049CEC 00095840 */  sll        $t3, $t1, 1
/* 4A8F0 80049CF0 014B6821 */  addu       $t5, $t2, $t3
/* 4A8F4 80049CF4 A5A40002 */  sh         $a0, 2($t5)
/* 4A8F8 80049CF8 8E2C0000 */  lw         $t4, ($s1)
/* 4A8FC 80049CFC 25980002 */  addiu      $t8, $t4, 2
/* 4A900 80049D00 2F010B80 */  sltiu      $at, $t8, 0xb80
/* 4A904 80049D04 14200003 */  bnez       $at, .L80049D14
/* 4A908 80049D08 AE380000 */   sw        $t8, ($s1)
/* 4A90C 80049D0C 270FF480 */  addiu      $t7, $t8, -0xb80
/* 4A910 80049D10 AE2F0000 */  sw         $t7, ($s1)
.L80049D14:
/* 4A914 80049D14 3C018010 */  lui        $at, 0x8010
/* 4A918 80049D18 C424D6E4 */  lwc1       $f4, -0x291c($at)
/* 4A91C 80049D1C 26520001 */  addiu      $s2, $s2, 1
/* 4A920 80049D20 165EFF80 */  bne        $s2, $fp, .L80049B24
/* 4A924 80049D24 4604A500 */   add.s     $f20, $f20, $f4
.L80049D28:
/* 4A928 80049D28 8FBF0044 */  lw         $ra, 0x44($sp)
/* 4A92C 80049D2C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 4A930 80049D30 8FB00020 */  lw         $s0, 0x20($sp)
/* 4A934 80049D34 8FB10024 */  lw         $s1, 0x24($sp)
/* 4A938 80049D38 8FB20028 */  lw         $s2, 0x28($sp)
/* 4A93C 80049D3C 8FB3002C */  lw         $s3, 0x2c($sp)
/* 4A940 80049D40 8FB40030 */  lw         $s4, 0x30($sp)
/* 4A944 80049D44 8FB50034 */  lw         $s5, 0x34($sp)
/* 4A948 80049D48 8FB60038 */  lw         $s6, 0x38($sp)
/* 4A94C 80049D4C 8FB7003C */  lw         $s7, 0x3c($sp)
/* 4A950 80049D50 8FBE0040 */  lw         $fp, 0x40($sp)
/* 4A954 80049D54 03E00008 */  jr         $ra
/* 4A958 80049D58 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_80049D5C
/* 4A95C 80049D5C 3C078010 */  lui        $a3, 0x8010
/* 4A960 80049D60 24E7D6A8 */  addiu      $a3, $a3, -0x2958
/* 4A964 80049D64 8CEE0000 */  lw         $t6, ($a3)
/* 4A968 80049D68 3C068010 */  lui        $a2, 0x8010
/* 4A96C 80049D6C 24C6D068 */  addiu      $a2, $a2, -0x2f98
/* 4A970 80049D70 000E78C0 */  sll        $t7, $t6, 3
/* 4A974 80049D74 00CF1821 */  addu       $v1, $a2, $t7
/* 4A978 80049D78 94780006 */  lhu        $t8, 6($v1)
/* 4A97C 80049D7C 3085FFFF */  andi       $a1, $a0, 0xffff
/* 4A980 80049D80 AFA40000 */  sw         $a0, ($sp)
/* 4A984 80049D84 0305082A */  slt        $at, $t8, $a1
/* 4A988 80049D88 14200017 */  bnez       $at, .L80049DE8
/* 4A98C 80049D8C 24040001 */   addiu     $a0, $zero, 1
/* 4A990 80049D90 90790004 */  lbu        $t9, 4($v1)
.L80049D94:
/* 4A994 80049D94 8C680000 */  lw         $t0, ($v1)
/* 4A998 80049D98 A1190000 */  sb         $t9, ($t0)
/* 4A99C 80049D9C 8CE90000 */  lw         $t1, ($a3)
/* 4A9A0 80049DA0 000950C0 */  sll        $t2, $t1, 3
/* 4A9A4 80049DA4 00CA5821 */  addu       $t3, $a2, $t2
/* 4A9A8 80049DA8 8D6C0000 */  lw         $t4, ($t3)
/* 4A9AC 80049DAC A1840001 */  sb         $a0, 1($t4)
/* 4A9B0 80049DB0 8CED0000 */  lw         $t5, ($a3)
/* 4A9B4 80049DB4 25AE0001 */  addiu      $t6, $t5, 1
/* 4A9B8 80049DB8 2DC100C8 */  sltiu      $at, $t6, 0xc8
/* 4A9BC 80049DBC ACEE0000 */  sw         $t6, ($a3)
/* 4A9C0 80049DC0 14200003 */  bnez       $at, .L80049DD0
/* 4A9C4 80049DC4 01C01025 */   or        $v0, $t6, $zero
/* 4A9C8 80049DC8 25C2FF38 */  addiu      $v0, $t6, -0xc8
/* 4A9CC 80049DCC ACE20000 */  sw         $v0, ($a3)
.L80049DD0:
/* 4A9D0 80049DD0 0002C0C0 */  sll        $t8, $v0, 3
/* 4A9D4 80049DD4 00D81821 */  addu       $v1, $a2, $t8
/* 4A9D8 80049DD8 94790006 */  lhu        $t9, 6($v1)
/* 4A9DC 80049DDC 0325082A */  slt        $at, $t9, $a1
/* 4A9E0 80049DE0 5020FFEC */  beql       $at, $zero, .L80049D94
/* 4A9E4 80049DE4 90790004 */   lbu       $t9, 4($v1)
.L80049DE8:
/* 4A9E8 80049DE8 03E00008 */  jr         $ra
/* 4A9EC 80049DEC 00000000 */   nop       

glabel func_80049DF0
/* 4A9F0 80049DF0 3C0E8010 */  lui        $t6, 0x8010
/* 4A9F4 80049DF4 91CED009 */  lbu        $t6, -0x2ff7($t6)
/* 4A9F8 80049DF8 00001025 */  or         $v0, $zero, $zero
/* 4A9FC 80049DFC 24030001 */  addiu      $v1, $zero, 1
/* 4AA00 80049E00 11C00004 */  beqz       $t6, .L80049E14
/* 4AA04 80049E04 3C058010 */   lui       $a1, 0x8010
/* 4AA08 80049E08 3C018010 */  lui        $at, 0x8010
/* 4AA0C 80049E0C A020D009 */  sb         $zero, -0x2ff7($at)
/* 4AA10 80049E10 24020001 */  addiu      $v0, $zero, 1
.L80049E14:
/* 4AA14 80049E14 24A5D008 */  addiu      $a1, $a1, -0x2ff8
/* 4AA18 80049E18 00037840 */  sll        $t7, $v1, 1
/* 4AA1C 80049E1C 00AF2021 */  addu       $a0, $a1, $t7
/* 4AA20 80049E20 90980001 */  lbu        $t8, 1($a0)
/* 4AA24 80049E24 3C038010 */  lui        $v1, 0x8010
/* 4AA28 80049E28 24060800 */  addiu      $a2, $zero, 0x800
/* 4AA2C 80049E2C 13000003 */  beqz       $t8, .L80049E3C
/* 4AA30 80049E30 2463CF60 */   addiu     $v1, $v1, -0x30a0
/* 4AA34 80049E34 24020001 */  addiu      $v0, $zero, 1
/* 4AA38 80049E38 A0800001 */  sb         $zero, 1($a0)
.L80049E3C:
/* 4AA3C 80049E3C 90990003 */  lbu        $t9, 3($a0)
/* 4AA40 80049E40 53200004 */  beql       $t9, $zero, .L80049E54
/* 4AA44 80049E44 908C0005 */   lbu       $t4, 5($a0)
/* 4AA48 80049E48 24020001 */  addiu      $v0, $zero, 1
/* 4AA4C 80049E4C A0800003 */  sb         $zero, 3($a0)
/* 4AA50 80049E50 908C0005 */  lbu        $t4, 5($a0)
.L80049E54:
/* 4AA54 80049E54 51800004 */  beql       $t4, $zero, .L80049E68
/* 4AA58 80049E58 908D0007 */   lbu       $t5, 7($a0)
/* 4AA5C 80049E5C 24020001 */  addiu      $v0, $zero, 1
/* 4AA60 80049E60 A0800005 */  sb         $zero, 5($a0)
/* 4AA64 80049E64 908D0007 */  lbu        $t5, 7($a0)
.L80049E68:
/* 4AA68 80049E68 11A00003 */  beqz       $t5, .L80049E78
/* 4AA6C 80049E6C 00000000 */   nop       
/* 4AA70 80049E70 24020001 */  addiu      $v0, $zero, 1
/* 4AA74 80049E74 A0800007 */  sb         $zero, 7($a0)
.L80049E78:
/* 4AA78 80049E78 504000AE */  beql       $v0, $zero, .L8004A134
/* 4AA7C 80049E7C 906C002C */   lbu       $t4, 0x2c($v1)
/* 4AA80 80049E80 90A40008 */  lbu        $a0, 8($a1)
/* 4AA84 80049E84 90AE0006 */  lbu        $t6, 6($a1)
/* 4AA88 80049E88 3C038010 */  lui        $v1, 0x8010
/* 4AA8C 80049E8C 30980007 */  andi       $t8, $a0, 7
/* 4AA90 80049E90 0018CA00 */  sll        $t9, $t8, 8
/* 4AA94 80049E94 2463CF60 */  addiu      $v1, $v1, -0x30a0
/* 4AA98 80049E98 01D96025 */  or         $t4, $t6, $t9
/* 4AA9C 80049E9C A46C0004 */  sh         $t4, 4($v1)
/* 4AAA0 80049EA0 3C028010 */  lui        $v0, 0x8010
/* 4AAA4 80049EA4 8C42D004 */  lw         $v0, -0x2ffc($v0)
/* 4AAA8 80049EA8 318DFFFF */  andi       $t5, $t4, 0xffff
/* 4AAAC 80049EAC 00CD7823 */  subu       $t7, $a2, $t5
/* 4AAB0 80049EB0 01E20019 */  multu      $t7, $v0
/* 4AAB4 80049EB4 90A90002 */  lbu        $t1, 2($a1)
/* 4AAB8 80049EB8 24010001 */  addiu      $at, $zero, 1
/* 4AABC 80049EBC 312800C0 */  andi       $t0, $t1, 0xc0
/* 4AAC0 80049EC0 00084183 */  sra        $t0, $t0, 6
/* 4AAC4 80049EC4 0000C012 */  mflo       $t8
/* 4AAC8 80049EC8 001872C2 */  srl        $t6, $t8, 0xb
/* 4AACC 80049ECC 11000009 */  beqz       $t0, .L80049EF4
/* 4AAD0 80049ED0 AC6E0024 */   sw        $t6, 0x24($v1)
/* 4AAD4 80049ED4 11010015 */  beq        $t0, $at, .L80049F2C
/* 4AAD8 80049ED8 24010002 */   addiu     $at, $zero, 2
/* 4AADC 80049EDC 11010021 */  beq        $t0, $at, .L80049F64
/* 4AAE0 80049EE0 24010003 */   addiu     $at, $zero, 3
/* 4AAE4 80049EE4 5101002E */  beql       $t0, $at, .L80049FA0
/* 4AAE8 80049EE8 8C6F0024 */   lw        $t7, 0x24($v1)
/* 4AAEC 80049EEC 1000003A */  b          .L80049FD8
/* 4AAF0 80049EF0 8C6D0024 */   lw        $t5, 0x24($v1)
.L80049EF4:
/* 4AAF4 80049EF4 8C790024 */  lw         $t9, 0x24($v1)
/* 4AAF8 80049EF8 240D0040 */  addiu      $t5, $zero, 0x40
/* 4AAFC 80049EFC 001960C2 */  srl        $t4, $t9, 3
/* 4AB00 80049F00 3188FFFF */  andi       $t0, $t4, 0xffff
/* 4AB04 80049F04 29010040 */  slti       $at, $t0, 0x40
/* 4AB08 80049F08 10200003 */  beqz       $at, .L80049F18
/* 4AB0C 80049F0C A46C001A */   sh        $t4, 0x1a($v1)
/* 4AB10 80049F10 A46D001A */  sh         $t5, 0x1a($v1)
/* 4AB14 80049F14 31A8FFFF */  andi       $t0, $t5, 0xffff
.L80049F18:
/* 4AB18 80049F18 8C6F0024 */  lw         $t7, 0x24($v1)
/* 4AB1C 80049F1C 24070001 */  addiu      $a3, $zero, 1
/* 4AB20 80049F20 01E8C023 */  subu       $t8, $t7, $t0
/* 4AB24 80049F24 1000002F */  b          .L80049FE4
/* 4AB28 80049F28 A4780018 */   sh        $t8, 0x18($v1)
.L80049F2C:
/* 4AB2C 80049F2C 8C6E0024 */  lw         $t6, 0x24($v1)
/* 4AB30 80049F30 000EC882 */  srl        $t9, $t6, 2
/* 4AB34 80049F34 3328FFFF */  andi       $t0, $t9, 0xffff
/* 4AB38 80049F38 29010040 */  slti       $at, $t0, 0x40
/* 4AB3C 80049F3C 10200004 */  beqz       $at, .L80049F50
/* 4AB40 80049F40 A479001A */   sh        $t9, 0x1a($v1)
/* 4AB44 80049F44 240C0040 */  addiu      $t4, $zero, 0x40
/* 4AB48 80049F48 A46C001A */  sh         $t4, 0x1a($v1)
/* 4AB4C 80049F4C 3188FFFF */  andi       $t0, $t4, 0xffff
.L80049F50:
/* 4AB50 80049F50 8C6D0024 */  lw         $t5, 0x24($v1)
/* 4AB54 80049F54 00003825 */  or         $a3, $zero, $zero
/* 4AB58 80049F58 01A87823 */  subu       $t7, $t5, $t0
/* 4AB5C 80049F5C 10000021 */  b          .L80049FE4
/* 4AB60 80049F60 A46F0018 */   sh        $t7, 0x18($v1)
.L80049F64:
/* 4AB64 80049F64 8C780024 */  lw         $t8, 0x24($v1)
/* 4AB68 80049F68 00187042 */  srl        $t6, $t8, 1
/* 4AB6C 80049F6C 31C8FFFF */  andi       $t0, $t6, 0xffff
/* 4AB70 80049F70 29010040 */  slti       $at, $t0, 0x40
/* 4AB74 80049F74 10200004 */  beqz       $at, .L80049F88
/* 4AB78 80049F78 A46E001A */   sh        $t6, 0x1a($v1)
/* 4AB7C 80049F7C 24190040 */  addiu      $t9, $zero, 0x40
/* 4AB80 80049F80 A479001A */  sh         $t9, 0x1a($v1)
/* 4AB84 80049F84 3328FFFF */  andi       $t0, $t9, 0xffff
.L80049F88:
/* 4AB88 80049F88 8C6C0024 */  lw         $t4, 0x24($v1)
/* 4AB8C 80049F8C 00003825 */  or         $a3, $zero, $zero
/* 4AB90 80049F90 01886823 */  subu       $t5, $t4, $t0
/* 4AB94 80049F94 10000013 */  b          .L80049FE4
/* 4AB98 80049F98 A46D0018 */   sh        $t5, 0x18($v1)
/* 4AB9C 80049F9C 8C6F0024 */  lw         $t7, 0x24($v1)
.L80049FA0:
/* 4ABA0 80049FA0 000FC082 */  srl        $t8, $t7, 2
/* 4ABA4 80049FA4 3308FFFF */  andi       $t0, $t8, 0xffff
/* 4ABA8 80049FA8 29010040 */  slti       $at, $t0, 0x40
/* 4ABAC 80049FAC 10200004 */  beqz       $at, .L80049FC0
/* 4ABB0 80049FB0 A4780018 */   sh        $t8, 0x18($v1)
/* 4ABB4 80049FB4 240E0040 */  addiu      $t6, $zero, 0x40
/* 4ABB8 80049FB8 A46E0018 */  sh         $t6, 0x18($v1)
/* 4ABBC 80049FBC 31C8FFFF */  andi       $t0, $t6, 0xffff
.L80049FC0:
/* 4ABC0 80049FC0 8C790024 */  lw         $t9, 0x24($v1)
/* 4ABC4 80049FC4 24070001 */  addiu      $a3, $zero, 1
/* 4ABC8 80049FC8 03286023 */  subu       $t4, $t9, $t0
/* 4ABCC 80049FCC 10000005 */  b          .L80049FE4
/* 4ABD0 80049FD0 A46C001A */   sh        $t4, 0x1a($v1)
/* 4ABD4 80049FD4 8C6D0024 */  lw         $t5, 0x24($v1)
.L80049FD8:
/* 4ABD8 80049FD8 A460001A */  sh         $zero, 0x1a($v1)
/* 4ABDC 80049FDC 24070001 */  addiu      $a3, $zero, 1
/* 4ABE0 80049FE0 A46D0018 */  sh         $t5, 0x18($v1)
.L80049FE4:
/* 4ABE4 80049FE4 90A80004 */  lbu        $t0, 4($a1)
/* 4ABE8 80049FE8 310A0008 */  andi       $t2, $t0, 8
/* 4ABEC 80049FEC 15400009 */  bnez       $t2, .L8004A014
/* 4ABF0 80049FF0 310F00F0 */   andi      $t7, $t0, 0xf0
/* 4ABF4 80049FF4 15E00007 */  bnez       $t7, .L8004A014
/* 4ABF8 80049FF8 00000000 */   nop       
/* 4ABFC 80049FFC 90B8002C */  lbu        $t8, 0x2c($a1)
/* 4AC00 8004A000 A060002C */  sb         $zero, 0x2c($v1)
/* 4AC04 8004A004 00001025 */  or         $v0, $zero, $zero
/* 4AC08 8004A008 330EFFFE */  andi       $t6, $t8, 0xfffe
/* 4AC0C 8004A00C 03E00008 */  jr         $ra
/* 4AC10 8004A010 A0AE002C */   sb        $t6, 0x2c($a1)
.L8004A014:
/* 4AC14 8004A014 1140000D */  beqz       $t2, .L8004A04C
/* 4AC18 8004A018 30980080 */   andi      $t8, $a0, 0x80
/* 4AC1C 8004A01C 311900F0 */  andi       $t9, $t0, 0xf0
/* 4AC20 8004A020 1720000A */  bnez       $t9, .L8004A04C
/* 4AC24 8004A024 00000000 */   nop       
/* 4AC28 8004A028 310C0007 */  andi       $t4, $t0, 7
/* 4AC2C 8004A02C 15800007 */  bnez       $t4, .L8004A04C
/* 4AC30 8004A030 00000000 */   nop       
/* 4AC34 8004A034 90AD002C */  lbu        $t5, 0x2c($a1)
/* 4AC38 8004A038 A060002C */  sb         $zero, 0x2c($v1)
/* 4AC3C 8004A03C 00001025 */  or         $v0, $zero, $zero
/* 4AC40 8004A040 31AFFFFE */  andi       $t7, $t5, 0xfffe
/* 4AC44 8004A044 03E00008 */  jr         $ra
/* 4AC48 8004A048 A0AF002C */   sb        $t7, 0x2c($a1)
.L8004A04C:
/* 4AC4C 8004A04C 13000033 */  beqz       $t8, .L8004A11C
/* 4AC50 8004A050 2401FF7F */   addiu     $at, $zero, -0x81
/* 4AC54 8004A054 310C00F0 */  andi       $t4, $t0, 0xf0
/* 4AC58 8004A058 240E0001 */  addiu      $t6, $zero, 1
/* 4AC5C 8004A05C 000C69C0 */  sll        $t5, $t4, 7
/* 4AC60 8004A060 310B0007 */  andi       $t3, $t0, 7
/* 4AC64 8004A064 AC600000 */  sw         $zero, ($v1)
/* 4AC68 8004A068 A06E002C */  sb         $t6, 0x2c($v1)
/* 4AC6C 8004A06C A067001E */  sb         $a3, 0x1e($v1)
/* 4AC70 8004A070 A460001C */  sh         $zero, 0x1c($v1)
/* 4AC74 8004A074 AC600020 */  sw         $zero, 0x20($v1)
/* 4AC78 8004A078 1160000C */  beqz       $t3, .L8004A0AC
/* 4AC7C 8004A07C A46D000C */   sh        $t5, 0xc($v1)
/* 4AC80 8004A080 11400003 */  beqz       $t2, .L8004A090
/* 4AC84 8004A084 240FF800 */   addiu     $t7, $zero, -0x800
/* 4AC88 8004A088 10000002 */  b          .L8004A094
/* 4AC8C 8004A08C A466000E */   sh        $a2, 0xe($v1)
.L8004A090:
/* 4AC90 8004A090 A46F000E */  sh         $t7, 0xe($v1)
.L8004A094:
/* 4AC94 8004A094 01620019 */  multu      $t3, $v0
/* 4AC98 8004A098 2407FFFF */  addiu      $a3, $zero, -1
/* 4AC9C 8004A09C 0000C012 */  mflo       $t8
/* 4ACA0 8004A0A0 AC780010 */  sw         $t8, 0x10($v1)
/* 4ACA4 8004A0A4 10000005 */  b          .L8004A0BC
/* 4ACA8 8004A0A8 AC780014 */   sw        $t8, 0x14($v1)
.L8004A0AC:
/* 4ACAC 8004A0AC 2407FFFF */  addiu      $a3, $zero, -1
/* 4ACB0 8004A0B0 A460000E */  sh         $zero, 0xe($v1)
/* 4ACB4 8004A0B4 AC670010 */  sw         $a3, 0x10($v1)
/* 4ACB8 8004A0B8 AC670014 */  sw         $a3, 0x14($v1)
.L8004A0BC:
/* 4ACBC 8004A0BC 90B90000 */  lbu        $t9, ($a1)
/* 4ACC0 8004A0C0 332C0070 */  andi       $t4, $t9, 0x70
/* 4ACC4 8004A0C4 000C6903 */  sra        $t5, $t4, 4
/* 4ACC8 8004A0C8 01A20019 */  multu      $t5, $v0
/* 4ACCC 8004A0CC 30990040 */  andi       $t9, $a0, 0x40
/* 4ACD0 8004A0D0 240D0040 */  addiu      $t5, $zero, 0x40
/* 4ACD4 8004A0D4 00007812 */  mflo       $t7
/* 4ACD8 8004A0D8 000FC042 */  srl        $t8, $t7, 1
/* 4ACDC 8004A0DC AC780008 */  sw         $t8, 8($v1)
/* 4ACE0 8004A0E0 17000002 */  bnez       $t8, .L8004A0EC
/* 4ACE4 8004A0E4 03007025 */   or        $t6, $t8, $zero
/* 4ACE8 8004A0E8 AC670008 */  sw         $a3, 8($v1)
.L8004A0EC:
/* 4ACEC 8004A0EC 53200009 */  beql       $t9, $zero, .L8004A114
/* 4ACF0 8004A0F0 AC670028 */   sw        $a3, 0x28($v1)
/* 4ACF4 8004A0F4 312C003F */  andi       $t4, $t1, 0x3f
/* 4ACF8 8004A0F8 01AC7823 */  subu       $t7, $t5, $t4
/* 4ACFC 8004A0FC 01E20019 */  multu      $t7, $v0
/* 4AD00 8004A100 0000C012 */  mflo       $t8
/* 4AD04 8004A104 00187082 */  srl        $t6, $t8, 2
/* 4AD08 8004A108 10000002 */  b          .L8004A114
/* 4AD0C 8004A10C AC6E0028 */   sw        $t6, 0x28($v1)
/* 4AD10 8004A110 AC670028 */  sw         $a3, 0x28($v1)
.L8004A114:
/* 4AD14 8004A114 0081C824 */  and        $t9, $a0, $at
/* 4AD18 8004A118 A0B90008 */  sb         $t9, 8($a1)
.L8004A11C:
/* 4AD1C 8004A11C 906D002C */  lbu        $t5, 0x2c($v1)
/* 4AD20 8004A120 55A00009 */  bnel       $t5, $zero, .L8004A148
/* 4AD24 8004A124 8C640000 */   lw        $a0, ($v1)
/* 4AD28 8004A128 03E00008 */  jr         $ra
/* 4AD2C 8004A12C 00001025 */   or        $v0, $zero, $zero
/* 4AD30 8004A130 906C002C */  lbu        $t4, 0x2c($v1)
.L8004A134:
/* 4AD34 8004A134 55800004 */  bnel       $t4, $zero, .L8004A148
/* 4AD38 8004A138 8C640000 */   lw        $a0, ($v1)
/* 4AD3C 8004A13C 03E00008 */  jr         $ra
/* 4AD40 8004A140 00001025 */   or        $v0, $zero, $zero
/* 4AD44 8004A144 8C640000 */  lw         $a0, ($v1)
.L8004A148:
/* 4AD48 8004A148 8C6F0028 */  lw         $t7, 0x28($v1)
/* 4AD4C 8004A14C 24060800 */  addiu      $a2, $zero, 0x800
/* 4AD50 8004A150 2407FFFF */  addiu      $a3, $zero, -1
/* 4AD54 8004A154 01E4082B */  sltu       $at, $t7, $a0
/* 4AD58 8004A158 50200008 */  beql       $at, $zero, .L8004A17C
/* 4AD5C 8004A15C 8C620008 */   lw        $v0, 8($v1)
/* 4AD60 8004A160 90B8002C */  lbu        $t8, 0x2c($a1)
/* 4AD64 8004A164 A060002C */  sb         $zero, 0x2c($v1)
/* 4AD68 8004A168 00001025 */  or         $v0, $zero, $zero
/* 4AD6C 8004A16C 330EFFFE */  andi       $t6, $t8, 0xfffe
/* 4AD70 8004A170 03E00008 */  jr         $ra
/* 4AD74 8004A174 A0AE002C */   sb        $t6, 0x2c($a1)
/* 4AD78 8004A178 8C620008 */  lw         $v0, 8($v1)
.L8004A17C:
/* 4AD7C 8004A17C 0082001B */  divu       $zero, $a0, $v0
/* 4AD80 8004A180 0000C810 */  mfhi       $t9
/* 4AD84 8004A184 00596823 */  subu       $t5, $v0, $t9
/* 4AD88 8004A188 2DA10041 */  sltiu      $at, $t5, 0x41
/* 4AD8C 8004A18C 14400002 */  bnez       $v0, .L8004A198
/* 4AD90 8004A190 00000000 */   nop       
/* 4AD94 8004A194 0007000D */  break      7
.L8004A198:
/* 4AD98 8004A198 1020007B */   beqz      $at, .L8004A388
/* 4AD9C 8004A19C 00000000 */   nop       
/* 4ADA0 8004A1A0 90A80000 */  lbu        $t0, ($a1)
/* 4ADA4 8004A1A4 310C0008 */  andi       $t4, $t0, 8
/* 4ADA8 8004A1A8 55800018 */  bnel       $t4, $zero, .L8004A20C
/* 4ADAC 8004A1AC 94620004 */   lhu       $v0, 4($v1)
/* 4ADB0 8004A1B0 94620004 */  lhu        $v0, 4($v1)
/* 4ADB4 8004A1B4 310F0007 */  andi       $t7, $t0, 7
/* 4ADB8 8004A1B8 01E2C007 */  srav       $t8, $v0, $t7
/* 4ADBC 8004A1BC 03024821 */  addu       $t1, $t8, $v0
/* 4ADC0 8004A1C0 3129FFFF */  andi       $t1, $t1, 0xffff
/* 4ADC4 8004A1C4 29210800 */  slti       $at, $t1, 0x800
/* 4ADC8 8004A1C8 54200008 */  bnel       $at, $zero, .L8004A1EC
/* 4ADCC 8004A1CC A4690004 */   sh        $t1, 4($v1)
/* 4ADD0 8004A1D0 90AE002C */  lbu        $t6, 0x2c($a1)
/* 4ADD4 8004A1D4 A060002C */  sb         $zero, 0x2c($v1)
/* 4ADD8 8004A1D8 00001025 */  or         $v0, $zero, $zero
/* 4ADDC 8004A1DC 31D9FFFE */  andi       $t9, $t6, 0xfffe
/* 4ADE0 8004A1E0 03E00008 */  jr         $ra
/* 4ADE4 8004A1E4 A0B9002C */   sb        $t9, 0x2c($a1)
/* 4ADE8 8004A1E8 A4690004 */  sh         $t1, 4($v1)
.L8004A1EC:
/* 4ADEC 8004A1EC 3C088010 */  lui        $t0, 0x8010
/* 4ADF0 8004A1F0 9108D00A */  lbu        $t0, -0x2ff6($t0)
/* 4ADF4 8004A1F4 3C028010 */  lui        $v0, 0x8010
/* 4ADF8 8004A1F8 8C42D004 */  lw         $v0, -0x2ffc($v0)
/* 4ADFC 8004A1FC 310800C0 */  andi       $t0, $t0, 0xc0
/* 4AE00 8004A200 10000015 */  b          .L8004A258
/* 4AE04 8004A204 00084183 */   sra       $t0, $t0, 6
/* 4AE08 8004A208 94620004 */  lhu        $v0, 4($v1)
.L8004A20C:
/* 4AE0C 8004A20C 310D0007 */  andi       $t5, $t0, 7
/* 4AE10 8004A210 3C0A8010 */  lui        $t2, 0x8010
/* 4AE14 8004A214 01A26007 */  srav       $t4, $v0, $t5
/* 4AE18 8004A218 004C4823 */  subu       $t1, $v0, $t4
/* 4AE1C 8004A21C 3129FFFF */  andi       $t1, $t1, 0xffff
/* 4AE20 8004A220 29210800 */  slti       $at, $t1, 0x800
/* 4AE24 8004A224 10200003 */  beqz       $at, .L8004A234
/* 4AE28 8004A228 00000000 */   nop       
/* 4AE2C 8004A22C 05210004 */  bgez       $t1, .L8004A240
/* 4AE30 8004A230 3C088010 */   lui       $t0, 0x8010
.L8004A234:
/* 4AE34 8004A234 914AD00C */  lbu        $t2, -0x2ff4($t2)
/* 4AE38 8004A238 10000056 */  b          .L8004A394
/* 4AE3C 8004A23C 314A0008 */   andi      $t2, $t2, 8
.L8004A240:
/* 4AE40 8004A240 A4690004 */  sh         $t1, 4($v1)
/* 4AE44 8004A244 9108D00A */  lbu        $t0, -0x2ff6($t0)
/* 4AE48 8004A248 3C028010 */  lui        $v0, 0x8010
/* 4AE4C 8004A24C 8C42D004 */  lw         $v0, -0x2ffc($v0)
/* 4AE50 8004A250 310800C0 */  andi       $t0, $t0, 0xc0
/* 4AE54 8004A254 00084183 */  sra        $t0, $t0, 6
.L8004A258:
/* 4AE58 8004A258 946F0004 */  lhu        $t7, 4($v1)
/* 4AE5C 8004A25C 24010001 */  addiu      $at, $zero, 1
/* 4AE60 8004A260 00CFC023 */  subu       $t8, $a2, $t7
/* 4AE64 8004A264 03020019 */  multu      $t8, $v0
/* 4AE68 8004A268 00007012 */  mflo       $t6
/* 4AE6C 8004A26C 000ECAC2 */  srl        $t9, $t6, 0xb
/* 4AE70 8004A270 11000009 */  beqz       $t0, .L8004A298
/* 4AE74 8004A274 AC790024 */   sw        $t9, 0x24($v1)
/* 4AE78 8004A278 11010015 */  beq        $t0, $at, .L8004A2D0
/* 4AE7C 8004A27C 24010002 */   addiu     $at, $zero, 2
/* 4AE80 8004A280 11010021 */  beq        $t0, $at, .L8004A308
/* 4AE84 8004A284 24010003 */   addiu     $at, $zero, 3
/* 4AE88 8004A288 5101002E */  beql       $t0, $at, .L8004A344
/* 4AE8C 8004A28C 8C780024 */   lw        $t8, 0x24($v1)
/* 4AE90 8004A290 1000003A */  b          .L8004A37C
/* 4AE94 8004A294 8C6F0024 */   lw        $t7, 0x24($v1)
.L8004A298:
/* 4AE98 8004A298 8C6D0024 */  lw         $t5, 0x24($v1)
/* 4AE9C 8004A29C 240F0040 */  addiu      $t7, $zero, 0x40
/* 4AEA0 8004A2A0 000D60C2 */  srl        $t4, $t5, 3
/* 4AEA4 8004A2A4 3188FFFF */  andi       $t0, $t4, 0xffff
/* 4AEA8 8004A2A8 29010040 */  slti       $at, $t0, 0x40
/* 4AEAC 8004A2AC 10200003 */  beqz       $at, .L8004A2BC
/* 4AEB0 8004A2B0 A46C001A */   sh        $t4, 0x1a($v1)
/* 4AEB4 8004A2B4 A46F001A */  sh         $t7, 0x1a($v1)
/* 4AEB8 8004A2B8 31E8FFFF */  andi       $t0, $t7, 0xffff
.L8004A2BC:
/* 4AEBC 8004A2BC 8C780024 */  lw         $t8, 0x24($v1)
/* 4AEC0 8004A2C0 8C640000 */  lw         $a0, ($v1)
/* 4AEC4 8004A2C4 03087023 */  subu       $t6, $t8, $t0
/* 4AEC8 8004A2C8 1000002F */  b          .L8004A388
/* 4AECC 8004A2CC A46E0018 */   sh        $t6, 0x18($v1)
.L8004A2D0:
/* 4AED0 8004A2D0 8C790024 */  lw         $t9, 0x24($v1)
/* 4AED4 8004A2D4 240C0040 */  addiu      $t4, $zero, 0x40
/* 4AED8 8004A2D8 00196882 */  srl        $t5, $t9, 2
/* 4AEDC 8004A2DC 31A8FFFF */  andi       $t0, $t5, 0xffff
/* 4AEE0 8004A2E0 29010040 */  slti       $at, $t0, 0x40
/* 4AEE4 8004A2E4 10200003 */  beqz       $at, .L8004A2F4
/* 4AEE8 8004A2E8 A46D001A */   sh        $t5, 0x1a($v1)
/* 4AEEC 8004A2EC A46C001A */  sh         $t4, 0x1a($v1)
/* 4AEF0 8004A2F0 3188FFFF */  andi       $t0, $t4, 0xffff
.L8004A2F4:
/* 4AEF4 8004A2F4 8C6F0024 */  lw         $t7, 0x24($v1)
/* 4AEF8 8004A2F8 8C640000 */  lw         $a0, ($v1)
/* 4AEFC 8004A2FC 01E8C023 */  subu       $t8, $t7, $t0
/* 4AF00 8004A300 10000021 */  b          .L8004A388
/* 4AF04 8004A304 A4780018 */   sh        $t8, 0x18($v1)
.L8004A308:
/* 4AF08 8004A308 8C6E0024 */  lw         $t6, 0x24($v1)
/* 4AF0C 8004A30C 240D0040 */  addiu      $t5, $zero, 0x40
/* 4AF10 8004A310 000EC842 */  srl        $t9, $t6, 1
/* 4AF14 8004A314 3328FFFF */  andi       $t0, $t9, 0xffff
/* 4AF18 8004A318 29010040 */  slti       $at, $t0, 0x40
/* 4AF1C 8004A31C 10200003 */  beqz       $at, .L8004A32C
/* 4AF20 8004A320 A479001A */   sh        $t9, 0x1a($v1)
/* 4AF24 8004A324 A46D001A */  sh         $t5, 0x1a($v1)
/* 4AF28 8004A328 31A8FFFF */  andi       $t0, $t5, 0xffff
.L8004A32C:
/* 4AF2C 8004A32C 8C6C0024 */  lw         $t4, 0x24($v1)
/* 4AF30 8004A330 8C640000 */  lw         $a0, ($v1)
/* 4AF34 8004A334 01887823 */  subu       $t7, $t4, $t0
/* 4AF38 8004A338 10000013 */  b          .L8004A388
/* 4AF3C 8004A33C A46F0018 */   sh        $t7, 0x18($v1)
/* 4AF40 8004A340 8C780024 */  lw         $t8, 0x24($v1)
.L8004A344:
/* 4AF44 8004A344 24190040 */  addiu      $t9, $zero, 0x40
/* 4AF48 8004A348 00187082 */  srl        $t6, $t8, 2
/* 4AF4C 8004A34C 31C8FFFF */  andi       $t0, $t6, 0xffff
/* 4AF50 8004A350 29010040 */  slti       $at, $t0, 0x40
/* 4AF54 8004A354 10200003 */  beqz       $at, .L8004A364
/* 4AF58 8004A358 A46E0018 */   sh        $t6, 0x18($v1)
/* 4AF5C 8004A35C A4790018 */  sh         $t9, 0x18($v1)
/* 4AF60 8004A360 3328FFFF */  andi       $t0, $t9, 0xffff
.L8004A364:
/* 4AF64 8004A364 8C6D0024 */  lw         $t5, 0x24($v1)
/* 4AF68 8004A368 8C640000 */  lw         $a0, ($v1)
/* 4AF6C 8004A36C 01A86023 */  subu       $t4, $t5, $t0
/* 4AF70 8004A370 10000005 */  b          .L8004A388
/* 4AF74 8004A374 A46C001A */   sh        $t4, 0x1a($v1)
/* 4AF78 8004A378 8C6F0024 */  lw         $t7, 0x24($v1)
.L8004A37C:
/* 4AF7C 8004A37C A460001A */  sh         $zero, 0x1a($v1)
/* 4AF80 8004A380 8C640000 */  lw         $a0, ($v1)
/* 4AF84 8004A384 A46F0018 */  sh         $t7, 0x18($v1)
.L8004A388:
/* 4AF88 8004A388 3C0A8010 */  lui        $t2, 0x8010
/* 4AF8C 8004A38C 914AD00C */  lbu        $t2, -0x2ff4($t2)
/* 4AF90 8004A390 314A0008 */  andi       $t2, $t2, 8
.L8004A394:
/* 4AF94 8004A394 8C620014 */  lw         $v0, 0x14($v1)
/* 4AF98 8004A398 0044082B */  sltu       $at, $v0, $a0
/* 4AF9C 8004A39C 50200009 */  beql       $at, $zero, .L8004A3C4
/* 4AFA0 8004A3A0 8C620020 */   lw        $v0, 0x20($v1)
/* 4AFA4 8004A3A4 8478000C */  lh         $t8, 0xc($v1)
/* 4AFA8 8004A3A8 846E000E */  lh         $t6, 0xe($v1)
/* 4AFAC 8004A3AC 8C6D0010 */  lw         $t5, 0x10($v1)
/* 4AFB0 8004A3B0 030EC821 */  addu       $t9, $t8, $t6
/* 4AFB4 8004A3B4 004D6021 */  addu       $t4, $v0, $t5
/* 4AFB8 8004A3B8 A479000C */  sh         $t9, 0xc($v1)
/* 4AFBC 8004A3BC AC6C0014 */  sw         $t4, 0x14($v1)
/* 4AFC0 8004A3C0 8C620020 */  lw         $v0, 0x20($v1)
.L8004A3C4:
/* 4AFC4 8004A3C4 0044082B */  sltu       $at, $v0, $a0
/* 4AFC8 8004A3C8 1020000D */  beqz       $at, .L8004A400
/* 4AFCC 8004A3CC 00000000 */   nop       
/* 4AFD0 8004A3D0 9065001E */  lbu        $a1, 0x1e($v1)
.L8004A3D4:
/* 4AFD4 8004A3D4 38AF0001 */  xori       $t7, $a1, 1
/* 4AFD8 8004A3D8 31E500FF */  andi       $a1, $t7, 0xff
/* 4AFDC 8004A3DC 0005C040 */  sll        $t8, $a1, 1
/* 4AFE0 8004A3E0 A06F001E */  sb         $t7, 0x1e($v1)
/* 4AFE4 8004A3E4 00787021 */  addu       $t6, $v1, $t8
/* 4AFE8 8004A3E8 95D90018 */  lhu        $t9, 0x18($t6)
/* 4AFEC 8004A3EC 00596821 */  addu       $t5, $v0, $t9
/* 4AFF0 8004A3F0 01A4082B */  sltu       $at, $t5, $a0
/* 4AFF4 8004A3F4 01A01025 */  or         $v0, $t5, $zero
/* 4AFF8 8004A3F8 1420FFF6 */  bnez       $at, .L8004A3D4
/* 4AFFC 8004A3FC AC6D0020 */   sw        $t5, 0x20($v1)
.L8004A400:
/* 4B000 8004A400 15400007 */  bnez       $t2, .L8004A420
/* 4B004 8004A404 248E0040 */   addiu     $t6, $a0, 0x40
/* 4B008 8004A408 846C000C */  lh         $t4, 0xc($v1)
/* 4B00C 8004A40C 00001025 */  or         $v0, $zero, $zero
/* 4B010 8004A410 05830004 */  bgezl      $t4, .L8004A424
/* 4B014 8004A414 8462000C */   lh        $v0, 0xc($v1)
/* 4B018 8004A418 03E00008 */  jr         $ra
/* 4B01C 8004A41C A060002C */   sb        $zero, 0x2c($v1)
.L8004A420:
/* 4B020 8004A420 8462000C */  lh         $v0, 0xc($v1)
.L8004A424:
/* 4B024 8004A424 9065001E */  lbu        $a1, 0x1e($v1)
/* 4B028 8004A428 24187800 */  addiu      $t8, $zero, 0x7800
/* 4B02C 8004A42C 304FFFFF */  andi       $t7, $v0, 0xffff
/* 4B030 8004A430 29E17801 */  slti       $at, $t7, 0x7801
/* 4B034 8004A434 54200006 */  bnel       $at, $zero, .L8004A450
/* 4B038 8004A438 00023400 */   sll       $a2, $v0, 0x10
/* 4B03C 8004A43C A478000C */  sh         $t8, 0xc($v1)
/* 4B040 8004A440 A460000E */  sh         $zero, 0xe($v1)
/* 4B044 8004A444 8462000C */  lh         $v0, 0xc($v1)
/* 4B048 8004A448 AC670014 */  sw         $a3, 0x14($v1)
/* 4B04C 8004A44C 00023400 */  sll        $a2, $v0, 0x10
.L8004A450:
/* 4B050 8004A450 14A00004 */  bnez       $a1, .L8004A464
/* 4B054 8004A454 00063403 */   sra       $a2, $a2, 0x10
/* 4B058 8004A458 00063023 */  negu       $a2, $a2
/* 4B05C 8004A45C 00063400 */  sll        $a2, $a2, 0x10
/* 4B060 8004A460 00063403 */  sra        $a2, $a2, 0x10
.L8004A464:
/* 4B064 8004A464 AC6E0000 */  sw         $t6, ($v1)
/* 4B068 8004A468 00C01025 */  or         $v0, $a2, $zero
/* 4B06C 8004A46C 03E00008 */  jr         $ra
/* 4B070 8004A470 00000000 */   nop       

glabel func_8004A474
/* 4B074 8004A474 3C0E8010 */  lui        $t6, 0x8010
/* 4B078 8004A478 91CED015 */  lbu        $t6, -0x2feb($t6)
/* 4B07C 8004A47C 00001025 */  or         $v0, $zero, $zero
/* 4B080 8004A480 3C0F8010 */  lui        $t7, 0x8010
/* 4B084 8004A484 11C00004 */  beqz       $t6, .L8004A498
/* 4B088 8004A488 3C188010 */   lui       $t8, 0x8010
/* 4B08C 8004A48C 3C018010 */  lui        $at, 0x8010
/* 4B090 8004A490 24020001 */  addiu      $v0, $zero, 1
/* 4B094 8004A494 A020D015 */  sb         $zero, -0x2feb($at)
.L8004A498:
/* 4B098 8004A498 91EFD017 */  lbu        $t7, -0x2fe9($t7)
/* 4B09C 8004A49C 3C198010 */  lui        $t9, 0x8010
/* 4B0A0 8004A4A0 3C018010 */  lui        $at, 0x8010
/* 4B0A4 8004A4A4 11E00003 */  beqz       $t7, .L8004A4B4
/* 4B0A8 8004A4A8 3C038010 */   lui       $v1, 0x8010
/* 4B0AC 8004A4AC 24020001 */  addiu      $v0, $zero, 1
/* 4B0B0 8004A4B0 A020D017 */  sb         $zero, -0x2fe9($at)
.L8004A4B4:
/* 4B0B4 8004A4B4 9318D019 */  lbu        $t8, -0x2fe7($t8)
/* 4B0B8 8004A4B8 3C018010 */  lui        $at, 0x8010
/* 4B0BC 8004A4BC 3C048010 */  lui        $a0, 0x8010
/* 4B0C0 8004A4C0 13000003 */  beqz       $t8, .L8004A4D0
/* 4B0C4 8004A4C4 2463CF90 */   addiu     $v1, $v1, -0x3070
/* 4B0C8 8004A4C8 24020001 */  addiu      $v0, $zero, 1
/* 4B0CC 8004A4CC A020D019 */  sb         $zero, -0x2fe7($at)
.L8004A4D0:
/* 4B0D0 8004A4D0 9339D01B */  lbu        $t9, -0x2fe5($t9)
/* 4B0D4 8004A4D4 3C018010 */  lui        $at, 0x8010
/* 4B0D8 8004A4D8 2484D008 */  addiu      $a0, $a0, -0x2ff8
/* 4B0DC 8004A4DC 13200003 */  beqz       $t9, .L8004A4EC
/* 4B0E0 8004A4E0 240B0800 */   addiu     $t3, $zero, 0x800
/* 4B0E4 8004A4E4 24020001 */  addiu      $v0, $zero, 1
/* 4B0E8 8004A4E8 A020D01B */  sb         $zero, -0x2fe5($at)
.L8004A4EC:
/* 4B0EC 8004A4EC 1040009E */  beqz       $v0, .L8004A768
/* 4B0F0 8004A4F0 3C058010 */   lui       $a1, 0x8010
/* 4B0F4 8004A4F4 90820012 */  lbu        $v0, 0x12($a0)
/* 4B0F8 8004A4F8 908C0010 */  lbu        $t4, 0x10($a0)
/* 4B0FC 8004A4FC 8CA5D004 */  lw         $a1, -0x2ffc($a1)
/* 4B100 8004A500 304E0007 */  andi       $t6, $v0, 7
/* 4B104 8004A504 000E7A00 */  sll        $t7, $t6, 8
/* 4B108 8004A508 018FC025 */  or         $t8, $t4, $t7
/* 4B10C 8004A50C 0178C823 */  subu       $t9, $t3, $t8
/* 4B110 8004A510 03250019 */  multu      $t9, $a1
/* 4B114 8004A514 9087000C */  lbu        $a3, 0xc($a0)
/* 4B118 8004A518 3C038010 */  lui        $v1, 0x8010
/* 4B11C 8004A51C 2463CF90 */  addiu      $v1, $v1, -0x3070
/* 4B120 8004A520 30E600C0 */  andi       $a2, $a3, 0xc0
/* 4B124 8004A524 00063183 */  sra        $a2, $a2, 6
/* 4B128 8004A528 24010001 */  addiu      $at, $zero, 1
/* 4B12C 8004A52C 00006812 */  mflo       $t5
/* 4B130 8004A530 000D72C2 */  srl        $t6, $t5, 0xb
/* 4B134 8004A534 10C00009 */  beqz       $a2, .L8004A55C
/* 4B138 8004A538 AC6E001C */   sw        $t6, 0x1c($v1)
/* 4B13C 8004A53C 10C10015 */  beq        $a2, $at, .L8004A594
/* 4B140 8004A540 24010002 */   addiu     $at, $zero, 2
/* 4B144 8004A544 10C10021 */  beq        $a2, $at, .L8004A5CC
/* 4B148 8004A548 24010003 */   addiu     $at, $zero, 3
/* 4B14C 8004A54C 50C1002E */  beql       $a2, $at, .L8004A608
/* 4B150 8004A550 8C79001C */   lw        $t9, 0x1c($v1)
/* 4B154 8004A554 1000003A */  b          .L8004A640
/* 4B158 8004A558 8C78001C */   lw        $t8, 0x1c($v1)
.L8004A55C:
/* 4B15C 8004A55C 8C6C001C */  lw         $t4, 0x1c($v1)
/* 4B160 8004A560 24180040 */  addiu      $t8, $zero, 0x40
/* 4B164 8004A564 000C78C2 */  srl        $t7, $t4, 3
/* 4B168 8004A568 31E6FFFF */  andi       $a2, $t7, 0xffff
/* 4B16C 8004A56C 28C10040 */  slti       $at, $a2, 0x40
/* 4B170 8004A570 10200003 */  beqz       $at, .L8004A580
/* 4B174 8004A574 A46F0012 */   sh        $t7, 0x12($v1)
/* 4B178 8004A578 A4780012 */  sh         $t8, 0x12($v1)
/* 4B17C 8004A57C 3306FFFF */  andi       $a2, $t8, 0xffff
.L8004A580:
/* 4B180 8004A580 8C79001C */  lw         $t9, 0x1c($v1)
/* 4B184 8004A584 24080001 */  addiu      $t0, $zero, 1
/* 4B188 8004A588 03266823 */  subu       $t5, $t9, $a2
/* 4B18C 8004A58C 1000002F */  b          .L8004A64C
/* 4B190 8004A590 A46D0010 */   sh        $t5, 0x10($v1)
.L8004A594:
/* 4B194 8004A594 8C6E001C */  lw         $t6, 0x1c($v1)
/* 4B198 8004A598 240F0040 */  addiu      $t7, $zero, 0x40
/* 4B19C 8004A59C 000E6082 */  srl        $t4, $t6, 2
/* 4B1A0 8004A5A0 3186FFFF */  andi       $a2, $t4, 0xffff
/* 4B1A4 8004A5A4 28C10040 */  slti       $at, $a2, 0x40
/* 4B1A8 8004A5A8 10200003 */  beqz       $at, .L8004A5B8
/* 4B1AC 8004A5AC A46C0012 */   sh        $t4, 0x12($v1)
/* 4B1B0 8004A5B0 A46F0012 */  sh         $t7, 0x12($v1)
/* 4B1B4 8004A5B4 31E6FFFF */  andi       $a2, $t7, 0xffff
.L8004A5B8:
/* 4B1B8 8004A5B8 8C78001C */  lw         $t8, 0x1c($v1)
/* 4B1BC 8004A5BC 00004025 */  or         $t0, $zero, $zero
/* 4B1C0 8004A5C0 0306C823 */  subu       $t9, $t8, $a2
/* 4B1C4 8004A5C4 10000021 */  b          .L8004A64C
/* 4B1C8 8004A5C8 A4790010 */   sh        $t9, 0x10($v1)
.L8004A5CC:
/* 4B1CC 8004A5CC 8C6D001C */  lw         $t5, 0x1c($v1)
/* 4B1D0 8004A5D0 240C0040 */  addiu      $t4, $zero, 0x40
/* 4B1D4 8004A5D4 000D7042 */  srl        $t6, $t5, 1
/* 4B1D8 8004A5D8 31C6FFFF */  andi       $a2, $t6, 0xffff
/* 4B1DC 8004A5DC 28C10040 */  slti       $at, $a2, 0x40
/* 4B1E0 8004A5E0 10200003 */  beqz       $at, .L8004A5F0
/* 4B1E4 8004A5E4 A46E0012 */   sh        $t6, 0x12($v1)
/* 4B1E8 8004A5E8 A46C0012 */  sh         $t4, 0x12($v1)
/* 4B1EC 8004A5EC 3186FFFF */  andi       $a2, $t4, 0xffff
.L8004A5F0:
/* 4B1F0 8004A5F0 8C6F001C */  lw         $t7, 0x1c($v1)
/* 4B1F4 8004A5F4 00004025 */  or         $t0, $zero, $zero
/* 4B1F8 8004A5F8 01E6C023 */  subu       $t8, $t7, $a2
/* 4B1FC 8004A5FC 10000013 */  b          .L8004A64C
/* 4B200 8004A600 A4780010 */   sh        $t8, 0x10($v1)
/* 4B204 8004A604 8C79001C */  lw         $t9, 0x1c($v1)
.L8004A608:
/* 4B208 8004A608 240E0040 */  addiu      $t6, $zero, 0x40
/* 4B20C 8004A60C 00196882 */  srl        $t5, $t9, 2
/* 4B210 8004A610 31A6FFFF */  andi       $a2, $t5, 0xffff
/* 4B214 8004A614 28C10040 */  slti       $at, $a2, 0x40
/* 4B218 8004A618 10200003 */  beqz       $at, .L8004A628
/* 4B21C 8004A61C A46D0010 */   sh        $t5, 0x10($v1)
/* 4B220 8004A620 A46E0010 */  sh         $t6, 0x10($v1)
/* 4B224 8004A624 31C6FFFF */  andi       $a2, $t6, 0xffff
.L8004A628:
/* 4B228 8004A628 8C6C001C */  lw         $t4, 0x1c($v1)
/* 4B22C 8004A62C 24080001 */  addiu      $t0, $zero, 1
/* 4B230 8004A630 01867823 */  subu       $t7, $t4, $a2
/* 4B234 8004A634 10000005 */  b          .L8004A64C
/* 4B238 8004A638 A46F0012 */   sh        $t7, 0x12($v1)
/* 4B23C 8004A63C 8C78001C */  lw         $t8, 0x1c($v1)
.L8004A640:
/* 4B240 8004A640 A4600012 */  sh         $zero, 0x12($v1)
/* 4B244 8004A644 24080001 */  addiu      $t0, $zero, 1
/* 4B248 8004A648 A4780010 */  sh         $t8, 0x10($v1)
.L8004A64C:
/* 4B24C 8004A64C 9086000E */  lbu        $a2, 0xe($a0)
/* 4B250 8004A650 30C90008 */  andi       $t1, $a2, 8
/* 4B254 8004A654 15200009 */  bnez       $t1, .L8004A67C
/* 4B258 8004A658 30D900F0 */   andi      $t9, $a2, 0xf0
/* 4B25C 8004A65C 17200007 */  bnez       $t9, .L8004A67C
/* 4B260 8004A660 00000000 */   nop       
/* 4B264 8004A664 908D002C */  lbu        $t5, 0x2c($a0)
/* 4B268 8004A668 A0600024 */  sb         $zero, 0x24($v1)
/* 4B26C 8004A66C 00001025 */  or         $v0, $zero, $zero
/* 4B270 8004A670 31AEFFFD */  andi       $t6, $t5, 0xfffd
/* 4B274 8004A674 03E00008 */  jr         $ra
/* 4B278 8004A678 A08E002C */   sb        $t6, 0x2c($a0)
.L8004A67C:
/* 4B27C 8004A67C 1120000B */  beqz       $t1, .L8004A6AC
/* 4B280 8004A680 30CC00F0 */   andi      $t4, $a2, 0xf0
/* 4B284 8004A684 15800009 */  bnez       $t4, .L8004A6AC
/* 4B288 8004A688 30CF0007 */   andi      $t7, $a2, 7
/* 4B28C 8004A68C 55E00008 */  bnel       $t7, $zero, .L8004A6B0
/* 4B290 8004A690 304D0080 */   andi      $t5, $v0, 0x80
/* 4B294 8004A694 9098002C */  lbu        $t8, 0x2c($a0)
/* 4B298 8004A698 A0600024 */  sb         $zero, 0x24($v1)
/* 4B29C 8004A69C 00001025 */  or         $v0, $zero, $zero
/* 4B2A0 8004A6A0 3319FFFD */  andi       $t9, $t8, 0xfffd
/* 4B2A4 8004A6A4 03E00008 */  jr         $ra
/* 4B2A8 8004A6A8 A099002C */   sb        $t9, 0x2c($a0)
.L8004A6AC:
/* 4B2AC 8004A6AC 304D0080 */  andi       $t5, $v0, 0x80
.L8004A6B0:
/* 4B2B0 8004A6B0 11A00028 */  beqz       $t5, .L8004A754
/* 4B2B4 8004A6B4 240E0001 */   addiu     $t6, $zero, 1
/* 4B2B8 8004A6B8 30CF00F0 */  andi       $t7, $a2, 0xf0
/* 4B2BC 8004A6BC 000FC1C0 */  sll        $t8, $t7, 7
/* 4B2C0 8004A6C0 30CA0007 */  andi       $t2, $a2, 7
/* 4B2C4 8004A6C4 AC600000 */  sw         $zero, ($v1)
/* 4B2C8 8004A6C8 A06E0024 */  sb         $t6, 0x24($v1)
/* 4B2CC 8004A6CC A0680016 */  sb         $t0, 0x16($v1)
/* 4B2D0 8004A6D0 A4600014 */  sh         $zero, 0x14($v1)
/* 4B2D4 8004A6D4 AC600018 */  sw         $zero, 0x18($v1)
/* 4B2D8 8004A6D8 1140000B */  beqz       $t2, .L8004A708
/* 4B2DC 8004A6DC A4780004 */   sh        $t8, 4($v1)
/* 4B2E0 8004A6E0 11200003 */  beqz       $t1, .L8004A6F0
/* 4B2E4 8004A6E4 2419F800 */   addiu     $t9, $zero, -0x800
/* 4B2E8 8004A6E8 10000002 */  b          .L8004A6F4
/* 4B2EC 8004A6EC A46B0006 */   sh        $t3, 6($v1)
.L8004A6F0:
/* 4B2F0 8004A6F0 A4790006 */  sh         $t9, 6($v1)
.L8004A6F4:
/* 4B2F4 8004A6F4 01450019 */  multu      $t2, $a1
/* 4B2F8 8004A6F8 00006812 */  mflo       $t5
/* 4B2FC 8004A6FC AC6D0008 */  sw         $t5, 8($v1)
/* 4B300 8004A700 10000006 */  b          .L8004A71C
/* 4B304 8004A704 AC6D000C */   sw        $t5, 0xc($v1)
.L8004A708:
/* 4B308 8004A708 240CFFFF */  addiu      $t4, $zero, -1
/* 4B30C 8004A70C 240FFFFF */  addiu      $t7, $zero, -1
/* 4B310 8004A710 A4600006 */  sh         $zero, 6($v1)
/* 4B314 8004A714 AC6C0008 */  sw         $t4, 8($v1)
/* 4B318 8004A718 AC6F000C */  sw         $t7, 0xc($v1)
.L8004A71C:
/* 4B31C 8004A71C 30580040 */  andi       $t8, $v0, 0x40
/* 4B320 8004A720 13000008 */  beqz       $t8, .L8004A744
/* 4B324 8004A724 30F9003F */   andi      $t9, $a3, 0x3f
/* 4B328 8004A728 240D0040 */  addiu      $t5, $zero, 0x40
/* 4B32C 8004A72C 01B97023 */  subu       $t6, $t5, $t9
/* 4B330 8004A730 01C50019 */  multu      $t6, $a1
/* 4B334 8004A734 00006012 */  mflo       $t4
/* 4B338 8004A738 000C7882 */  srl        $t7, $t4, 2
/* 4B33C 8004A73C 10000003 */  b          .L8004A74C
/* 4B340 8004A740 AC6F0020 */   sw        $t7, 0x20($v1)
.L8004A744:
/* 4B344 8004A744 2418FFFF */  addiu      $t8, $zero, -1
/* 4B348 8004A748 AC780020 */  sw         $t8, 0x20($v1)
.L8004A74C:
/* 4B34C 8004A74C 304DFF7F */  andi       $t5, $v0, 0xff7f
/* 4B350 8004A750 A08D0012 */  sb         $t5, 0x12($a0)
.L8004A754:
/* 4B354 8004A754 90790024 */  lbu        $t9, 0x24($v1)
/* 4B358 8004A758 57200009 */  bnel       $t9, $zero, .L8004A780
/* 4B35C 8004A75C 8C650000 */   lw        $a1, ($v1)
/* 4B360 8004A760 03E00008 */  jr         $ra
/* 4B364 8004A764 00001025 */   or        $v0, $zero, $zero
.L8004A768:
/* 4B368 8004A768 906E0024 */  lbu        $t6, 0x24($v1)
/* 4B36C 8004A76C 55C00004 */  bnel       $t6, $zero, .L8004A780
/* 4B370 8004A770 8C650000 */   lw        $a1, ($v1)
/* 4B374 8004A774 03E00008 */  jr         $ra
/* 4B378 8004A778 00001025 */   or        $v0, $zero, $zero
/* 4B37C 8004A77C 8C650000 */  lw         $a1, ($v1)
.L8004A780:
/* 4B380 8004A780 8C6C0020 */  lw         $t4, 0x20($v1)
/* 4B384 8004A784 3C048010 */  lui        $a0, 0x8010
/* 4B388 8004A788 2484D008 */  addiu      $a0, $a0, -0x2ff8
/* 4B38C 8004A78C 0185082B */  sltu       $at, $t4, $a1
/* 4B390 8004A790 50200008 */  beql       $at, $zero, .L8004A7B4
/* 4B394 8004A794 8C62000C */   lw        $v0, 0xc($v1)
/* 4B398 8004A798 908F002C */  lbu        $t7, 0x2c($a0)
/* 4B39C 8004A79C A0600024 */  sb         $zero, 0x24($v1)
/* 4B3A0 8004A7A0 00001025 */  or         $v0, $zero, $zero
/* 4B3A4 8004A7A4 31F8FFFD */  andi       $t8, $t7, 0xfffd
/* 4B3A8 8004A7A8 03E00008 */  jr         $ra
/* 4B3AC 8004A7AC A098002C */   sb        $t8, 0x2c($a0)
/* 4B3B0 8004A7B0 8C62000C */  lw         $v0, 0xc($v1)
.L8004A7B4:
/* 4B3B4 8004A7B4 3C098010 */  lui        $t1, 0x8010
/* 4B3B8 8004A7B8 9129D016 */  lbu        $t1, -0x2fea($t1)
/* 4B3BC 8004A7BC 0045082B */  sltu       $at, $v0, $a1
/* 4B3C0 8004A7C0 10200008 */  beqz       $at, .L8004A7E4
/* 4B3C4 8004A7C4 31290008 */   andi      $t1, $t1, 8
/* 4B3C8 8004A7C8 846D0004 */  lh         $t5, 4($v1)
/* 4B3CC 8004A7CC 84790006 */  lh         $t9, 6($v1)
/* 4B3D0 8004A7D0 8C6C0008 */  lw         $t4, 8($v1)
/* 4B3D4 8004A7D4 01B97021 */  addu       $t6, $t5, $t9
/* 4B3D8 8004A7D8 004C7821 */  addu       $t7, $v0, $t4
/* 4B3DC 8004A7DC A46E0004 */  sh         $t6, 4($v1)
/* 4B3E0 8004A7E0 AC6F000C */  sw         $t7, 0xc($v1)
.L8004A7E4:
/* 4B3E4 8004A7E4 8C620018 */  lw         $v0, 0x18($v1)
/* 4B3E8 8004A7E8 00A2082B */  sltu       $at, $a1, $v0
/* 4B3EC 8004A7EC 1420000D */  bnez       $at, .L8004A824
/* 4B3F0 8004A7F0 00000000 */   nop       
/* 4B3F4 8004A7F4 90640016 */  lbu        $a0, 0x16($v1)
.L8004A7F8:
/* 4B3F8 8004A7F8 38980001 */  xori       $t8, $a0, 1
/* 4B3FC 8004A7FC 330400FF */  andi       $a0, $t8, 0xff
/* 4B400 8004A800 00046840 */  sll        $t5, $a0, 1
/* 4B404 8004A804 A0780016 */  sb         $t8, 0x16($v1)
/* 4B408 8004A808 006DC821 */  addu       $t9, $v1, $t5
/* 4B40C 8004A80C 972E0010 */  lhu        $t6, 0x10($t9)
/* 4B410 8004A810 004E6021 */  addu       $t4, $v0, $t6
/* 4B414 8004A814 00AC082B */  sltu       $at, $a1, $t4
/* 4B418 8004A818 01801025 */  or         $v0, $t4, $zero
/* 4B41C 8004A81C 1020FFF6 */  beqz       $at, .L8004A7F8
/* 4B420 8004A820 AC6C0018 */   sw        $t4, 0x18($v1)
.L8004A824:
/* 4B424 8004A824 55200008 */  bnel       $t1, $zero, .L8004A848
/* 4B428 8004A828 84620004 */   lh        $v0, 4($v1)
/* 4B42C 8004A82C 846F0004 */  lh         $t7, 4($v1)
/* 4B430 8004A830 00001025 */  or         $v0, $zero, $zero
/* 4B434 8004A834 05E30004 */  bgezl      $t7, .L8004A848
/* 4B438 8004A838 84620004 */   lh        $v0, 4($v1)
/* 4B43C 8004A83C 03E00008 */  jr         $ra
/* 4B440 8004A840 A0600024 */   sb        $zero, 0x24($v1)
/* 4B444 8004A844 84620004 */  lh         $v0, 4($v1)
.L8004A848:
/* 4B448 8004A848 90640016 */  lbu        $a0, 0x16($v1)
/* 4B44C 8004A84C 240D7800 */  addiu      $t5, $zero, 0x7800
/* 4B450 8004A850 3058FFFF */  andi       $t8, $v0, 0xffff
/* 4B454 8004A854 2B017801 */  slti       $at, $t8, 0x7801
/* 4B458 8004A858 14200006 */  bnez       $at, .L8004A874
/* 4B45C 8004A85C 24AE0040 */   addiu     $t6, $a1, 0x40
/* 4B460 8004A860 A46D0004 */  sh         $t5, 4($v1)
/* 4B464 8004A864 2419FFFF */  addiu      $t9, $zero, -1
/* 4B468 8004A868 A4600006 */  sh         $zero, 6($v1)
/* 4B46C 8004A86C AC79000C */  sw         $t9, 0xc($v1)
/* 4B470 8004A870 84620004 */  lh         $v0, 4($v1)
.L8004A874:
/* 4B474 8004A874 00023400 */  sll        $a2, $v0, 0x10
/* 4B478 8004A878 14800004 */  bnez       $a0, .L8004A88C
/* 4B47C 8004A87C 00063403 */   sra       $a2, $a2, 0x10
/* 4B480 8004A880 00063023 */  negu       $a2, $a2
/* 4B484 8004A884 00063400 */  sll        $a2, $a2, 0x10
/* 4B488 8004A888 00063403 */  sra        $a2, $a2, 0x10
.L8004A88C:
/* 4B48C 8004A88C AC6E0000 */  sw         $t6, ($v1)
/* 4B490 8004A890 00C01025 */  or         $v0, $a2, $zero
/* 4B494 8004A894 03E00008 */  jr         $ra
/* 4B498 8004A898 00000000 */   nop       

glabel func_8004A89C
/* 4B49C 8004A89C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4B4A0 8004A8A0 3C028010 */  lui        $v0, 0x8010
/* 4B4A4 8004A8A4 3C038010 */  lui        $v1, 0x8010
/* 4B4A8 8004A8A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4B4AC 8004A8AC 00002025 */  or         $a0, $zero, $zero
/* 4B4B0 8004A8B0 2463D030 */  addiu      $v1, $v1, -0x2fd0
/* 4B4B4 8004A8B4 2442D028 */  addiu      $v0, $v0, -0x2fd8
/* 4B4B8 8004A8B8 904E0001 */  lbu        $t6, 1($v0)
.L8004A8BC:
/* 4B4BC 8004A8BC 51C00004 */  beql       $t6, $zero, .L8004A8D0
/* 4B4C0 8004A8C0 24420002 */   addiu     $v0, $v0, 2
/* 4B4C4 8004A8C4 24040001 */  addiu      $a0, $zero, 1
/* 4B4C8 8004A8C8 A0400001 */  sb         $zero, 1($v0)
/* 4B4CC 8004A8CC 24420002 */  addiu      $v0, $v0, 2
.L8004A8D0:
/* 4B4D0 8004A8D0 5443FFFA */  bnel       $v0, $v1, .L8004A8BC
/* 4B4D4 8004A8D4 904E0001 */   lbu       $t6, 1($v0)
/* 4B4D8 8004A8D8 1080008A */  beqz       $a0, .L8004AB04
/* 4B4DC 8004A8DC 3C038010 */   lui       $v1, 0x8010
/* 4B4E0 8004A8E0 3C088010 */  lui        $t0, 0x8010
/* 4B4E4 8004A8E4 2508D008 */  addiu      $t0, $t0, -0x2ff8
/* 4B4E8 8004A8E8 91050024 */  lbu        $a1, 0x24($t0)
/* 4B4EC 8004A8EC 3C0A8008 */  lui        $t2, 0x8008
/* 4B4F0 8004A8F0 254A8A60 */  addiu      $t2, $t2, -0x75a0
/* 4B4F4 8004A8F4 30A600F0 */  andi       $a2, $a1, 0xf0
/* 4B4F8 8004A8F8 00063103 */  sra        $a2, $a2, 4
/* 4B4FC 8004A8FC 30C6FFFF */  andi       $a2, $a2, 0xffff
/* 4B500 8004A900 30AF0007 */  andi       $t7, $a1, 7
/* 4B504 8004A904 000FC1C0 */  sll        $t8, $t7, 7
/* 4B508 8004A908 0006C8C0 */  sll        $t9, $a2, 3
/* 4B50C 8004A90C 03194821 */  addu       $t1, $t8, $t9
/* 4B510 8004A910 012A3821 */  addu       $a3, $t1, $t2
/* 4B514 8004A914 90E20000 */  lbu        $v0, ($a3)
/* 4B518 8004A918 240100FF */  addiu      $at, $zero, 0xff
/* 4B51C 8004A91C 3C038010 */  lui        $v1, 0x8010
/* 4B520 8004A920 14410005 */  bne        $v0, $at, .L8004A938
/* 4B524 8004A924 00402025 */   or        $a0, $v0, $zero
/* 4B528 8004A928 2463CFD8 */  addiu      $v1, $v1, -0x3028
/* 4B52C 8004A92C A0600028 */  sb         $zero, 0x28($v1)
/* 4B530 8004A930 100000D6 */  b          .L8004AC8C
/* 4B534 8004A934 00001025 */   or        $v0, $zero, $zero
.L8004A938:
/* 4B538 8004A938 30AB0008 */  andi       $t3, $a1, 8
/* 4B53C 8004A93C 11600004 */  beqz       $t3, .L8004A950
/* 4B540 8004A940 3C038010 */   lui       $v1, 0x8010
/* 4B544 8004A944 24820010 */  addiu      $v0, $a0, 0x10
/* 4B548 8004A948 304200FF */  andi       $v0, $v0, 0xff
/* 4B54C 8004A94C 00402025 */  or         $a0, $v0, $zero
.L8004A950:
/* 4B550 8004A950 2463CFD8 */  addiu      $v1, $v1, -0x3028
/* 4B554 8004A954 906C0004 */  lbu        $t4, 4($v1)
/* 4B558 8004A958 C4E40004 */  lwc1       $f4, 4($a3)
/* 4B55C 8004A95C 11840010 */  beq        $t4, $a0, .L8004A9A0
/* 4B560 8004A960 E464000C */   swc1      $f4, 0xc($v1)
/* 4B564 8004A964 A0620004 */  sb         $v0, 4($v1)
/* 4B568 8004A968 3C0D8010 */  lui        $t5, 0x8010
/* 4B56C 8004A96C 8DADC6CC */  lw         $t5, -0x3934($t5)
/* 4B570 8004A970 304F00FF */  andi       $t7, $v0, 0xff
/* 4B574 8004A974 000FC0C0 */  sll        $t8, $t7, 3
/* 4B578 8004A978 3C058010 */  lui        $a1, 0x8010
/* 4B57C 8004A97C 01B83821 */  addu       $a3, $t5, $t8
/* 4B580 8004A980 8CE40000 */  lw         $a0, ($a3)
/* 4B584 8004A984 8CE60004 */  lw         $a2, 4($a3)
/* 4B588 8004A988 0C012B6C */  jal        func_8004ADB0
/* 4B58C 8004A98C 8CA5C6D0 */   lw        $a1, -0x3930($a1)
/* 4B590 8004A990 3C038010 */  lui        $v1, 0x8010
/* 4B594 8004A994 3C088010 */  lui        $t0, 0x8010
/* 4B598 8004A998 2508D008 */  addiu      $t0, $t0, -0x2ff8
/* 4B59C 8004A99C 2463CFD8 */  addiu      $v1, $v1, -0x3028
.L8004A9A0:
/* 4B5A0 8004A9A0 91020022 */  lbu        $v0, 0x22($t0)
/* 4B5A4 8004A9A4 44803000 */  mtc1       $zero, $f6
/* 4B5A8 8004A9A8 AC600008 */  sw         $zero, 8($v1)
/* 4B5AC 8004A9AC 30450008 */  andi       $a1, $v0, 8
/* 4B5B0 8004A9B0 14A0000A */  bnez       $a1, .L8004A9DC
/* 4B5B4 8004A9B4 E4660010 */   swc1      $f6, 0x10($v1)
/* 4B5B8 8004A9B8 305900F0 */  andi       $t9, $v0, 0xf0
/* 4B5BC 8004A9BC 17200007 */  bnez       $t9, .L8004A9DC
/* 4B5C0 8004A9C0 00000000 */   nop       
/* 4B5C4 8004A9C4 9109002C */  lbu        $t1, 0x2c($t0)
/* 4B5C8 8004A9C8 A0600028 */  sb         $zero, 0x28($v1)
/* 4B5CC 8004A9CC 00001025 */  or         $v0, $zero, $zero
/* 4B5D0 8004A9D0 312AFFF7 */  andi       $t2, $t1, 0xfff7
/* 4B5D4 8004A9D4 100000AD */  b          .L8004AC8C
/* 4B5D8 8004A9D8 A10A002C */   sb        $t2, 0x2c($t0)
.L8004A9DC:
/* 4B5DC 8004A9DC 10A0000B */  beqz       $a1, .L8004AA0C
/* 4B5E0 8004A9E0 304B00F0 */   andi      $t3, $v0, 0xf0
/* 4B5E4 8004A9E4 15600009 */  bnez       $t3, .L8004AA0C
/* 4B5E8 8004A9E8 304C0007 */   andi      $t4, $v0, 7
/* 4B5EC 8004A9EC 55800008 */  bnel       $t4, $zero, .L8004AA10
/* 4B5F0 8004A9F0 91060026 */   lbu       $a2, 0x26($t0)
/* 4B5F4 8004A9F4 910E002C */  lbu        $t6, 0x2c($t0)
/* 4B5F8 8004A9F8 A0600028 */  sb         $zero, 0x28($v1)
/* 4B5FC 8004A9FC 00001025 */  or         $v0, $zero, $zero
/* 4B600 8004AA00 31CFFFF7 */  andi       $t7, $t6, 0xfff7
/* 4B604 8004AA04 100000A1 */  b          .L8004AC8C
/* 4B608 8004AA08 A10F002C */   sb        $t7, 0x2c($t0)
.L8004AA0C:
/* 4B60C 8004AA0C 91060026 */  lbu        $a2, 0x26($t0)
.L8004AA10:
/* 4B610 8004AA10 3C018008 */  lui        $at, 0x8008
/* 4B614 8004AA14 24180001 */  addiu      $t8, $zero, 1
/* 4B618 8004AA18 30CD0080 */  andi       $t5, $a2, 0x80
/* 4B61C 8004AA1C 11A00034 */  beqz       $t5, .L8004AAF0
/* 4B620 8004AA20 304900F0 */   andi      $t1, $v0, 0xf0
/* 4B624 8004AA24 44894000 */  mtc1       $t1, $f8
/* 4B628 8004AA28 C420D4D0 */  lwc1       $f0, -0x2b30($at)
/* 4B62C 8004AA2C AC600000 */  sw         $zero, ($v1)
/* 4B630 8004AA30 A0780028 */  sb         $t8, 0x28($v1)
/* 4B634 8004AA34 05210005 */  bgez       $t1, .L8004AA4C
/* 4B638 8004AA38 468042A0 */   cvt.s.w   $f10, $f8
/* 4B63C 8004AA3C 3C014F80 */  lui        $at, 0x4f80
/* 4B640 8004AA40 44818000 */  mtc1       $at, $f16
/* 4B644 8004AA44 00000000 */  nop        
/* 4B648 8004AA48 46105280 */  add.s      $f10, $f10, $f16
.L8004AA4C:
/* 4B64C 8004AA4C 46005482 */  mul.s      $f18, $f10, $f0
/* 4B650 8004AA50 30440007 */  andi       $a0, $v0, 7
/* 4B654 8004AA54 3C0A8010 */  lui        $t2, 0x8010
/* 4B658 8004AA58 240FFFFF */  addiu      $t7, $zero, -1
/* 4B65C 8004AA5C 240DFFFF */  addiu      $t5, $zero, -1
/* 4B660 8004AA60 30D80040 */  andi       $t8, $a2, 0x40
/* 4B664 8004AA64 1080000E */  beqz       $a0, .L8004AAA0
/* 4B668 8004AA68 E4720014 */   swc1      $f18, 0x14($v1)
/* 4B66C 8004AA6C 10A00003 */  beqz       $a1, .L8004AA7C
/* 4B670 8004AA70 3C018008 */   lui       $at, 0x8008
/* 4B674 8004AA74 10000003 */  b          .L8004AA84
/* 4B678 8004AA78 E4600018 */   swc1      $f0, 0x18($v1)
.L8004AA7C:
/* 4B67C 8004AA7C C424D4D4 */  lwc1       $f4, -0x2b2c($at)
/* 4B680 8004AA80 E4640018 */  swc1       $f4, 0x18($v1)
.L8004AA84:
/* 4B684 8004AA84 8D4AD004 */  lw         $t2, -0x2ffc($t2)
/* 4B688 8004AA88 008A0019 */  multu      $a0, $t2
/* 4B68C 8004AA8C 00005812 */  mflo       $t3
/* 4B690 8004AA90 000B6080 */  sll        $t4, $t3, 2
/* 4B694 8004AA94 AC6C001C */  sw         $t4, 0x1c($v1)
/* 4B698 8004AA98 10000005 */  b          .L8004AAB0
/* 4B69C 8004AA9C AC6C0020 */   sw        $t4, 0x20($v1)
.L8004AAA0:
/* 4B6A0 8004AAA0 44803000 */  mtc1       $zero, $f6
/* 4B6A4 8004AAA4 AC6F001C */  sw         $t7, 0x1c($v1)
/* 4B6A8 8004AAA8 AC6D0020 */  sw         $t5, 0x20($v1)
/* 4B6AC 8004AAAC E4660018 */  swc1       $f6, 0x18($v1)
.L8004AAB0:
/* 4B6B0 8004AAB0 1300000C */  beqz       $t8, .L8004AAE4
/* 4B6B4 8004AAB4 30CDFF7F */   andi      $t5, $a2, 0xff7f
/* 4B6B8 8004AAB8 91190020 */  lbu        $t9, 0x20($t0)
/* 4B6BC 8004AABC 3C0C8010 */  lui        $t4, 0x8010
/* 4B6C0 8004AAC0 8D8CD004 */  lw         $t4, -0x2ffc($t4)
/* 4B6C4 8004AAC4 240A0040 */  addiu      $t2, $zero, 0x40
/* 4B6C8 8004AAC8 3329003F */  andi       $t1, $t9, 0x3f
/* 4B6CC 8004AACC 01495823 */  subu       $t3, $t2, $t1
/* 4B6D0 8004AAD0 016C0019 */  multu      $t3, $t4
/* 4B6D4 8004AAD4 00007012 */  mflo       $t6
/* 4B6D8 8004AAD8 AC6E0024 */  sw         $t6, 0x24($v1)
/* 4B6DC 8004AADC 10000004 */  b          .L8004AAF0
/* 4B6E0 8004AAE0 A10D0026 */   sb        $t5, 0x26($t0)
.L8004AAE4:
/* 4B6E4 8004AAE4 240FFFFF */  addiu      $t7, $zero, -1
/* 4B6E8 8004AAE8 AC6F0024 */  sw         $t7, 0x24($v1)
/* 4B6EC 8004AAEC A10D0026 */  sb         $t5, 0x26($t0)
.L8004AAF0:
/* 4B6F0 8004AAF0 90780028 */  lbu        $t8, 0x28($v1)
/* 4B6F4 8004AAF4 5700000A */  bnel       $t8, $zero, .L8004AB20
/* 4B6F8 8004AAF8 8C660000 */   lw        $a2, ($v1)
/* 4B6FC 8004AAFC 10000063 */  b          .L8004AC8C
/* 4B700 8004AB00 00001025 */   or        $v0, $zero, $zero
.L8004AB04:
/* 4B704 8004AB04 2463CFD8 */  addiu      $v1, $v1, -0x3028
/* 4B708 8004AB08 90790028 */  lbu        $t9, 0x28($v1)
/* 4B70C 8004AB0C 57200004 */  bnel       $t9, $zero, .L8004AB20
/* 4B710 8004AB10 8C660000 */   lw        $a2, ($v1)
/* 4B714 8004AB14 1000005D */  b          .L8004AC8C
/* 4B718 8004AB18 00001025 */   or        $v0, $zero, $zero
/* 4B71C 8004AB1C 8C660000 */  lw         $a2, ($v1)
.L8004AB20:
/* 4B720 8004AB20 8C6A0024 */  lw         $t2, 0x24($v1)
/* 4B724 8004AB24 3C088010 */  lui        $t0, 0x8010
/* 4B728 8004AB28 2508D008 */  addiu      $t0, $t0, -0x2ff8
/* 4B72C 8004AB2C 0146082B */  sltu       $at, $t2, $a2
/* 4B730 8004AB30 50200008 */  beql       $at, $zero, .L8004AB54
/* 4B734 8004AB34 8C620020 */   lw        $v0, 0x20($v1)
/* 4B738 8004AB38 9109002C */  lbu        $t1, 0x2c($t0)
/* 4B73C 8004AB3C A0600028 */  sb         $zero, 0x28($v1)
/* 4B740 8004AB40 00001025 */  or         $v0, $zero, $zero
/* 4B744 8004AB44 312BFFF7 */  andi       $t3, $t1, 0xfff7
/* 4B748 8004AB48 10000050 */  b          .L8004AC8C
/* 4B74C 8004AB4C A10B002C */   sb        $t3, 0x2c($t0)
/* 4B750 8004AB50 8C620020 */  lw         $v0, 0x20($v1)
.L8004AB54:
/* 4B754 8004AB54 3C058010 */  lui        $a1, 0x8010
/* 4B758 8004AB58 90A5D02A */  lbu        $a1, -0x2fd6($a1)
/* 4B75C 8004AB5C 0046082B */  sltu       $at, $v0, $a2
/* 4B760 8004AB60 90640004 */  lbu        $a0, 4($v1)
/* 4B764 8004AB64 10200008 */  beqz       $at, .L8004AB88
/* 4B768 8004AB68 30A50008 */   andi      $a1, $a1, 8
/* 4B76C 8004AB6C C4680014 */  lwc1       $f8, 0x14($v1)
/* 4B770 8004AB70 C4700018 */  lwc1       $f16, 0x18($v1)
/* 4B774 8004AB74 8C6C001C */  lw         $t4, 0x1c($v1)
/* 4B778 8004AB78 46104280 */  add.s      $f10, $f8, $f16
/* 4B77C 8004AB7C 004C7021 */  addu       $t6, $v0, $t4
/* 4B780 8004AB80 AC6E0020 */  sw         $t6, 0x20($v1)
/* 4B784 8004AB84 E46A0014 */  swc1       $f10, 0x14($v1)
.L8004AB88:
/* 4B788 8004AB88 3C013F80 */  lui        $at, 0x3f80
/* 4B78C 8004AB8C 44812000 */  mtc1       $at, $f4
/* 4B790 8004AB90 C4720010 */  lwc1       $f18, 0x10($v1)
/* 4B794 8004AB94 8C620008 */  lw         $v0, 8($v1)
/* 4B798 8004AB98 3C198010 */  lui        $t9, 0x8010
/* 4B79C 8004AB9C 8F39C6D0 */  lw         $t9, -0x3930($t9)
/* 4B7A0 8004ABA0 46049180 */  add.s      $f6, $f18, $f4
/* 4B7A4 8004ABA4 00025040 */  sll        $t2, $v0, 1
/* 4B7A8 8004ABA8 3C0F8010 */  lui        $t7, 0x8010
/* 4B7AC 8004ABAC 00806825 */  or         $t5, $a0, $zero
/* 4B7B0 8004ABB0 032A4821 */  addu       $t1, $t9, $t2
/* 4B7B4 8004ABB4 8DEFC6CC */  lw         $t7, -0x3934($t7)
/* 4B7B8 8004ABB8 85240000 */  lh         $a0, ($t1)
/* 4B7BC 8004ABBC E4660010 */  swc1       $f6, 0x10($v1)
/* 4B7C0 8004ABC0 C4600010 */  lwc1       $f0, 0x10($v1)
/* 4B7C4 8004ABC4 C462000C */  lwc1       $f2, 0xc($v1)
/* 4B7C8 8004ABC8 000DC0C0 */  sll        $t8, $t5, 3
/* 4B7CC 8004ABCC 01F83821 */  addu       $a3, $t7, $t8
/* 4B7D0 8004ABD0 4600103E */  c.le.s     $f2, $f0
/* 4B7D4 8004ABD4 00000000 */  nop        
/* 4B7D8 8004ABD8 4500000B */  bc1f       .L8004AC08
/* 4B7DC 8004ABDC 00000000 */   nop       
/* 4B7E0 8004ABE0 46020201 */  sub.s      $f8, $f0, $f2
/* 4B7E4 8004ABE4 244B0001 */  addiu      $t3, $v0, 1
/* 4B7E8 8004ABE8 AC6B0008 */  sw         $t3, 8($v1)
/* 4B7EC 8004ABEC E4680010 */  swc1       $f8, 0x10($v1)
/* 4B7F0 8004ABF0 8CEE0004 */  lw         $t6, 4($a3)
/* 4B7F4 8004ABF4 000E6842 */  srl        $t5, $t6, 1
/* 4B7F8 8004ABF8 016D082B */  sltu       $at, $t3, $t5
/* 4B7FC 8004ABFC 14200002 */  bnez       $at, .L8004AC08
/* 4B800 8004AC00 00000000 */   nop       
/* 4B804 8004AC04 AC600008 */  sw         $zero, 8($v1)
.L8004AC08:
/* 4B808 8004AC08 54A0000B */  bnel       $a1, $zero, .L8004AC38
/* 4B80C 8004AC0C 3C013F40 */   lui       $at, 0x3f40
/* 4B810 8004AC10 C4700014 */  lwc1       $f16, 0x14($v1)
/* 4B814 8004AC14 44805000 */  mtc1       $zero, $f10
/* 4B818 8004AC18 00001025 */  or         $v0, $zero, $zero
/* 4B81C 8004AC1C 460A803C */  c.lt.s     $f16, $f10
/* 4B820 8004AC20 00000000 */  nop        
/* 4B824 8004AC24 45020004 */  bc1fl      .L8004AC38
/* 4B828 8004AC28 3C013F40 */   lui       $at, 0x3f40
/* 4B82C 8004AC2C 10000017 */  b          .L8004AC8C
/* 4B830 8004AC30 A0600028 */   sb        $zero, 0x28($v1)
/* 4B834 8004AC34 3C013F40 */  lui        $at, 0x3f40
.L8004AC38:
/* 4B838 8004AC38 44811000 */  mtc1       $at, $f2
/* 4B83C 8004AC3C C4600014 */  lwc1       $f0, 0x14($v1)
/* 4B840 8004AC40 44842000 */  mtc1       $a0, $f4
/* 4B844 8004AC44 240FFFFF */  addiu      $t7, $zero, -1
/* 4B848 8004AC48 4600103C */  c.lt.s     $f2, $f0
/* 4B84C 8004AC4C 468021A0 */  cvt.s.w    $f6, $f4
/* 4B850 8004AC50 45000006 */  bc1f       .L8004AC6C
/* 4B854 8004AC54 00000000 */   nop       
/* 4B858 8004AC58 44809000 */  mtc1       $zero, $f18
/* 4B85C 8004AC5C E4620014 */  swc1       $f2, 0x14($v1)
/* 4B860 8004AC60 C4600014 */  lwc1       $f0, 0x14($v1)
/* 4B864 8004AC64 AC6F0020 */  sw         $t7, 0x20($v1)
/* 4B868 8004AC68 E4720018 */  swc1       $f18, 0x18($v1)
.L8004AC6C:
/* 4B86C 8004AC6C 46003202 */  mul.s      $f8, $f6, $f0
/* 4B870 8004AC70 24D90100 */  addiu      $t9, $a2, 0x100
/* 4B874 8004AC74 AC790000 */  sw         $t9, ($v1)
/* 4B878 8004AC78 4600440D */  trunc.w.s  $f16, $f8
/* 4B87C 8004AC7C 44048000 */  mfc1       $a0, $f16
/* 4B880 8004AC80 00000000 */  nop        
/* 4B884 8004AC84 00042400 */  sll        $a0, $a0, 0x10
/* 4B888 8004AC88 00041403 */  sra        $v0, $a0, 0x10
.L8004AC8C:
/* 4B88C 8004AC8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4B890 8004AC90 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4B894 8004AC94 03E00008 */  jr         $ra
/* 4B898 8004AC98 00000000 */   nop       

glabel func_8004AC9C
/* 4B89C 8004AC9C 3C038010 */  lui        $v1, 0x8010
/* 4B8A0 8004ACA0 3C028010 */  lui        $v0, 0x8010
/* 4B8A4 8004ACA4 2442F978 */  addiu      $v0, $v0, -0x688
/* 4B8A8 8004ACA8 2463D6F8 */  addiu      $v1, $v1, -0x2908
.L8004ACAC:
/* 4B8AC 8004ACAC 24630008 */  addiu      $v1, $v1, 8
/* 4B8B0 8004ACB0 A460FFFA */  sh         $zero, -6($v1)
/* 4B8B4 8004ACB4 A460FFFC */  sh         $zero, -4($v1)
/* 4B8B8 8004ACB8 A460FFFE */  sh         $zero, -2($v1)
/* 4B8BC 8004ACBC 1462FFFB */  bne        $v1, $v0, .L8004ACAC
/* 4B8C0 8004ACC0 A460FFF8 */   sh        $zero, -8($v1)
/* 4B8C4 8004ACC4 3C018010 */  lui        $at, 0x8010
/* 4B8C8 8004ACC8 03E00008 */  jr         $ra
/* 4B8CC 8004ACCC AC20F978 */   sw        $zero, -0x688($at)

glabel func_8004ACD0
/* 4B8D0 8004ACD0 3C028010 */  lui        $v0, 0x8010
/* 4B8D4 8004ACD4 2442C6D8 */  addiu      $v0, $v0, -0x3928
/* 4B8D8 8004ACD8 00001825 */  or         $v1, $zero, $zero
/* 4B8DC 8004ACDC 24041700 */  addiu      $a0, $zero, 0x1700
.L8004ACE0:
/* 4B8E0 8004ACE0 8C4E0000 */  lw         $t6, ($v0)
/* 4B8E4 8004ACE4 01C37821 */  addu       $t7, $t6, $v1
/* 4B8E8 8004ACE8 A5E00000 */  sh         $zero, ($t7)
/* 4B8EC 8004ACEC 8C580000 */  lw         $t8, ($v0)
/* 4B8F0 8004ACF0 0303C821 */  addu       $t9, $t8, $v1
/* 4B8F4 8004ACF4 A7200002 */  sh         $zero, 2($t9)
/* 4B8F8 8004ACF8 8C480000 */  lw         $t0, ($v0)
/* 4B8FC 8004ACFC 01034821 */  addu       $t1, $t0, $v1
/* 4B900 8004AD00 A5200004 */  sh         $zero, 4($t1)
/* 4B904 8004AD04 8C4A0000 */  lw         $t2, ($v0)
/* 4B908 8004AD08 01435821 */  addu       $t3, $t2, $v1
/* 4B90C 8004AD0C 24630008 */  addiu      $v1, $v1, 8
/* 4B910 8004AD10 1464FFF3 */  bne        $v1, $a0, .L8004ACE0
/* 4B914 8004AD14 A5600006 */   sh        $zero, 6($t3)
/* 4B918 8004AD18 3C018010 */  lui        $at, 0x8010
/* 4B91C 8004AD1C AC20D6F0 */  sw         $zero, -0x2910($at)
/* 4B920 8004AD20 3C018010 */  lui        $at, 0x8010
/* 4B924 8004AD24 03E00008 */  jr         $ra
/* 4B928 8004AD28 AC20D6F4 */   sw        $zero, -0x290c($at)

glabel func_8004AD2C
/* 4B92C 8004AD2C 03E00008 */  jr         $ra
/* 4B930 8004AD30 00000000 */   nop       
/* 4B934 8004AD34 00000000 */  nop        
/* 4B938 8004AD38 00000000 */  nop        
/* 4B93C 8004AD3C 00000000 */  nop        
