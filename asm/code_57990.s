.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80056D90
/* 57990 80056D90 E7AC0000 */  swc1      $f12, ($sp)
/* 57994 80056D94 8FA20000 */  lw        $v0, ($sp)
/* 57998 80056D98 C7A40000 */  lwc1      $f4, ($sp)
/* 5799C 80056D9C 00021D83 */  sra       $v1, $v0, 0x16
/* 579A0 80056DA0 306E01FF */  andi      $t6, $v1, 0x1ff
/* 579A4 80056DA4 29C100FF */  slti      $at, $t6, 0xff
/* 579A8 80056DA8 10200019 */  beqz      $at, .L80056E10
/* 579AC 80056DAC 01C01825 */  or        $v1, $t6, $zero
/* 579B0 80056DB0 29C100E6 */  slti      $at, $t6, 0xe6
/* 579B4 80056DB4 14200014 */  bnez      $at, .L80056E08
/* 579B8 80056DB8 460020A1 */  cvt.d.s   $f2, $f4
/* 579BC 80056DBC 46221302 */  mul.d     $f12, $f2, $f2
/* 579C0 80056DC0 3C038008 */  lui       $v1, 0x8008
/* 579C4 80056DC4 2463E290 */  addiu     $v1, $v1, -0x1d70
/* 579C8 80056DC8 D4660020 */  ldc1      $f6, 0x20($v1)
/* 579CC 80056DCC D46A0018 */  ldc1      $f10, 0x18($v1)
/* 579D0 80056DD0 D4640010 */  ldc1      $f4, 0x10($v1)
/* 579D4 80056DD4 462C3202 */  mul.d     $f8, $f6, $f12
/* 579D8 80056DD8 462A4400 */  add.d     $f16, $f8, $f10
/* 579DC 80056DDC D46A0008 */  ldc1      $f10, 8($v1)
/* 579E0 80056DE0 462C8482 */  mul.d     $f18, $f16, $f12
/* 579E4 80056DE4 46249180 */  add.d     $f6, $f18, $f4
/* 579E8 80056DE8 462C3202 */  mul.d     $f8, $f6, $f12
/* 579EC 80056DEC 46285380 */  add.d     $f14, $f10, $f8
/* 579F0 80056DF0 462C1402 */  mul.d     $f16, $f2, $f12
/* 579F4 80056DF4 00000000 */  nop       
/* 579F8 80056DF8 462E8482 */  mul.d     $f18, $f16, $f14
/* 579FC 80056DFC 46229100 */  add.d     $f4, $f18, $f2
/* 57A00 80056E00 03E00008 */  jr        $ra
/* 57A04 80056E04 46202020 */  cvt.s.d   $f0, $f4
.L80056E08:
/* 57A08 80056E08 03E00008 */  jr        $ra
/* 57A0C 80056E0C C7A00000 */  lwc1      $f0, ($sp)
.L80056E10:
/* 57A10 80056E10 28610136 */  slti      $at, $v1, 0x136
/* 57A14 80056E14 10200044 */  beqz      $at, .L80056F28
/* 57A18 80056E18 C7A40000 */  lwc1      $f4, ($sp)
/* 57A1C 80056E1C C7A60000 */  lwc1      $f6, ($sp)
/* 57A20 80056E20 3C018008 */  lui       $at, 0x8008
/* 57A24 80056E24 D42AE2B8 */  ldc1      $f10, -0x1d48($at)
/* 57A28 80056E28 460030A1 */  cvt.d.s   $f2, $f6
/* 57A2C 80056E2C 44804800 */  mtc1      $zero, $f9
/* 57A30 80056E30 462A1002 */  mul.d     $f0, $f2, $f10
/* 57A34 80056E34 44804000 */  mtc1      $zero, $f8
/* 57A38 80056E38 3C013FE0 */  lui       $at, 0x3fe0
/* 57A3C 80056E3C 4620403E */  c.le.d    $f8, $f0
/* 57A40 80056E40 00000000 */  nop       
/* 57A44 80056E44 4502000B */  bc1fl     .L80056E74
/* 57A48 80056E48 44813800 */  mtc1      $at, $f7
/* 57A4C 80056E4C 3C013FE0 */  lui       $at, 0x3fe0
/* 57A50 80056E50 44818800 */  mtc1      $at, $f17
/* 57A54 80056E54 44808000 */  mtc1      $zero, $f16
/* 57A58 80056E58 00000000 */  nop       
/* 57A5C 80056E5C 46300480 */  add.d     $f18, $f0, $f16
/* 57A60 80056E60 4620910D */  trunc.w.d $f4, $f18
/* 57A64 80056E64 44022000 */  mfc1      $v0, $f4
/* 57A68 80056E68 10000009 */  b         .L80056E90
/* 57A6C 80056E6C 44828000 */  mtc1      $v0, $f16
/* 57A70 80056E70 44813800 */  mtc1      $at, $f7
.L80056E74:
/* 57A74 80056E74 44803000 */  mtc1      $zero, $f6
/* 57A78 80056E78 00000000 */  nop       
/* 57A7C 80056E7C 46260281 */  sub.d     $f10, $f0, $f6
/* 57A80 80056E80 4620520D */  trunc.w.d $f8, $f10
/* 57A84 80056E84 44024000 */  mfc1      $v0, $f8
/* 57A88 80056E88 00000000 */  nop       
/* 57A8C 80056E8C 44828000 */  mtc1      $v0, $f16
.L80056E90:
/* 57A90 80056E90 3C018008 */  lui       $at, 0x8008
/* 57A94 80056E94 D432E2C0 */  ldc1      $f18, -0x1d40($at)
/* 57A98 80056E98 46808021 */  cvt.d.w   $f0, $f16
/* 57A9C 80056E9C 3C018008 */  lui       $at, 0x8008
/* 57AA0 80056EA0 D426E2C8 */  ldc1      $f6, -0x1d38($at)
/* 57AA4 80056EA4 3C038008 */  lui       $v1, 0x8008
/* 57AA8 80056EA8 2463E290 */  addiu     $v1, $v1, -0x1d70
/* 57AAC 80056EAC 46320102 */  mul.d     $f4, $f0, $f18
/* 57AB0 80056EB0 D4680020 */  ldc1      $f8, 0x20($v1)
/* 57AB4 80056EB4 D4720018 */  ldc1      $f18, 0x18($v1)
/* 57AB8 80056EB8 30590001 */  andi      $t9, $v0, 1
/* 57ABC 80056EBC 46260282 */  mul.d     $f10, $f0, $f6
/* 57AC0 80056EC0 46241081 */  sub.d     $f2, $f2, $f4
/* 57AC4 80056EC4 462A1081 */  sub.d     $f2, $f2, $f10
/* 57AC8 80056EC8 D46A0010 */  ldc1      $f10, 0x10($v1)
/* 57ACC 80056ECC 46221302 */  mul.d     $f12, $f2, $f2
/* 57AD0 80056ED0 00000000 */  nop       
/* 57AD4 80056ED4 462C4402 */  mul.d     $f16, $f8, $f12
/* 57AD8 80056ED8 46328100 */  add.d     $f4, $f16, $f18
/* 57ADC 80056EDC D4720008 */  ldc1      $f18, 8($v1)
/* 57AE0 80056EE0 462C2182 */  mul.d     $f6, $f4, $f12
/* 57AE4 80056EE4 462A3200 */  add.d     $f8, $f6, $f10
/* 57AE8 80056EE8 462C4402 */  mul.d     $f16, $f8, $f12
/* 57AEC 80056EEC 17200007 */  bnez      $t9, .L80056F0C
/* 57AF0 80056EF0 46309380 */  add.d     $f14, $f18, $f16
/* 57AF4 80056EF4 462C1102 */  mul.d     $f4, $f2, $f12
/* 57AF8 80056EF8 00000000 */  nop       
/* 57AFC 80056EFC 462E2182 */  mul.d     $f6, $f4, $f14
/* 57B00 80056F00 46223280 */  add.d     $f10, $f6, $f2
/* 57B04 80056F04 03E00008 */  jr        $ra
/* 57B08 80056F08 46205020 */  cvt.s.d   $f0, $f10
.L80056F0C:
/* 57B0C 80056F0C 462C1202 */  mul.d     $f8, $f2, $f12
/* 57B10 80056F10 00000000 */  nop       
/* 57B14 80056F14 462E4482 */  mul.d     $f18, $f8, $f14
/* 57B18 80056F18 46229400 */  add.d     $f16, $f18, $f2
/* 57B1C 80056F1C 46208020 */  cvt.s.d   $f0, $f16
/* 57B20 80056F20 03E00008 */  jr        $ra
/* 57B24 80056F24 46000007 */  neg.s     $f0, $f0
.L80056F28:
/* 57B28 80056F28 46042032 */  c.eq.s    $f4, $f4
/* 57B2C 80056F2C 3C018008 */  lui       $at, 0x8008
/* 57B30 80056F30 45010004 */  bc1t      .L80056F44
/* 57B34 80056F34 00000000 */  nop       
/* 57B38 80056F38 3C018008 */  lui       $at, 0x8008
/* 57B3C 80056F3C 03E00008 */  jr        $ra
/* 57B40 80056F40 C420E5D0 */  lwc1      $f0, -0x1a30($at)
.L80056F44:
/* 57B44 80056F44 C420E2D0 */  lwc1      $f0, -0x1d30($at)
/* 57B48 80056F48 03E00008 */  jr        $ra
/* 57B4C 80056F4C 00000000 */  nop       

