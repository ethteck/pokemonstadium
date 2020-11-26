.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8002D860
/* 2E460 8002D860 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2E464 8002D864 AFB00018 */  sw         $s0, 0x18($sp)
/* 2E468 8002D868 00808025 */  or         $s0, $a0, $zero
/* 2E46C 8002D86C AFBF001C */  sw         $ra, 0x1c($sp)
/* 2E470 8002D870 AFA50024 */  sw         $a1, 0x24($sp)
/* 2E474 8002D874 0C0093C0 */  jal        func_80024F00
/* 2E478 8002D878 00A02025 */   or        $a0, $a1, $zero
/* 2E47C 8002D87C 10400003 */  beqz       $v0, .L8002D88C
/* 2E480 8002D880 240E0001 */   addiu     $t6, $zero, 1
/* 2E484 8002D884 10000008 */  b          .L8002D8A8
/* 2E488 8002D888 AE0E0000 */   sw        $t6, ($s0)
.L8002D88C:
/* 2E48C 8002D88C AE000000 */  sw         $zero, ($s0)
/* 2E490 8002D890 0C009421 */  jal        func_80025084
/* 2E494 8002D894 8FA40024 */   lw        $a0, 0x24($sp)
/* 2E498 8002D898 AE020008 */  sw         $v0, 8($s0)
/* 2E49C 8002D89C 8FA40024 */  lw         $a0, 0x24($sp)
/* 2E4A0 8002D8A0 0C00946C */  jal        func_800251B0
/* 2E4A4 8002D8A4 2605000C */   addiu     $a1, $s0, 0xc
.L8002D8A8:
/* 2E4A8 8002D8A8 0C0093DA */  jal        func_80024F68
/* 2E4AC 8002D8AC 8FA40024 */   lw        $a0, 0x24($sp)
/* 2E4B0 8002D8B0 AE020004 */  sw         $v0, 4($s0)
/* 2E4B4 8002D8B4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2E4B8 8002D8B8 8FB00018 */  lw         $s0, 0x18($sp)
/* 2E4BC 8002D8BC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2E4C0 8002D8C0 03E00008 */  jr         $ra
/* 2E4C4 8002D8C4 00000000 */   nop       

glabel func_8002D8C8
/* 2E4C8 8002D8C8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2E4CC 8002D8CC 3C03800A */  lui        $v1, 0x800a
/* 2E4D0 8002D8D0 24637420 */  addiu      $v1, $v1, 0x7420
/* 2E4D4 8002D8D4 8C620000 */  lw         $v0, ($v1)
/* 2E4D8 8002D8D8 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2E4DC 8002D8DC AFBE0028 */  sw         $fp, 0x28($sp)
/* 2E4E0 8002D8E0 244E0008 */  addiu      $t6, $v0, 8
/* 2E4E4 8002D8E4 AFB70024 */  sw         $s7, 0x24($sp)
/* 2E4E8 8002D8E8 AFB60020 */  sw         $s6, 0x20($sp)
/* 2E4EC 8002D8EC AFB5001C */  sw         $s5, 0x1c($sp)
/* 2E4F0 8002D8F0 AFB40018 */  sw         $s4, 0x18($sp)
/* 2E4F4 8002D8F4 AFB30014 */  sw         $s3, 0x14($sp)
/* 2E4F8 8002D8F8 AFB20010 */  sw         $s2, 0x10($sp)
/* 2E4FC 8002D8FC AFB1000C */  sw         $s1, 0xc($sp)
/* 2E500 8002D900 AFB00008 */  sw         $s0, 8($sp)
/* 2E504 8002D904 AC6E0000 */  sw         $t6, ($v1)
/* 2E508 8002D908 3C0FE700 */  lui        $t7, 0xe700
/* 2E50C 8002D90C AC4F0000 */  sw         $t7, ($v0)
/* 2E510 8002D910 AC400004 */  sw         $zero, 4($v0)
/* 2E514 8002D914 00403825 */  or         $a3, $v0, $zero
/* 2E518 8002D918 8C620000 */  lw         $v0, ($v1)
/* 2E51C 8002D91C 3C19E300 */  lui        $t9, 0xe300
/* 2E520 8002D920 37390A01 */  ori        $t9, $t9, 0xa01
/* 2E524 8002D924 24580008 */  addiu      $t8, $v0, 8
/* 2E528 8002D928 AC780000 */  sw         $t8, ($v1)
/* 2E52C 8002D92C 3C0E0020 */  lui        $t6, 0x20
/* 2E530 8002D930 AC4E0004 */  sw         $t6, 4($v0)
/* 2E534 8002D934 AC590000 */  sw         $t9, ($v0)
/* 2E538 8002D938 00404025 */  or         $t0, $v0, $zero
/* 2E53C 8002D93C 8C620000 */  lw         $v0, ($v1)
/* 2E540 8002D940 3C18E200 */  lui        $t8, 0xe200
/* 2E544 8002D944 3718001C */  ori        $t8, $t8, 0x1c
/* 2E548 8002D948 244F0008 */  addiu      $t7, $v0, 8
/* 2E54C 8002D94C AC6F0000 */  sw         $t7, ($v1)
/* 2E550 8002D950 AC400004 */  sw         $zero, 4($v0)
/* 2E554 8002D954 AC580000 */  sw         $t8, ($v0)
/* 2E558 8002D958 00404825 */  or         $t1, $v0, $zero
/* 2E55C 8002D95C 8C620000 */  lw         $v0, ($v1)
/* 2E560 8002D960 3C0EE200 */  lui        $t6, 0xe200
/* 2E564 8002D964 35CE1E01 */  ori        $t6, $t6, 0x1e01
/* 2E568 8002D968 24590008 */  addiu      $t9, $v0, 8
/* 2E56C 8002D96C AC790000 */  sw         $t9, ($v1)
/* 2E570 8002D970 240F0001 */  addiu      $t7, $zero, 1
/* 2E574 8002D974 AC4F0004 */  sw         $t7, 4($v0)
/* 2E578 8002D978 AC4E0000 */  sw         $t6, ($v0)
/* 2E57C 8002D97C 00405025 */  or         $t2, $v0, $zero
/* 2E580 8002D980 8C620000 */  lw         $v0, ($v1)
/* 2E584 8002D984 3C19E300 */  lui        $t9, 0xe300
/* 2E588 8002D988 37390C00 */  ori        $t9, $t9, 0xc00
/* 2E58C 8002D98C 24580008 */  addiu      $t8, $v0, 8
/* 2E590 8002D990 AC780000 */  sw         $t8, ($v1)
/* 2E594 8002D994 AC400004 */  sw         $zero, 4($v0)
/* 2E598 8002D998 AC590000 */  sw         $t9, ($v0)
/* 2E59C 8002D99C 8C8E0000 */  lw         $t6, ($a0)
/* 2E5A0 8002D9A0 24181000 */  addiu      $t8, $zero, 0x1000
/* 2E5A4 8002D9A4 00808025 */  or         $s0, $a0, $zero
/* 2E5A8 8002D9A8 000E7840 */  sll        $t7, $t6, 1
/* 2E5AC 8002D9AC 030F001A */  div        $zero, $t8, $t7
/* 2E5B0 8002D9B0 8E0B0004 */  lw         $t3, 4($s0)
/* 2E5B4 8002D9B4 0000A012 */  mflo       $s4
/* 2E5B8 8002D9B8 00A0B825 */  or         $s7, $a1, $zero
/* 2E5BC 8002D9BC 8E12000C */  lw         $s2, 0xc($s0)
/* 2E5C0 8002D9C0 00C09825 */  or         $s3, $a2, $zero
/* 2E5C4 8002D9C4 00406025 */  or         $t4, $v0, $zero
/* 2E5C8 8002D9C8 15E00002 */  bnez       $t7, .L8002D9D4
/* 2E5CC 8002D9CC 00000000 */   nop       
/* 2E5D0 8002D9D0 0007000D */  break      7
.L8002D9D4:
/* 2E5D4 8002D9D4 2401FFFF */   addiu     $at, $zero, -1
/* 2E5D8 8002D9D8 15E10004 */  bne        $t7, $at, .L8002D9EC
/* 2E5DC 8002D9DC 3C018000 */   lui       $at, 0x8000
/* 2E5E0 8002D9E0 17010002 */  bne        $t8, $at, .L8002D9EC
/* 2E5E4 8002D9E4 00000000 */   nop       
/* 2E5E8 8002D9E8 0006000D */  break      6
.L8002D9EC:
/* 2E5EC 8002D9EC 19600099 */   blez      $t3, .L8002DC54
/* 2E5F0 8002D9F0 0017F080 */   sll       $fp, $s7, 2
/* 2E5F4 8002D9F4 33DE0FFF */  andi       $fp, $fp, 0xfff
/* 2E5F8 8002D9F8 001EF300 */  sll        $fp, $fp, 0xc
/* 2E5FC 8002D9FC 3C1FFD10 */  lui        $ra, 0xfd10
/* 2E600 8002DA00 3C160700 */  lui        $s6, 0x700
/* 2E604 8002DA04 3C15F510 */  lui        $s5, 0xf510
.L8002DA08:
/* 2E608 8002DA08 028B082A */  slt        $at, $s4, $t3
/* 2E60C 8002DA0C 10200003 */  beqz       $at, .L8002DA1C
/* 2E610 8002DA10 01604025 */   or        $t0, $t3, $zero
/* 2E614 8002DA14 10000001 */  b          .L8002DA1C
/* 2E618 8002DA18 02804025 */   or        $t0, $s4, $zero
.L8002DA1C:
/* 2E61C 8002DA1C 8C640000 */  lw         $a0, ($v1)
/* 2E620 8002DA20 3C0FE600 */  lui        $t7, 0xe600
/* 2E624 8002DA24 240C07FF */  addiu      $t4, $zero, 0x7ff
/* 2E628 8002DA28 24990008 */  addiu      $t9, $a0, 8
/* 2E62C 8002DA2C AC790000 */  sw         $t9, ($v1)
/* 2E630 8002DA30 AC920004 */  sw         $s2, 4($a0)
/* 2E634 8002DA34 AC9F0000 */  sw         $ra, ($a0)
/* 2E638 8002DA38 8C650000 */  lw         $a1, ($v1)
/* 2E63C 8002DA3C 24AE0008 */  addiu      $t6, $a1, 8
/* 2E640 8002DA40 AC6E0000 */  sw         $t6, ($v1)
/* 2E644 8002DA44 ACB60004 */  sw         $s6, 4($a1)
/* 2E648 8002DA48 ACB50000 */  sw         $s5, ($a1)
/* 2E64C 8002DA4C 8C660000 */  lw         $a2, ($v1)
/* 2E650 8002DA50 3C0EF300 */  lui        $t6, 0xf300
/* 2E654 8002DA54 24D80008 */  addiu      $t8, $a2, 8
/* 2E658 8002DA58 AC780000 */  sw         $t8, ($v1)
/* 2E65C 8002DA5C ACC00004 */  sw         $zero, 4($a2)
/* 2E660 8002DA60 ACCF0000 */  sw         $t7, ($a2)
/* 2E664 8002DA64 8C710000 */  lw         $s1, ($v1)
/* 2E668 8002DA68 26390008 */  addiu      $t9, $s1, 8
/* 2E66C 8002DA6C AC790000 */  sw         $t9, ($v1)
/* 2E670 8002DA70 AE2E0000 */  sw         $t6, ($s1)
/* 2E674 8002DA74 8E070000 */  lw         $a3, ($s0)
/* 2E678 8002DA78 00E80019 */  multu      $a3, $t0
/* 2E67C 8002DA7C 00071040 */  sll        $v0, $a3, 1
/* 2E680 8002DA80 00004812 */  mflo       $t1
/* 2E684 8002DA84 2529FFFF */  addiu      $t1, $t1, -1
/* 2E688 8002DA88 292107FF */  slti       $at, $t1, 0x7ff
/* 2E68C 8002DA8C 10200003 */  beqz       $at, .L8002DA9C
/* 2E690 8002DA90 00000000 */   nop       
/* 2E694 8002DA94 10000001 */  b          .L8002DA9C
/* 2E698 8002DA98 01206025 */   or        $t4, $t1, $zero
.L8002DA9C:
/* 2E69C 8002DA9C 04410002 */  bgez       $v0, .L8002DAA8
/* 2E6A0 8002DAA0 00400821 */   addu      $at, $v0, $zero
/* 2E6A4 8002DAA4 24410007 */  addiu      $at, $v0, 7
.L8002DAA8:
/* 2E6A8 8002DAA8 000110C3 */  sra        $v0, $at, 3
/* 2E6AC 8002DAAC 1C400003 */  bgtz       $v0, .L8002DABC
/* 2E6B0 8002DAB0 00406825 */   or        $t5, $v0, $zero
/* 2E6B4 8002DAB4 10000001 */  b          .L8002DABC
/* 2E6B8 8002DAB8 240D0001 */   addiu     $t5, $zero, 1
.L8002DABC:
/* 2E6BC 8002DABC 1C400003 */  bgtz       $v0, .L8002DACC
/* 2E6C0 8002DAC0 25B807FF */   addiu     $t8, $t5, 0x7ff
/* 2E6C4 8002DAC4 10000002 */  b          .L8002DAD0
/* 2E6C8 8002DAC8 24090001 */   addiu     $t1, $zero, 1
.L8002DACC:
/* 2E6CC 8002DACC 00404825 */  or         $t1, $v0, $zero
.L8002DAD0:
/* 2E6D0 8002DAD0 0309001A */  div        $zero, $t8, $t1
/* 2E6D4 8002DAD4 00007812 */  mflo       $t7
/* 2E6D8 8002DAD8 31F90FFF */  andi       $t9, $t7, 0xfff
/* 2E6DC 8002DADC 15200002 */  bnez       $t1, .L8002DAE8
/* 2E6E0 8002DAE0 00000000 */   nop       
/* 2E6E4 8002DAE4 0007000D */  break      7
.L8002DAE8:
/* 2E6E8 8002DAE8 2401FFFF */   addiu     $at, $zero, -1
/* 2E6EC 8002DAEC 15210004 */  bne        $t1, $at, .L8002DB00
/* 2E6F0 8002DAF0 3C018000 */   lui       $at, 0x8000
/* 2E6F4 8002DAF4 17010002 */  bne        $t8, $at, .L8002DB00
/* 2E6F8 8002DAF8 00000000 */   nop       
/* 2E6FC 8002DAFC 0006000D */  break      6
.L8002DB00:
/* 2E700 8002DB00 31980FFF */   andi      $t8, $t4, 0xfff
/* 2E704 8002DB04 00187B00 */  sll        $t7, $t8, 0xc
/* 2E708 8002DB08 03367025 */  or         $t6, $t9, $s6
/* 2E70C 8002DB0C 01CFC825 */  or         $t9, $t6, $t7
/* 2E710 8002DB10 AE390004 */  sw         $t9, 4($s1)
/* 2E714 8002DB14 8C620000 */  lw         $v0, ($v1)
/* 2E718 8002DB18 3C0EE700 */  lui        $t6, 0xe700
/* 2E71C 8002DB1C 02685021 */  addu       $t2, $s3, $t0
/* 2E720 8002DB20 24580008 */  addiu      $t8, $v0, 8
/* 2E724 8002DB24 AC780000 */  sw         $t8, ($v1)
/* 2E728 8002DB28 AC400004 */  sw         $zero, 4($v0)
/* 2E72C 8002DB2C AC4E0000 */  sw         $t6, ($v0)
/* 2E730 8002DB30 8C620000 */  lw         $v0, ($v1)
/* 2E734 8002DB34 3C01E400 */  lui        $at, 0xe400
/* 2E738 8002DB38 01685823 */  subu       $t3, $t3, $t0
/* 2E73C 8002DB3C 244F0008 */  addiu      $t7, $v0, 8
/* 2E740 8002DB40 AC6F0000 */  sw         $t7, ($v1)
/* 2E744 8002DB44 8E190000 */  lw         $t9, ($s0)
/* 2E748 8002DB48 AC400004 */  sw         $zero, 4($v0)
/* 2E74C 8002DB4C 0019C040 */  sll        $t8, $t9, 1
/* 2E750 8002DB50 270E0007 */  addiu      $t6, $t8, 7
/* 2E754 8002DB54 000E78C3 */  sra        $t7, $t6, 3
/* 2E758 8002DB58 31F901FF */  andi       $t9, $t7, 0x1ff
/* 2E75C 8002DB5C 0019C240 */  sll        $t8, $t9, 9
/* 2E760 8002DB60 03157025 */  or         $t6, $t8, $s5
/* 2E764 8002DB64 AC4E0000 */  sw         $t6, ($v0)
/* 2E768 8002DB68 8C620000 */  lw         $v0, ($v1)
/* 2E76C 8002DB6C 3C19F200 */  lui        $t9, 0xf200
/* 2E770 8002DB70 244F0008 */  addiu      $t7, $v0, 8
/* 2E774 8002DB74 AC6F0000 */  sw         $t7, ($v1)
/* 2E778 8002DB78 AC590000 */  sw         $t9, ($v0)
/* 2E77C 8002DB7C 8E180000 */  lw         $t8, ($s0)
/* 2E780 8002DB80 00403025 */  or         $a2, $v0, $zero
/* 2E784 8002DB84 270EFFFF */  addiu      $t6, $t8, -1
/* 2E788 8002DB88 000E7880 */  sll        $t7, $t6, 2
/* 2E78C 8002DB8C 31F90FFF */  andi       $t9, $t7, 0xfff
/* 2E790 8002DB90 250EFFFF */  addiu      $t6, $t0, -1
/* 2E794 8002DB94 000E7880 */  sll        $t7, $t6, 2
/* 2E798 8002DB98 0019C300 */  sll        $t8, $t9, 0xc
/* 2E79C 8002DB9C 31F90FFF */  andi       $t9, $t7, 0xfff
/* 2E7A0 8002DBA0 03197025 */  or         $t6, $t8, $t9
/* 2E7A4 8002DBA4 AC4E0004 */  sw         $t6, 4($v0)
/* 2E7A8 8002DBA8 8C620000 */  lw         $v0, ($v1)
/* 2E7AC 8002DBAC 244F0008 */  addiu      $t7, $v0, 8
/* 2E7B0 8002DBB0 AC6F0000 */  sw         $t7, ($v1)
/* 2E7B4 8002DBB4 8E180008 */  lw         $t8, 8($s0)
/* 2E7B8 8002DBB8 00403825 */  or         $a3, $v0, $zero
/* 2E7BC 8002DBBC 0317C821 */  addu       $t9, $t8, $s7
/* 2E7C0 8002DBC0 272EFFFF */  addiu      $t6, $t9, -1
/* 2E7C4 8002DBC4 000E7880 */  sll        $t7, $t6, 2
/* 2E7C8 8002DBC8 31F80FFF */  andi       $t8, $t7, 0xfff
/* 2E7CC 8002DBCC 0018CB00 */  sll        $t9, $t8, 0xc
/* 2E7D0 8002DBD0 254FFFFF */  addiu      $t7, $t2, -1
/* 2E7D4 8002DBD4 000FC080 */  sll        $t8, $t7, 2
/* 2E7D8 8002DBD8 03217025 */  or         $t6, $t9, $at
/* 2E7DC 8002DBDC 33190FFF */  andi       $t9, $t8, 0xfff
/* 2E7E0 8002DBE0 01D97825 */  or         $t7, $t6, $t9
/* 2E7E4 8002DBE4 0013C080 */  sll        $t8, $s3, 2
/* 2E7E8 8002DBE8 330E0FFF */  andi       $t6, $t8, 0xfff
/* 2E7EC 8002DBEC 03CEC825 */  or         $t9, $fp, $t6
/* 2E7F0 8002DBF0 AC590004 */  sw         $t9, 4($v0)
/* 2E7F4 8002DBF4 AC4F0000 */  sw         $t7, ($v0)
/* 2E7F8 8002DBF8 8C620000 */  lw         $v0, ($v1)
/* 2E7FC 8002DBFC 3C18E100 */  lui        $t8, 0xe100
/* 2E800 8002DC00 3C19F100 */  lui        $t9, 0xf100
/* 2E804 8002DC04 244F0008 */  addiu      $t7, $v0, 8
/* 2E808 8002DC08 AC6F0000 */  sw         $t7, ($v1)
/* 2E80C 8002DC0C AC400004 */  sw         $zero, 4($v0)
/* 2E810 8002DC10 AC580000 */  sw         $t8, ($v0)
/* 2E814 8002DC14 00402025 */  or         $a0, $v0, $zero
/* 2E818 8002DC18 8C620000 */  lw         $v0, ($v1)
/* 2E81C 8002DC1C 3C0F1000 */  lui        $t7, 0x1000
/* 2E820 8002DC20 35EF0400 */  ori        $t7, $t7, 0x400
/* 2E824 8002DC24 244E0008 */  addiu      $t6, $v0, 8
/* 2E828 8002DC28 AC6E0000 */  sw         $t6, ($v1)
/* 2E82C 8002DC2C AC4F0004 */  sw         $t7, 4($v0)
/* 2E830 8002DC30 AC590000 */  sw         $t9, ($v0)
/* 2E834 8002DC34 8E180000 */  lw         $t8, ($s0)
/* 2E838 8002DC38 01409825 */  or         $s3, $t2, $zero
/* 2E83C 8002DC3C 00402825 */  or         $a1, $v0, $zero
/* 2E840 8002DC40 01180019 */  multu      $t0, $t8
/* 2E844 8002DC44 00007012 */  mflo       $t6
/* 2E848 8002DC48 000EC840 */  sll        $t9, $t6, 1
/* 2E84C 8002DC4C 1D60FF6E */  bgtz       $t3, .L8002DA08
/* 2E850 8002DC50 02599021 */   addu      $s2, $s2, $t9
.L8002DC54:
/* 2E854 8002DC54 8C620000 */  lw         $v0, ($v1)
/* 2E858 8002DC58 3C18E700 */  lui        $t8, 0xe700
/* 2E85C 8002DC5C 3C19E200 */  lui        $t9, 0xe200
/* 2E860 8002DC60 244F0008 */  addiu      $t7, $v0, 8
/* 2E864 8002DC64 AC6F0000 */  sw         $t7, ($v1)
/* 2E868 8002DC68 AC400004 */  sw         $zero, 4($v0)
/* 2E86C 8002DC6C AC580000 */  sw         $t8, ($v0)
/* 2E870 8002DC70 8C620000 */  lw         $v0, ($v1)
/* 2E874 8002DC74 37391E01 */  ori        $t9, $t9, 0x1e01
/* 2E878 8002DC78 244E0008 */  addiu      $t6, $v0, 8
/* 2E87C 8002DC7C AC6E0000 */  sw         $t6, ($v1)
/* 2E880 8002DC80 AC400004 */  sw         $zero, 4($v0)
/* 2E884 8002DC84 AC590000 */  sw         $t9, ($v0)
/* 2E888 8002DC88 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2E88C 8002DC8C 8FBE0028 */  lw         $fp, 0x28($sp)
/* 2E890 8002DC90 8FB70024 */  lw         $s7, 0x24($sp)
/* 2E894 8002DC94 8FB60020 */  lw         $s6, 0x20($sp)
/* 2E898 8002DC98 8FB5001C */  lw         $s5, 0x1c($sp)
/* 2E89C 8002DC9C 8FB40018 */  lw         $s4, 0x18($sp)
/* 2E8A0 8002DCA0 8FB30014 */  lw         $s3, 0x14($sp)
/* 2E8A4 8002DCA4 8FB20010 */  lw         $s2, 0x10($sp)
/* 2E8A8 8002DCA8 8FB1000C */  lw         $s1, 0xc($sp)
/* 2E8AC 8002DCAC 8FB00008 */  lw         $s0, 8($sp)
/* 2E8B0 8002DCB0 03E00008 */  jr         $ra
/* 2E8B4 8002DCB4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002DCB8
/* 2E8B8 8002DCB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2E8BC 8002DCBC 24010400 */  addiu      $at, $zero, 0x400
/* 2E8C0 8002DCC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2E8C4 8002DCC4 00803025 */  or         $a2, $a0, $zero
/* 2E8C8 8002DCC8 10A10012 */  beq        $a1, $at, .L8002DD14
/* 2E8CC 8002DCCC 00001825 */   or        $v1, $zero, $zero
/* 2E8D0 8002DCD0 24010800 */  addiu      $at, $zero, 0x800
/* 2E8D4 8002DCD4 14A1001E */  bne        $a1, $at, .L8002DD50
/* 2E8D8 8002DCD8 24040001 */   addiu     $a0, $zero, 1
/* 2E8DC 8002DCDC 0C0122E4 */  jal        func_80048B90
/* 2E8E0 8002DCE0 AFA60018 */   sw        $a2, 0x18($sp)
/* 2E8E4 8002DCE4 8FA60018 */  lw         $a2, 0x18($sp)
/* 2E8E8 8002DCE8 24030001 */  addiu      $v1, $zero, 1
/* 2E8EC 8002DCEC 8CC20004 */  lw         $v0, 4($a2)
/* 2E8F0 8002DCF0 54400006 */  bnel       $v0, $zero, .L8002DD0C
/* 2E8F4 8002DCF4 2458FFFF */   addiu     $t8, $v0, -1
/* 2E8F8 8002DCF8 8CCE0008 */  lw         $t6, 8($a2)
/* 2E8FC 8002DCFC 004E7821 */  addu       $t7, $v0, $t6
/* 2E900 8002DD00 ACCF0004 */  sw         $t7, 4($a2)
/* 2E904 8002DD04 01E01025 */  or         $v0, $t7, $zero
/* 2E908 8002DD08 2458FFFF */  addiu      $t8, $v0, -1
.L8002DD0C:
/* 2E90C 8002DD0C 10000010 */  b          .L8002DD50
/* 2E910 8002DD10 ACD80004 */   sw        $t8, 4($a2)
.L8002DD14:
/* 2E914 8002DD14 24040001 */  addiu      $a0, $zero, 1
/* 2E918 8002DD18 0C0122E4 */  jal        func_80048B90
/* 2E91C 8002DD1C AFA60018 */   sw        $a2, 0x18($sp)
/* 2E920 8002DD20 8FA60018 */  lw         $a2, 0x18($sp)
/* 2E924 8002DD24 8CC30008 */  lw         $v1, 8($a2)
/* 2E928 8002DD28 8CC20004 */  lw         $v0, 4($a2)
/* 2E92C 8002DD2C 2479FFFF */  addiu      $t9, $v1, -1
/* 2E930 8002DD30 0059082A */  slt        $at, $v0, $t9
/* 2E934 8002DD34 14200003 */  bnez       $at, .L8002DD44
/* 2E938 8002DD38 00434023 */   subu      $t0, $v0, $v1
/* 2E93C 8002DD3C ACC80004 */  sw         $t0, 4($a2)
/* 2E940 8002DD40 01001025 */  or         $v0, $t0, $zero
.L8002DD44:
/* 2E944 8002DD44 24490001 */  addiu      $t1, $v0, 1
/* 2E948 8002DD48 ACC90004 */  sw         $t1, 4($a2)
/* 2E94C 8002DD4C 24030001 */  addiu      $v1, $zero, 1
.L8002DD50:
/* 2E950 8002DD50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2E954 8002DD54 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2E958 8002DD58 00601025 */  or         $v0, $v1, $zero
/* 2E95C 8002DD5C 03E00008 */  jr         $ra
/* 2E960 8002DD60 00000000 */   nop       

