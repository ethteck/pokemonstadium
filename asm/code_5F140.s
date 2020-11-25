.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005E540
/* 5F140 8005E540 3C0EA404 */  lui        $t6, 0xa404
/* 5F144 8005E544 8DC40010 */  lw         $a0, 0x10($t6)
/* 5F148 8005E548 27BDFFF8 */  addiu      $sp, $sp, -8
/* 5F14C 8005E54C 308F001C */  andi       $t7, $a0, 0x1c
/* 5F150 8005E550 11E00003 */  beqz       $t7, .L8005E560
/* 5F154 8005E554 00000000 */   nop       
/* 5F158 8005E558 10000002 */  b          .L8005E564
/* 5F15C 8005E55C 24020001 */   addiu     $v0, $zero, 1
.L8005E560:
/* 5F160 8005E560 00001025 */  or         $v0, $zero, $zero
.L8005E564:
/* 5F164 8005E564 03E00008 */  jr         $ra
/* 5F168 8005E568 27BD0008 */   addiu     $sp, $sp, 8
/* 5F16C 8005E56C 00000000 */  nop        

glabel func_8005E570
/* 5F170 8005E570 3C0EA480 */  lui        $t6, 0xa480
/* 5F174 8005E574 8DC40018 */  lw         $a0, 0x18($t6)
/* 5F178 8005E578 27BDFFF8 */  addiu      $sp, $sp, -8
/* 5F17C 8005E57C 308F0003 */  andi       $t7, $a0, 3
/* 5F180 8005E580 11E00003 */  beqz       $t7, .L8005E590
/* 5F184 8005E584 00000000 */   nop       
/* 5F188 8005E588 10000002 */  b          .L8005E594
/* 5F18C 8005E58C 24020001 */   addiu     $v0, $zero, 1
.L8005E590:
/* 5F190 8005E590 00001025 */  or         $v0, $zero, $zero
.L8005E594:
/* 5F194 8005E594 03E00008 */  jr         $ra
/* 5F198 8005E598 27BD0008 */   addiu     $sp, $sp, 8
/* 5F19C 8005E59C 00000000 */  nop        

glabel func_8005E5A0
/* 5F1A0 8005E5A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5F1A4 8005E5A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5F1A8 8005E5A8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 5F1AC 8005E5AC AFA60020 */  sw         $a2, 0x20($sp)
/* 5F1B0 8005E5B0 AFA70024 */  sw         $a3, 0x24($sp)
/* 5F1B4 8005E5B4 0C016C14 */  jal        func_8005B050
/* 5F1B8 8005E5B8 AFA40018 */   sw        $a0, 0x18($sp)
/* 5F1BC 8005E5BC 8FA40018 */  lw         $a0, 0x18($sp)
/* 5F1C0 8005E5C0 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* 5F1C4 8005E5C4 E4840030 */  swc1       $f4, 0x30($a0)
/* 5F1C8 8005E5C8 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 5F1CC 8005E5CC E4860034 */  swc1       $f6, 0x34($a0)
/* 5F1D0 8005E5D0 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 5F1D4 8005E5D4 E4880038 */  swc1       $f8, 0x38($a0)
/* 5F1D8 8005E5D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5F1DC 8005E5DC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5F1E0 8005E5E0 03E00008 */  jr         $ra
/* 5F1E4 8005E5E4 00000000 */   nop       

glabel func_8005E5E8
/* 5F1E8 8005E5E8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 5F1EC 8005E5EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 5F1F0 8005E5F0 AFA40068 */  sw         $a0, 0x68($sp)
/* 5F1F4 8005E5F4 AFA5006C */  sw         $a1, 0x6c($sp)
/* 5F1F8 8005E5F8 AFA60070 */  sw         $a2, 0x70($sp)
/* 5F1FC 8005E5FC AFA70074 */  sw         $a3, 0x74($sp)
/* 5F200 8005E600 0C016C14 */  jal        func_8005B050
/* 5F204 8005E604 27A40028 */   addiu     $a0, $sp, 0x28
/* 5F208 8005E608 C7A4006C */  lwc1       $f4, 0x6c($sp)
/* 5F20C 8005E60C C7A60070 */  lwc1       $f6, 0x70($sp)
/* 5F210 8005E610 C7A80074 */  lwc1       $f8, 0x74($sp)
/* 5F214 8005E614 27A40028 */  addiu      $a0, $sp, 0x28
/* 5F218 8005E618 8FA50068 */  lw         $a1, 0x68($sp)
/* 5F21C 8005E61C E7A40058 */  swc1       $f4, 0x58($sp)
/* 5F220 8005E620 E7A6005C */  swc1       $f6, 0x5c($sp)
/* 5F224 8005E624 0C016BD4 */  jal        func_8005AF50
/* 5F228 8005E628 E7A80060 */   swc1      $f8, 0x60($sp)
/* 5F22C 8005E62C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5F230 8005E630 27BD0068 */  addiu      $sp, $sp, 0x68
/* 5F234 8005E634 03E00008 */  jr         $ra
/* 5F238 8005E638 00000000 */   nop       
/* 5F23C 8005E63C 00000000 */  nop        
