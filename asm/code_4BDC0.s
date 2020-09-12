.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8004B1C0
/* 4BDC0 8004B1C0 3C018008 */  lui       $at, 0x8008
/* 4BDC4 8004B1C4 03E00008 */  jr        $ra
/* 4BDC8 8004B1C8 AC248EC8 */  sw        $a0, -0x7138($at)

glabel func_8004B1CC
/* 4BDCC 8004B1CC 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 4BDD0 8004B1D0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 4BDD4 8004B1D4 00803825 */  or        $a3, $a0, $zero
/* 4BDD8 8004B1D8 240E0080 */  addiu     $t6, $zero, 0x80
/* 4BDDC 8004B1DC AFAE001C */  sw        $t6, 0x1c($sp)
/* 4BDE0 8004B1E0 AFA70030 */  sw        $a3, 0x30($sp)
/* 4BDE4 8004B1E4 0C0113A0 */  jal       func_80044E80
/* 4BDE8 8004B1E8 24040001 */  addiu     $a0, $zero, 1
/* 4BDEC 8004B1EC 0C00E63C */  jal       func_800398F0
/* 4BDF0 8004B1F0 24040001 */  addiu     $a0, $zero, 1
/* 4BDF4 8004B1F4 8FA70030 */  lw        $a3, 0x30($sp)
/* 4BDF8 8004B1F8 3C018010 */  lui       $at, 0x8010
/* 4BDFC 8004B1FC 3C088008 */  lui       $t0, 0x8008
/* 4BE00 8004B200 AC27F9B4 */  sw        $a3, -0x64c($at)
/* 4BE04 8004B204 24010050 */  addiu     $at, $zero, 0x50
/* 4BE08 8004B208 14E1002C */  bne       $a3, $at, .L8004B2BC
/* 4BE0C 8004B20C 25088E7C */  addiu     $t0, $t0, -0x7184
/* 4BE10 8004B210 3C018008 */  lui       $at, 0x8008
/* 4BE14 8004B214 A0208E78 */  sb        $zero, -0x7188($at)
/* 4BE18 8004B218 A1000000 */  sb        $zero, ($t0)
/* 4BE1C 8004B21C 3C0F8008 */  lui       $t7, 0x8008
/* 4BE20 8004B220 91EF8ED0 */  lbu       $t7, -0x7130($t7)
/* 4BE24 8004B224 24010001 */  addiu     $at, $zero, 1
/* 4BE28 8004B228 3C048008 */  lui       $a0, 0x8008
/* 4BE2C 8004B22C 15E1000A */  bne       $t7, $at, .L8004B258
/* 4BE30 8004B230 00002825 */  or        $a1, $zero, $zero
/* 4BE34 8004B234 8C848ECC */  lw        $a0, -0x7134($a0)
/* 4BE38 8004B238 24060080 */  addiu     $a2, $zero, 0x80
/* 4BE3C 8004B23C 0C00E6E2 */  jal       func_80039B88
/* 4BE40 8004B240 24070050 */  addiu     $a3, $zero, 0x50
/* 4BE44 8004B244 24180002 */  addiu     $t8, $zero, 2
/* 4BE48 8004B248 3C018008 */  lui       $at, 0x8008
/* 4BE4C 8004B24C A0388ED0 */  sb        $t8, -0x7130($at)
/* 4BE50 8004B250 100001D8 */  b         .L8004B9B4
/* 4BE54 8004B254 00001025 */  or        $v0, $zero, $zero
.L8004B258:
/* 4BE58 8004B258 0C00E650 */  jal       func_80039940
/* 4BE5C 8004B25C 00000000 */  nop       
/* 4BE60 8004B260 3C018008 */  lui       $at, 0x8008
/* 4BE64 8004B264 3C048008 */  lui       $a0, 0x8008
/* 4BE68 8004B268 AC208E70 */  sw        $zero, -0x7190($at)
/* 4BE6C 8004B26C 8C848ECC */  lw        $a0, -0x7134($a0)
/* 4BE70 8004B270 0C00E4AA */  jal       func_800392A8
/* 4BE74 8004B274 24050001 */  addiu     $a1, $zero, 1
/* 4BE78 8004B278 3C018008 */  lui       $at, 0x8008
/* 4BE7C 8004B27C 3C040100 */  lui       $a0, 0x100
/* 4BE80 8004B280 A0208ED0 */  sb        $zero, -0x7130($at)
/* 4BE84 8004B284 34840003 */  ori       $a0, $a0, 3
/* 4BE88 8004B288 00002825 */  or        $a1, $zero, $zero
/* 4BE8C 8004B28C 0C013769 */  jal       func_8004DDA4
/* 4BE90 8004B290 00003025 */  or        $a2, $zero, $zero
/* 4BE94 8004B294 3C018008 */  lui       $at, 0x8008
/* 4BE98 8004B298 AC228ECC */  sw        $v0, -0x7134($at)
/* 4BE9C 8004B29C 3C088008 */  lui       $t0, 0x8008
/* 4BEA0 8004B2A0 3C018008 */  lui       $at, 0x8008
/* 4BEA4 8004B2A4 24190002 */  addiu     $t9, $zero, 2
/* 4BEA8 8004B2A8 25088E7C */  addiu     $t0, $t0, -0x7184
/* 4BEAC 8004B2AC 24070028 */  addiu     $a3, $zero, 0x28
/* 4BEB0 8004B2B0 A0398ED0 */  sb        $t9, -0x7130($at)
/* 4BEB4 8004B2B4 1000003E */  b         .L8004B3B0
/* 4BEB8 8004B2B8 24060001 */  addiu     $a2, $zero, 1
.L8004B2BC:
/* 4BEBC 8004B2BC 24010028 */  addiu     $at, $zero, 0x28
/* 4BEC0 8004B2C0 14E1002D */  bne       $a3, $at, .L8004B378
/* 4BEC4 8004B2C4 3C098008 */  lui       $t1, 0x8008
/* 4BEC8 8004B2C8 91298ED0 */  lbu       $t1, -0x7130($t1)
/* 4BECC 8004B2CC 3C018008 */  lui       $at, 0x8008
/* 4BED0 8004B2D0 A0208E78 */  sb        $zero, -0x7188($at)
/* 4BED4 8004B2D4 24010002 */  addiu     $at, $zero, 2
/* 4BED8 8004B2D8 1521000B */  bne       $t1, $at, .L8004B308
/* 4BEDC 8004B2DC 3C048008 */  lui       $a0, 0x8008
/* 4BEE0 8004B2E0 8C848ECC */  lw        $a0, -0x7134($a0)
/* 4BEE4 8004B2E4 24050080 */  addiu     $a1, $zero, 0x80
/* 4BEE8 8004B2E8 00003025 */  or        $a2, $zero, $zero
/* 4BEEC 8004B2EC 0C00E6E2 */  jal       func_80039B88
/* 4BEF0 8004B2F0 24070050 */  addiu     $a3, $zero, 0x50
/* 4BEF4 8004B2F4 24060001 */  addiu     $a2, $zero, 1
/* 4BEF8 8004B2F8 3C018008 */  lui       $at, 0x8008
/* 4BEFC 8004B2FC A0268ED0 */  sb        $a2, -0x7130($at)
/* 4BF00 8004B300 100001AC */  b         .L8004B9B4
/* 4BF04 8004B304 00001025 */  or        $v0, $zero, $zero
.L8004B308:
/* 4BF08 8004B308 0C00E650 */  jal       func_80039940
/* 4BF0C 8004B30C AFA70030 */  sw        $a3, 0x30($sp)
/* 4BF10 8004B310 3C018008 */  lui       $at, 0x8008
/* 4BF14 8004B314 3C048008 */  lui       $a0, 0x8008
/* 4BF18 8004B318 AC208E70 */  sw        $zero, -0x7190($at)
/* 4BF1C 8004B31C 8C848ECC */  lw        $a0, -0x7134($a0)
/* 4BF20 8004B320 0C00E4AA */  jal       func_800392A8
/* 4BF24 8004B324 24050001 */  addiu     $a1, $zero, 1
/* 4BF28 8004B328 3C018008 */  lui       $at, 0x8008
/* 4BF2C 8004B32C 3C040100 */  lui       $a0, 0x100
/* 4BF30 8004B330 A0208ED0 */  sb        $zero, -0x7130($at)
/* 4BF34 8004B334 34840003 */  ori       $a0, $a0, 3
/* 4BF38 8004B338 00002825 */  or        $a1, $zero, $zero
/* 4BF3C 8004B33C 0C013769 */  jal       func_8004DDA4
/* 4BF40 8004B340 00003025 */  or        $a2, $zero, $zero
/* 4BF44 8004B344 3C018008 */  lui       $at, 0x8008
/* 4BF48 8004B348 AC228ECC */  sw        $v0, -0x7134($at)
/* 4BF4C 8004B34C 3C048008 */  lui       $a0, 0x8008
/* 4BF50 8004B350 8C848ECC */  lw        $a0, -0x7134($a0)
/* 4BF54 8004B354 0C00E4F7 */  jal       func_800393DC
/* 4BF58 8004B358 00002825 */  or        $a1, $zero, $zero
/* 4BF5C 8004B35C 24060001 */  addiu     $a2, $zero, 1
/* 4BF60 8004B360 3C018008 */  lui       $at, 0x8008
/* 4BF64 8004B364 3C088008 */  lui       $t0, 0x8008
/* 4BF68 8004B368 8FA70030 */  lw        $a3, 0x30($sp)
/* 4BF6C 8004B36C 25088E7C */  addiu     $t0, $t0, -0x7184
/* 4BF70 8004B370 1000000F */  b         .L8004B3B0
/* 4BF74 8004B374 A0268ED0 */  sb        $a2, -0x7130($at)
.L8004B378:
/* 4BF78 8004B378 0C00E650 */  jal       func_80039940
/* 4BF7C 8004B37C AFA70030 */  sw        $a3, 0x30($sp)
/* 4BF80 8004B380 3C018008 */  lui       $at, 0x8008
/* 4BF84 8004B384 3C048008 */  lui       $a0, 0x8008
/* 4BF88 8004B388 AC208E70 */  sw        $zero, -0x7190($at)
/* 4BF8C 8004B38C 8C848ECC */  lw        $a0, -0x7134($a0)
/* 4BF90 8004B390 0C00E4AA */  jal       func_800392A8
/* 4BF94 8004B394 24050001 */  addiu     $a1, $zero, 1
/* 4BF98 8004B398 3C018008 */  lui       $at, 0x8008
/* 4BF9C 8004B39C 3C088008 */  lui       $t0, 0x8008
/* 4BFA0 8004B3A0 8FA70030 */  lw        $a3, 0x30($sp)
/* 4BFA4 8004B3A4 25088E7C */  addiu     $t0, $t0, -0x7184
/* 4BFA8 8004B3A8 A0208ED0 */  sb        $zero, -0x7130($at)
/* 4BFAC 8004B3AC 24060001 */  addiu     $a2, $zero, 1
.L8004B3B0:
/* 4BFB0 8004B3B0 24010032 */  addiu     $at, $zero, 0x32
/* 4BFB4 8004B3B4 14E10031 */  bne       $a3, $at, .L8004B47C
/* 4BFB8 8004B3B8 3C028008 */  lui       $v0, 0x8008
/* 4BFBC 8004B3BC 8C428404 */  lw        $v0, -0x7bfc($v0)
/* 4BFC0 8004B3C0 3C038008 */  lui       $v1, 0x8008
/* 4BFC4 8004B3C4 24638390 */  addiu     $v1, $v1, -0x7c70
/* 4BFC8 8004B3C8 2C41000C */  sltiu     $at, $v0, 0xc
/* 4BFCC 8004B3CC 1020000E */  beqz      $at, .L8004B408
/* 4BFD0 8004B3D0 00000000 */  nop       
/* 4BFD4 8004B3D4 906A0000 */  lbu       $t2, ($v1)
/* 4BFD8 8004B3D8 1940000B */  blez      $t2, .L8004B408
/* 4BFDC 8004B3DC 00000000 */  nop       
/* 4BFE0 8004B3E0 906B0001 */  lbu       $t3, 1($v1)
/* 4BFE4 8004B3E4 3C0C8008 */  lui       $t4, 0x8008
/* 4BFE8 8004B3E8 15600007 */  bnez      $t3, .L8004B408
/* 4BFEC 8004B3EC 00000000 */  nop       
/* 4BFF0 8004B3F0 8D8C8408 */  lw        $t4, -0x7bf8($t4)
/* 4BFF4 8004B3F4 24010008 */  addiu     $at, $zero, 8
/* 4BFF8 8004B3F8 15810003 */  bne       $t4, $at, .L8004B408
/* 4BFFC 8004B3FC 00000000 */  nop       
/* 4C000 8004B400 1000001E */  b         .L8004B47C
/* 4C004 8004B404 2407003C */  addiu     $a3, $zero, 0x3c
.L8004B408:
/* 4C008 8004B408 3C038008 */  lui       $v1, 0x8008
/* 4C00C 8004B40C 2401000D */  addiu     $at, $zero, 0xd
/* 4C010 8004B410 14410010 */  bne       $v0, $at, .L8004B454
/* 4C014 8004B414 24638390 */  addiu     $v1, $v1, -0x7c70
/* 4C018 8004B418 906D0000 */  lbu       $t5, ($v1)
/* 4C01C 8004B41C 59A0000E */  blezl     $t5, .L8004B458
/* 4C020 8004B420 2401000F */  addiu     $at, $zero, 0xf
/* 4C024 8004B424 906E0001 */  lbu       $t6, 1($v1)
/* 4C028 8004B428 3C0F8008 */  lui       $t7, 0x8008
/* 4C02C 8004B42C 55C0000A */  bnel      $t6, $zero, .L8004B458
/* 4C030 8004B430 2401000F */  addiu     $at, $zero, 0xf
/* 4C034 8004B434 8DEF8408 */  lw        $t7, -0x7bf8($t7)
/* 4C038 8004B438 24010005 */  addiu     $at, $zero, 5
/* 4C03C 8004B43C 2418003E */  addiu     $t8, $zero, 0x3e
/* 4C040 8004B440 15E10004 */  bne       $t7, $at, .L8004B454
/* 4C044 8004B444 3C018010 */  lui       $at, 0x8010
/* 4C048 8004B448 2407003E */  addiu     $a3, $zero, 0x3e
/* 4C04C 8004B44C 1000000B */  b         .L8004B47C
/* 4C050 8004B450 AC38F9B4 */  sw        $t8, -0x64c($at)
.L8004B454:
/* 4C054 8004B454 2401000F */  addiu     $at, $zero, 0xf
.L8004B458:
/* 4C058 8004B458 54410009 */  bnel      $v0, $at, .L8004B480
/* 4C05C 8004B45C 2401003F */  addiu     $at, $zero, 0x3f
/* 4C060 8004B460 90790000 */  lbu       $t9, ($v1)
/* 4C064 8004B464 5B200006 */  blezl     $t9, .L8004B480
/* 4C068 8004B468 2401003F */  addiu     $at, $zero, 0x3f
/* 4C06C 8004B46C 90690001 */  lbu       $t1, 1($v1)
/* 4C070 8004B470 55200003 */  bnel      $t1, $zero, .L8004B480
/* 4C074 8004B474 2401003F */  addiu     $at, $zero, 0x3f
/* 4C078 8004B478 24070040 */  addiu     $a3, $zero, 0x40
.L8004B47C:
/* 4C07C 8004B47C 2401003F */  addiu     $at, $zero, 0x3f
.L8004B480:
/* 4C080 8004B480 14E1000B */  bne       $a3, $at, .L8004B4B0
/* 4C084 8004B484 3C0A8008 */  lui       $t2, 0x8008
/* 4C088 8004B488 8D4A8404 */  lw        $t2, -0x7bfc($t2)
/* 4C08C 8004B48C 2401000D */  addiu     $at, $zero, 0xd
/* 4C090 8004B490 3C0B8008 */  lui       $t3, 0x8008
/* 4C094 8004B494 55410007 */  bnel      $t2, $at, .L8004B4B4
/* 4C098 8004B498 24010031 */  addiu     $at, $zero, 0x31
/* 4C09C 8004B49C 8D6B8408 */  lw        $t3, -0x7bf8($t3)
/* 4C0A0 8004B4A0 24010005 */  addiu     $at, $zero, 5
/* 4C0A4 8004B4A4 55610003 */  bnel      $t3, $at, .L8004B4B4
/* 4C0A8 8004B4A8 24010031 */  addiu     $at, $zero, 0x31
/* 4C0AC 8004B4AC 24070041 */  addiu     $a3, $zero, 0x41
.L8004B4B0:
/* 4C0B0 8004B4B0 24010031 */  addiu     $at, $zero, 0x31
.L8004B4B4:
/* 4C0B4 8004B4B4 14E10006 */  bne       $a3, $at, .L8004B4D0
/* 4C0B8 8004B4B8 3C028008 */  lui       $v0, 0x8008
/* 4C0BC 8004B4BC 24428E78 */  addiu     $v0, $v0, -0x7188
/* 4C0C0 8004B4C0 904C0000 */  lbu       $t4, ($v0)
/* 4C0C4 8004B4C4 11800002 */  beqz      $t4, .L8004B4D0
/* 4C0C8 8004B4C8 00000000 */  nop       
/* 4C0CC 8004B4CC 24070046 */  addiu     $a3, $zero, 0x46
.L8004B4D0:
/* 4C0D0 8004B4D0 3C028008 */  lui       $v0, 0x8008
/* 4C0D4 8004B4D4 2401003A */  addiu     $at, $zero, 0x3a
/* 4C0D8 8004B4D8 14E10005 */  bne       $a3, $at, .L8004B4F0
/* 4C0DC 8004B4DC 24428E78 */  addiu     $v0, $v0, -0x7188
/* 4C0E0 8004B4E0 910D0000 */  lbu       $t5, ($t0)
/* 4C0E4 8004B4E4 51A00003 */  beql      $t5, $zero, .L8004B4F4
/* 4C0E8 8004B4E8 2CE1005C */  sltiu     $at, $a3, 0x5c
/* 4C0EC 8004B4EC 24070048 */  addiu     $a3, $zero, 0x48
.L8004B4F0:
/* 4C0F0 8004B4F0 2CE1005C */  sltiu     $at, $a3, 0x5c
.L8004B4F4:
/* 4C0F4 8004B4F4 AFA7002C */  sw        $a3, 0x2c($sp)
/* 4C0F8 8004B4F8 102000D9 */  beqz      $at, .L8004B860
/* 4C0FC 8004B4FC AFA70018 */  sw        $a3, 0x18($sp)
/* 4C100 8004B500 00077080 */  sll       $t6, $a3, 2
/* 4C104 8004B504 3C018008 */  lui       $at, 0x8008
/* 4C108 8004B508 002E0821 */  addu      $at, $at, $t6
/* 4C10C 8004B50C 8C2ED510 */  lw        $t6, -0x2af0($at)
/* 4C110 8004B510 01C00008 */  jr        $t6
/* 4C114 8004B514 00000000 */  nop       
/* 4C118 8004B518 A0400000 */  sb        $zero, ($v0)
/* 4C11C 8004B51C A1000000 */  sb        $zero, ($t0)
/* 4C120 8004B520 3C018008 */  lui       $at, 0x8008
/* 4C124 8004B524 A0268E80 */  sb        $a2, -0x7180($at)
/* 4C128 8004B528 100000CF */  b         .L8004B868
/* 4C12C 8004B52C 24070098 */  addiu     $a3, $zero, 0x98
/* 4C130 8004B530 24070068 */  addiu     $a3, $zero, 0x68
/* 4C134 8004B534 3C018008 */  lui       $at, 0x8008
/* 4C138 8004B538 A0268E80 */  sb        $a2, -0x7180($at)
/* 4C13C 8004B53C AFA70020 */  sw        $a3, 0x20($sp)
/* 4C140 8004B540 00002025 */  or        $a0, $zero, $zero
/* 4C144 8004B544 0C00F646 */  jal       func_8003D918
/* 4C148 8004B548 2405000F */  addiu     $a1, $zero, 0xf
/* 4C14C 8004B54C 100000C6 */  b         .L8004B868
/* 4C150 8004B550 8FA70020 */  lw        $a3, 0x20($sp)
/* 4C154 8004B554 100000C4 */  b         .L8004B868
/* 4C158 8004B558 24070050 */  addiu     $a3, $zero, 0x50
/* 4C15C 8004B55C 100000C2 */  b         .L8004B868
/* 4C160 8004B560 24070078 */  addiu     $a3, $zero, 0x78
/* 4C164 8004B564 100000C0 */  b         .L8004B868
/* 4C168 8004B568 240700A0 */  addiu     $a3, $zero, 0xa0
/* 4C16C 8004B56C 100000BE */  b         .L8004B868
/* 4C170 8004B570 24070060 */  addiu     $a3, $zero, 0x60
/* 4C174 8004B574 100000BC */  b         .L8004B868
/* 4C178 8004B578 24070060 */  addiu     $a3, $zero, 0x60
/* 4C17C 8004B57C 100000BA */  b         .L8004B868
/* 4C180 8004B580 24070060 */  addiu     $a3, $zero, 0x60
/* 4C184 8004B584 100000B8 */  b         .L8004B868
/* 4C188 8004B588 24070060 */  addiu     $a3, $zero, 0x60
/* 4C18C 8004B58C 100000B6 */  b         .L8004B868
/* 4C190 8004B590 24070060 */  addiu     $a3, $zero, 0x60
/* 4C194 8004B594 100000B4 */  b         .L8004B868
/* 4C198 8004B598 24070058 */  addiu     $a3, $zero, 0x58
/* 4C19C 8004B59C 100000B2 */  b         .L8004B868
/* 4C1A0 8004B5A0 24070060 */  addiu     $a3, $zero, 0x60
/* 4C1A4 8004B5A4 3C078008 */  lui       $a3, 0x8008
/* 4C1A8 8004B5A8 100000AF */  b         .L8004B868
/* 4C1AC 8004B5AC 8CE78E74 */  lw        $a3, -0x718c($a3)
/* 4C1B0 8004B5B0 100000AD */  b         .L8004B868
/* 4C1B4 8004B5B4 24070065 */  addiu     $a3, $zero, 0x65
/* 4C1B8 8004B5B8 100000AB */  b         .L8004B868
/* 4C1BC 8004B5BC 24070070 */  addiu     $a3, $zero, 0x70
/* 4C1C0 8004B5C0 100000A9 */  b         .L8004B868
/* 4C1C4 8004B5C4 24070070 */  addiu     $a3, $zero, 0x70
/* 4C1C8 8004B5C8 100000A7 */  b         .L8004B868
/* 4C1CC 8004B5CC 24070050 */  addiu     $a3, $zero, 0x50
/* 4C1D0 8004B5D0 24070060 */  addiu     $a3, $zero, 0x60
/* 4C1D4 8004B5D4 0C012C55 */  jal       func_8004B154
/* 4C1D8 8004B5D8 AFA70020 */  sw        $a3, 0x20($sp)
/* 4C1DC 8004B5DC 100000A2 */  b         .L8004B868
/* 4C1E0 8004B5E0 8FA70020 */  lw        $a3, 0x20($sp)
/* 4C1E4 8004B5E4 24070058 */  addiu     $a3, $zero, 0x58
/* 4C1E8 8004B5E8 0C012C55 */  jal       func_8004B154
/* 4C1EC 8004B5EC AFA70020 */  sw        $a3, 0x20($sp)
/* 4C1F0 8004B5F0 1000009D */  b         .L8004B868
/* 4C1F4 8004B5F4 8FA70020 */  lw        $a3, 0x20($sp)
/* 4C1F8 8004B5F8 1000009B */  b         .L8004B868
/* 4C1FC 8004B5FC 24070070 */  addiu     $a3, $zero, 0x70
/* 4C200 8004B600 10000099 */  b         .L8004B868
/* 4C204 8004B604 24070068 */  addiu     $a3, $zero, 0x68
/* 4C208 8004B608 10000097 */  b         .L8004B868
/* 4C20C 8004B60C 24070060 */  addiu     $a3, $zero, 0x60
/* 4C210 8004B610 10000095 */  b         .L8004B868
/* 4C214 8004B614 24070060 */  addiu     $a3, $zero, 0x60
/* 4C218 8004B618 10000093 */  b         .L8004B868
/* 4C21C 8004B61C 24070060 */  addiu     $a3, $zero, 0x60
/* 4C220 8004B620 10000091 */  b         .L8004B868
/* 4C224 8004B624 24070060 */  addiu     $a3, $zero, 0x60
/* 4C228 8004B628 1000008F */  b         .L8004B868
/* 4C22C 8004B62C 24070068 */  addiu     $a3, $zero, 0x68
/* 4C230 8004B630 1000008D */  b         .L8004B868
/* 4C234 8004B634 24070060 */  addiu     $a3, $zero, 0x60
/* 4C238 8004B638 1000008B */  b         .L8004B868
/* 4C23C 8004B63C 24070058 */  addiu     $a3, $zero, 0x58
/* 4C240 8004B640 10000089 */  b         .L8004B868
/* 4C244 8004B644 24070060 */  addiu     $a3, $zero, 0x60
/* 4C248 8004B648 A0460000 */  sb        $a2, ($v0)
/* 4C24C 8004B64C 10000086 */  b         .L8004B868
/* 4C250 8004B650 24070064 */  addiu     $a3, $zero, 0x64
/* 4C254 8004B654 A0400000 */  sb        $zero, ($v0)
/* 4C258 8004B658 A1000000 */  sb        $zero, ($t0)
/* 4C25C 8004B65C 10000082 */  b         .L8004B868
/* 4C260 8004B660 24070048 */  addiu     $a3, $zero, 0x48
/* 4C264 8004B664 240F0087 */  addiu     $t7, $zero, 0x87
/* 4C268 8004B668 A0400000 */  sb        $zero, ($v0)
/* 4C26C 8004B66C A1000000 */  sb        $zero, ($t0)
/* 4C270 8004B670 24070078 */  addiu     $a3, $zero, 0x78
/* 4C274 8004B674 1000007C */  b         .L8004B868
/* 4C278 8004B678 AFAF001C */  sw        $t7, 0x1c($sp)
/* 4C27C 8004B67C 1000007A */  b         .L8004B868
/* 4C280 8004B680 24070060 */  addiu     $a3, $zero, 0x60
/* 4C284 8004B684 10000078 */  b         .L8004B868
/* 4C288 8004B688 24070060 */  addiu     $a3, $zero, 0x60
/* 4C28C 8004B68C 10000076 */  b         .L8004B868
/* 4C290 8004B690 24070060 */  addiu     $a3, $zero, 0x60
/* 4C294 8004B694 10000074 */  b         .L8004B868
/* 4C298 8004B698 24070060 */  addiu     $a3, $zero, 0x60
/* 4C29C 8004B69C 10000072 */  b         .L8004B868
/* 4C2A0 8004B6A0 24070060 */  addiu     $a3, $zero, 0x60
/* 4C2A4 8004B6A4 10000070 */  b         .L8004B868
/* 4C2A8 8004B6A8 24070088 */  addiu     $a3, $zero, 0x88
/* 4C2AC 8004B6AC 1000006E */  b         .L8004B868
/* 4C2B0 8004B6B0 24070060 */  addiu     $a3, $zero, 0x60
/* 4C2B4 8004B6B4 1000006C */  b         .L8004B868
/* 4C2B8 8004B6B8 24070060 */  addiu     $a3, $zero, 0x60
/* 4C2BC 8004B6BC 1000006A */  b         .L8004B868
/* 4C2C0 8004B6C0 24070050 */  addiu     $a3, $zero, 0x50
/* 4C2C4 8004B6C4 10000068 */  b         .L8004B868
/* 4C2C8 8004B6C8 24070060 */  addiu     $a3, $zero, 0x60
/* 4C2CC 8004B6CC 10000066 */  b         .L8004B868
/* 4C2D0 8004B6D0 24070060 */  addiu     $a3, $zero, 0x60
/* 4C2D4 8004B6D4 10000064 */  b         .L8004B868
/* 4C2D8 8004B6D8 24070090 */  addiu     $a3, $zero, 0x90
/* 4C2DC 8004B6DC 24070088 */  addiu     $a3, $zero, 0x88
/* 4C2E0 8004B6E0 10000061 */  b         .L8004B868
/* 4C2E4 8004B6E4 A1060000 */  sb        $a2, ($t0)
/* 4C2E8 8004B6E8 24180001 */  addiu     $t8, $zero, 1
/* 4C2EC 8004B6EC 24070078 */  addiu     $a3, $zero, 0x78
/* 4C2F0 8004B6F0 1000005D */  b         .L8004B868
/* 4C2F4 8004B6F4 AFB8002C */  sw        $t8, 0x2c($sp)
/* 4C2F8 8004B6F8 24070068 */  addiu     $a3, $zero, 0x68
/* 4C2FC 8004B6FC AFA70020 */  sw        $a3, 0x20($sp)
/* 4C300 8004B700 00002025 */  or        $a0, $zero, $zero
/* 4C304 8004B704 0C00F646 */  jal       func_8003D918
/* 4C308 8004B708 2405000F */  addiu     $a1, $zero, 0xf
/* 4C30C 8004B70C 3C040110 */  lui       $a0, 0x110
/* 4C310 8004B710 34840016 */  ori       $a0, $a0, 0x16
/* 4C314 8004B714 00002825 */  or        $a1, $zero, $zero
/* 4C318 8004B718 0C0137E5 */  jal       func_8004DF94
/* 4C31C 8004B71C 00003025 */  or        $a2, $zero, $zero
/* 4C320 8004B720 10000051 */  b         .L8004B868
/* 4C324 8004B724 8FA70020 */  lw        $a3, 0x20($sp)
/* 4C328 8004B728 00002025 */  or        $a0, $zero, $zero
/* 4C32C 8004B72C 0C00F646 */  jal       func_8003D918
/* 4C330 8004B730 2405000F */  addiu     $a1, $zero, 0xf
/* 4C334 8004B734 3C040110 */  lui       $a0, 0x110
/* 4C338 8004B738 34840016 */  ori       $a0, $a0, 0x16
/* 4C33C 8004B73C 00002825 */  or        $a1, $zero, $zero
/* 4C340 8004B740 0C0137E5 */  jal       func_8004DF94
/* 4C344 8004B744 00003025 */  or        $a2, $zero, $zero
/* 4C348 8004B748 10000047 */  b         .L8004B868
/* 4C34C 8004B74C 24070070 */  addiu     $a3, $zero, 0x70
/* 4C350 8004B750 10000045 */  b         .L8004B868
/* 4C354 8004B754 24070068 */  addiu     $a3, $zero, 0x68
/* 4C358 8004B758 10000043 */  b         .L8004B868
/* 4C35C 8004B75C 240700A8 */  addiu     $a3, $zero, 0xa8
/* 4C360 8004B760 10000041 */  b         .L8004B868
/* 4C364 8004B764 24070060 */  addiu     $a3, $zero, 0x60
/* 4C368 8004B768 A0400000 */  sb        $zero, ($v0)
/* 4C36C 8004B76C A1000000 */  sb        $zero, ($t0)
/* 4C370 8004B770 1000003D */  b         .L8004B868
/* 4C374 8004B774 24070080 */  addiu     $a3, $zero, 0x80
/* 4C378 8004B778 A0400000 */  sb        $zero, ($v0)
/* 4C37C 8004B77C A1000000 */  sb        $zero, ($t0)
/* 4C380 8004B780 10000039 */  b         .L8004B868
/* 4C384 8004B784 24070080 */  addiu     $a3, $zero, 0x80
/* 4C388 8004B788 10000037 */  b         .L8004B868
/* 4C38C 8004B78C 24070048 */  addiu     $a3, $zero, 0x48
/* 4C390 8004B790 10000035 */  b         .L8004B868
/* 4C394 8004B794 24070048 */  addiu     $a3, $zero, 0x48
/* 4C398 8004B798 10000033 */  b         .L8004B868
/* 4C39C 8004B79C 24070040 */  addiu     $a3, $zero, 0x40
/* 4C3A0 8004B7A0 10000031 */  b         .L8004B868
/* 4C3A4 8004B7A4 24070050 */  addiu     $a3, $zero, 0x50
/* 4C3A8 8004B7A8 1000002F */  b         .L8004B868
/* 4C3AC 8004B7AC 24070050 */  addiu     $a3, $zero, 0x50
/* 4C3B0 8004B7B0 1000002D */  b         .L8004B868
/* 4C3B4 8004B7B4 24070064 */  addiu     $a3, $zero, 0x64
/* 4C3B8 8004B7B8 1000002B */  b         .L8004B868
/* 4C3BC 8004B7BC 24070048 */  addiu     $a3, $zero, 0x48
/* 4C3C0 8004B7C0 10000029 */  b         .L8004B868
/* 4C3C4 8004B7C4 24070038 */  addiu     $a3, $zero, 0x38
/* 4C3C8 8004B7C8 10000027 */  b         .L8004B868
/* 4C3CC 8004B7CC 24070038 */  addiu     $a3, $zero, 0x38
/* 4C3D0 8004B7D0 10000025 */  b         .L8004B868
/* 4C3D4 8004B7D4 2407002E */  addiu     $a3, $zero, 0x2e
/* 4C3D8 8004B7D8 10000023 */  b         .L8004B868
/* 4C3DC 8004B7DC 24070038 */  addiu     $a3, $zero, 0x38
/* 4C3E0 8004B7E0 10000021 */  b         .L8004B868
/* 4C3E4 8004B7E4 24070038 */  addiu     $a3, $zero, 0x38
/* 4C3E8 8004B7E8 1000001F */  b         .L8004B868
/* 4C3EC 8004B7EC 24070038 */  addiu     $a3, $zero, 0x38
/* 4C3F0 8004B7F0 1000001D */  b         .L8004B868
/* 4C3F4 8004B7F4 2407003C */  addiu     $a3, $zero, 0x3c
/* 4C3F8 8004B7F8 1000001B */  b         .L8004B868
/* 4C3FC 8004B7FC 24070038 */  addiu     $a3, $zero, 0x38
/* 4C400 8004B800 10000019 */  b         .L8004B868
/* 4C404 8004B804 24070060 */  addiu     $a3, $zero, 0x60
/* 4C408 8004B808 10000017 */  b         .L8004B868
/* 4C40C 8004B80C 24070058 */  addiu     $a3, $zero, 0x58
/* 4C410 8004B810 10000015 */  b         .L8004B868
/* 4C414 8004B814 24070054 */  addiu     $a3, $zero, 0x54
/* 4C418 8004B818 10000013 */  b         .L8004B868
/* 4C41C 8004B81C 24070054 */  addiu     $a3, $zero, 0x54
/* 4C420 8004B820 10000011 */  b         .L8004B868
/* 4C424 8004B824 24070058 */  addiu     $a3, $zero, 0x58
/* 4C428 8004B828 1000000F */  b         .L8004B868
/* 4C42C 8004B82C 24070034 */  addiu     $a3, $zero, 0x34
/* 4C430 8004B830 1000000D */  b         .L8004B868
/* 4C434 8004B834 24070044 */  addiu     $a3, $zero, 0x44
/* 4C438 8004B838 1000000B */  b         .L8004B868
/* 4C43C 8004B83C 24070038 */  addiu     $a3, $zero, 0x38
/* 4C440 8004B840 10000009 */  b         .L8004B868
/* 4C444 8004B844 24070034 */  addiu     $a3, $zero, 0x34
/* 4C448 8004B848 3C018008 */  lui       $at, 0x8008
/* 4C44C 8004B84C 24190002 */  addiu     $t9, $zero, 2
/* 4C450 8004B850 24070050 */  addiu     $a3, $zero, 0x50
/* 4C454 8004B854 A0208E80 */  sb        $zero, -0x7180($at)
/* 4C458 8004B858 10000003 */  b         .L8004B868
/* 4C45C 8004B85C AFB9002C */  sw        $t9, 0x2c($sp)
.L8004B860:
/* 4C460 8004B860 10000054 */  b         .L8004B9B4
/* 4C464 8004B864 00001025 */  or        $v0, $zero, $zero
.L8004B868:
/* 4C468 8004B868 3C038010 */  lui       $v1, 0x8010
/* 4C46C 8004B86C 8C63C6E4 */  lw        $v1, -0x391c($v1)
/* 4C470 8004B870 8FA9002C */  lw        $t1, 0x2c($sp)
/* 4C474 8004B874 8FAC002C */  lw        $t4, 0x2c($sp)
/* 4C478 8004B878 8C620008 */  lw        $v0, 8($v1)
/* 4C47C 8004B87C 3C058010 */  lui       $a1, 0x8010
/* 4C480 8004B880 00095080 */  sll       $t2, $t1, 2
/* 4C484 8004B884 2442FFFF */  addiu     $v0, $v0, -1
/* 4C488 8004B888 0122082B */  sltu      $at, $t1, $v0
/* 4C48C 8004B88C 10200006 */  beqz      $at, .L8004B8A8
/* 4C490 8004B890 00000000 */  nop       
/* 4C494 8004B894 006A1021 */  addu      $v0, $v1, $t2
/* 4C498 8004B898 8C44000C */  lw        $a0, 0xc($v0)
/* 4C49C 8004B89C 8C4B0010 */  lw        $t3, 0x10($v0)
/* 4C4A0 8004B8A0 1000000C */  b         .L8004B8D4
/* 4C4A4 8004B8A4 01643023 */  subu      $a2, $t3, $a0
.L8004B8A8:
/* 4C4A8 8004B8A8 15820008 */  bne       $t4, $v0, .L8004B8CC
/* 4C4AC 8004B8AC 000C6880 */  sll       $t5, $t4, 2
/* 4C4B0 8004B8B0 3C0F8010 */  lui       $t7, 0x8010
/* 4C4B4 8004B8B4 8DEFC6E0 */  lw        $t7, -0x3920($t7)
/* 4C4B8 8004B8B8 006D7021 */  addu      $t6, $v1, $t5
/* 4C4BC 8004B8BC 8DC4000C */  lw        $a0, 0xc($t6)
/* 4C4C0 8004B8C0 8DF80008 */  lw        $t8, 8($t7)
/* 4C4C4 8004B8C4 10000003 */  b         .L8004B8D4
/* 4C4C8 8004B8C8 03043023 */  subu      $a2, $t8, $a0
.L8004B8CC:
/* 4C4CC 8004B8CC 10000039 */  b         .L8004B9B4
/* 4C4D0 8004B8D0 00001025 */  or        $v0, $zero, $zero
.L8004B8D4:
/* 4C4D4 8004B8D4 8CA5C6DC */  lw        $a1, -0x3924($a1)
/* 4C4D8 8004B8D8 0C012B6C */  jal       func_8004ADB0
/* 4C4DC 8004B8DC AFA70020 */  sw        $a3, 0x20($sp)
/* 4C4E0 8004B8E0 3C048010 */  lui       $a0, 0x8010
/* 4C4E4 8004B8E4 3C058010 */  lui       $a1, 0x8010
/* 4C4E8 8004B8E8 8CA5C680 */  lw        $a1, -0x3980($a1)
/* 4C4EC 8004B8EC 8C84C6DC */  lw        $a0, -0x3924($a0)
/* 4C4F0 8004B8F0 0C0142D0 */  jal       func_80050B40
/* 4C4F4 8004B8F4 340698D8 */  ori       $a2, $zero, 0x98d8
/* 4C4F8 8004B8F8 3C028008 */  lui       $v0, 0x8008
/* 4C4FC 8004B8FC 8C428EC8 */  lw        $v0, -0x7138($v0)
/* 4C500 8004B900 3C038010 */  lui       $v1, 0x8010
/* 4C504 8004B904 2463C680 */  addiu     $v1, $v1, -0x3980
/* 4C508 8004B908 1C40000A */  bgtz      $v0, .L8004B934
/* 4C50C 8004B90C 8FA70020 */  lw        $a3, 0x20($sp)
/* 4C510 8004B910 3C048010 */  lui       $a0, 0x8010
/* 4C514 8004B914 8C84C684 */  lw        $a0, -0x397c($a0)
/* 4C518 8004B918 8C650000 */  lw        $a1, ($v1)
/* 4C51C 8004B91C 0C00E3CC */  jal       func_80038F30
/* 4C520 8004B920 AFA70020 */  sw        $a3, 0x20($sp)
/* 4C524 8004B924 3C018008 */  lui       $at, 0x8008
/* 4C528 8004B928 AC228E70 */  sw        $v0, -0x7190($at)
/* 4C52C 8004B92C 1000000A */  b         .L8004B958
/* 4C530 8004B930 8FA70020 */  lw        $a3, 0x20($sp)
.L8004B934:
/* 4C534 8004B934 3C048010 */  lui       $a0, 0x8010
/* 4C538 8004B938 8C84C684 */  lw        $a0, -0x397c($a0)
/* 4C53C 8004B93C 8C650000 */  lw        $a1, ($v1)
/* 4C540 8004B940 00403025 */  or        $a2, $v0, $zero
/* 4C544 8004B944 0C00E69F */  jal       func_80039A7C
/* 4C548 8004B948 AFA70020 */  sw        $a3, 0x20($sp)
/* 4C54C 8004B94C 3C018008 */  lui       $at, 0x8008
/* 4C550 8004B950 AC228E70 */  sw        $v0, -0x7190($at)
/* 4C554 8004B954 8FA70020 */  lw        $a3, 0x20($sp)
.L8004B958:
/* 4C558 8004B958 2419FFFF */  addiu     $t9, $zero, -1
/* 4C55C 8004B95C 3C018008 */  lui       $at, 0x8008
/* 4C560 8004B960 3C048008 */  lui       $a0, 0x8008
/* 4C564 8004B964 AC398EC8 */  sw        $t9, -0x7138($at)
/* 4C568 8004B968 8C848E70 */  lw        $a0, -0x7190($a0)
/* 4C56C 8004B96C 0C00E4F7 */  jal       func_800393DC
/* 4C570 8004B970 00E02825 */  or        $a1, $a3, $zero
/* 4C574 8004B974 8FA9001C */  lw        $t1, 0x1c($sp)
/* 4C578 8004B978 24010080 */  addiu     $at, $zero, 0x80
/* 4C57C 8004B97C 3C048008 */  lui       $a0, 0x8008
/* 4C580 8004B980 11210003 */  beq       $t1, $at, .L8004B990
/* 4C584 8004B984 01202825 */  or        $a1, $t1, $zero
/* 4C588 8004B988 0C00E57F */  jal       func_800395FC
/* 4C58C 8004B98C 8C848E70 */  lw        $a0, -0x7190($a0)
.L8004B990:
/* 4C590 8004B990 8FAA0018 */  lw        $t2, 0x18($sp)
/* 4C594 8004B994 2401001D */  addiu     $at, $zero, 0x1d
/* 4C598 8004B998 3C0B8008 */  lui       $t3, 0x8008
/* 4C59C 8004B99C 15410004 */  bne       $t2, $at, .L8004B9B0
/* 4C5A0 8004B9A0 3C028008 */  lui       $v0, 0x8008
/* 4C5A4 8004B9A4 8D6B8E70 */  lw        $t3, -0x7190($t3)
/* 4C5A8 8004B9A8 3C018010 */  lui       $at, 0x8010
/* 4C5AC 8004B9AC AC2BF9B0 */  sw        $t3, -0x650($at)
.L8004B9B0:
/* 4C5B0 8004B9B0 8C428E70 */  lw        $v0, -0x7190($v0)
.L8004B9B4:
/* 4C5B4 8004B9B4 8FBF0014 */  lw        $ra, 0x14($sp)
/* 4C5B8 8004B9B8 27BD0030 */  addiu     $sp, $sp, 0x30
/* 4C5BC 8004B9BC 03E00008 */  jr        $ra
/* 4C5C0 8004B9C0 00000000 */  nop       

