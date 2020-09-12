.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005BD10
/* 5C910 8005BD10 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 5C914 8005BD14 AFBF0014 */  sw        $ra, 0x14($sp)
/* 5C918 8005BD18 0C0162FC */  jal       func_80058BF0
/* 5C91C 8005BD1C AFA40030 */  sw        $a0, 0x30($sp)
/* 5C920 8005BD20 8FA40030 */  lw        $a0, 0x30($sp)
/* 5C924 8005BD24 0C016FE9 */  jal       func_8005BFA4
/* 5C928 8005BD28 27A50024 */  addiu     $a1, $sp, 0x24
/* 5C92C 8005BD2C 10400003 */  beqz      $v0, .L8005BD3C
/* 5C930 8005BD30 97AE0024 */  lhu       $t6, 0x24($sp)
/* 5C934 8005BD34 1000000B */  b         .L8005BD64
/* 5C938 8005BD38 00001825 */  or        $v1, $zero, $zero
.L8005BD3C:
/* 5C93C 8005BD3C 31CFC000 */  andi      $t7, $t6, 0xc000
/* 5C940 8005BD40 34018000 */  ori       $at, $zero, 0x8000
/* 5C944 8005BD44 11E10005 */  beq       $t7, $at, .L8005BD5C
/* 5C948 8005BD48 3401C000 */  ori       $at, $zero, 0xc000
/* 5C94C 8005BD4C 11E10005 */  beq       $t7, $at, .L8005BD64
/* 5C950 8005BD50 24030002 */  addiu     $v1, $zero, 2
/* 5C954 8005BD54 10000003 */  b         .L8005BD64
/* 5C958 8005BD58 00001825 */  or        $v1, $zero, $zero
.L8005BD5C:
/* 5C95C 8005BD5C 10000001 */  b         .L8005BD64
/* 5C960 8005BD60 24030001 */  addiu     $v1, $zero, 1
.L8005BD64:
/* 5C964 8005BD64 0C01630D */  jal       func_80058C34
/* 5C968 8005BD68 AFA3002C */  sw        $v1, 0x2c($sp)
/* 5C96C 8005BD6C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 5C970 8005BD70 8FA2002C */  lw        $v0, 0x2c($sp)
/* 5C974 8005BD74 27BD0030 */  addiu     $sp, $sp, 0x30
/* 5C978 8005BD78 03E00008 */  jr        $ra
/* 5C97C 8005BD7C 00000000 */  nop       

