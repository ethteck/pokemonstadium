.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005E0A0
/* 5ECA0 8005E0A0 40085000 */  mfc0      $t0, $10
/* 5ECA4 8005E0A4 2409001E */  addiu     $t1, $zero, 0x1e
/* 5ECA8 8005E0A8 3C0A8000 */  lui       $t2, 0x8000
/* 5ECAC 8005E0AC 408A5000 */  mtc0      $t2, $10
/* 5ECB0 8005E0B0 40801000 */  mtc0      $zero, $2
/* 5ECB4 8005E0B4 40801800 */  mtc0      $zero, $3
.L8005E0B8:
/* 5ECB8 8005E0B8 40890000 */  mtc0      $t1, $0
/* 5ECBC 8005E0BC 00000000 */  nop       
/* 5ECC0 8005E0C0 42000002 */  tlbwi     
/* 5ECC4 8005E0C4 00000000 */  nop       
/* 5ECC8 8005E0C8 00000000 */  nop       
/* 5ECCC 8005E0CC 2129FFFF */  addi      $t1, $t1, -1
/* 5ECD0 8005E0D0 0521FFF9 */  bgez      $t1, .L8005E0B8
/* 5ECD4 8005E0D4 00000000 */  nop       
/* 5ECD8 8005E0D8 40885000 */  mtc0      $t0, $10
/* 5ECDC 8005E0DC 03E00008 */  jr        $ra
/* 5ECE0 8005E0E0 00000000 */  nop       
/* 5ECE4 8005E0E4 00000000 */  nop       
/* 5ECE8 8005E0E8 00000000 */  nop       
/* 5ECEC 8005E0EC 00000000 */  nop       
