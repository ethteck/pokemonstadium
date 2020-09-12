.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005DEA0
/* 5EAA0 8005DEA0 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 5EAA4 8005DEA4 AFBF001C */  sw        $ra, 0x1c($sp)
/* 5EAA8 8005DEA8 AFB10018 */  sw        $s1, 0x18($sp)
/* 5EAAC 8005DEAC AFB00014 */  sw        $s0, 0x14($sp)
/* 5EAB0 8005DEB0 00A08025 */  or        $s0, $a1, $zero
/* 5EAB4 8005DEB4 00808825 */  or        $s1, $a0, $zero
/* 5EAB8 8005DEB8 27A70028 */  addiu     $a3, $sp, 0x28
/* 5EABC 8005DEBC 8E250008 */  lw        $a1, 8($s1)
/* 5EAC0 8005DEC0 8C840004 */  lw        $a0, 4($a0)
/* 5EAC4 8005DEC4 0C018E98 */  jal       func_80063A60
/* 5EAC8 8005DEC8 24060400 */  addiu     $a2, $zero, 0x400
/* 5EACC 8005DECC 24010002 */  addiu     $at, $zero, 2
/* 5EAD0 8005DED0 10410005 */  beq       $v0, $at, .L8005DEE8
/* 5EAD4 8005DED4 27A70028 */  addiu     $a3, $sp, 0x28
/* 5EAD8 8005DED8 93AE0047 */  lbu       $t6, 0x47($sp)
/* 5EADC 8005DEDC 24010084 */  addiu     $at, $zero, 0x84
/* 5EAE0 8005DEE0 51C1000A */  beql      $t6, $at, .L8005DF0C
/* 5EAE4 8005DEE4 8E240004 */  lw        $a0, 4($s1)
.L8005DEE8:
/* 5EAE8 8005DEE8 8E240004 */  lw        $a0, 4($s1)
/* 5EAEC 8005DEEC 02202825 */  or        $a1, $s1, $zero
/* 5EAF0 8005DEF0 0C016540 */  jal       func_80059500
/* 5EAF4 8005DEF4 8E260008 */  lw        $a2, 8($s1)
/* 5EAF8 8005DEF8 10400003 */  beqz      $v0, .L8005DF08
/* 5EAFC 8005DEFC 27A70028 */  addiu     $a3, $sp, 0x28
/* 5EB00 8005DF00 10000042 */  b         .L8005E00C
/* 5EB04 8005DF04 8FBF001C */  lw        $ra, 0x1c($sp)
.L8005DF08:
/* 5EB08 8005DF08 8E240004 */  lw        $a0, 4($s1)
.L8005DF0C:
/* 5EB0C 8005DF0C 8E250008 */  lw        $a1, 8($s1)
/* 5EB10 8005DF10 0C018E98 */  jal       func_80063A60
/* 5EB14 8005DF14 24060580 */  addiu     $a2, $zero, 0x580
/* 5EB18 8005DF18 14400036 */  bnez      $v0, .L8005DFF4
/* 5EB1C 8005DF1C 00402825 */  or        $a1, $v0, $zero
/* 5EB20 8005DF20 8E240004 */  lw        $a0, 4($s1)
/* 5EB24 8005DF24 0C0165CC */  jal       func_80059730
/* 5EB28 8005DF28 8E250008 */  lw        $a1, 8($s1)
/* 5EB2C 8005DF2C 27A70028 */  addiu     $a3, $sp, 0x28
/* 5EB30 8005DF30 10400003 */  beqz      $v0, .L8005DF40
/* 5EB34 8005DF34 00402825 */  or        $a1, $v0, $zero
/* 5EB38 8005DF38 10000034 */  b         .L8005E00C
/* 5EB3C 8005DF3C 8FBF001C */  lw        $ra, 0x1c($sp)
.L8005DF40:
/* 5EB40 8005DF40 93B80028 */  lbu       $t8, 0x28($sp)
/* 5EB44 8005DF44 24030004 */  addiu     $v1, $zero, 4
/* 5EB48 8005DF48 24040020 */  addiu     $a0, $zero, 0x20
/* 5EB4C 8005DF4C A2180000 */  sb        $t8, ($s0)
/* 5EB50 8005DF50 93B90029 */  lbu       $t9, 0x29($sp)
/* 5EB54 8005DF54 03194825 */  or        $t1, $t8, $t9
/* 5EB58 8005DF58 A2090000 */  sb        $t1, ($s0)
/* 5EB5C 8005DF5C 93AA002A */  lbu       $t2, 0x2a($sp)
/* 5EB60 8005DF60 012A6025 */  or        $t4, $t1, $t2
/* 5EB64 8005DF64 A20C0000 */  sb        $t4, ($s0)
/* 5EB68 8005DF68 93AD002B */  lbu       $t5, 0x2b($sp)
/* 5EB6C 8005DF6C 018D7025 */  or        $t6, $t4, $t5
/* 5EB70 8005DF70 A20E0000 */  sb        $t6, ($s0)
.L8005DF74:
/* 5EB74 8005DF74 00E31021 */  addu      $v0, $a3, $v1
/* 5EB78 8005DF78 90580000 */  lbu       $t8, ($v0)
/* 5EB7C 8005DF7C 920F0000 */  lbu       $t7, ($s0)
/* 5EB80 8005DF80 24630004 */  addiu     $v1, $v1, 4
/* 5EB84 8005DF84 01F84025 */  or        $t0, $t7, $t8
/* 5EB88 8005DF88 A2080000 */  sb        $t0, ($s0)
/* 5EB8C 8005DF8C 90490001 */  lbu       $t1, 1($v0)
/* 5EB90 8005DF90 01095825 */  or        $t3, $t0, $t1
/* 5EB94 8005DF94 A20B0000 */  sb        $t3, ($s0)
/* 5EB98 8005DF98 904C0002 */  lbu       $t4, 2($v0)
/* 5EB9C 8005DF9C 016C6825 */  or        $t5, $t3, $t4
/* 5EBA0 8005DFA0 A20D0000 */  sb        $t5, ($s0)
/* 5EBA4 8005DFA4 904F0003 */  lbu       $t7, 3($v0)
/* 5EBA8 8005DFA8 31AE00FF */  andi      $t6, $t5, 0xff
/* 5EBAC 8005DFAC 01CFC025 */  or        $t8, $t6, $t7
/* 5EBB0 8005DFB0 1464FFF0 */  bne       $v1, $a0, .L8005DF74
/* 5EBB4 8005DFB4 A2180000 */  sb        $t8, ($s0)
/* 5EBB8 8005DFB8 33090044 */  andi      $t1, $t8, 0x44
/* 5EBBC 8005DFBC A2090000 */  sb        $t1, ($s0)
/* 5EBC0 8005DFC0 93AA0047 */  lbu       $t2, 0x47($sp)
/* 5EBC4 8005DFC4 012A5825 */  or        $t3, $t1, $t2
/* 5EBC8 8005DFC8 316200FF */  andi      $v0, $t3, 0xff
/* 5EBCC 8005DFCC 304C0080 */  andi      $t4, $v0, 0x80
/* 5EBD0 8005DFD0 15800003 */  bnez      $t4, .L8005DFE0
/* 5EBD4 8005DFD4 A20B0000 */  sb        $t3, ($s0)
/* 5EBD8 8005DFD8 1000000A */  b         .L8005E004
/* 5EBDC 8005DFDC 2405000C */  addiu     $a1, $zero, 0xc
.L8005DFE0:
/* 5EBE0 8005DFE0 304D0040 */  andi      $t5, $v0, 0x40
/* 5EBE4 8005DFE4 51A00008 */  beql      $t5, $zero, .L8005E008
/* 5EBE8 8005DFE8 00A01025 */  or        $v0, $a1, $zero
/* 5EBEC 8005DFEC 10000005 */  b         .L8005E004
/* 5EBF0 8005DFF0 2405000D */  addiu     $a1, $zero, 0xd
.L8005DFF4:
/* 5EBF4 8005DFF4 24010002 */  addiu     $at, $zero, 2
/* 5EBF8 8005DFF8 54410003 */  bnel      $v0, $at, .L8005E008
/* 5EBFC 8005DFFC 00A01025 */  or        $v0, $a1, $zero
/* 5EC00 8005E000 24050004 */  addiu     $a1, $zero, 4
.L8005E004:
/* 5EC04 8005E004 00A01025 */  or        $v0, $a1, $zero
.L8005E008:
/* 5EC08 8005E008 8FBF001C */  lw        $ra, 0x1c($sp)
.L8005E00C:
/* 5EC0C 8005E00C 8FB00014 */  lw        $s0, 0x14($sp)
/* 5EC10 8005E010 8FB10018 */  lw        $s1, 0x18($sp)
/* 5EC14 8005E014 03E00008 */  jr        $ra
/* 5EC18 8005E018 27BD0050 */  addiu     $sp, $sp, 0x50
/* 5EC1C 8005E01C 00000000 */  nop       

