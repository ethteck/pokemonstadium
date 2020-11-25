.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80064F40
/* 65B40 80064F40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 65B44 80064F44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 65B48 80064F48 AFA40018 */  sw         $a0, 0x18($sp)
/* 65B4C 80064F4C 0C01795C */  jal        func_8005E570
/* 65B50 80064F50 AFA5001C */   sw        $a1, 0x1c($sp)
/* 65B54 80064F54 10400003 */  beqz       $v0, .L80064F64
/* 65B58 80064F58 8FAE001C */   lw        $t6, 0x1c($sp)
/* 65B5C 80064F5C 10000006 */  b          .L80064F78
/* 65B60 80064F60 2402FFFF */   addiu     $v0, $zero, -1
.L80064F64:
/* 65B64 80064F64 8FAF0018 */  lw         $t7, 0x18($sp)
/* 65B68 80064F68 3C01A000 */  lui        $at, 0xa000
/* 65B6C 80064F6C 00001025 */  or         $v0, $zero, $zero
/* 65B70 80064F70 01E1C025 */  or         $t8, $t7, $at
/* 65B74 80064F74 AF0E0000 */  sw         $t6, ($t8)
.L80064F78:
/* 65B78 80064F78 8FBF0014 */  lw         $ra, 0x14($sp)
/* 65B7C 80064F7C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 65B80 80064F80 03E00008 */  jr         $ra
/* 65B84 80064F84 00000000 */   nop       
/* 65B88 80064F88 00000000 */  nop        
/* 65B8C 80064F8C 00000000 */  nop        
