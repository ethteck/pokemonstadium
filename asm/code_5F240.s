.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005E640
/* 5F240 8005E640 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 5F244 8005E644 AFBF001C */  sw        $ra, 0x1c($sp)
/* 5F248 8005E648 AFA40028 */  sw        $a0, 0x28($sp)
/* 5F24C 8005E64C AFA5002C */  sw        $a1, 0x2c($sp)
/* 5F250 8005E650 AFA60030 */  sw        $a2, 0x30($sp)
/* 5F254 8005E654 AFB10018 */  sw        $s1, 0x18($sp)
/* 5F258 8005E658 0C018AA4 */  jal       func_80062A90
/* 5F25C 8005E65C AFB00014 */  sw        $s0, 0x14($sp)
/* 5F260 8005E660 8FAE0028 */  lw        $t6, 0x28($sp)
/* 5F264 8005E664 00408025 */  or        $s0, $v0, $zero
/* 5F268 8005E668 8DCF0008 */  lw        $t7, 8($t6)
/* 5F26C 8005E66C 8DD80010 */  lw        $t8, 0x10($t6)
/* 5F270 8005E670 01F8082A */  slt       $at, $t7, $t8
/* 5F274 8005E674 14200018 */  bnez      $at, .L8005E6D8
/* 5F278 8005E678 00000000 */  nop       
.L8005E67C:
/* 5F27C 8005E67C 8FB90030 */  lw        $t9, 0x30($sp)
/* 5F280 8005E680 24010001 */  addiu     $at, $zero, 1
/* 5F284 8005E684 1721000A */  bne       $t9, $at, .L8005E6B0
/* 5F288 8005E688 00000000 */  nop       
/* 5F28C 8005E68C 3C098008 */  lui       $t1, 0x8008
/* 5F290 8005E690 8D299630 */  lw        $t1, -0x69d0($t1)
/* 5F294 8005E694 24080008 */  addiu     $t0, $zero, 8
/* 5F298 8005E698 A5280010 */  sh        $t0, 0x10($t1)
/* 5F29C 8005E69C 8FA40028 */  lw        $a0, 0x28($sp)
/* 5F2A0 8005E6A0 0C015F3B */  jal       func_80057CEC
/* 5F2A4 8005E6A4 24840004 */  addiu     $a0, $a0, 4
/* 5F2A8 8005E6A8 10000005 */  b         .L8005E6C0
/* 5F2AC 8005E6AC 00000000 */  nop       
.L8005E6B0:
/* 5F2B0 8005E6B0 0C018AC0 */  jal       func_80062B00
/* 5F2B4 8005E6B4 02002025 */  or        $a0, $s0, $zero
/* 5F2B8 8005E6B8 10000030 */  b         .L8005E77C
/* 5F2BC 8005E6BC 2402FFFF */  addiu     $v0, $zero, -1
.L8005E6C0:
/* 5F2C0 8005E6C0 8FAA0028 */  lw        $t2, 0x28($sp)
/* 5F2C4 8005E6C4 8D4B0008 */  lw        $t3, 8($t2)
/* 5F2C8 8005E6C8 8D4C0010 */  lw        $t4, 0x10($t2)
/* 5F2CC 8005E6CC 016C082A */  slt       $at, $t3, $t4
/* 5F2D0 8005E6D0 1020FFEA */  beqz      $at, .L8005E67C
/* 5F2D4 8005E6D4 00000000 */  nop       
.L8005E6D8:
/* 5F2D8 8005E6D8 8FAD0028 */  lw        $t5, 0x28($sp)
/* 5F2DC 8005E6DC 8DAE000C */  lw        $t6, 0xc($t5)
/* 5F2E0 8005E6E0 8DAF0010 */  lw        $t7, 0x10($t5)
/* 5F2E4 8005E6E4 01CFC021 */  addu      $t8, $t6, $t7
/* 5F2E8 8005E6E8 2719FFFF */  addiu     $t9, $t8, -1
/* 5F2EC 8005E6EC 032F001A */  div       $zero, $t9, $t7
/* 5F2F0 8005E6F0 00004010 */  mfhi      $t0
/* 5F2F4 8005E6F4 ADA8000C */  sw        $t0, 0xc($t5)
/* 5F2F8 8005E6F8 8FAA0028 */  lw        $t2, 0x28($sp)
/* 5F2FC 8005E6FC 8FA9002C */  lw        $t1, 0x2c($sp)
/* 5F300 8005E700 15E00002 */  bnez      $t7, .L8005E70C
/* 5F304 8005E704 00000000 */  nop       
/* 5F308 8005E708 0007000D */  break     7
.L8005E70C:
/* 5F30C 8005E70C 2401FFFF */  addiu     $at, $zero, -1
/* 5F310 8005E710 15E10004 */  bne       $t7, $at, .L8005E724
/* 5F314 8005E714 3C018000 */  lui       $at, 0x8000
/* 5F318 8005E718 17210002 */  bne       $t9, $at, .L8005E724
/* 5F31C 8005E71C 00000000 */  nop       
/* 5F320 8005E720 0006000D */  break     6
.L8005E724:
/* 5F324 8005E724 8D4C000C */  lw        $t4, 0xc($t2)
/* 5F328 8005E728 8D4B0014 */  lw        $t3, 0x14($t2)
/* 5F32C 8005E72C 000C7080 */  sll       $t6, $t4, 2
/* 5F330 8005E730 016EC021 */  addu      $t8, $t3, $t6
/* 5F334 8005E734 AF090000 */  sw        $t1, ($t8)
/* 5F338 8005E738 8FB90028 */  lw        $t9, 0x28($sp)
/* 5F33C 8005E73C 8F2F0008 */  lw        $t7, 8($t9)
/* 5F340 8005E740 25E80001 */  addiu     $t0, $t7, 1
/* 5F344 8005E744 AF280008 */  sw        $t0, 8($t9)
/* 5F348 8005E748 8FAD0028 */  lw        $t5, 0x28($sp)
/* 5F34C 8005E74C 8DAA0000 */  lw        $t2, ($t5)
/* 5F350 8005E750 8D4C0000 */  lw        $t4, ($t2)
/* 5F354 8005E754 11800006 */  beqz      $t4, .L8005E770
/* 5F358 8005E758 00000000 */  nop       
/* 5F35C 8005E75C 0C015F8D */  jal       func_80057E34
/* 5F360 8005E760 01A02025 */  or        $a0, $t5, $zero
/* 5F364 8005E764 00408825 */  or        $s1, $v0, $zero
/* 5F368 8005E768 0C0194DC */  jal       func_80065370
/* 5F36C 8005E76C 02202025 */  or        $a0, $s1, $zero
.L8005E770:
/* 5F370 8005E770 0C018AC0 */  jal       func_80062B00
/* 5F374 8005E774 02002025 */  or        $a0, $s0, $zero
/* 5F378 8005E778 00001025 */  or        $v0, $zero, $zero
.L8005E77C:
/* 5F37C 8005E77C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 5F380 8005E780 8FB00014 */  lw        $s0, 0x14($sp)
/* 5F384 8005E784 8FB10018 */  lw        $s1, 0x18($sp)
/* 5F388 8005E788 03E00008 */  jr        $ra
/* 5F38C 8005E78C 27BD0028 */  addiu     $sp, $sp, 0x28

