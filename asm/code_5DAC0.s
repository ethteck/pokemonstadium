.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005CEC0
/* 5DAC0 8005CEC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5DAC4 8005CEC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DAC8 8005CEC8 0C0197C4 */  jal        func_80065F10
/* 5DACC 8005CECC 00002025 */   or        $a0, $zero, $zero
/* 5DAD0 8005CED0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5DAD4 8005CED4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5DAD8 8005CED8 03E00008 */  jr         $ra
/* 5DADC 8005CEDC 00000000 */   nop       

glabel func_8005CEE0
/* 5DAE0 8005CEE0 44856000 */  mtc1       $a1, $f12
/* 5DAE4 8005CEE4 C4840000 */  lwc1       $f4, ($a0)
/* 5DAE8 8005CEE8 44867000 */  mtc1       $a2, $f14
/* 5DAEC 8005CEEC C4880010 */  lwc1       $f8, 0x10($a0)
/* 5DAF0 8005CEF0 460C2182 */  mul.s      $f6, $f4, $f12
/* 5DAF4 8005CEF4 44878000 */  mtc1       $a3, $f16
/* 5DAF8 8005CEF8 C4840020 */  lwc1       $f4, 0x20($a0)
/* 5DAFC 8005CEFC 460E4282 */  mul.s      $f10, $f8, $f14
/* 5DB00 8005CF00 8FAE0010 */  lw         $t6, 0x10($sp)
/* 5DB04 8005CF04 46102202 */  mul.s      $f8, $f4, $f16
/* 5DB08 8005CF08 460A3480 */  add.s      $f18, $f6, $f10
/* 5DB0C 8005CF0C C48A0030 */  lwc1       $f10, 0x30($a0)
/* 5DB10 8005CF10 46089180 */  add.s      $f6, $f18, $f8
/* 5DB14 8005CF14 46065100 */  add.s      $f4, $f10, $f6
/* 5DB18 8005CF18 E5C40000 */  swc1       $f4, ($t6)
/* 5DB1C 8005CF1C C4920004 */  lwc1       $f18, 4($a0)
/* 5DB20 8005CF20 C48A0014 */  lwc1       $f10, 0x14($a0)
/* 5DB24 8005CF24 8FAF0014 */  lw         $t7, 0x14($sp)
/* 5DB28 8005CF28 460C9202 */  mul.s      $f8, $f18, $f12
/* 5DB2C 8005CF2C C4920024 */  lwc1       $f18, 0x24($a0)
/* 5DB30 8005CF30 460E5182 */  mul.s      $f6, $f10, $f14
/* 5DB34 8005CF34 46064100 */  add.s      $f4, $f8, $f6
/* 5DB38 8005CF38 46109282 */  mul.s      $f10, $f18, $f16
/* 5DB3C 8005CF3C C4860034 */  lwc1       $f6, 0x34($a0)
/* 5DB40 8005CF40 460A2200 */  add.s      $f8, $f4, $f10
/* 5DB44 8005CF44 46083480 */  add.s      $f18, $f6, $f8
/* 5DB48 8005CF48 E5F20000 */  swc1       $f18, ($t7)
/* 5DB4C 8005CF4C C4840008 */  lwc1       $f4, 8($a0)
/* 5DB50 8005CF50 C4860018 */  lwc1       $f6, 0x18($a0)
/* 5DB54 8005CF54 8FB80018 */  lw         $t8, 0x18($sp)
/* 5DB58 8005CF58 460C2282 */  mul.s      $f10, $f4, $f12
/* 5DB5C 8005CF5C C4840028 */  lwc1       $f4, 0x28($a0)
/* 5DB60 8005CF60 460E3202 */  mul.s      $f8, $f6, $f14
/* 5DB64 8005CF64 46085480 */  add.s      $f18, $f10, $f8
/* 5DB68 8005CF68 46102182 */  mul.s      $f6, $f4, $f16
/* 5DB6C 8005CF6C C4880038 */  lwc1       $f8, 0x38($a0)
/* 5DB70 8005CF70 46069280 */  add.s      $f10, $f18, $f6
/* 5DB74 8005CF74 460A4100 */  add.s      $f4, $f8, $f10
/* 5DB78 8005CF78 03E00008 */  jr         $ra
/* 5DB7C 8005CF7C E7040000 */   swc1      $f4, ($t8)

