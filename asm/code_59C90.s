.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80059090
/* 59C90 80059090 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 59C94 80059094 AFA40018 */  sw        $a0, 0x18($sp)
/* 59C98 80059098 8FAE0018 */  lw        $t6, 0x18($sp)
/* 59C9C 8005909C 3C018000 */  lui       $at, 0x8000
/* 59CA0 800590A0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 59CA4 800590A4 01C1082B */  sltu      $at, $t6, $at
/* 59CA8 800590A8 14200007 */  bnez      $at, .L800590C8
/* 59CAC 800590AC 3C01A000 */  lui       $at, 0xa000
/* 59CB0 800590B0 01C1082B */  sltu      $at, $t6, $at
/* 59CB4 800590B4 10200004 */  beqz      $at, .L800590C8
/* 59CB8 800590B8 3C011FFF */  lui       $at, 0x1fff
/* 59CBC 800590BC 3421FFFF */  ori       $at, $at, 0xffff
/* 59CC0 800590C0 1000000E */  b         .L800590FC
/* 59CC4 800590C4 01C11024 */  and       $v0, $t6, $at
.L800590C8:
/* 59CC8 800590C8 8FAF0018 */  lw        $t7, 0x18($sp)
/* 59CCC 800590CC 3C01A000 */  lui       $at, 0xa000
/* 59CD0 800590D0 01E1082B */  sltu      $at, $t7, $at
/* 59CD4 800590D4 14200007 */  bnez      $at, .L800590F4
/* 59CD8 800590D8 3C01C000 */  lui       $at, 0xc000
/* 59CDC 800590DC 01E1082B */  sltu      $at, $t7, $at
/* 59CE0 800590E0 10200004 */  beqz      $at, .L800590F4
/* 59CE4 800590E4 3C011FFF */  lui       $at, 0x1fff
/* 59CE8 800590E8 3421FFFF */  ori       $at, $at, 0xffff
/* 59CEC 800590EC 10000003 */  b         .L800590FC
/* 59CF0 800590F0 01E11024 */  and       $v0, $t7, $at
.L800590F4:
/* 59CF4 800590F4 0C016D78 */  jal       func_8005B5E0
/* 59CF8 800590F8 8FA40018 */  lw        $a0, 0x18($sp)
.L800590FC:
/* 59CFC 800590FC 8FBF0014 */  lw        $ra, 0x14($sp)
/* 59D00 80059100 27BD0018 */  addiu     $sp, $sp, 0x18
/* 59D04 80059104 03E00008 */  jr        $ra
/* 59D08 80059108 00000000 */  nop       
/* 59D0C 8005910C 00000000 */  nop       
