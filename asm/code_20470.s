.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8001F870
/* 20470 8001F870 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 20474 8001F874 28C10009 */  slti      $at, $a2, 9
/* 20478 8001F878 AFBF002C */  sw        $ra, 0x2c($sp)
/* 2047C 8001F87C AFA40038 */  sw        $a0, 0x38($sp)
/* 20480 8001F880 AFA5003C */  sw        $a1, 0x3c($sp)
/* 20484 8001F884 AFA60040 */  sw        $a2, 0x40($sp)
/* 20488 8001F888 10200004 */  beqz      $at, .L8001F89C
/* 2048C 8001F88C AFA70044 */  sw        $a3, 0x44($sp)
/* 20490 8001F890 240F0400 */  addiu     $t7, $zero, 0x400
/* 20494 8001F894 10000002 */  b         .L8001F8A0
/* 20498 8001F898 AFAF0034 */  sw        $t7, 0x34($sp)
.L8001F89C:
/* 2049C 8001F89C AFA00034 */  sw        $zero, 0x34($sp)
.L8001F8A0:
/* 204A0 8001F8A0 8FB80044 */  lw        $t8, 0x44($sp)
/* 204A4 8001F8A4 3C03800A */  lui       $v1, 0x800a
/* 204A8 8001F8A8 24637420 */  addiu     $v1, $v1, 0x7420
/* 204AC 8001F8AC 2B010009 */  slti      $at, $t8, 9
/* 204B0 8001F8B0 10200003 */  beqz      $at, .L8001F8C0
/* 204B4 8001F8B4 24190400 */  addiu     $t9, $zero, 0x400
/* 204B8 8001F8B8 10000002 */  b         .L8001F8C4
/* 204BC 8001F8BC AFB90030 */  sw        $t9, 0x30($sp)
.L8001F8C0:
/* 204C0 8001F8C0 AFA00030 */  sw        $zero, 0x30($sp)
.L8001F8C4:
/* 204C4 8001F8C4 8C620000 */  lw        $v0, ($v1)
/* 204C8 8001F8C8 3C0FFD10 */  lui       $t7, 0xfd10
/* 204CC 8001F8CC 244E0008 */  addiu     $t6, $v0, 8
/* 204D0 8001F8D0 AC6E0000 */  sw        $t6, ($v1)
/* 204D4 8001F8D4 AC4F0000 */  sw        $t7, ($v0)
/* 204D8 8001F8D8 8FB80048 */  lw        $t8, 0x48($sp)
/* 204DC 8001F8DC 3C0F0708 */  lui       $t7, 0x708
/* 204E0 8001F8E0 35EF0200 */  ori       $t7, $t7, 0x200
/* 204E4 8001F8E4 AC580004 */  sw        $t8, 4($v0)
/* 204E8 8001F8E8 8C620000 */  lw        $v0, ($v1)
/* 204EC 8001F8EC 3C0EF510 */  lui       $t6, 0xf510
/* 204F0 8001F8F0 24590008 */  addiu     $t9, $v0, 8
/* 204F4 8001F8F4 AC790000 */  sw        $t9, ($v1)
/* 204F8 8001F8F8 AC4F0004 */  sw        $t7, 4($v0)
/* 204FC 8001F8FC AC4E0000 */  sw        $t6, ($v0)
/* 20500 8001F900 8C620000 */  lw        $v0, ($v1)
/* 20504 8001F904 3C19E600 */  lui       $t9, 0xe600
/* 20508 8001F908 3C0FF300 */  lui       $t7, 0xf300
/* 2050C 8001F90C 24580008 */  addiu     $t8, $v0, 8
/* 20510 8001F910 AC780000 */  sw        $t8, ($v1)
/* 20514 8001F914 AC400004 */  sw        $zero, 4($v0)
/* 20518 8001F918 AC590000 */  sw        $t9, ($v0)
/* 2051C 8001F91C 8C620000 */  lw        $v0, ($v1)
/* 20520 8001F920 3C180703 */  lui       $t8, 0x703
/* 20524 8001F924 3718F400 */  ori       $t8, $t8, 0xf400
/* 20528 8001F928 244E0008 */  addiu     $t6, $v0, 8
/* 2052C 8001F92C AC6E0000 */  sw        $t6, ($v1)
/* 20530 8001F930 AC580004 */  sw        $t8, 4($v0)
/* 20534 8001F934 AC4F0000 */  sw        $t7, ($v0)
/* 20538 8001F938 8C620000 */  lw        $v0, ($v1)
/* 2053C 8001F93C 3C0EE700 */  lui       $t6, 0xe700
/* 20540 8001F940 3C18F510 */  lui       $t8, 0xf510
/* 20544 8001F944 24590008 */  addiu     $t9, $v0, 8
/* 20548 8001F948 AC790000 */  sw        $t9, ($v1)
/* 2054C 8001F94C AC400004 */  sw        $zero, 4($v0)
/* 20550 8001F950 AC4E0000 */  sw        $t6, ($v0)
/* 20554 8001F954 8C620000 */  lw        $v0, ($v1)
/* 20558 8001F958 3C190008 */  lui       $t9, 8
/* 2055C 8001F95C 37390200 */  ori       $t9, $t9, 0x200
/* 20560 8001F960 244F0008 */  addiu     $t7, $v0, 8
/* 20564 8001F964 AC6F0000 */  sw        $t7, ($v1)
/* 20568 8001F968 37180400 */  ori       $t8, $t8, 0x400
/* 2056C 8001F96C AC580000 */  sw        $t8, ($v0)
/* 20570 8001F970 AC590004 */  sw        $t9, 4($v0)
/* 20574 8001F974 8C620000 */  lw        $v0, ($v1)
/* 20578 8001F978 3C180001 */  lui       $t8, 1
/* 2057C 8001F97C 3718C01C */  ori       $t8, $t8, 0xc01c
/* 20580 8001F980 244E0008 */  addiu     $t6, $v0, 8
/* 20584 8001F984 AC6E0000 */  sw        $t6, ($v1)
/* 20588 8001F988 3C0FF200 */  lui       $t7, 0xf200
/* 2058C 8001F98C AC4F0000 */  sw        $t7, ($v0)
/* 20590 8001F990 AC580004 */  sw        $t8, 4($v0)
/* 20594 8001F994 8FAE0030 */  lw        $t6, 0x30($sp)
/* 20598 8001F998 8FB90034 */  lw        $t9, 0x34($sp)
/* 2059C 8001F99C AFA00020 */  sw        $zero, 0x20($sp)
/* 205A0 8001F9A0 AFA00014 */  sw        $zero, 0x14($sp)
/* 205A4 8001F9A4 AFA00010 */  sw        $zero, 0x10($sp)
/* 205A8 8001F9A8 87A70046 */  lh        $a3, 0x46($sp)
/* 205AC 8001F9AC 87A60042 */  lh        $a2, 0x42($sp)
/* 205B0 8001F9B0 87A5003E */  lh        $a1, 0x3e($sp)
/* 205B4 8001F9B4 87A4003A */  lh        $a0, 0x3a($sp)
/* 205B8 8001F9B8 AFAE001C */  sw        $t6, 0x1c($sp)
/* 205BC 8001F9BC 0C0070CC */  jal       func_8001C330
/* 205C0 8001F9C0 AFB90018 */  sw        $t9, 0x18($sp)
/* 205C4 8001F9C4 8FBF002C */  lw        $ra, 0x2c($sp)
/* 205C8 8001F9C8 27BD0038 */  addiu     $sp, $sp, 0x38
/* 205CC 8001F9CC 03E00008 */  jr        $ra
/* 205D0 8001F9D0 00000000 */  nop       

glabel func_8001F9D4
/* 205D4 8001F9D4 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 205D8 8001F9D8 3C0E0100 */  lui       $t6, 0x100
/* 205DC 8001F9DC AFBF0024 */  sw        $ra, 0x24($sp)
/* 205E0 8001F9E0 AFB10020 */  sw        $s1, 0x20($sp)
/* 205E4 8001F9E4 AFB0001C */  sw        $s0, 0x1c($sp)
/* 205E8 8001F9E8 AFA60040 */  sw        $a2, 0x40($sp)
/* 205EC 8001F9EC AFA70044 */  sw        $a3, 0x44($sp)
/* 205F0 8001F9F0 25CE27D0 */  addiu     $t6, $t6, 0x27d0
/* 205F4 8001F9F4 00808025 */  or        $s0, $a0, $zero
/* 205F8 8001F9F8 00A08825 */  or        $s1, $a1, $zero
/* 205FC 8001F9FC AFAE0010 */  sw        $t6, 0x10($sp)
/* 20600 8001FA00 24070008 */  addiu     $a3, $zero, 8
/* 20604 8001FA04 0C007E1C */  jal       func_8001F870
/* 20608 8001FA08 24060008 */  addiu     $a2, $zero, 8
/* 2060C 8001FA0C 8FAF0044 */  lw        $t7, 0x44($sp)
/* 20610 8001FA10 3C180100 */  lui       $t8, 0x100
/* 20614 8001FA14 27182850 */  addiu     $t8, $t8, 0x2850
/* 20618 8001FA18 022F2821 */  addu      $a1, $s1, $t7
/* 2061C 8001FA1C 24A5FFF8 */  addiu     $a1, $a1, -8
/* 20620 8001FA20 AFA50034 */  sw        $a1, 0x34($sp)
/* 20624 8001FA24 AFB80010 */  sw        $t8, 0x10($sp)
/* 20628 8001FA28 02002025 */  or        $a0, $s0, $zero
/* 2062C 8001FA2C 24060008 */  addiu     $a2, $zero, 8
/* 20630 8001FA30 0C007E1C */  jal       func_8001F870
/* 20634 8001FA34 24070008 */  addiu     $a3, $zero, 8
/* 20638 8001FA38 8FB90040 */  lw        $t9, 0x40($sp)
/* 2063C 8001FA3C 3C080100 */  lui       $t0, 0x100
/* 20640 8001FA40 250828D0 */  addiu     $t0, $t0, 0x28d0
/* 20644 8001FA44 02192021 */  addu      $a0, $s0, $t9
/* 20648 8001FA48 2484FFF8 */  addiu     $a0, $a0, -8
/* 2064C 8001FA4C AFA40030 */  sw        $a0, 0x30($sp)
/* 20650 8001FA50 AFA80010 */  sw        $t0, 0x10($sp)
/* 20654 8001FA54 8FA50034 */  lw        $a1, 0x34($sp)
/* 20658 8001FA58 24060008 */  addiu     $a2, $zero, 8
/* 2065C 8001FA5C 0C007E1C */  jal       func_8001F870
/* 20660 8001FA60 24070008 */  addiu     $a3, $zero, 8
/* 20664 8001FA64 3C090100 */  lui       $t1, 0x100
/* 20668 8001FA68 25292950 */  addiu     $t1, $t1, 0x2950
/* 2066C 8001FA6C AFA90010 */  sw        $t1, 0x10($sp)
/* 20670 8001FA70 8FA40030 */  lw        $a0, 0x30($sp)
/* 20674 8001FA74 02202825 */  or        $a1, $s1, $zero
/* 20678 8001FA78 24060008 */  addiu     $a2, $zero, 8
/* 2067C 8001FA7C 0C007E1C */  jal       func_8001F870
/* 20680 8001FA80 24070008 */  addiu     $a3, $zero, 8
/* 20684 8001FA84 8FAA0040 */  lw        $t2, 0x40($sp)
/* 20688 8001FA88 26040008 */  addiu     $a0, $s0, 8
/* 2068C 8001FA8C 02202825 */  or        $a1, $s1, $zero
/* 20690 8001FA90 29410011 */  slti      $at, $t2, 0x11
/* 20694 8001FA94 14200010 */  bnez      $at, .L8001FAD8
/* 20698 8001FA98 2546FFF0 */  addiu     $a2, $t2, -0x10
/* 2069C 8001FA9C 3C0B0100 */  lui       $t3, 0x100
/* 206A0 8001FAA0 256B25D0 */  addiu     $t3, $t3, 0x25d0
/* 206A4 8001FAA4 AFAB0010 */  sw        $t3, 0x10($sp)
/* 206A8 8001FAA8 24070008 */  addiu     $a3, $zero, 8
/* 206AC 8001FAAC AFA4002C */  sw        $a0, 0x2c($sp)
/* 206B0 8001FAB0 0C007E1C */  jal       func_8001F870
/* 206B4 8001FAB4 AFA60028 */  sw        $a2, 0x28($sp)
/* 206B8 8001FAB8 3C0C0100 */  lui       $t4, 0x100
/* 206BC 8001FABC 258C2650 */  addiu     $t4, $t4, 0x2650
/* 206C0 8001FAC0 8FA4002C */  lw        $a0, 0x2c($sp)
/* 206C4 8001FAC4 8FA60028 */  lw        $a2, 0x28($sp)
/* 206C8 8001FAC8 AFAC0010 */  sw        $t4, 0x10($sp)
/* 206CC 8001FACC 8FA50034 */  lw        $a1, 0x34($sp)
/* 206D0 8001FAD0 0C007E1C */  jal       func_8001F870
/* 206D4 8001FAD4 24070008 */  addiu     $a3, $zero, 8
.L8001FAD8:
/* 206D8 8001FAD8 8FA20044 */  lw        $v0, 0x44($sp)
/* 206DC 8001FADC 02002025 */  or        $a0, $s0, $zero
/* 206E0 8001FAE0 26250008 */  addiu     $a1, $s1, 8
/* 206E4 8001FAE4 28410011 */  slti      $at, $v0, 0x11
/* 206E8 8001FAE8 14200010 */  bnez      $at, .L8001FB2C
/* 206EC 8001FAEC 24060008 */  addiu     $a2, $zero, 8
/* 206F0 8001FAF0 3C0D0100 */  lui       $t5, 0x100
/* 206F4 8001FAF4 25AD26D0 */  addiu     $t5, $t5, 0x26d0
/* 206F8 8001FAF8 2447FFF0 */  addiu     $a3, $v0, -0x10
/* 206FC 8001FAFC AFA7002C */  sw        $a3, 0x2c($sp)
/* 20700 8001FB00 AFAD0010 */  sw        $t5, 0x10($sp)
/* 20704 8001FB04 0C007E1C */  jal       func_8001F870
/* 20708 8001FB08 AFA50034 */  sw        $a1, 0x34($sp)
/* 2070C 8001FB0C 3C0E0100 */  lui       $t6, 0x100
/* 20710 8001FB10 25CE2750 */  addiu     $t6, $t6, 0x2750
/* 20714 8001FB14 8FA50034 */  lw        $a1, 0x34($sp)
/* 20718 8001FB18 8FA7002C */  lw        $a3, 0x2c($sp)
/* 2071C 8001FB1C AFAE0010 */  sw        $t6, 0x10($sp)
/* 20720 8001FB20 8FA40030 */  lw        $a0, 0x30($sp)
/* 20724 8001FB24 0C007E1C */  jal       func_8001F870
/* 20728 8001FB28 24060008 */  addiu     $a2, $zero, 8
.L8001FB2C:
/* 2072C 8001FB2C 8FBF0024 */  lw        $ra, 0x24($sp)
/* 20730 8001FB30 8FB0001C */  lw        $s0, 0x1c($sp)
/* 20734 8001FB34 8FB10020 */  lw        $s1, 0x20($sp)
/* 20738 8001FB38 03E00008 */  jr        $ra
/* 2073C 8001FB3C 27BD0038 */  addiu     $sp, $sp, 0x38

glabel func_8001FB40
/* 20740 8001FB40 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 20744 8001FB44 3C0E0100 */  lui       $t6, 0x100
/* 20748 8001FB48 AFBF0024 */  sw        $ra, 0x24($sp)
/* 2074C 8001FB4C AFB10020 */  sw        $s1, 0x20($sp)
/* 20750 8001FB50 AFB0001C */  sw        $s0, 0x1c($sp)
/* 20754 8001FB54 AFA60040 */  sw        $a2, 0x40($sp)
/* 20758 8001FB58 AFA70044 */  sw        $a3, 0x44($sp)
/* 2075C 8001FB5C 25CE2BD0 */  addiu     $t6, $t6, 0x2bd0
/* 20760 8001FB60 00808025 */  or        $s0, $a0, $zero
/* 20764 8001FB64 00A08825 */  or        $s1, $a1, $zero
/* 20768 8001FB68 AFAE0010 */  sw        $t6, 0x10($sp)
/* 2076C 8001FB6C 24070008 */  addiu     $a3, $zero, 8
/* 20770 8001FB70 0C007E1C */  jal       func_8001F870
/* 20774 8001FB74 24060008 */  addiu     $a2, $zero, 8
/* 20778 8001FB78 8FAF0044 */  lw        $t7, 0x44($sp)
/* 2077C 8001FB7C 3C180100 */  lui       $t8, 0x100
/* 20780 8001FB80 27182C50 */  addiu     $t8, $t8, 0x2c50
/* 20784 8001FB84 022F2821 */  addu      $a1, $s1, $t7
/* 20788 8001FB88 24A5FFF8 */  addiu     $a1, $a1, -8
/* 2078C 8001FB8C AFA50034 */  sw        $a1, 0x34($sp)
/* 20790 8001FB90 AFB80010 */  sw        $t8, 0x10($sp)
/* 20794 8001FB94 02002025 */  or        $a0, $s0, $zero
/* 20798 8001FB98 24060008 */  addiu     $a2, $zero, 8
/* 2079C 8001FB9C 0C007E1C */  jal       func_8001F870
/* 207A0 8001FBA0 24070008 */  addiu     $a3, $zero, 8
/* 207A4 8001FBA4 8FB90040 */  lw        $t9, 0x40($sp)
/* 207A8 8001FBA8 3C080100 */  lui       $t0, 0x100
/* 207AC 8001FBAC 25082CD0 */  addiu     $t0, $t0, 0x2cd0
/* 207B0 8001FBB0 02192021 */  addu      $a0, $s0, $t9
/* 207B4 8001FBB4 2484FFF8 */  addiu     $a0, $a0, -8
/* 207B8 8001FBB8 AFA40030 */  sw        $a0, 0x30($sp)
/* 207BC 8001FBBC AFA80010 */  sw        $t0, 0x10($sp)
/* 207C0 8001FBC0 8FA50034 */  lw        $a1, 0x34($sp)
/* 207C4 8001FBC4 24060008 */  addiu     $a2, $zero, 8
/* 207C8 8001FBC8 0C007E1C */  jal       func_8001F870
/* 207CC 8001FBCC 24070008 */  addiu     $a3, $zero, 8
/* 207D0 8001FBD0 3C090100 */  lui       $t1, 0x100
/* 207D4 8001FBD4 25292D50 */  addiu     $t1, $t1, 0x2d50
/* 207D8 8001FBD8 AFA90010 */  sw        $t1, 0x10($sp)
/* 207DC 8001FBDC 8FA40030 */  lw        $a0, 0x30($sp)
/* 207E0 8001FBE0 02202825 */  or        $a1, $s1, $zero
/* 207E4 8001FBE4 24060008 */  addiu     $a2, $zero, 8
/* 207E8 8001FBE8 0C007E1C */  jal       func_8001F870
/* 207EC 8001FBEC 24070008 */  addiu     $a3, $zero, 8
/* 207F0 8001FBF0 8FAA0040 */  lw        $t2, 0x40($sp)
/* 207F4 8001FBF4 26040008 */  addiu     $a0, $s0, 8
/* 207F8 8001FBF8 02202825 */  or        $a1, $s1, $zero
/* 207FC 8001FBFC 29410011 */  slti      $at, $t2, 0x11
/* 20800 8001FC00 14200010 */  bnez      $at, .L8001FC44
/* 20804 8001FC04 2546FFF0 */  addiu     $a2, $t2, -0x10
/* 20808 8001FC08 3C0B0100 */  lui       $t3, 0x100
/* 2080C 8001FC0C 256B29D0 */  addiu     $t3, $t3, 0x29d0
/* 20810 8001FC10 AFAB0010 */  sw        $t3, 0x10($sp)
/* 20814 8001FC14 24070008 */  addiu     $a3, $zero, 8
/* 20818 8001FC18 AFA4002C */  sw        $a0, 0x2c($sp)
/* 2081C 8001FC1C 0C007E1C */  jal       func_8001F870
/* 20820 8001FC20 AFA60028 */  sw        $a2, 0x28($sp)
/* 20824 8001FC24 3C0C0100 */  lui       $t4, 0x100
/* 20828 8001FC28 258C2A50 */  addiu     $t4, $t4, 0x2a50
/* 2082C 8001FC2C 8FA4002C */  lw        $a0, 0x2c($sp)
/* 20830 8001FC30 8FA60028 */  lw        $a2, 0x28($sp)
/* 20834 8001FC34 AFAC0010 */  sw        $t4, 0x10($sp)
/* 20838 8001FC38 8FA50034 */  lw        $a1, 0x34($sp)
/* 2083C 8001FC3C 0C007E1C */  jal       func_8001F870
/* 20840 8001FC40 24070008 */  addiu     $a3, $zero, 8
.L8001FC44:
/* 20844 8001FC44 8FA20044 */  lw        $v0, 0x44($sp)
/* 20848 8001FC48 02002025 */  or        $a0, $s0, $zero
/* 2084C 8001FC4C 26250008 */  addiu     $a1, $s1, 8
/* 20850 8001FC50 28410011 */  slti      $at, $v0, 0x11
/* 20854 8001FC54 14200010 */  bnez      $at, .L8001FC98
/* 20858 8001FC58 24060008 */  addiu     $a2, $zero, 8
/* 2085C 8001FC5C 3C0D0100 */  lui       $t5, 0x100
/* 20860 8001FC60 25AD2AD0 */  addiu     $t5, $t5, 0x2ad0
/* 20864 8001FC64 2447FFF0 */  addiu     $a3, $v0, -0x10
/* 20868 8001FC68 AFA7002C */  sw        $a3, 0x2c($sp)
/* 2086C 8001FC6C AFAD0010 */  sw        $t5, 0x10($sp)
/* 20870 8001FC70 0C007E1C */  jal       func_8001F870
/* 20874 8001FC74 AFA50034 */  sw        $a1, 0x34($sp)
/* 20878 8001FC78 3C0E0100 */  lui       $t6, 0x100
/* 2087C 8001FC7C 25CE2B50 */  addiu     $t6, $t6, 0x2b50
/* 20880 8001FC80 8FA50034 */  lw        $a1, 0x34($sp)
/* 20884 8001FC84 8FA7002C */  lw        $a3, 0x2c($sp)
/* 20888 8001FC88 AFAE0010 */  sw        $t6, 0x10($sp)
/* 2088C 8001FC8C 8FA40030 */  lw        $a0, 0x30($sp)
/* 20890 8001FC90 0C007E1C */  jal       func_8001F870
/* 20894 8001FC94 24060008 */  addiu     $a2, $zero, 8
.L8001FC98:
/* 20898 8001FC98 8FBF0024 */  lw        $ra, 0x24($sp)
/* 2089C 8001FC9C 8FB0001C */  lw        $s0, 0x1c($sp)
/* 208A0 8001FCA0 8FB10020 */  lw        $s1, 0x20($sp)
/* 208A4 8001FCA4 03E00008 */  jr        $ra
/* 208A8 8001FCA8 27BD0038 */  addiu     $sp, $sp, 0x38

