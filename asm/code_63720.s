.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80062B20
/* 63720 80062B20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 63724 80062B24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 63728 80062B28 3C048008 */  lui        $a0, 0x8008
/* 6372C 80062B2C 2484AC90 */  addiu      $a0, $a0, -0x5370
/* 63730 80062B30 0C015FF4 */  jal        func_80057FD0
/* 63734 80062B34 24050060 */   addiu     $a1, $zero, 0x60
/* 63738 80062B38 3C0E8008 */  lui        $t6, 0x8008
/* 6373C 80062B3C 25CEAC90 */  addiu      $t6, $t6, -0x5370
/* 63740 80062B40 3C018008 */  lui        $at, 0x8008
/* 63744 80062B44 AC2EACF0 */  sw         $t6, -0x5310($at)
/* 63748 80062B48 3C018008 */  lui        $at, 0x8008
/* 6374C 80062B4C 25CF0030 */  addiu      $t7, $t6, 0x30
/* 63750 80062B50 AC2FACF4 */  sw         $t7, -0x530c($at)
/* 63754 80062B54 24180001 */  addiu      $t8, $zero, 1
/* 63758 80062B58 A5D80032 */  sh         $t8, 0x32($t6)
/* 6375C 80062B5C 3C088008 */  lui        $t0, 0x8008
/* 63760 80062B60 8D08ACF0 */  lw         $t0, -0x5310($t0)
/* 63764 80062B64 24190001 */  addiu      $t9, $zero, 1
/* 63768 80062B68 3C0A8008 */  lui        $t2, 0x8008
/* 6376C 80062B6C A5190002 */  sh         $t9, 2($t0)
/* 63770 80062B70 8D4AACF4 */  lw         $t2, -0x530c($t2)
/* 63774 80062B74 3C098000 */  lui        $t1, 0x8000
/* 63778 80062B78 3C0C8008 */  lui        $t4, 0x8008
/* 6377C 80062B7C AD490004 */  sw         $t1, 4($t2)
/* 63780 80062B80 8D8CACF0 */  lw         $t4, -0x5310($t4)
/* 63784 80062B84 3C0B8000 */  lui        $t3, 0x8000
/* 63788 80062B88 3C0D8000 */  lui        $t5, 0x8000
/* 6378C 80062B8C AD8B0004 */  sw         $t3, 4($t4)
/* 63790 80062B90 8DAD0300 */  lw         $t5, 0x300($t5)
/* 63794 80062B94 15A00007 */  bnez       $t5, .L80062BB4
/* 63798 80062B98 00000000 */   nop       
/* 6379C 80062B9C 3C188008 */  lui        $t8, 0x8008
/* 637A0 80062BA0 8F18ACF4 */  lw         $t8, -0x530c($t8)
/* 637A4 80062BA4 3C0F8008 */  lui        $t7, 0x8008
/* 637A8 80062BA8 25EFAD00 */  addiu      $t7, $t7, -0x5300
/* 637AC 80062BAC 10000011 */  b          .L80062BF4
/* 637B0 80062BB0 AF0F0008 */   sw        $t7, 8($t8)
.L80062BB4:
/* 637B4 80062BB4 3C0E8000 */  lui        $t6, 0x8000
/* 637B8 80062BB8 8DCE0300 */  lw         $t6, 0x300($t6)
/* 637BC 80062BBC 24010002 */  addiu      $at, $zero, 2
/* 637C0 80062BC0 15C10007 */  bne        $t6, $at, .L80062BE0
/* 637C4 80062BC4 00000000 */   nop       
/* 637C8 80062BC8 3C088008 */  lui        $t0, 0x8008
/* 637CC 80062BCC 8D08ACF4 */  lw         $t0, -0x530c($t0)
/* 637D0 80062BD0 3C198008 */  lui        $t9, 0x8008
/* 637D4 80062BD4 2739ADA0 */  addiu      $t9, $t9, -0x5260
/* 637D8 80062BD8 10000006 */  b          .L80062BF4
/* 637DC 80062BDC AD190008 */   sw        $t9, 8($t0)
.L80062BE0:
/* 637E0 80062BE0 3C0A8008 */  lui        $t2, 0x8008
/* 637E4 80062BE4 8D4AACF4 */  lw         $t2, -0x530c($t2)
/* 637E8 80062BE8 3C098008 */  lui        $t1, 0x8008
/* 637EC 80062BEC 2529AD50 */  addiu      $t1, $t1, -0x52b0
/* 637F0 80062BF0 AD490008 */  sw         $t1, 8($t2)
.L80062BF4:
/* 637F4 80062BF4 3C0C8008 */  lui        $t4, 0x8008
/* 637F8 80062BF8 8D8CACF4 */  lw         $t4, -0x530c($t4)
/* 637FC 80062BFC 240B0020 */  addiu      $t3, $zero, 0x20
/* 63800 80062C00 3C0D8008 */  lui        $t5, 0x8008
/* 63804 80062C04 A58B0000 */  sh         $t3, ($t4)
/* 63808 80062C08 8DADACF4 */  lw         $t5, -0x530c($t5)
/* 6380C 80062C0C 3C0EA440 */  lui        $t6, 0xa440
/* 63810 80062C10 8DAF0008 */  lw         $t7, 8($t5)
/* 63814 80062C14 8DF80004 */  lw         $t8, 4($t7)
/* 63818 80062C18 ADB8000C */  sw         $t8, 0xc($t5)
/* 6381C 80062C1C 8DD90010 */  lw         $t9, 0x10($t6)
/* 63820 80062C20 2F21000B */  sltiu      $at, $t9, 0xb
/* 63824 80062C24 14200006 */  bnez       $at, .L80062C40
/* 63828 80062C28 00000000 */   nop       
.L80062C2C:
/* 6382C 80062C2C 3C08A440 */  lui        $t0, 0xa440
/* 63830 80062C30 8D090010 */  lw         $t1, 0x10($t0)
/* 63834 80062C34 2D21000B */  sltiu      $at, $t1, 0xb
/* 63838 80062C38 1020FFFC */  beqz       $at, .L80062C2C
/* 6383C 80062C3C 00000000 */   nop       
.L80062C40:
/* 63840 80062C40 3C0AA440 */  lui        $t2, 0xa440
/* 63844 80062C44 0C018B18 */  jal        func_80062C60
/* 63848 80062C48 AD400000 */   sw        $zero, ($t2)
/* 6384C 80062C4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 63850 80062C50 27BD0018 */  addiu      $sp, $sp, 0x18
/* 63854 80062C54 03E00008 */  jr         $ra
/* 63858 80062C58 00000000 */   nop       
/* 6385C 80062C5C 00000000 */  nop        
