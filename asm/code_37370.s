.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80036770
/* 37370 80036770 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 37374 80036774 AFBF0014 */  sw         $ra, 0x14($sp)
/* 37378 80036778 0C0122E4 */  jal        func_80048B90
/* 3737C 8003677C 00000000 */   nop       
/* 37380 80036780 8FBF0014 */  lw         $ra, 0x14($sp)
/* 37384 80036784 27BD0018 */  addiu      $sp, $sp, 0x18
/* 37388 80036788 03E00008 */  jr         $ra
/* 3738C 8003678C 00000000 */   nop       

glabel func_80036790
/* 37390 80036790 03E00008 */  jr         $ra
/* 37394 80036794 8FA2003C */   lw        $v0, 0x3c($sp)
/* 37398 80036798 00000000 */  nop        
/* 3739C 8003679C 00000000 */  nop        