glabel func_8001FCAC
/* 208AC 8001FCAC 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 208B0 8001FCB0 3C0E0100 */  lui       $t6, 0x100
/* 208B4 8001FCB4 AFBF0024 */  sw        $ra, 0x24($sp)
/* 208B8 8001FCB8 AFB10020 */  sw        $s1, 0x20($sp)
/* 208BC 8001FCBC AFB0001C */  sw        $s0, 0x1c($sp)
/* 208C0 8001FCC0 AFA60040 */  sw        $a2, 0x40($sp)
/* 208C4 8001FCC4 AFA70044 */  sw        $a3, 0x44($sp)
/* 208C8 8001FCC8 25CE2FD0 */  addiu     $t6, $t6, 0x2fd0
/* 208CC 8001FCCC 00808025 */  or        $s0, $a0, $zero
/* 208D0 8001FCD0 00A08825 */  or        $s1, $a1, $zero
/* 208D4 8001FCD4 AFAE0010 */  sw        $t6, 0x10($sp)
/* 208D8 8001FCD8 24070008 */  addiu     $a3, $zero, 8
/* 208DC 8001FCDC 0C007E1C */  jal       func_8001F870
/* 208E0 8001FCE0 24060008 */  addiu     $a2, $zero, 8
/* 208E4 8001FCE4 8FAF0044 */  lw        $t7, 0x44($sp)
/* 208E8 8001FCE8 3C180100 */  lui       $t8, 0x100
/* 208EC 8001FCEC 27183050 */  addiu     $t8, $t8, 0x3050
/* 208F0 8001FCF0 022F2821 */  addu      $a1, $s1, $t7
/* 208F4 8001FCF4 24A5FFF8 */  addiu     $a1, $a1, -8
/* 208F8 8001FCF8 AFA50034 */  sw        $a1, 0x34($sp)
/* 208FC 8001FCFC AFB80010 */  sw        $t8, 0x10($sp)
/* 20900 8001FD00 02002025 */  or        $a0, $s0, $zero
/* 20904 8001FD04 24060008 */  addiu     $a2, $zero, 8
/* 20908 8001FD08 0C007E1C */  jal       func_8001F870
/* 2090C 8001FD0C 24070008 */  addiu     $a3, $zero, 8
/* 20910 8001FD10 8FB90040 */  lw        $t9, 0x40($sp)
/* 20914 8001FD14 3C080100 */  lui       $t0, 0x100
/* 20918 8001FD18 250830D0 */  addiu     $t0, $t0, 0x30d0
/* 2091C 8001FD1C 02192021 */  addu      $a0, $s0, $t9
/* 20920 8001FD20 2484FFF8 */  addiu     $a0, $a0, -8
/* 20924 8001FD24 AFA40030 */  sw        $a0, 0x30($sp)
/* 20928 8001FD28 AFA80010 */  sw        $t0, 0x10($sp)
/* 2092C 8001FD2C 8FA50034 */  lw        $a1, 0x34($sp)
/* 20930 8001FD30 24060008 */  addiu     $a2, $zero, 8
/* 20934 8001FD34 0C007E1C */  jal       func_8001F870
/* 20938 8001FD38 24070008 */  addiu     $a3, $zero, 8
/* 2093C 8001FD3C 3C090100 */  lui       $t1, 0x100
/* 20940 8001FD40 25293150 */  addiu     $t1, $t1, 0x3150
/* 20944 8001FD44 AFA90010 */  sw        $t1, 0x10($sp)
/* 20948 8001FD48 8FA40030 */  lw        $a0, 0x30($sp)
/* 2094C 8001FD4C 02202825 */  or        $a1, $s1, $zero
/* 20950 8001FD50 24060008 */  addiu     $a2, $zero, 8
/* 20954 8001FD54 0C007E1C */  jal       func_8001F870
/* 20958 8001FD58 24070008 */  addiu     $a3, $zero, 8
/* 2095C 8001FD5C 8FAA0040 */  lw        $t2, 0x40($sp)
/* 20960 8001FD60 26040008 */  addiu     $a0, $s0, 8
/* 20964 8001FD64 02202825 */  or        $a1, $s1, $zero
/* 20968 8001FD68 29410011 */  slti      $at, $t2, 0x11
/* 2096C 8001FD6C 14200010 */  bnez      $at, .L8001FDB0
/* 20970 8001FD70 2546FFF0 */  addiu     $a2, $t2, -0x10
/* 20974 8001FD74 3C0B0100 */  lui       $t3, 0x100
/* 20978 8001FD78 256B2DD0 */  addiu     $t3, $t3, 0x2dd0
/* 2097C 8001FD7C AFAB0010 */  sw        $t3, 0x10($sp)
/* 20980 8001FD80 24070008 */  addiu     $a3, $zero, 8
/* 20984 8001FD84 AFA4002C */  sw        $a0, 0x2c($sp)
/* 20988 8001FD88 0C007E1C */  jal       func_8001F870
/* 2098C 8001FD8C AFA60028 */  sw        $a2, 0x28($sp)
/* 20990 8001FD90 3C0C0100 */  lui       $t4, 0x100
/* 20994 8001FD94 258C2E50 */  addiu     $t4, $t4, 0x2e50
/* 20998 8001FD98 8FA4002C */  lw        $a0, 0x2c($sp)
/* 2099C 8001FD9C 8FA60028 */  lw        $a2, 0x28($sp)
/* 209A0 8001FDA0 AFAC0010 */  sw        $t4, 0x10($sp)
/* 209A4 8001FDA4 8FA50034 */  lw        $a1, 0x34($sp)
/* 209A8 8001FDA8 0C007E1C */  jal       func_8001F870
/* 209AC 8001FDAC 24070008 */  addiu     $a3, $zero, 8
.L8001FDB0:
/* 209B0 8001FDB0 8FA20044 */  lw        $v0, 0x44($sp)
/* 209B4 8001FDB4 02002025 */  or        $a0, $s0, $zero
/* 209B8 8001FDB8 26250008 */  addiu     $a1, $s1, 8
/* 209BC 8001FDBC 28410011 */  slti      $at, $v0, 0x11
/* 209C0 8001FDC0 14200010 */  bnez      $at, .L8001FE04
/* 209C4 8001FDC4 24060008 */  addiu     $a2, $zero, 8
/* 209C8 8001FDC8 3C0D0100 */  lui       $t5, 0x100
/* 209CC 8001FDCC 25AD2ED0 */  addiu     $t5, $t5, 0x2ed0
/* 209D0 8001FDD0 2447FFF0 */  addiu     $a3, $v0, -0x10
/* 209D4 8001FDD4 AFA7002C */  sw        $a3, 0x2c($sp)
/* 209D8 8001FDD8 AFAD0010 */  sw        $t5, 0x10($sp)
/* 209DC 8001FDDC 0C007E1C */  jal       func_8001F870
/* 209E0 8001FDE0 AFA50034 */  sw        $a1, 0x34($sp)
/* 209E4 8001FDE4 3C0E0100 */  lui       $t6, 0x100
/* 209E8 8001FDE8 25CE2F50 */  addiu     $t6, $t6, 0x2f50
/* 209EC 8001FDEC 8FA50034 */  lw        $a1, 0x34($sp)
/* 209F0 8001FDF0 8FA7002C */  lw        $a3, 0x2c($sp)
/* 209F4 8001FDF4 AFAE0010 */  sw        $t6, 0x10($sp)
/* 209F8 8001FDF8 8FA40030 */  lw        $a0, 0x30($sp)
/* 209FC 8001FDFC 0C007E1C */  jal       func_8001F870
/* 20A00 8001FE00 24060008 */  addiu     $a2, $zero, 8
.L8001FE04:
/* 20A04 8001FE04 8FBF0024 */  lw        $ra, 0x24($sp)
/* 20A08 8001FE08 8FB0001C */  lw        $s0, 0x1c($sp)
/* 20A0C 8001FE0C 8FB10020 */  lw        $s1, 0x20($sp)
/* 20A10 8001FE10 03E00008 */  jr        $ra
/* 20A14 8001FE14 27BD0038 */  addiu     $sp, $sp, 0x38

glabel func_8001FE18
/* 20A18 8001FE18 3C03800A */  lui       $v1, 0x800a
/* 20A1C 8001FE1C 24637420 */  addiu     $v1, $v1, 0x7420
/* 20A20 8001FE20 8C620000 */  lw        $v0, ($v1)
/* 20A24 8001FE24 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 20A28 8001FE28 AFBF0014 */  sw        $ra, 0x14($sp)
/* 20A2C 8001FE2C 244E0008 */  addiu     $t6, $v0, 8
/* 20A30 8001FE30 AFA40018 */  sw        $a0, 0x18($sp)
/* 20A34 8001FE34 AFA60020 */  sw        $a2, 0x20($sp)
/* 20A38 8001FE38 AFA70024 */  sw        $a3, 0x24($sp)
/* 20A3C 8001FE3C AC6E0000 */  sw        $t6, ($v1)
/* 20A40 8001FE40 3C188007 */  lui       $t8, 0x8007
/* 20A44 8001FE44 2718F4C0 */  addiu     $t8, $t8, -0xb40
/* 20A48 8001FE48 3C0FDE00 */  lui       $t7, 0xde00
/* 20A4C 8001FE4C AC4F0000 */  sw        $t7, ($v0)
/* 20A50 8001FE50 AC580004 */  sw        $t8, 4($v0)
/* 20A54 8001FE54 8C620000 */  lw        $v0, ($v1)
/* 20A58 8001FE58 3C0BF700 */  lui       $t3, 0xf700
/* 20A5C 8001FE5C 24590008 */  addiu     $t9, $v0, 8
/* 20A60 8001FE60 AC790000 */  sw        $t9, ($v1)
/* 20A64 8001FE64 AC4B0000 */  sw        $t3, ($v0)
/* 20A68 8001FE68 97AA002A */  lhu       $t2, 0x2a($sp)
/* 20A6C 8001FE6C 000A6400 */  sll       $t4, $t2, 0x10
/* 20A70 8001FE70 018A6825 */  or        $t5, $t4, $t2
/* 20A74 8001FE74 AC4D0004 */  sw        $t5, 4($v0)
/* 20A78 8001FE78 0C001E96 */  jal       func_80007A58
/* 20A7C 8001FE7C AFA5001C */  sw        $a1, 0x1c($sp)
/* 20A80 8001FE80 3C03800A */  lui       $v1, 0x800a
/* 20A84 8001FE84 24637420 */  addiu     $v1, $v1, 0x7420
/* 20A88 8001FE88 8FA5001C */  lw        $a1, 0x1c($sp)
/* 20A8C 8001FE8C 8FA60018 */  lw        $a2, 0x18($sp)
/* 20A90 8001FE90 8FA70020 */  lw        $a3, 0x20($sp)
/* 20A94 8001FE94 10400019 */  beqz      $v0, .L8001FEFC
/* 20A98 8001FE98 8FA80024 */  lw        $t0, 0x24($sp)
/* 20A9C 8001FE9C 8C620000 */  lw        $v0, ($v1)
/* 20AA0 8001FEA0 00C77821 */  addu      $t7, $a2, $a3
/* 20AA4 8001FEA4 25F8FFF8 */  addiu     $t8, $t7, -8
/* 20AA8 8001FEA8 244E0008 */  addiu     $t6, $v0, 8
/* 20AAC 8001FEAC AC6E0000 */  sw        $t6, ($v1)
/* 20AB0 8001FEB0 00A86821 */  addu      $t5, $a1, $t0
/* 20AB4 8001FEB4 25AEFFF8 */  addiu     $t6, $t5, -8
/* 20AB8 8001FEB8 331903FF */  andi      $t9, $t8, 0x3ff
/* 20ABC 8001FEBC 00195B80 */  sll       $t3, $t9, 0xe
/* 20AC0 8001FEC0 31CF03FF */  andi      $t7, $t6, 0x3ff
/* 20AC4 8001FEC4 3C01F600 */  lui       $at, 0xf600
/* 20AC8 8001FEC8 01616025 */  or        $t4, $t3, $at
/* 20ACC 8001FECC 000FC080 */  sll       $t8, $t7, 2
/* 20AD0 8001FED0 0198C825 */  or        $t9, $t4, $t8
/* 20AD4 8001FED4 24AF0007 */  addiu     $t7, $a1, 7
/* 20AD8 8001FED8 24CB0007 */  addiu     $t3, $a2, 7
/* 20ADC 8001FEDC 316D03FF */  andi      $t5, $t3, 0x3ff
/* 20AE0 8001FEE0 31EC03FF */  andi      $t4, $t7, 0x3ff
/* 20AE4 8001FEE4 000CC080 */  sll       $t8, $t4, 2
/* 20AE8 8001FEE8 000D7380 */  sll       $t6, $t5, 0xe
/* 20AEC 8001FEEC AC590000 */  sw        $t9, ($v0)
/* 20AF0 8001FEF0 01D8C825 */  or        $t9, $t6, $t8
/* 20AF4 8001FEF4 10000018 */  b         .L8001FF58
/* 20AF8 8001FEF8 AC590004 */  sw        $t9, 4($v0)
.L8001FEFC:
/* 20AFC 8001FEFC 8C620000 */  lw        $v0, ($v1)
/* 20B00 8001FF00 00C76821 */  addu      $t5, $a2, $a3
/* 20B04 8001FF04 25AFFFFC */  addiu     $t7, $t5, -4
/* 20B08 8001FF08 244B0008 */  addiu     $t3, $v0, 8
/* 20B0C 8001FF0C AC6B0000 */  sw        $t3, ($v1)
/* 20B10 8001FF10 00A8C821 */  addu      $t9, $a1, $t0
/* 20B14 8001FF14 272BFFFC */  addiu     $t3, $t9, -4
/* 20B18 8001FF18 31EC03FF */  andi      $t4, $t7, 0x3ff
/* 20B1C 8001FF1C 000C7380 */  sll       $t6, $t4, 0xe
/* 20B20 8001FF20 316D03FF */  andi      $t5, $t3, 0x3ff
/* 20B24 8001FF24 3C01F600 */  lui       $at, 0xf600
/* 20B28 8001FF28 01C1C025 */  or        $t8, $t6, $at
/* 20B2C 8001FF2C 000D7880 */  sll       $t7, $t5, 2
/* 20B30 8001FF30 030F6025 */  or        $t4, $t8, $t7
/* 20B34 8001FF34 24AD0003 */  addiu     $t5, $a1, 3
/* 20B38 8001FF38 24CE0003 */  addiu     $t6, $a2, 3
/* 20B3C 8001FF3C 31D903FF */  andi      $t9, $t6, 0x3ff
/* 20B40 8001FF40 31B803FF */  andi      $t8, $t5, 0x3ff
/* 20B44 8001FF44 00187880 */  sll       $t7, $t8, 2
/* 20B48 8001FF48 00195B80 */  sll       $t3, $t9, 0xe
/* 20B4C 8001FF4C AC4C0000 */  sw        $t4, ($v0)
/* 20B50 8001FF50 016F6025 */  or        $t4, $t3, $t7
/* 20B54 8001FF54 AC4C0004 */  sw        $t4, 4($v0)
.L8001FF58:
/* 20B58 8001FF58 8FBF0014 */  lw        $ra, 0x14($sp)
/* 20B5C 8001FF5C 27BD0018 */  addiu     $sp, $sp, 0x18
/* 20B60 8001FF60 03E00008 */  jr        $ra
/* 20B64 8001FF64 00000000 */  nop       

glabel func_8001FF68
/* 20B68 8001FF68 3C03800A */  lui       $v1, 0x800a
/* 20B6C 8001FF6C 24637420 */  addiu     $v1, $v1, 0x7420
/* 20B70 8001FF70 8C620000 */  lw        $v0, ($v1)
/* 20B74 8001FF74 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 20B78 8001FF78 AFBF0014 */  sw        $ra, 0x14($sp)
/* 20B7C 8001FF7C 244E0008 */  addiu     $t6, $v0, 8
/* 20B80 8001FF80 AFA40018 */  sw        $a0, 0x18($sp)
/* 20B84 8001FF84 AFA60020 */  sw        $a2, 0x20($sp)
/* 20B88 8001FF88 AFA70024 */  sw        $a3, 0x24($sp)
/* 20B8C 8001FF8C AC6E0000 */  sw        $t6, ($v1)
/* 20B90 8001FF90 3C188007 */  lui       $t8, 0x8007
/* 20B94 8001FF94 2718F4C0 */  addiu     $t8, $t8, -0xb40
/* 20B98 8001FF98 3C0FDE00 */  lui       $t7, 0xde00
/* 20B9C 8001FF9C AC4F0000 */  sw        $t7, ($v0)
/* 20BA0 8001FFA0 AC580004 */  sw        $t8, 4($v0)
/* 20BA4 8001FFA4 8C620000 */  lw        $v0, ($v1)
/* 20BA8 8001FFA8 3C0BF700 */  lui       $t3, 0xf700
/* 20BAC 8001FFAC 24590008 */  addiu     $t9, $v0, 8
/* 20BB0 8001FFB0 AC790000 */  sw        $t9, ($v1)
/* 20BB4 8001FFB4 AC4B0000 */  sw        $t3, ($v0)
/* 20BB8 8001FFB8 97AA002A */  lhu       $t2, 0x2a($sp)
/* 20BBC 8001FFBC 000A6400 */  sll       $t4, $t2, 0x10
/* 20BC0 8001FFC0 018A6825 */  or        $t5, $t4, $t2
/* 20BC4 8001FFC4 AC4D0004 */  sw        $t5, 4($v0)
/* 20BC8 8001FFC8 0C001E96 */  jal       func_80007A58
/* 20BCC 8001FFCC AFA5001C */  sw        $a1, 0x1c($sp)
/* 20BD0 8001FFD0 3C03800A */  lui       $v1, 0x800a
/* 20BD4 8001FFD4 24637420 */  addiu     $v1, $v1, 0x7420
/* 20BD8 8001FFD8 8FA5001C */  lw        $a1, 0x1c($sp)
/* 20BDC 8001FFDC 8FA60018 */  lw        $a2, 0x18($sp)
/* 20BE0 8001FFE0 8FA70020 */  lw        $a3, 0x20($sp)
/* 20BE4 8001FFE4 10400019 */  beqz      $v0, .L8002004C
/* 20BE8 8001FFE8 8FA80024 */  lw        $t0, 0x24($sp)
/* 20BEC 8001FFEC 8C620000 */  lw        $v0, ($v1)
/* 20BF0 8001FFF0 00C77821 */  addu      $t7, $a2, $a3
/* 20BF4 8001FFF4 25F8FFFA */  addiu     $t8, $t7, -6
/* 20BF8 8001FFF8 244E0008 */  addiu     $t6, $v0, 8
/* 20BFC 8001FFFC AC6E0000 */  sw        $t6, ($v1)
/* 20C00 80020000 00A86821 */  addu      $t5, $a1, $t0
/* 20C04 80020004 25AEFFFA */  addiu     $t6, $t5, -6
/* 20C08 80020008 331903FF */  andi      $t9, $t8, 0x3ff
/* 20C0C 8002000C 00195B80 */  sll       $t3, $t9, 0xe
/* 20C10 80020010 31CF03FF */  andi      $t7, $t6, 0x3ff
/* 20C14 80020014 3C01F600 */  lui       $at, 0xf600
/* 20C18 80020018 01616025 */  or        $t4, $t3, $at
/* 20C1C 8002001C 000FC080 */  sll       $t8, $t7, 2
/* 20C20 80020020 0198C825 */  or        $t9, $t4, $t8
/* 20C24 80020024 24AF0005 */  addiu     $t7, $a1, 5
/* 20C28 80020028 24CB0005 */  addiu     $t3, $a2, 5
/* 20C2C 8002002C 316D03FF */  andi      $t5, $t3, 0x3ff
/* 20C30 80020030 31EC03FF */  andi      $t4, $t7, 0x3ff
/* 20C34 80020034 000CC080 */  sll       $t8, $t4, 2
/* 20C38 80020038 000D7380 */  sll       $t6, $t5, 0xe
/* 20C3C 8002003C AC590000 */  sw        $t9, ($v0)
/* 20C40 80020040 01D8C825 */  or        $t9, $t6, $t8
/* 20C44 80020044 10000018 */  b         .L800200A8
/* 20C48 80020048 AC590004 */  sw        $t9, 4($v0)
.L8002004C:
/* 20C4C 8002004C 8C620000 */  lw        $v0, ($v1)
/* 20C50 80020050 00C76821 */  addu      $t5, $a2, $a3
/* 20C54 80020054 25AFFFFC */  addiu     $t7, $t5, -4
/* 20C58 80020058 244B0008 */  addiu     $t3, $v0, 8
/* 20C5C 8002005C AC6B0000 */  sw        $t3, ($v1)
/* 20C60 80020060 00A8C821 */  addu      $t9, $a1, $t0
/* 20C64 80020064 272BFFFC */  addiu     $t3, $t9, -4
/* 20C68 80020068 31EC03FF */  andi      $t4, $t7, 0x3ff
/* 20C6C 8002006C 000C7380 */  sll       $t6, $t4, 0xe
/* 20C70 80020070 316D03FF */  andi      $t5, $t3, 0x3ff
/* 20C74 80020074 3C01F600 */  lui       $at, 0xf600
/* 20C78 80020078 01C1C025 */  or        $t8, $t6, $at
/* 20C7C 8002007C 000D7880 */  sll       $t7, $t5, 2
/* 20C80 80020080 030F6025 */  or        $t4, $t8, $t7
/* 20C84 80020084 24AD0003 */  addiu     $t5, $a1, 3
/* 20C88 80020088 24CE0003 */  addiu     $t6, $a2, 3
/* 20C8C 8002008C 31D903FF */  andi      $t9, $t6, 0x3ff
/* 20C90 80020090 31B803FF */  andi      $t8, $t5, 0x3ff
/* 20C94 80020094 00187880 */  sll       $t7, $t8, 2
/* 20C98 80020098 00195B80 */  sll       $t3, $t9, 0xe
/* 20C9C 8002009C AC4C0000 */  sw        $t4, ($v0)
/* 20CA0 800200A0 016F6025 */  or        $t4, $t3, $t7
/* 20CA4 800200A4 AC4C0004 */  sw        $t4, 4($v0)
.L800200A8:
/* 20CA8 800200A8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 20CAC 800200AC 27BD0018 */  addiu     $sp, $sp, 0x18
/* 20CB0 800200B0 03E00008 */  jr        $ra
/* 20CB4 800200B4 00000000 */  nop       

