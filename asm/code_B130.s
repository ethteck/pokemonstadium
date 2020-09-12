.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8000A530
/* B130 8000A530 80A20000 */  lb        $v0, ($a1)
/* B134 8000A534 24830001 */  addiu     $v1, $a0, 1
/* B138 8000A538 24A50001 */  addiu     $a1, $a1, 1
/* B13C 8000A53C 10400006 */  beqz      $v0, .L8000A558
/* B140 8000A540 A0820000 */  sb        $v0, ($a0)
.L8000A544:
/* B144 8000A544 80A20000 */  lb        $v0, ($a1)
/* B148 8000A548 24630001 */  addiu     $v1, $v1, 1
/* B14C 8000A54C 24A50001 */  addiu     $a1, $a1, 1
/* B150 8000A550 1440FFFC */  bnez      $v0, .L8000A544
/* B154 8000A554 A062FFFF */  sb        $v0, -1($v1)
.L8000A558:
/* B158 8000A558 03E00008 */  jr        $ra
/* B15C 8000A55C 00801025 */  or        $v0, $a0, $zero

glabel func_8000A560
/* B160 8000A560 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* B164 8000A564 AFBF0014 */  sw        $ra, 0x14($sp)
/* B168 8000A568 AFA40018 */  sw        $a0, 0x18($sp)
/* B16C 8000A56C 0C01789F */  jal       func_8005E27C
/* B170 8000A570 AFA5001C */  sw        $a1, 0x1c($sp)
/* B174 8000A574 8FA5001C */  lw        $a1, 0x1c($sp)
/* B178 8000A578 8FA40018 */  lw        $a0, 0x18($sp)
/* B17C 8000A57C 80A30000 */  lb        $v1, ($a1)
/* B180 8000A580 24A50001 */  addiu     $a1, $a1, 1
/* B184 8000A584 24840001 */  addiu     $a0, $a0, 1
/* B188 8000A588 10600006 */  beqz      $v1, .L8000A5A4
/* B18C 8000A58C A083FFFF */  sb        $v1, -1($a0)
.L8000A590:
/* B190 8000A590 80A30000 */  lb        $v1, ($a1)
/* B194 8000A594 24840001 */  addiu     $a0, $a0, 1
/* B198 8000A598 24A50001 */  addiu     $a1, $a1, 1
/* B19C 8000A59C 1460FFFC */  bnez      $v1, .L8000A590
/* B1A0 8000A5A0 A083FFFF */  sb        $v1, -1($a0)
.L8000A5A4:
/* B1A4 8000A5A4 8FBF0014 */  lw        $ra, 0x14($sp)
/* B1A8 8000A5A8 27BD0018 */  addiu     $sp, $sp, 0x18
/* B1AC 8000A5AC 00801025 */  or        $v0, $a0, $zero
/* B1B0 8000A5B0 03E00008 */  jr        $ra
/* B1B4 8000A5B4 00000000 */  nop       

glabel func_8000A5B8
/* B1B8 8000A5B8 80830000 */  lb        $v1, ($a0)
/* B1BC 8000A5BC 80A60000 */  lb        $a2, ($a1)
/* B1C0 8000A5C0 5466000C */  bnel      $v1, $a2, .L8000A5F4
/* B1C4 8000A5C4 00661023 */  subu      $v0, $v1, $a2
.L8000A5C8:
/* B1C8 8000A5C8 54600004 */  bnel      $v1, $zero, .L8000A5DC
/* B1CC 8000A5CC 80830001 */  lb        $v1, 1($a0)
/* B1D0 8000A5D0 03E00008 */  jr        $ra
/* B1D4 8000A5D4 00001025 */  or        $v0, $zero, $zero
/* B1D8 8000A5D8 80830001 */  lb        $v1, 1($a0)
.L8000A5DC:
/* B1DC 8000A5DC 80A60001 */  lb        $a2, 1($a1)
/* B1E0 8000A5E0 24840001 */  addiu     $a0, $a0, 1
/* B1E4 8000A5E4 24A50001 */  addiu     $a1, $a1, 1
/* B1E8 8000A5E8 1066FFF7 */  beq       $v1, $a2, .L8000A5C8
/* B1EC 8000A5EC 00000000 */  nop       
/* B1F0 8000A5F0 00661023 */  subu      $v0, $v1, $a2
.L8000A5F4:
/* B1F4 8000A5F4 03E00008 */  jr        $ra
/* B1F8 8000A5F8 00000000 */  nop       

glabel func_8000A5FC
/* B1FC 8000A5FC 2CC30001 */  sltiu     $v1, $a2, 1
/* B200 8000A600 38630001 */  xori      $v1, $v1, 1
/* B204 8000A604 00801025 */  or        $v0, $a0, $zero
/* B208 8000A608 10600007 */  beqz      $v1, .L8000A628
/* B20C 8000A60C 24C6FFFF */  addiu     $a2, $a2, -1
.L8000A610:
/* B210 8000A610 2CC30001 */  sltiu     $v1, $a2, 1
/* B214 8000A614 38630001 */  xori      $v1, $v1, 1
/* B218 8000A618 24C6FFFF */  addiu     $a2, $a2, -1
/* B21C 8000A61C A0450000 */  sb        $a1, ($v0)
/* B220 8000A620 1460FFFB */  bnez      $v1, .L8000A610
/* B224 8000A624 24420001 */  addiu     $v0, $v0, 1
.L8000A628:
/* B228 8000A628 03E00008 */  jr        $ra
/* B22C 8000A62C 00801025 */  or        $v0, $a0, $zero

glabel func_8000A630
/* B230 8000A630 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* B234 8000A634 AFBF0014 */  sw        $ra, 0x14($sp)
/* B238 8000A638 AFA40048 */  sw        $a0, 0x48($sp)
/* B23C 8000A63C AFA5004C */  sw        $a1, 0x4c($sp)
/* B240 8000A640 AFA00020 */  sw        $zero, 0x20($sp)
/* B244 8000A644 00003025 */  or        $a2, $zero, $zero
/* B248 8000A648 0C002BD0 */  jal       func_8000AF40
/* B24C 8000A64C 24070020 */  addiu     $a3, $zero, 0x20
/* B250 8000A650 1440001C */  bnez      $v0, .L8000A6C4
/* B254 8000A654 8FA40048 */  lw        $a0, 0x48($sp)
/* B258 8000A658 27A50024 */  addiu     $a1, $sp, 0x24
/* B25C 8000A65C 00003025 */  or        $a2, $zero, $zero
/* B260 8000A660 0C002BAF */  jal       func_8000AEBC
/* B264 8000A664 24070020 */  addiu     $a3, $zero, 0x20
/* B268 8000A668 14400016 */  bnez      $v0, .L8000A6C4
/* B26C 8000A66C 27A40024 */  addiu     $a0, $sp, 0x24
/* B270 8000A670 8FA5004C */  lw        $a1, 0x4c($sp)
/* B274 8000A674 0C017B90 */  jal       func_8005EE40
/* B278 8000A678 24060020 */  addiu     $a2, $zero, 0x20
/* B27C 8000A67C 14400011 */  bnez      $v0, .L8000A6C4
/* B280 8000A680 8FAE0048 */  lw        $t6, 0x48($sp)
/* B284 8000A684 000E7880 */  sll       $t7, $t6, 2
/* B288 8000A688 01EE7823 */  subu      $t7, $t7, $t6
/* B28C 8000A68C 000F7880 */  sll       $t7, $t7, 2
/* B290 8000A690 01EE7821 */  addu      $t7, $t7, $t6
/* B294 8000A694 3C18800B */  lui       $t8, 0x800b
/* B298 8000A698 27188100 */  addiu     $t8, $t8, -0x7f00
/* B29C 8000A69C 000F78C0 */  sll       $t7, $t7, 3
/* B2A0 8000A6A0 01F82021 */  addu      $a0, $t7, $t8
/* B2A4 8000A6A4 0C0177A8 */  jal       func_8005DEA0
/* B2A8 8000A6A8 27A50047 */  addiu     $a1, $sp, 0x47
/* B2AC 8000A6AC 14400005 */  bnez      $v0, .L8000A6C4
/* B2B0 8000A6B0 93B90047 */  lbu       $t9, 0x47($sp)
/* B2B4 8000A6B4 33280004 */  andi      $t0, $t9, 4
/* B2B8 8000A6B8 0008482B */  sltu      $t1, $zero, $t0
/* B2BC 8000A6BC 2D2A0001 */  sltiu     $t2, $t1, 1
/* B2C0 8000A6C0 AFAA0020 */  sw        $t2, 0x20($sp)
.L8000A6C4:
/* B2C4 8000A6C4 8FBF0014 */  lw        $ra, 0x14($sp)
/* B2C8 8000A6C8 8FA20020 */  lw        $v0, 0x20($sp)
/* B2CC 8000A6CC 27BD0048 */  addiu     $sp, $sp, 0x48
/* B2D0 8000A6D0 03E00008 */  jr        $ra
/* B2D4 8000A6D4 00000000 */  nop       

