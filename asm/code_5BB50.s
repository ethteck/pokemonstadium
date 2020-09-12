.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005AF50
/* 5BB50 8005AF50 3C014780 */  lui       $at, 0x4780
/* 5BB54 8005AF54 44810000 */  mtc1      $at, $f0
/* 5BB58 8005AF58 00A01025 */  or        $v0, $a1, $zero
/* 5BB5C 8005AF5C 24A30020 */  addiu     $v1, $a1, 0x20
/* 5BB60 8005AF60 00003025 */  or        $a2, $zero, $zero
/* 5BB64 8005AF64 00803825 */  or        $a3, $a0, $zero
/* 5BB68 8005AF68 240C0004 */  addiu     $t4, $zero, 4
/* 5BB6C 8005AF6C 240B0002 */  addiu     $t3, $zero, 2
/* 5BB70 8005AF70 3C0AFFFF */  lui       $t2, 0xffff
.L8005AF74:
/* 5BB74 8005AF74 00002025 */  or        $a0, $zero, $zero
/* 5BB78 8005AF78 00E04025 */  or        $t0, $a3, $zero
/* 5BB7C 8005AF7C C50E0004 */  lwc1      $f14, 4($t0)
/* 5BB80 8005AF80 24840001 */  addiu     $a0, $a0, 1
/* 5BB84 8005AF84 C5120000 */  lwc1      $f18, ($t0)
/* 5BB88 8005AF88 46007402 */  mul.s     $f16, $f14, $f0
/* 5BB8C 8005AF8C 108B0019 */  beq       $a0, $t3, .L8005AFF4
/* 5BB90 8005AF90 00000000 */  nop       
.L8005AF94:
/* 5BB94 8005AF94 46009382 */  mul.s     $f14, $f18, $f0
/* 5BB98 8005AF98 24840001 */  addiu     $a0, $a0, 1
/* 5BB9C 8005AF9C 24420004 */  addiu     $v0, $v0, 4
/* 5BBA0 8005AFA0 24630004 */  addiu     $v1, $v1, 4
/* 5BBA4 8005AFA4 25080008 */  addiu     $t0, $t0, 8
/* 5BBA8 8005AFA8 4600830D */  trunc.w.s $f12, $f16
/* 5BBAC 8005AFAC 4600738D */  trunc.w.s $f14, $f14
/* 5BBB0 8005AFB0 44096000 */  mfc1      $t1, $f12
/* 5BBB4 8005AFB4 44057000 */  mfc1      $a1, $f14
/* 5BBB8 8005AFB8 0009CC03 */  sra       $t9, $t1, 0x10
/* 5BBBC 8005AFBC 332DFFFF */  andi      $t5, $t9, 0xffff
/* 5BBC0 8005AFC0 00AAC024 */  and       $t8, $a1, $t2
/* 5BBC4 8005AFC4 030D7025 */  or        $t6, $t8, $t5
/* 5BBC8 8005AFC8 00057C00 */  sll       $t7, $a1, 0x10
/* 5BBCC 8005AFCC 01EAC824 */  and       $t9, $t7, $t2
/* 5BBD0 8005AFD0 AC4EFFFC */  sw        $t6, -4($v0)
/* 5BBD4 8005AFD4 3138FFFF */  andi      $t8, $t1, 0xffff
/* 5BBD8 8005AFD8 03386825 */  or        $t5, $t9, $t8
/* 5BBDC 8005AFDC AC6DFFFC */  sw        $t5, -4($v1)
/* 5BBE0 8005AFE0 C50E0004 */  lwc1      $f14, 4($t0)
/* 5BBE4 8005AFE4 C5120000 */  lwc1      $f18, ($t0)
/* 5BBE8 8005AFE8 46007402 */  mul.s     $f16, $f14, $f0
/* 5BBEC 8005AFEC 148BFFE9 */  bne       $a0, $t3, .L8005AF94
/* 5BBF0 8005AFF0 00000000 */  nop       
.L8005AFF4:
/* 5BBF4 8005AFF4 46009382 */  mul.s     $f14, $f18, $f0
/* 5BBF8 8005AFF8 25080008 */  addiu     $t0, $t0, 8
/* 5BBFC 8005AFFC 24420004 */  addiu     $v0, $v0, 4
/* 5BC00 8005B000 24630004 */  addiu     $v1, $v1, 4
/* 5BC04 8005B004 4600830D */  trunc.w.s $f12, $f16
/* 5BC08 8005B008 4600738D */  trunc.w.s $f14, $f14
/* 5BC0C 8005B00C 44096000 */  mfc1      $t1, $f12
/* 5BC10 8005B010 44057000 */  mfc1      $a1, $f14
/* 5BC14 8005B014 0009CC03 */  sra       $t9, $t1, 0x10
/* 5BC18 8005B018 332DFFFF */  andi      $t5, $t9, 0xffff
/* 5BC1C 8005B01C 00AAC024 */  and       $t8, $a1, $t2
/* 5BC20 8005B020 030D7025 */  or        $t6, $t8, $t5
/* 5BC24 8005B024 00057C00 */  sll       $t7, $a1, 0x10
/* 5BC28 8005B028 01EAC824 */  and       $t9, $t7, $t2
/* 5BC2C 8005B02C 3138FFFF */  andi      $t8, $t1, 0xffff
/* 5BC30 8005B030 AC4EFFFC */  sw        $t6, -4($v0)
/* 5BC34 8005B034 03386825 */  or        $t5, $t9, $t8
/* 5BC38 8005B038 AC6DFFFC */  sw        $t5, -4($v1)
/* 5BC3C 8005B03C 24C60001 */  addiu     $a2, $a2, 1
/* 5BC40 8005B040 14CCFFCC */  bne       $a2, $t4, .L8005AF74
/* 5BC44 8005B044 24E70010 */  addiu     $a3, $a3, 0x10
/* 5BC48 8005B048 03E00008 */  jr        $ra
/* 5BC4C 8005B04C 00000000 */  nop       

