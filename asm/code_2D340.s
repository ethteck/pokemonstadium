.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8002C740
/* 2D340 8002C740 AC850000 */  sw         $a1, ($a0)
/* 2D344 8002C744 AC86000C */  sw         $a2, 0xc($a0)
/* 2D348 8002C748 AC870004 */  sw         $a3, 4($a0)
/* 2D34C 8002C74C 8FAE0010 */  lw         $t6, 0x10($sp)
/* 2D350 8002C750 03E00008 */  jr         $ra
/* 2D354 8002C754 AC8E0008 */   sw        $t6, 8($a0)

glabel func_8002C758
/* 2D358 8002C758 00A60019 */  multu      $a1, $a2
/* 2D35C 8002C75C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2D360 8002C760 AFA5001C */  sw         $a1, 0x1c($sp)
/* 2D364 8002C764 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D368 8002C768 AFA40018 */  sw         $a0, 0x18($sp)
/* 2D36C 8002C76C AFA60020 */  sw         $a2, 0x20($sp)
/* 2D370 8002C770 00E02025 */  or         $a0, $a3, $zero
/* 2D374 8002C774 00002812 */  mflo       $a1
/* 2D378 8002C778 0C000ABE */  jal        func_80002AF8
/* 2D37C 8002C77C 00000000 */   nop       
/* 2D380 8002C780 8FA30018 */  lw         $v1, 0x18($sp)
/* 2D384 8002C784 AC620000 */  sw         $v0, ($v1)
/* 2D388 8002C788 8FB8001C */  lw         $t8, 0x1c($sp)
/* 2D38C 8002C78C AC78000C */  sw         $t8, 0xc($v1)
/* 2D390 8002C790 8FB90020 */  lw         $t9, 0x20($sp)
/* 2D394 8002C794 AC600008 */  sw         $zero, 8($v1)
/* 2D398 8002C798 AC790004 */  sw         $t9, 4($v1)
/* 2D39C 8002C79C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D3A0 8002C7A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2D3A4 8002C7A4 03E00008 */  jr         $ra
/* 2D3A8 8002C7A8 00000000 */   nop       

glabel func_8002C7AC
/* 2D3AC 8002C7AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2D3B0 8002C7B0 00803825 */  or         $a3, $a0, $zero
/* 2D3B4 8002C7B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D3B8 8002C7B8 00A02025 */  or         $a0, $a1, $zero
/* 2D3BC 8002C7BC 0C000AF4 */  jal        func_80002BD0
/* 2D3C0 8002C7C0 8CE50000 */   lw        $a1, ($a3)
/* 2D3C4 8002C7C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D3C8 8002C7C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2D3CC 8002C7CC 03E00008 */  jr         $ra
/* 2D3D0 8002C7D0 00000000 */   nop       

glabel func_8002C7D4
/* 2D3D4 8002C7D4 8C830008 */  lw         $v1, 8($a0)
/* 2D3D8 8002C7D8 8C8E0004 */  lw         $t6, 4($a0)
/* 2D3DC 8002C7DC 00A03825 */  or         $a3, $a1, $zero
/* 2D3E0 8002C7E0 006E082A */  slt        $at, $v1, $t6
/* 2D3E4 8002C7E4 54200004 */  bnel       $at, $zero, .L8002C7F8
/* 2D3E8 8002C7E8 8C85000C */   lw        $a1, 0xc($a0)
/* 2D3EC 8002C7EC 03E00008 */  jr         $ra
/* 2D3F0 8002C7F0 24020001 */   addiu     $v0, $zero, 1
/* 2D3F4 8002C7F4 8C85000C */  lw         $a1, 0xc($a0)
.L8002C7F8:
/* 2D3F8 8002C7F8 8C8F0000 */  lw         $t7, ($a0)
/* 2D3FC 8002C7FC 00E03025 */  or         $a2, $a3, $zero
/* 2D400 8002C800 00A30019 */  multu      $a1, $v1
/* 2D404 8002C804 00A04025 */  or         $t0, $a1, $zero
/* 2D408 8002C808 0000C012 */  mflo       $t8
/* 2D40C 8002C80C 01F81021 */  addu       $v0, $t7, $t8
/* 2D410 8002C810 18A00019 */  blez       $a1, .L8002C878
/* 2D414 8002C814 30A50003 */   andi      $a1, $a1, 3
/* 2D418 8002C818 00052823 */  negu       $a1, $a1
/* 2D41C 8002C81C 10A00009 */  beqz       $a1, .L8002C844
/* 2D420 8002C820 00A81821 */   addu      $v1, $a1, $t0
.L8002C824:
/* 2D424 8002C824 80D90000 */  lb         $t9, ($a2)
/* 2D428 8002C828 2508FFFF */  addiu      $t0, $t0, -1
/* 2D42C 8002C82C 24420001 */  addiu      $v0, $v0, 1
/* 2D430 8002C830 24C60001 */  addiu      $a2, $a2, 1
/* 2D434 8002C834 1468FFFB */  bne        $v1, $t0, .L8002C824
/* 2D438 8002C838 A059FFFF */   sb        $t9, -1($v0)
/* 2D43C 8002C83C 5100000E */  beql       $t0, $zero, .L8002C878
/* 2D440 8002C840 8C830008 */   lw        $v1, 8($a0)
.L8002C844:
/* 2D444 8002C844 80C90000 */  lb         $t1, ($a2)
/* 2D448 8002C848 2508FFFC */  addiu      $t0, $t0, -4
/* 2D44C 8002C84C 24420004 */  addiu      $v0, $v0, 4
/* 2D450 8002C850 A049FFFC */  sb         $t1, -4($v0)
/* 2D454 8002C854 80CA0001 */  lb         $t2, 1($a2)
/* 2D458 8002C858 24C60004 */  addiu      $a2, $a2, 4
/* 2D45C 8002C85C A04AFFFD */  sb         $t2, -3($v0)
/* 2D460 8002C860 80CBFFFE */  lb         $t3, -2($a2)
/* 2D464 8002C864 A04BFFFE */  sb         $t3, -2($v0)
/* 2D468 8002C868 80CCFFFF */  lb         $t4, -1($a2)
/* 2D46C 8002C86C 1500FFF5 */  bnez       $t0, .L8002C844
/* 2D470 8002C870 A04CFFFF */   sb        $t4, -1($v0)
/* 2D474 8002C874 8C830008 */  lw         $v1, 8($a0)
.L8002C878:
/* 2D478 8002C878 246D0001 */  addiu      $t5, $v1, 1
/* 2D47C 8002C87C AC8D0008 */  sw         $t5, 8($a0)
/* 2D480 8002C880 00001025 */  or         $v0, $zero, $zero
/* 2D484 8002C884 03E00008 */  jr         $ra
/* 2D488 8002C888 00000000 */   nop       

glabel func_8002C88C
/* 2D48C 8002C88C AFA50004 */  sw         $a1, 4($sp)
/* 2D490 8002C890 8C8E0004 */  lw         $t6, 4($a0)
/* 2D494 8002C894 8C820008 */  lw         $v0, 8($a0)
/* 2D498 8002C898 004E082A */  slt        $at, $v0, $t6
/* 2D49C 8002C89C 10200003 */  beqz       $at, .L8002C8AC
/* 2D4A0 8002C8A0 0046082A */   slt       $at, $v0, $a2
/* 2D4A4 8002C8A4 50200004 */  beql       $at, $zero, .L8002C8B8
/* 2D4A8 8002C8A8 8C87000C */   lw        $a3, 0xc($a0)
.L8002C8AC:
/* 2D4AC 8002C8AC 03E00008 */  jr         $ra
/* 2D4B0 8002C8B0 24020001 */   addiu     $v0, $zero, 1
/* 2D4B4 8002C8B4 8C87000C */  lw         $a3, 0xc($a0)
.L8002C8B8:
/* 2D4B8 8002C8B8 0046C023 */  subu       $t8, $v0, $a2
/* 2D4BC 8002C8BC 8C850000 */  lw         $a1, ($a0)
/* 2D4C0 8002C8C0 00E20019 */  multu      $a3, $v0
/* 2D4C4 8002C8C4 00007812 */  mflo       $t7
/* 2D4C8 8002C8C8 00AF1821 */  addu       $v1, $a1, $t7
/* 2D4CC 8002C8CC 00E34021 */  addu       $t0, $a3, $v1
/* 2D4D0 8002C8D0 03070019 */  multu      $t8, $a3
/* 2D4D4 8002C8D4 00004812 */  mflo       $t1
/* 2D4D8 8002C8D8 19200009 */  blez       $t1, .L8002C900
/* 2D4DC 8002C8DC 00000000 */   nop       
.L8002C8E0:
/* 2D4E0 8002C8E0 8079FFFF */  lb         $t9, -1($v1)
/* 2D4E4 8002C8E4 2529FFFF */  addiu      $t1, $t1, -1
/* 2D4E8 8002C8E8 2508FFFF */  addiu      $t0, $t0, -1
/* 2D4EC 8002C8EC 2463FFFF */  addiu      $v1, $v1, -1
/* 2D4F0 8002C8F0 1D20FFFB */  bgtz       $t1, .L8002C8E0
/* 2D4F4 8002C8F4 A1190000 */   sb        $t9, ($t0)
/* 2D4F8 8002C8F8 8C850000 */  lw         $a1, ($a0)
/* 2D4FC 8002C8FC 8C87000C */  lw         $a3, 0xc($a0)
.L8002C900:
/* 2D500 8002C900 00E60019 */  multu      $a3, $a2
/* 2D504 8002C904 8FA30004 */  lw         $v1, 4($sp)
/* 2D508 8002C908 00E04825 */  or         $t1, $a3, $zero
/* 2D50C 8002C90C 00005012 */  mflo       $t2
/* 2D510 8002C910 00AA4021 */  addu       $t0, $a1, $t2
/* 2D514 8002C914 18E00018 */  blez       $a3, .L8002C978
/* 2D518 8002C918 30E50003 */   andi      $a1, $a3, 3
/* 2D51C 8002C91C 00052823 */  negu       $a1, $a1
/* 2D520 8002C920 10A00009 */  beqz       $a1, .L8002C948
/* 2D524 8002C924 00A71021 */   addu      $v0, $a1, $a3
.L8002C928:
/* 2D528 8002C928 806B0000 */  lb         $t3, ($v1)
/* 2D52C 8002C92C 2529FFFF */  addiu      $t1, $t1, -1
/* 2D530 8002C930 25080001 */  addiu      $t0, $t0, 1
/* 2D534 8002C934 24630001 */  addiu      $v1, $v1, 1
/* 2D538 8002C938 1449FFFB */  bne        $v0, $t1, .L8002C928
/* 2D53C 8002C93C A10BFFFF */   sb        $t3, -1($t0)
/* 2D540 8002C940 5120000E */  beql       $t1, $zero, .L8002C97C
/* 2D544 8002C944 8C980008 */   lw        $t8, 8($a0)
.L8002C948:
/* 2D548 8002C948 806C0000 */  lb         $t4, ($v1)
/* 2D54C 8002C94C 2529FFFC */  addiu      $t1, $t1, -4
/* 2D550 8002C950 25080004 */  addiu      $t0, $t0, 4
/* 2D554 8002C954 A10CFFFC */  sb         $t4, -4($t0)
/* 2D558 8002C958 806D0001 */  lb         $t5, 1($v1)
/* 2D55C 8002C95C 24630004 */  addiu      $v1, $v1, 4
/* 2D560 8002C960 A10DFFFD */  sb         $t5, -3($t0)
/* 2D564 8002C964 806EFFFE */  lb         $t6, -2($v1)
/* 2D568 8002C968 A10EFFFE */  sb         $t6, -2($t0)
/* 2D56C 8002C96C 806FFFFF */  lb         $t7, -1($v1)
/* 2D570 8002C970 1520FFF5 */  bnez       $t1, .L8002C948
/* 2D574 8002C974 A10FFFFF */   sb        $t7, -1($t0)
.L8002C978:
/* 2D578 8002C978 8C980008 */  lw         $t8, 8($a0)
.L8002C97C:
/* 2D57C 8002C97C 00001025 */  or         $v0, $zero, $zero
/* 2D580 8002C980 27190001 */  addiu      $t9, $t8, 1
/* 2D584 8002C984 AC990008 */  sw         $t9, 8($a0)
/* 2D588 8002C988 03E00008 */  jr         $ra
/* 2D58C 8002C98C 00000000 */   nop       

