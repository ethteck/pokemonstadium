.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004AE90
/* 4BA90 8004AE90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4BA94 8004AE94 2CA10006 */  sltiu      $at, $a1, 6
/* 4BA98 8004AE98 10200013 */  beqz       $at, .L8004AEE8
/* 4BA9C 8004AE9C AFBF0014 */   sw        $ra, 0x14($sp)
/* 4BAA0 8004AEA0 00057080 */  sll        $t6, $a1, 2
/* 4BAA4 8004AEA4 3C018008 */  lui        $at, 0x8008
/* 4BAA8 8004AEA8 002E0821 */  addu       $at, $at, $t6
/* 4BAAC 8004AEAC 8C2ED4E0 */  lw         $t6, -0x2b20($at)
/* 4BAB0 8004AEB0 01C00008 */  jr         $t6
/* 4BAB4 8004AEB4 00000000 */   nop       
/* 4BAB8 8004AEB8 1000000C */  b          .L8004AEEC
/* 4BABC 8004AEBC 00002825 */   or        $a1, $zero, $zero
/* 4BAC0 8004AEC0 1000000A */  b          .L8004AEEC
/* 4BAC4 8004AEC4 24053FFF */   addiu     $a1, $zero, 0x3fff
/* 4BAC8 8004AEC8 10000008 */  b          .L8004AEEC
/* 4BACC 8004AECC 24054FFF */   addiu     $a1, $zero, 0x4fff
/* 4BAD0 8004AED0 10000006 */  b          .L8004AEEC
/* 4BAD4 8004AED4 24055FFF */   addiu     $a1, $zero, 0x5fff
/* 4BAD8 8004AED8 10000004 */  b          .L8004AEEC
/* 4BADC 8004AEDC 24056FFF */   addiu     $a1, $zero, 0x6fff
/* 4BAE0 8004AEE0 10000002 */  b          .L8004AEEC
/* 4BAE4 8004AEE4 24057FFF */   addiu     $a1, $zero, 0x7fff
.L8004AEE8:
/* 4BAE8 8004AEE8 24056FFF */  addiu      $a1, $zero, 0x6fff
.L8004AEEC:
/* 4BAEC 8004AEEC 308F0001 */  andi       $t7, $a0, 1
/* 4BAF0 8004AEF0 11E00003 */  beqz       $t7, .L8004AF00
/* 4BAF4 8004AEF4 30980002 */   andi      $t8, $a0, 2
/* 4BAF8 8004AEF8 3C018008 */  lui        $at, 0x8008
/* 4BAFC 8004AEFC AC258E64 */  sw         $a1, -0x719c($at)
.L8004AF00:
/* 4BB00 8004AF00 13000002 */  beqz       $t8, .L8004AF0C
/* 4BB04 8004AF04 3C018008 */   lui       $at, 0x8008
/* 4BB08 8004AF08 AC258E60 */  sw         $a1, -0x71a0($at)
.L8004AF0C:
/* 4BB0C 8004AF0C 0C00E3A6 */  jal        func_80038E98
/* 4BB10 8004AF10 00000000 */   nop       
/* 4BB14 8004AF14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4BB18 8004AF18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4BB1C 8004AF1C 03E00008 */  jr         $ra
/* 4BB20 8004AF20 00000000 */   nop       

glabel func_8004AF24
/* 4BB24 8004AF24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4BB28 8004AF28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4BB2C 8004AF2C 0C00E61B */  jal        func_8003986C
/* 4BB30 8004AF30 00000000 */   nop       
/* 4BB34 8004AF34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4BB38 8004AF38 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4BB3C 8004AF3C 03E00008 */  jr         $ra
/* 4BB40 8004AF40 00000000 */   nop       

