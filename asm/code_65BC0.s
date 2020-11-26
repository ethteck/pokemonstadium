.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80064FC0
/* 65BC0 80064FC0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 65BC4 80064FC4 AFB00020 */  sw         $s0, 0x20($sp)
/* 65BC8 80064FC8 3C108008 */  lui        $s0, 0x8008
/* 65BCC 80064FCC 2610AE90 */  addiu      $s0, $s0, -0x5170
/* 65BD0 80064FD0 8E0E0000 */  lw         $t6, ($s0)
/* 65BD4 80064FD4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 65BD8 80064FD8 AFA40030 */  sw         $a0, 0x30($sp)
/* 65BDC 80064FDC 55C00054 */  bnel       $t6, $zero, .L80065130
/* 65BE0 80064FE0 8FBF0024 */   lw        $ra, 0x24($sp)
/* 65BE4 80064FE4 0C017C78 */  jal        func_8005F1E0
/* 65BE8 80064FE8 00000000 */   nop       
/* 65BEC 80064FEC 3C018008 */  lui        $at, 0x8008
/* 65BF0 80064FF0 3C048010 */  lui        $a0, 0x8010
/* 65BF4 80064FF4 3C058010 */  lui        $a1, 0x8010
/* 65BF8 80064FF8 AC20AEAC */  sw         $zero, -0x5154($at)
/* 65BFC 80064FFC 24A54B18 */  addiu      $a1, $a1, 0x4b18
/* 65C00 80065000 24844B00 */  addiu      $a0, $a0, 0x4b00
/* 65C04 80065004 0C0178E8 */  jal        func_8005E3A0
/* 65C08 80065008 24060005 */   addiu     $a2, $zero, 5
/* 65C0C 8006500C 3C068010 */  lui        $a2, 0x8010
/* 65C10 80065010 3C078010 */  lui        $a3, 0x8010
/* 65C14 80065014 24E74B48 */  addiu      $a3, $a3, 0x4b48
/* 65C18 80065018 24C64B30 */  addiu      $a2, $a2, 0x4b30
/* 65C1C 8006501C 240F000D */  addiu      $t7, $zero, 0xd
/* 65C20 80065020 2418000E */  addiu      $t8, $zero, 0xe
/* 65C24 80065024 3C058010 */  lui        $a1, 0x8010
/* 65C28 80065028 A4CF0000 */  sh         $t7, ($a2)
/* 65C2C 8006502C A0C00002 */  sb         $zero, 2($a2)
/* 65C30 80065030 ACC00004 */  sw         $zero, 4($a2)
/* 65C34 80065034 A4F80000 */  sh         $t8, ($a3)
/* 65C38 80065038 A0E00002 */  sb         $zero, 2($a3)
/* 65C3C 8006503C ACE00004 */  sw         $zero, 4($a3)
/* 65C40 80065040 24A54B00 */  addiu      $a1, $a1, 0x4b00
/* 65C44 80065044 0C01737C */  jal        func_8005CDF0
/* 65C48 80065048 24040007 */   addiu     $a0, $zero, 7
/* 65C4C 8006504C 3C078010 */  lui        $a3, 0x8010
/* 65C50 80065050 3C058010 */  lui        $a1, 0x8010
/* 65C54 80065054 24E64B48 */  addiu      $a2, $a3, 0x4b48
/* 65C58 80065058 24A54B00 */  addiu      $a1, $a1, 0x4b00
/* 65C5C 8006505C 0C01737C */  jal        func_8005CDF0
/* 65C60 80065060 24040003 */   addiu     $a0, $zero, 3
/* 65C64 80065064 2419FFFF */  addiu      $t9, $zero, -1
/* 65C68 80065068 AFB90028 */  sw         $t9, 0x28($sp)
/* 65C6C 8006506C 0C017A1C */  jal        func_8005E870
/* 65C70 80065070 00002025 */   or        $a0, $zero, $zero
/* 65C74 80065074 8FA80030 */  lw         $t0, 0x30($sp)
/* 65C78 80065078 00002025 */  or         $a0, $zero, $zero
/* 65C7C 8006507C 0048082A */  slt        $at, $v0, $t0
/* 65C80 80065080 10200003 */  beqz       $at, .L80065090
/* 65C84 80065084 01002825 */   or        $a1, $t0, $zero
/* 65C88 80065088 0C0179E4 */  jal        func_8005E790
/* 65C8C 8006508C AFA20028 */   sw        $v0, 0x28($sp)
.L80065090:
/* 65C90 80065090 0C018AA4 */  jal        __osDisableInt
/* 65C94 80065094 00000000 */   nop       
/* 65C98 80065098 8FAB0030 */  lw         $t3, 0x30($sp)
/* 65C9C 8006509C 3C038010 */  lui        $v1, 0x8010
/* 65CA0 800650A0 3C048010 */  lui        $a0, 0x8010
/* 65CA4 800650A4 3C0A8010 */  lui        $t2, 0x8010
/* 65CA8 800650A8 24843950 */  addiu      $a0, $a0, 0x3950
/* 65CAC 800650AC 24634B00 */  addiu      $v1, $v1, 0x4b00
/* 65CB0 800650B0 24090001 */  addiu      $t1, $zero, 1
/* 65CB4 800650B4 254A4B00 */  addiu      $t2, $t2, 0x4b00
/* 65CB8 800650B8 3C068006 */  lui        $a2, 0x8006
/* 65CBC 800650BC AFA2002C */  sw         $v0, 0x2c($sp)
/* 65CC0 800650C0 AE090000 */  sw         $t1, ($s0)
/* 65CC4 800650C4 AE040004 */  sw         $a0, 4($s0)
/* 65CC8 800650C8 AE030008 */  sw         $v1, 8($s0)
/* 65CCC 800650CC AE03000C */  sw         $v1, 0xc($s0)
/* 65CD0 800650D0 AE000010 */  sw         $zero, 0x10($s0)
/* 65CD4 800650D4 AE000014 */  sw         $zero, 0x14($s0)
/* 65CD8 800650D8 AE000018 */  sw         $zero, 0x18($s0)
/* 65CDC 800650DC 24C65140 */  addiu      $a2, $a2, 0x5140
/* 65CE0 800650E0 AFAA0010 */  sw         $t2, 0x10($sp)
/* 65CE4 800650E4 00002825 */  or         $a1, $zero, $zero
/* 65CE8 800650E8 02003825 */  or         $a3, $s0, $zero
/* 65CEC 800650EC 0C016330 */  jal        func_80058CC0
/* 65CF0 800650F0 AFAB0014 */   sw        $t3, 0x14($sp)
/* 65CF4 800650F4 0C018AC8 */  jal        func_80062B20
/* 65CF8 800650F8 00000000 */   nop       
/* 65CFC 800650FC 3C048010 */  lui        $a0, 0x8010
/* 65D00 80065100 0C0194DC */  jal        osStartThread
/* 65D04 80065104 24843950 */   addiu     $a0, $a0, 0x3950
/* 65D08 80065108 0C018AC0 */  jal        __osRestoreInt
/* 65D0C 8006510C 8FA4002C */   lw        $a0, 0x2c($sp)
/* 65D10 80065110 8FAC0028 */  lw         $t4, 0x28($sp)
/* 65D14 80065114 2401FFFF */  addiu      $at, $zero, -1
/* 65D18 80065118 00002025 */  or         $a0, $zero, $zero
/* 65D1C 8006511C 51810004 */  beql       $t4, $at, .L80065130
/* 65D20 80065120 8FBF0024 */   lw        $ra, 0x24($sp)
/* 65D24 80065124 0C0179E4 */  jal        func_8005E790
/* 65D28 80065128 01802825 */   or        $a1, $t4, $zero
/* 65D2C 8006512C 8FBF0024 */  lw         $ra, 0x24($sp)
.L80065130:
/* 65D30 80065130 8FB00020 */  lw         $s0, 0x20($sp)
/* 65D34 80065134 27BD0030 */  addiu      $sp, $sp, 0x30
/* 65D38 80065138 03E00008 */  jr         $ra
/* 65D3C 8006513C 00000000 */   nop       