glabel func_8000A6D8
/* B2D8 8000A6D8 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* B2DC 8000A6DC AFB30020 */  sw        $s3, 0x20($sp)
/* B2E0 8000A6E0 AFB00014 */  sw        $s0, 0x14($sp)
/* B2E4 8000A6E4 00A09825 */  or        $s3, $a1, $zero
/* B2E8 8000A6E8 AFBF0024 */  sw        $ra, 0x24($sp)
/* B2EC 8000A6EC AFB2001C */  sw        $s2, 0x1c($sp)
/* B2F0 8000A6F0 AFB10018 */  sw        $s1, 0x18($sp)
/* B2F4 8000A6F4 AFA40058 */  sw        $a0, 0x58($sp)
/* B2F8 8000A6F8 14A00002 */  bnez      $a1, .L8000A704
/* B2FC 8000A6FC 00008025 */  or        $s0, $zero, $zero
/* B300 8000A700 27B30034 */  addiu     $s3, $sp, 0x34
.L8000A704:
/* B304 8000A704 02602025 */  or        $a0, $s3, $zero
/* B308 8000A708 24050055 */  addiu     $a1, $zero, 0x55
/* B30C 8000A70C 0C00297F */  jal       func_8000A5FC
/* B310 8000A710 24060020 */  addiu     $a2, $zero, 0x20
/* B314 8000A714 8FA40058 */  lw        $a0, 0x58($sp)
/* B318 8000A718 0C00298C */  jal       func_8000A630
/* B31C 8000A71C 02602825 */  or        $a1, $s3, $zero
/* B320 8000A720 10400015 */  beqz      $v0, .L8000A778
/* B324 8000A724 02602025 */  or        $a0, $s3, $zero
/* B328 8000A728 240500AA */  addiu     $a1, $zero, 0xaa
/* B32C 8000A72C 0C00297F */  jal       func_8000A5FC
/* B330 8000A730 24060020 */  addiu     $a2, $zero, 0x20
/* B334 8000A734 8FA40058 */  lw        $a0, 0x58($sp)
/* B338 8000A738 0C00298C */  jal       func_8000A630
/* B33C 8000A73C 02602825 */  or        $a1, $s3, $zero
/* B340 8000A740 1040000D */  beqz      $v0, .L8000A778
/* B344 8000A744 02608825 */  or        $s1, $s3, $zero
/* B348 8000A748 00008025 */  or        $s0, $zero, $zero
/* B34C 8000A74C 24120020 */  addiu     $s2, $zero, 0x20
.L8000A750:
/* B350 8000A750 0C016F40 */  jal       func_8005BD00
/* B354 8000A754 00000000 */  nop       
/* B358 8000A758 26100001 */  addiu     $s0, $s0, 1
/* B35C 8000A75C 26310001 */  addiu     $s1, $s1, 1
/* B360 8000A760 1612FFFB */  bne       $s0, $s2, .L8000A750
/* B364 8000A764 A222FFFF */  sb        $v0, -1($s1)
/* B368 8000A768 8FA40058 */  lw        $a0, 0x58($sp)
/* B36C 8000A76C 0C00298C */  jal       func_8000A630
/* B370 8000A770 02602825 */  or        $a1, $s3, $zero
/* B374 8000A774 00408025 */  or        $s0, $v0, $zero
.L8000A778:
/* B378 8000A778 8FBF0024 */  lw        $ra, 0x24($sp)
/* B37C 8000A77C 02001025 */  or        $v0, $s0, $zero
/* B380 8000A780 8FB00014 */  lw        $s0, 0x14($sp)
/* B384 8000A784 8FB10018 */  lw        $s1, 0x18($sp)
/* B388 8000A788 8FB2001C */  lw        $s2, 0x1c($sp)
/* B38C 8000A78C 8FB30020 */  lw        $s3, 0x20($sp)
/* B390 8000A790 03E00008 */  jr        $ra
/* B394 8000A794 27BD0058 */  addiu     $sp, $sp, 0x58

glabel func_8000A798
/* B398 8000A798 27BDFF80 */  addiu     $sp, $sp, -0x80
/* B39C 8000A79C AFB00018 */  sw        $s0, 0x18($sp)
/* B3A0 8000A7A0 00808025 */  or        $s0, $a0, $zero
/* B3A4 8000A7A4 AFBF001C */  sw        $ra, 0x1c($sp)
/* B3A8 8000A7A8 AFA60088 */  sw        $a2, 0x88($sp)
/* B3AC 8000A7AC 10A00005 */  beqz      $a1, .L8000A7C4
/* B3B0 8000A7B0 AFA00028 */  sw        $zero, 0x28($sp)
/* B3B4 8000A7B4 3C0E800B */  lui       $t6, 0x800b
/* B3B8 8000A7B8 01C47021 */  addu      $t6, $t6, $a0
/* B3BC 8000A7BC 91CE82A0 */  lbu       $t6, -0x7d60($t6)
/* B3C0 8000A7C0 A0AE0000 */  sb        $t6, ($a1)
.L8000A7C4:
/* B3C4 8000A7C4 3C0F800B */  lui       $t7, 0x800b
/* B3C8 8000A7C8 25EF82A0 */  addiu     $t7, $t7, -0x7d60
/* B3CC 8000A7CC 020F1021 */  addu      $v0, $s0, $t7
/* B3D0 8000A7D0 90580000 */  lbu       $t8, ($v0)
/* B3D4 8000A7D4 24010001 */  addiu     $at, $zero, 1
/* B3D8 8000A7D8 0010C880 */  sll       $t9, $s0, 2
/* B3DC 8000A7DC 17010003 */  bne       $t8, $at, .L8000A7EC
/* B3E0 8000A7E0 0330C823 */  subu      $t9, $t9, $s0
/* B3E4 8000A7E4 10000023 */  b         .L8000A874
/* B3E8 8000A7E8 24020001 */  addiu     $v0, $zero, 1
.L8000A7EC:
/* B3EC 8000A7EC 0019C880 */  sll       $t9, $t9, 2
/* B3F0 8000A7F0 0330C821 */  addu      $t9, $t9, $s0
/* B3F4 8000A7F4 3C08800B */  lui       $t0, 0x800b
/* B3F8 8000A7F8 25088100 */  addiu     $t0, $t0, -0x7f00
/* B3FC 8000A7FC 0019C8C0 */  sll       $t9, $t9, 3
/* B400 8000A800 03282021 */  addu      $a0, $t9, $t0
/* B404 8000A804 AFA40020 */  sw        $a0, 0x20($sp)
/* B408 8000A808 27A5002C */  addiu     $a1, $sp, 0x2c
/* B40C 8000A80C 27A6007F */  addiu     $a2, $sp, 0x7f
/* B410 8000A810 0C018CD4 */  jal       func_80063350
/* B414 8000A814 AFA20024 */  sw        $v0, 0x24($sp)
/* B418 8000A818 10400003 */  beqz      $v0, .L8000A828
/* B41C 8000A81C 02002025 */  or        $a0, $s0, $zero
/* B420 8000A820 0C00AC9D */  jal       func_8002B274
/* B424 8000A824 24050001 */  addiu     $a1, $zero, 1
.L8000A828:
/* B428 8000A828 93A9007F */  lbu       $t1, 0x7f($sp)
/* B42C 8000A82C 8FA40020 */  lw        $a0, 0x20($sp)
/* B430 8000A830 312A0008 */  andi      $t2, $t1, 8
/* B434 8000A834 5140000C */  beql      $t2, $zero, .L8000A868
/* B438 8000A838 8FAC0024 */  lw        $t4, 0x24($sp)
/* B43C 8000A83C 0C0160B0 */  jal       func_800582C0
/* B440 8000A840 27A5007F */  addiu     $a1, $sp, 0x7f
/* B444 8000A844 54400008 */  bnel      $v0, $zero, .L8000A868
/* B448 8000A848 8FAC0024 */  lw        $t4, 0x24($sp)
/* B44C 8000A84C 0C00365C */  jal       func_8000D970
/* B450 8000A850 8FA40020 */  lw        $a0, 0x20($sp)
/* B454 8000A854 02002025 */  or        $a0, $s0, $zero
/* B458 8000A858 0C0029B6 */  jal       func_8000A6D8
/* B45C 8000A85C 8FA50088 */  lw        $a1, 0x88($sp)
/* B460 8000A860 AFA20028 */  sw        $v0, 0x28($sp)
/* B464 8000A864 8FAC0024 */  lw        $t4, 0x24($sp)
.L8000A868:
/* B468 8000A868 240B0001 */  addiu     $t3, $zero, 1
/* B46C 8000A86C A18B0000 */  sb        $t3, ($t4)
/* B470 8000A870 8FA20028 */  lw        $v0, 0x28($sp)
.L8000A874:
/* B474 8000A874 8FBF001C */  lw        $ra, 0x1c($sp)
/* B478 8000A878 8FB00018 */  lw        $s0, 0x18($sp)
/* B47C 8000A87C 27BD0080 */  addiu     $sp, $sp, 0x80
/* B480 8000A880 03E00008 */  jr        $ra
/* B484 8000A884 00000000 */  nop       

glabel func_8000A888
/* B488 8000A888 00047880 */  sll       $t7, $a0, 2
/* B48C 8000A88C 01E47823 */  subu      $t7, $t7, $a0
/* B490 8000A890 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* B494 8000A894 000F7880 */  sll       $t7, $t7, 2
/* B498 8000A898 01E47821 */  addu      $t7, $t7, $a0
/* B49C 8000A89C 3C18800B */  lui       $t8, 0x800b
/* B4A0 8000A8A0 AFA40028 */  sw        $a0, 0x28($sp)
/* B4A4 8000A8A4 27188100 */  addiu     $t8, $t8, -0x7f00
/* B4A8 8000A8A8 000F78C0 */  sll       $t7, $t7, 3
/* B4AC 8000A8AC AFBF0014 */  sw        $ra, 0x14($sp)
/* B4B0 8000A8B0 AFA5002C */  sw        $a1, 0x2c($sp)
/* B4B4 8000A8B4 01F82021 */  addu      $a0, $t7, $t8
/* B4B8 8000A8B8 AFA40018 */  sw        $a0, 0x18($sp)
/* B4BC 8000A8BC 0C0177A8 */  jal       func_8005DEA0
/* B4C0 8000A8C0 27A50027 */  addiu     $a1, $sp, 0x27
/* B4C4 8000A8C4 10400003 */  beqz      $v0, .L8000A8D4
/* B4C8 8000A8C8 8FA40028 */  lw        $a0, 0x28($sp)
/* B4CC 8000A8CC 0C00AC9D */  jal       func_8002B274
/* B4D0 8000A8D0 24050001 */  addiu     $a1, $zero, 1
.L8000A8D4:
/* B4D4 8000A8D4 93A30027 */  lbu       $v1, 0x27($sp)
/* B4D8 8000A8D8 93B9002F */  lbu       $t9, 0x2f($sp)
/* B4DC 8000A8DC 8FA40018 */  lw        $a0, 0x18($sp)
/* B4E0 8000A8E0 30630004 */  andi      $v1, $v1, 4
/* B4E4 8000A8E4 0003182B */  sltu      $v1, $zero, $v1
/* B4E8 8000A8E8 17200009 */  bnez      $t9, .L8000A910
/* B4EC 8000A8EC 2C630001 */  sltiu     $v1, $v1, 1
/* B4F0 8000A8F0 00002825 */  or        $a1, $zero, $zero
/* B4F4 8000A8F4 0C0161D4 */  jal       func_80058750
/* B4F8 8000A8F8 AFA30020 */  sw        $v1, 0x20($sp)
/* B4FC 8000A8FC 8FA80028 */  lw        $t0, 0x28($sp)
/* B500 8000A900 3C01800B */  lui       $at, 0x800b
/* B504 8000A904 8FA30020 */  lw        $v1, 0x20($sp)
/* B508 8000A908 00280821 */  addu      $at, $at, $t0
/* B50C 8000A90C A02082A0 */  sb        $zero, -0x7d60($at)
.L8000A910:
/* B510 8000A910 8FBF0014 */  lw        $ra, 0x14($sp)
/* B514 8000A914 27BD0028 */  addiu     $sp, $sp, 0x28
/* B518 8000A918 00601025 */  or        $v0, $v1, $zero
/* B51C 8000A91C 03E00008 */  jr        $ra
/* B520 8000A920 00000000 */  nop       