glabel func_8005E790
/* 5F390 8005E790 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 5F394 8005E794 AFBF001C */  sw        $ra, 0x1c($sp)
/* 5F398 8005E798 AFA40028 */  sw        $a0, 0x28($sp)
/* 5F39C 8005E79C AFA5002C */  sw        $a1, 0x2c($sp)
/* 5F3A0 8005E7A0 0C018AA4 */  jal       func_80062A90
/* 5F3A4 8005E7A4 AFB00018 */  sw        $s0, 0x18($sp)
/* 5F3A8 8005E7A8 8FAE0028 */  lw        $t6, 0x28($sp)
/* 5F3AC 8005E7AC 00408025 */  or        $s0, $v0, $zero
/* 5F3B0 8005E7B0 15C00004 */  bnez      $t6, .L8005E7C4
/* 5F3B4 8005E7B4 00000000 */  nop       
/* 5F3B8 8005E7B8 3C0F8008 */  lui       $t7, 0x8008
/* 5F3BC 8005E7BC 8DEF9630 */  lw        $t7, -0x69d0($t7)
/* 5F3C0 8005E7C0 AFAF0028 */  sw        $t7, 0x28($sp)
.L8005E7C4:
/* 5F3C4 8005E7C4 8FB80028 */  lw        $t8, 0x28($sp)
/* 5F3C8 8005E7C8 8FA8002C */  lw        $t0, 0x2c($sp)
/* 5F3CC 8005E7CC 8F190004 */  lw        $t9, 4($t8)
/* 5F3D0 8005E7D0 13280020 */  beq       $t9, $t0, .L8005E854
/* 5F3D4 8005E7D4 00000000 */  nop       
/* 5F3D8 8005E7D8 AF080004 */  sw        $t0, 4($t8)
/* 5F3DC 8005E7DC 3C0A8008 */  lui       $t2, 0x8008
/* 5F3E0 8005E7E0 8D4A9630 */  lw        $t2, -0x69d0($t2)
/* 5F3E4 8005E7E4 8FA90028 */  lw        $t1, 0x28($sp)
/* 5F3E8 8005E7E8 112A000C */  beq       $t1, $t2, .L8005E81C
/* 5F3EC 8005E7EC 00000000 */  nop       
/* 5F3F0 8005E7F0 952B0010 */  lhu       $t3, 0x10($t1)
/* 5F3F4 8005E7F4 24010001 */  addiu     $at, $zero, 1
/* 5F3F8 8005E7F8 11610008 */  beq       $t3, $at, .L8005E81C
/* 5F3FC 8005E7FC 00000000 */  nop       
/* 5F400 8005E800 8D240008 */  lw        $a0, 8($t1)
/* 5F404 8005E804 0C015B2C */  jal       func_80056CB0
/* 5F408 8005E808 01202825 */  or        $a1, $t1, $zero
/* 5F40C 8005E80C 8FAC0028 */  lw        $t4, 0x28($sp)
/* 5F410 8005E810 8D840008 */  lw        $a0, 8($t4)
/* 5F414 8005E814 0C015F7B */  jal       func_80057DEC
/* 5F418 8005E818 01802825 */  or        $a1, $t4, $zero
.L8005E81C:
/* 5F41C 8005E81C 3C0D8008 */  lui       $t5, 0x8008
/* 5F420 8005E820 3C0F8008 */  lui       $t7, 0x8008
/* 5F424 8005E824 8DEF9628 */  lw        $t7, -0x69d8($t7)
/* 5F428 8005E828 8DAD9630 */  lw        $t5, -0x69d0($t5)
/* 5F42C 8005E82C 8DF90004 */  lw        $t9, 4($t7)
/* 5F430 8005E830 8DAE0004 */  lw        $t6, 4($t5)
/* 5F434 8005E834 01D9082A */  slt       $at, $t6, $t9
/* 5F438 8005E838 10200006 */  beqz      $at, .L8005E854
/* 5F43C 8005E83C 00000000 */  nop       
/* 5F440 8005E840 24080002 */  addiu     $t0, $zero, 2
/* 5F444 8005E844 3C048008 */  lui       $a0, 0x8008
/* 5F448 8005E848 A5A80010 */  sh        $t0, 0x10($t5)
/* 5F44C 8005E84C 0C015F3B */  jal       func_80057CEC
/* 5F450 8005E850 24849628 */  addiu     $a0, $a0, -0x69d8
.L8005E854:
/* 5F454 8005E854 0C018AC0 */  jal       func_80062B00
/* 5F458 8005E858 02002025 */  or        $a0, $s0, $zero
/* 5F45C 8005E85C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 5F460 8005E860 8FB00018 */  lw        $s0, 0x18($sp)
/* 5F464 8005E864 27BD0028 */  addiu     $sp, $sp, 0x28
/* 5F468 8005E868 03E00008 */  jr        $ra
/* 5F46C 8005E86C 00000000 */  nop       

glabel func_8005E870
/* 5F470 8005E870 14800003 */  bnez      $a0, .L8005E880
/* 5F474 8005E874 00000000 */  nop       
/* 5F478 8005E878 3C048008 */  lui       $a0, 0x8008
/* 5F47C 8005E87C 8C849630 */  lw        $a0, -0x69d0($a0)
.L8005E880:
/* 5F480 8005E880 03E00008 */  jr        $ra
/* 5F484 8005E884 8C820004 */  lw        $v0, 4($a0)
/* 5F488 8005E888 00000000 */  nop       
/* 5F48C 8005E88C 00000000 */  nop       