glabel func_800200B8
/* 20CB8 800200B8 27BDFF78 */  addiu     $sp, $sp, -0x88
/* 20CBC 800200BC AFBF003C */  sw        $ra, 0x3c($sp)
/* 20CC0 800200C0 AFB20038 */  sw        $s2, 0x38($sp)
/* 20CC4 800200C4 AFB10034 */  sw        $s1, 0x34($sp)
/* 20CC8 800200C8 AFB00030 */  sw        $s0, 0x30($sp)
/* 20CCC 800200CC AFA40088 */  sw        $a0, 0x88($sp)
/* 20CD0 800200D0 AFA5008C */  sw        $a1, 0x8c($sp)
/* 20CD4 800200D4 AFA60090 */  sw        $a2, 0x90($sp)
/* 20CD8 800200D8 0C001923 */  jal       func_8000648C
/* 20CDC 800200DC AFA70094 */  sw        $a3, 0x94($sp)
/* 20CE0 800200E0 00408825 */  or        $s1, $v0, $zero
/* 20CE4 800200E4 0C0017D7 */  jal       func_80005F5C
/* 20CE8 800200E8 24040040 */  addiu     $a0, $zero, 0x40
/* 20CEC 800200EC 00409025 */  or        $s2, $v0, $zero
/* 20CF0 800200F0 0C0017D7 */  jal       func_80005F5C
/* 20CF4 800200F4 24040040 */  addiu     $a0, $zero, 0x40
/* 20CF8 800200F8 AFA2007C */  sw        $v0, 0x7c($sp)
/* 20CFC 800200FC 0C0017D7 */  jal       func_80005F5C
/* 20D00 80020100 24040010 */  addiu     $a0, $zero, 0x10
/* 20D04 80020104 AFA20078 */  sw        $v0, 0x78($sp)
/* 20D08 80020108 86260006 */  lh        $a2, 6($s1)
/* 20D0C 8002010C 86250004 */  lh        $a1, 4($s1)
/* 20D10 80020110 0C0079BA */  jal       func_8001E6E8
/* 20D14 80020114 00402025 */  or        $a0, $v0, $zero
/* 20D18 80020118 3C10800A */  lui       $s0, 0x800a
/* 20D1C 8002011C 26107420 */  addiu     $s0, $s0, 0x7420
/* 20D20 80020120 8E020000 */  lw        $v0, ($s0)
/* 20D24 80020124 3C0FDC08 */  lui       $t7, 0xdc08
/* 20D28 80020128 35EF0008 */  ori       $t7, $t7, 8
/* 20D2C 8002012C 244E0008 */  addiu     $t6, $v0, 8
/* 20D30 80020130 AE0E0000 */  sw        $t6, ($s0)
/* 20D34 80020134 3C013F00 */  lui       $at, 0x3f00
/* 20D38 80020138 AC4F0000 */  sw        $t7, ($v0)
/* 20D3C 8002013C 44810000 */  mtc1      $at, $f0
/* 20D40 80020140 8FB80078 */  lw        $t8, 0x78($sp)
/* 20D44 80020144 3C011FFF */  lui       $at, 0x1fff
/* 20D48 80020148 3421FFFF */  ori       $at, $at, 0xffff
/* 20D4C 8002014C 0301C824 */  and       $t9, $t8, $at
/* 20D50 80020150 AC590004 */  sw        $t9, 4($v0)
/* 20D54 80020154 962D0004 */  lhu       $t5, 4($s1)
/* 20D58 80020158 44050000 */  mfc1      $a1, $f0
/* 20D5C 8002015C 8FA4007C */  lw        $a0, 0x7c($sp)
/* 20D60 80020160 448D2000 */  mtc1      $t5, $f4
/* 20D64 80020164 3C014F80 */  lui       $at, 0x4f80
/* 20D68 80020168 05A10004 */  bgez      $t5, .L8002017C
/* 20D6C 8002016C 468021A0 */  cvt.s.w   $f6, $f4
/* 20D70 80020170 44814000 */  mtc1      $at, $f8
/* 20D74 80020174 00000000 */  nop       
/* 20D78 80020178 46083180 */  add.s     $f6, $f6, $f8
.L8002017C:
/* 20D7C 8002017C 46003281 */  sub.s     $f10, $f6, $f0
/* 20D80 80020180 962E0006 */  lhu       $t6, 6($s1)
/* 20D84 80020184 3C014F80 */  lui       $at, 0x4f80
/* 20D88 80020188 448E8000 */  mtc1      $t6, $f16
/* 20D8C 8002018C 44065000 */  mfc1      $a2, $f10
/* 20D90 80020190 05C10004 */  bgez      $t6, .L800201A4
/* 20D94 80020194 468084A0 */  cvt.s.w   $f18, $f16
/* 20D98 80020198 44812000 */  mtc1      $at, $f4
/* 20D9C 8002019C 00000000 */  nop       
/* 20DA0 800201A0 46049480 */  add.s     $f18, $f18, $f4
.L800201A4:
/* 20DA4 800201A4 3C01C000 */  lui       $at, 0xc000
/* 20DA8 800201A8 44813000 */  mtc1      $at, $f6
/* 20DAC 800201AC 46009201 */  sub.s     $f8, $f18, $f0
/* 20DB0 800201B0 3C014000 */  lui       $at, 0x4000
/* 20DB4 800201B4 44815000 */  mtc1      $at, $f10
/* 20DB8 800201B8 3C013F80 */  lui       $at, 0x3f80
/* 20DBC 800201BC 44818000 */  mtc1      $at, $f16
/* 20DC0 800201C0 44074000 */  mfc1      $a3, $f8
/* 20DC4 800201C4 E7A00010 */  swc1      $f0, 0x10($sp)
/* 20DC8 800201C8 E7A60014 */  swc1      $f6, 0x14($sp)
/* 20DCC 800201CC E7AA0018 */  swc1      $f10, 0x18($sp)
/* 20DD0 800201D0 0C018A89 */  jal       func_80062A24
/* 20DD4 800201D4 E7B0001C */  swc1      $f16, 0x1c($sp)
/* 20DD8 800201D8 8FB10098 */  lw        $s1, 0x98($sp)
/* 20DDC 800201DC AFA00010 */  sw        $zero, 0x10($sp)
/* 20DE0 800201E0 AFA00014 */  sw        $zero, 0x14($sp)
/* 20DE4 800201E4 922F0000 */  lbu       $t7, ($s1)
/* 20DE8 800201E8 87A5008A */  lh        $a1, 0x8a($sp)
/* 20DEC 800201EC 87A6008E */  lh        $a2, 0x8e($sp)
/* 20DF0 800201F0 AFAF0018 */  sw        $t7, 0x18($sp)
/* 20DF4 800201F4 92380001 */  lbu       $t8, 1($s1)
/* 20DF8 800201F8 240D00FF */  addiu     $t5, $zero, 0xff
/* 20DFC 800201FC 02402025 */  or        $a0, $s2, $zero
/* 20E00 80020200 AFB8001C */  sw        $t8, 0x1c($sp)
/* 20E04 80020204 92390002 */  lbu       $t9, 2($s1)
/* 20E08 80020208 AFAD0024 */  sw        $t5, 0x24($sp)
/* 20E0C 8002020C 2407FFFF */  addiu     $a3, $zero, -1
/* 20E10 80020210 AFA50048 */  sw        $a1, 0x48($sp)
/* 20E14 80020214 AFA60044 */  sw        $a2, 0x44($sp)
/* 20E18 80020218 0C0079A0 */  jal       func_8001E680
/* 20E1C 8002021C AFB90020 */  sw        $t9, 0x20($sp)
/* 20E20 80020220 AFA00010 */  sw        $zero, 0x10($sp)
/* 20E24 80020224 AFA00014 */  sw        $zero, 0x14($sp)
/* 20E28 80020228 92380000 */  lbu       $t8, ($s1)
/* 20E2C 8002022C 8FAE0088 */  lw        $t6, 0x88($sp)
/* 20E30 80020230 8FAF0090 */  lw        $t7, 0x90($sp)
/* 20E34 80020234 AFB80018 */  sw        $t8, 0x18($sp)
/* 20E38 80020238 92390001 */  lbu       $t9, 1($s1)
/* 20E3C 8002023C 01CF2821 */  addu      $a1, $t6, $t7
/* 20E40 80020240 00052C00 */  sll       $a1, $a1, 0x10
/* 20E44 80020244 AFB9001C */  sw        $t9, 0x1c($sp)
/* 20E48 80020248 922D0002 */  lbu       $t5, 2($s1)
/* 20E4C 8002024C 00052C03 */  sra       $a1, $a1, 0x10
/* 20E50 80020250 240E00FF */  addiu     $t6, $zero, 0xff
/* 20E54 80020254 8FA60044 */  lw        $a2, 0x44($sp)
/* 20E58 80020258 AFAE0024 */  sw        $t6, 0x24($sp)
/* 20E5C 8002025C AFA50040 */  sw        $a1, 0x40($sp)
/* 20E60 80020260 26440010 */  addiu     $a0, $s2, 0x10
/* 20E64 80020264 2407FFFF */  addiu     $a3, $zero, -1
/* 20E68 80020268 0C0079A0 */  jal       func_8001E680
/* 20E6C 8002026C AFAD0020 */  sw        $t5, 0x20($sp)
/* 20E70 80020270 8FB1009C */  lw        $s1, 0x9c($sp)
/* 20E74 80020274 AFA00010 */  sw        $zero, 0x10($sp)
/* 20E78 80020278 AFA00014 */  sw        $zero, 0x14($sp)
/* 20E7C 8002027C 92390000 */  lbu       $t9, ($s1)
/* 20E80 80020280 8FAF008C */  lw        $t7, 0x8c($sp)
/* 20E84 80020284 8FB80094 */  lw        $t8, 0x94($sp)
/* 20E88 80020288 AFB90018 */  sw        $t9, 0x18($sp)
/* 20E8C 8002028C 922D0001 */  lbu       $t5, 1($s1)
/* 20E90 80020290 01F83021 */  addu      $a2, $t7, $t8
/* 20E94 80020294 00063400 */  sll       $a2, $a2, 0x10
/* 20E98 80020298 AFAD001C */  sw        $t5, 0x1c($sp)
/* 20E9C 8002029C 922E0002 */  lbu       $t6, 2($s1)
/* 20EA0 800202A0 00063403 */  sra       $a2, $a2, 0x10
/* 20EA4 800202A4 240F00FF */  addiu     $t7, $zero, 0xff
/* 20EA8 800202A8 AFAF0024 */  sw        $t7, 0x24($sp)
/* 20EAC 800202AC AFA60044 */  sw        $a2, 0x44($sp)
/* 20EB0 800202B0 26440020 */  addiu     $a0, $s2, 0x20
/* 20EB4 800202B4 87A5004A */  lh        $a1, 0x4a($sp)
/* 20EB8 800202B8 2407FFFF */  addiu     $a3, $zero, -1
/* 20EBC 800202BC 0C0079A0 */  jal       func_8001E680
/* 20EC0 800202C0 AFAE0020 */  sw        $t6, 0x20($sp)
/* 20EC4 800202C4 AFA00010 */  sw        $zero, 0x10($sp)
/* 20EC8 800202C8 AFA00014 */  sw        $zero, 0x14($sp)
/* 20ECC 800202CC 92380000 */  lbu       $t8, ($s1)
/* 20ED0 800202D0 240E00FF */  addiu     $t6, $zero, 0xff
/* 20ED4 800202D4 8FA60044 */  lw        $a2, 0x44($sp)
/* 20ED8 800202D8 AFB80018 */  sw        $t8, 0x18($sp)
/* 20EDC 800202DC 92390001 */  lbu       $t9, 1($s1)
/* 20EE0 800202E0 26440030 */  addiu     $a0, $s2, 0x30
/* 20EE4 800202E4 87A50042 */  lh        $a1, 0x42($sp)
/* 20EE8 800202E8 AFB9001C */  sw        $t9, 0x1c($sp)
/* 20EEC 800202EC 922D0002 */  lbu       $t5, 2($s1)
/* 20EF0 800202F0 AFAE0024 */  sw        $t6, 0x24($sp)
/* 20EF4 800202F4 2407FFFF */  addiu     $a3, $zero, -1
/* 20EF8 800202F8 0C0079A0 */  jal       func_8001E680
/* 20EFC 800202FC AFAD0020 */  sw        $t5, 0x20($sp)
/* 20F00 80020300 8E020000 */  lw        $v0, ($s0)
/* 20F04 80020304 3C18E700 */  lui       $t8, 0xe700
/* 20F08 80020308 3C0DE300 */  lui       $t5, 0xe300
/* 20F0C 8002030C 244F0008 */  addiu     $t7, $v0, 8
/* 20F10 80020310 AE0F0000 */  sw        $t7, ($s0)
/* 20F14 80020314 AC400004 */  sw        $zero, 4($v0)
/* 20F18 80020318 AC580000 */  sw        $t8, ($v0)
/* 20F1C 8002031C 8E020000 */  lw        $v0, ($s0)
/* 20F20 80020320 35AD0A01 */  ori       $t5, $t5, 0xa01
/* 20F24 80020324 3C0FD9FD */  lui       $t7, 0xd9fd
/* 20F28 80020328 24590008 */  addiu     $t9, $v0, 8
/* 20F2C 8002032C AE190000 */  sw        $t9, ($s0)
/* 20F30 80020330 AC400004 */  sw        $zero, 4($v0)
/* 20F34 80020334 AC4D0000 */  sw        $t5, ($v0)
/* 20F38 80020338 8E020000 */  lw        $v0, ($s0)
/* 20F3C 8002033C 35EFFFFE */  ori       $t7, $t7, 0xfffe
/* 20F40 80020340 3C0DFFFE */  lui       $t5, 0xfffe
/* 20F44 80020344 244E0008 */  addiu     $t6, $v0, 8
/* 20F48 80020348 AE0E0000 */  sw        $t6, ($s0)
/* 20F4C 8002034C AC400004 */  sw        $zero, 4($v0)
/* 20F50 80020350 AC4F0000 */  sw        $t7, ($v0)
/* 20F54 80020354 8E020000 */  lw        $v0, ($s0)
/* 20F58 80020358 3C19FCFF */  lui       $t9, 0xfcff
/* 20F5C 8002035C 3739FFFF */  ori       $t9, $t9, 0xffff
/* 20F60 80020360 24580008 */  addiu     $t8, $v0, 8
/* 20F64 80020364 AE180000 */  sw        $t8, ($s0)
/* 20F68 80020368 35AD793C */  ori       $t5, $t5, 0x793c
/* 20F6C 8002036C AC4D0004 */  sw        $t5, 4($v0)
/* 20F70 80020370 AC590000 */  sw        $t9, ($v0)
/* 20F74 80020374 8E020000 */  lw        $v0, ($s0)
/* 20F78 80020378 3C180F0A */  lui       $t8, 0xf0a
/* 20F7C 8002037C 3C0FE200 */  lui       $t7, 0xe200
/* 20F80 80020380 244E0008 */  addiu     $t6, $v0, 8
/* 20F84 80020384 AE0E0000 */  sw        $t6, ($s0)
/* 20F88 80020388 35EF001C */  ori       $t7, $t7, 0x1c
/* 20F8C 8002038C 37184000 */  ori       $t8, $t8, 0x4000
/* 20F90 80020390 AC580004 */  sw        $t8, 4($v0)
/* 20F94 80020394 AC4F0000 */  sw        $t7, ($v0)
/* 20F98 80020398 8E020000 */  lw        $v0, ($s0)
/* 20F9C 8002039C 340EFFFF */  ori       $t6, $zero, 0xffff
/* 20FA0 800203A0 3C0DDB0E */  lui       $t5, 0xdb0e
/* 20FA4 800203A4 24590008 */  addiu     $t9, $v0, 8
/* 20FA8 800203A8 AE190000 */  sw        $t9, ($s0)
/* 20FAC 800203AC AC4E0004 */  sw        $t6, 4($v0)
/* 20FB0 800203B0 AC4D0000 */  sw        $t5, ($v0)
/* 20FB4 800203B4 8E020000 */  lw        $v0, ($s0)
/* 20FB8 800203B8 3C18DA38 */  lui       $t8, 0xda38
/* 20FBC 800203BC 37180007 */  ori       $t8, $t8, 7
/* 20FC0 800203C0 244F0008 */  addiu     $t7, $v0, 8
/* 20FC4 800203C4 AE0F0000 */  sw        $t7, ($s0)
/* 20FC8 800203C8 AC580000 */  sw        $t8, ($v0)
/* 20FCC 800203CC 8FB9007C */  lw        $t9, 0x7c($sp)
/* 20FD0 800203D0 3C0C1FFF */  lui       $t4, 0x1fff
/* 20FD4 800203D4 358CFFFF */  ori       $t4, $t4, 0xffff
/* 20FD8 800203D8 032C6824 */  and       $t5, $t9, $t4
/* 20FDC 800203DC AC4D0004 */  sw        $t5, 4($v0)
/* 20FE0 800203E0 8E020000 */  lw        $v0, ($s0)
/* 20FE4 800203E4 3C188007 */  lui       $t8, 0x8007
/* 20FE8 800203E8 2718F010 */  addiu     $t8, $t8, -0xff0
/* 20FEC 800203EC 244E0008 */  addiu     $t6, $v0, 8
/* 20FF0 800203F0 AE0E0000 */  sw        $t6, ($s0)
/* 20FF4 800203F4 3C0FDA38 */  lui       $t7, 0xda38
/* 20FF8 800203F8 35EF0003 */  ori       $t7, $t7, 3
/* 20FFC 800203FC 030CC824 */  and       $t9, $t8, $t4
/* 21000 80020400 AC590004 */  sw        $t9, 4($v0)
/* 21004 80020404 AC4F0000 */  sw        $t7, ($v0)
/* 21008 80020408 8E020000 */  lw        $v0, ($s0)
/* 2100C 8002040C 3C0E0100 */  lui       $t6, 0x100
/* 21010 80020410 35CE4008 */  ori       $t6, $t6, 0x4008
/* 21014 80020414 244D0008 */  addiu     $t5, $v0, 8
/* 21018 80020418 AE0D0000 */  sw        $t5, ($s0)
/* 2101C 8002041C 024C7824 */  and       $t7, $s2, $t4
/* 21020 80020420 AC4F0004 */  sw        $t7, 4($v0)
/* 21024 80020424 AC4E0000 */  sw        $t6, ($v0)
/* 21028 80020428 8E020000 */  lw        $v0, ($s0)
/* 2102C 8002042C 3C190600 */  lui       $t9, 0x600
/* 21030 80020430 37390406 */  ori       $t9, $t9, 0x406
/* 21034 80020434 24580008 */  addiu     $t8, $v0, 8
/* 21038 80020438 AE180000 */  sw        $t8, ($s0)
/* 2103C 8002043C 240D0602 */  addiu     $t5, $zero, 0x602
/* 21040 80020440 AC4D0004 */  sw        $t5, 4($v0)
/* 21044 80020444 AC590000 */  sw        $t9, ($v0)
/* 21048 80020448 8FBF003C */  lw        $ra, 0x3c($sp)
/* 2104C 8002044C 8FB20038 */  lw        $s2, 0x38($sp)
/* 21050 80020450 8FB10034 */  lw        $s1, 0x34($sp)
/* 21054 80020454 8FB00030 */  lw        $s0, 0x30($sp)
/* 21058 80020458 03E00008 */  jr        $ra
/* 2105C 8002045C 27BD0088 */  addiu     $sp, $sp, 0x88

