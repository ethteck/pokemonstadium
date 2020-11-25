.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80063670
/* 64270 80063670 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 64274 80063674 AFB00020 */  sw         $s0, 0x20($sp)
/* 64278 80063678 30B000FF */  andi       $s0, $a1, 0xff
/* 6427C 8006367C AFBF0024 */  sw         $ra, 0x24($sp)
/* 64280 80063680 AFA40058 */  sw         $a0, 0x58($sp)
/* 64284 80063684 AFA5005C */  sw         $a1, 0x5c($sp)
/* 64288 80063688 27A20038 */  addiu      $v0, $sp, 0x38
/* 6428C 8006368C 27A30058 */  addiu      $v1, $sp, 0x58
.L80063690:
/* 64290 80063690 24420004 */  addiu      $v0, $v0, 4
/* 64294 80063694 A050FFFD */  sb         $s0, -3($v0)
/* 64298 80063698 A050FFFE */  sb         $s0, -2($v0)
/* 6429C 8006369C A050FFFF */  sb         $s0, -1($v0)
/* 642A0 800636A0 1443FFFB */  bne        $v0, $v1, .L80063690
/* 642A4 800636A4 A050FFFC */   sb        $s0, -4($v0)
/* 642A8 800636A8 8FAE0058 */  lw         $t6, 0x58($sp)
/* 642AC 800636AC 24060400 */  addiu      $a2, $zero, 0x400
/* 642B0 800636B0 27A70038 */  addiu      $a3, $sp, 0x38
/* 642B4 800636B4 8DC40004 */  lw         $a0, 4($t6)
/* 642B8 800636B8 8DC50008 */  lw         $a1, 8($t6)
/* 642BC 800636BC 0C018E04 */  jal        func_80063810
/* 642C0 800636C0 AFA00010 */   sw        $zero, 0x10($sp)
/* 642C4 800636C4 14400003 */  bnez       $v0, .L800636D4
/* 642C8 800636C8 00401825 */   or        $v1, $v0, $zero
/* 642CC 800636CC 8FAF0058 */  lw         $t7, 0x58($sp)
/* 642D0 800636D0 A1F00065 */  sb         $s0, 0x65($t7)
.L800636D4:
/* 642D4 800636D4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 642D8 800636D8 8FB00020 */  lw         $s0, 0x20($sp)
/* 642DC 800636DC 27BD0058 */  addiu      $sp, $sp, 0x58
/* 642E0 800636E0 03E00008 */  jr         $ra
/* 642E4 800636E4 00601025 */   or        $v0, $v1, $zero
/* 642E8 800636E8 00000000 */  nop        
/* 642EC 800636EC 00000000 */  nop        
