.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8000D970
/* E570 8000D970 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* E574 8000D974 AFBF001C */  sw        $ra, 0x1c($sp)
/* E578 8000D978 AFA40050 */  sw        $a0, 0x50($sp)
/* E57C 8000D97C 0C0177A8 */  jal       func_8005DEA0
/* E580 8000D980 27A50047 */  addiu     $a1, $sp, 0x47
/* E584 8000D984 10400003 */  beqz      $v0, .L8000D994
/* E588 8000D988 27A40044 */  addiu     $a0, $sp, 0x44
/* E58C 8000D98C 10000037 */  b         .L8000DA6C
/* E590 8000D990 8FBF001C */  lw        $ra, 0x1c($sp)
.L8000D994:
/* E594 8000D994 27A20024 */  addiu     $v0, $sp, 0x24
/* E598 8000D998 24030001 */  addiu     $v1, $zero, 1
.L8000D99C:
/* E59C 8000D99C 24420001 */  addiu     $v0, $v0, 1
/* E5A0 8000D9A0 0044082B */  sltu      $at, $v0, $a0
/* E5A4 8000D9A4 1420FFFD */  bnez      $at, .L8000D99C
/* E5A8 8000D9A8 A043FFFF */  sb        $v1, -1($v0)
/* E5AC 8000D9AC 240E0020 */  addiu     $t6, $zero, 0x20
/* E5B0 8000D9B0 AFAE0010 */  sw        $t6, 0x10($sp)
/* E5B4 8000D9B4 8FA40050 */  lw        $a0, 0x50($sp)
/* E5B8 8000D9B8 24050001 */  addiu     $a1, $zero, 1
/* E5BC 8000D9BC 24066000 */  addiu     $a2, $zero, 0x6000
/* E5C0 8000D9C0 0C019644 */  jal       func_80065910
/* E5C4 8000D9C4 27A70024 */  addiu     $a3, $sp, 0x24
/* E5C8 8000D9C8 10400003 */  beqz      $v0, .L8000D9D8
/* E5CC 8000D9CC 27A30044 */  addiu     $v1, $sp, 0x44
/* E5D0 8000D9D0 10000026 */  b         .L8000DA6C
/* E5D4 8000D9D4 8FBF001C */  lw        $ra, 0x1c($sp)
.L8000D9D8:
/* E5D8 8000D9D8 27A20024 */  addiu     $v0, $sp, 0x24
.L8000D9DC:
/* E5DC 8000D9DC 24420004 */  addiu     $v0, $v0, 4
/* E5E0 8000D9E0 A040FFFC */  sb        $zero, -4($v0)
/* E5E4 8000D9E4 A040FFFD */  sb        $zero, -3($v0)
/* E5E8 8000D9E8 A040FFFE */  sb        $zero, -2($v0)
/* E5EC 8000D9EC 1443FFFB */  bne       $v0, $v1, .L8000D9DC
/* E5F0 8000D9F0 A040FFFF */  sb        $zero, -1($v0)
/* E5F4 8000D9F4 240F000A */  addiu     $t7, $zero, 0xa
/* E5F8 8000D9F8 24180020 */  addiu     $t8, $zero, 0x20
/* E5FC 8000D9FC A3AF0043 */  sb        $t7, 0x43($sp)
/* E600 8000DA00 AFB80010 */  sw        $t8, 0x10($sp)
/* E604 8000DA04 8FA40050 */  lw        $a0, 0x50($sp)
/* E608 8000DA08 24050001 */  addiu     $a1, $zero, 1
/* E60C 8000DA0C 00003025 */  or        $a2, $zero, $zero
/* E610 8000DA10 0C019644 */  jal       func_80065910
/* E614 8000DA14 27A70024 */  addiu     $a3, $sp, 0x24
/* E618 8000DA18 10400003 */  beqz      $v0, .L8000DA28
/* E61C 8000DA1C 8FA80050 */  lw        $t0, 0x50($sp)
/* E620 8000DA20 10000012 */  b         .L8000DA6C
/* E624 8000DA24 8FBF001C */  lw        $ra, 0x1c($sp)
.L8000DA28:
/* E628 8000DA28 8D090008 */  lw        $t1, 8($t0)
/* E62C 8000DA2C 3C01800B */  lui       $at, 0x800b
/* E630 8000DA30 241900FF */  addiu     $t9, $zero, 0xff
/* E634 8000DA34 00290821 */  addu      $at, $at, $t1
/* E638 8000DA38 A039A670 */  sb        $t9, -0x5990($at)
/* E63C 8000DA3C 8FA40050 */  lw        $a0, 0x50($sp)
/* E640 8000DA40 0C0177A8 */  jal       func_8005DEA0
/* E644 8000DA44 27A50047 */  addiu     $a1, $sp, 0x47
/* E648 8000DA48 14400006 */  bnez      $v0, .L8000DA64
/* E64C 8000DA4C 00401825 */  or        $v1, $v0, $zero
/* E650 8000DA50 93AA0047 */  lbu       $t2, 0x47($sp)
/* E654 8000DA54 314B0001 */  andi      $t3, $t2, 1
/* E658 8000DA58 55600003 */  bnel      $t3, $zero, .L8000DA68
/* E65C 8000DA5C 00601025 */  or        $v0, $v1, $zero
/* E660 8000DA60 24030004 */  addiu     $v1, $zero, 4
.L8000DA64:
/* E664 8000DA64 00601025 */  or        $v0, $v1, $zero
.L8000DA68:
/* E668 8000DA68 8FBF001C */  lw        $ra, 0x1c($sp)
.L8000DA6C:
/* E66C 8000DA6C 27BD0050 */  addiu     $sp, $sp, 0x50
/* E670 8000DA70 03E00008 */  jr        $ra
/* E674 8000DA74 00000000 */  nop       

