.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80058CC0
/* 598C0 80058CC0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 598C4 80058CC4 AFA40028 */  sw        $a0, 0x28($sp)
/* 598C8 80058CC8 AFA5002C */  sw        $a1, 0x2c($sp)
/* 598CC 80058CCC 8FAE002C */  lw        $t6, 0x2c($sp)
/* 598D0 80058CD0 8FAF0028 */  lw        $t7, 0x28($sp)
/* 598D4 80058CD4 AFBF001C */  sw        $ra, 0x1c($sp)
/* 598D8 80058CD8 AFA60030 */  sw        $a2, 0x30($sp)
/* 598DC 80058CDC AFA70034 */  sw        $a3, 0x34($sp)
/* 598E0 80058CE0 AFB00018 */  sw        $s0, 0x18($sp)
/* 598E4 80058CE4 ADEE0014 */  sw        $t6, 0x14($t7)
/* 598E8 80058CE8 8FB90028 */  lw        $t9, 0x28($sp)
/* 598EC 80058CEC 8FB8003C */  lw        $t8, 0x3c($sp)
/* 598F0 80058CF0 AF380004 */  sw        $t8, 4($t9)
/* 598F4 80058CF4 8FA80028 */  lw        $t0, 0x28($sp)
/* 598F8 80058CF8 AD000000 */  sw        $zero, ($t0)
/* 598FC 80058CFC 8FA90028 */  lw        $t1, 0x28($sp)
/* 59900 80058D00 AD200008 */  sw        $zero, 8($t1)
/* 59904 80058D04 8FAB0028 */  lw        $t3, 0x28($sp)
/* 59908 80058D08 8FAA0030 */  lw        $t2, 0x30($sp)
/* 5990C 80058D0C AD6A011C */  sw        $t2, 0x11c($t3)
/* 59910 80058D10 8FAC0034 */  lw        $t4, 0x34($sp)
/* 59914 80058D14 8FAD0028 */  lw        $t5, 0x28($sp)
/* 59918 80058D18 01807825 */  or        $t7, $t4, $zero
/* 5991C 80058D1C 000C77C3 */  sra       $t6, $t4, 0x1f
/* 59920 80058D20 ADAE0038 */  sw        $t6, 0x38($t5)
/* 59924 80058D24 ADAF003C */  sw        $t7, 0x3c($t5)
/* 59928 80058D28 8FB80038 */  lw        $t8, 0x38($sp)
/* 5992C 80058D2C 8FB90028 */  lw        $t9, 0x28($sp)
/* 59930 80058D30 3C0C8005 */  lui       $t4, 0x8005
/* 59934 80058D34 03004825 */  or        $t1, $t8, $zero
/* 59938 80058D38 2D210010 */  sltiu     $at, $t1, 0x10
/* 5993C 80058D3C 001847C3 */  sra       $t0, $t8, 0x1f
/* 59940 80058D40 01015023 */  subu      $t2, $t0, $at
/* 59944 80058D44 252BFFF0 */  addiu     $t3, $t1, -0x10
/* 59948 80058D48 AF2B00F4 */  sw        $t3, 0xf4($t9)
/* 5994C 80058D4C AF2A00F0 */  sw        $t2, 0xf0($t9)
/* 59950 80058D50 8FAD0028 */  lw        $t5, 0x28($sp)
/* 59954 80058D54 258C7FC0 */  addiu     $t4, $t4, 0x7fc0
/* 59958 80058D58 01807825 */  or        $t7, $t4, $zero
/* 5995C 80058D5C 000C77C3 */  sra       $t6, $t4, 0x1f
/* 59960 80058D60 ADAE0100 */  sw        $t6, 0x100($t5)
/* 59964 80058D64 ADAF0104 */  sw        $t7, 0x104($t5)
/* 59968 80058D68 8FA90028 */  lw        $t1, 0x28($sp)
/* 5996C 80058D6C 3C18003F */  lui       $t8, 0x3f
/* 59970 80058D70 3718FF01 */  ori       $t8, $t8, 0xff01
/* 59974 80058D74 AFB80020 */  sw        $t8, 0x20($sp)
/* 59978 80058D78 3408FF03 */  ori       $t0, $zero, 0xff03
/* 5997C 80058D7C AD280118 */  sw        $t0, 0x118($t1)
/* 59980 80058D80 8FAA0020 */  lw        $t2, 0x20($sp)
/* 59984 80058D84 8FAC0028 */  lw        $t4, 0x28($sp)
/* 59988 80058D88 3C01003F */  lui       $at, 0x3f
/* 5998C 80058D8C 01415824 */  and       $t3, $t2, $at
/* 59990 80058D90 000BCC02 */  srl       $t9, $t3, 0x10
/* 59994 80058D94 AD990128 */  sw        $t9, 0x128($t4)
/* 59998 80058D98 8FAF0028 */  lw        $t7, 0x28($sp)
/* 5999C 80058D9C 3C0E0100 */  lui       $t6, 0x100
/* 599A0 80058DA0 35CE0800 */  ori       $t6, $t6, 0x800
/* 599A4 80058DA4 ADEE012C */  sw        $t6, 0x12c($t7)
/* 599A8 80058DA8 8FAD0028 */  lw        $t5, 0x28($sp)
/* 599AC 80058DAC 24180001 */  addiu     $t8, $zero, 1
/* 599B0 80058DB0 ADA00018 */  sw        $zero, 0x18($t5)
/* 599B4 80058DB4 8FA80028 */  lw        $t0, 0x28($sp)
/* 599B8 80058DB8 A5180010 */  sh        $t8, 0x10($t0)
/* 599BC 80058DBC 8FA90028 */  lw        $t1, 0x28($sp)
/* 599C0 80058DC0 0C018AA4 */  jal       func_80062A90
/* 599C4 80058DC4 A5200012 */  sh        $zero, 0x12($t1)
/* 599C8 80058DC8 3C0A8008 */  lui       $t2, 0x8008
/* 599CC 80058DCC 8D4A962C */  lw        $t2, -0x69d4($t2)
/* 599D0 80058DD0 8FAB0028 */  lw        $t3, 0x28($sp)
/* 599D4 80058DD4 00408025 */  or        $s0, $v0, $zero
/* 599D8 80058DD8 3C018008 */  lui       $at, 0x8008
/* 599DC 80058DDC AD6A000C */  sw        $t2, 0xc($t3)
/* 599E0 80058DE0 8FB90028 */  lw        $t9, 0x28($sp)
/* 599E4 80058DE4 02002025 */  or        $a0, $s0, $zero
/* 599E8 80058DE8 0C018AC0 */  jal       func_80062B00
/* 599EC 80058DEC AC39962C */  sw        $t9, -0x69d4($at)
/* 599F0 80058DF0 8FBF001C */  lw        $ra, 0x1c($sp)
/* 599F4 80058DF4 8FB00018 */  lw        $s0, 0x18($sp)
/* 599F8 80058DF8 27BD0028 */  addiu     $sp, $sp, 0x28
/* 599FC 80058DFC 03E00008 */  jr        $ra
/* 59A00 80058E00 00000000 */  nop       
/* 59A04 80058E04 00000000 */  nop       
/* 59A08 80058E08 00000000 */  nop       
/* 59A0C 80058E0C 00000000 */  nop       
