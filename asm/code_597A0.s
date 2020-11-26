.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80058BA0
/* 597A0 80058BA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 597A4 80058BA4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 597A8 80058BA8 240E0001 */  addiu      $t6, $zero, 1
/* 597AC 80058BAC 3C018008 */  lui        $at, 0x8008
/* 597B0 80058BB0 3C048010 */  lui        $a0, 0x8010
/* 597B4 80058BB4 3C058010 */  lui        $a1, 0x8010
/* 597B8 80058BB8 AC2E9690 */  sw         $t6, -0x6970($at)
/* 597BC 80058BBC 24A521D0 */  addiu      $a1, $a1, 0x21d0
/* 597C0 80058BC0 248421D8 */  addiu      $a0, $a0, 0x21d8
/* 597C4 80058BC4 0C0178E8 */  jal        func_8005E3A0
/* 597C8 80058BC8 24060001 */   addiu     $a2, $zero, 1
/* 597CC 80058BCC 3C048010 */  lui        $a0, 0x8010
/* 597D0 80058BD0 248421D8 */  addiu      $a0, $a0, 0x21d8
/* 597D4 80058BD4 00002825 */  or         $a1, $zero, $zero
/* 597D8 80058BD8 0C015A30 */  jal        osSendMesg
/* 597DC 80058BDC 00003025 */   or        $a2, $zero, $zero
/* 597E0 80058BE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 597E4 80058BE4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 597E8 80058BE8 03E00008 */  jr         $ra
/* 597EC 80058BEC 00000000 */   nop       

glabel func_80058BF0
/* 597F0 80058BF0 3C0E8008 */  lui        $t6, 0x8008
/* 597F4 80058BF4 8DCE9690 */  lw         $t6, -0x6970($t6)
/* 597F8 80058BF8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 597FC 80058BFC AFBF0014 */  sw         $ra, 0x14($sp)
/* 59800 80058C00 15C00003 */  bnez       $t6, .L80058C10
/* 59804 80058C04 00000000 */   nop       
/* 59808 80058C08 0C0162E8 */  jal        func_80058BA0
/* 5980C 80058C0C 00000000 */   nop       
.L80058C10:
/* 59810 80058C10 3C048010 */  lui        $a0, 0x8010
/* 59814 80058C14 248421D8 */  addiu      $a0, $a0, 0x21d8
/* 59818 80058C18 27A5001C */  addiu      $a1, $sp, 0x1c
/* 5981C 80058C1C 0C015AB4 */  jal        func_80056AD0
/* 59820 80058C20 24060001 */   addiu     $a2, $zero, 1
/* 59824 80058C24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 59828 80058C28 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5982C 80058C2C 03E00008 */  jr         $ra
/* 59830 80058C30 00000000 */   nop       

glabel func_80058C34
/* 59834 80058C34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 59838 80058C38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5983C 80058C3C 3C048010 */  lui        $a0, 0x8010
/* 59840 80058C40 248421D8 */  addiu      $a0, $a0, 0x21d8
/* 59844 80058C44 00002825 */  or         $a1, $zero, $zero
/* 59848 80058C48 0C015A30 */  jal        osSendMesg
/* 5984C 80058C4C 00003025 */   or        $a2, $zero, $zero
/* 59850 80058C50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 59854 80058C54 27BD0018 */  addiu      $sp, $sp, 0x18
/* 59858 80058C58 03E00008 */  jr         $ra
/* 5985C 80058C5C 00000000 */   nop       
/* 59860 80058C60 00000000 */  nop        
/* 59864 80058C64 00000000 */  nop        
/* 59868 80058C68 00000000 */  nop        
/* 5986C 80058C6C 00000000 */  nop        
/* 59870 80058C70 00000000 */  nop        
/* 59874 80058C74 00000000 */  nop        
/* 59878 80058C78 00000000 */  nop        
/* 5987C 80058C7C 00000000 */  nop        
/* 59880 80058C80 00000000 */  nop        
/* 59884 80058C84 00000000 */  nop        
/* 59888 80058C88 00000000 */  nop        
/* 5988C 80058C8C 00000000 */  nop        
/* 59890 80058C90 00000000 */  nop        
/* 59894 80058C94 00000000 */  nop        
/* 59898 80058C98 00000000 */  nop        
/* 5989C 80058C9C 00000000 */  nop        
/* 598A0 80058CA0 00000000 */  nop        
/* 598A4 80058CA4 00000000 */  nop        
/* 598A8 80058CA8 00000000 */  nop        
/* 598AC 80058CAC 00000000 */  nop        
/* 598B0 80058CB0 00000000 */  nop        
/* 598B4 80058CB4 00000000 */  nop        
/* 598B8 80058CB8 00000000 */  nop        
/* 598BC 80058CBC 00000000 */  nop        
