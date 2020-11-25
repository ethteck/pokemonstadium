.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004FE00
/* 50A00 8004FE00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 50A04 8004FE04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 50A08 8004FE08 AFA40028 */  sw         $a0, 0x28($sp)
/* 50A0C 8004FE0C 0C013F36 */  jal        func_8004FCD8
/* 50A10 8004FE10 24040001 */   addiu     $a0, $zero, 1
/* 50A14 8004FE14 8FAE0028 */  lw         $t6, 0x28($sp)
/* 50A18 8004FE18 3C038010 */  lui        $v1, 0x8010
/* 50A1C 8004FE1C 2463F9C0 */  addiu      $v1, $v1, -0x640
/* 50A20 8004FE20 3C028010 */  lui        $v0, 0x8010
/* 50A24 8004FE24 AC6E0000 */  sw         $t6, ($v1)
/* 50A28 8004FE28 8C42C6E4 */  lw         $v0, -0x391c($v0)
/* 50A2C 8004FE2C 25D84120 */  addiu      $t8, $t6, 0x4120
/* 50A30 8004FE30 AFB8001C */  sw         $t8, 0x1c($sp)
/* 50A34 8004FE34 8C590004 */  lw         $t9, 4($v0)
/* 50A38 8004FE38 8C440000 */  lw         $a0, ($v0)
/* 50A3C 8004FE3C 3C058010 */  lui        $a1, 0x8010
/* 50A40 8004FE40 8CA5C6DC */  lw         $a1, -0x3924($a1)
/* 50A44 8004FE44 0C012B6C */  jal        func_8004ADB0
/* 50A48 8004FE48 03243023 */   subu      $a2, $t9, $a0
/* 50A4C 8004FE4C 3C048010 */  lui        $a0, 0x8010
/* 50A50 8004FE50 3C058010 */  lui        $a1, 0x8010
/* 50A54 8004FE54 8CA5F9C0 */  lw         $a1, -0x640($a1)
/* 50A58 8004FE58 8C84C6DC */  lw         $a0, -0x3924($a0)
/* 50A5C 8004FE5C 0C0142D0 */  jal        func_80050B40
/* 50A60 8004FE60 24064120 */   addiu     $a2, $zero, 0x4120
/* 50A64 8004FE64 3C028010 */  lui        $v0, 0x8010
/* 50A68 8004FE68 8C42C6E4 */  lw         $v0, -0x391c($v0)
/* 50A6C 8004FE6C 8FA5001C */  lw         $a1, 0x1c($sp)
/* 50A70 8004FE70 8C440004 */  lw         $a0, 4($v0)
/* 50A74 8004FE74 8C48000C */  lw         $t0, 0xc($v0)
/* 50A78 8004FE78 0C012B6C */  jal        func_8004ADB0
/* 50A7C 8004FE7C 01043023 */   subu      $a2, $t0, $a0
/* 50A80 8004FE80 3C048010 */  lui        $a0, 0x8010
/* 50A84 8004FE84 8C84F9C0 */  lw         $a0, -0x640($a0)
/* 50A88 8004FE88 0C00E5E7 */  jal        func_8003979C
/* 50A8C 8004FE8C 8FA5001C */   lw        $a1, 0x1c($sp)
/* 50A90 8004FE90 3C038010 */  lui        $v1, 0x8010
/* 50A94 8004FE94 2463C820 */  addiu      $v1, $v1, -0x37e0
/* 50A98 8004FE98 8C690000 */  lw         $t1, ($v1)
/* 50A9C 8004FE9C 3C018000 */  lui        $at, 0x8000
/* 50AA0 8004FEA0 3C028010 */  lui        $v0, 0x8010
/* 50AA4 8004FEA4 01215025 */  or         $t2, $t1, $at
/* 50AA8 8004FEA8 AC6A0000 */  sw         $t2, ($v1)
/* 50AAC 8004FEAC 8C42C6E4 */  lw         $v0, -0x391c($v0)
/* 50AB0 8004FEB0 3C058010 */  lui        $a1, 0x8010
/* 50AB4 8004FEB4 8CA5C6DC */  lw         $a1, -0x3924($a1)
/* 50AB8 8004FEB8 8C44000C */  lw         $a0, 0xc($v0)
/* 50ABC 8004FEBC 8C4B0010 */  lw         $t3, 0x10($v0)
/* 50AC0 8004FEC0 0C012B6C */  jal        func_8004ADB0
/* 50AC4 8004FEC4 01643023 */   subu      $a2, $t3, $a0
/* 50AC8 8004FEC8 3C048010 */  lui        $a0, 0x8010
/* 50ACC 8004FECC 3C058010 */  lui        $a1, 0x8010
/* 50AD0 8004FED0 8CA5C680 */  lw         $a1, -0x3980($a1)
/* 50AD4 8004FED4 8C84C6DC */  lw         $a0, -0x3924($a0)
/* 50AD8 8004FED8 0C0142D0 */  jal        func_80050B40
/* 50ADC 8004FEDC 340698D8 */   ori       $a2, $zero, 0x98d8
/* 50AE0 8004FEE0 3C048010 */  lui        $a0, 0x8010
/* 50AE4 8004FEE4 3C058010 */  lui        $a1, 0x8010
/* 50AE8 8004FEE8 8CA5C680 */  lw         $a1, -0x3980($a1)
/* 50AEC 8004FEEC 0C00E3CC */  jal        func_80038F30
/* 50AF0 8004FEF0 8C84F9C0 */   lw        $a0, -0x640($a0)
/* 50AF4 8004FEF4 3C038008 */  lui        $v1, 0x8008
/* 50AF8 8004FEF8 24638E70 */  addiu      $v1, $v1, -0x7190
/* 50AFC 8004FEFC AC620000 */  sw         $v0, ($v1)
/* 50B00 8004FF00 00402025 */  or         $a0, $v0, $zero
/* 50B04 8004FF04 0C00E4F7 */  jal        func_800393DC
/* 50B08 8004FF08 24050070 */   addiu     $a1, $zero, 0x70
/* 50B0C 8004FF0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 50B10 8004FF10 3C028008 */  lui        $v0, 0x8008
/* 50B14 8004FF14 8C428E70 */  lw         $v0, -0x7190($v0)
/* 50B18 8004FF18 03E00008 */  jr         $ra
/* 50B1C 8004FF1C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004FF20
/* 50B20 8004FF20 3C028010 */  lui        $v0, 0x8010
/* 50B24 8004FF24 2442C820 */  addiu      $v0, $v0, -0x37e0
/* 50B28 8004FF28 8C4E0000 */  lw         $t6, ($v0)
/* 50B2C 8004FF2C 3C017FFF */  lui        $at, 0x7fff
/* 50B30 8004FF30 3421FFFF */  ori        $at, $at, 0xffff
/* 50B34 8004FF34 01C17824 */  and        $t7, $t6, $at
/* 50B38 8004FF38 03E00008 */  jr         $ra
/* 50B3C 8004FF3C AC4F0000 */   sw        $t7, ($v0)

