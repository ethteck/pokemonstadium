.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005E890
/* 5F490 8005E890 3C03A460 */  lui        $v1, 0xa460
/* 5F494 8005E894 34630010 */  ori        $v1, $v1, 0x10
/* 5F498 8005E898 8C620000 */  lw         $v0, ($v1)
/* 5F49C 8005E89C 00A03825 */  or         $a3, $a1, $zero
/* 5F4A0 8005E8A0 304E0003 */  andi       $t6, $v0, 3
/* 5F4A4 8005E8A4 51C00006 */  beql       $t6, $zero, .L8005E8C0
/* 5F4A8 8005E8A8 90820009 */   lbu       $v0, 9($a0)
/* 5F4AC 8005E8AC 8C620000 */  lw         $v0, ($v1)
.L8005E8B0:
/* 5F4B0 8005E8B0 304F0003 */  andi       $t7, $v0, 3
/* 5F4B4 8005E8B4 55E0FFFE */  bnel       $t7, $zero, .L8005E8B0
/* 5F4B8 8005E8B8 8C620000 */   lw        $v0, ($v1)
/* 5F4BC 8005E8BC 90820009 */  lbu        $v0, 9($a0)
.L8005E8C0:
/* 5F4C0 8005E8C0 3C038008 */  lui        $v1, 0x8008
/* 5F4C4 8005E8C4 90990004 */  lbu        $t9, 4($a0)
/* 5F4C8 8005E8C8 0002C080 */  sll        $t8, $v0, 2
/* 5F4CC 8005E8CC 00781821 */  addu       $v1, $v1, $t8
/* 5F4D0 8005E8D0 8C63A880 */  lw         $v1, -0x5780($v1)
/* 5F4D4 8005E8D4 90680004 */  lbu        $t0, 4($v1)
/* 5F4D8 8005E8D8 5328003D */  beql       $t9, $t0, .L8005E9D0
/* 5F4DC 8005E8DC 8C8A000C */   lw        $t2, 0xc($a0)
/* 5F4E0 8005E8E0 14400019 */  bnez       $v0, .L8005E948
/* 5F4E4 8005E8E4 00602825 */   or        $a1, $v1, $zero
/* 5F4E8 8005E8E8 90820005 */  lbu        $v0, 5($a0)
/* 5F4EC 8005E8EC 90690005 */  lbu        $t1, 5($v1)
/* 5F4F0 8005E8F0 3C0AA460 */  lui        $t2, 0xa460
/* 5F4F4 8005E8F4 3C0CA460 */  lui        $t4, 0xa460
/* 5F4F8 8005E8F8 10490002 */  beq        $v0, $t1, .L8005E904
/* 5F4FC 8005E8FC 3C0EA460 */   lui       $t6, 0xa460
/* 5F500 8005E900 AD420014 */  sw         $v0, 0x14($t2)
.L8005E904:
/* 5F504 8005E904 90820006 */  lbu        $v0, 6($a0)
/* 5F508 8005E908 90AB0006 */  lbu        $t3, 6($a1)
/* 5F50C 8005E90C 3C18A460 */  lui        $t8, 0xa460
/* 5F510 8005E910 504B0003 */  beql       $v0, $t3, .L8005E920
/* 5F514 8005E914 90820007 */   lbu       $v0, 7($a0)
/* 5F518 8005E918 AD82001C */  sw         $v0, 0x1c($t4)
/* 5F51C 8005E91C 90820007 */  lbu        $v0, 7($a0)
.L8005E920:
/* 5F520 8005E920 90AD0007 */  lbu        $t5, 7($a1)
/* 5F524 8005E924 504D0003 */  beql       $v0, $t5, .L8005E934
/* 5F528 8005E928 90820008 */   lbu       $v0, 8($a0)
/* 5F52C 8005E92C ADC20020 */  sw         $v0, 0x20($t6)
/* 5F530 8005E930 90820008 */  lbu        $v0, 8($a0)
.L8005E934:
/* 5F534 8005E934 90AF0008 */  lbu        $t7, 8($a1)
/* 5F538 8005E938 504F001B */  beql       $v0, $t7, .L8005E9A8
/* 5F53C 8005E93C 908F0004 */   lbu       $t7, 4($a0)
/* 5F540 8005E940 10000018 */  b          .L8005E9A4
/* 5F544 8005E944 AF020018 */   sw        $v0, 0x18($t8)
.L8005E948:
/* 5F548 8005E948 90820005 */  lbu        $v0, 5($a0)
/* 5F54C 8005E94C 90B90005 */  lbu        $t9, 5($a1)
/* 5F550 8005E950 3C08A460 */  lui        $t0, 0xa460
/* 5F554 8005E954 3C0AA460 */  lui        $t2, 0xa460
/* 5F558 8005E958 10590002 */  beq        $v0, $t9, .L8005E964
/* 5F55C 8005E95C 3C0CA460 */   lui       $t4, 0xa460
/* 5F560 8005E960 AD020024 */  sw         $v0, 0x24($t0)
.L8005E964:
/* 5F564 8005E964 90820006 */  lbu        $v0, 6($a0)
/* 5F568 8005E968 90A90006 */  lbu        $t1, 6($a1)
/* 5F56C 8005E96C 3C0EA460 */  lui        $t6, 0xa460
/* 5F570 8005E970 50490003 */  beql       $v0, $t1, .L8005E980
/* 5F574 8005E974 90820007 */   lbu       $v0, 7($a0)
/* 5F578 8005E978 AD42002C */  sw         $v0, 0x2c($t2)
/* 5F57C 8005E97C 90820007 */  lbu        $v0, 7($a0)
.L8005E980:
/* 5F580 8005E980 90AB0007 */  lbu        $t3, 7($a1)
/* 5F584 8005E984 504B0003 */  beql       $v0, $t3, .L8005E994
/* 5F588 8005E988 90820008 */   lbu       $v0, 8($a0)
/* 5F58C 8005E98C AD820030 */  sw         $v0, 0x30($t4)
/* 5F590 8005E990 90820008 */  lbu        $v0, 8($a0)
.L8005E994:
/* 5F594 8005E994 90AD0008 */  lbu        $t5, 8($a1)
/* 5F598 8005E998 504D0003 */  beql       $v0, $t5, .L8005E9A8
/* 5F59C 8005E99C 908F0004 */   lbu       $t7, 4($a0)
/* 5F5A0 8005E9A0 ADC20028 */  sw         $v0, 0x28($t6)
.L8005E9A4:
/* 5F5A4 8005E9A4 908F0004 */  lbu        $t7, 4($a0)
.L8005E9A8:
/* 5F5A8 8005E9A8 A0AF0004 */  sb         $t7, 4($a1)
/* 5F5AC 8005E9AC 90980005 */  lbu        $t8, 5($a0)
/* 5F5B0 8005E9B0 A0B80005 */  sb         $t8, 5($a1)
/* 5F5B4 8005E9B4 90990006 */  lbu        $t9, 6($a0)
/* 5F5B8 8005E9B8 A0B90006 */  sb         $t9, 6($a1)
/* 5F5BC 8005E9BC 90880007 */  lbu        $t0, 7($a0)
/* 5F5C0 8005E9C0 A0A80007 */  sb         $t0, 7($a1)
/* 5F5C4 8005E9C4 90890008 */  lbu        $t1, 8($a0)
/* 5F5C8 8005E9C8 A0A90008 */  sb         $t1, 8($a1)
/* 5F5CC 8005E9CC 8C8A000C */  lw         $t2, 0xc($a0)
.L8005E9D0:
/* 5F5D0 8005E9D0 3C01A000 */  lui        $at, 0xa000
/* 5F5D4 8005E9D4 00001025 */  or         $v0, $zero, $zero
/* 5F5D8 8005E9D8 01475825 */  or         $t3, $t2, $a3
/* 5F5DC 8005E9DC 01616025 */  or         $t4, $t3, $at
/* 5F5E0 8005E9E0 8D8D0000 */  lw         $t5, ($t4)
/* 5F5E4 8005E9E4 03E00008 */  jr         $ra
/* 5F5E8 8005E9E8 ACCD0000 */   sw        $t5, ($a2)
/* 5F5EC 8005E9EC 00000000 */  nop        

