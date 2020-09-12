.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80065C50
/* 66850 80065C50 3C0EA450 */  lui       $t6, 0xa450
/* 66854 80065C54 8DC4000C */  lw        $a0, 0xc($t6)
/* 66858 80065C58 3C018000 */  lui       $at, 0x8000
/* 6685C 80065C5C 27BDFFF8 */  addiu     $sp, $sp, -8
/* 66860 80065C60 00817824 */  and       $t7, $a0, $at
/* 66864 80065C64 11E00003 */  beqz      $t7, .L80065C74
/* 66868 80065C68 00000000 */  nop       
/* 6686C 80065C6C 10000002 */  b         .L80065C78
/* 66870 80065C70 24020001 */  addiu     $v0, $zero, 1
.L80065C74:
/* 66874 80065C74 00001025 */  or        $v0, $zero, $zero
.L80065C78:
/* 66878 80065C78 03E00008 */  jr        $ra
/* 6687C 80065C7C 27BD0008 */  addiu     $sp, $sp, 8

glabel func_80065C80
/* 66880 80065C80 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 66884 80065C84 AFB1001C */  sw        $s1, 0x1c($sp)
/* 66888 80065C88 AFBF0024 */  sw        $ra, 0x24($sp)
/* 6688C 80065C8C AFB20020 */  sw        $s2, 0x20($sp)
/* 66890 80065C90 AFB00018 */  sw        $s0, 0x18($sp)
/* 66894 80065C94 3C118010 */  lui       $s1, 0x8010
/* 66898 80065C98 00C08025 */  or        $s0, $a2, $zero
/* 6689C 80065C9C 00809025 */  or        $s2, $a0, $zero
/* 668A0 80065CA0 AFA50054 */  sw        $a1, 0x54($sp)
/* 668A4 80065CA4 0C0162FC */  jal       func_80058BF0
/* 668A8 80065CA8 26314B70 */  addiu     $s1, $s1, 0x4b70
/* 668AC 80065CAC 02402025 */  or        $a0, $s2, $zero
/* 668B0 80065CB0 0C016FE9 */  jal       func_8005BFA4
/* 668B4 80065CB4 27A5003C */  addiu     $a1, $sp, 0x3c
/* 668B8 80065CB8 14400015 */  bnez      $v0, .L80065D10
/* 668BC 80065CBC 00402025 */  or        $a0, $v0, $zero
/* 668C0 80065CC0 97AE003C */  lhu       $t6, 0x3c($sp)
/* 668C4 80065CC4 34018000 */  ori       $at, $zero, 0x8000
/* 668C8 80065CC8 93B80057 */  lbu       $t8, 0x57($sp)
/* 668CC 80065CCC 31CFC000 */  andi      $t7, $t6, 0xc000
/* 668D0 80065CD0 11E10005 */  beq       $t7, $at, .L80065CE8
/* 668D4 80065CD4 3401C000 */  ori       $at, $zero, 0xc000
/* 668D8 80065CD8 11E10008 */  beq       $t7, $at, .L80065CFC
/* 668DC 80065CDC 93B90057 */  lbu       $t9, 0x57($sp)
/* 668E0 80065CE0 1000000B */  b         .L80065D10
/* 668E4 80065CE4 24040008 */  addiu     $a0, $zero, 8
.L80065CE8:
/* 668E8 80065CE8 2B010040 */  slti      $at, $t8, 0x40
/* 668EC 80065CEC 14200008 */  bnez      $at, .L80065D10
/* 668F0 80065CF0 00000000 */  nop       
/* 668F4 80065CF4 10000006 */  b         .L80065D10
/* 668F8 80065CF8 2404FFFF */  addiu     $a0, $zero, -1
.L80065CFC:
/* 668FC 80065CFC 2B210100 */  slti      $at, $t9, 0x100
/* 66900 80065D00 14200003 */  bnez      $at, .L80065D10
/* 66904 80065D04 00000000 */  nop       
/* 66908 80065D08 10000001 */  b         .L80065D10
/* 6690C 80065D0C 2404FFFF */  addiu     $a0, $zero, -1
.L80065D10:
/* 66910 80065D10 10800005 */  beqz      $a0, .L80065D28
/* 66914 80065D14 93A8003E */  lbu       $t0, 0x3e($sp)
/* 66918 80065D18 0C01630D */  jal       func_80058C34
/* 6691C 80065D1C AFA4004C */  sw        $a0, 0x4c($sp)
/* 66920 80065D20 10000042 */  b         .L80065E2C
/* 66924 80065D24 8FA2004C */  lw        $v0, 0x4c($sp)
.L80065D28:
/* 66928 80065D28 31090080 */  andi      $t1, $t0, 0x80
/* 6692C 80065D2C 11200007 */  beqz      $t1, .L80065D4C
/* 66930 80065D30 02402025 */  or        $a0, $s2, $zero
.L80065D34:
/* 66934 80065D34 0C016FE9 */  jal       func_8005BFA4
/* 66938 80065D38 27A5003C */  addiu     $a1, $sp, 0x3c
/* 6693C 80065D3C 93AA003E */  lbu       $t2, 0x3e($sp)
/* 66940 80065D40 314B0080 */  andi      $t3, $t2, 0x80
/* 66944 80065D44 5560FFFB */  bnel      $t3, $zero, .L80065D34
/* 66948 80065D48 02402025 */  or        $a0, $s2, $zero
.L80065D4C:
/* 6694C 80065D4C 0C019791 */  jal       func_80065E44
/* 66950 80065D50 93A40057 */  lbu       $a0, 0x57($sp)
/* 66954 80065D54 3C058010 */  lui       $a1, 0x8010
/* 66958 80065D58 24A54B70 */  addiu     $a1, $a1, 0x4b70
/* 6695C 80065D5C 0C016A38 */  jal       func_8005A8E0
/* 66960 80065D60 24040001 */  addiu     $a0, $zero, 1
/* 66964 80065D64 02402025 */  or        $a0, $s2, $zero
/* 66968 80065D68 00002825 */  or        $a1, $zero, $zero
/* 6696C 80065D6C 0C015AB4 */  jal       func_80056AD0
/* 66970 80065D70 24060001 */  addiu     $a2, $zero, 1
/* 66974 80065D74 3C058010 */  lui       $a1, 0x8010
/* 66978 80065D78 24A54B70 */  addiu     $a1, $a1, 0x4b70
/* 6697C 80065D7C 0C016A38 */  jal       func_8005A8E0
/* 66980 80065D80 00002025 */  or        $a0, $zero, $zero
/* 66984 80065D84 240C0004 */  addiu     $t4, $zero, 4
/* 66988 80065D88 3C018010 */  lui       $at, 0x8010
/* 6698C 80065D8C A02C2180 */  sb        $t4, 0x2180($at)
/* 66990 80065D90 02402025 */  or        $a0, $s2, $zero
/* 66994 80065D94 00002825 */  or        $a1, $zero, $zero
/* 66998 80065D98 0C015AB4 */  jal       func_80056AD0
/* 6699C 80065D9C 24060001 */  addiu     $a2, $zero, 1
/* 669A0 80065DA0 00001825 */  or        $v1, $zero, $zero
.L80065DA4:
/* 669A4 80065DA4 24630001 */  addiu     $v1, $v1, 1
/* 669A8 80065DA8 28610004 */  slti      $at, $v1, 4
/* 669AC 80065DAC 1420FFFD */  bnez      $at, .L80065DA4
/* 669B0 80065DB0 26310001 */  addiu     $s1, $s1, 1
/* 669B4 80065DB4 8A210000 */  lwl       $at, ($s1)
/* 669B8 80065DB8 9A210003 */  lwr       $at, 3($s1)
/* 669BC 80065DBC 27AD0030 */  addiu     $t5, $sp, 0x30
/* 669C0 80065DC0 27A30038 */  addiu     $v1, $sp, 0x38
/* 669C4 80065DC4 ADA10000 */  sw        $at, ($t5)
/* 669C8 80065DC8 8A2F0004 */  lwl       $t7, 4($s1)
/* 669CC 80065DCC 9A2F0007 */  lwr       $t7, 7($s1)
/* 669D0 80065DD0 ADAF0004 */  sw        $t7, 4($t5)
/* 669D4 80065DD4 8A210008 */  lwl       $at, 8($s1)
/* 669D8 80065DD8 9A21000B */  lwr       $at, 0xb($s1)
/* 669DC 80065DDC ADA10008 */  sw        $at, 8($t5)
/* 669E0 80065DE0 93A20031 */  lbu       $v0, 0x31($sp)
/* 669E4 80065DE4 305800C0 */  andi      $t8, $v0, 0xc0
/* 669E8 80065DE8 00182103 */  sra       $a0, $t8, 4
/* 669EC 80065DEC 1480000C */  bnez      $a0, .L80065E20
/* 669F0 80065DF0 27A20030 */  addiu     $v0, $sp, 0x30
.L80065DF4:
/* 669F4 80065DF4 90480004 */  lbu       $t0, 4($v0)
/* 669F8 80065DF8 24420004 */  addiu     $v0, $v0, 4
/* 669FC 80065DFC 26100004 */  addiu     $s0, $s0, 4
/* 66A00 80065E00 A208FFFC */  sb        $t0, -4($s0)
/* 66A04 80065E04 90490001 */  lbu       $t1, 1($v0)
/* 66A08 80065E08 A209FFFD */  sb        $t1, -3($s0)
/* 66A0C 80065E0C 904A0002 */  lbu       $t2, 2($v0)
/* 66A10 80065E10 A20AFFFE */  sb        $t2, -2($s0)
/* 66A14 80065E14 904B0003 */  lbu       $t3, 3($v0)
/* 66A18 80065E18 1443FFF6 */  bne       $v0, $v1, .L80065DF4
/* 66A1C 80065E1C A20BFFFF */  sb        $t3, -1($s0)
.L80065E20:
/* 66A20 80065E20 0C01630D */  jal       func_80058C34
/* 66A24 80065E24 AFA4004C */  sw        $a0, 0x4c($sp)
/* 66A28 80065E28 8FA2004C */  lw        $v0, 0x4c($sp)
.L80065E2C:
/* 66A2C 80065E2C 8FBF0024 */  lw        $ra, 0x24($sp)
/* 66A30 80065E30 8FB00018 */  lw        $s0, 0x18($sp)
/* 66A34 80065E34 8FB1001C */  lw        $s1, 0x1c($sp)
/* 66A38 80065E38 8FB20020 */  lw        $s2, 0x20($sp)
/* 66A3C 80065E3C 03E00008 */  jr        $ra
/* 66A40 80065E40 27BD0050 */  addiu     $sp, $sp, 0x50

