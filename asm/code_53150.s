.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80052550
/* 53150 80052550 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 53154 80052554 3C0E8010 */  lui       $t6, 0x8010
/* 53158 80052558 AFBF0014 */  sw        $ra, 0x14($sp)
/* 5315C 8005255C 25CE06D6 */  addiu     $t6, $t6, 0x6d6
/* 53160 80052560 A5C00000 */  sh        $zero, ($t6)
/* 53164 80052564 0C01495F */  jal       func_8005257C
/* 53168 80052568 24040018 */  addiu     $a0, $zero, 0x18
/* 5316C 8005256C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 53170 80052570 27BD0018 */  addiu     $sp, $sp, 0x18
/* 53174 80052574 03E00008 */  jr        $ra
/* 53178 80052578 00000000 */  nop       

glabel func_8005257C
/* 5317C 8005257C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 53180 80052580 AFB60030 */  sw        $s6, 0x30($sp)
/* 53184 80052584 3C168010 */  lui       $s6, 0x8010
/* 53188 80052588 26D606C8 */  addiu     $s6, $s6, 0x6c8
/* 5318C 8005258C 8EC50000 */  lw        $a1, ($s6)
/* 53190 80052590 AFBF0034 */  sw        $ra, 0x34($sp)
/* 53194 80052594 AFB5002C */  sw        $s5, 0x2c($sp)
/* 53198 80052598 AFB40028 */  sw        $s4, 0x28($sp)
/* 5319C 8005259C AFB30024 */  sw        $s3, 0x24($sp)
/* 531A0 800525A0 AFB20020 */  sw        $s2, 0x20($sp)
/* 531A4 800525A4 AFB1001C */  sw        $s1, 0x1c($sp)
/* 531A8 800525A8 AFB00018 */  sw        $s0, 0x18($sp)
/* 531AC 800525AC 8CA2000C */  lw        $v0, 0xc($a1)
/* 531B0 800525B0 8CA30010 */  lw        $v1, 0x10($a1)
/* 531B4 800525B4 24190020 */  addiu     $t9, $zero, 0x20
/* 531B8 800525B8 00437025 */  or        $t6, $v0, $v1
/* 531BC 800525BC 000E7C02 */  srl       $t7, $t6, 0x10
/* 531C0 800525C0 15E00005 */  bnez      $t7, .L800525D8
/* 531C4 800525C4 00441021 */  addu      $v0, $v0, $a0
/* 531C8 800525C8 0043C021 */  addu      $t8, $v0, $v1
/* 531CC 800525CC 2F0110DD */  sltiu     $at, $t8, 0x10dd
/* 531D0 800525D0 14200006 */  bnez      $at, .L800525EC
/* 531D4 800525D4 00000000 */  nop       
.L800525D8:
/* 531D8 800525D8 A0B90005 */  sb        $t9, 5($a1)
.L800525DC:
/* 531DC 800525DC 8EC90000 */  lw        $t1, ($s6)
/* 531E0 800525E0 24080002 */  addiu     $t0, $zero, 2
/* 531E4 800525E4 1000003F */  b         .L800526E4
/* 531E8 800525E8 A1280004 */  sb        $t0, 4($t1)
.L800525EC:
/* 531EC 800525EC 14600008 */  bnez      $v1, .L80052610
/* 531F0 800525F0 3C108010 */  lui       $s0, 0x8010
/* 531F4 800525F4 2C4110DC */  sltiu     $at, $v0, 0x10dc
/* 531F8 800525F8 5020FFF8 */  beql      $at, $zero, .L800525DC
/* 531FC 800525FC A0B90005 */  sb        $t9, 5($a1)
/* 53200 80052600 A0A00005 */  sb        $zero, 5($a1)
/* 53204 80052604 8ECA0000 */  lw        $t2, ($s6)
/* 53208 80052608 10000036 */  b         .L800526E4
/* 5320C 8005260C A1400004 */  sb        $zero, 4($t2)
.L80052610:
/* 53210 80052610 3C018010 */  lui       $at, 0x8010
/* 53214 80052614 261006D6 */  addiu     $s0, $s0, 0x6d6
/* 53218 80052618 A42206E0 */  sh        $v0, 0x6e0($at)
/* 5321C 8005261C 960B0000 */  lhu       $t3, ($s0)
/* 53220 80052620 3C158010 */  lui       $s5, 0x8010
/* 53224 80052624 26B506F8 */  addiu     $s5, $s5, 0x6f8
/* 53228 80052628 316C3FFF */  andi      $t4, $t3, 0x3fff
/* 5322C 8005262C A60C0000 */  sh        $t4, ($s0)
/* 53230 80052630 02A02025 */  or        $a0, $s5, $zero
/* 53234 80052634 00002825 */  or        $a1, $zero, $zero
/* 53238 80052638 0C015A30 */  jal       func_800568C0
/* 5323C 8005263C 00003025 */  or        $a2, $zero, $zero
/* 53240 80052640 3C048010 */  lui       $a0, 0x8010
/* 53244 80052644 0C0194DC */  jal       func_80065370
/* 53248 80052648 2484FC88 */  addiu     $a0, $a0, -0x378
/* 5324C 8005264C 3C118010 */  lui       $s1, 0x8010
/* 53250 80052650 26310668 */  addiu     $s1, $s1, 0x668
/* 53254 80052654 2414BFFF */  addiu     $s4, $zero, -0x4001
/* 53258 80052658 3C130008 */  lui       $s3, 8
/* 5325C 8005265C 27B20044 */  addiu     $s2, $sp, 0x44
/* 53260 80052660 02202025 */  or        $a0, $s1, $zero
.L80052664:
/* 53264 80052664 02402825 */  or        $a1, $s2, $zero
/* 53268 80052668 0C015AB4 */  jal       func_80056AD0
/* 5326C 8005266C 24060001 */  addiu     $a2, $zero, 1
/* 53270 80052670 8FA20044 */  lw        $v0, 0x44($sp)
/* 53274 80052674 10530005 */  beq       $v0, $s3, .L8005268C
/* 53278 80052678 3C010009 */  lui       $at, 9
/* 5327C 8005267C 50410016 */  beql      $v0, $at, .L800526D8
/* 53280 80052680 8EC90000 */  lw        $t1, ($s6)
/* 53284 80052684 1000000D */  b         .L800526BC
/* 53288 80052688 8FAF0044 */  lw        $t7, 0x44($sp)
.L8005268C:
/* 5328C 8005268C 0C014DC4 */  jal       func_80053710
/* 53290 80052690 00000000 */  nop       
/* 53294 80052694 960D0000 */  lhu       $t5, ($s0)
/* 53298 80052698 02A02025 */  or        $a0, $s5, $zero
/* 5329C 8005269C 00002825 */  or        $a1, $zero, $zero
/* 532A0 800526A0 01B47024 */  and       $t6, $t5, $s4
/* 532A4 800526A4 A60E0000 */  sh        $t6, ($s0)
/* 532A8 800526A8 0C015A30 */  jal       func_800568C0
/* 532AC 800526AC 00003025 */  or        $a2, $zero, $zero
/* 532B0 800526B0 1000FFEC */  b         .L80052664
/* 532B4 800526B4 02202025 */  or        $a0, $s1, $zero
/* 532B8 800526B8 8FAF0044 */  lw        $t7, 0x44($sp)
.L800526BC:
/* 532BC 800526BC 8ED80000 */  lw        $t8, ($s6)
/* 532C0 800526C0 24190002 */  addiu     $t9, $zero, 2
/* 532C4 800526C4 A30F0005 */  sb        $t7, 5($t8)
/* 532C8 800526C8 8EC80000 */  lw        $t0, ($s6)
/* 532CC 800526CC 10000005 */  b         .L800526E4
/* 532D0 800526D0 A1190004 */  sb        $t9, 4($t0)
/* 532D4 800526D4 8EC90000 */  lw        $t1, ($s6)
.L800526D8:
/* 532D8 800526D8 A1200005 */  sb        $zero, 5($t1)
/* 532DC 800526DC 8ECA0000 */  lw        $t2, ($s6)
/* 532E0 800526E0 A1400004 */  sb        $zero, 4($t2)
.L800526E4:
/* 532E4 800526E4 8FBF0034 */  lw        $ra, 0x34($sp)
/* 532E8 800526E8 8FB00018 */  lw        $s0, 0x18($sp)
/* 532EC 800526EC 8FB1001C */  lw        $s1, 0x1c($sp)
/* 532F0 800526F0 8FB20020 */  lw        $s2, 0x20($sp)
/* 532F4 800526F4 8FB30024 */  lw        $s3, 0x24($sp)
/* 532F8 800526F8 8FB40028 */  lw        $s4, 0x28($sp)
/* 532FC 800526FC 8FB5002C */  lw        $s5, 0x2c($sp)
/* 53300 80052700 8FB60030 */  lw        $s6, 0x30($sp)
/* 53304 80052704 03E00008 */  jr        $ra
/* 53308 80052708 27BD0050 */  addiu     $sp, $sp, 0x50
/* 5330C 8005270C 00000000 */  nop       