glabel func_80020460
/* 21060 80020460 3C08800A */  lui       $t0, 0x800a
/* 21064 80020464 25087420 */  addiu     $t0, $t0, 0x7420
/* 21068 80020468 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 2106C 8002046C 8D030000 */  lw        $v1, ($t0)
/* 21070 80020470 AFBF001C */  sw        $ra, 0x1c($sp)
/* 21074 80020474 3C188007 */  lui       $t8, 0x8007
/* 21078 80020478 246E0008 */  addiu     $t6, $v1, 8
/* 2107C 8002047C AFA40020 */  sw        $a0, 0x20($sp)
/* 21080 80020480 AFA50024 */  sw        $a1, 0x24($sp)
/* 21084 80020484 AFA60028 */  sw        $a2, 0x28($sp)
/* 21088 80020488 AFA7002C */  sw        $a3, 0x2c($sp)
/* 2108C 8002048C AD0E0000 */  sw        $t6, ($t0)
/* 21090 80020490 2718F518 */  addiu     $t8, $t8, -0xae8
/* 21094 80020494 3C0FDE00 */  lui       $t7, 0xde00
/* 21098 80020498 AC6F0000 */  sw        $t7, ($v1)
/* 2109C 8002049C 0C001E96 */  jal       func_80007A58
/* 210A0 800204A0 AC780004 */  sw        $t8, 4($v1)
/* 210A4 800204A4 10400008 */  beqz      $v0, .L800204C8
/* 210A8 800204A8 8FA40020 */  lw        $a0, 0x20($sp)
/* 210AC 800204AC 8FA40020 */  lw        $a0, 0x20($sp)
/* 210B0 800204B0 8FA50024 */  lw        $a1, 0x24($sp)
/* 210B4 800204B4 8FA60028 */  lw        $a2, 0x28($sp)
/* 210B8 800204B8 0C007E75 */  jal       func_8001F9D4
/* 210BC 800204BC 8FA7002C */  lw        $a3, 0x2c($sp)
/* 210C0 800204C0 10000006 */  b         .L800204DC
/* 210C4 800204C4 8FA60028 */  lw        $a2, 0x28($sp)
.L800204C8:
/* 210C8 800204C8 8FA50024 */  lw        $a1, 0x24($sp)
/* 210CC 800204CC 8FA60028 */  lw        $a2, 0x28($sp)
/* 210D0 800204D0 0C007F2B */  jal       func_8001FCAC
/* 210D4 800204D4 8FA7002C */  lw        $a3, 0x2c($sp)
/* 210D8 800204D8 8FA60028 */  lw        $a2, 0x28($sp)
.L800204DC:
/* 210DC 800204DC 8FA7002C */  lw        $a3, 0x2c($sp)
/* 210E0 800204E0 28C1000F */  slti      $at, $a2, 0xf
/* 210E4 800204E4 14200007 */  bnez      $at, .L80020504
/* 210E8 800204E8 28E1000F */  slti      $at, $a3, 0xf
/* 210EC 800204EC 14200005 */  bnez      $at, .L80020504
/* 210F0 800204F0 8FA40020 */  lw        $a0, 0x20($sp)
/* 210F4 800204F4 97B90032 */  lhu       $t9, 0x32($sp)
/* 210F8 800204F8 8FA50024 */  lw        $a1, 0x24($sp)
/* 210FC 800204FC 0C007F86 */  jal       func_8001FE18
/* 21100 80020500 AFB90010 */  sw        $t9, 0x10($sp)
.L80020504:
/* 21104 80020504 3C04800A */  lui       $a0, 0x800a
/* 21108 80020508 24847420 */  addiu     $a0, $a0, 0x7420
/* 2110C 8002050C 8C830000 */  lw        $v1, ($a0)
/* 21110 80020510 3C0B8007 */  lui       $t3, 0x8007
/* 21114 80020514 256BF630 */  addiu     $t3, $t3, -0x9d0
/* 21118 80020518 24690008 */  addiu     $t1, $v1, 8
/* 2111C 8002051C AC890000 */  sw        $t1, ($a0)
/* 21120 80020520 3C0ADE00 */  lui       $t2, 0xde00
/* 21124 80020524 AC6A0000 */  sw        $t2, ($v1)
/* 21128 80020528 AC6B0004 */  sw        $t3, 4($v1)
/* 2112C 8002052C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 21130 80020530 27BD0020 */  addiu     $sp, $sp, 0x20
/* 21134 80020534 03E00008 */  jr        $ra
/* 21138 80020538 00000000 */  nop       

glabel func_8002053C
/* 2113C 8002053C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 21140 80020540 AFB10020 */  sw        $s1, 0x20($sp)
/* 21144 80020544 AFB0001C */  sw        $s0, 0x1c($sp)
/* 21148 80020548 28C1000F */  slti      $at, $a2, 0xf
/* 2114C 8002054C 00C08025 */  or        $s0, $a2, $zero
/* 21150 80020550 00E08825 */  or        $s1, $a3, $zero
/* 21154 80020554 AFBF0024 */  sw        $ra, 0x24($sp)
/* 21158 80020558 AFA40028 */  sw        $a0, 0x28($sp)
/* 2115C 8002055C 1420001F */  bnez      $at, .L800205DC
/* 21160 80020560 AFA5002C */  sw        $a1, 0x2c($sp)
/* 21164 80020564 28E1000F */  slti      $at, $a3, 0xf
/* 21168 80020568 1420001C */  bnez      $at, .L800205DC
/* 2116C 8002056C 00000000 */  nop       
/* 21170 80020570 0C001E96 */  jal       func_80007A58
/* 21174 80020574 00000000 */  nop       
/* 21178 80020578 1040000E */  beqz      $v0, .L800205B4
/* 2117C 8002057C 8FA40028 */  lw        $a0, 0x28($sp)
/* 21180 80020580 8FA40028 */  lw        $a0, 0x28($sp)
/* 21184 80020584 8FA5002C */  lw        $a1, 0x2c($sp)
/* 21188 80020588 8FAE0038 */  lw        $t6, 0x38($sp)
/* 2118C 8002058C 8FAF003C */  lw        $t7, 0x3c($sp)
/* 21190 80020590 2606FFF4 */  addiu     $a2, $s0, -0xc
/* 21194 80020594 2627FFF4 */  addiu     $a3, $s1, -0xc
/* 21198 80020598 24840006 */  addiu     $a0, $a0, 6
/* 2119C 8002059C 24A50006 */  addiu     $a1, $a1, 6
/* 211A0 800205A0 AFAE0010 */  sw        $t6, 0x10($sp)
/* 211A4 800205A4 0C00802E */  jal       func_800200B8
/* 211A8 800205A8 AFAF0014 */  sw        $t7, 0x14($sp)
/* 211AC 800205AC 1000000B */  b         .L800205DC
/* 211B0 800205B0 00000000 */  nop       
.L800205B4:
/* 211B4 800205B4 8FA5002C */  lw        $a1, 0x2c($sp)
/* 211B8 800205B8 8FB80038 */  lw        $t8, 0x38($sp)
/* 211BC 800205BC 8FB9003C */  lw        $t9, 0x3c($sp)
/* 211C0 800205C0 24840002 */  addiu     $a0, $a0, 2
/* 211C4 800205C4 2606FFFC */  addiu     $a2, $s0, -4
/* 211C8 800205C8 2627FFFC */  addiu     $a3, $s1, -4
/* 211CC 800205CC 24A50002 */  addiu     $a1, $a1, 2
/* 211D0 800205D0 AFB80010 */  sw        $t8, 0x10($sp)
/* 211D4 800205D4 0C00802E */  jal       func_800200B8
/* 211D8 800205D8 AFB90014 */  sw        $t9, 0x14($sp)
.L800205DC:
/* 211DC 800205DC 3C04800A */  lui       $a0, 0x800a
/* 211E0 800205E0 24847420 */  addiu     $a0, $a0, 0x7420
/* 211E4 800205E4 8C830000 */  lw        $v1, ($a0)
/* 211E8 800205E8 3C0A8007 */  lui       $t2, 0x8007
/* 211EC 800205EC 254AF518 */  addiu     $t2, $t2, -0xae8
/* 211F0 800205F0 24680008 */  addiu     $t0, $v1, 8
/* 211F4 800205F4 AC880000 */  sw        $t0, ($a0)
/* 211F8 800205F8 3C09DE00 */  lui       $t1, 0xde00
/* 211FC 800205FC AC690000 */  sw        $t1, ($v1)
/* 21200 80020600 0C001E96 */  jal       func_80007A58
/* 21204 80020604 AC6A0004 */  sw        $t2, 4($v1)
/* 21208 80020608 10400008 */  beqz      $v0, .L8002062C
/* 2120C 8002060C 8FA40028 */  lw        $a0, 0x28($sp)
/* 21210 80020610 8FA40028 */  lw        $a0, 0x28($sp)
/* 21214 80020614 8FA5002C */  lw        $a1, 0x2c($sp)
/* 21218 80020618 02003025 */  or        $a2, $s0, $zero
/* 2121C 8002061C 0C007E75 */  jal       func_8001F9D4
/* 21220 80020620 02203825 */  or        $a3, $s1, $zero
/* 21224 80020624 10000005 */  b         .L8002063C
/* 21228 80020628 00000000 */  nop       
.L8002062C:
/* 2122C 8002062C 8FA5002C */  lw        $a1, 0x2c($sp)
/* 21230 80020630 02003025 */  or        $a2, $s0, $zero
/* 21234 80020634 0C007F2B */  jal       func_8001FCAC
/* 21238 80020638 02203825 */  or        $a3, $s1, $zero
.L8002063C:
/* 2123C 8002063C 3C04800A */  lui       $a0, 0x800a
/* 21240 80020640 24847420 */  addiu     $a0, $a0, 0x7420
/* 21244 80020644 8C830000 */  lw        $v1, ($a0)
/* 21248 80020648 3C0D8007 */  lui       $t5, 0x8007
/* 2124C 8002064C 25ADF630 */  addiu     $t5, $t5, -0x9d0
/* 21250 80020650 246B0008 */  addiu     $t3, $v1, 8
/* 21254 80020654 AC8B0000 */  sw        $t3, ($a0)
/* 21258 80020658 3C0CDE00 */  lui       $t4, 0xde00
/* 2125C 8002065C AC6C0000 */  sw        $t4, ($v1)
/* 21260 80020660 AC6D0004 */  sw        $t5, 4($v1)
/* 21264 80020664 8FBF0024 */  lw        $ra, 0x24($sp)
/* 21268 80020668 8FB10020 */  lw        $s1, 0x20($sp)
/* 2126C 8002066C 8FB0001C */  lw        $s0, 0x1c($sp)
/* 21270 80020670 03E00008 */  jr        $ra
/* 21274 80020674 27BD0028 */  addiu     $sp, $sp, 0x28

glabel func_80020678
/* 21278 80020678 3C08800A */  lui       $t0, 0x800a
/* 2127C 8002067C 25087420 */  addiu     $t0, $t0, 0x7420
/* 21280 80020680 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 21284 80020684 8D030000 */  lw        $v1, ($t0)
/* 21288 80020688 AFBF001C */  sw        $ra, 0x1c($sp)
/* 2128C 8002068C 3C188007 */  lui       $t8, 0x8007
/* 21290 80020690 246E0008 */  addiu     $t6, $v1, 8
/* 21294 80020694 AFA40020 */  sw        $a0, 0x20($sp)
/* 21298 80020698 AFA50024 */  sw        $a1, 0x24($sp)
/* 2129C 8002069C AFA60028 */  sw        $a2, 0x28($sp)
/* 212A0 800206A0 AFA7002C */  sw        $a3, 0x2c($sp)
/* 212A4 800206A4 AD0E0000 */  sw        $t6, ($t0)
/* 212A8 800206A8 2718F518 */  addiu     $t8, $t8, -0xae8
/* 212AC 800206AC 3C0FDE00 */  lui       $t7, 0xde00
/* 212B0 800206B0 AC6F0000 */  sw        $t7, ($v1)
/* 212B4 800206B4 0C001E96 */  jal       func_80007A58
/* 212B8 800206B8 AC780004 */  sw        $t8, 4($v1)
/* 212BC 800206BC 10400008 */  beqz      $v0, .L800206E0
/* 212C0 800206C0 8FA40020 */  lw        $a0, 0x20($sp)
/* 212C4 800206C4 8FA40020 */  lw        $a0, 0x20($sp)
/* 212C8 800206C8 8FA50024 */  lw        $a1, 0x24($sp)
/* 212CC 800206CC 8FA60028 */  lw        $a2, 0x28($sp)
/* 212D0 800206D0 0C007ED0 */  jal       func_8001FB40
/* 212D4 800206D4 8FA7002C */  lw        $a3, 0x2c($sp)
/* 212D8 800206D8 10000006 */  b         .L800206F4
/* 212DC 800206DC 8FA60028 */  lw        $a2, 0x28($sp)
.L800206E0:
/* 212E0 800206E0 8FA50024 */  lw        $a1, 0x24($sp)
/* 212E4 800206E4 8FA60028 */  lw        $a2, 0x28($sp)
/* 212E8 800206E8 0C007F2B */  jal       func_8001FCAC
/* 212EC 800206EC 8FA7002C */  lw        $a3, 0x2c($sp)
/* 212F0 800206F0 8FA60028 */  lw        $a2, 0x28($sp)
.L800206F4:
/* 212F4 800206F4 8FA7002C */  lw        $a3, 0x2c($sp)
/* 212F8 800206F8 28C1000F */  slti      $at, $a2, 0xf
/* 212FC 800206FC 14200007 */  bnez      $at, .L8002071C
/* 21300 80020700 28E1000F */  slti      $at, $a3, 0xf
/* 21304 80020704 14200005 */  bnez      $at, .L8002071C
/* 21308 80020708 8FA40020 */  lw        $a0, 0x20($sp)
/* 2130C 8002070C 97B90032 */  lhu       $t9, 0x32($sp)
/* 21310 80020710 8FA50024 */  lw        $a1, 0x24($sp)
/* 21314 80020714 0C007FDA */  jal       func_8001FF68
/* 21318 80020718 AFB90010 */  sw        $t9, 0x10($sp)
.L8002071C:
/* 2131C 8002071C 3C04800A */  lui       $a0, 0x800a
/* 21320 80020720 24847420 */  addiu     $a0, $a0, 0x7420
/* 21324 80020724 8C830000 */  lw        $v1, ($a0)
/* 21328 80020728 3C0B8007 */  lui       $t3, 0x8007
/* 2132C 8002072C 256BF630 */  addiu     $t3, $t3, -0x9d0
/* 21330 80020730 24690008 */  addiu     $t1, $v1, 8
/* 21334 80020734 AC890000 */  sw        $t1, ($a0)
/* 21338 80020738 3C0ADE00 */  lui       $t2, 0xde00
/* 2133C 8002073C AC6A0000 */  sw        $t2, ($v1)
/* 21340 80020740 AC6B0004 */  sw        $t3, 4($v1)
/* 21344 80020744 8FBF001C */  lw        $ra, 0x1c($sp)
/* 21348 80020748 27BD0020 */  addiu     $sp, $sp, 0x20
/* 2134C 8002074C 03E00008 */  jr        $ra
/* 21350 80020750 00000000 */  nop       

glabel func_80020754
/* 21354 80020754 3C08800A */  lui       $t0, 0x800a
/* 21358 80020758 25087420 */  addiu     $t0, $t0, 0x7420
/* 2135C 8002075C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 21360 80020760 8D030000 */  lw        $v1, ($t0)
/* 21364 80020764 AFBF0014 */  sw        $ra, 0x14($sp)
/* 21368 80020768 3C188007 */  lui       $t8, 0x8007
/* 2136C 8002076C 246E0008 */  addiu     $t6, $v1, 8
/* 21370 80020770 AFA40018 */  sw        $a0, 0x18($sp)
/* 21374 80020774 AFA5001C */  sw        $a1, 0x1c($sp)
/* 21378 80020778 AFA60020 */  sw        $a2, 0x20($sp)
/* 2137C 8002077C AFA70024 */  sw        $a3, 0x24($sp)
/* 21380 80020780 AD0E0000 */  sw        $t6, ($t0)
/* 21384 80020784 2718F518 */  addiu     $t8, $t8, -0xae8
/* 21388 80020788 3C0FDE00 */  lui       $t7, 0xde00
/* 2138C 8002078C AC6F0000 */  sw        $t7, ($v1)
/* 21390 80020790 0C001E96 */  jal       func_80007A58
/* 21394 80020794 AC780004 */  sw        $t8, 4($v1)
/* 21398 80020798 8FA40018 */  lw        $a0, 0x18($sp)
/* 2139C 8002079C 8FA5001C */  lw        $a1, 0x1c($sp)
/* 213A0 800207A0 8FA60020 */  lw        $a2, 0x20($sp)
/* 213A4 800207A4 10400005 */  beqz      $v0, .L800207BC
/* 213A8 800207A8 8FA70024 */  lw        $a3, 0x24($sp)
/* 213AC 800207AC 0C007E75 */  jal       func_8001F9D4
/* 213B0 800207B0 00000000 */  nop       
/* 213B4 800207B4 10000003 */  b         .L800207C4
/* 213B8 800207B8 00000000 */  nop       
.L800207BC:
/* 213BC 800207BC 0C007F2B */  jal       func_8001FCAC
/* 213C0 800207C0 00000000 */  nop       
.L800207C4:
/* 213C4 800207C4 3C04800A */  lui       $a0, 0x800a
/* 213C8 800207C8 24847420 */  addiu     $a0, $a0, 0x7420
/* 213CC 800207CC 8C830000 */  lw        $v1, ($a0)
/* 213D0 800207D0 3C0A8007 */  lui       $t2, 0x8007
/* 213D4 800207D4 254AF630 */  addiu     $t2, $t2, -0x9d0
/* 213D8 800207D8 24790008 */  addiu     $t9, $v1, 8
/* 213DC 800207DC AC990000 */  sw        $t9, ($a0)
/* 213E0 800207E0 3C09DE00 */  lui       $t1, 0xde00
/* 213E4 800207E4 AC690000 */  sw        $t1, ($v1)
/* 213E8 800207E8 AC6A0004 */  sw        $t2, 4($v1)
/* 213EC 800207EC 8FBF0014 */  lw        $ra, 0x14($sp)
/* 213F0 800207F0 27BD0018 */  addiu     $sp, $sp, 0x18
/* 213F4 800207F4 03E00008 */  jr        $ra
/* 213F8 800207F8 00000000 */  nop       

glabel func_800207FC
/* 213FC 800207FC 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 21400 80020800 AFBF0024 */  sw        $ra, 0x24($sp)
/* 21404 80020804 AFA40028 */  sw        $a0, 0x28($sp)
/* 21408 80020808 0C001E96 */  jal       func_80007A58
/* 2140C 8002080C AFA5002C */  sw        $a1, 0x2c($sp)
/* 21410 80020810 8FA90028 */  lw        $t1, 0x28($sp)
/* 21414 80020814 1040001B */  beqz      $v0, .L80020884
/* 21418 80020818 8FAA002C */  lw        $t2, 0x2c($sp)
/* 2141C 8002081C 3C08800A */  lui       $t0, 0x800a
/* 21420 80020820 25087420 */  addiu     $t0, $t0, 0x7420
/* 21424 80020824 8D020000 */  lw        $v0, ($t0)
/* 21428 80020828 3C188007 */  lui       $t8, 0x8007
/* 2142C 8002082C 2718F4E0 */  addiu     $t8, $t8, -0xb20
/* 21430 80020830 244E0008 */  addiu     $t6, $v0, 8
/* 21434 80020834 AD0E0000 */  sw        $t6, ($t0)
/* 21438 80020838 3C0FDE00 */  lui       $t7, 0xde00
/* 2143C 8002083C 3C190100 */  lui       $t9, 0x100
/* 21440 80020840 AC4F0000 */  sw        $t7, ($v0)
/* 21444 80020844 AC580004 */  sw        $t8, 4($v0)
/* 21448 80020848 273931D0 */  addiu     $t9, $t9, 0x31d0
/* 2144C 8002084C 00092400 */  sll       $a0, $t1, 0x10
/* 21450 80020850 000A2C00 */  sll       $a1, $t2, 0x10
/* 21454 80020854 240B0020 */  addiu     $t3, $zero, 0x20
/* 21458 80020858 3C0C0020 */  lui       $t4, 0x20
/* 2145C 8002085C AFAC0018 */  sw        $t4, 0x18($sp)
/* 21460 80020860 AFAB0014 */  sw        $t3, 0x14($sp)
/* 21464 80020864 00052C03 */  sra       $a1, $a1, 0x10
/* 21468 80020868 00042403 */  sra       $a0, $a0, 0x10
/* 2146C 8002086C AFB90010 */  sw        $t9, 0x10($sp)
/* 21470 80020870 24060020 */  addiu     $a2, $zero, 0x20
/* 21474 80020874 0C0071AB */  jal       func_8001C6AC
/* 21478 80020878 24070016 */  addiu     $a3, $zero, 0x16
/* 2147C 8002087C 1000001C */  b         .L800208F0
/* 21480 80020880 00000000 */  nop       
.L80020884:
/* 21484 80020884 3C02800A */  lui       $v0, 0x800a
/* 21488 80020888 8C427420 */  lw        $v0, 0x7420($v0)
/* 2148C 8002088C 3C01800A */  lui       $at, 0x800a
/* 21490 80020890 3C0F8007 */  lui       $t7, 0x8007
/* 21494 80020894 244D0008 */  addiu     $t5, $v0, 8
/* 21498 80020898 AC2D7420 */  sw        $t5, 0x7420($at)
/* 2149C 8002089C 25EFF5A0 */  addiu     $t7, $t7, -0xa60
/* 214A0 800208A0 3C0EDE00 */  lui       $t6, 0xde00
/* 214A4 800208A4 AC4E0000 */  sw        $t6, ($v0)
/* 214A8 800208A8 AC4F0004 */  sw        $t7, 4($v0)
/* 214AC 800208AC 3C180100 */  lui       $t8, 0x100
/* 214B0 800208B0 3C190100 */  lui       $t9, 0x100
/* 214B4 800208B4 27393890 */  addiu     $t9, $t9, 0x3890
/* 214B8 800208B8 27183750 */  addiu     $t8, $t8, 0x3750
/* 214BC 800208BC 00092400 */  sll       $a0, $t1, 0x10
/* 214C0 800208C0 000A2C00 */  sll       $a1, $t2, 0x10
/* 214C4 800208C4 240B0010 */  addiu     $t3, $zero, 0x10
/* 214C8 800208C8 3C0C0010 */  lui       $t4, 0x10
/* 214CC 800208CC AFAC001C */  sw        $t4, 0x1c($sp)
/* 214D0 800208D0 AFAB0018 */  sw        $t3, 0x18($sp)
/* 214D4 800208D4 00052C03 */  sra       $a1, $a1, 0x10
/* 214D8 800208D8 00042403 */  sra       $a0, $a0, 0x10
/* 214DC 800208DC AFB80010 */  sw        $t8, 0x10($sp)
/* 214E0 800208E0 AFB90014 */  sw        $t9, 0x14($sp)
/* 214E4 800208E4 2406000C */  addiu     $a2, $zero, 0xc
/* 214E8 800208E8 0C007558 */  jal       func_8001D560
/* 214EC 800208EC 2407000A */  addiu     $a3, $zero, 0xa
.L800208F0:
/* 214F0 800208F0 3C04800A */  lui       $a0, 0x800a
/* 214F4 800208F4 24847420 */  addiu     $a0, $a0, 0x7420
/* 214F8 800208F8 8C820000 */  lw        $v0, ($a0)
/* 214FC 800208FC 3C0F8007 */  lui       $t7, 0x8007
/* 21500 80020900 25EFF630 */  addiu     $t7, $t7, -0x9d0
/* 21504 80020904 244D0008 */  addiu     $t5, $v0, 8
/* 21508 80020908 AC8D0000 */  sw        $t5, ($a0)
/* 2150C 8002090C 3C0EDE00 */  lui       $t6, 0xde00
/* 21510 80020910 AC4E0000 */  sw        $t6, ($v0)
/* 21514 80020914 AC4F0004 */  sw        $t7, 4($v0)
/* 21518 80020918 8FBF0024 */  lw        $ra, 0x24($sp)
/* 2151C 8002091C 27BD0028 */  addiu     $sp, $sp, 0x28
/* 21520 80020920 03E00008 */  jr        $ra
/* 21524 80020924 00000000 */  nop       

