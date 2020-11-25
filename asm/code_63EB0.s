.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800632B0
/* 63EB0 800632B0 AFA40000 */  sw         $a0, ($sp)
/* 63EB4 800632B4 8FAE0000 */  lw         $t6, ($sp)
/* 63EB8 800632B8 AFA50004 */  sw         $a1, 4($sp)
/* 63EBC 800632BC 3C018010 */  lui        $at, 0x8010
/* 63EC0 800632C0 8FAF0004 */  lw         $t7, 4($sp)
/* 63EC4 800632C4 AC2E38B0 */  sw         $t6, 0x38b0($at)
/* 63EC8 800632C8 3C018010 */  lui        $at, 0x8010
/* 63ECC 800632CC 03E00008 */  jr         $ra
/* 63ED0 800632D0 AC2F38B4 */   sw        $t7, 0x38b4($at)
/* 63ED4 800632D4 00000000 */  nop        
/* 63ED8 800632D8 00000000 */  nop        
/* 63EDC 800632DC 00000000 */  nop        