glabel func_8002DD64
/* 2E964 8002DD64 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2E968 8002DD68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2E96C 8002DD6C 0C007DD4 */  jal        func_8001F750
/* 2E970 8002DD70 AFA40020 */   sw        $a0, 0x20($sp)
/* 2E974 8002DD74 3045FFFF */  andi       $a1, $v0, 0xffff
/* 2E978 8002DD78 AFA5001C */  sw         $a1, 0x1c($sp)
/* 2E97C 8002DD7C 0C00B72E */  jal        func_8002DCB8
/* 2E980 8002DD80 8FA40020 */   lw        $a0, 0x20($sp)
/* 2E984 8002DD84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2E988 8002DD88 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2E98C 8002DD8C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2E990 8002DD90 03E00008 */  jr         $ra
/* 2E994 8002DD94 00000000 */   nop       

glabel func_8002DD98
/* 2E998 8002DD98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2E99C 8002DD9C 24010100 */  addiu      $at, $zero, 0x100
/* 2E9A0 8002DDA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2E9A4 8002DDA4 00803025 */  or         $a2, $a0, $zero
/* 2E9A8 8002DDA8 10A10012 */  beq        $a1, $at, .L8002DDF4
/* 2E9AC 8002DDAC 00001825 */   or        $v1, $zero, $zero
/* 2E9B0 8002DDB0 24010200 */  addiu      $at, $zero, 0x200
/* 2E9B4 8002DDB4 14A1001E */  bne        $a1, $at, .L8002DE30
/* 2E9B8 8002DDB8 24040001 */   addiu     $a0, $zero, 1
/* 2E9BC 8002DDBC 0C0122E4 */  jal        func_80048B90
/* 2E9C0 8002DDC0 AFA60018 */   sw        $a2, 0x18($sp)
/* 2E9C4 8002DDC4 8FA60018 */  lw         $a2, 0x18($sp)
/* 2E9C8 8002DDC8 24030001 */  addiu      $v1, $zero, 1
/* 2E9CC 8002DDCC 8CC20004 */  lw         $v0, 4($a2)
/* 2E9D0 8002DDD0 54400006 */  bnel       $v0, $zero, .L8002DDEC
/* 2E9D4 8002DDD4 2458FFFF */   addiu     $t8, $v0, -1
/* 2E9D8 8002DDD8 8CCE0008 */  lw         $t6, 8($a2)
/* 2E9DC 8002DDDC 004E7821 */  addu       $t7, $v0, $t6
/* 2E9E0 8002DDE0 ACCF0004 */  sw         $t7, 4($a2)
/* 2E9E4 8002DDE4 01E01025 */  or         $v0, $t7, $zero
/* 2E9E8 8002DDE8 2458FFFF */  addiu      $t8, $v0, -1
.L8002DDEC:
/* 2E9EC 8002DDEC 10000010 */  b          .L8002DE30
/* 2E9F0 8002DDF0 ACD80004 */   sw        $t8, 4($a2)
.L8002DDF4:
/* 2E9F4 8002DDF4 24040001 */  addiu      $a0, $zero, 1
/* 2E9F8 8002DDF8 0C0122E4 */  jal        func_80048B90
/* 2E9FC 8002DDFC AFA60018 */   sw        $a2, 0x18($sp)
/* 2EA00 8002DE00 8FA60018 */  lw         $a2, 0x18($sp)
/* 2EA04 8002DE04 8CC30008 */  lw         $v1, 8($a2)
/* 2EA08 8002DE08 8CC20004 */  lw         $v0, 4($a2)
/* 2EA0C 8002DE0C 2479FFFF */  addiu      $t9, $v1, -1
/* 2EA10 8002DE10 0059082A */  slt        $at, $v0, $t9
/* 2EA14 8002DE14 14200003 */  bnez       $at, .L8002DE24
/* 2EA18 8002DE18 00434023 */   subu      $t0, $v0, $v1
/* 2EA1C 8002DE1C ACC80004 */  sw         $t0, 4($a2)
/* 2EA20 8002DE20 01001025 */  or         $v0, $t0, $zero
.L8002DE24:
/* 2EA24 8002DE24 24490001 */  addiu      $t1, $v0, 1
/* 2EA28 8002DE28 ACC90004 */  sw         $t1, 4($a2)
/* 2EA2C 8002DE2C 24030001 */  addiu      $v1, $zero, 1
.L8002DE30:
/* 2EA30 8002DE30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2EA34 8002DE34 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2EA38 8002DE38 00601025 */  or         $v0, $v1, $zero
/* 2EA3C 8002DE3C 03E00008 */  jr         $ra
/* 2EA40 8002DE40 00000000 */   nop       

glabel func_8002DE44
/* 2EA44 8002DE44 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2EA48 8002DE48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2EA4C 8002DE4C 0C007DD4 */  jal        func_8001F750
/* 2EA50 8002DE50 AFA40020 */   sw        $a0, 0x20($sp)
/* 2EA54 8002DE54 3045FFFF */  andi       $a1, $v0, 0xffff
/* 2EA58 8002DE58 AFA5001C */  sw         $a1, 0x1c($sp)
/* 2EA5C 8002DE5C 0C00B766 */  jal        func_8002DD98
/* 2EA60 8002DE60 8FA40020 */   lw        $a0, 0x20($sp)
/* 2EA64 8002DE64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2EA68 8002DE68 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2EA6C 8002DE6C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2EA70 8002DE70 03E00008 */  jr         $ra
/* 2EA74 8002DE74 00000000 */   nop       

glabel func_8002DE78
/* 2EA78 8002DE78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2EA7C 8002DE7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2EA80 8002DE80 0C007DD4 */  jal        func_8001F750
/* 2EA84 8002DE84 AFA40020 */   sw        $a0, 0x20($sp)
/* 2EA88 8002DE88 3C0E8007 */  lui        $t6, 0x8007
/* 2EA8C 8002DE8C 8DCE8BA0 */  lw         $t6, -0x7460($t6)
/* 2EA90 8002DE90 8FA50020 */  lw         $a1, 0x20($sp)
/* 2EA94 8002DE94 24040001 */  addiu      $a0, $zero, 1
/* 2EA98 8002DE98 95CF0006 */  lhu        $t7, 6($t6)
/* 2EA9C 8002DE9C 8CA6000C */  lw         $a2, 0xc($a1)
/* 2EAA0 8002DEA0 31F82000 */  andi       $t8, $t7, 0x2000
/* 2EAA4 8002DEA4 5300000B */  beql       $t8, $zero, .L8002DED4
/* 2EAA8 8002DEA8 24010400 */   addiu     $at, $zero, 0x400
/* 2EAAC 8002DEAC 8CB90008 */  lw         $t9, 8($a1)
/* 2EAB0 8002DEB0 8CA80004 */  lw         $t0, 4($a1)
/* 2EAB4 8002DEB4 2401000A */  addiu      $at, $zero, 0xa
/* 2EAB8 8002DEB8 03283023 */  subu       $a2, $t9, $t0
/* 2EABC 8002DEBC 24C60001 */  addiu      $a2, $a2, 1
/* 2EAC0 8002DEC0 00C1001A */  div        $zero, $a2, $at
/* 2EAC4 8002DEC4 00003012 */  mflo       $a2
/* 2EAC8 8002DEC8 00000000 */  nop        
/* 2EACC 8002DECC 00000000 */  nop        
/* 2EAD0 8002DED0 24010400 */  addiu      $at, $zero, 0x400
.L8002DED4:
/* 2EAD4 8002DED4 10410012 */  beq        $v0, $at, .L8002DF20
/* 2EAD8 8002DED8 24010800 */   addiu     $at, $zero, 0x800
/* 2EADC 8002DEDC 1441001E */  bne        $v0, $at, .L8002DF58
/* 2EAE0 8002DEE0 24040001 */   addiu     $a0, $zero, 1
/* 2EAE4 8002DEE4 AFA50020 */  sw         $a1, 0x20($sp)
/* 2EAE8 8002DEE8 0C0122E4 */  jal        func_80048B90
/* 2EAEC 8002DEEC AFA60018 */   sw        $a2, 0x18($sp)
/* 2EAF0 8002DEF0 8FA50020 */  lw         $a1, 0x20($sp)
/* 2EAF4 8002DEF4 8FA60018 */  lw         $a2, 0x18($sp)
/* 2EAF8 8002DEF8 8CA90000 */  lw         $t1, ($a1)
/* 2EAFC 8002DEFC 8CA30004 */  lw         $v1, 4($a1)
/* 2EB00 8002DF00 01262023 */  subu       $a0, $t1, $a2
/* 2EB04 8002DF04 0083082A */  slt        $at, $a0, $v1
/* 2EB08 8002DF08 10200003 */  beqz       $at, .L8002DF18
/* 2EB0C 8002DF0C 00000000 */   nop       
/* 2EB10 8002DF10 10000011 */  b          .L8002DF58
/* 2EB14 8002DF14 ACA30000 */   sw        $v1, ($a1)
.L8002DF18:
/* 2EB18 8002DF18 1000000F */  b          .L8002DF58
/* 2EB1C 8002DF1C ACA40000 */   sw        $a0, ($a1)
.L8002DF20:
/* 2EB20 8002DF20 AFA50020 */  sw         $a1, 0x20($sp)
/* 2EB24 8002DF24 0C0122E4 */  jal        func_80048B90
/* 2EB28 8002DF28 AFA60018 */   sw        $a2, 0x18($sp)
/* 2EB2C 8002DF2C 8FA50020 */  lw         $a1, 0x20($sp)
/* 2EB30 8002DF30 8FA60018 */  lw         $a2, 0x18($sp)
/* 2EB34 8002DF34 8CAA0000 */  lw         $t2, ($a1)
/* 2EB38 8002DF38 8CA30008 */  lw         $v1, 8($a1)
/* 2EB3C 8002DF3C 01462021 */  addu       $a0, $t2, $a2
/* 2EB40 8002DF40 0064082A */  slt        $at, $v1, $a0
/* 2EB44 8002DF44 50200004 */  beql       $at, $zero, .L8002DF58
/* 2EB48 8002DF48 ACA40000 */   sw        $a0, ($a1)
/* 2EB4C 8002DF4C 10000002 */  b          .L8002DF58
/* 2EB50 8002DF50 ACA30000 */   sw        $v1, ($a1)
/* 2EB54 8002DF54 ACA40000 */  sw         $a0, ($a1)
.L8002DF58:
/* 2EB58 8002DF58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2EB5C 8002DF5C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2EB60 8002DF60 03E00008 */  jr         $ra
/* 2EB64 8002DF64 00000000 */   nop       

