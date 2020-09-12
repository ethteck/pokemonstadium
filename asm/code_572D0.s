.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_800566D0
/* 572D0 800566D0 3C058010 */  lui       $a1, 0x8010
/* 572D4 800566D4 24A506C8 */  addiu     $a1, $a1, 0x6c8
/* 572D8 800566D8 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 572DC 800566DC 8CA20000 */  lw        $v0, ($a1)
/* 572E0 800566E0 AFBF001C */  sw        $ra, 0x1c($sp)
/* 572E4 800566E4 AFB10018 */  sw        $s1, 0x18($sp)
/* 572E8 800566E8 AFB00014 */  sw        $s0, 0x14($sp)
/* 572EC 800566EC 8C43000C */  lw        $v1, 0xc($v0)
/* 572F0 800566F0 24100014 */  addiu     $s0, $zero, 0x14
/* 572F4 800566F4 240E0020 */  addiu     $t6, $zero, 0x20
/* 572F8 800566F8 2C6110C4 */  sltiu     $at, $v1, 0x10c4
/* 572FC 800566FC 14200006 */  bnez      $at, .L80056718
/* 57300 80056700 00000000 */  nop       
/* 57304 80056704 A04E0005 */  sb        $t6, 5($v0)
/* 57308 80056708 8CB80000 */  lw        $t8, ($a1)
/* 5730C 8005670C 240F0002 */  addiu     $t7, $zero, 2
/* 57310 80056710 1000001A */  b         .L8005677C
/* 57314 80056714 A30F0004 */  sb        $t7, 4($t8)
.L80056718:
/* 57318 80056718 0C015358 */  jal       func_80054D60
/* 5731C 8005671C 24640018 */  addiu     $a0, $v1, 0x18
.L80056720:
/* 57320 80056720 0C014CE8 */  jal       func_800533A0
/* 57324 80056724 00000000 */  nop       
/* 57328 80056728 14400005 */  bnez      $v0, .L80056740
/* 5732C 8005672C 305100FF */  andi      $s1, $v0, 0xff
/* 57330 80056730 3C198010 */  lui       $t9, 0x8010
/* 57334 80056734 8F3906C8 */  lw        $t9, 0x6c8($t9)
/* 57338 80056738 10000010 */  b         .L8005677C
/* 5733C 8005673C A3200004 */  sb        $zero, 4($t9)
.L80056740:
/* 57340 80056740 0C014D0C */  jal       func_80053430
/* 57344 80056744 02202025 */  or        $a0, $s1, $zero
/* 57348 80056748 14400005 */  bnez      $v0, .L80056760
/* 5734C 8005674C 02001025 */  or        $v0, $s0, $zero
/* 57350 80056750 2610FFFF */  addiu     $s0, $s0, -1
/* 57354 80056754 320800FF */  andi      $t0, $s0, 0xff
/* 57358 80056758 1440FFF1 */  bnez      $v0, .L80056720
/* 5735C 8005675C 01008025 */  or        $s0, $t0, $zero
.L80056760:
/* 57360 80056760 3C028010 */  lui       $v0, 0x8010
/* 57364 80056764 244206C8 */  addiu     $v0, $v0, 0x6c8
/* 57368 80056768 8C490000 */  lw        $t1, ($v0)
/* 5736C 8005676C 240A0002 */  addiu     $t2, $zero, 2
/* 57370 80056770 A1310005 */  sb        $s1, 5($t1)
/* 57374 80056774 8C4B0000 */  lw        $t3, ($v0)
/* 57378 80056778 A16A0004 */  sb        $t2, 4($t3)
.L8005677C:
/* 5737C 8005677C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 57380 80056780 8FB00014 */  lw        $s0, 0x14($sp)
/* 57384 80056784 8FB10018 */  lw        $s1, 0x18($sp)
/* 57388 80056788 03E00008 */  jr        $ra
/* 5738C 8005678C 27BD0020 */  addiu     $sp, $sp, 0x20