glabel func_8004AF44
/* 4BB44 8004AF44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4BB48 8004AF48 2C810005 */  sltiu      $at, $a0, 5
/* 4BB4C 8004AF4C 1020004D */  beqz       $at, .L8004B084
/* 4BB50 8004AF50 AFBF0014 */   sw        $ra, 0x14($sp)
/* 4BB54 8004AF54 00047080 */  sll        $t6, $a0, 2
/* 4BB58 8004AF58 3C018008 */  lui        $at, 0x8008
/* 4BB5C 8004AF5C 002E0821 */  addu       $at, $at, $t6
/* 4BB60 8004AF60 8C2ED4F8 */  lw         $t6, -0x2b08($at)
/* 4BB64 8004AF64 01C00008 */  jr         $t6
/* 4BB68 8004AF68 00000000 */   nop       
/* 4BB6C 8004AF6C 3C048008 */  lui        $a0, 0x8008
/* 4BB70 8004AF70 8C848E68 */  lw         $a0, -0x7198($a0)
/* 4BB74 8004AF74 0C00E4AA */  jal        func_800392A8
/* 4BB78 8004AF78 24050003 */   addiu     $a1, $zero, 3
/* 4BB7C 8004AF7C 3C058008 */  lui        $a1, 0x8008
/* 4BB80 8004AF80 8CA58E60 */  lw         $a1, -0x71a0($a1)
/* 4BB84 8004AF84 24040002 */  addiu      $a0, $zero, 2
/* 4BB88 8004AF88 0C00E3A6 */  jal        func_80038E98
/* 4BB8C 8004AF8C 00052843 */   sra       $a1, $a1, 1
/* 4BB90 8004AF90 3C058008 */  lui        $a1, 0x8008
/* 4BB94 8004AF94 8CA58E64 */  lw         $a1, -0x719c($a1)
/* 4BB98 8004AF98 24010003 */  addiu      $at, $zero, 3
/* 4BB9C 8004AF9C 24040001 */  addiu      $a0, $zero, 1
/* 4BBA0 8004AFA0 00A1001A */  div        $zero, $a1, $at
/* 4BBA4 8004AFA4 00002812 */  mflo       $a1
/* 4BBA8 8004AFA8 0C00E3A6 */  jal        func_80038E98
/* 4BBAC 8004AFAC 00000000 */   nop       
/* 4BBB0 8004AFB0 0C0122E4 */  jal        func_80048B90
/* 4BBB4 8004AFB4 24040023 */   addiu     $a0, $zero, 0x23
/* 4BBB8 8004AFB8 3C038008 */  lui        $v1, 0x8008
/* 4BBBC 8004AFBC 24638E68 */  addiu      $v1, $v1, -0x7198
/* 4BBC0 8004AFC0 AC620000 */  sw         $v0, ($v1)
/* 4BBC4 8004AFC4 00402025 */  or         $a0, $v0, $zero
/* 4BBC8 8004AFC8 0C00E4F7 */  jal        func_800393DC
/* 4BBCC 8004AFCC 240500FF */   addiu     $a1, $zero, 0xff
/* 4BBD0 8004AFD0 1000002D */  b          .L8004B088
/* 4BBD4 8004AFD4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4BBD8 8004AFD8 3C048008 */  lui        $a0, 0x8008
/* 4BBDC 8004AFDC 8C848E68 */  lw         $a0, -0x7198($a0)
/* 4BBE0 8004AFE0 0C00E4AA */  jal        func_800392A8
/* 4BBE4 8004AFE4 24050003 */   addiu     $a1, $zero, 3
/* 4BBE8 8004AFE8 3C058008 */  lui        $a1, 0x8008
/* 4BBEC 8004AFEC 8CA58E60 */  lw         $a1, -0x71a0($a1)
/* 4BBF0 8004AFF0 0C00E3A6 */  jal        func_80038E98
/* 4BBF4 8004AFF4 24040002 */   addiu     $a0, $zero, 2
/* 4BBF8 8004AFF8 3C058008 */  lui        $a1, 0x8008
/* 4BBFC 8004AFFC 8CA58E64 */  lw         $a1, -0x719c($a1)
/* 4BC00 8004B000 0C00E3A6 */  jal        func_80038E98
/* 4BC04 8004B004 24040001 */   addiu     $a0, $zero, 1
/* 4BC08 8004B008 0C0122E4 */  jal        func_80048B90
/* 4BC0C 8004B00C 24040024 */   addiu     $a0, $zero, 0x24
/* 4BC10 8004B010 3C018008 */  lui        $at, 0x8008
/* 4BC14 8004B014 1000001B */  b          .L8004B084
/* 4BC18 8004B018 AC228E68 */   sw        $v0, -0x7198($at)
/* 4BC1C 8004B01C 0C0122E4 */  jal        func_80048B90
/* 4BC20 8004B020 24040001 */   addiu     $a0, $zero, 1
/* 4BC24 8004B024 00402025 */  or         $a0, $v0, $zero
/* 4BC28 8004B028 0C00E4F7 */  jal        func_800393DC
/* 4BC2C 8004B02C 240500FF */   addiu     $a1, $zero, 0xff
/* 4BC30 8004B030 10000015 */  b          .L8004B088
/* 4BC34 8004B034 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4BC38 8004B038 0C0122E4 */  jal        func_80048B90
/* 4BC3C 8004B03C 24040021 */   addiu     $a0, $zero, 0x21
/* 4BC40 8004B040 00402025 */  or         $a0, $v0, $zero
/* 4BC44 8004B044 0C00E4F7 */  jal        func_800393DC
/* 4BC48 8004B048 240500FF */   addiu     $a1, $zero, 0xff
/* 4BC4C 8004B04C 1000000E */  b          .L8004B088
/* 4BC50 8004B050 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4BC54 8004B054 3C048008 */  lui        $a0, 0x8008
/* 4BC58 8004B058 8C848E68 */  lw         $a0, -0x7198($a0)
/* 4BC5C 8004B05C 0C00E4AA */  jal        func_800392A8
/* 4BC60 8004B060 24050003 */   addiu     $a1, $zero, 3
/* 4BC64 8004B064 3C058008 */  lui        $a1, 0x8008
/* 4BC68 8004B068 8CA58E60 */  lw         $a1, -0x71a0($a1)
/* 4BC6C 8004B06C 0C00E3A6 */  jal        func_80038E98
/* 4BC70 8004B070 24040002 */   addiu     $a0, $zero, 2
/* 4BC74 8004B074 3C058008 */  lui        $a1, 0x8008
/* 4BC78 8004B078 8CA58E64 */  lw         $a1, -0x719c($a1)
/* 4BC7C 8004B07C 0C00E3A6 */  jal        func_80038E98
/* 4BC80 8004B080 24040001 */   addiu     $a0, $zero, 1
.L8004B084:
/* 4BC84 8004B084 8FBF0014 */  lw         $ra, 0x14($sp)
.L8004B088:
/* 4BC88 8004B088 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4BC8C 8004B08C 03E00008 */  jr         $ra
/* 4BC90 8004B090 00000000 */   nop       