glabel func_8002C990
/* 2D590 8002C990 8C820008 */  lw         $v0, 8($a0)
/* 2D594 8002C994 00A2082A */  slt        $at, $a1, $v0
/* 2D598 8002C998 54200004 */  bnel       $at, $zero, .L8002C9AC
/* 2D59C 8002C99C 8C86000C */   lw        $a2, 0xc($a0)
/* 2D5A0 8002C9A0 03E00008 */  jr         $ra
/* 2D5A4 8002C9A4 24020001 */   addiu     $v0, $zero, 1
/* 2D5A8 8002C9A8 8C86000C */  lw         $a2, 0xc($a0)
.L8002C9AC:
/* 2D5AC 8002C9AC 2458FFFF */  addiu      $t8, $v0, -1
/* 2D5B0 8002C9B0 03054823 */  subu       $t1, $t8, $a1
/* 2D5B4 8002C9B4 00C50019 */  multu      $a2, $a1
/* 2D5B8 8002C9B8 8C8E0000 */  lw         $t6, ($a0)
/* 2D5BC 8002C9BC AC980008 */  sw         $t8, 8($a0)
/* 2D5C0 8002C9C0 00001025 */  or         $v0, $zero, $zero
/* 2D5C4 8002C9C4 00007812 */  mflo       $t7
/* 2D5C8 8002C9C8 01CF1821 */  addu       $v1, $t6, $t7
/* 2D5CC 8002C9CC 00C33821 */  addu       $a3, $a2, $v1
/* 2D5D0 8002C9D0 01260019 */  multu      $t1, $a2
/* 2D5D4 8002C9D4 00004012 */  mflo       $t0
/* 2D5D8 8002C9D8 19000007 */  blez       $t0, .L8002C9F8
/* 2D5DC 8002C9DC 00000000 */   nop       
.L8002C9E0:
/* 2D5E0 8002C9E0 80EA0000 */  lb         $t2, ($a3)
/* 2D5E4 8002C9E4 2508FFFF */  addiu      $t0, $t0, -1
/* 2D5E8 8002C9E8 24630001 */  addiu      $v1, $v1, 1
/* 2D5EC 8002C9EC 24E70001 */  addiu      $a3, $a3, 1
/* 2D5F0 8002C9F0 1D00FFFB */  bgtz       $t0, .L8002C9E0
/* 2D5F4 8002C9F4 A06AFFFF */   sb        $t2, -1($v1)
.L8002C9F8:
/* 2D5F8 8002C9F8 03E00008 */  jr         $ra
/* 2D5FC 8002C9FC 00000000 */   nop       

glabel func_8002CA00
/* 2D600 8002CA00 8C8E0008 */  lw         $t6, 8($a0)
/* 2D604 8002CA04 00A03825 */  or         $a3, $a1, $zero
/* 2D608 8002CA08 00CE082A */  slt        $at, $a2, $t6
/* 2D60C 8002CA0C 54200004 */  bnel       $at, $zero, .L8002CA20
/* 2D610 8002CA10 8C83000C */   lw        $v1, 0xc($a0)
/* 2D614 8002CA14 03E00008 */  jr         $ra
/* 2D618 8002CA18 24020001 */   addiu     $v0, $zero, 1
/* 2D61C 8002CA1C 8C83000C */  lw         $v1, 0xc($a0)
.L8002CA20:
/* 2D620 8002CA20 8C8F0000 */  lw         $t7, ($a0)
/* 2D624 8002CA24 00E02825 */  or         $a1, $a3, $zero
/* 2D628 8002CA28 00660019 */  multu      $v1, $a2
/* 2D62C 8002CA2C 30640003 */  andi       $a0, $v1, 3
/* 2D630 8002CA30 00042023 */  negu       $a0, $a0
/* 2D634 8002CA34 00604025 */  or         $t0, $v1, $zero
/* 2D638 8002CA38 0000C012 */  mflo       $t8
/* 2D63C 8002CA3C 01F81021 */  addu       $v0, $t7, $t8
/* 2D640 8002CA40 58600018 */  blezl      $v1, .L8002CAA4
/* 2D644 8002CA44 00001025 */   or        $v0, $zero, $zero
/* 2D648 8002CA48 10800009 */  beqz       $a0, .L8002CA70
/* 2D64C 8002CA4C 00881821 */   addu      $v1, $a0, $t0
.L8002CA50:
/* 2D650 8002CA50 80590000 */  lb         $t9, ($v0)
/* 2D654 8002CA54 2508FFFF */  addiu      $t0, $t0, -1
/* 2D658 8002CA58 24A50001 */  addiu      $a1, $a1, 1
/* 2D65C 8002CA5C 24420001 */  addiu      $v0, $v0, 1
/* 2D660 8002CA60 1468FFFB */  bne        $v1, $t0, .L8002CA50
/* 2D664 8002CA64 A0B9FFFF */   sb        $t9, -1($a1)
/* 2D668 8002CA68 5100000E */  beql       $t0, $zero, .L8002CAA4
/* 2D66C 8002CA6C 00001025 */   or        $v0, $zero, $zero
.L8002CA70:
/* 2D670 8002CA70 80490000 */  lb         $t1, ($v0)
/* 2D674 8002CA74 2508FFFC */  addiu      $t0, $t0, -4
/* 2D678 8002CA78 24A50004 */  addiu      $a1, $a1, 4
/* 2D67C 8002CA7C A0A9FFFC */  sb         $t1, -4($a1)
/* 2D680 8002CA80 804A0001 */  lb         $t2, 1($v0)
/* 2D684 8002CA84 24420004 */  addiu      $v0, $v0, 4
/* 2D688 8002CA88 A0AAFFFD */  sb         $t2, -3($a1)
/* 2D68C 8002CA8C 804BFFFE */  lb         $t3, -2($v0)
/* 2D690 8002CA90 A0ABFFFE */  sb         $t3, -2($a1)
/* 2D694 8002CA94 804CFFFF */  lb         $t4, -1($v0)
/* 2D698 8002CA98 1500FFF5 */  bnez       $t0, .L8002CA70
/* 2D69C 8002CA9C A0ACFFFF */   sb        $t4, -1($a1)
/* 2D6A0 8002CAA0 00001025 */  or         $v0, $zero, $zero
.L8002CAA4:
/* 2D6A4 8002CAA4 03E00008 */  jr         $ra
/* 2D6A8 8002CAA8 00000000 */   nop       

