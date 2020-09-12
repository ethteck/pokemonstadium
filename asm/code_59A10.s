.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80058E10
/* 59A10 80058E10 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 59A14 80058E14 AFBF0014 */  sw        $ra, 0x14($sp)
/* 59A18 80058E18 0C0162FC */  jal       func_80058BF0
/* 59A1C 80058E1C AFA40020 */  sw        $a0, 0x20($sp)
/* 59A20 80058E20 3C0E8010 */  lui       $t6, 0x8010
/* 59A24 80058E24 91CE2180 */  lbu       $t6, 0x2180($t6)
/* 59A28 80058E28 24010001 */  addiu     $at, $zero, 1
/* 59A2C 80058E2C 11C1000B */  beq       $t6, $at, .L80058E5C
/* 59A30 80058E30 00000000 */  nop       
/* 59A34 80058E34 0C0163C8 */  jal       func_80058F20
/* 59A38 80058E38 00000000 */  nop       
/* 59A3C 80058E3C 3C058010 */  lui       $a1, 0x8010
/* 59A40 80058E40 24A52140 */  addiu     $a1, $a1, 0x2140
/* 59A44 80058E44 0C016A38 */  jal       func_8005A8E0
/* 59A48 80058E48 24040001 */  addiu     $a0, $zero, 1
/* 59A4C 80058E4C 8FA40020 */  lw        $a0, 0x20($sp)
/* 59A50 80058E50 00002825 */  or        $a1, $zero, $zero
/* 59A54 80058E54 0C015AB4 */  jal       func_80056AD0
/* 59A58 80058E58 24060001 */  addiu     $a2, $zero, 1
.L80058E5C:
/* 59A5C 80058E5C 3C058010 */  lui       $a1, 0x8010
/* 59A60 80058E60 24A52140 */  addiu     $a1, $a1, 0x2140
/* 59A64 80058E64 0C016A38 */  jal       func_8005A8E0
/* 59A68 80058E68 00002025 */  or        $a0, $zero, $zero
/* 59A6C 80058E6C 240F0001 */  addiu     $t7, $zero, 1
/* 59A70 80058E70 3C018010 */  lui       $at, 0x8010
/* 59A74 80058E74 AFA2001C */  sw        $v0, 0x1c($sp)
/* 59A78 80058E78 0C01630D */  jal       func_80058C34
/* 59A7C 80058E7C A02F2180 */  sb        $t7, 0x2180($at)
/* 59A80 80058E80 8FBF0014 */  lw        $ra, 0x14($sp)
/* 59A84 80058E84 8FA2001C */  lw        $v0, 0x1c($sp)
/* 59A88 80058E88 27BD0020 */  addiu     $sp, $sp, 0x20
/* 59A8C 80058E8C 03E00008 */  jr        $ra
/* 59A90 80058E90 00000000 */  nop       

glabel func_80058E94
/* 59A94 80058E94 3C058010 */  lui       $a1, 0x8010
/* 59A98 80058E98 24A52181 */  addiu     $a1, $a1, 0x2181
/* 59A9C 80058E9C 90AE0000 */  lbu       $t6, ($a1)
/* 59AA0 80058EA0 3C028010 */  lui       $v0, 0x8010
/* 59AA4 80058EA4 27BDFFF0 */  addiu     $sp, $sp, -0x10
/* 59AA8 80058EA8 24422140 */  addiu     $v0, $v0, 0x2140
/* 59AAC 80058EAC 19C0001A */  blez      $t6, .L80058F18
/* 59AB0 80058EB0 00001825 */  or        $v1, $zero, $zero
/* 59AB4 80058EB4 27A60004 */  addiu     $a2, $sp, 4
.L80058EB8:
/* 59AB8 80058EB8 88410000 */  lwl       $at, ($v0)
/* 59ABC 80058EBC 98410003 */  lwr       $at, 3($v0)
/* 59AC0 80058EC0 ACC10000 */  sw        $at, ($a2)
/* 59AC4 80058EC4 88580004 */  lwl       $t8, 4($v0)
/* 59AC8 80058EC8 98580007 */  lwr       $t8, 7($v0)
/* 59ACC 80058ECC ACD80004 */  sw        $t8, 4($a2)
/* 59AD0 80058ED0 93B90006 */  lbu       $t9, 6($sp)
/* 59AD4 80058ED4 332800C0 */  andi      $t0, $t9, 0xc0
/* 59AD8 80058ED8 00084903 */  sra       $t1, $t0, 4
/* 59ADC 80058EDC 312A00FF */  andi      $t2, $t1, 0xff
/* 59AE0 80058EE0 15400007 */  bnez      $t2, .L80058F00
/* 59AE4 80058EE4 A0890004 */  sb        $t1, 4($a0)
/* 59AE8 80058EE8 97AB0008 */  lhu       $t3, 8($sp)
/* 59AEC 80058EEC A48B0000 */  sh        $t3, ($a0)
/* 59AF0 80058EF0 83AC000A */  lb        $t4, 0xa($sp)
/* 59AF4 80058EF4 A08C0002 */  sb        $t4, 2($a0)
/* 59AF8 80058EF8 83AD000B */  lb        $t5, 0xb($sp)
/* 59AFC 80058EFC A08D0003 */  sb        $t5, 3($a0)
.L80058F00:
/* 59B00 80058F00 90AE0000 */  lbu       $t6, ($a1)
/* 59B04 80058F04 24630001 */  addiu     $v1, $v1, 1
/* 59B08 80058F08 24420008 */  addiu     $v0, $v0, 8
/* 59B0C 80058F0C 006E082A */  slt       $at, $v1, $t6
/* 59B10 80058F10 1420FFE9 */  bnez      $at, .L80058EB8
/* 59B14 80058F14 24840006 */  addiu     $a0, $a0, 6
.L80058F18:
/* 59B18 80058F18 03E00008 */  jr        $ra
/* 59B1C 80058F1C 27BD0010 */  addiu     $sp, $sp, 0x10