glabel func_8004B094
/* 4BC94 8004B094 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4BC98 8004B098 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4BC9C 8004B09C 14800002 */  bnez       $a0, .L8004B0A8
/* 4BCA0 8004B0A0 00802825 */   or        $a1, $a0, $zero
/* 4BCA4 8004B0A4 24050001 */  addiu      $a1, $zero, 1
.L8004B0A8:
/* 4BCA8 8004B0A8 24040001 */  addiu      $a0, $zero, 1
/* 4BCAC 8004B0AC 0C015B04 */  jal        func_80056C10
/* 4BCB0 8004B0B0 AFA50018 */   sw        $a1, 0x18($sp)
/* 4BCB4 8004B0B4 3C0E8008 */  lui        $t6, 0x8008
/* 4BCB8 8004B0B8 8DCE8E60 */  lw         $t6, -0x71a0($t6)
/* 4BCBC 8004B0BC 3C038007 */  lui        $v1, 0x8007
/* 4BCC0 8004B0C0 24637DD4 */  addiu      $v1, $v1, 0x7dd4
/* 4BCC4 8004B0C4 448E2000 */  mtc1       $t6, $f4
/* 4BCC8 8004B0C8 3C0F8008 */  lui        $t7, 0x8008
/* 4BCCC 8004B0CC 8FA50018 */  lw         $a1, 0x18($sp)
/* 4BCD0 8004B0D0 468021A0 */  cvt.s.w    $f6, $f4
/* 4BCD4 8004B0D4 3C068007 */  lui        $a2, 0x8007
/* 4BCD8 8004B0D8 44858000 */  mtc1       $a1, $f16
/* 4BCDC 8004B0DC 24C67DDC */  addiu      $a2, $a2, 0x7ddc
/* 4BCE0 8004B0E0 3C014F80 */  lui        $at, 0x4f80
/* 4BCE4 8004B0E4 46808020 */  cvt.s.w    $f0, $f16
/* 4BCE8 8004B0E8 E4660000 */  swc1       $f6, ($v1)
/* 4BCEC 8004B0EC 8DEF8E64 */  lw         $t7, -0x719c($t7)
/* 4BCF0 8004B0F0 448F4000 */  mtc1       $t7, $f8
/* 4BCF4 8004B0F4 00000000 */  nop        
/* 4BCF8 8004B0F8 468042A0 */  cvt.s.w    $f10, $f8
/* 4BCFC 8004B0FC 04A10004 */  bgez       $a1, .L8004B110
/* 4BD00 8004B100 E4CA0000 */   swc1      $f10, ($a2)
/* 4BD04 8004B104 44819000 */  mtc1       $at, $f18
/* 4BD08 8004B108 00000000 */  nop        
/* 4BD0C 8004B10C 46120000 */  add.s      $f0, $f0, $f18
.L8004B110:
/* 4BD10 8004B110 C4640000 */  lwc1       $f4, ($v1)
/* 4BD14 8004B114 3C018007 */  lui        $at, 0x8007
/* 4BD18 8004B118 24180001 */  addiu      $t8, $zero, 1
/* 4BD1C 8004B11C 46002183 */  div.s      $f6, $f4, $f0
/* 4BD20 8004B120 00402025 */  or         $a0, $v0, $zero
/* 4BD24 8004B124 E4267DD8 */  swc1       $f6, 0x7dd8($at)
/* 4BD28 8004B128 C4C80000 */  lwc1       $f8, ($a2)
/* 4BD2C 8004B12C 3C018007 */  lui        $at, 0x8007
/* 4BD30 8004B130 46004283 */  div.s      $f10, $f8, $f0
/* 4BD34 8004B134 E42A7DE0 */  swc1       $f10, 0x7de0($at)
/* 4BD38 8004B138 3C018007 */  lui        $at, 0x8007
/* 4BD3C 8004B13C 0C015B04 */  jal        func_80056C10
/* 4BD40 8004B140 A0387DE4 */   sb        $t8, 0x7de4($at)
/* 4BD44 8004B144 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4BD48 8004B148 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4BD4C 8004B14C 03E00008 */  jr         $ra
/* 4BD50 8004B150 00000000 */   nop       

