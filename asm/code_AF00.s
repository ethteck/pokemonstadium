.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8000A300
/* AF00 8000A300 44802000 */  mtc1      $zero, $f4
/* AF04 8000A304 3C038007 */  lui       $v1, 0x8007
/* AF08 8000A308 46047032 */  c.eq.s    $f14, $f4
/* AF0C 8000A30C 00000000 */  nop       
/* AF10 8000A310 45020004 */  bc1fl     .L8000A324
/* AF14 8000A314 460E6183 */  div.s     $f6, $f12, $f14
/* AF18 8000A318 03E00008 */  jr        $ra
/* AF1C 8000A31C 9462E7F0 */  lhu       $v0, -0x1810($v1)
/* AF20 8000A320 460E6183 */  div.s     $f6, $f12, $f14
.L8000A324:
/* AF24 8000A324 3C014480 */  lui       $at, 0x4480
/* AF28 8000A328 44814000 */  mtc1      $at, $f8
/* AF2C 8000A32C 3C013F00 */  lui       $at, 0x3f00
/* AF30 8000A330 44818000 */  mtc1      $at, $f16
/* AF34 8000A334 3C038007 */  lui       $v1, 0x8007
/* AF38 8000A338 46083282 */  mul.s     $f10, $f6, $f8
/* AF3C 8000A33C 46105480 */  add.s     $f18, $f10, $f16
/* AF40 8000A340 4600910D */  trunc.w.s $f4, $f18
/* AF44 8000A344 440F2000 */  mfc1      $t7, $f4
/* AF48 8000A348 00000000 */  nop       
/* AF4C 8000A34C 000FC040 */  sll       $t8, $t7, 1
/* AF50 8000A350 00781821 */  addu      $v1, $v1, $t8
/* AF54 8000A354 9463E7F0 */  lhu       $v1, -0x1810($v1)
/* AF58 8000A358 03E00008 */  jr        $ra
/* AF5C 8000A35C 00601025 */  or        $v0, $v1, $zero