glabel func_80056790
/* 57390 80056790 3C0E8008 */  lui       $t6, 0x8008
/* 57394 80056794 8DCE95B0 */  lw        $t6, -0x6a50($t6)
/* 57398 80056798 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 5739C 8005679C AFBF0014 */  sw        $ra, 0x14($sp)
/* 573A0 800567A0 15C00003 */  bnez      $t6, .L800567B0
/* 573A4 800567A4 240F0007 */  addiu     $t7, $zero, 7
/* 573A8 800567A8 1000000D */  b         .L800567E0
/* 573AC 800567AC 2402FFFF */  addiu     $v0, $zero, -1
.L800567B0:
/* 573B0 800567B0 A08F0000 */  sb        $t7, ($a0)
/* 573B4 800567B4 A0800001 */  sb        $zero, 1($a0)
/* 573B8 800567B8 A0800002 */  sb        $zero, 2($a0)
/* 573BC 800567BC A0800003 */  sb        $zero, 3($a0)
/* 573C0 800567C0 10C00004 */  beqz      $a2, .L800567D4
/* 573C4 800567C4 AC85000C */  sw        $a1, 0xc($a0)
/* 573C8 800567C8 34190080 */  ori       $t9, $zero, 0x80
/* 573CC 800567CC A0990002 */  sb        $t9, 2($a0)
/* 573D0 800567D0 AC860008 */  sw        $a2, 8($a0)
.L800567D4:
/* 573D4 800567D4 0C014489 */  jal       func_80051224
/* 573D8 800567D8 00000000 */  nop       
/* 573DC 800567DC 00001025 */  or        $v0, $zero, $zero
.L800567E0:
/* 573E0 800567E0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 573E4 800567E4 27BD0018 */  addiu     $sp, $sp, 0x18
/* 573E8 800567E8 03E00008 */  jr        $ra
/* 573EC 800567EC 00000000 */  nop       

glabel func_800567F0
/* 573F0 800567F0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 573F4 800567F4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 573F8 800567F8 240E0001 */  addiu     $t6, $zero, 1
/* 573FC 800567FC 3C018008 */  lui       $at, 0x8008
/* 57400 80056800 3C048010 */  lui       $a0, 0x8010
/* 57404 80056804 3C058010 */  lui       $a1, 0x8010
/* 57408 80056808 AC2E9610 */  sw        $t6, -0x69f0($at)
/* 5740C 8005680C 24A520E0 */  addiu     $a1, $a1, 0x20e0
/* 57410 80056810 248420E8 */  addiu     $a0, $a0, 0x20e8
/* 57414 80056814 0C0178E8 */  jal       func_8005E3A0
/* 57418 80056818 24060001 */  addiu     $a2, $zero, 1
/* 5741C 8005681C 3C048010 */  lui       $a0, 0x8010
/* 57420 80056820 248420E8 */  addiu     $a0, $a0, 0x20e8
/* 57424 80056824 00002825 */  or        $a1, $zero, $zero
/* 57428 80056828 0C015A30 */  jal       func_800568C0
/* 5742C 8005682C 00003025 */  or        $a2, $zero, $zero
/* 57430 80056830 8FBF0014 */  lw        $ra, 0x14($sp)
/* 57434 80056834 27BD0018 */  addiu     $sp, $sp, 0x18
/* 57438 80056838 03E00008 */  jr        $ra
/* 5743C 8005683C 00000000 */  nop       

glabel func_80056840
/* 57440 80056840 3C0E8008 */  lui       $t6, 0x8008
/* 57444 80056844 8DCE9610 */  lw        $t6, -0x69f0($t6)
/* 57448 80056848 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 5744C 8005684C AFBF0014 */  sw        $ra, 0x14($sp)
/* 57450 80056850 15C00003 */  bnez      $t6, .L80056860
/* 57454 80056854 00000000 */  nop       
/* 57458 80056858 0C0159FC */  jal       func_800567F0
/* 5745C 8005685C 00000000 */  nop       
.L80056860:
/* 57460 80056860 3C048010 */  lui       $a0, 0x8010
/* 57464 80056864 248420E8 */  addiu     $a0, $a0, 0x20e8
/* 57468 80056868 27A5001C */  addiu     $a1, $sp, 0x1c
/* 5746C 8005686C 0C015AB4 */  jal       func_80056AD0
/* 57470 80056870 24060001 */  addiu     $a2, $zero, 1
/* 57474 80056874 8FBF0014 */  lw        $ra, 0x14($sp)
/* 57478 80056878 27BD0020 */  addiu     $sp, $sp, 0x20
/* 5747C 8005687C 03E00008 */  jr        $ra
/* 57480 80056880 00000000 */  nop       

glabel func_80056884
/* 57484 80056884 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 57488 80056888 AFBF0014 */  sw        $ra, 0x14($sp)
/* 5748C 8005688C 3C048010 */  lui       $a0, 0x8010
/* 57490 80056890 248420E8 */  addiu     $a0, $a0, 0x20e8
/* 57494 80056894 00002825 */  or        $a1, $zero, $zero
/* 57498 80056898 0C015A30 */  jal       func_800568C0
/* 5749C 8005689C 00003025 */  or        $a2, $zero, $zero
/* 574A0 800568A0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 574A4 800568A4 27BD0018 */  addiu     $sp, $sp, 0x18
/* 574A8 800568A8 03E00008 */  jr        $ra
/* 574AC 800568AC 00000000 */  nop       

glabel func_800568B0
/* 574B0 800568B0 40846800 */  mtc0      $a0, $13
/* 574B4 800568B4 03E00008 */  jr        $ra
/* 574B8 800568B8 00000000 */  nop       
/* 574BC 800568BC 00000000 */  nop       