glabel func_8004B9C4
/* 4C5C4 8004B9C4 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 4C5C8 8004B9C8 AFB20020 */  sw        $s2, 0x20($sp)
/* 4C5CC 8004B9CC 00809025 */  or        $s2, $a0, $zero
/* 4C5D0 8004B9D0 AFBF0024 */  sw        $ra, 0x24($sp)
/* 4C5D4 8004B9D4 AFB1001C */  sw        $s1, 0x1c($sp)
/* 4C5D8 8004B9D8 14800002 */  bnez      $a0, .L8004B9E4
/* 4C5DC 8004B9DC AFB00018 */  sw        $s0, 0x18($sp)
/* 4C5E0 8004B9E0 24120001 */  addiu     $s2, $zero, 1
.L8004B9E4:
/* 4C5E4 8004B9E4 3C048008 */  lui       $a0, 0x8008
/* 4C5E8 8004B9E8 8C848E70 */  lw        $a0, -0x7190($a0)
/* 4C5EC 8004B9EC 0C00E4AA */  jal       func_800392A8
/* 4C5F0 8004B9F0 02402825 */  or        $a1, $s2, $zero
/* 4C5F4 8004B9F4 240EFFFF */  addiu     $t6, $zero, -1
/* 4C5F8 8004B9F8 3C018008 */  lui       $at, 0x8008
/* 4C5FC 8004B9FC 3C048008 */  lui       $a0, 0x8008
/* 4C600 8004BA00 AC2E8EC8 */  sw        $t6, -0x7138($at)
/* 4C604 8004BA04 8C848ECC */  lw        $a0, -0x7134($a0)
/* 4C608 8004BA08 0C00E4AA */  jal       func_800392A8
/* 4C60C 8004BA0C 02402825 */  or        $a1, $s2, $zero
/* 4C610 8004BA10 3C018008 */  lui       $at, 0x8008
/* 4C614 8004BA14 A0208ED0 */  sb        $zero, -0x7130($at)
/* 4C618 8004BA18 3C018008 */  lui       $at, 0x8008
/* 4C61C 8004BA1C 3C048008 */  lui       $a0, 0x8008
/* 4C620 8004BA20 A020840C */  sb        $zero, -0x7bf4($at)
/* 4C624 8004BA24 8C848FA8 */  lw        $a0, -0x7058($a0)
/* 4C628 8004BA28 0C00E4AA */  jal       func_800392A8
/* 4C62C 8004BA2C 02402825 */  or        $a1, $s2, $zero
/* 4C630 8004BA30 0C0113A0 */  jal       func_80044E80
/* 4C634 8004BA34 00002025 */  or        $a0, $zero, $zero
/* 4C638 8004BA38 0C00F6E1 */  jal       func_8003DB84
/* 4C63C 8004BA3C 00002025 */  or        $a0, $zero, $zero
/* 4C640 8004BA40 3C0F8010 */  lui       $t7, 0x8010
/* 4C644 8004BA44 8DEFF9B4 */  lw        $t7, -0x64c($t7)
/* 4C648 8004BA48 24010050 */  addiu     $at, $zero, 0x50
/* 4C64C 8004BA4C 00008025 */  or        $s0, $zero, $zero
/* 4C650 8004BA50 11E10007 */  beq       $t7, $at, .L8004BA70
/* 4C654 8004BA54 24110002 */  addiu     $s1, $zero, 2
/* 4C658 8004BA58 02002025 */  or        $a0, $s0, $zero
.L8004BA5C:
/* 4C65C 8004BA5C 0C01135E */  jal       func_80044D78
/* 4C660 8004BA60 02402825 */  or        $a1, $s2, $zero
/* 4C664 8004BA64 26100001 */  addiu     $s0, $s0, 1
/* 4C668 8004BA68 5611FFFC */  bnel      $s0, $s1, .L8004BA5C
/* 4C66C 8004BA6C 02002025 */  or        $a0, $s0, $zero
.L8004BA70:
/* 4C670 8004BA70 8FBF0024 */  lw        $ra, 0x24($sp)
/* 4C674 8004BA74 8FB00018 */  lw        $s0, 0x18($sp)
/* 4C678 8004BA78 8FB1001C */  lw        $s1, 0x1c($sp)
/* 4C67C 8004BA7C 8FB20020 */  lw        $s2, 0x20($sp)
/* 4C680 8004BA80 03E00008 */  jr        $ra
/* 4C684 8004BA84 27BD0028 */  addiu     $sp, $sp, 0x28

glabel func_8004BA88
/* 4C688 8004BA88 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 4C68C 8004BA8C 3C018008 */  lui       $at, 0x8008
/* 4C690 8004BA90 AFBF0014 */  sw        $ra, 0x14($sp)
/* 4C694 8004BA94 00803025 */  or        $a2, $a0, $zero
/* 4C698 8004BA98 10800003 */  beqz      $a0, .L8004BAA8
/* 4C69C 8004BA9C A0208E80 */  sb        $zero, -0x7180($at)
/* 4C6A0 8004BAA0 240100FF */  addiu     $at, $zero, 0xff
/* 4C6A4 8004BAA4 14810007 */  bne       $a0, $at, .L8004BAC4
.L8004BAA8:
/* 4C6A8 8004BAA8 2401000E */  addiu     $at, $zero, 0xe
/* 4C6AC 8004BAAC 14A10005 */  bne       $a1, $at, .L8004BAC4
/* 4C6B0 8004BAB0 24060001 */  addiu     $a2, $zero, 1
/* 4C6B4 8004BAB4 0C012C73 */  jal       func_8004B1CC
/* 4C6B8 8004BAB8 24040002 */  addiu     $a0, $zero, 2
/* 4C6BC 8004BABC 1000006E */  b         .L8004BC78
/* 4C6C0 8004BAC0 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004BAC4:
/* 4C6C4 8004BAC4 2CA10010 */  sltiu     $at, $a1, 0x10
/* 4C6C8 8004BAC8 10200066 */  beqz      $at, .L8004BC64
/* 4C6CC 8004BACC 00057080 */  sll       $t6, $a1, 2
/* 4C6D0 8004BAD0 3C018008 */  lui       $at, 0x8008
/* 4C6D4 8004BAD4 002E0821 */  addu      $at, $at, $t6
/* 4C6D8 8004BAD8 8C2ED680 */  lw        $t6, -0x2980($at)
/* 4C6DC 8004BADC 01C00008 */  jr        $t6
/* 4C6E0 8004BAE0 00000000 */  nop       
/* 4C6E4 8004BAE4 2CC10009 */  sltiu     $at, $a2, 9
/* 4C6E8 8004BAE8 14200003 */  bnez      $at, .L8004BAF8
/* 4C6EC 8004BAEC 3C048008 */  lui       $a0, 0x8008
/* 4C6F0 8004BAF0 10000060 */  b         .L8004BC74
/* 4C6F4 8004BAF4 00001025 */  or        $v0, $zero, $zero
.L8004BAF8:
/* 4C6F8 8004BAF8 00862021 */  addu      $a0, $a0, $a2
/* 4C6FC 8004BAFC 0C012C73 */  jal       func_8004B1CC
/* 4C700 8004BB00 90848E83 */  lbu       $a0, -0x717d($a0)
/* 4C704 8004BB04 1000005A */  b         .L8004BC70
/* 4C708 8004BB08 00401825 */  or        $v1, $v0, $zero
/* 4C70C 8004BB0C 2CC10009 */  sltiu     $at, $a2, 9
/* 4C710 8004BB10 14200003 */  bnez      $at, .L8004BB20
/* 4C714 8004BB14 3C048008 */  lui       $a0, 0x8008
/* 4C718 8004BB18 10000056 */  b         .L8004BC74
/* 4C71C 8004BB1C 00001025 */  or        $v0, $zero, $zero
.L8004BB20:
/* 4C720 8004BB20 00862021 */  addu      $a0, $a0, $a2
/* 4C724 8004BB24 0C012C73 */  jal       func_8004B1CC
/* 4C728 8004BB28 90848E8B */  lbu       $a0, -0x7175($a0)
/* 4C72C 8004BB2C 10000050 */  b         .L8004BC70
/* 4C730 8004BB30 00401825 */  or        $v1, $v0, $zero
/* 4C734 8004BB34 2CC10009 */  sltiu     $at, $a2, 9
/* 4C738 8004BB38 14200003 */  bnez      $at, .L8004BB48
/* 4C73C 8004BB3C 3C048008 */  lui       $a0, 0x8008
/* 4C740 8004BB40 1000004C */  b         .L8004BC74
/* 4C744 8004BB44 00001025 */  or        $v0, $zero, $zero
.L8004BB48:
/* 4C748 8004BB48 00862021 */  addu      $a0, $a0, $a2
/* 4C74C 8004BB4C 0C012C73 */  jal       func_8004B1CC
/* 4C750 8004BB50 90848E93 */  lbu       $a0, -0x716d($a0)
/* 4C754 8004BB54 10000046 */  b         .L8004BC70
/* 4C758 8004BB58 00401825 */  or        $v1, $v0, $zero
/* 4C75C 8004BB5C 2CC10009 */  sltiu     $at, $a2, 9
/* 4C760 8004BB60 14200003 */  bnez      $at, .L8004BB70
/* 4C764 8004BB64 3C048008 */  lui       $a0, 0x8008
/* 4C768 8004BB68 10000042 */  b         .L8004BC74
/* 4C76C 8004BB6C 00001025 */  or        $v0, $zero, $zero
.L8004BB70:
/* 4C770 8004BB70 00862021 */  addu      $a0, $a0, $a2
/* 4C774 8004BB74 0C012C73 */  jal       func_8004B1CC
/* 4C778 8004BB78 90848E9B */  lbu       $a0, -0x7165($a0)
/* 4C77C 8004BB7C 1000003C */  b         .L8004BC70
/* 4C780 8004BB80 00401825 */  or        $v1, $v0, $zero
/* 4C784 8004BB84 2CC10009 */  sltiu     $at, $a2, 9
/* 4C788 8004BB88 14200003 */  bnez      $at, .L8004BB98
/* 4C78C 8004BB8C 3C048008 */  lui       $a0, 0x8008
/* 4C790 8004BB90 10000038 */  b         .L8004BC74
/* 4C794 8004BB94 00001025 */  or        $v0, $zero, $zero
.L8004BB98:
/* 4C798 8004BB98 00862021 */  addu      $a0, $a0, $a2
/* 4C79C 8004BB9C 0C012C73 */  jal       func_8004B1CC
/* 4C7A0 8004BBA0 90848EA3 */  lbu       $a0, -0x715d($a0)
/* 4C7A4 8004BBA4 10000032 */  b         .L8004BC70
/* 4C7A8 8004BBA8 00401825 */  or        $v1, $v0, $zero
/* 4C7AC 8004BBAC 2CC10009 */  sltiu     $at, $a2, 9
/* 4C7B0 8004BBB0 14200003 */  bnez      $at, .L8004BBC0
/* 4C7B4 8004BBB4 3C048008 */  lui       $a0, 0x8008
/* 4C7B8 8004BBB8 1000002E */  b         .L8004BC74
/* 4C7BC 8004BBBC 00001025 */  or        $v0, $zero, $zero
.L8004BBC0:
/* 4C7C0 8004BBC0 00862021 */  addu      $a0, $a0, $a2
/* 4C7C4 8004BBC4 0C012C73 */  jal       func_8004B1CC
/* 4C7C8 8004BBC8 90848EAB */  lbu       $a0, -0x7155($a0)
/* 4C7CC 8004BBCC 10000028 */  b         .L8004BC70
/* 4C7D0 8004BBD0 00401825 */  or        $v1, $v0, $zero
/* 4C7D4 8004BBD4 2CC10009 */  sltiu     $at, $a2, 9
/* 4C7D8 8004BBD8 14200003 */  bnez      $at, .L8004BBE8
/* 4C7DC 8004BBDC 3C048008 */  lui       $a0, 0x8008
/* 4C7E0 8004BBE0 10000024 */  b         .L8004BC74
/* 4C7E4 8004BBE4 00001025 */  or        $v0, $zero, $zero
.L8004BBE8:
/* 4C7E8 8004BBE8 00862021 */  addu      $a0, $a0, $a2
/* 4C7EC 8004BBEC 0C012C73 */  jal       func_8004B1CC
/* 4C7F0 8004BBF0 90848EB3 */  lbu       $a0, -0x714d($a0)
/* 4C7F4 8004BBF4 1000001E */  b         .L8004BC70
/* 4C7F8 8004BBF8 00401825 */  or        $v1, $v0, $zero
/* 4C7FC 8004BBFC 2CC10021 */  sltiu     $at, $a2, 0x21
/* 4C800 8004BC00 14200003 */  bnez      $at, .L8004BC10
/* 4C804 8004BC04 24CFFFFF */  addiu     $t7, $a2, -1
/* 4C808 8004BC08 1000001A */  b         .L8004BC74
/* 4C80C 8004BC0C 00001025 */  or        $v0, $zero, $zero
.L8004BC10:
/* 4C810 8004BC10 31F80003 */  andi      $t8, $t7, 3
/* 4C814 8004BC14 3C048008 */  lui       $a0, 0x8008
/* 4C818 8004BC18 00982021 */  addu      $a0, $a0, $t8
/* 4C81C 8004BC1C 0C012C73 */  jal       func_8004B1CC
/* 4C820 8004BC20 90848EBC */  lbu       $a0, -0x7144($a0)
/* 4C824 8004BC24 10000012 */  b         .L8004BC70
/* 4C828 8004BC28 00401825 */  or        $v1, $v0, $zero
/* 4C82C 8004BC2C 2CC10006 */  sltiu     $at, $a2, 6
/* 4C830 8004BC30 14200003 */  bnez      $at, .L8004BC40
/* 4C834 8004BC34 3C048008 */  lui       $a0, 0x8008
/* 4C838 8004BC38 1000000E */  b         .L8004BC74
/* 4C83C 8004BC3C 00001025 */  or        $v0, $zero, $zero
.L8004BC40:
/* 4C840 8004BC40 00862021 */  addu      $a0, $a0, $a2
/* 4C844 8004BC44 0C012C73 */  jal       func_8004B1CC
/* 4C848 8004BC48 90848EBF */  lbu       $a0, -0x7141($a0)
/* 4C84C 8004BC4C 10000008 */  b         .L8004BC70
/* 4C850 8004BC50 00401825 */  or        $v1, $v0, $zero
/* 4C854 8004BC54 0C012C73 */  jal       func_8004B1CC
/* 4C858 8004BC58 24040014 */  addiu     $a0, $zero, 0x14
/* 4C85C 8004BC5C 10000004 */  b         .L8004BC70
/* 4C860 8004BC60 00401825 */  or        $v1, $v0, $zero
.L8004BC64:
/* 4C864 8004BC64 0C012C73 */  jal       func_8004B1CC
/* 4C868 8004BC68 24040002 */  addiu     $a0, $zero, 2
/* 4C86C 8004BC6C 00401825 */  or        $v1, $v0, $zero
.L8004BC70:
/* 4C870 8004BC70 00601025 */  or        $v0, $v1, $zero
.L8004BC74:
/* 4C874 8004BC74 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004BC78:
/* 4C878 8004BC78 27BD0018 */  addiu     $sp, $sp, 0x18
/* 4C87C 8004BC7C 03E00008 */  jr        $ra
/* 4C880 8004BC80 00000000 */  nop       

glabel func_8004BC84
/* 4C884 8004BC84 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 4C888 8004BC88 2401001E */  addiu     $at, $zero, 0x1e
/* 4C88C 8004BC8C 10810009 */  beq       $a0, $at, .L8004BCB4
/* 4C890 8004BC90 AFBF0014 */  sw        $ra, 0x14($sp)
/* 4C894 8004BC94 2401001F */  addiu     $at, $zero, 0x1f
/* 4C898 8004BC98 10810032 */  beq       $a0, $at, .L8004BD64
/* 4C89C 8004BC9C 3C038008 */  lui       $v1, 0x8008
/* 4C8A0 8004BCA0 24010020 */  addiu     $at, $zero, 0x20
/* 4C8A4 8004BCA4 1081008C */  beq       $a0, $at, .L8004BED8
/* 4C8A8 8004BCA8 00000000 */  nop       
/* 4C8AC 8004BCAC 100000BD */  b         .L8004BFA4
/* 4C8B0 8004BCB0 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004BCB4:
/* 4C8B4 8004BCB4 3C038008 */  lui       $v1, 0x8008
/* 4C8B8 8004BCB8 24638ED4 */  addiu     $v1, $v1, -0x712c
/* 4C8BC 8004BCBC 8C620000 */  lw        $v0, ($v1)
/* 4C8C0 8004BCC0 24010001 */  addiu     $at, $zero, 1
/* 4C8C4 8004BCC4 240E0001 */  addiu     $t6, $zero, 1
/* 4C8C8 8004BCC8 10400009 */  beqz      $v0, .L8004BCF0
/* 4C8CC 8004BCCC 2404001E */  addiu     $a0, $zero, 0x1e
/* 4C8D0 8004BCD0 1041000B */  beq       $v0, $at, .L8004BD00
/* 4C8D4 8004BCD4 24010002 */  addiu     $at, $zero, 2
/* 4C8D8 8004BCD8 1041000B */  beq       $v0, $at, .L8004BD08
/* 4C8DC 8004BCDC 24010003 */  addiu     $at, $zero, 3
/* 4C8E0 8004BCE0 1041000B */  beq       $v0, $at, .L8004BD10
/* 4C8E4 8004BCE4 3C068008 */  lui       $a2, 0x8008
/* 4C8E8 8004BCE8 100000AD */  b         .L8004BFA0
/* 4C8EC 8004BCEC 00001025 */  or        $v0, $zero, $zero
.L8004BCF0:
/* 4C8F0 8004BCF0 0C012C73 */  jal       func_8004B1CC
/* 4C8F4 8004BCF4 AC6E0000 */  sw        $t6, ($v1)
/* 4C8F8 8004BCF8 100000AA */  b         .L8004BFA4
/* 4C8FC 8004BCFC 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004BD00:
/* 4C900 8004BD00 100000A7 */  b         .L8004BFA0
/* 4C904 8004BD04 00001025 */  or        $v0, $zero, $zero
.L8004BD08:
/* 4C908 8004BD08 100000A5 */  b         .L8004BFA0
/* 4C90C 8004BD0C 00001025 */  or        $v0, $zero, $zero
.L8004BD10:
/* 4C910 8004BD10 24C68EDC */  addiu     $a2, $a2, -0x7124
/* 4C914 8004BD14 8CC40000 */  lw        $a0, ($a2)
/* 4C918 8004BD18 0C00E4D5 */  jal       func_80039354
/* 4C91C 8004BD1C AFA50024 */  sw        $a1, 0x24($sp)
/* 4C920 8004BD20 3C038008 */  lui       $v1, 0x8008
/* 4C924 8004BD24 24638ED4 */  addiu     $v1, $v1, -0x712c
/* 4C928 8004BD28 1440000A */  bnez      $v0, .L8004BD54
/* 4C92C 8004BD2C 8FA50024 */  lw        $a1, 0x24($sp)
/* 4C930 8004BD30 240F0001 */  addiu     $t7, $zero, 1
/* 4C934 8004BD34 14A00005 */  bnez      $a1, .L8004BD4C
/* 4C938 8004BD38 AC6F0000 */  sw        $t7, ($v1)
/* 4C93C 8004BD3C 0C012C73 */  jal       func_8004B1CC
/* 4C940 8004BD40 2404001E */  addiu     $a0, $zero, 0x1e
/* 4C944 8004BD44 10000097 */  b         .L8004BFA4
/* 4C948 8004BD48 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004BD4C:
/* 4C94C 8004BD4C 10000094 */  b         .L8004BFA0
/* 4C950 8004BD50 00001025 */  or        $v0, $zero, $zero
.L8004BD54:
/* 4C954 8004BD54 10000092 */  b         .L8004BFA0
/* 4C958 8004BD58 00001025 */  or        $v0, $zero, $zero
/* 4C95C 8004BD5C 10000090 */  b         .L8004BFA0
/* 4C960 8004BD60 00001025 */  or        $v0, $zero, $zero
.L8004BD64:
/* 4C964 8004BD64 24638ED4 */  addiu     $v1, $v1, -0x712c
/* 4C968 8004BD68 24180002 */  addiu     $t8, $zero, 2
/* 4C96C 8004BD6C 2CA10005 */  sltiu     $at, $a1, 5
/* 4C970 8004BD70 AC780000 */  sw        $t8, ($v1)
/* 4C974 8004BD74 10200020 */  beqz      $at, .L8004BDF8
/* 4C978 8004BD78 00A01025 */  or        $v0, $a1, $zero
/* 4C97C 8004BD7C 0002C880 */  sll       $t9, $v0, 2
/* 4C980 8004BD80 3C018008 */  lui       $at, 0x8008
/* 4C984 8004BD84 00390821 */  addu      $at, $at, $t9
/* 4C988 8004BD88 8C39D6C0 */  lw        $t9, -0x2940($at)
/* 4C98C 8004BD8C 03200008 */  jr        $t9
/* 4C990 8004BD90 00000000 */  nop       
/* 4C994 8004BD94 000538C0 */  sll       $a3, $a1, 3
/* 4C998 8004BD98 00E53821 */  addu      $a3, $a3, $a1
/* 4C99C 8004BD9C 000738C0 */  sll       $a3, $a3, 3
/* 4C9A0 8004BDA0 10000016 */  b         .L8004BDFC
/* 4C9A4 8004BDA4 24E700D6 */  addiu     $a3, $a3, 0xd6
/* 4C9A8 8004BDA8 000538C0 */  sll       $a3, $a1, 3
/* 4C9AC 8004BDAC 00E53821 */  addu      $a3, $a3, $a1
/* 4C9B0 8004BDB0 000738C0 */  sll       $a3, $a3, 3
/* 4C9B4 8004BDB4 10000011 */  b         .L8004BDFC
/* 4C9B8 8004BDB8 24E700D6 */  addiu     $a3, $a3, 0xd6
/* 4C9BC 8004BDBC 000538C0 */  sll       $a3, $a1, 3
/* 4C9C0 8004BDC0 00E53821 */  addu      $a3, $a3, $a1
/* 4C9C4 8004BDC4 000738C0 */  sll       $a3, $a3, 3
/* 4C9C8 8004BDC8 1000000C */  b         .L8004BDFC
/* 4C9CC 8004BDCC 24E700D6 */  addiu     $a3, $a3, 0xd6
/* 4C9D0 8004BDD0 000538C0 */  sll       $a3, $a1, 3
/* 4C9D4 8004BDD4 00E53821 */  addu      $a3, $a3, $a1
/* 4C9D8 8004BDD8 000738C0 */  sll       $a3, $a3, 3
/* 4C9DC 8004BDDC 10000007 */  b         .L8004BDFC
/* 4C9E0 8004BDE0 24E700D6 */  addiu     $a3, $a3, 0xd6
/* 4C9E4 8004BDE4 000538C0 */  sll       $a3, $a1, 3
/* 4C9E8 8004BDE8 00E53821 */  addu      $a3, $a3, $a1
/* 4C9EC 8004BDEC 000738C0 */  sll       $a3, $a3, 3
/* 4C9F0 8004BDF0 10000002 */  b         .L8004BDFC
/* 4C9F4 8004BDF4 24E700D6 */  addiu     $a3, $a3, 0xd6
.L8004BDF8:
/* 4C9F8 8004BDF8 240700D6 */  addiu     $a3, $zero, 0xd6
.L8004BDFC:
/* 4C9FC 8004BDFC 2C410005 */  sltiu     $at, $v0, 5
/* 4CA00 8004BE00 1020002D */  beqz      $at, .L8004BEB8
/* 4CA04 8004BE04 00024080 */  sll       $t0, $v0, 2
/* 4CA08 8004BE08 3C018008 */  lui       $at, 0x8008
/* 4CA0C 8004BE0C 00280821 */  addu      $at, $at, $t0
/* 4CA10 8004BE10 8C28D6D4 */  lw        $t0, -0x292c($at)
/* 4CA14 8004BE14 01000008 */  jr        $t0
/* 4CA18 8004BE18 00000000 */  nop       
/* 4CA1C 8004BE1C 3C040009 */  lui       $a0, 9
/* 4CA20 8004BE20 3484000D */  ori       $a0, $a0, 0xd
/* 4CA24 8004BE24 00002825 */  or        $a1, $zero, $zero
/* 4CA28 8004BE28 00003025 */  or        $a2, $zero, $zero
/* 4CA2C 8004BE2C 0C01366C */  jal       func_8004D9B0
/* 4CA30 8004BE30 AFA7001C */  sw        $a3, 0x1c($sp)
/* 4CA34 8004BE34 10000020 */  b         .L8004BEB8
/* 4CA38 8004BE38 8FA7001C */  lw        $a3, 0x1c($sp)
/* 4CA3C 8004BE3C 3C040009 */  lui       $a0, 9
/* 4CA40 8004BE40 3484000E */  ori       $a0, $a0, 0xe
/* 4CA44 8004BE44 00002825 */  or        $a1, $zero, $zero
/* 4CA48 8004BE48 00003025 */  or        $a2, $zero, $zero
/* 4CA4C 8004BE4C 0C01366C */  jal       func_8004D9B0
/* 4CA50 8004BE50 AFA7001C */  sw        $a3, 0x1c($sp)
/* 4CA54 8004BE54 10000018 */  b         .L8004BEB8
/* 4CA58 8004BE58 8FA7001C */  lw        $a3, 0x1c($sp)
/* 4CA5C 8004BE5C 3C040009 */  lui       $a0, 9
/* 4CA60 8004BE60 3484000F */  ori       $a0, $a0, 0xf
/* 4CA64 8004BE64 00002825 */  or        $a1, $zero, $zero
/* 4CA68 8004BE68 00003025 */  or        $a2, $zero, $zero
/* 4CA6C 8004BE6C 0C01366C */  jal       func_8004D9B0
/* 4CA70 8004BE70 AFA7001C */  sw        $a3, 0x1c($sp)
/* 4CA74 8004BE74 10000010 */  b         .L8004BEB8
/* 4CA78 8004BE78 8FA7001C */  lw        $a3, 0x1c($sp)
/* 4CA7C 8004BE7C 3C040009 */  lui       $a0, 9
/* 4CA80 8004BE80 34840010 */  ori       $a0, $a0, 0x10
/* 4CA84 8004BE84 00002825 */  or        $a1, $zero, $zero
/* 4CA88 8004BE88 00003025 */  or        $a2, $zero, $zero
/* 4CA8C 8004BE8C 0C01366C */  jal       func_8004D9B0
/* 4CA90 8004BE90 AFA7001C */  sw        $a3, 0x1c($sp)
/* 4CA94 8004BE94 10000008 */  b         .L8004BEB8
/* 4CA98 8004BE98 8FA7001C */  lw        $a3, 0x1c($sp)
/* 4CA9C 8004BE9C 3C040009 */  lui       $a0, 9
/* 4CAA0 8004BEA0 34840011 */  ori       $a0, $a0, 0x11
/* 4CAA4 8004BEA4 00002825 */  or        $a1, $zero, $zero
/* 4CAA8 8004BEA8 00003025 */  or        $a2, $zero, $zero
/* 4CAAC 8004BEAC 0C01366C */  jal       func_8004D9B0
/* 4CAB0 8004BEB0 AFA7001C */  sw        $a3, 0x1c($sp)
/* 4CAB4 8004BEB4 8FA7001C */  lw        $a3, 0x1c($sp)
.L8004BEB8:
/* 4CAB8 8004BEB8 0C012C70 */  jal       func_8004B1C0
/* 4CABC 8004BEBC 00E02025 */  or        $a0, $a3, $zero
/* 4CAC0 8004BEC0 0C012C73 */  jal       func_8004B1CC
/* 4CAC4 8004BEC4 2404001F */  addiu     $a0, $zero, 0x1f
/* 4CAC8 8004BEC8 3C068008 */  lui       $a2, 0x8008
/* 4CACC 8004BECC 24C68ED8 */  addiu     $a2, $a2, -0x7128
/* 4CAD0 8004BED0 10000033 */  b         .L8004BFA0
/* 4CAD4 8004BED4 ACC20000 */  sw        $v0, ($a2)
.L8004BED8:
/* 4CAD8 8004BED8 3C038008 */  lui       $v1, 0x8008
/* 4CADC 8004BEDC 24638ED4 */  addiu     $v1, $v1, -0x712c
/* 4CAE0 8004BEE0 8C620000 */  lw        $v0, ($v1)
/* 4CAE4 8004BEE4 1040000A */  beqz      $v0, .L8004BF10
/* 4CAE8 8004BEE8 24010001 */  addiu     $at, $zero, 1
/* 4CAEC 8004BEEC 1041000A */  beq       $v0, $at, .L8004BF18
/* 4CAF0 8004BEF0 24010002 */  addiu     $at, $zero, 2
/* 4CAF4 8004BEF4 1041000A */  beq       $v0, $at, .L8004BF20
/* 4CAF8 8004BEF8 3C068008 */  lui       $a2, 0x8008
/* 4CAFC 8004BEFC 24010003 */  addiu     $at, $zero, 3
/* 4CB00 8004BF00 10410025 */  beq       $v0, $at, .L8004BF98
/* 4CB04 8004BF04 00000000 */  nop       
/* 4CB08 8004BF08 10000025 */  b         .L8004BFA0
/* 4CB0C 8004BF0C 00001025 */  or        $v0, $zero, $zero
.L8004BF10:
/* 4CB10 8004BF10 10000023 */  b         .L8004BFA0
/* 4CB14 8004BF14 00001025 */  or        $v0, $zero, $zero
.L8004BF18:
/* 4CB18 8004BF18 10000021 */  b         .L8004BFA0
/* 4CB1C 8004BF1C 00001025 */  or        $v0, $zero, $zero
.L8004BF20:
/* 4CB20 8004BF20 24C68ED8 */  addiu     $a2, $a2, -0x7128
/* 4CB24 8004BF24 8CC40000 */  lw        $a0, ($a2)
/* 4CB28 8004BF28 0C00E4D5 */  jal       func_80039354
/* 4CB2C 8004BF2C AFA50024 */  sw        $a1, 0x24($sp)
/* 4CB30 8004BF30 3C038008 */  lui       $v1, 0x8008
/* 4CB34 8004BF34 24638ED4 */  addiu     $v1, $v1, -0x712c
/* 4CB38 8004BF38 14400015 */  bnez      $v0, .L8004BF90
/* 4CB3C 8004BF3C 8FA50024 */  lw        $a1, 0x24($sp)
/* 4CB40 8004BF40 14A00007 */  bnez      $a1, .L8004BF60
/* 4CB44 8004BF44 3C068008 */  lui       $a2, 0x8008
/* 4CB48 8004BF48 24C68EDC */  addiu     $a2, $a2, -0x7124
/* 4CB4C 8004BF4C 24090003 */  addiu     $t1, $zero, 3
/* 4CB50 8004BF50 AC690000 */  sw        $t1, ($v1)
/* 4CB54 8004BF54 ACC00000 */  sw        $zero, ($a2)
/* 4CB58 8004BF58 10000011 */  b         .L8004BFA0
/* 4CB5C 8004BF5C 00001025 */  or        $v0, $zero, $zero
.L8004BF60:
/* 4CB60 8004BF60 0C012C70 */  jal       func_8004B1C0
/* 4CB64 8004BF64 24040046 */  addiu     $a0, $zero, 0x46
/* 4CB68 8004BF68 3C038008 */  lui       $v1, 0x8008
/* 4CB6C 8004BF6C 24638ED4 */  addiu     $v1, $v1, -0x712c
/* 4CB70 8004BF70 240A0003 */  addiu     $t2, $zero, 3
/* 4CB74 8004BF74 AC6A0000 */  sw        $t2, ($v1)
/* 4CB78 8004BF78 0C012C73 */  jal       func_8004B1CC
/* 4CB7C 8004BF7C 24040020 */  addiu     $a0, $zero, 0x20
/* 4CB80 8004BF80 3C068008 */  lui       $a2, 0x8008
/* 4CB84 8004BF84 24C68EDC */  addiu     $a2, $a2, -0x7124
/* 4CB88 8004BF88 10000005 */  b         .L8004BFA0
/* 4CB8C 8004BF8C ACC20000 */  sw        $v0, ($a2)
.L8004BF90:
/* 4CB90 8004BF90 10000003 */  b         .L8004BFA0
/* 4CB94 8004BF94 00001025 */  or        $v0, $zero, $zero
.L8004BF98:
/* 4CB98 8004BF98 10000001 */  b         .L8004BFA0
/* 4CB9C 8004BF9C 00001025 */  or        $v0, $zero, $zero
.L8004BFA0:
/* 4CBA0 8004BFA0 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004BFA4:
/* 4CBA4 8004BFA4 27BD0020 */  addiu     $sp, $sp, 0x20
/* 4CBA8 8004BFA8 03E00008 */  jr        $ra
/* 4CBAC 8004BFAC 00000000 */  nop       