glabel func_8002CAAC
/* 2D6AC 8002CAAC 8C8E0008 */  lw         $t6, 8($a0)
/* 2D6B0 8002CAB0 00A03825 */  or         $a3, $a1, $zero
/* 2D6B4 8002CAB4 00CE082A */  slt        $at, $a2, $t6
/* 2D6B8 8002CAB8 54200004 */  bnel       $at, $zero, .L8002CACC
/* 2D6BC 8002CABC 8C83000C */   lw        $v1, 0xc($a0)
/* 2D6C0 8002CAC0 03E00008 */  jr         $ra
/* 2D6C4 8002CAC4 24020001 */   addiu     $v0, $zero, 1
/* 2D6C8 8002CAC8 8C83000C */  lw         $v1, 0xc($a0)
.L8002CACC:
/* 2D6CC 8002CACC 8C8F0000 */  lw         $t7, ($a0)
/* 2D6D0 8002CAD0 00E02825 */  or         $a1, $a3, $zero
/* 2D6D4 8002CAD4 00660019 */  multu      $v1, $a2
/* 2D6D8 8002CAD8 30640003 */  andi       $a0, $v1, 3
/* 2D6DC 8002CADC 00042023 */  negu       $a0, $a0
/* 2D6E0 8002CAE0 00604025 */  or         $t0, $v1, $zero
/* 2D6E4 8002CAE4 0000C012 */  mflo       $t8
/* 2D6E8 8002CAE8 01F81021 */  addu       $v0, $t7, $t8
/* 2D6EC 8002CAEC 58600018 */  blezl      $v1, .L8002CB50
/* 2D6F0 8002CAF0 00001025 */   or        $v0, $zero, $zero
/* 2D6F4 8002CAF4 10800009 */  beqz       $a0, .L8002CB1C
/* 2D6F8 8002CAF8 00881821 */   addu      $v1, $a0, $t0
.L8002CAFC:
/* 2D6FC 8002CAFC 80B90000 */  lb         $t9, ($a1)
/* 2D700 8002CB00 2508FFFF */  addiu      $t0, $t0, -1
/* 2D704 8002CB04 24420001 */  addiu      $v0, $v0, 1
/* 2D708 8002CB08 24A50001 */  addiu      $a1, $a1, 1
/* 2D70C 8002CB0C 1468FFFB */  bne        $v1, $t0, .L8002CAFC
/* 2D710 8002CB10 A059FFFF */   sb        $t9, -1($v0)
/* 2D714 8002CB14 5100000E */  beql       $t0, $zero, .L8002CB50
/* 2D718 8002CB18 00001025 */   or        $v0, $zero, $zero
.L8002CB1C:
/* 2D71C 8002CB1C 80A90000 */  lb         $t1, ($a1)
/* 2D720 8002CB20 2508FFFC */  addiu      $t0, $t0, -4
/* 2D724 8002CB24 24420004 */  addiu      $v0, $v0, 4
/* 2D728 8002CB28 A049FFFC */  sb         $t1, -4($v0)
/* 2D72C 8002CB2C 80AA0001 */  lb         $t2, 1($a1)
/* 2D730 8002CB30 24A50004 */  addiu      $a1, $a1, 4
/* 2D734 8002CB34 A04AFFFD */  sb         $t2, -3($v0)
/* 2D738 8002CB38 80ABFFFE */  lb         $t3, -2($a1)
/* 2D73C 8002CB3C A04BFFFE */  sb         $t3, -2($v0)
/* 2D740 8002CB40 80ACFFFF */  lb         $t4, -1($a1)
/* 2D744 8002CB44 1500FFF5 */  bnez       $t0, .L8002CB1C
/* 2D748 8002CB48 A04CFFFF */   sb        $t4, -1($v0)
/* 2D74C 8002CB4C 00001025 */  or         $v0, $zero, $zero
.L8002CB50:
/* 2D750 8002CB50 03E00008 */  jr         $ra
/* 2D754 8002CB54 00000000 */   nop       

glabel func_8002CB58
/* 2D758 8002CB58 8C820008 */  lw         $v0, 8($a0)
/* 2D75C 8002CB5C 00057840 */  sll        $t7, $a1, 1
/* 2D760 8002CB60 00A2082A */  slt        $at, $a1, $v0
/* 2D764 8002CB64 14200003 */  bnez       $at, .L8002CB74
/* 2D768 8002CB68 2458FFFF */   addiu     $t8, $v0, -1
/* 2D76C 8002CB6C 03E00008 */  jr         $ra
/* 2D770 8002CB70 24020001 */   addiu     $v0, $zero, 1
.L8002CB74:
/* 2D774 8002CB74 8C8E0000 */  lw         $t6, ($a0)
/* 2D778 8002CB78 03053823 */  subu       $a3, $t8, $a1
/* 2D77C 8002CB7C AC980008 */  sw         $t8, 8($a0)
/* 2D780 8002CB80 01CF1821 */  addu       $v1, $t6, $t7
/* 2D784 8002CB84 18E00007 */  blez       $a3, .L8002CBA4
/* 2D788 8002CB88 24660002 */   addiu     $a2, $v1, 2
.L8002CB8C:
/* 2D78C 8002CB8C 84C80000 */  lh         $t0, ($a2)
/* 2D790 8002CB90 24E7FFFF */  addiu      $a3, $a3, -1
/* 2D794 8002CB94 24630002 */  addiu      $v1, $v1, 2
/* 2D798 8002CB98 24C60002 */  addiu      $a2, $a2, 2
/* 2D79C 8002CB9C 1CE0FFFB */  bgtz       $a3, .L8002CB8C
/* 2D7A0 8002CBA0 A468FFFE */   sh        $t0, -2($v1)
.L8002CBA4:
/* 2D7A4 8002CBA4 00001025 */  or         $v0, $zero, $zero
/* 2D7A8 8002CBA8 03E00008 */  jr         $ra
/* 2D7AC 8002CBAC 00000000 */   nop       

glabel func_8002CBB0
/* 2D7B0 8002CBB0 AC850000 */  sw         $a1, ($a0)
/* 2D7B4 8002CBB4 AC860004 */  sw         $a2, 4($a0)
/* 2D7B8 8002CBB8 03E00008 */  jr         $ra
/* 2D7BC 8002CBBC AC870008 */   sw        $a3, 8($a0)

glabel func_8002CBC0
/* 2D7C0 8002CBC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2D7C4 8002CBC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D7C8 8002CBC8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 2D7CC 8002CBCC 00803825 */  or         $a3, $a0, $zero
/* 2D7D0 8002CBD0 AFA70018 */  sw         $a3, 0x18($sp)
/* 2D7D4 8002CBD4 00C02025 */  or         $a0, $a2, $zero
/* 2D7D8 8002CBD8 0C000ABE */  jal        func_80002AF8
/* 2D7DC 8002CBDC 00052880 */   sll       $a1, $a1, 2
/* 2D7E0 8002CBE0 8FA70018 */  lw         $a3, 0x18($sp)
/* 2D7E4 8002CBE4 ACE20000 */  sw         $v0, ($a3)
/* 2D7E8 8002CBE8 8FAE001C */  lw         $t6, 0x1c($sp)
/* 2D7EC 8002CBEC ACE00008 */  sw         $zero, 8($a3)
/* 2D7F0 8002CBF0 ACEE0004 */  sw         $t6, 4($a3)
/* 2D7F4 8002CBF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D7F8 8002CBF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2D7FC 8002CBFC 03E00008 */  jr         $ra
/* 2D800 8002CC00 00000000 */   nop       

glabel func_8002CC04
/* 2D804 8002CC04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2D808 8002CC08 00803825 */  or         $a3, $a0, $zero
/* 2D80C 8002CC0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D810 8002CC10 00A02025 */  or         $a0, $a1, $zero
/* 2D814 8002CC14 0C000AF4 */  jal        func_80002BD0
/* 2D818 8002CC18 8CE50000 */   lw        $a1, ($a3)
/* 2D81C 8002CC1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D820 8002CC20 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2D824 8002CC24 03E00008 */  jr         $ra
/* 2D828 8002CC28 00000000 */   nop       

glabel func_8002CC2C
/* 2D82C 8002CC2C 8C870008 */  lw         $a3, 8($a0)
/* 2D830 8002CC30 8C830000 */  lw         $v1, ($a0)
/* 2D834 8002CC34 0006C080 */  sll        $t8, $a2, 2
/* 2D838 8002CC38 00077080 */  sll        $t6, $a3, 2
/* 2D83C 8002CC3C 00E64823 */  subu       $t1, $a3, $a2
/* 2D840 8002CC40 006E1021 */  addu       $v0, $v1, $t6
/* 2D844 8002CC44 19200008 */  blez       $t1, .L8002CC68
/* 2D848 8002CC48 24480004 */   addiu     $t0, $v0, 4
.L8002CC4C:
/* 2D84C 8002CC4C 8C4FFFFC */  lw         $t7, -4($v0)
/* 2D850 8002CC50 2529FFFF */  addiu      $t1, $t1, -1
/* 2D854 8002CC54 2508FFFC */  addiu      $t0, $t0, -4
/* 2D858 8002CC58 2442FFFC */  addiu      $v0, $v0, -4
/* 2D85C 8002CC5C 1D20FFFB */  bgtz       $t1, .L8002CC4C
/* 2D860 8002CC60 AD0F0000 */   sw        $t7, ($t0)
/* 2D864 8002CC64 8C830000 */  lw         $v1, ($a0)
.L8002CC68:
/* 2D868 8002CC68 0078C821 */  addu       $t9, $v1, $t8
/* 2D86C 8002CC6C AF250000 */  sw         $a1, ($t9)
/* 2D870 8002CC70 8C8A0008 */  lw         $t2, 8($a0)
/* 2D874 8002CC74 254B0001 */  addiu      $t3, $t2, 1
/* 2D878 8002CC78 03E00008 */  jr         $ra
/* 2D87C 8002CC7C AC8B0008 */   sw        $t3, 8($a0)

