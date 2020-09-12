.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80054D60
/* 55960 80054D60 3C088010 */  lui       $t0, 0x8010
/* 55964 80054D64 308E0001 */  andi      $t6, $a0, 1
/* 55968 80054D68 240F0002 */  addiu     $t7, $zero, 2
/* 5596C 80054D6C 250806E0 */  addiu     $t0, $t0, 0x6e0
/* 55970 80054D70 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 55974 80054D74 01EEC023 */  subu      $t8, $t7, $t6
/* 55978 80054D78 30820003 */  andi      $v0, $a0, 3
/* 5597C 80054D7C AFBF0014 */  sw        $ra, 0x14($sp)
/* 55980 80054D80 10400006 */  beqz      $v0, .L80054D9C
/* 55984 80054D84 A1180009 */  sb        $t8, 9($t0)
/* 55988 80054D88 24010003 */  addiu     $at, $zero, 3
/* 5598C 80054D8C 10410003 */  beq       $v0, $at, .L80054D9C
/* 55990 80054D90 24190001 */  addiu     $t9, $zero, 1
/* 55994 80054D94 10000002 */  b         .L80054DA0
/* 55998 80054D98 A119000A */  sb        $t9, 0xa($t0)
.L80054D9C:
/* 5599C 80054D9C A100000A */  sb        $zero, 0xa($t0)
.L80054DA0:
/* 559A0 80054DA0 0C0153D5 */  jal       func_80054F54
/* 559A4 80054DA4 AFA40018 */  sw        $a0, 0x18($sp)
/* 559A8 80054DA8 3C058010 */  lui       $a1, 0x8010
/* 559AC 80054DAC 90A506D8 */  lbu       $a1, 0x6d8($a1)
/* 559B0 80054DB0 3C048008 */  lui       $a0, 0x8008
/* 559B4 80054DB4 3C088010 */  lui       $t0, 0x8010
/* 559B8 80054DB8 00056100 */  sll       $t4, $a1, 4
/* 559BC 80054DBC 01826821 */  addu      $t5, $t4, $v0
/* 559C0 80054DC0 008D2021 */  addu      $a0, $a0, $t5
/* 559C4 80054DC4 9084DC98 */  lbu       $a0, -0x2368($a0)
/* 559C8 80054DC8 250806E0 */  addiu     $t0, $t0, 0x6e0
/* 559CC 80054DCC 8FAB0018 */  lw        $t3, 0x18($sp)
/* 559D0 80054DD0 308A00FF */  andi      $t2, $a0, 0xff
/* 559D4 80054DD4 29410008 */  slti      $at, $t2, 8
/* 559D8 80054DD8 A1000007 */  sb        $zero, 7($t0)
/* 559DC 80054DDC 01401825 */  or        $v1, $t2, $zero
/* 559E0 80054DE0 14200006 */  bnez      $at, .L80054DFC
/* 559E4 80054DE4 A1040008 */  sb        $a0, 8($t0)
/* 559E8 80054DE8 246FFFF9 */  addiu     $t7, $v1, -7
/* 559EC 80054DEC 240E0001 */  addiu     $t6, $zero, 1
/* 559F0 80054DF0 A10F0008 */  sb        $t7, 8($t0)
/* 559F4 80054DF4 A10E0007 */  sb        $t6, 7($t0)
/* 559F8 80054DF8 31EA00FF */  andi      $t2, $t7, 0xff
.L80054DFC:
/* 559FC 80054DFC 0004C040 */  sll       $t8, $a0, 1
/* 55A00 80054E00 3C098008 */  lui       $t1, 0x8008
/* 55A04 80054E04 01384821 */  addu      $t1, $t1, $t8
/* 55A08 80054E08 10400008 */  beqz      $v0, .L80054E2C
/* 55A0C 80054E0C 9529DC78 */  lhu       $t1, -0x2388($t1)
/* 55A10 80054E10 0005C940 */  sll       $t9, $a1, 5
/* 55A14 80054E14 00026040 */  sll       $t4, $v0, 1
/* 55A18 80054E18 032C6821 */  addu      $t5, $t9, $t4
/* 55A1C 80054E1C 3C038008 */  lui       $v1, 0x8008
/* 55A20 80054E20 006D1821 */  addu      $v1, $v1, $t5
/* 55A24 80054E24 10000002 */  b         .L80054E30
/* 55A28 80054E28 9463DB96 */  lhu       $v1, -0x246a($v1)
.L80054E2C:
/* 55A2C 80054E2C 00001825 */  or        $v1, $zero, $zero
.L80054E30:
/* 55A30 80054E30 910F0007 */  lbu       $t7, 7($t0)
/* 55A34 80054E34 01637023 */  subu      $t6, $t3, $v1
/* 55A38 80054E38 000EC842 */  srl       $t9, $t6, 1
/* 55A3C 80054E3C 11E00009 */  beqz      $t7, .L80054E64
/* 55A40 80054E40 3C018010 */  lui       $at, 0x8010
/* 55A44 80054E44 01396023 */  subu      $t4, $t1, $t9
/* 55A48 80054E48 3C098008 */  lui       $t1, 0x8008
/* 55A4C 80054E4C 000A6840 */  sll       $t5, $t2, 1
/* 55A50 80054E50 3C018010 */  lui       $at, 0x8010
/* 55A54 80054E54 012D4821 */  addu      $t1, $t1, $t5
/* 55A58 80054E58 A42C06E2 */  sh        $t4, 0x6e2($at)
/* 55A5C 80054E5C 10000005 */  b         .L80054E74
/* 55A60 80054E60 9529DD06 */  lhu       $t1, -0x22fa($t1)
.L80054E64:
/* 55A64 80054E64 01637823 */  subu      $t7, $t3, $v1
/* 55A68 80054E68 000FC042 */  srl       $t8, $t7, 1
/* 55A6C 80054E6C 0138C821 */  addu      $t9, $t1, $t8
/* 55A70 80054E70 A43906E2 */  sh        $t9, 0x6e2($at)
.L80054E74:
/* 55A74 80054E74 10800005 */  beqz      $a0, .L80054E8C
/* 55A78 80054E78 3C078010 */  lui       $a3, 0x8010
/* 55A7C 80054E7C 24E7F9F0 */  addiu     $a3, $a3, -0x610
/* 55A80 80054E80 00E46021 */  addu      $t4, $a3, $a0
/* 55A84 80054E84 10000004 */  b         .L80054E98
/* 55A88 80054E88 91850007 */  lbu       $a1, 7($t4)
.L80054E8C:
/* 55A8C 80054E8C 3C078010 */  lui       $a3, 0x8010
/* 55A90 80054E90 24E7F9F0 */  addiu     $a3, $a3, -0x610
/* 55A94 80054E94 00002825 */  or        $a1, $zero, $zero
.L80054E98:
/* 55A98 80054E98 00E46821 */  addu      $t5, $a3, $a0
/* 55A9C 80054E9C 91AF0008 */  lbu       $t7, 8($t5)
/* 55AA0 80054EA0 01203025 */  or        $a2, $t1, $zero
/* 55AA4 80054EA4 01E51823 */  subu      $v1, $t7, $a1
/* 55AA8 80054EA8 306EFFFF */  andi      $t6, $v1, 0xffff
/* 55AAC 80054EAC 11C00011 */  beqz      $t6, .L80054EF4
/* 55AB0 80054EB0 01C01825 */  or        $v1, $t6, $zero
.L80054EB4:
/* 55AB4 80054EB4 00E5C021 */  addu      $t8, $a3, $a1
/* 55AB8 80054EB8 93190020 */  lbu       $t9, 0x20($t8)
/* 55ABC 80054EBC 95040002 */  lhu       $a0, 2($t0)
/* 55AC0 80054EC0 24A50001 */  addiu     $a1, $a1, 1
/* 55AC4 80054EC4 03261021 */  addu      $v0, $t9, $a2
/* 55AC8 80054EC8 304CFFFF */  andi      $t4, $v0, 0xffff
/* 55ACC 80054ECC 008C082A */  slt       $at, $a0, $t4
/* 55AD0 80054ED0 14200008 */  bnez      $at, .L80054EF4
/* 55AD4 80054ED4 248D0001 */  addiu     $t5, $a0, 1
/* 55AD8 80054ED8 2463FFFF */  addiu     $v1, $v1, -1
/* 55ADC 80054EDC 30AFFFFF */  andi      $t7, $a1, 0xffff
/* 55AE0 80054EE0 306EFFFF */  andi      $t6, $v1, 0xffff
/* 55AE4 80054EE4 A50D0002 */  sh        $t5, 2($t0)
/* 55AE8 80054EE8 01E02825 */  or        $a1, $t7, $zero
/* 55AEC 80054EEC 15C0FFF1 */  bnez      $t6, .L80054EB4
/* 55AF0 80054EF0 01C01825 */  or        $v1, $t6, $zero
.L80054EF4:
/* 55AF4 80054EF4 3C188008 */  lui       $t8, 0x8008
/* 55AF8 80054EF8 030AC021 */  addu      $t8, $t8, $t2
/* 55AFC 80054EFC 9318DB78 */  lbu       $t8, -0x2488($t8)
/* 55B00 80054F00 000AC840 */  sll       $t9, $t2, 1
/* 55B04 80054F04 3C0C8008 */  lui       $t4, 0x8008
/* 55B08 80054F08 01996021 */  addu      $t4, $t4, $t9
/* 55B0C 80054F0C A1180006 */  sb        $t8, 6($t0)
/* 55B10 80054F10 958CDB84 */  lhu       $t4, -0x247c($t4)
/* 55B14 80054F14 3C0D8010 */  lui       $t5, 0x8010
/* 55B18 80054F18 2D61000C */  sltiu     $at, $t3, 0xc
/* 55B1C 80054F1C A50C0004 */  sh        $t4, 4($t0)
/* 55B20 80054F20 8DAD06EC */  lw        $t5, 0x6ec($t5)
/* 55B24 80054F24 55A00007 */  bnel      $t5, $zero, .L80054F44
/* 55B28 80054F28 8FBF0014 */  lw        $ra, 0x14($sp)
/* 55B2C 80054F2C 10200004 */  beqz      $at, .L80054F40
/* 55B30 80054F30 240F00C0 */  addiu     $t7, $zero, 0xc0
/* 55B34 80054F34 240E3FC0 */  addiu     $t6, $zero, 0x3fc0
/* 55B38 80054F38 A10F0006 */  sb        $t7, 6($t0)
/* 55B3C 80054F3C A50E0004 */  sh        $t6, 4($t0)
.L80054F40:
/* 55B40 80054F40 8FBF0014 */  lw        $ra, 0x14($sp)
.L80054F44:
/* 55B44 80054F44 27BD0018 */  addiu     $sp, $sp, 0x18
/* 55B48 80054F48 00001025 */  or        $v0, $zero, $zero
/* 55B4C 80054F4C 03E00008 */  jr        $ra
/* 55B50 80054F50 00000000 */  nop       

