.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005B230
/* 5BE30 8005B230 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5BE34 8005B234 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5BE38 8005B238 AFA40028 */  sw         $a0, 0x28($sp)
/* 5BE3C 8005B23C 0C018AA4 */  jal        __osDisableInt
/* 5BE40 8005B240 AFB00018 */   sw        $s0, 0x18($sp)
/* 5BE44 8005B244 93AE002B */  lbu        $t6, 0x2b($sp)
/* 5BE48 8005B248 00408025 */  or         $s0, $v0, $zero
/* 5BE4C 8005B24C 11C00007 */  beqz       $t6, .L8005B26C
/* 5BE50 8005B250 00000000 */   nop       
/* 5BE54 8005B254 3C0F8008 */  lui        $t7, 0x8008
/* 5BE58 8005B258 8DEFACF4 */  lw         $t7, -0x530c($t7)
/* 5BE5C 8005B25C 95F80000 */  lhu        $t8, ($t7)
/* 5BE60 8005B260 37190040 */  ori        $t9, $t8, 0x40
/* 5BE64 8005B264 10000007 */  b          .L8005B284
/* 5BE68 8005B268 A5F90000 */   sh        $t9, ($t7)
.L8005B26C:
/* 5BE6C 8005B26C 3C088008 */  lui        $t0, 0x8008
/* 5BE70 8005B270 8D08ACF4 */  lw         $t0, -0x530c($t0)
/* 5BE74 8005B274 2401FFBF */  addiu      $at, $zero, -0x41
/* 5BE78 8005B278 95090000 */  lhu        $t1, ($t0)
/* 5BE7C 8005B27C 01215024 */  and        $t2, $t1, $at
/* 5BE80 8005B280 A50A0000 */  sh         $t2, ($t0)
.L8005B284:
/* 5BE84 8005B284 0C018AC0 */  jal        __osRestoreInt
/* 5BE88 8005B288 02002025 */   or        $a0, $s0, $zero
/* 5BE8C 8005B28C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5BE90 8005B290 8FB00018 */  lw         $s0, 0x18($sp)
/* 5BE94 8005B294 27BD0028 */  addiu      $sp, $sp, 0x28
/* 5BE98 8005B298 03E00008 */  jr         $ra
/* 5BE9C 8005B29C 00000000 */   nop       

