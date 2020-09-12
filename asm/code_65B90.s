.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80064F90
/* 65B90 80064F90 3C0EA404 */  lui       $t6, 0xa404
/* 65B94 80064F94 03E00008 */  jr        $ra
/* 65B98 80064F98 ADC40010 */  sw        $a0, 0x10($t6)
/* 65B9C 80064F9C 00000000 */  nop       

glabel func_80064FA0
/* 65BA0 80064FA0 3C0EA404 */  lui       $t6, 0xa404
/* 65BA4 80064FA4 03E00008 */  jr        $ra
/* 65BA8 80064FA8 8DC20010 */  lw        $v0, 0x10($t6)
/* 65BAC 80064FAC 00000000 */  nop       
/* 65BB0 80064FB0 00000000 */  nop       
/* 65BB4 80064FB4 00000000 */  nop       
/* 65BB8 80064FB8 00000000 */  nop       
/* 65BBC 80064FBC 00000000 */  nop       
