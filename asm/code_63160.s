.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80062560
/* 63160 80062560 10C0001A */  beqz       $a2, .L800625CC
/* 63164 80062564 00A03825 */   or        $a3, $a1, $zero
/* 63168 80062568 10850018 */  beq        $a0, $a1, .L800625CC
/* 6316C 8006256C 00A4082A */   slt       $at, $a1, $a0
/* 63170 80062570 54200008 */  bnel       $at, $zero, .L80062594
/* 63174 80062574 28C10010 */   slti      $at, $a2, 0x10
/* 63178 80062578 00861020 */  add        $v0, $a0, $a2
/* 6317C 8006257C 00A2082A */  slt        $at, $a1, $v0
/* 63180 80062580 50200004 */  beql       $at, $zero, .L80062594
/* 63184 80062584 28C10010 */   slti      $at, $a2, 0x10
/* 63188 80062588 1000005B */  b          .L800626F8
/* 6318C 8006258C 28C10010 */   slti      $at, $a2, 0x10
/* 63190 80062590 28C10010 */  slti       $at, $a2, 0x10
.L80062594:
/* 63194 80062594 14200005 */  bnez       $at, .L800625AC
/* 63198 80062598 00000000 */   nop       
/* 6319C 8006259C 30820003 */  andi       $v0, $a0, 3
/* 631A0 800625A0 30A30003 */  andi       $v1, $a1, 3
/* 631A4 800625A4 1043000B */  beq        $v0, $v1, .L800625D4
/* 631A8 800625A8 00000000 */   nop       
.L800625AC:
/* 631AC 800625AC 10C00007 */  beqz       $a2, .L800625CC
/* 631B0 800625B0 00000000 */   nop       
/* 631B4 800625B4 00861821 */  addu       $v1, $a0, $a2
.L800625B8:
/* 631B8 800625B8 80820000 */  lb         $v0, ($a0)
/* 631BC 800625BC 24840001 */  addiu      $a0, $a0, 1
/* 631C0 800625C0 24A50001 */  addiu      $a1, $a1, 1
/* 631C4 800625C4 1483FFFC */  bne        $a0, $v1, .L800625B8
/* 631C8 800625C8 A0A2FFFF */   sb        $v0, -1($a1)
.L800625CC:
/* 631CC 800625CC 03E00008 */  jr         $ra
/* 631D0 800625D0 00E01025 */   or        $v0, $a3, $zero
.L800625D4:
/* 631D4 800625D4 10400018 */  beqz       $v0, .L80062638
/* 631D8 800625D8 24010001 */   addiu     $at, $zero, 1
/* 631DC 800625DC 1041000F */  beq        $v0, $at, .L8006261C
/* 631E0 800625E0 24010002 */   addiu     $at, $zero, 2
/* 631E4 800625E4 50410008 */  beql       $v0, $at, .L80062608
/* 631E8 800625E8 84820000 */   lh        $v0, ($a0)
/* 631EC 800625EC 80820000 */  lb         $v0, ($a0)
/* 631F0 800625F0 24840001 */  addiu      $a0, $a0, 1
/* 631F4 800625F4 24A50001 */  addiu      $a1, $a1, 1
/* 631F8 800625F8 24C6FFFF */  addiu      $a2, $a2, -1
/* 631FC 800625FC 1000000E */  b          .L80062638
/* 63200 80062600 A0A2FFFF */   sb        $v0, -1($a1)
/* 63204 80062604 84820000 */  lh         $v0, ($a0)
.L80062608:
/* 63208 80062608 24840002 */  addiu      $a0, $a0, 2
/* 6320C 8006260C 24A50002 */  addiu      $a1, $a1, 2
/* 63210 80062610 24C6FFFE */  addiu      $a2, $a2, -2
/* 63214 80062614 10000008 */  b          .L80062638
/* 63218 80062618 A4A2FFFE */   sh        $v0, -2($a1)
.L8006261C:
/* 6321C 8006261C 80820000 */  lb         $v0, ($a0)
/* 63220 80062620 84830001 */  lh         $v1, 1($a0)
/* 63224 80062624 24840003 */  addiu      $a0, $a0, 3
/* 63228 80062628 24A50003 */  addiu      $a1, $a1, 3
/* 6322C 8006262C 24C6FFFD */  addiu      $a2, $a2, -3
/* 63230 80062630 A0A2FFFD */  sb         $v0, -3($a1)
/* 63234 80062634 A4A3FFFE */  sh         $v1, -2($a1)
.L80062638:
/* 63238 80062638 28C10020 */  slti       $at, $a2, 0x20
/* 6323C 8006263C 54200016 */  bnel       $at, $zero, .L80062698
/* 63240 80062640 28C10010 */   slti      $at, $a2, 0x10
/* 63244 80062644 8C820000 */  lw         $v0, ($a0)
/* 63248 80062648 8C830004 */  lw         $v1, 4($a0)
/* 6324C 8006264C 8C880008 */  lw         $t0, 8($a0)
/* 63250 80062650 8C89000C */  lw         $t1, 0xc($a0)
/* 63254 80062654 8C8A0010 */  lw         $t2, 0x10($a0)
/* 63258 80062658 8C8B0014 */  lw         $t3, 0x14($a0)
/* 6325C 8006265C 8C8C0018 */  lw         $t4, 0x18($a0)
/* 63260 80062660 8C8D001C */  lw         $t5, 0x1c($a0)
/* 63264 80062664 24840020 */  addiu      $a0, $a0, 0x20
/* 63268 80062668 24A50020 */  addiu      $a1, $a1, 0x20
/* 6326C 8006266C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 63270 80062670 ACA2FFE0 */  sw         $v0, -0x20($a1)
/* 63274 80062674 ACA3FFE4 */  sw         $v1, -0x1c($a1)
/* 63278 80062678 ACA8FFE8 */  sw         $t0, -0x18($a1)
/* 6327C 8006267C ACA9FFEC */  sw         $t1, -0x14($a1)
/* 63280 80062680 ACAAFFF0 */  sw         $t2, -0x10($a1)
/* 63284 80062684 ACABFFF4 */  sw         $t3, -0xc($a1)
/* 63288 80062688 ACACFFF8 */  sw         $t4, -8($a1)
/* 6328C 8006268C 1000FFEA */  b          .L80062638
/* 63290 80062690 ACADFFFC */   sw        $t5, -4($a1)
.L80062694:
/* 63294 80062694 28C10010 */  slti       $at, $a2, 0x10
.L80062698:
/* 63298 80062698 5420000E */  bnel       $at, $zero, .L800626D4
/* 6329C 8006269C 28C10004 */   slti      $at, $a2, 4
/* 632A0 800626A0 8C820000 */  lw         $v0, ($a0)
/* 632A4 800626A4 8C830004 */  lw         $v1, 4($a0)
/* 632A8 800626A8 8C880008 */  lw         $t0, 8($a0)
/* 632AC 800626AC 8C89000C */  lw         $t1, 0xc($a0)
/* 632B0 800626B0 24840010 */  addiu      $a0, $a0, 0x10
/* 632B4 800626B4 24A50010 */  addiu      $a1, $a1, 0x10
/* 632B8 800626B8 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* 632BC 800626BC ACA2FFF0 */  sw         $v0, -0x10($a1)
/* 632C0 800626C0 ACA3FFF4 */  sw         $v1, -0xc($a1)
/* 632C4 800626C4 ACA8FFF8 */  sw         $t0, -8($a1)
/* 632C8 800626C8 1000FFF2 */  b          .L80062694
/* 632CC 800626CC ACA9FFFC */   sw        $t1, -4($a1)
.L800626D0:
/* 632D0 800626D0 28C10004 */  slti       $at, $a2, 4
.L800626D4:
/* 632D4 800626D4 1420FFB5 */  bnez       $at, .L800625AC
/* 632D8 800626D8 00000000 */   nop       
/* 632DC 800626DC 8C820000 */  lw         $v0, ($a0)
/* 632E0 800626E0 24840004 */  addiu      $a0, $a0, 4
/* 632E4 800626E4 24A50004 */  addiu      $a1, $a1, 4
/* 632E8 800626E8 24C6FFFC */  addiu      $a2, $a2, -4
/* 632EC 800626EC 1000FFF8 */  b          .L800626D0
/* 632F0 800626F0 ACA2FFFC */   sw        $v0, -4($a1)
/* 632F4 800626F4 28C10010 */  slti       $at, $a2, 0x10
.L800626F8:
/* 632F8 800626F8 00862020 */  add        $a0, $a0, $a2
/* 632FC 800626FC 14200005 */  bnez       $at, .L80062714
/* 63300 80062700 00A62820 */   add       $a1, $a1, $a2
/* 63304 80062704 30820003 */  andi       $v0, $a0, 3
/* 63308 80062708 30A30003 */  andi       $v1, $a1, 3
/* 6330C 8006270C 1043000D */  beq        $v0, $v1, .L80062744
/* 63310 80062710 00000000 */   nop       
.L80062714:
/* 63314 80062714 10C0FFAD */  beqz       $a2, .L800625CC
/* 63318 80062718 00000000 */   nop       
/* 6331C 8006271C 2484FFFF */  addiu      $a0, $a0, -1
/* 63320 80062720 24A5FFFF */  addiu      $a1, $a1, -1
/* 63324 80062724 00861823 */  subu       $v1, $a0, $a2
.L80062728:
/* 63328 80062728 80820000 */  lb         $v0, ($a0)
/* 6332C 8006272C 2484FFFF */  addiu      $a0, $a0, -1
/* 63330 80062730 24A5FFFF */  addiu      $a1, $a1, -1
/* 63334 80062734 1483FFFC */  bne        $a0, $v1, .L80062728
/* 63338 80062738 A0A20001 */   sb        $v0, 1($a1)
/* 6333C 8006273C 03E00008 */  jr         $ra
/* 63340 80062740 00E01025 */   or        $v0, $a3, $zero
.L80062744:
/* 63344 80062744 10400018 */  beqz       $v0, .L800627A8
/* 63348 80062748 24010003 */   addiu     $at, $zero, 3
/* 6334C 8006274C 1041000F */  beq        $v0, $at, .L8006278C
/* 63350 80062750 24010002 */   addiu     $at, $zero, 2
/* 63354 80062754 50410008 */  beql       $v0, $at, .L80062778
/* 63358 80062758 8482FFFE */   lh        $v0, -2($a0)
/* 6335C 8006275C 8082FFFF */  lb         $v0, -1($a0)
/* 63360 80062760 2484FFFF */  addiu      $a0, $a0, -1
/* 63364 80062764 24A5FFFF */  addiu      $a1, $a1, -1
/* 63368 80062768 24C6FFFF */  addiu      $a2, $a2, -1
/* 6336C 8006276C 1000000E */  b          .L800627A8
/* 63370 80062770 A0A20000 */   sb        $v0, ($a1)
/* 63374 80062774 8482FFFE */  lh         $v0, -2($a0)
.L80062778:
/* 63378 80062778 2484FFFE */  addiu      $a0, $a0, -2
/* 6337C 8006277C 24A5FFFE */  addiu      $a1, $a1, -2
/* 63380 80062780 24C6FFFE */  addiu      $a2, $a2, -2
/* 63384 80062784 10000008 */  b          .L800627A8
/* 63388 80062788 A4A20000 */   sh        $v0, ($a1)
.L8006278C:
/* 6338C 8006278C 8082FFFF */  lb         $v0, -1($a0)
/* 63390 80062790 8483FFFD */  lh         $v1, -3($a0)
/* 63394 80062794 2484FFFD */  addiu      $a0, $a0, -3
/* 63398 80062798 24A5FFFD */  addiu      $a1, $a1, -3
/* 6339C 8006279C 24C6FFFD */  addiu      $a2, $a2, -3
/* 633A0 800627A0 A0A20002 */  sb         $v0, 2($a1)
/* 633A4 800627A4 A4A30000 */  sh         $v1, ($a1)
.L800627A8:
/* 633A8 800627A8 28C10020 */  slti       $at, $a2, 0x20
/* 633AC 800627AC 54200016 */  bnel       $at, $zero, .L80062808
/* 633B0 800627B0 28C10010 */   slti      $at, $a2, 0x10
/* 633B4 800627B4 8C82FFFC */  lw         $v0, -4($a0)
/* 633B8 800627B8 8C83FFF8 */  lw         $v1, -8($a0)
/* 633BC 800627BC 8C88FFF4 */  lw         $t0, -0xc($a0)
/* 633C0 800627C0 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 633C4 800627C4 8C8AFFEC */  lw         $t2, -0x14($a0)
/* 633C8 800627C8 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* 633CC 800627CC 8C8CFFE4 */  lw         $t4, -0x1c($a0)
/* 633D0 800627D0 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* 633D4 800627D4 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 633D8 800627D8 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 633DC 800627DC 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 633E0 800627E0 ACA2001C */  sw         $v0, 0x1c($a1)
/* 633E4 800627E4 ACA30018 */  sw         $v1, 0x18($a1)
/* 633E8 800627E8 ACA80014 */  sw         $t0, 0x14($a1)
/* 633EC 800627EC ACA90010 */  sw         $t1, 0x10($a1)
/* 633F0 800627F0 ACAA000C */  sw         $t2, 0xc($a1)
/* 633F4 800627F4 ACAB0008 */  sw         $t3, 8($a1)
/* 633F8 800627F8 ACAC0004 */  sw         $t4, 4($a1)
/* 633FC 800627FC 1000FFEA */  b          .L800627A8
/* 63400 80062800 ACAD0000 */   sw        $t5, ($a1)
.L80062804:
/* 63404 80062804 28C10010 */  slti       $at, $a2, 0x10
.L80062808:
/* 63408 80062808 5420000E */  bnel       $at, $zero, .L80062844
/* 6340C 8006280C 28C10004 */   slti      $at, $a2, 4
/* 63410 80062810 8C82FFFC */  lw         $v0, -4($a0)
/* 63414 80062814 8C83FFF8 */  lw         $v1, -8($a0)
/* 63418 80062818 8C88FFF4 */  lw         $t0, -0xc($a0)
/* 6341C 8006281C 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 63420 80062820 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 63424 80062824 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* 63428 80062828 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* 6342C 8006282C ACA2000C */  sw         $v0, 0xc($a1)
/* 63430 80062830 ACA30008 */  sw         $v1, 8($a1)
/* 63434 80062834 ACA80004 */  sw         $t0, 4($a1)
/* 63438 80062838 1000FFF2 */  b          .L80062804
/* 6343C 8006283C ACA90000 */   sw        $t1, ($a1)
.L80062840:
/* 63440 80062840 28C10004 */  slti       $at, $a2, 4
.L80062844:
/* 63444 80062844 1420FFB3 */  bnez       $at, .L80062714
/* 63448 80062848 00000000 */   nop       
/* 6344C 8006284C 8C82FFFC */  lw         $v0, -4($a0)
/* 63450 80062850 2484FFFC */  addiu      $a0, $a0, -4
/* 63454 80062854 24A5FFFC */  addiu      $a1, $a1, -4
/* 63458 80062858 24C6FFFC */  addiu      $a2, $a2, -4
/* 6345C 8006285C 1000FFF8 */  b          .L80062840
/* 63460 80062860 ACA20000 */   sw        $v0, ($a1)
/* 63464 80062864 00000000 */  nop        
/* 63468 80062868 00000000 */  nop        
/* 6346C 8006286C 00000000 */  nop        
/* 63470 80062870 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 63474 80062874 AFBF001C */  sw         $ra, 0x1c($sp)
/* 63478 80062878 AFA40028 */  sw         $a0, 0x28($sp)
/* 6347C 8006287C 0C018AA4 */  jal        func_80062A90
/* 63480 80062880 AFB00018 */   sw        $s0, 0x18($sp)
/* 63484 80062884 8FAF0028 */  lw         $t7, 0x28($sp)
/* 63488 80062888 3C0E8008 */  lui        $t6, 0x8008
/* 6348C 8006288C 8DCE96B0 */  lw         $t6, -0x6950($t6)
/* 63490 80062890 2401FBFE */  addiu      $at, $zero, -0x402
/* 63494 80062894 01E1C024 */  and        $t8, $t7, $at
/* 63498 80062898 0300C827 */  not        $t9, $t8
/* 6349C 8006289C 00408025 */  or         $s0, $v0, $zero
/* 634A0 800628A0 3C018008 */  lui        $at, 0x8008
/* 634A4 800628A4 01D94024 */  and        $t0, $t6, $t9
/* 634A8 800628A8 AC2896B0 */  sw         $t0, -0x6950($at)
/* 634AC 800628AC 0C018AC0 */  jal        func_80062B00
/* 634B0 800628B0 02002025 */   or        $a0, $s0, $zero
/* 634B4 800628B4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 634B8 800628B8 8FB00018 */  lw         $s0, 0x18($sp)
/* 634BC 800628BC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 634C0 800628C0 03E00008 */  jr         $ra
/* 634C4 800628C4 00000000 */   nop       
/* 634C8 800628C8 00000000 */  nop        
/* 634CC 800628CC 00000000 */  nop        