glabel func_8004BFB0
/* 4CBB0 8004BFB0 3C028008 */  lui       $v0, 0x8008
/* 4CBB4 8004BFB4 03E00008 */  jr        $ra
/* 4CBB8 8004BFB8 8C428ED4 */  lw        $v0, -0x712c($v0)
/* 4CBBC 8004BFBC 00000000 */  nop       

glabel func_8004BFC0
/* 4CBC0 8004BFC0 3C010002 */  lui       $at, 2
/* 4CBC4 8004BFC4 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 4CBC8 8004BFC8 44800000 */  mtc1      $zero, $f0
/* 4CBCC 8004BFCC 3421000A */  ori       $at, $at, 0xa
/* 4CBD0 8004BFD0 AFBF001C */  sw        $ra, 0x1c($sp)
/* 4CBD4 8004BFD4 AFA40038 */  sw        $a0, 0x38($sp)
/* 4CBD8 8004BFD8 14810004 */  bne       $a0, $at, .L8004BFEC
/* 4CBDC 8004BFDC 24020080 */  addiu     $v0, $zero, 0x80
/* 4CBE0 8004BFE0 3C0F0002 */  lui       $t7, 2
/* 4CBE4 8004BFE4 35EF0001 */  ori       $t7, $t7, 1
/* 4CBE8 8004BFE8 AFAF0038 */  sw        $t7, 0x38($sp)
.L8004BFEC:
/* 4CBEC 8004BFEC 8FB80038 */  lw        $t8, 0x38($sp)
/* 4CBF0 8004BFF0 3C01FFFD */  lui       $at, 0xfffd
/* 4CBF4 8004BFF4 3421FFFD */  ori       $at, $at, 0xfffd
/* 4CBF8 8004BFF8 0301C821 */  addu      $t9, $t8, $at
/* 4CBFC 8004BFFC 2F210006 */  sltiu     $at, $t9, 6
/* 4CC00 8004C000 10200043 */  beqz      $at, .L8004C110
/* 4CC04 8004C004 0019C880 */  sll       $t9, $t9, 2
/* 4CC08 8004C008 3C018008 */  lui       $at, 0x8008
/* 4CC0C 8004C00C 00390821 */  addu      $at, $at, $t9
/* 4CC10 8004C010 8C39D6F0 */  lw        $t9, -0x2910($at)
/* 4CC14 8004C014 03200008 */  jr        $t9
/* 4CC18 8004C018 00000000 */  nop       
/* 4CC1C 8004C01C 18A00004 */  blez      $a1, .L8004C030
/* 4CC20 8004C020 8FA80038 */  lw        $t0, 0x38($sp)
/* 4CC24 8004C024 28A10005 */  slti      $at, $a1, 5
/* 4CC28 8004C028 54200003 */  bnel      $at, $zero, .L8004C038
/* 4CC2C 8004C02C 24010001 */  addiu     $at, $zero, 1
.L8004C030:
/* 4CC30 8004C030 24050001 */  addiu     $a1, $zero, 1
/* 4CC34 8004C034 24010001 */  addiu     $at, $zero, 1
.L8004C038:
/* 4CC38 8004C038 10C10021 */  beq       $a2, $at, .L8004C0C0
/* 4CC3C 8004C03C 24090004 */  addiu     $t1, $zero, 4
/* 4CC40 8004C040 24010002 */  addiu     $at, $zero, 2
/* 4CC44 8004C044 10C10007 */  beq       $a2, $at, .L8004C064
/* 4CC48 8004C048 24010003 */  addiu     $at, $zero, 3
/* 4CC4C 8004C04C 10C1000D */  beq       $a2, $at, .L8004C084
/* 4CC50 8004C050 24010004 */  addiu     $at, $zero, 4
/* 4CC54 8004C054 50C10015 */  beql      $a2, $at, .L8004C0AC
/* 4CC58 8004C058 00051080 */  sll       $v0, $a1, 2
/* 4CC5C 8004C05C 10000019 */  b         .L8004C0C4
/* 4CC60 8004C060 3C010002 */  lui       $at, 2
.L8004C064:
/* 4CC64 8004C064 00051080 */  sll       $v0, $a1, 2
/* 4CC68 8004C068 00451023 */  subu      $v0, $v0, $a1
/* 4CC6C 8004C06C 00021080 */  sll       $v0, $v0, 2
/* 4CC70 8004C070 00451023 */  subu      $v0, $v0, $a1
/* 4CC74 8004C074 00021100 */  sll       $v0, $v0, 4
/* 4CC78 8004C078 00451023 */  subu      $v0, $v0, $a1
/* 4CC7C 8004C07C 10000010 */  b         .L8004C0C0
/* 4CC80 8004C080 2442FF79 */  addiu     $v0, $v0, -0x87
.L8004C084:
/* 4CC84 8004C084 00051080 */  sll       $v0, $a1, 2
/* 4CC88 8004C088 00451023 */  subu      $v0, $v0, $a1
/* 4CC8C 8004C08C 00021080 */  sll       $v0, $v0, 2
/* 4CC90 8004C090 00451021 */  addu      $v0, $v0, $a1
/* 4CC94 8004C094 00021080 */  sll       $v0, $v0, 2
/* 4CC98 8004C098 00451023 */  subu      $v0, $v0, $a1
/* 4CC9C 8004C09C 00021040 */  sll       $v0, $v0, 1
/* 4CCA0 8004C0A0 10000007 */  b         .L8004C0C0
/* 4CCA4 8004C0A4 2442FFB3 */  addiu     $v0, $v0, -0x4d
/* 4CCA8 8004C0A8 00051080 */  sll       $v0, $a1, 2
.L8004C0AC:
/* 4CCAC 8004C0AC 00451021 */  addu      $v0, $v0, $a1
/* 4CCB0 8004C0B0 000210C0 */  sll       $v0, $v0, 3
/* 4CCB4 8004C0B4 00451023 */  subu      $v0, $v0, $a1
/* 4CCB8 8004C0B8 00021040 */  sll       $v0, $v0, 1
/* 4CCBC 8004C0BC 2442FFBC */  addiu     $v0, $v0, -0x44
.L8004C0C0:
/* 4CCC0 8004C0C0 3C010002 */  lui       $at, 2
.L8004C0C4:
/* 4CCC4 8004C0C4 34210004 */  ori       $at, $at, 4
/* 4CCC8 8004C0C8 1101000B */  beq       $t0, $at, .L8004C0F8
/* 4CCCC 8004C0CC 01255023 */  subu      $t2, $t1, $a1
/* 4CCD0 8004C0D0 3C010002 */  lui       $at, 2
/* 4CCD4 8004C0D4 34210005 */  ori       $at, $at, 5
/* 4CCD8 8004C0D8 11010007 */  beq       $t0, $at, .L8004C0F8
/* 4CCDC 8004C0DC 3C010002 */  lui       $at, 2
/* 4CCE0 8004C0E0 34210006 */  ori       $at, $at, 6
/* 4CCE4 8004C0E4 11010004 */  beq       $t0, $at, .L8004C0F8
/* 4CCE8 8004C0E8 3C010002 */  lui       $at, 2
/* 4CCEC 8004C0EC 34210007 */  ori       $at, $at, 7
/* 4CCF0 8004C0F0 55010008 */  bnel      $t0, $at, .L8004C114
/* 4CCF4 8004C0F4 8FA60038 */  lw        $a2, 0x38($sp)
.L8004C0F8:
/* 4CCF8 8004C0F8 448A2000 */  mtc1      $t2, $f4
/* 4CCFC 8004C0FC 3C013F00 */  lui       $at, 0x3f00
/* 4CD00 8004C100 44814000 */  mtc1      $at, $f8
/* 4CD04 8004C104 468021A0 */  cvt.s.w   $f6, $f4
/* 4CD08 8004C108 46083002 */  mul.s     $f0, $f6, $f8
/* 4CD0C 8004C10C 00000000 */  nop       
.L8004C110:
/* 4CD10 8004C110 8FA60038 */  lw        $a2, 0x38($sp)
.L8004C114:
/* 4CD14 8004C114 3C048010 */  lui       $a0, 0x8010
/* 4CD18 8004C118 3C058010 */  lui       $a1, 0x8010
/* 4CD1C 8004C11C 240BFFFF */  addiu     $t3, $zero, -1
/* 4CD20 8004C120 AFAB0014 */  sw        $t3, 0x14($sp)
/* 4CD24 8004C124 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4CD28 8004C128 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4CD2C 8004C12C 24070080 */  addiu     $a3, $zero, 0x80
/* 4CD30 8004C130 AFA20010 */  sw        $v0, 0x10($sp)
/* 4CD34 8004C134 E7A00024 */  swc1      $f0, 0x24($sp)
/* 4CD38 8004C138 0C00E409 */  jal       func_80039024
/* 4CD3C 8004C13C 30C6FFFF */  andi      $a2, $a2, 0xffff
/* 4CD40 8004C140 C7A00024 */  lwc1      $f0, 0x24($sp)
/* 4CD44 8004C144 AFA20034 */  sw        $v0, 0x34($sp)
/* 4CD48 8004C148 00402025 */  or        $a0, $v0, $zero
/* 4CD4C 8004C14C 44050000 */  mfc1      $a1, $f0
/* 4CD50 8004C150 0C00E54D */  jal       func_80039534
/* 4CD54 8004C154 00000000 */  nop       
/* 4CD58 8004C158 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4CD5C 8004C15C 8FA20034 */  lw        $v0, 0x34($sp)
/* 4CD60 8004C160 27BD0038 */  addiu     $sp, $sp, 0x38
/* 4CD64 8004C164 03E00008 */  jr        $ra
/* 4CD68 8004C168 00000000 */  nop       

glabel func_8004C16C
/* 4CD6C 8004C16C AFA40000 */  sw        $a0, ($sp)
/* 4CD70 8004C170 AFA50004 */  sw        $a1, 4($sp)
/* 4CD74 8004C174 03E00008 */  jr        $ra
/* 4CD78 8004C178 AFA60008 */  sw        $a2, 8($sp)

glabel func_8004C17C
/* 4CD7C 8004C17C 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 4CD80 8004C180 3C010003 */  lui       $at, 3
/* 4CD84 8004C184 44800000 */  mtc1      $zero, $f0
/* 4CD88 8004C188 240E0080 */  addiu     $t6, $zero, 0x80
/* 4CD8C 8004C18C 34210001 */  ori       $at, $at, 1
/* 4CD90 8004C190 AFBF001C */  sw        $ra, 0x1c($sp)
/* 4CD94 8004C194 AFA40048 */  sw        $a0, 0x48($sp)
/* 4CD98 8004C198 AFA5004C */  sw        $a1, 0x4c($sp)
/* 4CD9C 8004C19C 00C03825 */  or        $a3, $a2, $zero
/* 4CDA0 8004C1A0 2402007F */  addiu     $v0, $zero, 0x7f
/* 4CDA4 8004C1A4 10810086 */  beq       $a0, $at, .L8004C3C0
/* 4CDA8 8004C1A8 AFAE0038 */  sw        $t6, 0x38($sp)
/* 4CDAC 8004C1AC 3C010003 */  lui       $at, 3
/* 4CDB0 8004C1B0 34210002 */  ori       $at, $at, 2
/* 4CDB4 8004C1B4 10810082 */  beq       $a0, $at, .L8004C3C0
/* 4CDB8 8004C1B8 3C010003 */  lui       $at, 3
/* 4CDBC 8004C1BC 34210003 */  ori       $at, $at, 3
/* 4CDC0 8004C1C0 10810007 */  beq       $a0, $at, .L8004C1E0
/* 4CDC4 8004C1C4 24180050 */  addiu     $t8, $zero, 0x50
/* 4CDC8 8004C1C8 3C010003 */  lui       $at, 3
/* 4CDCC 8004C1CC 34210004 */  ori       $at, $at, 4
/* 4CDD0 8004C1D0 5081005F */  beql      $a0, $at, .L8004C350
/* 4CDD4 8004C1D4 8FA3004C */  lw        $v1, 0x4c($sp)
/* 4CDD8 8004C1D8 10000096 */  b         .L8004C434
/* 4CDDC 8004C1DC 00001025 */  or        $v0, $zero, $zero
.L8004C1E0:
/* 4CDE0 8004C1E0 04E00049 */  bltz      $a3, .L8004C308
/* 4CDE4 8004C1E4 AFB80038 */  sw        $t8, 0x38($sp)
/* 4CDE8 8004C1E8 8FA3004C */  lw        $v1, 0x4c($sp)
/* 4CDEC 8004C1EC 3C198008 */  lui       $t9, 0x8008
/* 4CDF0 8004C1F0 27398F00 */  addiu     $t9, $t9, -0x7100
/* 4CDF4 8004C1F4 00031880 */  sll       $v1, $v1, 2
/* 4CDF8 8004C1F8 00793021 */  addu      $a2, $v1, $t9
/* 4CDFC 8004C1FC 8CC40000 */  lw        $a0, ($a2)
/* 4CE00 8004C200 AFA60020 */  sw        $a2, 0x20($sp)
/* 4CE04 8004C204 AFA30024 */  sw        $v1, 0x24($sp)
/* 4CE08 8004C208 AFA70050 */  sw        $a3, 0x50($sp)
/* 4CE0C 8004C20C 0C00E4D5 */  jal       func_80039354
/* 4CE10 8004C210 E7A00034 */  swc1      $f0, 0x34($sp)
/* 4CE14 8004C214 44801000 */  mtc1      $zero, $f2
/* 4CE18 8004C218 8FA30024 */  lw        $v1, 0x24($sp)
/* 4CE1C 8004C21C 8FA60020 */  lw        $a2, 0x20($sp)
/* 4CE20 8004C220 8FA70050 */  lw        $a3, 0x50($sp)
/* 4CE24 8004C224 1440000C */  bnez      $v0, .L8004C258
/* 4CE28 8004C228 C7A00034 */  lwc1      $f0, 0x34($sp)
/* 4CE2C 8004C22C 3C088008 */  lui       $t0, 0x8008
/* 4CE30 8004C230 01034021 */  addu      $t0, $t0, $v1
/* 4CE34 8004C234 8D088EF0 */  lw        $t0, -0x7110($t0)
/* 4CE38 8004C238 3C028008 */  lui       $v0, 0x8008
/* 4CE3C 8004C23C 00431021 */  addu      $v0, $v0, $v1
/* 4CE40 8004C240 44882000 */  mtc1      $t0, $f4
/* 4CE44 8004C244 8C428EE0 */  lw        $v0, -0x7120($v0)
/* 4CE48 8004C248 468021A0 */  cvt.s.w   $f6, $f4
/* 4CE4C 8004C24C 2442007F */  addiu     $v0, $v0, 0x7f
/* 4CE50 8004C250 1000005B */  b         .L8004C3C0
/* 4CE54 8004C254 46061000 */  add.s     $f0, $f2, $f6
.L8004C258:
/* 4CE58 8004C258 04E00014 */  bltz      $a3, .L8004C2AC
/* 4CE5C 8004C25C 28E10014 */  slti      $at, $a3, 0x14
/* 4CE60 8004C260 10200012 */  beqz      $at, .L8004C2AC
/* 4CE64 8004C264 3C098008 */  lui       $t1, 0x8008
/* 4CE68 8004C268 01234821 */  addu      $t1, $t1, $v1
/* 4CE6C 8004C26C 8D298EF0 */  lw        $t1, -0x7110($t1)
/* 4CE70 8004C270 44879000 */  mtc1      $a3, $f18
/* 4CE74 8004C274 3C013F00 */  lui       $at, 0x3f00
/* 4CE78 8004C278 44894000 */  mtc1      $t1, $f8
/* 4CE7C 8004C27C 46809120 */  cvt.s.w   $f4, $f18
/* 4CE80 8004C280 44818000 */  mtc1      $at, $f16
/* 4CE84 8004C284 8CC40000 */  lw        $a0, ($a2)
/* 4CE88 8004C288 468042A0 */  cvt.s.w   $f10, $f8
/* 4CE8C 8004C28C 46048182 */  mul.s     $f6, $f16, $f4
/* 4CE90 8004C290 460A1000 */  add.s     $f0, $f2, $f10
/* 4CE94 8004C294 46060000 */  add.s     $f0, $f0, $f6
/* 4CE98 8004C298 44050000 */  mfc1      $a1, $f0
/* 4CE9C 8004C29C 0C00E54D */  jal       func_80039534
/* 4CEA0 8004C2A0 00000000 */  nop       
/* 4CEA4 8004C2A4 10000063 */  b         .L8004C434
/* 4CEA8 8004C2A8 00001025 */  or        $v0, $zero, $zero
.L8004C2AC:
/* 4CEAC 8004C2AC 28E10014 */  slti      $at, $a3, 0x14
/* 4CEB0 8004C2B0 14200026 */  bnez      $at, .L8004C34C
/* 4CEB4 8004C2B4 3C0A8008 */  lui       $t2, 0x8008
/* 4CEB8 8004C2B8 01435021 */  addu      $t2, $t2, $v1
/* 4CEBC 8004C2BC 8D4A8EF0 */  lw        $t2, -0x7110($t2)
/* 4CEC0 8004C2C0 3C013F00 */  lui       $at, 0x3f00
/* 4CEC4 8004C2C4 44819000 */  mtc1      $at, $f18
/* 4CEC8 8004C2C8 448A4000 */  mtc1      $t2, $f8
/* 4CECC 8004C2CC 3C018008 */  lui       $at, 0x8008
/* 4CED0 8004C2D0 D424D708 */  ldc1      $f4, -0x28f8($at)
/* 4CED4 8004C2D4 468042A0 */  cvt.s.w   $f10, $f8
/* 4CED8 8004C2D8 8CC40000 */  lw        $a0, ($a2)
/* 4CEDC 8004C2DC 46009421 */  cvt.d.s   $f16, $f18
/* 4CEE0 8004C2E0 460A1000 */  add.s     $f0, $f2, $f10
/* 4CEE4 8004C2E4 46248182 */  mul.d     $f6, $f16, $f4
/* 4CEE8 8004C2E8 46000221 */  cvt.d.s   $f8, $f0
/* 4CEEC 8004C2EC 46264280 */  add.d     $f10, $f8, $f6
/* 4CEF0 8004C2F0 46205020 */  cvt.s.d   $f0, $f10
/* 4CEF4 8004C2F4 44050000 */  mfc1      $a1, $f0
/* 4CEF8 8004C2F8 0C00E54D */  jal       func_80039534
/* 4CEFC 8004C2FC 00000000 */  nop       
/* 4CF00 8004C300 1000004C */  b         .L8004C434
/* 4CF04 8004C304 00001025 */  or        $v0, $zero, $zero
.L8004C308:
/* 4CF08 8004C308 8FAB004C */  lw        $t3, 0x4c($sp)
/* 4CF0C 8004C30C 3C0D8008 */  lui       $t5, 0x8008
/* 4CF10 8004C310 25AD8F00 */  addiu     $t5, $t5, -0x7100
/* 4CF14 8004C314 000B6080 */  sll       $t4, $t3, 2
/* 4CF18 8004C318 018D3021 */  addu      $a2, $t4, $t5
/* 4CF1C 8004C31C 8CC40000 */  lw        $a0, ($a2)
/* 4CF20 8004C320 0C00E4D5 */  jal       func_80039354
/* 4CF24 8004C324 AFA60020 */  sw        $a2, 0x20($sp)
/* 4CF28 8004C328 14400003 */  bnez      $v0, .L8004C338
/* 4CF2C 8004C32C 8FA60020 */  lw        $a2, 0x20($sp)
/* 4CF30 8004C330 10000040 */  b         .L8004C434
/* 4CF34 8004C334 00001025 */  or        $v0, $zero, $zero
.L8004C338:
/* 4CF38 8004C338 8CC40000 */  lw        $a0, ($a2)
/* 4CF3C 8004C33C 0C00E4AA */  jal       func_800392A8
/* 4CF40 8004C340 2405000A */  addiu     $a1, $zero, 0xa
/* 4CF44 8004C344 1000003B */  b         .L8004C434
/* 4CF48 8004C348 00001025 */  or        $v0, $zero, $zero
.L8004C34C:
/* 4CF4C 8004C34C 8FA3004C */  lw        $v1, 0x4c($sp)
.L8004C350:
/* 4CF50 8004C350 3C048008 */  lui       $a0, 0x8008
/* 4CF54 8004C354 8C848F00 */  lw        $a0, -0x7100($a0)
/* 4CF58 8004C358 00031880 */  sll       $v1, $v1, 2
/* 4CF5C 8004C35C AFA30024 */  sw        $v1, 0x24($sp)
/* 4CF60 8004C360 24050014 */  addiu     $a1, $zero, 0x14
/* 4CF64 8004C364 0C00E4AA */  jal       func_800392A8
/* 4CF68 8004C368 E7A00034 */  swc1      $f0, 0x34($sp)
/* 4CF6C 8004C36C 3C048008 */  lui       $a0, 0x8008
/* 4CF70 8004C370 8C848F04 */  lw        $a0, -0x70fc($a0)
/* 4CF74 8004C374 0C00E4AA */  jal       func_800392A8
/* 4CF78 8004C378 24050014 */  addiu     $a1, $zero, 0x14
/* 4CF7C 8004C37C 3C048008 */  lui       $a0, 0x8008
/* 4CF80 8004C380 8C848F08 */  lw        $a0, -0x70f8($a0)
/* 4CF84 8004C384 0C00E4AA */  jal       func_800392A8
/* 4CF88 8004C388 24050014 */  addiu     $a1, $zero, 0x14
/* 4CF8C 8004C38C 3C048008 */  lui       $a0, 0x8008
/* 4CF90 8004C390 8C848F0C */  lw        $a0, -0x70f4($a0)
/* 4CF94 8004C394 0C00E4AA */  jal       func_800392A8
/* 4CF98 8004C398 24050014 */  addiu     $a1, $zero, 0x14
/* 4CF9C 8004C39C 8FA30024 */  lw        $v1, 0x24($sp)
/* 4CFA0 8004C3A0 3C028008 */  lui       $v0, 0x8008
/* 4CFA4 8004C3A4 C7A00034 */  lwc1      $f0, 0x34($sp)
/* 4CFA8 8004C3A8 00431021 */  addu      $v0, $v0, $v1
/* 4CFAC 8004C3AC 8C428EE0 */  lw        $v0, -0x7120($v0)
/* 4CFB0 8004C3B0 10000003 */  b         .L8004C3C0
/* 4CFB4 8004C3B4 2442007F */  addiu     $v0, $v0, 0x7f
/* 4CFB8 8004C3B8 1000001E */  b         .L8004C434
/* 4CFBC 8004C3BC 00001025 */  or        $v0, $zero, $zero
.L8004C3C0:
/* 4CFC0 8004C3C0 8FA60048 */  lw        $a2, 0x48($sp)
/* 4CFC4 8004C3C4 3C048010 */  lui       $a0, 0x8010
/* 4CFC8 8004C3C8 3C058010 */  lui       $a1, 0x8010
/* 4CFCC 8004C3CC 240EFFFF */  addiu     $t6, $zero, -1
/* 4CFD0 8004C3D0 AFAE0014 */  sw        $t6, 0x14($sp)
/* 4CFD4 8004C3D4 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4CFD8 8004C3D8 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4CFDC 8004C3DC 8FA70038 */  lw        $a3, 0x38($sp)
/* 4CFE0 8004C3E0 AFA20010 */  sw        $v0, 0x10($sp)
/* 4CFE4 8004C3E4 E7A00034 */  swc1      $f0, 0x34($sp)
/* 4CFE8 8004C3E8 0C00E409 */  jal       func_80039024
/* 4CFEC 8004C3EC 30C6FFFF */  andi      $a2, $a2, 0xffff
/* 4CFF0 8004C3F0 C7A00034 */  lwc1      $f0, 0x34($sp)
/* 4CFF4 8004C3F4 00402025 */  or        $a0, $v0, $zero
/* 4CFF8 8004C3F8 AFA20044 */  sw        $v0, 0x44($sp)
/* 4CFFC 8004C3FC 44050000 */  mfc1      $a1, $f0
/* 4D000 8004C400 0C00E54D */  jal       func_80039534
/* 4D004 8004C404 00000000 */  nop       
/* 4D008 8004C408 8FAF0048 */  lw        $t7, 0x48($sp)
/* 4D00C 8004C40C 3C010003 */  lui       $at, 3
/* 4D010 8004C410 34210003 */  ori       $at, $at, 3
/* 4D014 8004C414 15E10006 */  bne       $t7, $at, .L8004C430
/* 4D018 8004C418 8FA30044 */  lw        $v1, 0x44($sp)
/* 4D01C 8004C41C 8FB8004C */  lw        $t8, 0x4c($sp)
/* 4D020 8004C420 3C018008 */  lui       $at, 0x8008
/* 4D024 8004C424 0018C880 */  sll       $t9, $t8, 2
/* 4D028 8004C428 00390821 */  addu      $at, $at, $t9
/* 4D02C 8004C42C AC238F00 */  sw        $v1, -0x7100($at)
.L8004C430:
/* 4D030 8004C430 00601025 */  or        $v0, $v1, $zero
.L8004C434:
/* 4D034 8004C434 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4D038 8004C438 27BD0048 */  addiu     $sp, $sp, 0x48
/* 4D03C 8004C43C 03E00008 */  jr        $ra
/* 4D040 8004C440 00000000 */  nop       

glabel func_8004C444
/* 4D044 8004C444 AFA40000 */  sw        $a0, ($sp)
/* 4D048 8004C448 AFA50004 */  sw        $a1, 4($sp)
/* 4D04C 8004C44C 03E00008 */  jr        $ra
/* 4D050 8004C450 AFA60008 */  sw        $a2, 8($sp)

glabel func_8004C454
/* 4D054 8004C454 10800003 */  beqz      $a0, .L8004C464
/* 4D058 8004C458 2C810005 */  sltiu     $at, $a0, 5
/* 4D05C 8004C45C 54200003 */  bnel      $at, $zero, .L8004C46C
/* 4D060 8004C460 24010001 */  addiu     $at, $zero, 1
.L8004C464:
/* 4D064 8004C464 24040001 */  addiu     $a0, $zero, 1
/* 4D068 8004C468 24010001 */  addiu     $at, $zero, 1
.L8004C46C:
/* 4D06C 8004C46C 10A1000B */  beq       $a1, $at, .L8004C49C
/* 4D070 8004C470 24010002 */  addiu     $at, $zero, 2
/* 4D074 8004C474 10A1000B */  beq       $a1, $at, .L8004C4A4
/* 4D078 8004C478 00041880 */  sll       $v1, $a0, 2
/* 4D07C 8004C47C 24010003 */  addiu     $at, $zero, 3
/* 4D080 8004C480 10A1000F */  beq       $a1, $at, .L8004C4C0
/* 4D084 8004C484 00041880 */  sll       $v1, $a0, 2
/* 4D088 8004C488 24010004 */  addiu     $at, $zero, 4
/* 4D08C 8004C48C 10A10014 */  beq       $a1, $at, .L8004C4E0
/* 4D090 8004C490 00041880 */  sll       $v1, $a0, 2
/* 4D094 8004C494 03E00008 */  jr        $ra
/* 4D098 8004C498 24020080 */  addiu     $v0, $zero, 0x80
.L8004C49C:
/* 4D09C 8004C49C 03E00008 */  jr        $ra
/* 4D0A0 8004C4A0 24020080 */  addiu     $v0, $zero, 0x80
.L8004C4A4:
/* 4D0A4 8004C4A4 00641823 */  subu      $v1, $v1, $a0
/* 4D0A8 8004C4A8 00031880 */  sll       $v1, $v1, 2
/* 4D0AC 8004C4AC 00641823 */  subu      $v1, $v1, $a0
/* 4D0B0 8004C4B0 00031900 */  sll       $v1, $v1, 4
/* 4D0B4 8004C4B4 00641823 */  subu      $v1, $v1, $a0
/* 4D0B8 8004C4B8 03E00008 */  jr        $ra
/* 4D0BC 8004C4BC 2462FF79 */  addiu     $v0, $v1, -0x87
.L8004C4C0:
/* 4D0C0 8004C4C0 00641823 */  subu      $v1, $v1, $a0
/* 4D0C4 8004C4C4 00031880 */  sll       $v1, $v1, 2
/* 4D0C8 8004C4C8 00641821 */  addu      $v1, $v1, $a0
/* 4D0CC 8004C4CC 00031880 */  sll       $v1, $v1, 2
/* 4D0D0 8004C4D0 00641823 */  subu      $v1, $v1, $a0
/* 4D0D4 8004C4D4 00031840 */  sll       $v1, $v1, 1
/* 4D0D8 8004C4D8 03E00008 */  jr        $ra
/* 4D0DC 8004C4DC 2462FFB3 */  addiu     $v0, $v1, -0x4d
.L8004C4E0:
/* 4D0E0 8004C4E0 00641821 */  addu      $v1, $v1, $a0
/* 4D0E4 8004C4E4 000318C0 */  sll       $v1, $v1, 3
/* 4D0E8 8004C4E8 00641823 */  subu      $v1, $v1, $a0
/* 4D0EC 8004C4EC 00031840 */  sll       $v1, $v1, 1
/* 4D0F0 8004C4F0 2463FFBC */  addiu     $v1, $v1, -0x44
/* 4D0F4 8004C4F4 03E00008 */  jr        $ra
/* 4D0F8 8004C4F8 00601025 */  or        $v0, $v1, $zero

glabel func_8004C4FC
/* 4D0FC 8004C4FC 3C01FFFB */  lui       $at, 0xfffb
/* 4D100 8004C500 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 4D104 8004C504 3421FFFF */  ori       $at, $at, 0xffff
/* 4D108 8004C508 00817821 */  addu      $t7, $a0, $at
/* 4D10C 8004C50C AFB00020 */  sw        $s0, 0x20($sp)
/* 4D110 8004C510 44800000 */  mtc1      $zero, $f0
/* 4D114 8004C514 2DE10007 */  sltiu     $at, $t7, 7
/* 4D118 8004C518 00A08025 */  or        $s0, $a1, $zero
/* 4D11C 8004C51C AFBF0024 */  sw        $ra, 0x24($sp)
/* 4D120 8004C520 AFA40040 */  sw        $a0, 0x40($sp)
/* 4D124 8004C524 24030080 */  addiu     $v1, $zero, 0x80
/* 4D128 8004C528 24070080 */  addiu     $a3, $zero, 0x80
/* 4D12C 8004C52C 10200045 */  beqz      $at, .L8004C644
/* 4D130 8004C530 AFA40028 */  sw        $a0, 0x28($sp)
/* 4D134 8004C534 000F7880 */  sll       $t7, $t7, 2
/* 4D138 8004C538 3C018008 */  lui       $at, 0x8008
/* 4D13C 8004C53C 002F0821 */  addu      $at, $at, $t7
/* 4D140 8004C540 8C2FD710 */  lw        $t7, -0x28f0($at)
/* 4D144 8004C544 01E00008 */  jr        $t7
/* 4D148 8004C548 00000000 */  nop       
/* 4D14C 8004C54C 1A000004 */  blez      $s0, .L8004C560
/* 4D150 8004C550 3C048008 */  lui       $a0, 0x8008
/* 4D154 8004C554 2A010005 */  slti      $at, $s0, 5
/* 4D158 8004C558 54200003 */  bnel      $at, $zero, .L8004C568
/* 4D15C 8004C55C 0010C080 */  sll       $t8, $s0, 2
.L8004C560:
/* 4D160 8004C560 24100001 */  addiu     $s0, $zero, 1
/* 4D164 8004C564 0010C080 */  sll       $t8, $s0, 2
.L8004C568:
/* 4D168 8004C568 00982021 */  addu      $a0, $a0, $t8
/* 4D16C 8004C56C 8C848F0C */  lw        $a0, -0x70f4($a0)
/* 4D170 8004C570 24050014 */  addiu     $a1, $zero, 0x14
/* 4D174 8004C574 AFA60048 */  sw        $a2, 0x48($sp)
/* 4D178 8004C578 0C00E4AA */  jal       func_800392A8
/* 4D17C 8004C57C AFA70030 */  sw        $a3, 0x30($sp)
/* 4D180 8004C580 8FA50048 */  lw        $a1, 0x48($sp)
/* 4D184 8004C584 0C013115 */  jal       func_8004C454
/* 4D188 8004C588 02002025 */  or        $a0, $s0, $zero
/* 4D18C 8004C58C 24190004 */  addiu     $t9, $zero, 4
/* 4D190 8004C590 03304023 */  subu      $t0, $t9, $s0
/* 4D194 8004C594 44882000 */  mtc1      $t0, $f4
/* 4D198 8004C598 3C013F00 */  lui       $at, 0x3f00
/* 4D19C 8004C59C 44814000 */  mtc1      $at, $f8
/* 4D1A0 8004C5A0 468021A0 */  cvt.s.w   $f6, $f4
/* 4D1A4 8004C5A4 8FA70030 */  lw        $a3, 0x30($sp)
/* 4D1A8 8004C5A8 00401825 */  or        $v1, $v0, $zero
/* 4D1AC 8004C5AC 46083002 */  mul.s     $f0, $f6, $f8
/* 4D1B0 8004C5B0 10000027 */  b         .L8004C650
/* 4D1B4 8004C5B4 8FA60040 */  lw        $a2, 0x40($sp)
/* 4D1B8 8004C5B8 1A000004 */  blez      $s0, .L8004C5CC
/* 4D1BC 8004C5BC 00C02825 */  or        $a1, $a2, $zero
/* 4D1C0 8004C5C0 2A010005 */  slti      $at, $s0, 5
/* 4D1C4 8004C5C4 54200003 */  bnel      $at, $zero, .L8004C5D4
/* 4D1C8 8004C5C8 02002025 */  or        $a0, $s0, $zero
.L8004C5CC:
/* 4D1CC 8004C5CC 24100001 */  addiu     $s0, $zero, 1
/* 4D1D0 8004C5D0 02002025 */  or        $a0, $s0, $zero
.L8004C5D4:
/* 4D1D4 8004C5D4 0C013115 */  jal       func_8004C454
/* 4D1D8 8004C5D8 AFA70030 */  sw        $a3, 0x30($sp)
/* 4D1DC 8004C5DC 24090004 */  addiu     $t1, $zero, 4
/* 4D1E0 8004C5E0 01305023 */  subu      $t2, $t1, $s0
/* 4D1E4 8004C5E4 448A5000 */  mtc1      $t2, $f10
/* 4D1E8 8004C5E8 3C013F00 */  lui       $at, 0x3f00
/* 4D1EC 8004C5EC 44819000 */  mtc1      $at, $f18
/* 4D1F0 8004C5F0 46805420 */  cvt.s.w   $f16, $f10
/* 4D1F4 8004C5F4 8FA70030 */  lw        $a3, 0x30($sp)
/* 4D1F8 8004C5F8 00401825 */  or        $v1, $v0, $zero
/* 4D1FC 8004C5FC 46128002 */  mul.s     $f0, $f16, $f18
/* 4D200 8004C600 10000013 */  b         .L8004C650
/* 4D204 8004C604 8FA60040 */  lw        $a2, 0x40($sp)
/* 4D208 8004C608 10000010 */  b         .L8004C64C
/* 4D20C 8004C60C 240700C0 */  addiu     $a3, $zero, 0xc0
/* 4D210 8004C610 1A000004 */  blez      $s0, .L8004C624
/* 4D214 8004C614 00C02825 */  or        $a1, $a2, $zero
/* 4D218 8004C618 2A010005 */  slti      $at, $s0, 5
/* 4D21C 8004C61C 54200003 */  bnel      $at, $zero, .L8004C62C
/* 4D220 8004C620 02002025 */  or        $a0, $s0, $zero
.L8004C624:
/* 4D224 8004C624 24100001 */  addiu     $s0, $zero, 1
/* 4D228 8004C628 02002025 */  or        $a0, $s0, $zero
.L8004C62C:
/* 4D22C 8004C62C 0C013115 */  jal       func_8004C454
/* 4D230 8004C630 E7A0002C */  swc1      $f0, 0x2c($sp)
/* 4D234 8004C634 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 4D238 8004C638 00401825 */  or        $v1, $v0, $zero
/* 4D23C 8004C63C 10000003 */  b         .L8004C64C
/* 4D240 8004C640 240700C0 */  addiu     $a3, $zero, 0xc0
.L8004C644:
/* 4D244 8004C644 1000001C */  b         .L8004C6B8
/* 4D248 8004C648 00001025 */  or        $v0, $zero, $zero
.L8004C64C:
/* 4D24C 8004C64C 8FA60040 */  lw        $a2, 0x40($sp)
.L8004C650:
/* 4D250 8004C650 3C048010 */  lui       $a0, 0x8010
/* 4D254 8004C654 3C058010 */  lui       $a1, 0x8010
/* 4D258 8004C658 240BFFFF */  addiu     $t3, $zero, -1
/* 4D25C 8004C65C AFAB0014 */  sw        $t3, 0x14($sp)
/* 4D260 8004C660 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4D264 8004C664 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4D268 8004C668 AFA30010 */  sw        $v1, 0x10($sp)
/* 4D26C 8004C66C E7A0002C */  swc1      $f0, 0x2c($sp)
/* 4D270 8004C670 0C00E409 */  jal       func_80039024
/* 4D274 8004C674 30C6FFFF */  andi      $a2, $a2, 0xffff
/* 4D278 8004C678 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 4D27C 8004C67C 00402025 */  or        $a0, $v0, $zero
/* 4D280 8004C680 AFA2003C */  sw        $v0, 0x3c($sp)
/* 4D284 8004C684 44050000 */  mfc1      $a1, $f0
/* 4D288 8004C688 0C00E54D */  jal       func_80039534
/* 4D28C 8004C68C 00000000 */  nop       
/* 4D290 8004C690 8FAC0028 */  lw        $t4, 0x28($sp)
/* 4D294 8004C694 3C010004 */  lui       $at, 4
/* 4D298 8004C698 34210004 */  ori       $at, $at, 4
/* 4D29C 8004C69C 15810005 */  bne       $t4, $at, .L8004C6B4
/* 4D2A0 8004C6A0 8FA3003C */  lw        $v1, 0x3c($sp)
/* 4D2A4 8004C6A4 00106880 */  sll       $t5, $s0, 2
/* 4D2A8 8004C6A8 3C018008 */  lui       $at, 0x8008
/* 4D2AC 8004C6AC 002D0821 */  addu      $at, $at, $t5
/* 4D2B0 8004C6B0 AC238F0C */  sw        $v1, -0x70f4($at)
.L8004C6B4:
/* 4D2B4 8004C6B4 00601025 */  or        $v0, $v1, $zero
.L8004C6B8:
/* 4D2B8 8004C6B8 8FBF0024 */  lw        $ra, 0x24($sp)
/* 4D2BC 8004C6BC 8FB00020 */  lw        $s0, 0x20($sp)
/* 4D2C0 8004C6C0 27BD0040 */  addiu     $sp, $sp, 0x40
/* 4D2C4 8004C6C4 03E00008 */  jr        $ra
/* 4D2C8 8004C6C8 00000000 */  nop       