glabel func_8005E9F0
/* 5F5F0 8005E9F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5F5F4 8005E9F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5F5F8 8005E9F8 0C018AA4 */  jal        __osDisableInt
/* 5F5FC 8005E9FC AFA40020 */   sw        $a0, 0x20($sp)
/* 5F600 8005EA00 3C0F8008 */  lui        $t7, 0x8008
/* 5F604 8005EA04 8DEFACF4 */  lw         $t7, -0x530c($t7)
/* 5F608 8005EA08 8FAE0020 */  lw         $t6, 0x20($sp)
/* 5F60C 8005EA0C AFA2001C */  sw         $v0, 0x1c($sp)
/* 5F610 8005EA10 3C188008 */  lui        $t8, 0x8008
/* 5F614 8005EA14 ADEE0004 */  sw         $t6, 4($t7)
/* 5F618 8005EA18 8F18ACF4 */  lw         $t8, -0x530c($t8)
/* 5F61C 8005EA1C 97190000 */  lhu        $t9, ($t8)
/* 5F620 8005EA20 37280010 */  ori        $t0, $t9, 0x10
/* 5F624 8005EA24 A7080000 */  sh         $t0, ($t8)
/* 5F628 8005EA28 0C018AC0 */  jal        __osRestoreInt
/* 5F62C 8005EA2C 8FA4001C */   lw        $a0, 0x1c($sp)
/* 5F630 8005EA30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5F634 8005EA34 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5F638 8005EA38 03E00008 */  jr         $ra
/* 5F63C 8005EA3C 00000000 */   nop       

