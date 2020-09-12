.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005AAA0
/* 5B6A0 8005AAA0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 5B6A4 8005AAA4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 5B6A8 8005AAA8 0C0193E4 */  jal       func_80064F90
/* 5B6AC 8005AAAC 24040400 */  addiu     $a0, $zero, 0x400
/* 5B6B0 8005AAB0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 5B6B4 8005AAB4 27BD0018 */  addiu     $sp, $sp, 0x18
/* 5B6B8 8005AAB8 03E00008 */  jr        $ra
/* 5B6BC 8005AABC 00000000 */  nop       

glabel func_8005AAC0
/* 5B6C0 8005AAC0 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 5B6C4 8005AAC4 AFBF0044 */  sw        $ra, 0x44($sp)
/* 5B6C8 8005AAC8 F7BE0038 */  sdc1      $f30, 0x38($sp)
/* 5B6CC 8005AACC F7BC0030 */  sdc1      $f28, 0x30($sp)
/* 5B6D0 8005AAD0 F7BA0028 */  sdc1      $f26, 0x28($sp)
/* 5B6D4 8005AAD4 F7B80020 */  sdc1      $f24, 0x20($sp)
/* 5B6D8 8005AAD8 F7B60018 */  sdc1      $f22, 0x18($sp)
/* 5B6DC 8005AADC F7B40010 */  sdc1      $f20, 0x10($sp)
/* 5B6E0 8005AAE0 AFA60050 */  sw        $a2, 0x50($sp)
/* 5B6E4 8005AAE4 AFA70054 */  sw        $a3, 0x54($sp)
/* 5B6E8 8005AAE8 AFA40048 */  sw        $a0, 0x48($sp)
/* 5B6EC 8005AAEC 0C016C14 */  jal       func_8005B050
/* 5B6F0 8005AAF0 AFA5004C */  sw        $a1, 0x4c($sp)
/* 5B6F4 8005AAF4 C7A4005C */  lwc1      $f4, 0x5c($sp)
/* 5B6F8 8005AAF8 C7A60050 */  lwc1      $f6, 0x50($sp)
/* 5B6FC 8005AAFC C7A80060 */  lwc1      $f8, 0x60($sp)
/* 5B700 8005AB00 C7AA0054 */  lwc1      $f10, 0x54($sp)
/* 5B704 8005AB04 46062001 */  sub.s     $f0, $f4, $f6
/* 5B708 8005AB08 C7A60058 */  lwc1      $f6, 0x58($sp)
/* 5B70C 8005AB0C C7A40064 */  lwc1      $f4, 0x64($sp)
/* 5B710 8005AB10 460A4581 */  sub.s     $f22, $f8, $f10
/* 5B714 8005AB14 46000202 */  mul.s     $f8, $f0, $f0
/* 5B718 8005AB18 46000506 */  mov.s     $f20, $f0
/* 5B71C 8005AB1C 46062601 */  sub.s     $f24, $f4, $f6
/* 5B720 8005AB20 4616B282 */  mul.s     $f10, $f22, $f22
/* 5B724 8005AB24 460A4100 */  add.s     $f4, $f8, $f10
/* 5B728 8005AB28 4618C182 */  mul.s     $f6, $f24, $f24
/* 5B72C 8005AB2C 0C0173AC */  jal       func_8005CEB0
/* 5B730 8005AB30 46062300 */  add.s     $f12, $f4, $f6
/* 5B734 8005AB34 3C01BFF0 */  lui       $at, 0xbff0
/* 5B738 8005AB38 44814800 */  mtc1      $at, $f9
/* 5B73C 8005AB3C 44804000 */  mtc1      $zero, $f8
/* 5B740 8005AB40 460002A1 */  cvt.d.s   $f10, $f0
/* 5B744 8005AB44 C7A6006C */  lwc1      $f6, 0x6c($sp)
/* 5B748 8005AB48 462A4103 */  div.d     $f4, $f8, $f10
/* 5B74C 8005AB4C C7AA0070 */  lwc1      $f10, 0x70($sp)
/* 5B750 8005AB50 462020A0 */  cvt.s.d   $f2, $f4
/* 5B754 8005AB54 4602A502 */  mul.s     $f20, $f20, $f2
/* 5B758 8005AB58 00000000 */  nop       
/* 5B75C 8005AB5C 4602B582 */  mul.s     $f22, $f22, $f2
/* 5B760 8005AB60 00000000 */  nop       
/* 5B764 8005AB64 4602C602 */  mul.s     $f24, $f24, $f2
/* 5B768 8005AB68 00000000 */  nop       
/* 5B76C 8005AB6C 46183202 */  mul.s     $f8, $f6, $f24
/* 5B770 8005AB70 00000000 */  nop       
/* 5B774 8005AB74 46165102 */  mul.s     $f4, $f10, $f22
/* 5B778 8005AB78 46044681 */  sub.s     $f26, $f8, $f4
/* 5B77C 8005AB7C 46145202 */  mul.s     $f8, $f10, $f20
/* 5B780 8005AB80 C7A40068 */  lwc1      $f4, 0x68($sp)
/* 5B784 8005AB84 46182282 */  mul.s     $f10, $f4, $f24
/* 5B788 8005AB88 460A4701 */  sub.s     $f28, $f8, $f10
/* 5B78C 8005AB8C 46162202 */  mul.s     $f8, $f4, $f22
/* 5B790 8005AB90 00000000 */  nop       
/* 5B794 8005AB94 46143282 */  mul.s     $f10, $f6, $f20
/* 5B798 8005AB98 460A4781 */  sub.s     $f30, $f8, $f10
/* 5B79C 8005AB9C 461AD102 */  mul.s     $f4, $f26, $f26
/* 5B7A0 8005ABA0 00000000 */  nop       
/* 5B7A4 8005ABA4 461CE182 */  mul.s     $f6, $f28, $f28
/* 5B7A8 8005ABA8 46062200 */  add.s     $f8, $f4, $f6
/* 5B7AC 8005ABAC 461EF282 */  mul.s     $f10, $f30, $f30
/* 5B7B0 8005ABB0 0C0173AC */  jal       func_8005CEB0
/* 5B7B4 8005ABB4 460A4300 */  add.s     $f12, $f8, $f10
/* 5B7B8 8005ABB8 3C013FF0 */  lui       $at, 0x3ff0
/* 5B7BC 8005ABBC 44812800 */  mtc1      $at, $f5
/* 5B7C0 8005ABC0 44802000 */  mtc1      $zero, $f4
/* 5B7C4 8005ABC4 460001A1 */  cvt.d.s   $f6, $f0
/* 5B7C8 8005ABC8 46262203 */  div.d     $f8, $f4, $f6
/* 5B7CC 8005ABCC 462040A0 */  cvt.s.d   $f2, $f8
/* 5B7D0 8005ABD0 4602D682 */  mul.s     $f26, $f26, $f2
/* 5B7D4 8005ABD4 00000000 */  nop       
/* 5B7D8 8005ABD8 4602E702 */  mul.s     $f28, $f28, $f2
/* 5B7DC 8005ABDC 00000000 */  nop       
/* 5B7E0 8005ABE0 4602F782 */  mul.s     $f30, $f30, $f2
/* 5B7E4 8005ABE4 00000000 */  nop       
/* 5B7E8 8005ABE8 461EB282 */  mul.s     $f10, $f22, $f30
/* 5B7EC 8005ABEC 00000000 */  nop       
/* 5B7F0 8005ABF0 461CC102 */  mul.s     $f4, $f24, $f28
/* 5B7F4 8005ABF4 00000000 */  nop       
/* 5B7F8 8005ABF8 461AC182 */  mul.s     $f6, $f24, $f26
/* 5B7FC 8005ABFC 00000000 */  nop       
/* 5B800 8005AC00 461EA202 */  mul.s     $f8, $f20, $f30
/* 5B804 8005AC04 46045381 */  sub.s     $f14, $f10, $f4
/* 5B808 8005AC08 461CA282 */  mul.s     $f10, $f20, $f28
/* 5B80C 8005AC0C 00000000 */  nop       
/* 5B810 8005AC10 461AB102 */  mul.s     $f4, $f22, $f26
/* 5B814 8005AC14 E7AE0068 */  swc1      $f14, 0x68($sp)
/* 5B818 8005AC18 46083401 */  sub.s     $f16, $f6, $f8
/* 5B81C 8005AC1C 460E7182 */  mul.s     $f6, $f14, $f14
/* 5B820 8005AC20 00000000 */  nop       
/* 5B824 8005AC24 46108202 */  mul.s     $f8, $f16, $f16
/* 5B828 8005AC28 E7B0006C */  swc1      $f16, 0x6c($sp)
/* 5B82C 8005AC2C 46045481 */  sub.s     $f18, $f10, $f4
/* 5B830 8005AC30 46129102 */  mul.s     $f4, $f18, $f18
/* 5B834 8005AC34 46083280 */  add.s     $f10, $f6, $f8
/* 5B838 8005AC38 E7B20070 */  swc1      $f18, 0x70($sp)
/* 5B83C 8005AC3C 0C0173AC */  jal       func_8005CEB0
/* 5B840 8005AC40 46045300 */  add.s     $f12, $f10, $f4
/* 5B844 8005AC44 3C0142FE */  lui       $at, 0x42fe
/* 5B848 8005AC48 44816000 */  mtc1      $at, $f12
/* 5B84C 8005AC4C 3C014300 */  lui       $at, 0x4300
/* 5B850 8005AC50 44818000 */  mtc1      $at, $f16
/* 5B854 8005AC54 3C013FF0 */  lui       $at, 0x3ff0
/* 5B858 8005AC58 44813800 */  mtc1      $at, $f7
/* 5B85C 8005AC5C 44803000 */  mtc1      $zero, $f6
/* 5B860 8005AC60 46000221 */  cvt.d.s   $f8, $f0
/* 5B864 8005AC64 C7A40068 */  lwc1      $f4, 0x68($sp)
/* 5B868 8005AC68 46283283 */  div.d     $f10, $f6, $f8
/* 5B86C 8005AC6C C7A8006C */  lwc1      $f8, 0x6c($sp)
/* 5B870 8005AC70 8FA40048 */  lw        $a0, 0x48($sp)
/* 5B874 8005AC74 8FA5004C */  lw        $a1, 0x4c($sp)
/* 5B878 8005AC78 24020080 */  addiu     $v0, $zero, 0x80
/* 5B87C 8005AC7C 462050A0 */  cvt.s.d   $f2, $f10
/* 5B880 8005AC80 46022182 */  mul.s     $f6, $f4, $f2
/* 5B884 8005AC84 C7A40070 */  lwc1      $f4, 0x70($sp)
/* 5B888 8005AC88 46024282 */  mul.s     $f10, $f8, $f2
/* 5B88C 8005AC8C E7A60068 */  swc1      $f6, 0x68($sp)
/* 5B890 8005AC90 46022182 */  mul.s     $f6, $f4, $f2
/* 5B894 8005AC94 E7AA006C */  swc1      $f10, 0x6c($sp)
/* 5B898 8005AC98 4610D382 */  mul.s     $f14, $f26, $f16
/* 5B89C 8005AC9C E7A60070 */  swc1      $f6, 0x70($sp)
/* 5B8A0 8005ACA0 4610E082 */  mul.s     $f2, $f28, $f16
/* 5B8A4 8005ACA4 460C703C */  c.lt.s    $f14, $f12
/* 5B8A8 8005ACA8 00000000 */  nop       
/* 5B8AC 8005ACAC 45020004 */  bc1fl     .L8005ACC0
/* 5B8B0 8005ACB0 46006006 */  mov.s     $f0, $f12
/* 5B8B4 8005ACB4 10000002 */  b         .L8005ACC0
/* 5B8B8 8005ACB8 46007006 */  mov.s     $f0, $f14
/* 5B8BC 8005ACBC 46006006 */  mov.s     $f0, $f12
.L8005ACC0:
/* 5B8C0 8005ACC0 4600020D */  trunc.w.s $f8, $f0
/* 5B8C4 8005ACC4 460C103C */  c.lt.s    $f2, $f12
/* 5B8C8 8005ACC8 44184000 */  mfc1      $t8, $f8
/* 5B8CC 8005ACCC 45000003 */  bc1f      .L8005ACDC
/* 5B8D0 8005ACD0 A0B80008 */  sb        $t8, 8($a1)
/* 5B8D4 8005ACD4 10000002 */  b         .L8005ACE0
/* 5B8D8 8005ACD8 46001006 */  mov.s     $f0, $f2
.L8005ACDC:
/* 5B8DC 8005ACDC 46006006 */  mov.s     $f0, $f12
.L8005ACE0:
/* 5B8E0 8005ACE0 4610F082 */  mul.s     $f2, $f30, $f16
/* 5B8E4 8005ACE4 4600028D */  trunc.w.s $f10, $f0
/* 5B8E8 8005ACE8 460C103C */  c.lt.s    $f2, $f12
/* 5B8EC 8005ACEC 44095000 */  mfc1      $t1, $f10
/* 5B8F0 8005ACF0 45000003 */  bc1f      .L8005AD00
/* 5B8F4 8005ACF4 A0A90009 */  sb        $t1, 9($a1)
/* 5B8F8 8005ACF8 10000002 */  b         .L8005AD04
/* 5B8FC 8005ACFC 46001006 */  mov.s     $f0, $f2
.L8005AD00:
/* 5B900 8005AD00 46006006 */  mov.s     $f0, $f12
.L8005AD04:
/* 5B904 8005AD04 4600010D */  trunc.w.s $f4, $f0
/* 5B908 8005AD08 440C2000 */  mfc1      $t4, $f4
/* 5B90C 8005AD0C 00000000 */  nop       
/* 5B910 8005AD10 A0AC000A */  sb        $t4, 0xa($a1)
/* 5B914 8005AD14 C7A60068 */  lwc1      $f6, 0x68($sp)
/* 5B918 8005AD18 46103082 */  mul.s     $f2, $f6, $f16
/* 5B91C 8005AD1C 460C103C */  c.lt.s    $f2, $f12
/* 5B920 8005AD20 00000000 */  nop       
/* 5B924 8005AD24 45020004 */  bc1fl     .L8005AD38
/* 5B928 8005AD28 46006006 */  mov.s     $f0, $f12
/* 5B92C 8005AD2C 10000002 */  b         .L8005AD38
/* 5B930 8005AD30 46001006 */  mov.s     $f0, $f2
/* 5B934 8005AD34 46006006 */  mov.s     $f0, $f12
.L8005AD38:
/* 5B938 8005AD38 4600020D */  trunc.w.s $f8, $f0
/* 5B93C 8005AD3C 440F4000 */  mfc1      $t7, $f8
/* 5B940 8005AD40 00000000 */  nop       
/* 5B944 8005AD44 A0AF0018 */  sb        $t7, 0x18($a1)
/* 5B948 8005AD48 C7AA006C */  lwc1      $f10, 0x6c($sp)
/* 5B94C 8005AD4C 46105082 */  mul.s     $f2, $f10, $f16
/* 5B950 8005AD50 460C103C */  c.lt.s    $f2, $f12
/* 5B954 8005AD54 00000000 */  nop       
/* 5B958 8005AD58 45020004 */  bc1fl     .L8005AD6C
/* 5B95C 8005AD5C 46006006 */  mov.s     $f0, $f12
/* 5B960 8005AD60 10000002 */  b         .L8005AD6C
/* 5B964 8005AD64 46001006 */  mov.s     $f0, $f2
/* 5B968 8005AD68 46006006 */  mov.s     $f0, $f12
.L8005AD6C:
/* 5B96C 8005AD6C 4600010D */  trunc.w.s $f4, $f0
/* 5B970 8005AD70 44082000 */  mfc1      $t0, $f4
/* 5B974 8005AD74 00000000 */  nop       
/* 5B978 8005AD78 A0A80019 */  sb        $t0, 0x19($a1)
/* 5B97C 8005AD7C C7A60070 */  lwc1      $f6, 0x70($sp)
/* 5B980 8005AD80 46103082 */  mul.s     $f2, $f6, $f16
/* 5B984 8005AD84 460C103C */  c.lt.s    $f2, $f12
/* 5B988 8005AD88 00000000 */  nop       
/* 5B98C 8005AD8C 45020004 */  bc1fl     .L8005ADA0
/* 5B990 8005AD90 46006006 */  mov.s     $f0, $f12
/* 5B994 8005AD94 10000002 */  b         .L8005ADA0
/* 5B998 8005AD98 46001006 */  mov.s     $f0, $f2
/* 5B99C 8005AD9C 46006006 */  mov.s     $f0, $f12
.L8005ADA0:
/* 5B9A0 8005ADA0 4600020D */  trunc.w.s $f8, $f0
/* 5B9A4 8005ADA4 A0A00000 */  sb        $zero, ($a1)
/* 5B9A8 8005ADA8 A0A00001 */  sb        $zero, 1($a1)
/* 5B9AC 8005ADAC A0A00002 */  sb        $zero, 2($a1)
/* 5B9B0 8005ADB0 440B4000 */  mfc1      $t3, $f8
/* 5B9B4 8005ADB4 A0A00003 */  sb        $zero, 3($a1)
/* 5B9B8 8005ADB8 A0A00004 */  sb        $zero, 4($a1)
/* 5B9BC 8005ADBC A0A00005 */  sb        $zero, 5($a1)
/* 5B9C0 8005ADC0 A0A00006 */  sb        $zero, 6($a1)
/* 5B9C4 8005ADC4 A0A00007 */  sb        $zero, 7($a1)
/* 5B9C8 8005ADC8 A0A00010 */  sb        $zero, 0x10($a1)
/* 5B9CC 8005ADCC A0A20011 */  sb        $v0, 0x11($a1)
/* 5B9D0 8005ADD0 A0A00012 */  sb        $zero, 0x12($a1)
/* 5B9D4 8005ADD4 A0A00013 */  sb        $zero, 0x13($a1)
/* 5B9D8 8005ADD8 A0A00014 */  sb        $zero, 0x14($a1)
/* 5B9DC 8005ADDC A0A20015 */  sb        $v0, 0x15($a1)
/* 5B9E0 8005ADE0 A0A00016 */  sb        $zero, 0x16($a1)
/* 5B9E4 8005ADE4 A0A00017 */  sb        $zero, 0x17($a1)
/* 5B9E8 8005ADE8 A0AB001A */  sb        $t3, 0x1a($a1)
/* 5B9EC 8005ADEC E49A0000 */  swc1      $f26, ($a0)
/* 5B9F0 8005ADF0 C7B20050 */  lwc1      $f18, 0x50($sp)
/* 5B9F4 8005ADF4 C7B00054 */  lwc1      $f16, 0x54($sp)
/* 5B9F8 8005ADF8 C7AE0058 */  lwc1      $f14, 0x58($sp)
/* 5B9FC 8005ADFC 461A9282 */  mul.s     $f10, $f18, $f26
/* 5BA00 8005AE00 C7A00068 */  lwc1      $f0, 0x68($sp)
/* 5BA04 8005AE04 C7AC006C */  lwc1      $f12, 0x6c($sp)
/* 5BA08 8005AE08 461C8102 */  mul.s     $f4, $f16, $f28
/* 5BA0C 8005AE0C C7A20070 */  lwc1      $f2, 0x70($sp)
/* 5BA10 8005AE10 E49C0010 */  swc1      $f28, 0x10($a0)
/* 5BA14 8005AE14 461E7202 */  mul.s     $f8, $f14, $f30
/* 5BA18 8005AE18 E49E0020 */  swc1      $f30, 0x20($a0)
/* 5BA1C 8005AE1C E4940008 */  swc1      $f20, 8($a0)
/* 5BA20 8005AE20 E4960018 */  swc1      $f22, 0x18($a0)
/* 5BA24 8005AE24 E4980028 */  swc1      $f24, 0x28($a0)
/* 5BA28 8005AE28 46045180 */  add.s     $f6, $f10, $f4
/* 5BA2C 8005AE2C E4800004 */  swc1      $f0, 4($a0)
/* 5BA30 8005AE30 E48C0014 */  swc1      $f12, 0x14($a0)
/* 5BA34 8005AE34 E4820024 */  swc1      $f2, 0x24($a0)
/* 5BA38 8005AE38 46083280 */  add.s     $f10, $f6, $f8
/* 5BA3C 8005AE3C 46009182 */  mul.s     $f6, $f18, $f0
/* 5BA40 8005AE40 44800000 */  mtc1      $zero, $f0
/* 5BA44 8005AE44 3C013F80 */  lui       $at, 0x3f80
/* 5BA48 8005AE48 460C8202 */  mul.s     $f8, $f16, $f12
/* 5BA4C 8005AE4C 46005107 */  neg.s     $f4, $f10
/* 5BA50 8005AE50 E4840030 */  swc1      $f4, 0x30($a0)
/* 5BA54 8005AE54 46027102 */  mul.s     $f4, $f14, $f2
/* 5BA58 8005AE58 46083280 */  add.s     $f10, $f6, $f8
/* 5BA5C 8005AE5C 46045180 */  add.s     $f6, $f10, $f4
/* 5BA60 8005AE60 46003207 */  neg.s     $f8, $f6
/* 5BA64 8005AE64 E4880034 */  swc1      $f8, 0x34($a0)
/* 5BA68 8005AE68 C7AA0050 */  lwc1      $f10, 0x50($sp)
/* 5BA6C 8005AE6C C7A60054 */  lwc1      $f6, 0x54($sp)
/* 5BA70 8005AE70 46145102 */  mul.s     $f4, $f10, $f20
/* 5BA74 8005AE74 00000000 */  nop       
/* 5BA78 8005AE78 46163202 */  mul.s     $f8, $f6, $f22
/* 5BA7C 8005AE7C C7A60058 */  lwc1      $f6, 0x58($sp)
/* 5BA80 8005AE80 E480000C */  swc1      $f0, 0xc($a0)
/* 5BA84 8005AE84 E480001C */  swc1      $f0, 0x1c($a0)
/* 5BA88 8005AE88 E480002C */  swc1      $f0, 0x2c($a0)
/* 5BA8C 8005AE8C 46082280 */  add.s     $f10, $f4, $f8
/* 5BA90 8005AE90 46183102 */  mul.s     $f4, $f6, $f24
/* 5BA94 8005AE94 46045200 */  add.s     $f8, $f10, $f4
/* 5BA98 8005AE98 44815000 */  mtc1      $at, $f10
/* 5BA9C 8005AE9C 46004187 */  neg.s     $f6, $f8
/* 5BAA0 8005AEA0 E48A003C */  swc1      $f10, 0x3c($a0)
/* 5BAA4 8005AEA4 E4860038 */  swc1      $f6, 0x38($a0)
/* 5BAA8 8005AEA8 8FBF0044 */  lw        $ra, 0x44($sp)
/* 5BAAC 8005AEAC D7BE0038 */  ldc1      $f30, 0x38($sp)
/* 5BAB0 8005AEB0 D7BC0030 */  ldc1      $f28, 0x30($sp)
/* 5BAB4 8005AEB4 D7BA0028 */  ldc1      $f26, 0x28($sp)
/* 5BAB8 8005AEB8 D7B80020 */  ldc1      $f24, 0x20($sp)
/* 5BABC 8005AEBC D7B60018 */  ldc1      $f22, 0x18($sp)
/* 5BAC0 8005AEC0 D7B40010 */  ldc1      $f20, 0x10($sp)
/* 5BAC4 8005AEC4 03E00008 */  jr        $ra
/* 5BAC8 8005AEC8 27BD0048 */  addiu     $sp, $sp, 0x48