glabel func_8004C6CC
/* 4D2CC 8004C6CC AFA40000 */  sw        $a0, ($sp)
/* 4D2D0 8004C6D0 AFA50004 */  sw        $a1, 4($sp)
/* 4D2D4 8004C6D4 03E00008 */  jr        $ra
/* 4D2D8 8004C6D8 AFA60008 */  sw        $a2, 8($sp)

glabel func_8004C6DC
/* 4D2DC 8004C6DC 3C01FFFA */  lui       $at, 0xfffa
/* 4D2E0 8004C6E0 3421FFFF */  ori       $at, $at, 0xffff
/* 4D2E4 8004C6E4 00817821 */  addu      $t7, $a0, $at
/* 4D2E8 8004C6E8 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 4D2EC 8004C6EC 44800000 */  mtc1      $zero, $f0
/* 4D2F0 8004C6F0 2DE1000C */  sltiu     $at, $t7, 0xc
/* 4D2F4 8004C6F4 AFBF001C */  sw        $ra, 0x1c($sp)
/* 4D2F8 8004C6F8 AFA40038 */  sw        $a0, 0x38($sp)
/* 4D2FC 8004C6FC 24020080 */  addiu     $v0, $zero, 0x80
/* 4D300 8004C700 1020004E */  beqz      $at, .L8004C83C
/* 4D304 8004C704 24070080 */  addiu     $a3, $zero, 0x80
/* 4D308 8004C708 000F7880 */  sll       $t7, $t7, 2
/* 4D30C 8004C70C 3C018008 */  lui       $at, 0x8008
/* 4D310 8004C710 002F0821 */  addu      $at, $at, $t7
/* 4D314 8004C714 8C2FD72C */  lw        $t7, -0x28d4($at)
/* 4D318 8004C718 01E00008 */  jr        $t7
/* 4D31C 8004C71C 00000000 */  nop       
/* 4D320 8004C720 18A00004 */  blez      $a1, .L8004C734
/* 4D324 8004C724 24180004 */  addiu     $t8, $zero, 4
/* 4D328 8004C728 28A10005 */  slti      $at, $a1, 5
/* 4D32C 8004C72C 54200003 */  bnel      $at, $zero, .L8004C73C
/* 4D330 8004C730 0305C823 */  subu      $t9, $t8, $a1
.L8004C734:
/* 4D334 8004C734 24050001 */  addiu     $a1, $zero, 1
/* 4D338 8004C738 0305C823 */  subu      $t9, $t8, $a1
.L8004C73C:
/* 4D33C 8004C73C 44992000 */  mtc1      $t9, $f4
/* 4D340 8004C740 3C013F00 */  lui       $at, 0x3f00
/* 4D344 8004C744 44814000 */  mtc1      $at, $f8
/* 4D348 8004C748 468021A0 */  cvt.s.w   $f6, $f4
/* 4D34C 8004C74C 28C10141 */  slti      $at, $a2, 0x141
/* 4D350 8004C750 46083002 */  mul.s     $f0, $f6, $f8
/* 4D354 8004C754 54200003 */  bnel      $at, $zero, .L8004C764
/* 4D358 8004C758 44865000 */  mtc1      $a2, $f10
/* 4D35C 8004C75C 24060140 */  addiu     $a2, $zero, 0x140
/* 4D360 8004C760 44865000 */  mtc1      $a2, $f10
.L8004C764:
/* 4D364 8004C764 3C013F4C */  lui       $at, 0x3f4c
/* 4D368 8004C768 44819000 */  mtc1      $at, $f18
/* 4D36C 8004C76C 46805420 */  cvt.s.w   $f16, $f10
/* 4D370 8004C770 24020001 */  addiu     $v0, $zero, 1
/* 4D374 8004C774 3C014F00 */  lui       $at, 0x4f00
/* 4D378 8004C778 46128102 */  mul.s     $f4, $f16, $f18
/* 4D37C 8004C77C 4448F800 */  cfc1      $t0, $31
/* 4D380 8004C780 44C2F800 */  ctc1      $v0, $31
/* 4D384 8004C784 00000000 */  nop       
/* 4D388 8004C788 460021A4 */  cvt.w.s   $f6, $f4
/* 4D38C 8004C78C 4442F800 */  cfc1      $v0, $31
/* 4D390 8004C790 00000000 */  nop       
/* 4D394 8004C794 30420078 */  andi      $v0, $v0, 0x78
/* 4D398 8004C798 50400015 */  beql      $v0, $zero, .L8004C7F0
/* 4D39C 8004C79C 44023000 */  mfc1      $v0, $f6
/* 4D3A0 8004C7A0 44813000 */  mtc1      $at, $f6
/* 4D3A4 8004C7A4 24020001 */  addiu     $v0, $zero, 1
/* 4D3A8 8004C7A8 3C018000 */  lui       $at, 0x8000
/* 4D3AC 8004C7AC 46062181 */  sub.s     $f6, $f4, $f6
/* 4D3B0 8004C7B0 44C2F800 */  ctc1      $v0, $31
/* 4D3B4 8004C7B4 00000000 */  nop       
/* 4D3B8 8004C7B8 460031A4 */  cvt.w.s   $f6, $f6
/* 4D3BC 8004C7BC 4442F800 */  cfc1      $v0, $31
/* 4D3C0 8004C7C0 00000000 */  nop       
/* 4D3C4 8004C7C4 30420078 */  andi      $v0, $v0, 0x78
/* 4D3C8 8004C7C8 54400006 */  bnel      $v0, $zero, .L8004C7E4
/* 4D3CC 8004C7CC 44C8F800 */  ctc1      $t0, $31
/* 4D3D0 8004C7D0 44023000 */  mfc1      $v0, $f6
/* 4D3D4 8004C7D4 44C8F800 */  ctc1      $t0, $31
/* 4D3D8 8004C7D8 1000001A */  b         .L8004C844
/* 4D3DC 8004C7DC 00411025 */  or        $v0, $v0, $at
/* 4D3E0 8004C7E0 44C8F800 */  ctc1      $t0, $31
.L8004C7E4:
/* 4D3E4 8004C7E4 10000017 */  b         .L8004C844
/* 4D3E8 8004C7E8 2402FFFF */  addiu     $v0, $zero, -1
/* 4D3EC 8004C7EC 44023000 */  mfc1      $v0, $f6
.L8004C7F0:
/* 4D3F0 8004C7F0 00000000 */  nop       
/* 4D3F4 8004C7F4 0442FFFB */  bltzl     $v0, .L8004C7E4
/* 4D3F8 8004C7F8 44C8F800 */  ctc1      $t0, $31
/* 4D3FC 8004C7FC 44C8F800 */  ctc1      $t0, $31
/* 4D400 8004C800 10000011 */  b         .L8004C848
/* 4D404 8004C804 8FA60038 */  lw        $a2, 0x38($sp)
/* 4D408 8004C808 3C048008 */  lui       $a0, 0x8008
/* 4D40C 8004C80C 8C848F20 */  lw        $a0, -0x70e0($a0)
/* 4D410 8004C810 24050001 */  addiu     $a1, $zero, 1
/* 4D414 8004C814 AFA2002C */  sw        $v0, 0x2c($sp)
/* 4D418 8004C818 AFA70028 */  sw        $a3, 0x28($sp)
/* 4D41C 8004C81C 0C00E4AA */  jal       func_800392A8
/* 4D420 8004C820 E7A00024 */  swc1      $f0, 0x24($sp)
/* 4D424 8004C824 8FA2002C */  lw        $v0, 0x2c($sp)
/* 4D428 8004C828 8FA70028 */  lw        $a3, 0x28($sp)
/* 4D42C 8004C82C 10000005 */  b         .L8004C844
/* 4D430 8004C830 C7A00024 */  lwc1      $f0, 0x24($sp)
/* 4D434 8004C834 10000003 */  b         .L8004C844
/* 4D438 8004C838 240700A0 */  addiu     $a3, $zero, 0xa0
.L8004C83C:
/* 4D43C 8004C83C 10000015 */  b         .L8004C894
/* 4D440 8004C840 00001025 */  or        $v0, $zero, $zero
.L8004C844:
/* 4D444 8004C844 8FA60038 */  lw        $a2, 0x38($sp)
.L8004C848:
/* 4D448 8004C848 3C048010 */  lui       $a0, 0x8010
/* 4D44C 8004C84C 3C058010 */  lui       $a1, 0x8010
/* 4D450 8004C850 2409FFFF */  addiu     $t1, $zero, -1
/* 4D454 8004C854 AFA90014 */  sw        $t1, 0x14($sp)
/* 4D458 8004C858 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4D45C 8004C85C 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4D460 8004C860 AFA20010 */  sw        $v0, 0x10($sp)
/* 4D464 8004C864 E7A00024 */  swc1      $f0, 0x24($sp)
/* 4D468 8004C868 0C00E409 */  jal       func_80039024
/* 4D46C 8004C86C 30C6FFFF */  andi      $a2, $a2, 0xffff
/* 4D470 8004C870 C7A00024 */  lwc1      $f0, 0x24($sp)
/* 4D474 8004C874 00402025 */  or        $a0, $v0, $zero
/* 4D478 8004C878 AFA20034 */  sw        $v0, 0x34($sp)
/* 4D47C 8004C87C 44050000 */  mfc1      $a1, $f0
/* 4D480 8004C880 0C00E54D */  jal       func_80039534
/* 4D484 8004C884 00000000 */  nop       
/* 4D488 8004C888 8FA20034 */  lw        $v0, 0x34($sp)
/* 4D48C 8004C88C 3C018008 */  lui       $at, 0x8008
/* 4D490 8004C890 AC228F20 */  sw        $v0, -0x70e0($at)
.L8004C894:
/* 4D494 8004C894 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4D498 8004C898 27BD0038 */  addiu     $sp, $sp, 0x38
/* 4D49C 8004C89C 03E00008 */  jr        $ra
/* 4D4A0 8004C8A0 00000000 */  nop       

glabel func_8004C8A4
/* 4D4A4 8004C8A4 AFA40000 */  sw        $a0, ($sp)
/* 4D4A8 8004C8A8 AFA50004 */  sw        $a1, 4($sp)
/* 4D4AC 8004C8AC 03E00008 */  jr        $ra
/* 4D4B0 8004C8B0 AFA60008 */  sw        $a2, 8($sp)

glabel func_8004C8B4
/* 4D4B4 8004C8B4 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 4D4B8 8004C8B8 28AF0004 */  slti      $t7, $a1, 4
/* 4D4BC 8004C8BC 44800000 */  mtc1      $zero, $f0
/* 4D4C0 8004C8C0 39EF0001 */  xori      $t7, $t7, 1
/* 4D4C4 8004C8C4 28B80000 */  slti      $t8, $a1, 0
/* 4D4C8 8004C8C8 240E0080 */  addiu     $t6, $zero, 0x80
/* 4D4CC 8004C8CC 01F8C825 */  or        $t9, $t7, $t8
/* 4D4D0 8004C8D0 AFBF001C */  sw        $ra, 0x1c($sp)
/* 4D4D4 8004C8D4 AFA40038 */  sw        $a0, 0x38($sp)
/* 4D4D8 8004C8D8 AFA60040 */  sw        $a2, 0x40($sp)
/* 4D4DC 8004C8DC 2403007F */  addiu     $v1, $zero, 0x7f
/* 4D4E0 8004C8E0 AFAE0028 */  sw        $t6, 0x28($sp)
/* 4D4E4 8004C8E4 13200003 */  beqz      $t9, .L8004C8F4
/* 4D4E8 8004C8E8 E7A00020 */  swc1      $f0, 0x20($sp)
/* 4D4EC 8004C8EC 1000005B */  b         .L8004CA5C
/* 4D4F0 8004C8F0 00001025 */  or        $v0, $zero, $zero
.L8004C8F4:
/* 4D4F4 8004C8F4 8FA80038 */  lw        $t0, 0x38($sp)
/* 4D4F8 8004C8F8 3C01FFF9 */  lui       $at, 0xfff9
/* 4D4FC 8004C8FC 3421FFFF */  ori       $at, $at, 0xffff
/* 4D500 8004C900 01014821 */  addu      $t1, $t0, $at
/* 4D504 8004C904 2D21000B */  sltiu     $at, $t1, 0xb
/* 4D508 8004C908 10200033 */  beqz      $at, .L8004C9D8
/* 4D50C 8004C90C 00094880 */  sll       $t1, $t1, 2
/* 4D510 8004C910 3C018008 */  lui       $at, 0x8008
/* 4D514 8004C914 00290821 */  addu      $at, $at, $t1
/* 4D518 8004C918 8C29D75C */  lw        $t1, -0x28a4($at)
/* 4D51C 8004C91C 01200008 */  jr        $t1
/* 4D520 8004C920 00000000 */  nop       
/* 4D524 8004C924 00051080 */  sll       $v0, $a1, 2
/* 4D528 8004C928 3C018008 */  lui       $at, 0x8008
/* 4D52C 8004C92C 00220821 */  addu      $at, $at, $v0
/* 4D530 8004C930 C4248F34 */  lwc1      $f4, -0x70cc($at)
/* 4D534 8004C934 3C038008 */  lui       $v1, 0x8008
/* 4D538 8004C938 00621821 */  addu      $v1, $v1, $v0
/* 4D53C 8004C93C 46040180 */  add.s     $f6, $f0, $f4
/* 4D540 8004C940 8C638F24 */  lw        $v1, -0x70dc($v1)
/* 4D544 8004C944 E7A60020 */  swc1      $f6, 0x20($sp)
/* 4D548 8004C948 10000025 */  b         .L8004C9E0
/* 4D54C 8004C94C 2463007F */  addiu     $v1, $v1, 0x7f
/* 4D550 8004C950 00055080 */  sll       $t2, $a1, 2
/* 4D554 8004C954 3C038008 */  lui       $v1, 0x8008
/* 4D558 8004C958 006A1821 */  addu      $v1, $v1, $t2
/* 4D55C 8004C95C 8C638F24 */  lw        $v1, -0x70dc($v1)
/* 4D560 8004C960 240B0070 */  addiu     $t3, $zero, 0x70
/* 4D564 8004C964 AFAB0028 */  sw        $t3, 0x28($sp)
/* 4D568 8004C968 1000001D */  b         .L8004C9E0
/* 4D56C 8004C96C 2463007F */  addiu     $v1, $v1, 0x7f
/* 4D570 8004C970 3C048008 */  lui       $a0, 0x8008
/* 4D574 8004C974 8C848F48 */  lw        $a0, -0x70b8($a0)
/* 4D578 8004C978 0C00E4D5 */  jal       func_80039354
/* 4D57C 8004C97C AFA3002C */  sw        $v1, 0x2c($sp)
/* 4D580 8004C980 10400003 */  beqz      $v0, .L8004C990
/* 4D584 8004C984 8FA3002C */  lw        $v1, 0x2c($sp)
/* 4D588 8004C988 10000034 */  b         .L8004CA5C
/* 4D58C 8004C98C 00001025 */  or        $v0, $zero, $zero
.L8004C990:
/* 4D590 8004C990 3C048008 */  lui       $a0, 0x8008
/* 4D594 8004C994 8C848F44 */  lw        $a0, -0x70bc($a0)
/* 4D598 8004C998 0C00E4D5 */  jal       func_80039354
/* 4D59C 8004C99C AFA3002C */  sw        $v1, 0x2c($sp)
/* 4D5A0 8004C9A0 1040000F */  beqz      $v0, .L8004C9E0
/* 4D5A4 8004C9A4 8FA3002C */  lw        $v1, 0x2c($sp)
/* 4D5A8 8004C9A8 1000002C */  b         .L8004CA5C
/* 4D5AC 8004C9AC 00001025 */  or        $v0, $zero, $zero
/* 4D5B0 8004C9B0 3C048008 */  lui       $a0, 0x8008
/* 4D5B4 8004C9B4 8C848F48 */  lw        $a0, -0x70b8($a0)
/* 4D5B8 8004C9B8 0C00E4D5 */  jal       func_80039354
/* 4D5BC 8004C9BC AFA3002C */  sw        $v1, 0x2c($sp)
/* 4D5C0 8004C9C0 10400007 */  beqz      $v0, .L8004C9E0
/* 4D5C4 8004C9C4 8FA3002C */  lw        $v1, 0x2c($sp)
/* 4D5C8 8004C9C8 3C0C0006 */  lui       $t4, 6
/* 4D5CC 8004C9CC 358C0008 */  ori       $t4, $t4, 8
/* 4D5D0 8004C9D0 10000003 */  b         .L8004C9E0
/* 4D5D4 8004C9D4 AFAC0038 */  sw        $t4, 0x38($sp)
.L8004C9D8:
/* 4D5D8 8004C9D8 10000020 */  b         .L8004CA5C
/* 4D5DC 8004C9DC 00001025 */  or        $v0, $zero, $zero
.L8004C9E0:
/* 4D5E0 8004C9E0 8FA60038 */  lw        $a2, 0x38($sp)
/* 4D5E4 8004C9E4 3C048010 */  lui       $a0, 0x8010
/* 4D5E8 8004C9E8 3C058010 */  lui       $a1, 0x8010
/* 4D5EC 8004C9EC 240DFFFF */  addiu     $t5, $zero, -1
/* 4D5F0 8004C9F0 AFAD0014 */  sw        $t5, 0x14($sp)
/* 4D5F4 8004C9F4 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4D5F8 8004C9F8 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4D5FC 8004C9FC 8FA70028 */  lw        $a3, 0x28($sp)
/* 4D600 8004CA00 AFA30010 */  sw        $v1, 0x10($sp)
/* 4D604 8004CA04 0C00E409 */  jal       func_80039024
/* 4D608 8004CA08 30C6FFFF */  andi      $a2, $a2, 0xffff
/* 4D60C 8004CA0C 8FAE0038 */  lw        $t6, 0x38($sp)
/* 4D610 8004CA10 3C010006 */  lui       $at, 6
/* 4D614 8004CA14 34210005 */  ori       $at, $at, 5
/* 4D618 8004CA18 15C10009 */  bne       $t6, $at, .L8004CA40
/* 4D61C 8004CA1C 00403025 */  or        $a2, $v0, $zero
/* 4D620 8004CA20 3C048008 */  lui       $a0, 0x8008
/* 4D624 8004CA24 8C848F44 */  lw        $a0, -0x70bc($a0)
/* 4D628 8004CA28 0C00E4D5 */  jal       func_80039354
/* 4D62C 8004CA2C AFA20034 */  sw        $v0, 0x34($sp)
/* 4D630 8004CA30 14400003 */  bnez      $v0, .L8004CA40
/* 4D634 8004CA34 8FA60034 */  lw        $a2, 0x34($sp)
/* 4D638 8004CA38 3C018008 */  lui       $at, 0x8008
/* 4D63C 8004CA3C AC268F44 */  sw        $a2, -0x70bc($at)
.L8004CA40:
/* 4D640 8004CA40 3C018008 */  lui       $at, 0x8008
/* 4D644 8004CA44 AC268F48 */  sw        $a2, -0x70b8($at)
/* 4D648 8004CA48 00C02025 */  or        $a0, $a2, $zero
/* 4D64C 8004CA4C 8FA50020 */  lw        $a1, 0x20($sp)
/* 4D650 8004CA50 0C00E54D */  jal       func_80039534
/* 4D654 8004CA54 AFA60034 */  sw        $a2, 0x34($sp)
/* 4D658 8004CA58 8FA20034 */  lw        $v0, 0x34($sp)
.L8004CA5C:
/* 4D65C 8004CA5C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4D660 8004CA60 27BD0038 */  addiu     $sp, $sp, 0x38
/* 4D664 8004CA64 03E00008 */  jr        $ra
/* 4D668 8004CA68 00000000 */  nop       

glabel func_8004CA6C
/* 4D66C 8004CA6C AFA40000 */  sw        $a0, ($sp)
/* 4D670 8004CA70 AFA50004 */  sw        $a1, 4($sp)
/* 4D674 8004CA74 03E00008 */  jr        $ra
/* 4D678 8004CA78 AFA60008 */  sw        $a2, 8($sp)

glabel func_8004CA7C
/* 4D67C 8004CA7C 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 4D680 8004CA80 3C0E8008 */  lui       $t6, 0x8008
/* 4D684 8004CA84 3C01FFF8 */  lui       $at, 0xfff8
/* 4D688 8004CA88 AFBF001C */  sw        $ra, 0x1c($sp)
/* 4D68C 8004CA8C AFA60050 */  sw        $a2, 0x50($sp)
/* 4D690 8004CA90 25CE8F50 */  addiu     $t6, $t6, -0x70b0
/* 4D694 8004CA94 3421FFFF */  ori       $at, $at, 0xffff
/* 4D698 8004CA98 8DD80000 */  lw        $t8, ($t6)
/* 4D69C 8004CA9C 0081C821 */  addu      $t9, $a0, $at
/* 4D6A0 8004CAA0 27A3002C */  addiu     $v1, $sp, 0x2c
/* 4D6A4 8004CAA4 44800000 */  mtc1      $zero, $f0
/* 4D6A8 8004CAA8 2F210009 */  sltiu     $at, $t9, 9
/* 4D6AC 8004CAAC 24080080 */  addiu     $t0, $zero, 0x80
/* 4D6B0 8004CAB0 24070080 */  addiu     $a3, $zero, 0x80
/* 4D6B4 8004CAB4 2402FFFF */  addiu     $v0, $zero, -1
/* 4D6B8 8004CAB8 3086FFFF */  andi      $a2, $a0, 0xffff
/* 4D6BC 8004CABC 1020003F */  beqz      $at, .L8004CBBC
/* 4D6C0 8004CAC0 AC780000 */  sw        $t8, ($v1)
/* 4D6C4 8004CAC4 0019C880 */  sll       $t9, $t9, 2
/* 4D6C8 8004CAC8 3C018008 */  lui       $at, 0x8008
/* 4D6CC 8004CACC 00390821 */  addu      $at, $at, $t9
/* 4D6D0 8004CAD0 8C39D788 */  lw        $t9, -0x2878($at)
/* 4D6D4 8004CAD4 03200008 */  jr        $t9
/* 4D6D8 8004CAD8 00000000 */  nop       
/* 4D6DC 8004CADC 18A00004 */  blez      $a1, .L8004CAF0
/* 4D6E0 8004CAE0 240A0004 */  addiu     $t2, $zero, 4
/* 4D6E4 8004CAE4 28A10005 */  slti      $at, $a1, 5
/* 4D6E8 8004CAE8 54200003 */  bnel      $at, $zero, .L8004CAF8
/* 4D6EC 8004CAEC 01455823 */  subu      $t3, $t2, $a1
.L8004CAF0:
/* 4D6F0 8004CAF0 24050001 */  addiu     $a1, $zero, 1
/* 4D6F4 8004CAF4 01455823 */  subu      $t3, $t2, $a1
.L8004CAF8:
/* 4D6F8 8004CAF8 448B2000 */  mtc1      $t3, $f4
/* 4D6FC 8004CAFC 3C013F00 */  lui       $at, 0x3f00
/* 4D700 8004CB00 44814000 */  mtc1      $at, $f8
/* 4D704 8004CB04 468021A0 */  cvt.s.w   $f6, $f4
/* 4D708 8004CB08 3C01C000 */  lui       $at, 0xc000
/* 4D70C 8004CB0C 44818000 */  mtc1      $at, $f16
/* 4D710 8004CB10 00654821 */  addu      $t1, $v1, $a1
/* 4D714 8004CB14 9128FFFF */  lbu       $t0, -1($t1)
/* 4D718 8004CB18 46083282 */  mul.s     $f10, $f6, $f8
/* 4D71C 8004CB1C 10000029 */  b         .L8004CBC4
/* 4D720 8004CB20 46105000 */  add.s     $f0, $f10, $f16
/* 4D724 8004CB24 10A00003 */  beqz      $a1, .L8004CB34
/* 4D728 8004CB28 00000000 */  nop       
/* 4D72C 8004CB2C 10000025 */  b         .L8004CBC4
/* 4D730 8004CB30 2408001E */  addiu     $t0, $zero, 0x1e
.L8004CB34:
/* 4D734 8004CB34 10000023 */  b         .L8004CBC4
/* 4D738 8004CB38 240800E1 */  addiu     $t0, $zero, 0xe1
/* 4D73C 8004CB3C 3C048008 */  lui       $a0, 0x8008
/* 4D740 8004CB40 24848F4C */  addiu     $a0, $a0, -0x70b4
/* 4D744 8004CB44 90830000 */  lbu       $v1, ($a0)
/* 4D748 8004CB48 24010001 */  addiu     $at, $zero, 1
/* 4D74C 8004CB4C 24070070 */  addiu     $a3, $zero, 0x70
/* 4D750 8004CB50 10600007 */  beqz      $v1, .L8004CB70
/* 4D754 8004CB54 00601025 */  or        $v0, $v1, $zero
/* 4D758 8004CB58 10410007 */  beq       $v0, $at, .L8004CB78
/* 4D75C 8004CB5C 24010002 */  addiu     $at, $zero, 2
/* 4D760 8004CB60 50410008 */  beql      $v0, $at, .L8004CB84
/* 4D764 8004CB64 24060008 */  addiu     $a2, $zero, 8
/* 4D768 8004CB68 10000007 */  b         .L8004CB88
/* 4D76C 8004CB6C 246C0001 */  addiu     $t4, $v1, 1
.L8004CB70:
/* 4D770 8004CB70 10000004 */  b         .L8004CB84
/* 4D774 8004CB74 24060001 */  addiu     $a2, $zero, 1
.L8004CB78:
/* 4D778 8004CB78 10000002 */  b         .L8004CB84
/* 4D77C 8004CB7C 24060007 */  addiu     $a2, $zero, 7
/* 4D780 8004CB80 24060008 */  addiu     $a2, $zero, 8
.L8004CB84:
/* 4D784 8004CB84 246C0001 */  addiu     $t4, $v1, 1
.L8004CB88:
/* 4D788 8004CB88 318D00FF */  andi      $t5, $t4, 0xff
/* 4D78C 8004CB8C 29A10003 */  slti      $at, $t5, 3
/* 4D790 8004CB90 14200002 */  bnez      $at, .L8004CB9C
/* 4D794 8004CB94 A08C0000 */  sb        $t4, ($a0)
/* 4D798 8004CB98 A0800000 */  sb        $zero, ($a0)
.L8004CB9C:
/* 4D79C 8004CB9C 10000009 */  b         .L8004CBC4
/* 4D7A0 8004CBA0 24020080 */  addiu     $v0, $zero, 0x80
/* 4D7A4 8004CBA4 3C048008 */  lui       $a0, 0x8008
/* 4D7A8 8004CBA8 24848F4C */  addiu     $a0, $a0, -0x70b4
/* 4D7AC 8004CBAC A0800000 */  sb        $zero, ($a0)
/* 4D7B0 8004CBB0 24070070 */  addiu     $a3, $zero, 0x70
/* 4D7B4 8004CBB4 10000003 */  b         .L8004CBC4
/* 4D7B8 8004CBB8 24020080 */  addiu     $v0, $zero, 0x80
.L8004CBBC:
/* 4D7BC 8004CBBC 10000010 */  b         .L8004CC00
/* 4D7C0 8004CBC0 00001025 */  or        $v0, $zero, $zero
.L8004CBC4:
/* 4D7C4 8004CBC4 3C048010 */  lui       $a0, 0x8010
/* 4D7C8 8004CBC8 3C058010 */  lui       $a1, 0x8010
/* 4D7CC 8004CBCC 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4D7D0 8004CBD0 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4D7D4 8004CBD4 AFA80010 */  sw        $t0, 0x10($sp)
/* 4D7D8 8004CBD8 AFA20014 */  sw        $v0, 0x14($sp)
/* 4D7DC 8004CBDC 0C00E409 */  jal       func_80039024
/* 4D7E0 8004CBE0 E7A00034 */  swc1      $f0, 0x34($sp)
/* 4D7E4 8004CBE4 C7A00034 */  lwc1      $f0, 0x34($sp)
/* 4D7E8 8004CBE8 AFA20044 */  sw        $v0, 0x44($sp)
/* 4D7EC 8004CBEC 00402025 */  or        $a0, $v0, $zero
/* 4D7F0 8004CBF0 44050000 */  mfc1      $a1, $f0
/* 4D7F4 8004CBF4 0C00E54D */  jal       func_80039534
/* 4D7F8 8004CBF8 00000000 */  nop       
/* 4D7FC 8004CBFC 8FA20044 */  lw        $v0, 0x44($sp)
.L8004CC00:
/* 4D800 8004CC00 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4D804 8004CC04 27BD0048 */  addiu     $sp, $sp, 0x48
/* 4D808 8004CC08 03E00008 */  jr        $ra
/* 4D80C 8004CC0C 00000000 */  nop       

glabel func_8004CC10
/* 4D810 8004CC10 AFA40000 */  sw        $a0, ($sp)
/* 4D814 8004CC14 AFA50004 */  sw        $a1, 4($sp)
/* 4D818 8004CC18 03E00008 */  jr        $ra
/* 4D81C 8004CC1C AFA60008 */  sw        $a2, 8($sp)

glabel func_8004CC20
/* 4D820 8004CC20 3C018008 */  lui       $at, 0x8008
/* 4D824 8004CC24 AC248F9C */  sw        $a0, -0x7064($at)
/* 4D828 8004CC28 3C018008 */  lui       $at, 0x8008
/* 4D82C 8004CC2C 03E00008 */  jr        $ra
/* 4D830 8004CC30 AC258FA0 */  sw        $a1, -0x7060($at)

glabel func_8004CC34
/* 4D834 8004CC34 3C048008 */  lui       $a0, 0x8008
/* 4D838 8004CC38 24848F9C */  addiu     $a0, $a0, -0x7064
/* 4D83C 8004CC3C 8C8E0000 */  lw        $t6, ($a0)
/* 4D840 8004CC40 3C0141C6 */  lui       $at, 0x41c6
/* 4D844 8004CC44 34214E6D */  ori       $at, $at, 0x4e6d
/* 4D848 8004CC48 01C10019 */  multu     $t6, $at
/* 4D84C 8004CC4C 3C058008 */  lui       $a1, 0x8008
/* 4D850 8004CC50 24A58FA0 */  addiu     $a1, $a1, -0x7060
/* 4D854 8004CC54 8CA30000 */  lw        $v1, ($a1)
/* 4D858 8004CC58 3C010001 */  lui       $at, 1
/* 4D85C 8004CC5C 34211020 */  ori       $at, $at, 0x1020
/* 4D860 8004CC60 30790001 */  andi      $t9, $v1, 1
/* 4D864 8004CC64 00614026 */  xor       $t0, $v1, $at
/* 4D868 8004CC68 00007812 */  mflo      $t7
/* 4D86C 8004CC6C 25F83039 */  addiu     $t8, $t7, 0x3039
/* 4D870 8004CC70 13200003 */  beqz      $t9, .L8004CC80
/* 4D874 8004CC74 AC980000 */  sw        $t8, ($a0)
/* 4D878 8004CC78 ACA80000 */  sw        $t0, ($a1)
/* 4D87C 8004CC7C 01001825 */  or        $v1, $t0, $zero
.L8004CC80:
/* 4D880 8004CC80 8C8A0000 */  lw        $t2, ($a0)
/* 4D884 8004CC84 00034842 */  srl       $t1, $v1, 1
/* 4D888 8004CC88 ACA90000 */  sw        $t1, ($a1)
/* 4D88C 8004CC8C 03E00008 */  jr        $ra
/* 4D890 8004CC90 01491026 */  xor       $v0, $t2, $t1

glabel func_8004CC94
/* 4D894 8004CC94 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 4D898 8004CC98 AFBF0014 */  sw        $ra, 0x14($sp)
/* 4D89C 8004CC9C 0C01330D */  jal       func_8004CC34
/* 4D8A0 8004CCA0 00000000 */  nop       
/* 4D8A4 8004CCA4 44822000 */  mtc1      $v0, $f4
/* 4D8A8 8004CCA8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 4D8AC 8004CCAC 04410005 */  bgez      $v0, .L8004CCC4
/* 4D8B0 8004CCB0 468021A0 */  cvt.s.w   $f6, $f4
/* 4D8B4 8004CCB4 3C014F80 */  lui       $at, 0x4f80
/* 4D8B8 8004CCB8 44814000 */  mtc1      $at, $f8
/* 4D8BC 8004CCBC 00000000 */  nop       
/* 4D8C0 8004CCC0 46083180 */  add.s     $f6, $f6, $f8
.L8004CCC4:
/* 4D8C4 8004CCC4 3C014F80 */  lui       $at, 0x4f80
/* 4D8C8 8004CCC8 44815000 */  mtc1      $at, $f10
/* 4D8CC 8004CCCC 27BD0018 */  addiu     $sp, $sp, 0x18
/* 4D8D0 8004CCD0 03E00008 */  jr        $ra
/* 4D8D4 8004CCD4 460A3003 */  div.s     $f0, $f6, $f10