glabel func_80056F50
/* 57B50 80056F50 8C820000 */  lw        $v0, ($a0)
/* 57B54 80056F54 50400004 */  beql      $v0, $zero, .L80056F68
/* 57B58 80056F58 8C820004 */  lw        $v0, 4($a0)
/* 57B5C 80056F5C 8C8E0004 */  lw        $t6, 4($a0)
/* 57B60 80056F60 AC4E0004 */  sw        $t6, 4($v0)
/* 57B64 80056F64 8C820004 */  lw        $v0, 4($a0)
.L80056F68:
/* 57B68 80056F68 10400003 */  beqz      $v0, .L80056F78
/* 57B6C 80056F6C 00000000 */  nop       
/* 57B70 80056F70 8C8F0000 */  lw        $t7, ($a0)
/* 57B74 80056F74 AC4F0000 */  sw        $t7, ($v0)
.L80056F78:
/* 57B78 80056F78 03E00008 */  jr        $ra
/* 57B7C 80056F7C 00000000 */  nop       

glabel func_80056F80
/* 57B80 80056F80 8CAE0000 */  lw        $t6, ($a1)
/* 57B84 80056F84 AC850004 */  sw        $a1, 4($a0)
/* 57B88 80056F88 AC8E0000 */  sw        $t6, ($a0)
/* 57B8C 80056F8C 8CA20000 */  lw        $v0, ($a1)
/* 57B90 80056F90 10400002 */  beqz      $v0, .L80056F9C
/* 57B94 80056F94 00000000 */  nop       
/* 57B98 80056F98 AC440004 */  sw        $a0, 4($v0)
.L80056F9C:
/* 57B9C 80056F9C 03E00008 */  jr        $ra
/* 57BA0 80056FA0 ACA40000 */  sw        $a0, ($a1)