glabel func_8000A924
/* B524 8000A924 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* B528 8000A928 AFB30020 */  sw        $s3, 0x20($sp)
/* B52C 8000A92C AFB2001C */  sw        $s2, 0x1c($sp)
/* B530 8000A930 AFB50028 */  sw        $s5, 0x28($sp)
/* B534 8000A934 AFB40024 */  sw        $s4, 0x24($sp)
/* B538 8000A938 AFB00014 */  sw        $s0, 0x14($sp)
/* B53C 8000A93C 3C12800B */  lui       $s2, 0x800b
/* B540 8000A940 3C13800B */  lui       $s3, 0x800b
/* B544 8000A944 AFBF002C */  sw        $ra, 0x2c($sp)
/* B548 8000A948 AFB10018 */  sw        $s1, 0x18($sp)
/* B54C 8000A94C 26738100 */  addiu     $s3, $s3, -0x7f00
/* B550 8000A950 265282A4 */  addiu     $s2, $s2, -0x7d5c
/* B554 8000A954 00008025 */  or        $s0, $zero, $zero
/* B558 8000A958 24140068 */  addiu     $s4, $zero, 0x68
/* B55C 8000A95C 24150004 */  addiu     $s5, $zero, 4
/* B560 8000A960 924E0000 */  lbu       $t6, ($s2)
.L8000A964:
/* B564 8000A964 240F0001 */  addiu     $t7, $zero, 1
/* B568 8000A968 020FC004 */  sllv      $t8, $t7, $s0
/* B56C 8000A96C 01D8C824 */  and       $t9, $t6, $t8
/* B570 8000A970 5320000C */  beql      $t9, $zero, .L8000A9A4
/* B574 8000A974 26100001 */  addiu     $s0, $s0, 1
/* B578 8000A978 02140019 */  multu     $s0, $s4
/* B57C 8000A97C 3C09800B */  lui       $t1, 0x800b
/* B580 8000A980 252982A0 */  addiu     $t1, $t1, -0x7d60
/* B584 8000A984 02098821 */  addu      $s1, $s0, $t1
/* B588 8000A988 00002825 */  or        $a1, $zero, $zero
/* B58C 8000A98C 00004012 */  mflo      $t0
/* B590 8000A990 02682021 */  addu      $a0, $s3, $t0
/* B594 8000A994 0C0161D4 */  jal       func_80058750
/* B598 8000A998 00000000 */  nop       
/* B59C 8000A99C A2200000 */  sb        $zero, ($s1)
/* B5A0 8000A9A0 26100001 */  addiu     $s0, $s0, 1
.L8000A9A4:
/* B5A4 8000A9A4 5615FFEF */  bnel      $s0, $s5, .L8000A964
/* B5A8 8000A9A8 924E0000 */  lbu       $t6, ($s2)
/* B5AC 8000A9AC 8FBF002C */  lw        $ra, 0x2c($sp)
/* B5B0 8000A9B0 8FB00014 */  lw        $s0, 0x14($sp)
/* B5B4 8000A9B4 8FB10018 */  lw        $s1, 0x18($sp)
/* B5B8 8000A9B8 8FB2001C */  lw        $s2, 0x1c($sp)
/* B5BC 8000A9BC 8FB30020 */  lw        $s3, 0x20($sp)
/* B5C0 8000A9C0 8FB40024 */  lw        $s4, 0x24($sp)
/* B5C4 8000A9C4 8FB50028 */  lw        $s5, 0x28($sp)
/* B5C8 8000A9C8 03E00008 */  jr        $ra
/* B5CC 8000A9CC 27BD0030 */  addiu     $sp, $sp, 0x30

glabel func_8000A9D0
/* B5D0 8000A9D0 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* B5D4 8000A9D4 AFBF001C */  sw        $ra, 0x1c($sp)
/* B5D8 8000A9D8 AFB00018 */  sw        $s0, 0x18($sp)
/* B5DC 8000A9DC 908E004A */  lbu       $t6, 0x4a($a0)
/* B5E0 8000A9E0 24010001 */  addiu     $at, $zero, 1
/* B5E4 8000A9E4 A0800043 */  sb        $zero, 0x43($a0)
/* B5E8 8000A9E8 15C1001E */  bne       $t6, $at, .L8000AA64
/* B5EC 8000A9EC 24900034 */  addiu     $s0, $a0, 0x34
/* B5F0 8000A9F0 3C058008 */  lui       $a1, 0x8008
/* B5F4 8000A9F4 24A5B3C0 */  addiu     $a1, $a1, -0x4c40
/* B5F8 8000A9F8 0C00296E */  jal       func_8000A5B8
/* B5FC 8000A9FC 02002025 */  or        $a0, $s0, $zero
/* B600 8000AA00 14400003 */  bnez      $v0, .L8000AA10
/* B604 8000AA04 02002025 */  or        $a0, $s0, $zero
/* B608 8000AA08 10000017 */  b         .L8000AA68
/* B60C 8000AA0C 24020001 */  addiu     $v0, $zero, 1
.L8000AA10:
/* B610 8000AA10 3C058008 */  lui       $a1, 0x8008
/* B614 8000AA14 0C00296E */  jal       func_8000A5B8
/* B618 8000AA18 24A5B3CC */  addiu     $a1, $a1, -0x4c34
/* B61C 8000AA1C 14400003 */  bnez      $v0, .L8000AA2C
/* B620 8000AA20 02002025 */  or        $a0, $s0, $zero
/* B624 8000AA24 10000010 */  b         .L8000AA68
/* B628 8000AA28 24020001 */  addiu     $v0, $zero, 1
.L8000AA2C:
/* B62C 8000AA2C 3C058008 */  lui       $a1, 0x8008
/* B630 8000AA30 0C00296E */  jal       func_8000A5B8
/* B634 8000AA34 24A5B3DC */  addiu     $a1, $a1, -0x4c24
/* B638 8000AA38 14400003 */  bnez      $v0, .L8000AA48
/* B63C 8000AA3C 02002025 */  or        $a0, $s0, $zero
/* B640 8000AA40 10000009 */  b         .L8000AA68
/* B644 8000AA44 24020001 */  addiu     $v0, $zero, 1
.L8000AA48:
/* B648 8000AA48 3C058008 */  lui       $a1, 0x8008
/* B64C 8000AA4C 0C00296E */  jal       func_8000A5B8
/* B650 8000AA50 24A5B3EC */  addiu     $a1, $a1, -0x4c14
/* B654 8000AA54 54400004 */  bnel      $v0, $zero, .L8000AA68
/* B658 8000AA58 00001025 */  or        $v0, $zero, $zero
/* B65C 8000AA5C 10000002 */  b         .L8000AA68
/* B660 8000AA60 24020001 */  addiu     $v0, $zero, 1
.L8000AA64:
/* B664 8000AA64 00001025 */  or        $v0, $zero, $zero
.L8000AA68:
/* B668 8000AA68 8FBF001C */  lw        $ra, 0x1c($sp)
/* B66C 8000AA6C 8FB00018 */  lw        $s0, 0x18($sp)
/* B670 8000AA70 27BD0020 */  addiu     $sp, $sp, 0x20
/* B674 8000AA74 03E00008 */  jr        $ra
/* B678 8000AA78 00000000 */  nop       

