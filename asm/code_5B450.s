.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005A850
/* 5B450 8005A850 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5B454 8005A854 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5B458 8005A858 AFA40018 */  sw         $a0, 0x18($sp)
/* 5B45C 8005A85C AFA5001C */  sw         $a1, 0x1c($sp)
/* 5B460 8005A860 AFA60020 */  sw         $a2, 0x20($sp)
/* 5B464 8005A864 0C017950 */  jal        func_8005E540
/* 5B468 8005A868 AFA70024 */   sw        $a3, 0x24($sp)
/* 5B46C 8005A86C 10400003 */  beqz       $v0, .L8005A87C
/* 5B470 8005A870 8FAE001C */   lw        $t6, 0x1c($sp)
/* 5B474 8005A874 10000013 */  b          .L8005A8C4
/* 5B478 8005A878 2402FFFF */   addiu     $v0, $zero, -1
.L8005A87C:
/* 5B47C 8005A87C 3C0FA404 */  lui        $t7, 0xa404
/* 5B480 8005A880 ADEE0000 */  sw         $t6, ($t7)
/* 5B484 8005A884 0C016424 */  jal        func_80059090
/* 5B488 8005A888 8FA40020 */   lw        $a0, 0x20($sp)
/* 5B48C 8005A88C 3C18A404 */  lui        $t8, 0xa404
/* 5B490 8005A890 AF020004 */  sw         $v0, 4($t8)
/* 5B494 8005A894 8FB90018 */  lw         $t9, 0x18($sp)
/* 5B498 8005A898 8FAB0024 */  lw         $t3, 0x24($sp)
/* 5B49C 8005A89C 00001025 */  or         $v0, $zero, $zero
/* 5B4A0 8005A8A0 17200006 */  bnez       $t9, .L8005A8BC
/* 5B4A4 8005A8A4 256CFFFF */   addiu     $t4, $t3, -1
/* 5B4A8 8005A8A8 8FA80024 */  lw         $t0, 0x24($sp)
/* 5B4AC 8005A8AC 3C0AA404 */  lui        $t2, 0xa404
/* 5B4B0 8005A8B0 2509FFFF */  addiu      $t1, $t0, -1
/* 5B4B4 8005A8B4 10000003 */  b          .L8005A8C4
/* 5B4B8 8005A8B8 AD49000C */   sw        $t1, 0xc($t2)
.L8005A8BC:
/* 5B4BC 8005A8BC 3C0DA404 */  lui        $t5, 0xa404
/* 5B4C0 8005A8C0 ADAC0008 */  sw         $t4, 8($t5)
.L8005A8C4:
/* 5B4C4 8005A8C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5B4C8 8005A8C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5B4CC 8005A8CC 03E00008 */  jr         $ra
/* 5B4D0 8005A8D0 00000000 */   nop       
/* 5B4D4 8005A8D4 00000000 */  nop        
/* 5B4D8 8005A8D8 00000000 */  nop        
/* 5B4DC 8005A8DC 00000000 */  nop        