glabel func_8005BD80
/* 5C980 8005BD80 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 5C984 8005BD84 AFBF001C */  sw        $ra, 0x1c($sp)
/* 5C988 8005BD88 AFB10018 */  sw        $s1, 0x18($sp)
/* 5C98C 8005BD8C 00808825 */  or        $s1, $a0, $zero
/* 5C990 8005BD90 AFB00014 */  sw        $s0, 0x14($sp)
/* 5C994 8005BD94 AFA5004C */  sw        $a1, 0x4c($sp)
/* 5C998 8005BD98 0C0162FC */  jal       func_80058BF0
/* 5C99C 8005BD9C AFA60050 */  sw        $a2, 0x50($sp)
/* 5C9A0 8005BDA0 27B0002C */  addiu     $s0, $sp, 0x2c
/* 5C9A4 8005BDA4 02002825 */  or        $a1, $s0, $zero
/* 5C9A8 8005BDA8 0C016FE9 */  jal       func_8005BFA4
/* 5C9AC 8005BDAC 02202025 */  or        $a0, $s1, $zero
/* 5C9B0 8005BDB0 14400015 */  bnez      $v0, .L8005BE08
/* 5C9B4 8005BDB4 00401825 */  or        $v1, $v0, $zero
/* 5C9B8 8005BDB8 97AE002C */  lhu       $t6, 0x2c($sp)
/* 5C9BC 8005BDBC 34018000 */  ori       $at, $zero, 0x8000
/* 5C9C0 8005BDC0 93B8004F */  lbu       $t8, 0x4f($sp)
/* 5C9C4 8005BDC4 31CFC000 */  andi      $t7, $t6, 0xc000
/* 5C9C8 8005BDC8 11E10005 */  beq       $t7, $at, .L8005BDE0
/* 5C9CC 8005BDCC 3401C000 */  ori       $at, $zero, 0xc000
/* 5C9D0 8005BDD0 11E10008 */  beq       $t7, $at, .L8005BDF4
/* 5C9D4 8005BDD4 93B9004F */  lbu       $t9, 0x4f($sp)
/* 5C9D8 8005BDD8 1000000B */  b         .L8005BE08
/* 5C9DC 8005BDDC 24030008 */  addiu     $v1, $zero, 8
.L8005BDE0:
/* 5C9E0 8005BDE0 2B010040 */  slti      $at, $t8, 0x40
/* 5C9E4 8005BDE4 14200008 */  bnez      $at, .L8005BE08
/* 5C9E8 8005BDE8 00000000 */  nop       
/* 5C9EC 8005BDEC 10000006 */  b         .L8005BE08
/* 5C9F0 8005BDF0 2403FFFF */  addiu     $v1, $zero, -1
.L8005BDF4:
/* 5C9F4 8005BDF4 2B210100 */  slti      $at, $t9, 0x100
/* 5C9F8 8005BDF8 14200003 */  bnez      $at, .L8005BE08
/* 5C9FC 8005BDFC 00000000 */  nop       
/* 5CA00 8005BE00 10000001 */  b         .L8005BE08
/* 5CA04 8005BE04 2403FFFF */  addiu     $v1, $zero, -1
.L8005BE08:
/* 5CA08 8005BE08 10600005 */  beqz      $v1, .L8005BE20
/* 5CA0C 8005BE0C 93A8002E */  lbu       $t0, 0x2e($sp)
/* 5CA10 8005BE10 0C01630D */  jal       func_80058C34
/* 5CA14 8005BE14 AFA30044 */  sw        $v1, 0x44($sp)
/* 5CA18 8005BE18 10000032 */  b         .L8005BEE4
/* 5CA1C 8005BE1C 8FA20044 */  lw        $v0, 0x44($sp)
.L8005BE20:
/* 5CA20 8005BE20 31090080 */  andi      $t1, $t0, 0x80
/* 5CA24 8005BE24 11200007 */  beqz      $t1, .L8005BE44
/* 5CA28 8005BE28 02202025 */  or        $a0, $s1, $zero
.L8005BE2C:
/* 5CA2C 8005BE2C 0C016FE9 */  jal       func_8005BFA4
/* 5CA30 8005BE30 02002825 */  or        $a1, $s0, $zero
/* 5CA34 8005BE34 93AA002E */  lbu       $t2, 0x2e($sp)
/* 5CA38 8005BE38 314B0080 */  andi      $t3, $t2, 0x80
/* 5CA3C 8005BE3C 5560FFFB */  bnel      $t3, $zero, .L8005BE2C
/* 5CA40 8005BE40 02202025 */  or        $a0, $s1, $zero
.L8005BE44:
/* 5CA44 8005BE44 93A4004F */  lbu       $a0, 0x4f($sp)
/* 5CA48 8005BE48 0C016FBE */  jal       func_8005BEF8
/* 5CA4C 8005BE4C 8FA50050 */  lw        $a1, 0x50($sp)
/* 5CA50 8005BE50 3C058010 */  lui       $a1, 0x8010
/* 5CA54 8005BE54 24A54B70 */  addiu     $a1, $a1, 0x4b70
/* 5CA58 8005BE58 0C016A38 */  jal       func_8005A8E0
/* 5CA5C 8005BE5C 24040001 */  addiu     $a0, $zero, 1
/* 5CA60 8005BE60 02202025 */  or        $a0, $s1, $zero
/* 5CA64 8005BE64 00002825 */  or        $a1, $zero, $zero
/* 5CA68 8005BE68 0C015AB4 */  jal       func_80056AD0
/* 5CA6C 8005BE6C 24060001 */  addiu     $a2, $zero, 1
/* 5CA70 8005BE70 3C058010 */  lui       $a1, 0x8010
/* 5CA74 8005BE74 24A54B70 */  addiu     $a1, $a1, 0x4b70
/* 5CA78 8005BE78 0C016A38 */  jal       func_8005A8E0
/* 5CA7C 8005BE7C 00002025 */  or        $a0, $zero, $zero
/* 5CA80 8005BE80 240C0005 */  addiu     $t4, $zero, 5
/* 5CA84 8005BE84 3C018010 */  lui       $at, 0x8010
/* 5CA88 8005BE88 A02C2180 */  sb        $t4, 0x2180($at)
/* 5CA8C 8005BE8C 02202025 */  or        $a0, $s1, $zero
/* 5CA90 8005BE90 00002825 */  or        $a1, $zero, $zero
/* 5CA94 8005BE94 0C015AB4 */  jal       func_80056AD0
/* 5CA98 8005BE98 24060001 */  addiu     $a2, $zero, 1
/* 5CA9C 8005BE9C 3C078010 */  lui       $a3, 0x8010
/* 5CAA0 8005BEA0 24E74B74 */  addiu     $a3, $a3, 0x4b74
/* 5CAA4 8005BEA4 88E10000 */  lwl       $at, ($a3)
/* 5CAA8 8005BEA8 98E10003 */  lwr       $at, 3($a3)
/* 5CAAC 8005BEAC 27AD0030 */  addiu     $t5, $sp, 0x30
/* 5CAB0 8005BEB0 ADA10000 */  sw        $at, ($t5)
/* 5CAB4 8005BEB4 88F80004 */  lwl       $t8, 4($a3)
/* 5CAB8 8005BEB8 98F80007 */  lwr       $t8, 7($a3)
/* 5CABC 8005BEBC ADB80004 */  sw        $t8, 4($t5)
/* 5CAC0 8005BEC0 88E10008 */  lwl       $at, 8($a3)
/* 5CAC4 8005BEC4 98E1000B */  lwr       $at, 0xb($a3)
/* 5CAC8 8005BEC8 ADA10008 */  sw        $at, 8($t5)
/* 5CACC 8005BECC 93A30031 */  lbu       $v1, 0x31($sp)
/* 5CAD0 8005BED0 307900C0 */  andi      $t9, $v1, 0xc0
/* 5CAD4 8005BED4 00194103 */  sra       $t0, $t9, 4
/* 5CAD8 8005BED8 0C01630D */  jal       func_80058C34
/* 5CADC 8005BEDC AFA80044 */  sw        $t0, 0x44($sp)
/* 5CAE0 8005BEE0 8FA20044 */  lw        $v0, 0x44($sp)
.L8005BEE4:
/* 5CAE4 8005BEE4 8FBF001C */  lw        $ra, 0x1c($sp)
/* 5CAE8 8005BEE8 8FB00014 */  lw        $s0, 0x14($sp)
/* 5CAEC 8005BEEC 8FB10018 */  lw        $s1, 0x18($sp)
/* 5CAF0 8005BEF0 03E00008 */  jr        $ra
/* 5CAF4 8005BEF4 27BD0048 */  addiu     $sp, $sp, 0x48