glabel func_8005EA40
/* 5F640 8005EA40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5F644 8005EA44 3C03A460 */  lui        $v1, 0xa460
/* 5F648 8005EA48 34630010 */  ori        $v1, $v1, 0x10
/* 5F64C 8005EA4C AFBF001C */  sw         $ra, 0x1c($sp)
/* 5F650 8005EA50 AFB00018 */  sw         $s0, 0x18($sp)
/* 5F654 8005EA54 AFA60028 */  sw         $a2, 0x28($sp)
/* 5F658 8005EA58 8C620000 */  lw         $v0, ($v1)
/* 5F65C 8005EA5C 00808025 */  or         $s0, $a0, $zero
/* 5F660 8005EA60 304E0003 */  andi       $t6, $v0, 3
/* 5F664 8005EA64 51C00006 */  beql       $t6, $zero, .L8005EA80
/* 5F668 8005EA68 92020009 */   lbu       $v0, 9($s0)
/* 5F66C 8005EA6C 8C620000 */  lw         $v0, ($v1)
.L8005EA70:
/* 5F670 8005EA70 304F0003 */  andi       $t7, $v0, 3
/* 5F674 8005EA74 55E0FFFE */  bnel       $t7, $zero, .L8005EA70
/* 5F678 8005EA78 8C620000 */   lw        $v0, ($v1)
/* 5F67C 8005EA7C 92020009 */  lbu        $v0, 9($s0)
.L8005EA80:
/* 5F680 8005EA80 3C048008 */  lui        $a0, 0x8008
/* 5F684 8005EA84 92190004 */  lbu        $t9, 4($s0)
/* 5F688 8005EA88 0002C080 */  sll        $t8, $v0, 2
/* 5F68C 8005EA8C 00982021 */  addu       $a0, $a0, $t8
/* 5F690 8005EA90 8C84A880 */  lw         $a0, -0x5780($a0)
/* 5F694 8005EA94 90880004 */  lbu        $t0, 4($a0)
/* 5F698 8005EA98 5328003D */  beql       $t9, $t0, .L8005EB90
/* 5F69C 8005EA9C 00E02025 */   or        $a0, $a3, $zero
/* 5F6A0 8005EAA0 14400019 */  bnez       $v0, .L8005EB08
/* 5F6A4 8005EAA4 00801825 */   or        $v1, $a0, $zero
/* 5F6A8 8005EAA8 92020005 */  lbu        $v0, 5($s0)
/* 5F6AC 8005EAAC 90890005 */  lbu        $t1, 5($a0)
/* 5F6B0 8005EAB0 3C0AA460 */  lui        $t2, 0xa460
/* 5F6B4 8005EAB4 3C0CA460 */  lui        $t4, 0xa460
/* 5F6B8 8005EAB8 10490002 */  beq        $v0, $t1, .L8005EAC4
/* 5F6BC 8005EABC 3C0EA460 */   lui       $t6, 0xa460
/* 5F6C0 8005EAC0 AD420014 */  sw         $v0, 0x14($t2)
.L8005EAC4:
/* 5F6C4 8005EAC4 92020006 */  lbu        $v0, 6($s0)
/* 5F6C8 8005EAC8 906B0006 */  lbu        $t3, 6($v1)
/* 5F6CC 8005EACC 3C18A460 */  lui        $t8, 0xa460
/* 5F6D0 8005EAD0 504B0003 */  beql       $v0, $t3, .L8005EAE0
/* 5F6D4 8005EAD4 92020007 */   lbu       $v0, 7($s0)
/* 5F6D8 8005EAD8 AD82001C */  sw         $v0, 0x1c($t4)
/* 5F6DC 8005EADC 92020007 */  lbu        $v0, 7($s0)
.L8005EAE0:
/* 5F6E0 8005EAE0 906D0007 */  lbu        $t5, 7($v1)
/* 5F6E4 8005EAE4 504D0003 */  beql       $v0, $t5, .L8005EAF4
/* 5F6E8 8005EAE8 92020008 */   lbu       $v0, 8($s0)
/* 5F6EC 8005EAEC ADC20020 */  sw         $v0, 0x20($t6)
/* 5F6F0 8005EAF0 92020008 */  lbu        $v0, 8($s0)
.L8005EAF4:
/* 5F6F4 8005EAF4 906F0008 */  lbu        $t7, 8($v1)
/* 5F6F8 8005EAF8 504F001B */  beql       $v0, $t7, .L8005EB68
/* 5F6FC 8005EAFC 920F0004 */   lbu       $t7, 4($s0)
/* 5F700 8005EB00 10000018 */  b          .L8005EB64
/* 5F704 8005EB04 AF020018 */   sw        $v0, 0x18($t8)
.L8005EB08:
/* 5F708 8005EB08 92020005 */  lbu        $v0, 5($s0)
/* 5F70C 8005EB0C 90790005 */  lbu        $t9, 5($v1)
/* 5F710 8005EB10 3C08A460 */  lui        $t0, 0xa460
/* 5F714 8005EB14 3C0AA460 */  lui        $t2, 0xa460
/* 5F718 8005EB18 10590002 */  beq        $v0, $t9, .L8005EB24
/* 5F71C 8005EB1C 3C0CA460 */   lui       $t4, 0xa460
/* 5F720 8005EB20 AD020024 */  sw         $v0, 0x24($t0)
.L8005EB24:
/* 5F724 8005EB24 92020006 */  lbu        $v0, 6($s0)
/* 5F728 8005EB28 90690006 */  lbu        $t1, 6($v1)
/* 5F72C 8005EB2C 3C0EA460 */  lui        $t6, 0xa460
/* 5F730 8005EB30 50490003 */  beql       $v0, $t1, .L8005EB40
/* 5F734 8005EB34 92020007 */   lbu       $v0, 7($s0)
/* 5F738 8005EB38 AD42002C */  sw         $v0, 0x2c($t2)
/* 5F73C 8005EB3C 92020007 */  lbu        $v0, 7($s0)
.L8005EB40:
/* 5F740 8005EB40 906B0007 */  lbu        $t3, 7($v1)
/* 5F744 8005EB44 504B0003 */  beql       $v0, $t3, .L8005EB54
/* 5F748 8005EB48 92020008 */   lbu       $v0, 8($s0)
/* 5F74C 8005EB4C AD820030 */  sw         $v0, 0x30($t4)
/* 5F750 8005EB50 92020008 */  lbu        $v0, 8($s0)
.L8005EB54:
/* 5F754 8005EB54 906D0008 */  lbu        $t5, 8($v1)
/* 5F758 8005EB58 504D0003 */  beql       $v0, $t5, .L8005EB68
/* 5F75C 8005EB5C 920F0004 */   lbu       $t7, 4($s0)
/* 5F760 8005EB60 ADC20028 */  sw         $v0, 0x28($t6)
.L8005EB64:
/* 5F764 8005EB64 920F0004 */  lbu        $t7, 4($s0)
.L8005EB68:
/* 5F768 8005EB68 A06F0004 */  sb         $t7, 4($v1)
/* 5F76C 8005EB6C 92180005 */  lbu        $t8, 5($s0)
/* 5F770 8005EB70 A0780005 */  sb         $t8, 5($v1)
/* 5F774 8005EB74 92190006 */  lbu        $t9, 6($s0)
/* 5F778 8005EB78 A0790006 */  sb         $t9, 6($v1)
/* 5F77C 8005EB7C 92080007 */  lbu        $t0, 7($s0)
/* 5F780 8005EB80 A0680007 */  sb         $t0, 7($v1)
/* 5F784 8005EB84 92090008 */  lbu        $t1, 8($s0)
/* 5F788 8005EB88 A0690008 */  sb         $t1, 8($v1)
/* 5F78C 8005EB8C 00E02025 */  or         $a0, $a3, $zero
.L8005EB90:
/* 5F790 8005EB90 0C016424 */  jal        func_80059090
/* 5F794 8005EB94 AFA50024 */   sw        $a1, 0x24($sp)
/* 5F798 8005EB98 8FA50024 */  lw         $a1, 0x24($sp)
/* 5F79C 8005EB9C 3C0AA460 */  lui        $t2, 0xa460
/* 5F7A0 8005EBA0 AD420000 */  sw         $v0, ($t2)
/* 5F7A4 8005EBA4 8FAC0028 */  lw         $t4, 0x28($sp)
/* 5F7A8 8005EBA8 8E0B000C */  lw         $t3, 0xc($s0)
/* 5F7AC 8005EBAC 3C011FFF */  lui        $at, 0x1fff
/* 5F7B0 8005EBB0 3421FFFF */  ori        $at, $at, 0xffff
/* 5F7B4 8005EBB4 016C6825 */  or         $t5, $t3, $t4
/* 5F7B8 8005EBB8 01A17024 */  and        $t6, $t5, $at
/* 5F7BC 8005EBBC 3C0FA460 */  lui        $t7, 0xa460
/* 5F7C0 8005EBC0 10A00006 */  beqz       $a1, .L8005EBDC
/* 5F7C4 8005EBC4 ADEE0004 */   sw        $t6, 4($t7)
/* 5F7C8 8005EBC8 24010001 */  addiu      $at, $zero, 1
/* 5F7CC 8005EBCC 10A10008 */  beq        $a1, $at, .L8005EBF0
/* 5F7D0 8005EBD0 8FA90030 */   lw        $t1, 0x30($sp)
/* 5F7D4 8005EBD4 1000000D */  b          .L8005EC0C
/* 5F7D8 8005EBD8 2402FFFF */   addiu     $v0, $zero, -1
.L8005EBDC:
/* 5F7DC 8005EBDC 8FB80030 */  lw         $t8, 0x30($sp)
/* 5F7E0 8005EBE0 3C08A460 */  lui        $t0, 0xa460
/* 5F7E4 8005EBE4 2719FFFF */  addiu      $t9, $t8, -1
/* 5F7E8 8005EBE8 10000007 */  b          .L8005EC08
/* 5F7EC 8005EBEC AD19000C */   sw        $t9, 0xc($t0)
.L8005EBF0:
/* 5F7F0 8005EBF0 252AFFFF */  addiu      $t2, $t1, -1
/* 5F7F4 8005EBF4 3C0BA460 */  lui        $t3, 0xa460
/* 5F7F8 8005EBF8 10000003 */  b          .L8005EC08
/* 5F7FC 8005EBFC AD6A0008 */   sw        $t2, 8($t3)
/* 5F800 8005EC00 10000002 */  b          .L8005EC0C
/* 5F804 8005EC04 2402FFFF */   addiu     $v0, $zero, -1
.L8005EC08:
/* 5F808 8005EC08 00001025 */  or         $v0, $zero, $zero
.L8005EC0C:
/* 5F80C 8005EC0C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5F810 8005EC10 8FB00018 */  lw         $s0, 0x18($sp)
/* 5F814 8005EC14 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5F818 8005EC18 03E00008 */  jr         $ra
/* 5F81C 8005EC1C 00000000 */   nop       

