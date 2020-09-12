.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80001CE0
/* 28E0 80001CE0 3C0F800A */  lui       $t7, 0x800a
/* 28E4 80001CE4 25EF5870 */  addiu     $t7, $t7, 0x5870
/* 28E8 80001CE8 000470C0 */  sll       $t6, $a0, 3
/* 28EC 80001CEC 01CF1021 */  addu      $v0, $t6, $t7
/* 28F0 80001CF0 AC450000 */  sw        $a1, ($v0)
/* 28F4 80001CF4 03E00008 */  jr        $ra
/* 28F8 80001CF8 AC460004 */  sw        $a2, 4($v0)

glabel func_80001CFC
/* 28FC 80001CFC 000470C0 */  sll       $t6, $a0, 3
/* 2900 80001D00 3C02800A */  lui       $v0, 0x800a
/* 2904 80001D04 004E1021 */  addu      $v0, $v0, $t6
/* 2908 80001D08 03E00008 */  jr        $ra
/* 290C 80001D0C 8C425870 */  lw        $v0, 0x5870($v0)

glabel func_80001D10
/* 2910 80001D10 00047702 */  srl       $t6, $a0, 0x1c
/* 2914 80001D14 15C00010 */  bnez      $t6, .L80001D58
/* 2918 80001D18 3C06800A */  lui       $a2, 0x800a
/* 291C 80001D1C 3C010F00 */  lui       $at, 0xf00
/* 2920 80001D20 00811824 */  and       $v1, $a0, $at
/* 2924 80001D24 00031E02 */  srl       $v1, $v1, 0x18
/* 2928 80001D28 24C65870 */  addiu     $a2, $a2, 0x5870
/* 292C 80001D2C 000378C0 */  sll       $t7, $v1, 3
/* 2930 80001D30 00CFC021 */  addu      $t8, $a2, $t7
/* 2934 80001D34 8F190000 */  lw        $t9, ($t8)
/* 2938 80001D38 3C0100FF */  lui       $at, 0xff
/* 293C 80001D3C 3421FFFF */  ori       $at, $at, 0xffff
/* 2940 80001D40 13200005 */  beqz      $t9, .L80001D58
/* 2944 80001D44 00812824 */  and       $a1, $a0, $at
/* 2948 80001D48 000340C0 */  sll       $t0, $v1, 3
/* 294C 80001D4C 00C84821 */  addu      $t1, $a2, $t0
/* 2950 80001D50 8D2A0000 */  lw        $t2, ($t1)
/* 2954 80001D54 01452021 */  addu      $a0, $t2, $a1
.L80001D58:
/* 2958 80001D58 03E00008 */  jr        $ra
/* 295C 80001D5C 00801025 */  or        $v0, $a0, $zero

glabel func_80001D60
/* 2960 80001D60 3C0F800A */  lui       $t7, 0x800a
/* 2964 80001D64 25EF5870 */  addiu     $t7, $t7, 0x5870
/* 2968 80001D68 000470C0 */  sll       $t6, $a0, 3
/* 296C 80001D6C 01CF1021 */  addu      $v0, $t6, $t7
/* 2970 80001D70 8C580000 */  lw        $t8, ($v0)
/* 2974 80001D74 8C590004 */  lw        $t9, 4($v0)
/* 2978 80001D78 00044600 */  sll       $t0, $a0, 0x18
/* 297C 80001D7C 00B81823 */  subu      $v1, $a1, $t8
/* 2980 80001D80 0079082B */  sltu      $at, $v1, $t9
/* 2984 80001D84 14200003 */  bnez      $at, .L80001D94
/* 2988 80001D88 01031025 */  or        $v0, $t0, $v1
/* 298C 80001D8C 03E00008 */  jr        $ra
/* 2990 80001D90 00001025 */  or        $v0, $zero, $zero
.L80001D94:
/* 2994 80001D94 03E00008 */  jr        $ra
/* 2998 80001D98 00000000 */  nop       