glabel func_8005BEF8
/* 5CAF8 8005BEF8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 5CAFC 8005BEFC 3C078010 */  lui       $a3, 0x8010
/* 5CB00 8005BF00 24E74B70 */  addiu     $a3, $a3, 0x4b70
/* 5CB04 8005BF04 240F0001 */  addiu     $t7, $zero, 1
/* 5CB08 8005BF08 2418000A */  addiu     $t8, $zero, 0xa
/* 5CB0C 8005BF0C 24190001 */  addiu     $t9, $zero, 1
/* 5CB10 8005BF10 24080005 */  addiu     $t0, $zero, 5
/* 5CB14 8005BF14 AFA40018 */  sw        $a0, 0x18($sp)
/* 5CB18 8005BF18 ACEF003C */  sw        $t7, 0x3c($a3)
/* 5CB1C 8005BF1C A3B80008 */  sb        $t8, 8($sp)
/* 5CB20 8005BF20 A3B90009 */  sb        $t9, 9($sp)
/* 5CB24 8005BF24 A3A8000A */  sb        $t0, 0xa($sp)
/* 5CB28 8005BF28 A3A4000B */  sb        $a0, 0xb($sp)
/* 5CB2C 8005BF2C 27A60008 */  addiu     $a2, $sp, 8
/* 5CB30 8005BF30 27A20010 */  addiu     $v0, $sp, 0x10
.L8005BF34:
/* 5CB34 8005BF34 90A90000 */  lbu       $t1, ($a1)
/* 5CB38 8005BF38 24C60001 */  addiu     $a2, $a2, 1
/* 5CB3C 8005BF3C 00C2082B */  sltu      $at, $a2, $v0
/* 5CB40 8005BF40 24A50001 */  addiu     $a1, $a1, 1
/* 5CB44 8005BF44 1420FFFB */  bnez      $at, .L8005BF34
/* 5CB48 8005BF48 A0C90003 */  sb        $t1, 3($a2)
/* 5CB4C 8005BF4C 3C018010 */  lui       $at, 0x8010
/* 5CB50 8005BF50 3C028010 */  lui       $v0, 0x8010
/* 5CB54 8005BF54 24424B71 */  addiu     $v0, $v0, 0x4b71
/* 5CB58 8005BF58 A0204B70 */  sb        $zero, 0x4b70($at)
/* 5CB5C 8005BF5C A0400002 */  sb        $zero, 2($v0)
/* 5CB60 8005BF60 A0400001 */  sb        $zero, 1($v0)
/* 5CB64 8005BF64 A0400000 */  sb        $zero, ($v0)
/* 5CB68 8005BF68 27AA0008 */  addiu     $t2, $sp, 8
/* 5CB6C 8005BF6C 8D410000 */  lw        $at, ($t2)
/* 5CB70 8005BF70 240D00FE */  addiu     $t5, $zero, 0xfe
/* 5CB74 8005BF74 2442000F */  addiu     $v0, $v0, 0xf
/* 5CB78 8005BF78 A841FFF4 */  swl       $at, -0xc($v0)
/* 5CB7C 8005BF7C B841FFF7 */  swr       $at, -9($v0)
/* 5CB80 8005BF80 8D4C0004 */  lw        $t4, 4($t2)
/* 5CB84 8005BF84 A84CFFF8 */  swl       $t4, -8($v0)
/* 5CB88 8005BF88 B84CFFFB */  swr       $t4, -5($v0)
/* 5CB8C 8005BF8C 8D410008 */  lw        $at, 8($t2)
/* 5CB90 8005BF90 A04D0000 */  sb        $t5, ($v0)
/* 5CB94 8005BF94 27BD0018 */  addiu     $sp, $sp, 0x18
/* 5CB98 8005BF98 A841FFFC */  swl       $at, -4($v0)
/* 5CB9C 8005BF9C 03E00008 */  jr        $ra
/* 5CBA0 8005BFA0 B841FFFF */  swr       $at, -1($v0)