glabel func_8005B050
/* 5BC50 8005B050 3C013F80 */  lui       $at, 0x3f80
/* 5BC54 8005B054 00801825 */  or        $v1, $a0, $zero
/* 5BC58 8005B058 44810000 */  mtc1      $at, $f0
/* 5BC5C 8005B05C 44801000 */  mtc1      $zero, $f2
/* 5BC60 8005B060 24040001 */  addiu     $a0, $zero, 1
/* 5BC64 8005B064 00001025 */  or        $v0, $zero, $zero
/* 5BC68 8005B068 24070004 */  addiu     $a3, $zero, 4
/* 5BC6C 8005B06C 24060003 */  addiu     $a2, $zero, 3
/* 5BC70 8005B070 24050002 */  addiu     $a1, $zero, 2
.L8005B074:
/* 5BC74 8005B074 54400004 */  bnel      $v0, $zero, .L8005B088
/* 5BC78 8005B078 E4620000 */  swc1      $f2, ($v1)
/* 5BC7C 8005B07C 10000002 */  b         .L8005B088
/* 5BC80 8005B080 E4600000 */  swc1      $f0, ($v1)
/* 5BC84 8005B084 E4620000 */  swc1      $f2, ($v1)
.L8005B088:
/* 5BC88 8005B088 54440004 */  bnel      $v0, $a0, .L8005B09C
/* 5BC8C 8005B08C E4620004 */  swc1      $f2, 4($v1)
/* 5BC90 8005B090 10000002 */  b         .L8005B09C
/* 5BC94 8005B094 E4600004 */  swc1      $f0, 4($v1)
/* 5BC98 8005B098 E4620004 */  swc1      $f2, 4($v1)
.L8005B09C:
/* 5BC9C 8005B09C 54450004 */  bnel      $v0, $a1, .L8005B0B0
/* 5BCA0 8005B0A0 E4620008 */  swc1      $f2, 8($v1)
/* 5BCA4 8005B0A4 10000002 */  b         .L8005B0B0
/* 5BCA8 8005B0A8 E4600008 */  swc1      $f0, 8($v1)
/* 5BCAC 8005B0AC E4620008 */  swc1      $f2, 8($v1)
.L8005B0B0:
/* 5BCB0 8005B0B0 54460004 */  bnel      $v0, $a2, .L8005B0C4
/* 5BCB4 8005B0B4 E462000C */  swc1      $f2, 0xc($v1)
/* 5BCB8 8005B0B8 10000002 */  b         .L8005B0C4
/* 5BCBC 8005B0BC E460000C */  swc1      $f0, 0xc($v1)
/* 5BCC0 8005B0C0 E462000C */  swc1      $f2, 0xc($v1)
.L8005B0C4:
/* 5BCC4 8005B0C4 24420001 */  addiu     $v0, $v0, 1
/* 5BCC8 8005B0C8 1447FFEA */  bne       $v0, $a3, .L8005B074
/* 5BCCC 8005B0CC 24630010 */  addiu     $v1, $v1, 0x10
/* 5BCD0 8005B0D0 03E00008 */  jr        $ra
/* 5BCD4 8005B0D4 00000000 */  nop       

