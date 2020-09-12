.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8004F400
/* 50000 8004F400 27A50042 */  addiu     $a1, $sp, 0x42
/* 50004 8004F404 4600540D */  trunc.w.s $f16, $f10
/* 50008 8004F408 440F8000 */  mfc1      $t7, $f16
/* 5000C 8004F40C 44818000 */  mtc1      $at, $f16
/* 50010 8004F410 448F9000 */  mtc1      $t7, $f18
/* 50014 8004F414 00000000 */  nop       
/* 50018 8004F418 46809120 */  cvt.s.w   $f4, $f18
/* 5001C 8004F41C E6040044 */  swc1      $f4, 0x44($s0)
/* 50020 8004F420 C6060044 */  lwc1      $f6, 0x44($s0)
/* 50024 8004F424 C604004C */  lwc1      $f4, 0x4c($s0)
/* 50028 8004F428 460C3203 */  div.s     $f8, $f6, $f12
/* 5002C 8004F42C E6080044 */  swc1      $f8, 0x44($s0)
/* 50030 8004F430 C60A0044 */  lwc1      $f10, 0x44($s0)
/* 50034 8004F434 46105482 */  mul.s     $f18, $f10, $f16
/* 50038 8004F438 46122000 */  add.s     $f0, $f4, $f18
/* 5003C 8004F43C 4600018D */  trunc.w.s $f6, $f0
/* 50040 8004F440 44063000 */  mfc1      $a2, $f6
/* 50044 8004F444 00000000 */  nop       
/* 50048 8004F448 44864000 */  mtc1      $a2, $f8
/* 5004C 8004F44C 00000000 */  nop       
/* 50050 8004F450 468042A0 */  cvt.s.w   $f10, $f8
/* 50054 8004F454 460A0401 */  sub.s     $f16, $f0, $f10
/* 50058 8004F458 0C013D48 */  jal       func_8004F520
/* 5005C 8004F45C E610004C */  swc1      $f16, 0x4c($s0)
/* 50060 8004F460 3C014700 */  lui       $at, 0x4700
/* 50064 8004F464 44819000 */  mtc1      $at, $f18
/* 50068 8004F468 C6040044 */  lwc1      $f4, 0x44($s0)
/* 5006C 8004F46C 24430008 */  addiu     $v1, $v0, 8
/* 50070 8004F470 46122182 */  mul.s     $f6, $f4, $f18
/* 50074 8004F474 4600320D */  trunc.w.s $f8, $f6
/* 50078 8004F478 44084000 */  mfc1      $t0, $f8
/* 5007C 8004F47C 00000000 */  nop       
/* 50080 8004F480 AFA80038 */  sw        $t0, 0x38($sp)
/* 50084 8004F484 8E040040 */  lw        $a0, 0x40($s0)
/* 50088 8004F488 AFA2002C */  sw        $v0, 0x2c($sp)
/* 5008C 8004F48C 0C016424 */  jal       func_80059090
/* 50090 8004F490 AFA30044 */  sw        $v1, 0x44($sp)
/* 50094 8004F494 3C0100FF */  lui       $at, 0xff
/* 50098 8004F498 3421FFFF */  ori       $at, $at, 0xffff
/* 5009C 8004F49C 8FA5002C */  lw        $a1, 0x2c($sp)
/* 500A0 8004F4A0 00414824 */  and       $t1, $v0, $at
/* 500A4 8004F4A4 3C010500 */  lui       $at, 0x500
/* 500A8 8004F4A8 01215025 */  or        $t2, $t1, $at
/* 500AC 8004F4AC 8FA30044 */  lw        $v1, 0x44($sp)
/* 500B0 8004F4B0 ACAA0000 */  sw        $t2, ($a1)
/* 500B4 8004F4B4 8FAE0038 */  lw        $t6, 0x38($sp)
/* 500B8 8004F4B8 8E0C0050 */  lw        $t4, 0x50($s0)
/* 500BC 8004F4BC 87A80042 */  lh        $t0, 0x42($sp)
/* 500C0 8004F4C0 31CFFFFF */  andi      $t7, $t6, 0xffff
/* 500C4 8004F4C4 000FC380 */  sll       $t8, $t7, 0xe
/* 500C8 8004F4C8 000C6F80 */  sll       $t5, $t4, 0x1e
/* 500CC 8004F4CC 31090FFF */  andi      $t1, $t0, 0xfff
/* 500D0 8004F4D0 00095080 */  sll       $t2, $t1, 2
/* 500D4 8004F4D4 01B8C825 */  or        $t9, $t5, $t8
/* 500D8 8004F4D8 032A5825 */  or        $t3, $t9, $t2
/* 500DC 8004F4DC ACAB0004 */  sw        $t3, 4($a1)
/* 500E0 8004F4E0 AE000050 */  sw        $zero, 0x50($s0)
/* 500E4 8004F4E4 8FBF001C */  lw        $ra, 0x1c($sp)
/* 500E8 8004F4E8 8FB00018 */  lw        $s0, 0x18($sp)
/* 500EC 8004F4EC 27BD0048 */  addiu     $sp, $sp, 0x48
/* 500F0 8004F4F0 03E00008 */  jr        $ra
/* 500F4 8004F4F4 00601025 */  or        $v0, $v1, $zero

glabel func_8004F4F8
/* 500F8 8004F4F8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 500FC 8004F4FC AFBF0014 */  sw        $ra, 0x14($sp)
/* 50100 8004F500 0C013E57 */  jal       func_8004F95C
/* 50104 8004F504 00000000 */  nop       
/* 50108 8004F508 8FBF0014 */  lw        $ra, 0x14($sp)
/* 5010C 8004F50C 27BD0018 */  addiu     $sp, $sp, 0x18
/* 50110 8004F510 00001025 */  or        $v0, $zero, $zero
/* 50114 8004F514 03E00008 */  jr        $ra
/* 50118 8004F518 00000000 */  nop       
/* 5011C 8004F51C 00000000 */  nop       
