.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80065860
/* 66460 80065860 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 66464 80065864 00054400 */  sll       $t0, $a1, 0x10
/* 66468 80065868 00087403 */  sra       $t6, $t0, 0x10
/* 6646C 8006586C AFB10018 */  sw        $s1, 0x18($sp)
/* 66470 80065870 000E8880 */  sll       $s1, $t6, 2
/* 66474 80065874 AFBF001C */  sw        $ra, 0x1c($sp)
/* 66478 80065878 AFB00014 */  sw        $s0, 0x14($sp)
/* 6647C 8006587C AFA50024 */  sw        $a1, 0x24($sp)
/* 66480 80065880 022E8821 */  addu      $s1, $s1, $t6
/* 66484 80065884 8C8F0034 */  lw        $t7, 0x34($a0)
/* 66488 80065888 00118880 */  sll       $s1, $s1, 2
/* 6648C 8006588C 022E8823 */  subu      $s1, $s1, $t6
/* 66490 80065890 00808025 */  or        $s0, $a0, $zero
/* 66494 80065894 00118880 */  sll       $s1, $s1, 2
/* 66498 80065898 00C02825 */  or        $a1, $a2, $zero
/* 6649C 8006589C 01F12021 */  addu      $a0, $t7, $s1
/* 664A0 800658A0 24840020 */  addiu     $a0, $a0, 0x20
/* 664A4 800658A4 0C017F40 */  jal       func_8005FD00
/* 664A8 800658A8 00E03025 */  or        $a2, $a3, $zero
/* 664AC 800658AC 8E180034 */  lw        $t8, 0x34($s0)
/* 664B0 800658B0 24050001 */  addiu     $a1, $zero, 1
/* 664B4 800658B4 03113021 */  addu      $a2, $t8, $s1
/* 664B8 800658B8 0C016728 */  jal       func_80059CA0
/* 664BC 800658BC 24C40020 */  addiu     $a0, $a2, 0x20
/* 664C0 800658C0 8E190034 */  lw        $t9, 0x34($s0)
/* 664C4 800658C4 8E040030 */  lw        $a0, 0x30($s0)
/* 664C8 800658C8 24050002 */  addiu     $a1, $zero, 2
/* 664CC 800658CC 03313021 */  addu      $a2, $t9, $s1
/* 664D0 800658D0 0C018104 */  jal       func_80060410
/* 664D4 800658D4 24C60020 */  addiu     $a2, $a2, 0x20
/* 664D8 800658D8 8E0A0034 */  lw        $t2, 0x34($s0)
/* 664DC 800658DC 8FBF001C */  lw        $ra, 0x1c($sp)
/* 664E0 800658E0 8FB00014 */  lw        $s0, 0x14($sp)
/* 664E4 800658E4 01511021 */  addu      $v0, $t2, $s1
/* 664E8 800658E8 8FB10018 */  lw        $s1, 0x18($sp)
/* 664EC 800658EC 27BD0020 */  addiu     $sp, $sp, 0x20
/* 664F0 800658F0 03E00008 */  jr        $ra
/* 664F4 800658F4 24420020 */  addiu     $v0, $v0, 0x20
/* 664F8 800658F8 00000000 */  nop       
/* 664FC 800658FC 00000000 */  nop       
