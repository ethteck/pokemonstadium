.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80050BA0
/* 517A0 80050BA0 8C870008 */  lw         $a3, 8($a0)
/* 517A4 80050BA4 8C99000C */  lw         $t9, 0xc($a0)
/* 517A8 80050BA8 8C980004 */  lw         $t8, 4($a0)
/* 517AC 80050BAC 00E43820 */  add        $a3, $a3, $a0
/* 517B0 80050BB0 0324C820 */  add        $t9, $t9, $a0
/* 517B4 80050BB4 00003025 */  or         $a2, $zero, $zero
/* 517B8 80050BB8 20840010 */  addi       $a0, $a0, 0x10
/* 517BC 80050BBC 0305C020 */  add        $t8, $t8, $a1
.L80050BC0:
/* 517C0 80050BC0 54C00005 */  bnel       $a2, $zero, .L80050BD8
/* 517C4 80050BC4 0100482A */   slt       $t1, $t0, $zero
/* 517C8 80050BC8 8C880000 */  lw         $t0, ($a0)
/* 517CC 80050BCC 24060020 */  addiu      $a2, $zero, 0x20
/* 517D0 80050BD0 20840004 */  addi       $a0, $a0, 4
/* 517D4 80050BD4 0100482A */  slt        $t1, $t0, $zero
.L80050BD8:
/* 517D8 80050BD8 51200007 */  beql       $t1, $zero, .L80050BF8
/* 517DC 80050BDC 94EA0000 */   lhu       $t2, ($a3)
/* 517E0 80050BE0 832A0000 */  lb         $t2, ($t9)
/* 517E4 80050BE4 23390001 */  addi       $t9, $t9, 1
/* 517E8 80050BE8 20A50001 */  addi       $a1, $a1, 1
/* 517EC 80050BEC 1000000E */  b          .L80050C28
/* 517F0 80050BF0 A0AAFFFF */   sb        $t2, -1($a1)
/* 517F4 80050BF4 94EA0000 */  lhu        $t2, ($a3)
.L80050BF8:
/* 517F8 80050BF8 20E70002 */  addi       $a3, $a3, 2
/* 517FC 80050BFC 000A5B02 */  srl        $t3, $t2, 0xc
/* 51800 80050C00 314A0FFF */  andi       $t2, $t2, 0xfff
/* 51804 80050C04 1160000D */  beqz       $t3, .L80050C3C
/* 51808 80050C08 00AA4822 */   sub       $t1, $a1, $t2
/* 5180C 80050C0C 216B0002 */  addi       $t3, $t3, 2
.L80050C10:
/* 51810 80050C10 812AFFFF */  lb         $t2, -1($t1)
/* 51814 80050C14 216BFFFF */  addi       $t3, $t3, -1
/* 51818 80050C18 21290001 */  addi       $t1, $t1, 1
/* 5181C 80050C1C 20A50001 */  addi       $a1, $a1, 1
/* 51820 80050C20 1560FFFB */  bnez       $t3, .L80050C10
/* 51824 80050C24 A0AAFFFF */   sb        $t2, -1($a1)
.L80050C28:
/* 51828 80050C28 00084040 */  sll        $t0, $t0, 1
/* 5182C 80050C2C 14B8FFE4 */  bne        $a1, $t8, .L80050BC0
/* 51830 80050C30 20C6FFFF */   addi      $a2, $a2, -1
/* 51834 80050C34 03E00008 */  jr         $ra
/* 51838 80050C38 00000000 */   nop       
.L80050C3C:
/* 5183C 80050C3C 932B0000 */  lbu        $t3, ($t9)
/* 51840 80050C40 23390001 */  addi       $t9, $t9, 1
/* 51844 80050C44 1000FFF2 */  b          .L80050C10
/* 51848 80050C48 216B0012 */   addi      $t3, $t3, 0x12
/* 5184C 80050C4C 00000000 */  nop        
/* 51850 80050C50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 51854 80050C54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 51858 80050C58 0C014328 */  jal        func_80050CA0
/* 5185C 80050C5C 00000000 */   nop       
/* 51860 80050C60 3C0E0D00 */  lui        $t6, 0xd00
/* 51864 80050C64 3C0F062E */  lui        $t7, 0x62e
/* 51868 80050C68 AC4F0008 */  sw         $t7, 8($v0)
/* 5186C 80050C6C AC4E0000 */  sw         $t6, ($v0)
/* 51870 80050C70 3C188008 */  lui        $t8, %hi(D_80078584)
/* 51874 80050C74 8F188584 */  lw         $t8, %lo(D_80078584)($t8)
/* 51878 80050C78 24420010 */  addiu      $v0, $v0, 0x10
/* 5187C 80050C7C 8F190048 */  lw         $t9, 0x48($t8)
/* 51880 80050C80 AC59FFFC */  sw         $t9, -4($v0)
/* 51884 80050C84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 51888 80050C88 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5188C 80050C8C 03E00008 */  jr         $ra
/* 51890 80050C90 00000000 */   nop       
/* 51894 80050C94 00000000 */  nop        
/* 51898 80050C98 00000000 */  nop        
/* 5189C 80050C9C 00000000 */  nop        