glabel func_80020928
/* 21528 80020928 3C028007 */  lui       $v0, 0x8007
/* 2152C 8002092C 8442F7D0 */  lh        $v0, -0x830($v0)
/* 21530 80020930 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 21534 80020934 AFA40018 */  sw        $a0, 0x18($sp)
/* 21538 80020938 AFA5001C */  sw        $a1, 0x1c($sp)
/* 2153C 8002093C 00052C00 */  sll       $a1, $a1, 0x10
/* 21540 80020940 00042400 */  sll       $a0, $a0, 0x10
/* 21544 80020944 28410006 */  slti      $at, $v0, 6
/* 21548 80020948 00042403 */  sra       $a0, $a0, 0x10
/* 2154C 8002094C 00052C03 */  sra       $a1, $a1, 0x10
/* 21550 80020950 10200005 */  beqz      $at, .L80020968
/* 21554 80020954 AFBF0014 */  sw        $ra, 0x14($sp)
/* 21558 80020958 00822021 */  addu      $a0, $a0, $v0
/* 2155C 8002095C 00042400 */  sll       $a0, $a0, 0x10
/* 21560 80020960 10000005 */  b         .L80020978
/* 21564 80020964 00042403 */  sra       $a0, $a0, 0x10
.L80020968:
/* 21568 80020968 00822023 */  subu      $a0, $a0, $v0
/* 2156C 8002096C 2484000C */  addiu     $a0, $a0, 0xc
/* 21570 80020970 00042400 */  sll       $a0, $a0, 0x10
/* 21574 80020974 00042403 */  sra       $a0, $a0, 0x10
.L80020978:
/* 21578 80020978 0C0081FF */  jal       func_800207FC
/* 2157C 8002097C 00000000 */  nop       
/* 21580 80020980 3C028007 */  lui       $v0, 0x8007
/* 21584 80020984 8442F7D0 */  lh        $v0, -0x830($v0)
/* 21588 80020988 2401000C */  addiu     $at, $zero, 0xc
/* 2158C 8002098C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 21590 80020990 24420001 */  addiu     $v0, $v0, 1
/* 21594 80020994 0041001A */  div       $zero, $v0, $at
/* 21598 80020998 00001010 */  mfhi      $v0
/* 2159C 8002099C 00021400 */  sll       $v0, $v0, 0x10
/* 215A0 800209A0 00021403 */  sra       $v0, $v0, 0x10
/* 215A4 800209A4 3C018007 */  lui       $at, 0x8007
/* 215A8 800209A8 A422F7D0 */  sh        $v0, -0x830($at)
/* 215AC 800209AC 03E00008 */  jr        $ra
/* 215B0 800209B0 27BD0018 */  addiu     $sp, $sp, 0x18

glabel func_800209B4
/* 215B4 800209B4 AFA40000 */  sw        $a0, ($sp)
/* 215B8 800209B8 10C00004 */  beqz      $a2, .L800209CC
/* 215BC 800209BC AFA50004 */  sw        $a1, 4($sp)
/* 215C0 800209C0 3C0C0200 */  lui       $t4, 0x200
/* 215C4 800209C4 10000003 */  b         .L800209D4
/* 215C8 800209C8 258C4320 */  addiu     $t4, $t4, 0x4320
.L800209CC:
/* 215CC 800209CC 3C0C0200 */  lui       $t4, 0x200
/* 215D0 800209D0 258C4000 */  addiu     $t4, $t4, 0x4000
.L800209D4:
/* 215D4 800209D4 3C03800A */  lui       $v1, 0x800a
/* 215D8 800209D8 24637420 */  addiu     $v1, $v1, 0x7420
/* 215DC 800209DC 8C620000 */  lw        $v0, ($v1)
/* 215E0 800209E0 3C188007 */  lui       $t8, 0x8007
/* 215E4 800209E4 2718F4E0 */  addiu     $t8, $t8, -0xb20
/* 215E8 800209E8 244E0008 */  addiu     $t6, $v0, 8
/* 215EC 800209EC AC6E0000 */  sw        $t6, ($v1)
/* 215F0 800209F0 3C0FDE00 */  lui       $t7, 0xde00
/* 215F4 800209F4 AC4F0000 */  sw        $t7, ($v0)
/* 215F8 800209F8 AC580004 */  sw        $t8, 4($v0)
/* 215FC 800209FC 8C620000 */  lw        $v0, ($v1)
/* 21600 80020A00 3C0EFD10 */  lui       $t6, 0xfd10
/* 21604 80020A04 3C18F510 */  lui       $t8, 0xf510
/* 21608 80020A08 24590008 */  addiu     $t9, $v0, 8
/* 2160C 80020A0C AC790000 */  sw        $t9, ($v1)
/* 21610 80020A10 AC4C0004 */  sw        $t4, 4($v0)
/* 21614 80020A14 AC4E0000 */  sw        $t6, ($v0)
/* 21618 80020A18 8C620000 */  lw        $v0, ($v1)
/* 2161C 80020A1C 3C190708 */  lui       $t9, 0x708
/* 21620 80020A20 37390200 */  ori       $t9, $t9, 0x200
/* 21624 80020A24 244F0008 */  addiu     $t7, $v0, 8
/* 21628 80020A28 AC6F0000 */  sw        $t7, ($v1)
/* 2162C 80020A2C AC590004 */  sw        $t9, 4($v0)
/* 21630 80020A30 AC580000 */  sw        $t8, ($v0)
/* 21634 80020A34 8C620000 */  lw        $v0, ($v1)
/* 21638 80020A38 3C0FE600 */  lui       $t7, 0xe600
/* 2163C 80020A3C 3C19F300 */  lui       $t9, 0xf300
/* 21640 80020A40 244E0008 */  addiu     $t6, $v0, 8
/* 21644 80020A44 AC6E0000 */  sw        $t6, ($v1)
/* 21648 80020A48 AC400004 */  sw        $zero, 4($v0)
/* 2164C 80020A4C AC4F0000 */  sw        $t7, ($v0)
/* 21650 80020A50 8C620000 */  lw        $v0, ($v1)
/* 21654 80020A54 3C0E0718 */  lui       $t6, 0x718
/* 21658 80020A58 35CEF19A */  ori       $t6, $t6, 0xf19a
/* 2165C 80020A5C 24580008 */  addiu     $t8, $v0, 8
/* 21660 80020A60 AC780000 */  sw        $t8, ($v1)
/* 21664 80020A64 AC4E0004 */  sw        $t6, 4($v0)
/* 21668 80020A68 AC590000 */  sw        $t9, ($v0)
/* 2166C 80020A6C 8C620000 */  lw        $v0, ($v1)
/* 21670 80020A70 3C18E700 */  lui       $t8, 0xe700
/* 21674 80020A74 3C0EF510 */  lui       $t6, 0xf510
/* 21678 80020A78 244F0008 */  addiu     $t7, $v0, 8
/* 2167C 80020A7C AC6F0000 */  sw        $t7, ($v1)
/* 21680 80020A80 AC400004 */  sw        $zero, 4($v0)
/* 21684 80020A84 AC580000 */  sw        $t8, ($v0)
/* 21688 80020A88 8C620000 */  lw        $v0, ($v1)
/* 2168C 80020A8C 3C0F0008 */  lui       $t7, 8
/* 21690 80020A90 35EF0200 */  ori       $t7, $t7, 0x200
/* 21694 80020A94 24590008 */  addiu     $t9, $v0, 8
/* 21698 80020A98 AC790000 */  sw        $t9, ($v1)
/* 2169C 80020A9C 35CE0A00 */  ori       $t6, $t6, 0xa00
/* 216A0 80020AA0 AC4E0000 */  sw        $t6, ($v0)
/* 216A4 80020AA4 AC4F0004 */  sw        $t7, 4($v0)
/* 216A8 80020AA8 8C620000 */  lw        $v0, ($v1)
/* 216AC 80020AAC 3C0E0004 */  lui       $t6, 4
/* 216B0 80020AB0 35CEC04C */  ori       $t6, $t6, 0xc04c
/* 216B4 80020AB4 24580008 */  addiu     $t8, $v0, 8
/* 216B8 80020AB8 AC780000 */  sw        $t8, ($v1)
/* 216BC 80020ABC 3C19F200 */  lui       $t9, 0xf200
/* 216C0 80020AC0 AC590000 */  sw        $t9, ($v0)
/* 216C4 80020AC4 AC4E0004 */  sw        $t6, 4($v0)
/* 216C8 80020AC8 8C620000 */  lw        $v0, ($v1)
/* 216CC 80020ACC 8FB80000 */  lw        $t8, ($sp)
/* 216D0 80020AD0 3C01E400 */  lui       $at, 0xe400
/* 216D4 80020AD4 244F0008 */  addiu     $t7, $v0, 8
/* 216D8 80020AD8 27190013 */  addiu     $t9, $t8, 0x13
/* 216DC 80020ADC 00197080 */  sll       $t6, $t9, 2
/* 216E0 80020AE0 AC6F0000 */  sw        $t7, ($v1)
/* 216E4 80020AE4 31CF0FFF */  andi      $t7, $t6, 0xfff
/* 216E8 80020AE8 8FAE0004 */  lw        $t6, 4($sp)
/* 216EC 80020AEC 000FC300 */  sll       $t8, $t7, 0xc
/* 216F0 80020AF0 0301C825 */  or        $t9, $t8, $at
/* 216F4 80020AF4 25CF0013 */  addiu     $t7, $t6, 0x13
/* 216F8 80020AF8 000FC080 */  sll       $t8, $t7, 2
/* 216FC 80020AFC 330E0FFF */  andi      $t6, $t8, 0xfff
/* 21700 80020B00 032E7825 */  or        $t7, $t9, $t6
/* 21704 80020B04 AC4F0000 */  sw        $t7, ($v0)
/* 21708 80020B08 8FB80000 */  lw        $t8, ($sp)
/* 2170C 80020B0C 0018C880 */  sll       $t9, $t8, 2
/* 21710 80020B10 8FB80004 */  lw        $t8, 4($sp)
/* 21714 80020B14 332E0FFF */  andi      $t6, $t9, 0xfff
/* 21718 80020B18 000E7B00 */  sll       $t7, $t6, 0xc
/* 2171C 80020B1C 0018C880 */  sll       $t9, $t8, 2
/* 21720 80020B20 332E0FFF */  andi      $t6, $t9, 0xfff
/* 21724 80020B24 01EEC025 */  or        $t8, $t7, $t6
/* 21728 80020B28 AC580004 */  sw        $t8, 4($v0)
/* 2172C 80020B2C 8C620000 */  lw        $v0, ($v1)
/* 21730 80020B30 3C0FE100 */  lui       $t7, 0xe100
/* 21734 80020B34 3C18F100 */  lui       $t8, 0xf100
/* 21738 80020B38 24590008 */  addiu     $t9, $v0, 8
/* 2173C 80020B3C AC790000 */  sw        $t9, ($v1)
/* 21740 80020B40 AC400004 */  sw        $zero, 4($v0)
/* 21744 80020B44 AC4F0000 */  sw        $t7, ($v0)
/* 21748 80020B48 8C620000 */  lw        $v0, ($v1)
/* 2174C 80020B4C 3C191000 */  lui       $t9, 0x1000
/* 21750 80020B50 37390400 */  ori       $t9, $t9, 0x400
/* 21754 80020B54 244E0008 */  addiu     $t6, $v0, 8
/* 21758 80020B58 AC6E0000 */  sw        $t6, ($v1)
/* 2175C 80020B5C AC590004 */  sw        $t9, 4($v0)
/* 21760 80020B60 AC580000 */  sw        $t8, ($v0)
/* 21764 80020B64 8C620000 */  lw        $v0, ($v1)
/* 21768 80020B68 3C188007 */  lui       $t8, 0x8007
/* 2176C 80020B6C 2718F630 */  addiu     $t8, $t8, -0x9d0
/* 21770 80020B70 244F0008 */  addiu     $t7, $v0, 8
/* 21774 80020B74 AC6F0000 */  sw        $t7, ($v1)
/* 21778 80020B78 3C0EDE00 */  lui       $t6, 0xde00
/* 2177C 80020B7C AC4E0000 */  sw        $t6, ($v0)
/* 21780 80020B80 03E00008 */  jr        $ra
/* 21784 80020B84 AC580004 */  sw        $t8, 4($v0)