glabel func_8005B2A0
/* 5BEA0 8005B2A0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 5BEA4 8005B2A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5BEA8 8005B2A8 240E0003 */  addiu      $t6, $zero, 3
/* 5BEAC 8005B2AC AFA40040 */  sw         $a0, 0x40($sp)
/* 5BEB0 8005B2B0 AFA50044 */  sw         $a1, 0x44($sp)
/* 5BEB4 8005B2B4 AFA0003C */  sw         $zero, 0x3c($sp)
/* 5BEB8 8005B2B8 A3A0001F */  sb         $zero, 0x1f($sp)
/* 5BEBC 8005B2BC 0C0162FC */  jal        func_80058BF0
/* 5BEC0 8005B2C0 AFAE0018 */   sw        $t6, 0x18($sp)
.L8005B2C4:
/* 5BEC4 8005B2C4 0C016D10 */  jal        func_8005B440
/* 5BEC8 8005B2C8 00002025 */   or        $a0, $zero, $zero
/* 5BECC 8005B2CC 3C058010 */  lui        $a1, 0x8010
/* 5BED0 8005B2D0 24A523F0 */  addiu      $a1, $a1, 0x23f0
/* 5BED4 8005B2D4 0C016A38 */  jal        func_8005A8E0
/* 5BED8 8005B2D8 24040001 */   addiu     $a0, $zero, 1
/* 5BEDC 8005B2DC AFA2003C */  sw         $v0, 0x3c($sp)
/* 5BEE0 8005B2E0 8FA40040 */  lw         $a0, 0x40($sp)
/* 5BEE4 8005B2E4 27A50038 */  addiu      $a1, $sp, 0x38
/* 5BEE8 8005B2E8 0C015AB4 */  jal        func_80056AD0
/* 5BEEC 8005B2EC 24060001 */   addiu     $a2, $zero, 1
/* 5BEF0 8005B2F0 3C058010 */  lui        $a1, 0x8010
/* 5BEF4 8005B2F4 24A523F0 */  addiu      $a1, $a1, 0x23f0
/* 5BEF8 8005B2F8 0C016A38 */  jal        func_8005A8E0
/* 5BEFC 8005B2FC 00002025 */   or        $a0, $zero, $zero
/* 5BF00 8005B300 AFA2003C */  sw         $v0, 0x3c($sp)
/* 5BF04 8005B304 8FA40040 */  lw         $a0, 0x40($sp)
/* 5BF08 8005B308 27A50038 */  addiu      $a1, $sp, 0x38
/* 5BF0C 8005B30C 0C015AB4 */  jal        func_80056AD0
/* 5BF10 8005B310 24060001 */   addiu     $a2, $zero, 1
/* 5BF14 8005B314 27A40037 */  addiu      $a0, $sp, 0x37
/* 5BF18 8005B318 0C016D44 */  jal        func_8005B510
/* 5BF1C 8005B31C 27A50024 */   addiu     $a1, $sp, 0x24
/* 5BF20 8005B320 3C0F8010 */  lui        $t7, 0x8010
/* 5BF24 8005B324 91EF2181 */  lbu        $t7, 0x2181($t7)
/* 5BF28 8005B328 AFA00020 */  sw         $zero, 0x20($sp)
/* 5BF2C 8005B32C 19E00014 */  blez       $t7, .L8005B380
/* 5BF30 8005B330 00000000 */   nop       
.L8005B334:
/* 5BF34 8005B334 8FB80020 */  lw         $t8, 0x20($sp)
/* 5BF38 8005B338 0018C880 */  sll        $t9, $t8, 2
/* 5BF3C 8005B33C 03B94021 */  addu       $t0, $sp, $t9
/* 5BF40 8005B340 91080026 */  lbu        $t0, 0x26($t0)
/* 5BF44 8005B344 31090004 */  andi       $t1, $t0, 4
/* 5BF48 8005B348 15200005 */  bnez       $t1, .L8005B360
/* 5BF4C 8005B34C 00000000 */   nop       
/* 5BF50 8005B350 8FAA0018 */  lw         $t2, 0x18($sp)
/* 5BF54 8005B354 254BFFFF */  addiu      $t3, $t2, -1
/* 5BF58 8005B358 10000009 */  b          .L8005B380
/* 5BF5C 8005B35C AFAB0018 */   sw        $t3, 0x18($sp)
.L8005B360:
/* 5BF60 8005B360 8FAC0020 */  lw         $t4, 0x20($sp)
/* 5BF64 8005B364 3C0E8010 */  lui        $t6, 0x8010
/* 5BF68 8005B368 91CE2181 */  lbu        $t6, 0x2181($t6)
/* 5BF6C 8005B36C 258D0001 */  addiu      $t5, $t4, 1
/* 5BF70 8005B370 AFAD0020 */  sw         $t5, 0x20($sp)
/* 5BF74 8005B374 01AE082A */  slt        $at, $t5, $t6
/* 5BF78 8005B378 1420FFEE */  bnez       $at, .L8005B334
/* 5BF7C 8005B37C 00000000 */   nop       
.L8005B380:
/* 5BF80 8005B380 3C0F8010 */  lui        $t7, 0x8010
/* 5BF84 8005B384 91EF2181 */  lbu        $t7, 0x2181($t7)
/* 5BF88 8005B388 8FB80020 */  lw         $t8, 0x20($sp)
/* 5BF8C 8005B38C 15F80002 */  bne        $t7, $t8, .L8005B398
/* 5BF90 8005B390 00000000 */   nop       
/* 5BF94 8005B394 AFA00018 */  sw         $zero, 0x18($sp)
.L8005B398:
/* 5BF98 8005B398 8FB90018 */  lw         $t9, 0x18($sp)
/* 5BF9C 8005B39C 1F20FFC9 */  bgtz       $t9, .L8005B2C4
/* 5BFA0 8005B3A0 00000000 */   nop       
/* 5BFA4 8005B3A4 3C088010 */  lui        $t0, 0x8010
/* 5BFA8 8005B3A8 91082181 */  lbu        $t0, 0x2181($t0)
/* 5BFAC 8005B3AC AFA00020 */  sw         $zero, 0x20($sp)
/* 5BFB0 8005B3B0 19000019 */  blez       $t0, .L8005B418
/* 5BFB4 8005B3B4 00000000 */   nop       
.L8005B3B8:
/* 5BFB8 8005B3B8 8FA90020 */  lw         $t1, 0x20($sp)
/* 5BFBC 8005B3BC 27AB0024 */  addiu      $t3, $sp, 0x24
/* 5BFC0 8005B3C0 00095080 */  sll        $t2, $t1, 2
/* 5BFC4 8005B3C4 014B6021 */  addu       $t4, $t2, $t3
/* 5BFC8 8005B3C8 918D0003 */  lbu        $t5, 3($t4)
/* 5BFCC 8005B3CC 15A0000A */  bnez       $t5, .L8005B3F8
/* 5BFD0 8005B3D0 00000000 */   nop       
/* 5BFD4 8005B3D4 918E0002 */  lbu        $t6, 2($t4)
/* 5BFD8 8005B3D8 31CF0001 */  andi       $t7, $t6, 1
/* 5BFDC 8005B3DC 11E00006 */  beqz       $t7, .L8005B3F8
/* 5BFE0 8005B3E0 00000000 */   nop       
/* 5BFE4 8005B3E4 93B8001F */  lbu        $t8, 0x1f($sp)
/* 5BFE8 8005B3E8 24190001 */  addiu      $t9, $zero, 1
/* 5BFEC 8005B3EC 01394004 */  sllv       $t0, $t9, $t1
/* 5BFF0 8005B3F0 03085025 */  or         $t2, $t8, $t0
/* 5BFF4 8005B3F4 A3AA001F */  sb         $t2, 0x1f($sp)
.L8005B3F8:
/* 5BFF8 8005B3F8 8FAB0020 */  lw         $t3, 0x20($sp)
/* 5BFFC 8005B3FC 3C0C8010 */  lui        $t4, 0x8010
/* 5C000 8005B400 918C2181 */  lbu        $t4, 0x2181($t4)
/* 5C004 8005B404 256D0001 */  addiu      $t5, $t3, 1
/* 5C008 8005B408 AFAD0020 */  sw         $t5, 0x20($sp)
/* 5C00C 8005B40C 01AC082A */  slt        $at, $t5, $t4
/* 5C010 8005B410 1420FFE9 */  bnez       $at, .L8005B3B8
/* 5C014 8005B414 00000000 */   nop       
.L8005B418:
/* 5C018 8005B418 0C01630D */  jal        func_80058C34
/* 5C01C 8005B41C 00000000 */   nop       
/* 5C020 8005B420 93AE001F */  lbu        $t6, 0x1f($sp)
/* 5C024 8005B424 8FAF0044 */  lw         $t7, 0x44($sp)
/* 5C028 8005B428 A1EE0000 */  sb         $t6, ($t7)
/* 5C02C 8005B42C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5C030 8005B430 8FA2003C */  lw         $v0, 0x3c($sp)
/* 5C034 8005B434 27BD0040 */  addiu      $sp, $sp, 0x40
/* 5C038 8005B438 03E00008 */  jr         $ra
/* 5C03C 8005B43C 00000000 */   nop       

