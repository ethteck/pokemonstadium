.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8004FC60
/* 50860 8004FC60 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 50864 8004FC64 AFB20020 */  sw        $s2, 0x20($sp)
/* 50868 8004FC68 308F0004 */  andi      $t7, $a0, 4
/* 5086C 8004FC6C 00A09025 */  or        $s2, $a1, $zero
/* 50870 8004FC70 AFBF0024 */  sw        $ra, 0x24($sp)
/* 50874 8004FC74 AFB1001C */  sw        $s1, 0x1c($sp)
/* 50878 8004FC78 AFB00018 */  sw        $s0, 0x18($sp)
/* 5087C 8004FC7C 11E0000D */  beqz      $t7, .L8004FCB4
/* 50880 8004FC80 AFA40028 */  sw        $a0, 0x28($sp)
/* 50884 8004FC84 00008025 */  or        $s0, $zero, $zero
/* 50888 8004FC88 24110002 */  addiu     $s1, $zero, 2
/* 5088C 8004FC8C 02002025 */  or        $a0, $s0, $zero
.L8004FC90:
/* 50890 8004FC90 0C01135E */  jal       func_80044D78
/* 50894 8004FC94 02402825 */  or        $a1, $s2, $zero
/* 50898 8004FC98 26100001 */  addiu     $s0, $s0, 1
/* 5089C 8004FC9C 5611FFFC */  bnel      $s0, $s1, .L8004FC90
/* 508A0 8004FCA0 02002025 */  or        $a0, $s0, $zero
/* 508A4 8004FCA4 8FB80028 */  lw        $t8, 0x28($sp)
/* 508A8 8004FCA8 2401FFFB */  addiu     $at, $zero, -5
/* 508AC 8004FCAC 0301C824 */  and       $t9, $t8, $at
/* 508B0 8004FCB0 AFB90028 */  sw        $t9, 0x28($sp)
.L8004FCB4:
/* 508B4 8004FCB4 8FA40028 */  lw        $a0, 0x28($sp)
/* 508B8 8004FCB8 0C00E45B */  jal       func_8003916C
/* 508BC 8004FCBC 02402825 */  or        $a1, $s2, $zero
/* 508C0 8004FCC0 8FBF0024 */  lw        $ra, 0x24($sp)
/* 508C4 8004FCC4 8FB00018 */  lw        $s0, 0x18($sp)
/* 508C8 8004FCC8 8FB1001C */  lw        $s1, 0x1c($sp)
/* 508CC 8004FCCC 8FB20020 */  lw        $s2, 0x20($sp)
/* 508D0 8004FCD0 03E00008 */  jr        $ra
/* 508D4 8004FCD4 27BD0028 */  addiu     $sp, $sp, 0x28

glabel func_8004FCD8
/* 508D8 8004FCD8 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 508DC 8004FCDC AFB1001C */  sw        $s1, 0x1c($sp)
/* 508E0 8004FCE0 00808825 */  or        $s1, $a0, $zero
/* 508E4 8004FCE4 AFBF0024 */  sw        $ra, 0x24($sp)
/* 508E8 8004FCE8 3C018008 */  lui       $at, 0x8008
/* 508EC 8004FCEC AFB20020 */  sw        $s2, 0x20($sp)
/* 508F0 8004FCF0 AFB00018 */  sw        $s0, 0x18($sp)
/* 508F4 8004FCF4 A020840C */  sb        $zero, -0x7bf4($at)
/* 508F8 8004FCF8 0C00F6E1 */  jal       func_8003DB84
/* 508FC 8004FCFC 00002025 */  or        $a0, $zero, $zero
/* 50900 8004FD00 24040003 */  addiu     $a0, $zero, 3
/* 50904 8004FD04 0C013F18 */  jal       func_8004FC60
/* 50908 8004FD08 02202825 */  or        $a1, $s1, $zero
/* 5090C 8004FD0C 00008025 */  or        $s0, $zero, $zero
/* 50910 8004FD10 24120002 */  addiu     $s2, $zero, 2
/* 50914 8004FD14 02002025 */  or        $a0, $s0, $zero
.L8004FD18:
/* 50918 8004FD18 0C01135E */  jal       func_80044D78
/* 5091C 8004FD1C 02202825 */  or        $a1, $s1, $zero
/* 50920 8004FD20 26100001 */  addiu     $s0, $s0, 1
/* 50924 8004FD24 5612FFFC */  bnel      $s0, $s2, .L8004FD18
/* 50928 8004FD28 02002025 */  or        $a0, $s0, $zero
/* 5092C 8004FD2C 8FBF0024 */  lw        $ra, 0x24($sp)
/* 50930 8004FD30 8FB00018 */  lw        $s0, 0x18($sp)
/* 50934 8004FD34 8FB1001C */  lw        $s1, 0x1c($sp)
/* 50938 8004FD38 8FB20020 */  lw        $s2, 0x20($sp)
/* 5093C 8004FD3C 03E00008 */  jr        $ra
/* 50940 8004FD40 27BD0028 */  addiu     $sp, $sp, 0x28

glabel func_8004FD44
/* 50944 8004FD44 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 50948 8004FD48 AFBF0014 */  sw        $ra, 0x14($sp)
/* 5094C 8004FD4C 0C013F36 */  jal       func_8004FCD8
/* 50950 8004FD50 24040001 */  addiu     $a0, $zero, 1
/* 50954 8004FD54 8FBF0014 */  lw        $ra, 0x14($sp)
/* 50958 8004FD58 27BD0018 */  addiu     $sp, $sp, 0x18
/* 5095C 8004FD5C 03E00008 */  jr        $ra
/* 50960 8004FD60 00000000 */  nop       

glabel func_8004FD64
/* 50964 8004FD64 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 50968 8004FD68 AFBF0014 */  sw        $ra, 0x14($sp)
/* 5096C 8004FD6C 0C013F36 */  jal       func_8004FCD8
/* 50970 8004FD70 00000000 */  nop       
/* 50974 8004FD74 8FBF0014 */  lw        $ra, 0x14($sp)
/* 50978 8004FD78 27BD0018 */  addiu     $sp, $sp, 0x18
/* 5097C 8004FD7C 03E00008 */  jr        $ra
/* 50980 8004FD80 00000000 */  nop       
/* 50984 8004FD84 00000000 */  nop       
/* 50988 8004FD88 00000000 */  nop       
/* 5098C 8004FD8C 00000000 */  nop       