glabel func_80020B88
/* 21788 80020B88 27BDFF20 */  addiu     $sp, $sp, -0xe0
/* 2178C 80020B8C AFB00004 */  sw        $s0, 4($sp)
/* 21790 80020B90 8FB000F0 */  lw        $s0, 0xf0($sp)
/* 21794 80020B94 00071080 */  sll       $v0, $a3, 2
/* 21798 80020B98 00471023 */  subu      $v0, $v0, $a3
/* 2179C 80020B9C 0010C080 */  sll       $t8, $s0, 2
/* 217A0 80020BA0 0310C021 */  addu      $t8, $t8, $s0
/* 217A4 80020BA4 0018C040 */  sll       $t8, $t8, 1
/* 217A8 80020BA8 00021100 */  sll       $v0, $v0, 4
/* 217AC 80020BAC AFB2000C */  sw        $s2, 0xc($sp)
/* 217B0 80020BB0 24CFFFFC */  addiu     $t7, $a2, -4
/* 217B4 80020BB4 0058082A */  slt       $at, $v0, $t8
/* 217B8 80020BB8 00809025 */  or        $s2, $a0, $zero
/* 217BC 80020BBC AFB10008 */  sw        $s1, 8($sp)
/* 217C0 80020BC0 AFA500E4 */  sw        $a1, 0xe4($sp)
/* 217C4 80020BC4 AFA600E8 */  sw        $a2, 0xe8($sp)
/* 217C8 80020BC8 AFA700EC */  sw        $a3, 0xec($sp)
/* 217CC 80020BCC AFAF0024 */  sw        $t7, 0x24($sp)
/* 217D0 80020BD0 10200005 */  beqz      $at, .L80020BE8
/* 217D4 80020BD4 AFAF00D8 */  sw        $t7, 0xd8($sp)
/* 217D8 80020BD8 3C190100 */  lui       $t9, 0x100
/* 217DC 80020BDC 27393CF0 */  addiu     $t9, $t9, 0x3cf0
/* 217E0 80020BE0 1000000E */  b         .L80020C1C
/* 217E4 80020BE4 AFB900DC */  sw        $t9, 0xdc($sp)
.L80020BE8:
/* 217E8 80020BE8 001070C0 */  sll       $t6, $s0, 3
/* 217EC 80020BEC 01D07023 */  subu      $t6, $t6, $s0
/* 217F0 80020BF0 000E7080 */  sll       $t6, $t6, 2
/* 217F4 80020BF4 01D07023 */  subu      $t6, $t6, $s0
/* 217F8 80020BF8 004E082A */  slt       $at, $v0, $t6
/* 217FC 80020BFC 10200005 */  beqz      $at, .L80020C14
/* 21800 80020C00 3C180100 */  lui       $t8, 0x100
/* 21804 80020C04 3C0F0100 */  lui       $t7, 0x100
/* 21808 80020C08 25EF3C30 */  addiu     $t7, $t7, 0x3c30
/* 2180C 80020C0C 10000003 */  b         .L80020C1C
/* 21810 80020C10 AFAF00DC */  sw        $t7, 0xdc($sp)
.L80020C14:
/* 21814 80020C14 27183B70 */  addiu     $t8, $t8, 0x3b70
/* 21818 80020C18 AFB800DC */  sw        $t8, 0xdc($sp)
.L80020C1C:
/* 2181C 80020C1C 3C03800A */  lui       $v1, 0x800a
/* 21820 80020C20 24637420 */  addiu     $v1, $v1, 0x7420
/* 21824 80020C24 8C620000 */  lw        $v0, ($v1)
/* 21828 80020C28 8FAD00E4 */  lw        $t5, 0xe4($sp)
/* 2182C 80020C2C 3C0F8007 */  lui       $t7, 0x8007
/* 21830 80020C30 24590008 */  addiu     $t9, $v0, 8
/* 21834 80020C34 AC790000 */  sw        $t9, ($v1)
/* 21838 80020C38 25EFF4E0 */  addiu     $t7, $t7, -0xb20
/* 2183C 80020C3C 3C0EDE00 */  lui       $t6, 0xde00
/* 21840 80020C40 AC4E0000 */  sw        $t6, ($v0)
/* 21844 80020C44 AC4F0004 */  sw        $t7, 4($v0)
/* 21848 80020C48 8C620000 */  lw        $v0, ($v1)
/* 2184C 80020C4C 3C0E0100 */  lui       $t6, 0x100
/* 21850 80020C50 25CE3930 */  addiu     $t6, $t6, 0x3930
/* 21854 80020C54 24580008 */  addiu     $t8, $v0, 8
/* 21858 80020C58 AC780000 */  sw        $t8, ($v1)
/* 2185C 80020C5C 3C19FD10 */  lui       $t9, 0xfd10
/* 21860 80020C60 AC590000 */  sw        $t9, ($v0)
/* 21864 80020C64 AC4E0004 */  sw        $t6, 4($v0)
/* 21868 80020C68 8C620000 */  lw        $v0, ($v1)
/* 2186C 80020C6C 3C190708 */  lui       $t9, 0x708
/* 21870 80020C70 37390200 */  ori       $t9, $t9, 0x200
/* 21874 80020C74 244F0008 */  addiu     $t7, $v0, 8
/* 21878 80020C78 AC6F0000 */  sw        $t7, ($v1)
/* 2187C 80020C7C 3C18F510 */  lui       $t8, 0xf510
/* 21880 80020C80 AC580000 */  sw        $t8, ($v0)
/* 21884 80020C84 AC590004 */  sw        $t9, 4($v0)
/* 21888 80020C88 8C620000 */  lw        $v0, ($v1)
/* 2188C 80020C8C 3C0FE600 */  lui       $t7, 0xe600
/* 21890 80020C90 3C19F300 */  lui       $t9, 0xf300
/* 21894 80020C94 244E0008 */  addiu     $t6, $v0, 8
/* 21898 80020C98 AC6E0000 */  sw        $t6, ($v1)
/* 2189C 80020C9C AC400004 */  sw        $zero, 4($v0)
/* 218A0 80020CA0 AC4F0000 */  sw        $t7, ($v0)
/* 218A4 80020CA4 8C620000 */  lw        $v0, ($v1)
/* 218A8 80020CA8 3C0E0705 */  lui       $t6, 0x705
/* 218AC 80020CAC 35CEF400 */  ori       $t6, $t6, 0xf400
/* 218B0 80020CB0 24580008 */  addiu     $t8, $v0, 8
/* 218B4 80020CB4 AC780000 */  sw        $t8, ($v1)
/* 218B8 80020CB8 AC4E0004 */  sw        $t6, 4($v0)
/* 218BC 80020CBC AC590000 */  sw        $t9, ($v0)
/* 218C0 80020CC0 8C620000 */  lw        $v0, ($v1)
/* 218C4 80020CC4 3C18E700 */  lui       $t8, 0xe700
/* 218C8 80020CC8 3C0EF510 */  lui       $t6, 0xf510
/* 218CC 80020CCC 244F0008 */  addiu     $t7, $v0, 8
/* 218D0 80020CD0 AC6F0000 */  sw        $t7, ($v1)
/* 218D4 80020CD4 AC400004 */  sw        $zero, 4($v0)
/* 218D8 80020CD8 AC580000 */  sw        $t8, ($v0)
/* 218DC 80020CDC 8C620000 */  lw        $v0, ($v1)
/* 218E0 80020CE0 3C0F0008 */  lui       $t7, 8
/* 218E4 80020CE4 35EF0200 */  ori       $t7, $t7, 0x200
/* 218E8 80020CE8 24590008 */  addiu     $t9, $v0, 8
/* 218EC 80020CEC AC790000 */  sw        $t9, ($v1)
/* 218F0 80020CF0 35CE0400 */  ori       $t6, $t6, 0x400
/* 218F4 80020CF4 AC4E0000 */  sw        $t6, ($v0)
/* 218F8 80020CF8 AC4F0004 */  sw        $t7, 4($v0)
/* 218FC 80020CFC 8C620000 */  lw        $v0, ($v1)
/* 21900 80020D00 3C0E0001 */  lui       $t6, 1
/* 21904 80020D04 35CEC02C */  ori       $t6, $t6, 0xc02c
/* 21908 80020D08 24580008 */  addiu     $t8, $v0, 8
/* 2190C 80020D0C AC780000 */  sw        $t8, ($v1)
/* 21910 80020D10 3C19F200 */  lui       $t9, 0xf200
/* 21914 80020D14 AC590000 */  sw        $t9, ($v0)
/* 21918 80020D18 AC4E0004 */  sw        $t6, 4($v0)
/* 2191C 80020D1C 8C620000 */  lw        $v0, ($v1)
/* 21920 80020D20 26580001 */  addiu     $t8, $s2, 1
/* 21924 80020D24 0018C880 */  sll       $t9, $t8, 2
/* 21928 80020D28 244F0008 */  addiu     $t7, $v0, 8
/* 2192C 80020D2C AC6F0000 */  sw        $t7, ($v1)
/* 21930 80020D30 332E0FFF */  andi      $t6, $t9, 0xfff
/* 21934 80020D34 25B0000B */  addiu     $s0, $t5, 0xb
/* 21938 80020D38 00108080 */  sll       $s0, $s0, 2
/* 2193C 80020D3C 000E7B00 */  sll       $t7, $t6, 0xc
/* 21940 80020D40 3C01E400 */  lui       $at, 0xe400
/* 21944 80020D44 01E1C025 */  or        $t8, $t7, $at
/* 21948 80020D48 32100FFF */  andi      $s0, $s0, 0xfff
/* 2194C 80020D4C 0310C825 */  or        $t9, $t8, $s0
/* 21950 80020D50 00127080 */  sll       $t6, $s2, 2
/* 21954 80020D54 31CF0FFF */  andi      $t7, $t6, 0xfff
/* 21958 80020D58 000D8880 */  sll       $s1, $t5, 2
/* 2195C 80020D5C 32310FFF */  andi      $s1, $s1, 0xfff
/* 21960 80020D60 000FC300 */  sll       $t8, $t7, 0xc
/* 21964 80020D64 AC590000 */  sw        $t9, ($v0)
/* 21968 80020D68 0311C825 */  or        $t9, $t8, $s1
/* 2196C 80020D6C AC590004 */  sw        $t9, 4($v0)
/* 21970 80020D70 8C620000 */  lw        $v0, ($v1)
/* 21974 80020D74 3C0FE100 */  lui       $t7, 0xe100
/* 21978 80020D78 3C19F100 */  lui       $t9, 0xf100
/* 2197C 80020D7C 244E0008 */  addiu     $t6, $v0, 8
/* 21980 80020D80 AC6E0000 */  sw        $t6, ($v1)
/* 21984 80020D84 AC400004 */  sw        $zero, 4($v0)
/* 21988 80020D88 AC4F0000 */  sw        $t7, ($v0)
/* 2198C 80020D8C 8C620000 */  lw        $v0, ($v1)
/* 21990 80020D90 3C0E1000 */  lui       $t6, 0x1000
/* 21994 80020D94 35CE0400 */  ori       $t6, $t6, 0x400
/* 21998 80020D98 24580008 */  addiu     $t8, $v0, 8
/* 2199C 80020D9C AC780000 */  sw        $t8, ($v1)
/* 219A0 80020DA0 AC4E0004 */  sw        $t6, 4($v0)
/* 219A4 80020DA4 AC590000 */  sw        $t9, ($v0)
/* 219A8 80020DA8 8C620000 */  lw        $v0, ($v1)
/* 219AC 80020DAC 3C190100 */  lui       $t9, 0x100
/* 219B0 80020DB0 273939F0 */  addiu     $t9, $t9, 0x39f0
/* 219B4 80020DB4 244F0008 */  addiu     $t7, $v0, 8
/* 219B8 80020DB8 AC6F0000 */  sw        $t7, ($v1)
/* 219BC 80020DBC 3C18FD10 */  lui       $t8, 0xfd10
/* 219C0 80020DC0 AC580000 */  sw        $t8, ($v0)
/* 219C4 80020DC4 AC590004 */  sw        $t9, 4($v0)
/* 219C8 80020DC8 8C620000 */  lw        $v0, ($v1)
/* 219CC 80020DCC 3C180708 */  lui       $t8, 0x708
/* 219D0 80020DD0 37180200 */  ori       $t8, $t8, 0x200
/* 219D4 80020DD4 244E0008 */  addiu     $t6, $v0, 8
/* 219D8 80020DD8 AC6E0000 */  sw        $t6, ($v1)
/* 219DC 80020DDC 3C0FF510 */  lui       $t7, 0xf510
/* 219E0 80020DE0 AC4F0000 */  sw        $t7, ($v0)
/* 219E4 80020DE4 AC580004 */  sw        $t8, 4($v0)
/* 219E8 80020DE8 00403825 */  or        $a3, $v0, $zero
/* 219EC 80020DEC 8C620000 */  lw        $v0, ($v1)
/* 219F0 80020DF0 3C0EE600 */  lui       $t6, 0xe600
/* 219F4 80020DF4 3C18F300 */  lui       $t8, 0xf300
/* 219F8 80020DF8 24590008 */  addiu     $t9, $v0, 8
/* 219FC 80020DFC AC790000 */  sw        $t9, ($v1)
/* 21A00 80020E00 AC400004 */  sw        $zero, 4($v0)
/* 21A04 80020E04 AC4E0000 */  sw        $t6, ($v0)
/* 21A08 80020E08 00404025 */  or        $t0, $v0, $zero
/* 21A0C 80020E0C 8C620000 */  lw        $v0, ($v1)
/* 21A10 80020E10 3C190705 */  lui       $t9, 0x705
/* 21A14 80020E14 3739F400 */  ori       $t9, $t9, 0xf400
/* 21A18 80020E18 244F0008 */  addiu     $t7, $v0, 8
/* 21A1C 80020E1C AC6F0000 */  sw        $t7, ($v1)
/* 21A20 80020E20 AC590004 */  sw        $t9, 4($v0)
/* 21A24 80020E24 AC580000 */  sw        $t8, ($v0)
/* 21A28 80020E28 00404825 */  or        $t1, $v0, $zero
/* 21A2C 80020E2C 8C620000 */  lw        $v0, ($v1)
/* 21A30 80020E30 3C0FE700 */  lui       $t7, 0xe700
/* 21A34 80020E34 3C19F510 */  lui       $t9, 0xf510
/* 21A38 80020E38 244E0008 */  addiu     $t6, $v0, 8
/* 21A3C 80020E3C AC6E0000 */  sw        $t6, ($v1)
/* 21A40 80020E40 AC400004 */  sw        $zero, 4($v0)
/* 21A44 80020E44 AC4F0000 */  sw        $t7, ($v0)
/* 21A48 80020E48 00405025 */  or        $t2, $v0, $zero
/* 21A4C 80020E4C 8C620000 */  lw        $v0, ($v1)
/* 21A50 80020E50 3C0E0008 */  lui       $t6, 8
/* 21A54 80020E54 35CE0200 */  ori       $t6, $t6, 0x200
/* 21A58 80020E58 24580008 */  addiu     $t8, $v0, 8
/* 21A5C 80020E5C AC780000 */  sw        $t8, ($v1)
/* 21A60 80020E60 37390400 */  ori       $t9, $t9, 0x400
/* 21A64 80020E64 AC590000 */  sw        $t9, ($v0)
/* 21A68 80020E68 AC4E0004 */  sw        $t6, 4($v0)
/* 21A6C 80020E6C 00405825 */  or        $t3, $v0, $zero
/* 21A70 80020E70 8C620000 */  lw        $v0, ($v1)
/* 21A74 80020E74 3C190001 */  lui       $t9, 1
/* 21A78 80020E78 3739C02C */  ori       $t9, $t9, 0xc02c
/* 21A7C 80020E7C 244F0008 */  addiu     $t7, $v0, 8
/* 21A80 80020E80 AC6F0000 */  sw        $t7, ($v1)
/* 21A84 80020E84 3C18F200 */  lui       $t8, 0xf200
/* 21A88 80020E88 AC580000 */  sw        $t8, ($v0)
/* 21A8C 80020E8C AC590004 */  sw        $t9, 4($v0)
/* 21A90 80020E90 00406025 */  or        $t4, $v0, $zero
/* 21A94 80020E94 8C620000 */  lw        $v0, ($v1)
/* 21A98 80020E98 8FAF00D8 */  lw        $t7, 0xd8($sp)
/* 21A9C 80020E9C 244E0008 */  addiu     $t6, $v0, 8
/* 21AA0 80020EA0 024FC021 */  addu      $t8, $s2, $t7
/* 21AA4 80020EA4 AC6E0000 */  sw        $t6, ($v1)
/* 21AA8 80020EA8 270E0003 */  addiu     $t6, $t8, 3
/* 21AAC 80020EAC 000E7880 */  sll       $t7, $t6, 2
/* 21AB0 80020EB0 AFB80010 */  sw        $t8, 0x10($sp)
/* 21AB4 80020EB4 31F80FFF */  andi      $t8, $t7, 0xfff
/* 21AB8 80020EB8 0018CB00 */  sll       $t9, $t8, 0xc
/* 21ABC 80020EBC 03217025 */  or        $t6, $t9, $at
/* 21AC0 80020EC0 01D07825 */  or        $t7, $t6, $s0
/* 21AC4 80020EC4 AC4F0000 */  sw        $t7, ($v0)
/* 21AC8 80020EC8 8FB80010 */  lw        $t8, 0x10($sp)
/* 21ACC 80020ECC 8FA600F0 */  lw        $a2, 0xf0($sp)
/* 21AD0 80020ED0 AFA20084 */  sw        $v0, 0x84($sp)
/* 21AD4 80020ED4 27190002 */  addiu     $t9, $t8, 2
/* 21AD8 80020ED8 00197080 */  sll       $t6, $t9, 2
/* 21ADC 80020EDC 31CF0FFF */  andi      $t7, $t6, 0xfff
/* 21AE0 80020EE0 000FC300 */  sll       $t8, $t7, 0xc
/* 21AE4 80020EE4 0311C825 */  or        $t9, $t8, $s1
/* 21AE8 80020EE8 AC590004 */  sw        $t9, 4($v0)
/* 21AEC 80020EEC 00406825 */  or        $t5, $v0, $zero
/* 21AF0 80020EF0 8C620000 */  lw        $v0, ($v1)
/* 21AF4 80020EF4 3C18E100 */  lui       $t8, 0xe100
/* 21AF8 80020EF8 3C0EF100 */  lui       $t6, 0xf100
/* 21AFC 80020EFC 244F0008 */  addiu     $t7, $v0, 8
/* 21B00 80020F00 AC6F0000 */  sw        $t7, ($v1)
/* 21B04 80020F04 AC400004 */  sw        $zero, 4($v0)
/* 21B08 80020F08 AC580000 */  sw        $t8, ($v0)
/* 21B0C 80020F0C 00402025 */  or        $a0, $v0, $zero
/* 21B10 80020F10 8C620000 */  lw        $v0, ($v1)
/* 21B14 80020F14 3C0F1000 */  lui       $t7, 0x1000
/* 21B18 80020F18 35EF0400 */  ori       $t7, $t7, 0x400
/* 21B1C 80020F1C 24590008 */  addiu     $t9, $v0, 8
/* 21B20 80020F20 AC790000 */  sw        $t9, ($v1)
/* 21B24 80020F24 AC4F0004 */  sw        $t7, 4($v0)
/* 21B28 80020F28 AC4E0000 */  sw        $t6, ($v0)
/* 21B2C 80020F2C 8FB800EC */  lw        $t8, 0xec($sp)
/* 21B30 80020F30 8FAE0024 */  lw        $t6, 0x24($sp)
/* 21B34 80020F34 00402825 */  or        $a1, $v0, $zero
/* 21B38 80020F38 00D8C823 */  subu      $t9, $a2, $t8
/* 21B3C 80020F3C 032E0019 */  multu     $t9, $t6
/* 21B40 80020F40 8FB800E8 */  lw        $t8, 0xe8($sp)
/* 21B44 80020F44 00007812 */  mflo      $t7
/* 21B48 80020F48 00000000 */  nop       
/* 21B4C 80020F4C 00000000 */  nop       
/* 21B50 80020F50 01E6001A */  div       $zero, $t7, $a2
/* 21B54 80020F54 00006812 */  mflo      $t5
/* 21B58 80020F58 030DC823 */  subu      $t9, $t8, $t5
/* 21B5C 80020F5C 272EFFFC */  addiu     $t6, $t9, -4
/* 21B60 80020F60 14C00002 */  bnez      $a2, .L80020F6C
/* 21B64 80020F64 00000000 */  nop       
/* 21B68 80020F68 0007000D */  break     7
.L80020F6C:
/* 21B6C 80020F6C 2401FFFF */  addiu     $at, $zero, -1
/* 21B70 80020F70 14C10004 */  bne       $a2, $at, .L80020F84
/* 21B74 80020F74 3C018000 */  lui       $at, 0x8000
/* 21B78 80020F78 15E10002 */  bne       $t7, $at, .L80020F84
/* 21B7C 80020F7C 00000000 */  nop       
/* 21B80 80020F80 0006000D */  break     6
.L80020F84:
/* 21B84 80020F84 AFAE001C */  sw        $t6, 0x1c($sp)
/* 21B88 80020F88 19C00055 */  blez      $t6, .L800210E0
/* 21B8C 80020F8C 00000000 */  nop       
/* 21B90 80020F90 8C620000 */  lw        $v0, ($v1)
/* 21B94 80020F94 3C18FD10 */  lui       $t8, 0xfd10
/* 21B98 80020F98 3C01E400 */  lui       $at, 0xe400
/* 21B9C 80020F9C 244F0008 */  addiu     $t7, $v0, 8
/* 21BA0 80020FA0 AC6F0000 */  sw        $t7, ($v1)
/* 21BA4 80020FA4 AC580000 */  sw        $t8, ($v0)
/* 21BA8 80020FA8 8FB900DC */  lw        $t9, 0xdc($sp)
/* 21BAC 80020FAC 3C180708 */  lui       $t8, 0x708
/* 21BB0 80020FB0 37180200 */  ori       $t8, $t8, 0x200
/* 21BB4 80020FB4 AC590004 */  sw        $t9, 4($v0)
/* 21BB8 80020FB8 8C620000 */  lw        $v0, ($v1)
/* 21BBC 80020FBC 3C0FF510 */  lui       $t7, 0xf510
/* 21BC0 80020FC0 244E0008 */  addiu     $t6, $v0, 8
/* 21BC4 80020FC4 AC6E0000 */  sw        $t6, ($v1)
/* 21BC8 80020FC8 AC580004 */  sw        $t8, 4($v0)
/* 21BCC 80020FCC AC4F0000 */  sw        $t7, ($v0)
/* 21BD0 80020FD0 8C620000 */  lw        $v0, ($v1)
/* 21BD4 80020FD4 3C0EE600 */  lui       $t6, 0xe600
/* 21BD8 80020FD8 3C18F300 */  lui       $t8, 0xf300
/* 21BDC 80020FDC 24590008 */  addiu     $t9, $v0, 8
/* 21BE0 80020FE0 AC790000 */  sw        $t9, ($v1)
/* 21BE4 80020FE4 AC400004 */  sw        $zero, 4($v0)
/* 21BE8 80020FE8 AC4E0000 */  sw        $t6, ($v0)
/* 21BEC 80020FEC 8C620000 */  lw        $v0, ($v1)
/* 21BF0 80020FF0 3C190705 */  lui       $t9, 0x705
/* 21BF4 80020FF4 3739F400 */  ori       $t9, $t9, 0xf400
/* 21BF8 80020FF8 244F0008 */  addiu     $t7, $v0, 8
/* 21BFC 80020FFC AC6F0000 */  sw        $t7, ($v1)
/* 21C00 80021000 AC590004 */  sw        $t9, 4($v0)
/* 21C04 80021004 AC580000 */  sw        $t8, ($v0)
/* 21C08 80021008 8C620000 */  lw        $v0, ($v1)
/* 21C0C 8002100C 3C0FE700 */  lui       $t7, 0xe700
/* 21C10 80021010 3C19F510 */  lui       $t9, 0xf510
/* 21C14 80021014 244E0008 */  addiu     $t6, $v0, 8
/* 21C18 80021018 AC6E0000 */  sw        $t6, ($v1)
/* 21C1C 8002101C AC400004 */  sw        $zero, 4($v0)
/* 21C20 80021020 AC4F0000 */  sw        $t7, ($v0)
/* 21C24 80021024 8C620000 */  lw        $v0, ($v1)
/* 21C28 80021028 3C0E0008 */  lui       $t6, 8
/* 21C2C 8002102C 35CE0200 */  ori       $t6, $t6, 0x200
/* 21C30 80021030 24580008 */  addiu     $t8, $v0, 8
/* 21C34 80021034 AC780000 */  sw        $t8, ($v1)
/* 21C38 80021038 37390400 */  ori       $t9, $t9, 0x400
/* 21C3C 8002103C AC590000 */  sw        $t9, ($v0)
/* 21C40 80021040 AC4E0004 */  sw        $t6, 4($v0)
/* 21C44 80021044 8C620000 */  lw        $v0, ($v1)
/* 21C48 80021048 3C190001 */  lui       $t9, 1
/* 21C4C 8002104C 3739C02C */  ori       $t9, $t9, 0xc02c
/* 21C50 80021050 244F0008 */  addiu     $t7, $v0, 8
/* 21C54 80021054 AC6F0000 */  sw        $t7, ($v1)
/* 21C58 80021058 3C18F200 */  lui       $t8, 0xf200
/* 21C5C 8002105C AC580000 */  sw        $t8, ($v0)
/* 21C60 80021060 AC590004 */  sw        $t9, 4($v0)
/* 21C64 80021064 8C620000 */  lw        $v0, ($v1)
/* 21C68 80021068 8FAF001C */  lw        $t7, 0x1c($sp)
/* 21C6C 8002106C 244E0008 */  addiu     $t6, $v0, 8
/* 21C70 80021070 024FC021 */  addu      $t8, $s2, $t7
/* 21C74 80021074 27190001 */  addiu     $t9, $t8, 1
/* 21C78 80021078 AC6E0000 */  sw        $t6, ($v1)
/* 21C7C 8002107C 00197080 */  sll       $t6, $t9, 2
/* 21C80 80021080 31CF0FFF */  andi      $t7, $t6, 0xfff
/* 21C84 80021084 000FC300 */  sll       $t8, $t7, 0xc
/* 21C88 80021088 0301C825 */  or        $t9, $t8, $at
/* 21C8C 8002108C 03307025 */  or        $t6, $t9, $s0
/* 21C90 80021090 264F0002 */  addiu     $t7, $s2, 2
/* 21C94 80021094 000FC080 */  sll       $t8, $t7, 2
/* 21C98 80021098 33190FFF */  andi      $t9, $t8, 0xfff
/* 21C9C 8002109C AC4E0000 */  sw        $t6, ($v0)
/* 21CA0 800210A0 00197300 */  sll       $t6, $t9, 0xc
/* 21CA4 800210A4 01D17825 */  or        $t7, $t6, $s1
/* 21CA8 800210A8 AC4F0004 */  sw        $t7, 4($v0)
/* 21CAC 800210AC 8C620000 */  lw        $v0, ($v1)
/* 21CB0 800210B0 3C19E100 */  lui       $t9, 0xe100
/* 21CB4 800210B4 3C0FF100 */  lui       $t7, 0xf100
/* 21CB8 800210B8 24580008 */  addiu     $t8, $v0, 8
/* 21CBC 800210BC AC780000 */  sw        $t8, ($v1)
/* 21CC0 800210C0 AC400004 */  sw        $zero, 4($v0)
/* 21CC4 800210C4 AC590000 */  sw        $t9, ($v0)
/* 21CC8 800210C8 8C620000 */  lw        $v0, ($v1)
/* 21CCC 800210CC 24180400 */  addiu     $t8, $zero, 0x400
/* 21CD0 800210D0 244E0008 */  addiu     $t6, $v0, 8
/* 21CD4 800210D4 AC6E0000 */  sw        $t6, ($v1)
/* 21CD8 800210D8 AC580004 */  sw        $t8, 4($v0)
/* 21CDC 800210DC AC4F0000 */  sw        $t7, ($v0)
.L800210E0:
/* 21CE0 800210E0 19A00056 */  blez      $t5, .L8002123C
/* 21CE4 800210E4 3C0EFD10 */  lui       $t6, 0xfd10
/* 21CE8 800210E8 8C620000 */  lw        $v0, ($v1)
/* 21CEC 800210EC 3C0F0100 */  lui       $t7, 0x100
/* 21CF0 800210F0 25EF3AB0 */  addiu     $t7, $t7, 0x3ab0
/* 21CF4 800210F4 24590008 */  addiu     $t9, $v0, 8
/* 21CF8 800210F8 AC790000 */  sw        $t9, ($v1)
/* 21CFC 800210FC AC4F0004 */  sw        $t7, 4($v0)
/* 21D00 80021100 AC4E0000 */  sw        $t6, ($v0)
/* 21D04 80021104 8C620000 */  lw        $v0, ($v1)
/* 21D08 80021108 3C0E0708 */  lui       $t6, 0x708
/* 21D0C 8002110C 35CE0200 */  ori       $t6, $t6, 0x200
/* 21D10 80021110 24580008 */  addiu     $t8, $v0, 8
/* 21D14 80021114 AC780000 */  sw        $t8, ($v1)
/* 21D18 80021118 3C19F510 */  lui       $t9, 0xf510
/* 21D1C 8002111C AC590000 */  sw        $t9, ($v0)
/* 21D20 80021120 AC4E0004 */  sw        $t6, 4($v0)
/* 21D24 80021124 8C620000 */  lw        $v0, ($v1)
/* 21D28 80021128 3C18E600 */  lui       $t8, 0xe600
/* 21D2C 8002112C 3C0EF300 */  lui       $t6, 0xf300
/* 21D30 80021130 244F0008 */  addiu     $t7, $v0, 8
/* 21D34 80021134 AC6F0000 */  sw        $t7, ($v1)
/* 21D38 80021138 AC400004 */  sw        $zero, 4($v0)
/* 21D3C 8002113C AC580000 */  sw        $t8, ($v0)
/* 21D40 80021140 8C620000 */  lw        $v0, ($v1)
/* 21D44 80021144 3C0F0705 */  lui       $t7, 0x705
/* 21D48 80021148 35EFF400 */  ori       $t7, $t7, 0xf400
/* 21D4C 8002114C 24590008 */  addiu     $t9, $v0, 8
/* 21D50 80021150 AC790000 */  sw        $t9, ($v1)
/* 21D54 80021154 AC4F0004 */  sw        $t7, 4($v0)
/* 21D58 80021158 AC4E0000 */  sw        $t6, ($v0)
/* 21D5C 8002115C 8C620000 */  lw        $v0, ($v1)
/* 21D60 80021160 3C19E700 */  lui       $t9, 0xe700
/* 21D64 80021164 3C0FF510 */  lui       $t7, 0xf510
/* 21D68 80021168 24580008 */  addiu     $t8, $v0, 8
/* 21D6C 8002116C AC780000 */  sw        $t8, ($v1)
/* 21D70 80021170 AC400004 */  sw        $zero, 4($v0)
/* 21D74 80021174 AC590000 */  sw        $t9, ($v0)
/* 21D78 80021178 8C620000 */  lw        $v0, ($v1)
/* 21D7C 8002117C 3C180008 */  lui       $t8, 8
/* 21D80 80021180 37180200 */  ori       $t8, $t8, 0x200
/* 21D84 80021184 244E0008 */  addiu     $t6, $v0, 8
/* 21D88 80021188 AC6E0000 */  sw        $t6, ($v1)
/* 21D8C 8002118C 35EF0400 */  ori       $t7, $t7, 0x400
/* 21D90 80021190 AC4F0000 */  sw        $t7, ($v0)
/* 21D94 80021194 AC580004 */  sw        $t8, 4($v0)
/* 21D98 80021198 8C620000 */  lw        $v0, ($v1)
/* 21D9C 8002119C 3C0F0001 */  lui       $t7, 1
/* 21DA0 800211A0 35EFC02C */  ori       $t7, $t7, 0xc02c
/* 21DA4 800211A4 24590008 */  addiu     $t9, $v0, 8
/* 21DA8 800211A8 AC790000 */  sw        $t9, ($v1)
/* 21DAC 800211AC 3C0EF200 */  lui       $t6, 0xf200
/* 21DB0 800211B0 AC4E0000 */  sw        $t6, ($v0)
/* 21DB4 800211B4 AC4F0004 */  sw        $t7, 4($v0)
/* 21DB8 800211B8 8FB9001C */  lw        $t9, 0x1c($sp)
/* 21DBC 800211BC 8C620000 */  lw        $v0, ($v1)
/* 21DC0 800211C0 3C01E400 */  lui       $at, 0xe400
/* 21DC4 800211C4 02596021 */  addu      $t4, $s2, $t9
/* 21DC8 800211C8 018D7021 */  addu      $t6, $t4, $t5
/* 21DCC 800211CC 24580008 */  addiu     $t8, $v0, 8
/* 21DD0 800211D0 AC780000 */  sw        $t8, ($v1)
/* 21DD4 800211D4 25CF0001 */  addiu     $t7, $t6, 1
/* 21DD8 800211D8 000FC080 */  sll       $t8, $t7, 2
/* 21DDC 800211DC 33190FFF */  andi      $t9, $t8, 0xfff
/* 21DE0 800211E0 00197300 */  sll       $t6, $t9, 0xc
/* 21DE4 800211E4 01C17825 */  or        $t7, $t6, $at
/* 21DE8 800211E8 01F0C025 */  or        $t8, $t7, $s0
/* 21DEC 800211EC 25990002 */  addiu     $t9, $t4, 2
/* 21DF0 800211F0 00197080 */  sll       $t6, $t9, 2
/* 21DF4 800211F4 31CF0FFF */  andi      $t7, $t6, 0xfff
/* 21DF8 800211F8 AC580000 */  sw        $t8, ($v0)
/* 21DFC 800211FC 000FC300 */  sll       $t8, $t7, 0xc
/* 21E00 80021200 0311C825 */  or        $t9, $t8, $s1
/* 21E04 80021204 AC590004 */  sw        $t9, 4($v0)
/* 21E08 80021208 8C620000 */  lw        $v0, ($v1)
/* 21E0C 8002120C 3C0FE100 */  lui       $t7, 0xe100
/* 21E10 80021210 3C19F100 */  lui       $t9, 0xf100
/* 21E14 80021214 244E0008 */  addiu     $t6, $v0, 8
/* 21E18 80021218 AC6E0000 */  sw        $t6, ($v1)
/* 21E1C 8002121C AC400004 */  sw        $zero, 4($v0)
/* 21E20 80021220 AC4F0000 */  sw        $t7, ($v0)
/* 21E24 80021224 8C620000 */  lw        $v0, ($v1)
/* 21E28 80021228 240E0400 */  addiu     $t6, $zero, 0x400
/* 21E2C 8002122C 24580008 */  addiu     $t8, $v0, 8
/* 21E30 80021230 AC780000 */  sw        $t8, ($v1)
/* 21E34 80021234 AC4E0004 */  sw        $t6, 4($v0)
/* 21E38 80021238 AC590000 */  sw        $t9, ($v0)
.L8002123C:
/* 21E3C 8002123C 8C620000 */  lw        $v0, ($v1)
/* 21E40 80021240 3C198007 */  lui       $t9, 0x8007
/* 21E44 80021244 2739F630 */  addiu     $t9, $t9, -0x9d0
/* 21E48 80021248 244F0008 */  addiu     $t7, $v0, 8
/* 21E4C 8002124C AC6F0000 */  sw        $t7, ($v1)
/* 21E50 80021250 3C18DE00 */  lui       $t8, 0xde00
/* 21E54 80021254 AC580000 */  sw        $t8, ($v0)
/* 21E58 80021258 AC590004 */  sw        $t9, 4($v0)
/* 21E5C 8002125C 8FB2000C */  lw        $s2, 0xc($sp)
/* 21E60 80021260 8FB10008 */  lw        $s1, 8($sp)
/* 21E64 80021264 8FB00004 */  lw        $s0, 4($sp)
/* 21E68 80021268 03E00008 */  jr        $ra
/* 21E6C 8002126C 27BD00E0 */  addiu     $sp, $sp, 0xe0

