.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80063760
/* 64360 80063760 40085000 */  mfc0      $t0, $10
/* 64364 80063764 2409001F */  addiu     $t1, $zero, 0x1f
/* 64368 80063768 40890000 */  mtc0      $t1, $0
/* 6436C 8006376C 40802800 */  mtc0      $zero, $5
/* 64370 80063770 240A0017 */  addiu     $t2, $zero, 0x17
/* 64374 80063774 3C09C000 */  lui       $t1, 0xc000
/* 64378 80063778 40895000 */  mtc0      $t1, $10
/* 6437C 8006377C 3C098000 */  lui       $t1, 0x8000
/* 64380 80063780 00095982 */  srl       $t3, $t1, 6
/* 64384 80063784 016A5825 */  or        $t3, $t3, $t2
/* 64388 80063788 408B1000 */  mtc0      $t3, $2
/* 6438C 8006378C 24090001 */  addiu     $t1, $zero, 1
/* 64390 80063790 40891800 */  mtc0      $t1, $3
/* 64394 80063794 00000000 */  nop       
/* 64398 80063798 42000002 */  tlbwi     
/* 6439C 8006379C 00000000 */  nop       
/* 643A0 800637A0 00000000 */  nop       
/* 643A4 800637A4 00000000 */  nop       
/* 643A8 800637A8 00000000 */  nop       
/* 643AC 800637AC 40885000 */  mtc0      $t0, $10
/* 643B0 800637B0 03E00008 */  jr        $ra
/* 643B4 800637B4 00000000 */  nop       
/* 643B8 800637B8 00000000 */  nop       
/* 643BC 800637BC 00000000 */  nop       