glabel func_8002DF68
/* 2EB68 8002DF68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2EB6C 8002DF6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2EB70 8002DF70 8C880010 */  lw         $t0, 0x10($a0)
/* 2EB74 8002DF74 00803825 */  or         $a3, $a0, $zero
/* 2EB78 8002DF78 00004825 */  or         $t1, $zero, $zero
/* 2EB7C 8002DF7C 24060001 */  addiu      $a2, $zero, 1
/* 2EB80 8002DF80 19000007 */  blez       $t0, .L8002DFA0
/* 2EB84 8002DF84 01001025 */   or        $v0, $t0, $zero
/* 2EB88 8002DF88 2403000A */  addiu      $v1, $zero, 0xa
.L8002DF8C:
/* 2EB8C 8002DF8C 00C30019 */  multu      $a2, $v1
/* 2EB90 8002DF90 2442FFFF */  addiu      $v0, $v0, -1
/* 2EB94 8002DF94 00003012 */  mflo       $a2
/* 2EB98 8002DF98 1C40FFFC */  bgtz       $v0, .L8002DF8C
/* 2EB9C 8002DF9C 00000000 */   nop       
.L8002DFA0:
/* 2EBA0 8002DFA0 24010100 */  addiu      $at, $zero, 0x100
/* 2EBA4 8002DFA4 10A10015 */  beq        $a1, $at, .L8002DFFC
/* 2EBA8 8002DFA8 24010200 */   addiu     $at, $zero, 0x200
/* 2EBAC 8002DFAC 10A10007 */  beq        $a1, $at, .L8002DFCC
/* 2EBB0 8002DFB0 24010400 */   addiu     $at, $zero, 0x400
/* 2EBB4 8002DFB4 10A1003C */  beq        $a1, $at, .L8002E0A8
/* 2EBB8 8002DFB8 24010800 */   addiu     $at, $zero, 0x800
/* 2EBBC 8002DFBC 50A10019 */  beql       $a1, $at, .L8002E024
/* 2EBC0 8002DFC0 8CE30008 */   lw        $v1, 8($a3)
/* 2EBC4 8002DFC4 10000047 */  b          .L8002E0E4
/* 2EBC8 8002DFC8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002DFCC:
/* 2EBCC 8002DFCC 8CEE000C */  lw         $t6, 0xc($a3)
/* 2EBD0 8002DFD0 25020001 */  addiu      $v0, $t0, 1
/* 2EBD4 8002DFD4 24040001 */  addiu      $a0, $zero, 1
/* 2EBD8 8002DFD8 004E082A */  slt        $at, $v0, $t6
/* 2EBDC 8002DFDC 10200005 */  beqz       $at, .L8002DFF4
/* 2EBE0 8002DFE0 00000000 */   nop       
/* 2EBE4 8002DFE4 0C0122E4 */  jal        func_80048B90
/* 2EBE8 8002DFE8 ACE20010 */   sw        $v0, 0x10($a3)
/* 2EBEC 8002DFEC 1000003C */  b          .L8002E0E0
/* 2EBF0 8002DFF0 24090009 */   addiu     $t1, $zero, 9
.L8002DFF4:
/* 2EBF4 8002DFF4 1000003A */  b          .L8002E0E0
/* 2EBF8 8002DFF8 24090008 */   addiu     $t1, $zero, 8
.L8002DFFC:
/* 2EBFC 8002DFFC 19000006 */  blez       $t0, .L8002E018
/* 2EC00 8002E000 250FFFFF */   addiu     $t7, $t0, -1
/* 2EC04 8002E004 ACEF0010 */  sw         $t7, 0x10($a3)
/* 2EC08 8002E008 0C0122E4 */  jal        func_80048B90
/* 2EC0C 8002E00C 24040001 */   addiu     $a0, $zero, 1
/* 2EC10 8002E010 10000033 */  b          .L8002E0E0
/* 2EC14 8002E014 24090009 */   addiu     $t1, $zero, 9
.L8002E018:
/* 2EC18 8002E018 10000031 */  b          .L8002E0E0
/* 2EC1C 8002E01C 24090008 */   addiu     $t1, $zero, 8
/* 2EC20 8002E020 8CE30008 */  lw         $v1, 8($a3)
.L8002E024:
/* 2EC24 8002E024 8CE20000 */  lw         $v0, ($a3)
/* 2EC28 8002E028 54620017 */  bnel       $v1, $v0, .L8002E088
/* 2EC2C 8002E02C 00466021 */   addu      $t4, $v0, $a2
/* 2EC30 8002E030 0046001A */  div        $zero, $v0, $a2
/* 2EC34 8002E034 0000C012 */  mflo       $t8
/* 2EC38 8002E038 8CE30004 */  lw         $v1, 4($a3)
/* 2EC3C 8002E03C 14C00002 */  bnez       $a2, .L8002E048
/* 2EC40 8002E040 00000000 */   nop       
/* 2EC44 8002E044 0007000D */  break      7
.L8002E048:
/* 2EC48 8002E048 2401FFFF */   addiu     $at, $zero, -1
/* 2EC4C 8002E04C 14C10004 */  bne        $a2, $at, .L8002E060
/* 2EC50 8002E050 3C018000 */   lui       $at, 0x8000
/* 2EC54 8002E054 14410002 */  bne        $v0, $at, .L8002E060
/* 2EC58 8002E058 00000000 */   nop       
/* 2EC5C 8002E05C 0006000D */  break      6
.L8002E060:
/* 2EC60 8002E060 03060019 */   multu     $t8, $a2
/* 2EC64 8002E064 0000C812 */  mflo       $t9
/* 2EC68 8002E068 00595023 */  subu       $t2, $v0, $t9
/* 2EC6C 8002E06C 0143082A */  slt        $at, $t2, $v1
/* 2EC70 8002E070 ACEA0000 */  sw         $t2, ($a3)
/* 2EC74 8002E074 10200008 */  beqz       $at, .L8002E098
/* 2EC78 8002E078 01405825 */   or        $t3, $t2, $zero
/* 2EC7C 8002E07C 10000006 */  b          .L8002E098
/* 2EC80 8002E080 ACE30000 */   sw        $v1, ($a3)
/* 2EC84 8002E084 00466021 */  addu       $t4, $v0, $a2
.L8002E088:
/* 2EC88 8002E088 006C082A */  slt        $at, $v1, $t4
/* 2EC8C 8002E08C 10200002 */  beqz       $at, .L8002E098
/* 2EC90 8002E090 ACEC0000 */   sw        $t4, ($a3)
/* 2EC94 8002E094 ACE30000 */  sw         $v1, ($a3)
.L8002E098:
/* 2EC98 8002E098 0C0122E4 */  jal        func_80048B90
/* 2EC9C 8002E09C 24040001 */   addiu     $a0, $zero, 1
/* 2ECA0 8002E0A0 1000000F */  b          .L8002E0E0
/* 2ECA4 8002E0A4 24090009 */   addiu     $t1, $zero, 9
.L8002E0A8:
/* 2ECA8 8002E0A8 8CE20000 */  lw         $v0, ($a3)
/* 2ECAC 8002E0AC 8CE30004 */  lw         $v1, 4($a3)
/* 2ECB0 8002E0B0 00467823 */  subu       $t7, $v0, $a2
/* 2ECB4 8002E0B4 14620004 */  bne        $v1, $v0, .L8002E0C8
/* 2ECB8 8002E0B8 01E3082A */   slt       $at, $t7, $v1
/* 2ECBC 8002E0BC 8CEE0008 */  lw         $t6, 8($a3)
/* 2ECC0 8002E0C0 10000004 */  b          .L8002E0D4
/* 2ECC4 8002E0C4 ACEE0000 */   sw        $t6, ($a3)
.L8002E0C8:
/* 2ECC8 8002E0C8 10200002 */  beqz       $at, .L8002E0D4
/* 2ECCC 8002E0CC ACEF0000 */   sw        $t7, ($a3)
/* 2ECD0 8002E0D0 ACE30000 */  sw         $v1, ($a3)
.L8002E0D4:
/* 2ECD4 8002E0D4 0C0122E4 */  jal        func_80048B90
/* 2ECD8 8002E0D8 24040001 */   addiu     $a0, $zero, 1
/* 2ECDC 8002E0DC 24090009 */  addiu      $t1, $zero, 9
.L8002E0E0:
/* 2ECE0 8002E0E0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002E0E4:
/* 2ECE4 8002E0E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2ECE8 8002E0E8 01201025 */  or         $v0, $t1, $zero
/* 2ECEC 8002E0EC 03E00008 */  jr         $ra
/* 2ECF0 8002E0F0 00000000 */   nop       

glabel func_8002E0F4
/* 2ECF4 8002E0F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2ECF8 8002E0F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2ECFC 8002E0FC 0C007DD4 */  jal        func_8001F750
/* 2ED00 8002E100 AFA40020 */   sw        $a0, 0x20($sp)
/* 2ED04 8002E104 3045FFFF */  andi       $a1, $v0, 0xffff
/* 2ED08 8002E108 AFA5001C */  sw         $a1, 0x1c($sp)
/* 2ED0C 8002E10C 0C00B7DA */  jal        func_8002DF68
/* 2ED10 8002E110 8FA40020 */   lw        $a0, 0x20($sp)
/* 2ED14 8002E114 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2ED18 8002E118 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2ED1C 8002E11C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2ED20 8002E120 03E00008 */  jr         $ra
/* 2ED24 8002E124 00000000 */   nop       

glabel func_8002E128
/* 2ED28 8002E128 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2ED2C 8002E12C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2ED30 8002E130 0C007DD4 */  jal        func_8001F750
/* 2ED34 8002E134 AFA40020 */   sw        $a0, 0x20($sp)
/* 2ED38 8002E138 8FA50020 */  lw         $a1, 0x20($sp)
/* 2ED3C 8002E13C 3043FFFF */  andi       $v1, $v0, 0xffff
/* 2ED40 8002E140 00603825 */  or         $a3, $v1, $zero
/* 2ED44 8002E144 1060003A */  beqz       $v1, .L8002E230
/* 2ED48 8002E148 8CA6000C */   lw        $a2, 0xc($a1)
/* 2ED4C 8002E14C 24040001 */  addiu      $a0, $zero, 1
/* 2ED50 8002E150 AFA50020 */  sw         $a1, 0x20($sp)
/* 2ED54 8002E154 AFA60018 */  sw         $a2, 0x18($sp)
/* 2ED58 8002E158 0C0122E4 */  jal        func_80048B90
/* 2ED5C 8002E15C AFA3001C */   sw        $v1, 0x1c($sp)
/* 2ED60 8002E160 8FA7001C */  lw         $a3, 0x1c($sp)
/* 2ED64 8002E164 24010100 */  addiu      $at, $zero, 0x100
/* 2ED68 8002E168 8FA50020 */  lw         $a1, 0x20($sp)
/* 2ED6C 8002E16C 10E1001E */  beq        $a3, $at, .L8002E1E8
/* 2ED70 8002E170 8FA60018 */   lw        $a2, 0x18($sp)
/* 2ED74 8002E174 24010200 */  addiu      $at, $zero, 0x200
/* 2ED78 8002E178 10E10007 */  beq        $a3, $at, .L8002E198
/* 2ED7C 8002E17C 24010400 */   addiu     $at, $zero, 0x400
/* 2ED80 8002E180 10E1001D */  beq        $a3, $at, .L8002E1F8
/* 2ED84 8002E184 24010800 */   addiu     $at, $zero, 0x800
/* 2ED88 8002E188 50E10008 */  beql       $a3, $at, .L8002E1AC
/* 2ED8C 8002E18C 8CA20000 */   lw        $v0, ($a1)
/* 2ED90 8002E190 10000028 */  b          .L8002E234
/* 2ED94 8002E194 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002E198:
/* 2ED98 8002E198 00C00821 */  addu       $at, $a2, $zero
/* 2ED9C 8002E19C 00063080 */  sll        $a2, $a2, 2
/* 2EDA0 8002E1A0 00C13021 */  addu       $a2, $a2, $at
/* 2EDA4 8002E1A4 00063040 */  sll        $a2, $a2, 1
/* 2EDA8 8002E1A8 8CA20000 */  lw         $v0, ($a1)
.L8002E1AC:
/* 2EDAC 8002E1AC 8CA30008 */  lw         $v1, 8($a1)
/* 2EDB0 8002E1B0 00462021 */  addu       $a0, $v0, $a2
/* 2EDB4 8002E1B4 0043082A */  slt        $at, $v0, $v1
/* 2EDB8 8002E1B8 54200005 */  bnel       $at, $zero, .L8002E1D0
/* 2EDBC 8002E1BC 0064082A */   slt       $at, $v1, $a0
/* 2EDC0 8002E1C0 8CAE0004 */  lw         $t6, 4($a1)
/* 2EDC4 8002E1C4 1000001A */  b          .L8002E230
/* 2EDC8 8002E1C8 ACAE0000 */   sw        $t6, ($a1)
/* 2EDCC 8002E1CC 0064082A */  slt        $at, $v1, $a0
.L8002E1D0:
/* 2EDD0 8002E1D0 10200003 */  beqz       $at, .L8002E1E0
/* 2EDD4 8002E1D4 00000000 */   nop       
/* 2EDD8 8002E1D8 10000015 */  b          .L8002E230
/* 2EDDC 8002E1DC ACA30000 */   sw        $v1, ($a1)
.L8002E1E0:
/* 2EDE0 8002E1E0 10000013 */  b          .L8002E230
/* 2EDE4 8002E1E4 ACA40000 */   sw        $a0, ($a1)
.L8002E1E8:
/* 2EDE8 8002E1E8 00C00821 */  addu       $at, $a2, $zero
/* 2EDEC 8002E1EC 00063080 */  sll        $a2, $a2, 2
/* 2EDF0 8002E1F0 00C13021 */  addu       $a2, $a2, $at
/* 2EDF4 8002E1F4 00063040 */  sll        $a2, $a2, 1
.L8002E1F8:
/* 2EDF8 8002E1F8 8CA30004 */  lw         $v1, 4($a1)
/* 2EDFC 8002E1FC 8CA20000 */  lw         $v0, ($a1)
/* 2EE00 8002E200 0062082A */  slt        $at, $v1, $v0
/* 2EE04 8002E204 14200004 */  bnez       $at, .L8002E218
/* 2EE08 8002E208 00462023 */   subu      $a0, $v0, $a2
/* 2EE0C 8002E20C 8CAF0008 */  lw         $t7, 8($a1)
/* 2EE10 8002E210 10000007 */  b          .L8002E230
/* 2EE14 8002E214 ACAF0000 */   sw        $t7, ($a1)
.L8002E218:
/* 2EE18 8002E218 0083082A */  slt        $at, $a0, $v1
/* 2EE1C 8002E21C 50200004 */  beql       $at, $zero, .L8002E230
/* 2EE20 8002E220 ACA40000 */   sw        $a0, ($a1)
/* 2EE24 8002E224 10000002 */  b          .L8002E230
/* 2EE28 8002E228 ACA30000 */   sw        $v1, ($a1)
/* 2EE2C 8002E22C ACA40000 */  sw         $a0, ($a1)
.L8002E230:
/* 2EE30 8002E230 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002E234:
/* 2EE34 8002E234 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2EE38 8002E238 00E01025 */  or         $v0, $a3, $zero
/* 2EE3C 8002E23C 03E00008 */  jr         $ra
/* 2EE40 8002E240 00000000 */   nop       