glabel func_8005EC20
/* 5F820 8005EC20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5F824 8005EC24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5F828 8005EC28 0C0193E8 */  jal        func_80064FA0
/* 5F82C 8005EC2C AFA40020 */   sw        $a0, 0x20($sp)
/* 5F830 8005EC30 AFA2001C */  sw         $v0, 0x1c($sp)
/* 5F834 8005EC34 8FAE001C */  lw         $t6, 0x1c($sp)
/* 5F838 8005EC38 31CF0100 */  andi       $t7, $t6, 0x100
/* 5F83C 8005EC3C 11E00004 */  beqz       $t7, .L8005EC50
/* 5F840 8005EC40 00000000 */   nop       
/* 5F844 8005EC44 24180001 */  addiu      $t8, $zero, 1
/* 5F848 8005EC48 10000002 */  b          .L8005EC54
/* 5F84C 8005EC4C AFB80018 */   sw        $t8, 0x18($sp)
.L8005EC50:
/* 5F850 8005EC50 AFA00018 */  sw         $zero, 0x18($sp)
.L8005EC54:
/* 5F854 8005EC54 8FB9001C */  lw         $t9, 0x1c($sp)
/* 5F858 8005EC58 33280080 */  andi       $t0, $t9, 0x80
/* 5F85C 8005EC5C 1100000B */  beqz       $t0, .L8005EC8C
/* 5F860 8005EC60 00000000 */   nop       
/* 5F864 8005EC64 8FA90020 */  lw         $t1, 0x20($sp)
/* 5F868 8005EC68 8FAB0018 */  lw         $t3, 0x18($sp)
/* 5F86C 8005EC6C 2401FFFD */  addiu      $at, $zero, -3
/* 5F870 8005EC70 8D2A0004 */  lw         $t2, 4($t1)
/* 5F874 8005EC74 014B6025 */  or         $t4, $t2, $t3
/* 5F878 8005EC78 AD2C0004 */  sw         $t4, 4($t1)
/* 5F87C 8005EC7C 8FAD0020 */  lw         $t5, 0x20($sp)
/* 5F880 8005EC80 8DAE0004 */  lw         $t6, 4($t5)
/* 5F884 8005EC84 01C17824 */  and        $t7, $t6, $at
/* 5F888 8005EC88 ADAF0004 */  sw         $t7, 4($t5)
.L8005EC8C:
/* 5F88C 8005EC8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5F890 8005EC90 8FA20018 */  lw         $v0, 0x18($sp)
/* 5F894 8005EC94 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5F898 8005EC98 03E00008 */  jr         $ra
/* 5F89C 8005EC9C 00000000 */   nop       