glabel func_8002CC80
/* 2D880 8002CC80 8C980008 */  lw         $t8, 8($a0)
/* 2D884 8002CC84 8C8E0000 */  lw         $t6, ($a0)
/* 2D888 8002CC88 00057880 */  sll        $t7, $a1, 2
/* 2D88C 8002CC8C 2719FFFF */  addiu      $t9, $t8, -1
/* 2D890 8002CC90 03253023 */  subu       $a2, $t9, $a1
/* 2D894 8002CC94 01CF1021 */  addu       $v0, $t6, $t7
/* 2D898 8002CC98 24430004 */  addiu      $v1, $v0, 4
/* 2D89C 8002CC9C 18C00007 */  blez       $a2, .L8002CCBC
/* 2D8A0 8002CCA0 AC990008 */   sw        $t9, 8($a0)
.L8002CCA4:
/* 2D8A4 8002CCA4 8C690000 */  lw         $t1, ($v1)
/* 2D8A8 8002CCA8 24C6FFFF */  addiu      $a2, $a2, -1
/* 2D8AC 8002CCAC 24420004 */  addiu      $v0, $v0, 4
/* 2D8B0 8002CCB0 24630004 */  addiu      $v1, $v1, 4
/* 2D8B4 8002CCB4 1CC0FFFB */  bgtz       $a2, .L8002CCA4
/* 2D8B8 8002CCB8 AC49FFFC */   sw        $t1, -4($v0)
.L8002CCBC:
/* 2D8BC 8002CCBC 03E00008 */  jr         $ra
/* 2D8C0 8002CCC0 00000000 */   nop       

glabel func_8002CCC4
/* 2D8C4 8002CCC4 18C00022 */  blez       $a2, .L8002CD50
/* 2D8C8 8002CCC8 00001025 */   or        $v0, $zero, $zero
/* 2D8CC 8002CCCC 30C30003 */  andi       $v1, $a2, 3
/* 2D8D0 8002CCD0 1060000B */  beqz       $v1, .L8002CD00
/* 2D8D4 8002CCD4 00603825 */   or        $a3, $v1, $zero
.L8002CCD8:
/* 2D8D8 8002CCD8 8CAE0000 */  lw         $t6, ($a1)
/* 2D8DC 8002CCDC 8C830000 */  lw         $v1, ($a0)
/* 2D8E0 8002CCE0 24420001 */  addiu      $v0, $v0, 1
/* 2D8E4 8002CCE4 AC8E0000 */  sw         $t6, ($a0)
/* 2D8E8 8002CCE8 24840004 */  addiu      $a0, $a0, 4
/* 2D8EC 8002CCEC 24A50004 */  addiu      $a1, $a1, 4
/* 2D8F0 8002CCF0 14E2FFF9 */  bne        $a3, $v0, .L8002CCD8
/* 2D8F4 8002CCF4 ACA3FFFC */   sw        $v1, -4($a1)
/* 2D8F8 8002CCF8 10460015 */  beq        $v0, $a2, .L8002CD50
/* 2D8FC 8002CCFC 00000000 */   nop       
.L8002CD00:
/* 2D900 8002CD00 8CAF0000 */  lw         $t7, ($a1)
/* 2D904 8002CD04 8C830000 */  lw         $v1, ($a0)
/* 2D908 8002CD08 24420004 */  addiu      $v0, $v0, 4
/* 2D90C 8002CD0C AC8F0000 */  sw         $t7, ($a0)
/* 2D910 8002CD10 8CB80004 */  lw         $t8, 4($a1)
/* 2D914 8002CD14 ACA30000 */  sw         $v1, ($a1)
/* 2D918 8002CD18 8C830004 */  lw         $v1, 4($a0)
/* 2D91C 8002CD1C AC980004 */  sw         $t8, 4($a0)
/* 2D920 8002CD20 8CB90008 */  lw         $t9, 8($a1)
/* 2D924 8002CD24 ACA30004 */  sw         $v1, 4($a1)
/* 2D928 8002CD28 8C830008 */  lw         $v1, 8($a0)
/* 2D92C 8002CD2C AC990008 */  sw         $t9, 8($a0)
/* 2D930 8002CD30 8CA8000C */  lw         $t0, 0xc($a1)
/* 2D934 8002CD34 ACA30008 */  sw         $v1, 8($a1)
/* 2D938 8002CD38 8C83000C */  lw         $v1, 0xc($a0)
/* 2D93C 8002CD3C AC88000C */  sw         $t0, 0xc($a0)
/* 2D940 8002CD40 24840010 */  addiu      $a0, $a0, 0x10
/* 2D944 8002CD44 24A50010 */  addiu      $a1, $a1, 0x10
/* 2D948 8002CD48 1446FFED */  bne        $v0, $a2, .L8002CD00
/* 2D94C 8002CD4C ACA3FFFC */   sw        $v1, -4($a1)
.L8002CD50:
/* 2D950 8002CD50 03E00008 */  jr         $ra
/* 2D954 8002CD54 00000000 */   nop       

glabel func_8002CD58
/* 2D958 8002CD58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2D95C 8002CD5C AFBF001C */  sw         $ra, 0x1c($sp)
/* 2D960 8002CD60 AFB00018 */  sw         $s0, 0x18($sp)
/* 2D964 8002CD64 AFA40020 */  sw         $a0, 0x20($sp)
/* 2D968 8002CD68 AFA50024 */  sw         $a1, 0x24($sp)
/* 2D96C 8002CD6C AFA7002C */  sw         $a3, 0x2c($sp)
/* 2D970 8002CD70 00C08025 */  or         $s0, $a2, $zero
/* 2D974 8002CD74 8CA50000 */  lw         $a1, ($a1)
/* 2D978 8002CD78 00E0F809 */  jalr       $a3
/* 2D97C 8002CD7C 8C840000 */   lw        $a0, ($a0)
/* 2D980 8002CD80 04410015 */  bgez       $v0, .L8002CDD8
/* 2D984 8002CD84 8FB9002C */   lw        $t9, 0x2c($sp)
/* 2D988 8002CD88 8FB9002C */  lw         $t9, 0x2c($sp)
/* 2D98C 8002CD8C 8FB80024 */  lw         $t8, 0x24($sp)
/* 2D990 8002CD90 8E050000 */  lw         $a1, ($s0)
/* 2D994 8002CD94 0320F809 */  jalr       $t9
/* 2D998 8002CD98 8F040000 */   lw        $a0, ($t8)
/* 2D99C 8002CD9C 04410003 */  bgez       $v0, .L8002CDAC
/* 2D9A0 8002CDA0 8FB9002C */   lw        $t9, 0x2c($sp)
/* 2D9A4 8002CDA4 1000001E */  b          .L8002CE20
/* 2D9A8 8002CDA8 8FA30024 */   lw        $v1, 0x24($sp)
.L8002CDAC:
/* 2D9AC 8002CDAC 8FA80020 */  lw         $t0, 0x20($sp)
/* 2D9B0 8002CDB0 8E050000 */  lw         $a1, ($s0)
/* 2D9B4 8002CDB4 0320F809 */  jalr       $t9
/* 2D9B8 8002CDB8 8D040000 */   lw        $a0, ($t0)
/* 2D9BC 8002CDBC 04410003 */  bgez       $v0, .L8002CDCC
/* 2D9C0 8002CDC0 8FA30020 */   lw        $v1, 0x20($sp)
/* 2D9C4 8002CDC4 10000001 */  b          .L8002CDCC
/* 2D9C8 8002CDC8 02001825 */   or        $v1, $s0, $zero
.L8002CDCC:
/* 2D9CC 8002CDCC 00601025 */  or         $v0, $v1, $zero
/* 2D9D0 8002CDD0 10000013 */  b          .L8002CE20
/* 2D9D4 8002CDD4 00401825 */   or        $v1, $v0, $zero
.L8002CDD8:
/* 2D9D8 8002CDD8 8FA90024 */  lw         $t1, 0x24($sp)
/* 2D9DC 8002CDDC 8E050000 */  lw         $a1, ($s0)
/* 2D9E0 8002CDE0 0320F809 */  jalr       $t9
/* 2D9E4 8002CDE4 8D240000 */   lw        $a0, ($t1)
/* 2D9E8 8002CDE8 18400003 */  blez       $v0, .L8002CDF8
/* 2D9EC 8002CDEC 8FB9002C */   lw        $t9, 0x2c($sp)
/* 2D9F0 8002CDF0 1000000A */  b          .L8002CE1C
/* 2D9F4 8002CDF4 8FA20024 */   lw        $v0, 0x24($sp)
.L8002CDF8:
/* 2D9F8 8002CDF8 8FAA0020 */  lw         $t2, 0x20($sp)
/* 2D9FC 8002CDFC 8E050000 */  lw         $a1, ($s0)
/* 2DA00 8002CE00 0320F809 */  jalr       $t9
/* 2DA04 8002CE04 8D440000 */   lw        $a0, ($t2)
/* 2DA08 8002CE08 18400003 */  blez       $v0, .L8002CE18
/* 2DA0C 8002CE0C 8FA30020 */   lw        $v1, 0x20($sp)
/* 2DA10 8002CE10 10000001 */  b          .L8002CE18
/* 2DA14 8002CE14 02001825 */   or        $v1, $s0, $zero
.L8002CE18:
/* 2DA18 8002CE18 00601025 */  or         $v0, $v1, $zero
.L8002CE1C:
/* 2DA1C 8002CE1C 00401825 */  or         $v1, $v0, $zero
.L8002CE20:
/* 2DA20 8002CE20 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2DA24 8002CE24 8FB00018 */  lw         $s0, 0x18($sp)
/* 2DA28 8002CE28 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2DA2C 8002CE2C 03E00008 */  jr         $ra
/* 2DA30 8002CE30 00601025 */   or        $v0, $v1, $zero