glabel func_8004CCD8
/* 4D8D8 8004CCD8 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 4D8DC 8004CCDC 44806000 */  mtc1      $zero, $f12
/* 4D8E0 8004CCE0 240E007F */  addiu     $t6, $zero, 0x7f
/* 4D8E4 8004CCE4 240F0080 */  addiu     $t7, $zero, 0x80
/* 4D8E8 8004CCE8 28A10004 */  slti      $at, $a1, 4
/* 4D8EC 8004CCEC AFBF001C */  sw        $ra, 0x1c($sp)
/* 4D8F0 8004CCF0 AFA40048 */  sw        $a0, 0x48($sp)
/* 4D8F4 8004CCF4 AFA5004C */  sw        $a1, 0x4c($sp)
/* 4D8F8 8004CCF8 AFAE003C */  sw        $t6, 0x3c($sp)
/* 4D8FC 8004CCFC AFAF0038 */  sw        $t7, 0x38($sp)
/* 4D900 8004CD00 10200003 */  beqz      $at, .L8004CD10
/* 4D904 8004CD04 46006086 */  mov.s     $f2, $f12
/* 4D908 8004CD08 04A10003 */  bgez      $a1, .L8004CD18
/* 4D90C 8004CD0C 00000000 */  nop       
.L8004CD10:
/* 4D910 8004CD10 10000112 */  b         .L8004D15C
/* 4D914 8004CD14 00001025 */  or        $v0, $zero, $zero
.L8004CD18:
/* 4D918 8004CD18 04C00003 */  bltz      $a2, .L8004CD28
/* 4D91C 8004CD1C 28C10006 */  slti      $at, $a2, 6
/* 4D920 8004CD20 14200003 */  bnez      $at, .L8004CD30
/* 4D924 8004CD24 8FB90048 */  lw        $t9, 0x48($sp)
.L8004CD28:
/* 4D928 8004CD28 1000010C */  b         .L8004D15C
/* 4D92C 8004CD2C 00001025 */  or        $v0, $zero, $zero
.L8004CD30:
/* 4D930 8004CD30 3C01FFF7 */  lui       $at, 0xfff7
/* 4D934 8004CD34 3421FFFF */  ori       $at, $at, 0xffff
/* 4D938 8004CD38 03214021 */  addu      $t0, $t9, $at
/* 4D93C 8004CD3C 2D010008 */  sltiu     $at, $t0, 8
/* 4D940 8004CD40 102000D1 */  beqz      $at, .L8004D088
/* 4D944 8004CD44 00084080 */  sll       $t0, $t0, 2
/* 4D948 8004CD48 3C018008 */  lui       $at, 0x8008
/* 4D94C 8004CD4C 00280821 */  addu      $at, $at, $t0
/* 4D950 8004CD50 8C28D7AC */  lw        $t0, -0x2854($at)
/* 4D954 8004CD54 01000008 */  jr        $t0
/* 4D958 8004CD58 00000000 */  nop       
/* 4D95C 8004CD5C 8FA3004C */  lw        $v1, 0x4c($sp)
/* 4D960 8004CD60 3C098008 */  lui       $t1, 0x8008
/* 4D964 8004CD64 3C018008 */  lui       $at, 0x8008
/* 4D968 8004CD68 00031880 */  sll       $v1, $v1, 2
/* 4D96C 8004CD6C 01234821 */  addu      $t1, $t1, $v1
/* 4D970 8004CD70 8D298F54 */  lw        $t1, -0x70ac($t1)
/* 4D974 8004CD74 00230821 */  addu      $at, $at, $v1
/* 4D978 8004CD78 C4248F64 */  lwc1      $f4, -0x709c($at)
/* 4D97C 8004CD7C 240B0040 */  addiu     $t3, $zero, 0x40
/* 4D980 8004CD80 2CC10006 */  sltiu     $at, $a2, 6
/* 4D984 8004CD84 252A007F */  addiu     $t2, $t1, 0x7f
/* 4D988 8004CD88 AFAA003C */  sw        $t2, 0x3c($sp)
/* 4D98C 8004CD8C AFAB0038 */  sw        $t3, 0x38($sp)
/* 4D990 8004CD90 1020003E */  beqz      $at, .L8004CE8C
/* 4D994 8004CD94 46046080 */  add.s     $f2, $f12, $f4
/* 4D998 8004CD98 00066080 */  sll       $t4, $a2, 2
/* 4D99C 8004CD9C 3C018008 */  lui       $at, 0x8008
/* 4D9A0 8004CDA0 002C0821 */  addu      $at, $at, $t4
/* 4D9A4 8004CDA4 8C2CD7CC */  lw        $t4, -0x2834($at)
/* 4D9A8 8004CDA8 01800008 */  jr        $t4
/* 4D9AC 8004CDAC 00000000 */  nop       
/* 4D9B0 8004CDB0 100000EA */  b         .L8004D15C
/* 4D9B4 8004CDB4 00001025 */  or        $v0, $zero, $zero
/* 4D9B8 8004CDB8 3C013FE0 */  lui       $at, 0x3fe0
/* 4D9BC 8004CDBC 44814800 */  mtc1      $at, $f9
/* 4D9C0 8004CDC0 44804000 */  mtc1      $zero, $f8
/* 4D9C4 8004CDC4 460011A1 */  cvt.d.s   $f6, $f2
/* 4D9C8 8004CDC8 3C048008 */  lui       $a0, 0x8008
/* 4D9CC 8004CDCC 46283280 */  add.d     $f10, $f6, $f8
/* 4D9D0 8004CDD0 00832021 */  addu      $a0, $a0, $v1
/* 4D9D4 8004CDD4 8C848F74 */  lw        $a0, -0x708c($a0)
/* 4D9D8 8004CDD8 462050A0 */  cvt.s.d   $f2, $f10
/* 4D9DC 8004CDDC 44051000 */  mfc1      $a1, $f2
/* 4D9E0 8004CDE0 0C00E54D */  jal       func_80039534
/* 4D9E4 8004CDE4 00000000 */  nop       
/* 4D9E8 8004CDE8 100000DC */  b         .L8004D15C
/* 4D9EC 8004CDEC 00001025 */  or        $v0, $zero, $zero
/* 4D9F0 8004CDF0 3C013FF0 */  lui       $at, 0x3ff0
/* 4D9F4 8004CDF4 44819800 */  mtc1      $at, $f19
/* 4D9F8 8004CDF8 44809000 */  mtc1      $zero, $f18
/* 4D9FC 8004CDFC 46001421 */  cvt.d.s   $f16, $f2
/* 4DA00 8004CE00 3C048008 */  lui       $a0, 0x8008
/* 4DA04 8004CE04 46328100 */  add.d     $f4, $f16, $f18
/* 4DA08 8004CE08 00832021 */  addu      $a0, $a0, $v1
/* 4DA0C 8004CE0C 8C848F74 */  lw        $a0, -0x708c($a0)
/* 4DA10 8004CE10 462020A0 */  cvt.s.d   $f2, $f4
/* 4DA14 8004CE14 44051000 */  mfc1      $a1, $f2
/* 4DA18 8004CE18 0C00E54D */  jal       func_80039534
/* 4DA1C 8004CE1C 00000000 */  nop       
/* 4DA20 8004CE20 100000CE */  b         .L8004D15C
/* 4DA24 8004CE24 00001025 */  or        $v0, $zero, $zero
/* 4DA28 8004CE28 3C014000 */  lui       $at, 0x4000
/* 4DA2C 8004CE2C 44814800 */  mtc1      $at, $f9
/* 4DA30 8004CE30 44804000 */  mtc1      $zero, $f8
/* 4DA34 8004CE34 460011A1 */  cvt.d.s   $f6, $f2
/* 4DA38 8004CE38 3C0D8008 */  lui       $t5, 0x8008
/* 4DA3C 8004CE3C 46283280 */  add.d     $f10, $f6, $f8
/* 4DA40 8004CE40 25AD8F74 */  addiu     $t5, $t5, -0x708c
/* 4DA44 8004CE44 006D1021 */  addu      $v0, $v1, $t5
/* 4DA48 8004CE48 8C440000 */  lw        $a0, ($v0)
/* 4DA4C 8004CE4C 462050A0 */  cvt.s.d   $f2, $f10
/* 4DA50 8004CE50 AFA20024 */  sw        $v0, 0x24($sp)
/* 4DA54 8004CE54 44051000 */  mfc1      $a1, $f2
/* 4DA58 8004CE58 0C00E54D */  jal       func_80039534
/* 4DA5C 8004CE5C 00000000 */  nop       
/* 4DA60 8004CE60 8FA20024 */  lw        $v0, 0x24($sp)
/* 4DA64 8004CE64 24050058 */  addiu     $a1, $zero, 0x58
/* 4DA68 8004CE68 0C00E4F7 */  jal       func_800393DC
/* 4DA6C 8004CE6C 8C440000 */  lw        $a0, ($v0)
/* 4DA70 8004CE70 100000BA */  b         .L8004D15C
/* 4DA74 8004CE74 00001025 */  or        $v0, $zero, $zero
/* 4DA78 8004CE78 3C048008 */  lui       $a0, 0x8008
/* 4DA7C 8004CE7C 00832021 */  addu      $a0, $a0, $v1
/* 4DA80 8004CE80 8C848F74 */  lw        $a0, -0x708c($a0)
/* 4DA84 8004CE84 0C00E4AA */  jal       func_800392A8
/* 4DA88 8004CE88 24050003 */  addiu     $a1, $zero, 3
.L8004CE8C:
/* 4DA8C 8004CE8C 100000B3 */  b         .L8004D15C
/* 4DA90 8004CE90 00001025 */  or        $v0, $zero, $zero
/* 4DA94 8004CE94 8FA3004C */  lw        $v1, 0x4c($sp)
/* 4DA98 8004CE98 3C048008 */  lui       $a0, 0x8008
/* 4DA9C 8004CE9C AFA60050 */  sw        $a2, 0x50($sp)
/* 4DAA0 8004CEA0 00031880 */  sll       $v1, $v1, 2
/* 4DAA4 8004CEA4 00832021 */  addu      $a0, $a0, $v1
/* 4DAA8 8004CEA8 8C848F8C */  lw        $a0, -0x7074($a0)
/* 4DAAC 8004CEAC 0C00E4D5 */  jal       func_80039354
/* 4DAB0 8004CEB0 AFA30028 */  sw        $v1, 0x28($sp)
/* 4DAB4 8004CEB4 44806000 */  mtc1      $zero, $f12
/* 4DAB8 8004CEB8 8FA30028 */  lw        $v1, 0x28($sp)
/* 4DABC 8004CEBC 10400003 */  beqz      $v0, .L8004CECC
/* 4DAC0 8004CEC0 8FA60050 */  lw        $a2, 0x50($sp)
/* 4DAC4 8004CEC4 100000A5 */  b         .L8004D15C
/* 4DAC8 8004CEC8 00001025 */  or        $v0, $zero, $zero
.L8004CECC:
/* 4DACC 8004CECC 3C0E8008 */  lui       $t6, 0x8008
/* 4DAD0 8004CED0 01C37021 */  addu      $t6, $t6, $v1
/* 4DAD4 8004CED4 3C018008 */  lui       $at, 0x8008
/* 4DAD8 8004CED8 8DCE8F54 */  lw        $t6, -0x70ac($t6)
/* 4DADC 8004CEDC 00230821 */  addu      $at, $at, $v1
/* 4DAE0 8004CEE0 C4308F64 */  lwc1      $f16, -0x709c($at)
/* 4DAE4 8004CEE4 24010001 */  addiu     $at, $zero, 1
/* 4DAE8 8004CEE8 25CF007F */  addiu     $t7, $t6, 0x7f
/* 4DAEC 8004CEEC AFAF003C */  sw        $t7, 0x3c($sp)
/* 4DAF0 8004CEF0 10C1000A */  beq       $a2, $at, .L8004CF1C
/* 4DAF4 8004CEF4 46106080 */  add.s     $f2, $f12, $f16
/* 4DAF8 8004CEF8 24010002 */  addiu     $at, $zero, 2
/* 4DAFC 8004CEFC 10C10009 */  beq       $a2, $at, .L8004CF24
/* 4DB00 8004CF00 24010003 */  addiu     $at, $zero, 3
/* 4DB04 8004CF04 10C10013 */  beq       $a2, $at, .L8004CF54
/* 4DB08 8004CF08 24010004 */  addiu     $at, $zero, 4
/* 4DB0C 8004CF0C 10C1001D */  beq       $a2, $at, .L8004CF84
/* 4DB10 8004CF10 00000000 */  nop       
/* 4DB14 8004CF14 10000091 */  b         .L8004D15C
/* 4DB18 8004CF18 00001025 */  or        $v0, $zero, $zero
.L8004CF1C:
/* 4DB1C 8004CF1C 1000008F */  b         .L8004D15C
/* 4DB20 8004CF20 00001025 */  or        $v0, $zero, $zero
.L8004CF24:
/* 4DB24 8004CF24 0C013325 */  jal       func_8004CC94
/* 4DB28 8004CF28 E7A20030 */  swc1      $f2, 0x30($sp)
/* 4DB2C 8004CF2C 3C018008 */  lui       $at, 0x8008
/* 4DB30 8004CF30 D432D7E8 */  ldc1      $f18, -0x2818($at)
/* 4DB34 8004CF34 46000121 */  cvt.d.s   $f4, $f0
/* 4DB38 8004CF38 C7A20030 */  lwc1      $f2, 0x30($sp)
/* 4DB3C 8004CF3C 4624903C */  c.lt.d    $f18, $f4
/* 4DB40 8004CF40 00000000 */  nop       
/* 4DB44 8004CF44 45020053 */  bc1fl     .L8004D094
/* 4DB48 8004CF48 8FA60048 */  lw        $a2, 0x48($sp)
/* 4DB4C 8004CF4C 10000083 */  b         .L8004D15C
/* 4DB50 8004CF50 00001025 */  or        $v0, $zero, $zero
.L8004CF54:
/* 4DB54 8004CF54 0C013325 */  jal       func_8004CC94
/* 4DB58 8004CF58 E7A20030 */  swc1      $f2, 0x30($sp)
/* 4DB5C 8004CF5C 3C018008 */  lui       $at, 0x8008
/* 4DB60 8004CF60 D426D7F0 */  ldc1      $f6, -0x2810($at)
/* 4DB64 8004CF64 46000221 */  cvt.d.s   $f8, $f0
/* 4DB68 8004CF68 C7A20030 */  lwc1      $f2, 0x30($sp)
/* 4DB6C 8004CF6C 4628303C */  c.lt.d    $f6, $f8
/* 4DB70 8004CF70 00000000 */  nop       
/* 4DB74 8004CF74 45020047 */  bc1fl     .L8004D094
/* 4DB78 8004CF78 8FA60048 */  lw        $a2, 0x48($sp)
/* 4DB7C 8004CF7C 10000077 */  b         .L8004D15C
/* 4DB80 8004CF80 00001025 */  or        $v0, $zero, $zero
.L8004CF84:
/* 4DB84 8004CF84 0C013325 */  jal       func_8004CC94
/* 4DB88 8004CF88 E7A20030 */  swc1      $f2, 0x30($sp)
/* 4DB8C 8004CF8C 3C018008 */  lui       $at, 0x8008
/* 4DB90 8004CF90 D42AD7F8 */  ldc1      $f10, -0x2808($at)
/* 4DB94 8004CF94 46000421 */  cvt.d.s   $f16, $f0
/* 4DB98 8004CF98 C7A20030 */  lwc1      $f2, 0x30($sp)
/* 4DB9C 8004CF9C 4630503C */  c.lt.d    $f10, $f16
/* 4DBA0 8004CFA0 00000000 */  nop       
/* 4DBA4 8004CFA4 4502003B */  bc1fl     .L8004D094
/* 4DBA8 8004CFA8 8FA60048 */  lw        $a2, 0x48($sp)
/* 4DBAC 8004CFAC 1000006B */  b         .L8004D15C
/* 4DBB0 8004CFB0 00001025 */  or        $v0, $zero, $zero
/* 4DBB4 8004CFB4 10000069 */  b         .L8004D15C
/* 4DBB8 8004CFB8 00001025 */  or        $v0, $zero, $zero
/* 4DBBC 8004CFBC 3C048008 */  lui       $a0, 0x8008
/* 4DBC0 8004CFC0 8C848F84 */  lw        $a0, -0x707c($a0)
/* 4DBC4 8004CFC4 0C00E4D5 */  jal       func_80039354
/* 4DBC8 8004CFC8 E7A20030 */  swc1      $f2, 0x30($sp)
/* 4DBCC 8004CFCC 10400003 */  beqz      $v0, .L8004CFDC
/* 4DBD0 8004CFD0 C7A20030 */  lwc1      $f2, 0x30($sp)
/* 4DBD4 8004CFD4 10000061 */  b         .L8004D15C
/* 4DBD8 8004CFD8 00001025 */  or        $v0, $zero, $zero
.L8004CFDC:
/* 4DBDC 8004CFDC 24040001 */  addiu     $a0, $zero, 1
/* 4DBE0 8004CFE0 24050001 */  addiu     $a1, $zero, 1
/* 4DBE4 8004CFE4 0C013F18 */  jal       func_8004FC60
/* 4DBE8 8004CFE8 E7A20030 */  swc1      $f2, 0x30($sp)
/* 4DBEC 8004CFEC 10000028 */  b         .L8004D090
/* 4DBF0 8004CFF0 C7A20030 */  lwc1      $f2, 0x30($sp)
/* 4DBF4 8004CFF4 24040001 */  addiu     $a0, $zero, 1
/* 4DBF8 8004CFF8 24050001 */  addiu     $a1, $zero, 1
/* 4DBFC 8004CFFC 0C013F18 */  jal       func_8004FC60
/* 4DC00 8004D000 E7A20030 */  swc1      $f2, 0x30($sp)
/* 4DC04 8004D004 10000022 */  b         .L8004D090
/* 4DC08 8004D008 C7A20030 */  lwc1      $f2, 0x30($sp)
/* 4DC0C 8004D00C 3C028008 */  lui       $v0, 0x8008
/* 4DC10 8004D010 8C428FA4 */  lw        $v0, -0x705c($v0)
/* 4DC14 8004D014 3C014F80 */  lui       $at, 0x4f80
/* 4DC18 8004D018 44829000 */  mtc1      $v0, $f18
/* 4DC1C 8004D01C 04410004 */  bgez      $v0, .L8004D030
/* 4DC20 8004D020 46809120 */  cvt.s.w   $f4, $f18
/* 4DC24 8004D024 44813000 */  mtc1      $at, $f6
/* 4DC28 8004D028 00000000 */  nop       
/* 4DC2C 8004D02C 46062100 */  add.s     $f4, $f4, $f6
.L8004D030:
/* 4DC30 8004D030 46002021 */  cvt.d.s   $f0, $f4
/* 4DC34 8004D034 46006221 */  cvt.d.s   $f8, $f12
/* 4DC38 8004D038 46200280 */  add.d     $f10, $f0, $f0
/* 4DC3C 8004D03C 2C410002 */  sltiu     $at, $v0, 2
/* 4DC40 8004D040 462A4400 */  add.d     $f16, $f8, $f10
/* 4DC44 8004D044 10200005 */  beqz      $at, .L8004D05C
/* 4DC48 8004D048 462080A0 */  cvt.s.d   $f2, $f16
/* 4DC4C 8004D04C 24420001 */  addiu     $v0, $v0, 1
/* 4DC50 8004D050 3C018008 */  lui       $at, 0x8008
/* 4DC54 8004D054 1000000E */  b         .L8004D090
/* 4DC58 8004D058 AC228FA4 */  sw        $v0, -0x705c($at)
.L8004D05C:
/* 4DC5C 8004D05C 2C410002 */  sltiu     $at, $v0, 2
/* 4DC60 8004D060 1420000B */  bnez      $at, .L8004D090
/* 4DC64 8004D064 3C018008 */  lui       $at, 0x8008
/* 4DC68 8004D068 10000009 */  b         .L8004D090
/* 4DC6C 8004D06C AC208FA4 */  sw        $zero, -0x705c($at)
/* 4DC70 8004D070 24040001 */  addiu     $a0, $zero, 1
/* 4DC74 8004D074 24050002 */  addiu     $a1, $zero, 2
/* 4DC78 8004D078 0C013F18 */  jal       func_8004FC60
/* 4DC7C 8004D07C E7A20030 */  swc1      $f2, 0x30($sp)
/* 4DC80 8004D080 10000003 */  b         .L8004D090
/* 4DC84 8004D084 C7A20030 */  lwc1      $f2, 0x30($sp)
.L8004D088:
/* 4DC88 8004D088 10000034 */  b         .L8004D15C
/* 4DC8C 8004D08C 00001025 */  or        $v0, $zero, $zero
.L8004D090:
/* 4DC90 8004D090 8FA60048 */  lw        $a2, 0x48($sp)
.L8004D094:
/* 4DC94 8004D094 8FB8003C */  lw        $t8, 0x3c($sp)
/* 4DC98 8004D098 3C048010 */  lui       $a0, 0x8010
/* 4DC9C 8004D09C 3C058010 */  lui       $a1, 0x8010
/* 4DCA0 8004D0A0 2419FFFF */  addiu     $t9, $zero, -1
/* 4DCA4 8004D0A4 AFB90014 */  sw        $t9, 0x14($sp)
/* 4DCA8 8004D0A8 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4DCAC 8004D0AC 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4DCB0 8004D0B0 8FA70038 */  lw        $a3, 0x38($sp)
/* 4DCB4 8004D0B4 E7A20030 */  swc1      $f2, 0x30($sp)
/* 4DCB8 8004D0B8 30C6FFFF */  andi      $a2, $a2, 0xffff
/* 4DCBC 8004D0BC 0C00E409 */  jal       func_80039024
/* 4DCC0 8004D0C0 AFB80010 */  sw        $t8, 0x10($sp)
/* 4DCC4 8004D0C4 8FA80048 */  lw        $t0, 0x48($sp)
/* 4DCC8 8004D0C8 3C010008 */  lui       $at, 8
/* 4DCCC 8004D0CC 34210001 */  ori       $at, $at, 1
/* 4DCD0 8004D0D0 C7A20030 */  lwc1      $f2, 0x30($sp)
/* 4DCD4 8004D0D4 1101000E */  beq       $t0, $at, .L8004D110
/* 4DCD8 8004D0D8 00402025 */  or        $a0, $v0, $zero
/* 4DCDC 8004D0DC 3C010008 */  lui       $at, 8
/* 4DCE0 8004D0E0 34210002 */  ori       $at, $at, 2
/* 4DCE4 8004D0E4 11010010 */  beq       $t0, $at, .L8004D128
/* 4DCE8 8004D0E8 8FAB004C */  lw        $t3, 0x4c($sp)
/* 4DCEC 8004D0EC 3C010008 */  lui       $at, 8
/* 4DCF0 8004D0F0 34210003 */  ori       $at, $at, 3
/* 4DCF4 8004D0F4 11010011 */  beq       $t0, $at, .L8004D13C
/* 4DCF8 8004D0F8 3C010008 */  lui       $at, 8
/* 4DCFC 8004D0FC 34210004 */  ori       $at, $at, 4
/* 4DD00 8004D100 11010010 */  beq       $t0, $at, .L8004D144
/* 4DD04 8004D104 00000000 */  nop       
/* 4DD08 8004D108 10000011 */  b         .L8004D150
/* 4DD0C 8004D10C 44051000 */  mfc1      $a1, $f2
.L8004D110:
/* 4DD10 8004D110 8FA9004C */  lw        $t1, 0x4c($sp)
/* 4DD14 8004D114 3C018008 */  lui       $at, 0x8008
/* 4DD18 8004D118 00095080 */  sll       $t2, $t1, 2
/* 4DD1C 8004D11C 002A0821 */  addu      $at, $at, $t2
/* 4DD20 8004D120 1000000A */  b         .L8004D14C
/* 4DD24 8004D124 AC228F74 */  sw        $v0, -0x708c($at)
.L8004D128:
/* 4DD28 8004D128 000B6080 */  sll       $t4, $t3, 2
/* 4DD2C 8004D12C 3C018008 */  lui       $at, 0x8008
/* 4DD30 8004D130 002C0821 */  addu      $at, $at, $t4
/* 4DD34 8004D134 10000005 */  b         .L8004D14C
/* 4DD38 8004D138 AC228F8C */  sw        $v0, -0x7074($at)
.L8004D13C:
/* 4DD3C 8004D13C 3C018008 */  lui       $at, 0x8008
/* 4DD40 8004D140 AC228F84 */  sw        $v0, -0x707c($at)
.L8004D144:
/* 4DD44 8004D144 3C018008 */  lui       $at, 0x8008
/* 4DD48 8004D148 AC228F88 */  sw        $v0, -0x7078($at)
.L8004D14C:
/* 4DD4C 8004D14C 44051000 */  mfc1      $a1, $f2
.L8004D150:
/* 4DD50 8004D150 0C00E54D */  jal       func_80039534
/* 4DD54 8004D154 AFA40044 */  sw        $a0, 0x44($sp)
/* 4DD58 8004D158 8FA20044 */  lw        $v0, 0x44($sp)
.L8004D15C:
/* 4DD5C 8004D15C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4DD60 8004D160 27BD0048 */  addiu     $sp, $sp, 0x48
/* 4DD64 8004D164 03E00008 */  jr        $ra
/* 4DD68 8004D168 00000000 */  nop       

glabel func_8004D16C
/* 4DD6C 8004D16C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 4DD70 8004D170 3C010008 */  lui       $at, 8
/* 4DD74 8004D174 34210001 */  ori       $at, $at, 1
/* 4DD78 8004D178 AFBF0014 */  sw        $ra, 0x14($sp)
/* 4DD7C 8004D17C AFA5001C */  sw        $a1, 0x1c($sp)
/* 4DD80 8004D180 14810007 */  bne       $a0, $at, .L8004D1A0
/* 4DD84 8004D184 AFA60020 */  sw        $a2, 0x20($sp)
/* 4DD88 8004D188 00057080 */  sll       $t6, $a1, 2
/* 4DD8C 8004D18C 3C048008 */  lui       $a0, 0x8008
/* 4DD90 8004D190 008E2021 */  addu      $a0, $a0, $t6
/* 4DD94 8004D194 8C848F74 */  lw        $a0, -0x708c($a0)
/* 4DD98 8004D198 0C00E4AA */  jal       func_800392A8
/* 4DD9C 8004D19C 2405000A */  addiu     $a1, $zero, 0xa
.L8004D1A0:
/* 4DDA0 8004D1A0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 4DDA4 8004D1A4 27BD0018 */  addiu     $sp, $sp, 0x18
/* 4DDA8 8004D1A8 03E00008 */  jr        $ra
/* 4DDAC 8004D1AC 00000000 */  nop       

glabel func_8004D1B0
/* 4DDB0 8004D1B0 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 4DDB4 8004D1B4 3C01FFF6 */  lui       $at, 0xfff6
/* 4DDB8 8004D1B8 3421FFFF */  ori       $at, $at, 0xffff
/* 4DDBC 8004D1BC 44800000 */  mtc1      $zero, $f0
/* 4DDC0 8004D1C0 0081C021 */  addu      $t8, $a0, $at
/* 4DDC4 8004D1C4 240E0080 */  addiu     $t6, $zero, 0x80
/* 4DDC8 8004D1C8 3082FFFF */  andi      $v0, $a0, 0xffff
/* 4DDCC 8004D1CC 2F010011 */  sltiu     $at, $t8, 0x11
/* 4DDD0 8004D1D0 AFBF001C */  sw        $ra, 0x1c($sp)
/* 4DDD4 8004D1D4 AFA50044 */  sw        $a1, 0x44($sp)
/* 4DDD8 8004D1D8 AFA60048 */  sw        $a2, 0x48($sp)
/* 4DDDC 8004D1DC AFAE0030 */  sw        $t6, 0x30($sp)
/* 4DDE0 8004D1E0 AFA20038 */  sw        $v0, 0x38($sp)
/* 4DDE4 8004D1E4 AFA40020 */  sw        $a0, 0x20($sp)
/* 4DDE8 8004D1E8 10200064 */  beqz      $at, .L8004D37C
/* 4DDEC 8004D1EC 46000086 */  mov.s     $f2, $f0
/* 4DDF0 8004D1F0 0018C080 */  sll       $t8, $t8, 2
/* 4DDF4 8004D1F4 3C018008 */  lui       $at, 0x8008
/* 4DDF8 8004D1F8 00380821 */  addu      $at, $at, $t8
/* 4DDFC 8004D1FC 8C38D800 */  lw        $t8, -0x2800($at)
/* 4DE00 8004D200 03000008 */  jr        $t8
/* 4DE04 8004D204 00000000 */  nop       
/* 4DE08 8004D208 3C028008 */  lui       $v0, 0x8008
/* 4DE0C 8004D20C 8C428FAC */  lw        $v0, -0x7054($v0)
/* 4DE10 8004D210 24190002 */  addiu     $t9, $zero, 2
/* 4DE14 8004D214 2404001E */  addiu     $a0, $zero, 0x1e
/* 4DE18 8004D218 14400010 */  bnez      $v0, .L8004D25C
/* 4DE1C 8004D21C 24010001 */  addiu     $at, $zero, 1
/* 4DE20 8004D220 3C018008 */  lui       $at, 0x8008
/* 4DE24 8004D224 AC208ED4 */  sw        $zero, -0x712c($at)
/* 4DE28 8004D228 3C018008 */  lui       $at, 0x8008
/* 4DE2C 8004D22C AC208ED8 */  sw        $zero, -0x7128($at)
/* 4DE30 8004D230 3C018008 */  lui       $at, 0x8008
/* 4DE34 8004D234 AC208EDC */  sw        $zero, -0x7124($at)
/* 4DE38 8004D238 24420001 */  addiu     $v0, $v0, 1
/* 4DE3C 8004D23C 3C018008 */  lui       $at, 0x8008
/* 4DE40 8004D240 AFB90038 */  sw        $t9, 0x38($sp)
/* 4DE44 8004D244 AC228FAC */  sw        $v0, -0x7054($at)
/* 4DE48 8004D248 00002825 */  or        $a1, $zero, $zero
/* 4DE4C 8004D24C 0C012F21 */  jal       func_8004BC84
/* 4DE50 8004D250 E7A2002C */  swc1      $f2, 0x2c($sp)
/* 4DE54 8004D254 1000001E */  b         .L8004D2D0
/* 4DE58 8004D258 C7A2002C */  lwc1      $f2, 0x2c($sp)
.L8004D25C:
/* 4DE5C 8004D25C 14410007 */  bne       $v0, $at, .L8004D27C
/* 4DE60 8004D260 3C014080 */  lui       $at, 0x4080
/* 4DE64 8004D264 44812000 */  mtc1      $at, $f4
/* 4DE68 8004D268 24420001 */  addiu     $v0, $v0, 1
/* 4DE6C 8004D26C 3C018008 */  lui       $at, 0x8008
/* 4DE70 8004D270 AC228FAC */  sw        $v0, -0x7054($at)
/* 4DE74 8004D274 10000016 */  b         .L8004D2D0
/* 4DE78 8004D278 46040081 */  sub.s     $f2, $f0, $f4
.L8004D27C:
/* 4DE7C 8004D27C 24010002 */  addiu     $at, $zero, 2
/* 4DE80 8004D280 14410007 */  bne       $v0, $at, .L8004D2A0
/* 4DE84 8004D284 3C014000 */  lui       $at, 0x4000
/* 4DE88 8004D288 44813000 */  mtc1      $at, $f6
/* 4DE8C 8004D28C 24420001 */  addiu     $v0, $v0, 1
/* 4DE90 8004D290 3C018008 */  lui       $at, 0x8008
/* 4DE94 8004D294 AC228FAC */  sw        $v0, -0x7054($at)
/* 4DE98 8004D298 1000000D */  b         .L8004D2D0
/* 4DE9C 8004D29C 46060081 */  sub.s     $f2, $f0, $f6
.L8004D2A0:
/* 4DEA0 8004D2A0 24010003 */  addiu     $at, $zero, 3
/* 4DEA4 8004D2A4 1441000A */  bne       $v0, $at, .L8004D2D0
/* 4DEA8 8004D2A8 3C014110 */  lui       $at, 0x4110
/* 4DEAC 8004D2AC 44814000 */  mtc1      $at, $f8
/* 4DEB0 8004D2B0 3C018008 */  lui       $at, 0x8008
/* 4DEB4 8004D2B4 AC208FAC */  sw        $zero, -0x7054($at)
/* 4DEB8 8004D2B8 10000005 */  b         .L8004D2D0
/* 4DEBC 8004D2BC 46080081 */  sub.s     $f2, $f0, $f8
/* 4DEC0 8004D2C0 2404001A */  addiu     $a0, $zero, 0x1a
/* 4DEC4 8004D2C4 0C012C73 */  jal       func_8004B1CC
/* 4DEC8 8004D2C8 E7A2002C */  swc1      $f2, 0x2c($sp)
/* 4DECC 8004D2CC C7A2002C */  lwc1      $f2, 0x2c($sp)
.L8004D2D0:
/* 4DED0 8004D2D0 3C048010 */  lui       $a0, 0x8010
/* 4DED4 8004D2D4 3C058010 */  lui       $a1, 0x8010
/* 4DED8 8004D2D8 2408007F */  addiu     $t0, $zero, 0x7f
/* 4DEDC 8004D2DC 2409FFFF */  addiu     $t1, $zero, -1
/* 4DEE0 8004D2E0 AFA90014 */  sw        $t1, 0x14($sp)
/* 4DEE4 8004D2E4 AFA80010 */  sw        $t0, 0x10($sp)
/* 4DEE8 8004D2E8 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4DEEC 8004D2EC 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4DEF0 8004D2F0 8FA60038 */  lw        $a2, 0x38($sp)
/* 4DEF4 8004D2F4 8FA70030 */  lw        $a3, 0x30($sp)
/* 4DEF8 8004D2F8 0C00E409 */  jal       func_80039024
/* 4DEFC 8004D2FC E7A2002C */  swc1      $f2, 0x2c($sp)
/* 4DF00 8004D300 C7A2002C */  lwc1      $f2, 0x2c($sp)
/* 4DF04 8004D304 00402025 */  or        $a0, $v0, $zero
/* 4DF08 8004D308 AFA2003C */  sw        $v0, 0x3c($sp)
/* 4DF0C 8004D30C 44051000 */  mfc1      $a1, $f2
/* 4DF10 8004D310 0C00E54D */  jal       func_80039534
/* 4DF14 8004D314 00000000 */  nop       
/* 4DF18 8004D318 8FAA0020 */  lw        $t2, 0x20($sp)
/* 4DF1C 8004D31C 3C01FFF6 */  lui       $at, 0xfff6
/* 4DF20 8004D320 3421FFF3 */  ori       $at, $at, 0xfff3
/* 4DF24 8004D324 01415821 */  addu      $t3, $t2, $at
/* 4DF28 8004D328 2D610005 */  sltiu     $at, $t3, 5
/* 4DF2C 8004D32C 10200017 */  beqz      $at, .L8004D38C
/* 4DF30 8004D330 8FA3003C */  lw        $v1, 0x3c($sp)
/* 4DF34 8004D334 000B5880 */  sll       $t3, $t3, 2
/* 4DF38 8004D338 3C018008 */  lui       $at, 0x8008
/* 4DF3C 8004D33C 002B0821 */  addu      $at, $at, $t3
/* 4DF40 8004D340 8C2BD844 */  lw        $t3, -0x27bc($at)
/* 4DF44 8004D344 01600008 */  jr        $t3
/* 4DF48 8004D348 00000000 */  nop       
/* 4DF4C 8004D34C 2404001B */  addiu     $a0, $zero, 0x1b
/* 4DF50 8004D350 0C012C73 */  jal       func_8004B1CC
/* 4DF54 8004D354 E7A2002C */  swc1      $f2, 0x2c($sp)
/* 4DF58 8004D358 1000FFDD */  b         .L8004D2D0
/* 4DF5C 8004D35C C7A2002C */  lwc1      $f2, 0x2c($sp)
/* 4DF60 8004D360 1000000B */  b         .L8004D390
/* 4DF64 8004D364 00001025 */  or        $v0, $zero, $zero
/* 4DF68 8004D368 244CFFFF */  addiu     $t4, $v0, -1
/* 4DF6C 8004D36C 240D0060 */  addiu     $t5, $zero, 0x60
/* 4DF70 8004D370 AFAC0038 */  sw        $t4, 0x38($sp)
/* 4DF74 8004D374 1000FFD6 */  b         .L8004D2D0
/* 4DF78 8004D378 AFAD0030 */  sw        $t5, 0x30($sp)
.L8004D37C:
/* 4DF7C 8004D37C 10000004 */  b         .L8004D390
/* 4DF80 8004D380 00001025 */  or        $v0, $zero, $zero
/* 4DF84 8004D384 3C018008 */  lui       $at, 0x8008
/* 4DF88 8004D388 AC238FA8 */  sw        $v1, -0x7058($at)
.L8004D38C:
/* 4DF8C 8004D38C 00601025 */  or        $v0, $v1, $zero
.L8004D390:
/* 4DF90 8004D390 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4DF94 8004D394 27BD0040 */  addiu     $sp, $sp, 0x40
/* 4DF98 8004D398 03E00008 */  jr        $ra
/* 4DF9C 8004D39C 00000000 */  nop       

