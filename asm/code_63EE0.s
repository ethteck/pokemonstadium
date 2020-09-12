.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_800632E0
/* 63EE0 800632E0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 63EE4 800632E4 AFBF001C */  sw        $ra, 0x1c($sp)
/* 63EE8 800632E8 AFA40028 */  sw        $a0, 0x28($sp)
/* 63EEC 800632EC AFA5002C */  sw        $a1, 0x2c($sp)
/* 63EF0 800632F0 AFA60030 */  sw        $a2, 0x30($sp)
/* 63EF4 800632F4 0C018AA4 */  jal       func_80062A90
/* 63EF8 800632F8 AFB00018 */  sw        $s0, 0x18($sp)
/* 63EFC 800632FC 3C0F8008 */  lui       $t7, 0x8008
/* 63F00 80063300 8DEFACF4 */  lw        $t7, -0x530c($t7)
/* 63F04 80063304 8FAE0028 */  lw        $t6, 0x28($sp)
/* 63F08 80063308 3C198008 */  lui       $t9, 0x8008
/* 63F0C 8006330C 3C098008 */  lui       $t1, 0x8008
/* 63F10 80063310 ADEE0010 */  sw        $t6, 0x10($t7)
/* 63F14 80063314 8F39ACF4 */  lw        $t9, -0x530c($t9)
/* 63F18 80063318 8FB8002C */  lw        $t8, 0x2c($sp)
/* 63F1C 8006331C 00408025 */  or        $s0, $v0, $zero
/* 63F20 80063320 02002025 */  or        $a0, $s0, $zero
/* 63F24 80063324 AF380014 */  sw        $t8, 0x14($t9)
/* 63F28 80063328 8D29ACF4 */  lw        $t1, -0x530c($t1)
/* 63F2C 8006332C 8FA80030 */  lw        $t0, 0x30($sp)
/* 63F30 80063330 0C018AC0 */  jal       func_80062B00
/* 63F34 80063334 A5280002 */  sh        $t0, 2($t1)
/* 63F38 80063338 8FBF001C */  lw        $ra, 0x1c($sp)
/* 63F3C 8006333C 8FB00018 */  lw        $s0, 0x18($sp)
/* 63F40 80063340 27BD0028 */  addiu     $sp, $sp, 0x28
/* 63F44 80063344 03E00008 */  jr        $ra
/* 63F48 80063348 00000000 */  nop       
/* 63F4C 8006334C 00000000 */  nop       
