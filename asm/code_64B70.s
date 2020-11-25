.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80063F70
/* 64B70 80063F70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 64B74 80063F74 AFA40020 */  sw         $a0, 0x20($sp)
/* 64B78 80063F78 8FAE0020 */  lw         $t6, 0x20($sp)
/* 64B7C 80063F7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 64B80 80063F80 AFA60028 */  sw         $a2, 0x28($sp)
/* 64B84 80063F84 AFA7002C */  sw         $a3, 0x2c($sp)
/* 64B88 80063F88 ADC00000 */  sw         $zero, ($t6)
/* 64B8C 80063F8C 8FAF0020 */  lw         $t7, 0x20($sp)
/* 64B90 80063F90 ADE00004 */  sw         $zero, 4($t7)
/* 64B94 80063F94 8FA80020 */  lw         $t0, 0x20($sp)
/* 64B98 80063F98 8FB90034 */  lw         $t9, 0x34($sp)
/* 64B9C 80063F9C 8FB80030 */  lw         $t8, 0x30($sp)
/* 64BA0 80063FA0 AD19000C */  sw         $t9, 0xc($t0)
/* 64BA4 80063FA4 AD180008 */  sw         $t8, 8($t0)
/* 64BA8 80063FA8 8FAA0028 */  lw         $t2, 0x28($sp)
/* 64BAC 80063FAC 8FAB002C */  lw         $t3, 0x2c($sp)
/* 64BB0 80063FB0 15400003 */  bnez       $t2, .L80063FC0
/* 64BB4 80063FB4 00000000 */   nop       
/* 64BB8 80063FB8 11600005 */  beqz       $t3, .L80063FD0
/* 64BBC 80063FBC 00000000 */   nop       
.L80063FC0:
/* 64BC0 80063FC0 8FA90020 */  lw         $t1, 0x20($sp)
/* 64BC4 80063FC4 AD2A0010 */  sw         $t2, 0x10($t1)
/* 64BC8 80063FC8 10000006 */  b          .L80063FE4
/* 64BCC 80063FCC AD2B0014 */   sw        $t3, 0x14($t1)
.L80063FD0:
/* 64BD0 80063FD0 8FAE0020 */  lw         $t6, 0x20($sp)
/* 64BD4 80063FD4 8FAC0030 */  lw         $t4, 0x30($sp)
/* 64BD8 80063FD8 8FAD0034 */  lw         $t5, 0x34($sp)
/* 64BDC 80063FDC ADCC0010 */  sw         $t4, 0x10($t6)
/* 64BE0 80063FE0 ADCD0014 */  sw         $t5, 0x14($t6)
.L80063FE4:
/* 64BE4 80063FE4 8FAF0038 */  lw         $t7, 0x38($sp)
/* 64BE8 80063FE8 8FB80020 */  lw         $t8, 0x20($sp)
/* 64BEC 80063FEC AF0F0018 */  sw         $t7, 0x18($t8)
/* 64BF0 80063FF0 8FA80020 */  lw         $t0, 0x20($sp)
/* 64BF4 80063FF4 8FB9003C */  lw         $t9, 0x3c($sp)
/* 64BF8 80063FF8 AD19001C */  sw         $t9, 0x1c($t0)
/* 64BFC 80063FFC 0C017D16 */  jal        func_8005F458
/* 64C00 80064000 8FA40020 */   lw        $a0, 0x20($sp)
/* 64C04 80064004 3C0A8008 */  lui        $t2, 0x8008
/* 64C08 80064008 8D4AA9B0 */  lw         $t2, -0x5650($t2)
/* 64C0C 8006400C AFA20018 */  sw         $v0, 0x18($sp)
/* 64C10 80064010 AFA3001C */  sw         $v1, 0x1c($sp)
/* 64C14 80064014 8FA90020 */  lw         $t1, 0x20($sp)
/* 64C18 80064018 8D4B0000 */  lw         $t3, ($t2)
/* 64C1C 8006401C 15690004 */  bne        $t3, $t1, .L80064030
/* 64C20 80064020 00000000 */   nop       
/* 64C24 80064024 8FA40018 */  lw         $a0, 0x18($sp)
/* 64C28 80064028 0C017CF9 */  jal        func_8005F3E4
/* 64C2C 8006402C 8FA5001C */   lw        $a1, 0x1c($sp)
.L80064030:
/* 64C30 80064030 8FBF0014 */  lw         $ra, 0x14($sp)
/* 64C34 80064034 27BD0020 */  addiu      $sp, $sp, 0x20
/* 64C38 80064038 00001025 */  or         $v0, $zero, $zero
/* 64C3C 8006403C 03E00008 */  jr         $ra
/* 64C40 80064040 00000000 */   nop       
/* 64C44 80064044 00000000 */  nop        
/* 64C48 80064048 00000000 */  nop        
/* 64C4C 8006404C 00000000 */  nop        
