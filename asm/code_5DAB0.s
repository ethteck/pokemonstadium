.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005CEB0
/* 5DAB0 8005CEB0 03E00008 */  jr        $ra
/* 5DAB4 8005CEB4 46006004 */  sqrt.s    $f0, $f12
/* 5DAB8 8005CEB8 00000000 */  nop       
/* 5DABC 8005CEBC 00000000 */  nop       