glabel func_80065140
/* 65D40 80065140 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 65D44 80065144 AFBF0034 */  sw         $ra, 0x34($sp)
/* 65D48 80065148 AFB70030 */  sw         $s7, 0x30($sp)
/* 65D4C 8006514C 0080B825 */  or         $s7, $a0, $zero
/* 65D50 80065150 AFB6002C */  sw         $s6, 0x2c($sp)
/* 65D54 80065154 AFB50028 */  sw         $s5, 0x28($sp)
/* 65D58 80065158 AFB40024 */  sw         $s4, 0x24($sp)
/* 65D5C 8006515C AFB30020 */  sw         $s3, 0x20($sp)
/* 65D60 80065160 AFB2001C */  sw         $s2, 0x1c($sp)
/* 65D64 80065164 AFB10018 */  sw         $s1, 0x18($sp)
/* 65D68 80065168 AFB00014 */  sw         $s0, 0x14($sp)
/* 65D6C 8006516C 0C0194B4 */  jal        func_800652D0
/* 65D70 80065170 AFA00044 */   sw        $zero, 0x44($sp)
/* 65D74 80065174 94430002 */  lhu        $v1, 2($v0)
/* 65D78 80065178 3C018010 */  lui        $at, 0x8010
/* 65D7C 8006517C 2416000E */  addiu      $s6, $zero, 0xe
/* 65D80 80065180 14600004 */  bnez       $v1, .L80065194
/* 65D84 80065184 A4234B60 */   sh        $v1, 0x4b60($at)
/* 65D88 80065188 24030001 */  addiu      $v1, $zero, 1
/* 65D8C 8006518C 3C018010 */  lui        $at, 0x8010
/* 65D90 80065190 A4234B60 */  sh         $v1, 0x4b60($at)
.L80065194:
/* 65D94 80065194 3C138010 */  lui        $s3, 0x8010
/* 65D98 80065198 3C128010 */  lui        $s2, 0x8010
/* 65D9C 8006519C 3C118010 */  lui        $s1, 0x8010
/* 65DA0 800651A0 263138B0 */  addiu      $s1, $s1, 0x38b0
/* 65DA4 800651A4 265238B8 */  addiu      $s2, $s2, 0x38b8
/* 65DA8 800651A8 267338BC */  addiu      $s3, $s3, 0x38bc
/* 65DAC 800651AC 2415000D */  addiu      $s5, $zero, 0xd
/* 65DB0 800651B0 27B40044 */  addiu      $s4, $sp, 0x44
.L800651B4:
/* 65DB4 800651B4 8EE4000C */  lw         $a0, 0xc($s7)
.L800651B8:
/* 65DB8 800651B8 02802825 */  or         $a1, $s4, $zero
/* 65DBC 800651BC 0C015AB4 */  jal        func_80056AD0
/* 65DC0 800651C0 24060001 */   addiu     $a2, $zero, 1
/* 65DC4 800651C4 8FAE0044 */  lw         $t6, 0x44($sp)
/* 65DC8 800651C8 95C30000 */  lhu        $v1, ($t6)
/* 65DCC 800651CC 10750005 */  beq        $v1, $s5, .L800651E4
/* 65DD0 800651D0 00000000 */   nop       
/* 65DD4 800651D4 1076002A */  beq        $v1, $s6, .L80065280
/* 65DD8 800651D8 00000000 */   nop       
/* 65DDC 800651DC 1000FFF6 */  b          .L800651B8
/* 65DE0 800651E0 8EE4000C */   lw        $a0, 0xc($s7)
.L800651E4:
/* 65DE4 800651E4 0C018B18 */  jal        func_80062C60
/* 65DE8 800651E8 00000000 */   nop       
/* 65DEC 800651EC 3C038010 */  lui        $v1, 0x8010
/* 65DF0 800651F0 94634B60 */  lhu        $v1, 0x4b60($v1)
/* 65DF4 800651F4 3C018010 */  lui        $at, 0x8010
/* 65DF8 800651F8 2463FFFF */  addiu      $v1, $v1, -1
/* 65DFC 800651FC 306FFFFF */  andi       $t7, $v1, 0xffff
/* 65E00 80065200 15E0000E */  bnez       $t7, .L8006523C
/* 65E04 80065204 A42F4B60 */   sh        $t7, 0x4b60($at)
/* 65E08 80065208 0C0194B4 */  jal        func_800652D0
/* 65E0C 8006520C 00000000 */   nop       
/* 65E10 80065210 8C580010 */  lw         $t8, 0x10($v0)
/* 65E14 80065214 00408025 */  or         $s0, $v0, $zero
/* 65E18 80065218 00003025 */  or         $a2, $zero, $zero
/* 65E1C 8006521C 53000005 */  beql       $t8, $zero, .L80065234
/* 65E20 80065220 96030002 */   lhu       $v1, 2($s0)
/* 65E24 80065224 8C440010 */  lw         $a0, 0x10($v0)
/* 65E28 80065228 0C015A30 */  jal        osSendMesg
/* 65E2C 8006522C 8C450014 */   lw        $a1, 0x14($v0)
/* 65E30 80065230 96030002 */  lhu        $v1, 2($s0)
.L80065234:
/* 65E34 80065234 3C018010 */  lui        $at, 0x8010
/* 65E38 80065238 A4234B60 */  sh         $v1, 0x4b60($at)
.L8006523C:
/* 65E3C 8006523C 8E790000 */  lw         $t9, ($s3)
/* 65E40 80065240 8E500000 */  lw         $s0, ($s2)
/* 65E44 80065244 27280001 */  addiu      $t0, $t9, 1
/* 65E48 80065248 0C016F40 */  jal        func_8005BD00
/* 65E4C 8006524C AE680000 */   sw        $t0, ($s3)
/* 65E50 80065250 8E2D0004 */  lw         $t5, 4($s1)
/* 65E54 80065254 00508023 */  subu       $s0, $v0, $s0
/* 65E58 80065258 8E2C0000 */  lw         $t4, ($s1)
/* 65E5C 8006525C 020D7821 */  addu       $t7, $s0, $t5
/* 65E60 80065260 240A0000 */  addiu      $t2, $zero, 0
/* 65E64 80065264 01ED082B */  sltu       $at, $t7, $t5
/* 65E68 80065268 002A7021 */  addu       $t6, $at, $t2
/* 65E6C 8006526C 01CC7021 */  addu       $t6, $t6, $t4
/* 65E70 80065270 AE420000 */  sw         $v0, ($s2)
/* 65E74 80065274 AE2E0000 */  sw         $t6, ($s1)
/* 65E78 80065278 1000FFCE */  b          .L800651B4
/* 65E7C 8006527C AE2F0004 */   sw        $t7, 4($s1)
.L80065280:
/* 65E80 80065280 0C017C9B */  jal        func_8005F26C
/* 65E84 80065284 00000000 */   nop       
/* 65E88 80065288 1000FFCB */  b          .L800651B8
/* 65E8C 8006528C 8EE4000C */   lw        $a0, 0xc($s7)
/* 65E90 80065290 00000000 */  nop        
/* 65E94 80065294 00000000 */  nop        
/* 65E98 80065298 00000000 */  nop        
/* 65E9C 8006529C 00000000 */  nop        
/* 65EA0 800652A0 8FBF0034 */  lw         $ra, 0x34($sp)
/* 65EA4 800652A4 8FB00014 */  lw         $s0, 0x14($sp)
/* 65EA8 800652A8 8FB10018 */  lw         $s1, 0x18($sp)
/* 65EAC 800652AC 8FB2001C */  lw         $s2, 0x1c($sp)
/* 65EB0 800652B0 8FB30020 */  lw         $s3, 0x20($sp)
/* 65EB4 800652B4 8FB40024 */  lw         $s4, 0x24($sp)
/* 65EB8 800652B8 8FB50028 */  lw         $s5, 0x28($sp)
/* 65EBC 800652BC 8FB6002C */  lw         $s6, 0x2c($sp)
/* 65EC0 800652C0 8FB70030 */  lw         $s7, 0x30($sp)
/* 65EC4 800652C4 03E00008 */  jr         $ra
/* 65EC8 800652C8 27BD0050 */   addiu     $sp, $sp, 0x50
/* 65ECC 800652CC 00000000 */  nop        

glabel func_800652D0
/* 65ED0 800652D0 3C028008 */  lui        $v0, 0x8008
/* 65ED4 800652D4 03E00008 */  jr         $ra
/* 65ED8 800652D8 8C42ACF0 */   lw        $v0, -0x5310($v0)
/* 65EDC 800652DC 00000000 */  nop        

glabel func_800652E0
/* 65EE0 800652E0 3C088000 */  lui        $t0, 0x8000
/* 65EE4 800652E4 240A2000 */  addiu      $t2, $zero, 0x2000
/* 65EE8 800652E8 010A4821 */  addu       $t1, $t0, $t2
/* 65EEC 800652EC 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800652F0:
/* 65EF0 800652F0 BD010000 */  cache      1, ($t0)
/* 65EF4 800652F4 0109082B */  sltu       $at, $t0, $t1
/* 65EF8 800652F8 1420FFFD */  bnez       $at, .L800652F0
/* 65EFC 800652FC 25080010 */   addiu     $t0, $t0, 0x10
/* 65F00 80065300 03E00008 */  jr         $ra
/* 65F04 80065304 00000000 */   nop       
/* 65F08 80065308 00000000 */  nop        
/* 65F0C 8006530C 00000000 */  nop        