glabel func_8002E244
/* 2EE44 8002E244 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2EE48 8002E248 3C03800A */  lui        $v1, 0x800a
/* 2EE4C 8002E24C 24637420 */  addiu      $v1, $v1, 0x7420
/* 2EE50 8002E250 8C620000 */  lw         $v0, ($v1)
/* 2EE54 8002E254 AFB5001C */  sw         $s5, 0x1c($sp)
/* 2EE58 8002E258 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2EE5C 8002E25C 244E0008 */  addiu      $t6, $v0, 8
/* 2EE60 8002E260 AFBE0028 */  sw         $fp, 0x28($sp)
/* 2EE64 8002E264 AFB70024 */  sw         $s7, 0x24($sp)
/* 2EE68 8002E268 AFB60020 */  sw         $s6, 0x20($sp)
/* 2EE6C 8002E26C AFB40018 */  sw         $s4, 0x18($sp)
/* 2EE70 8002E270 AFB30014 */  sw         $s3, 0x14($sp)
/* 2EE74 8002E274 AFB20010 */  sw         $s2, 0x10($sp)
/* 2EE78 8002E278 AFB1000C */  sw         $s1, 0xc($sp)
/* 2EE7C 8002E27C AFB00008 */  sw         $s0, 8($sp)
/* 2EE80 8002E280 AC6E0000 */  sw         $t6, ($v1)
/* 2EE84 8002E284 3C15E700 */  lui        $s5, 0xe700
/* 2EE88 8002E288 AC550000 */  sw         $s5, ($v0)
/* 2EE8C 8002E28C AC400004 */  sw         $zero, 4($v0)
/* 2EE90 8002E290 00403825 */  or         $a3, $v0, $zero
/* 2EE94 8002E294 8C620000 */  lw         $v0, ($v1)
/* 2EE98 8002E298 3C18E300 */  lui        $t8, 0xe300
/* 2EE9C 8002E29C 37180A01 */  ori        $t8, $t8, 0xa01
/* 2EEA0 8002E2A0 244F0008 */  addiu      $t7, $v0, 8
/* 2EEA4 8002E2A4 AC6F0000 */  sw         $t7, ($v1)
/* 2EEA8 8002E2A8 AC400004 */  sw         $zero, 4($v0)
/* 2EEAC 8002E2AC AC580000 */  sw         $t8, ($v0)
/* 2EEB0 8002E2B0 00404025 */  or         $t0, $v0, $zero
/* 2EEB4 8002E2B4 8C620000 */  lw         $v0, ($v1)
/* 2EEB8 8002E2B8 3C0F0050 */  lui        $t7, 0x50
/* 2EEBC 8002E2BC 3C0EE200 */  lui        $t6, 0xe200
/* 2EEC0 8002E2C0 24590008 */  addiu      $t9, $v0, 8
/* 2EEC4 8002E2C4 AC790000 */  sw         $t9, ($v1)
/* 2EEC8 8002E2C8 35CE001C */  ori        $t6, $t6, 0x1c
/* 2EECC 8002E2CC 35EF4240 */  ori        $t7, $t7, 0x4240
/* 2EED0 8002E2D0 AC4F0004 */  sw         $t7, 4($v0)
/* 2EED4 8002E2D4 AC4E0000 */  sw         $t6, ($v0)
/* 2EED8 8002E2D8 00404825 */  or         $t1, $v0, $zero
/* 2EEDC 8002E2DC 8C620000 */  lw         $v0, ($v1)
/* 2EEE0 8002E2E0 3C19E300 */  lui        $t9, 0xe300
/* 2EEE4 8002E2E4 37390C00 */  ori        $t9, $t9, 0xc00
/* 2EEE8 8002E2E8 24580008 */  addiu      $t8, $v0, 8
/* 2EEEC 8002E2EC AC780000 */  sw         $t8, ($v1)
/* 2EEF0 8002E2F0 AC400004 */  sw         $zero, 4($v0)
/* 2EEF4 8002E2F4 AC590000 */  sw         $t9, ($v0)
/* 2EEF8 8002E2F8 00405025 */  or         $t2, $v0, $zero
/* 2EEFC 8002E2FC 8C620000 */  lw         $v0, ($v1)
/* 2EF00 8002E300 3C0FE300 */  lui        $t7, 0xe300
/* 2EF04 8002E304 35EF1201 */  ori        $t7, $t7, 0x1201
/* 2EF08 8002E308 244E0008 */  addiu      $t6, $v0, 8
/* 2EF0C 8002E30C AC6E0000 */  sw         $t6, ($v1)
/* 2EF10 8002E310 AC400004 */  sw         $zero, 4($v0)
/* 2EF14 8002E314 AC4F0000 */  sw         $t7, ($v0)
/* 2EF18 8002E318 00405825 */  or         $t3, $v0, $zero
/* 2EF1C 8002E31C 8C620000 */  lw         $v0, ($v1)
/* 2EF20 8002E320 3C0EFFFC */  lui        $t6, 0xfffc
/* 2EF24 8002E324 3C19FCFF */  lui        $t9, 0xfcff
/* 2EF28 8002E328 24580008 */  addiu      $t8, $v0, 8
/* 2EF2C 8002E32C AC780000 */  sw         $t8, ($v1)
/* 2EF30 8002E330 3C0D05F5 */  lui        $t5, 0x5f5
/* 2EF34 8002E334 3739FFFF */  ori        $t9, $t9, 0xffff
/* 2EF38 8002E338 35CEF279 */  ori        $t6, $t6, 0xf279
/* 2EF3C 8002E33C 3C178007 */  lui        $s7, 0x8007
/* 2EF40 8002E340 00808825 */  or         $s1, $a0, $zero
/* 2EF44 8002E344 00C09025 */  or         $s2, $a2, $zero
/* 2EF48 8002E348 00A0A025 */  or         $s4, $a1, $zero
/* 2EF4C 8002E34C 35ADE100 */  ori        $t5, $t5, 0xe100
/* 2EF50 8002E350 00009825 */  or         $s3, $zero, $zero
/* 2EF54 8002E354 26F758A8 */  addiu      $s7, $s7, 0x58a8
/* 2EF58 8002E358 24100009 */  addiu      $s0, $zero, 9
/* 2EF5C 8002E35C 3C16FD70 */  lui        $s6, 0xfd70
/* 2EF60 8002E360 3C1EF570 */  lui        $fp, 0xf570
/* 2EF64 8002E364 3C1F0700 */  lui        $ra, 0x700
/* 2EF68 8002E368 AC4E0004 */  sw         $t6, 4($v0)
/* 2EF6C 8002E36C AC590000 */  sw         $t9, ($v0)
/* 2EF70 8002E370 00406025 */  or         $t4, $v0, $zero
.L8002E374:
/* 2EF74 8002E374 024D001A */  div        $zero, $s2, $t5
/* 2EF78 8002E378 00006012 */  mflo       $t4
/* 2EF7C 8002E37C 2610FFFF */  addiu      $s0, $s0, -1
/* 2EF80 8002E380 15A00002 */  bnez       $t5, .L8002E38C
/* 2EF84 8002E384 00000000 */   nop       
/* 2EF88 8002E388 0007000D */  break      7
.L8002E38C:
/* 2EF8C 8002E38C 2401FFFF */   addiu     $at, $zero, -1
/* 2EF90 8002E390 15A10004 */  bne        $t5, $at, .L8002E3A4
/* 2EF94 8002E394 3C018000 */   lui       $at, 0x8000
/* 2EF98 8002E398 16410002 */  bne        $s2, $at, .L8002E3A4
/* 2EF9C 8002E39C 00000000 */   nop       
/* 2EFA0 8002E3A0 0006000D */  break      6
.L8002E3A4:
/* 2EFA4 8002E3A4 55800006 */   bnel      $t4, $zero, .L8002E3C0
/* 2EFA8 8002E3A8 8C620000 */   lw        $v0, ($v1)
/* 2EFAC 8002E3AC 56600004 */  bnel       $s3, $zero, .L8002E3C0
/* 2EFB0 8002E3B0 8C620000 */   lw        $v0, ($v1)
/* 2EFB4 8002E3B4 1600005D */  bnez       $s0, .L8002E52C
/* 2EFB8 8002E3B8 00000000 */   nop       
/* 2EFBC 8002E3BC 8C620000 */  lw         $v0, ($v1)
.L8002E3C0:
/* 2EFC0 8002E3C0 000CC080 */  sll        $t8, $t4, 2
/* 2EFC4 8002E3C4 02F8C821 */  addu       $t9, $s7, $t8
/* 2EFC8 8002E3C8 244F0008 */  addiu      $t7, $v0, 8
/* 2EFCC 8002E3CC AC6F0000 */  sw         $t7, ($v1)
/* 2EFD0 8002E3D0 AC560000 */  sw         $s6, ($v0)
/* 2EFD4 8002E3D4 8F2E0000 */  lw         $t6, ($t9)
/* 2EFD8 8002E3D8 3C19E600 */  lui        $t9, 0xe600
/* 2EFDC 8002E3DC 3C01E400 */  lui        $at, 0xe400
/* 2EFE0 8002E3E0 AC4E0004 */  sw         $t6, 4($v0)
/* 2EFE4 8002E3E4 8C620000 */  lw         $v0, ($v1)
/* 2EFE8 8002E3E8 24130001 */  addiu      $s3, $zero, 1
/* 2EFEC 8002E3EC 244F0008 */  addiu      $t7, $v0, 8
/* 2EFF0 8002E3F0 AC6F0000 */  sw         $t7, ($v1)
/* 2EFF4 8002E3F4 AC5F0004 */  sw         $ra, 4($v0)
/* 2EFF8 8002E3F8 AC5E0000 */  sw         $fp, ($v0)
/* 2EFFC 8002E3FC 8C620000 */  lw         $v0, ($v1)
/* 2F000 8002E400 3C0FF300 */  lui        $t7, 0xf300
/* 2F004 8002E404 24580008 */  addiu      $t8, $v0, 8
/* 2F008 8002E408 AC780000 */  sw         $t8, ($v1)
/* 2F00C 8002E40C AC400004 */  sw         $zero, 4($v0)
/* 2F010 8002E410 AC590000 */  sw         $t9, ($v0)
/* 2F014 8002E414 00403025 */  or         $a2, $v0, $zero
/* 2F018 8002E418 8C620000 */  lw         $v0, ($v1)
/* 2F01C 8002E41C 3C180702 */  lui        $t8, 0x702
/* 2F020 8002E420 3718F800 */  ori        $t8, $t8, 0xf800
/* 2F024 8002E424 244E0008 */  addiu      $t6, $v0, 8
/* 2F028 8002E428 AC6E0000 */  sw         $t6, ($v1)
/* 2F02C 8002E42C AC580004 */  sw         $t8, 4($v0)
/* 2F030 8002E430 AC4F0000 */  sw         $t7, ($v0)
/* 2F034 8002E434 00403825 */  or         $a3, $v0, $zero
/* 2F038 8002E438 8C620000 */  lw         $v0, ($v1)
/* 2F03C 8002E43C 3C0FF568 */  lui        $t7, 0xf568
/* 2F040 8002E440 35EF0200 */  ori        $t7, $t7, 0x200
/* 2F044 8002E444 24590008 */  addiu      $t9, $v0, 8
/* 2F048 8002E448 AC790000 */  sw         $t9, ($v1)
/* 2F04C 8002E44C AC400004 */  sw         $zero, 4($v0)
/* 2F050 8002E450 AC550000 */  sw         $s5, ($v0)
/* 2F054 8002E454 00404025 */  or         $t0, $v0, $zero
/* 2F058 8002E458 8C620000 */  lw         $v0, ($v1)
/* 2F05C 8002E45C 3C19F200 */  lui        $t9, 0xf200
/* 2F060 8002E460 244E0008 */  addiu      $t6, $v0, 8
/* 2F064 8002E464 AC6E0000 */  sw         $t6, ($v1)
/* 2F068 8002E468 AC400004 */  sw         $zero, 4($v0)
/* 2F06C 8002E46C AC4F0000 */  sw         $t7, ($v0)
/* 2F070 8002E470 00404825 */  or         $t1, $v0, $zero
/* 2F074 8002E474 8C620000 */  lw         $v0, ($v1)
/* 2F078 8002E478 3C0E0001 */  lui        $t6, 1
/* 2F07C 8002E47C 35CEC02C */  ori        $t6, $t6, 0xc02c
/* 2F080 8002E480 24580008 */  addiu      $t8, $v0, 8
/* 2F084 8002E484 AC780000 */  sw         $t8, ($v1)
/* 2F088 8002E488 AC4E0004 */  sw         $t6, 4($v0)
/* 2F08C 8002E48C AC590000 */  sw         $t9, ($v0)
/* 2F090 8002E490 00405025 */  or         $t2, $v0, $zero
/* 2F094 8002E494 8C620000 */  lw         $v0, ($v1)
/* 2F098 8002E498 26380008 */  addiu      $t8, $s1, 8
/* 2F09C 8002E49C 0018C880 */  sll        $t9, $t8, 2
/* 2F0A0 8002E4A0 244F0008 */  addiu      $t7, $v0, 8
/* 2F0A4 8002E4A4 AC6F0000 */  sw         $t7, ($v1)
/* 2F0A8 8002E4A8 332E0FFF */  andi       $t6, $t9, 0xfff
/* 2F0AC 8002E4AC 000E7B00 */  sll        $t7, $t6, 0xc
/* 2F0B0 8002E4B0 2699000C */  addiu      $t9, $s4, 0xc
/* 2F0B4 8002E4B4 00197080 */  sll        $t6, $t9, 2
/* 2F0B8 8002E4B8 01E1C025 */  or         $t8, $t7, $at
/* 2F0BC 8002E4BC 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 2F0C0 8002E4C0 030FC825 */  or         $t9, $t8, $t7
/* 2F0C4 8002E4C4 00117080 */  sll        $t6, $s1, 2
/* 2F0C8 8002E4C8 31D80FFF */  andi       $t8, $t6, 0xfff
/* 2F0CC 8002E4CC AC590000 */  sw         $t9, ($v0)
/* 2F0D0 8002E4D0 0014C880 */  sll        $t9, $s4, 2
/* 2F0D4 8002E4D4 332E0FFF */  andi       $t6, $t9, 0xfff
/* 2F0D8 8002E4D8 00187B00 */  sll        $t7, $t8, 0xc
/* 2F0DC 8002E4DC 01EEC025 */  or         $t8, $t7, $t6
/* 2F0E0 8002E4E0 AC580004 */  sw         $t8, 4($v0)
/* 2F0E4 8002E4E4 00405825 */  or         $t3, $v0, $zero
/* 2F0E8 8002E4E8 8C620000 */  lw         $v0, ($v1)
/* 2F0EC 8002E4EC 3C0FE100 */  lui        $t7, 0xe100
/* 2F0F0 8002E4F0 3C18F100 */  lui        $t8, 0xf100
/* 2F0F4 8002E4F4 24590008 */  addiu      $t9, $v0, 8
/* 2F0F8 8002E4F8 AC790000 */  sw         $t9, ($v1)
/* 2F0FC 8002E4FC AC400004 */  sw         $zero, 4($v0)
/* 2F100 8002E500 AC4F0000 */  sw         $t7, ($v0)
/* 2F104 8002E504 00402025 */  or         $a0, $v0, $zero
/* 2F108 8002E508 8C620000 */  lw         $v0, ($v1)
/* 2F10C 8002E50C 3C190400 */  lui        $t9, 0x400
/* 2F110 8002E510 37390400 */  ori        $t9, $t9, 0x400
/* 2F114 8002E514 244E0008 */  addiu      $t6, $v0, 8
/* 2F118 8002E518 AC6E0000 */  sw         $t6, ($v1)
/* 2F11C 8002E51C 26310009 */  addiu      $s1, $s1, 9
/* 2F120 8002E520 AC590004 */  sw         $t9, 4($v0)
/* 2F124 8002E524 AC580000 */  sw         $t8, ($v0)
/* 2F128 8002E528 00402825 */  or         $a1, $v0, $zero
.L8002E52C:
/* 2F12C 8002E52C 024D001A */  div        $zero, $s2, $t5
/* 2F130 8002E530 15A00002 */  bnez       $t5, .L8002E53C
/* 2F134 8002E534 00000000 */   nop       
/* 2F138 8002E538 0007000D */  break      7
.L8002E53C:
/* 2F13C 8002E53C 2401FFFF */   addiu     $at, $zero, -1
/* 2F140 8002E540 15A10004 */  bne        $t5, $at, .L8002E554
/* 2F144 8002E544 3C018000 */   lui       $at, 0x8000
/* 2F148 8002E548 16410002 */  bne        $s2, $at, .L8002E554
/* 2F14C 8002E54C 00000000 */   nop       
/* 2F150 8002E550 0006000D */  break      6
.L8002E554:
/* 2F154 8002E554 00009010 */   mfhi      $s2
/* 2F158 8002E558 2401000A */  addiu      $at, $zero, 0xa
/* 2F15C 8002E55C 00000000 */  nop        
/* 2F160 8002E560 01A1001A */  div        $zero, $t5, $at
/* 2F164 8002E564 00006812 */  mflo       $t5
/* 2F168 8002E568 1600FF82 */  bnez       $s0, .L8002E374
/* 2F16C 8002E56C 00000000 */   nop       
/* 2F170 8002E570 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2F174 8002E574 8FB00008 */  lw         $s0, 8($sp)
/* 2F178 8002E578 8FB1000C */  lw         $s1, 0xc($sp)
/* 2F17C 8002E57C 8FB20010 */  lw         $s2, 0x10($sp)
/* 2F180 8002E580 8FB30014 */  lw         $s3, 0x14($sp)
/* 2F184 8002E584 8FB40018 */  lw         $s4, 0x18($sp)
/* 2F188 8002E588 8FB5001C */  lw         $s5, 0x1c($sp)
/* 2F18C 8002E58C 8FB60020 */  lw         $s6, 0x20($sp)
/* 2F190 8002E590 8FB70024 */  lw         $s7, 0x24($sp)
/* 2F194 8002E594 8FBE0028 */  lw         $fp, 0x28($sp)
/* 2F198 8002E598 03E00008 */  jr         $ra
/* 2F19C 8002E59C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002E5A0
/* 2F1A0 8002E5A0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2F1A4 8002E5A4 3C03800A */  lui        $v1, 0x800a
/* 2F1A8 8002E5A8 24637420 */  addiu      $v1, $v1, 0x7420
/* 2F1AC 8002E5AC 8C620000 */  lw         $v0, ($v1)
/* 2F1B0 8002E5B0 AFB40018 */  sw         $s4, 0x18($sp)
/* 2F1B4 8002E5B4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2F1B8 8002E5B8 244E0008 */  addiu      $t6, $v0, 8
/* 2F1BC 8002E5BC AFBE0028 */  sw         $fp, 0x28($sp)
/* 2F1C0 8002E5C0 AFB70024 */  sw         $s7, 0x24($sp)
/* 2F1C4 8002E5C4 AFB60020 */  sw         $s6, 0x20($sp)
/* 2F1C8 8002E5C8 AFB5001C */  sw         $s5, 0x1c($sp)
/* 2F1CC 8002E5CC AFB30014 */  sw         $s3, 0x14($sp)
/* 2F1D0 8002E5D0 AFB20010 */  sw         $s2, 0x10($sp)
/* 2F1D4 8002E5D4 AFB1000C */  sw         $s1, 0xc($sp)
/* 2F1D8 8002E5D8 AFB00008 */  sw         $s0, 8($sp)
/* 2F1DC 8002E5DC AC6E0000 */  sw         $t6, ($v1)
/* 2F1E0 8002E5E0 3C14E700 */  lui        $s4, 0xe700
/* 2F1E4 8002E5E4 AC540000 */  sw         $s4, ($v0)
/* 2F1E8 8002E5E8 AC400004 */  sw         $zero, 4($v0)
/* 2F1EC 8002E5EC 00404825 */  or         $t1, $v0, $zero
/* 2F1F0 8002E5F0 8C620000 */  lw         $v0, ($v1)
/* 2F1F4 8002E5F4 3C18E300 */  lui        $t8, 0xe300
/* 2F1F8 8002E5F8 37180A01 */  ori        $t8, $t8, 0xa01
/* 2F1FC 8002E5FC 244F0008 */  addiu      $t7, $v0, 8
/* 2F200 8002E600 AC6F0000 */  sw         $t7, ($v1)
/* 2F204 8002E604 AC400004 */  sw         $zero, 4($v0)
/* 2F208 8002E608 AC580000 */  sw         $t8, ($v0)
/* 2F20C 8002E60C 00405025 */  or         $t2, $v0, $zero
/* 2F210 8002E610 8C620000 */  lw         $v0, ($v1)
/* 2F214 8002E614 3C0F0050 */  lui        $t7, 0x50
/* 2F218 8002E618 3C0EE200 */  lui        $t6, 0xe200
/* 2F21C 8002E61C 24590008 */  addiu      $t9, $v0, 8
/* 2F220 8002E620 AC790000 */  sw         $t9, ($v1)
/* 2F224 8002E624 35CE001C */  ori        $t6, $t6, 0x1c
/* 2F228 8002E628 35EF4240 */  ori        $t7, $t7, 0x4240
/* 2F22C 8002E62C AC4F0004 */  sw         $t7, 4($v0)
/* 2F230 8002E630 AC4E0000 */  sw         $t6, ($v0)
/* 2F234 8002E634 00405825 */  or         $t3, $v0, $zero
/* 2F238 8002E638 8C620000 */  lw         $v0, ($v1)
/* 2F23C 8002E63C 3C19E300 */  lui        $t9, 0xe300
/* 2F240 8002E640 37390C00 */  ori        $t9, $t9, 0xc00
/* 2F244 8002E644 24580008 */  addiu      $t8, $v0, 8
/* 2F248 8002E648 AC780000 */  sw         $t8, ($v1)
/* 2F24C 8002E64C AC400004 */  sw         $zero, 4($v0)
/* 2F250 8002E650 AC590000 */  sw         $t9, ($v0)
/* 2F254 8002E654 00406025 */  or         $t4, $v0, $zero
/* 2F258 8002E658 8C620000 */  lw         $v0, ($v1)
/* 2F25C 8002E65C 3C0FE300 */  lui        $t7, 0xe300
/* 2F260 8002E660 35EF1201 */  ori        $t7, $t7, 0x1201
/* 2F264 8002E664 244E0008 */  addiu      $t6, $v0, 8
/* 2F268 8002E668 AC6E0000 */  sw         $t6, ($v1)
/* 2F26C 8002E66C AC400004 */  sw         $zero, 4($v0)
/* 2F270 8002E670 AC4F0000 */  sw         $t7, ($v0)
/* 2F274 8002E674 8C620000 */  lw         $v0, ($v1)
/* 2F278 8002E678 3C0EFFFC */  lui        $t6, 0xfffc
/* 2F27C 8002E67C 3C19FCFF */  lui        $t9, 0xfcff
/* 2F280 8002E680 24580008 */  addiu      $t8, $v0, 8
/* 2F284 8002E684 AC780000 */  sw         $t8, ($v1)
/* 2F288 8002E688 3739FFFF */  ori        $t9, $t9, 0xffff
/* 2F28C 8002E68C 35CEF279 */  ori        $t6, $t6, 0xf279
/* 2F290 8002E690 00E08025 */  or         $s0, $a3, $zero
/* 2F294 8002E694 00C08825 */  or         $s1, $a2, $zero
/* 2F298 8002E698 00A09025 */  or         $s2, $a1, $zero
/* 2F29C 8002E69C 00809825 */  or         $s3, $a0, $zero
/* 2F2A0 8002E6A0 24080001 */  addiu      $t0, $zero, 1
/* 2F2A4 8002E6A4 AC4E0004 */  sw         $t6, 4($v0)
/* 2F2A8 8002E6A8 18E00082 */  blez       $a3, .L8002E8B4
/* 2F2AC 8002E6AC AC590000 */   sw        $t9, ($v0)
/* 2F2B0 8002E6B0 3C168007 */  lui        $s6, 0x8007
/* 2F2B4 8002E6B4 26D658A8 */  addiu      $s6, $s6, 0x58a8
/* 2F2B8 8002E6B8 3C1FE600 */  lui        $ra, 0xe600
/* 2F2BC 8002E6BC 3C1E0700 */  lui        $fp, 0x700
/* 2F2C0 8002E6C0 3C17F570 */  lui        $s7, 0xf570
/* 2F2C4 8002E6C4 3C15FD70 */  lui        $s5, 0xfd70
/* 2F2C8 8002E6C8 240D000A */  addiu      $t5, $zero, 0xa
.L8002E6CC:
/* 2F2CC 8002E6CC 1E200003 */  bgtz       $s1, .L8002E6DC
/* 2F2D0 8002E6D0 2610FFFF */   addiu     $s0, $s0, -1
/* 2F2D4 8002E6D4 11000069 */  beqz       $t0, .L8002E87C
/* 2F2D8 8002E6D8 00000000 */   nop       
.L8002E6DC:
/* 2F2DC 8002E6DC 022D001A */  div        $zero, $s1, $t5
/* 2F2E0 8002E6E0 8C620000 */  lw         $v0, ($v1)
/* 2F2E4 8002E6E4 0000C010 */  mfhi       $t8
/* 2F2E8 8002E6E8 0018C880 */  sll        $t9, $t8, 2
/* 2F2EC 8002E6EC 244F0008 */  addiu      $t7, $v0, 8
/* 2F2F0 8002E6F0 AC6F0000 */  sw         $t7, ($v1)
/* 2F2F4 8002E6F4 02D97021 */  addu       $t6, $s6, $t9
/* 2F2F8 8002E6F8 AC550000 */  sw         $s5, ($v0)
/* 2F2FC 8002E6FC 8DCF0000 */  lw         $t7, ($t6)
/* 2F300 8002E700 00402025 */  or         $a0, $v0, $zero
/* 2F304 8002E704 15A00002 */  bnez       $t5, .L8002E710
/* 2F308 8002E708 00000000 */   nop       
/* 2F30C 8002E70C 0007000D */  break      7
.L8002E710:
/* 2F310 8002E710 2401FFFF */   addiu     $at, $zero, -1
/* 2F314 8002E714 15A10004 */  bne        $t5, $at, .L8002E728
/* 2F318 8002E718 3C018000 */   lui       $at, 0x8000
/* 2F31C 8002E71C 16210002 */  bne        $s1, $at, .L8002E728
/* 2F320 8002E720 00000000 */   nop       
/* 2F324 8002E724 0006000D */  break      6
.L8002E728:
/* 2F328 8002E728 AC8F0004 */   sw        $t7, 4($a0)
/* 2F32C 8002E72C 8C620000 */  lw         $v0, ($v1)
/* 2F330 8002E730 3C0FF300 */  lui        $t7, 0xf300
/* 2F334 8002E734 3C01E400 */  lui        $at, 0xe400
/* 2F338 8002E738 24580008 */  addiu      $t8, $v0, 8
/* 2F33C 8002E73C AC780000 */  sw         $t8, ($v1)
/* 2F340 8002E740 AC5E0004 */  sw         $fp, 4($v0)
/* 2F344 8002E744 AC570000 */  sw         $s7, ($v0)
/* 2F348 8002E748 8C620000 */  lw         $v0, ($v1)
/* 2F34C 8002E74C 3C180702 */  lui        $t8, 0x702
/* 2F350 8002E750 3718F800 */  ori        $t8, $t8, 0xf800
/* 2F354 8002E754 24590008 */  addiu      $t9, $v0, 8
/* 2F358 8002E758 AC790000 */  sw         $t9, ($v1)
/* 2F35C 8002E75C AC400004 */  sw         $zero, 4($v0)
/* 2F360 8002E760 AC5F0000 */  sw         $ra, ($v0)
/* 2F364 8002E764 00403025 */  or         $a2, $v0, $zero
/* 2F368 8002E768 8C620000 */  lw         $v0, ($v1)
/* 2F36C 8002E76C 244E0008 */  addiu      $t6, $v0, 8
/* 2F370 8002E770 AC6E0000 */  sw         $t6, ($v1)
/* 2F374 8002E774 AC580004 */  sw         $t8, 4($v0)
/* 2F378 8002E778 AC4F0000 */  sw         $t7, ($v0)
/* 2F37C 8002E77C 00403825 */  or         $a3, $v0, $zero
/* 2F380 8002E780 8C620000 */  lw         $v0, ($v1)
/* 2F384 8002E784 3C0FF568 */  lui        $t7, 0xf568
/* 2F388 8002E788 35EF0200 */  ori        $t7, $t7, 0x200
/* 2F38C 8002E78C 24590008 */  addiu      $t9, $v0, 8
/* 2F390 8002E790 AC790000 */  sw         $t9, ($v1)
/* 2F394 8002E794 AC400004 */  sw         $zero, 4($v0)
/* 2F398 8002E798 AC540000 */  sw         $s4, ($v0)
/* 2F39C 8002E79C 00404025 */  or         $t0, $v0, $zero
/* 2F3A0 8002E7A0 8C620000 */  lw         $v0, ($v1)
/* 2F3A4 8002E7A4 3C19F200 */  lui        $t9, 0xf200
/* 2F3A8 8002E7A8 244E0008 */  addiu      $t6, $v0, 8
/* 2F3AC 8002E7AC AC6E0000 */  sw         $t6, ($v1)
/* 2F3B0 8002E7B0 AC400004 */  sw         $zero, 4($v0)
/* 2F3B4 8002E7B4 AC4F0000 */  sw         $t7, ($v0)
/* 2F3B8 8002E7B8 00404825 */  or         $t1, $v0, $zero
/* 2F3BC 8002E7BC 8C620000 */  lw         $v0, ($v1)
/* 2F3C0 8002E7C0 3C0E0001 */  lui        $t6, 1
/* 2F3C4 8002E7C4 35CEC02C */  ori        $t6, $t6, 0xc02c
/* 2F3C8 8002E7C8 24580008 */  addiu      $t8, $v0, 8
/* 2F3CC 8002E7CC AC780000 */  sw         $t8, ($v1)
/* 2F3D0 8002E7D0 AC4E0004 */  sw         $t6, 4($v0)
/* 2F3D4 8002E7D4 AC590000 */  sw         $t9, ($v0)
/* 2F3D8 8002E7D8 00405025 */  or         $t2, $v0, $zero
/* 2F3DC 8002E7DC 8C620000 */  lw         $v0, ($v1)
/* 2F3E0 8002E7E0 0010C0C0 */  sll        $t8, $s0, 3
/* 2F3E4 8002E7E4 0310C021 */  addu       $t8, $t8, $s0
/* 2F3E8 8002E7E8 03136021 */  addu       $t4, $t8, $s3
/* 2F3EC 8002E7EC 25990008 */  addiu      $t9, $t4, 8
/* 2F3F0 8002E7F0 244F0008 */  addiu      $t7, $v0, 8
/* 2F3F4 8002E7F4 AC6F0000 */  sw         $t7, ($v1)
/* 2F3F8 8002E7F8 00197080 */  sll        $t6, $t9, 2
/* 2F3FC 8002E7FC 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 2F400 8002E800 000FC300 */  sll        $t8, $t7, 0xc
/* 2F404 8002E804 264E000C */  addiu      $t6, $s2, 0xc
/* 2F408 8002E808 000E7880 */  sll        $t7, $t6, 2
/* 2F40C 8002E80C 0301C825 */  or         $t9, $t8, $at
/* 2F410 8002E810 31F80FFF */  andi       $t8, $t7, 0xfff
/* 2F414 8002E814 03387025 */  or         $t6, $t9, $t8
/* 2F418 8002E818 000C7880 */  sll        $t7, $t4, 2
/* 2F41C 8002E81C 31F90FFF */  andi       $t9, $t7, 0xfff
/* 2F420 8002E820 AC4E0000 */  sw         $t6, ($v0)
/* 2F424 8002E824 00127080 */  sll        $t6, $s2, 2
/* 2F428 8002E828 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 2F42C 8002E82C 0019C300 */  sll        $t8, $t9, 0xc
/* 2F430 8002E830 030FC825 */  or         $t9, $t8, $t7
/* 2F434 8002E834 AC590004 */  sw         $t9, 4($v0)
/* 2F438 8002E838 00405825 */  or         $t3, $v0, $zero
/* 2F43C 8002E83C 8C620000 */  lw         $v0, ($v1)
/* 2F440 8002E840 3C18E100 */  lui        $t8, 0xe100
/* 2F444 8002E844 3C19F100 */  lui        $t9, 0xf100
/* 2F448 8002E848 244E0008 */  addiu      $t6, $v0, 8
/* 2F44C 8002E84C AC6E0000 */  sw         $t6, ($v1)
/* 2F450 8002E850 AC400004 */  sw         $zero, 4($v0)
/* 2F454 8002E854 AC580000 */  sw         $t8, ($v0)
/* 2F458 8002E858 00402025 */  or         $a0, $v0, $zero
/* 2F45C 8002E85C 8C620000 */  lw         $v0, ($v1)
/* 2F460 8002E860 3C0E0400 */  lui        $t6, 0x400
/* 2F464 8002E864 35CE0400 */  ori        $t6, $t6, 0x400
/* 2F468 8002E868 244F0008 */  addiu      $t7, $v0, 8
/* 2F46C 8002E86C AC6F0000 */  sw         $t7, ($v1)
/* 2F470 8002E870 AC4E0004 */  sw         $t6, 4($v0)
/* 2F474 8002E874 AC590000 */  sw         $t9, ($v0)
/* 2F478 8002E878 00402825 */  or         $a1, $v0, $zero
.L8002E87C:
/* 2F47C 8002E87C 022D001A */  div        $zero, $s1, $t5
/* 2F480 8002E880 15A00002 */  bnez       $t5, .L8002E88C
/* 2F484 8002E884 00000000 */   nop       
/* 2F488 8002E888 0007000D */  break      7
.L8002E88C:
/* 2F48C 8002E88C 2401FFFF */   addiu     $at, $zero, -1
/* 2F490 8002E890 15A10004 */  bne        $t5, $at, .L8002E8A4
/* 2F494 8002E894 3C018000 */   lui       $at, 0x8000
/* 2F498 8002E898 16210002 */  bne        $s1, $at, .L8002E8A4
/* 2F49C 8002E89C 00000000 */   nop       
/* 2F4A0 8002E8A0 0006000D */  break      6
.L8002E8A4:
/* 2F4A4 8002E8A4 00008812 */   mflo      $s1
/* 2F4A8 8002E8A8 00004025 */  or         $t0, $zero, $zero
/* 2F4AC 8002E8AC 1E00FF87 */  bgtz       $s0, .L8002E6CC
/* 2F4B0 8002E8B0 00000000 */   nop       
.L8002E8B4:
/* 2F4B4 8002E8B4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2F4B8 8002E8B8 8FB00008 */  lw         $s0, 8($sp)
/* 2F4BC 8002E8BC 8FB1000C */  lw         $s1, 0xc($sp)
/* 2F4C0 8002E8C0 8FB20010 */  lw         $s2, 0x10($sp)
/* 2F4C4 8002E8C4 8FB30014 */  lw         $s3, 0x14($sp)
/* 2F4C8 8002E8C8 8FB40018 */  lw         $s4, 0x18($sp)
/* 2F4CC 8002E8CC 8FB5001C */  lw         $s5, 0x1c($sp)
/* 2F4D0 8002E8D0 8FB60020 */  lw         $s6, 0x20($sp)
/* 2F4D4 8002E8D4 8FB70024 */  lw         $s7, 0x24($sp)
/* 2F4D8 8002E8D8 8FBE0028 */  lw         $fp, 0x28($sp)
/* 2F4DC 8002E8DC 03E00008 */  jr         $ra
/* 2F4E0 8002E8E0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002E8E4
/* 2F4E4 8002E8E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2F4E8 8002E8E8 3C03800A */  lui        $v1, 0x800a
/* 2F4EC 8002E8EC 24637420 */  addiu      $v1, $v1, 0x7420
/* 2F4F0 8002E8F0 8C680000 */  lw         $t0, ($v1)
/* 2F4F4 8002E8F4 AFB5001C */  sw         $s5, 0x1c($sp)
/* 2F4F8 8002E8F8 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2F4FC 8002E8FC 250E0008 */  addiu      $t6, $t0, 8
/* 2F500 8002E900 AFBE0028 */  sw         $fp, 0x28($sp)
/* 2F504 8002E904 AFB70024 */  sw         $s7, 0x24($sp)
/* 2F508 8002E908 AFB60020 */  sw         $s6, 0x20($sp)
/* 2F50C 8002E90C AFB40018 */  sw         $s4, 0x18($sp)
/* 2F510 8002E910 AFB30014 */  sw         $s3, 0x14($sp)
/* 2F514 8002E914 AFB20010 */  sw         $s2, 0x10($sp)
/* 2F518 8002E918 AFB1000C */  sw         $s1, 0xc($sp)
/* 2F51C 8002E91C AFB00008 */  sw         $s0, 8($sp)
/* 2F520 8002E920 AC6E0000 */  sw         $t6, ($v1)
/* 2F524 8002E924 3C15E700 */  lui        $s5, 0xe700
/* 2F528 8002E928 AD150000 */  sw         $s5, ($t0)
/* 2F52C 8002E92C AD000004 */  sw         $zero, 4($t0)
/* 2F530 8002E930 8C690000 */  lw         $t1, ($v1)
/* 2F534 8002E934 3C18E300 */  lui        $t8, 0xe300
/* 2F538 8002E938 37180A01 */  ori        $t8, $t8, 0xa01
/* 2F53C 8002E93C 252F0008 */  addiu      $t7, $t1, 8
/* 2F540 8002E940 AC6F0000 */  sw         $t7, ($v1)
/* 2F544 8002E944 AD200004 */  sw         $zero, 4($t1)
/* 2F548 8002E948 AD380000 */  sw         $t8, ($t1)
/* 2F54C 8002E94C 8C6A0000 */  lw         $t2, ($v1)
/* 2F550 8002E950 3C0F0050 */  lui        $t7, 0x50
/* 2F554 8002E954 3C0EE200 */  lui        $t6, 0xe200
/* 2F558 8002E958 25590008 */  addiu      $t9, $t2, 8
/* 2F55C 8002E95C AC790000 */  sw         $t9, ($v1)
/* 2F560 8002E960 35CE001C */  ori        $t6, $t6, 0x1c
/* 2F564 8002E964 35EF4240 */  ori        $t7, $t7, 0x4240
/* 2F568 8002E968 AD4F0004 */  sw         $t7, 4($t2)
/* 2F56C 8002E96C AD4E0000 */  sw         $t6, ($t2)
/* 2F570 8002E970 8C620000 */  lw         $v0, ($v1)
/* 2F574 8002E974 3C19E300 */  lui        $t9, 0xe300
/* 2F578 8002E978 37390C00 */  ori        $t9, $t9, 0xc00
/* 2F57C 8002E97C 24580008 */  addiu      $t8, $v0, 8
/* 2F580 8002E980 AC780000 */  sw         $t8, ($v1)
/* 2F584 8002E984 AC400004 */  sw         $zero, 4($v0)
/* 2F588 8002E988 AC590000 */  sw         $t9, ($v0)
/* 2F58C 8002E98C 8C620000 */  lw         $v0, ($v1)
/* 2F590 8002E990 3C0FE300 */  lui        $t7, 0xe300
/* 2F594 8002E994 35EF1201 */  ori        $t7, $t7, 0x1201
/* 2F598 8002E998 244E0008 */  addiu      $t6, $v0, 8
/* 2F59C 8002E99C AC6E0000 */  sw         $t6, ($v1)
/* 2F5A0 8002E9A0 AC400004 */  sw         $zero, 4($v0)
/* 2F5A4 8002E9A4 AC4F0000 */  sw         $t7, ($v0)
/* 2F5A8 8002E9A8 8C6D0000 */  lw         $t5, ($v1)
/* 2F5AC 8002E9AC 3C0EFFFC */  lui        $t6, 0xfffc
/* 2F5B0 8002E9B0 3C19FCFF */  lui        $t9, 0xfcff
/* 2F5B4 8002E9B4 25B80008 */  addiu      $t8, $t5, 8
/* 2F5B8 8002E9B8 AC780000 */  sw         $t8, ($v1)
/* 2F5BC 8002E9BC 3739FFFF */  ori        $t9, $t9, 0xffff
/* 2F5C0 8002E9C0 35CEF279 */  ori        $t6, $t6, 0xf279
/* 2F5C4 8002E9C4 00E08025 */  or         $s0, $a3, $zero
/* 2F5C8 8002E9C8 00C08825 */  or         $s1, $a2, $zero
/* 2F5CC 8002E9CC ADAE0004 */  sw         $t6, 4($t5)
/* 2F5D0 8002E9D0 18E00075 */  blez       $a3, .L8002EBA8
/* 2F5D4 8002E9D4 ADB90000 */   sw        $t9, ($t5)
/* 2F5D8 8002E9D8 000778C0 */  sll        $t7, $a3, 3
/* 2F5DC 8002E9DC 01E77821 */  addu       $t7, $t7, $a3
/* 2F5E0 8002E9E0 24B3000C */  addiu      $s3, $a1, 0xc
/* 2F5E4 8002E9E4 00139880 */  sll        $s3, $s3, 2
/* 2F5E8 8002E9E8 01E45821 */  addu       $t3, $t7, $a0
/* 2F5EC 8002E9EC 0005A080 */  sll        $s4, $a1, 2
/* 2F5F0 8002E9F0 3C178007 */  lui        $s7, 0x8007
/* 2F5F4 8002E9F4 26F758A8 */  addiu      $s7, $s7, 0x58a8
/* 2F5F8 8002E9F8 32940FFF */  andi       $s4, $s4, 0xfff
/* 2F5FC 8002E9FC 256C0008 */  addiu      $t4, $t3, 8
/* 2F600 8002EA00 32730FFF */  andi       $s3, $s3, 0xfff
/* 2F604 8002EA04 3C1F0700 */  lui        $ra, 0x700
/* 2F608 8002EA08 3C1EF570 */  lui        $fp, 0xf570
/* 2F60C 8002EA0C 3C16FD70 */  lui        $s6, 0xfd70
/* 2F610 8002EA10 2412000A */  addiu      $s2, $zero, 0xa
.L8002EA14:
/* 2F614 8002EA14 0232001A */  div        $zero, $s1, $s2
/* 2F618 8002EA18 8C620000 */  lw         $v0, ($v1)
/* 2F61C 8002EA1C 0000C810 */  mfhi       $t9
/* 2F620 8002EA20 00197080 */  sll        $t6, $t9, 2
/* 2F624 8002EA24 24580008 */  addiu      $t8, $v0, 8
/* 2F628 8002EA28 AC780000 */  sw         $t8, ($v1)
/* 2F62C 8002EA2C 02EE7821 */  addu       $t7, $s7, $t6
/* 2F630 8002EA30 AC560000 */  sw         $s6, ($v0)
/* 2F634 8002EA34 8DF80000 */  lw         $t8, ($t7)
/* 2F638 8002EA38 00402025 */  or         $a0, $v0, $zero
/* 2F63C 8002EA3C 3C0FE600 */  lui        $t7, 0xe600
/* 2F640 8002EA40 AC980004 */  sw         $t8, 4($a0)
/* 2F644 8002EA44 8C620000 */  lw         $v0, ($v1)
/* 2F648 8002EA48 258CFFF7 */  addiu      $t4, $t4, -9
/* 2F64C 8002EA4C 256BFFF7 */  addiu      $t3, $t3, -9
/* 2F650 8002EA50 24590008 */  addiu      $t9, $v0, 8
/* 2F654 8002EA54 AC790000 */  sw         $t9, ($v1)
/* 2F658 8002EA58 AC5F0004 */  sw         $ra, 4($v0)
/* 2F65C 8002EA5C AC5E0000 */  sw         $fp, ($v0)
/* 2F660 8002EA60 8C620000 */  lw         $v0, ($v1)
/* 2F664 8002EA64 3C19F300 */  lui        $t9, 0xf300
/* 2F668 8002EA68 2610FFFF */  addiu      $s0, $s0, -1
/* 2F66C 8002EA6C 244E0008 */  addiu      $t6, $v0, 8
/* 2F670 8002EA70 AC6E0000 */  sw         $t6, ($v1)
/* 2F674 8002EA74 AC400004 */  sw         $zero, 4($v0)
/* 2F678 8002EA78 AC4F0000 */  sw         $t7, ($v0)
/* 2F67C 8002EA7C 00403025 */  or         $a2, $v0, $zero
/* 2F680 8002EA80 8C620000 */  lw         $v0, ($v1)
/* 2F684 8002EA84 3C0E0702 */  lui        $t6, 0x702
/* 2F688 8002EA88 35CEF800 */  ori        $t6, $t6, 0xf800
/* 2F68C 8002EA8C 24580008 */  addiu      $t8, $v0, 8
/* 2F690 8002EA90 AC780000 */  sw         $t8, ($v1)
/* 2F694 8002EA94 AC4E0004 */  sw         $t6, 4($v0)
/* 2F698 8002EA98 AC590000 */  sw         $t9, ($v0)
/* 2F69C 8002EA9C 00403825 */  or         $a3, $v0, $zero
/* 2F6A0 8002EAA0 8C620000 */  lw         $v0, ($v1)
/* 2F6A4 8002EAA4 3C19F568 */  lui        $t9, 0xf568
/* 2F6A8 8002EAA8 37390200 */  ori        $t9, $t9, 0x200
/* 2F6AC 8002EAAC 244F0008 */  addiu      $t7, $v0, 8
/* 2F6B0 8002EAB0 AC6F0000 */  sw         $t7, ($v1)
/* 2F6B4 8002EAB4 AC400004 */  sw         $zero, 4($v0)
/* 2F6B8 8002EAB8 AC550000 */  sw         $s5, ($v0)
/* 2F6BC 8002EABC 00404025 */  or         $t0, $v0, $zero
/* 2F6C0 8002EAC0 8C620000 */  lw         $v0, ($v1)
/* 2F6C4 8002EAC4 3C0FF200 */  lui        $t7, 0xf200
/* 2F6C8 8002EAC8 16400002 */  bnez       $s2, .L8002EAD4
/* 2F6CC 8002EACC 00000000 */   nop       
/* 2F6D0 8002EAD0 0007000D */  break      7
.L8002EAD4:
/* 2F6D4 8002EAD4 2401FFFF */   addiu     $at, $zero, -1
/* 2F6D8 8002EAD8 16410004 */  bne        $s2, $at, .L8002EAEC
/* 2F6DC 8002EADC 3C018000 */   lui       $at, 0x8000
/* 2F6E0 8002EAE0 16210002 */  bne        $s1, $at, .L8002EAEC
/* 2F6E4 8002EAE4 00000000 */   nop       
/* 2F6E8 8002EAE8 0006000D */  break      6
.L8002EAEC:
/* 2F6EC 8002EAEC 24580008 */   addiu     $t8, $v0, 8
/* 2F6F0 8002EAF0 AC780000 */  sw         $t8, ($v1)
/* 2F6F4 8002EAF4 AC400004 */  sw         $zero, 4($v0)
/* 2F6F8 8002EAF8 AC590000 */  sw         $t9, ($v0)
/* 2F6FC 8002EAFC 00404825 */  or         $t1, $v0, $zero
/* 2F700 8002EB00 8C620000 */  lw         $v0, ($v1)
/* 2F704 8002EB04 3C180001 */  lui        $t8, 1
/* 2F708 8002EB08 3718C02C */  ori        $t8, $t8, 0xc02c
/* 2F70C 8002EB0C 244E0008 */  addiu      $t6, $v0, 8
/* 2F710 8002EB10 AC6E0000 */  sw         $t6, ($v1)
/* 2F714 8002EB14 AC580004 */  sw         $t8, 4($v0)
/* 2F718 8002EB18 AC4F0000 */  sw         $t7, ($v0)
/* 2F71C 8002EB1C 00405025 */  or         $t2, $v0, $zero
/* 2F720 8002EB20 8C620000 */  lw         $v0, ($v1)
/* 2F724 8002EB24 000C7080 */  sll        $t6, $t4, 2
/* 2F728 8002EB28 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 2F72C 8002EB2C 24590008 */  addiu      $t9, $v0, 8
/* 2F730 8002EB30 AC790000 */  sw         $t9, ($v1)
/* 2F734 8002EB34 000FC300 */  sll        $t8, $t7, 0xc
/* 2F738 8002EB38 3C01E400 */  lui        $at, 0xe400
/* 2F73C 8002EB3C 0301C825 */  or         $t9, $t8, $at
/* 2F740 8002EB40 03337025 */  or         $t6, $t9, $s3
/* 2F744 8002EB44 000B7880 */  sll        $t7, $t3, 2
/* 2F748 8002EB48 31F80FFF */  andi       $t8, $t7, 0xfff
/* 2F74C 8002EB4C 0018CB00 */  sll        $t9, $t8, 0xc
/* 2F750 8002EB50 AC4E0000 */  sw         $t6, ($v0)
/* 2F754 8002EB54 03347025 */  or         $t6, $t9, $s4
/* 2F758 8002EB58 AC4E0004 */  sw         $t6, 4($v0)
/* 2F75C 8002EB5C 00406825 */  or         $t5, $v0, $zero
/* 2F760 8002EB60 8C620000 */  lw         $v0, ($v1)
/* 2F764 8002EB64 3C18E100 */  lui        $t8, 0xe100
/* 2F768 8002EB68 3C0EF100 */  lui        $t6, 0xf100
/* 2F76C 8002EB6C 244F0008 */  addiu      $t7, $v0, 8
/* 2F770 8002EB70 AC6F0000 */  sw         $t7, ($v1)
/* 2F774 8002EB74 AC400004 */  sw         $zero, 4($v0)
/* 2F778 8002EB78 AC580000 */  sw         $t8, ($v0)
/* 2F77C 8002EB7C 00402025 */  or         $a0, $v0, $zero
/* 2F780 8002EB80 8C620000 */  lw         $v0, ($v1)
/* 2F784 8002EB84 3C0F0400 */  lui        $t7, 0x400
/* 2F788 8002EB88 35EF0400 */  ori        $t7, $t7, 0x400
/* 2F78C 8002EB8C 24590008 */  addiu      $t9, $v0, 8
/* 2F790 8002EB90 AC790000 */  sw         $t9, ($v1)
/* 2F794 8002EB94 00008812 */  mflo       $s1
/* 2F798 8002EB98 AC4F0004 */  sw         $t7, 4($v0)
/* 2F79C 8002EB9C AC4E0000 */  sw         $t6, ($v0)
/* 2F7A0 8002EBA0 1E00FF9C */  bgtz       $s0, .L8002EA14
/* 2F7A4 8002EBA4 00402825 */   or        $a1, $v0, $zero
.L8002EBA8:
/* 2F7A8 8002EBA8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2F7AC 8002EBAC 8FB00008 */  lw         $s0, 8($sp)
/* 2F7B0 8002EBB0 8FB1000C */  lw         $s1, 0xc($sp)
/* 2F7B4 8002EBB4 8FB20010 */  lw         $s2, 0x10($sp)
/* 2F7B8 8002EBB8 8FB30014 */  lw         $s3, 0x14($sp)
/* 2F7BC 8002EBBC 8FB40018 */  lw         $s4, 0x18($sp)
/* 2F7C0 8002EBC0 8FB5001C */  lw         $s5, 0x1c($sp)
/* 2F7C4 8002EBC4 8FB60020 */  lw         $s6, 0x20($sp)
/* 2F7C8 8002EBC8 8FB70024 */  lw         $s7, 0x24($sp)
/* 2F7CC 8002EBCC 8FBE0028 */  lw         $fp, 0x28($sp)
/* 2F7D0 8002EBD0 03E00008 */  jr         $ra
/* 2F7D4 8002EBD4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002EBD8
/* 2F7D8 8002EBD8 94820008 */  lhu        $v0, 8($a0)
/* 2F7DC 8002EBDC 00001825 */  or         $v1, $zero, $zero
/* 2F7E0 8002EBE0 304E4000 */  andi       $t6, $v0, 0x4000
/* 2F7E4 8002EBE4 11C00003 */  beqz       $t6, .L8002EBF4
/* 2F7E8 8002EBE8 304F8000 */   andi      $t7, $v0, 0x8000
/* 2F7EC 8002EBEC 03E00008 */  jr         $ra
/* 2F7F0 8002EBF0 2402FFFF */   addiu     $v0, $zero, -1
.L8002EBF4:
/* 2F7F4 8002EBF4 11E00002 */  beqz       $t7, .L8002EC00
/* 2F7F8 8002EBF8 00000000 */   nop       
/* 2F7FC 8002EBFC 24030001 */  addiu      $v1, $zero, 1
.L8002EC00:
/* 2F800 8002EC00 03E00008 */  jr         $ra
/* 2F804 8002EC04 00601025 */   or        $v0, $v1, $zero

