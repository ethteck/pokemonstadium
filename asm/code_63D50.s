.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80063150
/* 63D50 80063150 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 63D54 80063154 AFBF0014 */  sw        $ra, 0x14($sp)
/* 63D58 80063158 0C018AA4 */  jal       func_80062A90
/* 63D5C 8006315C AFA40018 */  sw        $a0, 0x18($sp)
/* 63D60 80063160 8FA40018 */  lw        $a0, 0x18($sp)
/* 63D64 80063164 00402825 */  or        $a1, $v0, $zero
/* 63D68 80063168 3C038008 */  lui       $v1, 0x8008
/* 63D6C 8006316C 308E0001 */  andi      $t6, $a0, 1
/* 63D70 80063170 11C00006 */  beqz      $t6, .L8006318C
/* 63D74 80063174 30990002 */  andi      $t9, $a0, 2
/* 63D78 80063178 2463ACF4 */  addiu     $v1, $v1, -0x530c
/* 63D7C 8006317C 8C620000 */  lw        $v0, ($v1)
/* 63D80 80063180 8C4F000C */  lw        $t7, 0xc($v0)
/* 63D84 80063184 35F80008 */  ori       $t8, $t7, 8
/* 63D88 80063188 AC58000C */  sw        $t8, 0xc($v0)
.L8006318C:
/* 63D8C 8006318C 3C038008 */  lui       $v1, 0x8008
/* 63D90 80063190 13200006 */  beqz      $t9, .L800631AC
/* 63D94 80063194 2463ACF4 */  addiu     $v1, $v1, -0x530c
/* 63D98 80063198 8C620000 */  lw        $v0, ($v1)
/* 63D9C 8006319C 2401FFF7 */  addiu     $at, $zero, -9
/* 63DA0 800631A0 8C48000C */  lw        $t0, 0xc($v0)
/* 63DA4 800631A4 01014824 */  and       $t1, $t0, $at
/* 63DA8 800631A8 AC49000C */  sw        $t1, 0xc($v0)
.L800631AC:
/* 63DAC 800631AC 308A0004 */  andi      $t2, $a0, 4
/* 63DB0 800631B0 11400005 */  beqz      $t2, .L800631C8
/* 63DB4 800631B4 308D0008 */  andi      $t5, $a0, 8
/* 63DB8 800631B8 8C620000 */  lw        $v0, ($v1)
/* 63DBC 800631BC 8C4B000C */  lw        $t3, 0xc($v0)
/* 63DC0 800631C0 356C0004 */  ori       $t4, $t3, 4
/* 63DC4 800631C4 AC4C000C */  sw        $t4, 0xc($v0)
.L800631C8:
/* 63DC8 800631C8 11A00006 */  beqz      $t5, .L800631E4
/* 63DCC 800631CC 30980010 */  andi      $t8, $a0, 0x10
/* 63DD0 800631D0 8C620000 */  lw        $v0, ($v1)
/* 63DD4 800631D4 2401FFFB */  addiu     $at, $zero, -5
/* 63DD8 800631D8 8C4E000C */  lw        $t6, 0xc($v0)
/* 63DDC 800631DC 01C17824 */  and       $t7, $t6, $at
/* 63DE0 800631E0 AC4F000C */  sw        $t7, 0xc($v0)
.L800631E4:
/* 63DE4 800631E4 13000005 */  beqz      $t8, .L800631FC
/* 63DE8 800631E8 30890020 */  andi      $t1, $a0, 0x20
/* 63DEC 800631EC 8C620000 */  lw        $v0, ($v1)
/* 63DF0 800631F0 8C59000C */  lw        $t9, 0xc($v0)
/* 63DF4 800631F4 37280010 */  ori       $t0, $t9, 0x10
/* 63DF8 800631F8 AC48000C */  sw        $t0, 0xc($v0)
.L800631FC:
/* 63DFC 800631FC 11200006 */  beqz      $t1, .L80063218
/* 63E00 80063200 308C0040 */  andi      $t4, $a0, 0x40
/* 63E04 80063204 8C620000 */  lw        $v0, ($v1)
/* 63E08 80063208 2401FFEF */  addiu     $at, $zero, -0x11
/* 63E0C 8006320C 8C4A000C */  lw        $t2, 0xc($v0)
/* 63E10 80063210 01415824 */  and       $t3, $t2, $at
/* 63E14 80063214 AC4B000C */  sw        $t3, 0xc($v0)
.L80063218:
/* 63E18 80063218 1180000B */  beqz      $t4, .L80063248
/* 63E1C 8006321C 30990080 */  andi      $t9, $a0, 0x80
/* 63E20 80063220 8C620000 */  lw        $v0, ($v1)
/* 63E24 80063224 3C010001 */  lui       $at, 1
/* 63E28 80063228 8C4D000C */  lw        $t5, 0xc($v0)
/* 63E2C 8006322C 01A17025 */  or        $t6, $t5, $at
/* 63E30 80063230 AC4E000C */  sw        $t6, 0xc($v0)
/* 63E34 80063234 8C620000 */  lw        $v0, ($v1)
/* 63E38 80063238 2401FCFF */  addiu     $at, $zero, -0x301
/* 63E3C 8006323C 8C4F000C */  lw        $t7, 0xc($v0)
/* 63E40 80063240 01E1C024 */  and       $t8, $t7, $at
/* 63E44 80063244 AC58000C */  sw        $t8, 0xc($v0)
.L80063248:
/* 63E48 80063248 5320000F */  beql      $t9, $zero, .L80063288
/* 63E4C 8006324C 8C620000 */  lw        $v0, ($v1)
/* 63E50 80063250 8C620000 */  lw        $v0, ($v1)
/* 63E54 80063254 3C01FFFE */  lui       $at, 0xfffe
/* 63E58 80063258 3421FFFF */  ori       $at, $at, 0xffff
/* 63E5C 8006325C 8C48000C */  lw        $t0, 0xc($v0)
/* 63E60 80063260 01014824 */  and       $t1, $t0, $at
/* 63E64 80063264 AC49000C */  sw        $t1, 0xc($v0)
/* 63E68 80063268 8C620000 */  lw        $v0, ($v1)
/* 63E6C 8006326C 8C4B0008 */  lw        $t3, 8($v0)
/* 63E70 80063270 8C4A000C */  lw        $t2, 0xc($v0)
/* 63E74 80063274 8D6C0004 */  lw        $t4, 4($t3)
/* 63E78 80063278 318D0300 */  andi      $t5, $t4, 0x300
/* 63E7C 8006327C 014D7025 */  or        $t6, $t2, $t5
/* 63E80 80063280 AC4E000C */  sw        $t6, 0xc($v0)
/* 63E84 80063284 8C620000 */  lw        $v0, ($v1)
.L80063288:
/* 63E88 80063288 00A02025 */  or        $a0, $a1, $zero
/* 63E8C 8006328C 944F0000 */  lhu       $t7, ($v0)
/* 63E90 80063290 35F80008 */  ori       $t8, $t7, 8
/* 63E94 80063294 0C018AC0 */  jal       func_80062B00
/* 63E98 80063298 A4580000 */  sh        $t8, ($v0)
/* 63E9C 8006329C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 63EA0 800632A0 27BD0018 */  addiu     $sp, $sp, 0x18
/* 63EA4 800632A4 03E00008 */  jr        $ra
/* 63EA8 800632A8 00000000 */  nop       
/* 63EAC 800632AC 00000000 */  nop       
