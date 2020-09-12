.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80063810
/* 64410 80063810 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 64414 80063814 8FAF0078 */  lw        $t7, 0x78($sp)
/* 64418 80063818 AFB5002C */  sw        $s5, 0x2c($sp)
/* 6441C 8006381C AFB40028 */  sw        $s4, 0x28($sp)
/* 64420 80063820 AFB1001C */  sw        $s1, 0x1c($sp)
/* 64424 80063824 AFA60070 */  sw        $a2, 0x70($sp)
/* 64428 80063828 30CEFFFF */  andi      $t6, $a2, 0xffff
/* 6442C 8006382C 24010001 */  addiu     $at, $zero, 1
/* 64430 80063830 01C03025 */  or        $a2, $t6, $zero
/* 64434 80063834 00A08825 */  or        $s1, $a1, $zero
/* 64438 80063838 0080A825 */  or        $s5, $a0, $zero
/* 6443C 8006383C AFBF003C */  sw        $ra, 0x3c($sp)
/* 64440 80063840 AFBE0038 */  sw        $fp, 0x38($sp)
/* 64444 80063844 AFB70034 */  sw        $s7, 0x34($sp)
/* 64448 80063848 AFB60030 */  sw        $s6, 0x30($sp)
/* 6444C 8006384C AFB30024 */  sw        $s3, 0x24($sp)
/* 64450 80063850 AFB20020 */  sw        $s2, 0x20($sp)
/* 64454 80063854 AFB00018 */  sw        $s0, 0x18($sp)
/* 64458 80063858 AFA70074 */  sw        $a3, 0x74($sp)
/* 6445C 8006385C 11E10008 */  beq       $t7, $at, .L80063880
/* 64460 80063860 24140002 */  addiu     $s4, $zero, 2
/* 64464 80063864 29C10007 */  slti      $at, $t6, 7
/* 64468 80063868 50200006 */  beql      $at, $zero, .L80063884
/* 6446C 8006386C 00C08025 */  or        $s0, $a2, $zero
/* 64470 80063870 51C00004 */  beql      $t6, $zero, .L80063884
/* 64474 80063874 00C08025 */  or        $s0, $a2, $zero
/* 64478 80063878 1000006C */  b         .L80063A2C
/* 6447C 8006387C 00001025 */  or        $v0, $zero, $zero
.L80063880:
/* 64480 80063880 00C08025 */  or        $s0, $a2, $zero
.L80063884:
/* 64484 80063884 0C0162FC */  jal       func_80058BF0
/* 64488 80063888 A7A60072 */  sh        $a2, 0x72($sp)
/* 6448C 8006388C 0010C0C3 */  sra       $t8, $s0, 3
/* 64490 80063890 0010C940 */  sll       $t9, $s0, 5
/* 64494 80063894 3C178008 */  lui       $s7, 0x8008
/* 64498 80063898 3C168010 */  lui       $s6, 0x8010
/* 6449C 8006389C 3C138010 */  lui       $s3, 0x8010
/* 644A0 800638A0 267323F0 */  addiu     $s3, $s3, 0x23f0
/* 644A4 800638A4 26D62180 */  addiu     $s6, $s6, 0x2180
/* 644A8 800638A8 26F7AE50 */  addiu     $s7, $s7, -0x51b0
/* 644AC 800638AC AFB90040 */  sw        $t9, 0x40($sp)
/* 644B0 800638B0 AFB80044 */  sw        $t8, 0x44($sp)
/* 644B4 800638B4 241E0003 */  addiu     $fp, $zero, 3
.L800638B8:
/* 644B8 800638B8 92C80000 */  lbu       $t0, ($s6)
/* 644BC 800638BC 24010003 */  addiu     $at, $zero, 3
/* 644C0 800638C0 02608025 */  or        $s0, $s3, $zero
/* 644C4 800638C4 15010004 */  bne       $t0, $at, .L800638D8
/* 644C8 800638C8 00001025 */  or        $v0, $zero, $zero
/* 644CC 800638CC 8EE90000 */  lw        $t1, ($s7)
/* 644D0 800638D0 52290022 */  beql      $s1, $t1, .L8006395C
/* 644D4 800638D4 02718021 */  addu      $s0, $s3, $s1
.L800638D8:
/* 644D8 800638D8 A2DE0000 */  sb        $fp, ($s6)
/* 644DC 800638DC 1A200010 */  blez      $s1, .L80063920
/* 644E0 800638E0 AEF10000 */  sw        $s1, ($s7)
/* 644E4 800638E4 32240003 */  andi      $a0, $s1, 3
/* 644E8 800638E8 10800006 */  beqz      $a0, .L80063904
/* 644EC 800638EC 00801825 */  or        $v1, $a0, $zero
.L800638F0:
/* 644F0 800638F0 24420001 */  addiu     $v0, $v0, 1
/* 644F4 800638F4 A2000000 */  sb        $zero, ($s0)
/* 644F8 800638F8 1462FFFD */  bne       $v1, $v0, .L800638F0
/* 644FC 800638FC 26100001 */  addiu     $s0, $s0, 1
/* 64500 80063900 10510007 */  beq       $v0, $s1, .L80063920
.L80063904:
/* 64504 80063904 24420004 */  addiu     $v0, $v0, 4
/* 64508 80063908 A2000000 */  sb        $zero, ($s0)
/* 6450C 8006390C A2000001 */  sb        $zero, 1($s0)
/* 64510 80063910 A2000002 */  sb        $zero, 2($s0)
/* 64514 80063914 A2000003 */  sb        $zero, 3($s0)
/* 64518 80063918 1451FFFA */  bne       $v0, $s1, .L80063904
/* 6451C 8006391C 26100004 */  addiu     $s0, $s0, 4
.L80063920:
/* 64520 80063920 240A0001 */  addiu     $t2, $zero, 1
/* 64524 80063924 AE6A003C */  sw        $t2, 0x3c($s3)
/* 64528 80063928 240B00FF */  addiu     $t3, $zero, 0xff
/* 6452C 8006392C 240C0023 */  addiu     $t4, $zero, 0x23
/* 64530 80063930 240D0001 */  addiu     $t5, $zero, 1
/* 64534 80063934 240E00FF */  addiu     $t6, $zero, 0xff
/* 64538 80063938 240F00FE */  addiu     $t7, $zero, 0xfe
/* 6453C 8006393C A20B0000 */  sb        $t3, ($s0)
/* 64540 80063940 A20C0001 */  sb        $t4, 1($s0)
/* 64544 80063944 A20D0002 */  sb        $t5, 2($s0)
/* 64548 80063948 A21E0003 */  sb        $fp, 3($s0)
/* 6454C 8006394C A20E0026 */  sb        $t6, 0x26($s0)
/* 64550 80063950 10000002 */  b         .L8006395C
/* 64554 80063954 A20F0027 */  sb        $t7, 0x27($s0)
/* 64558 80063958 02718021 */  addu      $s0, $s3, $s1
.L8006395C:
/* 6455C 8006395C 8FB80044 */  lw        $t8, 0x44($sp)
/* 64560 80063960 A2180004 */  sb        $t8, 4($s0)
/* 64564 80063964 0C018F24 */  jal       func_80063C90
/* 64568 80063968 97A40072 */  lhu       $a0, 0x72($sp)
/* 6456C 8006396C 8FB90040 */  lw        $t9, 0x40($sp)
/* 64570 80063970 26050006 */  addiu     $a1, $s0, 6
/* 64574 80063974 24060020 */  addiu     $a2, $zero, 0x20
/* 64578 80063978 00594025 */  or        $t0, $v0, $t9
/* 6457C 8006397C A2080005 */  sb        $t0, 5($s0)
/* 64580 80063980 0C018958 */  jal       func_80062560
/* 64584 80063984 8FA40074 */  lw        $a0, 0x74($sp)
/* 64588 80063988 24040001 */  addiu     $a0, $zero, 1
/* 6458C 8006398C 0C016A38 */  jal       func_8005A8E0
/* 64590 80063990 02602825 */  or        $a1, $s3, $zero
/* 64594 80063994 0C018F58 */  jal       func_80063D60
/* 64598 80063998 8FA40074 */  lw        $a0, 0x74($sp)
/* 6459C 8006399C 305200FF */  andi      $s2, $v0, 0xff
/* 645A0 800639A0 02A02025 */  or        $a0, $s5, $zero
/* 645A4 800639A4 00002825 */  or        $a1, $zero, $zero
/* 645A8 800639A8 0C015AB4 */  jal       func_80056AD0
/* 645AC 800639AC 24060001 */  addiu     $a2, $zero, 1
/* 645B0 800639B0 00002025 */  or        $a0, $zero, $zero
/* 645B4 800639B4 0C016A38 */  jal       func_8005A8E0
/* 645B8 800639B8 02602825 */  or        $a1, $s3, $zero
/* 645BC 800639BC 02A02025 */  or        $a0, $s5, $zero
/* 645C0 800639C0 00002825 */  or        $a1, $zero, $zero
/* 645C4 800639C4 0C015AB4 */  jal       func_80056AD0
/* 645C8 800639C8 24060001 */  addiu     $a2, $zero, 1
/* 645CC 800639CC 92030002 */  lbu       $v1, 2($s0)
/* 645D0 800639D0 306900C0 */  andi      $t1, $v1, 0xc0
/* 645D4 800639D4 00091903 */  sra       $v1, $t1, 4
/* 645D8 800639D8 5460000C */  bnel      $v1, $zero, .L80063A0C
/* 645DC 800639DC 24030001 */  addiu     $v1, $zero, 1
/* 645E0 800639E0 920B0026 */  lbu       $t3, 0x26($s0)
/* 645E4 800639E4 02A02025 */  or        $a0, $s5, $zero
/* 645E8 800639E8 51720009 */  beql      $t3, $s2, .L80063A10
/* 645EC 800639EC 24010004 */  addiu     $at, $zero, 4
/* 645F0 800639F0 0C0165CC */  jal       func_80059730
/* 645F4 800639F4 02202825 */  or        $a1, $s1, $zero
/* 645F8 800639F8 14400009 */  bnez      $v0, .L80063A20
/* 645FC 800639FC 00401825 */  or        $v1, $v0, $zero
/* 64600 80063A00 10000002 */  b         .L80063A0C
/* 64604 80063A04 24030004 */  addiu     $v1, $zero, 4
/* 64608 80063A08 24030001 */  addiu     $v1, $zero, 1
.L80063A0C:
/* 6460C 80063A0C 24010004 */  addiu     $at, $zero, 4
.L80063A10:
/* 64610 80063A10 14610003 */  bne       $v1, $at, .L80063A20
/* 64614 80063A14 2A820000 */  slti      $v0, $s4, 0
/* 64618 80063A18 1040FFA7 */  beqz      $v0, .L800638B8
/* 6461C 80063A1C 2694FFFF */  addiu     $s4, $s4, -1
.L80063A20:
/* 64620 80063A20 0C01630D */  jal       func_80058C34
/* 64624 80063A24 AFA30064 */  sw        $v1, 0x64($sp)
/* 64628 80063A28 8FA20064 */  lw        $v0, 0x64($sp)
.L80063A2C:
/* 6462C 80063A2C 8FBF003C */  lw        $ra, 0x3c($sp)
/* 64630 80063A30 8FB00018 */  lw        $s0, 0x18($sp)
/* 64634 80063A34 8FB1001C */  lw        $s1, 0x1c($sp)
/* 64638 80063A38 8FB20020 */  lw        $s2, 0x20($sp)
/* 6463C 80063A3C 8FB30024 */  lw        $s3, 0x24($sp)
/* 64640 80063A40 8FB40028 */  lw        $s4, 0x28($sp)
/* 64644 80063A44 8FB5002C */  lw        $s5, 0x2c($sp)
/* 64648 80063A48 8FB60030 */  lw        $s6, 0x30($sp)
/* 6464C 80063A4C 8FB70034 */  lw        $s7, 0x34($sp)
/* 64650 80063A50 8FBE0038 */  lw        $fp, 0x38($sp)
/* 64654 80063A54 03E00008 */  jr        $ra
/* 64658 80063A58 27BD0068 */  addiu     $sp, $sp, 0x68
/* 6465C 80063A5C 00000000 */  nop       