glabel func_80001D9C
/* 299C 80001D9C 3C0F800A */  lui       $t7, 0x800a
/* 29A0 80001DA0 25EF5870 */  addiu     $t7, $t7, 0x5870
/* 29A4 80001DA4 000470C0 */  sll       $t6, $a0, 3
/* 29A8 80001DA8 01CF1021 */  addu      $v0, $t6, $t7
/* 29AC 80001DAC AC400000 */  sw        $zero, ($v0)
/* 29B0 80001DB0 03E00008 */  jr        $ra
/* 29B4 80001DB4 AC400004 */  sw        $zero, 4($v0)

glabel func_80001DB8
/* 29B8 80001DB8 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 29BC 80001DBC AFB50028 */  sw        $s5, 0x28($sp)
/* 29C0 80001DC0 AFB40024 */  sw        $s4, 0x24($sp)
/* 29C4 80001DC4 AFB2001C */  sw        $s2, 0x1c($sp)
/* 29C8 80001DC8 AFB00014 */  sw        $s0, 0x14($sp)
/* 29CC 80001DCC AFBF002C */  sw        $ra, 0x2c($sp)
/* 29D0 80001DD0 AFB30020 */  sw        $s3, 0x20($sp)
/* 29D4 80001DD4 AFB10018 */  sw        $s1, 0x18($sp)
/* 29D8 80001DD8 AFA40030 */  sw        $a0, 0x30($sp)
/* 29DC 80001DDC 3C10800A */  lui       $s0, 0x800a
/* 29E0 80001DE0 3C15800A */  lui       $s5, 0x800a
/* 29E4 80001DE4 8C910000 */  lw        $s1, ($a0)
/* 29E8 80001DE8 26B558F0 */  addiu     $s5, $s5, 0x58f0
/* 29EC 80001DEC 26105870 */  addiu     $s0, $s0, 0x5870
/* 29F0 80001DF0 00009025 */  or        $s2, $zero, $zero
/* 29F4 80001DF4 3C14DB06 */  lui       $s4, 0xdb06
.L80001DF8:
/* 29F8 80001DF8 324FFFFF */  andi      $t7, $s2, 0xffff
/* 29FC 80001DFC 01F4C025 */  or        $t8, $t7, $s4
/* 2A00 80001E00 02209825 */  or        $s3, $s1, $zero
/* 2A04 80001E04 AE780000 */  sw        $t8, ($s3)
/* 2A08 80001E08 8E040000 */  lw        $a0, ($s0)
/* 2A0C 80001E0C 0C016424 */  jal       func_80059090
/* 2A10 80001E10 26310008 */  addiu     $s1, $s1, 8
/* 2A14 80001E14 26100008 */  addiu     $s0, $s0, 8
/* 2A18 80001E18 26520004 */  addiu     $s2, $s2, 4
/* 2A1C 80001E1C 1615FFF6 */  bne       $s0, $s5, .L80001DF8
/* 2A20 80001E20 AE620004 */  sw        $v0, 4($s3)
/* 2A24 80001E24 8FB90030 */  lw        $t9, 0x30($sp)
/* 2A28 80001E28 AF310000 */  sw        $s1, ($t9)
/* 2A2C 80001E2C 8FBF002C */  lw        $ra, 0x2c($sp)
/* 2A30 80001E30 8FB50028 */  lw        $s5, 0x28($sp)
/* 2A34 80001E34 8FB40024 */  lw        $s4, 0x24($sp)
/* 2A38 80001E38 8FB30020 */  lw        $s3, 0x20($sp)
/* 2A3C 80001E3C 8FB2001C */  lw        $s2, 0x1c($sp)
/* 2A40 80001E40 8FB10018 */  lw        $s1, 0x18($sp)
/* 2A44 80001E44 8FB00014 */  lw        $s0, 0x14($sp)
/* 2A48 80001E48 03E00008 */  jr        $ra
/* 2A4C 80001E4C 27BD0030 */  addiu     $sp, $sp, 0x30