glabel func_8000AA7C
/* B67C 8000AA7C 27BDFF58 */  addiu     $sp, $sp, -0xa8
/* B680 8000AA80 AFB40028 */  sw        $s4, 0x28($sp)
/* B684 8000AA84 3C14800B */  lui       $s4, 0x800b
/* B688 8000AA88 269482A5 */  addiu     $s4, $s4, -0x7d5b
/* B68C 8000AA8C A2800000 */  sb        $zero, ($s4)
/* B690 8000AA90 3C01800B */  lui       $at, 0x800b
/* B694 8000AA94 A02082A4 */  sb        $zero, -0x7d5c($at)
/* B698 8000AA98 3C01800B */  lui       $at, 0x800b
/* B69C 8000AA9C A02082A7 */  sb        $zero, -0x7d59($at)
/* B6A0 8000AAA0 AFBF003C */  sw        $ra, 0x3c($sp)
/* B6A4 8000AAA4 3C01800B */  lui       $at, 0x800b
/* B6A8 8000AAA8 3C04800A */  lui       $a0, 0x800a
/* B6AC 8000AAAC 3C05800B */  lui       $a1, 0x800b
/* B6B0 8000AAB0 AFBE0038 */  sw        $fp, 0x38($sp)
/* B6B4 8000AAB4 AFB70034 */  sw        $s7, 0x34($sp)
/* B6B8 8000AAB8 AFB60030 */  sw        $s6, 0x30($sp)
/* B6BC 8000AABC AFB5002C */  sw        $s5, 0x2c($sp)
/* B6C0 8000AAC0 AFB30024 */  sw        $s3, 0x24($sp)
/* B6C4 8000AAC4 AFB20020 */  sw        $s2, 0x20($sp)
/* B6C8 8000AAC8 AFB1001C */  sw        $s1, 0x1c($sp)
/* B6CC 8000AACC AFB00018 */  sw        $s0, 0x18($sp)
/* B6D0 8000AAD0 AC2082A8 */  sw        $zero, -0x7d58($at)
/* B6D4 8000AAD4 24A582A6 */  addiu     $a1, $a1, -0x7d5a
/* B6D8 8000AAD8 0C016CA8 */  jal       func_8005B2A0
/* B6DC 8000AADC 248473B0 */  addiu     $a0, $a0, 0x73b0
/* B6E0 8000AAE0 00008025 */  or        $s0, $zero, $zero
/* B6E4 8000AAE4 241E0001 */  addiu     $fp, $zero, 1
/* B6E8 8000AAE8 27B7009F */  addiu     $s7, $sp, 0x9f
/* B6EC 8000AAEC 27B6004C */  addiu     $s6, $sp, 0x4c
/* B6F0 8000AAF0 24150004 */  addiu     $s5, $zero, 4
.L8000AAF4:
/* B6F4 8000AAF4 3C0F800B */  lui       $t7, 0x800b
/* B6F8 8000AAF8 91EF82A6 */  lbu       $t7, -0x7d5a($t7)
/* B6FC 8000AAFC 240E0001 */  addiu     $t6, $zero, 1
/* B700 8000AB00 020E9804 */  sllv      $s3, $t6, $s0
/* B704 8000AB04 01F3C024 */  and       $t8, $t7, $s3
/* B708 8000AB08 13000049 */  beqz      $t8, .L8000AC30
/* B70C 8000AB0C 24010003 */  addiu     $at, $zero, 3
/* B710 8000AB10 56010005 */  bnel      $s0, $at, .L8000AB28
/* B714 8000AB14 0010C880 */  sll       $t9, $s0, 2
/* B718 8000AB18 0C002D31 */  jal       func_8000B4C4
/* B71C 8000AB1C 00000000 */  nop       
/* B720 8000AB20 14400043 */  bnez      $v0, .L8000AC30
/* B724 8000AB24 0010C880 */  sll       $t9, $s0, 2
.L8000AB28:
/* B728 8000AB28 0330C823 */  subu      $t9, $t9, $s0
/* B72C 8000AB2C 0019C880 */  sll       $t9, $t9, 2
/* B730 8000AB30 0330C821 */  addu      $t9, $t9, $s0
/* B734 8000AB34 3C08800B */  lui       $t0, 0x800b
/* B738 8000AB38 25088100 */  addiu     $t0, $t0, -0x7f00
/* B73C 8000AB3C 0019C8C0 */  sll       $t9, $t9, 3
/* B740 8000AB40 03288821 */  addu      $s1, $t9, $t0
/* B744 8000AB44 3C04800A */  lui       $a0, 0x800a
/* B748 8000AB48 248473B0 */  addiu     $a0, $a0, 0x73b0
/* B74C 8000AB4C 02202825 */  or        $a1, $s1, $zero
/* B750 8000AB50 0C016540 */  jal       func_80059500
/* B754 8000AB54 02003025 */  or        $a2, $s0, $zero
/* B758 8000AB58 14400035 */  bnez      $v0, .L8000AC30
/* B75C 8000AB5C 02202025 */  or        $a0, $s1, $zero
/* B760 8000AB60 3C02800B */  lui       $v0, 0x800b
/* B764 8000AB64 244282A4 */  addiu     $v0, $v0, -0x7d5c
/* B768 8000AB68 90490000 */  lbu       $t1, ($v0)
/* B76C 8000AB6C 02C02825 */  or        $a1, $s6, $zero
/* B770 8000AB70 02E03025 */  or        $a2, $s7, $zero
/* B774 8000AB74 01335025 */  or        $t2, $t1, $s3
/* B778 8000AB78 0C018CD4 */  jal       func_80063350
/* B77C 8000AB7C A04A0000 */  sb        $t2, ($v0)
/* B780 8000AB80 14400025 */  bnez      $v0, .L8000AC18
/* B784 8000AB84 3C01800B */  lui       $at, 0x800b
/* B788 8000AB88 93AB009F */  lbu       $t3, 0x9f($sp)
/* B78C 8000AB8C 02002025 */  or        $a0, $s0, $zero
/* B790 8000AB90 316C0008 */  andi      $t4, $t3, 8
/* B794 8000AB94 15800003 */  bnez      $t4, .L8000ABA4
/* B798 8000AB98 00000000 */  nop       
/* B79C 8000AB9C 0C00AC9D */  jal       func_8002B274
/* B7A0 8000ABA0 24050002 */  addiu     $a1, $zero, 2
.L8000ABA4:
/* B7A4 8000ABA4 0C002A74 */  jal       func_8000A9D0
/* B7A8 8000ABA8 02C02025 */  or        $a0, $s6, $zero
/* B7AC 8000ABAC 10400013 */  beqz      $v0, .L8000ABFC
/* B7B0 8000ABB0 02202025 */  or        $a0, $s1, $zero
/* B7B4 8000ABB4 0C0160B0 */  jal       func_800582C0
/* B7B8 8000ABB8 02E02825 */  or        $a1, $s7, $zero
/* B7BC 8000ABBC 1440000A */  bnez      $v0, .L8000ABE8
/* B7C0 8000ABC0 02202025 */  or        $a0, $s1, $zero
/* B7C4 8000ABC4 3C0D800B */  lui       $t5, 0x800b
/* B7C8 8000ABC8 25AD82A0 */  addiu     $t5, $t5, -0x7d60
/* B7CC 8000ABCC 0C00365C */  jal       func_8000D970
/* B7D0 8000ABD0 020D9021 */  addu      $s2, $s0, $t5
/* B7D4 8000ABD4 928E0000 */  lbu       $t6, ($s4)
/* B7D8 8000ABD8 A25E0000 */  sb        $fp, ($s2)
/* B7DC 8000ABDC 01D37825 */  or        $t7, $t6, $s3
/* B7E0 8000ABE0 10000013 */  b         .L8000AC30
/* B7E4 8000ABE4 A28F0000 */  sb        $t7, ($s4)
.L8000ABE8:
/* B7E8 8000ABE8 02002025 */  or        $a0, $s0, $zero
/* B7EC 8000ABEC 0C00AC9D */  jal       func_8002B274
/* B7F0 8000ABF0 24050002 */  addiu     $a1, $zero, 2
/* B7F4 8000ABF4 1000000F */  b         .L8000AC34
/* B7F8 8000ABF8 26100001 */  addiu     $s0, $s0, 1
.L8000ABFC:
/* B7FC 8000ABFC 92980000 */  lbu       $t8, ($s4)
/* B800 8000AC00 3C01800B */  lui       $at, 0x800b
/* B804 8000AC04 00300821 */  addu      $at, $at, $s0
/* B808 8000AC08 0313C825 */  or        $t9, $t8, $s3
/* B80C 8000AC0C A2990000 */  sb        $t9, ($s4)
/* B810 8000AC10 10000007 */  b         .L8000AC30
/* B814 8000AC14 A03E82A0 */  sb        $fp, -0x7d60($at)
.L8000AC18:
/* B818 8000AC18 00300821 */  addu      $at, $at, $s0
/* B81C 8000AC1C 14550004 */  bne       $v0, $s5, .L8000AC30
/* B820 8000AC20 A02082A0 */  sb        $zero, -0x7d60($at)
/* B824 8000AC24 02002025 */  or        $a0, $s0, $zero
/* B828 8000AC28 0C00AC9D */  jal       func_8002B274
/* B82C 8000AC2C 24050002 */  addiu     $a1, $zero, 2
.L8000AC30:
/* B830 8000AC30 26100001 */  addiu     $s0, $s0, 1
.L8000AC34:
/* B834 8000AC34 1615FFAF */  bne       $s0, $s5, .L8000AAF4
/* B838 8000AC38 3C0A800B */  lui       $t2, 0x800b
/* B83C 8000AC3C 92880000 */  lbu       $t0, ($s4)
/* B840 8000AC40 8FBF003C */  lw        $ra, 0x3c($sp)
/* B844 8000AC44 914A82A4 */  lbu       $t2, -0x7d5c($t2)
/* B848 8000AC48 8FB40028 */  lw        $s4, 0x28($sp)
/* B84C 8000AC4C 8FB00018 */  lw        $s0, 0x18($sp)
/* B850 8000AC50 8FB1001C */  lw        $s1, 0x1c($sp)
/* B854 8000AC54 8FB20020 */  lw        $s2, 0x20($sp)
/* B858 8000AC58 8FB30024 */  lw        $s3, 0x24($sp)
/* B85C 8000AC5C 8FB5002C */  lw        $s5, 0x2c($sp)
/* B860 8000AC60 8FB60030 */  lw        $s6, 0x30($sp)
/* B864 8000AC64 8FB70034 */  lw        $s7, 0x34($sp)
/* B868 8000AC68 8FBE0038 */  lw        $fp, 0x38($sp)
/* B86C 8000AC6C 00084C00 */  sll       $t1, $t0, 0x10
/* B870 8000AC70 27BD00A8 */  addiu     $sp, $sp, 0xa8
/* B874 8000AC74 03E00008 */  jr        $ra
/* B878 8000AC78 012A1025 */  or        $v0, $t1, $t2

glabel func_8000AC7C
/* B87C 8000AC7C 00047880 */  sll       $t7, $a0, 2
/* B880 8000AC80 01E47823 */  subu      $t7, $t7, $a0
/* B884 8000AC84 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* B888 8000AC88 000F7880 */  sll       $t7, $t7, 2
/* B88C 8000AC8C 01E47821 */  addu      $t7, $t7, $a0
/* B890 8000AC90 3C18800B */  lui       $t8, 0x800b
/* B894 8000AC94 AFBF0014 */  sw        $ra, 0x14($sp)
/* B898 8000AC98 AFA40028 */  sw        $a0, 0x28($sp)
/* B89C 8000AC9C 27188100 */  addiu     $t8, $t8, -0x7f00
/* B8A0 8000ACA0 000F78C0 */  sll       $t7, $t7, 3
/* B8A4 8000ACA4 01F82021 */  addu      $a0, $t7, $t8
/* B8A8 8000ACA8 0C0177A8 */  jal       func_8005DEA0
/* B8AC 8000ACAC 27A50027 */  addiu     $a1, $sp, 0x27
/* B8B0 8000ACB0 24010001 */  addiu     $at, $zero, 1
/* B8B4 8000ACB4 10410006 */  beq       $v0, $at, .L8000ACD0
/* B8B8 8000ACB8 8FA40028 */  lw        $a0, 0x28($sp)
/* B8BC 8000ACBC 2401000B */  addiu     $at, $zero, 0xb
/* B8C0 8000ACC0 10410003 */  beq       $v0, $at, .L8000ACD0
/* B8C4 8000ACC4 24010004 */  addiu     $at, $zero, 4
/* B8C8 8000ACC8 54410004 */  bnel      $v0, $at, .L8000ACDC
/* B8CC 8000ACCC 93A20027 */  lbu       $v0, 0x27($sp)
.L8000ACD0:
/* B8D0 8000ACD0 0C00AC9D */  jal       func_8002B274
/* B8D4 8000ACD4 24050001 */  addiu     $a1, $zero, 1
/* B8D8 8000ACD8 93A20027 */  lbu       $v0, 0x27($sp)
.L8000ACDC:
/* B8DC 8000ACDC 8FBF0014 */  lw        $ra, 0x14($sp)
/* B8E0 8000ACE0 27BD0028 */  addiu     $sp, $sp, 0x28
/* B8E4 8000ACE4 30420080 */  andi      $v0, $v0, 0x80
/* B8E8 8000ACE8 0002102B */  sltu      $v0, $zero, $v0
/* B8EC 8000ACEC 03E00008 */  jr        $ra
/* B8F0 8000ACF0 2C420001 */  sltiu     $v0, $v0, 1