glabel func_8005B440
/* 5C040 8005B440 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 5C044 8005B444 3C0D8010 */  lui        $t5, 0x8010
/* 5C048 8005B448 91AD2181 */  lbu        $t5, 0x2181($t5)
/* 5C04C 8005B44C 308400FF */  andi       $a0, $a0, 0xff
/* 5C050 8005B450 3C018010 */  lui        $at, 0x8010
/* 5C054 8005B454 3C0E8010 */  lui        $t6, 0x8010
/* 5C058 8005B458 A0242180 */  sb         $a0, 0x2180($at)
/* 5C05C 8005B45C 25CE23F0 */  addiu      $t6, $t6, 0x23f0
/* 5C060 8005B460 3C018010 */  lui        $at, 0x8010
/* 5C064 8005B464 240F0001 */  addiu      $t7, $zero, 1
/* 5C068 8005B468 241800FF */  addiu      $t8, $zero, 0xff
/* 5C06C 8005B46C 24190001 */  addiu      $t9, $zero, 1
/* 5C070 8005B470 24080003 */  addiu      $t0, $zero, 3
/* 5C074 8005B474 240900FF */  addiu      $t1, $zero, 0xff
/* 5C078 8005B478 240A00FF */  addiu      $t2, $zero, 0xff
/* 5C07C 8005B47C 240B00FF */  addiu      $t3, $zero, 0xff
/* 5C080 8005B480 240C00FF */  addiu      $t4, $zero, 0xff
/* 5C084 8005B484 AFAE000C */  sw         $t6, 0xc($sp)
/* 5C088 8005B488 AC2F242C */  sw         $t7, 0x242c($at)
/* 5C08C 8005B48C A3B80004 */  sb         $t8, 4($sp)
/* 5C090 8005B490 A3B90005 */  sb         $t9, 5($sp)
/* 5C094 8005B494 A3A80006 */  sb         $t0, 6($sp)
/* 5C098 8005B498 A3A40007 */  sb         $a0, 7($sp)
/* 5C09C 8005B49C A3A90008 */  sb         $t1, 8($sp)
/* 5C0A0 8005B4A0 A3AA0009 */  sb         $t2, 9($sp)
/* 5C0A4 8005B4A4 A3AB000A */  sb         $t3, 0xa($sp)
/* 5C0A8 8005B4A8 A3AC000B */  sb         $t4, 0xb($sp)
/* 5C0AC 8005B4AC 19A00013 */  blez       $t5, .L8005B4FC
/* 5C0B0 8005B4B0 AFA00000 */   sw        $zero, ($sp)
.L8005B4B4:
/* 5C0B4 8005B4B4 27AF0004 */  addiu      $t7, $sp, 4
/* 5C0B8 8005B4B8 8DE10000 */  lw         $at, ($t7)
/* 5C0BC 8005B4BC 8FAE000C */  lw         $t6, 0xc($sp)
/* 5C0C0 8005B4C0 3C0C8010 */  lui        $t4, 0x8010
/* 5C0C4 8005B4C4 A9C10000 */  swl        $at, ($t6)
/* 5C0C8 8005B4C8 B9C10003 */  swr        $at, 3($t6)
/* 5C0CC 8005B4CC 8DF90004 */  lw         $t9, 4($t7)
/* 5C0D0 8005B4D0 A9D90004 */  swl        $t9, 4($t6)
/* 5C0D4 8005B4D4 B9D90007 */  swr        $t9, 7($t6)
/* 5C0D8 8005B4D8 8FAA0000 */  lw         $t2, ($sp)
/* 5C0DC 8005B4DC 918C2181 */  lbu        $t4, 0x2181($t4)
/* 5C0E0 8005B4E0 8FA8000C */  lw         $t0, 0xc($sp)
/* 5C0E4 8005B4E4 254B0001 */  addiu      $t3, $t2, 1
/* 5C0E8 8005B4E8 016C082A */  slt        $at, $t3, $t4
/* 5C0EC 8005B4EC 25090008 */  addiu      $t1, $t0, 8
/* 5C0F0 8005B4F0 AFAB0000 */  sw         $t3, ($sp)
/* 5C0F4 8005B4F4 1420FFEF */  bnez       $at, .L8005B4B4
/* 5C0F8 8005B4F8 AFA9000C */   sw        $t1, 0xc($sp)
.L8005B4FC:
/* 5C0FC 8005B4FC 8FB8000C */  lw         $t8, 0xc($sp)
/* 5C100 8005B500 240D00FE */  addiu      $t5, $zero, 0xfe
/* 5C104 8005B504 27BD0010 */  addiu      $sp, $sp, 0x10
/* 5C108 8005B508 03E00008 */  jr         $ra
/* 5C10C 8005B50C A30D0000 */   sb        $t5, ($t8)