glabel func_80001E50
/* 2A50 80001E50 27BDFE80 */  addiu     $sp, $sp, -0x180
/* 2A54 80001E54 AFBF003C */  sw        $ra, 0x3c($sp)
/* 2A58 80001E58 AFBE0038 */  sw        $fp, 0x38($sp)
/* 2A5C 80001E5C AFB70034 */  sw        $s7, 0x34($sp)
/* 2A60 80001E60 AFB60030 */  sw        $s6, 0x30($sp)
/* 2A64 80001E64 AFB5002C */  sw        $s5, 0x2c($sp)
/* 2A68 80001E68 AFB40028 */  sw        $s4, 0x28($sp)
/* 2A6C 80001E6C AFB30024 */  sw        $s3, 0x24($sp)
/* 2A70 80001E70 AFB20020 */  sw        $s2, 0x20($sp)
/* 2A74 80001E74 AFB1001C */  sw        $s1, 0x1c($sp)
/* 2A78 80001E78 AFB00018 */  sw        $s0, 0x18($sp)
/* 2A7C 80001E7C 8CA20014 */  lw        $v0, 0x14($a1)
/* 2A80 80001E80 8CA3001C */  lw        $v1, 0x1c($a1)
/* 2A84 80001E84 00808025 */  or        $s0, $a0, $zero
/* 2A88 80001E88 00A0A025 */  or        $s4, $a1, $zero
/* 2A8C 80001E8C 00A02025 */  or        $a0, $a1, $zero
/* 2A90 80001E90 00459821 */  addu      $s3, $v0, $a1
/* 2A94 80001E94 00627023 */  subu      $t6, $v1, $v0
/* 2A98 80001E98 AFAE0070 */  sw        $t6, 0x70($sp)
/* 2A9C 80001E9C 0C0178F4 */  jal       func_8005E3D0
/* 2AA0 80001EA0 00602825 */  or        $a1, $v1, $zero
/* 2AA4 80001EA4 02802025 */  or        $a0, $s4, $zero
/* 2AA8 80001EA8 0C0178BC */  jal       func_8005E2F0
/* 2AAC 80001EAC 8E85001C */  lw        $a1, 0x1c($s4)
/* 2AB0 80001EB0 02002025 */  or        $a0, $s0, $zero
/* 2AB4 80001EB4 02802825 */  or        $a1, $s4, $zero
/* 2AB8 80001EB8 0C00082C */  jal       func_800020B0
/* 2ABC 80001EBC 8E86001C */  lw        $a2, 0x1c($s4)
/* 2AC0 80001EC0 8E640000 */  lw        $a0, ($s3)
/* 2AC4 80001EC4 0000B025 */  or        $s6, $zero, $zero
/* 2AC8 80001EC8 0260A825 */  or        $s5, $s3, $zero
/* 2ACC 80001ECC 10800063 */  beqz      $a0, .L8000205C
/* 2AD0 80001ED0 27B700FC */  addiu     $s7, $sp, 0xfc
/* 2AD4 80001ED4 3C1200FF */  lui       $s2, 0xff
/* 2AD8 80001ED8 3652FFFF */  ori       $s2, $s2, 0xffff
/* 2ADC 80001EDC 27BE007C */  addiu     $fp, $sp, 0x7c
.L80001EE0:
/* 2AE0 80001EE0 8EA50004 */  lw        $a1, 4($s5)
/* 2AE4 80001EE4 3C017F00 */  lui       $at, 0x7f00
/* 2AE8 80001EE8 00A11024 */  and       $v0, $a1, $at
/* 2AEC 80001EEC 00021602 */  srl       $v0, $v0, 0x18
/* 2AF0 80001EF0 24010002 */  addiu     $at, $zero, 2
/* 2AF4 80001EF4 1041000C */  beq       $v0, $at, .L80001F28
/* 2AF8 80001EF8 00B27824 */  and       $t7, $a1, $s2
/* 2AFC 80001EFC 24010004 */  addiu     $at, $zero, 4
/* 2B00 80001F00 1041000F */  beq       $v0, $at, .L80001F40
/* 2B04 80001F04 00B2C024 */  and       $t8, $a1, $s2
/* 2B08 80001F08 24010005 */  addiu     $at, $zero, 5
/* 2B0C 80001F0C 10410020 */  beq       $v0, $at, .L80001F90
/* 2B10 80001F10 00B26024 */  and       $t4, $a1, $s2
/* 2B14 80001F14 24010006 */  addiu     $at, $zero, 6
/* 2B18 80001F18 1041002C */  beq       $v0, $at, .L80001FCC
/* 2B1C 80001F1C 00B26024 */  and       $t4, $a1, $s2
/* 2B20 80001F20 1000004B */  b         .L80002050
/* 2B24 80001F24 26D60001 */  addiu     $s6, $s6, 1
.L80001F28:
/* 2B28 80001F28 01F48021 */  addu      $s0, $t7, $s4
/* 2B2C 80001F2C 0C000838 */  jal       func_800020E0
/* 2B30 80001F30 8E040000 */  lw        $a0, ($s0)
/* 2B34 80001F34 AE020000 */  sw        $v0, ($s0)
/* 2B38 80001F38 10000044 */  b         .L8000204C
/* 2B3C 80001F3C 8E640000 */  lw        $a0, ($s3)
.L80001F40:
/* 2B40 80001F40 03148021 */  addu      $s0, $t8, $s4
/* 2B44 80001F44 8E040000 */  lw        $a0, ($s0)
/* 2B48 80001F48 3C010FFF */  lui       $at, 0xfff
/* 2B4C 80001F4C 3421FFFC */  ori       $at, $at, 0xfffc
/* 2B50 80001F50 00042080 */  sll       $a0, $a0, 2
/* 2B54 80001F54 00812024 */  and       $a0, $a0, $at
/* 2B58 80001F58 3C018000 */  lui       $at, 0x8000
/* 2B5C 80001F5C 0C000838 */  jal       func_800020E0
/* 2B60 80001F60 00812021 */  addu      $a0, $a0, $at
/* 2B64 80001F64 8E190000 */  lw        $t9, ($s0)
/* 2B68 80001F68 3C01FC00 */  lui       $at, 0xfc00
/* 2B6C 80001F6C 03214024 */  and       $t0, $t9, $at
/* 2B70 80001F70 3C010FFF */  lui       $at, 0xfff
/* 2B74 80001F74 3421FFFF */  ori       $at, $at, 0xffff
/* 2B78 80001F78 00414824 */  and       $t1, $v0, $at
/* 2B7C 80001F7C 00095082 */  srl       $t2, $t1, 2
/* 2B80 80001F80 010A5825 */  or        $t3, $t0, $t2
/* 2B84 80001F84 AE0B0000 */  sw        $t3, ($s0)
/* 2B88 80001F88 10000030 */  b         .L8000204C
/* 2B8C 80001F8C 8E640000 */  lw        $a0, ($s3)
.L80001F90:
/* 2B90 80001F90 01948021 */  addu      $s0, $t4, $s4
/* 2B94 80001F94 8E0D0000 */  lw        $t5, ($s0)
/* 2B98 80001F98 000D7402 */  srl       $t6, $t5, 0x10
/* 2B9C 80001F9C 31CF001F */  andi      $t7, $t6, 0x1f
/* 2BA0 80001FA0 000FC080 */  sll       $t8, $t7, 2
/* 2BA4 80001FA4 02F8C821 */  addu      $t9, $s7, $t8
/* 2BA8 80001FA8 AF300000 */  sw        $s0, ($t9)
/* 2BAC 80001FAC 8E020000 */  lw        $v0, ($s0)
/* 2BB0 80001FB0 00024C02 */  srl       $t1, $v0, 0x10
/* 2BB4 80001FB4 3128001F */  andi      $t0, $t1, 0x1f
/* 2BB8 80001FB8 00085080 */  sll       $t2, $t0, 2
/* 2BBC 80001FBC 03CA5821 */  addu      $t3, $fp, $t2
/* 2BC0 80001FC0 AD620000 */  sw        $v0, ($t3)
/* 2BC4 80001FC4 10000021 */  b         .L8000204C
/* 2BC8 80001FC8 8E640000 */  lw        $a0, ($s3)
.L80001FCC:
/* 2BCC 80001FCC 01948021 */  addu      $s0, $t4, $s4
/* 2BD0 80001FD0 8E020000 */  lw        $v0, ($s0)
/* 2BD4 80001FD4 00021D42 */  srl       $v1, $v0, 0x15
/* 2BD8 80001FD8 3063001F */  andi      $v1, $v1, 0x1f
/* 2BDC 80001FDC 00031880 */  sll       $v1, $v1, 2
/* 2BE0 80001FE0 03C33021 */  addu      $a2, $fp, $v1
/* 2BE4 80001FE4 8CD80000 */  lw        $t8, ($a2)
/* 2BE8 80001FE8 00027400 */  sll       $t6, $v0, 0x10
/* 2BEC 80001FEC 02E36821 */  addu      $t5, $s7, $v1
/* 2BF0 80001FF0 000E7C03 */  sra       $t7, $t6, 0x10
/* 2BF4 80001FF4 0018CC00 */  sll       $t9, $t8, 0x10
/* 2BF8 80001FF8 8DB10000 */  lw        $s1, ($t5)
/* 2BFC 80001FFC 0C000838 */  jal       func_800020E0
/* 2C00 80002000 01F92021 */  addu      $a0, $t7, $t9
/* 2C04 80002004 30498000 */  andi      $t1, $v0, 0x8000
/* 2C08 80002008 11200003 */  beqz      $t1, .L80002018
/* 2C0C 8000200C 3C05FFFF */  lui       $a1, 0xffff
/* 2C10 80002010 10000002 */  b         .L8000201C
/* 2C14 80002014 24030001 */  addiu     $v1, $zero, 1
.L80002018:
/* 2C18 80002018 00001825 */  or        $v1, $zero, $zero
.L8000201C:
/* 2C1C 8000201C 8E280000 */  lw        $t0, ($s1)
/* 2C20 80002020 00025C02 */  srl       $t3, $v0, 0x10
/* 2C24 80002024 01636021 */  addu      $t4, $t3, $v1
/* 2C28 80002028 01055024 */  and       $t2, $t0, $a1
/* 2C2C 8000202C 014C6825 */  or        $t5, $t2, $t4
/* 2C30 80002030 AE2D0000 */  sw        $t5, ($s1)
/* 2C34 80002034 8E0E0000 */  lw        $t6, ($s0)
/* 2C38 80002038 304FFFFF */  andi      $t7, $v0, 0xffff
/* 2C3C 8000203C 01C5C024 */  and       $t8, $t6, $a1
/* 2C40 80002040 030FC825 */  or        $t9, $t8, $t7
/* 2C44 80002044 AE190000 */  sw        $t9, ($s0)
/* 2C48 80002048 8E640000 */  lw        $a0, ($s3)
.L8000204C:
/* 2C4C 8000204C 26D60001 */  addiu     $s6, $s6, 1
.L80002050:
/* 2C50 80002050 02C4082B */  sltu      $at, $s6, $a0
/* 2C54 80002054 1420FFA2 */  bnez      $at, .L80001EE0
/* 2C58 80002058 26B50004 */  addiu     $s5, $s5, 4
.L8000205C:
/* 2C5C 8000205C 8FA50070 */  lw        $a1, 0x70($sp)
/* 2C60 80002060 50A00005 */  beql      $a1, $zero, .L80002078
/* 2C64 80002064 02802025 */  or        $a0, $s4, $zero
/* 2C68 80002068 8E890014 */  lw        $t1, 0x14($s4)
/* 2C6C 8000206C 0C015FF4 */  jal       func_80057FD0
/* 2C70 80002070 01342021 */  addu      $a0, $t1, $s4
/* 2C74 80002074 02802025 */  or        $a0, $s4, $zero
.L80002078:
/* 2C78 80002078 0C016448 */  jal       func_80059120
/* 2C7C 8000207C 8E85001C */  lw        $a1, 0x1c($s4)
/* 2C80 80002080 8FBF003C */  lw        $ra, 0x3c($sp)
/* 2C84 80002084 8FB00018 */  lw        $s0, 0x18($sp)
/* 2C88 80002088 8FB1001C */  lw        $s1, 0x1c($sp)
/* 2C8C 8000208C 8FB20020 */  lw        $s2, 0x20($sp)
/* 2C90 80002090 8FB30024 */  lw        $s3, 0x24($sp)
/* 2C94 80002094 8FB40028 */  lw        $s4, 0x28($sp)
/* 2C98 80002098 8FB5002C */  lw        $s5, 0x2c($sp)
/* 2C9C 8000209C 8FB60030 */  lw        $s6, 0x30($sp)
/* 2CA0 800020A0 8FB70034 */  lw        $s7, 0x34($sp)
/* 2CA4 800020A4 8FBE0038 */  lw        $fp, 0x38($sp)
/* 2CA8 800020A8 03E00008 */  jr        $ra
/* 2CAC 800020AC 27BD0180 */  addiu     $sp, $sp, 0x180