glabel func_8005E020
/* 5EC20 8005E020 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 5EC24 8005E024 AFBF0014 */  sw        $ra, 0x14($sp)
/* 5EC28 8005E028 0C017894 */  jal       func_8005E250
/* 5EC2C 8005E02C AFA60020 */  sw        $a2, 0x20($sp)
/* 5EC30 8005E030 8FBF0014 */  lw        $ra, 0x14($sp)
/* 5EC34 8005E034 8FAE0020 */  lw        $t6, 0x20($sp)
/* 5EC38 8005E038 27BD0018 */  addiu     $sp, $sp, 0x18
/* 5EC3C 8005E03C 03E00008 */  jr        $ra
/* 5EC40 8005E040 004E1021 */  addu      $v0, $v0, $t6

glabel func_8005E044
/* 5EC44 8005E044 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 5EC48 8005E048 AFA40020 */  sw        $a0, 0x20($sp)
/* 5EC4C 8005E04C AFBF0014 */  sw        $ra, 0x14($sp)
/* 5EC50 8005E050 AFA50024 */  sw        $a1, 0x24($sp)
/* 5EC54 8005E054 AFA60028 */  sw        $a2, 0x28($sp)
/* 5EC58 8005E058 AFA7002C */  sw        $a3, 0x2c($sp)
/* 5EC5C 8005E05C 3C048006 */  lui       $a0, 0x8006
/* 5EC60 8005E060 2484E020 */  addiu     $a0, $a0, -0x1fe0
/* 5EC64 8005E064 27A70028 */  addiu     $a3, $sp, 0x28
/* 5EC68 8005E068 8FA60024 */  lw        $a2, 0x24($sp)
/* 5EC6C 8005E06C 0C017614 */  jal       func_8005D850
/* 5EC70 8005E070 8FA50020 */  lw        $a1, 0x20($sp)
/* 5EC74 8005E074 04400004 */  bltz      $v0, .L8005E088
/* 5EC78 8005E078 00401825 */  or        $v1, $v0, $zero
/* 5EC7C 8005E07C 8FAE0020 */  lw        $t6, 0x20($sp)
/* 5EC80 8005E080 01C27821 */  addu      $t7, $t6, $v0
/* 5EC84 8005E084 A1E00000 */  sb        $zero, ($t7)
.L8005E088:
/* 5EC88 8005E088 8FBF0014 */  lw        $ra, 0x14($sp)
/* 5EC8C 8005E08C 27BD0020 */  addiu     $sp, $sp, 0x20
/* 5EC90 8005E090 00601025 */  or        $v0, $v1, $zero
/* 5EC94 8005E094 03E00008 */  jr        $ra
/* 5EC98 8005E098 00000000 */  nop       
/* 5EC9C 8005E09C 00000000 */  nop       