glabel func_8000DA78
/* E678 8000DA78 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* E67C 8000DA7C AFB00020 */  sw        $s0, 0x20($sp)
/* E680 8000DA80 30B000FF */  andi      $s0, $a1, 0xff
/* E684 8000DA84 AFBF0024 */  sw        $ra, 0x24($sp)
/* E688 8000DA88 AFA40058 */  sw        $a0, 0x58($sp)
/* E68C 8000DA8C AFA5005C */  sw        $a1, 0x5c($sp)
/* E690 8000DA90 27A20030 */  addiu     $v0, $sp, 0x30
/* E694 8000DA94 27A30050 */  addiu     $v1, $sp, 0x50
.L8000DA98:
/* E698 8000DA98 24420004 */  addiu     $v0, $v0, 4
/* E69C 8000DA9C A050FFFC */  sb        $s0, -4($v0)
/* E6A0 8000DAA0 A050FFFD */  sb        $s0, -3($v0)
/* E6A4 8000DAA4 A050FFFE */  sb        $s0, -2($v0)
/* E6A8 8000DAA8 1443FFFB */  bne       $v0, $v1, .L8000DA98
/* E6AC 8000DAAC A050FFFF */  sb        $s0, -1($v0)
/* E6B0 8000DAB0 240E0020 */  addiu     $t6, $zero, 0x20
/* E6B4 8000DAB4 AFAE0010 */  sw        $t6, 0x10($sp)
/* E6B8 8000DAB8 8FA40058 */  lw        $a0, 0x58($sp)
/* E6BC 8000DABC 24050001 */  addiu     $a1, $zero, 1
/* E6C0 8000DAC0 24064000 */  addiu     $a2, $zero, 0x4000
/* E6C4 8000DAC4 0C019644 */  jal       func_80065910
/* E6C8 8000DAC8 27A70030 */  addiu     $a3, $sp, 0x30
/* E6CC 8000DACC 14400006 */  bnez      $v0, .L8000DAE8
/* E6D0 8000DAD0 00401825 */  or        $v1, $v0, $zero
/* E6D4 8000DAD4 8FAF0058 */  lw        $t7, 0x58($sp)
/* E6D8 8000DAD8 3C01800B */  lui       $at, 0x800b
/* E6DC 8000DADC 8DF80008 */  lw        $t8, 8($t7)
/* E6E0 8000DAE0 00380821 */  addu      $at, $at, $t8
/* E6E4 8000DAE4 A030A670 */  sb        $s0, -0x5990($at)
.L8000DAE8:
/* E6E8 8000DAE8 8FBF0024 */  lw        $ra, 0x24($sp)
/* E6EC 8000DAEC 8FB00020 */  lw        $s0, 0x20($sp)
/* E6F0 8000DAF0 27BD0058 */  addiu     $sp, $sp, 0x58
/* E6F4 8000DAF4 03E00008 */  jr        $ra
/* E6F8 8000DAF8 00601025 */  or        $v0, $v1, $zero

