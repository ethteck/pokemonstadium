.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8002F2A0
/* 2FEA0 8002F2A0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 2FEA4 8002F2A4 AFBF0044 */  sw         $ra, 0x44($sp)
/* 2FEA8 8002F2A8 3C044B44 */  lui        $a0, 0x4b44
/* 2FEAC 8002F2AC AFBE0040 */  sw         $fp, 0x40($sp)
/* 2FEB0 8002F2B0 AFB7003C */  sw         $s7, 0x3c($sp)
/* 2FEB4 8002F2B4 AFB60038 */  sw         $s6, 0x38($sp)
/* 2FEB8 8002F2B8 AFB50034 */  sw         $s5, 0x34($sp)
/* 2FEBC 8002F2BC AFB40030 */  sw         $s4, 0x30($sp)
/* 2FEC0 8002F2C0 AFB3002C */  sw         $s3, 0x2c($sp)
/* 2FEC4 8002F2C4 AFB20028 */  sw         $s2, 0x28($sp)
/* 2FEC8 8002F2C8 AFB10024 */  sw         $s1, 0x24($sp)
/* 2FECC 8002F2CC AFB00020 */  sw         $s0, 0x20($sp)
/* 2FED0 8002F2D0 0C0009E1 */  jal        func_80002784
/* 2FED4 8002F2D4 3484434D */   ori       $a0, $a0, 0x434d
/* 2FED8 8002F2D8 3C0F8780 */  lui        $t7, 0x8780
/* 2FEDC 8002F2DC 3C120FF0 */  lui        $s2, 0xff0
/* 2FEE0 8002F2E0 25EF0000 */  addiu      $t7, $t7, 0
/* 2FEE4 8002F2E4 01F22024 */  and        $a0, $t7, $s2
/* 2FEE8 8002F2E8 240E0001 */  addiu      $t6, $zero, 1
/* 2FEEC 8002F2EC 00042502 */  srl        $a0, $a0, 0x14
/* 2FEF0 8002F2F0 3C050010 */  lui        $a1, 0x10
/* 2FEF4 8002F2F4 3C060012 */  lui        $a2, 0x12
/* 2FEF8 8002F2F8 AFA00060 */  sw         $zero, 0x60($sp)
/* 2FEFC 8002F2FC 00008025 */  or         $s0, $zero, $zero
/* 2FF00 8002F300 AFAE0058 */  sw         $t6, 0x58($sp)
/* 2FF04 8002F304 24C68990 */  addiu      $a2, $a2, -0x7670
/* 2FF08 8002F308 24A57FA0 */  addiu      $a1, $a1, 0x7fa0
/* 2FF0C 8002F30C 0C001115 */  jal        func_80004454
/* 2FF10 8002F310 2484FFF0 */   addiu     $a0, $a0, -0x10
/* 2FF14 8002F314 0040F809 */  jalr       $v0
/* 2FF18 8002F318 00000000 */   nop       
/* 2FF1C 8002F31C 3C1E0012 */  lui        $fp, 0x12
/* 2FF20 8002F320 3C170012 */  lui        $s7, 0x12
/* 2FF24 8002F324 3C1687B0 */  lui        $s6, 0x87b0
/* 2FF28 8002F328 3C150012 */  lui        $s5, 0x12
/* 2FF2C 8002F32C 3C140012 */  lui        $s4, 0x12
/* 2FF30 8002F330 3C138790 */  lui        $s3, 0x8790
/* 2FF34 8002F334 26730000 */  addiu      $s3, $s3, 0
/* 2FF38 8002F338 26948990 */  addiu      $s4, $s4, -0x7670
/* 2FF3C 8002F33C 26B5F560 */  addiu      $s5, $s5, -0xaa0
/* 2FF40 8002F340 26D60000 */  addiu      $s6, $s6, 0
/* 2FF44 8002F344 26F70920 */  addiu      $s7, $s7, 0x920
/* 2FF48 8002F348 27DE0A10 */  addiu      $fp, $fp, 0xa10
.L8002F34C:
/* 2FF4C 8002F34C 12000004 */  beqz       $s0, .L8002F360
/* 2FF50 8002F350 24010001 */   addiu     $at, $zero, 1
/* 2FF54 8002F354 12010002 */  beq        $s0, $at, .L8002F360
/* 2FF58 8002F358 24010004 */   addiu     $at, $zero, 4
/* 2FF5C 8002F35C 1601000E */  bne        $s0, $at, .L8002F398
.L8002F360:
/* 2FF60 8002F360 3C188250 */   lui       $t8, 0x8250
/* 2FF64 8002F364 27180000 */  addiu      $t8, $t8, 0
/* 2FF68 8002F368 8FB90060 */  lw         $t9, 0x60($sp)
/* 2FF6C 8002F36C 03122024 */  and        $a0, $t8, $s2
/* 2FF70 8002F370 00042502 */  srl        $a0, $a0, 0x14
/* 2FF74 8002F374 3C050028 */  lui        $a1, 0x28
/* 2FF78 8002F378 3C060028 */  lui        $a2, 0x28
/* 2FF7C 8002F37C 24C65DC0 */  addiu      $a2, $a2, 0x5dc0
/* 2FF80 8002F380 24A5BCA0 */  addiu      $a1, $a1, -0x4360
/* 2FF84 8002F384 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 2FF88 8002F388 02003825 */  or         $a3, $s0, $zero
/* 2FF8C 8002F38C 0C00A402 */  jal        func_80029008
/* 2FF90 8002F390 AFB90010 */   sw        $t9, 0x10($sp)
/* 2FF94 8002F394 AFA20060 */  sw         $v0, 0x60($sp)
.L8002F398:
/* 2FF98 8002F398 8FA80060 */  lw         $t0, 0x60($sp)
/* 2FF9C 8002F39C 3C046D69 */  lui        $a0, 0x6d69
/* 2FFA0 8002F3A0 34846E69 */  ori        $a0, $a0, 0x6e69
/* 2FFA4 8002F3A4 11000191 */  beqz       $t0, .L8002F9EC
/* 2FFA8 8002F3A8 3C090300 */   lui       $t1, 0x300
/* 2FFAC 8002F3AC 3C0C8140 */  lui        $t4, 0x8140
/* 2FFB0 8002F3B0 258C0000 */  addiu      $t4, $t4, 0
/* 2FFB4 8002F3B4 01926824 */  and        $t5, $t4, $s2
/* 2FFB8 8002F3B8 25290000 */  addiu      $t1, $t1, 0
/* 2FFBC 8002F3BC 3C010F00 */  lui        $at, 0xf00
/* 2FFC0 8002F3C0 01215024 */  and        $t2, $t1, $at
/* 2FFC4 8002F3C4 000D7502 */  srl        $t6, $t5, 0x14
/* 2FFC8 8002F3C8 25CFFFF0 */  addiu      $t7, $t6, -0x10
/* 2FFCC 8002F3CC 000A5E02 */  srl        $t3, $t2, 0x18
/* 2FFD0 8002F3D0 AFAB004C */  sw         $t3, 0x4c($sp)
/* 2FFD4 8002F3D4 AFAF0048 */  sw         $t7, 0x48($sp)
/* 2FFD8 8002F3D8 0C0009E1 */  jal        func_80002784
/* 2FFDC 8002F3DC 01008825 */   or        $s1, $t0, $zero
/* 2FFE0 8002F3E0 3C050067 */  lui        $a1, 0x67
/* 2FFE4 8002F3E4 3C060069 */  lui        $a2, 0x69
/* 2FFE8 8002F3E8 24C66350 */  addiu      $a2, $a2, 0x6350
/* 2FFEC 8002F3EC 24A55FA0 */  addiu      $a1, $a1, 0x5fa0
/* 2FFF0 8002F3F0 8FA4004C */  lw         $a0, 0x4c($sp)
/* 2FFF4 8002F3F4 0C001096 */  jal        func_80004258
/* 2FFF8 8002F3F8 00003825 */   or        $a3, $zero, $zero
/* 2FFFC 8002F3FC 3C050026 */  lui        $a1, 0x26
/* 30000 8002F400 3C060027 */  lui        $a2, 0x27
/* 30004 8002F404 24C61260 */  addiu      $a2, $a2, 0x1260
/* 30008 8002F408 24A51F70 */  addiu      $a1, $a1, 0x1f70
/* 3000C 8002F40C 0C001115 */  jal        func_80004454
/* 30010 8002F410 8FA40048 */   lw        $a0, 0x48($sp)
/* 30014 8002F414 2638FFFF */  addiu      $t8, $s1, -1
/* 30018 8002F418 2F010010 */  sltiu      $at, $t8, 0x10
/* 3001C 8002F41C 10200165 */  beqz       $at, .L8002F9B4
/* 30020 8002F420 0018C080 */   sll       $t8, $t8, 2
/* 30024 8002F424 3C018008 */  lui        $at, 0x8008
/* 30028 8002F428 00380821 */  addu       $at, $at, $t8
/* 3002C 8002F42C 8C38C490 */  lw         $t8, -0x3b70($at)
/* 30030 8002F430 03000008 */  jr         $t8
/* 30034 8002F434 00000000 */   nop       
/* 30038 8002F438 3C1987A0 */  lui        $t9, 0x87a0
/* 3003C 8002F43C 3C098600 */  lui        $t1, 0x8600
/* 30040 8002F440 25290000 */  addiu      $t1, $t1, 0
/* 30044 8002F444 27390000 */  addiu      $t9, $t9, 0
/* 30048 8002F448 03322024 */  and        $a0, $t9, $s2
/* 3004C 8002F44C 01328024 */  and        $s0, $t1, $s2
/* 30050 8002F450 00108502 */  srl        $s0, $s0, 0x14
/* 30054 8002F454 00042502 */  srl        $a0, $a0, 0x14
/* 30058 8002F458 3C050012 */  lui        $a1, 0x12
/* 3005C 8002F45C 3C060012 */  lui        $a2, 0x12
/* 30060 8002F460 24C60920 */  addiu      $a2, $a2, 0x920
/* 30064 8002F464 24A5F560 */  addiu      $a1, $a1, -0xaa0
/* 30068 8002F468 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 3006C 8002F46C 0C001115 */  jal        func_80004454
/* 30070 8002F470 2610FFF0 */   addiu     $s0, $s0, -0x10
/* 30074 8002F474 3C050012 */  lui        $a1, 0x12
/* 30078 8002F478 3C060012 */  lui        $a2, 0x12
/* 3007C 8002F47C 24C64570 */  addiu      $a2, $a2, 0x4570
/* 30080 8002F480 24A50A10 */  addiu      $a1, $a1, 0xa10
/* 30084 8002F484 02002025 */  or         $a0, $s0, $zero
/* 30088 8002F488 00003825 */  or         $a3, $zero, $zero
/* 3008C 8002F48C 0C00A402 */  jal        func_80029008
/* 30090 8002F490 AFA00010 */   sw        $zero, 0x10($sp)
/* 30094 8002F494 10000147 */  b          .L8002F9B4
/* 30098 8002F498 00408025 */   or        $s0, $v0, $zero
/* 3009C 8002F49C 3C0A87A0 */  lui        $t2, 0x87a0
/* 300A0 8002F4A0 3C0B8610 */  lui        $t3, 0x8610
/* 300A4 8002F4A4 256B0000 */  addiu      $t3, $t3, 0
/* 300A8 8002F4A8 254A0000 */  addiu      $t2, $t2, 0
/* 300AC 8002F4AC 01522024 */  and        $a0, $t2, $s2
/* 300B0 8002F4B0 01728024 */  and        $s0, $t3, $s2
/* 300B4 8002F4B4 00108502 */  srl        $s0, $s0, 0x14
/* 300B8 8002F4B8 00042502 */  srl        $a0, $a0, 0x14
/* 300BC 8002F4BC 3C050012 */  lui        $a1, 0x12
/* 300C0 8002F4C0 3C060012 */  lui        $a2, 0x12
/* 300C4 8002F4C4 24C60920 */  addiu      $a2, $a2, 0x920
/* 300C8 8002F4C8 24A5F560 */  addiu      $a1, $a1, -0xaa0
/* 300CC 8002F4CC 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 300D0 8002F4D0 0C001115 */  jal        func_80004454
/* 300D4 8002F4D4 2610FFF0 */   addiu     $s0, $s0, -0x10
/* 300D8 8002F4D8 3C050012 */  lui        $a1, 0x12
/* 300DC 8002F4DC 3C060013 */  lui        $a2, 0x13
/* 300E0 8002F4E0 24C6DF40 */  addiu      $a2, $a2, -0x20c0
/* 300E4 8002F4E4 24A578D0 */  addiu      $a1, $a1, 0x78d0
/* 300E8 8002F4E8 02002025 */  or         $a0, $s0, $zero
/* 300EC 8002F4EC 00003825 */  or         $a3, $zero, $zero
/* 300F0 8002F4F0 0C00A402 */  jal        func_80029008
/* 300F4 8002F4F4 AFA00010 */   sw        $zero, 0x10($sp)
/* 300F8 8002F4F8 1000012E */  b          .L8002F9B4
/* 300FC 8002F4FC 00408025 */   or        $s0, $v0, $zero
/* 30100 8002F500 3C0C87A0 */  lui        $t4, 0x87a0
/* 30104 8002F504 3C0D8620 */  lui        $t5, 0x8620
/* 30108 8002F508 25AD0000 */  addiu      $t5, $t5, 0
/* 3010C 8002F50C 258C0000 */  addiu      $t4, $t4, 0
/* 30110 8002F510 01922024 */  and        $a0, $t4, $s2
/* 30114 8002F514 01B28024 */  and        $s0, $t5, $s2
/* 30118 8002F518 00108502 */  srl        $s0, $s0, 0x14
/* 3011C 8002F51C 00042502 */  srl        $a0, $a0, 0x14
/* 30120 8002F520 3C050012 */  lui        $a1, 0x12
/* 30124 8002F524 3C060012 */  lui        $a2, 0x12
/* 30128 8002F528 24C60920 */  addiu      $a2, $a2, 0x920
/* 3012C 8002F52C 24A5F560 */  addiu      $a1, $a1, -0xaa0
/* 30130 8002F530 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 30134 8002F534 0C001115 */  jal        func_80004454
/* 30138 8002F538 2610FFF0 */   addiu     $s0, $s0, -0x10
/* 3013C 8002F53C 3C050013 */  lui        $a1, 0x13
/* 30140 8002F540 3C060013 */  lui        $a2, 0x13
/* 30144 8002F544 24C629E0 */  addiu      $a2, $a2, 0x29e0
/* 30148 8002F548 24A5DF40 */  addiu      $a1, $a1, -0x20c0
/* 3014C 8002F54C 02002025 */  or         $a0, $s0, $zero
/* 30150 8002F550 00003825 */  or         $a3, $zero, $zero
/* 30154 8002F554 0C00A402 */  jal        func_80029008
/* 30158 8002F558 AFA00010 */   sw        $zero, 0x10($sp)
/* 3015C 8002F55C 10000115 */  b          .L8002F9B4
/* 30160 8002F560 00408025 */   or        $s0, $v0, $zero
/* 30164 8002F564 3C0E87A0 */  lui        $t6, 0x87a0
/* 30168 8002F568 3C0F8630 */  lui        $t7, 0x8630
/* 3016C 8002F56C 25EF0000 */  addiu      $t7, $t7, 0
/* 30170 8002F570 25CE0000 */  addiu      $t6, $t6, 0
/* 30174 8002F574 01D22024 */  and        $a0, $t6, $s2
/* 30178 8002F578 01F28024 */  and        $s0, $t7, $s2
/* 3017C 8002F57C 00108502 */  srl        $s0, $s0, 0x14
/* 30180 8002F580 00042502 */  srl        $a0, $a0, 0x14
/* 30184 8002F584 3C050012 */  lui        $a1, 0x12
/* 30188 8002F588 3C060012 */  lui        $a2, 0x12
/* 3018C 8002F58C 24C60920 */  addiu      $a2, $a2, 0x920
/* 30190 8002F590 24A5F560 */  addiu      $a1, $a1, -0xaa0
/* 30194 8002F594 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 30198 8002F598 0C001115 */  jal        func_80004454
/* 3019C 8002F59C 2610FFF0 */   addiu     $s0, $s0, -0x10
/* 301A0 8002F5A0 3C050013 */  lui        $a1, 0x13
/* 301A4 8002F5A4 3C060013 */  lui        $a2, 0x13
/* 301A8 8002F5A8 24C64680 */  addiu      $a2, $a2, 0x4680
/* 301AC 8002F5AC 24A529E0 */  addiu      $a1, $a1, 0x29e0
/* 301B0 8002F5B0 02002025 */  or         $a0, $s0, $zero
/* 301B4 8002F5B4 00003825 */  or         $a3, $zero, $zero
/* 301B8 8002F5B8 0C00A402 */  jal        func_80029008
/* 301BC 8002F5BC AFA00010 */   sw        $zero, 0x10($sp)
/* 301C0 8002F5C0 100000FC */  b          .L8002F9B4
/* 301C4 8002F5C4 00408025 */   or        $s0, $v0, $zero
/* 301C8 8002F5C8 3C088640 */  lui        $t0, 0x8640
/* 301CC 8002F5CC 25080000 */  addiu      $t0, $t0, 0
/* 301D0 8002F5D0 01128024 */  and        $s0, $t0, $s2
/* 301D4 8002F5D4 02D22024 */  and        $a0, $s6, $s2
/* 301D8 8002F5D8 00042502 */  srl        $a0, $a0, 0x14
/* 301DC 8002F5DC 00108502 */  srl        $s0, $s0, 0x14
/* 301E0 8002F5E0 2610FFF0 */  addiu      $s0, $s0, -0x10
/* 301E4 8002F5E4 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 301E8 8002F5E8 02E02825 */  or         $a1, $s7, $zero
/* 301EC 8002F5EC 0C001115 */  jal        func_80004454
/* 301F0 8002F5F0 03C03025 */   or        $a2, $fp, $zero
/* 301F4 8002F5F4 3C050013 */  lui        $a1, 0x13
/* 301F8 8002F5F8 3C060014 */  lui        $a2, 0x14
/* 301FC 8002F5FC 24C68F20 */  addiu      $a2, $a2, -0x70e0
/* 30200 8002F600 24A54680 */  addiu      $a1, $a1, 0x4680
/* 30204 8002F604 02002025 */  or         $a0, $s0, $zero
/* 30208 8002F608 00003825 */  or         $a3, $zero, $zero
/* 3020C 8002F60C 0C00A402 */  jal        func_80029008
/* 30210 8002F610 AFA00010 */   sw        $zero, 0x10($sp)
/* 30214 8002F614 100000E7 */  b          .L8002F9B4
/* 30218 8002F618 00408025 */   or        $s0, $v0, $zero
/* 3021C 8002F61C 3C188650 */  lui        $t8, 0x8650
/* 30220 8002F620 27180000 */  addiu      $t8, $t8, 0
/* 30224 8002F624 03128024 */  and        $s0, $t8, $s2
/* 30228 8002F628 02D22024 */  and        $a0, $s6, $s2
/* 3022C 8002F62C 00042502 */  srl        $a0, $a0, 0x14
/* 30230 8002F630 00108502 */  srl        $s0, $s0, 0x14
/* 30234 8002F634 2610FFF0 */  addiu      $s0, $s0, -0x10
/* 30238 8002F638 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 3023C 8002F63C 02E02825 */  or         $a1, $s7, $zero
/* 30240 8002F640 0C001115 */  jal        func_80004454
/* 30244 8002F644 03C03025 */   or        $a2, $fp, $zero
/* 30248 8002F648 3C050014 */  lui        $a1, 0x14
/* 3024C 8002F64C 3C060014 */  lui        $a2, 0x14
/* 30250 8002F650 24C62B10 */  addiu      $a2, $a2, 0x2b10
/* 30254 8002F654 24A58F20 */  addiu      $a1, $a1, -0x70e0
/* 30258 8002F658 02002025 */  or         $a0, $s0, $zero
/* 3025C 8002F65C 00003825 */  or         $a3, $zero, $zero
/* 30260 8002F660 0C00A402 */  jal        func_80029008
/* 30264 8002F664 AFA00010 */   sw        $zero, 0x10($sp)
/* 30268 8002F668 100000D2 */  b          .L8002F9B4
/* 3026C 8002F66C 00408025 */   or        $s0, $v0, $zero
/* 30270 8002F670 3C198660 */  lui        $t9, 0x8660
/* 30274 8002F674 27390000 */  addiu      $t9, $t9, 0
/* 30278 8002F678 03328024 */  and        $s0, $t9, $s2
/* 3027C 8002F67C 02D22024 */  and        $a0, $s6, $s2
/* 30280 8002F680 00042502 */  srl        $a0, $a0, 0x14
/* 30284 8002F684 00108502 */  srl        $s0, $s0, 0x14
/* 30288 8002F688 2610FFF0 */  addiu      $s0, $s0, -0x10
/* 3028C 8002F68C 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 30290 8002F690 02E02825 */  or         $a1, $s7, $zero
/* 30294 8002F694 0C001115 */  jal        func_80004454
/* 30298 8002F698 03C03025 */   or        $a2, $fp, $zero
/* 3029C 8002F69C 3C050014 */  lui        $a1, 0x14
/* 302A0 8002F6A0 3C060014 */  lui        $a2, 0x14
/* 302A4 8002F6A4 24C63700 */  addiu      $a2, $a2, 0x3700
/* 302A8 8002F6A8 24A52B10 */  addiu      $a1, $a1, 0x2b10
/* 302AC 8002F6AC 02002025 */  or         $a0, $s0, $zero
/* 302B0 8002F6B0 00003825 */  or         $a3, $zero, $zero
/* 302B4 8002F6B4 0C00A402 */  jal        func_80029008
/* 302B8 8002F6B8 AFA00010 */   sw        $zero, 0x10($sp)
/* 302BC 8002F6BC 100000BD */  b          .L8002F9B4
/* 302C0 8002F6C0 00408025 */   or        $s0, $v0, $zero
/* 302C4 8002F6C4 3C098670 */  lui        $t1, 0x8670
/* 302C8 8002F6C8 25290000 */  addiu      $t1, $t1, 0
/* 302CC 8002F6CC 01328024 */  and        $s0, $t1, $s2
/* 302D0 8002F6D0 02D22024 */  and        $a0, $s6, $s2
/* 302D4 8002F6D4 00042502 */  srl        $a0, $a0, 0x14
/* 302D8 8002F6D8 00108502 */  srl        $s0, $s0, 0x14
/* 302DC 8002F6DC 2610FFF0 */  addiu      $s0, $s0, -0x10
/* 302E0 8002F6E0 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 302E4 8002F6E4 02E02825 */  or         $a1, $s7, $zero
/* 302E8 8002F6E8 0C001115 */  jal        func_80004454
/* 302EC 8002F6EC 03C03025 */   or        $a2, $fp, $zero
/* 302F0 8002F6F0 3C050014 */  lui        $a1, 0x14
/* 302F4 8002F6F4 3C060014 */  lui        $a2, 0x14
/* 302F8 8002F6F8 24C642E0 */  addiu      $a2, $a2, 0x42e0
/* 302FC 8002F6FC 24A53700 */  addiu      $a1, $a1, 0x3700
/* 30300 8002F700 02002025 */  or         $a0, $s0, $zero
/* 30304 8002F704 00003825 */  or         $a3, $zero, $zero
/* 30308 8002F708 0C00A402 */  jal        func_80029008
/* 3030C 8002F70C AFA00010 */   sw        $zero, 0x10($sp)
/* 30310 8002F710 100000A8 */  b          .L8002F9B4
/* 30314 8002F714 00408025 */   or        $s0, $v0, $zero
/* 30318 8002F718 3C0A8680 */  lui        $t2, 0x8680
/* 3031C 8002F71C 254A0000 */  addiu      $t2, $t2, 0
/* 30320 8002F720 01528024 */  and        $s0, $t2, $s2
/* 30324 8002F724 02722024 */  and        $a0, $s3, $s2
/* 30328 8002F728 00042502 */  srl        $a0, $a0, 0x14
/* 3032C 8002F72C 00108502 */  srl        $s0, $s0, 0x14
/* 30330 8002F730 2610FFF0 */  addiu      $s0, $s0, -0x10
/* 30334 8002F734 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 30338 8002F738 02802825 */  or         $a1, $s4, $zero
/* 3033C 8002F73C 0C001115 */  jal        func_80004454
/* 30340 8002F740 02A03025 */   or        $a2, $s5, $zero
/* 30344 8002F744 3C050014 */  lui        $a1, 0x14
/* 30348 8002F748 3C060015 */  lui        $a2, 0x15
/* 3034C 8002F74C 24C6CA50 */  addiu      $a2, $a2, -0x35b0
/* 30350 8002F750 24A542E0 */  addiu      $a1, $a1, 0x42e0
/* 30354 8002F754 02002025 */  or         $a0, $s0, $zero
/* 30358 8002F758 00003825 */  or         $a3, $zero, $zero
/* 3035C 8002F75C 0C00A402 */  jal        func_80029008
/* 30360 8002F760 AFA00010 */   sw        $zero, 0x10($sp)
/* 30364 8002F764 10000093 */  b          .L8002F9B4
/* 30368 8002F768 00408025 */   or        $s0, $v0, $zero
/* 3036C 8002F76C 3C0B8690 */  lui        $t3, 0x8690
/* 30370 8002F770 256B0000 */  addiu      $t3, $t3, 0
/* 30374 8002F774 01728024 */  and        $s0, $t3, $s2
/* 30378 8002F778 02722024 */  and        $a0, $s3, $s2
/* 3037C 8002F77C 00042502 */  srl        $a0, $a0, 0x14
/* 30380 8002F780 00108502 */  srl        $s0, $s0, 0x14
/* 30384 8002F784 2610FFF0 */  addiu      $s0, $s0, -0x10
/* 30388 8002F788 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 3038C 8002F78C 02802825 */  or         $a1, $s4, $zero
/* 30390 8002F790 0C001115 */  jal        func_80004454
/* 30394 8002F794 02A03025 */   or        $a2, $s5, $zero
/* 30398 8002F798 3C050015 */  lui        $a1, 0x15
/* 3039C 8002F79C 3C060016 */  lui        $a2, 0x16
/* 303A0 8002F7A0 24C689E0 */  addiu      $a2, $a2, -0x7620
/* 303A4 8002F7A4 24A5CA50 */  addiu      $a1, $a1, -0x35b0
/* 303A8 8002F7A8 02002025 */  or         $a0, $s0, $zero
/* 303AC 8002F7AC 00003825 */  or         $a3, $zero, $zero
/* 303B0 8002F7B0 0C00A402 */  jal        func_80029008
/* 303B4 8002F7B4 AFA00010 */   sw        $zero, 0x10($sp)
/* 303B8 8002F7B8 1000007E */  b          .L8002F9B4
/* 303BC 8002F7BC 00408025 */   or        $s0, $v0, $zero
/* 303C0 8002F7C0 3C0C86A0 */  lui        $t4, 0x86a0
/* 303C4 8002F7C4 258C0000 */  addiu      $t4, $t4, 0
/* 303C8 8002F7C8 01928024 */  and        $s0, $t4, $s2
/* 303CC 8002F7CC 02D22024 */  and        $a0, $s6, $s2
/* 303D0 8002F7D0 00042502 */  srl        $a0, $a0, 0x14
/* 303D4 8002F7D4 00108502 */  srl        $s0, $s0, 0x14
/* 303D8 8002F7D8 2610FFF0 */  addiu      $s0, $s0, -0x10
/* 303DC 8002F7DC 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 303E0 8002F7E0 02E02825 */  or         $a1, $s7, $zero
/* 303E4 8002F7E4 0C001115 */  jal        func_80004454
/* 303E8 8002F7E8 03C03025 */   or        $a2, $fp, $zero
/* 303EC 8002F7EC 3C050016 */  lui        $a1, 0x16
/* 303F0 8002F7F0 3C060016 */  lui        $a2, 0x16
/* 303F4 8002F7F4 24C6F990 */  addiu      $a2, $a2, -0x670
/* 303F8 8002F7F8 24A589E0 */  addiu      $a1, $a1, -0x7620
/* 303FC 8002F7FC 02002025 */  or         $a0, $s0, $zero
/* 30400 8002F800 00003825 */  or         $a3, $zero, $zero
/* 30404 8002F804 0C00A402 */  jal        func_80029008
/* 30408 8002F808 AFA00010 */   sw        $zero, 0x10($sp)
/* 3040C 8002F80C 10000069 */  b          .L8002F9B4
/* 30410 8002F810 00408025 */   or        $s0, $v0, $zero
/* 30414 8002F814 3C0D86B0 */  lui        $t5, 0x86b0
/* 30418 8002F818 25AD0000 */  addiu      $t5, $t5, 0
/* 3041C 8002F81C 01B28024 */  and        $s0, $t5, $s2
/* 30420 8002F820 02722024 */  and        $a0, $s3, $s2
/* 30424 8002F824 00042502 */  srl        $a0, $a0, 0x14
/* 30428 8002F828 00108502 */  srl        $s0, $s0, 0x14
/* 3042C 8002F82C 2610FFF0 */  addiu      $s0, $s0, -0x10
/* 30430 8002F830 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 30434 8002F834 02802825 */  or         $a1, $s4, $zero
/* 30438 8002F838 0C001115 */  jal        func_80004454
/* 3043C 8002F83C 02A03025 */   or        $a2, $s5, $zero
/* 30440 8002F840 3C050016 */  lui        $a1, 0x16
/* 30444 8002F844 3C060017 */  lui        $a2, 0x17
/* 30448 8002F848 24C608B0 */  addiu      $a2, $a2, 0x8b0
/* 3044C 8002F84C 24A5F990 */  addiu      $a1, $a1, -0x670
/* 30450 8002F850 02002025 */  or         $a0, $s0, $zero
/* 30454 8002F854 00003825 */  or         $a3, $zero, $zero
/* 30458 8002F858 0C00A402 */  jal        func_80029008
/* 3045C 8002F85C AFA00010 */   sw        $zero, 0x10($sp)
/* 30460 8002F860 10000054 */  b          .L8002F9B4
/* 30464 8002F864 00408025 */   or        $s0, $v0, $zero
/* 30468 8002F868 3C0E86C0 */  lui        $t6, 0x86c0
/* 3046C 8002F86C 25CE0000 */  addiu      $t6, $t6, 0
/* 30470 8002F870 01D28024 */  and        $s0, $t6, $s2
/* 30474 8002F874 02722024 */  and        $a0, $s3, $s2
/* 30478 8002F878 00042502 */  srl        $a0, $a0, 0x14
/* 3047C 8002F87C 00108502 */  srl        $s0, $s0, 0x14
/* 30480 8002F880 2610FFF0 */  addiu      $s0, $s0, -0x10
/* 30484 8002F884 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 30488 8002F888 02802825 */  or         $a1, $s4, $zero
/* 3048C 8002F88C 0C001115 */  jal        func_80004454
/* 30490 8002F890 02A03025 */   or        $a2, $s5, $zero
/* 30494 8002F894 3C050017 */  lui        $a1, 0x17
/* 30498 8002F898 3C060018 */  lui        $a2, 0x18
/* 3049C 8002F89C 24C6FB40 */  addiu      $a2, $a2, -0x4c0
/* 304A0 8002F8A0 24A508B0 */  addiu      $a1, $a1, 0x8b0
/* 304A4 8002F8A4 02002025 */  or         $a0, $s0, $zero
/* 304A8 8002F8A8 00003825 */  or         $a3, $zero, $zero
/* 304AC 8002F8AC 0C00A402 */  jal        func_80029008
/* 304B0 8002F8B0 AFA00010 */   sw        $zero, 0x10($sp)
/* 304B4 8002F8B4 1000003F */  b          .L8002F9B4
/* 304B8 8002F8B8 00408025 */   or        $s0, $v0, $zero
/* 304BC 8002F8BC 3C0F86D0 */  lui        $t7, 0x86d0
/* 304C0 8002F8C0 25EF0000 */  addiu      $t7, $t7, 0
/* 304C4 8002F8C4 01F28024 */  and        $s0, $t7, $s2
/* 304C8 8002F8C8 02722024 */  and        $a0, $s3, $s2
/* 304CC 8002F8CC 00042502 */  srl        $a0, $a0, 0x14
/* 304D0 8002F8D0 00108502 */  srl        $s0, $s0, 0x14
/* 304D4 8002F8D4 2610FFF0 */  addiu      $s0, $s0, -0x10
/* 304D8 8002F8D8 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 304DC 8002F8DC 02802825 */  or         $a1, $s4, $zero
/* 304E0 8002F8E0 0C001115 */  jal        func_80004454
/* 304E4 8002F8E4 02A03025 */   or        $a2, $s5, $zero
/* 304E8 8002F8E8 3C050018 */  lui        $a1, 0x18
/* 304EC 8002F8EC 3C060018 */  lui        $a2, 0x18
/* 304F0 8002F8F0 24C602B0 */  addiu      $a2, $a2, 0x2b0
/* 304F4 8002F8F4 24A5FB40 */  addiu      $a1, $a1, -0x4c0
/* 304F8 8002F8F8 02002025 */  or         $a0, $s0, $zero
/* 304FC 8002F8FC 00003825 */  or         $a3, $zero, $zero
/* 30500 8002F900 0C00A402 */  jal        func_80029008
/* 30504 8002F904 AFA00010 */   sw        $zero, 0x10($sp)
/* 30508 8002F908 1000002A */  b          .L8002F9B4
/* 3050C 8002F90C 00408025 */   or        $s0, $v0, $zero
/* 30510 8002F910 3C0886E0 */  lui        $t0, 0x86e0
/* 30514 8002F914 25080000 */  addiu      $t0, $t0, 0
/* 30518 8002F918 01128024 */  and        $s0, $t0, $s2
/* 3051C 8002F91C 02722024 */  and        $a0, $s3, $s2
/* 30520 8002F920 00042502 */  srl        $a0, $a0, 0x14
/* 30524 8002F924 00108502 */  srl        $s0, $s0, 0x14
/* 30528 8002F928 2610FFF0 */  addiu      $s0, $s0, -0x10
/* 3052C 8002F92C 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 30530 8002F930 02802825 */  or         $a1, $s4, $zero
/* 30534 8002F934 0C001115 */  jal        func_80004454
/* 30538 8002F938 02A03025 */   or        $a2, $s5, $zero
/* 3053C 8002F93C 3C050018 */  lui        $a1, 0x18
/* 30540 8002F940 3C060018 */  lui        $a2, 0x18
/* 30544 8002F944 24C65A10 */  addiu      $a2, $a2, 0x5a10
/* 30548 8002F948 24A502B0 */  addiu      $a1, $a1, 0x2b0
/* 3054C 8002F94C 02002025 */  or         $a0, $s0, $zero
/* 30550 8002F950 00003825 */  or         $a3, $zero, $zero
/* 30554 8002F954 0C00A402 */  jal        func_80029008
/* 30558 8002F958 AFA00010 */   sw        $zero, 0x10($sp)
/* 3055C 8002F95C 10000015 */  b          .L8002F9B4
/* 30560 8002F960 00408025 */   or        $s0, $v0, $zero
/* 30564 8002F964 3C1886F0 */  lui        $t8, 0x86f0
/* 30568 8002F968 27180000 */  addiu      $t8, $t8, 0
/* 3056C 8002F96C 03128024 */  and        $s0, $t8, $s2
/* 30570 8002F970 02722024 */  and        $a0, $s3, $s2
/* 30574 8002F974 00042502 */  srl        $a0, $a0, 0x14
/* 30578 8002F978 00108502 */  srl        $s0, $s0, 0x14
/* 3057C 8002F97C 2610FFF0 */  addiu      $s0, $s0, -0x10
/* 30580 8002F980 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 30584 8002F984 02802825 */  or         $a1, $s4, $zero
/* 30588 8002F988 0C001115 */  jal        func_80004454
/* 3058C 8002F98C 02A03025 */   or        $a2, $s5, $zero
/* 30590 8002F990 3C050018 */  lui        $a1, 0x18
/* 30594 8002F994 3C060019 */  lui        $a2, 0x19
/* 30598 8002F998 24C61660 */  addiu      $a2, $a2, 0x1660
/* 3059C 8002F99C 24A55A10 */  addiu      $a1, $a1, 0x5a10
/* 305A0 8002F9A0 02002025 */  or         $a0, $s0, $zero
/* 305A4 8002F9A4 00003825 */  or         $a3, $zero, $zero
/* 305A8 8002F9A8 0C00A402 */  jal        func_80029008
/* 305AC 8002F9AC AFA00010 */   sw        $zero, 0x10($sp)
/* 305B0 8002F9B0 00408025 */  or         $s0, $v0, $zero
.L8002F9B4:
/* 305B4 8002F9B4 3C046D69 */  lui        $a0, 0x6d69
/* 305B8 8002F9B8 34846E69 */  ori        $a0, $a0, 0x6e69
/* 305BC 8002F9BC 0C000A0E */  jal        func_80002838
/* 305C0 8002F9C0 02008825 */   or        $s1, $s0, $zero
/* 305C4 8002F9C4 2E210005 */  sltiu      $at, $s1, 5
/* 305C8 8002F9C8 10200009 */  beqz       $at, .L8002F9F0
/* 305CC 8002F9CC 0011C880 */   sll       $t9, $s1, 2
/* 305D0 8002F9D0 3C018008 */  lui        $at, 0x8008
/* 305D4 8002F9D4 00390821 */  addu       $at, $at, $t9
/* 305D8 8002F9D8 8C39C4D0 */  lw         $t9, -0x3b30($at)
/* 305DC 8002F9DC 03200008 */  jr         $t9
/* 305E0 8002F9E0 00000000 */   nop       
/* 305E4 8002F9E4 10000002 */  b          .L8002F9F0
/* 305E8 8002F9E8 AFA00058 */   sw        $zero, 0x58($sp)
.L8002F9EC:
/* 305EC 8002F9EC AFA00058 */  sw         $zero, 0x58($sp)
.L8002F9F0:
/* 305F0 8002F9F0 8FA90058 */  lw         $t1, 0x58($sp)
/* 305F4 8002F9F4 1520FE55 */  bnez       $t1, .L8002F34C
/* 305F8 8002F9F8 00000000 */   nop       
/* 305FC 8002F9FC 3C044B44 */  lui        $a0, 0x4b44
/* 30600 8002FA00 0C000A0E */  jal        func_80002838
/* 30604 8002FA04 3484434D */   ori       $a0, $a0, 0x434d
/* 30608 8002FA08 8FBF0044 */  lw         $ra, 0x44($sp)
/* 3060C 8002FA0C 8FB00020 */  lw         $s0, 0x20($sp)
/* 30610 8002FA10 8FB10024 */  lw         $s1, 0x24($sp)
/* 30614 8002FA14 8FB20028 */  lw         $s2, 0x28($sp)
/* 30618 8002FA18 8FB3002C */  lw         $s3, 0x2c($sp)
/* 3061C 8002FA1C 8FB40030 */  lw         $s4, 0x30($sp)
/* 30620 8002FA20 8FB50034 */  lw         $s5, 0x34($sp)
/* 30624 8002FA24 8FB60038 */  lw         $s6, 0x38($sp)
/* 30628 8002FA28 8FB7003C */  lw         $s7, 0x3c($sp)
/* 3062C 8002FA2C 8FBE0040 */  lw         $fp, 0x40($sp)
/* 30630 8002FA30 03E00008 */  jr         $ra
/* 30634 8002FA34 27BD0068 */   addiu     $sp, $sp, 0x68
/* 30638 8002FA38 00000000 */  nop        
/* 3063C 8002FA3C 00000000 */  nop        