glabel func_8004D3A0
/* 4DFA0 8004D3A0 AFA40000 */  sw        $a0, ($sp)
/* 4DFA4 8004D3A4 AFA50004 */  sw        $a1, 4($sp)
/* 4DFA8 8004D3A8 03E00008 */  jr        $ra
/* 4DFAC 8004D3AC AFA60008 */  sw        $a2, 8($sp)

glabel func_8004D3B0
/* 4DFB0 8004D3B0 3C01FFF5 */  lui       $at, 0xfff5
/* 4DFB4 8004D3B4 3421FFFF */  ori       $at, $at, 0xffff
/* 4DFB8 8004D3B8 44801000 */  mtc1      $zero, $f2
/* 4DFBC 8004D3BC 00817821 */  addu      $t7, $a0, $at
/* 4DFC0 8004D3C0 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 4DFC4 8004D3C4 308EFFFF */  andi      $t6, $a0, 0xffff
/* 4DFC8 8004D3C8 2DE10013 */  sltiu     $at, $t7, 0x13
/* 4DFCC 8004D3CC AFBF001C */  sw        $ra, 0x1c($sp)
/* 4DFD0 8004D3D0 2408007F */  addiu     $t0, $zero, 0x7f
/* 4DFD4 8004D3D4 24070080 */  addiu     $a3, $zero, 0x80
/* 4DFD8 8004D3D8 AFAE0030 */  sw        $t6, 0x30($sp)
/* 4DFDC 8004D3DC 102000FC */  beqz      $at, .L8004D7D0
/* 4DFE0 8004D3E0 46001006 */  mov.s     $f0, $f2
/* 4DFE4 8004D3E4 000F7880 */  sll       $t7, $t7, 2
/* 4DFE8 8004D3E8 3C018008 */  lui       $at, 0x8008
/* 4DFEC 8004D3EC 002F0821 */  addu      $at, $at, $t7
/* 4DFF0 8004D3F0 8C2FD858 */  lw        $t7, -0x27a8($at)
/* 4DFF4 8004D3F4 01E00008 */  jr        $t7
/* 4DFF8 8004D3F8 00000000 */  nop       
/* 4DFFC 8004D3FC 04A10003 */  bgez      $a1, .L8004D40C
/* 4E000 8004D400 28A10004 */  slti      $at, $a1, 4
/* 4E004 8004D404 1000010C */  b         .L8004D838
/* 4E008 8004D408 00001025 */  or        $v0, $zero, $zero
.L8004D40C:
/* 4E00C 8004D40C 14200003 */  bnez      $at, .L8004D41C
/* 4E010 8004D410 00051080 */  sll       $v0, $a1, 2
/* 4E014 8004D414 10000108 */  b         .L8004D838
/* 4E018 8004D418 00001025 */  or        $v0, $zero, $zero
.L8004D41C:
/* 4E01C 8004D41C 10C00011 */  beqz      $a2, .L8004D464
/* 4E020 8004D420 00061880 */  sll       $v1, $a2, 2
/* 4E024 8004D424 24010001 */  addiu     $at, $zero, 1
/* 4E028 8004D428 10C10009 */  beq       $a2, $at, .L8004D450
/* 4E02C 8004D42C 24180004 */  addiu     $t8, $zero, 4
/* 4E030 8004D430 24010002 */  addiu     $at, $zero, 2
/* 4E034 8004D434 10C10008 */  beq       $a2, $at, .L8004D458
/* 4E038 8004D438 24190005 */  addiu     $t9, $zero, 5
/* 4E03C 8004D43C 24010003 */  addiu     $at, $zero, 3
/* 4E040 8004D440 10C10007 */  beq       $a2, $at, .L8004D460
/* 4E044 8004D444 24090006 */  addiu     $t1, $zero, 6
/* 4E048 8004D448 10000006 */  b         .L8004D464
/* 4E04C 8004D44C 00000000 */  nop       
.L8004D450:
/* 4E050 8004D450 10000004 */  b         .L8004D464
/* 4E054 8004D454 AFB80030 */  sw        $t8, 0x30($sp)
.L8004D458:
/* 4E058 8004D458 10000002 */  b         .L8004D464
/* 4E05C 8004D45C AFB90030 */  sw        $t9, 0x30($sp)
.L8004D460:
/* 4E060 8004D460 AFA90030 */  sw        $t1, 0x30($sp)
.L8004D464:
/* 4E064 8004D464 3C018008 */  lui       $at, 0x8008
/* 4E068 8004D468 00220821 */  addu      $at, $at, $v0
/* 4E06C 8004D46C C4248FD8 */  lwc1      $f4, -0x7028($at)
/* 4E070 8004D470 3C018008 */  lui       $at, 0x8008
/* 4E074 8004D474 00230821 */  addu      $at, $at, $v1
/* 4E078 8004D478 C4268FE8 */  lwc1      $f6, -0x7018($at)
/* 4E07C 8004D47C 3C014370 */  lui       $at, 0x4370
/* 4E080 8004D480 44814000 */  mtc1      $at, $f8
/* 4E084 8004D484 3C018008 */  lui       $at, 0x8008
/* 4E088 8004D488 46041000 */  add.s     $f0, $f2, $f4
/* 4E08C 8004D48C 00230821 */  addu      $at, $at, $v1
/* 4E090 8004D490 C42A8FF8 */  lwc1      $f10, -0x7008($at)
/* 4E094 8004D494 24070001 */  addiu     $a3, $zero, 1
/* 4E098 8004D498 46060000 */  add.s     $f0, $f0, $f6
/* 4E09C 8004D49C 3C088008 */  lui       $t0, 0x8008
/* 4E0A0 8004D4A0 01024021 */  addu      $t0, $t0, $v0
/* 4E0A4 8004D4A4 460A4400 */  add.s     $f16, $f8, $f10
/* 4E0A8 8004D4A8 8D088FB0 */  lw        $t0, -0x7050($t0)
/* 4E0AC 8004D4AC 3C014F00 */  lui       $at, 0x4f00
/* 4E0B0 8004D4B0 444AF800 */  cfc1      $t2, $31
/* 4E0B4 8004D4B4 44C7F800 */  ctc1      $a3, $31
/* 4E0B8 8004D4B8 2508007F */  addiu     $t0, $t0, 0x7f
/* 4E0BC 8004D4BC 460084A4 */  cvt.w.s   $f18, $f16
/* 4E0C0 8004D4C0 4447F800 */  cfc1      $a3, $31
/* 4E0C4 8004D4C4 00000000 */  nop       
/* 4E0C8 8004D4C8 30E70078 */  andi      $a3, $a3, 0x78
/* 4E0CC 8004D4CC 50E00013 */  beql      $a3, $zero, .L8004D51C
/* 4E0D0 8004D4D0 44079000 */  mfc1      $a3, $f18
/* 4E0D4 8004D4D4 44819000 */  mtc1      $at, $f18
/* 4E0D8 8004D4D8 24070001 */  addiu     $a3, $zero, 1
/* 4E0DC 8004D4DC 46128481 */  sub.s     $f18, $f16, $f18
/* 4E0E0 8004D4E0 44C7F800 */  ctc1      $a3, $31
/* 4E0E4 8004D4E4 00000000 */  nop       
/* 4E0E8 8004D4E8 460094A4 */  cvt.w.s   $f18, $f18
/* 4E0EC 8004D4EC 4447F800 */  cfc1      $a3, $31
/* 4E0F0 8004D4F0 00000000 */  nop       
/* 4E0F4 8004D4F4 30E70078 */  andi      $a3, $a3, 0x78
/* 4E0F8 8004D4F8 14E00005 */  bnez      $a3, .L8004D510
/* 4E0FC 8004D4FC 00000000 */  nop       
/* 4E100 8004D500 44079000 */  mfc1      $a3, $f18
/* 4E104 8004D504 3C018000 */  lui       $at, 0x8000
/* 4E108 8004D508 10000007 */  b         .L8004D528
/* 4E10C 8004D50C 00E13825 */  or        $a3, $a3, $at
.L8004D510:
/* 4E110 8004D510 10000005 */  b         .L8004D528
/* 4E114 8004D514 2407FFFF */  addiu     $a3, $zero, -1
/* 4E118 8004D518 44079000 */  mfc1      $a3, $f18
.L8004D51C:
/* 4E11C 8004D51C 00000000 */  nop       
/* 4E120 8004D520 04E0FFFB */  bltz      $a3, .L8004D510
/* 4E124 8004D524 00000000 */  nop       
.L8004D528:
/* 4E128 8004D528 44CAF800 */  ctc1      $t2, $31
/* 4E12C 8004D52C 2D010100 */  sltiu     $at, $t0, 0x100
/* 4E130 8004D530 14200002 */  bnez      $at, .L8004D53C
/* 4E134 8004D534 00000000 */  nop       
/* 4E138 8004D538 240800FF */  addiu     $t0, $zero, 0xff
.L8004D53C:
/* 4E13C 8004D53C 150000A6 */  bnez      $t0, .L8004D7D8
/* 4E140 8004D540 00000000 */  nop       
/* 4E144 8004D544 100000A4 */  b         .L8004D7D8
/* 4E148 8004D548 24080001 */  addiu     $t0, $zero, 1
/* 4E14C 8004D54C 04A10003 */  bgez      $a1, .L8004D55C
/* 4E150 8004D550 28A10004 */  slti      $at, $a1, 4
/* 4E154 8004D554 100000B8 */  b         .L8004D838
/* 4E158 8004D558 00001025 */  or        $v0, $zero, $zero
.L8004D55C:
/* 4E15C 8004D55C 14200003 */  bnez      $at, .L8004D56C
/* 4E160 8004D560 00055880 */  sll       $t3, $a1, 2
/* 4E164 8004D564 100000B4 */  b         .L8004D838
/* 4E168 8004D568 00001025 */  or        $v0, $zero, $zero
.L8004D56C:
/* 4E16C 8004D56C 28C1FF83 */  slti      $at, $a2, -0x7d
/* 4E170 8004D570 50200004 */  beql      $at, $zero, .L8004D584
/* 4E174 8004D574 28C1007E */  slti      $at, $a2, 0x7e
/* 4E178 8004D578 10000005 */  b         .L8004D590
/* 4E17C 8004D57C 2406FF83 */  addiu     $a2, $zero, -0x7d
/* 4E180 8004D580 28C1007E */  slti      $at, $a2, 0x7e
.L8004D584:
/* 4E184 8004D584 14200002 */  bnez      $at, .L8004D590
/* 4E188 8004D588 00000000 */  nop       
/* 4E18C 8004D58C 2406007D */  addiu     $a2, $zero, 0x7d
.L8004D590:
/* 4E190 8004D590 3C018008 */  lui       $at, 0x8008
/* 4E194 8004D594 002B0821 */  addu      $at, $at, $t3
/* 4E198 8004D598 C4248FD8 */  lwc1      $f4, -0x7028($at)
/* 4E19C 8004D59C 24C8007F */  addiu     $t0, $a2, 0x7f
/* 4E1A0 8004D5A0 1000008D */  b         .L8004D7D8
/* 4E1A4 8004D5A4 46041000 */  add.s     $f0, $f2, $f4
/* 4E1A8 8004D5A8 24010001 */  addiu     $at, $zero, 1
/* 4E1AC 8004D5AC 14A10003 */  bne       $a1, $at, .L8004D5BC
/* 4E1B0 8004D5B0 240C0009 */  addiu     $t4, $zero, 9
/* 4E1B4 8004D5B4 10000005 */  b         .L8004D5CC
/* 4E1B8 8004D5B8 AFAC0030 */  sw        $t4, 0x30($sp)
.L8004D5BC:
/* 4E1BC 8004D5BC 10A00003 */  beqz      $a1, .L8004D5CC
/* 4E1C0 8004D5C0 00000000 */  nop       
/* 4E1C4 8004D5C4 1000009C */  b         .L8004D838
/* 4E1C8 8004D5C8 00001025 */  or        $v0, $zero, $zero
.L8004D5CC:
/* 4E1CC 8004D5CC 04C00007 */  bltz      $a2, .L8004D5EC
/* 4E1D0 8004D5D0 28C1000B */  slti      $at, $a2, 0xb
/* 4E1D4 8004D5D4 10200005 */  beqz      $at, .L8004D5EC
/* 4E1D8 8004D5D8 24010003 */  addiu     $at, $zero, 3
/* 4E1DC 8004D5DC 10C10003 */  beq       $a2, $at, .L8004D5EC
/* 4E1E0 8004D5E0 24010007 */  addiu     $at, $zero, 7
/* 4E1E4 8004D5E4 14C10003 */  bne       $a2, $at, .L8004D5F4
/* 4E1E8 8004D5E8 30CD0003 */  andi      $t5, $a2, 3
.L8004D5EC:
/* 4E1EC 8004D5EC 10000092 */  b         .L8004D838
/* 4E1F0 8004D5F0 00001025 */  or        $v0, $zero, $zero
.L8004D5F4:
/* 4E1F4 8004D5F4 000D7080 */  sll       $t6, $t5, 2
/* 4E1F8 8004D5F8 3C0F8008 */  lui       $t7, 0x8008
/* 4E1FC 8004D5FC 01EE7821 */  addu      $t7, $t7, $t6
/* 4E200 8004D600 8DEF8FC0 */  lw        $t7, -0x7040($t7)
/* 4E204 8004D604 30D8000C */  andi      $t8, $a2, 0xc
/* 4E208 8004D608 0018C883 */  sra       $t9, $t8, 2
/* 4E20C 8004D60C 448F3000 */  mtc1      $t7, $f6
/* 4E210 8004D610 00194880 */  sll       $t1, $t9, 2
/* 4E214 8004D614 3C018008 */  lui       $at, 0x8008
/* 4E218 8004D618 46803220 */  cvt.s.w   $f8, $f6
/* 4E21C 8004D61C 00290821 */  addu      $at, $at, $t1
/* 4E220 8004D620 C42A8FCC */  lwc1      $f10, -0x7034($at)
/* 4E224 8004D624 460A4402 */  mul.s     $f16, $f8, $f10
/* 4E228 8004D628 4600848D */  trunc.w.s $f18, $f16
/* 4E22C 8004D62C 44089000 */  mfc1      $t0, $f18
/* 4E230 8004D630 10000069 */  b         .L8004D7D8
/* 4E234 8004D634 2508007F */  addiu     $t0, $t0, 0x7f
/* 4E238 8004D638 30CB0003 */  andi      $t3, $a2, 3
/* 4E23C 8004D63C 000B6080 */  sll       $t4, $t3, 2
/* 4E240 8004D640 3C0D8008 */  lui       $t5, 0x8008
/* 4E244 8004D644 01AC6821 */  addu      $t5, $t5, $t4
/* 4E248 8004D648 8DAD8FC0 */  lw        $t5, -0x7040($t5)
/* 4E24C 8004D64C 3C018008 */  lui       $at, 0x8008
/* 4E250 8004D650 D424D8A8 */  ldc1      $f4, -0x2758($at)
/* 4E254 8004D654 448D3000 */  mtc1      $t5, $f6
/* 4E258 8004D658 30CE000C */  andi      $t6, $a2, 0xc
/* 4E25C 8004D65C 000E7883 */  sra       $t7, $t6, 2
/* 4E260 8004D660 46803220 */  cvt.s.w   $f8, $f6
/* 4E264 8004D664 000FC080 */  sll       $t8, $t7, 2
/* 4E268 8004D668 3C018008 */  lui       $at, 0x8008
/* 4E26C 8004D66C 00380821 */  addu      $at, $at, $t8
/* 4E270 8004D670 C4328FCC */  lwc1      $f18, -0x7034($at)
/* 4E274 8004D674 460042A1 */  cvt.d.s   $f10, $f8
/* 4E278 8004D678 460091A1 */  cvt.d.s   $f6, $f18
/* 4E27C 8004D67C 462A2402 */  mul.d     $f16, $f4, $f10
/* 4E280 8004D680 00000000 */  nop       
/* 4E284 8004D684 46268202 */  mul.d     $f8, $f16, $f6
/* 4E288 8004D688 4620410D */  trunc.w.d $f4, $f8
/* 4E28C 8004D68C 44082000 */  mfc1      $t0, $f4
/* 4E290 8004D690 10000051 */  b         .L8004D7D8
/* 4E294 8004D694 2508007F */  addiu     $t0, $t0, 0x7f
/* 4E298 8004D698 24010001 */  addiu     $at, $zero, 1
/* 4E29C 8004D69C 14A10004 */  bne       $a1, $at, .L8004D6B0
/* 4E2A0 8004D6A0 30CA0003 */  andi      $t2, $a2, 3
/* 4E2A4 8004D6A4 2409000C */  addiu     $t1, $zero, 0xc
/* 4E2A8 8004D6A8 10000005 */  b         .L8004D6C0
/* 4E2AC 8004D6AC AFA90030 */  sw        $t1, 0x30($sp)
.L8004D6B0:
/* 4E2B0 8004D6B0 50A00004 */  beql      $a1, $zero, .L8004D6C4
/* 4E2B4 8004D6B4 000A5880 */  sll       $t3, $t2, 2
/* 4E2B8 8004D6B8 1000005F */  b         .L8004D838
/* 4E2BC 8004D6BC 00001025 */  or        $v0, $zero, $zero
.L8004D6C0:
/* 4E2C0 8004D6C0 000A5880 */  sll       $t3, $t2, 2
.L8004D6C4:
/* 4E2C4 8004D6C4 3C0C8008 */  lui       $t4, 0x8008
/* 4E2C8 8004D6C8 018B6021 */  addu      $t4, $t4, $t3
/* 4E2CC 8004D6CC 8D8C8FC0 */  lw        $t4, -0x7040($t4)
/* 4E2D0 8004D6D0 3C018008 */  lui       $at, 0x8008
/* 4E2D4 8004D6D4 D42AD8B0 */  ldc1      $f10, -0x2750($at)
/* 4E2D8 8004D6D8 448C9000 */  mtc1      $t4, $f18
/* 4E2DC 8004D6DC 30CD000C */  andi      $t5, $a2, 0xc
/* 4E2E0 8004D6E0 000D7083 */  sra       $t6, $t5, 2
/* 4E2E4 8004D6E4 46809420 */  cvt.s.w   $f16, $f18
/* 4E2E8 8004D6E8 000E7880 */  sll       $t7, $t6, 2
/* 4E2EC 8004D6EC 3C018008 */  lui       $at, 0x8008
/* 4E2F0 8004D6F0 002F0821 */  addu      $at, $at, $t7
/* 4E2F4 8004D6F4 C4248FCC */  lwc1      $f4, -0x7034($at)
/* 4E2F8 8004D6F8 460081A1 */  cvt.d.s   $f6, $f16
/* 4E2FC 8004D6FC 460024A1 */  cvt.d.s   $f18, $f4
/* 4E300 8004D700 46265202 */  mul.d     $f8, $f10, $f6
/* 4E304 8004D704 00000000 */  nop       
/* 4E308 8004D708 46324402 */  mul.d     $f16, $f8, $f18
/* 4E30C 8004D70C 4620828D */  trunc.w.d $f10, $f16
/* 4E310 8004D710 44085000 */  mfc1      $t0, $f10
/* 4E314 8004D714 10000030 */  b         .L8004D7D8
/* 4E318 8004D718 2508007F */  addiu     $t0, $t0, 0x7f
/* 4E31C 8004D71C 24040001 */  addiu     $a0, $zero, 1
/* 4E320 8004D720 24050005 */  addiu     $a1, $zero, 5
/* 4E324 8004D724 AFA70028 */  sw        $a3, 0x28($sp)
/* 4E328 8004D728 AFA8002C */  sw        $t0, 0x2c($sp)
/* 4E32C 8004D72C 0C013F18 */  jal       func_8004FC60
/* 4E330 8004D730 E7A00024 */  swc1      $f0, 0x24($sp)
/* 4E334 8004D734 8FA70028 */  lw        $a3, 0x28($sp)
/* 4E338 8004D738 8FA8002C */  lw        $t0, 0x2c($sp)
/* 4E33C 8004D73C 10000026 */  b         .L8004D7D8
/* 4E340 8004D740 C7A00024 */  lwc1      $f0, 0x24($sp)
/* 4E344 8004D744 1000003C */  b         .L8004D838
/* 4E348 8004D748 00001025 */  or        $v0, $zero, $zero
/* 4E34C 8004D74C 24010001 */  addiu     $at, $zero, 1
/* 4E350 8004D750 14A10004 */  bne       $a1, $at, .L8004D764
/* 4E354 8004D754 30C90003 */  andi      $t1, $a2, 3
/* 4E358 8004D758 24190010 */  addiu     $t9, $zero, 0x10
/* 4E35C 8004D75C 10000005 */  b         .L8004D774
/* 4E360 8004D760 AFB90030 */  sw        $t9, 0x30($sp)
.L8004D764:
/* 4E364 8004D764 50A00004 */  beql      $a1, $zero, .L8004D778
/* 4E368 8004D768 00095080 */  sll       $t2, $t1, 2
/* 4E36C 8004D76C 10000032 */  b         .L8004D838
/* 4E370 8004D770 00001025 */  or        $v0, $zero, $zero
.L8004D774:
/* 4E374 8004D774 00095080 */  sll       $t2, $t1, 2
.L8004D778:
/* 4E378 8004D778 3C0B8008 */  lui       $t3, 0x8008
/* 4E37C 8004D77C 016A5821 */  addu      $t3, $t3, $t2
/* 4E380 8004D780 8D6B8FC0 */  lw        $t3, -0x7040($t3)
/* 4E384 8004D784 3C018008 */  lui       $at, 0x8008
/* 4E388 8004D788 D426D8B8 */  ldc1      $f6, -0x2748($at)
/* 4E38C 8004D78C 448B2000 */  mtc1      $t3, $f4
/* 4E390 8004D790 30CC000C */  andi      $t4, $a2, 0xc
/* 4E394 8004D794 000C6883 */  sra       $t5, $t4, 2
/* 4E398 8004D798 46802220 */  cvt.s.w   $f8, $f4
/* 4E39C 8004D79C 000D7080 */  sll       $t6, $t5, 2
/* 4E3A0 8004D7A0 3C018008 */  lui       $at, 0x8008
/* 4E3A4 8004D7A4 002E0821 */  addu      $at, $at, $t6
/* 4E3A8 8004D7A8 C42A8FCC */  lwc1      $f10, -0x7034($at)
/* 4E3AC 8004D7AC 460044A1 */  cvt.d.s   $f18, $f8
/* 4E3B0 8004D7B0 46005121 */  cvt.d.s   $f4, $f10
/* 4E3B4 8004D7B4 46323402 */  mul.d     $f16, $f6, $f18
/* 4E3B8 8004D7B8 00000000 */  nop       
/* 4E3BC 8004D7BC 46248202 */  mul.d     $f8, $f16, $f4
/* 4E3C0 8004D7C0 4620418D */  trunc.w.d $f6, $f8
/* 4E3C4 8004D7C4 44083000 */  mfc1      $t0, $f6
/* 4E3C8 8004D7C8 10000003 */  b         .L8004D7D8
/* 4E3CC 8004D7CC 2508007F */  addiu     $t0, $t0, 0x7f
.L8004D7D0:
/* 4E3D0 8004D7D0 10000019 */  b         .L8004D838
/* 4E3D4 8004D7D4 00001025 */  or        $v0, $zero, $zero
.L8004D7D8:
/* 4E3D8 8004D7D8 15000003 */  bnez      $t0, .L8004D7E8
/* 4E3DC 8004D7DC 3C048010 */  lui       $a0, 0x8010
/* 4E3E0 8004D7E0 10000005 */  b         .L8004D7F8
/* 4E3E4 8004D7E4 24080001 */  addiu     $t0, $zero, 1
.L8004D7E8:
/* 4E3E8 8004D7E8 2D010100 */  sltiu     $at, $t0, 0x100
/* 4E3EC 8004D7EC 14200002 */  bnez      $at, .L8004D7F8
/* 4E3F0 8004D7F0 00000000 */  nop       
/* 4E3F4 8004D7F4 240800FF */  addiu     $t0, $zero, 0xff
.L8004D7F8:
/* 4E3F8 8004D7F8 3C058010 */  lui       $a1, 0x8010
/* 4E3FC 8004D7FC 2418FFFF */  addiu     $t8, $zero, -1
/* 4E400 8004D800 AFB80014 */  sw        $t8, 0x14($sp)
/* 4E404 8004D804 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4E408 8004D808 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4E40C 8004D80C 8FA60030 */  lw        $a2, 0x30($sp)
/* 4E410 8004D810 AFA80010 */  sw        $t0, 0x10($sp)
/* 4E414 8004D814 0C00E409 */  jal       func_80039024
/* 4E418 8004D818 E7A00024 */  swc1      $f0, 0x24($sp)
/* 4E41C 8004D81C C7A00024 */  lwc1      $f0, 0x24($sp)
/* 4E420 8004D820 AFA20034 */  sw        $v0, 0x34($sp)
/* 4E424 8004D824 00402025 */  or        $a0, $v0, $zero
/* 4E428 8004D828 44050000 */  mfc1      $a1, $f0
/* 4E42C 8004D82C 0C00E54D */  jal       func_80039534
/* 4E430 8004D830 00000000 */  nop       
/* 4E434 8004D834 8FA20034 */  lw        $v0, 0x34($sp)
.L8004D838:
/* 4E438 8004D838 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4E43C 8004D83C 27BD0038 */  addiu     $sp, $sp, 0x38
/* 4E440 8004D840 03E00008 */  jr        $ra
/* 4E444 8004D844 00000000 */  nop       

glabel func_8004D848
/* 4E448 8004D848 AFA40000 */  sw        $a0, ($sp)
/* 4E44C 8004D84C AFA50004 */  sw        $a1, 4($sp)
/* 4E450 8004D850 03E00008 */  jr        $ra
/* 4E454 8004D854 AFA60008 */  sw        $a2, 8($sp)

glabel func_8004D858
/* 4E458 8004D858 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 4E45C 8004D85C 24010012 */  addiu     $at, $zero, 0x12
/* 4E460 8004D860 AFBF001C */  sw        $ra, 0x1c($sp)
/* 4E464 8004D864 10810027 */  beq       $a0, $at, .L8004D904
/* 4E468 8004D868 00803025 */  or        $a2, $a0, $zero
/* 4E46C 8004D86C 24010013 */  addiu     $at, $zero, 0x13
/* 4E470 8004D870 10810007 */  beq       $a0, $at, .L8004D890
/* 4E474 8004D874 24010014 */  addiu     $at, $zero, 0x14
/* 4E478 8004D878 10810022 */  beq       $a0, $at, .L8004D904
/* 4E47C 8004D87C 24010015 */  addiu     $at, $zero, 0x15
/* 4E480 8004D880 1081000A */  beq       $a0, $at, .L8004D8AC
/* 4E484 8004D884 00000000 */  nop       
/* 4E488 8004D888 10000045 */  b         .L8004D9A0
/* 4E48C 8004D88C 00001025 */  or        $v0, $zero, $zero
.L8004D890:
/* 4E490 8004D890 3C048008 */  lui       $a0, 0x8008
/* 4E494 8004D894 8C849008 */  lw        $a0, -0x6ff8($a0)
/* 4E498 8004D898 24050001 */  addiu     $a1, $zero, 1
/* 4E49C 8004D89C 0C00E4AA */  jal       func_800392A8
/* 4E4A0 8004D8A0 AFA60020 */  sw        $a2, 0x20($sp)
/* 4E4A4 8004D8A4 10000017 */  b         .L8004D904
/* 4E4A8 8004D8A8 8FA60020 */  lw        $a2, 0x20($sp)
.L8004D8AC:
/* 4E4AC 8004D8AC 10A00006 */  beqz      $a1, .L8004D8C8
/* 4E4B0 8004D8B0 3C048008 */  lui       $a0, 0x8008
/* 4E4B4 8004D8B4 24010001 */  addiu     $at, $zero, 1
/* 4E4B8 8004D8B8 10A1000A */  beq       $a1, $at, .L8004D8E4
/* 4E4BC 8004D8BC 3C048008 */  lui       $a0, 0x8008
/* 4E4C0 8004D8C0 10000011 */  b         .L8004D908
/* 4E4C4 8004D8C4 24010015 */  addiu     $at, $zero, 0x15
.L8004D8C8:
/* 4E4C8 8004D8C8 8C849010 */  lw        $a0, -0x6ff0($a0)
/* 4E4CC 8004D8CC 0C00E4D5 */  jal       func_80039354
/* 4E4D0 8004D8D0 AFA60020 */  sw        $a2, 0x20($sp)
/* 4E4D4 8004D8D4 1040000B */  beqz      $v0, .L8004D904
/* 4E4D8 8004D8D8 8FA60020 */  lw        $a2, 0x20($sp)
/* 4E4DC 8004D8DC 10000030 */  b         .L8004D9A0
/* 4E4E0 8004D8E0 00001025 */  or        $v0, $zero, $zero
.L8004D8E4:
/* 4E4E4 8004D8E4 8C84900C */  lw        $a0, -0x6ff4($a0)
/* 4E4E8 8004D8E8 24050019 */  addiu     $a1, $zero, 0x19
/* 4E4EC 8004D8EC 0C00E4AA */  jal       func_800392A8
/* 4E4F0 8004D8F0 AFA60020 */  sw        $a2, 0x20($sp)
/* 4E4F4 8004D8F4 10000003 */  b         .L8004D904
/* 4E4F8 8004D8F8 8FA60020 */  lw        $a2, 0x20($sp)
/* 4E4FC 8004D8FC 10000028 */  b         .L8004D9A0
/* 4E500 8004D900 00001025 */  or        $v0, $zero, $zero
.L8004D904:
/* 4E504 8004D904 24010015 */  addiu     $at, $zero, 0x15
.L8004D908:
/* 4E508 8004D908 14C10006 */  bne       $a2, $at, .L8004D924
/* 4E50C 8004D90C 3C048008 */  lui       $a0, 0x8008
/* 4E510 8004D910 8C849010 */  lw        $a0, -0x6ff0($a0)
/* 4E514 8004D914 2405000A */  addiu     $a1, $zero, 0xa
/* 4E518 8004D918 0C00E4AA */  jal       func_800392A8
/* 4E51C 8004D91C AFA60020 */  sw        $a2, 0x20($sp)
/* 4E520 8004D920 8FA60020 */  lw        $a2, 0x20($sp)
.L8004D924:
/* 4E524 8004D924 3C048010 */  lui       $a0, 0x8010
/* 4E528 8004D928 3C058010 */  lui       $a1, 0x8010
/* 4E52C 8004D92C 240E0080 */  addiu     $t6, $zero, 0x80
/* 4E530 8004D930 240FFFFF */  addiu     $t7, $zero, -1
/* 4E534 8004D934 AFAF0014 */  sw        $t7, 0x14($sp)
/* 4E538 8004D938 AFAE0010 */  sw        $t6, 0x10($sp)
/* 4E53C 8004D93C 8CA5C688 */  lw        $a1, -0x3978($a1)
/* 4E540 8004D940 8C84C68C */  lw        $a0, -0x3974($a0)
/* 4E544 8004D944 24070080 */  addiu     $a3, $zero, 0x80
/* 4E548 8004D948 0C00E409 */  jal       func_80039024
/* 4E54C 8004D94C AFA60020 */  sw        $a2, 0x20($sp)
/* 4E550 8004D950 8FA60020 */  lw        $a2, 0x20($sp)
/* 4E554 8004D954 24010012 */  addiu     $at, $zero, 0x12
/* 4E558 8004D958 00401825 */  or        $v1, $v0, $zero
/* 4E55C 8004D95C 10C10007 */  beq       $a2, $at, .L8004D97C
/* 4E560 8004D960 24010014 */  addiu     $at, $zero, 0x14
/* 4E564 8004D964 10C10008 */  beq       $a2, $at, .L8004D988
/* 4E568 8004D968 24010015 */  addiu     $at, $zero, 0x15
/* 4E56C 8004D96C 10C10009 */  beq       $a2, $at, .L8004D994
/* 4E570 8004D970 00000000 */  nop       
/* 4E574 8004D974 1000000A */  b         .L8004D9A0
/* 4E578 8004D978 00601025 */  or        $v0, $v1, $zero
.L8004D97C:
/* 4E57C 8004D97C 3C018008 */  lui       $at, 0x8008
/* 4E580 8004D980 10000006 */  b         .L8004D99C
/* 4E584 8004D984 AC229008 */  sw        $v0, -0x6ff8($at)
.L8004D988:
/* 4E588 8004D988 3C018008 */  lui       $at, 0x8008
/* 4E58C 8004D98C 10000003 */  b         .L8004D99C
/* 4E590 8004D990 AC22900C */  sw        $v0, -0x6ff4($at)
.L8004D994:
/* 4E594 8004D994 3C018008 */  lui       $at, 0x8008
/* 4E598 8004D998 AC229010 */  sw        $v0, -0x6ff0($at)
.L8004D99C:
/* 4E59C 8004D99C 00601025 */  or        $v0, $v1, $zero
.L8004D9A0:
/* 4E5A0 8004D9A0 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4E5A4 8004D9A4 27BD0020 */  addiu     $sp, $sp, 0x20
/* 4E5A8 8004D9A8 03E00008 */  jr        $ra
/* 4E5AC 8004D9AC 00000000 */  nop       