glabel func_8002CE34
/* 2DA34 8002CE34 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 2DA38 8002CE38 AFBE0038 */  sw         $fp, 0x38($sp)
/* 2DA3C 8002CE3C AFB70034 */  sw         $s7, 0x34($sp)
/* 2DA40 8002CE40 AFB5002C */  sw         $s5, 0x2c($sp)
/* 2DA44 8002CE44 00C0A825 */  or         $s5, $a2, $zero
/* 2DA48 8002CE48 00A0B825 */  or         $s7, $a1, $zero
/* 2DA4C 8002CE4C 0080F025 */  or         $fp, $a0, $zero
/* 2DA50 8002CE50 AFBF003C */  sw         $ra, 0x3c($sp)
/* 2DA54 8002CE54 AFB60030 */  sw         $s6, 0x30($sp)
/* 2DA58 8002CE58 AFB40028 */  sw         $s4, 0x28($sp)
/* 2DA5C 8002CE5C AFB30024 */  sw         $s3, 0x24($sp)
/* 2DA60 8002CE60 AFB20020 */  sw         $s2, 0x20($sp)
/* 2DA64 8002CE64 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2DA68 8002CE68 AFB00018 */  sw         $s0, 0x18($sp)
.L8002CE6C:
/* 2DA6C 8002CE6C 2AE10007 */  slti       $at, $s7, 7
/* 2DA70 8002CE70 10200022 */  beqz       $at, .L8002CEFC
/* 2DA74 8002CE74 03C09025 */   or        $s2, $fp, $zero
/* 2DA78 8002CE78 00177080 */  sll        $t6, $s7, 2
/* 2DA7C 8002CE7C 01DE7821 */  addu       $t7, $t6, $fp
/* 2DA80 8002CE80 03CF082B */  sltu       $at, $fp, $t7
/* 2DA84 8002CE84 AFAF0044 */  sw         $t7, 0x44($sp)
/* 2DA88 8002CE88 102000B1 */  beqz       $at, .L8002D150
/* 2DA8C 8002CE8C 03C08825 */   or        $s1, $fp, $zero
/* 2DA90 8002CE90 03D1082B */  sltu       $at, $fp, $s1
.L8002CE94:
/* 2DA94 8002CE94 10200012 */  beqz       $at, .L8002CEE0
/* 2DA98 8002CE98 02208025 */   or        $s0, $s1, $zero
/* 2DA9C 8002CE9C 8E24FFFC */  lw         $a0, -4($s1)
/* 2DAA0 8002CEA0 02A0F809 */  jalr       $s5
/* 2DAA4 8002CEA4 8E250000 */   lw        $a1, ($s1)
/* 2DAA8 8002CEA8 5840000E */  blezl      $v0, .L8002CEE4
/* 2DAAC 8002CEAC 8FB90044 */   lw        $t9, 0x44($sp)
/* 2DAB0 8002CEB0 8E020000 */  lw         $v0, ($s0)
.L8002CEB4:
/* 2DAB4 8002CEB4 8E18FFFC */  lw         $t8, -4($s0)
/* 2DAB8 8002CEB8 2610FFFC */  addiu      $s0, $s0, -4
/* 2DABC 8002CEBC 03D0082B */  sltu       $at, $fp, $s0
/* 2DAC0 8002CEC0 AE020000 */  sw         $v0, ($s0)
/* 2DAC4 8002CEC4 10200006 */  beqz       $at, .L8002CEE0
/* 2DAC8 8002CEC8 AE180004 */   sw        $t8, 4($s0)
/* 2DACC 8002CECC 8E04FFFC */  lw         $a0, -4($s0)
/* 2DAD0 8002CED0 02A0F809 */  jalr       $s5
/* 2DAD4 8002CED4 8E050000 */   lw        $a1, ($s0)
/* 2DAD8 8002CED8 5C40FFF6 */  bgtzl      $v0, .L8002CEB4
/* 2DADC 8002CEDC 8E020000 */   lw        $v0, ($s0)
.L8002CEE0:
/* 2DAE0 8002CEE0 8FB90044 */  lw         $t9, 0x44($sp)
.L8002CEE4:
/* 2DAE4 8002CEE4 26310004 */  addiu      $s1, $s1, 4
/* 2DAE8 8002CEE8 0239082B */  sltu       $at, $s1, $t9
/* 2DAEC 8002CEEC 5420FFE9 */  bnel       $at, $zero, .L8002CE94
/* 2DAF0 8002CEF0 03D1082B */   sltu      $at, $fp, $s1
/* 2DAF4 8002CEF4 10000097 */  b          .L8002D154
/* 2DAF8 8002CEF8 8FBF003C */   lw        $ra, 0x3c($sp)
.L8002CEFC:
/* 2DAFC 8002CEFC 06E10003 */  bgez       $s7, .L8002CF0C
/* 2DB00 8002CF00 00174043 */   sra       $t0, $s7, 1
/* 2DB04 8002CF04 26E10001 */  addiu      $at, $s7, 1
/* 2DB08 8002CF08 00014043 */  sra        $t0, $at, 1
.L8002CF0C:
/* 2DB0C 8002CF0C 00084880 */  sll        $t1, $t0, 2
/* 2DB10 8002CF10 013E8021 */  addu       $s0, $t1, $fp
/* 2DB14 8002CF14 2AE10008 */  slti       $at, $s7, 8
/* 2DB18 8002CF18 14200024 */  bnez       $at, .L8002CFAC
/* 2DB1C 8002CF1C AFB0008C */   sw        $s0, 0x8c($sp)
/* 2DB20 8002CF20 00175080 */  sll        $t2, $s7, 2
/* 2DB24 8002CF24 015EB021 */  addu       $s6, $t2, $fp
/* 2DB28 8002CF28 26D6FFFC */  addiu      $s6, $s6, -4
/* 2DB2C 8002CF2C 2AE10029 */  slti       $at, $s7, 0x29
/* 2DB30 8002CF30 14200019 */  bnez       $at, .L8002CF98
/* 2DB34 8002CF34 02C03025 */   or        $a2, $s6, $zero
/* 2DB38 8002CF38 03C02025 */  or         $a0, $fp, $zero
/* 2DB3C 8002CF3C 06E10003 */  bgez       $s7, .L8002CF4C
/* 2DB40 8002CF40 001710C3 */   sra       $v0, $s7, 3
/* 2DB44 8002CF44 26E10007 */  addiu      $at, $s7, 7
/* 2DB48 8002CF48 000110C3 */  sra        $v0, $at, 3
.L8002CF4C:
/* 2DB4C 8002CF4C 00028880 */  sll        $s1, $v0, 2
/* 2DB50 8002CF50 000298C0 */  sll        $s3, $v0, 3
/* 2DB54 8002CF54 027E3021 */  addu       $a2, $s3, $fp
/* 2DB58 8002CF58 023E2821 */  addu       $a1, $s1, $fp
/* 2DB5C 8002CF5C 0C00B356 */  jal        func_8002CD58
/* 2DB60 8002CF60 02A03825 */   or        $a3, $s5, $zero
/* 2DB64 8002CF64 00409025 */  or         $s2, $v0, $zero
/* 2DB68 8002CF68 02112023 */  subu       $a0, $s0, $s1
/* 2DB6C 8002CF6C 02002825 */  or         $a1, $s0, $zero
/* 2DB70 8002CF70 02303021 */  addu       $a2, $s1, $s0
/* 2DB74 8002CF74 0C00B356 */  jal        func_8002CD58
/* 2DB78 8002CF78 02A03825 */   or        $a3, $s5, $zero
/* 2DB7C 8002CF7C AFA2008C */  sw         $v0, 0x8c($sp)
/* 2DB80 8002CF80 02D32023 */  subu       $a0, $s6, $s3
/* 2DB84 8002CF84 02D12823 */  subu       $a1, $s6, $s1
/* 2DB88 8002CF88 02C03025 */  or         $a2, $s6, $zero
/* 2DB8C 8002CF8C 0C00B356 */  jal        func_8002CD58
/* 2DB90 8002CF90 02A03825 */   or        $a3, $s5, $zero
/* 2DB94 8002CF94 00403025 */  or         $a2, $v0, $zero
.L8002CF98:
/* 2DB98 8002CF98 02402025 */  or         $a0, $s2, $zero
/* 2DB9C 8002CF9C 8FA5008C */  lw         $a1, 0x8c($sp)
/* 2DBA0 8002CFA0 0C00B356 */  jal        func_8002CD58
/* 2DBA4 8002CFA4 02A03825 */   or        $a3, $s5, $zero
/* 2DBA8 8002CFA8 AFA2008C */  sw         $v0, 0x8c($sp)
.L8002CFAC:
/* 2DBAC 8002CFAC 8FAB008C */  lw         $t3, 0x8c($sp)
/* 2DBB0 8002CFB0 00176080 */  sll        $t4, $s7, 2
/* 2DBB4 8002CFB4 019E6821 */  addu       $t5, $t4, $fp
/* 2DBB8 8002CFB8 25B3FFFC */  addiu      $s3, $t5, -4
/* 2DBBC 8002CFBC 8D740000 */  lw         $s4, ($t3)
/* 2DBC0 8002CFC0 AFAD0044 */  sw         $t5, 0x44($sp)
/* 2DBC4 8002CFC4 02608025 */  or         $s0, $s3, $zero
/* 2DBC8 8002CFC8 03C09025 */  or         $s2, $fp, $zero
/* 2DBCC 8002CFCC 03C08825 */  or         $s1, $fp, $zero
.L8002CFD0:
/* 2DBD0 8002CFD0 0211082B */  sltu       $at, $s0, $s1
/* 2DBD4 8002CFD4 14200014 */  bnez       $at, .L8002D028
/* 2DBD8 8002CFD8 02802825 */   or        $a1, $s4, $zero
/* 2DBDC 8002CFDC 02A0F809 */  jalr       $s5
/* 2DBE0 8002CFE0 8E240000 */   lw        $a0, ($s1)
/* 2DBE4 8002CFE4 5C400011 */  bgtzl      $v0, .L8002D02C
/* 2DBE8 8002CFE8 0211082B */   sltu      $at, $s0, $s1
.L8002CFEC:
/* 2DBEC 8002CFEC 14400006 */  bnez       $v0, .L8002D008
/* 2DBF0 8002CFF0 02802825 */   or        $a1, $s4, $zero
/* 2DBF4 8002CFF4 8E2E0000 */  lw         $t6, ($s1)
/* 2DBF8 8002CFF8 8E420000 */  lw         $v0, ($s2)
/* 2DBFC 8002CFFC 26520004 */  addiu      $s2, $s2, 4
/* 2DC00 8002D000 AE4EFFFC */  sw         $t6, -4($s2)
/* 2DC04 8002D004 AE220000 */  sw         $v0, ($s1)
.L8002D008:
/* 2DC08 8002D008 26310004 */  addiu      $s1, $s1, 4
/* 2DC0C 8002D00C 0211082B */  sltu       $at, $s0, $s1
/* 2DC10 8002D010 54200006 */  bnel       $at, $zero, .L8002D02C
/* 2DC14 8002D014 0211082B */   sltu      $at, $s0, $s1
/* 2DC18 8002D018 02A0F809 */  jalr       $s5
/* 2DC1C 8002D01C 8E240000 */   lw        $a0, ($s1)
/* 2DC20 8002D020 1840FFF2 */  blez       $v0, .L8002CFEC
/* 2DC24 8002D024 00000000 */   nop       
.L8002D028:
/* 2DC28 8002D028 0211082B */  sltu       $at, $s0, $s1
.L8002D02C:
/* 2DC2C 8002D02C 14200014 */  bnez       $at, .L8002D080
/* 2DC30 8002D030 02802825 */   or        $a1, $s4, $zero
/* 2DC34 8002D034 02A0F809 */  jalr       $s5
/* 2DC38 8002D038 8E040000 */   lw        $a0, ($s0)
/* 2DC3C 8002D03C 04420011 */  bltzl      $v0, .L8002D084
/* 2DC40 8002D040 0211082B */   sltu      $at, $s0, $s1
.L8002D044:
/* 2DC44 8002D044 14400006 */  bnez       $v0, .L8002D060
/* 2DC48 8002D048 02802825 */   or        $a1, $s4, $zero
/* 2DC4C 8002D04C 8E6F0000 */  lw         $t7, ($s3)
/* 2DC50 8002D050 8E020000 */  lw         $v0, ($s0)
/* 2DC54 8002D054 2673FFFC */  addiu      $s3, $s3, -4
/* 2DC58 8002D058 AE0F0000 */  sw         $t7, ($s0)
/* 2DC5C 8002D05C AE620004 */  sw         $v0, 4($s3)
.L8002D060:
/* 2DC60 8002D060 2610FFFC */  addiu      $s0, $s0, -4
/* 2DC64 8002D064 0211082B */  sltu       $at, $s0, $s1
/* 2DC68 8002D068 54200006 */  bnel       $at, $zero, .L8002D084
/* 2DC6C 8002D06C 0211082B */   sltu      $at, $s0, $s1
/* 2DC70 8002D070 02A0F809 */  jalr       $s5
/* 2DC74 8002D074 8E040000 */   lw        $a0, ($s0)
/* 2DC78 8002D078 0441FFF2 */  bgez       $v0, .L8002D044
/* 2DC7C 8002D07C 00000000 */   nop       
.L8002D080:
/* 2DC80 8002D080 0211082B */  sltu       $at, $s0, $s1
.L8002D084:
/* 2DC84 8002D084 54200009 */  bnel       $at, $zero, .L8002D0AC
/* 2DC88 8002D088 025E1023 */   subu      $v0, $s2, $fp
/* 2DC8C 8002D08C 8E180000 */  lw         $t8, ($s0)
/* 2DC90 8002D090 8E220000 */  lw         $v0, ($s1)
/* 2DC94 8002D094 26310004 */  addiu      $s1, $s1, 4
/* 2DC98 8002D098 AE38FFFC */  sw         $t8, -4($s1)
/* 2DC9C 8002D09C 2610FFFC */  addiu      $s0, $s0, -4
/* 2DCA0 8002D0A0 1000FFCB */  b          .L8002CFD0
/* 2DCA4 8002D0A4 AE020004 */   sw        $v0, 4($s0)
/* 2DCA8 8002D0A8 025E1023 */  subu       $v0, $s2, $fp
.L8002D0AC:
/* 2DCAC 8002D0AC 0232A023 */  subu       $s4, $s1, $s2
/* 2DCB0 8002D0B0 0014A083 */  sra        $s4, $s4, 2
/* 2DCB4 8002D0B4 00021083 */  sra        $v0, $v0, 2
/* 2DCB8 8002D0B8 0054082A */  slt        $at, $v0, $s4
/* 2DCBC 8002D0BC 10200003 */  beqz       $at, .L8002D0CC
/* 2DCC0 8002D0C0 8FB60044 */   lw        $s6, 0x44($sp)
/* 2DCC4 8002D0C4 10000002 */  b          .L8002D0D0
/* 2DCC8 8002D0C8 00403025 */   or        $a2, $v0, $zero
.L8002D0CC:
/* 2DCCC 8002D0CC 02803025 */  or         $a2, $s4, $zero
.L8002D0D0:
/* 2DCD0 8002D0D0 0006C880 */  sll        $t9, $a2, 2
/* 2DCD4 8002D0D4 02392823 */  subu       $a1, $s1, $t9
/* 2DCD8 8002D0D8 0C00B331 */  jal        func_8002CCC4
/* 2DCDC 8002D0DC 03C02025 */   or        $a0, $fp, $zero
/* 2DCE0 8002D0E0 8FA80044 */  lw         $t0, 0x44($sp)
/* 2DCE4 8002D0E4 02709023 */  subu       $s2, $s3, $s0
/* 2DCE8 8002D0E8 00129083 */  sra        $s2, $s2, 2
/* 2DCEC 8002D0EC 01131023 */  subu       $v0, $t0, $s3
/* 2DCF0 8002D0F0 00021083 */  sra        $v0, $v0, 2
/* 2DCF4 8002D0F4 2442FFFF */  addiu      $v0, $v0, -1
/* 2DCF8 8002D0F8 0242082A */  slt        $at, $s2, $v0
/* 2DCFC 8002D0FC 10200003 */  beqz       $at, .L8002D10C
/* 2DD00 8002D100 02202025 */   or        $a0, $s1, $zero
/* 2DD04 8002D104 10000002 */  b          .L8002D110
/* 2DD08 8002D108 02403025 */   or        $a2, $s2, $zero
.L8002D10C:
/* 2DD0C 8002D10C 00403025 */  or         $a2, $v0, $zero
.L8002D110:
/* 2DD10 8002D110 8FA90044 */  lw         $t1, 0x44($sp)
/* 2DD14 8002D114 00065080 */  sll        $t2, $a2, 2
/* 2DD18 8002D118 0C00B331 */  jal        func_8002CCC4
/* 2DD1C 8002D11C 012A2823 */   subu      $a1, $t1, $t2
/* 2DD20 8002D120 2A810002 */  slti       $at, $s4, 2
/* 2DD24 8002D124 14200004 */  bnez       $at, .L8002D138
/* 2DD28 8002D128 03C02025 */   or        $a0, $fp, $zero
/* 2DD2C 8002D12C 02802825 */  or         $a1, $s4, $zero
/* 2DD30 8002D130 0C00B38D */  jal        func_8002CE34
/* 2DD34 8002D134 02A03025 */   or        $a2, $s5, $zero
.L8002D138:
/* 2DD38 8002D138 2A410002 */  slti       $at, $s2, 2
/* 2DD3C 8002D13C 14200004 */  bnez       $at, .L8002D150
/* 2DD40 8002D140 00125880 */   sll       $t3, $s2, 2
/* 2DD44 8002D144 02CBF023 */  subu       $fp, $s6, $t3
/* 2DD48 8002D148 1000FF48 */  b          .L8002CE6C
/* 2DD4C 8002D14C 0240B825 */   or        $s7, $s2, $zero
.L8002D150:
/* 2DD50 8002D150 8FBF003C */  lw         $ra, 0x3c($sp)
.L8002D154:
/* 2DD54 8002D154 8FB00018 */  lw         $s0, 0x18($sp)
/* 2DD58 8002D158 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2DD5C 8002D15C 8FB20020 */  lw         $s2, 0x20($sp)
/* 2DD60 8002D160 8FB30024 */  lw         $s3, 0x24($sp)
/* 2DD64 8002D164 8FB40028 */  lw         $s4, 0x28($sp)
/* 2DD68 8002D168 8FB5002C */  lw         $s5, 0x2c($sp)
/* 2DD6C 8002D16C 8FB60030 */  lw         $s6, 0x30($sp)
/* 2DD70 8002D170 8FB70034 */  lw         $s7, 0x34($sp)
/* 2DD74 8002D174 8FBE0038 */  lw         $fp, 0x38($sp)
/* 2DD78 8002D178 03E00008 */  jr         $ra
/* 2DD7C 8002D17C 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_8002D180
/* 2DD80 8002D180 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2DD84 8002D184 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2DD88 8002D188 00803825 */  or         $a3, $a0, $zero
/* 2DD8C 8002D18C 00A03025 */  or         $a2, $a1, $zero
/* 2DD90 8002D190 8CE50008 */  lw         $a1, 8($a3)
/* 2DD94 8002D194 0C00B38D */  jal        func_8002CE34
/* 2DD98 8002D198 8C840000 */   lw        $a0, ($a0)
/* 2DD9C 8002D19C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2DDA0 8002D1A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2DDA4 8002D1A4 03E00008 */  jr         $ra
/* 2DDA8 8002D1A8 00000000 */   nop       