glabel func_8002EC08
/* 2F808 8002EC08 00047080 */  sll        $t6, $a0, 2
/* 2F80C 8002EC0C 3C028007 */  lui        $v0, 0x8007
/* 2F810 8002EC10 004E1021 */  addu       $v0, $v0, $t6
/* 2F814 8002EC14 03E00008 */  jr         $ra
/* 2F818 8002EC18 8C425910 */   lw        $v0, 0x5910($v0)

glabel func_8002EC1C
/* 2F81C 8002EC1C 27BDFFF8 */  addiu      $sp, $sp, -8
/* 2F820 8002EC20 AFA5000C */  sw         $a1, 0xc($sp)
/* 2F824 8002EC24 3C038007 */  lui        $v1, 0x8007
/* 2F828 8002EC28 90635940 */  lbu        $v1, 0x5940($v1)
/* 2F82C 8002EC2C 93AE000C */  lbu        $t6, 0xc($sp)
/* 2F830 8002EC30 44866000 */  mtc1       $a2, $f12
/* 2F834 8002EC34 3C058007 */  lui        $a1, 0x8007
/* 2F838 8002EC38 01C37823 */  subu       $t7, $t6, $v1
/* 2F83C 8002EC3C 448F2000 */  mtc1       $t7, $f4
/* 2F840 8002EC40 90A55941 */  lbu        $a1, 0x5941($a1)
/* 2F844 8002EC44 93A9000D */  lbu        $t1, 0xd($sp)
/* 2F848 8002EC48 468021A0 */  cvt.s.w    $f6, $f4
/* 2F84C 8002EC4C 3C068007 */  lui        $a2, 0x8007
/* 2F850 8002EC50 90C65942 */  lbu        $a2, 0x5942($a2)
/* 2F854 8002EC54 93AE000E */  lbu        $t6, 0xe($sp)
/* 2F858 8002EC58 01255023 */  subu       $t2, $t1, $a1
/* 2F85C 8002EC5C 448A8000 */  mtc1       $t2, $f16
/* 2F860 8002EC60 460C3202 */  mul.s      $f8, $f6, $f12
/* 2F864 8002EC64 01C67823 */  subu       $t7, $t6, $a2
/* 2F868 8002EC68 93A9000F */  lbu        $t1, 0xf($sp)
/* 2F86C 8002EC6C 27AA0004 */  addiu      $t2, $sp, 4
/* 2F870 8002EC70 00801025 */  or         $v0, $a0, $zero
/* 2F874 8002EC74 A3A90007 */  sb         $t1, 7($sp)
/* 2F878 8002EC78 468084A0 */  cvt.s.w    $f18, $f16
/* 2F87C 8002EC7C 4600428D */  trunc.w.s  $f10, $f8
/* 2F880 8002EC80 448F4000 */  mtc1       $t7, $f8
/* 2F884 8002EC84 460C9102 */  mul.s      $f4, $f18, $f12
/* 2F888 8002EC88 44195000 */  mfc1       $t9, $f10
/* 2F88C 8002EC8C 00000000 */  nop        
/* 2F890 8002EC90 03234021 */  addu       $t0, $t9, $v1
/* 2F894 8002EC94 468042A0 */  cvt.s.w    $f10, $f8
/* 2F898 8002EC98 A3A80004 */  sb         $t0, 4($sp)
/* 2F89C 8002EC9C 4600218D */  trunc.w.s  $f6, $f4
/* 2F8A0 8002ECA0 460C5402 */  mul.s      $f16, $f10, $f12
/* 2F8A4 8002ECA4 440C3000 */  mfc1       $t4, $f6
/* 2F8A8 8002ECA8 00000000 */  nop        
/* 2F8AC 8002ECAC 01856821 */  addu       $t5, $t4, $a1
/* 2F8B0 8002ECB0 4600848D */  trunc.w.s  $f18, $f16
/* 2F8B4 8002ECB4 A3AD0005 */  sb         $t5, 5($sp)
/* 2F8B8 8002ECB8 44199000 */  mfc1       $t9, $f18
/* 2F8BC 8002ECBC 00000000 */  nop        
/* 2F8C0 8002ECC0 03264021 */  addu       $t0, $t9, $a2
/* 2F8C4 8002ECC4 A3A80006 */  sb         $t0, 6($sp)
/* 2F8C8 8002ECC8 8D4C0000 */  lw         $t4, ($t2)
/* 2F8CC 8002ECCC 27BD0008 */  addiu      $sp, $sp, 8
/* 2F8D0 8002ECD0 A88C0000 */  swl        $t4, ($a0)
/* 2F8D4 8002ECD4 03E00008 */  jr         $ra
/* 2F8D8 8002ECD8 B88C0003 */   swr       $t4, 3($a0)