glabel func_8004B154
/* 4BD54 8004B154 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4BD58 8004B158 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4BD5C 8004B15C 0C015B04 */  jal        func_80056C10
/* 4BD60 8004B160 24040001 */   addiu     $a0, $zero, 1
/* 4BD64 8004B164 44800000 */  mtc1       $zero, $f0
/* 4BD68 8004B168 3C018007 */  lui        $at, 0x8007
/* 4BD6C 8004B16C A0207DE4 */  sb         $zero, 0x7de4($at)
/* 4BD70 8004B170 3C018007 */  lui        $at, 0x8007
/* 4BD74 8004B174 E4207DD4 */  swc1       $f0, 0x7dd4($at)
/* 4BD78 8004B178 3C018007 */  lui        $at, 0x8007
/* 4BD7C 8004B17C 00402025 */  or         $a0, $v0, $zero
/* 4BD80 8004B180 0C015B04 */  jal        func_80056C10
/* 4BD84 8004B184 E4207DDC */   swc1      $f0, 0x7ddc($at)
/* 4BD88 8004B188 3C058008 */  lui        $a1, 0x8008
/* 4BD8C 8004B18C 8CA58E60 */  lw         $a1, -0x71a0($a1)
/* 4BD90 8004B190 0C00E3A6 */  jal        func_80038E98
/* 4BD94 8004B194 24040002 */   addiu     $a0, $zero, 2
/* 4BD98 8004B198 3C058008 */  lui        $a1, 0x8008
/* 4BD9C 8004B19C 8CA58E64 */  lw         $a1, -0x719c($a1)
/* 4BDA0 8004B1A0 0C00E3A6 */  jal        func_80038E98
/* 4BDA4 8004B1A4 24040001 */   addiu     $a0, $zero, 1
/* 4BDA8 8004B1A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4BDAC 8004B1AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4BDB0 8004B1B0 03E00008 */  jr         $ra
/* 4BDB4 8004B1B4 00000000 */   nop       
/* 4BDB8 8004B1B8 00000000 */  nop        
/* 4BDBC 8004B1BC 00000000 */  nop        