glabel func_8002D1AC
/* 2DDAC 8002D1AC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2DDB0 8002D1B0 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2DDB4 8002D1B4 AFB40028 */  sw         $s4, 0x28($sp)
/* 2DDB8 8002D1B8 AFB30024 */  sw         $s3, 0x24($sp)
/* 2DDBC 8002D1BC AFB20020 */  sw         $s2, 0x20($sp)
/* 2DDC0 8002D1C0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2DDC4 8002D1C4 AFB00018 */  sw         $s0, 0x18($sp)
/* 2DDC8 8002D1C8 AFA50034 */  sw         $a1, 0x34($sp)
/* 2DDCC 8002D1CC 8C920008 */  lw         $s2, 8($a0)
/* 2DDD0 8002D1D0 8CA20000 */  lw         $v0, ($a1)
/* 2DDD4 8002D1D4 00E09825 */  or         $s3, $a3, $zero
/* 2DDD8 8002D1D8 00C0A025 */  or         $s4, $a2, $zero
/* 2DDDC 8002D1DC 8C900000 */  lw         $s0, ($a0)
/* 2DDE0 8002D1E0 1A40000D */  blez       $s2, .L8002D218
/* 2DDE4 8002D1E4 00408825 */   or        $s1, $v0, $zero
.L8002D1E8:
/* 2DDE8 8002D1E8 8E040000 */  lw         $a0, ($s0)
/* 2DDEC 8002D1EC 0280F809 */  jalr       $s4
/* 2DDF0 8002D1F0 02602825 */   or        $a1, $s3, $zero
/* 2DDF4 8002D1F4 10400004 */  beqz       $v0, .L8002D208
/* 2DDF8 8002D1F8 2652FFFF */   addiu     $s2, $s2, -1
/* 2DDFC 8002D1FC 8E0F0000 */  lw         $t7, ($s0)
/* 2DE00 8002D200 26310004 */  addiu      $s1, $s1, 4
/* 2DE04 8002D204 AE2FFFFC */  sw         $t7, -4($s1)
.L8002D208:
/* 2DE08 8002D208 1E40FFF7 */  bgtz       $s2, .L8002D1E8
/* 2DE0C 8002D20C 26100004 */   addiu     $s0, $s0, 4
/* 2DE10 8002D210 8FB80034 */  lw         $t8, 0x34($sp)
/* 2DE14 8002D214 8F020000 */  lw         $v0, ($t8)
.L8002D218:
/* 2DE18 8002D218 8FA90034 */  lw         $t1, 0x34($sp)
/* 2DE1C 8002D21C 0222C823 */  subu       $t9, $s1, $v0
/* 2DE20 8002D220 00194083 */  sra        $t0, $t9, 2
/* 2DE24 8002D224 AD280008 */  sw         $t0, 8($t1)
/* 2DE28 8002D228 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2DE2C 8002D22C 8FB40028 */  lw         $s4, 0x28($sp)
/* 2DE30 8002D230 8FB30024 */  lw         $s3, 0x24($sp)
/* 2DE34 8002D234 8FB20020 */  lw         $s2, 0x20($sp)
/* 2DE38 8002D238 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2DE3C 8002D23C 8FB00018 */  lw         $s0, 0x18($sp)
/* 2DE40 8002D240 03E00008 */  jr         $ra
/* 2DE44 8002D244 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002D248
/* 2DE48 8002D248 00801025 */  or         $v0, $a0, $zero
/* 2DE4C 8002D24C 00A01825 */  or         $v1, $a1, $zero
.L8002D250:
/* 2DE50 8002D250 94450000 */  lhu        $a1, ($v0)
/* 2DE54 8002D254 946E0000 */  lhu        $t6, ($v1)
/* 2DE58 8002D258 24420002 */  addiu      $v0, $v0, 2
/* 2DE5C 8002D25C 00AE2023 */  subu       $a0, $a1, $t6
/* 2DE60 8002D260 10800003 */  beqz       $a0, .L8002D270
/* 2DE64 8002D264 00000000 */   nop       
/* 2DE68 8002D268 03E00008 */  jr         $ra
/* 2DE6C 8002D26C 00801025 */   or        $v0, $a0, $zero
.L8002D270:
/* 2DE70 8002D270 50A00004 */  beql       $a1, $zero, .L8002D284
/* 2DE74 8002D274 00001025 */   or        $v0, $zero, $zero
/* 2DE78 8002D278 1000FFF5 */  b          .L8002D250
/* 2DE7C 8002D27C 24630002 */   addiu     $v1, $v1, 2
/* 2DE80 8002D280 00001025 */  or         $v0, $zero, $zero
.L8002D284:
/* 2DE84 8002D284 03E00008 */  jr         $ra
/* 2DE88 8002D288 00000000 */   nop       