glabel func_8005CF80
/* 5DB80 8005CF80 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 5DB84 8005CF84 44800000 */  mtc1       $zero, $f0
/* 5DB88 8005CF88 27A3001C */  addiu      $v1, $sp, 0x1c
/* 5DB8C 8005CF8C 27AB005C */  addiu      $t3, $sp, 0x5c
/* 5DB90 8005CF90 00803825 */  or         $a3, $a0, $zero
/* 5DB94 8005CF94 00A04025 */  or         $t0, $a1, $zero
/* 5DB98 8005CF98 240A0010 */  addiu      $t2, $zero, 0x10
.L8005CF9C:
/* 5DB9C 8005CF9C 00002025 */  or         $a0, $zero, $zero
/* 5DBA0 8005CFA0 00602825 */  or         $a1, $v1, $zero
/* 5DBA4 8005CFA4 01004825 */  or         $t1, $t0, $zero
/* 5DBA8 8005CFA8 E4A00000 */  swc1       $f0, ($a1)
/* 5DBAC 8005CFAC C52C0000 */  lwc1       $f12, ($t1)
/* 5DBB0 8005CFB0 C4EE0000 */  lwc1       $f14, ($a3)
/* 5DBB4 8005CFB4 24840004 */  addiu      $a0, $a0, 4
/* 5DBB8 8005CFB8 C4B00000 */  lwc1       $f16, ($a1)
/* 5DBBC 8005CFBC 460C7482 */  mul.s      $f18, $f14, $f12
/* 5DBC0 8005CFC0 508A0020 */  beql       $a0, $t2, .L8005D044
/* 5DBC4 8005CFC4 46128380 */   add.s     $f14, $f16, $f18
/* 5DBC8 8005CFC8 46128380 */  add.s      $f14, $f16, $f18
.L8005CFCC:
/* 5DBCC 8005CFCC 24840004 */  addiu      $a0, $a0, 4
/* 5DBD0 8005CFD0 24A50004 */  addiu      $a1, $a1, 4
/* 5DBD4 8005CFD4 25290004 */  addiu      $t1, $t1, 4
/* 5DBD8 8005CFD8 E4AEFFFC */  swc1       $f14, -4($a1)
/* 5DBDC 8005CFDC C4EE0004 */  lwc1       $f14, 4($a3)
/* 5DBE0 8005CFE0 C52C000C */  lwc1       $f12, 0xc($t1)
/* 5DBE4 8005CFE4 C4AAFFFC */  lwc1       $f10, -4($a1)
/* 5DBE8 8005CFE8 460C7302 */  mul.s      $f12, $f14, $f12
/* 5DBEC 8005CFEC 460C5300 */  add.s      $f12, $f10, $f12
/* 5DBF0 8005CFF0 E4ACFFFC */  swc1       $f12, -4($a1)
/* 5DBF4 8005CFF4 C4EC0008 */  lwc1       $f12, 8($a3)
/* 5DBF8 8005CFF8 C52A001C */  lwc1       $f10, 0x1c($t1)
/* 5DBFC 8005CFFC C4AEFFFC */  lwc1       $f14, -4($a1)
/* 5DC00 8005D000 460A6282 */  mul.s      $f10, $f12, $f10
/* 5DC04 8005D004 460A7280 */  add.s      $f10, $f14, $f10
/* 5DC08 8005D008 E4AAFFFC */  swc1       $f10, -4($a1)
/* 5DC0C 8005D00C C4EA000C */  lwc1       $f10, 0xc($a3)
/* 5DC10 8005D010 C52E002C */  lwc1       $f14, 0x2c($t1)
/* 5DC14 8005D014 C4ACFFFC */  lwc1       $f12, -4($a1)
/* 5DC18 8005D018 E4A00000 */  swc1       $f0, ($a1)
/* 5DC1C 8005D01C 460E5382 */  mul.s      $f14, $f10, $f14
/* 5DC20 8005D020 C4B00000 */  lwc1       $f16, ($a1)
/* 5DC24 8005D024 460E6380 */  add.s      $f14, $f12, $f14
/* 5DC28 8005D028 E4AEFFFC */  swc1       $f14, -4($a1)
/* 5DC2C 8005D02C C4EE0000 */  lwc1       $f14, ($a3)
/* 5DC30 8005D030 C52C0000 */  lwc1       $f12, ($t1)
/* 5DC34 8005D034 460C7482 */  mul.s      $f18, $f14, $f12
/* 5DC38 8005D038 548AFFE4 */  bnel       $a0, $t2, .L8005CFCC
/* 5DC3C 8005D03C 46128380 */   add.s     $f14, $f16, $f18
/* 5DC40 8005D040 46128380 */  add.s      $f14, $f16, $f18
.L8005D044:
/* 5DC44 8005D044 24A50004 */  addiu      $a1, $a1, 4
/* 5DC48 8005D048 25290004 */  addiu      $t1, $t1, 4
/* 5DC4C 8005D04C E4AEFFFC */  swc1       $f14, -4($a1)
/* 5DC50 8005D050 C52C000C */  lwc1       $f12, 0xc($t1)
/* 5DC54 8005D054 C4EE0004 */  lwc1       $f14, 4($a3)
/* 5DC58 8005D058 C4AAFFFC */  lwc1       $f10, -4($a1)
/* 5DC5C 8005D05C 460C7302 */  mul.s      $f12, $f14, $f12
/* 5DC60 8005D060 460C5300 */  add.s      $f12, $f10, $f12
/* 5DC64 8005D064 E4ACFFFC */  swc1       $f12, -4($a1)
/* 5DC68 8005D068 C52A001C */  lwc1       $f10, 0x1c($t1)
/* 5DC6C 8005D06C C4EC0008 */  lwc1       $f12, 8($a3)
/* 5DC70 8005D070 C4AEFFFC */  lwc1       $f14, -4($a1)
/* 5DC74 8005D074 460A6282 */  mul.s      $f10, $f12, $f10
/* 5DC78 8005D078 460A7280 */  add.s      $f10, $f14, $f10
/* 5DC7C 8005D07C E4AAFFFC */  swc1       $f10, -4($a1)
/* 5DC80 8005D080 C52E002C */  lwc1       $f14, 0x2c($t1)
/* 5DC84 8005D084 C4EA000C */  lwc1       $f10, 0xc($a3)
/* 5DC88 8005D088 C4ACFFFC */  lwc1       $f12, -4($a1)
/* 5DC8C 8005D08C 460E5382 */  mul.s      $f14, $f10, $f14
/* 5DC90 8005D090 460E6380 */  add.s      $f14, $f12, $f14
/* 5DC94 8005D094 E4AEFFFC */  swc1       $f14, -4($a1)
/* 5DC98 8005D098 24630010 */  addiu      $v1, $v1, 0x10
/* 5DC9C 8005D09C 006B082B */  sltu       $at, $v1, $t3
/* 5DCA0 8005D0A0 1420FFBE */  bnez       $at, .L8005CF9C
/* 5DCA4 8005D0A4 24E70010 */   addiu     $a3, $a3, 0x10
/* 5DCA8 8005D0A8 00C01825 */  or         $v1, $a2, $zero
/* 5DCAC 8005D0AC 27A4001C */  addiu      $a0, $sp, 0x1c
/* 5DCB0 8005D0B0 27A2005C */  addiu      $v0, $sp, 0x5c
.L8005D0B4:
/* 5DCB4 8005D0B4 C4860000 */  lwc1       $f6, ($a0)
/* 5DCB8 8005D0B8 24840010 */  addiu      $a0, $a0, 0x10
/* 5DCBC 8005D0BC 24630010 */  addiu      $v1, $v1, 0x10
/* 5DCC0 8005D0C0 E466FFF0 */  swc1       $f6, -0x10($v1)
/* 5DCC4 8005D0C4 C488FFF4 */  lwc1       $f8, -0xc($a0)
/* 5DCC8 8005D0C8 E468FFF4 */  swc1       $f8, -0xc($v1)
/* 5DCCC 8005D0CC C490FFF8 */  lwc1       $f16, -8($a0)
/* 5DCD0 8005D0D0 E470FFF8 */  swc1       $f16, -8($v1)
/* 5DCD4 8005D0D4 C48AFFFC */  lwc1       $f10, -4($a0)
/* 5DCD8 8005D0D8 1482FFF6 */  bne        $a0, $v0, .L8005D0B4
/* 5DCDC 8005D0DC E46AFFFC */   swc1      $f10, -4($v1)
/* 5DCE0 8005D0E0 03E00008 */  jr         $ra
/* 5DCE4 8005D0E4 27BD0068 */   addiu     $sp, $sp, 0x68
/* 5DCE8 8005D0E8 00000000 */  nop        
/* 5DCEC 8005D0EC 00000000 */  nop        