glabel func_8000DAFC
/* E6FC 8000DAFC 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* E700 8000DB00 AFB70038 */  sw        $s7, 0x38($sp)
/* E704 8000DB04 30B7FFFF */  andi      $s7, $a1, 0xffff
/* E708 8000DB08 AFBF003C */  sw        $ra, 0x3c($sp)
/* E70C 8000DB0C AFB4002C */  sw        $s4, 0x2c($sp)
/* E710 8000DB10 AFB30028 */  sw        $s3, 0x28($sp)
/* E714 8000DB14 AFB10020 */  sw        $s1, 0x20($sp)
/* E718 8000DB18 AFA5005C */  sw        $a1, 0x5c($sp)
/* E71C 8000DB1C 00C08825 */  or        $s1, $a2, $zero
/* E720 8000DB20 00E09825 */  or        $s3, $a3, $zero
/* E724 8000DB24 0080A025 */  or        $s4, $a0, $zero
/* E728 8000DB28 AFB60034 */  sw        $s6, 0x34($sp)
/* E72C 8000DB2C AFB50030 */  sw        $s5, 0x30($sp)
/* E730 8000DB30 AFB20024 */  sw        $s2, 0x24($sp)
/* E734 8000DB34 AFB0001C */  sw        $s0, 0x1c($sp)
/* E738 8000DB38 0C0177A8 */  jal       func_8005DEA0
/* E73C 8000DB3C 27A5004F */  addiu     $a1, $sp, 0x4f
/* E740 8000DB40 50400004 */  beql      $v0, $zero, .L8000DB54
/* E744 8000DB44 8E8E0008 */  lw        $t6, 8($s4)
/* E748 8000DB48 10000044 */  b         .L8000DC5C
/* E74C 8000DB4C 8FBF003C */  lw        $ra, 0x3c($sp)
/* E750 8000DB50 8E8E0008 */  lw        $t6, 8($s4)
.L8000DB54:
/* E754 8000DB54 3C0F800B */  lui       $t7, 0x800b
/* E758 8000DB58 00111342 */  srl       $v0, $s1, 0xd
/* E75C 8000DB5C 01EE7821 */  addu      $t7, $t7, $t6
/* E760 8000DB60 91EFA670 */  lbu       $t7, -0x5990($t7)
/* E764 8000DB64 304500FF */  andi      $a1, $v0, 0xff
/* E768 8000DB68 305200FF */  andi      $s2, $v0, 0xff
/* E76C 8000DB6C 50AF0008 */  beql      $a1, $t7, .L8000DB90
/* E770 8000DB70 8FA20068 */  lw        $v0, 0x68($sp)
/* E774 8000DB74 0C00369E */  jal       func_8000DA78
/* E778 8000DB78 02802025 */  or        $a0, $s4, $zero
/* E77C 8000DB7C 50400004 */  beql      $v0, $zero, .L8000DB90
/* E780 8000DB80 8FA20068 */  lw        $v0, 0x68($sp)
/* E784 8000DB84 10000035 */  b         .L8000DC5C
/* E788 8000DB88 8FBF003C */  lw        $ra, 0x3c($sp)
/* E78C 8000DB8C 8FA20068 */  lw        $v0, 0x68($sp)
.L8000DB90:
/* E790 8000DB90 32311FFF */  andi      $s1, $s1, 0x1fff
/* E794 8000DB94 24162000 */  addiu     $s6, $zero, 0x2000
/* E798 8000DB98 3415A000 */  ori       $s5, $zero, 0xa000
/* E79C 8000DB9C 02228021 */  addu      $s0, $s1, $v0
/* E7A0 8000DBA0 2A012001 */  slti      $at, $s0, 0x2001
/* E7A4 8000DBA4 14200018 */  bnez      $at, .L8000DC08
.L8000DBA8:
/* E7A8 8000DBA8 02353021 */  addu      $a2, $s1, $s5
/* E7AC 8000DBAC 02D1C023 */  subu      $t8, $s6, $s1
/* E7B0 8000DBB0 2610E000 */  addiu     $s0, $s0, -0x2000
/* E7B4 8000DBB4 AFB80010 */  sw        $t8, 0x10($sp)
/* E7B8 8000DBB8 30C6FFFF */  andi      $a2, $a2, 0xffff
/* E7BC 8000DBBC 02802025 */  or        $a0, $s4, $zero
/* E7C0 8000DBC0 32E5FFFF */  andi      $a1, $s7, 0xffff
/* E7C4 8000DBC4 0C019644 */  jal       func_80065910
/* E7C8 8000DBC8 02603825 */  or        $a3, $s3, $zero
/* E7CC 8000DBCC 14400016 */  bnez      $v0, .L8000DC28
/* E7D0 8000DBD0 00401825 */  or        $v1, $v0, $zero
/* E7D4 8000DBD4 26520001 */  addiu     $s2, $s2, 1
/* E7D8 8000DBD8 02719823 */  subu      $s3, $s3, $s1
/* E7DC 8000DBDC 325200FF */  andi      $s2, $s2, 0xff
/* E7E0 8000DBE0 26732000 */  addiu     $s3, $s3, 0x2000
/* E7E4 8000DBE4 324500FF */  andi      $a1, $s2, 0xff
/* E7E8 8000DBE8 0C00369E */  jal       func_8000DA78
/* E7EC 8000DBEC 02802025 */  or        $a0, $s4, $zero
/* E7F0 8000DBF0 1440000D */  bnez      $v0, .L8000DC28
/* E7F4 8000DBF4 00401825 */  or        $v1, $v0, $zero
/* E7F8 8000DBF8 2A012001 */  slti      $at, $s0, 0x2001
/* E7FC 8000DBFC 02001025 */  or        $v0, $s0, $zero
/* E800 8000DC00 1020FFE9 */  beqz      $at, .L8000DBA8
/* E804 8000DC04 00008825 */  or        $s1, $zero, $zero
.L8000DC08:
/* E808 8000DC08 02353021 */  addu      $a2, $s1, $s5
/* E80C 8000DC0C 30C6FFFF */  andi      $a2, $a2, 0xffff
/* E810 8000DC10 02802025 */  or        $a0, $s4, $zero
/* E814 8000DC14 32E5FFFF */  andi      $a1, $s7, 0xffff
/* E818 8000DC18 02603825 */  or        $a3, $s3, $zero
/* E81C 8000DC1C 0C019644 */  jal       func_80065910
/* E820 8000DC20 AFA20010 */  sw        $v0, 0x10($sp)
/* E824 8000DC24 00401825 */  or        $v1, $v0, $zero
.L8000DC28:
/* E828 8000DC28 14400004 */  bnez      $v0, .L8000DC3C
/* E82C 8000DC2C 02802025 */  or        $a0, $s4, $zero
/* E830 8000DC30 0C0177A8 */  jal       func_8005DEA0
/* E834 8000DC34 27A5004F */  addiu     $a1, $sp, 0x4f
/* E838 8000DC38 00401825 */  or        $v1, $v0, $zero
.L8000DC3C:
/* E83C 8000DC3C 14400005 */  bnez      $v0, .L8000DC54
/* E840 8000DC40 93B9004F */  lbu       $t9, 0x4f($sp)
/* E844 8000DC44 33280001 */  andi      $t0, $t9, 1
/* E848 8000DC48 55000003 */  bnel      $t0, $zero, .L8000DC58
/* E84C 8000DC4C 00601025 */  or        $v0, $v1, $zero
/* E850 8000DC50 24030004 */  addiu     $v1, $zero, 4
.L8000DC54:
/* E854 8000DC54 00601025 */  or        $v0, $v1, $zero
.L8000DC58:
/* E858 8000DC58 8FBF003C */  lw        $ra, 0x3c($sp)
.L8000DC5C:
/* E85C 8000DC5C 8FB0001C */  lw        $s0, 0x1c($sp)
/* E860 8000DC60 8FB10020 */  lw        $s1, 0x20($sp)
/* E864 8000DC64 8FB20024 */  lw        $s2, 0x24($sp)
/* E868 8000DC68 8FB30028 */  lw        $s3, 0x28($sp)
/* E86C 8000DC6C 8FB4002C */  lw        $s4, 0x2c($sp)
/* E870 8000DC70 8FB50030 */  lw        $s5, 0x30($sp)
/* E874 8000DC74 8FB60034 */  lw        $s6, 0x34($sp)
/* E878 8000DC78 8FB70038 */  lw        $s7, 0x38($sp)
/* E87C 8000DC7C 03E00008 */  jr        $ra
/* E880 8000DC80 27BD0058 */  addiu     $sp, $sp, 0x58
/* E884 8000DC84 00000000 */  nop       
/* E888 8000DC88 00000000 */  nop       
/* E88C 8000DC8C 00000000 */  nop       