glabel func_80056FA4
/* 57BA4 80056FA4 3C0E8008 */  lui       $t6, 0x8008
/* 57BA8 80056FA8 8DCE9640 */  lw        $t6, -0x69c0($t6)
/* 57BAC 80056FAC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 57BB0 80056FB0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 57BB4 80056FB4 51C00006 */  beql      $t6, $zero, .L80056FD0
/* 57BB8 80056FB8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 57BBC 80056FBC 0C019640 */  jal       func_80065900
/* 57BC0 80056FC0 00000000 */  nop       
/* 57BC4 80056FC4 3C018008 */  lui       $at, 0x8008
/* 57BC8 80056FC8 AC209640 */  sw        $zero, -0x69c0($at)
/* 57BCC 80056FCC 8FBF0014 */  lw        $ra, 0x14($sp)
.L80056FD0:
/* 57BD0 80056FD0 27BD0018 */  addiu     $sp, $sp, 0x18
/* 57BD4 80056FD4 03E00008 */  jr        $ra
/* 57BD8 80056FD8 00000000 */  nop       

glabel func_80056FDC
/* 57BDC 80056FDC 3C028008 */  lui       $v0, 0x8008
/* 57BE0 80056FE0 24429640 */  addiu     $v0, $v0, -0x69c0
/* 57BE4 80056FE4 8C4E0000 */  lw        $t6, ($v0)
/* 57BE8 80056FE8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 57BEC 80056FEC AFBF0014 */  sw        $ra, 0x14($sp)
/* 57BF0 80056FF0 55C00004 */  bnel      $t6, $zero, .L80057004
/* 57BF4 80056FF4 8FBF0014 */  lw        $ra, 0x14($sp)
/* 57BF8 80056FF8 0C017D78 */  jal       func_8005F5E0
/* 57BFC 80056FFC AC440000 */  sw        $a0, ($v0)
/* 57C00 80057000 8FBF0014 */  lw        $ra, 0x14($sp)
.L80057004:
/* 57C04 80057004 27BD0018 */  addiu     $sp, $sp, 0x18
/* 57C08 80057008 03E00008 */  jr        $ra
/* 57C0C 8005700C 00000000 */  nop       