glabel func_8004FF40
/* 50B40 8004FF40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 50B44 8004FF44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 50B48 8004FF48 AFA40020 */  sw         $a0, 0x20($sp)
/* 50B4C 8004FF4C AFA50024 */  sw         $a1, 0x24($sp)
/* 50B50 8004FF50 AFA60028 */  sw         $a2, 0x28($sp)
/* 50B54 8004FF54 AFA7002C */  sw         $a3, 0x2c($sp)
/* 50B58 8004FF58 8C8F0008 */  lw         $t7, 8($a0)
/* 50B5C 8004FF5C 51E0002A */  beql       $t7, $zero, .L80050008
/* 50B60 8004FF60 8FBF0014 */   lw        $ra, 0x14($sp)
/* 50B64 8004FF64 0C01257E */  jal        func_800495F8
/* 50B68 8004FF68 00000000 */   nop       
/* 50B6C 8004FF6C 10400025 */  beqz       $v0, .L80050004
/* 50B70 8004FF70 00403025 */   or        $a2, $v0, $zero
/* 50B74 8004FF74 93A20037 */  lbu        $v0, 0x37($sp)
/* 50B78 8004FF78 8FA30020 */  lw         $v1, 0x20($sp)
/* 50B7C 8004FF7C 3C188008 */  lui        $t8, %hi(D_80078584)
/* 50B80 8004FF80 28410080 */  slti       $at, $v0, 0x80
/* 50B84 8004FF84 14200002 */  bnez       $at, .L8004FF90
/* 50B88 8004FF88 00000000 */   nop       
/* 50B8C 8004FF8C 2402007F */  addiu      $v0, $zero, 0x7f
.L8004FF90:
/* 50B90 8004FF90 8F188584 */  lw         $t8, %lo(D_80078584)($t8)
/* 50B94 8004FF94 8C680008 */  lw         $t0, 8($v1)
/* 50B98 8004FF98 240B000D */  addiu      $t3, $zero, 0xd
/* 50B9C 8004FF9C 8F19001C */  lw         $t9, 0x1c($t8)
/* 50BA0 8004FFA0 8D090088 */  lw         $t1, 0x88($t0)
/* 50BA4 8004FFA4 ACC00000 */  sw         $zero, ($a2)
/* 50BA8 8004FFA8 A4CB0008 */  sh         $t3, 8($a2)
/* 50BAC 8004FFAC 03295021 */  addu       $t2, $t9, $t1
/* 50BB0 8004FFB0 ACCA0004 */  sw         $t2, 4($a2)
/* 50BB4 8004FFB4 846C001A */  lh         $t4, 0x1a($v1)
/* 50BB8 8004FFB8 A4CC000A */  sh         $t4, 0xa($a2)
/* 50BBC 8004FFBC 93AD0033 */  lbu        $t5, 0x33($sp)
/* 50BC0 8004FFC0 A0CD0012 */  sb         $t5, 0x12($a2)
/* 50BC4 8004FFC4 87AE002E */  lh         $t6, 0x2e($sp)
/* 50BC8 8004FFC8 A0C20013 */  sb         $v0, 0x13($a2)
/* 50BCC 8004FFCC A4CE0010 */  sh         $t6, 0x10($a2)
/* 50BD0 8004FFD0 C7A40028 */  lwc1       $f4, 0x28($sp)
/* 50BD4 8004FFD4 E4C4000C */  swc1       $f4, 0xc($a2)
/* 50BD8 8004FFD8 AFA6001C */  sw         $a2, 0x1c($sp)
/* 50BDC 8004FFDC 0C0125CD */  jal        func_80049734
/* 50BE0 8004FFE0 8FA40038 */   lw        $a0, 0x38($sp)
/* 50BE4 8004FFE4 8FA6001C */  lw         $a2, 0x1c($sp)
/* 50BE8 8004FFE8 24050003 */  addiu      $a1, $zero, 3
/* 50BEC 8004FFEC ACC20014 */  sw         $v0, 0x14($a2)
/* 50BF0 8004FFF0 8FAF0024 */  lw         $t7, 0x24($sp)
/* 50BF4 8004FFF4 ACCF0018 */  sw         $t7, 0x18($a2)
/* 50BF8 8004FFF8 8FB80020 */  lw         $t8, 0x20($sp)
/* 50BFC 8004FFFC 0C011D40 */  jal        func_80047500
/* 50C00 80050000 8F040008 */   lw        $a0, 8($t8)
.L80050004:
/* 50C04 80050004 8FBF0014 */  lw         $ra, 0x14($sp)
.L80050008:
/* 50C08 80050008 27BD0020 */  addiu      $sp, $sp, 0x20
/* 50C0C 8005000C 03E00008 */  jr         $ra
/* 50C10 80050010 00000000 */   nop       
/* 50C14 80050014 00000000 */  nop        
/* 50C18 80050018 00000000 */  nop        
/* 50C1C 8005001C 00000000 */  nop        