glabel func_80065E44
/* 66A44 80065E44 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 66A48 80065E48 3C038010 */  lui       $v1, 0x8010
/* 66A4C 80065E4C 24634B70 */  addiu     $v1, $v1, 0x4b70
/* 66A50 80065E50 240F0001 */  addiu     $t7, $zero, 1
/* 66A54 80065E54 AC6F003C */  sw        $t7, 0x3c($v1)
/* 66A58 80065E58 24180002 */  addiu     $t8, $zero, 2
/* 66A5C 80065E5C 24190008 */  addiu     $t9, $zero, 8
/* 66A60 80065E60 24080004 */  addiu     $t0, $zero, 4
/* 66A64 80065E64 3C018010 */  lui       $at, 0x8010
/* 66A68 80065E68 3C028010 */  lui       $v0, 0x8010
/* 66A6C 80065E6C AFA40018 */  sw        $a0, 0x18($sp)
/* 66A70 80065E70 A3B80008 */  sb        $t8, 8($sp)
/* 66A74 80065E74 A3B90009 */  sb        $t9, 9($sp)
/* 66A78 80065E78 A3A8000A */  sb        $t0, 0xa($sp)
/* 66A7C 80065E7C A3A4000B */  sb        $a0, 0xb($sp)
/* 66A80 80065E80 24424B71 */  addiu     $v0, $v0, 0x4b71
/* 66A84 80065E84 A0204B70 */  sb        $zero, 0x4b70($at)
/* 66A88 80065E88 A0400002 */  sb        $zero, 2($v0)
/* 66A8C 80065E8C A0400001 */  sb        $zero, 1($v0)
/* 66A90 80065E90 A0400000 */  sb        $zero, ($v0)
/* 66A94 80065E94 27A90008 */  addiu     $t1, $sp, 8
/* 66A98 80065E98 8D210000 */  lw        $at, ($t1)
/* 66A9C 80065E9C 240C00FE */  addiu     $t4, $zero, 0xfe
/* 66AA0 80065EA0 2442000F */  addiu     $v0, $v0, 0xf
/* 66AA4 80065EA4 A841FFF4 */  swl       $at, -0xc($v0)
/* 66AA8 80065EA8 B841FFF7 */  swr       $at, -9($v0)
/* 66AAC 80065EAC 8D2B0004 */  lw        $t3, 4($t1)
/* 66AB0 80065EB0 A84BFFF8 */  swl       $t3, -8($v0)
/* 66AB4 80065EB4 B84BFFFB */  swr       $t3, -5($v0)
/* 66AB8 80065EB8 8D210008 */  lw        $at, 8($t1)
/* 66ABC 80065EBC A04C0000 */  sb        $t4, ($v0)
/* 66AC0 80065EC0 27BD0018 */  addiu     $sp, $sp, 0x18
/* 66AC4 80065EC4 A841FFFC */  swl       $at, -4($v0)
/* 66AC8 80065EC8 03E00008 */  jr        $ra
/* 66ACC 80065ECC B841FFFF */  swr       $at, -1($v0)

