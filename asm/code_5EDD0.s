.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005E1D0
/* 5EDD0 8005E1D0 24030010 */  addiu      $v1, $zero, 0x10
/* 5EDD4 8005E1D4 30AE000F */  andi       $t6, $a1, 0xf
/* 5EDD8 8005E1D8 006E1023 */  subu       $v0, $v1, $t6
/* 5EDDC 8005E1DC 10620003 */  beq        $v1, $v0, .L8005E1EC
/* 5EDE0 8005E1E0 00A27821 */   addu      $t7, $a1, $v0
/* 5EDE4 8005E1E4 10000002 */  b          .L8005E1F0
/* 5EDE8 8005E1E8 AC8F0000 */   sw        $t7, ($a0)
.L8005E1EC:
/* 5EDEC 8005E1EC AC850000 */  sw         $a1, ($a0)
.L8005E1F0:
/* 5EDF0 8005E1F0 8C980000 */  lw         $t8, ($a0)
/* 5EDF4 8005E1F4 AC860008 */  sw         $a2, 8($a0)
/* 5EDF8 8005E1F8 AC80000C */  sw         $zero, 0xc($a0)
/* 5EDFC 8005E1FC 03E00008 */  jr         $ra
/* 5EE00 8005E200 AC980004 */   sw        $t8, 4($a0)
/* 5EE04 8005E204 00000000 */  nop        
/* 5EE08 8005E208 00000000 */  nop        
/* 5EE0C 8005E20C 00000000 */  nop        