glabel func_80057010
/* 57C10 80057010 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 57C14 80057014 3C0E8010 */  lui       $t6, 0x8010
/* 57C18 80057018 AFBF0014 */  sw        $ra, 0x14($sp)
/* 57C1C 8005701C AFA40020 */  sw        $a0, 0x20($sp)
/* 57C20 80057020 25CE2100 */  addiu     $t6, $t6, 0x2100
/* 57C24 80057024 AFAE001C */  sw        $t6, 0x1c($sp)
/* 57C28 80057028 01C02825 */  or        $a1, $t6, $zero
/* 57C2C 8005702C 8FA40020 */  lw        $a0, 0x20($sp)
/* 57C30 80057030 0C018958 */  jal       func_80062560
/* 57C34 80057034 24060040 */  addiu     $a2, $zero, 0x40
/* 57C38 80057038 8FAF001C */  lw        $t7, 0x1c($sp)
/* 57C3C 8005703C 8DF80010 */  lw        $t8, 0x10($t7)
/* 57C40 80057040 13000005 */  beqz      $t8, .L80057058
/* 57C44 80057044 00000000 */  nop       
/* 57C48 80057048 0C016424 */  jal       func_80059090
/* 57C4C 8005704C 03002025 */  or        $a0, $t8, $zero
/* 57C50 80057050 8FB9001C */  lw        $t9, 0x1c($sp)
/* 57C54 80057054 AF220010 */  sw        $v0, 0x10($t9)
.L80057058:
/* 57C58 80057058 8FA8001C */  lw        $t0, 0x1c($sp)
/* 57C5C 8005705C 8D090018 */  lw        $t1, 0x18($t0)
/* 57C60 80057060 11200005 */  beqz      $t1, .L80057078
/* 57C64 80057064 00000000 */  nop       
/* 57C68 80057068 0C016424 */  jal       func_80059090
/* 57C6C 8005706C 01202025 */  or        $a0, $t1, $zero
/* 57C70 80057070 8FAA001C */  lw        $t2, 0x1c($sp)
/* 57C74 80057074 AD420018 */  sw        $v0, 0x18($t2)
.L80057078:
/* 57C78 80057078 8FAB001C */  lw        $t3, 0x1c($sp)
/* 57C7C 8005707C 8D6C0020 */  lw        $t4, 0x20($t3)
/* 57C80 80057080 11800005 */  beqz      $t4, .L80057098
/* 57C84 80057084 00000000 */  nop       
/* 57C88 80057088 0C016424 */  jal       func_80059090
/* 57C8C 8005708C 01802025 */  or        $a0, $t4, $zero
/* 57C90 80057090 8FAD001C */  lw        $t5, 0x1c($sp)
/* 57C94 80057094 ADA20020 */  sw        $v0, 0x20($t5)
.L80057098:
/* 57C98 80057098 8FAE001C */  lw        $t6, 0x1c($sp)
/* 57C9C 8005709C 8DCF0028 */  lw        $t7, 0x28($t6)
/* 57CA0 800570A0 11E00005 */  beqz      $t7, .L800570B8
/* 57CA4 800570A4 00000000 */  nop       
/* 57CA8 800570A8 0C016424 */  jal       func_80059090
/* 57CAC 800570AC 01E02025 */  or        $a0, $t7, $zero
/* 57CB0 800570B0 8FB8001C */  lw        $t8, 0x1c($sp)
/* 57CB4 800570B4 AF020028 */  sw        $v0, 0x28($t8)
.L800570B8:
/* 57CB8 800570B8 8FB9001C */  lw        $t9, 0x1c($sp)
/* 57CBC 800570BC 8F28002C */  lw        $t0, 0x2c($t9)
/* 57CC0 800570C0 11000005 */  beqz      $t0, .L800570D8
/* 57CC4 800570C4 00000000 */  nop       
/* 57CC8 800570C8 0C016424 */  jal       func_80059090
/* 57CCC 800570CC 01002025 */  or        $a0, $t0, $zero
/* 57CD0 800570D0 8FA9001C */  lw        $t1, 0x1c($sp)
/* 57CD4 800570D4 AD22002C */  sw        $v0, 0x2c($t1)
.L800570D8:
/* 57CD8 800570D8 8FAA001C */  lw        $t2, 0x1c($sp)
/* 57CDC 800570DC 8D4B0030 */  lw        $t3, 0x30($t2)
/* 57CE0 800570E0 11600005 */  beqz      $t3, .L800570F8
/* 57CE4 800570E4 00000000 */  nop       
/* 57CE8 800570E8 0C016424 */  jal       func_80059090
/* 57CEC 800570EC 01602025 */  or        $a0, $t3, $zero
/* 57CF0 800570F0 8FAC001C */  lw        $t4, 0x1c($sp)
/* 57CF4 800570F4 AD820030 */  sw        $v0, 0x30($t4)
.L800570F8:
/* 57CF8 800570F8 8FAD001C */  lw        $t5, 0x1c($sp)
/* 57CFC 800570FC 8DAE0038 */  lw        $t6, 0x38($t5)
/* 57D00 80057100 11C00005 */  beqz      $t6, .L80057118
/* 57D04 80057104 00000000 */  nop       
/* 57D08 80057108 0C016424 */  jal       func_80059090
/* 57D0C 8005710C 01C02025 */  or        $a0, $t6, $zero
/* 57D10 80057110 8FAF001C */  lw        $t7, 0x1c($sp)
/* 57D14 80057114 ADE20038 */  sw        $v0, 0x38($t7)
.L80057118:
/* 57D18 80057118 8FBF0014 */  lw        $ra, 0x14($sp)
/* 57D1C 8005711C 8FA2001C */  lw        $v0, 0x1c($sp)
/* 57D20 80057120 27BD0020 */  addiu     $sp, $sp, 0x20
/* 57D24 80057124 03E00008 */  jr        $ra
/* 57D28 80057128 00000000 */  nop       

