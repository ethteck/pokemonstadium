.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80054CC0
/* 558C0 80054CC0 3C038010 */  lui        $v1, 0x8010
/* 558C4 80054CC4 246306C8 */  addiu      $v1, $v1, 0x6c8
/* 558C8 80054CC8 8C620000 */  lw         $v0, ($v1)
/* 558CC 80054CCC 3C048010 */  lui        $a0, 0x8010
/* 558D0 80054CD0 248406D8 */  addiu      $a0, $a0, 0x6d8
/* 558D4 80054CD4 904E0002 */  lbu        $t6, 2($v0)
/* 558D8 80054CD8 31CF0001 */  andi       $t7, $t6, 1
/* 558DC 80054CDC 51E00014 */  beql       $t7, $zero, .L80054D30
/* 558E0 80054CE0 AC40000C */   sw        $zero, 0xc($v0)
/* 558E4 80054CE4 90980000 */  lbu        $t8, ($a0)
/* 558E8 80054CE8 3C088008 */  lui        $t0, 0x8008
/* 558EC 80054CEC 240A10C3 */  addiu      $t2, $zero, 0x10c3
/* 558F0 80054CF0 0018C840 */  sll        $t9, $t8, 1
/* 558F4 80054CF4 01194021 */  addu       $t0, $t0, $t9
/* 558F8 80054CF8 9508DD18 */  lhu        $t0, -0x22e8($t0)
/* 558FC 80054CFC 3C0E8008 */  lui        $t6, 0x8008
/* 55900 80054D00 2509FFE8 */  addiu      $t1, $t0, -0x18
/* 55904 80054D04 AC49000C */  sw         $t1, 0xc($v0)
/* 55908 80054D08 8C6B0000 */  lw         $t3, ($v1)
/* 5590C 80054D0C AD6A0010 */  sw         $t2, 0x10($t3)
/* 55910 80054D10 908C0000 */  lbu        $t4, ($a0)
/* 55914 80054D14 8C6F0000 */  lw         $t7, ($v1)
/* 55918 80054D18 000C6880 */  sll        $t5, $t4, 2
/* 5591C 80054D1C 01CD7021 */  addu       $t6, $t6, $t5
/* 55920 80054D20 8DCEDD28 */  lw         $t6, -0x22d8($t6)
/* 55924 80054D24 10000009 */  b          .L80054D4C
/* 55928 80054D28 ADEE0014 */   sw        $t6, 0x14($t7)
/* 5592C 80054D2C AC40000C */  sw         $zero, 0xc($v0)
.L80054D30:
/* 55930 80054D30 8C790000 */  lw         $t9, ($v1)
/* 55934 80054D34 241810C3 */  addiu      $t8, $zero, 0x10c3
/* 55938 80054D38 3C0803D7 */  lui        $t0, 0x3d7
/* 5593C 80054D3C AF380010 */  sw         $t8, 0x10($t9)
/* 55940 80054D40 8C690000 */  lw         $t1, ($v1)
/* 55944 80054D44 35088F40 */  ori        $t0, $t0, 0x8f40
/* 55948 80054D48 AD280014 */  sw         $t0, 0x14($t1)
.L80054D4C:
/* 5594C 80054D4C 8C6A0000 */  lw         $t2, ($v1)
/* 55950 80054D50 03E00008 */  jr         $ra
/* 55954 80054D54 A1400004 */   sb        $zero, 4($t2)
/* 55958 80054D58 00000000 */  nop        
/* 5595C 80054D5C 00000000 */  nop        