glabel func_8002ECDC
/* 2F8DC 8002ECDC 00801025 */  or         $v0, $a0, $zero
/* 2F8E0 8002ECE0 24040004 */  addiu      $a0, $zero, 4
/* 2F8E4 8002ECE4 00001825 */  or         $v1, $zero, $zero
.L8002ECE8:
/* 2F8E8 8002ECE8 904E0009 */  lbu        $t6, 9($v0)
/* 2F8EC 8002ECEC 11C00004 */  beqz       $t6, .L8002ED00
/* 2F8F0 8002ECF0 00000000 */   nop       
/* 2F8F4 8002ECF4 24630001 */  addiu      $v1, $v1, 1
/* 2F8F8 8002ECF8 1464FFFB */  bne        $v1, $a0, .L8002ECE8
/* 2F8FC 8002ECFC 24420001 */   addiu     $v0, $v0, 1
.L8002ED00:
/* 2F900 8002ED00 03E00008 */  jr         $ra
/* 2F904 8002ED04 00601025 */   or        $v0, $v1, $zero

glabel func_8002ED08
/* 2F908 8002ED08 18800003 */  blez       $a0, .L8002ED18
/* 2F90C 8002ED0C 288100A6 */   slti      $at, $a0, 0xa6
/* 2F910 8002ED10 14200003 */  bnez       $at, .L8002ED20
/* 2F914 8002ED14 00047080 */   sll       $t6, $a0, 2
.L8002ED18:
/* 2F918 8002ED18 03E00008 */  jr         $ra
/* 2F91C 8002ED1C 00001025 */   or        $v0, $zero, $zero
.L8002ED20:
/* 2F920 8002ED20 01C47023 */  subu       $t6, $t6, $a0
/* 2F924 8002ED24 000E7080 */  sll        $t6, $t6, 2
/* 2F928 8002ED28 3C188007 */  lui        $t8, 0x8007
/* 2F92C 8002ED2C 27182338 */  addiu      $t8, $t8, 0x2338
/* 2F930 8002ED30 25CFFFF4 */  addiu      $t7, $t6, -0xc
/* 2F934 8002ED34 01F81021 */  addu       $v0, $t7, $t8
/* 2F938 8002ED38 03E00008 */  jr         $ra
/* 2F93C 8002ED3C 00000000 */   nop       

