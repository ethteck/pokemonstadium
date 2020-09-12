.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80048060
/* 48C60 80048060 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 48C64 80048064 AFA40058 */  sw        $a0, 0x58($sp)
/* 48C68 80048068 AFBF0024 */  sw        $ra, 0x24($sp)
/* 48C6C 8004806C AFB00020 */  sw        $s0, 0x20($sp)
/* 48C70 80048070 AFA5005C */  sw        $a1, 0x5c($sp)
/* 48C74 80048074 3C018008 */  lui       $at, 0x8008
/* 48C78 80048078 3C048008 */  lui       $a0, 0x8008
/* 48C7C 8004807C 00C08025 */  or        $s0, $a2, $zero
/* 48C80 80048080 AFA70064 */  sw        $a3, 0x64($sp)
/* 48C84 80048084 A3A00033 */  sb        $zero, 0x33($sp)
/* 48C88 80048088 A0208A20 */  sb        $zero, -0x75e0($at)
/* 48C8C 8004808C 8C848A18 */  lw        $a0, -0x75e8($a0)
/* 48C90 80048090 0C00E4AA */  jal       func_800392A8
/* 48C94 80048094 2405000A */  addiu     $a1, $zero, 0xa
/* 48C98 80048098 240100C8 */  addiu     $at, $zero, 0xc8
/* 48C9C 8004809C 16010004 */  bne       $s0, $at, .L800480B0
/* 48CA0 800480A0 00000000 */  nop       
/* 48CA4 800480A4 240E0001 */  addiu     $t6, $zero, 1
/* 48CA8 800480A8 10000007 */  b         .L800480C8
/* 48CAC 800480AC A3AE0033 */  sb        $t6, 0x33($sp)
.L800480B0:
/* 48CB0 800480B0 12000003 */  beqz      $s0, .L800480C0
/* 48CB4 800480B4 2E010098 */  sltiu     $at, $s0, 0x98
/* 48CB8 800480B8 14200003 */  bnez      $at, .L800480C8
/* 48CBC 800480BC 00000000 */  nop       
.L800480C0:
/* 48CC0 800480C0 100000E3 */  b         .L80048450
/* 48CC4 800480C4 00001025 */  or        $v0, $zero, $zero
.L800480C8:
/* 48CC8 800480C8 12000004 */  beqz      $s0, .L800480DC
/* 48CCC 800480CC 8FAF005C */  lw        $t7, 0x5c($sp)
/* 48CD0 800480D0 2DE100A6 */  sltiu     $at, $t7, 0xa6
/* 48CD4 800480D4 14200003 */  bnez      $at, .L800480E4
/* 48CD8 800480D8 8FA80064 */  lw        $t0, 0x64($sp)
.L800480DC:
/* 48CDC 800480DC 100000DC */  b         .L80048450
/* 48CE0 800480E0 00001025 */  or        $v0, $zero, $zero
.L800480E4:
/* 48CE4 800480E4 3103FF00 */  andi      $v1, $t0, 0xff00
/* 48CE8 800480E8 00031A02 */  srl       $v1, $v1, 8
/* 48CEC 800480EC 310800FF */  andi      $t0, $t0, 0xff
/* 48CF0 800480F0 2401000A */  addiu     $at, $zero, 0xa
/* 48CF4 800480F4 11010004 */  beq       $t0, $at, .L80048108
/* 48CF8 800480F8 306300FF */  andi      $v1, $v1, 0xff
/* 48CFC 800480FC 2401000B */  addiu     $at, $zero, 0xb
/* 48D00 80048100 15010008 */  bne       $t0, $at, .L80048124
/* 48D04 80048104 00000000 */  nop       
.L80048108:
/* 48D08 80048108 24010010 */  addiu     $at, $zero, 0x10
/* 48D0C 8004810C 10610003 */  beq       $v1, $at, .L8004811C
/* 48D10 80048110 24010020 */  addiu     $at, $zero, 0x20
/* 48D14 80048114 14610003 */  bne       $v1, $at, .L80048124
/* 48D18 80048118 00000000 */  nop       
.L8004811C:
/* 48D1C 8004811C 100000CC */  b         .L80048450
/* 48D20 80048120 00001025 */  or        $v0, $zero, $zero
.L80048124:
/* 48D24 80048124 3C038008 */  lui       $v1, 0x8008
/* 48D28 80048128 24638A10 */  addiu     $v1, $v1, -0x75f0
/* 48D2C 8004812C 00001025 */  or        $v0, $zero, $zero
/* 48D30 80048130 24040003 */  addiu     $a0, $zero, 3
.L80048134:
/* 48D34 80048134 90780000 */  lbu       $t8, ($v1)
/* 48D38 80048138 56180004 */  bnel      $s0, $t8, .L8004814C
/* 48D3C 8004813C 24420001 */  addiu     $v0, $v0, 1
/* 48D40 80048140 1000005A */  b         .L800482AC
/* 48D44 80048144 00403825 */  or        $a3, $v0, $zero
/* 48D48 80048148 24420001 */  addiu     $v0, $v0, 1
.L8004814C:
/* 48D4C 8004814C 1444FFF9 */  bne       $v0, $a0, .L80048134
/* 48D50 80048150 24630001 */  addiu     $v1, $v1, 1
/* 48D54 80048154 3C038008 */  lui       $v1, 0x8008
/* 48D58 80048158 24638A14 */  addiu     $v1, $v1, -0x75ec
/* 48D5C 8004815C 8C620000 */  lw        $v0, ($v1)
/* 48D60 80048160 93A90033 */  lbu       $t1, 0x33($sp)
/* 48D64 80048164 3C018008 */  lui       $at, 0x8008
/* 48D68 80048168 0044001B */  divu      $zero, $v0, $a0
/* 48D6C 8004816C 00003810 */  mfhi      $a3
/* 48D70 80048170 24590001 */  addiu     $t9, $v0, 1
/* 48D74 80048174 14800002 */  bnez      $a0, .L80048180
/* 48D78 80048178 00000000 */  nop       
/* 48D7C 8004817C 0007000D */  break     7
.L80048180:
/* 48D80 80048180 AC790000 */  sw        $t9, ($v1)
/* 48D84 80048184 00270821 */  addu      $at, $at, $a3
/* 48D88 80048188 11200002 */  beqz      $t1, .L80048194
/* 48D8C 8004818C A0308A10 */  sb        $s0, -0x75f0($at)
/* 48D90 80048190 24100097 */  addiu     $s0, $zero, 0x97
.L80048194:
/* 48D94 80048194 3C038010 */  lui       $v1, 0x8010
/* 48D98 80048198 8C63C6FC */  lw        $v1, -0x3904($v1)
/* 48D9C 8004819C 2610FFFF */  addiu     $s0, $s0, -1
/* 48DA0 800481A0 00106080 */  sll       $t4, $s0, 2
/* 48DA4 800481A4 8C6A0000 */  lw        $t2, ($v1)
/* 48DA8 800481A8 00107080 */  sll       $t6, $s0, 2
/* 48DAC 800481AC 3C188010 */  lui       $t8, 0x8010
/* 48DB0 800481B0 254BFFFF */  addiu     $t3, $t2, -1
/* 48DB4 800481B4 020B082B */  sltu      $at, $s0, $t3
/* 48DB8 800481B8 10200006 */  beqz      $at, .L800481D4
/* 48DBC 800481BC 3C058010 */  lui       $a1, 0x8010
/* 48DC0 800481C0 006C1021 */  addu      $v0, $v1, $t4
/* 48DC4 800481C4 8C44000C */  lw        $a0, 0xc($v0)
/* 48DC8 800481C8 8C4D0010 */  lw        $t5, 0x10($v0)
/* 48DCC 800481CC 10000006 */  b         .L800481E8
/* 48DD0 800481D0 01A43023 */  subu      $a2, $t5, $a0
.L800481D4:
/* 48DD4 800481D4 8F18C6E8 */  lw        $t8, -0x3918($t8)
/* 48DD8 800481D8 006E7821 */  addu      $t7, $v1, $t6
/* 48DDC 800481DC 8DE4000C */  lw        $a0, 0xc($t7)
/* 48DE0 800481E0 8F19001C */  lw        $t9, 0x1c($t8)
/* 48DE4 800481E4 03243023 */  subu      $a2, $t9, $a0
.L800481E8:
/* 48DE8 800481E8 8CA5C6DC */  lw        $a1, -0x3924($a1)
/* 48DEC 800481EC AFA7004C */  sw        $a3, 0x4c($sp)
/* 48DF0 800481F0 0C012B6C */  jal       func_8004ADB0
/* 48DF4 800481F4 AFA80064 */  sw        $t0, 0x64($sp)
/* 48DF8 800481F8 8FA7004C */  lw        $a3, 0x4c($sp)
/* 48DFC 800481FC 3C098010 */  lui       $t1, 0x8010
/* 48E00 80048200 2529C6B0 */  addiu     $t1, $t1, -0x3950
/* 48E04 80048204 00071080 */  sll       $v0, $a3, 2
/* 48E08 80048208 00491821 */  addu      $v1, $v0, $t1
/* 48E0C 8004820C 3C048010 */  lui       $a0, 0x8010
/* 48E10 80048210 8C84C6DC */  lw        $a0, -0x3924($a0)
/* 48E14 80048214 8C650000 */  lw        $a1, ($v1)
/* 48E18 80048218 AFA30028 */  sw        $v1, 0x28($sp)
/* 48E1C 8004821C AFA2002C */  sw        $v0, 0x2c($sp)
/* 48E20 80048220 0C0142D0 */  jal       func_80050B40
/* 48E24 80048224 240603E8 */  addiu     $a2, $zero, 0x3e8
/* 48E28 80048228 8FA30028 */  lw        $v1, 0x28($sp)
/* 48E2C 8004822C 0C00E5EF */  jal       func_800397BC
/* 48E30 80048230 8C640000 */  lw        $a0, ($v1)
/* 48E34 80048234 93AA0033 */  lbu       $t2, 0x33($sp)
/* 48E38 80048238 8FA2002C */  lw        $v0, 0x2c($sp)
/* 48E3C 8004823C 8FA7004C */  lw        $a3, 0x4c($sp)
/* 48E40 80048240 11400002 */  beqz      $t2, .L8004824C
/* 48E44 80048244 3C0B8010 */  lui       $t3, 0x8010
/* 48E48 80048248 24100097 */  addiu     $s0, $zero, 0x97
.L8004824C:
/* 48E4C 8004824C 8D6BC700 */  lw        $t3, -0x3900($t3)
/* 48E50 80048250 001060C0 */  sll       $t4, $s0, 3
/* 48E54 80048254 3C058010 */  lui       $a1, 0x8010
/* 48E58 80048258 016C1821 */  addu      $v1, $t3, $t4
/* 48E5C 8004825C 8C660008 */  lw        $a2, 8($v1)
/* 48E60 80048260 30CD0001 */  andi      $t5, $a2, 1
/* 48E64 80048264 51A00003 */  beql      $t5, $zero, .L80048274
/* 48E68 80048268 8C640004 */  lw        $a0, 4($v1)
/* 48E6C 8004826C 24C60001 */  addiu     $a2, $a2, 1
/* 48E70 80048270 8C640004 */  lw        $a0, 4($v1)
.L80048274:
/* 48E74 80048274 AFA7004C */  sw        $a3, 0x4c($sp)
/* 48E78 80048278 AFA2002C */  sw        $v0, 0x2c($sp)
/* 48E7C 8004827C 0C012B6C */  jal       func_8004ADB0
/* 48E80 80048280 8CA5C6DC */  lw        $a1, -0x3924($a1)
/* 48E84 80048284 8FA2002C */  lw        $v0, 0x2c($sp)
/* 48E88 80048288 3C058010 */  lui       $a1, 0x8010
/* 48E8C 8004828C 3C048010 */  lui       $a0, 0x8010
/* 48E90 80048290 00A22821 */  addu      $a1, $a1, $v0
/* 48E94 80048294 8CA5C6C0 */  lw        $a1, -0x3940($a1)
/* 48E98 80048298 8C84C6DC */  lw        $a0, -0x3924($a0)
/* 48E9C 8004829C 0C0142D0 */  jal       func_80050B40
/* 48EA0 800482A0 2406044C */  addiu     $a2, $zero, 0x44c
/* 48EA4 800482A4 8FA7004C */  lw        $a3, 0x4c($sp)
/* 48EA8 800482A8 8FA80064 */  lw        $t0, 0x64($sp)
.L800482AC:
/* 48EAC 800482AC 2D010011 */  sltiu     $at, $t0, 0x11
/* 48EB0 800482B0 10200032 */  beqz      $at, .L8004837C
/* 48EB4 800482B4 01002025 */  or        $a0, $t0, $zero
/* 48EB8 800482B8 00087080 */  sll       $t6, $t0, 2
/* 48EBC 800482BC 3C018008 */  lui       $at, 0x8008
/* 48EC0 800482C0 002E0821 */  addu      $at, $at, $t6
/* 48EC4 800482C4 8C2ED380 */  lw        $t6, -0x2c80($at)
/* 48EC8 800482C8 01C00008 */  jr        $t6
/* 48ECC 800482CC 00000000 */  nop       
/* 48ED0 800482D0 3C0F8010 */  lui       $t7, 0x8010
/* 48ED4 800482D4 3C188010 */  lui       $t8, 0x8010
/* 48ED8 800482D8 2718C6C0 */  addiu     $t8, $t8, -0x3940
/* 48EDC 800482DC 25EFC6B0 */  addiu     $t7, $t7, -0x3950
/* 48EE0 800482E0 00071080 */  sll       $v0, $a3, 2
/* 48EE4 800482E4 00003025 */  or        $a2, $zero, $zero
/* 48EE8 800482E8 004F1821 */  addu      $v1, $v0, $t7
/* 48EEC 800482EC 10000025 */  b         .L80048384
/* 48EF0 800482F0 00582821 */  addu      $a1, $v0, $t8
/* 48EF4 800482F4 3C198010 */  lui       $t9, 0x8010
/* 48EF8 800482F8 3C098010 */  lui       $t1, 0x8010
/* 48EFC 800482FC 2529C6C0 */  addiu     $t1, $t1, -0x3940
/* 48F00 80048300 2739C6B0 */  addiu     $t9, $t9, -0x3950
/* 48F04 80048304 00071080 */  sll       $v0, $a3, 2
/* 48F08 80048308 24060002 */  addiu     $a2, $zero, 2
/* 48F0C 8004830C 00591821 */  addu      $v1, $v0, $t9
/* 48F10 80048310 1000001C */  b         .L80048384
/* 48F14 80048314 00492821 */  addu      $a1, $v0, $t1
/* 48F18 80048318 3C0A8010 */  lui       $t2, 0x8010
/* 48F1C 8004831C 3C0B8010 */  lui       $t3, 0x8010
/* 48F20 80048320 256BC6C0 */  addiu     $t3, $t3, -0x3940
/* 48F24 80048324 254AC6B0 */  addiu     $t2, $t2, -0x3950
/* 48F28 80048328 00071080 */  sll       $v0, $a3, 2
/* 48F2C 8004832C 24060004 */  addiu     $a2, $zero, 4
/* 48F30 80048330 004A1821 */  addu      $v1, $v0, $t2
/* 48F34 80048334 10000013 */  b         .L80048384
/* 48F38 80048338 004B2821 */  addu      $a1, $v0, $t3
/* 48F3C 8004833C 3C0C8010 */  lui       $t4, 0x8010
/* 48F40 80048340 3C0D8010 */  lui       $t5, 0x8010
/* 48F44 80048344 25ADC6C0 */  addiu     $t5, $t5, -0x3940
/* 48F48 80048348 258CC6B0 */  addiu     $t4, $t4, -0x3950
/* 48F4C 8004834C 00071080 */  sll       $v0, $a3, 2
/* 48F50 80048350 00003025 */  or        $a2, $zero, $zero
/* 48F54 80048354 004C1821 */  addu      $v1, $v0, $t4
/* 48F58 80048358 1000000A */  b         .L80048384
/* 48F5C 8004835C 004D2821 */  addu      $a1, $v0, $t5
/* 48F60 80048360 8FB0005C */  lw        $s0, 0x5c($sp)
/* 48F64 80048364 3C188010 */  lui       $t8, 0x8010
/* 48F68 80048368 2718C6B0 */  addiu     $t8, $t8, -0x3950
/* 48F6C 8004836C 00077880 */  sll       $t7, $a3, 2
/* 48F70 80048370 01F81821 */  addu      $v1, $t7, $t8
/* 48F74 80048374 10000013 */  b         .L800483C4
/* 48F78 80048378 02003825 */  or        $a3, $s0, $zero
.L8004837C:
/* 48F7C 8004837C 10000034 */  b         .L80048450
/* 48F80 80048380 00001025 */  or        $v0, $zero, $zero
.L80048384:
/* 48F84 80048384 2401000B */  addiu     $at, $zero, 0xb
/* 48F88 80048388 54810003 */  bnel      $a0, $at, .L80048398
/* 48F8C 8004838C 8FA7005C */  lw        $a3, 0x5c($sp)
/* 48F90 80048390 AFA0005C */  sw        $zero, 0x5c($sp)
/* 48F94 80048394 8FA7005C */  lw        $a3, 0x5c($sp)
.L80048398:
/* 48F98 80048398 8CA40000 */  lw        $a0, ($a1)
/* 48F9C 8004839C 3C018008 */  lui       $at, 0x8008
/* 48FA0 800483A0 0007C880 */  sll       $t9, $a3, 2
/* 48FA4 800483A4 0327C823 */  subu      $t9, $t9, $a3
/* 48FA8 800483A8 0019C840 */  sll       $t9, $t9, 1
/* 48FAC 800483AC 24840010 */  addiu     $a0, $a0, 0x10
/* 48FB0 800483B0 03244821 */  addu      $t1, $t9, $a0
/* 48FB4 800483B4 01261021 */  addu      $v0, $t1, $a2
/* 48FB8 800483B8 904A0001 */  lbu       $t2, 1($v0)
/* 48FBC 800483BC 90500000 */  lbu       $s0, ($v0)
/* 48FC0 800483C0 A02A8A1C */  sb        $t2, -0x75e4($at)
.L800483C4:
/* 48FC4 800483C4 93AB0033 */  lbu       $t3, 0x33($sp)
/* 48FC8 800483C8 8C650000 */  lw        $a1, ($v1)
/* 48FCC 800483CC 93AC0033 */  lbu       $t4, 0x33($sp)
/* 48FD0 800483D0 15600006 */  bnez      $t3, .L800483EC
/* 48FD4 800483D4 8CA20000 */  lw        $v0, ($a1)
/* 48FD8 800483D8 0202082B */  sltu      $at, $s0, $v0
/* 48FDC 800483DC 14200003 */  bnez      $at, .L800483EC
/* 48FE0 800483E0 00000000 */  nop       
/* 48FE4 800483E4 1000001A */  b         .L80048450
/* 48FE8 800483E8 00001025 */  or        $v0, $zero, $zero
.L800483EC:
/* 48FEC 800483EC 1180000E */  beqz      $t4, .L80048428
/* 48FF0 800483F0 3C048010 */  lui       $a0, 0x8010
/* 48FF4 800483F4 2401002D */  addiu     $at, $zero, 0x2d
/* 48FF8 800483F8 10E10003 */  beq       $a3, $at, .L80048408
/* 48FFC 800483FC 240D0001 */  addiu     $t5, $zero, 1
/* 49000 80048400 2401002E */  addiu     $at, $zero, 0x2e
/* 49004 80048404 14E10002 */  bne       $a3, $at, .L80048410
.L80048408:
/* 49008 80048408 3C018008 */  lui       $at, 0x8008
/* 4900C 8004840C A02D8A20 */  sb        $t5, -0x75e0($at)
.L80048410:
/* 49010 80048410 12000003 */  beqz      $s0, .L80048420
/* 49014 80048414 02002025 */  or        $a0, $s0, $zero
/* 49018 80048418 0C013A04 */  jal       func_8004E810
/* 4901C 8004841C 2405000A */  addiu     $a1, $zero, 0xa
.L80048420:
/* 49020 80048420 1000000B */  b         .L80048450
/* 49024 80048424 00001025 */  or        $v0, $zero, $zero
.L80048428:
/* 49028 80048428 240F0080 */  addiu     $t7, $zero, 0x80
/* 4902C 8004842C 2418FFFF */  addiu     $t8, $zero, -1
/* 49030 80048430 AFB80014 */  sw        $t8, 0x14($sp)
/* 49034 80048434 AFAF0010 */  sw        $t7, 0x10($sp)
/* 49038 80048438 8C84C6AC */  lw        $a0, -0x3954($a0)
/* 4903C 8004843C 02003025 */  or        $a2, $s0, $zero
/* 49040 80048440 0C00E409 */  jal       func_80039024
/* 49044 80048444 24070080 */  addiu     $a3, $zero, 0x80
/* 49048 80048448 3C018008 */  lui       $at, 0x8008
/* 4904C 8004844C AC228A18 */  sw        $v0, -0x75e8($at)
.L80048450:
/* 49050 80048450 8FBF0024 */  lw        $ra, 0x24($sp)
/* 49054 80048454 8FB00020 */  lw        $s0, 0x20($sp)
/* 49058 80048458 27BD0058 */  addiu     $sp, $sp, 0x58
/* 4905C 8004845C 03E00008 */  jr        $ra
/* 49060 80048460 00000000 */  nop       

glabel func_80048464
/* 49064 80048464 3C028008 */  lui       $v0, 0x8008
/* 49068 80048468 90428A1C */  lbu       $v0, -0x75e4($v0)
/* 4906C 8004846C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 49070 80048470 AFBF0014 */  sw        $ra, 0x14($sp)
/* 49074 80048474 10400004 */  beqz      $v0, .L80048488
/* 49078 80048478 3C048008 */  lui       $a0, 0x8008
/* 4907C 8004847C 8C848A18 */  lw        $a0, -0x75e8($a0)
/* 49080 80048480 0C00E4AA */  jal       func_800392A8
/* 49084 80048484 00402825 */  or        $a1, $v0, $zero
.L80048488:
/* 49088 80048488 8FBF0014 */  lw        $ra, 0x14($sp)
/* 4908C 8004848C 27BD0018 */  addiu     $sp, $sp, 0x18
/* 49090 80048490 03E00008 */  jr        $ra
/* 49094 80048494 00000000 */  nop       
/* 49098 80048498 00000000 */  nop       
/* 4909C 8004849C 00000000 */  nop       