glabel func_8005ECA0
/* 5F8A0 8005ECA0 3C018008 */  lui        $at, 0x8008
/* 5F8A4 8005ECA4 C420E490 */  lwc1       $f0, -0x1b70($at)
/* 5F8A8 8005ECA8 44856000 */  mtc1       $a1, $f12
/* 5F8AC 8005ECAC 44867000 */  mtc1       $a2, $f14
/* 5F8B0 8005ECB0 44878000 */  mtc1       $a3, $f16
/* 5F8B4 8005ECB4 46006302 */  mul.s      $f12, $f12, $f0
/* 5F8B8 8005ECB8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 5F8BC 8005ECBC AFBF002C */  sw         $ra, 0x2c($sp)
/* 5F8C0 8005ECC0 46007382 */  mul.s      $f14, $f14, $f0
/* 5F8C4 8005ECC4 AFB00028 */  sw         $s0, 0x28($sp)
/* 5F8C8 8005ECC8 3C018010 */  lui        $at, 0x8010
/* 5F8CC 8005ECCC 46008402 */  mul.s      $f16, $f16, $f0
/* 5F8D0 8005ECD0 00808025 */  or         $s0, $a0, $zero
/* 5F8D4 8005ECD4 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 5F8D8 8005ECD8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 5F8DC 8005ECDC E7AE0050 */  swc1       $f14, 0x50($sp)
/* 5F8E0 8005ECE0 E7AC004C */  swc1       $f12, 0x4c($sp)
/* 5F8E4 8005ECE4 E4203870 */  swc1       $f0, 0x3870($at)
/* 5F8E8 8005ECE8 0C015B64 */  jal        func_80056D90
/* 5F8EC 8005ECEC E7B00054 */   swc1      $f16, 0x54($sp)
/* 5F8F0 8005ECF0 C7AC004C */  lwc1       $f12, 0x4c($sp)
/* 5F8F4 8005ECF4 0C018BE4 */  jal        func_80062F90
/* 5F8F8 8005ECF8 46000506 */   mov.s     $f20, $f0
/* 5F8FC 8005ECFC 46000586 */  mov.s      $f22, $f0
/* 5F900 8005ED00 0C015B64 */  jal        func_80056D90
/* 5F904 8005ED04 C7AC0050 */   lwc1      $f12, 0x50($sp)
/* 5F908 8005ED08 E7A00040 */  swc1       $f0, 0x40($sp)
/* 5F90C 8005ED0C 0C018BE4 */  jal        func_80062F90
/* 5F910 8005ED10 C7AC0050 */   lwc1      $f12, 0x50($sp)
/* 5F914 8005ED14 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* 5F918 8005ED18 0C015B64 */  jal        func_80056D90
/* 5F91C 8005ED1C E7A00034 */   swc1      $f0, 0x34($sp)
/* 5F920 8005ED20 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* 5F924 8005ED24 0C018BE4 */  jal        func_80062F90
/* 5F928 8005ED28 E7A0003C */   swc1      $f0, 0x3c($sp)
/* 5F92C 8005ED2C 02002025 */  or         $a0, $s0, $zero
/* 5F930 8005ED30 0C016C14 */  jal        func_8005B050
/* 5F934 8005ED34 E7A00030 */   swc1      $f0, 0x30($sp)
/* 5F938 8005ED38 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* 5F93C 8005ED3C C7AE0034 */  lwc1       $f14, 0x34($sp)
/* 5F940 8005ED40 C7A2003C */  lwc1       $f2, 0x3c($sp)
/* 5F944 8005ED44 C7B00040 */  lwc1       $f16, 0x40($sp)
/* 5F948 8005ED48 460C7102 */  mul.s      $f4, $f14, $f12
/* 5F94C 8005ED4C 46008207 */  neg.s      $f8, $f16
/* 5F950 8005ED50 46027182 */  mul.s      $f6, $f14, $f2
/* 5F954 8005ED54 E6080008 */  swc1       $f8, 8($s0)
/* 5F958 8005ED58 4610A002 */  mul.s      $f0, $f20, $f16
/* 5F95C 8005ED5C E6040000 */  swc1       $f4, ($s0)
/* 5F960 8005ED60 E6060004 */  swc1       $f6, 4($s0)
/* 5F964 8005ED64 460C0282 */  mul.s      $f10, $f0, $f12
/* 5F968 8005ED68 00000000 */  nop        
/* 5F96C 8005ED6C 4602B482 */  mul.s      $f18, $f22, $f2
/* 5F970 8005ED70 00000000 */  nop        
/* 5F974 8005ED74 46020182 */  mul.s      $f6, $f0, $f2
/* 5F978 8005ED78 00000000 */  nop        
/* 5F97C 8005ED7C 460CB202 */  mul.s      $f8, $f22, $f12
/* 5F980 8005ED80 46125101 */  sub.s      $f4, $f10, $f18
/* 5F984 8005ED84 460EA482 */  mul.s      $f18, $f20, $f14
/* 5F988 8005ED88 00000000 */  nop        
/* 5F98C 8005ED8C 4610B002 */  mul.s      $f0, $f22, $f16
/* 5F990 8005ED90 E6040010 */  swc1       $f4, 0x10($s0)
/* 5F994 8005ED94 46083280 */  add.s      $f10, $f6, $f8
/* 5F998 8005ED98 E6120018 */  swc1       $f18, 0x18($s0)
/* 5F99C 8005ED9C E60A0014 */  swc1       $f10, 0x14($s0)
/* 5F9A0 8005EDA0 460C0102 */  mul.s      $f4, $f0, $f12
/* 5F9A4 8005EDA4 00000000 */  nop        
/* 5F9A8 8005EDA8 4602A182 */  mul.s      $f6, $f20, $f2
/* 5F9AC 8005EDAC 00000000 */  nop        
/* 5F9B0 8005EDB0 46020282 */  mul.s      $f10, $f0, $f2
/* 5F9B4 8005EDB4 00000000 */  nop        
/* 5F9B8 8005EDB8 460CA482 */  mul.s      $f18, $f20, $f12
/* 5F9BC 8005EDBC 46062200 */  add.s      $f8, $f4, $f6
/* 5F9C0 8005EDC0 460EB182 */  mul.s      $f6, $f22, $f14
/* 5F9C4 8005EDC4 E6080020 */  swc1       $f8, 0x20($s0)
/* 5F9C8 8005EDC8 46125101 */  sub.s      $f4, $f10, $f18
/* 5F9CC 8005EDCC E6060028 */  swc1       $f6, 0x28($s0)
/* 5F9D0 8005EDD0 E6040024 */  swc1       $f4, 0x24($s0)
/* 5F9D4 8005EDD4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 5F9D8 8005EDD8 8FB00028 */  lw         $s0, 0x28($sp)
/* 5F9DC 8005EDDC D7B60020 */  ldc1       $f22, 0x20($sp)
/* 5F9E0 8005EDE0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 5F9E4 8005EDE4 03E00008 */  jr         $ra
/* 5F9E8 8005EDE8 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8005EDEC
/* 5F9EC 8005EDEC 44856000 */  mtc1       $a1, $f12
/* 5F9F0 8005EDF0 44867000 */  mtc1       $a2, $f14
/* 5F9F4 8005EDF4 44878000 */  mtc1       $a3, $f16
/* 5F9F8 8005EDF8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 5F9FC 8005EDFC AFBF0014 */  sw         $ra, 0x14($sp)
/* 5FA00 8005EE00 AFA40058 */  sw         $a0, 0x58($sp)
/* 5FA04 8005EE04 44056000 */  mfc1       $a1, $f12
/* 5FA08 8005EE08 44067000 */  mfc1       $a2, $f14
/* 5FA0C 8005EE0C 44078000 */  mfc1       $a3, $f16
/* 5FA10 8005EE10 0C017B28 */  jal        func_8005ECA0
/* 5FA14 8005EE14 27A40018 */   addiu     $a0, $sp, 0x18
/* 5FA18 8005EE18 27A40018 */  addiu      $a0, $sp, 0x18
/* 5FA1C 8005EE1C 0C016BD4 */  jal        func_8005AF50
/* 5FA20 8005EE20 8FA50058 */   lw        $a1, 0x58($sp)
/* 5FA24 8005EE24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5FA28 8005EE28 27BD0058 */  addiu      $sp, $sp, 0x58
/* 5FA2C 8005EE2C 03E00008 */  jr         $ra
/* 5FA30 8005EE30 00000000 */   nop       
/* 5FA34 8005EE34 00000000 */  nop        
/* 5FA38 8005EE38 00000000 */  nop        
/* 5FA3C 8005EE3C 00000000 */  nop        