glabel func_80054F54
/* 55B54 80054F54 3C0E8010 */  lui       $t6, 0x8010
/* 55B58 80054F58 91CE06D8 */  lbu       $t6, 0x6d8($t6)
/* 55B5C 80054F5C 3C188008 */  lui       $t8, 0x8008
/* 55B60 80054F60 2718DB98 */  addiu     $t8, $t8, -0x2468
/* 55B64 80054F64 000E7940 */  sll       $t7, $t6, 5
/* 55B68 80054F68 01F81021 */  addu      $v0, $t7, $t8
/* 55B6C 80054F6C 00001825 */  or        $v1, $zero, $zero
.L80054F70:
/* 55B70 80054F70 94590000 */  lhu       $t9, ($v0)
/* 55B74 80054F74 24420002 */  addiu     $v0, $v0, 2
/* 55B78 80054F78 0099082B */  sltu      $at, $a0, $t9
/* 55B7C 80054F7C 50200004 */  beql      $at, $zero, .L80054F90
/* 55B80 80054F80 24630001 */  addiu     $v1, $v1, 1
/* 55B84 80054F84 03E00008 */  jr        $ra
/* 55B88 80054F88 00601025 */  or        $v0, $v1, $zero
/* 55B8C 80054F8C 24630001 */  addiu     $v1, $v1, 1
.L80054F90:
/* 55B90 80054F90 3068FFFF */  andi      $t0, $v1, 0xffff
/* 55B94 80054F94 29010010 */  slti      $at, $t0, 0x10
/* 55B98 80054F98 1420FFF5 */  bnez      $at, .L80054F70
/* 55B9C 80054F9C 01001825 */  or        $v1, $t0, $zero
/* 55BA0 80054FA0 240200FF */  addiu     $v0, $zero, 0xff
/* 55BA4 80054FA4 03E00008 */  jr        $ra
/* 55BA8 80054FA8 00000000 */  nop       
/* 55BAC 80054FAC 00000000 */  nop       