.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800479C0
/* 485C0 800479C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 485C4 800479C4 2C8100A6 */  sltiu      $at, $a0, 0xa6
/* 485C8 800479C8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 485CC 800479CC AFA5002C */  sw         $a1, 0x2c($sp)
/* 485D0 800479D0 14200006 */  bnez       $at, .L800479EC
/* 485D4 800479D4 AFA60030 */   sw        $a2, 0x30($sp)
/* 485D8 800479D8 240100A6 */  addiu      $at, $zero, 0xa6
/* 485DC 800479DC 10810003 */  beq        $a0, $at, .L800479EC
/* 485E0 800479E0 00000000 */   nop       
/* 485E4 800479E4 10000187 */  b          .L80048004
/* 485E8 800479E8 00001025 */   or        $v0, $zero, $zero
.L800479EC:
/* 485EC 800479EC 0C012119 */  jal        func_80048464
/* 485F0 800479F0 AFA40028 */   sw        $a0, 0x28($sp)
/* 485F4 800479F4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 485F8 800479F8 240200A6 */  addiu      $v0, $zero, 0xa6
/* 485FC 800479FC 8FA90030 */  lw         $t1, 0x30($sp)
/* 48600 80047A00 15420003 */  bne        $t2, $v0, .L80047A10
/* 48604 80047A04 240E00FF */   addiu     $t6, $zero, 0xff
/* 48608 80047A08 AFAE0030 */  sw         $t6, 0x30($sp)
/* 4860C 80047A0C AFA90024 */  sw         $t1, 0x24($sp)
.L80047A10:
/* 48610 80047A10 8FAF0030 */  lw         $t7, 0x30($sp)
/* 48614 80047A14 8FA90024 */  lw         $t1, 0x24($sp)
/* 48618 80047A18 8FB80030 */  lw         $t8, 0x30($sp)
/* 4861C 80047A1C 2DE100A7 */  sltiu      $at, $t7, 0xa7
/* 48620 80047A20 14200005 */  bnez       $at, .L80047A38
/* 48624 80047A24 240100FF */   addiu     $at, $zero, 0xff
/* 48628 80047A28 11E100F9 */  beq        $t7, $at, .L80047E10
/* 4862C 80047A2C 00000000 */   nop       
/* 48630 80047A30 10000174 */  b          .L80048004
/* 48634 80047A34 00001025 */   or        $v0, $zero, $zero
.L80047A38:
/* 48638 80047A38 2F010006 */  sltiu      $at, $t8, 6
/* 4863C 80047A3C 14200005 */  bnez       $at, .L80047A54
/* 48640 80047A40 8FB90030 */   lw        $t9, 0x30($sp)
/* 48644 80047A44 130200F2 */  beq        $t8, $v0, .L80047E10
/* 48648 80047A48 00000000 */   nop       
/* 4864C 80047A4C 1000016D */  b          .L80048004
/* 48650 80047A50 00001025 */   or        $v0, $zero, $zero
.L80047A54:
/* 48654 80047A54 2F210006 */  sltiu      $at, $t9, 6
/* 48658 80047A58 102000EB */  beqz       $at, .L80047E08
/* 4865C 80047A5C 0019C880 */   sll       $t9, $t9, 2
/* 48660 80047A60 3C018008 */  lui        $at, 0x8008
/* 48664 80047A64 00390821 */  addu       $at, $at, $t9
/* 48668 80047A68 8C39CCD0 */  lw         $t9, -0x3330($at)
/* 4866C 80047A6C 03200008 */  jr         $t9
/* 48670 80047A70 00000000 */   nop       
/* 48674 80047A74 3C048008 */  lui        $a0, 0x8008
/* 48678 80047A78 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 4867C 80047A7C 0C00E4D5 */  jal        func_80039354
/* 48680 80047A80 AFAA0028 */   sw        $t2, 0x28($sp)
/* 48684 80047A84 10400009 */  beqz       $v0, .L80047AAC
/* 48688 80047A88 8FAA0028 */   lw        $t2, 0x28($sp)
/* 4868C 80047A8C 3C048008 */  lui        $a0, 0x8008
/* 48690 80047A90 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 48694 80047A94 24050014 */  addiu      $a1, $zero, 0x14
/* 48698 80047A98 0C00E4AA */  jal        func_800392A8
/* 4869C 80047A9C AFAA0028 */   sw        $t2, 0x28($sp)
/* 486A0 80047AA0 3C018008 */  lui        $at, 0x8008
/* 486A4 80047AA4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 486A8 80047AA8 AC2089F4 */  sw         $zero, -0x760c($at)
.L80047AAC:
/* 486AC 80047AAC 2401000D */  addiu      $at, $zero, 0xd
/* 486B0 80047AB0 1141000B */  beq        $t2, $at, .L80047AE0
/* 486B4 80047AB4 24010013 */   addiu     $at, $zero, 0x13
/* 486B8 80047AB8 11410009 */  beq        $t2, $at, .L80047AE0
/* 486BC 80047ABC 2401004C */   addiu     $at, $zero, 0x4c
/* 486C0 80047AC0 11410007 */  beq        $t2, $at, .L80047AE0
/* 486C4 80047AC4 2401005B */   addiu     $at, $zero, 0x5b
/* 486C8 80047AC8 11410005 */  beq        $t2, $at, .L80047AE0
/* 486CC 80047ACC 24010082 */   addiu     $at, $zero, 0x82
/* 486D0 80047AD0 11410003 */  beq        $t2, $at, .L80047AE0
/* 486D4 80047AD4 2401008F */   addiu     $at, $zero, 0x8f
/* 486D8 80047AD8 15410003 */  bne        $t2, $at, .L80047AE8
/* 486DC 80047ADC 00000000 */   nop       
.L80047AE0:
/* 486E0 80047AE0 100000CB */  b          .L80047E10
/* 486E4 80047AE4 24090004 */   addiu     $t1, $zero, 4
.L80047AE8:
/* 486E8 80047AE8 10000146 */  b          .L80048004
/* 486EC 80047AEC 00001025 */   or        $v0, $zero, $zero
/* 486F0 80047AF0 3C048008 */  lui        $a0, 0x8008
/* 486F4 80047AF4 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 486F8 80047AF8 0C00E4D5 */  jal        func_80039354
/* 486FC 80047AFC AFAA0028 */   sw        $t2, 0x28($sp)
/* 48700 80047B00 10400009 */  beqz       $v0, .L80047B28
/* 48704 80047B04 8FAA0028 */   lw        $t2, 0x28($sp)
/* 48708 80047B08 3C048008 */  lui        $a0, 0x8008
/* 4870C 80047B0C 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 48710 80047B10 24050014 */  addiu      $a1, $zero, 0x14
/* 48714 80047B14 0C00E4AA */  jal        func_800392A8
/* 48718 80047B18 AFAA0028 */   sw        $t2, 0x28($sp)
/* 4871C 80047B1C 3C018008 */  lui        $at, 0x8008
/* 48720 80047B20 8FAA0028 */  lw         $t2, 0x28($sp)
/* 48724 80047B24 AC2089F4 */  sw         $zero, -0x760c($at)
.L80047B28:
/* 48728 80047B28 24010035 */  addiu      $at, $zero, 0x35
/* 4872C 80047B2C 1141000C */  beq        $t2, $at, .L80047B60
/* 48730 80047B30 3C028008 */   lui       $v0, 0x8008
/* 48734 80047B34 24010052 */  addiu      $at, $zero, 0x52
/* 48738 80047B38 11410009 */  beq        $t2, $at, .L80047B60
/* 4873C 80047B3C 24010053 */   addiu     $at, $zero, 0x53
/* 48740 80047B40 11410007 */  beq        $t2, $at, .L80047B60
/* 48744 80047B44 24010078 */   addiu     $at, $zero, 0x78
/* 48748 80047B48 11410012 */  beq        $t2, $at, .L80047B94
/* 4874C 80047B4C 24010099 */   addiu     $at, $zero, 0x99
/* 48750 80047B50 11410010 */  beq        $t2, $at, .L80047B94
/* 48754 80047B54 00004825 */   or        $t1, $zero, $zero
/* 48758 80047B58 10000010 */  b          .L80047B9C
/* 4875C 80047B5C 00000000 */   nop       
.L80047B60:
/* 48760 80047B60 8FAB002C */  lw         $t3, 0x2c($sp)
/* 48764 80047B64 3C0D8008 */  lui        $t5, 0x8008
/* 48768 80047B68 24010001 */  addiu      $at, $zero, 1
/* 4876C 80047B6C 000B6080 */  sll        $t4, $t3, 2
/* 48770 80047B70 018B6021 */  addu       $t4, $t4, $t3
/* 48774 80047B74 01AC6821 */  addu       $t5, $t5, $t4
/* 48778 80047B78 91AD86FD */  lbu        $t5, -0x7903($t5)
/* 4877C 80047B7C 15A10003 */  bne        $t5, $at, .L80047B8C
/* 48780 80047B80 00000000 */   nop       
/* 48784 80047B84 10000005 */  b          .L80047B9C
/* 48788 80047B88 00004825 */   or        $t1, $zero, $zero
.L80047B8C:
/* 4878C 80047B8C 10000003 */  b          .L80047B9C
/* 48790 80047B90 24090004 */   addiu     $t1, $zero, 4
.L80047B94:
/* 48794 80047B94 10000001 */  b          .L80047B9C
/* 48798 80047B98 00004825 */   or        $t1, $zero, $zero
.L80047B9C:
/* 4879C 80047B9C 24428A00 */  addiu      $v0, $v0, -0x7600
/* 487A0 80047BA0 1000009B */  b          .L80047E10
/* 487A4 80047BA4 A0400000 */   sb        $zero, ($v0)
/* 487A8 80047BA8 254EFFF5 */  addiu      $t6, $t2, -0xb
/* 487AC 80047BAC 2DC10096 */  sltiu      $at, $t6, 0x96
/* 487B0 80047BB0 10200016 */  beqz       $at, .L80047C0C
/* 487B4 80047BB4 000E7080 */   sll       $t6, $t6, 2
/* 487B8 80047BB8 3C018008 */  lui        $at, 0x8008
/* 487BC 80047BBC 002E0821 */  addu       $at, $at, $t6
/* 487C0 80047BC0 8C2ECCE8 */  lw         $t6, -0x3318($at)
/* 487C4 80047BC4 01C00008 */  jr         $t6
/* 487C8 80047BC8 00000000 */   nop       
/* 487CC 80047BCC 3C048008 */  lui        $a0, 0x8008
/* 487D0 80047BD0 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 487D4 80047BD4 0C00E4D5 */  jal        func_80039354
/* 487D8 80047BD8 AFAA0028 */   sw        $t2, 0x28($sp)
/* 487DC 80047BDC 10400019 */  beqz       $v0, .L80047C44
/* 487E0 80047BE0 8FAA0028 */   lw        $t2, 0x28($sp)
/* 487E4 80047BE4 3C048008 */  lui        $a0, 0x8008
/* 487E8 80047BE8 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 487EC 80047BEC 2405003C */  addiu      $a1, $zero, 0x3c
/* 487F0 80047BF0 0C00E4AA */  jal        func_800392A8
/* 487F4 80047BF4 AFAA0028 */   sw        $t2, 0x28($sp)
/* 487F8 80047BF8 3C018008 */  lui        $at, 0x8008
/* 487FC 80047BFC 8FAA0028 */  lw         $t2, 0x28($sp)
/* 48800 80047C00 AC2089F4 */  sw         $zero, -0x760c($at)
/* 48804 80047C04 10000082 */  b          .L80047E10
/* 48808 80047C08 24090001 */   addiu     $t1, $zero, 1
.L80047C0C:
/* 4880C 80047C0C 3C048008 */  lui        $a0, 0x8008
/* 48810 80047C10 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 48814 80047C14 0C00E4D5 */  jal        func_80039354
/* 48818 80047C18 AFAA0028 */   sw        $t2, 0x28($sp)
/* 4881C 80047C1C 10400009 */  beqz       $v0, .L80047C44
/* 48820 80047C20 8FAA0028 */   lw        $t2, 0x28($sp)
/* 48824 80047C24 3C048008 */  lui        $a0, 0x8008
/* 48828 80047C28 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 4882C 80047C2C 24050002 */  addiu      $a1, $zero, 2
/* 48830 80047C30 0C00E4AA */  jal        func_800392A8
/* 48834 80047C34 AFAA0028 */   sw        $t2, 0x28($sp)
/* 48838 80047C38 3C018008 */  lui        $at, 0x8008
/* 4883C 80047C3C 8FAA0028 */  lw         $t2, 0x28($sp)
/* 48840 80047C40 AC2089F4 */  sw         $zero, -0x760c($at)
.L80047C44:
/* 48844 80047C44 10000072 */  b          .L80047E10
/* 48848 80047C48 24090001 */   addiu     $t1, $zero, 1
/* 4884C 80047C4C 3C048008 */  lui        $a0, 0x8008
/* 48850 80047C50 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 48854 80047C54 0C00E4D5 */  jal        func_80039354
/* 48858 80047C58 AFAA0028 */   sw        $t2, 0x28($sp)
/* 4885C 80047C5C 10400009 */  beqz       $v0, .L80047C84
/* 48860 80047C60 8FAA0028 */   lw        $t2, 0x28($sp)
/* 48864 80047C64 3C048008 */  lui        $a0, 0x8008
/* 48868 80047C68 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 4886C 80047C6C 24050014 */  addiu      $a1, $zero, 0x14
/* 48870 80047C70 0C00E4AA */  jal        func_800392A8
/* 48874 80047C74 AFAA0028 */   sw        $t2, 0x28($sp)
/* 48878 80047C78 3C018008 */  lui        $at, 0x8008
/* 4887C 80047C7C 8FAA0028 */  lw         $t2, 0x28($sp)
/* 48880 80047C80 AC2089F4 */  sw         $zero, -0x760c($at)
.L80047C84:
/* 48884 80047C84 254FFFFF */  addiu      $t7, $t2, -1
/* 48888 80047C88 2DE100A4 */  sltiu      $at, $t7, 0xa4
/* 4888C 80047C8C 10200017 */  beqz       $at, .L80047CEC
/* 48890 80047C90 000F7880 */   sll       $t7, $t7, 2
/* 48894 80047C94 3C018008 */  lui        $at, 0x8008
/* 48898 80047C98 002F0821 */  addu       $at, $at, $t7
/* 4889C 80047C9C 8C2FCF40 */  lw         $t7, -0x30c0($at)
/* 488A0 80047CA0 01E00008 */  jr         $t7
/* 488A4 80047CA4 00000000 */   nop       
/* 488A8 80047CA8 100000D6 */  b          .L80048004
/* 488AC 80047CAC 00001025 */   or        $v0, $zero, $zero
/* 488B0 80047CB0 1000000F */  b          .L80047CF0
/* 488B4 80047CB4 24090002 */   addiu     $t1, $zero, 2
/* 488B8 80047CB8 8FB8002C */  lw         $t8, 0x2c($sp)
/* 488BC 80047CBC 3C0B8008 */  lui        $t3, 0x8008
/* 488C0 80047CC0 24010001 */  addiu      $at, $zero, 1
/* 488C4 80047CC4 0018C880 */  sll        $t9, $t8, 2
/* 488C8 80047CC8 0338C821 */  addu       $t9, $t9, $t8
/* 488CC 80047CCC 01795821 */  addu       $t3, $t3, $t9
/* 488D0 80047CD0 916B86FD */  lbu        $t3, -0x7903($t3)
/* 488D4 80047CD4 15610003 */  bne        $t3, $at, .L80047CE4
/* 488D8 80047CD8 00000000 */   nop       
/* 488DC 80047CDC 10000004 */  b          .L80047CF0
/* 488E0 80047CE0 00004825 */   or        $t1, $zero, $zero
.L80047CE4:
/* 488E4 80047CE4 10000002 */  b          .L80047CF0
/* 488E8 80047CE8 24090004 */   addiu     $t1, $zero, 4
.L80047CEC:
/* 488EC 80047CEC 00004825 */  or         $t1, $zero, $zero
.L80047CF0:
/* 488F0 80047CF0 3C028008 */  lui        $v0, 0x8008
/* 488F4 80047CF4 24428A00 */  addiu      $v0, $v0, -0x7600
/* 488F8 80047CF8 10000045 */  b          .L80047E10
/* 488FC 80047CFC A0400000 */   sb        $zero, ($v0)
/* 48900 80047D00 3C048008 */  lui        $a0, 0x8008
/* 48904 80047D04 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 48908 80047D08 0C00E4D5 */  jal        func_80039354
/* 4890C 80047D0C AFAA0028 */   sw        $t2, 0x28($sp)
/* 48910 80047D10 10400009 */  beqz       $v0, .L80047D38
/* 48914 80047D14 8FAA0028 */   lw        $t2, 0x28($sp)
/* 48918 80047D18 3C048008 */  lui        $a0, 0x8008
/* 4891C 80047D1C 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 48920 80047D20 24050014 */  addiu      $a1, $zero, 0x14
/* 48924 80047D24 0C00E4AA */  jal        func_800392A8
/* 48928 80047D28 AFAA0028 */   sw        $t2, 0x28($sp)
/* 4892C 80047D2C 3C018008 */  lui        $at, 0x8008
/* 48930 80047D30 8FAA0028 */  lw         $t2, 0x28($sp)
/* 48934 80047D34 AC2089F4 */  sw         $zero, -0x760c($at)
.L80047D38:
/* 48938 80047D38 2401009A */  addiu      $at, $zero, 0x9a
/* 4893C 80047D3C 1541000B */  bne        $t2, $at, .L80047D6C
/* 48940 80047D40 3C028008 */   lui       $v0, 0x8008
/* 48944 80047D44 24428A00 */  addiu      $v0, $v0, -0x7600
/* 48948 80047D48 904C0000 */  lbu        $t4, ($v0)
/* 4894C 80047D4C 24090003 */  addiu      $t1, $zero, 3
/* 48950 80047D50 240D0001 */  addiu      $t5, $zero, 1
/* 48954 80047D54 15800003 */  bnez       $t4, .L80047D64
/* 48958 80047D58 00000000 */   nop       
/* 4895C 80047D5C 1000002C */  b          .L80047E10
/* 48960 80047D60 A04D0000 */   sb        $t5, ($v0)
.L80047D64:
/* 48964 80047D64 1000002A */  b          .L80047E10
/* 48968 80047D68 00004825 */   or        $t1, $zero, $zero
.L80047D6C:
/* 4896C 80047D6C 10000028 */  b          .L80047E10
/* 48970 80047D70 00004825 */   or        $t1, $zero, $zero
/* 48974 80047D74 2D410011 */  sltiu      $at, $t2, 0x11
/* 48978 80047D78 14200010 */  bnez       $at, .L80047DBC
/* 4897C 80047D7C 254EFFD1 */   addiu     $t6, $t2, -0x2f
/* 48980 80047D80 2D410013 */  sltiu      $at, $t2, 0x13
/* 48984 80047D84 14200008 */  bnez       $at, .L80047DA8
/* 48988 80047D88 2DC1006B */   sltiu     $at, $t6, 0x6b
/* 4898C 80047D8C 10200012 */  beqz       $at, .L80047DD8
/* 48990 80047D90 000E7080 */   sll       $t6, $t6, 2
/* 48994 80047D94 3C018008 */  lui        $at, 0x8008
/* 48998 80047D98 002E0821 */  addu       $at, $at, $t6
/* 4899C 80047D9C 8C2ED1D0 */  lw         $t6, -0x2e30($at)
/* 489A0 80047DA0 01C00008 */  jr         $t6
/* 489A4 80047DA4 00000000 */   nop       
.L80047DA8:
/* 489A8 80047DA8 24010012 */  addiu      $at, $zero, 0x12
/* 489AC 80047DAC 11410008 */  beq        $t2, $at, .L80047DD0
/* 489B0 80047DB0 00000000 */   nop       
/* 489B4 80047DB4 10000008 */  b          .L80047DD8
/* 489B8 80047DB8 00000000 */   nop       
.L80047DBC:
/* 489BC 80047DBC 2401000D */  addiu      $at, $zero, 0xd
/* 489C0 80047DC0 11410003 */  beq        $t2, $at, .L80047DD0
/* 489C4 80047DC4 24010010 */   addiu     $at, $zero, 0x10
/* 489C8 80047DC8 15410003 */  bne        $t2, $at, .L80047DD8
/* 489CC 80047DCC 00000000 */   nop       
.L80047DD0:
/* 489D0 80047DD0 1000008C */  b          .L80048004
/* 489D4 80047DD4 00001025 */   or        $v0, $zero, $zero
.L80047DD8:
/* 489D8 80047DD8 3C048008 */  lui        $a0, 0x8008
/* 489DC 80047DDC 0C00E4D5 */  jal        func_80039354
/* 489E0 80047DE0 8C8489F4 */   lw        $a0, -0x760c($a0)
/* 489E4 80047DE4 10400006 */  beqz       $v0, .L80047E00
/* 489E8 80047DE8 3C048008 */   lui       $a0, 0x8008
/* 489EC 80047DEC 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 489F0 80047DF0 0C00E4AA */  jal        func_800392A8
/* 489F4 80047DF4 2405003C */   addiu     $a1, $zero, 0x3c
/* 489F8 80047DF8 3C018008 */  lui        $at, 0x8008
/* 489FC 80047DFC AC2089F4 */  sw         $zero, -0x760c($at)
.L80047E00:
/* 48A00 80047E00 10000080 */  b          .L80048004
/* 48A04 80047E04 00001025 */   or        $v0, $zero, $zero
.L80047E08:
/* 48A08 80047E08 1000007E */  b          .L80048004
/* 48A0C 80047E0C 00001025 */   or        $v0, $zero, $zero
.L80047E10:
/* 48A10 80047E10 3C088008 */  lui        $t0, 0x8008
/* 48A14 80047E14 250889FC */  addiu      $t0, $t0, -0x7604
/* 48A18 80047E18 910F0000 */  lbu        $t7, ($t0)
/* 48A1C 80047E1C 24010003 */  addiu      $at, $zero, 3
/* 48A20 80047E20 3C038010 */  lui        $v1, 0x8010
/* 48A24 80047E24 25F80001 */  addiu      $t8, $t7, 1
/* 48A28 80047E28 331900FF */  andi       $t9, $t8, 0xff
/* 48A2C 80047E2C 0321001A */  div        $zero, $t9, $at
/* 48A30 80047E30 A1180000 */  sb         $t8, ($t0)
/* 48A34 80047E34 00005810 */  mfhi       $t3
/* 48A38 80047E38 A10B0000 */  sb         $t3, ($t0)
/* 48A3C 80047E3C 8C63C6F0 */  lw         $v1, -0x3910($v1)
/* 48A40 80047E40 254AFFFF */  addiu      $t2, $t2, -1
/* 48A44 80047E44 000A7080 */  sll        $t6, $t2, 2
/* 48A48 80047E48 8C6C0000 */  lw         $t4, ($v1)
/* 48A4C 80047E4C 000AC080 */  sll        $t8, $t2, 2
/* 48A50 80047E50 3C0B8010 */  lui        $t3, 0x8010
/* 48A54 80047E54 258DFFFF */  addiu      $t5, $t4, -1
/* 48A58 80047E58 014D082B */  sltu       $at, $t2, $t5
/* 48A5C 80047E5C 10200006 */  beqz       $at, .L80047E78
/* 48A60 80047E60 3C058010 */   lui       $a1, 0x8010
/* 48A64 80047E64 006E1021 */  addu       $v0, $v1, $t6
/* 48A68 80047E68 8C44000C */  lw         $a0, 0xc($v0)
/* 48A6C 80047E6C 8C4F0010 */  lw         $t7, 0x10($v0)
/* 48A70 80047E70 10000006 */  b          .L80047E8C
/* 48A74 80047E74 01E43023 */   subu      $a2, $t7, $a0
.L80047E78:
/* 48A78 80047E78 8D6BC6E8 */  lw         $t3, -0x3918($t3)
/* 48A7C 80047E7C 0078C821 */  addu       $t9, $v1, $t8
/* 48A80 80047E80 8F24000C */  lw         $a0, 0xc($t9)
/* 48A84 80047E84 8D6C0014 */  lw         $t4, 0x14($t3)
/* 48A88 80047E88 01843023 */  subu       $a2, $t4, $a0
.L80047E8C:
/* 48A8C 80047E8C 8CA5C6DC */  lw         $a1, -0x3924($a1)
/* 48A90 80047E90 AFA90024 */  sw         $t1, 0x24($sp)
/* 48A94 80047E94 0C012B6C */  jal        func_8004ADB0
/* 48A98 80047E98 AFAA0028 */   sw        $t2, 0x28($sp)
/* 48A9C 80047E9C 3C088008 */  lui        $t0, 0x8008
/* 48AA0 80047EA0 250889FC */  addiu      $t0, $t0, -0x7604
/* 48AA4 80047EA4 910D0000 */  lbu        $t5, ($t0)
/* 48AA8 80047EA8 3C058010 */  lui        $a1, 0x8010
/* 48AAC 80047EAC 3C048010 */  lui        $a0, 0x8010
/* 48AB0 80047EB0 000D7080 */  sll        $t6, $t5, 2
/* 48AB4 80047EB4 00AE2821 */  addu       $a1, $a1, $t6
/* 48AB8 80047EB8 8CA5C698 */  lw         $a1, -0x3968($a1)
/* 48ABC 80047EBC 8C84C6DC */  lw         $a0, -0x3924($a0)
/* 48AC0 80047EC0 0C0142D0 */  jal        func_80050B40
/* 48AC4 80047EC4 24060258 */   addiu     $a2, $zero, 0x258
/* 48AC8 80047EC8 3C088008 */  lui        $t0, 0x8008
/* 48ACC 80047ECC 250889FC */  addiu      $t0, $t0, -0x7604
/* 48AD0 80047ED0 910F0000 */  lbu        $t7, ($t0)
/* 48AD4 80047ED4 3C048010 */  lui        $a0, 0x8010
/* 48AD8 80047ED8 000FC080 */  sll        $t8, $t7, 2
/* 48ADC 80047EDC 00982021 */  addu       $a0, $a0, $t8
/* 48AE0 80047EE0 0C00E5EF */  jal        func_800397BC
/* 48AE4 80047EE4 8C84C698 */   lw        $a0, -0x3968($a0)
/* 48AE8 80047EE8 3C088008 */  lui        $t0, 0x8008
/* 48AEC 80047EEC 250889FC */  addiu      $t0, $t0, -0x7604
/* 48AF0 80047EF0 91190000 */  lbu        $t9, ($t0)
/* 48AF4 80047EF4 8FA90024 */  lw         $t1, 0x24($sp)
/* 48AF8 80047EF8 3C058010 */  lui        $a1, 0x8010
/* 48AFC 80047EFC 00195880 */  sll        $t3, $t9, 2
/* 48B00 80047F00 00AB2821 */  addu       $a1, $a1, $t3
/* 48B04 80047F04 3C048010 */  lui        $a0, 0x8010
/* 48B08 80047F08 240C0080 */  addiu      $t4, $zero, 0x80
/* 48B0C 80047F0C 240DFFFF */  addiu      $t5, $zero, -1
/* 48B10 80047F10 AFAD0014 */  sw         $t5, 0x14($sp)
/* 48B14 80047F14 AFAC0010 */  sw         $t4, 0x10($sp)
/* 48B18 80047F18 8C84C690 */  lw         $a0, -0x3970($a0)
/* 48B1C 80047F1C 8CA5C698 */  lw         $a1, -0x3968($a1)
/* 48B20 80047F20 24070070 */  addiu      $a3, $zero, 0x70
/* 48B24 80047F24 0C00E409 */  jal        func_80039024
/* 48B28 80047F28 25260001 */   addiu     $a2, $t1, 1
/* 48B2C 80047F2C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 48B30 80047F30 240100FF */  addiu      $at, $zero, 0xff
/* 48B34 80047F34 8FAA0028 */  lw         $t2, 0x28($sp)
/* 48B38 80047F38 11C10003 */  beq        $t6, $at, .L80047F48
/* 48B3C 80047F3C 3C188008 */   lui       $t8, 0x8008
/* 48B40 80047F40 3C018008 */  lui        $at, 0x8008
/* 48B44 80047F44 AC2289F8 */  sw         $v0, -0x7608($at)
.L80047F48:
/* 48B48 80047F48 8FAF0030 */  lw         $t7, 0x30($sp)
/* 48B4C 80047F4C 24010002 */  addiu      $at, $zero, 2
/* 48B50 80047F50 11E00007 */  beqz       $t7, .L80047F70
/* 48B54 80047F54 00000000 */   nop       
/* 48B58 80047F58 11E10005 */  beq        $t7, $at, .L80047F70
/* 48B5C 80047F5C 24010003 */   addiu     $at, $zero, 3
/* 48B60 80047F60 11E10003 */  beq        $t7, $at, .L80047F70
/* 48B64 80047F64 24010004 */   addiu     $at, $zero, 4
/* 48B68 80047F68 55E10005 */  bnel       $t7, $at, .L80047F80
/* 48B6C 80047F6C 8FB90030 */   lw        $t9, 0x30($sp)
.L80047F70:
/* 48B70 80047F70 8F1889F8 */  lw         $t8, -0x7608($t8)
/* 48B74 80047F74 3C018008 */  lui        $at, 0x8008
/* 48B78 80047F78 AC3889F4 */  sw         $t8, -0x760c($at)
/* 48B7C 80047F7C 8FB90030 */  lw         $t9, 0x30($sp)
.L80047F80:
/* 48B80 80047F80 24010002 */  addiu      $at, $zero, 2
/* 48B84 80047F84 53200004 */  beql       $t9, $zero, .L80047F98
/* 48B88 80047F88 25420001 */   addiu     $v0, $t2, 1
/* 48B8C 80047F8C 5721001E */  bnel       $t9, $at, .L80048008
/* 48B90 80047F90 8FBF001C */   lw        $ra, 0x1c($sp)
/* 48B94 80047F94 25420001 */  addiu      $v0, $t2, 1
.L80047F98:
/* 48B98 80047F98 2401002D */  addiu      $at, $zero, 0x2d
/* 48B9C 80047F9C 10410010 */  beq        $v0, $at, .L80047FE0
/* 48BA0 80047FA0 00401825 */   or        $v1, $v0, $zero
/* 48BA4 80047FA4 2401002E */  addiu      $at, $zero, 0x2e
/* 48BA8 80047FA8 1061000D */  beq        $v1, $at, .L80047FE0
/* 48BAC 80047FAC 24010085 */   addiu     $at, $zero, 0x85
/* 48BB0 80047FB0 10610006 */  beq        $v1, $at, .L80047FCC
/* 48BB4 80047FB4 24040028 */   addiu     $a0, $zero, 0x28
/* 48BB8 80047FB8 2401009C */  addiu      $at, $zero, 0x9c
/* 48BBC 80047FBC 50610012 */  beql       $v1, $at, .L80048008
/* 48BC0 80047FC0 8FBF001C */   lw        $ra, 0x1c($sp)
/* 48BC4 80047FC4 10000010 */  b          .L80048008
/* 48BC8 80047FC8 8FBF001C */   lw        $ra, 0x1c($sp)
.L80047FCC:
/* 48BCC 80047FCC 00002825 */  or         $a1, $zero, $zero
/* 48BD0 80047FD0 0C00D9E8 */  jal        func_800367A0
/* 48BD4 80047FD4 00003025 */   or        $a2, $zero, $zero
/* 48BD8 80047FD8 1000000B */  b          .L80048008
/* 48BDC 80047FDC 8FBF001C */   lw        $ra, 0x1c($sp)
.L80047FE0:
/* 48BE0 80047FE0 3C0B8008 */  lui        $t3, 0x8008
/* 48BE4 80047FE4 916B8A20 */  lbu        $t3, -0x75e0($t3)
/* 48BE8 80047FE8 8FA4002C */  lw         $a0, 0x2c($sp)
/* 48BEC 80047FEC 15600003 */  bnez       $t3, .L80047FFC
/* 48BF0 80047FF0 00000000 */   nop       
/* 48BF4 80047FF4 0C013A04 */  jal        func_8004E810
/* 48BF8 80047FF8 00002825 */   or        $a1, $zero, $zero
.L80047FFC:
/* 48BFC 80047FFC 3C018008 */  lui        $at, 0x8008
/* 48C00 80048000 A0208A20 */  sb         $zero, -0x75e0($at)
.L80048004:
/* 48C04 80048004 8FBF001C */  lw         $ra, 0x1c($sp)
.L80048008:
/* 48C08 80048008 27BD0028 */  addiu      $sp, $sp, 0x28
/* 48C0C 8004800C 03E00008 */  jr         $ra
/* 48C10 80048010 00000000 */   nop       

