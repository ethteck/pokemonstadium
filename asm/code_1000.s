.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80000400
/* 1000 80000400 3C088008 */  lui        $t0, 0x8008
/* 1004 80000404 3C090008 */  lui        $t1, 8
/* 1008 80000408 2508ED80 */  addiu      $t0, $t0, -0x1280
/* 100C 8000040C 35295E30 */  ori        $t1, $t1, 0x5e30
.L80000410:
/* 1010 80000410 2129FFF8 */  addi       $t1, $t1, -8
/* 1014 80000414 AD000000 */  sw         $zero, ($t0)
/* 1018 80000418 AD000004 */  sw         $zero, 4($t0)
/* 101C 8000041C 1520FFFC */  bnez       $t1, .L80000410
/* 1020 80000420 21080008 */   addi      $t0, $t0, 8
/* 1024 80000424 3C0A8000 */  lui        $t2, 0x8000
/* 1028 80000428 3C1D8008 */  lui        $sp, 0x8008
/* 102C 8000042C 254A0530 */  addiu      $t2, $t2, 0x530
/* 1030 80000430 01400008 */  jr         $t2
/* 1034 80000434 27BDF180 */   addiu     $sp, $sp, -0xe80
/* 1038 80000438 00000000 */  nop        
/* 103C 8000043C 00000000 */  nop        
/* 1040 80000440 00000000 */  nop        
/* 1044 80000444 00000000 */  nop        
/* 1048 80000448 00000000 */  nop        
/* 104C 8000044C 00000000 */  nop        
/* 1050 80000450 00000000 */  nop        
/* 1054 80000454 00000000 */  nop        
/* 1058 80000458 00000000 */  nop        
/* 105C 8000045C 00000000 */  nop        
