.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_800636F0
/* 642F0 800636F0 4442F800 */  cfc1      $v0, $31
/* 642F4 800636F4 44C4F800 */  ctc1      $a0, $31
/* 642F8 800636F8 03E00008 */  jr        $ra
/* 642FC 800636FC 00000000 */  nop       

glabel func_80063700
/* 64300 80063700 3C0EA450 */  lui       $t6, 0xa450
/* 64304 80063704 03E00008 */  jr        $ra
/* 64308 80063708 8DC20004 */  lw        $v0, 4($t6)
/* 6430C 8006370C 00000000 */  nop       

glabel func_80063710
/* 64310 80063710 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 64314 80063714 AFBF0014 */  sw        $ra, 0x14($sp)
/* 64318 80063718 AFA40020 */  sw        $a0, 0x20($sp)
/* 6431C 8006371C AFA50024 */  sw        $a1, 0x24($sp)
/* 64320 80063720 0C015A10 */  jal       func_80056840
/* 64324 80063724 AFA60028 */  sw        $a2, 0x28($sp)
/* 64328 80063728 8FA40020 */  lw        $a0, 0x20($sp)
/* 6432C 8006372C 8FA50024 */  lw        $a1, 0x24($sp)
/* 64330 80063730 0C018F84 */  jal       func_80063E10
/* 64334 80063734 8FA60028 */  lw        $a2, 0x28($sp)
/* 64338 80063738 0C015A21 */  jal       func_80056884
/* 6433C 8006373C AFA2001C */  sw        $v0, 0x1c($sp)
/* 64340 80063740 8FBF0014 */  lw        $ra, 0x14($sp)
/* 64344 80063744 8FA2001C */  lw        $v0, 0x1c($sp)
/* 64348 80063748 27BD0020 */  addiu     $sp, $sp, 0x20
/* 6434C 8006374C 03E00008 */  jr        $ra
/* 64350 80063750 00000000 */  nop       
/* 64354 80063754 00000000 */  nop       
/* 64358 80063758 00000000 */  nop       
/* 6435C 8006375C 00000000 */  nop       