glabel func_8004D9B0
/* 4E5B0 8004D9B0 3C01FFFF */  lui       $at, 0xffff
/* 4E5B4 8004D9B4 00811824 */  and       $v1, $a0, $at
/* 4E5B8 8004D9B8 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 4E5BC 8004D9BC 3C010006 */  lui       $at, 6
/* 4E5C0 8004D9C0 34210001 */  ori       $at, $at, 1
/* 4E5C4 8004D9C4 0061082B */  sltu      $at, $v1, $at
/* 4E5C8 8004D9C8 AFBF0014 */  sw        $ra, 0x14($sp)
/* 4E5CC 8004D9CC AFA40040 */  sw        $a0, 0x40($sp)
/* 4E5D0 8004D9D0 AFA50044 */  sw        $a1, 0x44($sp)
/* 4E5D4 8004D9D4 1420000C */  bnez      $at, .L8004DA08
/* 4E5D8 8004D9D8 AFA60048 */  sw        $a2, 0x48($sp)
/* 4E5DC 8004D9DC 3C010007 */  lui       $at, 7
/* 4E5E0 8004D9E0 10610016 */  beq       $v1, $at, .L8004DA3C
/* 4E5E4 8004D9E4 3C010008 */  lui       $at, 8
/* 4E5E8 8004D9E8 10610014 */  beq       $v1, $at, .L8004DA3C
/* 4E5EC 8004D9EC 3C010009 */  lui       $at, 9
/* 4E5F0 8004D9F0 10610012 */  beq       $v1, $at, .L8004DA3C
/* 4E5F4 8004D9F4 3C01000A */  lui       $at, 0xa
/* 4E5F8 8004D9F8 10610010 */  beq       $v1, $at, .L8004DA3C
/* 4E5FC 8004D9FC 00000000 */  nop       
/* 4E600 8004DA00 1000009E */  b         .L8004DC7C
/* 4E604 8004DA04 00001025 */  or        $v0, $zero, $zero
.L8004DA08:
/* 4E608 8004DA08 3C010002 */  lui       $at, 2
/* 4E60C 8004DA0C 1061000B */  beq       $v1, $at, .L8004DA3C
/* 4E610 8004DA10 3C010003 */  lui       $at, 3
/* 4E614 8004DA14 10610009 */  beq       $v1, $at, .L8004DA3C
/* 4E618 8004DA18 3C010004 */  lui       $at, 4
/* 4E61C 8004DA1C 10610007 */  beq       $v1, $at, .L8004DA3C
/* 4E620 8004DA20 3C010005 */  lui       $at, 5
/* 4E624 8004DA24 10610005 */  beq       $v1, $at, .L8004DA3C
/* 4E628 8004DA28 3C010006 */  lui       $at, 6
/* 4E62C 8004DA2C 10610003 */  beq       $v1, $at, .L8004DA3C
/* 4E630 8004DA30 00000000 */  nop       
/* 4E634 8004DA34 10000091 */  b         .L8004DC7C
/* 4E638 8004DA38 00001025 */  or        $v0, $zero, $zero
.L8004DA3C:
/* 4E63C 8004DA3C 3C0E8008 */  lui       $t6, 0x8008
/* 4E640 8004DA40 8DCE9014 */  lw        $t6, -0x6fec($t6)
/* 4E644 8004DA44 0003C402 */  srl       $t8, $v1, 0x10
/* 4E648 8004DA48 0018C8C0 */  sll       $t9, $t8, 3
/* 4E64C 8004DA4C 106E0035 */  beq       $v1, $t6, .L8004DB24
/* 4E650 8004DA50 3C0F8010 */  lui       $t7, 0x8010
/* 4E654 8004DA54 8DEFC6F8 */  lw        $t7, -0x3908($t7)
/* 4E658 8004DA58 3C058010 */  lui       $a1, 0x8010
/* 4E65C 8004DA5C 8CA5C798 */  lw        $a1, -0x3868($a1)
/* 4E660 8004DA60 01F94021 */  addu      $t0, $t7, $t9
/* 4E664 8004DA64 8D04FFF4 */  lw        $a0, -0xc($t0)
/* 4E668 8004DA68 AFA30018 */  sw        $v1, 0x18($sp)
/* 4E66C 8004DA6C 2406000C */  addiu     $a2, $zero, 0xc
/* 4E670 8004DA70 0C012B6C */  jal       func_8004ADB0
/* 4E674 8004DA74 AFA40024 */  sw        $a0, 0x24($sp)
/* 4E678 8004DA78 3C048010 */  lui       $a0, 0x8010
/* 4E67C 8004DA7C 8FA50024 */  lw        $a1, 0x24($sp)
/* 4E680 8004DA80 8C84C798 */  lw        $a0, -0x3868($a0)
/* 4E684 8004DA84 0C00DCD8 */  jal       func_80037360
/* 4E688 8004DA88 24060003 */  addiu     $a2, $zero, 3
/* 4E68C 8004DA8C 3C028010 */  lui       $v0, 0x8010
/* 4E690 8004DA90 8C42C798 */  lw        $v0, -0x3868($v0)
/* 4E694 8004DA94 3C058010 */  lui       $a1, 0x8010
/* 4E698 8004DA98 8CA5C6DC */  lw        $a1, -0x3924($a1)
/* 4E69C 8004DA9C 8C440000 */  lw        $a0, ($v0)
/* 4E6A0 8004DAA0 8C490004 */  lw        $t1, 4($v0)
/* 4E6A4 8004DAA4 0C012B6C */  jal       func_8004ADB0
/* 4E6A8 8004DAA8 01243023 */  subu      $a2, $t1, $a0
/* 4E6AC 8004DAAC 3C048010 */  lui       $a0, 0x8010
/* 4E6B0 8004DAB0 3C058010 */  lui       $a1, 0x8010
/* 4E6B4 8004DAB4 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4E6B8 8004DAB8 8C84C6DC */  lw        $a0, -0x3924($a0)
/* 4E6BC 8004DABC 0C0142D0 */  jal       func_80050B40
/* 4E6C0 8004DAC0 24060BB8 */  addiu     $a2, $zero, 0xbb8
/* 4E6C4 8004DAC4 3C048010 */  lui       $a0, 0x8010
/* 4E6C8 8004DAC8 0C00E5EF */  jal       func_800397BC
/* 4E6CC 8004DACC 8C84C6A8 */  lw        $a0, -0x3958($a0)
/* 4E6D0 8004DAD0 3C028010 */  lui       $v0, 0x8010
/* 4E6D4 8004DAD4 8C42C798 */  lw        $v0, -0x3868($v0)
/* 4E6D8 8004DAD8 3C058010 */  lui       $a1, 0x8010
/* 4E6DC 8004DADC 8CA5C6DC */  lw        $a1, -0x3924($a1)
/* 4E6E0 8004DAE0 8C440004 */  lw        $a0, 4($v0)
/* 4E6E4 8004DAE4 8C4A0008 */  lw        $t2, 8($v0)
/* 4E6E8 8004DAE8 0C012B6C */  jal       func_8004ADB0
/* 4E6EC 8004DAEC 01443023 */  subu      $a2, $t2, $a0
/* 4E6F0 8004DAF0 3C048010 */  lui       $a0, 0x8010
/* 4E6F4 8004DAF4 3C058010 */  lui       $a1, 0x8010
/* 4E6F8 8004DAF8 8CA5C6A4 */  lw        $a1, -0x395c($a1)
/* 4E6FC 8004DAFC 8C84C6DC */  lw        $a0, -0x3924($a0)
/* 4E700 8004DB00 0C0142D0 */  jal       func_80050B40
/* 4E704 8004DB04 24061388 */  addiu     $a2, $zero, 0x1388
/* 4E708 8004DB08 3C0B8010 */  lui       $t3, 0x8010
/* 4E70C 8004DB0C 8D6BC798 */  lw        $t3, -0x3868($t3)
/* 4E710 8004DB10 3C048010 */  lui       $a0, 0x8010
/* 4E714 8004DB14 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4E718 8004DB18 0C00E5E7 */  jal       func_8003979C
/* 4E71C 8004DB1C 8D650008 */  lw        $a1, 8($t3)
/* 4E720 8004DB20 8FA30018 */  lw        $v1, 0x18($sp)
.L8004DB24:
/* 4E724 8004DB24 3C018008 */  lui       $at, 0x8008
/* 4E728 8004DB28 AC239014 */  sw        $v1, -0x6fec($at)
/* 4E72C 8004DB2C 3C010006 */  lui       $at, 6
/* 4E730 8004DB30 34210001 */  ori       $at, $at, 1
/* 4E734 8004DB34 0061082B */  sltu      $at, $v1, $at
/* 4E738 8004DB38 1420000E */  bnez      $at, .L8004DB74
/* 4E73C 8004DB3C 3C010007 */  lui       $at, 7
/* 4E740 8004DB40 10610036 */  beq       $v1, $at, .L8004DC1C
/* 4E744 8004DB44 8FA40040 */  lw        $a0, 0x40($sp)
/* 4E748 8004DB48 3C010008 */  lui       $at, 8
/* 4E74C 8004DB4C 10610038 */  beq       $v1, $at, .L8004DC30
/* 4E750 8004DB50 8FA40040 */  lw        $a0, 0x40($sp)
/* 4E754 8004DB54 3C010009 */  lui       $at, 9
/* 4E758 8004DB58 1061003A */  beq       $v1, $at, .L8004DC44
/* 4E75C 8004DB5C 8FA40040 */  lw        $a0, 0x40($sp)
/* 4E760 8004DB60 3C01000A */  lui       $at, 0xa
/* 4E764 8004DB64 1061003C */  beq       $v1, $at, .L8004DC58
/* 4E768 8004DB68 8FA40040 */  lw        $a0, 0x40($sp)
/* 4E76C 8004DB6C 10000043 */  b         .L8004DC7C
/* 4E770 8004DB70 00001025 */  or        $v0, $zero, $zero
.L8004DB74:
/* 4E774 8004DB74 3C010002 */  lui       $at, 2
/* 4E778 8004DB78 1061000F */  beq       $v1, $at, .L8004DBB8
/* 4E77C 8004DB7C 8FA40040 */  lw        $a0, 0x40($sp)
/* 4E780 8004DB80 3C010003 */  lui       $at, 3
/* 4E784 8004DB84 10610011 */  beq       $v1, $at, .L8004DBCC
/* 4E788 8004DB88 8FA40040 */  lw        $a0, 0x40($sp)
/* 4E78C 8004DB8C 3C010004 */  lui       $at, 4
/* 4E790 8004DB90 10610013 */  beq       $v1, $at, .L8004DBE0
/* 4E794 8004DB94 8FA40040 */  lw        $a0, 0x40($sp)
/* 4E798 8004DB98 3C010005 */  lui       $at, 5
/* 4E79C 8004DB9C 10610015 */  beq       $v1, $at, .L8004DBF4
/* 4E7A0 8004DBA0 8FA40040 */  lw        $a0, 0x40($sp)
/* 4E7A4 8004DBA4 3C010006 */  lui       $at, 6
/* 4E7A8 8004DBA8 10610017 */  beq       $v1, $at, .L8004DC08
/* 4E7AC 8004DBAC 8FA40040 */  lw        $a0, 0x40($sp)
/* 4E7B0 8004DBB0 10000032 */  b         .L8004DC7C
/* 4E7B4 8004DBB4 00001025 */  or        $v0, $zero, $zero
.L8004DBB8:
/* 4E7B8 8004DBB8 8FA50044 */  lw        $a1, 0x44($sp)
/* 4E7BC 8004DBBC 0C012FF0 */  jal       func_8004BFC0
/* 4E7C0 8004DBC0 8FA60048 */  lw        $a2, 0x48($sp)
/* 4E7C4 8004DBC4 1000002B */  b         .L8004DC74
/* 4E7C8 8004DBC8 00000000 */  nop       
.L8004DBCC:
/* 4E7CC 8004DBCC 8FA50044 */  lw        $a1, 0x44($sp)
/* 4E7D0 8004DBD0 0C01305F */  jal       func_8004C17C
/* 4E7D4 8004DBD4 8FA60048 */  lw        $a2, 0x48($sp)
/* 4E7D8 8004DBD8 10000026 */  b         .L8004DC74
/* 4E7DC 8004DBDC 00000000 */  nop       
.L8004DBE0:
/* 4E7E0 8004DBE0 8FA50044 */  lw        $a1, 0x44($sp)
/* 4E7E4 8004DBE4 0C01313F */  jal       func_8004C4FC
/* 4E7E8 8004DBE8 8FA60048 */  lw        $a2, 0x48($sp)
/* 4E7EC 8004DBEC 10000021 */  b         .L8004DC74
/* 4E7F0 8004DBF0 00000000 */  nop       
.L8004DBF4:
/* 4E7F4 8004DBF4 8FA50044 */  lw        $a1, 0x44($sp)
/* 4E7F8 8004DBF8 0C0131B7 */  jal       func_8004C6DC
/* 4E7FC 8004DBFC 8FA60048 */  lw        $a2, 0x48($sp)
/* 4E800 8004DC00 1000001C */  b         .L8004DC74
/* 4E804 8004DC04 00000000 */  nop       
.L8004DC08:
/* 4E808 8004DC08 8FA50044 */  lw        $a1, 0x44($sp)
/* 4E80C 8004DC0C 0C01322D */  jal       func_8004C8B4
/* 4E810 8004DC10 8FA60048 */  lw        $a2, 0x48($sp)
/* 4E814 8004DC14 10000017 */  b         .L8004DC74
/* 4E818 8004DC18 00000000 */  nop       
.L8004DC1C:
/* 4E81C 8004DC1C 8FA50044 */  lw        $a1, 0x44($sp)
/* 4E820 8004DC20 0C01329F */  jal       func_8004CA7C
/* 4E824 8004DC24 8FA60048 */  lw        $a2, 0x48($sp)
/* 4E828 8004DC28 10000012 */  b         .L8004DC74
/* 4E82C 8004DC2C 00000000 */  nop       
.L8004DC30:
/* 4E830 8004DC30 8FA50044 */  lw        $a1, 0x44($sp)
/* 4E834 8004DC34 0C013336 */  jal       func_8004CCD8
/* 4E838 8004DC38 8FA60048 */  lw        $a2, 0x48($sp)
/* 4E83C 8004DC3C 1000000D */  b         .L8004DC74
/* 4E840 8004DC40 00000000 */  nop       
.L8004DC44:
/* 4E844 8004DC44 8FA50044 */  lw        $a1, 0x44($sp)
/* 4E848 8004DC48 0C01346C */  jal       func_8004D1B0
/* 4E84C 8004DC4C 8FA60048 */  lw        $a2, 0x48($sp)
/* 4E850 8004DC50 10000008 */  b         .L8004DC74
/* 4E854 8004DC54 00000000 */  nop       
.L8004DC58:
/* 4E858 8004DC58 8FA50044 */  lw        $a1, 0x44($sp)
/* 4E85C 8004DC5C 0C0134EC */  jal       func_8004D3B0
/* 4E860 8004DC60 8FA60048 */  lw        $a2, 0x48($sp)
/* 4E864 8004DC64 10000003 */  b         .L8004DC74
/* 4E868 8004DC68 00000000 */  nop       
/* 4E86C 8004DC6C 10000003 */  b         .L8004DC7C
/* 4E870 8004DC70 00001025 */  or        $v0, $zero, $zero
.L8004DC74:
/* 4E874 8004DC74 3C018008 */  lui       $at, 0x8008
/* 4E878 8004DC78 AC229018 */  sw        $v0, -0x6fe8($at)
.L8004DC7C:
/* 4E87C 8004DC7C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 4E880 8004DC80 27BD0040 */  addiu     $sp, $sp, 0x40
/* 4E884 8004DC84 03E00008 */  jr        $ra
/* 4E888 8004DC88 00000000 */  nop       

glabel func_8004DC8C
/* 4E88C 8004DC8C 3C01FFFF */  lui       $at, 0xffff
/* 4E890 8004DC90 00811024 */  and       $v0, $a0, $at
/* 4E894 8004DC94 3C010006 */  lui       $at, 6
/* 4E898 8004DC98 34210001 */  ori       $at, $at, 1
/* 4E89C 8004DC9C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 4E8A0 8004DCA0 0041082B */  sltu      $at, $v0, $at
/* 4E8A4 8004DCA4 1420000C */  bnez      $at, .L8004DCD8
/* 4E8A8 8004DCA8 AFBF0014 */  sw        $ra, 0x14($sp)
/* 4E8AC 8004DCAC 3C010007 */  lui       $at, 7
/* 4E8B0 8004DCB0 1041002A */  beq       $v0, $at, .L8004DD5C
/* 4E8B4 8004DCB4 3C010008 */  lui       $at, 8
/* 4E8B8 8004DCB8 1041002C */  beq       $v0, $at, .L8004DD6C
/* 4E8BC 8004DCBC 3C010009 */  lui       $at, 9
/* 4E8C0 8004DCC0 1041002E */  beq       $v0, $at, .L8004DD7C
/* 4E8C4 8004DCC4 3C01000A */  lui       $at, 0xa
/* 4E8C8 8004DCC8 10410030 */  beq       $v0, $at, .L8004DD8C
/* 4E8CC 8004DCCC 00000000 */  nop       
/* 4E8D0 8004DCD0 10000031 */  b         .L8004DD98
/* 4E8D4 8004DCD4 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004DCD8:
/* 4E8D8 8004DCD8 3C010002 */  lui       $at, 2
/* 4E8DC 8004DCDC 1041000B */  beq       $v0, $at, .L8004DD0C
/* 4E8E0 8004DCE0 3C010003 */  lui       $at, 3
/* 4E8E4 8004DCE4 1041000D */  beq       $v0, $at, .L8004DD1C
/* 4E8E8 8004DCE8 3C010004 */  lui       $at, 4
/* 4E8EC 8004DCEC 1041000F */  beq       $v0, $at, .L8004DD2C
/* 4E8F0 8004DCF0 3C010005 */  lui       $at, 5
/* 4E8F4 8004DCF4 10410011 */  beq       $v0, $at, .L8004DD3C
/* 4E8F8 8004DCF8 3C010006 */  lui       $at, 6
/* 4E8FC 8004DCFC 10410013 */  beq       $v0, $at, .L8004DD4C
/* 4E900 8004DD00 00000000 */  nop       
/* 4E904 8004DD04 10000024 */  b         .L8004DD98
/* 4E908 8004DD08 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004DD0C:
/* 4E90C 8004DD0C 0C01305B */  jal       func_8004C16C
/* 4E910 8004DD10 00000000 */  nop       
/* 4E914 8004DD14 10000020 */  b         .L8004DD98
/* 4E918 8004DD18 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004DD1C:
/* 4E91C 8004DD1C 0C013111 */  jal       func_8004C444
/* 4E920 8004DD20 00000000 */  nop       
/* 4E924 8004DD24 1000001C */  b         .L8004DD98
/* 4E928 8004DD28 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004DD2C:
/* 4E92C 8004DD2C 0C0131B3 */  jal       func_8004C6CC
/* 4E930 8004DD30 00000000 */  nop       
/* 4E934 8004DD34 10000018 */  b         .L8004DD98
/* 4E938 8004DD38 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004DD3C:
/* 4E93C 8004DD3C 0C013229 */  jal       func_8004C8A4
/* 4E940 8004DD40 00000000 */  nop       
/* 4E944 8004DD44 10000014 */  b         .L8004DD98
/* 4E948 8004DD48 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004DD4C:
/* 4E94C 8004DD4C 0C01329B */  jal       func_8004CA6C
/* 4E950 8004DD50 00000000 */  nop       
/* 4E954 8004DD54 10000010 */  b         .L8004DD98
/* 4E958 8004DD58 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004DD5C:
/* 4E95C 8004DD5C 0C013304 */  jal       func_8004CC10
/* 4E960 8004DD60 00000000 */  nop       
/* 4E964 8004DD64 1000000C */  b         .L8004DD98
/* 4E968 8004DD68 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004DD6C:
/* 4E96C 8004DD6C 0C01345B */  jal       func_8004D16C
/* 4E970 8004DD70 00000000 */  nop       
/* 4E974 8004DD74 10000008 */  b         .L8004DD98
/* 4E978 8004DD78 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004DD7C:
/* 4E97C 8004DD7C 0C0134E8 */  jal       func_8004D3A0
/* 4E980 8004DD80 00000000 */  nop       
/* 4E984 8004DD84 10000004 */  b         .L8004DD98
/* 4E988 8004DD88 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004DD8C:
/* 4E98C 8004DD8C 0C013612 */  jal       func_8004D848
/* 4E990 8004DD90 00000000 */  nop       
/* 4E994 8004DD94 8FBF0014 */  lw        $ra, 0x14($sp)
.L8004DD98:
/* 4E998 8004DD98 27BD0018 */  addiu     $sp, $sp, 0x18
/* 4E99C 8004DD9C 03E00008 */  jr        $ra
/* 4E9A0 8004DDA0 00000000 */  nop       

glabel func_8004DDA4
/* 4E9A4 8004DDA4 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 4E9A8 8004DDA8 3C0F8008 */  lui       $t7, 0x8008
/* 4E9AC 8004DDAC 8DEF9014 */  lw        $t7, -0x6fec($t7)
/* 4E9B0 8004DDB0 3C01FFFF */  lui       $at, 0xffff
/* 4E9B4 8004DDB4 AFB00020 */  sw        $s0, 0x20($sp)
/* 4E9B8 8004DDB8 00817024 */  and       $t6, $a0, $at
/* 4E9BC 8004DDBC 00808025 */  or        $s0, $a0, $zero
/* 4E9C0 8004DDC0 AFBF0024 */  sw        $ra, 0x24($sp)
/* 4E9C4 8004DDC4 AFA50054 */  sw        $a1, 0x54($sp)
/* 4E9C8 8004DDC8 AFA60058 */  sw        $a2, 0x58($sp)
/* 4E9CC 8004DDCC 11EE0033 */  beq       $t7, $t6, .L8004DE9C
/* 4E9D0 8004DDD0 AFAE0028 */  sw        $t6, 0x28($sp)
/* 4E9D4 8004DDD4 3C198010 */  lui       $t9, 0x8010
/* 4E9D8 8004DDD8 8F39C6F4 */  lw        $t9, -0x390c($t9)
/* 4E9DC 8004DDDC 3C058010 */  lui       $a1, 0x8010
/* 4E9E0 8004DDE0 8CA5C798 */  lw        $a1, -0x3868($a1)
/* 4E9E4 8004DDE4 8F240014 */  lw        $a0, 0x14($t9)
/* 4E9E8 8004DDE8 2406000C */  addiu     $a2, $zero, 0xc
/* 4E9EC 8004DDEC 0C012B6C */  jal       func_8004ADB0
/* 4E9F0 8004DDF0 AFA40034 */  sw        $a0, 0x34($sp)
/* 4E9F4 8004DDF4 3C048010 */  lui       $a0, 0x8010
/* 4E9F8 8004DDF8 8FA50034 */  lw        $a1, 0x34($sp)
/* 4E9FC 8004DDFC 8C84C798 */  lw        $a0, -0x3868($a0)
/* 4EA00 8004DE00 0C00DCD8 */  jal       func_80037360
/* 4EA04 8004DE04 24060003 */  addiu     $a2, $zero, 3
/* 4EA08 8004DE08 3C028010 */  lui       $v0, 0x8010
/* 4EA0C 8004DE0C 8C42C798 */  lw        $v0, -0x3868($v0)
/* 4EA10 8004DE10 3C058010 */  lui       $a1, 0x8010
/* 4EA14 8004DE14 8CA5C6DC */  lw        $a1, -0x3924($a1)
/* 4EA18 8004DE18 8C440000 */  lw        $a0, ($v0)
/* 4EA1C 8004DE1C 8C480004 */  lw        $t0, 4($v0)
/* 4EA20 8004DE20 0C012B6C */  jal       func_8004ADB0
/* 4EA24 8004DE24 01043023 */  subu      $a2, $t0, $a0
/* 4EA28 8004DE28 3C048010 */  lui       $a0, 0x8010
/* 4EA2C 8004DE2C 3C058010 */  lui       $a1, 0x8010
/* 4EA30 8004DE30 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4EA34 8004DE34 8C84C6DC */  lw        $a0, -0x3924($a0)
/* 4EA38 8004DE38 0C0142D0 */  jal       func_80050B40
/* 4EA3C 8004DE3C 24060BB8 */  addiu     $a2, $zero, 0xbb8
/* 4EA40 8004DE40 3C048010 */  lui       $a0, 0x8010
/* 4EA44 8004DE44 0C00E5EF */  jal       func_800397BC
/* 4EA48 8004DE48 8C84C6A8 */  lw        $a0, -0x3958($a0)
/* 4EA4C 8004DE4C 3C028010 */  lui       $v0, 0x8010
/* 4EA50 8004DE50 8C42C798 */  lw        $v0, -0x3868($v0)
/* 4EA54 8004DE54 3C058010 */  lui       $a1, 0x8010
/* 4EA58 8004DE58 8CA5C6DC */  lw        $a1, -0x3924($a1)
/* 4EA5C 8004DE5C 8C440004 */  lw        $a0, 4($v0)
/* 4EA60 8004DE60 8C490008 */  lw        $t1, 8($v0)
/* 4EA64 8004DE64 0C012B6C */  jal       func_8004ADB0
/* 4EA68 8004DE68 01243023 */  subu      $a2, $t1, $a0
/* 4EA6C 8004DE6C 3C048010 */  lui       $a0, 0x8010
/* 4EA70 8004DE70 3C058010 */  lui       $a1, 0x8010
/* 4EA74 8004DE74 8CA5C6A4 */  lw        $a1, -0x395c($a1)
/* 4EA78 8004DE78 8C84C6DC */  lw        $a0, -0x3924($a0)
/* 4EA7C 8004DE7C 0C0142D0 */  jal       func_80050B40
/* 4EA80 8004DE80 24061388 */  addiu     $a2, $zero, 0x1388
/* 4EA84 8004DE84 3C0A8010 */  lui       $t2, 0x8010
/* 4EA88 8004DE88 8D4AC798 */  lw        $t2, -0x3868($t2)
/* 4EA8C 8004DE8C 3C048010 */  lui       $a0, 0x8010
/* 4EA90 8004DE90 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4EA94 8004DE94 0C00E5E7 */  jal       func_8003979C
/* 4EA98 8004DE98 8D450008 */  lw        $a1, 8($t2)
.L8004DE9C:
/* 4EA9C 8004DE9C 8FAB0028 */  lw        $t3, 0x28($sp)
/* 4EAA0 8004DEA0 3C018008 */  lui       $at, 0x8008
/* 4EAA4 8004DEA4 3C048010 */  lui       $a0, 0x8010
/* 4EAA8 8004DEA8 AC2B9014 */  sw        $t3, -0x6fec($at)
/* 4EAAC 8004DEAC 3C010100 */  lui       $at, 0x100
/* 4EAB0 8004DEB0 34210001 */  ori       $at, $at, 1
/* 4EAB4 8004DEB4 1201000B */  beq       $s0, $at, .L8004DEE4
/* 4EAB8 8004DEB8 3C058010 */  lui       $a1, 0x8010
/* 4EABC 8004DEBC 3C010100 */  lui       $at, 0x100
/* 4EAC0 8004DEC0 34210002 */  ori       $at, $at, 2
/* 4EAC4 8004DEC4 12010012 */  beq       $s0, $at, .L8004DF10
/* 4EAC8 8004DEC8 3C048010 */  lui       $a0, 0x8010
/* 4EACC 8004DECC 3C010100 */  lui       $at, 0x100
/* 4EAD0 8004DED0 34210003 */  ori       $at, $at, 3
/* 4EAD4 8004DED4 1201001A */  beq       $s0, $at, .L8004DF40
/* 4EAD8 8004DED8 3C048010 */  lui       $a0, 0x8010
/* 4EADC 8004DEDC 10000028 */  b         .L8004DF80
/* 4EAE0 8004DEE0 00001025 */  or        $v0, $zero, $zero
.L8004DEE4:
/* 4EAE4 8004DEE4 240C0080 */  addiu     $t4, $zero, 0x80
/* 4EAE8 8004DEE8 240DFFFF */  addiu     $t5, $zero, -1
/* 4EAEC 8004DEEC AFAD0014 */  sw        $t5, 0x14($sp)
/* 4EAF0 8004DEF0 AFAC0010 */  sw        $t4, 0x10($sp)
/* 4EAF4 8004DEF4 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4EAF8 8004DEF8 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4EAFC 8004DEFC 3206FFFF */  andi      $a2, $s0, 0xffff
/* 4EB00 8004DF00 0C00E409 */  jal       func_80039024
/* 4EB04 8004DF04 24070080 */  addiu     $a3, $zero, 0x80
/* 4EB08 8004DF08 1000001B */  b         .L8004DF78
/* 4EB0C 8004DF0C 00000000 */  nop       
.L8004DF10:
/* 4EB10 8004DF10 3C058010 */  lui       $a1, 0x8010
/* 4EB14 8004DF14 240E0080 */  addiu     $t6, $zero, 0x80
/* 4EB18 8004DF18 240FFFFF */  addiu     $t7, $zero, -1
/* 4EB1C 8004DF1C AFAF0014 */  sw        $t7, 0x14($sp)
/* 4EB20 8004DF20 AFAE0010 */  sw        $t6, 0x10($sp)
/* 4EB24 8004DF24 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4EB28 8004DF28 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4EB2C 8004DF2C 3206FFFF */  andi      $a2, $s0, 0xffff
/* 4EB30 8004DF30 0C00E409 */  jal       func_80039024
/* 4EB34 8004DF34 240700A0 */  addiu     $a3, $zero, 0xa0
/* 4EB38 8004DF38 1000000F */  b         .L8004DF78
/* 4EB3C 8004DF3C 00000000 */  nop       
.L8004DF40:
/* 4EB40 8004DF40 3C058010 */  lui       $a1, 0x8010
/* 4EB44 8004DF44 24180080 */  addiu     $t8, $zero, 0x80
/* 4EB48 8004DF48 2419FFFF */  addiu     $t9, $zero, -1
/* 4EB4C 8004DF4C AFB90014 */  sw        $t9, 0x14($sp)
/* 4EB50 8004DF50 AFB80010 */  sw        $t8, 0x10($sp)
/* 4EB54 8004DF54 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4EB58 8004DF58 8C84C684 */  lw        $a0, -0x397c($a0)
/* 4EB5C 8004DF5C 3206FFFF */  andi      $a2, $s0, 0xffff
/* 4EB60 8004DF60 0C00E409 */  jal       func_80039024
/* 4EB64 8004DF64 240700A0 */  addiu     $a3, $zero, 0xa0
/* 4EB68 8004DF68 10000003 */  b         .L8004DF78
/* 4EB6C 8004DF6C 00000000 */  nop       
/* 4EB70 8004DF70 10000003 */  b         .L8004DF80
/* 4EB74 8004DF74 00001025 */  or        $v0, $zero, $zero
.L8004DF78:
/* 4EB78 8004DF78 3C018008 */  lui       $at, 0x8008
/* 4EB7C 8004DF7C AC229018 */  sw        $v0, -0x6fe8($at)
.L8004DF80:
/* 4EB80 8004DF80 8FBF0024 */  lw        $ra, 0x24($sp)
/* 4EB84 8004DF84 8FB00020 */  lw        $s0, 0x20($sp)
/* 4EB88 8004DF88 27BD0050 */  addiu     $sp, $sp, 0x50
/* 4EB8C 8004DF8C 03E00008 */  jr        $ra
/* 4EB90 8004DF90 00000000 */  nop       