glabel func_8005BFA4
/* 5CBA4 8005BFA4 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 5CBA8 8005BFA8 3C028010 */  lui       $v0, 0x8010
/* 5CBAC 8005BFAC 3C038010 */  lui       $v1, 0x8010
/* 5CBB0 8005BFB0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 5CBB4 8005BFB4 AFA40030 */  sw        $a0, 0x30($sp)
/* 5CBB8 8005BFB8 AFA50034 */  sw        $a1, 0x34($sp)
/* 5CBBC 8005BFBC 24634BB0 */  addiu     $v1, $v1, 0x4bb0
/* 5CBC0 8005BFC0 24424B70 */  addiu     $v0, $v0, 0x4b70
.L8005BFC4:
/* 5CBC4 8005BFC4 24420004 */  addiu     $v0, $v0, 4
/* 5CBC8 8005BFC8 0043082B */  sltu      $at, $v0, $v1
/* 5CBCC 8005BFCC 1420FFFD */  bnez      $at, .L8005BFC4
/* 5CBD0 8005BFD0 AC40FFFC */  sw        $zero, -4($v0)
/* 5CBD4 8005BFD4 3C058010 */  lui       $a1, 0x8010
/* 5CBD8 8005BFD8 24A54B70 */  addiu     $a1, $a1, 0x4b70
/* 5CBDC 8005BFDC 240E0001 */  addiu     $t6, $zero, 1
/* 5CBE0 8005BFE0 ACAE003C */  sw        $t6, 0x3c($a1)
/* 5CBE4 8005BFE4 00A01025 */  or        $v0, $a1, $zero
/* 5CBE8 8005BFE8 00001825 */  or        $v1, $zero, $zero
.L8005BFEC:
/* 5CBEC 8005BFEC 24630001 */  addiu     $v1, $v1, 1
/* 5CBF0 8005BFF0 28610004 */  slti      $at, $v1, 4
/* 5CBF4 8005BFF4 A0400000 */  sb        $zero, ($v0)
/* 5CBF8 8005BFF8 1420FFFC */  bnez      $at, .L8005BFEC
/* 5CBFC 8005BFFC 24420001 */  addiu     $v0, $v0, 1
/* 5CC00 8005C000 240F00FF */  addiu     $t7, $zero, 0xff
/* 5CC04 8005C004 24180001 */  addiu     $t8, $zero, 1
/* 5CC08 8005C008 24190003 */  addiu     $t9, $zero, 3
/* 5CC0C 8005C00C 240800FF */  addiu     $t0, $zero, 0xff
/* 5CC10 8005C010 240900FF */  addiu     $t1, $zero, 0xff
/* 5CC14 8005C014 240A00FF */  addiu     $t2, $zero, 0xff
/* 5CC18 8005C018 240B00FF */  addiu     $t3, $zero, 0xff
/* 5CC1C 8005C01C A3AF001C */  sb        $t7, 0x1c($sp)
/* 5CC20 8005C020 A3B8001D */  sb        $t8, 0x1d($sp)
/* 5CC24 8005C024 A3B9001E */  sb        $t9, 0x1e($sp)
/* 5CC28 8005C028 A3A0001F */  sb        $zero, 0x1f($sp)
/* 5CC2C 8005C02C A3A80020 */  sb        $t0, 0x20($sp)
/* 5CC30 8005C030 A3A90021 */  sb        $t1, 0x21($sp)
/* 5CC34 8005C034 A3AA0022 */  sb        $t2, 0x22($sp)
/* 5CC38 8005C038 A3AB0023 */  sb        $t3, 0x23($sp)
/* 5CC3C 8005C03C 27AC001C */  addiu     $t4, $sp, 0x1c
/* 5CC40 8005C040 8D810000 */  lw        $at, ($t4)
/* 5CC44 8005C044 241800FE */  addiu     $t8, $zero, 0xfe
/* 5CC48 8005C048 24420008 */  addiu     $v0, $v0, 8
/* 5CC4C 8005C04C A841FFF8 */  swl       $at, -8($v0)
/* 5CC50 8005C050 B841FFFB */  swr       $at, -5($v0)
/* 5CC54 8005C054 8D8F0004 */  lw        $t7, 4($t4)
/* 5CC58 8005C058 A0580000 */  sb        $t8, ($v0)
/* 5CC5C 8005C05C 24040001 */  addiu     $a0, $zero, 1
/* 5CC60 8005C060 A84FFFFC */  swl       $t7, -4($v0)
/* 5CC64 8005C064 0C016A38 */  jal       func_8005A8E0
/* 5CC68 8005C068 B84FFFFF */  swr       $t7, -1($v0)
/* 5CC6C 8005C06C 8FA40030 */  lw        $a0, 0x30($sp)
/* 5CC70 8005C070 00002825 */  or        $a1, $zero, $zero
/* 5CC74 8005C074 0C015AB4 */  jal       func_80056AD0
/* 5CC78 8005C078 24060001 */  addiu     $a2, $zero, 1
/* 5CC7C 8005C07C 241900FE */  addiu     $t9, $zero, 0xfe
/* 5CC80 8005C080 3C018010 */  lui       $at, 0x8010
/* 5CC84 8005C084 3C058010 */  lui       $a1, 0x8010
/* 5CC88 8005C088 A0392180 */  sb        $t9, 0x2180($at)
/* 5CC8C 8005C08C 24A54B70 */  addiu     $a1, $a1, 0x4b70
/* 5CC90 8005C090 0C016A38 */  jal       func_8005A8E0
/* 5CC94 8005C094 00002025 */  or        $a0, $zero, $zero
/* 5CC98 8005C098 8FA40030 */  lw        $a0, 0x30($sp)
/* 5CC9C 8005C09C 00002825 */  or        $a1, $zero, $zero
/* 5CCA0 8005C0A0 24060001 */  addiu     $a2, $zero, 1
/* 5CCA4 8005C0A4 0C015AB4 */  jal       func_80056AD0
/* 5CCA8 8005C0A8 AFA2002C */  sw        $v0, 0x2c($sp)
/* 5CCAC 8005C0AC 8FA3002C */  lw        $v1, 0x2c($sp)
/* 5CCB0 8005C0B0 3C028010 */  lui       $v0, 0x8010
/* 5CCB4 8005C0B4 24424B71 */  addiu     $v0, $v0, 0x4b71
/* 5CCB8 8005C0B8 10600003 */  beqz      $v1, .L8005C0C8
/* 5CCBC 8005C0BC 3C018010 */  lui       $at, 0x8010
/* 5CCC0 8005C0C0 1000001E */  b         .L8005C13C
/* 5CCC4 8005C0C4 00601025 */  or        $v0, $v1, $zero
.L8005C0C8:
/* 5CCC8 8005C0C8 A0204B70 */  sb        $zero, 0x4b70($at)
/* 5CCCC 8005C0CC 88410003 */  lwl       $at, 3($v0)
/* 5CCD0 8005C0D0 98410006 */  lwr       $at, 6($v0)
/* 5CCD4 8005C0D4 A0400002 */  sb        $zero, 2($v0)
/* 5CCD8 8005C0D8 A0400001 */  sb        $zero, 1($v0)
/* 5CCDC 8005C0DC A0400000 */  sb        $zero, ($v0)
/* 5CCE0 8005C0E0 8FA40034 */  lw        $a0, 0x34($sp)
/* 5CCE4 8005C0E4 27A8001C */  addiu     $t0, $sp, 0x1c
/* 5CCE8 8005C0E8 AD010000 */  sw        $at, ($t0)
/* 5CCEC 8005C0EC 884A0007 */  lwl       $t2, 7($v0)
/* 5CCF0 8005C0F0 984A000A */  lwr       $t2, 0xa($v0)
/* 5CCF4 8005C0F4 24420003 */  addiu     $v0, $v0, 3
/* 5CCF8 8005C0F8 00001025 */  or        $v0, $zero, $zero
/* 5CCFC 8005C0FC AD0A0004 */  sw        $t2, 4($t0)
/* 5CD00 8005C100 93AB001E */  lbu       $t3, 0x1e($sp)
/* 5CD04 8005C104 316E00C0 */  andi      $t6, $t3, 0xc0
/* 5CD08 8005C108 000E6903 */  sra       $t5, $t6, 4
/* 5CD0C 8005C10C A08D0003 */  sb        $t5, 3($a0)
/* 5CD10 8005C110 93AC0021 */  lbu       $t4, 0x21($sp)
/* 5CD14 8005C114 93B80020 */  lbu       $t8, 0x20($sp)
/* 5CD18 8005C118 31A300FF */  andi      $v1, $t5, 0xff
/* 5CD1C 8005C11C 000C7A00 */  sll       $t7, $t4, 8
/* 5CD20 8005C120 01F8C825 */  or        $t9, $t7, $t8
/* 5CD24 8005C124 A4990000 */  sh        $t9, ($a0)
/* 5CD28 8005C128 93A90022 */  lbu       $t1, 0x22($sp)
/* 5CD2C 8005C12C 10600003 */  beqz      $v1, .L8005C13C
/* 5CD30 8005C130 A0890002 */  sb        $t1, 2($a0)
/* 5CD34 8005C134 10000001 */  b         .L8005C13C
/* 5CD38 8005C138 00601025 */  or        $v0, $v1, $zero
.L8005C13C:
/* 5CD3C 8005C13C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 5CD40 8005C140 27BD0030 */  addiu     $sp, $sp, 0x30
/* 5CD44 8005C144 03E00008 */  jr        $ra
/* 5CD48 8005C148 00000000 */  nop       
/* 5CD4C 8005C14C 00000000 */  nop       
