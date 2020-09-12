.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005A990
/* 5B590 8005A990 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 5B594 8005A994 AFBF0014 */  sw        $ra, 0x14($sp)
/* 5B598 8005A998 0C018AA4 */  jal       func_80062A90
/* 5B59C 8005A99C AFA40020 */  sw        $a0, 0x20($sp)
/* 5B5A0 8005A9A0 3C0E8008 */  lui       $t6, 0x8008
/* 5B5A4 8005A9A4 8DCEA87C */  lw        $t6, -0x5784($t6)
/* 5B5A8 8005A9A8 8FAF0020 */  lw        $t7, 0x20($sp)
/* 5B5AC 8005A9AC AFA2001C */  sw        $v0, 0x1c($sp)
/* 5B5B0 8005A9B0 3C018008 */  lui       $at, 0x8008
/* 5B5B4 8005A9B4 ADEE0000 */  sw        $t6, ($t7)
/* 5B5B8 8005A9B8 8FB80020 */  lw        $t8, 0x20($sp)
/* 5B5BC 8005A9BC 8FA4001C */  lw        $a0, 0x1c($sp)
/* 5B5C0 8005A9C0 0C018AC0 */  jal       func_80062B00
/* 5B5C4 8005A9C4 AC38A87C */  sw        $t8, -0x5784($at)
/* 5B5C8 8005A9C8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 5B5CC 8005A9CC 27BD0020 */  addiu     $sp, $sp, 0x20
/* 5B5D0 8005A9D0 00001025 */  or        $v0, $zero, $zero
/* 5B5D4 8005A9D4 03E00008 */  jr        $ra
/* 5B5D8 8005A9D8 00000000 */  nop       
/* 5B5DC 8005A9DC 00000000 */  nop       