glabel func_80048014
/* 48C14 80048014 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 48C18 80048018 AFBF0014 */  sw         $ra, 0x14($sp)
/* 48C1C 8004801C 3C048008 */  lui        $a0, 0x8008
/* 48C20 80048020 8C8489F8 */  lw         $a0, -0x7608($a0)
/* 48C24 80048024 0C00E4AA */  jal        func_800392A8
/* 48C28 80048028 2405005A */   addiu     $a1, $zero, 0x5a
/* 48C2C 8004802C 3C048008 */  lui        $a0, 0x8008
/* 48C30 80048030 8C8489F4 */  lw         $a0, -0x760c($a0)
/* 48C34 80048034 0C00E4AA */  jal        func_800392A8
/* 48C38 80048038 2405005A */   addiu     $a1, $zero, 0x5a
/* 48C3C 8004803C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 48C40 80048040 3C018008 */  lui        $at, 0x8008
/* 48C44 80048044 AC2089F8 */  sw         $zero, -0x7608($at)
/* 48C48 80048048 3C018008 */  lui        $at, 0x8008
/* 48C4C 8004804C AC2089F4 */  sw         $zero, -0x760c($at)
/* 48C50 80048050 03E00008 */  jr         $ra
/* 48C54 80048054 27BD0018 */   addiu     $sp, $sp, 0x18
/* 48C58 80048058 00000000 */  nop        
/* 48C5C 8004805C 00000000 */  nop        
