.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005D0F0
/* 5DCF0 8005D0F0 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 5DCF4 8005D0F4 AFA5006C */  sw        $a1, 0x6c($sp)
/* 5DCF8 8005D0F8 00802825 */  or        $a1, $a0, $zero
/* 5DCFC 8005D0FC AFBF0024 */  sw        $ra, 0x24($sp)
/* 5DD00 8005D100 AFA40068 */  sw        $a0, 0x68($sp)
/* 5DD04 8005D104 AFA60070 */  sw        $a2, 0x70($sp)
/* 5DD08 8005D108 AFA70074 */  sw        $a3, 0x74($sp)
/* 5DD0C 8005D10C 0C016C42 */  jal       func_8005B108
/* 5DD10 8005D110 27A40028 */  addiu     $a0, $sp, 0x28
/* 5DD14 8005D114 8FAE0078 */  lw        $t6, 0x78($sp)
/* 5DD18 8005D118 8FAF007C */  lw        $t7, 0x7c($sp)
/* 5DD1C 8005D11C 8FB80080 */  lw        $t8, 0x80($sp)
/* 5DD20 8005D120 27A40028 */  addiu     $a0, $sp, 0x28
/* 5DD24 8005D124 8FA5006C */  lw        $a1, 0x6c($sp)
/* 5DD28 8005D128 8FA60070 */  lw        $a2, 0x70($sp)
/* 5DD2C 8005D12C 8FA70074 */  lw        $a3, 0x74($sp)
/* 5DD30 8005D130 AFAE0010 */  sw        $t6, 0x10($sp)
/* 5DD34 8005D134 AFAF0014 */  sw        $t7, 0x14($sp)
/* 5DD38 8005D138 0C0173B8 */  jal       func_8005CEE0
/* 5DD3C 8005D13C AFB80018 */  sw        $t8, 0x18($sp)
/* 5DD40 8005D140 8FBF0024 */  lw        $ra, 0x24($sp)
/* 5DD44 8005D144 27BD0068 */  addiu     $sp, $sp, 0x68
/* 5DD48 8005D148 03E00008 */  jr        $ra
/* 5DD4C 8005D14C 00000000 */  nop       

glabel func_8005D150
/* 5DD50 8005D150 27BDFF28 */  addiu     $sp, $sp, -0xd8
/* 5DD54 8005D154 AFA500DC */  sw        $a1, 0xdc($sp)
/* 5DD58 8005D158 00802825 */  or        $a1, $a0, $zero
/* 5DD5C 8005D15C AFBF0014 */  sw        $ra, 0x14($sp)
/* 5DD60 8005D160 AFA400D8 */  sw        $a0, 0xd8($sp)
/* 5DD64 8005D164 AFA600E0 */  sw        $a2, 0xe0($sp)
/* 5DD68 8005D168 0C016C42 */  jal       func_8005B108
/* 5DD6C 8005D16C 27A40098 */  addiu     $a0, $sp, 0x98
/* 5DD70 8005D170 27A40058 */  addiu     $a0, $sp, 0x58
/* 5DD74 8005D174 0C016C42 */  jal       func_8005B108
/* 5DD78 8005D178 8FA500DC */  lw        $a1, 0xdc($sp)
/* 5DD7C 8005D17C 27A40098 */  addiu     $a0, $sp, 0x98
/* 5DD80 8005D180 27A50058 */  addiu     $a1, $sp, 0x58
/* 5DD84 8005D184 0C0173E0 */  jal       func_8005CF80
/* 5DD88 8005D188 27A60018 */  addiu     $a2, $sp, 0x18
/* 5DD8C 8005D18C 27A40018 */  addiu     $a0, $sp, 0x18
/* 5DD90 8005D190 0C016BD4 */  jal       func_8005AF50
/* 5DD94 8005D194 8FA500E0 */  lw        $a1, 0xe0($sp)
/* 5DD98 8005D198 8FBF0014 */  lw        $ra, 0x14($sp)
/* 5DD9C 8005D19C 27BD00D8 */  addiu     $sp, $sp, 0xd8
/* 5DDA0 8005D1A0 03E00008 */  jr        $ra
/* 5DDA4 8005D1A4 00000000 */  nop       
/* 5DDA8 8005D1A8 00000000 */  nop       
/* 5DDAC 8005D1AC 00000000 */  nop       