glabel func_8005B510
/* 5C110 8005B510 3C0F8010 */  lui        $t7, 0x8010
/* 5C114 8005B514 91EF2181 */  lbu        $t7, 0x2181($t7)
/* 5C118 8005B518 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5C11C 8005B51C 3C0E8010 */  lui        $t6, 0x8010
/* 5C120 8005B520 25CE23F0 */  addiu      $t6, $t6, 0x23f0
/* 5C124 8005B524 A3A00007 */  sb         $zero, 7($sp)
/* 5C128 8005B528 AFAE0014 */  sw         $t6, 0x14($sp)
/* 5C12C 8005B52C 19E00028 */  blez       $t7, .L8005B5D0
/* 5C130 8005B530 AFA00008 */   sw        $zero, 8($sp)
.L8005B534:
/* 5C134 8005B534 8FB90014 */  lw         $t9, 0x14($sp)
/* 5C138 8005B538 27B8000C */  addiu      $t8, $sp, 0xc
/* 5C13C 8005B53C 8B210000 */  lwl        $at, ($t9)
/* 5C140 8005B540 9B210003 */  lwr        $at, 3($t9)
/* 5C144 8005B544 AF010000 */  sw         $at, ($t8)
/* 5C148 8005B548 8B290004 */  lwl        $t1, 4($t9)
/* 5C14C 8005B54C 9B290007 */  lwr        $t1, 7($t9)
/* 5C150 8005B550 AF090004 */  sw         $t1, 4($t8)
/* 5C154 8005B554 93AA000E */  lbu        $t2, 0xe($sp)
/* 5C158 8005B558 314B00C0 */  andi       $t3, $t2, 0xc0
/* 5C15C 8005B55C 000B6103 */  sra        $t4, $t3, 4
/* 5C160 8005B560 A0AC0003 */  sb         $t4, 3($a1)
/* 5C164 8005B564 90AD0003 */  lbu        $t5, 3($a1)
/* 5C168 8005B568 15A0000E */  bnez       $t5, .L8005B5A4
/* 5C16C 8005B56C 00000000 */   nop       
/* 5C170 8005B570 93AE0011 */  lbu        $t6, 0x11($sp)
/* 5C174 8005B574 93A80010 */  lbu        $t0, 0x10($sp)
/* 5C178 8005B578 240B0001 */  addiu      $t3, $zero, 1
/* 5C17C 8005B57C 000E7A00 */  sll        $t7, $t6, 8
/* 5C180 8005B580 01E8C025 */  or         $t8, $t7, $t0
/* 5C184 8005B584 A4B80000 */  sh         $t8, ($a1)
/* 5C188 8005B588 93B90012 */  lbu        $t9, 0x12($sp)
/* 5C18C 8005B58C A0B90002 */  sb         $t9, 2($a1)
/* 5C190 8005B590 8FAA0008 */  lw         $t2, 8($sp)
/* 5C194 8005B594 93A90007 */  lbu        $t1, 7($sp)
/* 5C198 8005B598 014B6004 */  sllv       $t4, $t3, $t2
/* 5C19C 8005B59C 012C6825 */  or         $t5, $t1, $t4
/* 5C1A0 8005B5A0 A3AD0007 */  sb         $t5, 7($sp)
.L8005B5A4:
/* 5C1A4 8005B5A4 8FAE0008 */  lw         $t6, 8($sp)
/* 5C1A8 8005B5A8 3C198010 */  lui        $t9, 0x8010
/* 5C1AC 8005B5AC 93392181 */  lbu        $t9, 0x2181($t9)
/* 5C1B0 8005B5B0 8FA80014 */  lw         $t0, 0x14($sp)
/* 5C1B4 8005B5B4 25CF0001 */  addiu      $t7, $t6, 1
/* 5C1B8 8005B5B8 01F9082A */  slt        $at, $t7, $t9
/* 5C1BC 8005B5BC 25180008 */  addiu      $t8, $t0, 8
/* 5C1C0 8005B5C0 AFB80014 */  sw         $t8, 0x14($sp)
/* 5C1C4 8005B5C4 AFAF0008 */  sw         $t7, 8($sp)
/* 5C1C8 8005B5C8 1420FFDA */  bnez       $at, .L8005B534
/* 5C1CC 8005B5CC 24A50004 */   addiu     $a1, $a1, 4
.L8005B5D0:
/* 5C1D0 8005B5D0 93AB0007 */  lbu        $t3, 7($sp)
/* 5C1D4 8005B5D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5C1D8 8005B5D8 03E00008 */  jr         $ra
/* 5C1DC 8005B5DC A08B0000 */   sb        $t3, ($a0)