glabel func_8002ED40
/* 2F940 8002ED40 18800003 */  blez       $a0, .L8002ED50
/* 2F944 8002ED44 288100A6 */   slti      $at, $a0, 0xa6
/* 2F948 8002ED48 14200003 */  bnez       $at, .L8002ED58
/* 2F94C 8002ED4C 00047080 */   sll       $t6, $a0, 2
.L8002ED50:
/* 2F950 8002ED50 03E00008 */  jr         $ra
/* 2F954 8002ED54 00001025 */   or        $v0, $zero, $zero
.L8002ED58:
/* 2F958 8002ED58 01C47023 */  subu       $t6, $t6, $a0
/* 2F95C 8002ED5C 000E7040 */  sll        $t6, $t6, 1
/* 2F960 8002ED60 3C188007 */  lui        $t8, 0x8007
/* 2F964 8002ED64 27182B00 */  addiu      $t8, $t8, 0x2b00
/* 2F968 8002ED68 25CFFFFA */  addiu      $t7, $t6, -6
/* 2F96C 8002ED6C 01F81021 */  addu       $v0, $t7, $t8
/* 2F970 8002ED70 03E00008 */  jr         $ra
/* 2F974 8002ED74 00000000 */   nop       

glabel func_8002ED78
/* 2F978 8002ED78 90820000 */  lbu        $v0, ($a0)
/* 2F97C 8002ED7C 24010001 */  addiu      $at, $zero, 1
/* 2F980 8002ED80 14A10010 */  bne        $a1, $at, .L8002EDC4
/* 2F984 8002ED84 2442FFFF */   addiu     $v0, $v0, -1
/* 2F988 8002ED88 00027080 */  sll        $t6, $v0, 2
/* 2F98C 8002ED8C 01C27023 */  subu       $t6, $t6, $v0
/* 2F990 8002ED90 000E70C0 */  sll        $t6, $t6, 3
/* 2F994 8002ED94 3C0F8007 */  lui        $t7, 0x8007
/* 2F998 8002ED98 25EF0FA0 */  addiu      $t7, $t7, 0xfa0
/* 2F99C 8002ED9C 01C27023 */  subu       $t6, $t6, $v0
/* 2F9A0 8002EDA0 01CF1821 */  addu       $v1, $t6, $t7
/* 2F9A4 8002EDA4 90640007 */  lbu        $a0, 7($v1)
/* 2F9A8 8002EDA8 90780006 */  lbu        $t8, 6($v1)
/* 2F9AC 8002EDAC 17040003 */  bne        $t8, $a0, .L8002EDBC
/* 2F9B0 8002EDB0 00000000 */   nop       
/* 2F9B4 8002EDB4 03E00008 */  jr         $ra
/* 2F9B8 8002EDB8 2402FFFF */   addiu     $v0, $zero, -1
.L8002EDBC:
/* 2F9BC 8002EDBC 10000008 */  b          .L8002EDE0
/* 2F9C0 8002EDC0 00801825 */   or        $v1, $a0, $zero
.L8002EDC4:
/* 2F9C4 8002EDC4 0002C880 */  sll        $t9, $v0, 2
/* 2F9C8 8002EDC8 0322C823 */  subu       $t9, $t9, $v0
/* 2F9CC 8002EDCC 0019C8C0 */  sll        $t9, $t9, 3
/* 2F9D0 8002EDD0 0322C823 */  subu       $t9, $t9, $v0
/* 2F9D4 8002EDD4 3C038007 */  lui        $v1, 0x8007
/* 2F9D8 8002EDD8 00791821 */  addu       $v1, $v1, $t9
/* 2F9DC 8002EDDC 90630FA6 */  lbu        $v1, 0xfa6($v1)
.L8002EDE0:
/* 2F9E0 8002EDE0 00601025 */  or         $v0, $v1, $zero
/* 2F9E4 8002EDE4 03E00008 */  jr         $ra
/* 2F9E8 8002EDE8 00000000 */   nop       

glabel func_8002EDEC
/* 2F9EC 8002EDEC 28810014 */  slti       $at, $a0, 0x14
/* 2F9F0 8002EDF0 54200004 */  bnel       $at, $zero, .L8002EE04
/* 2F9F4 8002EDF4 28810007 */   slti      $at, $a0, 7
/* 2F9F8 8002EDF8 03E00008 */  jr         $ra
/* 2F9FC 8002EDFC 2482FFF4 */   addiu     $v0, $a0, -0xc
/* 2FA00 8002EE00 28810007 */  slti       $at, $a0, 7
.L8002EE04:
/* 2FA04 8002EE04 14200003 */  bnez       $at, .L8002EE14
/* 2FA08 8002EE08 00801825 */   or        $v1, $a0, $zero
/* 2FA0C 8002EE0C 03E00008 */  jr         $ra
/* 2FA10 8002EE10 2482FFFF */   addiu     $v0, $a0, -1
.L8002EE14:
/* 2FA14 8002EE14 03E00008 */  jr         $ra
/* 2FA18 8002EE18 00601025 */   or        $v0, $v1, $zero

glabel func_8002EE1C
/* 2FA1C 8002EE1C 248EFFF0 */  addiu      $t6, $a0, -0x10
/* 2FA20 8002EE20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2FA24 8002EE24 2DC10014 */  sltiu      $at, $t6, 0x14
/* 2FA28 8002EE28 1020000E */  beqz       $at, .L8002EE64
/* 2FA2C 8002EE2C AFBF0014 */   sw        $ra, 0x14($sp)
/* 2FA30 8002EE30 000E7080 */  sll        $t6, $t6, 2
/* 2FA34 8002EE34 3C018008 */  lui        $at, 0x8008
/* 2FA38 8002EE38 002E0821 */  addu       $at, $at, $t6
/* 2FA3C 8002EE3C 8C2EC440 */  lw         $t6, -0x3bc0($at)
/* 2FA40 8002EE40 01C00008 */  jr         $t6
/* 2FA44 8002EE44 00000000 */   nop       
/* 2FA48 8002EE48 0C009292 */  jal        func_80024A48
/* 2FA4C 8002EE4C 00000000 */   nop       
/* 2FA50 8002EE50 10000004 */  b          .L8002EE64
/* 2FA54 8002EE54 AFA2001C */   sw        $v0, 0x1c($sp)
/* 2FA58 8002EE58 0C009D78 */  jal        func_800275E0
/* 2FA5C 8002EE5C 00C02825 */   or        $a1, $a2, $zero
/* 2FA60 8002EE60 AFA2001C */  sw         $v0, 0x1c($sp)
.L8002EE64:
/* 2FA64 8002EE64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FA68 8002EE68 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2FA6C 8002EE6C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2FA70 8002EE70 03E00008 */  jr         $ra
/* 2FA74 8002EE74 00000000 */   nop       

glabel func_8002EE78
/* 2FA78 8002EE78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FA7C 8002EE7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FA80 8002EE80 3C04800B */  lui        $a0, 0x800b
/* 2FA84 8002EE84 3C05800B */  lui        $a1, 0x800b
/* 2FA88 8002EE88 24A5F768 */  addiu      $a1, $a1, -0x898
/* 2FA8C 8002EE8C 2484F750 */  addiu      $a0, $a0, -0x8b0
/* 2FA90 8002EE90 0C0178E8 */  jal        func_8005E3A0
/* 2FA94 8002EE94 24060001 */   addiu     $a2, $zero, 1
/* 2FA98 8002EE98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FA9C 8002EE9C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2FAA0 8002EEA0 03E00008 */  jr         $ra
/* 2FAA4 8002EEA4 00000000 */   nop       

glabel func_8002EEA8
/* 2FAA8 8002EEA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FAAC 8002EEAC 00802825 */  or         $a1, $a0, $zero
/* 2FAB0 8002EEB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FAB4 8002EEB4 3C04800B */  lui        $a0, 0x800b
/* 2FAB8 8002EEB8 2484F750 */  addiu      $a0, $a0, -0x8b0
/* 2FABC 8002EEBC 0C015A30 */  jal        osSendMesg
/* 2FAC0 8002EEC0 24060001 */   addiu     $a2, $zero, 1
/* 2FAC4 8002EEC4 0C0016A1 */  jal        func_80005A84
/* 2FAC8 8002EEC8 00000000 */   nop       
/* 2FACC 8002EECC 0C0016AC */  jal        func_80005AB0
/* 2FAD0 8002EED0 00000000 */   nop       
/* 2FAD4 8002EED4 0C007DCC */  jal        func_8001F730
/* 2FAD8 8002EED8 00000000 */   nop       
/* 2FADC 8002EEDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FAE0 8002EEE0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2FAE4 8002EEE4 03E00008 */  jr         $ra
/* 2FAE8 8002EEE8 00000000 */   nop       

glabel func_8002EEEC
/* 2FAEC 8002EEEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FAF0 8002EEF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FAF4 8002EEF4 3C04800B */  lui        $a0, 0x800b
/* 2FAF8 8002EEF8 2484F750 */  addiu      $a0, $a0, -0x8b0
/* 2FAFC 8002EEFC 00002825 */  or         $a1, $zero, $zero
/* 2FB00 8002EF00 0C015A30 */  jal        osSendMesg
/* 2FB04 8002EF04 24060001 */   addiu     $a2, $zero, 1
/* 2FB08 8002EF08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FB0C 8002EF0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2FB10 8002EF10 03E00008 */  jr         $ra
/* 2FB14 8002EF14 00000000 */   nop       

glabel func_8002EF18
/* 2FB18 8002EF18 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FB1C 8002EF1C 00802825 */  or         $a1, $a0, $zero
/* 2FB20 8002EF20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FB24 8002EF24 3C04800B */  lui        $a0, 0x800b
/* 2FB28 8002EF28 2484F750 */  addiu      $a0, $a0, -0x8b0
/* 2FB2C 8002EF2C 0C015AB4 */  jal        func_80056AD0
/* 2FB30 8002EF30 24060001 */   addiu     $a2, $zero, 1
/* 2FB34 8002EF34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FB38 8002EF38 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2FB3C 8002EF3C 03E00008 */  jr         $ra
/* 2FB40 8002EF40 00000000 */   nop       