glabel func_80065ED0
/* 66AD0 80065ED0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 66AD4 80065ED4 AFBF001C */  sw        $ra, 0x1c($sp)
/* 66AD8 80065ED8 0C018AA4 */  jal       func_80062A90
/* 66ADC 80065EDC AFB00018 */  sw        $s0, 0x18($sp)
/* 66AE0 80065EE0 3C0E8008 */  lui       $t6, 0x8008
/* 66AE4 80065EE4 8DCEACF0 */  lw        $t6, -0x5310($t6)
/* 66AE8 80065EE8 00408025 */  or        $s0, $v0, $zero
/* 66AEC 80065EEC 02002025 */  or        $a0, $s0, $zero
/* 66AF0 80065EF0 8DCF0004 */  lw        $t7, 4($t6)
/* 66AF4 80065EF4 0C018AC0 */  jal       func_80062B00
/* 66AF8 80065EF8 AFAF0020 */  sw        $t7, 0x20($sp)
/* 66AFC 80065EFC 8FBF001C */  lw        $ra, 0x1c($sp)
/* 66B00 80065F00 8FA20020 */  lw        $v0, 0x20($sp)
/* 66B04 80065F04 8FB00018 */  lw        $s0, 0x18($sp)
/* 66B08 80065F08 03E00008 */  jr        $ra
/* 66B0C 80065F0C 27BD0028 */  addiu     $sp, $sp, 0x28