glabel func_80021270
/* 21E70 80021270 27BDFF30 */  addiu     $sp, $sp, -0xd0
/* 21E74 80021274 00061080 */  sll       $v0, $a2, 2
/* 21E78 80021278 00077880 */  sll       $t7, $a3, 2
/* 21E7C 8002127C 01E77821 */  addu      $t7, $t7, $a3
/* 21E80 80021280 00461023 */  subu      $v0, $v0, $a2
/* 21E84 80021284 00021100 */  sll       $v0, $v0, 4
/* 21E88 80021288 000F7840 */  sll       $t7, $t7, 1
/* 21E8C 8002128C AFB2000C */  sw        $s2, 0xc($sp)
/* 21E90 80021290 004F082A */  slt       $at, $v0, $t7
/* 21E94 80021294 00809025 */  or        $s2, $a0, $zero
/* 21E98 80021298 AFB10008 */  sw        $s1, 8($sp)
/* 21E9C 8002129C AFB00004 */  sw        $s0, 4($sp)
/* 21EA0 800212A0 AFA500D4 */  sw        $a1, 0xd4($sp)
/* 21EA4 800212A4 AFA600D8 */  sw        $a2, 0xd8($sp)
/* 21EA8 800212A8 10200005 */  beqz      $at, .L800212C0
/* 21EAC 800212AC AFA700DC */  sw        $a3, 0xdc($sp)
/* 21EB0 800212B0 3C180100 */  lui       $t8, 0x100
/* 21EB4 800212B4 27183EF0 */  addiu     $t8, $t8, 0x3ef0
/* 21EB8 800212B8 1000000F */  b         .L800212F8
/* 21EBC 800212BC AFB800CC */  sw        $t8, 0xcc($sp)
.L800212C0:
/* 21EC0 800212C0 8FB900DC */  lw        $t9, 0xdc($sp)
/* 21EC4 800212C4 3C180100 */  lui       $t8, 0x100
/* 21EC8 800212C8 3C0F0100 */  lui       $t7, 0x100
/* 21ECC 800212CC 001970C0 */  sll       $t6, $t9, 3
/* 21ED0 800212D0 01D97023 */  subu      $t6, $t6, $t9
/* 21ED4 800212D4 000E7080 */  sll       $t6, $t6, 2
/* 21ED8 800212D8 01D97023 */  subu      $t6, $t6, $t9
/* 21EDC 800212DC 004E082A */  slt       $at, $v0, $t6
/* 21EE0 800212E0 10200004 */  beqz      $at, .L800212F4
/* 21EE4 800212E4 27183EA0 */  addiu     $t8, $t8, 0x3ea0
/* 21EE8 800212E8 25EF3EC8 */  addiu     $t7, $t7, 0x3ec8
/* 21EEC 800212EC 10000002 */  b         .L800212F8
/* 21EF0 800212F0 AFAF00CC */  sw        $t7, 0xcc($sp)
.L800212F4:
/* 21EF4 800212F4 AFB800CC */  sw        $t8, 0xcc($sp)
.L800212F8:
/* 21EF8 800212F8 3C03800A */  lui       $v1, 0x800a
/* 21EFC 800212FC 24637420 */  addiu     $v1, $v1, 0x7420
/* 21F00 80021300 8C620000 */  lw        $v0, ($v1)
/* 21F04 80021304 3C0F8007 */  lui       $t7, 0x8007
/* 21F08 80021308 25EFF518 */  addiu     $t7, $t7, -0xae8
/* 21F0C 8002130C 24590008 */  addiu     $t9, $v0, 8
/* 21F10 80021310 AC790000 */  sw        $t9, ($v1)
/* 21F14 80021314 3C0EDE00 */  lui       $t6, 0xde00
/* 21F18 80021318 AC4E0000 */  sw        $t6, ($v0)
/* 21F1C 8002131C AC4F0004 */  sw        $t7, 4($v0)
/* 21F20 80021320 8C620000 */  lw        $v0, ($v1)
/* 21F24 80021324 3C0E0100 */  lui       $t6, 0x100
/* 21F28 80021328 25CE3DB0 */  addiu     $t6, $t6, 0x3db0
/* 21F2C 8002132C 24580008 */  addiu     $t8, $v0, 8
/* 21F30 80021330 AC780000 */  sw        $t8, ($v1)
/* 21F34 80021334 3C19FD10 */  lui       $t9, 0xfd10
/* 21F38 80021338 AC590000 */  sw        $t9, ($v0)
/* 21F3C 8002133C AC4E0004 */  sw        $t6, 4($v0)
/* 21F40 80021340 8C620000 */  lw        $v0, ($v1)
/* 21F44 80021344 3C190708 */  lui       $t9, 0x708
/* 21F48 80021348 37390200 */  ori       $t9, $t9, 0x200
/* 21F4C 8002134C 244F0008 */  addiu     $t7, $v0, 8
/* 21F50 80021350 AC6F0000 */  sw        $t7, ($v1)
/* 21F54 80021354 3C18F510 */  lui       $t8, 0xf510
/* 21F58 80021358 AC580000 */  sw        $t8, ($v0)
/* 21F5C 8002135C AC590004 */  sw        $t9, 4($v0)
/* 21F60 80021360 8C620000 */  lw        $v0, ($v1)
/* 21F64 80021364 3C0FE600 */  lui       $t7, 0xe600
/* 21F68 80021368 3C19F300 */  lui       $t9, 0xf300
/* 21F6C 8002136C 244E0008 */  addiu     $t6, $v0, 8
/* 21F70 80021370 AC6E0000 */  sw        $t6, ($v1)
/* 21F74 80021374 AC400004 */  sw        $zero, 4($v0)
/* 21F78 80021378 AC4F0000 */  sw        $t7, ($v0)
/* 21F7C 8002137C 8C620000 */  lw        $v0, ($v1)
/* 21F80 80021380 3C0E0704 */  lui       $t6, 0x704
/* 21F84 80021384 35CEF200 */  ori       $t6, $t6, 0xf200
/* 21F88 80021388 24580008 */  addiu     $t8, $v0, 8
/* 21F8C 8002138C AC780000 */  sw        $t8, ($v1)
/* 21F90 80021390 AC4E0004 */  sw        $t6, 4($v0)
/* 21F94 80021394 AC590000 */  sw        $t9, ($v0)
/* 21F98 80021398 8C620000 */  lw        $v0, ($v1)
/* 21F9C 8002139C 3C18E700 */  lui       $t8, 0xe700
/* 21FA0 800213A0 3C0EF510 */  lui       $t6, 0xf510
/* 21FA4 800213A4 244F0008 */  addiu     $t7, $v0, 8
/* 21FA8 800213A8 AC6F0000 */  sw        $t7, ($v1)
/* 21FAC 800213AC AC400004 */  sw        $zero, 4($v0)
/* 21FB0 800213B0 AC580000 */  sw        $t8, ($v0)
/* 21FB4 800213B4 8C620000 */  lw        $v0, ($v1)
/* 21FB8 800213B8 3C0F0008 */  lui       $t7, 8
/* 21FBC 800213BC 35EF0200 */  ori       $t7, $t7, 0x200
/* 21FC0 800213C0 24590008 */  addiu     $t9, $v0, 8
/* 21FC4 800213C4 AC790000 */  sw        $t9, ($v1)
/* 21FC8 800213C8 35CE0800 */  ori       $t6, $t6, 0x800
/* 21FCC 800213CC AC4E0000 */  sw        $t6, ($v0)
/* 21FD0 800213D0 AC4F0004 */  sw        $t7, 4($v0)
/* 21FD4 800213D4 8C620000 */  lw        $v0, ($v1)
/* 21FD8 800213D8 3C0E0003 */  lui       $t6, 3
/* 21FDC 800213DC 35CEC010 */  ori       $t6, $t6, 0xc010
/* 21FE0 800213E0 24580008 */  addiu     $t8, $v0, 8
/* 21FE4 800213E4 AC780000 */  sw        $t8, ($v1)
/* 21FE8 800213E8 3C19F200 */  lui       $t9, 0xf200
/* 21FEC 800213EC AC590000 */  sw        $t9, ($v0)
/* 21FF0 800213F0 AC4E0004 */  sw        $t6, 4($v0)
/* 21FF4 800213F4 8FB000D4 */  lw        $s0, 0xd4($sp)
/* 21FF8 800213F8 264D0010 */  addiu     $t5, $s2, 0x10
/* 21FFC 800213FC 8C620000 */  lw        $v0, ($v1)
/* 22000 80021400 000D6880 */  sll       $t5, $t5, 2
/* 22004 80021404 31AD0FFF */  andi      $t5, $t5, 0xfff
/* 22008 80021408 26100005 */  addiu     $s0, $s0, 5
/* 2200C 8002140C 00108080 */  sll       $s0, $s0, 2
/* 22010 80021410 000D6B00 */  sll       $t5, $t5, 0xc
/* 22014 80021414 3C01E400 */  lui       $at, 0xe400
/* 22018 80021418 01A1C025 */  or        $t8, $t5, $at
/* 2201C 8002141C 32100FFF */  andi      $s0, $s0, 0xfff
/* 22020 80021420 244F0008 */  addiu     $t7, $v0, 8
/* 22024 80021424 AC6F0000 */  sw        $t7, ($v1)
/* 22028 80021428 0310C825 */  or        $t9, $t8, $s0
/* 2202C 8002142C AC590000 */  sw        $t9, ($v0)
/* 22030 80021430 8FB100D4 */  lw        $s1, 0xd4($sp)
/* 22034 80021434 00127080 */  sll       $t6, $s2, 2
/* 22038 80021438 31CF0FFF */  andi      $t7, $t6, 0xfff
/* 2203C 8002143C 00118880 */  sll       $s1, $s1, 2
/* 22040 80021440 32310FFF */  andi      $s1, $s1, 0xfff
/* 22044 80021444 000FC300 */  sll       $t8, $t7, 0xc
/* 22048 80021448 0311C825 */  or        $t9, $t8, $s1
/* 2204C 8002144C AC590004 */  sw        $t9, 4($v0)
/* 22050 80021450 8C620000 */  lw        $v0, ($v1)
/* 22054 80021454 AFAD0010 */  sw        $t5, 0x10($sp)
/* 22058 80021458 3C0FE100 */  lui       $t7, 0xe100
/* 2205C 8002145C 244E0008 */  addiu     $t6, $v0, 8
/* 22060 80021460 AC6E0000 */  sw        $t6, ($v1)
/* 22064 80021464 AC400004 */  sw        $zero, 4($v0)
/* 22068 80021468 AC4F0000 */  sw        $t7, ($v0)
/* 2206C 8002146C 8C620000 */  lw        $v0, ($v1)
/* 22070 80021470 3C0E0400 */  lui       $t6, 0x400
/* 22074 80021474 35CE0400 */  ori       $t6, $t6, 0x400
/* 22078 80021478 24580008 */  addiu     $t8, $v0, 8
/* 2207C 8002147C AC780000 */  sw        $t8, ($v1)
/* 22080 80021480 3C19F100 */  lui       $t9, 0xf100
/* 22084 80021484 AC590000 */  sw        $t9, ($v0)
/* 22088 80021488 AC4E0004 */  sw        $t6, 4($v0)
/* 2208C 8002148C 8C620000 */  lw        $v0, ($v1)
/* 22090 80021490 3C190100 */  lui       $t9, 0x100
/* 22094 80021494 27393E50 */  addiu     $t9, $t9, 0x3e50
/* 22098 80021498 244F0008 */  addiu     $t7, $v0, 8
/* 2209C 8002149C AC6F0000 */  sw        $t7, ($v1)
/* 220A0 800214A0 3C18FD10 */  lui       $t8, 0xfd10
/* 220A4 800214A4 AC580000 */  sw        $t8, ($v0)
/* 220A8 800214A8 AC590004 */  sw        $t9, 4($v0)
/* 220AC 800214AC 8C620000 */  lw        $v0, ($v1)
/* 220B0 800214B0 3C180708 */  lui       $t8, 0x708
/* 220B4 800214B4 37180200 */  ori       $t8, $t8, 0x200
/* 220B8 800214B8 244E0008 */  addiu     $t6, $v0, 8
/* 220BC 800214BC AC6E0000 */  sw        $t6, ($v1)
/* 220C0 800214C0 3C0FF510 */  lui       $t7, 0xf510
/* 220C4 800214C4 AC4F0000 */  sw        $t7, ($v0)
/* 220C8 800214C8 AC580004 */  sw        $t8, 4($v0)
/* 220CC 800214CC 8C620000 */  lw        $v0, ($v1)
/* 220D0 800214D0 3C0EE600 */  lui       $t6, 0xe600
/* 220D4 800214D4 3C18F300 */  lui       $t8, 0xf300
/* 220D8 800214D8 24590008 */  addiu     $t9, $v0, 8
/* 220DC 800214DC AC790000 */  sw        $t9, ($v1)
/* 220E0 800214E0 AC400004 */  sw        $zero, 4($v0)
/* 220E4 800214E4 AC4E0000 */  sw        $t6, ($v0)
/* 220E8 800214E8 00404025 */  or        $t0, $v0, $zero
/* 220EC 800214EC 8C620000 */  lw        $v0, ($v1)
/* 220F0 800214F0 3C190701 */  lui       $t9, 0x701
/* 220F4 800214F4 37393800 */  ori       $t9, $t9, 0x3800
/* 220F8 800214F8 244F0008 */  addiu     $t7, $v0, 8
/* 220FC 800214FC AC6F0000 */  sw        $t7, ($v1)
/* 22100 80021500 AC590004 */  sw        $t9, 4($v0)
/* 22104 80021504 AC580000 */  sw        $t8, ($v0)
/* 22108 80021508 00404825 */  or        $t1, $v0, $zero
/* 2210C 8002150C 8C620000 */  lw        $v0, ($v1)
/* 22110 80021510 3C0FE700 */  lui       $t7, 0xe700
/* 22114 80021514 3C19F510 */  lui       $t9, 0xf510
/* 22118 80021518 244E0008 */  addiu     $t6, $v0, 8
/* 2211C 8002151C AC6E0000 */  sw        $t6, ($v1)
/* 22120 80021520 AC400004 */  sw        $zero, 4($v0)
/* 22124 80021524 AC4F0000 */  sw        $t7, ($v0)
/* 22128 80021528 00405025 */  or        $t2, $v0, $zero
/* 2212C 8002152C 8C620000 */  lw        $v0, ($v1)
/* 22130 80021530 3C0E0008 */  lui       $t6, 8
/* 22134 80021534 35CE0200 */  ori       $t6, $t6, 0x200
/* 22138 80021538 24580008 */  addiu     $t8, $v0, 8
/* 2213C 8002153C AC780000 */  sw        $t8, ($v1)
/* 22140 80021540 37390200 */  ori       $t9, $t9, 0x200
/* 22144 80021544 AC590000 */  sw        $t9, ($v0)
/* 22148 80021548 AC4E0004 */  sw        $t6, 4($v0)
/* 2214C 8002154C 00405825 */  or        $t3, $v0, $zero
/* 22150 80021550 8C620000 */  lw        $v0, ($v1)
/* 22154 80021554 3419C010 */  ori       $t9, $zero, 0xc010
/* 22158 80021558 3C18F200 */  lui       $t8, 0xf200
/* 2215C 8002155C 244F0008 */  addiu     $t7, $v0, 8
/* 22160 80021560 AC6F0000 */  sw        $t7, ($v1)
/* 22164 80021564 AC590004 */  sw        $t9, 4($v0)
/* 22168 80021568 AC580000 */  sw        $t8, ($v0)
/* 2216C 8002156C 00406025 */  or        $t4, $v0, $zero
/* 22170 80021570 8C620000 */  lw        $v0, ($v1)
/* 22174 80021574 264F0041 */  addiu     $t7, $s2, 0x41
/* 22178 80021578 000FC080 */  sll       $t8, $t7, 2
/* 2217C 8002157C 244E0008 */  addiu     $t6, $v0, 8
/* 22180 80021580 AC6E0000 */  sw        $t6, ($v1)
/* 22184 80021584 33190FFF */  andi      $t9, $t8, 0xfff
/* 22188 80021588 00197300 */  sll       $t6, $t9, 0xc
/* 2218C 8002158C 01C17825 */  or        $t7, $t6, $at
/* 22190 80021590 01F0C025 */  or        $t8, $t7, $s0
/* 22194 80021594 26590040 */  addiu     $t9, $s2, 0x40
/* 22198 80021598 00197080 */  sll       $t6, $t9, 2
/* 2219C 8002159C AC580000 */  sw        $t8, ($v0)
/* 221A0 800215A0 31CF0FFF */  andi      $t7, $t6, 0xfff
/* 221A4 800215A4 000FC300 */  sll       $t8, $t7, 0xc
/* 221A8 800215A8 8FA600DC */  lw        $a2, 0xdc($sp)
/* 221AC 800215AC 0311C825 */  or        $t9, $t8, $s1
/* 221B0 800215B0 AFA20078 */  sw        $v0, 0x78($sp)
/* 221B4 800215B4 AC590004 */  sw        $t9, 4($v0)
/* 221B8 800215B8 00406825 */  or        $t5, $v0, $zero
/* 221BC 800215BC 8C620000 */  lw        $v0, ($v1)
/* 221C0 800215C0 3C18E100 */  lui       $t8, 0xe100
/* 221C4 800215C4 3C0EF100 */  lui       $t6, 0xf100
/* 221C8 800215C8 244F0008 */  addiu     $t7, $v0, 8
/* 221CC 800215CC AC6F0000 */  sw        $t7, ($v1)
/* 221D0 800215D0 AC400004 */  sw        $zero, 4($v0)
/* 221D4 800215D4 AC580000 */  sw        $t8, ($v0)
/* 221D8 800215D8 00402025 */  or        $a0, $v0, $zero
/* 221DC 800215DC 8C620000 */  lw        $v0, ($v1)
/* 221E0 800215E0 3C0F0400 */  lui       $t7, 0x400
/* 221E4 800215E4 35EF0400 */  ori       $t7, $t7, 0x400
/* 221E8 800215E8 24590008 */  addiu     $t9, $v0, 8
/* 221EC 800215EC AC790000 */  sw        $t9, ($v1)
/* 221F0 800215F0 AC4F0004 */  sw        $t7, 4($v0)
/* 221F4 800215F4 AC4E0000 */  sw        $t6, ($v0)
/* 221F8 800215F8 8FB800D8 */  lw        $t8, 0xd8($sp)
/* 221FC 800215FC 24070030 */  addiu     $a3, $zero, 0x30
/* 22200 80021600 00402825 */  or        $a1, $v0, $zero
/* 22204 80021604 00D8C823 */  subu      $t9, $a2, $t8
/* 22208 80021608 03270019 */  multu     $t9, $a3
/* 2220C 8002160C 00007012 */  mflo      $t6
/* 22210 80021610 00000000 */  nop       
/* 22214 80021614 00000000 */  nop       
/* 22218 80021618 01C6001A */  div       $zero, $t6, $a2
/* 2221C 8002161C 00006812 */  mflo      $t5
/* 22220 80021620 00ED7823 */  subu      $t7, $a3, $t5
/* 22224 80021624 14C00002 */  bnez      $a2, .L80021630
/* 22228 80021628 00000000 */  nop       
/* 2222C 8002162C 0007000D */  break     7
.L80021630:
/* 22230 80021630 2401FFFF */  addiu     $at, $zero, -1
/* 22234 80021634 14C10004 */  bne       $a2, $at, .L80021648
/* 22238 80021638 3C018000 */  lui       $at, 0x8000
/* 2223C 8002163C 15C10002 */  bne       $t6, $at, .L80021648
/* 22240 80021640 00000000 */  nop       
/* 22244 80021644 0006000D */  break     6
.L80021648:
/* 22248 80021648 AFAF0014 */  sw        $t7, 0x14($sp)
/* 2224C 8002164C 19E00051 */  blez      $t7, .L80021794
/* 22250 80021650 01E0C025 */  or        $t8, $t7, $zero
/* 22254 80021654 8C620000 */  lw        $v0, ($v1)
/* 22258 80021658 3C0EFD10 */  lui       $t6, 0xfd10
/* 2225C 8002165C 3C01E400 */  lui       $at, 0xe400
/* 22260 80021660 24590008 */  addiu     $t9, $v0, 8
/* 22264 80021664 AC790000 */  sw        $t9, ($v1)
/* 22268 80021668 AC4E0000 */  sw        $t6, ($v0)
/* 2226C 8002166C 8FAF00CC */  lw        $t7, 0xcc($sp)
/* 22270 80021670 3C0E0708 */  lui       $t6, 0x708
/* 22274 80021674 35CE0200 */  ori       $t6, $t6, 0x200
/* 22278 80021678 AC4F0004 */  sw        $t7, 4($v0)
/* 2227C 8002167C 8C620000 */  lw        $v0, ($v1)
/* 22280 80021680 3C19F510 */  lui       $t9, 0xf510
/* 22284 80021684 24580008 */  addiu     $t8, $v0, 8
/* 22288 80021688 AC780000 */  sw        $t8, ($v1)
/* 2228C 8002168C AC4E0004 */  sw        $t6, 4($v0)
/* 22290 80021690 AC590000 */  sw        $t9, ($v0)
/* 22294 80021694 8C620000 */  lw        $v0, ($v1)
/* 22298 80021698 3C18E600 */  lui       $t8, 0xe600
/* 2229C 8002169C 3C0EF300 */  lui       $t6, 0xf300
/* 222A0 800216A0 244F0008 */  addiu     $t7, $v0, 8
/* 222A4 800216A4 AC6F0000 */  sw        $t7, ($v1)
/* 222A8 800216A8 AC400004 */  sw        $zero, 4($v0)
/* 222AC 800216AC AC580000 */  sw        $t8, ($v0)
/* 222B0 800216B0 8C620000 */  lw        $v0, ($v1)
/* 222B4 800216B4 3C0F0701 */  lui       $t7, 0x701
/* 222B8 800216B8 35EF3800 */  ori       $t7, $t7, 0x3800
/* 222BC 800216BC 24590008 */  addiu     $t9, $v0, 8
/* 222C0 800216C0 AC790000 */  sw        $t9, ($v1)
/* 222C4 800216C4 AC4F0004 */  sw        $t7, 4($v0)
/* 222C8 800216C8 AC4E0000 */  sw        $t6, ($v0)
/* 222CC 800216CC 8C620000 */  lw        $v0, ($v1)
/* 222D0 800216D0 3C19E700 */  lui       $t9, 0xe700
/* 222D4 800216D4 3C0FF510 */  lui       $t7, 0xf510
/* 222D8 800216D8 24580008 */  addiu     $t8, $v0, 8
/* 222DC 800216DC AC780000 */  sw        $t8, ($v1)
/* 222E0 800216E0 AC400004 */  sw        $zero, 4($v0)
/* 222E4 800216E4 AC590000 */  sw        $t9, ($v0)
/* 222E8 800216E8 8C620000 */  lw        $v0, ($v1)
/* 222EC 800216EC 3C180008 */  lui       $t8, 8
/* 222F0 800216F0 37180200 */  ori       $t8, $t8, 0x200
/* 222F4 800216F4 244E0008 */  addiu     $t6, $v0, 8
/* 222F8 800216F8 AC6E0000 */  sw        $t6, ($v1)
/* 222FC 800216FC 35EF0200 */  ori       $t7, $t7, 0x200
/* 22300 80021700 AC4F0000 */  sw        $t7, ($v0)
/* 22304 80021704 AC580004 */  sw        $t8, 4($v0)
/* 22308 80021708 8C620000 */  lw        $v0, ($v1)
/* 2230C 8002170C 340FC010 */  ori       $t7, $zero, 0xc010
/* 22310 80021710 3C0EF200 */  lui       $t6, 0xf200
/* 22314 80021714 24590008 */  addiu     $t9, $v0, 8
/* 22318 80021718 AC790000 */  sw        $t9, ($v1)
/* 2231C 8002171C AC4F0004 */  sw        $t7, 4($v0)
/* 22320 80021720 AC4E0000 */  sw        $t6, ($v0)
/* 22324 80021724 8C620000 */  lw        $v0, ($v1)
/* 22328 80021728 8FB90014 */  lw        $t9, 0x14($sp)
/* 2232C 8002172C 24580008 */  addiu     $t8, $v0, 8
/* 22330 80021730 02597021 */  addu      $t6, $s2, $t9
/* 22334 80021734 25CF0010 */  addiu     $t7, $t6, 0x10
/* 22338 80021738 AC780000 */  sw        $t8, ($v1)
/* 2233C 8002173C 000FC080 */  sll       $t8, $t7, 2
/* 22340 80021740 33190FFF */  andi      $t9, $t8, 0xfff
/* 22344 80021744 00197300 */  sll       $t6, $t9, 0xc
/* 22348 80021748 01C17825 */  or        $t7, $t6, $at
/* 2234C 8002174C 01F0C025 */  or        $t8, $t7, $s0
/* 22350 80021750 AC580000 */  sw        $t8, ($v0)
/* 22354 80021754 8FB90010 */  lw        $t9, 0x10($sp)
/* 22358 80021758 3C18E100 */  lui       $t8, 0xe100
/* 2235C 8002175C 03317025 */  or        $t6, $t9, $s1
/* 22360 80021760 AC4E0004 */  sw        $t6, 4($v0)
/* 22364 80021764 8C620000 */  lw        $v0, ($v1)
/* 22368 80021768 3C0EF100 */  lui       $t6, 0xf100
/* 2236C 8002176C 244F0008 */  addiu     $t7, $v0, 8
/* 22370 80021770 AC6F0000 */  sw        $t7, ($v1)
/* 22374 80021774 AC400004 */  sw        $zero, 4($v0)
/* 22378 80021778 AC580000 */  sw        $t8, ($v0)
/* 2237C 8002177C 8C620000 */  lw        $v0, ($v1)
/* 22380 80021780 240F0400 */  addiu     $t7, $zero, 0x400
/* 22384 80021784 24590008 */  addiu     $t9, $v0, 8
/* 22388 80021788 AC790000 */  sw        $t9, ($v1)
/* 2238C 8002178C AC4F0004 */  sw        $t7, 4($v0)
/* 22390 80021790 AC4E0000 */  sw        $t6, ($v0)
.L80021794:
/* 22394 80021794 19A00055 */  blez      $t5, .L800218EC
/* 22398 80021798 3C19FD10 */  lui       $t9, 0xfd10
/* 2239C 8002179C 8C620000 */  lw        $v0, ($v1)
/* 223A0 800217A0 3C0E0100 */  lui       $t6, 0x100
/* 223A4 800217A4 25CE3E78 */  addiu     $t6, $t6, 0x3e78
/* 223A8 800217A8 24580008 */  addiu     $t8, $v0, 8
/* 223AC 800217AC AC780000 */  sw        $t8, ($v1)
/* 223B0 800217B0 AC4E0004 */  sw        $t6, 4($v0)
/* 223B4 800217B4 AC590000 */  sw        $t9, ($v0)
/* 223B8 800217B8 8C620000 */  lw        $v0, ($v1)
/* 223BC 800217BC 3C190708 */  lui       $t9, 0x708
/* 223C0 800217C0 37390200 */  ori       $t9, $t9, 0x200
/* 223C4 800217C4 244F0008 */  addiu     $t7, $v0, 8
/* 223C8 800217C8 AC6F0000 */  sw        $t7, ($v1)
/* 223CC 800217CC 3C18F510 */  lui       $t8, 0xf510
/* 223D0 800217D0 AC580000 */  sw        $t8, ($v0)
/* 223D4 800217D4 AC590004 */  sw        $t9, 4($v0)
/* 223D8 800217D8 8C620000 */  lw        $v0, ($v1)
/* 223DC 800217DC 3C0FE600 */  lui       $t7, 0xe600
/* 223E0 800217E0 3C19F300 */  lui       $t9, 0xf300
/* 223E4 800217E4 244E0008 */  addiu     $t6, $v0, 8
/* 223E8 800217E8 AC6E0000 */  sw        $t6, ($v1)
/* 223EC 800217EC AC400004 */  sw        $zero, 4($v0)
/* 223F0 800217F0 AC4F0000 */  sw        $t7, ($v0)
/* 223F4 800217F4 8C620000 */  lw        $v0, ($v1)
/* 223F8 800217F8 3C0E0701 */  lui       $t6, 0x701
/* 223FC 800217FC 35CE3800 */  ori       $t6, $t6, 0x3800
/* 22400 80021800 24580008 */  addiu     $t8, $v0, 8
/* 22404 80021804 AC780000 */  sw        $t8, ($v1)
/* 22408 80021808 AC4E0004 */  sw        $t6, 4($v0)
/* 2240C 8002180C AC590000 */  sw        $t9, ($v0)
/* 22410 80021810 8C620000 */  lw        $v0, ($v1)
/* 22414 80021814 3C18E700 */  lui       $t8, 0xe700
/* 22418 80021818 3C0EF510 */  lui       $t6, 0xf510
/* 2241C 8002181C 244F0008 */  addiu     $t7, $v0, 8
/* 22420 80021820 AC6F0000 */  sw        $t7, ($v1)
/* 22424 80021824 AC400004 */  sw        $zero, 4($v0)
/* 22428 80021828 AC580000 */  sw        $t8, ($v0)
/* 2242C 8002182C 8C620000 */  lw        $v0, ($v1)
/* 22430 80021830 3C0F0008 */  lui       $t7, 8
/* 22434 80021834 35EF0200 */  ori       $t7, $t7, 0x200
/* 22438 80021838 24590008 */  addiu     $t9, $v0, 8
/* 2243C 8002183C AC790000 */  sw        $t9, ($v1)
/* 22440 80021840 35CE0200 */  ori       $t6, $t6, 0x200
/* 22444 80021844 AC4E0000 */  sw        $t6, ($v0)
/* 22448 80021848 AC4F0004 */  sw        $t7, 4($v0)
/* 2244C 8002184C 8C620000 */  lw        $v0, ($v1)
/* 22450 80021850 340EC010 */  ori       $t6, $zero, 0xc010
/* 22454 80021854 3C19F200 */  lui       $t9, 0xf200
/* 22458 80021858 24580008 */  addiu     $t8, $v0, 8
/* 2245C 8002185C AC780000 */  sw        $t8, ($v1)
/* 22460 80021860 AC4E0004 */  sw        $t6, 4($v0)
/* 22464 80021864 AC590000 */  sw        $t9, ($v0)
/* 22468 80021868 8FB80014 */  lw        $t8, 0x14($sp)
/* 2246C 8002186C 8C620000 */  lw        $v0, ($v1)
/* 22470 80021870 3C01E400 */  lui       $at, 0xe400
/* 22474 80021874 02586021 */  addu      $t4, $s2, $t8
/* 22478 80021878 018DC821 */  addu      $t9, $t4, $t5
/* 2247C 8002187C 244F0008 */  addiu     $t7, $v0, 8
/* 22480 80021880 AC6F0000 */  sw        $t7, ($v1)
/* 22484 80021884 272E0010 */  addiu     $t6, $t9, 0x10
/* 22488 80021888 000E7880 */  sll       $t7, $t6, 2
/* 2248C 8002188C 31F80FFF */  andi      $t8, $t7, 0xfff
/* 22490 80021890 0018CB00 */  sll       $t9, $t8, 0xc
/* 22494 80021894 03217025 */  or        $t6, $t9, $at
/* 22498 80021898 01D07825 */  or        $t7, $t6, $s0
/* 2249C 8002189C 25980010 */  addiu     $t8, $t4, 0x10
/* 224A0 800218A0 0018C880 */  sll       $t9, $t8, 2
/* 224A4 800218A4 332E0FFF */  andi      $t6, $t9, 0xfff
/* 224A8 800218A8 AC4F0000 */  sw        $t7, ($v0)
/* 224AC 800218AC 000E7B00 */  sll       $t7, $t6, 0xc
/* 224B0 800218B0 01F1C025 */  or        $t8, $t7, $s1
/* 224B4 800218B4 AC580004 */  sw        $t8, 4($v0)
/* 224B8 800218B8 8C620000 */  lw        $v0, ($v1)
/* 224BC 800218BC 3C0EE100 */  lui       $t6, 0xe100
/* 224C0 800218C0 3C18F100 */  lui       $t8, 0xf100
/* 224C4 800218C4 24590008 */  addiu     $t9, $v0, 8
/* 224C8 800218C8 AC790000 */  sw        $t9, ($v1)
/* 224CC 800218CC AC400004 */  sw        $zero, 4($v0)
/* 224D0 800218D0 AC4E0000 */  sw        $t6, ($v0)
/* 224D4 800218D4 8C620000 */  lw        $v0, ($v1)
/* 224D8 800218D8 24190400 */  addiu     $t9, $zero, 0x400
/* 224DC 800218DC 244F0008 */  addiu     $t7, $v0, 8
/* 224E0 800218E0 AC6F0000 */  sw        $t7, ($v1)
/* 224E4 800218E4 AC590004 */  sw        $t9, 4($v0)
/* 224E8 800218E8 AC580000 */  sw        $t8, ($v0)
.L800218EC:
/* 224EC 800218EC 8C620000 */  lw        $v0, ($v1)
/* 224F0 800218F0 3C188007 */  lui       $t8, 0x8007
/* 224F4 800218F4 2718F630 */  addiu     $t8, $t8, -0x9d0
/* 224F8 800218F8 244E0008 */  addiu     $t6, $v0, 8
/* 224FC 800218FC AC6E0000 */  sw        $t6, ($v1)
/* 22500 80021900 3C0FDE00 */  lui       $t7, 0xde00
/* 22504 80021904 AC4F0000 */  sw        $t7, ($v0)
/* 22508 80021908 AC580004 */  sw        $t8, 4($v0)
/* 2250C 8002190C 8FB2000C */  lw        $s2, 0xc($sp)
/* 22510 80021910 8FB10008 */  lw        $s1, 8($sp)
/* 22514 80021914 8FB00004 */  lw        $s0, 4($sp)
/* 22518 80021918 03E00008 */  jr        $ra
/* 2251C 8002191C 27BD00D0 */  addiu     $sp, $sp, 0xd0