glabel func_80052710
/* 53310 80052710 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 53314 80052714 3C0E8008 */  lui       $t6, 0x8008
/* 53318 80052718 8DCE95B0 */  lw        $t6, -0x6a50($t6)
/* 5331C 8005271C AFB1001C */  sw        $s1, 0x1c($sp)
/* 53320 80052720 AFB00018 */  sw        $s0, 0x18($sp)
/* 53324 80052724 00808025 */  or        $s0, $a0, $zero
/* 53328 80052728 00A08825 */  or        $s1, $a1, $zero
/* 5332C 8005272C AFBF0034 */  sw        $ra, 0x34($sp)
/* 53330 80052730 AFB60030 */  sw        $s6, 0x30($sp)
/* 53334 80052734 AFB5002C */  sw        $s5, 0x2c($sp)
/* 53338 80052738 AFB40028 */  sw        $s4, 0x28($sp)
/* 5333C 8005273C AFB30024 */  sw        $s3, 0x24($sp)
/* 53340 80052740 AFB20020 */  sw        $s2, 0x20($sp)
/* 53344 80052744 15C00003 */  bnez      $t6, .L80052754
/* 53348 80052748 AFA60048 */  sw        $a2, 0x48($sp)
/* 5334C 8005274C 10000039 */  b         .L80052834
/* 53350 80052750 2402FFFF */  addiu     $v0, $zero, -1
.L80052754:
/* 53354 80052754 00009825 */  or        $s3, $zero, $zero
/* 53358 80052758 24050001 */  addiu     $a1, $zero, 1
/* 5335C 8005275C 24020001 */  addiu     $v0, $zero, 1
/* 53360 80052760 12200031 */  beqz      $s1, .L80052828
/* 53364 80052764 26100018 */  addiu     $s0, $s0, 0x18
/* 53368 80052768 3C168008 */  lui       $s6, 0x8008
/* 5336C 8005276C 3C158008 */  lui       $s5, 0x8008
/* 53370 80052770 3C148008 */  lui       $s4, 0x8008
/* 53374 80052774 3C128010 */  lui       $s2, 0x8010
/* 53378 80052778 265206D8 */  addiu     $s2, $s2, 0x6d8
/* 5337C 8005277C 2694DB98 */  addiu     $s4, $s4, -0x2468
/* 53380 80052780 26B5DC98 */  addiu     $s5, $s5, -0x2368
/* 53384 80052784 26D6DB84 */  addiu     $s6, $s6, -0x247c
/* 53388 80052788 8FA40038 */  lw        $a0, 0x38($sp)
.L8005278C:
/* 5338C 8005278C 14400009 */  bnez      $v0, .L800527B4
/* 53390 80052790 00000000 */  nop       
/* 53394 80052794 924F0000 */  lbu       $t7, ($s2)
/* 53398 80052798 00054040 */  sll       $t0, $a1, 1
/* 5339C 8005279C 000FC140 */  sll       $t8, $t7, 5
/* 533A0 800527A0 0298C821 */  addu      $t9, $s4, $t8
/* 533A4 800527A4 03284821 */  addu      $t1, $t9, $t0
/* 533A8 800527A8 952A0000 */  lhu       $t2, ($t1)
/* 533AC 800527AC 560A0013 */  bnel      $s0, $t2, .L800527FC
/* 533B0 800527B0 2631FFFF */  addiu     $s1, $s1, -1
.L800527B4:
/* 533B4 800527B4 0C0153D5 */  jal       func_80054F54
/* 533B8 800527B8 02002025 */  or        $a0, $s0, $zero
/* 533BC 800527BC 924B0000 */  lbu       $t3, ($s2)
/* 533C0 800527C0 3045FFFF */  andi      $a1, $v0, 0xffff
/* 533C4 800527C4 000B6100 */  sll       $t4, $t3, 4
/* 533C8 800527C8 02AC6821 */  addu      $t5, $s5, $t4
/* 533CC 800527CC 01A27021 */  addu      $t6, $t5, $v0
/* 533D0 800527D0 91C30000 */  lbu       $v1, ($t6)
/* 533D4 800527D4 28610008 */  slti      $at, $v1, 8
/* 533D8 800527D8 14200004 */  bnez      $at, .L800527EC
/* 533DC 800527DC 00602025 */  or        $a0, $v1, $zero
/* 533E0 800527E0 2483FFF9 */  addiu     $v1, $a0, -7
/* 533E4 800527E4 306FFFFF */  andi      $t7, $v1, 0xffff
/* 533E8 800527E8 01E01825 */  or        $v1, $t7, $zero
.L800527EC:
/* 533EC 800527EC 0003C040 */  sll       $t8, $v1, 1
/* 533F0 800527F0 02D8C821 */  addu      $t9, $s6, $t8
/* 533F4 800527F4 97240000 */  lhu       $a0, ($t9)
/* 533F8 800527F8 2631FFFF */  addiu     $s1, $s1, -1
.L800527FC:
/* 533FC 800527FC 02649821 */  addu      $s3, $s3, $a0
/* 53400 80052800 12200006 */  beqz      $s1, .L8005281C
/* 53404 80052804 26100001 */  addiu     $s0, $s0, 1
/* 53408 80052808 2E0110DC */  sltiu     $at, $s0, 0x10dc
/* 5340C 8005280C 14200003 */  bnez      $at, .L8005281C
/* 53410 80052810 00000000 */  nop       
/* 53414 80052814 10000007 */  b         .L80052834
/* 53418 80052818 24020020 */  addiu     $v0, $zero, 0x20
.L8005281C:
/* 5341C 8005281C 1620FFDB */  bnez      $s1, .L8005278C
/* 53420 80052820 00001025 */  or        $v0, $zero, $zero
/* 53424 80052824 AFA40038 */  sw        $a0, 0x38($sp)
.L80052828:
/* 53428 80052828 8FA80048 */  lw        $t0, 0x48($sp)
/* 5342C 8005282C 00001025 */  or        $v0, $zero, $zero
/* 53430 80052830 AD130000 */  sw        $s3, ($t0)
.L80052834:
/* 53434 80052834 8FBF0034 */  lw        $ra, 0x34($sp)
/* 53438 80052838 8FB00018 */  lw        $s0, 0x18($sp)
/* 5343C 8005283C 8FB1001C */  lw        $s1, 0x1c($sp)
/* 53440 80052840 8FB20020 */  lw        $s2, 0x20($sp)
/* 53444 80052844 8FB30024 */  lw        $s3, 0x24($sp)
/* 53448 80052848 8FB40028 */  lw        $s4, 0x28($sp)
/* 5344C 8005284C 8FB5002C */  lw        $s5, 0x2c($sp)
/* 53450 80052850 8FB60030 */  lw        $s6, 0x30($sp)
/* 53454 80052854 03E00008 */  jr        $ra
/* 53458 80052858 27BD0040 */  addiu     $sp, $sp, 0x40
/* 5345C 8005285C 00000000 */  nop       

