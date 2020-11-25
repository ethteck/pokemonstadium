.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80062A90
/* 63690 80062A90 3C0A8008 */  lui        $t2, 0x8008
/* 63694 80062A94 254A96B0 */  addiu      $t2, $t2, -0x6950
/* 63698 80062A98 8D4B0000 */  lw         $t3, ($t2)
/* 6369C 80062A9C 316BFF00 */  andi       $t3, $t3, 0xff00
/* 636A0 80062AA0 40086000 */  mfc0       $t0, $12
/* 636A4 80062AA4 2401FFFE */  addiu      $at, $zero, -2
/* 636A8 80062AA8 01014824 */  and        $t1, $t0, $at
/* 636AC 80062AAC 40896000 */  mtc0       $t1, $12
/* 636B0 80062AB0 31020001 */  andi       $v0, $t0, 1
/* 636B4 80062AB4 8D480000 */  lw         $t0, ($t2)
/* 636B8 80062AB8 3108FF00 */  andi       $t0, $t0, 0xff00
/* 636BC 80062ABC 110B000E */  beq        $t0, $t3, .L80062AF8
/* 636C0 80062AC0 3C0A8008 */   lui       $t2, 0x8008
/* 636C4 80062AC4 254A9630 */  addiu      $t2, $t2, -0x69d0
/* 636C8 80062AC8 8D490118 */  lw         $t1, 0x118($t2)
/* 636CC 80062ACC 312AFF00 */  andi       $t2, $t1, 0xff00
/* 636D0 80062AD0 01485024 */  and        $t2, $t2, $t0
/* 636D4 80062AD4 3C01FFFF */  lui        $at, 0xffff
/* 636D8 80062AD8 342100FF */  ori        $at, $at, 0xff
/* 636DC 80062ADC 01214824 */  and        $t1, $t1, $at
/* 636E0 80062AE0 012A4825 */  or         $t1, $t1, $t2
/* 636E4 80062AE4 2401FFFE */  addiu      $at, $zero, -2
/* 636E8 80062AE8 01214824 */  and        $t1, $t1, $at
/* 636EC 80062AEC 40896000 */  mtc0       $t1, $12
/* 636F0 80062AF0 00000000 */  nop        
/* 636F4 80062AF4 00000000 */  nop        
.L80062AF8:
/* 636F8 80062AF8 03E00008 */  jr         $ra
/* 636FC 80062AFC 00000000 */   nop       

glabel func_80062B00
/* 63700 80062B00 40086000 */  mfc0       $t0, $12
/* 63704 80062B04 01044025 */  or         $t0, $t0, $a0
/* 63708 80062B08 40886000 */  mtc0       $t0, $12
/* 6370C 80062B0C 00000000 */  nop        
/* 63710 80062B10 00000000 */  nop        
/* 63714 80062B14 03E00008 */  jr         $ra
/* 63718 80062B18 00000000 */   nop       
/* 6371C 80062B1C 00000000 */  nop        