glabel func_80021920
/* 22520 80021920 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 22524 80021924 AFBF0024 */  sw        $ra, 0x24($sp)
/* 22528 80021928 AFB30020 */  sw        $s3, 0x20($sp)
/* 2252C 8002192C AFB2001C */  sw        $s2, 0x1c($sp)
/* 22530 80021930 AFB10018 */  sw        $s1, 0x18($sp)
/* 22534 80021934 AFB00014 */  sw        $s0, 0x14($sp)
/* 22538 80021938 0C00B56B */  jal       func_8002D5AC
/* 2253C 8002193C 24040024 */  addiu     $a0, $zero, 0x24
/* 22540 80021940 3C118007 */  lui       $s1, 0x8007
/* 22544 80021944 00409025 */  or        $s2, $v0, $zero
/* 22548 80021948 2631FF00 */  addiu     $s1, $s1, -0x100
/* 2254C 8002194C 00008025 */  or        $s0, $zero, $zero
/* 22550 80021950 24130097 */  addiu     $s3, $zero, 0x97
.L80021954:
/* 22554 80021954 00002025 */  or        $a0, $zero, $zero
/* 22558 80021958 00002825 */  or        $a1, $zero, $zero
/* 2255C 8002195C 02403025 */  or        $a2, $s2, $zero
/* 22560 80021960 0C00B5F0 */  jal       func_8002D7C0
/* 22564 80021964 02003825 */  or        $a3, $s0, $zero
/* 22568 80021968 8E240004 */  lw        $a0, 4($s1)
/* 2256C 8002196C 0C00294C */  jal       func_8000A530
/* 22570 80021970 00402825 */  or        $a1, $v0, $zero
/* 22574 80021974 26100001 */  addiu     $s0, $s0, 1
/* 22578 80021978 1613FFF6 */  bne       $s0, $s3, .L80021954
/* 2257C 8002197C 2631001C */  addiu     $s1, $s1, 0x1c
/* 22580 80021980 8FBF0024 */  lw        $ra, 0x24($sp)
/* 22584 80021984 8FB00014 */  lw        $s0, 0x14($sp)
/* 22588 80021988 8FB10018 */  lw        $s1, 0x18($sp)
/* 2258C 8002198C 8FB2001C */  lw        $s2, 0x1c($sp)
/* 22590 80021990 8FB30020 */  lw        $s3, 0x20($sp)
/* 22594 80021994 03E00008 */  jr        $ra
/* 22598 80021998 27BD0028 */  addiu     $sp, $sp, 0x28
/* 2259C 8002199C 00000000 */  nop       

glabel func_800219A0
/* 225A0 800219A0 308E0007 */  andi      $t6, $a0, 7
/* 225A4 800219A4 11C00003 */  beqz      $t6, .L800219B4
/* 225A8 800219A8 308F0008 */  andi      $t7, $a0, 8
/* 225AC 800219AC 03E00008 */  jr        $ra
/* 225B0 800219B0 24020002 */  addiu     $v0, $zero, 2
.L800219B4:
/* 225B4 800219B4 11E00003 */  beqz      $t7, .L800219C4
/* 225B8 800219B8 30980010 */  andi      $t8, $a0, 0x10
/* 225BC 800219BC 03E00008 */  jr        $ra
/* 225C0 800219C0 24020003 */  addiu     $v0, $zero, 3
.L800219C4:
/* 225C4 800219C4 13000003 */  beqz      $t8, .L800219D4
/* 225C8 800219C8 30990020 */  andi      $t9, $a0, 0x20
/* 225CC 800219CC 03E00008 */  jr        $ra
/* 225D0 800219D0 24020004 */  addiu     $v0, $zero, 4
.L800219D4:
/* 225D4 800219D4 13200003 */  beqz      $t9, .L800219E4
/* 225D8 800219D8 30880040 */  andi      $t0, $a0, 0x40
/* 225DC 800219DC 03E00008 */  jr        $ra
/* 225E0 800219E0 24020005 */  addiu     $v0, $zero, 5
.L800219E4:
/* 225E4 800219E4 11000003 */  beqz      $t0, .L800219F4
/* 225E8 800219E8 00001825 */  or        $v1, $zero, $zero
/* 225EC 800219EC 03E00008 */  jr        $ra
/* 225F0 800219F0 24020006 */  addiu     $v0, $zero, 6
.L800219F4:
/* 225F4 800219F4 03E00008 */  jr        $ra
/* 225F8 800219F8 00601025 */  or        $v0, $v1, $zero

glabel func_800219FC
/* 225FC 800219FC 2881001B */  slti      $at, $a0, 0x1b
/* 22600 80021A00 54200004 */  bnel      $at, $zero, .L80021A14
/* 22604 80021A04 28810014 */  slti      $at, $a0, 0x14
/* 22608 80021A08 03E00008 */  jr        $ra
/* 2260C 80021A0C 00001025 */  or        $v0, $zero, $zero
/* 22610 80021A10 28810014 */  slti      $at, $a0, 0x14
.L80021A14:
/* 22614 80021A14 14200002 */  bnez      $at, .L80021A20
/* 22618 80021A18 00000000 */  nop       
/* 2261C 80021A1C 2484FFF5 */  addiu     $a0, $a0, -0xb
.L80021A20:
/* 22620 80021A20 03E00008 */  jr        $ra
/* 22624 80021A24 00801025 */  or        $v0, $a0, $zero
/* 22628 80021A28 00000000 */  nop       
/* 2262C 80021A2C 00000000 */  nop       