glabel func_80065F10
/* 66B10 80065F10 3C0EA404 */  lui       $t6, 0xa404
/* 66B14 80065F14 8DC50010 */  lw        $a1, 0x10($t6)
/* 66B18 80065F18 27BDFFF8 */  addiu     $sp, $sp, -8
/* 66B1C 80065F1C 30AF0001 */  andi      $t7, $a1, 1
/* 66B20 80065F20 15E00003 */  bnez      $t7, .L80065F30
/* 66B24 80065F24 00000000 */  nop       
/* 66B28 80065F28 10000004 */  b         .L80065F3C
/* 66B2C 80065F2C 2402FFFF */  addiu     $v0, $zero, -1
.L80065F30:
/* 66B30 80065F30 3C18A408 */  lui       $t8, 0xa408
/* 66B34 80065F34 AF040000 */  sw        $a0, ($t8)
/* 66B38 80065F38 00001025 */  or        $v0, $zero, $zero
.L80065F3C:
/* 66B3C 80065F3C 03E00008 */  jr        $ra
/* 66B40 80065F40 27BD0008 */  addiu     $sp, $sp, 8
/* 66B44 80065F44 00000000 */  nop       
/* 66B48 80065F48 00000000 */  nop       
/* 66B4C 80065F4C 00000000 */  nop       