glabel func_800020B0
/* 2CB0 800020B0 3C0F800A */  lui       $t7, 0x800a
/* 2CB4 800020B4 25EF58F0 */  addiu     $t7, $t7, 0x58f0
/* 2CB8 800020B8 000470C0 */  sll       $t6, $a0, 3
/* 2CBC 800020BC 01CF1021 */  addu      $v0, $t6, $t7
/* 2CC0 800020C0 AC450000 */  sw        $a1, ($v0)
/* 2CC4 800020C4 03E00008 */  jr        $ra
/* 2CC8 800020C8 AC460004 */  sw        $a2, 4($v0)

glabel func_800020CC
/* 2CCC 800020CC 000470C0 */  sll       $t6, $a0, 3
/* 2CD0 800020D0 3C02800A */  lui       $v0, 0x800a
/* 2CD4 800020D4 004E1021 */  addu      $v0, $v0, $t6
/* 2CD8 800020D8 03E00008 */  jr        $ra
/* 2CDC 800020DC 8C4258F0 */  lw        $v0, 0x58f0($v0)

glabel func_800020E0
/* 2CE0 800020E0 3C018100 */  lui       $at, 0x8100
/* 2CE4 800020E4 0081082B */  sltu      $at, $a0, $at
/* 2CE8 800020E8 14200014 */  bnez      $at, .L8000213C
/* 2CEC 800020EC 3C019000 */  lui       $at, 0x9000
/* 2CF0 800020F0 0081082B */  sltu      $at, $a0, $at
/* 2CF4 800020F4 10200011 */  beqz      $at, .L8000213C
/* 2CF8 800020F8 3C06800A */  lui       $a2, 0x800a
/* 2CFC 800020FC 3C010FF0 */  lui       $at, 0xff0
/* 2D00 80002100 00811824 */  and       $v1, $a0, $at
/* 2D04 80002104 00031D02 */  srl       $v1, $v1, 0x14
/* 2D08 80002108 2463FFF0 */  addiu     $v1, $v1, -0x10
/* 2D0C 8000210C 24C658F0 */  addiu     $a2, $a2, 0x58f0
/* 2D10 80002110 000370C0 */  sll       $t6, $v1, 3
/* 2D14 80002114 00CE7821 */  addu      $t7, $a2, $t6
/* 2D18 80002118 8DF80000 */  lw        $t8, ($t7)
/* 2D1C 8000211C 3C01000F */  lui       $at, 0xf
/* 2D20 80002120 3421FFFF */  ori       $at, $at, 0xffff
/* 2D24 80002124 13000005 */  beqz      $t8, .L8000213C
/* 2D28 80002128 00812824 */  and       $a1, $a0, $at
/* 2D2C 8000212C 0003C8C0 */  sll       $t9, $v1, 3
/* 2D30 80002130 00D94021 */  addu      $t0, $a2, $t9
/* 2D34 80002134 8D090000 */  lw        $t1, ($t0)
/* 2D38 80002138 01252021 */  addu      $a0, $t1, $a1
.L8000213C:
/* 2D3C 8000213C 03E00008 */  jr        $ra
/* 2D40 80002140 00801025 */  or        $v0, $a0, $zero