glabel func_8005AECC
/* 5BACC 8005AECC 27BDFF88 */  addiu     $sp, $sp, -0x78
/* 5BAD0 8005AED0 C7A40088 */  lwc1      $f4, 0x88($sp)
/* 5BAD4 8005AED4 44866000 */  mtc1      $a2, $f12
/* 5BAD8 8005AED8 44877000 */  mtc1      $a3, $f14
/* 5BADC 8005AEDC E7A40010 */  swc1      $f4, 0x10($sp)
/* 5BAE0 8005AEE0 C7A400A0 */  lwc1      $f4, 0xa0($sp)
/* 5BAE4 8005AEE4 C7A6008C */  lwc1      $f6, 0x8c($sp)
/* 5BAE8 8005AEE8 C7A80090 */  lwc1      $f8, 0x90($sp)
/* 5BAEC 8005AEEC C7AA0094 */  lwc1      $f10, 0x94($sp)
/* 5BAF0 8005AEF0 C7B00098 */  lwc1      $f16, 0x98($sp)
/* 5BAF4 8005AEF4 C7B2009C */  lwc1      $f18, 0x9c($sp)
/* 5BAF8 8005AEF8 AFBF0034 */  sw        $ra, 0x34($sp)
/* 5BAFC 8005AEFC AFA40078 */  sw        $a0, 0x78($sp)
/* 5BB00 8005AF00 44066000 */  mfc1      $a2, $f12
/* 5BB04 8005AF04 44077000 */  mfc1      $a3, $f14
/* 5BB08 8005AF08 27A40038 */  addiu     $a0, $sp, 0x38
/* 5BB0C 8005AF0C E7A40028 */  swc1      $f4, 0x28($sp)
/* 5BB10 8005AF10 E7A60014 */  swc1      $f6, 0x14($sp)
/* 5BB14 8005AF14 E7A80018 */  swc1      $f8, 0x18($sp)
/* 5BB18 8005AF18 E7AA001C */  swc1      $f10, 0x1c($sp)
/* 5BB1C 8005AF1C E7B00020 */  swc1      $f16, 0x20($sp)
/* 5BB20 8005AF20 0C016AB0 */  jal       func_8005AAC0
/* 5BB24 8005AF24 E7B20024 */  swc1      $f18, 0x24($sp)
/* 5BB28 8005AF28 27A40038 */  addiu     $a0, $sp, 0x38
/* 5BB2C 8005AF2C 0C016BD4 */  jal       func_8005AF50
/* 5BB30 8005AF30 8FA50078 */  lw        $a1, 0x78($sp)
/* 5BB34 8005AF34 8FBF0034 */  lw        $ra, 0x34($sp)
/* 5BB38 8005AF38 27BD0078 */  addiu     $sp, $sp, 0x78
/* 5BB3C 8005AF3C 03E00008 */  jr        $ra
/* 5BB40 8005AF40 00000000 */  nop       
/* 5BB44 8005AF44 00000000 */  nop       
/* 5BB48 8005AF48 00000000 */  nop       
/* 5BB4C 8005AF4C 00000000 */  nop       
