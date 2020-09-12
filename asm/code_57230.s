.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80056630
/* 57230 80056630 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 57234 80056634 AFBF0014 */  sw        $ra, 0x14($sp)
/* 57238 80056638 0C014D50 */  jal       func_80053540
/* 5723C 8005663C 00000000 */  nop       
/* 57240 80056640 3C038010 */  lui       $v1, 0x8010
/* 57244 80056644 246306C8 */  addiu     $v1, $v1, 0x6c8
/* 57248 80056648 8C6E0000 */  lw        $t6, ($v1)
/* 5724C 8005664C A1C2000C */  sb        $v0, 0xc($t6)
/* 57250 80056650 8C6F0000 */  lw        $t7, ($v1)
/* 57254 80056654 A1E00005 */  sb        $zero, 5($t7)
/* 57258 80056658 8C780000 */  lw        $t8, ($v1)
/* 5725C 8005665C A3000004 */  sb        $zero, 4($t8)
/* 57260 80056660 8FBF0014 */  lw        $ra, 0x14($sp)
/* 57264 80056664 27BD0018 */  addiu     $sp, $sp, 0x18
/* 57268 80056668 03E00008 */  jr        $ra
/* 5726C 8005666C 00000000 */  nop       

glabel func_80056670
/* 57270 80056670 3C0E8008 */  lui       $t6, 0x8008
/* 57274 80056674 8DCE95B0 */  lw        $t6, -0x6a50($t6)
/* 57278 80056678 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 5727C 8005667C AFBF0014 */  sw        $ra, 0x14($sp)
/* 57280 80056680 15C00003 */  bnez      $t6, .L80056690
/* 57284 80056684 240F000D */  addiu     $t7, $zero, 0xd
/* 57288 80056688 1000000C */  b         .L800566BC
/* 5728C 8005668C 2402FFFF */  addiu     $v0, $zero, -1
.L80056690:
/* 57290 80056690 A08F0000 */  sb        $t7, ($a0)
/* 57294 80056694 A0800001 */  sb        $zero, 1($a0)
/* 57298 80056698 A0800002 */  sb        $zero, 2($a0)
/* 5729C 8005669C 10A00004 */  beqz      $a1, .L800566B0
/* 572A0 800566A0 A0800003 */  sb        $zero, 3($a0)
/* 572A4 800566A4 34190080 */  ori       $t9, $zero, 0x80
/* 572A8 800566A8 A0990002 */  sb        $t9, 2($a0)
/* 572AC 800566AC AC850008 */  sw        $a1, 8($a0)
.L800566B0:
/* 572B0 800566B0 0C014489 */  jal       func_80051224
/* 572B4 800566B4 00000000 */  nop       
/* 572B8 800566B8 00001025 */  or        $v0, $zero, $zero
.L800566BC:
/* 572BC 800566BC 8FBF0014 */  lw        $ra, 0x14($sp)
/* 572C0 800566C0 27BD0018 */  addiu     $sp, $sp, 0x18
/* 572C4 800566C4 03E00008 */  jr        $ra
/* 572C8 800566C8 00000000 */  nop       
/* 572CC 800566CC 00000000 */  nop       