glabel func_80058F20
/* 59B20 80058F20 3C058010 */  lui       $a1, 0x8010
/* 59B24 80058F24 24A52140 */  addiu     $a1, $a1, 0x2140
/* 59B28 80058F28 3C048010 */  lui       $a0, 0x8010
/* 59B2C 80058F2C 3C038010 */  lui       $v1, 0x8010
/* 59B30 80058F30 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 59B34 80058F34 00A01025 */  or        $v0, $a1, $zero
/* 59B38 80058F38 2463217C */  addiu     $v1, $v1, 0x217c
/* 59B3C 80058F3C 24842140 */  addiu     $a0, $a0, 0x2140
.L80058F40:
/* 59B40 80058F40 24840004 */  addiu     $a0, $a0, 4
/* 59B44 80058F44 0083082B */  sltu      $at, $a0, $v1
/* 59B48 80058F48 1420FFFD */  bnez      $at, .L80058F40
/* 59B4C 80058F4C AC80FFFC */  sw        $zero, -4($a0)
/* 59B50 80058F50 3C048010 */  lui       $a0, 0x8010
/* 59B54 80058F54 24842181 */  addiu     $a0, $a0, 0x2181
/* 59B58 80058F58 908C0000 */  lbu       $t4, ($a0)
/* 59B5C 80058F5C 240E0001 */  addiu     $t6, $zero, 1
/* 59B60 80058F60 240F00FF */  addiu     $t7, $zero, 0xff
/* 59B64 80058F64 24180001 */  addiu     $t8, $zero, 1
/* 59B68 80058F68 24190004 */  addiu     $t9, $zero, 4
/* 59B6C 80058F6C 24080001 */  addiu     $t0, $zero, 1
/* 59B70 80058F70 3409FFFF */  ori       $t1, $zero, 0xffff
/* 59B74 80058F74 240AFFFF */  addiu     $t2, $zero, -1
/* 59B78 80058F78 240BFFFF */  addiu     $t3, $zero, -1
/* 59B7C 80058F7C ACAE003C */  sw        $t6, 0x3c($a1)
/* 59B80 80058F80 A3AF000C */  sb        $t7, 0xc($sp)
/* 59B84 80058F84 A3B8000D */  sb        $t8, 0xd($sp)
/* 59B88 80058F88 A3B9000E */  sb        $t9, 0xe($sp)
/* 59B8C 80058F8C A3A8000F */  sb        $t0, 0xf($sp)
/* 59B90 80058F90 A7A90010 */  sh        $t1, 0x10($sp)
/* 59B94 80058F94 A3AA0012 */  sb        $t2, 0x12($sp)
/* 59B98 80058F98 A3AB0013 */  sb        $t3, 0x13($sp)
/* 59B9C 80058F9C 1980000E */  blez      $t4, .L80058FD8
/* 59BA0 80058FA0 00001825 */  or        $v1, $zero, $zero
/* 59BA4 80058FA4 27A5000C */  addiu     $a1, $sp, 0xc
/* 59BA8 80058FA8 8CA10000 */  lw        $at, ($a1)
.L80058FAC:
/* 59BAC 80058FAC 24630001 */  addiu     $v1, $v1, 1
/* 59BB0 80058FB0 24420008 */  addiu     $v0, $v0, 8
/* 59BB4 80058FB4 A841FFF8 */  swl       $at, -8($v0)
/* 59BB8 80058FB8 B841FFFB */  swr       $at, -5($v0)
/* 59BBC 80058FBC 8CAE0004 */  lw        $t6, 4($a1)
/* 59BC0 80058FC0 A84EFFFC */  swl       $t6, -4($v0)
/* 59BC4 80058FC4 B84EFFFF */  swr       $t6, -1($v0)
/* 59BC8 80058FC8 908F0000 */  lbu       $t7, ($a0)
/* 59BCC 80058FCC 006F082A */  slt       $at, $v1, $t7
/* 59BD0 80058FD0 5420FFF6 */  bnel      $at, $zero, .L80058FAC
/* 59BD4 80058FD4 8CA10000 */  lw        $at, ($a1)
.L80058FD8:
/* 59BD8 80058FD8 241800FE */  addiu     $t8, $zero, 0xfe
/* 59BDC 80058FDC A0580000 */  sb        $t8, ($v0)
/* 59BE0 80058FE0 03E00008 */  jr        $ra
/* 59BE4 80058FE4 27BD0018 */  addiu     $sp, $sp, 0x18
/* 59BE8 80058FE8 00000000 */  nop       
/* 59BEC 80058FEC 00000000 */  nop       