glabel func_8000ACF4
/* B8F4 8000ACF4 00047880 */  sll       $t7, $a0, 2
/* B8F8 8000ACF8 01E47823 */  subu      $t7, $t7, $a0
/* B8FC 8000ACFC 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* B900 8000AD00 000F7880 */  sll       $t7, $t7, 2
/* B904 8000AD04 01E47821 */  addu      $t7, $t7, $a0
/* B908 8000AD08 3C18800B */  lui       $t8, 0x800b
/* B90C 8000AD0C AFBF0014 */  sw        $ra, 0x14($sp)
/* B910 8000AD10 AFA40020 */  sw        $a0, 0x20($sp)
/* B914 8000AD14 27188100 */  addiu     $t8, $t8, -0x7f00
/* B918 8000AD18 000F78C0 */  sll       $t7, $t7, 3
/* B91C 8000AD1C 01F82021 */  addu      $a0, $t7, $t8
/* B920 8000AD20 0C0177A8 */  jal       func_8005DEA0
/* B924 8000AD24 27A5001F */  addiu     $a1, $sp, 0x1f
/* B928 8000AD28 24010001 */  addiu     $at, $zero, 1
/* B92C 8000AD2C 10410006 */  beq       $v0, $at, .L8000AD48
/* B930 8000AD30 8FA40020 */  lw        $a0, 0x20($sp)
/* B934 8000AD34 2401000B */  addiu     $at, $zero, 0xb
/* B938 8000AD38 10410003 */  beq       $v0, $at, .L8000AD48
/* B93C 8000AD3C 24010004 */  addiu     $at, $zero, 4
/* B940 8000AD40 54410004 */  bnel      $v0, $at, .L8000AD54
/* B944 8000AD44 93A2001F */  lbu       $v0, 0x1f($sp)
.L8000AD48:
/* B948 8000AD48 0C00AC9D */  jal       func_8002B274
/* B94C 8000AD4C 24050001 */  addiu     $a1, $zero, 1
/* B950 8000AD50 93A2001F */  lbu       $v0, 0x1f($sp)
.L8000AD54:
/* B954 8000AD54 8FBF0014 */  lw        $ra, 0x14($sp)
/* B958 8000AD58 27BD0020 */  addiu     $sp, $sp, 0x20
/* B95C 8000AD5C 30420080 */  andi      $v0, $v0, 0x80
/* B960 8000AD60 03E00008 */  jr        $ra
/* B964 8000AD64 0002102B */  sltu      $v0, $zero, $v0

glabel func_8000AD68
/* B968 8000AD68 00803025 */  or        $a2, $a0, $zero
/* B96C 8000AD6C 00067880 */  sll       $t7, $a2, 2
/* B970 8000AD70 01E67823 */  subu      $t7, $t7, $a2
/* B974 8000AD74 3C0E800B */  lui       $t6, 0x800b
/* B978 8000AD78 000F7880 */  sll       $t7, $t7, 2
/* B97C 8000AD7C 27BDFF80 */  addiu     $sp, $sp, -0x80
/* B980 8000AD80 25CE82A0 */  addiu     $t6, $t6, -0x7d60
/* B984 8000AD84 01E67821 */  addu      $t7, $t7, $a2
/* B988 8000AD88 3C18800B */  lui       $t8, 0x800b
/* B98C 8000AD8C AFB00018 */  sw        $s0, 0x18($sp)
/* B990 8000AD90 008E1021 */  addu      $v0, $a0, $t6
/* B994 8000AD94 27188100 */  addiu     $t8, $t8, -0x7f00
/* B998 8000AD98 000F78C0 */  sll       $t7, $t7, 3
/* B99C 8000AD9C AFBF001C */  sw        $ra, 0x1c($sp)
/* B9A0 8000ADA0 01F88021 */  addu      $s0, $t7, $t8
/* B9A4 8000ADA4 3C04800A */  lui       $a0, 0x800a
/* B9A8 8000ADA8 A0400000 */  sb        $zero, ($v0)
/* B9AC 8000ADAC 248473B0 */  addiu     $a0, $a0, 0x73b0
/* B9B0 8000ADB0 02002825 */  or        $a1, $s0, $zero
/* B9B4 8000ADB4 0C016540 */  jal       func_80059500
/* B9B8 8000ADB8 AFA20024 */  sw        $v0, 0x24($sp)
/* B9BC 8000ADBC 14400012 */  bnez      $v0, .L8000AE08
/* B9C0 8000ADC0 02002025 */  or        $a0, $s0, $zero
/* B9C4 8000ADC4 27A50028 */  addiu     $a1, $sp, 0x28
/* B9C8 8000ADC8 0C018CD4 */  jal       func_80063350
/* B9CC 8000ADCC 27A6007B */  addiu     $a2, $sp, 0x7b
/* B9D0 8000ADD0 1440000D */  bnez      $v0, .L8000AE08
/* B9D4 8000ADD4 93B9007B */  lbu       $t9, 0x7b($sp)
/* B9D8 8000ADD8 33280008 */  andi      $t0, $t9, 8
/* B9DC 8000ADDC 1100000A */  beqz      $t0, .L8000AE08
/* B9E0 8000ADE0 02002025 */  or        $a0, $s0, $zero
/* B9E4 8000ADE4 0C0160B0 */  jal       func_800582C0
/* B9E8 8000ADE8 27A5007B */  addiu     $a1, $sp, 0x7b
/* B9EC 8000ADEC 54400007 */  bnel      $v0, $zero, .L8000AE0C
/* B9F0 8000ADF0 8FAB0024 */  lw        $t3, 0x24($sp)
/* B9F4 8000ADF4 0C00365C */  jal       func_8000D970
/* B9F8 8000ADF8 02002025 */  or        $a0, $s0, $zero
/* B9FC 8000ADFC 8FAA0024 */  lw        $t2, 0x24($sp)
/* BA00 8000AE00 24090001 */  addiu     $t1, $zero, 1
/* BA04 8000AE04 A1490000 */  sb        $t1, ($t2)
.L8000AE08:
/* BA08 8000AE08 8FAB0024 */  lw        $t3, 0x24($sp)
.L8000AE0C:
/* BA0C 8000AE0C 8FBF001C */  lw        $ra, 0x1c($sp)
/* BA10 8000AE10 8FB00018 */  lw        $s0, 0x18($sp)
/* BA14 8000AE14 91620000 */  lbu       $v0, ($t3)
/* BA18 8000AE18 27BD0080 */  addiu     $sp, $sp, 0x80
/* BA1C 8000AE1C 38420001 */  xori      $v0, $v0, 1
/* BA20 8000AE20 03E00008 */  jr        $ra
/* BA24 8000AE24 2C420001 */  sltiu     $v0, $v0, 1

glabel func_8000AE28
/* BA28 8000AE28 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* BA2C 8000AE2C AFBF0014 */  sw        $ra, 0x14($sp)
/* BA30 8000AE30 AFA50044 */  sw        $a1, 0x44($sp)
/* BA34 8000AE34 AFA40040 */  sw        $a0, 0x40($sp)
/* BA38 8000AE38 AFA00018 */  sw        $zero, 0x18($sp)
/* BA3C 8000AE3C 27A5001C */  addiu     $a1, $sp, 0x1c
/* BA40 8000AE40 00003025 */  or        $a2, $zero, $zero
/* BA44 8000AE44 0C002BAF */  jal       func_8000AEBC
/* BA48 8000AE48 24070020 */  addiu     $a3, $zero, 0x20
/* BA4C 8000AE4C 14400016 */  bnez      $v0, .L8000AEA8
/* BA50 8000AE50 27A4001C */  addiu     $a0, $sp, 0x1c
/* BA54 8000AE54 8FA50044 */  lw        $a1, 0x44($sp)
/* BA58 8000AE58 0C017B90 */  jal       func_8005EE40
/* BA5C 8000AE5C 24060020 */  addiu     $a2, $zero, 0x20
/* BA60 8000AE60 14400011 */  bnez      $v0, .L8000AEA8
/* BA64 8000AE64 8FAE0040 */  lw        $t6, 0x40($sp)
/* BA68 8000AE68 000E7880 */  sll       $t7, $t6, 2
/* BA6C 8000AE6C 01EE7823 */  subu      $t7, $t7, $t6
/* BA70 8000AE70 000F7880 */  sll       $t7, $t7, 2
/* BA74 8000AE74 01EE7821 */  addu      $t7, $t7, $t6
/* BA78 8000AE78 3C18800B */  lui       $t8, 0x800b
/* BA7C 8000AE7C 27188100 */  addiu     $t8, $t8, -0x7f00
/* BA80 8000AE80 000F78C0 */  sll       $t7, $t7, 3
/* BA84 8000AE84 01F82021 */  addu      $a0, $t7, $t8
/* BA88 8000AE88 0C0177A8 */  jal       func_8005DEA0
/* BA8C 8000AE8C 27A5003F */  addiu     $a1, $sp, 0x3f
/* BA90 8000AE90 14400005 */  bnez      $v0, .L8000AEA8
/* BA94 8000AE94 93B9003F */  lbu       $t9, 0x3f($sp)
/* BA98 8000AE98 33280004 */  andi      $t0, $t9, 4
/* BA9C 8000AE9C 15000002 */  bnez      $t0, .L8000AEA8
/* BAA0 8000AEA0 24090001 */  addiu     $t1, $zero, 1
/* BAA4 8000AEA4 AFA90018 */  sw        $t1, 0x18($sp)
.L8000AEA8:
/* BAA8 8000AEA8 8FBF0014 */  lw        $ra, 0x14($sp)
/* BAAC 8000AEAC 8FA20018 */  lw        $v0, 0x18($sp)
/* BAB0 8000AEB0 27BD0040 */  addiu     $sp, $sp, 0x40
/* BAB4 8000AEB4 03E00008 */  jr        $ra
/* BAB8 8000AEB8 00000000 */  nop       

