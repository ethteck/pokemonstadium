.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800624C0
/* 630C0 800624C0 3C0EA450 */  lui        $t6, 0xa450
/* 630C4 800624C4 03E00008 */  jr         $ra
/* 630C8 800624C8 8DC2000C */   lw        $v0, 0xc($t6)
/* 630CC 800624CC 00000000 */  nop        

glabel func_800624D0
/* 630D0 800624D0 3C0EA410 */  lui        $t6, 0xa410
/* 630D4 800624D4 03E00008 */  jr         $ra
/* 630D8 800624D8 ADC4000C */   sw        $a0, 0xc($t6)
/* 630DC 800624DC 00000000 */  nop        

glabel func_800624E0
/* 630E0 800624E0 00801025 */  or         $v0, $a0, $zero
/* 630E4 800624E4 00A01825 */  or         $v1, $a1, $zero
/* 630E8 800624E8 18C00018 */  blez       $a2, .L8006254C
/* 630EC 800624EC 00003825 */   or        $a3, $zero, $zero
/* 630F0 800624F0 30C50003 */  andi       $a1, $a2, 3
/* 630F4 800624F4 10A00009 */  beqz       $a1, .L8006251C
/* 630F8 800624F8 00A02025 */   or        $a0, $a1, $zero
.L800624FC:
/* 630FC 800624FC 904E0000 */  lbu        $t6, ($v0)
/* 63100 80062500 24E70001 */  addiu      $a3, $a3, 1
/* 63104 80062504 24630001 */  addiu      $v1, $v1, 1
/* 63108 80062508 24420001 */  addiu      $v0, $v0, 1
/* 6310C 8006250C 1487FFFB */  bne        $a0, $a3, .L800624FC
/* 63110 80062510 A06EFFFF */   sb        $t6, -1($v1)
/* 63114 80062514 10E6000D */  beq        $a3, $a2, .L8006254C
/* 63118 80062518 00000000 */   nop       
.L8006251C:
/* 6311C 8006251C 904F0000 */  lbu        $t7, ($v0)
/* 63120 80062520 24E70004 */  addiu      $a3, $a3, 4
/* 63124 80062524 24630004 */  addiu      $v1, $v1, 4
/* 63128 80062528 A06FFFFC */  sb         $t7, -4($v1)
/* 6312C 8006252C 90580001 */  lbu        $t8, 1($v0)
/* 63130 80062530 24420004 */  addiu      $v0, $v0, 4
/* 63134 80062534 A078FFFD */  sb         $t8, -3($v1)
/* 63138 80062538 9059FFFE */  lbu        $t9, -2($v0)
/* 6313C 8006253C A079FFFE */  sb         $t9, -2($v1)
/* 63140 80062540 9048FFFF */  lbu        $t0, -1($v0)
/* 63144 80062544 14E6FFF5 */  bne        $a3, $a2, .L8006251C
/* 63148 80062548 A068FFFF */   sb        $t0, -1($v1)
.L8006254C:
/* 6314C 8006254C 03E00008 */  jr         $ra
/* 63150 80062550 00000000 */   nop       
/* 63154 80062554 00000000 */  nop        
/* 63158 80062558 00000000 */  nop        
/* 6315C 8006255C 00000000 */  nop        
