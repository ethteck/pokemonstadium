.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005B6A0
/* 5C2A0 8005B6A0 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 5C2A4 8005B6A4 AFB00020 */  sw        $s0, 0x20($sp)
/* 5C2A8 8005B6A8 3C108008 */  lui       $s0, 0x8008
/* 5C2AC 8005B6AC 2610A860 */  addiu     $s0, $s0, -0x57a0
/* 5C2B0 8005B6B0 8E0E0000 */  lw        $t6, ($s0)
/* 5C2B4 8005B6B4 AFBF0024 */  sw        $ra, 0x24($sp)
/* 5C2B8 8005B6B8 AFA40030 */  sw        $a0, 0x30($sp)
/* 5C2BC 8005B6BC AFA50034 */  sw        $a1, 0x34($sp)
/* 5C2C0 8005B6C0 15C0004E */  bnez      $t6, .L8005B7FC
/* 5C2C4 8005B6C4 AFA60038 */  sw        $a2, 0x38($sp)
/* 5C2C8 8005B6C8 00A02025 */  or        $a0, $a1, $zero
/* 5C2CC 8005B6CC 00C02825 */  or        $a1, $a2, $zero
/* 5C2D0 8005B6D0 0C0178E8 */  jal       func_8005E3A0
/* 5C2D4 8005B6D4 00E03025 */  or        $a2, $a3, $zero
/* 5C2D8 8005B6D8 3C048010 */  lui       $a0, 0x8010
/* 5C2DC 8005B6DC 3C058010 */  lui       $a1, 0x8010
/* 5C2E0 8005B6E0 24A536E8 */  addiu     $a1, $a1, 0x36e8
/* 5C2E4 8005B6E4 248436D0 */  addiu     $a0, $a0, 0x36d0
/* 5C2E8 8005B6E8 0C0178E8 */  jal       func_8005E3A0
/* 5C2EC 8005B6EC 24060001 */  addiu     $a2, $zero, 1
/* 5C2F0 8005B6F0 3C0F8008 */  lui       $t7, 0x8008
/* 5C2F4 8005B6F4 8DEF9610 */  lw        $t7, -0x69f0($t7)
/* 5C2F8 8005B6F8 15E00003 */  bnez      $t7, .L8005B708
/* 5C2FC 8005B6FC 00000000 */  nop       
/* 5C300 8005B700 0C0159FC */  jal       func_800567F0
/* 5C304 8005B704 00000000 */  nop       
.L8005B708:
/* 5C308 8005B708 3C058010 */  lui       $a1, 0x8010
/* 5C30C 8005B70C 3C062222 */  lui       $a2, 0x2222
/* 5C310 8005B710 34C62222 */  ori       $a2, $a2, 0x2222
/* 5C314 8005B714 24A536D0 */  addiu     $a1, $a1, 0x36d0
/* 5C318 8005B718 0C01737C */  jal       func_8005CDF0
/* 5C31C 8005B71C 24040008 */  addiu     $a0, $zero, 8
/* 5C320 8005B720 2418FFFF */  addiu     $t8, $zero, -1
/* 5C324 8005B724 AFB80028 */  sw        $t8, 0x28($sp)
/* 5C328 8005B728 0C017A1C */  jal       func_8005E870
/* 5C32C 8005B72C 00002025 */  or        $a0, $zero, $zero
/* 5C330 8005B730 8FB90030 */  lw        $t9, 0x30($sp)
/* 5C334 8005B734 00002025 */  or        $a0, $zero, $zero
/* 5C338 8005B738 0059082A */  slt       $at, $v0, $t9
/* 5C33C 8005B73C 10200003 */  beqz      $at, .L8005B74C
/* 5C340 8005B740 03202825 */  or        $a1, $t9, $zero
/* 5C344 8005B744 0C0179E4 */  jal       func_8005E790
/* 5C348 8005B748 AFA20028 */  sw        $v0, 0x28($sp)
.L8005B74C:
/* 5C34C 8005B74C 0C018AA4 */  jal       func_80062A90
/* 5C350 8005B750 00000000 */  nop       
/* 5C354 8005B754 8FA90034 */  lw        $t1, 0x34($sp)
/* 5C358 8005B758 8FAF0030 */  lw        $t7, 0x30($sp)
/* 5C35C 8005B75C 3C048010 */  lui       $a0, 0x8010
/* 5C360 8005B760 3C0A8010 */  lui       $t2, 0x8010
/* 5C364 8005B764 3C0B8010 */  lui       $t3, 0x8010
/* 5C368 8005B768 3C0C8006 */  lui       $t4, 0x8006
/* 5C36C 8005B76C 3C0D8006 */  lui       $t5, 0x8006
/* 5C370 8005B770 3C0E8010 */  lui       $t6, 0x8010
/* 5C374 8005B774 24842520 */  addiu     $a0, $a0, 0x2520
/* 5C378 8005B778 24080001 */  addiu     $t0, $zero, 1
/* 5C37C 8005B77C 254A36D0 */  addiu     $t2, $t2, 0x36d0
/* 5C380 8005B780 256B20E8 */  addiu     $t3, $t3, 0x20e8
/* 5C384 8005B784 258CBC30 */  addiu     $t4, $t4, -0x43d0
/* 5C388 8005B788 25ADEA40 */  addiu     $t5, $t5, -0x15c0
/* 5C38C 8005B78C 25CE36D0 */  addiu     $t6, $t6, 0x36d0
/* 5C390 8005B790 3C068006 */  lui       $a2, 0x8006
/* 5C394 8005B794 AFA2002C */  sw        $v0, 0x2c($sp)
/* 5C398 8005B798 AE080000 */  sw        $t0, ($s0)
/* 5C39C 8005B79C AE040004 */  sw        $a0, 4($s0)
/* 5C3A0 8005B7A0 AE0A000C */  sw        $t2, 0xc($s0)
/* 5C3A4 8005B7A4 AE0B0010 */  sw        $t3, 0x10($s0)
/* 5C3A8 8005B7A8 AE0C0014 */  sw        $t4, 0x14($s0)
/* 5C3AC 8005B7AC AE0D0018 */  sw        $t5, 0x18($s0)
/* 5C3B0 8005B7B0 24C6B820 */  addiu     $a2, $a2, -0x47e0
/* 5C3B4 8005B7B4 AFAE0010 */  sw        $t6, 0x10($sp)
/* 5C3B8 8005B7B8 00002825 */  or        $a1, $zero, $zero
/* 5C3BC 8005B7BC 02003825 */  or        $a3, $s0, $zero
/* 5C3C0 8005B7C0 AE090008 */  sw        $t1, 8($s0)
/* 5C3C4 8005B7C4 0C016330 */  jal       func_80058CC0
/* 5C3C8 8005B7C8 AFAF0014 */  sw        $t7, 0x14($sp)
/* 5C3CC 8005B7CC 3C048010 */  lui       $a0, 0x8010
/* 5C3D0 8005B7D0 0C0194DC */  jal       func_80065370
/* 5C3D4 8005B7D4 24842520 */  addiu     $a0, $a0, 0x2520
/* 5C3D8 8005B7D8 0C018AC0 */  jal       func_80062B00
/* 5C3DC 8005B7DC 8FA4002C */  lw        $a0, 0x2c($sp)
/* 5C3E0 8005B7E0 8FB80028 */  lw        $t8, 0x28($sp)
/* 5C3E4 8005B7E4 2401FFFF */  addiu     $at, $zero, -1
/* 5C3E8 8005B7E8 00002025 */  or        $a0, $zero, $zero
/* 5C3EC 8005B7EC 53010004 */  beql      $t8, $at, .L8005B800
/* 5C3F0 8005B7F0 8FBF0024 */  lw        $ra, 0x24($sp)
/* 5C3F4 8005B7F4 0C0179E4 */  jal       func_8005E790
/* 5C3F8 8005B7F8 03002825 */  or        $a1, $t8, $zero
.L8005B7FC:
/* 5C3FC 8005B7FC 8FBF0024 */  lw        $ra, 0x24($sp)
.L8005B800:
/* 5C400 8005B800 8FB00020 */  lw        $s0, 0x20($sp)
/* 5C404 8005B804 27BD0030 */  addiu     $sp, $sp, 0x30
/* 5C408 8005B808 03E00008 */  jr        $ra
/* 5C40C 8005B80C 00000000 */  nop       
/* 5C410 8005B810 00000000 */  nop       
/* 5C414 8005B814 00000000 */  nop       
/* 5C418 8005B818 00000000 */  nop       
/* 5C41C 8005B81C 00000000 */  nop       
