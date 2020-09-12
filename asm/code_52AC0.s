.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80051EC0
/* 52AC0 80051EC0 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 52AC4 80051EC4 AFBF0024 */  sw        $ra, 0x24($sp)
/* 52AC8 80051EC8 AFB30020 */  sw        $s3, 0x20($sp)
/* 52ACC 80051ECC AFB2001C */  sw        $s2, 0x1c($sp)
/* 52AD0 80051ED0 AFB10018 */  sw        $s1, 0x18($sp)
/* 52AD4 80051ED4 AFB00014 */  sw        $s0, 0x14($sp)
/* 52AD8 80051ED8 AFA40048 */  sw        $a0, 0x48($sp)
/* 52ADC 80051EDC 3C0EA000 */  lui       $t6, 0xa000
/* 52AE0 80051EE0 91CF0010 */  lbu       $t7, 0x10($t6)
/* 52AE4 80051EE4 3C028010 */  lui       $v0, 0x8010
/* 52AE8 80051EE8 244206EC */  addiu     $v0, $v0, 0x6ec
/* 52AEC 80051EEC 3C18A000 */  lui       $t8, 0xa000
/* 52AF0 80051EF0 A04F0000 */  sb        $t7, ($v0)
/* 52AF4 80051EF4 93190090 */  lbu       $t9, 0x90($t8)
/* 52AF8 80051EF8 3C08A000 */  lui       $t0, 0xa000
/* 52AFC 80051EFC 3C0AA000 */  lui       $t2, 0xa000
/* 52B00 80051F00 A0590001 */  sb        $t9, 1($v0)
/* 52B04 80051F04 91090110 */  lbu       $t1, 0x110($t0)
/* 52B08 80051F08 3C018010 */  lui       $at, 0x8010
/* 52B0C 80051F0C 3C0C8010 */  lui       $t4, 0x8010
/* 52B10 80051F10 A0490002 */  sb        $t1, 2($v0)
/* 52B14 80051F14 914B0190 */  lbu       $t3, 0x190($t2)
/* 52B18 80051F18 258C06D5 */  addiu     $t4, $t4, 0x6d5
/* 52B1C 80051F1C A04B0003 */  sb        $t3, 3($v0)
/* 52B20 80051F20 AC2006D0 */  sw        $zero, 0x6d0($at)
/* 52B24 80051F24 3C018010 */  lui       $at, 0x8010
/* 52B28 80051F28 AC2006CC */  sw        $zero, 0x6cc($at)
/* 52B2C 80051F2C 3C018010 */  lui       $at, 0x8010
/* 52B30 80051F30 A02006D4 */  sb        $zero, 0x6d4($at)
/* 52B34 80051F34 0C014D90 */  jal       func_80053640
/* 52B38 80051F38 A1800000 */  sb        $zero, ($t4)
/* 52B3C 80051F3C 0C014A9C */  jal       func_80052A70
/* 52B40 80051F40 00000000 */  nop       
/* 52B44 80051F44 3C038010 */  lui       $v1, 0x8010
/* 52B48 80051F48 3C078010 */  lui       $a3, 0x8010
/* 52B4C 80051F4C 3C0E8010 */  lui       $t6, 0x8010
/* 52B50 80051F50 24E70710 */  addiu     $a3, $a3, 0x710
/* 52B54 80051F54 24630718 */  addiu     $v1, $v1, 0x718
/* 52B58 80051F58 240D0001 */  addiu     $t5, $zero, 1
/* 52B5C 80051F5C 25CE0680 */  addiu     $t6, $t6, 0x680
/* 52B60 80051F60 3C050500 */  lui       $a1, 0x500
/* 52B64 80051F64 ACE20000 */  sw        $v0, ($a3)
/* 52B68 80051F68 A06D0002 */  sb        $t5, 2($v1)
/* 52B6C 80051F6C AC6E0004 */  sw        $t6, 4($v1)
/* 52B70 80051F70 34A50508 */  ori       $a1, $a1, 0x508
/* 52B74 80051F74 00402025 */  or        $a0, $v0, $zero
/* 52B78 80051F78 0C018C40 */  jal       func_80063100
/* 52B7C 80051F7C 27A60044 */  addiu     $a2, $sp, 0x44
/* 52B80 80051F80 8FA30044 */  lw        $v1, 0x44($sp)
/* 52B84 80051F84 3C010680 */  lui       $at, 0x680
/* 52B88 80051F88 00037A40 */  sll       $t7, $v1, 9
/* 52B8C 80051F8C 05E00005 */  bltz      $t7, .L80051FA4
/* 52B90 80051F90 0061C024 */  and       $t8, $v1, $at
/* 52B94 80051F94 13000003 */  beqz      $t8, .L80051FA4
/* 52B98 80051F98 00000000 */  nop       
/* 52B9C 80051F9C 0C014D60 */  jal       func_80053580
/* 52BA0 80051FA0 00000000 */  nop       
.L80051FA4:
/* 52BA4 80051FA4 3C118010 */  lui       $s1, 0x8010
/* 52BA8 80051FA8 263106C8 */  addiu     $s1, $s1, 0x6c8
/* 52BAC 80051FAC 2413002B */  addiu     $s3, $zero, 0x2b
/* 52BB0 80051FB0 24120002 */  addiu     $s2, $zero, 2
.L80051FB4:
/* 52BB4 80051FB4 3C048010 */  lui       $a0, 0x8010
/* 52BB8 80051FB8 24840638 */  addiu     $a0, $a0, 0x638
/* 52BBC 80051FBC 02202825 */  or        $a1, $s1, $zero
/* 52BC0 80051FC0 0C015AB4 */  jal       func_80056AD0
/* 52BC4 80051FC4 24060001 */  addiu     $a2, $zero, 1
/* 52BC8 80051FC8 8E230000 */  lw        $v1, ($s1)
/* 52BCC 80051FCC 3C018010 */  lui       $at, 0x8010
/* 52BD0 80051FD0 3C040001 */  lui       $a0, 1
/* 52BD4 80051FD4 90790000 */  lbu       $t9, ($v1)
/* 52BD8 80051FD8 AC390730 */  sw        $t9, 0x730($at)
/* 52BDC 80051FDC 90680000 */  lbu       $t0, ($v1)
/* 52BE0 80051FE0 1500000A */  bnez      $t0, .L8005200C
/* 52BE4 80051FE4 00000000 */  nop       
/* 52BE8 80051FE8 0C014D60 */  jal       func_80053580
/* 52BEC 80051FEC 00000000 */  nop       
/* 52BF0 80051FF0 3C048010 */  lui       $a0, 0x8010
/* 52BF4 80051FF4 24840650 */  addiu     $a0, $a0, 0x650
/* 52BF8 80051FF8 00002825 */  or        $a1, $zero, $zero
/* 52BFC 80051FFC 0C015AB4 */  jal       func_80056AD0
/* 52C00 80052000 00003025 */  or        $a2, $zero, $zero
/* 52C04 80052004 1000FFEB */  b         .L80051FB4
/* 52C08 80052008 00000000 */  nop       
.L8005200C:
/* 52C0C 8005200C 0C014B83 */  jal       func_80052E0C
/* 52C10 80052010 34840001 */  ori       $a0, $a0, 1
/* 52C14 80052014 0C014D6C */  jal       func_800535B0
/* 52C18 80052018 00408025 */  or        $s0, $v0, $zero
/* 52C1C 8005201C 00401825 */  or        $v1, $v0, $zero
/* 52C20 80052020 14400005 */  bnez      $v0, .L80052038
/* 52C24 80052024 AFA20044 */  sw        $v0, 0x44($sp)
/* 52C28 80052028 16000017 */  bnez      $s0, .L80052088
/* 52C2C 8005202C 00000000 */  nop       
/* 52C30 80052030 10000043 */  b         .L80052140
/* 52C34 80052034 00000000 */  nop       
.L80052038:
/* 52C38 80052038 24010003 */  addiu     $at, $zero, 3
/* 52C3C 8005203C 12010012 */  beq       $s0, $at, .L80052088
/* 52C40 80052040 24010025 */  addiu     $at, $zero, 0x25
/* 52C44 80052044 12010010 */  beq       $s0, $at, .L80052088
/* 52C48 80052048 24010029 */  addiu     $at, $zero, 0x29
/* 52C4C 8005204C 1201000E */  beq       $s0, $at, .L80052088
/* 52C50 80052050 00000000 */  nop       
/* 52C54 80052054 1213000C */  beq       $s0, $s3, .L80052088
/* 52C58 80052058 24010031 */  addiu     $at, $zero, 0x31
/* 52C5C 8005205C 16010007 */  bne       $s0, $at, .L8005207C
/* 52C60 80052060 00000000 */  nop       
/* 52C64 80052064 0C014D6F */  jal       func_800535BC
/* 52C68 80052068 00000000 */  nop       
/* 52C6C 8005206C 14530006 */  bne       $v0, $s3, .L80052088
/* 52C70 80052070 00000000 */  nop       
/* 52C74 80052074 10000004 */  b         .L80052088
/* 52C78 80052078 02608025 */  or        $s0, $s3, $zero
.L8005207C:
/* 52C7C 8005207C 0C014D6F */  jal       func_800535BC
/* 52C80 80052080 00000000 */  nop       
/* 52C84 80052084 00408025 */  or        $s0, $v0, $zero
.L80052088:
/* 52C88 80052088 1213001F */  beq       $s0, $s3, .L80052108
/* 52C8C 8005208C 2401002F */  addiu     $at, $zero, 0x2f
/* 52C90 80052090 12010005 */  beq       $s0, $at, .L800520A8
/* 52C94 80052094 24010031 */  addiu     $at, $zero, 0x31
/* 52C98 80052098 5201000F */  beql      $s0, $at, .L800520D8
/* 52C9C 8005209C 8E230000 */  lw        $v1, ($s1)
/* 52CA0 800520A0 10000037 */  b         .L80052180
/* 52CA4 800520A4 8E230000 */  lw        $v1, ($s1)
.L800520A8:
/* 52CA8 800520A8 8E230000 */  lw        $v1, ($s1)
/* 52CAC 800520AC 90640000 */  lbu       $a0, ($v1)
/* 52CB0 800520B0 2489FFFE */  addiu     $t1, $a0, -2
/* 52CB4 800520B4 2D21000E */  sltiu     $at, $t1, 0xe
/* 52CB8 800520B8 10200032 */  beqz      $at, .L80052184
/* 52CBC 800520BC 00094880 */  sll       $t1, $t1, 2
/* 52CC0 800520C0 3C018008 */  lui       $at, 0x8008
/* 52CC4 800520C4 00290821 */  addu      $at, $at, $t1
/* 52CC8 800520C8 8C29DA48 */  lw        $t1, -0x25b8($at)
/* 52CCC 800520CC 01200008 */  jr        $t1
/* 52CD0 800520D0 00000000 */  nop       
/* 52CD4 800520D4 8E230000 */  lw        $v1, ($s1)
.L800520D8:
/* 52CD8 800520D8 90640000 */  lbu       $a0, ($v1)
/* 52CDC 800520DC 248AFFFE */  addiu     $t2, $a0, -2
/* 52CE0 800520E0 2D41000E */  sltiu     $at, $t2, 0xe
/* 52CE4 800520E4 10200006 */  beqz      $at, .L80052100
/* 52CE8 800520E8 000A5080 */  sll       $t2, $t2, 2
/* 52CEC 800520EC 3C018008 */  lui       $at, 0x8008
/* 52CF0 800520F0 002A0821 */  addu      $at, $at, $t2
/* 52CF4 800520F4 8C2ADA80 */  lw        $t2, -0x2580($at)
/* 52CF8 800520F8 01400008 */  jr        $t2
/* 52CFC 800520FC 00000000 */  nop       
.L80052100:
/* 52D00 80052100 10000020 */  b         .L80052184
/* 52D04 80052104 2410002A */  addiu     $s0, $zero, 0x2a
.L80052108:
/* 52D08 80052108 8E230000 */  lw        $v1, ($s1)
/* 52D0C 8005210C 24010002 */  addiu     $at, $zero, 2
/* 52D10 80052110 90640000 */  lbu       $a0, ($v1)
/* 52D14 80052114 1081000A */  beq       $a0, $at, .L80052140
/* 52D18 80052118 00801025 */  or        $v0, $a0, $zero
/* 52D1C 8005211C 2401000D */  addiu     $at, $zero, 0xd
/* 52D20 80052120 10410007 */  beq       $v0, $at, .L80052140
/* 52D24 80052124 2401000E */  addiu     $at, $zero, 0xe
/* 52D28 80052128 10410005 */  beq       $v0, $at, .L80052140
/* 52D2C 8005212C 2401000F */  addiu     $at, $zero, 0xf
/* 52D30 80052130 54410015 */  bnel      $v0, $at, .L80052188
/* 52D34 80052134 24010003 */  addiu     $at, $zero, 3
/* 52D38 80052138 0C014D7C */  jal       func_800535F0
/* 52D3C 8005213C 00000000 */  nop       
.L80052140:
/* 52D40 80052140 3C0B8010 */  lui       $t3, 0x8010
/* 52D44 80052144 916B06D4 */  lbu       $t3, 0x6d4($t3)
/* 52D48 80052148 55600055 */  bnel      $t3, $zero, .L800522A0
/* 52D4C 8005214C 8E2A0000 */  lw        $t2, ($s1)
/* 52D50 80052150 8E2C0000 */  lw        $t4, ($s1)
/* 52D54 80052154 918D0000 */  lbu       $t5, ($t4)
/* 52D58 80052158 25AEFFFE */  addiu     $t6, $t5, -2
/* 52D5C 8005215C 2DC1000E */  sltiu     $at, $t6, 0xe
/* 52D60 80052160 10200014 */  beqz      $at, .L800521B4
/* 52D64 80052164 000E7080 */  sll       $t6, $t6, 2
/* 52D68 80052168 3C018008 */  lui       $at, 0x8008
/* 52D6C 8005216C 002E0821 */  addu      $at, $at, $t6
/* 52D70 80052170 8C2EDAB8 */  lw        $t6, -0x2548($at)
/* 52D74 80052174 01C00008 */  jr        $t6
/* 52D78 80052178 00000000 */  nop       
/* 52D7C 8005217C 8E230000 */  lw        $v1, ($s1)
.L80052180:
/* 52D80 80052180 90640000 */  lbu       $a0, ($v1)
.L80052184:
/* 52D84 80052184 24010003 */  addiu     $at, $zero, 3
.L80052188:
/* 52D88 80052188 54810007 */  bnel      $a0, $at, .L800521A8
/* 52D8C 8005218C A0700005 */  sb        $s0, 5($v1)
/* 52D90 80052190 0C014D50 */  jal       func_80053540
/* 52D94 80052194 00000000 */  nop       
/* 52D98 80052198 8E2F0000 */  lw        $t7, ($s1)
/* 52D9C 8005219C A1E2000C */  sb        $v0, 0xc($t7)
/* 52DA0 800521A0 8E230000 */  lw        $v1, ($s1)
/* 52DA4 800521A4 A0700005 */  sb        $s0, 5($v1)
.L800521A8:
/* 52DA8 800521A8 8E380000 */  lw        $t8, ($s1)
/* 52DAC 800521AC 10000043 */  b         .L800522BC
/* 52DB0 800521B0 A3120004 */  sb        $s2, 4($t8)
.L800521B4:
/* 52DB4 800521B4 3C198010 */  lui       $t9, 0x8010
/* 52DB8 800521B8 8F3906EC */  lw        $t9, 0x6ec($t9)
/* 52DBC 800521BC 3C050500 */  lui       $a1, 0x500
/* 52DC0 800521C0 34A50540 */  ori       $a1, $a1, 0x540
/* 52DC4 800521C4 1720000C */  bnez      $t9, .L800521F8
/* 52DC8 800521C8 3C048010 */  lui       $a0, 0x8010
/* 52DCC 800521CC 8C840710 */  lw        $a0, 0x710($a0)
/* 52DD0 800521D0 0C018C40 */  jal       func_80063100
/* 52DD4 800521D4 27A60044 */  addiu     $a2, $sp, 0x44
/* 52DD8 800521D8 8FA30044 */  lw        $v1, 0x44($sp)
/* 52DDC 800521DC 3C010007 */  lui       $at, 7
/* 52DE0 800521E0 00614024 */  and       $t0, $v1, $at
/* 52DE4 800521E4 3C010004 */  lui       $at, 4
/* 52DE8 800521E8 11010003 */  beq       $t0, $at, .L800521F8
/* 52DEC 800521EC 00000000 */  nop       
.L800521F0:
/* 52DF0 800521F0 1000FFFF */  b         .L800521F0
/* 52DF4 800521F4 00000000 */  nop       
.L800521F8:
/* 52DF8 800521F8 0C0148CF */  jal       func_8005233C
/* 52DFC 800521FC 00000000 */  nop       
/* 52E00 80052200 10400004 */  beqz      $v0, .L80052214
/* 52E04 80052204 3C058010 */  lui       $a1, 0x8010
/* 52E08 80052208 8E290000 */  lw        $t1, ($s1)
/* 52E0C 8005220C 1000002B */  b         .L800522BC
/* 52E10 80052210 A1320004 */  sb        $s2, 4($t1)
.L80052214:
/* 52E14 80052214 90A5F9F5 */  lbu       $a1, -0x60b($a1)
/* 52E18 80052218 3C04000B */  lui       $a0, 0xb
/* 52E1C 8005221C 34840001 */  ori       $a0, $a0, 1
/* 52E20 80052220 00055400 */  sll       $t2, $a1, 0x10
/* 52E24 80052224 0C014C68 */  jal       func_800531A0
/* 52E28 80052228 01402825 */  or        $a1, $t2, $zero
/* 52E2C 8005222C 8E2B0000 */  lw        $t3, ($s1)
/* 52E30 80052230 10400004 */  beqz      $v0, .L80052244
/* 52E34 80052234 A1620005 */  sb        $v0, 5($t3)
/* 52E38 80052238 8E2C0000 */  lw        $t4, ($s1)
/* 52E3C 8005223C 1000001F */  b         .L800522BC
/* 52E40 80052240 A1920004 */  sb        $s2, 4($t4)
.L80052244:
/* 52E44 80052244 3C028010 */  lui       $v0, 0x8010
/* 52E48 80052248 9042F9F5 */  lbu       $v0, -0x60b($v0)
/* 52E4C 8005224C 24010010 */  addiu     $at, $zero, 0x10
/* 52E50 80052250 3C0F8010 */  lui       $t7, 0x8010
/* 52E54 80052254 304D00F0 */  andi      $t5, $v0, 0xf0
/* 52E58 80052258 15A10008 */  bne       $t5, $at, .L8005227C
/* 52E5C 8005225C 304E000F */  andi      $t6, $v0, 0xf
/* 52E60 80052260 3C018010 */  lui       $at, 0x8010
/* 52E64 80052264 A02E06D8 */  sb        $t6, 0x6d8($at)
/* 52E68 80052268 91EF06D8 */  lbu       $t7, 0x6d8($t7)
/* 52E6C 8005226C 240900FF */  addiu     $t1, $zero, 0xff
/* 52E70 80052270 29E10007 */  slti      $at, $t7, 7
/* 52E74 80052274 14200007 */  bnez      $at, .L80052294
/* 52E78 80052278 00000000 */  nop       
.L8005227C:
/* 52E7C 8005227C 8E390000 */  lw        $t9, ($s1)
/* 52E80 80052280 2418000B */  addiu     $t8, $zero, 0xb
/* 52E84 80052284 A3380005 */  sb        $t8, 5($t9)
/* 52E88 80052288 8E280000 */  lw        $t0, ($s1)
/* 52E8C 8005228C 1000000B */  b         .L800522BC
/* 52E90 80052290 A1120004 */  sb        $s2, 4($t0)
.L80052294:
/* 52E94 80052294 3C018010 */  lui       $at, 0x8010
/* 52E98 80052298 A02906D4 */  sb        $t1, 0x6d4($at)
/* 52E9C 8005229C 8E2A0000 */  lw        $t2, ($s1)
.L800522A0:
/* 52EA0 800522A0 3C198008 */  lui       $t9, 0x8008
/* 52EA4 800522A4 914B0000 */  lbu       $t3, ($t2)
/* 52EA8 800522A8 000B6080 */  sll       $t4, $t3, 2
/* 52EAC 800522AC 032CC821 */  addu      $t9, $t9, $t4
/* 52EB0 800522B0 8F399520 */  lw        $t9, -0x6ae0($t9)
/* 52EB4 800522B4 0320F809 */  jalr      $t9
/* 52EB8 800522B8 00000000 */  nop       
.L800522BC:
/* 52EBC 800522BC 8E230000 */  lw        $v1, ($s1)
/* 52EC0 800522C0 24060001 */  addiu     $a2, $zero, 1
/* 52EC4 800522C4 906D0002 */  lbu       $t5, 2($v1)
/* 52EC8 800522C8 31AE0080 */  andi      $t6, $t5, 0x80
/* 52ECC 800522CC 11C00004 */  beqz      $t6, .L800522E0
/* 52ED0 800522D0 00000000 */  nop       
/* 52ED4 800522D4 8C640008 */  lw        $a0, 8($v1)
/* 52ED8 800522D8 0C015A30 */  jal       func_800568C0
/* 52EDC 800522DC 90650005 */  lbu       $a1, 5($v1)
.L800522E0:
/* 52EE0 800522E0 3C0F8010 */  lui       $t7, 0x8010
/* 52EE4 800522E4 25EF06D5 */  addiu     $t7, $t7, 0x6d5
/* 52EE8 800522E8 91F80000 */  lbu       $t8, ($t7)
/* 52EEC 800522EC 1300FF31 */  beqz      $t8, .L80051FB4
/* 52EF0 800522F0 00000000 */  nop       
/* 52EF4 800522F4 0C01546C */  jal       func_800551B0
/* 52EF8 800522F8 00000000 */  nop       
/* 52EFC 800522FC 1000FF2D */  b         .L80051FB4
/* 52F00 80052300 00000000 */  nop       
/* 52F04 80052304 00000000 */  nop       
/* 52F08 80052308 00000000 */  nop       
/* 52F0C 8005230C 00000000 */  nop       
/* 52F10 80052310 00000000 */  nop       
/* 52F14 80052314 00000000 */  nop       
/* 52F18 80052318 00000000 */  nop       
/* 52F1C 8005231C 00000000 */  nop       
/* 52F20 80052320 8FBF0024 */  lw        $ra, 0x24($sp)
/* 52F24 80052324 8FB00014 */  lw        $s0, 0x14($sp)
/* 52F28 80052328 8FB10018 */  lw        $s1, 0x18($sp)
/* 52F2C 8005232C 8FB2001C */  lw        $s2, 0x1c($sp)
/* 52F30 80052330 8FB30020 */  lw        $s3, 0x20($sp)
/* 52F34 80052334 03E00008 */  jr        $ra
/* 52F38 80052338 27BD0048 */  addiu     $sp, $sp, 0x48