glabel func_80002144
/* 2D44 80002144 3C0F800A */  lui       $t7, 0x800a
/* 2D48 80002148 25EF58F0 */  addiu     $t7, $t7, 0x58f0
/* 2D4C 8000214C 000470C0 */  sll       $t6, $a0, 3
/* 2D50 80002150 01CF1021 */  addu      $v0, $t6, $t7
/* 2D54 80002154 8C580000 */  lw        $t8, ($v0)
/* 2D58 80002158 8C590004 */  lw        $t9, 4($v0)
/* 2D5C 8000215C 24880010 */  addiu     $t0, $a0, 0x10
/* 2D60 80002160 00B81823 */  subu      $v1, $a1, $t8
/* 2D64 80002164 0079082B */  sltu      $at, $v1, $t9
/* 2D68 80002168 14200003 */  bnez      $at, .L80002178
/* 2D6C 8000216C 00084D00 */  sll       $t1, $t0, 0x14
/* 2D70 80002170 03E00008 */  jr        $ra
/* 2D74 80002174 00001025 */  or        $v0, $zero, $zero
.L80002178:
/* 2D78 80002178 3C018000 */  lui       $at, 0x8000
/* 2D7C 8000217C 01215025 */  or        $t2, $t1, $at
/* 2D80 80002180 01431025 */  or        $v0, $t2, $v1
/* 2D84 80002184 03E00008 */  jr        $ra
/* 2D88 80002188 00000000 */  nop       