glabel func_8005B0D8
/* 5BCD8 8005B0D8 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* 5BCDC 8005B0DC AFBF0014 */  sw        $ra, 0x14($sp)
/* 5BCE0 8005B0E0 AFA40058 */  sw        $a0, 0x58($sp)
/* 5BCE4 8005B0E4 0C016C14 */  jal       func_8005B050
/* 5BCE8 8005B0E8 27A40018 */  addiu     $a0, $sp, 0x18
/* 5BCEC 8005B0EC 27A40018 */  addiu     $a0, $sp, 0x18
/* 5BCF0 8005B0F0 0C016BD4 */  jal       func_8005AF50
/* 5BCF4 8005B0F4 8FA50058 */  lw        $a1, 0x58($sp)
/* 5BCF8 8005B0F8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 5BCFC 8005B0FC 27BD0058 */  addiu     $sp, $sp, 0x58
/* 5BD00 8005B100 03E00008 */  jr        $ra
/* 5BD04 8005B104 00000000 */  nop       

glabel func_8005B108
/* 5BD08 8005B108 3C013780 */  lui       $at, 0x3780
/* 5BD0C 8005B10C 44810000 */  mtc1      $at, $f0
/* 5BD10 8005B110 27BDFFF0 */  addiu     $sp, $sp, -0x10
/* 5BD14 8005B114 00A01025 */  or        $v0, $a1, $zero
/* 5BD18 8005B118 24A30020 */  addiu     $v1, $a1, 0x20
/* 5BD1C 8005B11C 00003025 */  or        $a2, $zero, $zero
/* 5BD20 8005B120 00804025 */  or        $t0, $a0, $zero
/* 5BD24 8005B124 240C0004 */  addiu     $t4, $zero, 4
/* 5BD28 8005B128 240B0002 */  addiu     $t3, $zero, 2
/* 5BD2C 8005B12C 3C0AFFFF */  lui       $t2, 0xffff
.L8005B130:
/* 5BD30 8005B130 00002025 */  or        $a0, $zero, $zero
/* 5BD34 8005B134 01004825 */  or        $t1, $t0, $zero
.L8005B138:
/* 5BD38 8005B138 8C6E0000 */  lw        $t6, ($v1)
/* 5BD3C 8005B13C 8C590000 */  lw        $t9, ($v0)
/* 5BD40 8005B140 24840001 */  addiu     $a0, $a0, 1
/* 5BD44 8005B144 000E7C02 */  srl       $t7, $t6, 0x10
/* 5BD48 8005B148 31F8FFFF */  andi      $t8, $t7, 0xffff
/* 5BD4C 8005B14C 032A6824 */  and       $t5, $t9, $t2
/* 5BD50 8005B150 030D7025 */  or        $t6, $t8, $t5
/* 5BD54 8005B154 AFAE0004 */  sw        $t6, 4($sp)
/* 5BD58 8005B158 8C580000 */  lw        $t8, ($v0)
/* 5BD5C 8005B15C 8FA50004 */  lw        $a1, 4($sp)
/* 5BD60 8005B160 8C6F0000 */  lw        $t7, ($v1)
/* 5BD64 8005B164 00186C00 */  sll       $t5, $t8, 0x10
/* 5BD68 8005B168 44852000 */  mtc1      $a1, $f4
/* 5BD6C 8005B16C 01AA7024 */  and       $t6, $t5, $t2
/* 5BD70 8005B170 31F9FFFF */  andi      $t9, $t7, 0xffff
/* 5BD74 8005B174 032E3825 */  or        $a3, $t9, $t6
/* 5BD78 8005B178 468021A0 */  cvt.s.w   $f6, $f4
/* 5BD7C 8005B17C 44875000 */  mtc1      $a3, $f10
/* 5BD80 8005B180 AFA70000 */  sw        $a3, ($sp)
/* 5BD84 8005B184 25290008 */  addiu     $t1, $t1, 8
/* 5BD88 8005B188 24420004 */  addiu     $v0, $v0, 4
/* 5BD8C 8005B18C 46805420 */  cvt.s.w   $f16, $f10
/* 5BD90 8005B190 46003202 */  mul.s     $f8, $f6, $f0
/* 5BD94 8005B194 24630004 */  addiu     $v1, $v1, 4
/* 5BD98 8005B198 46008482 */  mul.s     $f18, $f16, $f0
/* 5BD9C 8005B19C E528FFF8 */  swc1      $f8, -8($t1)
/* 5BDA0 8005B1A0 148BFFE5 */  bne       $a0, $t3, .L8005B138
/* 5BDA4 8005B1A4 E532FFFC */  swc1      $f18, -4($t1)
/* 5BDA8 8005B1A8 24C60001 */  addiu     $a2, $a2, 1
/* 5BDAC 8005B1AC 14CCFFE0 */  bne       $a2, $t4, .L8005B130
/* 5BDB0 8005B1B0 25080010 */  addiu     $t0, $t0, 0x10
/* 5BDB4 8005B1B4 03E00008 */  jr        $ra
/* 5BDB8 8005B1B8 27BD0010 */  addiu     $sp, $sp, 0x10
/* 5BDBC 8005B1BC 00000000 */  nop       

