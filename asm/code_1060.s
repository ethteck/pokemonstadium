.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80000460
/* 1060 80000460 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1064 80000464 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1068 80000468 AFA40020 */  sw        $a0, 0x20($sp)
/* 106C 8000046C 0C0193F0 */  jal       func_80064FC0
/* 1070 80000470 240400FE */  addiu     $a0, $zero, 0xfe
/* 1074 80000474 00002025 */  or        $a0, $zero, $zero
/* 1078 80000478 0C00051D */  jal       func_80001474
/* 107C 8000047C 24050001 */  addiu     $a1, $zero, 1
/* 1080 80000480 0C016A78 */  jal       func_8005A9E0
/* 1084 80000484 24040001 */  addiu     $a0, $zero, 1
/* 1088 80000488 0C0023DF */  jal       func_80008F7C
/* 108C 8000048C 00000000 */  nop       
/* 1090 80000490 0C000355 */  jal       func_80000D54
/* 1094 80000494 00000000 */  nop       
/* 1098 80000498 0C0014AD */  jal       func_800052B4
/* 109C 8000049C 00000000 */  nop       
/* 10A0 800004A0 0C003559 */  jal       func_8000D564
/* 10A4 800004A4 00000000 */  nop       
/* 10A8 800004A8 0C000672 */  jal       func_800019C8
/* 10AC 800004AC 00000000 */  nop       
/* 10B0 800004B0 0C0015F0 */  jal       func_800057C0
/* 10B4 800004B4 00000000 */  nop       
/* 10B8 800004B8 3C0E8008 */  lui       $t6, 0x8008
/* 10BC 800004BC 25CE18E0 */  addiu     $t6, $t6, 0x18e0
/* 10C0 800004C0 3C048008 */  lui       $a0, 0x8008
/* 10C4 800004C4 3C068003 */  lui       $a2, 0x8003
/* 10C8 800004C8 240F0014 */  addiu     $t7, $zero, 0x14
/* 10CC 800004CC AFAF0014 */  sw        $t7, 0x14($sp)
/* 10D0 800004D0 24C6B330 */  addiu     $a2, $a2, -0x4cd0
/* 10D4 800004D4 2484F730 */  addiu     $a0, $a0, -0x8d0
/* 10D8 800004D8 AFAE0010 */  sw        $t6, 0x10($sp)
/* 10DC 800004DC 24050006 */  addiu     $a1, $zero, 6
/* 10E0 800004E0 0C016330 */  jal       func_80058CC0
/* 10E4 800004E4 00003825 */  or        $a3, $zero, $zero
/* 10E8 800004E8 3C048008 */  lui       $a0, 0x8008
/* 10EC 800004EC 0C0194DC */  jal       func_80065370
/* 10F0 800004F0 2484F730 */  addiu     $a0, $a0, -0x8d0
/* 10F4 800004F4 00002025 */  or        $a0, $zero, $zero
/* 10F8 800004F8 0C0179E4 */  jal       func_8005E790
/* 10FC 800004FC 00002825 */  or        $a1, $zero, $zero
.L80000500:
/* 1100 80000500 1000FFFF */  b         .L80000500
/* 1104 80000504 00000000 */  nop       
/* 1108 80000508 00000000 */  nop       
/* 110C 8000050C 00000000 */  nop       
/* 1110 80000510 00000000 */  nop       
/* 1114 80000514 00000000 */  nop       
/* 1118 80000518 00000000 */  nop       
/* 111C 8000051C 00000000 */  nop       
/* 1120 80000520 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1124 80000524 27BD0020 */  addiu     $sp, $sp, 0x20
/* 1128 80000528 03E00008 */  jr        $ra
/* 112C 8000052C 00000000 */  nop       

glabel func_80000530
/* 1130 80000530 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1134 80000534 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1138 80000538 0C016468 */  jal       func_800591A0
/* 113C 8000053C 00000000 */  nop       
/* 1140 80000540 0C018D44 */  jal       func_80063510
/* 1144 80000544 00000000 */  nop       
/* 1148 80000548 0C002DF4 */  jal       func_8000B7D0
/* 114C 8000054C 00002025 */  or        $a0, $zero, $zero
/* 1150 80000550 0C000BD6 */  jal       func_80002F58
/* 1154 80000554 00000000 */  nop       
/* 1158 80000558 3C0E8008 */  lui       $t6, 0x8008
/* 115C 8000055C 25CEF730 */  addiu     $t6, $t6, -0x8d0
/* 1160 80000560 3C048008 */  lui       $a0, 0x8008
/* 1164 80000564 3C068000 */  lui       $a2, 0x8000
/* 1168 80000568 240F0064 */  addiu     $t7, $zero, 0x64
/* 116C 8000056C AFAF0014 */  sw        $t7, 0x14($sp)
/* 1170 80000570 24C60460 */  addiu     $a2, $a2, 0x460
/* 1174 80000574 2484F180 */  addiu     $a0, $a0, -0xe80
/* 1178 80000578 AFAE0010 */  sw        $t6, 0x10($sp)
/* 117C 8000057C 24050001 */  addiu     $a1, $zero, 1
/* 1180 80000580 0C016330 */  jal       func_80058CC0
/* 1184 80000584 00003825 */  or        $a3, $zero, $zero
/* 1188 80000588 3C048008 */  lui       $a0, 0x8008
/* 118C 8000058C 0C0194DC */  jal       func_80065370
/* 1190 80000590 2484F180 */  addiu     $a0, $a0, -0xe80
/* 1194 80000594 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1198 80000598 27BD0020 */  addiu     $sp, $sp, 0x20
/* 119C 8000059C 03E00008 */  jr        $ra
/* 11A0 800005A0 00000000 */  nop       
/* 11A4 800005A4 00000000 */  nop       
/* 11A8 800005A8 00000000 */  nop       
/* 11AC 800005AC 00000000 */  nop       
/* 11B0 800005B0 00000000 */  nop       
/* 11B4 800005B4 00000000 */  nop       
/* 11B8 800005B8 00000000 */  nop       
/* 11BC 800005BC 00000000 */  nop       