glabel func_8005712C
/* 57D2C 8005712C 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 57D30 80057130 AFBF0014 */  sw        $ra, 0x14($sp)
/* 57D34 80057134 AFA40020 */  sw        $a0, 0x20($sp)
/* 57D38 80057138 0C015C04 */  jal       func_80057010
/* 57D3C 8005713C 8FA40020 */  lw        $a0, 0x20($sp)
/* 57D40 80057140 AFA2001C */  sw        $v0, 0x1c($sp)
/* 57D44 80057144 8FAE001C */  lw        $t6, 0x1c($sp)
/* 57D48 80057148 8DCF0004 */  lw        $t7, 4($t6)
/* 57D4C 8005714C 31F80001 */  andi      $t8, $t7, 1
/* 57D50 80057150 13000017 */  beqz      $t8, .L800571B0
/* 57D54 80057154 00000000 */  nop       
/* 57D58 80057158 8DD90038 */  lw        $t9, 0x38($t6)
/* 57D5C 8005715C 2401FFFE */  addiu     $at, $zero, -2
/* 57D60 80057160 ADD90018 */  sw        $t9, 0x18($t6)
/* 57D64 80057164 8FA8001C */  lw        $t0, 0x1c($sp)
/* 57D68 80057168 8D09003C */  lw        $t1, 0x3c($t0)
/* 57D6C 8005716C AD09001C */  sw        $t1, 0x1c($t0)
/* 57D70 80057170 8FAA0020 */  lw        $t2, 0x20($sp)
/* 57D74 80057174 8D4B0004 */  lw        $t3, 4($t2)
/* 57D78 80057178 01616024 */  and       $t4, $t3, $at
/* 57D7C 8005717C AD4C0004 */  sw        $t4, 4($t2)
/* 57D80 80057180 8FAD001C */  lw        $t5, 0x1c($sp)
/* 57D84 80057184 8DAF0004 */  lw        $t7, 4($t5)
/* 57D88 80057188 31F80004 */  andi      $t8, $t7, 4
/* 57D8C 8005718C 13000008 */  beqz      $t8, .L800571B0
/* 57D90 80057190 00000000 */  nop       
/* 57D94 80057194 8FB90020 */  lw        $t9, 0x20($sp)
/* 57D98 80057198 3C01A000 */  lui       $at, 0xa000
/* 57D9C 8005719C 8F2E0038 */  lw        $t6, 0x38($t9)
/* 57DA0 800571A0 25C90BFC */  addiu     $t1, $t6, 0xbfc
/* 57DA4 800571A4 01214025 */  or        $t0, $t1, $at
/* 57DA8 800571A8 8D0B0000 */  lw        $t3, ($t0)
/* 57DAC 800571AC ADAB0010 */  sw        $t3, 0x10($t5)
.L800571B0:
/* 57DB0 800571B0 8FA4001C */  lw        $a0, 0x1c($sp)
/* 57DB4 800571B4 0C016448 */  jal       func_80059120
/* 57DB8 800571B8 24050040 */  addiu     $a1, $zero, 0x40
/* 57DBC 800571BC 0C0193E4 */  jal       func_80064F90
/* 57DC0 800571C0 24042B00 */  addiu     $a0, $zero, 0x2b00
/* 57DC4 800571C4 3C040400 */  lui       $a0, 0x400
/* 57DC8 800571C8 0C0197C4 */  jal       func_80065F10
/* 57DCC 800571CC 34841000 */  ori       $a0, $a0, 0x1000
/* 57DD0 800571D0 2401FFFF */  addiu     $at, $zero, -1
/* 57DD4 800571D4 14410007 */  bne       $v0, $at, .L800571F4
/* 57DD8 800571D8 00000000 */  nop       
.L800571DC:
/* 57DDC 800571DC 3C040400 */  lui       $a0, 0x400
/* 57DE0 800571E0 0C0197C4 */  jal       func_80065F10
/* 57DE4 800571E4 34841000 */  ori       $a0, $a0, 0x1000
/* 57DE8 800571E8 2401FFFF */  addiu     $at, $zero, -1
/* 57DEC 800571EC 1041FFFB */  beq       $v0, $at, .L800571DC
/* 57DF0 800571F0 00000000 */  nop       
.L800571F4:
/* 57DF4 800571F4 3C050400 */  lui       $a1, 0x400
/* 57DF8 800571F8 34A50FC0 */  ori       $a1, $a1, 0xfc0
/* 57DFC 800571FC 24040001 */  addiu     $a0, $zero, 1
/* 57E00 80057200 8FA6001C */  lw        $a2, 0x1c($sp)
/* 57E04 80057204 0C016A14 */  jal       func_8005A850
/* 57E08 80057208 24070040 */  addiu     $a3, $zero, 0x40
/* 57E0C 8005720C 2401FFFF */  addiu     $at, $zero, -1
/* 57E10 80057210 1441000A */  bne       $v0, $at, .L8005723C
/* 57E14 80057214 00000000 */  nop       
.L80057218:
/* 57E18 80057218 3C050400 */  lui       $a1, 0x400
/* 57E1C 8005721C 34A50FC0 */  ori       $a1, $a1, 0xfc0
/* 57E20 80057220 24040001 */  addiu     $a0, $zero, 1
/* 57E24 80057224 8FA6001C */  lw        $a2, 0x1c($sp)
/* 57E28 80057228 0C016A14 */  jal       func_8005A850
/* 57E2C 8005722C 24070040 */  addiu     $a3, $zero, 0x40
/* 57E30 80057230 2401FFFF */  addiu     $at, $zero, -1
/* 57E34 80057234 1041FFF8 */  beq       $v0, $at, .L80057218
/* 57E38 80057238 00000000 */  nop       
.L8005723C:
/* 57E3C 8005723C 0C017950 */  jal       func_8005E540
/* 57E40 80057240 00000000 */  nop       
/* 57E44 80057244 10400005 */  beqz      $v0, .L8005725C
/* 57E48 80057248 00000000 */  nop       
.L8005724C:
/* 57E4C 8005724C 0C017950 */  jal       func_8005E540
/* 57E50 80057250 00000000 */  nop       
/* 57E54 80057254 1440FFFD */  bnez      $v0, .L8005724C
/* 57E58 80057258 00000000 */  nop       
.L8005725C:
/* 57E5C 8005725C 8FAC001C */  lw        $t4, 0x1c($sp)
/* 57E60 80057260 3C050400 */  lui       $a1, 0x400
/* 57E64 80057264 34A51000 */  ori       $a1, $a1, 0x1000
/* 57E68 80057268 24040001 */  addiu     $a0, $zero, 1
/* 57E6C 8005726C 8D860008 */  lw        $a2, 8($t4)
/* 57E70 80057270 0C016A14 */  jal       func_8005A850
/* 57E74 80057274 8D87000C */  lw        $a3, 0xc($t4)
/* 57E78 80057278 2401FFFF */  addiu     $at, $zero, -1
/* 57E7C 8005727C 1441000B */  bne       $v0, $at, .L800572AC
/* 57E80 80057280 00000000 */  nop       
.L80057284:
/* 57E84 80057284 8FAA001C */  lw        $t2, 0x1c($sp)
/* 57E88 80057288 3C050400 */  lui       $a1, 0x400
/* 57E8C 8005728C 34A51000 */  ori       $a1, $a1, 0x1000
/* 57E90 80057290 24040001 */  addiu     $a0, $zero, 1
/* 57E94 80057294 8D460008 */  lw        $a2, 8($t2)
/* 57E98 80057298 0C016A14 */  jal       func_8005A850
/* 57E9C 8005729C 8D47000C */  lw        $a3, 0xc($t2)
/* 57EA0 800572A0 2401FFFF */  addiu     $at, $zero, -1
/* 57EA4 800572A4 1041FFF7 */  beq       $v0, $at, .L80057284
/* 57EA8 800572A8 00000000 */  nop       
.L800572AC:
/* 57EAC 800572AC 8FBF0014 */  lw        $ra, 0x14($sp)
/* 57EB0 800572B0 27BD0020 */  addiu     $sp, $sp, 0x20
/* 57EB4 800572B4 03E00008 */  jr        $ra
/* 57EB8 800572B8 00000000 */  nop       

glabel func_800572BC
/* 57EBC 800572BC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 57EC0 800572C0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 57EC4 800572C4 0C017950 */  jal       func_8005E540
/* 57EC8 800572C8 AFA40018 */  sw        $a0, 0x18($sp)
/* 57ECC 800572CC 10400005 */  beqz      $v0, .L800572E4
/* 57ED0 800572D0 00000000 */  nop       
.L800572D4:
/* 57ED4 800572D4 0C017950 */  jal       func_8005E540
/* 57ED8 800572D8 00000000 */  nop       
/* 57EDC 800572DC 1440FFFD */  bnez      $v0, .L800572D4
/* 57EE0 800572E0 00000000 */  nop       
.L800572E4:
/* 57EE4 800572E4 0C0193E4 */  jal       func_80064F90
/* 57EE8 800572E8 24040125 */  addiu     $a0, $zero, 0x125
/* 57EEC 800572EC 8FBF0014 */  lw        $ra, 0x14($sp)
/* 57EF0 800572F0 27BD0018 */  addiu     $sp, $sp, 0x18
/* 57EF4 800572F4 03E00008 */  jr        $ra
/* 57EF8 800572F8 00000000 */  nop       
/* 57EFC 800572FC 00000000 */  nop       