glabel func_8000AEBC
/* BABC 8000AEBC 3C0E800B */  lui       $t6, 0x800b
/* BAC0 8000AEC0 91CE82A5 */  lbu       $t6, -0x7d5b($t6)
/* BAC4 8000AEC4 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* BAC8 8000AEC8 24180001 */  addiu     $t8, $zero, 1
/* BACC 8000AECC 0098C804 */  sllv      $t9, $t8, $a0
/* BAD0 8000AED0 AFA60028 */  sw        $a2, 0x28($sp)
/* BAD4 8000AED4 01D94024 */  and       $t0, $t6, $t9
/* BAD8 8000AED8 30C6FFFF */  andi      $a2, $a2, 0xffff
/* BADC 8000AEDC AFBF001C */  sw        $ra, 0x1c($sp)
/* BAE0 8000AEE0 AFA40020 */  sw        $a0, 0x20($sp)
/* BAE4 8000AEE4 AFA50024 */  sw        $a1, 0x24($sp)
/* BAE8 8000AEE8 AFA7002C */  sw        $a3, 0x2c($sp)
/* BAEC 8000AEEC 1100000F */  beqz      $t0, .L8000AF2C
/* BAF0 8000AEF0 24030001 */  addiu     $v1, $zero, 1
/* BAF4 8000AEF4 00044880 */  sll       $t1, $a0, 2
/* BAF8 8000AEF8 01244823 */  subu      $t1, $t1, $a0
/* BAFC 8000AEFC 00094880 */  sll       $t1, $t1, 2
/* BB00 8000AF00 97AB002E */  lhu       $t3, 0x2e($sp)
/* BB04 8000AF04 01244821 */  addu      $t1, $t1, $a0
/* BB08 8000AF08 3C0A800B */  lui       $t2, 0x800b
/* BB0C 8000AF0C 254A8100 */  addiu     $t2, $t2, -0x7f00
/* BB10 8000AF10 000948C0 */  sll       $t1, $t1, 3
/* BB14 8000AF14 012A2021 */  addu      $a0, $t1, $t2
/* BB18 8000AF18 00002825 */  or        $a1, $zero, $zero
/* BB1C 8000AF1C 8FA70024 */  lw        $a3, 0x24($sp)
/* BB20 8000AF20 0C0036BF */  jal       func_8000DAFC
/* BB24 8000AF24 AFAB0010 */  sw        $t3, 0x10($sp)
/* BB28 8000AF28 00401825 */  or        $v1, $v0, $zero
.L8000AF2C:
/* BB2C 8000AF2C 8FBF001C */  lw        $ra, 0x1c($sp)
/* BB30 8000AF30 27BD0020 */  addiu     $sp, $sp, 0x20
/* BB34 8000AF34 00601025 */  or        $v0, $v1, $zero
/* BB38 8000AF38 03E00008 */  jr        $ra
/* BB3C 8000AF3C 00000000 */  nop       

glabel func_8000AF40
/* BB40 8000AF40 3C0E800B */  lui       $t6, 0x800b
/* BB44 8000AF44 91CE82A5 */  lbu       $t6, -0x7d5b($t6)
/* BB48 8000AF48 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* BB4C 8000AF4C 24180001 */  addiu     $t8, $zero, 1
/* BB50 8000AF50 0098C804 */  sllv      $t9, $t8, $a0
/* BB54 8000AF54 AFA60028 */  sw        $a2, 0x28($sp)
/* BB58 8000AF58 01D94024 */  and       $t0, $t6, $t9
/* BB5C 8000AF5C 30C6FFFF */  andi      $a2, $a2, 0xffff
/* BB60 8000AF60 AFBF001C */  sw        $ra, 0x1c($sp)
/* BB64 8000AF64 AFA40020 */  sw        $a0, 0x20($sp)
/* BB68 8000AF68 AFA50024 */  sw        $a1, 0x24($sp)
/* BB6C 8000AF6C AFA7002C */  sw        $a3, 0x2c($sp)
/* BB70 8000AF70 1100000F */  beqz      $t0, .L8000AFB0
/* BB74 8000AF74 24030001 */  addiu     $v1, $zero, 1
/* BB78 8000AF78 00044880 */  sll       $t1, $a0, 2
/* BB7C 8000AF7C 01244823 */  subu      $t1, $t1, $a0
/* BB80 8000AF80 00094880 */  sll       $t1, $t1, 2
/* BB84 8000AF84 97AB002E */  lhu       $t3, 0x2e($sp)
/* BB88 8000AF88 01244821 */  addu      $t1, $t1, $a0
/* BB8C 8000AF8C 3C0A800B */  lui       $t2, 0x800b
/* BB90 8000AF90 254A8100 */  addiu     $t2, $t2, -0x7f00
/* BB94 8000AF94 000948C0 */  sll       $t1, $t1, 3
/* BB98 8000AF98 012A2021 */  addu      $a0, $t1, $t2
/* BB9C 8000AF9C 24050001 */  addiu     $a1, $zero, 1
/* BBA0 8000AFA0 8FA70024 */  lw        $a3, 0x24($sp)
/* BBA4 8000AFA4 0C0036BF */  jal       func_8000DAFC
/* BBA8 8000AFA8 AFAB0010 */  sw        $t3, 0x10($sp)
/* BBAC 8000AFAC 00401825 */  or        $v1, $v0, $zero
.L8000AFB0:
/* BBB0 8000AFB0 8FBF001C */  lw        $ra, 0x1c($sp)
/* BBB4 8000AFB4 27BD0020 */  addiu     $sp, $sp, 0x20
/* BBB8 8000AFB8 00601025 */  or        $v0, $v1, $zero
/* BBBC 8000AFBC 03E00008 */  jr        $ra
/* BBC0 8000AFC0 00000000 */  nop       

glabel func_8000AFC4
/* BBC4 8000AFC4 3C0E800B */  lui       $t6, 0x800b
/* BBC8 8000AFC8 91CE82A5 */  lbu       $t6, -0x7d5b($t6)
/* BBCC 8000AFCC 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* BBD0 8000AFD0 24180001 */  addiu     $t8, $zero, 1
/* BBD4 8000AFD4 0098C804 */  sllv      $t9, $t8, $a0
/* BBD8 8000AFD8 AFA60028 */  sw        $a2, 0x28($sp)
/* BBDC 8000AFDC 01D94024 */  and       $t0, $t6, $t9
/* BBE0 8000AFE0 30C6FFFF */  andi      $a2, $a2, 0xffff
/* BBE4 8000AFE4 AFBF001C */  sw        $ra, 0x1c($sp)
/* BBE8 8000AFE8 AFA40020 */  sw        $a0, 0x20($sp)
/* BBEC 8000AFEC AFA50024 */  sw        $a1, 0x24($sp)
/* BBF0 8000AFF0 AFA7002C */  sw        $a3, 0x2c($sp)
/* BBF4 8000AFF4 1100000F */  beqz      $t0, .L8000B034
/* BBF8 8000AFF8 24030001 */  addiu     $v1, $zero, 1
/* BBFC 8000AFFC 00044880 */  sll       $t1, $a0, 2
/* BC00 8000B000 01244823 */  subu      $t1, $t1, $a0
/* BC04 8000B004 00094880 */  sll       $t1, $t1, 2
/* BC08 8000B008 97AB002E */  lhu       $t3, 0x2e($sp)
/* BC0C 8000B00C 01244821 */  addu      $t1, $t1, $a0
/* BC10 8000B010 3C0A800B */  lui       $t2, 0x800b
/* BC14 8000B014 254A8100 */  addiu     $t2, $t2, -0x7f00
/* BC18 8000B018 000948C0 */  sll       $t1, $t1, 3
/* BC1C 8000B01C 012A2021 */  addu      $a0, $t1, $t2
/* BC20 8000B020 00002825 */  or        $a1, $zero, $zero
/* BC24 8000B024 8FA70024 */  lw        $a3, 0x24($sp)
/* BC28 8000B028 0C019644 */  jal       func_80065910
/* BC2C 8000B02C AFAB0010 */  sw        $t3, 0x10($sp)
/* BC30 8000B030 00401825 */  or        $v1, $v0, $zero
.L8000B034:
/* BC34 8000B034 8FBF001C */  lw        $ra, 0x1c($sp)
/* BC38 8000B038 27BD0020 */  addiu     $sp, $sp, 0x20
/* BC3C 8000B03C 00601025 */  or        $v0, $v1, $zero
/* BC40 8000B040 03E00008 */  jr        $ra
/* BC44 8000B044 00000000 */  nop       