glabel func_80063A60
/* 64660 80063A60 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 64664 80063A64 AFBF003C */  sw        $ra, 0x3c($sp)
/* 64668 80063A68 AFB60030 */  sw        $s6, 0x30($sp)
/* 6466C 80063A6C AFB5002C */  sw        $s5, 0x2c($sp)
/* 64670 80063A70 AFB1001C */  sw        $s1, 0x1c($sp)
/* 64674 80063A74 00A08825 */  or        $s1, $a1, $zero
/* 64678 80063A78 0080B025 */  or        $s6, $a0, $zero
/* 6467C 80063A7C AFBE0038 */  sw        $fp, 0x38($sp)
/* 64680 80063A80 AFB70034 */  sw        $s7, 0x34($sp)
/* 64684 80063A84 AFB40028 */  sw        $s4, 0x28($sp)
/* 64688 80063A88 AFB30024 */  sw        $s3, 0x24($sp)
/* 6468C 80063A8C AFB20020 */  sw        $s2, 0x20($sp)
/* 64690 80063A90 AFB00018 */  sw        $s0, 0x18($sp)
/* 64694 80063A94 AFA60068 */  sw        $a2, 0x68($sp)
/* 64698 80063A98 AFA7006C */  sw        $a3, 0x6c($sp)
/* 6469C 80063A9C 0C0162FC */  jal       func_80058BF0
/* 646A0 80063AA0 24150002 */  addiu     $s5, $zero, 2
/* 646A4 80063AA4 97A5006A */  lhu       $a1, 0x6a($sp)
/* 646A8 80063AA8 3C1E8008 */  lui       $fp, 0x8008
/* 646AC 80063AAC 3C178010 */  lui       $s7, 0x8010
/* 646B0 80063AB0 3C148010 */  lui       $s4, 0x8010
/* 646B4 80063AB4 000570C3 */  sra       $t6, $a1, 3
/* 646B8 80063AB8 00057940 */  sll       $t7, $a1, 5
/* 646BC 80063ABC AFAF0040 */  sw        $t7, 0x40($sp)
/* 646C0 80063AC0 AFAE0044 */  sw        $t6, 0x44($sp)
/* 646C4 80063AC4 269423F0 */  addiu     $s4, $s4, 0x23f0
/* 646C8 80063AC8 26F72180 */  addiu     $s7, $s7, 0x2180
/* 646CC 80063ACC 27DEAE50 */  addiu     $fp, $fp, -0x51b0
.L80063AD0:
/* 646D0 80063AD0 92F80000 */  lbu       $t8, ($s7)
/* 646D4 80063AD4 24010002 */  addiu     $at, $zero, 2
/* 646D8 80063AD8 97A5006A */  lhu       $a1, 0x6a($sp)
/* 646DC 80063ADC 17010003 */  bne       $t8, $at, .L80063AEC
/* 646E0 80063AE0 02808025 */  or        $s0, $s4, $zero
/* 646E4 80063AE4 8FD90000 */  lw        $t9, ($fp)
/* 646E8 80063AE8 12390023 */  beq       $s1, $t9, .L80063B78
.L80063AEC:
/* 646EC 80063AEC 24080002 */  addiu     $t0, $zero, 2
/* 646F0 80063AF0 A2E80000 */  sb        $t0, ($s7)
/* 646F4 80063AF4 AFD10000 */  sw        $s1, ($fp)
/* 646F8 80063AF8 1A200010 */  blez      $s1, .L80063B3C
/* 646FC 80063AFC 00001025 */  or        $v0, $zero, $zero
/* 64700 80063B00 32240003 */  andi      $a0, $s1, 3
/* 64704 80063B04 10800006 */  beqz      $a0, .L80063B20
/* 64708 80063B08 00801825 */  or        $v1, $a0, $zero
.L80063B0C:
/* 6470C 80063B0C 24420001 */  addiu     $v0, $v0, 1
/* 64710 80063B10 A2000000 */  sb        $zero, ($s0)
/* 64714 80063B14 1462FFFD */  bne       $v1, $v0, .L80063B0C
/* 64718 80063B18 26100001 */  addiu     $s0, $s0, 1
/* 6471C 80063B1C 10510007 */  beq       $v0, $s1, .L80063B3C
.L80063B20:
/* 64720 80063B20 24420004 */  addiu     $v0, $v0, 4
/* 64724 80063B24 A2000000 */  sb        $zero, ($s0)
/* 64728 80063B28 A2000001 */  sb        $zero, 1($s0)
/* 6472C 80063B2C A2000002 */  sb        $zero, 2($s0)
/* 64730 80063B30 A2000003 */  sb        $zero, 3($s0)
/* 64734 80063B34 1451FFFA */  bne       $v0, $s1, .L80063B20
/* 64738 80063B38 26100004 */  addiu     $s0, $s0, 4
.L80063B3C:
/* 6473C 80063B3C 24090001 */  addiu     $t1, $zero, 1
/* 64740 80063B40 AE89003C */  sw        $t1, 0x3c($s4)
/* 64744 80063B44 240A00FF */  addiu     $t2, $zero, 0xff
/* 64748 80063B48 240B0003 */  addiu     $t3, $zero, 3
/* 6474C 80063B4C 240C0021 */  addiu     $t4, $zero, 0x21
/* 64750 80063B50 240D0002 */  addiu     $t5, $zero, 2
/* 64754 80063B54 240E00FF */  addiu     $t6, $zero, 0xff
/* 64758 80063B58 240F00FE */  addiu     $t7, $zero, 0xfe
/* 6475C 80063B5C A20A0000 */  sb        $t2, ($s0)
/* 64760 80063B60 A20B0001 */  sb        $t3, 1($s0)
/* 64764 80063B64 A20C0002 */  sb        $t4, 2($s0)
/* 64768 80063B68 A20D0003 */  sb        $t5, 3($s0)
/* 6476C 80063B6C A20E0026 */  sb        $t6, 0x26($s0)
/* 64770 80063B70 10000002 */  b         .L80063B7C
/* 64774 80063B74 A20F0027 */  sb        $t7, 0x27($s0)
.L80063B78:
/* 64778 80063B78 02918021 */  addu      $s0, $s4, $s1
.L80063B7C:
/* 6477C 80063B7C 8FB80044 */  lw        $t8, 0x44($sp)
/* 64780 80063B80 30A4FFFF */  andi      $a0, $a1, 0xffff
/* 64784 80063B84 0C018F24 */  jal       func_80063C90
/* 64788 80063B88 A2180004 */  sb        $t8, 4($s0)
/* 6478C 80063B8C 8FB90040 */  lw        $t9, 0x40($sp)
/* 64790 80063B90 24040001 */  addiu     $a0, $zero, 1
/* 64794 80063B94 02802825 */  or        $a1, $s4, $zero
/* 64798 80063B98 00594025 */  or        $t0, $v0, $t9
/* 6479C 80063B9C 0C016A38 */  jal       func_8005A8E0
/* 647A0 80063BA0 A2080005 */  sb        $t0, 5($s0)
/* 647A4 80063BA4 02C02025 */  or        $a0, $s6, $zero
/* 647A8 80063BA8 00002825 */  or        $a1, $zero, $zero
/* 647AC 80063BAC 0C015AB4 */  jal       func_80056AD0
/* 647B0 80063BB0 24060001 */  addiu     $a2, $zero, 1
/* 647B4 80063BB4 00002025 */  or        $a0, $zero, $zero
/* 647B8 80063BB8 0C016A38 */  jal       func_8005A8E0
/* 647BC 80063BBC 02802825 */  or        $a1, $s4, $zero
/* 647C0 80063BC0 02C02025 */  or        $a0, $s6, $zero
/* 647C4 80063BC4 00002825 */  or        $a1, $zero, $zero
/* 647C8 80063BC8 0C015AB4 */  jal       func_80056AD0
/* 647CC 80063BCC 24060001 */  addiu     $a2, $zero, 1
/* 647D0 80063BD0 92130002 */  lbu       $s3, 2($s0)
/* 647D4 80063BD4 26120006 */  addiu     $s2, $s0, 6
/* 647D8 80063BD8 326900C0 */  andi      $t1, $s3, 0xc0
/* 647DC 80063BDC 00099903 */  sra       $s3, $t1, 4
/* 647E0 80063BE0 56600014 */  bnel      $s3, $zero, .L80063C34
/* 647E4 80063BE4 24130001 */  addiu     $s3, $zero, 1
/* 647E8 80063BE8 0C018F58 */  jal       func_80063D60
/* 647EC 80063BEC 02402025 */  or        $a0, $s2, $zero
/* 647F0 80063BF0 920B0026 */  lbu       $t3, 0x26($s0)
/* 647F4 80063BF4 02402025 */  or        $a0, $s2, $zero
/* 647F8 80063BF8 8FA5006C */  lw        $a1, 0x6c($sp)
/* 647FC 80063BFC 11620008 */  beq       $t3, $v0, .L80063C20
/* 64800 80063C00 00000000 */  nop       
/* 64804 80063C04 02C02025 */  or        $a0, $s6, $zero
/* 64808 80063C08 0C0165CC */  jal       func_80059730
/* 6480C 80063C0C 02202825 */  or        $a1, $s1, $zero
/* 64810 80063C10 1440000D */  bnez      $v0, .L80063C48
/* 64814 80063C14 00409825 */  or        $s3, $v0, $zero
/* 64818 80063C18 10000006 */  b         .L80063C34
/* 6481C 80063C1C 24130004 */  addiu     $s3, $zero, 4
.L80063C20:
/* 64820 80063C20 0C018958 */  jal       func_80062560
/* 64824 80063C24 24060020 */  addiu     $a2, $zero, 0x20
/* 64828 80063C28 10000003 */  b         .L80063C38
/* 6482C 80063C2C 24010004 */  addiu     $at, $zero, 4
/* 64830 80063C30 24130001 */  addiu     $s3, $zero, 1
.L80063C34:
/* 64834 80063C34 24010004 */  addiu     $at, $zero, 4
.L80063C38:
/* 64838 80063C38 16610003 */  bne       $s3, $at, .L80063C48
/* 6483C 80063C3C 2AA20000 */  slti      $v0, $s5, 0
/* 64840 80063C40 1040FFA3 */  beqz      $v0, .L80063AD0
/* 64844 80063C44 26B5FFFF */  addiu     $s5, $s5, -1
.L80063C48:
/* 64848 80063C48 0C01630D */  jal       func_80058C34
/* 6484C 80063C4C 00000000 */  nop       
/* 64850 80063C50 8FBF003C */  lw        $ra, 0x3c($sp)
/* 64854 80063C54 02601025 */  or        $v0, $s3, $zero
/* 64858 80063C58 8FB30024 */  lw        $s3, 0x24($sp)
/* 6485C 80063C5C 8FB00018 */  lw        $s0, 0x18($sp)
/* 64860 80063C60 8FB1001C */  lw        $s1, 0x1c($sp)
/* 64864 80063C64 8FB20020 */  lw        $s2, 0x20($sp)
/* 64868 80063C68 8FB40028 */  lw        $s4, 0x28($sp)
/* 6486C 80063C6C 8FB5002C */  lw        $s5, 0x2c($sp)
/* 64870 80063C70 8FB60030 */  lw        $s6, 0x30($sp)
/* 64874 80063C74 8FB70034 */  lw        $s7, 0x34($sp)
/* 64878 80063C78 8FBE0038 */  lw        $fp, 0x38($sp)
/* 6487C 80063C7C 03E00008 */  jr        $ra
/* 64880 80063C80 27BD0060 */  addiu     $sp, $sp, 0x60
/* 64884 80063C84 00000000 */  nop       
/* 64888 80063C88 00000000 */  nop       
/* 6488C 80063C8C 00000000 */  nop       