glabel func_8004DF94
/* 4EB94 8004DF94 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 4EB98 8004DF98 3C088008 */  lui       $t0, 0x8008
/* 4EB9C 8004DF9C 8D089014 */  lw        $t0, -0x6fec($t0)
/* 4EBA0 8004DFA0 3C01FFFF */  lui       $at, 0xffff
/* 4EBA4 8004DFA4 240E0080 */  addiu     $t6, $zero, 0x80
/* 4EBA8 8004DFA8 240F0080 */  addiu     $t7, $zero, 0x80
/* 4EBAC 8004DFAC 0081C824 */  and       $t9, $a0, $at
/* 4EBB0 8004DFB0 AFBF001C */  sw        $ra, 0x1c($sp)
/* 4EBB4 8004DFB4 AFA40048 */  sw        $a0, 0x48($sp)
/* 4EBB8 8004DFB8 AFA5004C */  sw        $a1, 0x4c($sp)
/* 4EBBC 8004DFBC AFA60050 */  sw        $a2, 0x50($sp)
/* 4EBC0 8004DFC0 AFAE0038 */  sw        $t6, 0x38($sp)
/* 4EBC4 8004DFC4 AFAF0034 */  sw        $t7, 0x34($sp)
/* 4EBC8 8004DFC8 11190033 */  beq       $t0, $t9, .L8004E098
/* 4EBCC 8004DFCC AFB90020 */  sw        $t9, 0x20($sp)
/* 4EBD0 8004DFD0 3C098010 */  lui       $t1, 0x8010
/* 4EBD4 8004DFD4 8D29C6F4 */  lw        $t1, -0x390c($t1)
/* 4EBD8 8004DFD8 3C058010 */  lui       $a1, 0x8010
/* 4EBDC 8004DFDC 8CA5C798 */  lw        $a1, -0x3868($a1)
/* 4EBE0 8004DFE0 8D24001C */  lw        $a0, 0x1c($t1)
/* 4EBE4 8004DFE4 2406000C */  addiu     $a2, $zero, 0xc
/* 4EBE8 8004DFE8 0C012B6C */  jal       func_8004ADB0
/* 4EBEC 8004DFEC AFA4002C */  sw        $a0, 0x2c($sp)
/* 4EBF0 8004DFF0 3C048010 */  lui       $a0, 0x8010
/* 4EBF4 8004DFF4 8FA5002C */  lw        $a1, 0x2c($sp)
/* 4EBF8 8004DFF8 8C84C798 */  lw        $a0, -0x3868($a0)
/* 4EBFC 8004DFFC 0C00DCD8 */  jal       func_80037360
/* 4EC00 8004E000 24060003 */  addiu     $a2, $zero, 3
/* 4EC04 8004E004 3C028010 */  lui       $v0, 0x8010
/* 4EC08 8004E008 8C42C798 */  lw        $v0, -0x3868($v0)
/* 4EC0C 8004E00C 3C058010 */  lui       $a1, 0x8010
/* 4EC10 8004E010 8CA5C6DC */  lw        $a1, -0x3924($a1)
/* 4EC14 8004E014 8C440000 */  lw        $a0, ($v0)
/* 4EC18 8004E018 8C4A0004 */  lw        $t2, 4($v0)
/* 4EC1C 8004E01C 0C012B6C */  jal       func_8004ADB0
/* 4EC20 8004E020 01443023 */  subu      $a2, $t2, $a0
/* 4EC24 8004E024 3C048010 */  lui       $a0, 0x8010
/* 4EC28 8004E028 3C058010 */  lui       $a1, 0x8010
/* 4EC2C 8004E02C 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4EC30 8004E030 8C84C6DC */  lw        $a0, -0x3924($a0)
/* 4EC34 8004E034 0C0142D0 */  jal       func_80050B40
/* 4EC38 8004E038 24060BB8 */  addiu     $a2, $zero, 0xbb8
/* 4EC3C 8004E03C 3C048010 */  lui       $a0, 0x8010
/* 4EC40 8004E040 0C00E5EF */  jal       func_800397BC
/* 4EC44 8004E044 8C84C6A8 */  lw        $a0, -0x3958($a0)
/* 4EC48 8004E048 3C028010 */  lui       $v0, 0x8010
/* 4EC4C 8004E04C 8C42C798 */  lw        $v0, -0x3868($v0)
/* 4EC50 8004E050 3C058010 */  lui       $a1, 0x8010
/* 4EC54 8004E054 8CA5C6DC */  lw        $a1, -0x3924($a1)
/* 4EC58 8004E058 8C440004 */  lw        $a0, 4($v0)
/* 4EC5C 8004E05C 8C4B0008 */  lw        $t3, 8($v0)
/* 4EC60 8004E060 0C012B6C */  jal       func_8004ADB0
/* 4EC64 8004E064 01643023 */  subu      $a2, $t3, $a0
/* 4EC68 8004E068 3C048010 */  lui       $a0, 0x8010
/* 4EC6C 8004E06C 3C058010 */  lui       $a1, 0x8010
/* 4EC70 8004E070 8CA5C6A4 */  lw        $a1, -0x395c($a1)
/* 4EC74 8004E074 8C84C6DC */  lw        $a0, -0x3924($a0)
/* 4EC78 8004E078 0C0142D0 */  jal       func_80050B40
/* 4EC7C 8004E07C 24061388 */  addiu     $a2, $zero, 0x1388
/* 4EC80 8004E080 3C0C8010 */  lui       $t4, 0x8010
/* 4EC84 8004E084 8D8CC798 */  lw        $t4, -0x3868($t4)
/* 4EC88 8004E088 3C048010 */  lui       $a0, 0x8010
/* 4EC8C 8004E08C 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4EC90 8004E090 0C00E5E7 */  jal       func_8003979C
/* 4EC94 8004E094 8D850008 */  lw        $a1, 8($t4)
.L8004E098:
/* 4EC98 8004E098 8FAD0020 */  lw        $t5, 0x20($sp)
/* 4EC9C 8004E09C 3C018008 */  lui       $at, 0x8008
/* 4ECA0 8004E0A0 8FAE0048 */  lw        $t6, 0x48($sp)
/* 4ECA4 8004E0A4 AC2D9014 */  sw        $t5, -0x6fec($at)
/* 4ECA8 8004E0A8 3C01FEEF */  lui       $at, 0xfeef
/* 4ECAC 8004E0AC 3421FFFF */  ori       $at, $at, 0xffff
/* 4ECB0 8004E0B0 01C17821 */  addu      $t7, $t6, $at
/* 4ECB4 8004E0B4 2DE10017 */  sltiu     $at, $t7, 0x17
/* 4ECB8 8004E0B8 31C2FFFF */  andi      $v0, $t6, 0xffff
/* 4ECBC 8004E0BC 10200063 */  beqz      $at, .L8004E24C
/* 4ECC0 8004E0C0 AFA20040 */  sw        $v0, 0x40($sp)
/* 4ECC4 8004E0C4 000F7880 */  sll       $t7, $t7, 2
/* 4ECC8 8004E0C8 3C018008 */  lui       $at, 0x8008
/* 4ECCC 8004E0CC 002F0821 */  addu      $at, $at, $t7
/* 4ECD0 8004E0D0 8C2FD8C0 */  lw        $t7, -0x2740($at)
/* 4ECD4 8004E0D4 01E00008 */  jr        $t7
/* 4ECD8 8004E0D8 00000000 */  nop       
/* 4ECDC 8004E0DC 10000085 */  b         .L8004E2F4
/* 4ECE0 8004E0E0 00001025 */  or        $v0, $zero, $zero
/* 4ECE4 8004E0E4 2458FFFF */  addiu     $t8, $v0, -1
/* 4ECE8 8004E0E8 1000005A */  b         .L8004E254
/* 4ECEC 8004E0EC AFB80040 */  sw        $t8, 0x40($sp)
/* 4ECF0 8004E0F0 240800F0 */  addiu     $t0, $zero, 0xf0
/* 4ECF4 8004E0F4 10000057 */  b         .L8004E254
/* 4ECF8 8004E0F8 AFA80034 */  sw        $t0, 0x34($sp)
/* 4ECFC 8004E0FC 0C0122E4 */  jal       func_80048B90
/* 4ED00 8004E100 2404001B */  addiu     $a0, $zero, 0x1b
/* 4ED04 8004E104 10000054 */  b         .L8004E258
/* 4ED08 8004E108 8FAF0038 */  lw        $t7, 0x38($sp)
/* 4ED0C 8004E10C 3C048008 */  lui       $a0, 0x8008
/* 4ED10 8004E110 8C84901C */  lw        $a0, -0x6fe4($a0)
/* 4ED14 8004E114 0C00E4AA */  jal       func_800392A8
/* 4ED18 8004E118 24050005 */  addiu     $a1, $zero, 5
/* 4ED1C 8004E11C 1000004E */  b         .L8004E258
/* 4ED20 8004E120 8FAF0038 */  lw        $t7, 0x38($sp)
/* 4ED24 8004E124 3C048008 */  lui       $a0, 0x8008
/* 4ED28 8004E128 8C849020 */  lw        $a0, -0x6fe0($a0)
/* 4ED2C 8004E12C 0C00E4AA */  jal       func_800392A8
/* 4ED30 8004E130 24050005 */  addiu     $a1, $zero, 5
/* 4ED34 8004E134 3C048008 */  lui       $a0, 0x8008
/* 4ED38 8004E138 8C849024 */  lw        $a0, -0x6fdc($a0)
/* 4ED3C 8004E13C 0C00E4AA */  jal       func_800392A8
/* 4ED40 8004E140 24050005 */  addiu     $a1, $zero, 5
/* 4ED44 8004E144 10000044 */  b         .L8004E258
/* 4ED48 8004E148 8FAF0038 */  lw        $t7, 0x38($sp)
/* 4ED4C 8004E14C 8FB90050 */  lw        $t9, 0x50($sp)
/* 4ED50 8004E150 8FA9004C */  lw        $t1, 0x4c($sp)
/* 4ED54 8004E154 8FAC004C */  lw        $t4, 0x4c($sp)
/* 4ED58 8004E158 1720000C */  bnez      $t9, .L8004E18C
/* 4ED5C 8004E15C 00000000 */  nop       
/* 4ED60 8004E160 19200003 */  blez      $t1, .L8004E170
/* 4ED64 8004E164 29210007 */  slti      $at, $t1, 7
/* 4ED68 8004E168 14200003 */  bnez      $at, .L8004E178
/* 4ED6C 8004E16C 8FAA004C */  lw        $t2, 0x4c($sp)
.L8004E170:
/* 4ED70 8004E170 10000060 */  b         .L8004E2F4
/* 4ED74 8004E174 00001025 */  or        $v0, $zero, $zero
.L8004E178:
/* 4ED78 8004E178 3C0B8008 */  lui       $t3, 0x8008
/* 4ED7C 8004E17C 016A5821 */  addu      $t3, $t3, $t2
/* 4ED80 8004E180 916B902B */  lbu       $t3, -0x6fd5($t3)
/* 4ED84 8004E184 1000000B */  b         .L8004E1B4
/* 4ED88 8004E188 AFAB0038 */  sw        $t3, 0x38($sp)
.L8004E18C:
/* 4ED8C 8004E18C 19800003 */  blez      $t4, .L8004E19C
/* 4ED90 8004E190 2981000D */  slti      $at, $t4, 0xd
/* 4ED94 8004E194 14200003 */  bnez      $at, .L8004E1A4
/* 4ED98 8004E198 8FAD004C */  lw        $t5, 0x4c($sp)
.L8004E19C:
/* 4ED9C 8004E19C 10000055 */  b         .L8004E2F4
/* 4EDA0 8004E1A0 00001025 */  or        $v0, $zero, $zero
.L8004E1A4:
/* 4EDA4 8004E1A4 3C0E8008 */  lui       $t6, 0x8008
/* 4EDA8 8004E1A8 01CD7021 */  addu      $t6, $t6, $t5
/* 4EDAC 8004E1AC 91CE9033 */  lbu       $t6, -0x6fcd($t6)
/* 4EDB0 8004E1B0 AFAE0038 */  sw        $t6, 0x38($sp)
.L8004E1B4:
/* 4EDB4 8004E1B4 3C048008 */  lui       $a0, 0x8008
/* 4EDB8 8004E1B8 8C849028 */  lw        $a0, -0x6fd8($a0)
/* 4EDBC 8004E1BC 0C00E4AA */  jal       func_800392A8
/* 4EDC0 8004E1C0 2405000A */  addiu     $a1, $zero, 0xa
/* 4EDC4 8004E1C4 10000024 */  b         .L8004E258
/* 4EDC8 8004E1C8 8FAF0038 */  lw        $t7, 0x38($sp)
/* 4EDCC 8004E1CC 8FB80050 */  lw        $t8, 0x50($sp)
/* 4EDD0 8004E1D0 240F000B */  addiu     $t7, $zero, 0xb
/* 4EDD4 8004E1D4 24010001 */  addiu     $at, $zero, 1
/* 4EDD8 8004E1D8 17010004 */  bne       $t8, $at, .L8004E1EC
/* 4EDDC 8004E1DC AFAF0040 */  sw        $t7, 0x40($sp)
/* 4EDE0 8004E1E0 2408007F */  addiu     $t0, $zero, 0x7f
/* 4EDE4 8004E1E4 1000001B */  b         .L8004E254
/* 4EDE8 8004E1E8 AFA80038 */  sw        $t0, 0x38($sp)
.L8004E1EC:
/* 4EDEC 8004E1EC 8FB9004C */  lw        $t9, 0x4c($sp)
/* 4EDF0 8004E1F0 3C0B8008 */  lui       $t3, 0x8008
/* 4EDF4 8004E1F4 2729FFFF */  addiu     $t1, $t9, -1
/* 4EDF8 8004E1F8 05210004 */  bgez      $t1, .L8004E20C
/* 4EDFC 8004E1FC 312A0003 */  andi      $t2, $t1, 3
/* 4EE00 8004E200 11400002 */  beqz      $t2, .L8004E20C
/* 4EE04 8004E204 00000000 */  nop       
/* 4EE08 8004E208 254AFFFC */  addiu     $t2, $t2, -4
.L8004E20C:
/* 4EE0C 8004E20C 016A5821 */  addu      $t3, $t3, $t2
/* 4EE10 8004E210 916B9040 */  lbu       $t3, -0x6fc0($t3)
/* 4EE14 8004E214 1000000F */  b         .L8004E254
/* 4EE18 8004E218 AFAB0038 */  sw        $t3, 0x38($sp)
/* 4EE1C 8004E21C 8FAC004C */  lw        $t4, 0x4c($sp)
/* 4EE20 8004E220 05800003 */  bltz      $t4, .L8004E230
/* 4EE24 8004E224 29810009 */  slti      $at, $t4, 9
/* 4EE28 8004E228 14200003 */  bnez      $at, .L8004E238
/* 4EE2C 8004E22C 8FAD004C */  lw        $t5, 0x4c($sp)
.L8004E230:
/* 4EE30 8004E230 10000030 */  b         .L8004E2F4
/* 4EE34 8004E234 00001025 */  or        $v0, $zero, $zero
.L8004E238:
/* 4EE38 8004E238 3C0E8008 */  lui       $t6, 0x8008
/* 4EE3C 8004E23C 01CD7021 */  addu      $t6, $t6, $t5
/* 4EE40 8004E240 91CE9043 */  lbu       $t6, -0x6fbd($t6)
/* 4EE44 8004E244 10000003 */  b         .L8004E254
/* 4EE48 8004E248 AFAE0038 */  sw        $t6, 0x38($sp)
.L8004E24C:
/* 4EE4C 8004E24C 10000029 */  b         .L8004E2F4
/* 4EE50 8004E250 00001025 */  or        $v0, $zero, $zero
.L8004E254:
/* 4EE54 8004E254 8FAF0038 */  lw        $t7, 0x38($sp)
.L8004E258:
/* 4EE58 8004E258 3C048010 */  lui       $a0, 0x8010
/* 4EE5C 8004E25C 3C058010 */  lui       $a1, 0x8010
/* 4EE60 8004E260 2418FFFF */  addiu     $t8, $zero, -1
/* 4EE64 8004E264 AFB80014 */  sw        $t8, 0x14($sp)
/* 4EE68 8004E268 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4EE6C 8004E26C 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4EE70 8004E270 8FA60040 */  lw        $a2, 0x40($sp)
/* 4EE74 8004E274 8FA70034 */  lw        $a3, 0x34($sp)
/* 4EE78 8004E278 0C00E409 */  jal       func_80039024
/* 4EE7C 8004E27C AFAF0010 */  sw        $t7, 0x10($sp)
/* 4EE80 8004E280 8FA80048 */  lw        $t0, 0x48($sp)
/* 4EE84 8004E284 3C010110 */  lui       $at, 0x110
/* 4EE88 8004E288 34210003 */  ori       $at, $at, 3
/* 4EE8C 8004E28C 1101000C */  beq       $t0, $at, .L8004E2C0
/* 4EE90 8004E290 3C010110 */  lui       $at, 0x110
/* 4EE94 8004E294 34210006 */  ori       $at, $at, 6
/* 4EE98 8004E298 1101000C */  beq       $t0, $at, .L8004E2CC
/* 4EE9C 8004E29C 3C010110 */  lui       $at, 0x110
/* 4EEA0 8004E2A0 34210007 */  ori       $at, $at, 7
/* 4EEA4 8004E2A4 1101000C */  beq       $t0, $at, .L8004E2D8
/* 4EEA8 8004E2A8 3C010110 */  lui       $at, 0x110
/* 4EEAC 8004E2AC 3421000B */  ori       $at, $at, 0xb
/* 4EEB0 8004E2B0 1101000C */  beq       $t0, $at, .L8004E2E4
/* 4EEB4 8004E2B4 00000000 */  nop       
/* 4EEB8 8004E2B8 1000000C */  b         .L8004E2EC
/* 4EEBC 8004E2BC 00000000 */  nop       
.L8004E2C0:
/* 4EEC0 8004E2C0 3C018008 */  lui       $at, 0x8008
/* 4EEC4 8004E2C4 10000009 */  b         .L8004E2EC
/* 4EEC8 8004E2C8 AC22901C */  sw        $v0, -0x6fe4($at)
.L8004E2CC:
/* 4EECC 8004E2CC 3C018008 */  lui       $at, 0x8008
/* 4EED0 8004E2D0 10000006 */  b         .L8004E2EC
/* 4EED4 8004E2D4 AC229020 */  sw        $v0, -0x6fe0($at)
.L8004E2D8:
/* 4EED8 8004E2D8 3C018008 */  lui       $at, 0x8008
/* 4EEDC 8004E2DC 10000003 */  b         .L8004E2EC
/* 4EEE0 8004E2E0 AC229024 */  sw        $v0, -0x6fdc($at)
.L8004E2E4:
/* 4EEE4 8004E2E4 3C018008 */  lui       $at, 0x8008
/* 4EEE8 8004E2E8 AC229028 */  sw        $v0, -0x6fd8($at)
.L8004E2EC:
/* 4EEEC 8004E2EC 3C018008 */  lui       $at, 0x8008
/* 4EEF0 8004E2F0 AC229018 */  sw        $v0, -0x6fe8($at)
.L8004E2F4:
/* 4EEF4 8004E2F4 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4EEF8 8004E2F8 27BD0048 */  addiu     $sp, $sp, 0x48
/* 4EEFC 8004E2FC 03E00008 */  jr        $ra
/* 4EF00 8004E300 00000000 */  nop       

glabel func_8004E304
/* 4EF04 8004E304 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 4EF08 8004E308 3C188008 */  lui       $t8, 0x8008
/* 4EF0C 8004E30C 8F189014 */  lw        $t8, -0x6fec($t8)
/* 4EF10 8004E310 3C01FFFF */  lui       $at, 0xffff
/* 4EF14 8004E314 00817824 */  and       $t7, $a0, $at
/* 4EF18 8004E318 AFBF001C */  sw        $ra, 0x1c($sp)
/* 4EF1C 8004E31C AFA40058 */  sw        $a0, 0x58($sp)
/* 4EF20 8004E320 AFA5005C */  sw        $a1, 0x5c($sp)
/* 4EF24 8004E324 AFA60060 */  sw        $a2, 0x60($sp)
/* 4EF28 8004E328 130F0033 */  beq       $t8, $t7, .L8004E3F8
/* 4EF2C 8004E32C AFAF0024 */  sw        $t7, 0x24($sp)
/* 4EF30 8004E330 3C198010 */  lui       $t9, 0x8010
/* 4EF34 8004E334 8F39C6F4 */  lw        $t9, -0x390c($t9)
/* 4EF38 8004E338 3C058010 */  lui       $a1, 0x8010
/* 4EF3C 8004E33C 8CA5C798 */  lw        $a1, -0x3868($a1)
/* 4EF40 8004E340 8F240024 */  lw        $a0, 0x24($t9)
/* 4EF44 8004E344 2406000C */  addiu     $a2, $zero, 0xc
/* 4EF48 8004E348 0C012B6C */  jal       func_8004ADB0
/* 4EF4C 8004E34C AFA4003C */  sw        $a0, 0x3c($sp)
/* 4EF50 8004E350 3C048010 */  lui       $a0, 0x8010
/* 4EF54 8004E354 8FA5003C */  lw        $a1, 0x3c($sp)
/* 4EF58 8004E358 8C84C798 */  lw        $a0, -0x3868($a0)
/* 4EF5C 8004E35C 0C00DCD8 */  jal       func_80037360
/* 4EF60 8004E360 24060003 */  addiu     $a2, $zero, 3
/* 4EF64 8004E364 3C028010 */  lui       $v0, 0x8010
/* 4EF68 8004E368 8C42C798 */  lw        $v0, -0x3868($v0)
/* 4EF6C 8004E36C 3C058010 */  lui       $a1, 0x8010
/* 4EF70 8004E370 8CA5C6DC */  lw        $a1, -0x3924($a1)
/* 4EF74 8004E374 8C440000 */  lw        $a0, ($v0)
/* 4EF78 8004E378 8C480004 */  lw        $t0, 4($v0)
/* 4EF7C 8004E37C 0C012B6C */  jal       func_8004ADB0
/* 4EF80 8004E380 01043023 */  subu      $a2, $t0, $a0
/* 4EF84 8004E384 3C048010 */  lui       $a0, 0x8010
/* 4EF88 8004E388 3C058010 */  lui       $a1, 0x8010
/* 4EF8C 8004E38C 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4EF90 8004E390 8C84C6DC */  lw        $a0, -0x3924($a0)
/* 4EF94 8004E394 0C0142D0 */  jal       func_80050B40
/* 4EF98 8004E398 24060BB8 */  addiu     $a2, $zero, 0xbb8
/* 4EF9C 8004E39C 3C048010 */  lui       $a0, 0x8010
/* 4EFA0 8004E3A0 0C00E5EF */  jal       func_800397BC
/* 4EFA4 8004E3A4 8C84C6A8 */  lw        $a0, -0x3958($a0)
/* 4EFA8 8004E3A8 3C028010 */  lui       $v0, 0x8010
/* 4EFAC 8004E3AC 8C42C798 */  lw        $v0, -0x3868($v0)
/* 4EFB0 8004E3B0 3C058010 */  lui       $a1, 0x8010
/* 4EFB4 8004E3B4 8CA5C6DC */  lw        $a1, -0x3924($a1)
/* 4EFB8 8004E3B8 8C440004 */  lw        $a0, 4($v0)
/* 4EFBC 8004E3BC 8C490008 */  lw        $t1, 8($v0)
/* 4EFC0 8004E3C0 0C012B6C */  jal       func_8004ADB0
/* 4EFC4 8004E3C4 01243023 */  subu      $a2, $t1, $a0
/* 4EFC8 8004E3C8 3C048010 */  lui       $a0, 0x8010
/* 4EFCC 8004E3CC 3C058010 */  lui       $a1, 0x8010
/* 4EFD0 8004E3D0 8CA5C6A4 */  lw        $a1, -0x395c($a1)
/* 4EFD4 8004E3D4 8C84C6DC */  lw        $a0, -0x3924($a0)
/* 4EFD8 8004E3D8 0C0142D0 */  jal       func_80050B40
/* 4EFDC 8004E3DC 24061388 */  addiu     $a2, $zero, 0x1388
/* 4EFE0 8004E3E0 3C0A8010 */  lui       $t2, 0x8010
/* 4EFE4 8004E3E4 8D4AC798 */  lw        $t2, -0x3868($t2)
/* 4EFE8 8004E3E8 3C048010 */  lui       $a0, 0x8010
/* 4EFEC 8004E3EC 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4EFF0 8004E3F0 0C00E5E7 */  jal       func_8003979C
/* 4EFF4 8004E3F4 8D450008 */  lw        $a1, 8($t2)
.L8004E3F8:
/* 4EFF8 8004E3F8 8FAB0024 */  lw        $t3, 0x24($sp)
/* 4EFFC 8004E3FC 3C018008 */  lui       $at, 0x8008
/* 4F000 8004E400 8FAC0058 */  lw        $t4, 0x58($sp)
/* 4F004 8004E404 AC2B9014 */  sw        $t3, -0x6fec($at)
/* 4F008 8004E408 3C01FEDF */  lui       $at, 0xfedf
/* 4F00C 8004E40C 3421FFFF */  ori       $at, $at, 0xffff
/* 4F010 8004E410 01816821 */  addu      $t5, $t4, $at
/* 4F014 8004E414 2DA1000E */  sltiu     $at, $t5, 0xe
/* 4F018 8004E418 102000F3 */  beqz      $at, .L8004E7E8
/* 4F01C 8004E41C 000D6880 */  sll       $t5, $t5, 2
/* 4F020 8004E420 3C018008 */  lui       $at, 0x8008
/* 4F024 8004E424 002D0821 */  addu      $at, $at, $t5
/* 4F028 8004E428 8C2DD91C */  lw        $t5, -0x26e4($at)
/* 4F02C 8004E42C 01A00008 */  jr        $t5
/* 4F030 8004E430 00000000 */  nop       
/* 4F034 8004E434 3C048008 */  lui       $a0, 0x8008
/* 4F038 8004E438 8C84904C */  lw        $a0, -0x6fb4($a0)
/* 4F03C 8004E43C 0C00E4AA */  jal       func_800392A8
/* 4F040 8004E440 24050001 */  addiu     $a1, $zero, 1
/* 4F044 8004E444 0C017C54 */  jal       func_8005F150
/* 4F048 8004E448 00000000 */  nop       
/* 4F04C 8004E44C 00402025 */  or        $a0, $v0, $zero
/* 4F050 8004E450 00602825 */  or        $a1, $v1, $zero
/* 4F054 8004E454 24060000 */  addiu     $a2, $zero, 0
/* 4F058 8004E458 0C015D0F */  jal       func_8005743C
/* 4F05C 8004E45C 24070008 */  addiu     $a3, $zero, 8
/* 4F060 8004E460 00402025 */  or        $a0, $v0, $zero
/* 4F064 8004E464 0C01960A */  jal       func_80065828
/* 4F068 8004E468 00602825 */  or        $a1, $v1, $zero
/* 4F06C 8004E46C 3C014080 */  lui       $at, 0x4080
/* 4F070 8004E470 44812000 */  mtc1      $at, $f4
/* 4F074 8004E474 3C048010 */  lui       $a0, 0x8010
/* 4F078 8004E478 3C058010 */  lui       $a1, 0x8010
/* 4F07C 8004E47C 46040081 */  sub.s     $f2, $f0, $f4
/* 4F080 8004E480 240E0080 */  addiu     $t6, $zero, 0x80
/* 4F084 8004E484 2418FFFF */  addiu     $t8, $zero, -1
/* 4F088 8004E488 AFB80014 */  sw        $t8, 0x14($sp)
/* 4F08C 8004E48C AFAE0010 */  sw        $t6, 0x10($sp)
/* 4F090 8004E490 E7A20040 */  swc1      $f2, 0x40($sp)
/* 4F094 8004E494 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4F098 8004E498 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4F09C 8004E49C 24060007 */  addiu     $a2, $zero, 7
/* 4F0A0 8004E4A0 0C00E409 */  jal       func_80039024
/* 4F0A4 8004E4A4 24070080 */  addiu     $a3, $zero, 0x80
/* 4F0A8 8004E4A8 C7A20040 */  lwc1      $f2, 0x40($sp)
/* 4F0AC 8004E4AC AFA2004C */  sw        $v0, 0x4c($sp)
/* 4F0B0 8004E4B0 00402025 */  or        $a0, $v0, $zero
/* 4F0B4 8004E4B4 44051000 */  mfc1      $a1, $f2
/* 4F0B8 8004E4B8 0C00E54D */  jal       func_80039534
/* 4F0BC 8004E4BC 00000000 */  nop       
/* 4F0C0 8004E4C0 8FAF004C */  lw        $t7, 0x4c($sp)
/* 4F0C4 8004E4C4 3C018008 */  lui       $at, 0x8008
/* 4F0C8 8004E4C8 100000C9 */  b         .L8004E7F0
/* 4F0CC 8004E4CC AC2F904C */  sw        $t7, -0x6fb4($at)
/* 4F0D0 8004E4D0 3C048010 */  lui       $a0, 0x8010
/* 4F0D4 8004E4D4 3C058010 */  lui       $a1, 0x8010
/* 4F0D8 8004E4D8 24190080 */  addiu     $t9, $zero, 0x80
/* 4F0DC 8004E4DC 2408FFFF */  addiu     $t0, $zero, -1
/* 4F0E0 8004E4E0 AFA80014 */  sw        $t0, 0x14($sp)
/* 4F0E4 8004E4E4 AFB90010 */  sw        $t9, 0x10($sp)
/* 4F0E8 8004E4E8 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4F0EC 8004E4EC 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4F0F0 8004E4F0 24060001 */  addiu     $a2, $zero, 1
/* 4F0F4 8004E4F4 0C00E409 */  jal       func_80039024
/* 4F0F8 8004E4F8 24070080 */  addiu     $a3, $zero, 0x80
/* 4F0FC 8004E4FC 3C018008 */  lui       $at, 0x8008
/* 4F100 8004E500 AC229050 */  sw        $v0, -0x6fb0($at)
/* 4F104 8004E504 3C018008 */  lui       $at, 0x8008
/* 4F108 8004E508 AFA2004C */  sw        $v0, 0x4c($sp)
/* 4F10C 8004E50C 100000B8 */  b         .L8004E7F0
/* 4F110 8004E510 A0209064 */  sb        $zero, -0x6f9c($at)
/* 4F114 8004E514 3C048008 */  lui       $a0, 0x8008
/* 4F118 8004E518 8C849050 */  lw        $a0, -0x6fb0($a0)
/* 4F11C 8004E51C 0C00E4AA */  jal       func_800392A8
/* 4F120 8004E520 2405003C */  addiu     $a1, $zero, 0x3c
/* 4F124 8004E524 3C048008 */  lui       $a0, 0x8008
/* 4F128 8004E528 8C849054 */  lw        $a0, -0x6fac($a0)
/* 4F12C 8004E52C 0C00E4AA */  jal       func_800392A8
/* 4F130 8004E530 2405003C */  addiu     $a1, $zero, 0x3c
/* 4F134 8004E534 3C018008 */  lui       $at, 0x8008
/* 4F138 8004E538 3C048010 */  lui       $a0, 0x8010
/* 4F13C 8004E53C 3C058010 */  lui       $a1, 0x8010
/* 4F140 8004E540 24090080 */  addiu     $t1, $zero, 0x80
/* 4F144 8004E544 240AFFFF */  addiu     $t2, $zero, -1
/* 4F148 8004E548 A0209060 */  sb        $zero, -0x6fa0($at)
/* 4F14C 8004E54C AFAA0014 */  sw        $t2, 0x14($sp)
/* 4F150 8004E550 AFA90010 */  sw        $t1, 0x10($sp)
/* 4F154 8004E554 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4F158 8004E558 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4F15C 8004E55C 24060003 */  addiu     $a2, $zero, 3
/* 4F160 8004E560 0C00E409 */  jal       func_80039024
/* 4F164 8004E564 24070080 */  addiu     $a3, $zero, 0x80
/* 4F168 8004E568 100000A1 */  b         .L8004E7F0
/* 4F16C 8004E56C AFA2004C */  sw        $v0, 0x4c($sp)
/* 4F170 8004E570 3C0B8008 */  lui       $t3, 0x8008
/* 4F174 8004E574 916B9060 */  lbu       $t3, -0x6fa0($t3)
/* 4F178 8004E578 3C048010 */  lui       $a0, 0x8010
/* 4F17C 8004E57C 3C058010 */  lui       $a1, 0x8010
/* 4F180 8004E580 15600013 */  bnez      $t3, .L8004E5D0
/* 4F184 8004E584 3C014080 */  lui       $at, 0x4080
/* 4F188 8004E588 240C0080 */  addiu     $t4, $zero, 0x80
/* 4F18C 8004E58C 240DFFFF */  addiu     $t5, $zero, -1
/* 4F190 8004E590 AFAD0014 */  sw        $t5, 0x14($sp)
/* 4F194 8004E594 AFAC0010 */  sw        $t4, 0x10($sp)
/* 4F198 8004E598 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4F19C 8004E59C 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4F1A0 8004E5A0 24060002 */  addiu     $a2, $zero, 2
/* 4F1A4 8004E5A4 0C00E409 */  jal       func_80039024
/* 4F1A8 8004E5A8 24070080 */  addiu     $a3, $zero, 0x80
/* 4F1AC 8004E5AC 3C018008 */  lui       $at, 0x8008
/* 4F1B0 8004E5B0 AC229054 */  sw        $v0, -0x6fac($at)
/* 4F1B4 8004E5B4 3C014000 */  lui       $at, 0x4000
/* 4F1B8 8004E5B8 44811000 */  mtc1      $at, $f2
/* 4F1BC 8004E5BC 3C018008 */  lui       $at, 0x8008
/* 4F1C0 8004E5C0 240E0001 */  addiu     $t6, $zero, 1
/* 4F1C4 8004E5C4 AFA2004C */  sw        $v0, 0x4c($sp)
/* 4F1C8 8004E5C8 10000003 */  b         .L8004E5D8
/* 4F1CC 8004E5CC A02E9060 */  sb        $t6, -0x6fa0($at)
.L8004E5D0:
/* 4F1D0 8004E5D0 44811000 */  mtc1      $at, $f2
/* 4F1D4 8004E5D4 00000000 */  nop       
.L8004E5D8:
/* 4F1D8 8004E5D8 3C048008 */  lui       $a0, 0x8008
/* 4F1DC 8004E5DC 44051000 */  mfc1      $a1, $f2
/* 4F1E0 8004E5E0 0C00E54D */  jal       func_80039534
/* 4F1E4 8004E5E4 8C849054 */  lw        $a0, -0x6fac($a0)
/* 4F1E8 8004E5E8 10000082 */  b         .L8004E7F4
/* 4F1EC 8004E5EC 8FAB004C */  lw        $t3, 0x4c($sp)
/* 4F1F0 8004E5F0 3C048010 */  lui       $a0, 0x8010
/* 4F1F4 8004E5F4 3C058010 */  lui       $a1, 0x8010
/* 4F1F8 8004E5F8 24180080 */  addiu     $t8, $zero, 0x80
/* 4F1FC 8004E5FC 240FFFFF */  addiu     $t7, $zero, -1
/* 4F200 8004E600 AFAF0014 */  sw        $t7, 0x14($sp)
/* 4F204 8004E604 AFB80010 */  sw        $t8, 0x10($sp)
/* 4F208 8004E608 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4F20C 8004E60C 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4F210 8004E610 24060004 */  addiu     $a2, $zero, 4
/* 4F214 8004E614 0C00E409 */  jal       func_80039024
/* 4F218 8004E618 24070080 */  addiu     $a3, $zero, 0x80
/* 4F21C 8004E61C 3C018008 */  lui       $at, 0x8008
/* 4F220 8004E620 AFA2004C */  sw        $v0, 0x4c($sp)
/* 4F224 8004E624 10000072 */  b         .L8004E7F0
/* 4F228 8004E628 AC229058 */  sw        $v0, -0x6fa8($at)
/* 4F22C 8004E62C 3C048008 */  lui       $a0, 0x8008
/* 4F230 8004E630 8C849054 */  lw        $a0, -0x6fac($a0)
/* 4F234 8004E634 0C00E4AA */  jal       func_800392A8
/* 4F238 8004E638 2405005A */  addiu     $a1, $zero, 0x5a
/* 4F23C 8004E63C 3C048008 */  lui       $a0, 0x8008
/* 4F240 8004E640 8C849058 */  lw        $a0, -0x6fa8($a0)
/* 4F244 8004E644 0C00E4AA */  jal       func_800392A8
/* 4F248 8004E648 24050001 */  addiu     $a1, $zero, 1
/* 4F24C 8004E64C 3C048010 */  lui       $a0, 0x8010
/* 4F250 8004E650 3C058010 */  lui       $a1, 0x8010
/* 4F254 8004E654 24190080 */  addiu     $t9, $zero, 0x80
/* 4F258 8004E658 2408FFFF */  addiu     $t0, $zero, -1
/* 4F25C 8004E65C AFA80014 */  sw        $t0, 0x14($sp)
/* 4F260 8004E660 AFB90010 */  sw        $t9, 0x10($sp)
/* 4F264 8004E664 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4F268 8004E668 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4F26C 8004E66C 24060005 */  addiu     $a2, $zero, 5
/* 4F270 8004E670 0C00E409 */  jal       func_80039024
/* 4F274 8004E674 24070080 */  addiu     $a3, $zero, 0x80
/* 4F278 8004E678 1000005D */  b         .L8004E7F0
/* 4F27C 8004E67C AFA2004C */  sw        $v0, 0x4c($sp)
/* 4F280 8004E680 3C048010 */  lui       $a0, 0x8010
/* 4F284 8004E684 3C058010 */  lui       $a1, 0x8010
/* 4F288 8004E688 24090080 */  addiu     $t1, $zero, 0x80
/* 4F28C 8004E68C 240AFFFF */  addiu     $t2, $zero, -1
/* 4F290 8004E690 AFAA0014 */  sw        $t2, 0x14($sp)
/* 4F294 8004E694 AFA90010 */  sw        $t1, 0x10($sp)
/* 4F298 8004E698 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4F29C 8004E69C 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4F2A0 8004E6A0 24060006 */  addiu     $a2, $zero, 6
/* 4F2A4 8004E6A4 0C00E409 */  jal       func_80039024
/* 4F2A8 8004E6A8 24070080 */  addiu     $a3, $zero, 0x80
/* 4F2AC 8004E6AC 3C018008 */  lui       $at, 0x8008
/* 4F2B0 8004E6B0 AC22905C */  sw        $v0, -0x6fa4($at)
/* 4F2B4 8004E6B4 AFA2004C */  sw        $v0, 0x4c($sp)
/* 4F2B8 8004E6B8 0C012E71 */  jal       func_8004B9C4
/* 4F2BC 8004E6BC 24040078 */  addiu     $a0, $zero, 0x78
/* 4F2C0 8004E6C0 240B0001 */  addiu     $t3, $zero, 1
/* 4F2C4 8004E6C4 3C018008 */  lui       $at, 0x8008
/* 4F2C8 8004E6C8 10000049 */  b         .L8004E7F0
/* 4F2CC 8004E6CC A02B9064 */  sb        $t3, -0x6f9c($at)
/* 4F2D0 8004E6D0 3C048008 */  lui       $a0, 0x8008
/* 4F2D4 8004E6D4 8C84905C */  lw        $a0, -0x6fa4($a0)
/* 4F2D8 8004E6D8 0C00E4AA */  jal       func_800392A8
/* 4F2DC 8004E6DC 24050006 */  addiu     $a1, $zero, 6
/* 4F2E0 8004E6E0 0C012C73 */  jal       func_8004B1CC
/* 4F2E4 8004E6E4 24040013 */  addiu     $a0, $zero, 0x13
/* 4F2E8 8004E6E8 240C0001 */  addiu     $t4, $zero, 1
/* 4F2EC 8004E6EC 3C018008 */  lui       $at, 0x8008
/* 4F2F0 8004E6F0 1000003F */  b         .L8004E7F0
/* 4F2F4 8004E6F4 A02C9064 */  sb        $t4, -0x6f9c($at)
/* 4F2F8 8004E6F8 3C0D8008 */  lui       $t5, 0x8008
/* 4F2FC 8004E6FC 91AD9064 */  lbu       $t5, -0x6f9c($t5)
/* 4F300 8004E700 11A00003 */  beqz      $t5, .L8004E710
/* 4F304 8004E704 00000000 */  nop       
/* 4F308 8004E708 0C012C73 */  jal       func_8004B1CC
/* 4F30C 8004E70C 24040010 */  addiu     $a0, $zero, 0x10
.L8004E710:
/* 4F310 8004E710 0C0122E4 */  jal       func_80048B90
/* 4F314 8004E714 24040002 */  addiu     $a0, $zero, 2
/* 4F318 8004E718 3C018008 */  lui       $at, 0x8008
/* 4F31C 8004E71C 10000034 */  b         .L8004E7F0
/* 4F320 8004E720 A0209064 */  sb        $zero, -0x6f9c($at)
/* 4F324 8004E724 3C048010 */  lui       $a0, 0x8010
/* 4F328 8004E728 3C058010 */  lui       $a1, 0x8010
/* 4F32C 8004E72C 240E0080 */  addiu     $t6, $zero, 0x80
/* 4F330 8004E730 2418FFFF */  addiu     $t8, $zero, -1
/* 4F334 8004E734 AFB80014 */  sw        $t8, 0x14($sp)
/* 4F338 8004E738 AFAE0010 */  sw        $t6, 0x10($sp)
/* 4F33C 8004E73C 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4F340 8004E740 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4F344 8004E744 24060008 */  addiu     $a2, $zero, 8
/* 4F348 8004E748 0C00E409 */  jal       func_80039024
/* 4F34C 8004E74C 24070080 */  addiu     $a3, $zero, 0x80
/* 4F350 8004E750 10000027 */  b         .L8004E7F0
/* 4F354 8004E754 AFA2004C */  sw        $v0, 0x4c($sp)
/* 4F358 8004E758 3C048010 */  lui       $a0, 0x8010
/* 4F35C 8004E75C 3C058010 */  lui       $a1, 0x8010
/* 4F360 8004E760 240F0080 */  addiu     $t7, $zero, 0x80
/* 4F364 8004E764 2419FFFF */  addiu     $t9, $zero, -1
/* 4F368 8004E768 AFB90014 */  sw        $t9, 0x14($sp)
/* 4F36C 8004E76C AFAF0010 */  sw        $t7, 0x10($sp)
/* 4F370 8004E770 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4F374 8004E774 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4F378 8004E778 24060009 */  addiu     $a2, $zero, 9
/* 4F37C 8004E77C 0C00E409 */  jal       func_80039024
/* 4F380 8004E780 24070080 */  addiu     $a3, $zero, 0x80
/* 4F384 8004E784 1000001A */  b         .L8004E7F0
/* 4F388 8004E788 AFA2004C */  sw        $v0, 0x4c($sp)
/* 4F38C 8004E78C 3C048008 */  lui       $a0, 0x8008
/* 4F390 8004E790 8C84904C */  lw        $a0, -0x6fb4($a0)
/* 4F394 8004E794 0C00E4AA */  jal       func_800392A8
/* 4F398 8004E798 24050001 */  addiu     $a1, $zero, 1
/* 4F39C 8004E79C 3C048010 */  lui       $a0, 0x8010
/* 4F3A0 8004E7A0 3C058010 */  lui       $a1, 0x8010
/* 4F3A4 8004E7A4 24080080 */  addiu     $t0, $zero, 0x80
/* 4F3A8 8004E7A8 2409FFFF */  addiu     $t1, $zero, -1
/* 4F3AC 8004E7AC AFA90014 */  sw        $t1, 0x14($sp)
/* 4F3B0 8004E7B0 AFA80010 */  sw        $t0, 0x10($sp)
/* 4F3B4 8004E7B4 8CA5C6A8 */  lw        $a1, -0x3958($a1)
/* 4F3B8 8004E7B8 8C84C6A4 */  lw        $a0, -0x395c($a0)
/* 4F3BC 8004E7BC 24060007 */  addiu     $a2, $zero, 7
/* 4F3C0 8004E7C0 0C00E409 */  jal       func_80039024
/* 4F3C4 8004E7C4 24070080 */  addiu     $a3, $zero, 0x80
/* 4F3C8 8004E7C8 AFA2004C */  sw        $v0, 0x4c($sp)
/* 4F3CC 8004E7CC 00402025 */  or        $a0, $v0, $zero
/* 4F3D0 8004E7D0 0C00E54D */  jal       func_80039534
/* 4F3D4 8004E7D4 3C05C0A0 */  lui       $a1, 0xc0a0
/* 4F3D8 8004E7D8 8FAA004C */  lw        $t2, 0x4c($sp)
/* 4F3DC 8004E7DC 3C018008 */  lui       $at, 0x8008
/* 4F3E0 8004E7E0 10000003 */  b         .L8004E7F0
/* 4F3E4 8004E7E4 AC2A904C */  sw        $t2, -0x6fb4($at)
.L8004E7E8:
/* 4F3E8 8004E7E8 10000004 */  b         .L8004E7FC
/* 4F3EC 8004E7EC 00001025 */  or        $v0, $zero, $zero
.L8004E7F0:
/* 4F3F0 8004E7F0 8FAB004C */  lw        $t3, 0x4c($sp)
.L8004E7F4:
/* 4F3F4 8004E7F4 3C018008 */  lui       $at, 0x8008
/* 4F3F8 8004E7F8 AC2B9018 */  sw        $t3, -0x6fe8($at)
.L8004E7FC:
/* 4F3FC 8004E7FC 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4F400 8004E800 27BD0058 */  addiu     $sp, $sp, 0x58
/* 4F404 8004E804 03E00008 */  jr        $ra
/* 4F408 8004E808 00000000 */  nop       
/* 4F40C 8004E80C 00000000 */  nop       
