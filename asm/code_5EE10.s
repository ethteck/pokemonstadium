.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005E210
/* 5EE10 8005E210 27BDFFF8 */  addiu     $sp, $sp, -8
/* 5EE14 8005E214 AFA40008 */  sw        $a0, 8($sp)
/* 5EE18 8005E218 AFA5000C */  sw        $a1, 0xc($sp)
/* 5EE1C 8005E21C AFA60010 */  sw        $a2, 0x10($sp)
/* 5EE20 8005E220 AFA70014 */  sw        $a3, 0x14($sp)
/* 5EE24 8005E224 03E00008 */  jr        $ra
/* 5EE28 8005E228 27BD0008 */  addiu     $sp, $sp, 8

glabel func_8005E22C
/* 5EE2C 8005E22C 27BDFFF8 */  addiu     $sp, $sp, -8
/* 5EE30 8005E230 AFA40008 */  sw        $a0, 8($sp)
/* 5EE34 8005E234 AFA5000C */  sw        $a1, 0xc($sp)
/* 5EE38 8005E238 AFA60010 */  sw        $a2, 0x10($sp)
/* 5EE3C 8005E23C AFA70014 */  sw        $a3, 0x14($sp)
/* 5EE40 8005E240 03E00008 */  jr        $ra
/* 5EE44 8005E244 27BD0008 */  addiu     $sp, $sp, 8
/* 5EE48 8005E248 00000000 */  nop       
/* 5EE4C 8005E24C 00000000 */  nop       