glabel func_8000A360
/* AF60 8000A360 44800000 */  mtc1      $zero, $f0
/* AF64 8000A364 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* AF68 8000A368 F7B60018 */  sdc1      $f22, 0x18($sp)
/* AF6C 8000A36C 460E003E */  c.le.s    $f0, $f14
/* AF70 8000A370 F7B40010 */  sdc1      $f20, 0x10($sp)
/* AF74 8000A374 46006506 */  mov.s     $f20, $f12
/* AF78 8000A378 46007586 */  mov.s     $f22, $f14
/* AF7C 8000A37C 45000027 */  bc1f      .L8000A41C
/* AF80 8000A380 AFBF0024 */  sw        $ra, 0x24($sp)
/* AF84 8000A384 460C003E */  c.le.s    $f0, $f12
/* AF88 8000A388 00000000 */  nop       
/* AF8C 8000A38C 45020012 */  bc1fl     .L8000A3D8
/* AF90 8000A390 4600A507 */  neg.s     $f20, $f20
/* AF94 8000A394 460C703E */  c.le.s    $f14, $f12
/* AF98 8000A398 00000000 */  nop       
/* AF9C 8000A39C 45020007 */  bc1fl     .L8000A3BC
/* AFA0 8000A3A0 4600A306 */  mov.s     $f12, $f20
/* AFA4 8000A3A4 46007306 */  mov.s     $f12, $f14
/* AFA8 8000A3A8 0C0028C0 */  jal       func_8000A300
/* AFAC 8000A3AC 4600A386 */  mov.s     $f14, $f20
/* AFB0 8000A3B0 10000041 */  b         .L8000A4B8
/* AFB4 8000A3B4 3043FFFF */  andi      $v1, $v0, 0xffff
/* AFB8 8000A3B8 4600A306 */  mov.s     $f12, $f20
.L8000A3BC:
/* AFBC 8000A3BC 0C0028C0 */  jal       func_8000A300
/* AFC0 8000A3C0 4600B386 */  mov.s     $f14, $f22
/* AFC4 8000A3C4 240E4000 */  addiu     $t6, $zero, 0x4000
/* AFC8 8000A3C8 01C21823 */  subu      $v1, $t6, $v0
/* AFCC 8000A3CC 1000003A */  b         .L8000A4B8
/* AFD0 8000A3D0 3063FFFF */  andi      $v1, $v1, 0xffff
/* AFD4 8000A3D4 4600A507 */  neg.s     $f20, $f20
.L8000A3D8:
/* AFD8 8000A3D8 4616A03C */  c.lt.s    $f20, $f22
/* AFDC 8000A3DC 00000000 */  nop       
/* AFE0 8000A3E0 45020008 */  bc1fl     .L8000A404
/* AFE4 8000A3E4 4600B306 */  mov.s     $f12, $f22
/* AFE8 8000A3E8 4600A306 */  mov.s     $f12, $f20
/* AFEC 8000A3EC 0C0028C0 */  jal       func_8000A300
/* AFF0 8000A3F0 4600B386 */  mov.s     $f14, $f22
/* AFF4 8000A3F4 24434000 */  addiu     $v1, $v0, 0x4000
/* AFF8 8000A3F8 1000002F */  b         .L8000A4B8
/* AFFC 8000A3FC 3063FFFF */  andi      $v1, $v1, 0xffff
/* B000 8000A400 4600B306 */  mov.s     $f12, $f22
.L8000A404:
/* B004 8000A404 0C0028C0 */  jal       func_8000A300
/* B008 8000A408 4600A386 */  mov.s     $f14, $f20
/* B00C 8000A40C 340F8000 */  ori       $t7, $zero, 0x8000
/* B010 8000A410 01E21823 */  subu      $v1, $t7, $v0
/* B014 8000A414 10000028 */  b         .L8000A4B8
/* B018 8000A418 3063FFFF */  andi      $v1, $v1, 0xffff
.L8000A41C:
/* B01C 8000A41C 4600A03C */  c.lt.s    $f20, $f0
/* B020 8000A420 4600B587 */  neg.s     $f22, $f22
/* B024 8000A424 45020015 */  bc1fl     .L8000A47C
/* B028 8000A428 4616A03C */  c.lt.s    $f20, $f22
/* B02C 8000A42C 4600A507 */  neg.s     $f20, $f20
/* B030 8000A430 4614B03E */  c.le.s    $f22, $f20
/* B034 8000A434 00000000 */  nop       
/* B038 8000A438 45020009 */  bc1fl     .L8000A460
/* B03C 8000A43C 4600A306 */  mov.s     $f12, $f20
/* B040 8000A440 4600B306 */  mov.s     $f12, $f22
/* B044 8000A444 0C0028C0 */  jal       func_8000A300
/* B048 8000A448 4600A386 */  mov.s     $f14, $f20
/* B04C 8000A44C 34018000 */  ori       $at, $zero, 0x8000
/* B050 8000A450 00411821 */  addu      $v1, $v0, $at
/* B054 8000A454 10000018 */  b         .L8000A4B8
/* B058 8000A458 3063FFFF */  andi      $v1, $v1, 0xffff
/* B05C 8000A45C 4600A306 */  mov.s     $f12, $f20
.L8000A460:
/* B060 8000A460 0C0028C0 */  jal       func_8000A300
/* B064 8000A464 4600B386 */  mov.s     $f14, $f22
/* B068 8000A468 3418C000 */  ori       $t8, $zero, 0xc000
/* B06C 8000A46C 03021823 */  subu      $v1, $t8, $v0
/* B070 8000A470 10000011 */  b         .L8000A4B8
/* B074 8000A474 3063FFFF */  andi      $v1, $v1, 0xffff
/* B078 8000A478 4616A03C */  c.lt.s    $f20, $f22
.L8000A47C:
/* B07C 8000A47C 00000000 */  nop       
/* B080 8000A480 45020009 */  bc1fl     .L8000A4A8
/* B084 8000A484 4600B306 */  mov.s     $f12, $f22
/* B088 8000A488 4600A306 */  mov.s     $f12, $f20
/* B08C 8000A48C 0C0028C0 */  jal       func_8000A300
/* B090 8000A490 4600B386 */  mov.s     $f14, $f22
/* B094 8000A494 3401C000 */  ori       $at, $zero, 0xc000
/* B098 8000A498 00411821 */  addu      $v1, $v0, $at
/* B09C 8000A49C 10000006 */  b         .L8000A4B8
/* B0A0 8000A4A0 3063FFFF */  andi      $v1, $v1, 0xffff
/* B0A4 8000A4A4 4600B306 */  mov.s     $f12, $f22
.L8000A4A8:
/* B0A8 8000A4A8 0C0028C0 */  jal       func_8000A300
/* B0AC 8000A4AC 4600A386 */  mov.s     $f14, $f20
/* B0B0 8000A4B0 00021823 */  negu      $v1, $v0
/* B0B4 8000A4B4 3063FFFF */  andi      $v1, $v1, 0xffff
.L8000A4B8:
/* B0B8 8000A4B8 8FBF0024 */  lw        $ra, 0x24($sp)
/* B0BC 8000A4BC 00031400 */  sll       $v0, $v1, 0x10
/* B0C0 8000A4C0 D7B40010 */  ldc1      $f20, 0x10($sp)
/* B0C4 8000A4C4 D7B60018 */  ldc1      $f22, 0x18($sp)
/* B0C8 8000A4C8 27BD0028 */  addiu     $sp, $sp, 0x28
/* B0CC 8000A4CC 03E00008 */  jr        $ra
/* B0D0 8000A4D0 00021403 */  sra       $v0, $v0, 0x10

glabel func_8000A4D4
/* B0D4 8000A4D4 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* B0D8 8000A4D8 AFBF0014 */  sw        $ra, 0x14($sp)
/* B0DC 8000A4DC 0C01746C */  jal       func_8005D1B0
/* B0E0 8000A4E0 00000000 */  nop       
/* B0E4 8000A4E4 8FBF0014 */  lw        $ra, 0x14($sp)
/* B0E8 8000A4E8 27BD0018 */  addiu     $sp, $sp, 0x18
/* B0EC 8000A4EC 3042FFFF */  andi      $v0, $v0, 0xffff
/* B0F0 8000A4F0 03E00008 */  jr        $ra
/* B0F4 8000A4F4 00000000 */  nop       

glabel func_8000A4F8
/* B0F8 8000A4F8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* B0FC 8000A4FC AFBF0014 */  sw        $ra, 0x14($sp)
/* B100 8000A500 0C002935 */  jal       func_8000A4D4
/* B104 8000A504 00000000 */  nop       
/* B108 8000A508 44822000 */  mtc1      $v0, $f4
/* B10C 8000A50C 8FBF0014 */  lw        $ra, 0x14($sp)
/* B110 8000A510 3C014780 */  lui       $at, 0x4780
/* B114 8000A514 468021A0 */  cvt.s.w   $f6, $f4
/* B118 8000A518 44814000 */  mtc1      $at, $f8
/* B11C 8000A51C 27BD0018 */  addiu     $sp, $sp, 0x18
/* B120 8000A520 03E00008 */  jr        $ra
/* B124 8000A524 46083003 */  div.s     $f0, $f6, $f8
/* B128 8000A528 00000000 */  nop       
/* B12C 8000A52C 00000000 */  nop       