glabel func_8002D28C
/* 2DE8C 8002D28C 3C0A8007 */  lui        $t2, 0x8007
/* 2DE90 8002D290 00803025 */  or         $a2, $a0, $zero
/* 2DE94 8002D294 00A01025 */  or         $v0, $a1, $zero
/* 2DE98 8002D298 254A5690 */  addiu      $t2, $t2, 0x5690
/* 2DE9C 8002D29C 240900DF */  addiu      $t1, $zero, 0xdf
/* 2DEA0 8002D2A0 240800BD */  addiu      $t0, $zero, 0xbd
/* 2DEA4 8002D2A4 240700BC */  addiu      $a3, $zero, 0xbc
/* 2DEA8 8002D2A8 90430000 */  lbu        $v1, ($v0)
.L8002D2AC:
/* 2DEAC 8002D2AC 24420001 */  addiu      $v0, $v0, 1
/* 2DEB0 8002D2B0 10E3000D */  beq        $a3, $v1, .L8002D2E8
/* 2DEB4 8002D2B4 00602025 */   or        $a0, $v1, $zero
/* 2DEB8 8002D2B8 50680014 */  beql       $v1, $t0, .L8002D30C
/* 2DEBC 8002D2BC 954E009A */   lhu       $t6, 0x9a($t2)
/* 2DEC0 8002D2C0 14690019 */  bne        $v1, $t1, .L8002D328
/* 2DEC4 8002D2C4 00035840 */   sll       $t3, $v1, 1
/* 2DEC8 8002D2C8 00037040 */  sll        $t6, $v1, 1
/* 2DECC 8002D2CC 014E2821 */  addu       $a1, $t2, $t6
/* 2DED0 8002D2D0 94AF0000 */  lhu        $t7, ($a1)
/* 2DED4 8002D2D4 24C60004 */  addiu      $a2, $a2, 4
/* 2DED8 8002D2D8 A4CFFFFC */  sh         $t7, -4($a2)
/* 2DEDC 8002D2DC 94B80000 */  lhu        $t8, ($a1)
/* 2DEE0 8002D2E0 10000015 */  b          .L8002D338
/* 2DEE4 8002D2E4 A4D8FFFE */   sh        $t8, -2($a2)
.L8002D2E8:
/* 2DEE8 8002D2E8 955900A0 */  lhu        $t9, 0xa0($t2)
/* 2DEEC 8002D2EC 24C60004 */  addiu      $a2, $a2, 4
/* 2DEF0 8002D2F0 272B0004 */  addiu      $t3, $t9, 4
/* 2DEF4 8002D2F4 A4CBFFFC */  sh         $t3, -4($a2)
/* 2DEF8 8002D2F8 954C0096 */  lhu        $t4, 0x96($t2)
/* 2DEFC 8002D2FC 258D0004 */  addiu      $t5, $t4, 4
/* 2DF00 8002D300 1000000D */  b          .L8002D338
/* 2DF04 8002D304 A4CDFFFE */   sh        $t5, -2($a2)
/* 2DF08 8002D308 954E009A */  lhu        $t6, 0x9a($t2)
.L8002D30C:
/* 2DF0C 8002D30C 24C60004 */  addiu      $a2, $a2, 4
/* 2DF10 8002D310 25CF0004 */  addiu      $t7, $t6, 4
/* 2DF14 8002D314 A4CFFFFC */  sh         $t7, -4($a2)
/* 2DF18 8002D318 9558009C */  lhu        $t8, 0x9c($t2)
/* 2DF1C 8002D31C 27190004 */  addiu      $t9, $t8, 4
/* 2DF20 8002D320 10000005 */  b          .L8002D338
/* 2DF24 8002D324 A4D9FFFE */   sh        $t9, -2($a2)
.L8002D328:
/* 2DF28 8002D328 014B6021 */  addu       $t4, $t2, $t3
/* 2DF2C 8002D32C 958D0000 */  lhu        $t5, ($t4)
/* 2DF30 8002D330 24C60002 */  addiu      $a2, $a2, 2
/* 2DF34 8002D334 A4CDFFFE */  sh         $t5, -2($a2)
.L8002D338:
/* 2DF38 8002D338 5480FFDC */  bnel       $a0, $zero, .L8002D2AC
/* 2DF3C 8002D33C 90430000 */   lbu       $v1, ($v0)
/* 2DF40 8002D340 03E00008 */  jr         $ra
/* 2DF44 8002D344 00000000 */   nop       