glabel func_8005233C
/* 52F3C 8005233C 27BDFF88 */  addiu     $sp, $sp, -0x78
/* 52F40 80052340 3C058010 */  lui       $a1, 0x8010
/* 52F44 80052344 24A506C8 */  addiu     $a1, $a1, 0x6c8
/* 52F48 80052348 8CAE0000 */  lw        $t6, ($a1)
/* 52F4C 8005234C AFB70034 */  sw        $s7, 0x34($sp)
/* 52F50 80052350 AFB5002C */  sw        $s5, 0x2c($sp)
/* 52F54 80052354 AFB40028 */  sw        $s4, 0x28($sp)
/* 52F58 80052358 AFB30024 */  sw        $s3, 0x24($sp)
/* 52F5C 8005235C AFB1001C */  sw        $s1, 0x1c($sp)
/* 52F60 80052360 AFBE0038 */  sw        $fp, 0x38($sp)
/* 52F64 80052364 AFB60030 */  sw        $s6, 0x30($sp)
/* 52F68 80052368 AFB20020 */  sw        $s2, 0x20($sp)
/* 52F6C 8005236C AFB00018 */  sw        $s0, 0x18($sp)
/* 52F70 80052370 27A3005C */  addiu     $v1, $sp, 0x5c
/* 52F74 80052374 3C110003 */  lui       $s1, 3
/* 52F78 80052378 3C138010 */  lui       $s3, 0x8010
/* 52F7C 8005237C 3C148010 */  lui       $s4, 0x8010
/* 52F80 80052380 3C158010 */  lui       $s5, 0x8010
/* 52F84 80052384 3C178008 */  lui       $s7, 0x8008
/* 52F88 80052388 AFBF003C */  sw        $ra, 0x3c($sp)
/* 52F8C 8005238C ACA30000 */  sw        $v1, ($a1)
/* 52F90 80052390 00009025 */  or        $s2, $zero, $zero
/* 52F94 80052394 00008025 */  or        $s0, $zero, $zero
/* 52F98 80052398 26F79560 */  addiu     $s7, $s7, -0x6aa0
/* 52F9C 8005239C 26B506D6 */  addiu     $s5, $s5, 0x6d6
/* 52FA0 800523A0 269406D8 */  addiu     $s4, $s4, 0x6d8
/* 52FA4 800523A4 2673F9F0 */  addiu     $s3, $s3, -0x610
/* 52FA8 800523A8 36310001 */  ori       $s1, $s1, 1
/* 52FAC 800523AC 24163000 */  addiu     $s6, $zero, 0x3000
/* 52FB0 800523B0 241E0017 */  addiu     $fp, $zero, 0x17
/* 52FB4 800523B4 AFAE0058 */  sw        $t6, 0x58($sp)
.L800523B8:
/* 52FB8 800523B8 8EE10000 */  lw        $at, ($s7)
/* 52FBC 800523BC 8EF80004 */  lw        $t8, 4($s7)
/* 52FC0 800523C0 A2800000 */  sb        $zero, ($s4)
/* 52FC4 800523C4 AC610000 */  sw        $at, ($v1)
/* 52FC8 800523C8 8EE10008 */  lw        $at, 8($s7)
/* 52FCC 800523CC AC780004 */  sw        $t8, 4($v1)
/* 52FD0 800523D0 8EF8000C */  lw        $t8, 0xc($s7)
/* 52FD4 800523D4 AC610008 */  sw        $at, 8($v1)
/* 52FD8 800523D8 8EE10010 */  lw        $at, 0x10($s7)
/* 52FDC 800523DC AC78000C */  sw        $t8, 0xc($v1)
/* 52FE0 800523E0 8EF80014 */  lw        $t8, 0x14($s7)
/* 52FE4 800523E4 AC610010 */  sw        $at, 0x10($v1)
/* 52FE8 800523E8 8EE10018 */  lw        $at, 0x18($s7)
/* 52FEC 800523EC AC780014 */  sw        $t8, 0x14($v1)
/* 52FF0 800523F0 A2600008 */  sb        $zero, 8($s3)
/* 52FF4 800523F4 AC610018 */  sw        $at, 0x18($v1)
/* 52FF8 800523F8 A6B60000 */  sh        $s6, ($s5)
/* 52FFC 800523FC 16400019 */  bnez      $s2, .L80052464
/* 53000 80052400 AFB30070 */  sw        $s3, 0x70($sp)
/* 53004 80052404 0C01495F */  jal       func_8005257C
/* 53008 80052408 00002025 */  or        $a0, $zero, $zero
/* 5300C 8005240C 93A20061 */  lbu       $v0, 0x61($sp)
/* 53010 80052410 27A3005C */  addiu     $v1, $sp, 0x5c
/* 53014 80052414 10400005 */  beqz      $v0, .L8005242C
/* 53018 80052418 00000000 */  nop       
/* 5301C 8005241C 105E000A */  beq       $v0, $fp, .L80052448
/* 53020 80052420 27A3005C */  addiu     $v1, $sp, 0x5c
/* 53024 80052424 10000025 */  b         .L800524BC
/* 53028 80052428 00000000 */  nop       
.L8005242C:
/* 5302C 8005242C 3C028010 */  lui       $v0, 0x8010
/* 53030 80052430 8C4206EC */  lw        $v0, 0x6ec($v0)
/* 53034 80052434 00008025 */  or        $s0, $zero, $zero
.L80052438:
/* 53038 80052438 1440FFFF */  bnez      $v0, .L80052438
/* 5303C 8005243C 00000000 */  nop       
/* 53040 80052440 1000FFDD */  b         .L800523B8
/* 53044 80052444 2652FFFF */  addiu     $s2, $s2, -1
.L80052448:
/* 53048 80052448 3C028010 */  lui       $v0, 0x8010
/* 5304C 8005244C 8C4206EC */  lw        $v0, 0x6ec($v0)
/* 53050 80052450 00008025 */  or        $s0, $zero, $zero
.L80052454:
/* 53054 80052454 1040FFFF */  beqz      $v0, .L80052454
/* 53058 80052458 00000000 */  nop       
/* 5305C 8005245C 1000FFD6 */  b         .L800523B8
/* 53060 80052460 2652FFFF */  addiu     $s2, $s2, -1
.L80052464:
/* 53064 80052464 32190003 */  andi      $t9, $s0, 3
/* 53068 80052468 3C028008 */  lui       $v0, 0x8008
/* 5306C 8005246C 3C088010 */  lui       $t0, 0x8010
/* 53070 80052470 8D0806EC */  lw        $t0, 0x6ec($t0)
/* 53074 80052474 00591021 */  addu      $v0, $v0, $t9
/* 53078 80052478 9042DA40 */  lbu       $v0, -0x25c0($v0)
/* 5307C 8005247C 15000003 */  bnez      $t0, .L8005248C
/* 53080 80052480 AFA20068 */  sw        $v0, 0x68($sp)
/* 53084 80052484 24420002 */  addiu     $v0, $v0, 2
/* 53088 80052488 AFA20068 */  sw        $v0, 0x68($sp)
.L8005248C:
/* 5308C 8005248C 0C01495F */  jal       func_8005257C
/* 53090 80052490 00002025 */  or        $a0, $zero, $zero
/* 53094 80052494 93A90060 */  lbu       $t1, 0x60($sp)
/* 53098 80052498 15200008 */  bnez      $t1, .L800524BC
/* 5309C 8005249C 3C028010 */  lui       $v0, 0x8010
/* 530A0 800524A0 3C038010 */  lui       $v1, 0x8010
/* 530A4 800524A4 8C63F9F0 */  lw        $v1, -0x610($v1)
/* 530A8 800524A8 8C4206EC */  lw        $v0, 0x6ec($v0)
.L800524AC:
/* 530AC 800524AC 1443FFFF */  bne       $v0, $v1, .L800524AC
/* 530B0 800524B0 00000000 */  nop       
/* 530B4 800524B4 10000013 */  b         .L80052504
/* 530B8 800524B8 8FAB0058 */  lw        $t3, 0x58($sp)
.L800524BC:
/* 530BC 800524BC 0C014D0C */  jal       func_80053430
/* 530C0 800524C0 93A40061 */  lbu       $a0, 0x61($sp)
/* 530C4 800524C4 1440000E */  bnez      $v0, .L80052500
/* 530C8 800524C8 02202025 */  or        $a0, $s1, $zero
/* 530CC 800524CC 2E020040 */  sltiu     $v0, $s0, 0x40
/* 530D0 800524D0 38420001 */  xori      $v0, $v0, 1
/* 530D4 800524D4 1440000A */  bnez      $v0, .L80052500
/* 530D8 800524D8 26100001 */  addiu     $s0, $s0, 1
/* 530DC 800524DC 320A0007 */  andi      $t2, $s0, 7
/* 530E0 800524E0 15400005 */  bnez      $t2, .L800524F8
/* 530E4 800524E4 00000000 */  nop       
/* 530E8 800524E8 0C014C68 */  jal       func_800531A0
/* 530EC 800524EC 00002825 */  or        $a1, $zero, $zero
/* 530F0 800524F0 1440FFF2 */  bnez      $v0, .L800524BC
/* 530F4 800524F4 A3A20061 */  sb        $v0, 0x61($sp)
.L800524F8:
/* 530F8 800524F8 1000FFAF */  b         .L800523B8
/* 530FC 800524FC 27A3005C */  addiu     $v1, $sp, 0x5c
.L80052500:
/* 53100 80052500 8FAB0058 */  lw        $t3, 0x58($sp)
.L80052504:
/* 53104 80052504 93A20061 */  lbu       $v0, 0x61($sp)
/* 53108 80052508 3C018010 */  lui       $at, 0x8010
/* 5310C 8005250C AC2B06C8 */  sw        $t3, 0x6c8($at)
/* 53110 80052510 A1620005 */  sb        $v0, 5($t3)
/* 53114 80052514 8FBF003C */  lw        $ra, 0x3c($sp)
/* 53118 80052518 8FBE0038 */  lw        $fp, 0x38($sp)
/* 5311C 8005251C 8FB70034 */  lw        $s7, 0x34($sp)
/* 53120 80052520 8FB60030 */  lw        $s6, 0x30($sp)
/* 53124 80052524 8FB5002C */  lw        $s5, 0x2c($sp)
/* 53128 80052528 8FB40028 */  lw        $s4, 0x28($sp)
/* 5312C 8005252C 8FB30024 */  lw        $s3, 0x24($sp)
/* 53130 80052530 8FB20020 */  lw        $s2, 0x20($sp)
/* 53134 80052534 8FB1001C */  lw        $s1, 0x1c($sp)
/* 53138 80052538 8FB00018 */  lw        $s0, 0x18($sp)
/* 5313C 8005253C 03E00008 */  jr        $ra
/* 53140 80052540 27BD0078 */  addiu     $sp, $sp, 0x78
/* 53144 80052544 00000000 */  nop       
/* 53148 80052548 00000000 */  nop       
/* 5314C 8005254C 00000000 */  nop       