glabel func_8005B1C0
/* 5BDC0 8005B1C0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 5BDC4 8005B1C4 AFBF001C */  sw        $ra, 0x1c($sp)
/* 5BDC8 8005B1C8 AFA40028 */  sw        $a0, 0x28($sp)
/* 5BDCC 8005B1CC 0C018AA4 */  jal       func_80062A90
/* 5BDD0 8005B1D0 AFB00018 */  sw        $s0, 0x18($sp)
/* 5BDD4 8005B1D4 3C0F8008 */  lui       $t7, 0x8008
/* 5BDD8 8005B1D8 8DEFACF4 */  lw        $t7, -0x530c($t7)
/* 5BDDC 8005B1DC 8FAE0028 */  lw        $t6, 0x28($sp)
/* 5BDE0 8005B1E0 3C198008 */  lui       $t9, 0x8008
/* 5BDE4 8005B1E4 24180001 */  addiu     $t8, $zero, 1
/* 5BDE8 8005B1E8 ADEE0008 */  sw        $t6, 8($t7)
/* 5BDEC 8005B1EC 8F39ACF4 */  lw        $t9, -0x530c($t9)
/* 5BDF0 8005B1F0 3C088008 */  lui       $t0, 0x8008
/* 5BDF4 8005B1F4 00408025 */  or        $s0, $v0, $zero
/* 5BDF8 8005B1F8 A7380000 */  sh        $t8, ($t9)
/* 5BDFC 8005B1FC 8D08ACF4 */  lw        $t0, -0x530c($t0)
/* 5BE00 8005B200 02002025 */  or        $a0, $s0, $zero
/* 5BE04 8005B204 8D090008 */  lw        $t1, 8($t0)
/* 5BE08 8005B208 8D2A0004 */  lw        $t2, 4($t1)
/* 5BE0C 8005B20C 0C018AC0 */  jal       func_80062B00
/* 5BE10 8005B210 AD0A000C */  sw        $t2, 0xc($t0)
/* 5BE14 8005B214 8FBF001C */  lw        $ra, 0x1c($sp)
/* 5BE18 8005B218 8FB00018 */  lw        $s0, 0x18($sp)
/* 5BE1C 8005B21C 27BD0028 */  addiu     $sp, $sp, 0x28
/* 5BE20 8005B220 03E00008 */  jr        $ra
/* 5BE24 8005B224 00000000 */  nop       
/* 5BE28 8005B228 00000000 */  nop       
/* 5BE2C 8005B22C 00000000 */  nop       