glabel func_8005B5E0
/* 5C1E0 8005B5E0 40085000 */  mfc0       $t0, $10
/* 5C1E4 8005B5E4 310900FF */  andi       $t1, $t0, 0xff
/* 5C1E8 8005B5E8 2401E000 */  addiu      $at, $zero, -0x2000
/* 5C1EC 8005B5EC 00815024 */  and        $t2, $a0, $at
/* 5C1F0 8005B5F0 012A4825 */  or         $t1, $t1, $t2
/* 5C1F4 8005B5F4 40895000 */  mtc0       $t1, $10
/* 5C1F8 8005B5F8 00000000 */  nop        
/* 5C1FC 8005B5FC 00000000 */  nop        
/* 5C200 8005B600 00000000 */  nop        
/* 5C204 8005B604 42000008 */  tlbp       
/* 5C208 8005B608 00000000 */  nop        
/* 5C20C 8005B60C 00000000 */  nop        
/* 5C210 8005B610 400B0000 */  mfc0       $t3, $0
/* 5C214 8005B614 3C018000 */  lui        $at, 0x8000
/* 5C218 8005B618 01615824 */  and        $t3, $t3, $at
/* 5C21C 8005B61C 1560001A */  bnez       $t3, .L8005B688
/* 5C220 8005B620 00000000 */   nop       
/* 5C224 8005B624 42000001 */  tlbr       
/* 5C228 8005B628 00000000 */  nop        
/* 5C22C 8005B62C 00000000 */  nop        
/* 5C230 8005B630 00000000 */  nop        
/* 5C234 8005B634 400B2800 */  mfc0       $t3, $5
/* 5C238 8005B638 216B2000 */  addi       $t3, $t3, 0x2000
/* 5C23C 8005B63C 000B5842 */  srl        $t3, $t3, 1
/* 5C240 8005B640 01646024 */  and        $t4, $t3, $a0
/* 5C244 8005B644 15800004 */  bnez       $t4, .L8005B658
/* 5C248 8005B648 216BFFFF */   addi      $t3, $t3, -1
/* 5C24C 8005B64C 40021000 */  mfc0       $v0, $2
/* 5C250 8005B650 10000002 */  b          .L8005B65C
/* 5C254 8005B654 00000000 */   nop       
.L8005B658:
/* 5C258 8005B658 40021800 */  mfc0       $v0, $3
.L8005B65C:
/* 5C25C 8005B65C 304D0002 */  andi       $t5, $v0, 2
/* 5C260 8005B660 11A00009 */  beqz       $t5, .L8005B688
/* 5C264 8005B664 00000000 */   nop       
/* 5C268 8005B668 3C013FFF */  lui        $at, 0x3fff
/* 5C26C 8005B66C 3421FFC0 */  ori        $at, $at, 0xffc0
/* 5C270 8005B670 00411024 */  and        $v0, $v0, $at
/* 5C274 8005B674 00021180 */  sll        $v0, $v0, 6
/* 5C278 8005B678 008B6824 */  and        $t5, $a0, $t3
/* 5C27C 8005B67C 004D1020 */  add        $v0, $v0, $t5
/* 5C280 8005B680 10000002 */  b          .L8005B68C
/* 5C284 8005B684 00000000 */   nop       
.L8005B688:
/* 5C288 8005B688 2402FFFF */  addiu      $v0, $zero, -1
.L8005B68C:
/* 5C28C 8005B68C 40885000 */  mtc0       $t0, $10
/* 5C290 8005B690 03E00008 */  jr         $ra
/* 5C294 8005B694 00000000 */   nop       
/* 5C298 8005B698 00000000 */  nop        
/* 5C29C 8005B69C 00000000 */  nop        
