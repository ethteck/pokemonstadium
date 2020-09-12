.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80063100
/* 63D00 80063100 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 63D04 80063104 AFBF0014 */  sw        $ra, 0x14($sp)
/* 63D08 80063108 AFA40020 */  sw        $a0, 0x20($sp)
/* 63D0C 8006310C AFA50024 */  sw        $a1, 0x24($sp)
/* 63D10 80063110 0C015A10 */  jal       func_80056840
/* 63D14 80063114 AFA60028 */  sw        $a2, 0x28($sp)
/* 63D18 80063118 8FA40020 */  lw        $a0, 0x20($sp)
/* 63D1C 8006311C 8FA50024 */  lw        $a1, 0x24($sp)
/* 63D20 80063120 0C017A24 */  jal       func_8005E890
/* 63D24 80063124 8FA60028 */  lw        $a2, 0x28($sp)
/* 63D28 80063128 0C015A21 */  jal       func_80056884
/* 63D2C 8006312C AFA2001C */  sw        $v0, 0x1c($sp)
/* 63D30 80063130 8FBF0014 */  lw        $ra, 0x14($sp)
/* 63D34 80063134 8FA2001C */  lw        $v0, 0x1c($sp)
/* 63D38 80063138 27BD0020 */  addiu     $sp, $sp, 0x20
/* 63D3C 8006313C 03E00008 */  jr        $ra
/* 63D40 80063140 00000000 */  nop       
/* 63D44 80063144 00000000 */  nop       
/* 63D48 80063148 00000000 */  nop       
/* 63D4C 8006314C 00000000 */  nop       