glabel func_8002D348
/* 2DF48 8002D348 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 2DF4C 8002D34C AFB00014 */  sw         $s0, 0x14($sp)
/* 2DF50 8002D350 AFA500A4 */  sw         $a1, 0xa4($sp)
/* 2DF54 8002D354 00802825 */  or         $a1, $a0, $zero
/* 2DF58 8002D358 27B00074 */  addiu      $s0, $sp, 0x74
/* 2DF5C 8002D35C AFBF001C */  sw         $ra, 0x1c($sp)
/* 2DF60 8002D360 AFA400A0 */  sw         $a0, 0xa0($sp)
/* 2DF64 8002D364 AFB10018 */  sw         $s1, 0x18($sp)
/* 2DF68 8002D368 0C00B4A3 */  jal        func_8002D28C
/* 2DF6C 8002D36C 02002025 */   or        $a0, $s0, $zero
/* 2DF70 8002D370 27B10048 */  addiu      $s1, $sp, 0x48
/* 2DF74 8002D374 02202025 */  or         $a0, $s1, $zero
/* 2DF78 8002D378 0C00B4A3 */  jal        func_8002D28C
/* 2DF7C 8002D37C 8FA500A4 */   lw        $a1, 0xa4($sp)
/* 2DF80 8002D380 3C088007 */  lui        $t0, 0x8007
/* 2DF84 8002D384 3C098007 */  lui        $t1, 0x8007
/* 2DF88 8002D388 25295896 */  addiu      $t1, $t1, 0x5896
/* 2DF8C 8002D38C 25085890 */  addiu      $t0, $t0, 0x5890
/* 2DF90 8002D390 02001825 */  or         $v1, $s0, $zero
.L8002D394:
/* 2DF94 8002D394 02202025 */  or         $a0, $s1, $zero
/* 2DF98 8002D398 95060000 */  lhu        $a2, ($t0)
/* 2DF9C 8002D39C 946E0000 */  lhu        $t6, ($v1)
.L8002D3A0:
/* 2DFA0 8002D3A0 948F0000 */  lhu        $t7, ($a0)
/* 2DFA4 8002D3A4 24630002 */  addiu      $v1, $v1, 2
/* 2DFA8 8002D3A8 01C62824 */  and        $a1, $t6, $a2
/* 2DFAC 8002D3AC 01E61024 */  and        $v0, $t7, $a2
/* 2DFB0 8002D3B0 00A23823 */  subu       $a3, $a1, $v0
/* 2DFB4 8002D3B4 10E00003 */  beqz       $a3, .L8002D3C4
/* 2DFB8 8002D3B8 24840002 */   addiu     $a0, $a0, 2
/* 2DFBC 8002D3BC 10000007 */  b          .L8002D3DC
/* 2DFC0 8002D3C0 00E01025 */   or        $v0, $a3, $zero
.L8002D3C4:
/* 2DFC4 8002D3C4 54A0FFF6 */  bnel       $a1, $zero, .L8002D3A0
/* 2DFC8 8002D3C8 946E0000 */   lhu       $t6, ($v1)
/* 2DFCC 8002D3CC 25080002 */  addiu      $t0, $t0, 2
/* 2DFD0 8002D3D0 5509FFF0 */  bnel       $t0, $t1, .L8002D394
/* 2DFD4 8002D3D4 02001825 */   or        $v1, $s0, $zero
/* 2DFD8 8002D3D8 00001025 */  or         $v0, $zero, $zero
.L8002D3DC:
/* 2DFDC 8002D3DC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2DFE0 8002D3E0 8FB00014 */  lw         $s0, 0x14($sp)
/* 2DFE4 8002D3E4 8FB10018 */  lw         $s1, 0x18($sp)
/* 2DFE8 8002D3E8 03E00008 */  jr         $ra
/* 2DFEC 8002D3EC 27BD00A0 */   addiu     $sp, $sp, 0xa0

glabel func_8002D3F0
/* 2DFF0 8002D3F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2DFF4 8002D3F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2DFF8 8002D3F8 C4800000 */  lwc1       $f0, ($a0)
/* 2DFFC 8002D3FC C4820004 */  lwc1       $f2, 4($a0)
/* 2E000 8002D400 AFA40018 */  sw         $a0, 0x18($sp)
/* 2E004 8002D404 46000102 */  mul.s      $f4, $f0, $f0
/* 2E008 8002D408 00000000 */  nop        
/* 2E00C 8002D40C 46021182 */  mul.s      $f6, $f2, $f2
/* 2E010 8002D410 0C0173AC */  jal        func_8005CEB0
/* 2E014 8002D414 46062300 */   add.s     $f12, $f4, $f6
/* 2E018 8002D418 8FA40018 */  lw         $a0, 0x18($sp)
/* 2E01C 8002D41C C4880000 */  lwc1       $f8, ($a0)
/* 2E020 8002D420 C4900004 */  lwc1       $f16, 4($a0)
/* 2E024 8002D424 46004283 */  div.s      $f10, $f8, $f0
/* 2E028 8002D428 46008483 */  div.s      $f18, $f16, $f0
/* 2E02C 8002D42C E48A0000 */  swc1       $f10, ($a0)
/* 2E030 8002D430 E4920004 */  swc1       $f18, 4($a0)
/* 2E034 8002D434 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2E038 8002D438 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2E03C 8002D43C 03E00008 */  jr         $ra
/* 2E040 8002D440 00000000 */   nop       

glabel func_8002D444
/* 2E044 8002D444 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2E048 8002D448 AFA5001C */  sw         $a1, 0x1c($sp)
/* 2E04C 8002D44C 93AE001C */  lbu        $t6, 0x1c($sp)
/* 2E050 8002D450 44866000 */  mtc1       $a2, $f12
/* 2E054 8002D454 93B8001D */  lbu        $t8, 0x1d($sp)
/* 2E058 8002D458 448E2000 */  mtc1       $t6, $f4
/* 2E05C 8002D45C 93A8001E */  lbu        $t0, 0x1e($sp)
/* 2E060 8002D460 44988000 */  mtc1       $t8, $f16
/* 2E064 8002D464 468021A0 */  cvt.s.w    $f6, $f4
/* 2E068 8002D468 00803025 */  or         $a2, $a0, $zero
/* 2E06C 8002D46C AFA40018 */  sw         $a0, 0x18($sp)
/* 2E070 8002D470 27AB0014 */  addiu      $t3, $sp, 0x14
/* 2E074 8002D474 468084A0 */  cvt.s.w    $f18, $f16
/* 2E078 8002D478 460C3202 */  mul.s      $f8, $f6, $f12
/* 2E07C 8002D47C 4600428D */  trunc.w.s  $f10, $f8
/* 2E080 8002D480 44884000 */  mtc1       $t0, $f8
/* 2E084 8002D484 460C9102 */  mul.s      $f4, $f18, $f12
/* 2E088 8002D488 44035000 */  mfc1       $v1, $f10
/* 2E08C 8002D48C 00000000 */  nop        
/* 2E090 8002D490 28610100 */  slti       $at, $v1, 0x100
/* 2E094 8002D494 468042A0 */  cvt.s.w    $f10, $f8
/* 2E098 8002D498 4600218D */  trunc.w.s  $f6, $f4
/* 2E09C 8002D49C 460C5402 */  mul.s      $f16, $f10, $f12
/* 2E0A0 8002D4A0 54200003 */  bnel       $at, $zero, .L8002D4B0
/* 2E0A4 8002D4A4 4600848D */   trunc.w.s $f18, $f16
/* 2E0A8 8002D4A8 240300FF */  addiu      $v1, $zero, 0xff
/* 2E0AC 8002D4AC 4600848D */  trunc.w.s  $f18, $f16
.L8002D4B0:
/* 2E0B0 8002D4B0 44043000 */  mfc1       $a0, $f6
/* 2E0B4 8002D4B4 44059000 */  mfc1       $a1, $f18
/* 2E0B8 8002D4B8 28810100 */  slti       $at, $a0, 0x100
/* 2E0BC 8002D4BC 54200003 */  bnel       $at, $zero, .L8002D4CC
/* 2E0C0 8002D4C0 28A10100 */   slti      $at, $a1, 0x100
/* 2E0C4 8002D4C4 240400FF */  addiu      $a0, $zero, 0xff
/* 2E0C8 8002D4C8 28A10100 */  slti       $at, $a1, 0x100
.L8002D4CC:
/* 2E0CC 8002D4CC 54200003 */  bnel       $at, $zero, .L8002D4DC
/* 2E0D0 8002D4D0 93AA001F */   lbu       $t2, 0x1f($sp)
/* 2E0D4 8002D4D4 240500FF */  addiu      $a1, $zero, 0xff
/* 2E0D8 8002D4D8 93AA001F */  lbu        $t2, 0x1f($sp)
.L8002D4DC:
/* 2E0DC 8002D4DC A3A30014 */  sb         $v1, 0x14($sp)
/* 2E0E0 8002D4E0 A3A40015 */  sb         $a0, 0x15($sp)
/* 2E0E4 8002D4E4 A3A50016 */  sb         $a1, 0x16($sp)
/* 2E0E8 8002D4E8 A3AA0017 */  sb         $t2, 0x17($sp)
/* 2E0EC 8002D4EC 8D6D0000 */  lw         $t5, ($t3)
/* 2E0F0 8002D4F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2E0F4 8002D4F4 00C01025 */  or         $v0, $a2, $zero
/* 2E0F8 8002D4F8 A8CD0000 */  swl        $t5, ($a2)
/* 2E0FC 8002D4FC 03E00008 */  jr         $ra
/* 2E100 8002D500 B8CD0003 */   swr       $t5, 3($a2)
/* 2E104 8002D504 00000000 */  nop        
/* 2E108 8002D508 00000000 */  nop        
/* 2E10C 8002D50C 00000000 */  nop        