glabel func_8000B048
/* BC48 8000B048 3C0E800B */  lui       $t6, 0x800b
/* BC4C 8000B04C 91CE82A5 */  lbu       $t6, -0x7d5b($t6)
/* BC50 8000B050 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* BC54 8000B054 24180001 */  addiu     $t8, $zero, 1
/* BC58 8000B058 0098C804 */  sllv      $t9, $t8, $a0
/* BC5C 8000B05C AFA60028 */  sw        $a2, 0x28($sp)
/* BC60 8000B060 01D94024 */  and       $t0, $t6, $t9
/* BC64 8000B064 30C6FFFF */  andi      $a2, $a2, 0xffff
/* BC68 8000B068 AFBF001C */  sw        $ra, 0x1c($sp)
/* BC6C 8000B06C AFA40020 */  sw        $a0, 0x20($sp)
/* BC70 8000B070 AFA50024 */  sw        $a1, 0x24($sp)
/* BC74 8000B074 AFA7002C */  sw        $a3, 0x2c($sp)
/* BC78 8000B078 1100000F */  beqz      $t0, .L8000B0B8
/* BC7C 8000B07C 24030001 */  addiu     $v1, $zero, 1
/* BC80 8000B080 00044880 */  sll       $t1, $a0, 2
/* BC84 8000B084 01244823 */  subu      $t1, $t1, $a0
/* BC88 8000B088 00094880 */  sll       $t1, $t1, 2
/* BC8C 8000B08C 97AB002E */  lhu       $t3, 0x2e($sp)
/* BC90 8000B090 01244821 */  addu      $t1, $t1, $a0
/* BC94 8000B094 3C0A800B */  lui       $t2, 0x800b
/* BC98 8000B098 254A8100 */  addiu     $t2, $t2, -0x7f00
/* BC9C 8000B09C 000948C0 */  sll       $t1, $t1, 3
/* BCA0 8000B0A0 012A2021 */  addu      $a0, $t1, $t2
/* BCA4 8000B0A4 24050001 */  addiu     $a1, $zero, 1
/* BCA8 8000B0A8 8FA70024 */  lw        $a3, 0x24($sp)
/* BCAC 8000B0AC 0C019644 */  jal       func_80065910
/* BCB0 8000B0B0 AFAB0010 */  sw        $t3, 0x10($sp)
/* BCB4 8000B0B4 00401825 */  or        $v1, $v0, $zero
.L8000B0B8:
/* BCB8 8000B0B8 8FBF001C */  lw        $ra, 0x1c($sp)
/* BCBC 8000B0BC 27BD0020 */  addiu     $sp, $sp, 0x20
/* BCC0 8000B0C0 00601025 */  or        $v0, $v1, $zero
/* BCC4 8000B0C4 03E00008 */  jr        $ra
/* BCC8 8000B0C8 00000000 */  nop       

glabel func_8000B0CC
/* BCCC 8000B0CC 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* BCD0 8000B0D0 AFBF0014 */  sw        $ra, 0x14($sp)
/* BCD4 8000B0D4 AFA40048 */  sw        $a0, 0x48($sp)
/* BCD8 8000B0D8 AFA5004C */  sw        $a1, 0x4c($sp)
/* BCDC 8000B0DC 27A20028 */  addiu     $v0, $sp, 0x28
/* BCE0 8000B0E0 27A30048 */  addiu     $v1, $sp, 0x48
.L8000B0E4:
/* BCE4 8000B0E4 24420001 */  addiu     $v0, $v0, 1
/* BCE8 8000B0E8 0043082B */  sltu      $at, $v0, $v1
/* BCEC 8000B0EC 1420FFFD */  bnez      $at, .L8000B0E4
/* BCF0 8000B0F0 A040FFFF */  sb        $zero, -1($v0)
/* BCF4 8000B0F4 8FA40048 */  lw        $a0, 0x48($sp)
/* BCF8 8000B0F8 27A50028 */  addiu     $a1, $sp, 0x28
/* BCFC 8000B0FC 24065000 */  addiu     $a2, $zero, 0x5000
/* BD00 8000B100 0C002C12 */  jal       func_8000B048
/* BD04 8000B104 24070020 */  addiu     $a3, $zero, 0x20
/* BD08 8000B108 10400003 */  beqz      $v0, .L8000B118
/* BD0C 8000B10C 00003025 */  or        $a2, $zero, $zero
/* BD10 8000B110 10000029 */  b         .L8000B1B8
/* BD14 8000B114 8FBF0014 */  lw        $ra, 0x14($sp)
.L8000B118:
/* BD18 8000B118 8FA4004C */  lw        $a0, 0x4c($sp)
/* BD1C 8000B11C 27A20028 */  addiu     $v0, $sp, 0x28
/* BD20 8000B120 27A30048 */  addiu     $v1, $sp, 0x48
/* BD24 8000B124 04810002 */  bgez      $a0, .L8000B130
/* BD28 8000B128 00800821 */  addu      $at, $a0, $zero
/* BD2C 8000B12C 2481001F */  addiu     $at, $a0, 0x1f
.L8000B130:
/* BD30 8000B130 00012143 */  sra       $a0, $at, 5
.L8000B134:
/* BD34 8000B134 24420001 */  addiu     $v0, $v0, 1
/* BD38 8000B138 0043082B */  sltu      $at, $v0, $v1
/* BD3C 8000B13C 1420FFFD */  bnez      $at, .L8000B134
/* BD40 8000B140 A044FFFF */  sb        $a0, -1($v0)
/* BD44 8000B144 8FA40048 */  lw        $a0, 0x48($sp)
/* BD48 8000B148 27A50028 */  addiu     $a1, $sp, 0x28
/* BD4C 8000B14C 24064000 */  addiu     $a2, $zero, 0x4000
/* BD50 8000B150 0C002C12 */  jal       func_8000B048
/* BD54 8000B154 24070020 */  addiu     $a3, $zero, 0x20
/* BD58 8000B158 10400003 */  beqz      $v0, .L8000B168
/* BD5C 8000B15C 00003025 */  or        $a2, $zero, $zero
/* BD60 8000B160 10000015 */  b         .L8000B1B8
/* BD64 8000B164 8FBF0014 */  lw        $ra, 0x14($sp)
.L8000B168:
/* BD68 8000B168 8FA3004C */  lw        $v1, 0x4c($sp)
/* BD6C 8000B16C 27A20028 */  addiu     $v0, $sp, 0x28
/* BD70 8000B170 27A40048 */  addiu     $a0, $sp, 0x48
/* BD74 8000B174 04610004 */  bgez      $v1, .L8000B188
/* BD78 8000B178 3063001F */  andi      $v1, $v1, 0x1f
/* BD7C 8000B17C 10600002 */  beqz      $v1, .L8000B188
/* BD80 8000B180 00000000 */  nop       
/* BD84 8000B184 2463FFE0 */  addiu     $v1, $v1, -0x20
.L8000B188:
/* BD88 8000B188 24420004 */  addiu     $v0, $v0, 4
/* BD8C 8000B18C A043FFFD */  sb        $v1, -3($v0)
/* BD90 8000B190 A043FFFE */  sb        $v1, -2($v0)
/* BD94 8000B194 A043FFFF */  sb        $v1, -1($v0)
/* BD98 8000B198 1444FFFB */  bne       $v0, $a0, .L8000B188
/* BD9C 8000B19C A043FFFC */  sb        $v1, -4($v0)
/* BDA0 8000B1A0 8FA40048 */  lw        $a0, 0x48($sp)
/* BDA4 8000B1A4 27A50028 */  addiu     $a1, $sp, 0x28
/* BDA8 8000B1A8 24062000 */  addiu     $a2, $zero, 0x2000
/* BDAC 8000B1AC 0C002C12 */  jal       func_8000B048
/* BDB0 8000B1B0 24070020 */  addiu     $a3, $zero, 0x20
/* BDB4 8000B1B4 8FBF0014 */  lw        $ra, 0x14($sp)
.L8000B1B8:
/* BDB8 8000B1B8 27BD0048 */  addiu     $sp, $sp, 0x48
/* BDBC 8000B1BC 03E00008 */  jr        $ra
/* BDC0 8000B1C0 00000000 */  nop       