glabel func_8000218C
/* 2D8C 8000218C 3C0F800A */  lui       $t7, 0x800a
/* 2D90 80002190 25EF58F0 */  addiu     $t7, $t7, 0x58f0
/* 2D94 80002194 000470C0 */  sll       $t6, $a0, 3
/* 2D98 80002198 01CF1021 */  addu      $v0, $t6, $t7
/* 2D9C 8000219C AC400000 */  sw        $zero, ($v0)
/* 2DA0 800021A0 03E00008 */  jr        $ra
/* 2DA4 800021A4 AC400004 */  sw        $zero, 4($v0)

glabel func_800021A8
/* 2DA8 800021A8 3C02800A */  lui       $v0, 0x800a
/* 2DAC 800021AC 244258F0 */  addiu     $v0, $v0, 0x58f0
/* 2DB0 800021B0 00001825 */  or        $v1, $zero, $zero
/* 2DB4 800021B4 240800F0 */  addiu     $t0, $zero, 0xf0
.L800021B8:
/* 2DB8 800021B8 8C450000 */  lw        $a1, ($v0)
/* 2DBC 800021BC 0085082B */  sltu      $at, $a0, $a1
/* 2DC0 800021C0 5420000C */  bnel      $at, $zero, .L800021F4
/* 2DC4 800021C4 8C450008 */  lw        $a1, 8($v0)
/* 2DC8 800021C8 8C4E0004 */  lw        $t6, 4($v0)
/* 2DCC 800021CC 00853823 */  subu      $a3, $a0, $a1
/* 2DD0 800021D0 00EE082B */  sltu      $at, $a3, $t6
/* 2DD4 800021D4 10200006 */  beqz      $at, .L800021F0
/* 2DD8 800021D8 246F0010 */  addiu     $t7, $v1, 0x10
/* 2DDC 800021DC 000FC500 */  sll       $t8, $t7, 0x14
/* 2DE0 800021E0 3C018000 */  lui       $at, 0x8000
/* 2DE4 800021E4 0301C825 */  or        $t9, $t8, $at
/* 2DE8 800021E8 03E00008 */  jr        $ra
/* 2DEC 800021EC 03271025 */  or        $v0, $t9, $a3
.L800021F0:
/* 2DF0 800021F0 8C450008 */  lw        $a1, 8($v0)
.L800021F4:
/* 2DF4 800021F4 24420008 */  addiu     $v0, $v0, 8
/* 2DF8 800021F8 0085082B */  sltu      $at, $a0, $a1
/* 2DFC 800021FC 5420000C */  bnel      $at, $zero, .L80002230
/* 2E00 80002200 8C450008 */  lw        $a1, 8($v0)
/* 2E04 80002204 8C490004 */  lw        $t1, 4($v0)
/* 2E08 80002208 00853823 */  subu      $a3, $a0, $a1
/* 2E0C 8000220C 00E9082B */  sltu      $at, $a3, $t1
/* 2E10 80002210 10200006 */  beqz      $at, .L8000222C
/* 2E14 80002214 246A0011 */  addiu     $t2, $v1, 0x11
/* 2E18 80002218 000A5D00 */  sll       $t3, $t2, 0x14
/* 2E1C 8000221C 3C018000 */  lui       $at, 0x8000
/* 2E20 80002220 01616025 */  or        $t4, $t3, $at
/* 2E24 80002224 03E00008 */  jr        $ra
/* 2E28 80002228 01871025 */  or        $v0, $t4, $a3
.L8000222C:
/* 2E2C 8000222C 8C450008 */  lw        $a1, 8($v0)
.L80002230:
/* 2E30 80002230 24420008 */  addiu     $v0, $v0, 8
/* 2E34 80002234 0085082B */  sltu      $at, $a0, $a1
/* 2E38 80002238 5420000C */  bnel      $at, $zero, .L8000226C
/* 2E3C 8000223C 8C450008 */  lw        $a1, 8($v0)
/* 2E40 80002240 8C4D0004 */  lw        $t5, 4($v0)
/* 2E44 80002244 00853823 */  subu      $a3, $a0, $a1
/* 2E48 80002248 00ED082B */  sltu      $at, $a3, $t5
/* 2E4C 8000224C 10200006 */  beqz      $at, .L80002268
/* 2E50 80002250 246E0012 */  addiu     $t6, $v1, 0x12
/* 2E54 80002254 000E7D00 */  sll       $t7, $t6, 0x14
/* 2E58 80002258 3C018000 */  lui       $at, 0x8000
/* 2E5C 8000225C 01E1C025 */  or        $t8, $t7, $at
/* 2E60 80002260 03E00008 */  jr        $ra
/* 2E64 80002264 03071025 */  or        $v0, $t8, $a3
.L80002268:
/* 2E68 80002268 8C450008 */  lw        $a1, 8($v0)
.L8000226C:
/* 2E6C 8000226C 24420008 */  addiu     $v0, $v0, 8
/* 2E70 80002270 0085082B */  sltu      $at, $a0, $a1
/* 2E74 80002274 5420000C */  bnel      $at, $zero, .L800022A8
/* 2E78 80002278 24630004 */  addiu     $v1, $v1, 4
/* 2E7C 8000227C 8C590004 */  lw        $t9, 4($v0)
/* 2E80 80002280 00853823 */  subu      $a3, $a0, $a1
/* 2E84 80002284 00F9082B */  sltu      $at, $a3, $t9
/* 2E88 80002288 10200006 */  beqz      $at, .L800022A4
/* 2E8C 8000228C 24690013 */  addiu     $t1, $v1, 0x13
/* 2E90 80002290 00095500 */  sll       $t2, $t1, 0x14
/* 2E94 80002294 3C018000 */  lui       $at, 0x8000
/* 2E98 80002298 01415825 */  or        $t3, $t2, $at
/* 2E9C 8000229C 03E00008 */  jr        $ra
/* 2EA0 800022A0 01671025 */  or        $v0, $t3, $a3
.L800022A4:
/* 2EA4 800022A4 24630004 */  addiu     $v1, $v1, 4
.L800022A8:
/* 2EA8 800022A8 1468FFC3 */  bne       $v1, $t0, .L800021B8
/* 2EAC 800022AC 24420008 */  addiu     $v0, $v0, 8
/* 2EB0 800022B0 00001025 */  or        $v0, $zero, $zero
/* 2EB4 800022B4 03E00008 */  jr        $ra
/* 2EB8 800022B8 00000000 */  nop       
/* 2EBC 800022BC 00000000 */  nop       