glabel func_80052860
/* 53460 80052860 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 53464 80052864 AFBF001C */  sw        $ra, 0x1c($sp)
/* 53468 80052868 0C015A10 */  jal       func_80056840
/* 5346C 8005286C AFB00018 */  sw        $s0, 0x18($sp)
/* 53470 80052870 3C0E8008 */  lui       $t6, 0x8008
/* 53474 80052874 8DCE9580 */  lw        $t6, -0x6a80($t6)
/* 53478 80052878 3C108010 */  lui       $s0, 0x8010
/* 5347C 8005287C 26100740 */  addiu     $s0, $s0, 0x740
/* 53480 80052880 15C00006 */  bnez      $t6, .L8005289C
/* 53484 80052884 3C018008 */  lui       $at, 0x8008
/* 53488 80052888 0C015A21 */  jal       func_80056884
/* 5348C 8005288C 00000000 */  nop       
/* 53490 80052890 3C108010 */  lui       $s0, 0x8010
/* 53494 80052894 10000043 */  b         .L800529A4
/* 53498 80052898 26020740 */  addiu     $v0, $s0, 0x740
.L8005289C:
/* 5349C 8005289C AC209580 */  sw        $zero, -0x6a80($at)
/* 534A0 800528A0 240F0001 */  addiu     $t7, $zero, 1
/* 534A4 800528A4 3C18A600 */  lui       $t8, 0xa600
/* 534A8 800528A8 3C048010 */  lui       $a0, 0x8010
/* 534AC 800528AC A20F0004 */  sb        $t7, 4($s0)
/* 534B0 800528B0 AE18000C */  sw        $t8, 0xc($s0)
/* 534B4 800528B4 A2000009 */  sb        $zero, 9($s0)
/* 534B8 800528B8 AE000010 */  sw        $zero, 0x10($s0)
/* 534BC 800528BC 24840754 */  addiu     $a0, $a0, 0x754
/* 534C0 800528C0 0C015FF4 */  jal       func_80057FD0
/* 534C4 800528C4 24050060 */  addiu     $a1, $zero, 0x60
/* 534C8 800528C8 3C03A460 */  lui       $v1, 0xa460
/* 534CC 800528CC 34630010 */  ori       $v1, $v1, 0x10
/* 534D0 800528D0 8C620000 */  lw        $v0, ($v1)
/* 534D4 800528D4 3C07A460 */  lui       $a3, 0xa460
/* 534D8 800528D8 34E70014 */  ori       $a3, $a3, 0x14
/* 534DC 800528DC 30590003 */  andi      $t9, $v0, 3
/* 534E0 800528E0 13200005 */  beqz      $t9, .L800528F8
/* 534E4 800528E4 3C08A460 */  lui       $t0, 0xa460
/* 534E8 800528E8 8C620000 */  lw        $v0, ($v1)
.L800528EC:
/* 534EC 800528EC 304C0003 */  andi      $t4, $v0, 3
/* 534F0 800528F0 5580FFFE */  bnel      $t4, $zero, .L800528EC
/* 534F4 800528F4 8C620000 */  lw        $v0, ($v1)
.L800528F8:
/* 534F8 800528F8 8CE30000 */  lw        $v1, ($a3)
/* 534FC 800528FC 3508001C */  ori       $t0, $t0, 0x1c
/* 53500 80052900 3C09A460 */  lui       $t1, 0xa460
/* 53504 80052904 8D040000 */  lw        $a0, ($t0)
/* 53508 80052908 35290020 */  ori       $t1, $t1, 0x20
/* 5350C 8005290C 3C0AA460 */  lui       $t2, 0xa460
/* 53510 80052910 8D250000 */  lw        $a1, ($t1)
/* 53514 80052914 354A0018 */  ori       $t2, $t2, 0x18
/* 53518 80052918 8D460000 */  lw        $a2, ($t2)
/* 5351C 8005291C 240B00FF */  addiu     $t3, $zero, 0xff
/* 53520 80052920 ACEB0000 */  sw        $t3, ($a3)
/* 53524 80052924 AD000000 */  sw        $zero, ($t0)
/* 53528 80052928 240D0003 */  addiu     $t5, $zero, 3
/* 5352C 8005292C AD2D0000 */  sw        $t5, ($t1)
/* 53530 80052930 AD4B0000 */  sw        $t3, ($t2)
/* 53534 80052934 8E0E000C */  lw        $t6, 0xc($s0)
/* 53538 80052938 3C01A000 */  lui       $at, 0xa000
/* 5353C 8005293C 01C17825 */  or        $t7, $t6, $at
/* 53540 80052940 8DE20000 */  lw        $v0, ($t7)
/* 53544 80052944 0002CC02 */  srl       $t9, $v0, 0x10
/* 53548 80052948 00026D02 */  srl       $t5, $v0, 0x14
/* 5354C 8005294C 332C000F */  andi      $t4, $t9, 0xf
/* 53550 80052950 31AE000F */  andi      $t6, $t5, 0xf
/* 53554 80052954 0002C202 */  srl       $t8, $v0, 8
/* 53558 80052958 A20C0006 */  sb        $t4, 6($s0)
/* 5355C 8005295C A20E0007 */  sb        $t6, 7($s0)
/* 53560 80052960 A2180008 */  sb        $t8, 8($s0)
/* 53564 80052964 A2020005 */  sb        $v0, 5($s0)
/* 53568 80052968 ACE30000 */  sw        $v1, ($a3)
/* 5356C 8005296C AD040000 */  sw        $a0, ($t0)
/* 53570 80052970 AD250000 */  sw        $a1, ($t1)
/* 53574 80052974 0C018AA4 */  jal       func_80062A90
/* 53578 80052978 AD460000 */  sw        $a2, ($t2)
/* 5357C 8005297C 3C038008 */  lui       $v1, 0x8008
/* 53580 80052980 2463A87C */  addiu     $v1, $v1, -0x5784
/* 53584 80052984 8C790000 */  lw        $t9, ($v1)
/* 53588 80052988 AC700000 */  sw        $s0, ($v1)
/* 5358C 8005298C 00402025 */  or        $a0, $v0, $zero
/* 53590 80052990 0C018AC0 */  jal       func_80062B00
/* 53594 80052994 AE190000 */  sw        $t9, ($s0)
/* 53598 80052998 0C015A21 */  jal       func_80056884
/* 5359C 8005299C 00000000 */  nop       
/* 535A0 800529A0 02001025 */  or        $v0, $s0, $zero
.L800529A4:
/* 535A4 800529A4 8FBF001C */  lw        $ra, 0x1c($sp)
/* 535A8 800529A8 8FB00018 */  lw        $s0, 0x18($sp)
/* 535AC 800529AC 27BD0020 */  addiu     $sp, $sp, 0x20
/* 535B0 800529B0 03E00008 */  jr        $ra
/* 535B4 800529B4 00000000 */  nop       
/* 535B8 800529B8 00000000 */  nop       
/* 535BC 800529BC 00000000 */  nop       