glabel func_8000B1C4
/* BDC4 8000B1C4 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* BDC8 8000B1C8 AFB10018 */  sw        $s1, 0x18($sp)
/* BDCC 8000B1CC 2402FFE0 */  addiu     $v0, $zero, -0x20
/* BDD0 8000B1D0 00C77021 */  addu      $t6, $a2, $a3
/* BDD4 8000B1D4 AFB40024 */  sw        $s4, 0x24($sp)
/* BDD8 8000B1D8 00C28824 */  and       $s1, $a2, $v0
/* BDDC 8000B1DC 25CF001F */  addiu     $t7, $t6, 0x1f
/* BDE0 8000B1E0 AFB70030 */  sw        $s7, 0x30($sp)
/* BDE4 8000B1E4 AFB50028 */  sw        $s5, 0x28($sp)
/* BDE8 8000B1E8 AFB30020 */  sw        $s3, 0x20($sp)
/* BDEC 8000B1EC AFB00014 */  sw        $s0, 0x14($sp)
/* BDF0 8000B1F0 01E2A024 */  and       $s4, $t7, $v0
/* BDF4 8000B1F4 2E214000 */  sltiu     $at, $s1, 0x4000
/* BDF8 8000B1F8 00A09825 */  or        $s3, $a1, $zero
/* BDFC 8000B1FC 0080A825 */  or        $s5, $a0, $zero
/* BE00 8000B200 AFBF0034 */  sw        $ra, 0x34($sp)
/* BE04 8000B204 AFB6002C */  sw        $s6, 0x2c($sp)
/* BE08 8000B208 AFB2001C */  sw        $s2, 0x1c($sp)
/* BE0C 8000B20C 24030001 */  addiu     $v1, $zero, 1
/* BE10 8000B210 02208025 */  or        $s0, $s1, $zero
/* BE14 8000B214 10200013 */  beqz      $at, .L8000B264
/* BE18 8000B218 0280B825 */  or        $s7, $s4, $zero
/* BE1C 8000B21C 2E814001 */  sltiu     $at, $s4, 0x4001
/* BE20 8000B220 10200003 */  beqz      $at, .L8000B230
/* BE24 8000B224 02A02025 */  or        $a0, $s5, $zero
/* BE28 8000B228 10000002 */  b         .L8000B234
/* BE2C 8000B22C 02801825 */  or        $v1, $s4, $zero
.L8000B230:
/* BE30 8000B230 24034000 */  addiu     $v1, $zero, 0x4000
.L8000B234:
/* BE34 8000B234 00711023 */  subu      $v0, $v1, $s1
/* BE38 8000B238 00409025 */  or        $s2, $v0, $zero
/* BE3C 8000B23C 3047FFFF */  andi      $a3, $v0, 0xffff
/* BE40 8000B240 02602825 */  or        $a1, $s3, $zero
/* BE44 8000B244 0C002BF1 */  jal       func_8000AFC4
/* BE48 8000B248 3226FFFF */  andi      $a2, $s1, 0xffff
/* BE4C 8000B24C 10400003 */  beqz      $v0, .L8000B25C
/* BE50 8000B250 00401825 */  or        $v1, $v0, $zero
/* BE54 8000B254 10000026 */  b         .L8000B2F0
/* BE58 8000B258 8FBF0034 */  lw        $ra, 0x34($sp)
.L8000B25C:
/* BE5C 8000B25C 02328021 */  addu      $s0, $s1, $s2
/* BE60 8000B260 02729821 */  addu      $s3, $s3, $s2
.L8000B264:
/* BE64 8000B264 0214082B */  sltu      $at, $s0, $s4
/* BE68 8000B268 1020001F */  beqz      $at, .L8000B2E8
/* BE6C 8000B26C 2416C000 */  addiu     $s6, $zero, -0x4000
.L8000B270:
/* BE70 8000B270 02161024 */  and       $v0, $s0, $s6
/* BE74 8000B274 24424000 */  addiu     $v0, $v0, 0x4000
/* BE78 8000B278 0054082B */  sltu      $at, $v0, $s4
/* BE7C 8000B27C 14200003 */  bnez      $at, .L8000B28C
/* BE80 8000B280 02A02025 */  or        $a0, $s5, $zero
/* BE84 8000B284 10000002 */  b         .L8000B290
/* BE88 8000B288 02801825 */  or        $v1, $s4, $zero
.L8000B28C:
/* BE8C 8000B28C 00401825 */  or        $v1, $v0, $zero
.L8000B290:
/* BE90 8000B290 00708823 */  subu      $s1, $v1, $s0
/* BE94 8000B294 02209025 */  or        $s2, $s1, $zero
/* BE98 8000B298 0C002C33 */  jal       func_8000B0CC
/* BE9C 8000B29C 00102B82 */  srl       $a1, $s0, 0xe
/* BEA0 8000B2A0 10400003 */  beqz      $v0, .L8000B2B0
/* BEA4 8000B2A4 02A02025 */  or        $a0, $s5, $zero
/* BEA8 8000B2A8 10000011 */  b         .L8000B2F0
/* BEAC 8000B2AC 8FBF0034 */  lw        $ra, 0x34($sp)
.L8000B2B0:
/* BEB0 8000B2B0 32063FFF */  andi      $a2, $s0, 0x3fff
/* BEB4 8000B2B4 24C64000 */  addiu     $a2, $a2, 0x4000
/* BEB8 8000B2B8 30C6FFFF */  andi      $a2, $a2, 0xffff
/* BEBC 8000B2BC 02602825 */  or        $a1, $s3, $zero
/* BEC0 8000B2C0 0C002BF1 */  jal       func_8000AFC4
/* BEC4 8000B2C4 3227FFFF */  andi      $a3, $s1, 0xffff
/* BEC8 8000B2C8 10400003 */  beqz      $v0, .L8000B2D8
/* BECC 8000B2CC 00401825 */  or        $v1, $v0, $zero
/* BED0 8000B2D0 10000007 */  b         .L8000B2F0
/* BED4 8000B2D4 8FBF0034 */  lw        $ra, 0x34($sp)
.L8000B2D8:
/* BED8 8000B2D8 02128021 */  addu      $s0, $s0, $s2
/* BEDC 8000B2DC 0217082B */  sltu      $at, $s0, $s7
/* BEE0 8000B2E0 1420FFE3 */  bnez      $at, .L8000B270
/* BEE4 8000B2E4 02729821 */  addu      $s3, $s3, $s2
.L8000B2E8:
/* BEE8 8000B2E8 00601025 */  or        $v0, $v1, $zero
/* BEEC 8000B2EC 8FBF0034 */  lw        $ra, 0x34($sp)
.L8000B2F0:
/* BEF0 8000B2F0 8FB00014 */  lw        $s0, 0x14($sp)
/* BEF4 8000B2F4 8FB10018 */  lw        $s1, 0x18($sp)
/* BEF8 8000B2F8 8FB2001C */  lw        $s2, 0x1c($sp)
/* BEFC 8000B2FC 8FB30020 */  lw        $s3, 0x20($sp)
/* BF00 8000B300 8FB40024 */  lw        $s4, 0x24($sp)
/* BF04 8000B304 8FB50028 */  lw        $s5, 0x28($sp)
/* BF08 8000B308 8FB6002C */  lw        $s6, 0x2c($sp)
/* BF0C 8000B30C 8FB70030 */  lw        $s7, 0x30($sp)
/* BF10 8000B310 03E00008 */  jr        $ra
/* BF14 8000B314 27BD0038 */  addiu     $sp, $sp, 0x38

glabel func_8000B318
/* BF18 8000B318 3C05800B */  lui       $a1, 0x800b
/* BF1C 8000B31C 24A582A7 */  addiu     $a1, $a1, -0x7d59
/* BF20 8000B320 90A20000 */  lbu       $v0, ($a1)
/* BF24 8000B324 AFA40000 */  sw        $a0, ($sp)
/* BF28 8000B328 03E00008 */  jr        $ra
/* BF2C 8000B32C A0A40000 */  sb        $a0, ($a1)

glabel func_8000B330
/* BF30 8000B330 3C0E800B */  lui       $t6, 0x800b
/* BF34 8000B334 8DCE82A8 */  lw        $t6, -0x7d58($t6)
/* BF38 8000B338 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* BF3C 8000B33C AFBF0014 */  sw        $ra, 0x14($sp)
/* BF40 8000B340 15C00034 */  bnez      $t6, .L8000B414
/* BF44 8000B344 3C068007 */  lui       $a2, 0x8007
/* BF48 8000B348 8CC697D0 */  lw        $a2, -0x6830($a2)
/* BF4C 8000B34C 3C0F800B */  lui       $t7, 0x800b
/* BF50 8000B350 91EF82A7 */  lbu       $t7, -0x7d59($t7)
/* BF54 8000B354 24180001 */  addiu     $t8, $zero, 1
/* BF58 8000B358 00D8C804 */  sllv      $t9, $t8, $a2
/* BF5C 8000B35C 01F94024 */  and       $t0, $t7, $t9
/* BF60 8000B360 11000028 */  beqz      $t0, .L8000B404
/* BF64 8000B364 00064880 */  sll       $t1, $a2, 2
/* BF68 8000B368 01264823 */  subu      $t1, $t1, $a2
/* BF6C 8000B36C 00094880 */  sll       $t1, $t1, 2
/* BF70 8000B370 01264821 */  addu      $t1, $t1, $a2
/* BF74 8000B374 3C0A800B */  lui       $t2, 0x800b
/* BF78 8000B378 254A8100 */  addiu     $t2, $t2, -0x7f00
/* BF7C 8000B37C 000948C0 */  sll       $t1, $t1, 3
/* BF80 8000B380 3C018007 */  lui       $at, 0x8007
/* BF84 8000B384 AC2697D0 */  sw        $a2, -0x6830($at)
/* BF88 8000B388 012A2021 */  addu      $a0, $t1, $t2
/* BF8C 8000B38C 0C0177A8 */  jal       func_8005DEA0
/* BF90 8000B390 27A5001F */  addiu     $a1, $sp, 0x1f
/* BF94 8000B394 14400007 */  bnez      $v0, .L8000B3B4
/* BF98 8000B398 3C068007 */  lui       $a2, 0x8007
/* BF9C 8000B39C 3C068007 */  lui       $a2, 0x8007
/* BFA0 8000B3A0 8CC697D0 */  lw        $a2, -0x6830($a2)
/* BFA4 8000B3A4 3C01800B */  lui       $at, 0x800b
/* BFA8 8000B3A8 00260821 */  addu      $at, $at, $a2
/* BFAC 8000B3AC 10000015 */  b         .L8000B404
/* BFB0 8000B3B0 A02082AC */  sb        $zero, -0x7d54($at)
.L8000B3B4:
/* BFB4 8000B3B4 8CC697D0 */  lw        $a2, -0x6830($a2)
/* BFB8 8000B3B8 3C0B800B */  lui       $t3, 0x800b
/* BFBC 8000B3BC 256B82AC */  addiu     $t3, $t3, -0x7d54
/* BFC0 8000B3C0 00CB1021 */  addu      $v0, $a2, $t3
/* BFC4 8000B3C4 904C0000 */  lbu       $t4, ($v0)
/* BFC8 8000B3C8 24010003 */  addiu     $at, $zero, 3
/* BFCC 8000B3CC 24180001 */  addiu     $t8, $zero, 1
/* BFD0 8000B3D0 258D0001 */  addiu     $t5, $t4, 1
/* BFD4 8000B3D4 31AE00FF */  andi      $t6, $t5, 0xff
/* BFD8 8000B3D8 15C1000A */  bne       $t6, $at, .L8000B404
/* BFDC 8000B3DC A04D0000 */  sb        $t5, ($v0)
/* BFE0 8000B3E0 3C01800B */  lui       $at, 0x800b
/* BFE4 8000B3E4 AC3882A8 */  sw        $t8, -0x7d58($at)
/* BFE8 8000B3E8 3C018007 */  lui       $at, 0x8007
/* BFEC 8000B3EC AC2697D0 */  sw        $a2, -0x6830($at)
/* BFF0 8000B3F0 00C02025 */  or        $a0, $a2, $zero
/* BFF4 8000B3F4 0C00AC9D */  jal       func_8002B274
/* BFF8 8000B3F8 24050001 */  addiu     $a1, $zero, 1
/* BFFC 8000B3FC 3C068007 */  lui       $a2, 0x8007
/* C000 8000B400 8CC697D0 */  lw        $a2, -0x6830($a2)
.L8000B404:
/* C004 8000B404 24C60001 */  addiu     $a2, $a2, 1
/* C008 8000B408 30C60003 */  andi      $a2, $a2, 3
/* C00C 8000B40C 3C018007 */  lui       $at, 0x8007
/* C010 8000B410 AC2697D0 */  sw        $a2, -0x6830($at)
.L8000B414:
/* C014 8000B414 8FBF0014 */  lw        $ra, 0x14($sp)
/* C018 8000B418 27BD0020 */  addiu     $sp, $sp, 0x20
/* C01C 8000B41C 03E00008 */  jr        $ra
/* C020 8000B420 00000000 */  nop       
/* C024 8000B424 00000000 */  nop       
/* C028 8000B428 00000000 */  nop       
/* C02C 8000B42C 00000000 */  nop       