glabel func_8002EF44
/* 2FB44 8002EF44 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2FB48 8002EF48 AFB7003C */  sw         $s7, 0x3c($sp)
/* 2FB4C 8002EF4C 3C178130 */  lui        $s7, 0x8130
/* 2FB50 8002EF50 26F70000 */  addiu      $s7, $s7, 0
/* 2FB54 8002EF54 3C010FF0 */  lui        $at, 0xff0
/* 2FB58 8002EF58 02E1B824 */  and        $s7, $s7, $at
/* 2FB5C 8002EF5C 0017BD02 */  srl        $s7, $s7, 0x14
/* 2FB60 8002EF60 AFBF0044 */  sw         $ra, 0x44($sp)
/* 2FB64 8002EF64 26F7FFF0 */  addiu      $s7, $s7, -0x10
/* 2FB68 8002EF68 3C050026 */  lui        $a1, 0x26
/* 2FB6C 8002EF6C 3C060026 */  lui        $a2, 0x26
/* 2FB70 8002EF70 AFBE0040 */  sw         $fp, 0x40($sp)
/* 2FB74 8002EF74 AFB60038 */  sw         $s6, 0x38($sp)
/* 2FB78 8002EF78 AFB50034 */  sw         $s5, 0x34($sp)
/* 2FB7C 8002EF7C AFB40030 */  sw         $s4, 0x30($sp)
/* 2FB80 8002EF80 AFB3002C */  sw         $s3, 0x2c($sp)
/* 2FB84 8002EF84 AFB20028 */  sw         $s2, 0x28($sp)
/* 2FB88 8002EF88 AFB10024 */  sw         $s1, 0x24($sp)
/* 2FB8C 8002EF8C AFB00020 */  sw         $s0, 0x20($sp)
/* 2FB90 8002EF90 24C6F440 */  addiu      $a2, $a2, -0xbc0
/* 2FB94 8002EF94 24A5B0D0 */  addiu      $a1, $a1, -0x4f30
/* 2FB98 8002EF98 02E02025 */  or         $a0, $s7, $zero
/* 2FB9C 8002EF9C AFA00010 */  sw         $zero, 0x10($sp)
/* 2FBA0 8002EFA0 0C00A402 */  jal        func_80029008
/* 2FBA4 8002EFA4 24070001 */   addiu     $a3, $zero, 1
/* 2FBA8 8002EFA8 0C00A420 */  jal        func_80029080
/* 2FBAC 8002EFAC 00000000 */   nop       
/* 2FBB0 8002EFB0 241EFFFF */  addiu      $fp, $zero, -1
/* 2FBB4 8002EFB4 145E0005 */  bne        $v0, $fp, .L8002EFCC
/* 2FBB8 8002EFB8 0000A025 */   or        $s4, $zero, $zero
/* 2FBBC 8002EFBC 24160010 */  addiu      $s6, $zero, 0x10
/* 2FBC0 8002EFC0 3C018007 */  lui        $at, 0x8007
/* 2FBC4 8002EFC4 10000072 */  b          .L8002F190
/* 2FBC8 8002EFC8 AC365668 */   sw        $s6, 0x5668($at)
.L8002EFCC:
/* 2FBCC 8002EFCC 3C15504C */  lui        $s5, 0x504c
/* 2FBD0 8002EFD0 3C10800B */  lui        $s0, 0x800b
/* 2FBD4 8002EFD4 24110025 */  addiu      $s1, $zero, 0x25
/* 2FBD8 8002EFD8 2610E520 */  addiu      $s0, $s0, -0x1ae0
/* 2FBDC 8002EFDC 36B54142 */  ori        $s5, $s5, 0x4142
/* 2FBE0 8002EFE0 24160010 */  addiu      $s6, $zero, 0x10
/* 2FBE4 8002EFE4 24120025 */  addiu      $s2, $zero, 0x25
.L8002EFE8:
/* 2FBE8 8002EFE8 16320044 */  bne        $s1, $s2, .L8002F0FC
/* 2FBEC 8002EFEC 3C010001 */   lui       $at, 1
/* 2FBF0 8002EFF0 3C138800 */  lui        $s3, 0x8800
/* 2FBF4 8002EFF4 26730000 */  addiu      $s3, $s3, 0
/* 2FBF8 8002EFF8 3C010FF0 */  lui        $at, 0xff0
/* 2FBFC 8002EFFC 02619824 */  and        $s3, $s3, $at
/* 2FC00 8002F000 00139D02 */  srl        $s3, $s3, 0x14
/* 2FC04 8002F004 2673FFF0 */  addiu      $s3, $s3, -0x10
/* 2FC08 8002F008 0C0009E1 */  jal        func_80002784
/* 2FC0C 8002F00C 02A02025 */   or        $a0, $s5, $zero
/* 2FC10 8002F010 0C00A420 */  jal        func_80029080
/* 2FC14 8002F014 00000000 */   nop       
/* 2FC18 8002F018 505E0008 */  beql       $v0, $fp, .L8002F03C
/* 2FC1C 8002F01C 3C040001 */   lui       $a0, 1
/* 2FC20 8002F020 0C00A2BF */  jal        func_80028AFC
/* 2FC24 8002F024 24040003 */   addiu     $a0, $zero, 3
/* 2FC28 8002F028 0C00A420 */  jal        func_80029080
/* 2FC2C 8002F02C 00000000 */   nop       
/* 2FC30 8002F030 0C008F58 */  jal        func_80023D60
/* 2FC34 8002F034 00402025 */   or        $a0, $v0, $zero
/* 2FC38 8002F038 3C040001 */  lui        $a0, 1
.L8002F03C:
/* 2FC3C 8002F03C 34846000 */  ori        $a0, $a0, 0x6000
/* 2FC40 8002F040 0C001790 */  jal        func_80005E40
/* 2FC44 8002F044 00002825 */   or        $a1, $zero, $zero
/* 2FC48 8002F048 240E0002 */  addiu      $t6, $zero, 2
/* 2FC4C 8002F04C 240F0001 */  addiu      $t7, $zero, 1
/* 2FC50 8002F050 AFAF0014 */  sw         $t7, 0x14($sp)
/* 2FC54 8002F054 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2FC58 8002F058 24040001 */  addiu      $a0, $zero, 1
/* 2FC5C 8002F05C 24050001 */  addiu      $a1, $zero, 1
/* 2FC60 8002F060 24060002 */  addiu      $a2, $zero, 2
/* 2FC64 8002F064 0C001D11 */  jal        func_80007444
/* 2FC68 8002F068 00003825 */   or        $a3, $zero, $zero
/* 2FC6C 8002F06C 0C001D9E */  jal        func_80007678
/* 2FC70 8002F070 00402025 */   or        $a0, $v0, $zero
/* 2FC74 8002F074 3C050019 */  lui        $a1, 0x19
/* 2FC78 8002F078 3C06001B */  lui        $a2, 0x1b
/* 2FC7C 8002F07C 24C68570 */  addiu      $a2, $a2, -0x7a90
/* 2FC80 8002F080 24A51660 */  addiu      $a1, $a1, 0x1660
/* 2FC84 8002F084 02602025 */  or         $a0, $s3, $zero
/* 2FC88 8002F088 02803825 */  or         $a3, $s4, $zero
/* 2FC8C 8002F08C 0C00A412 */  jal        func_80029048
/* 2FC90 8002F090 AFA00010 */   sw        $zero, 0x10($sp)
/* 2FC94 8002F094 16320011 */  bne        $s1, $s2, .L8002F0DC
/* 2FC98 8002F098 00000000 */   nop       
/* 2FC9C 8002F09C 86180000 */  lh         $t8, ($s0)
/* 2FCA0 8002F0A0 1300000E */  beqz       $t8, .L8002F0DC
/* 2FCA4 8002F0A4 00000000 */   nop       
/* 2FCA8 8002F0A8 8E190010 */  lw         $t9, 0x10($s0)
.L8002F0AC:
/* 2FCAC 8002F0AC A6000000 */  sh         $zero, ($s0)
/* 2FCB0 8002F0B0 86040002 */  lh         $a0, 2($s0)
/* 2FCB4 8002F0B4 8E050004 */  lw         $a1, 4($s0)
/* 2FCB8 8002F0B8 8E060008 */  lw         $a2, 8($s0)
/* 2FCBC 8002F0BC 8E07000C */  lw         $a3, 0xc($s0)
/* 2FCC0 8002F0C0 0C00A402 */  jal        func_80029008
/* 2FCC4 8002F0C4 AFB90010 */   sw        $t9, 0x10($sp)
/* 2FCC8 8002F0C8 14520004 */  bne        $v0, $s2, .L8002F0DC
/* 2FCCC 8002F0CC 00408825 */   or        $s1, $v0, $zero
/* 2FCD0 8002F0D0 86080000 */  lh         $t0, ($s0)
/* 2FCD4 8002F0D4 5500FFF5 */  bnel       $t0, $zero, .L8002F0AC
/* 2FCD8 8002F0D8 8E190010 */   lw        $t9, 0x10($s0)
.L8002F0DC:
/* 2FCDC 8002F0DC 0C001DB0 */  jal        func_800076C0
/* 2FCE0 8002F0E0 00000000 */   nop       
/* 2FCE4 8002F0E4 0C0017AB */  jal        func_80005EAC
/* 2FCE8 8002F0E8 00000000 */   nop       
/* 2FCEC 8002F0EC 0C000A0E */  jal        func_80002838
/* 2FCF0 8002F0F0 02A02025 */   or        $a0, $s5, $zero
/* 2FCF4 8002F0F4 10000022 */  b          .L8002F180
/* 2FCF8 8002F0F8 00000000 */   nop       
.L8002F0FC:
/* 2FCFC 8002F0FC 12210007 */  beq        $s1, $at, .L8002F11C
/* 2FD00 8002F100 3C0482F0 */   lui       $a0, 0x82f0
/* 2FD04 8002F104 3C010001 */  lui        $at, 1
/* 2FD08 8002F108 34210001 */  ori        $at, $at, 1
/* 2FD0C 8002F10C 12210013 */  beq        $s1, $at, .L8002F15C
/* 2FD10 8002F110 02E02025 */   or        $a0, $s7, $zero
/* 2FD14 8002F114 1000001A */  b          .L8002F180
/* 2FD18 8002F118 00000000 */   nop       
.L8002F11C:
/* 2FD1C 8002F11C 24840000 */  addiu      $a0, $a0, 0
/* 2FD20 8002F120 3C010FF0 */  lui        $at, 0xff0
/* 2FD24 8002F124 00812024 */  and        $a0, $a0, $at
/* 2FD28 8002F128 00042502 */  srl        $a0, $a0, 0x14
/* 2FD2C 8002F12C 3C050028 */  lui        $a1, 0x28
/* 2FD30 8002F130 3C06002A */  lui        $a2, 0x2a
/* 2FD34 8002F134 24C6DD30 */  addiu      $a2, $a2, -0x22d0
/* 2FD38 8002F138 24A57EB0 */  addiu      $a1, $a1, 0x7eb0
/* 2FD3C 8002F13C 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 2FD40 8002F140 00003825 */  or         $a3, $zero, $zero
/* 2FD44 8002F144 AFA00010 */  sw         $zero, 0x10($sp)
/* 2FD48 8002F148 24110025 */  addiu      $s1, $zero, 0x25
/* 2FD4C 8002F14C 0C00A402 */  jal        func_80029008
/* 2FD50 8002F150 24140002 */   addiu     $s4, $zero, 2
/* 2FD54 8002F154 1000000A */  b          .L8002F180
/* 2FD58 8002F158 00000000 */   nop       
.L8002F15C:
/* 2FD5C 8002F15C 3C050026 */  lui        $a1, 0x26
/* 2FD60 8002F160 3C060026 */  lui        $a2, 0x26
/* 2FD64 8002F164 24C6F440 */  addiu      $a2, $a2, -0xbc0
/* 2FD68 8002F168 24A5B0D0 */  addiu      $a1, $a1, -0x4f30
/* 2FD6C 8002F16C 00003825 */  or         $a3, $zero, $zero
/* 2FD70 8002F170 AFA00010 */  sw         $zero, 0x10($sp)
/* 2FD74 8002F174 24110025 */  addiu      $s1, $zero, 0x25
/* 2FD78 8002F178 0C00A402 */  jal        func_80029008
/* 2FD7C 8002F17C 24140001 */   addiu     $s4, $zero, 1
.L8002F180:
/* 2FD80 8002F180 1636FF99 */  bne        $s1, $s6, .L8002EFE8
/* 2FD84 8002F184 00000000 */   nop       
/* 2FD88 8002F188 3C018007 */  lui        $at, 0x8007
/* 2FD8C 8002F18C AC365668 */  sw         $s6, 0x5668($at)
.L8002F190:
/* 2FD90 8002F190 8FBF0044 */  lw         $ra, 0x44($sp)
/* 2FD94 8002F194 8FB00020 */  lw         $s0, 0x20($sp)
/* 2FD98 8002F198 8FB10024 */  lw         $s1, 0x24($sp)
/* 2FD9C 8002F19C 8FB20028 */  lw         $s2, 0x28($sp)
/* 2FDA0 8002F1A0 8FB3002C */  lw         $s3, 0x2c($sp)
/* 2FDA4 8002F1A4 8FB40030 */  lw         $s4, 0x30($sp)
/* 2FDA8 8002F1A8 8FB50034 */  lw         $s5, 0x34($sp)
/* 2FDAC 8002F1AC 8FB60038 */  lw         $s6, 0x38($sp)
/* 2FDB0 8002F1B0 8FB7003C */  lw         $s7, 0x3c($sp)
/* 2FDB4 8002F1B4 8FBE0040 */  lw         $fp, 0x40($sp)
/* 2FDB8 8002F1B8 03E00008 */  jr         $ra
/* 2FDBC 8002F1BC 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8002F1C0
/* 2FDC0 8002F1C0 3C0E8007 */  lui        $t6, 0x8007
/* 2FDC4 8002F1C4 91CE5950 */  lbu        $t6, 0x5950($t6)
/* 2FDC8 8002F1C8 3C0F8007 */  lui        $t7, 0x8007
/* 2FDCC 8002F1CC 148E0003 */  bne        $a0, $t6, .L8002F1DC
/* 2FDD0 8002F1D0 00000000 */   nop       
/* 2FDD4 8002F1D4 03E00008 */  jr         $ra
/* 2FDD8 8002F1D8 24020001 */   addiu     $v0, $zero, 1
.L8002F1DC:
/* 2FDDC 8002F1DC 91EF5951 */  lbu        $t7, 0x5951($t7)
/* 2FDE0 8002F1E0 3C038007 */  lui        $v1, 0x8007
/* 2FDE4 8002F1E4 24635952 */  addiu      $v1, $v1, 0x5952
/* 2FDE8 8002F1E8 148F0003 */  bne        $a0, $t7, .L8002F1F8
/* 2FDEC 8002F1EC 3C028007 */   lui       $v0, 0x8007
/* 2FDF0 8002F1F0 03E00008 */  jr         $ra
/* 2FDF4 8002F1F4 24020001 */   addiu     $v0, $zero, 1
.L8002F1F8:
/* 2FDF8 8002F1F8 2442596A */  addiu      $v0, $v0, 0x596a
/* 2FDFC 8002F1FC 90780000 */  lbu        $t8, ($v1)
.L8002F200:
/* 2FE00 8002F200 54980004 */  bnel       $a0, $t8, .L8002F214
/* 2FE04 8002F204 90790001 */   lbu       $t9, 1($v1)
/* 2FE08 8002F208 03E00008 */  jr         $ra
/* 2FE0C 8002F20C 24020001 */   addiu     $v0, $zero, 1
/* 2FE10 8002F210 90790001 */  lbu        $t9, 1($v1)
.L8002F214:
/* 2FE14 8002F214 54990004 */  bnel       $a0, $t9, .L8002F228
/* 2FE18 8002F218 90680002 */   lbu       $t0, 2($v1)
/* 2FE1C 8002F21C 03E00008 */  jr         $ra
/* 2FE20 8002F220 24020001 */   addiu     $v0, $zero, 1
/* 2FE24 8002F224 90680002 */  lbu        $t0, 2($v1)
.L8002F228:
/* 2FE28 8002F228 54880004 */  bnel       $a0, $t0, .L8002F23C
/* 2FE2C 8002F22C 90690003 */   lbu       $t1, 3($v1)
/* 2FE30 8002F230 03E00008 */  jr         $ra
/* 2FE34 8002F234 24020001 */   addiu     $v0, $zero, 1
/* 2FE38 8002F238 90690003 */  lbu        $t1, 3($v1)
.L8002F23C:
/* 2FE3C 8002F23C 24630004 */  addiu      $v1, $v1, 4
/* 2FE40 8002F240 14890003 */  bne        $a0, $t1, .L8002F250
/* 2FE44 8002F244 00000000 */   nop       
/* 2FE48 8002F248 03E00008 */  jr         $ra
/* 2FE4C 8002F24C 24020001 */   addiu     $v0, $zero, 1
.L8002F250:
/* 2FE50 8002F250 5462FFEB */  bnel       $v1, $v0, .L8002F200
/* 2FE54 8002F254 90780000 */   lbu       $t8, ($v1)
/* 2FE58 8002F258 00001025 */  or         $v0, $zero, $zero
/* 2FE5C 8002F25C 03E00008 */  jr         $ra
/* 2FE60 8002F260 00000000 */   nop       

glabel func_8002F264
/* 2FE64 8002F264 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2FE68 8002F268 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FE6C 8002F26C 0C00BC70 */  jal        func_8002F1C0
/* 2FE70 8002F270 AFA0001C */   sw        $zero, 0x1c($sp)
/* 2FE74 8002F274 10400002 */  beqz       $v0, .L8002F280
/* 2FE78 8002F278 8FA3001C */   lw        $v1, 0x1c($sp)
/* 2FE7C 8002F27C 24030001 */  addiu      $v1, $zero, 1
.L8002F280:
/* 2FE80 8002F280 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FE84 8002F284 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2FE88 8002F288 00601025 */  or         $v0, $v1, $zero
/* 2FE8C 8002F28C 03E00008 */  jr         $ra
/* 2FE90 8002F290 00000000 */   nop       
/* 2FE94 8002F294 00000000 */  nop        
/* 2FE98 8002F298 00000000 */  nop        
/* 2FE9C 8002F29C 00000000 */  nop        
