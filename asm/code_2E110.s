.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8002D510
/* 2E110 8002D510 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2E114 8002D514 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2E118 8002D518 3C040078 */  lui        $a0, 0x78
/* 2E11C 8002D51C 24843760 */  addiu      $a0, $a0, 0x3760
/* 2E120 8002D520 00002825 */  or         $a1, $zero, $zero
/* 2E124 8002D524 24060001 */  addiu      $a2, $zero, 1
/* 2E128 8002D528 0C00113D */  jal        func_800044F4
/* 2E12C 8002D52C 00003825 */   or        $a3, $zero, $zero
/* 2E130 8002D530 3C01800B */  lui        $at, 0x800b
/* 2E134 8002D534 AC22F740 */  sw         $v0, -0x8c0($at)
/* 2E138 8002D538 240400A8 */  addiu      $a0, $zero, 0xa8
/* 2E13C 8002D53C 0C000971 */  jal        func_800025C4
/* 2E140 8002D540 00002825 */   or        $a1, $zero, $zero
/* 2E144 8002D544 3C03800B */  lui        $v1, 0x800b
/* 2E148 8002D548 2463F744 */  addiu      $v1, $v1, -0x8bc
/* 2E14C 8002D54C AC620000 */  sw         $v0, ($v1)
/* 2E150 8002D550 AC400000 */  sw         $zero, ($v0)
/* 2E154 8002D554 8C6F0000 */  lw         $t7, ($v1)
/* 2E158 8002D558 24020008 */  addiu      $v0, $zero, 8
/* 2E15C 8002D55C 240400A8 */  addiu      $a0, $zero, 0xa8
/* 2E160 8002D560 ADE00004 */  sw         $zero, 4($t7)
.L8002D564:
/* 2E164 8002D564 8C780000 */  lw         $t8, ($v1)
/* 2E168 8002D568 0302C821 */  addu       $t9, $t8, $v0
/* 2E16C 8002D56C AF200000 */  sw         $zero, ($t9)
/* 2E170 8002D570 8C680000 */  lw         $t0, ($v1)
/* 2E174 8002D574 01024821 */  addu       $t1, $t0, $v0
/* 2E178 8002D578 AD200004 */  sw         $zero, 4($t1)
/* 2E17C 8002D57C 8C6A0000 */  lw         $t2, ($v1)
/* 2E180 8002D580 01425821 */  addu       $t3, $t2, $v0
/* 2E184 8002D584 AD600008 */  sw         $zero, 8($t3)
/* 2E188 8002D588 8C6C0000 */  lw         $t4, ($v1)
/* 2E18C 8002D58C 01826821 */  addu       $t5, $t4, $v0
/* 2E190 8002D590 24420010 */  addiu      $v0, $v0, 0x10
/* 2E194 8002D594 1444FFF3 */  bne        $v0, $a0, .L8002D564
/* 2E198 8002D598 ADA0000C */   sw        $zero, 0xc($t5)
/* 2E19C 8002D59C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2E1A0 8002D5A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2E1A4 8002D5A4 03E00008 */  jr         $ra
/* 2E1A8 8002D5A8 00000000 */   nop       

glabel func_8002D5AC
/* 2E1AC 8002D5AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2E1B0 8002D5B0 00802825 */  or         $a1, $a0, $zero
/* 2E1B4 8002D5B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2E1B8 8002D5B8 3C04800B */  lui        $a0, 0x800b
/* 2E1BC 8002D5BC 0C001213 */  jal        func_8000484C
/* 2E1C0 8002D5C0 8C84F740 */   lw        $a0, -0x8c0($a0)
/* 2E1C4 8002D5C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2E1C8 8002D5C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2E1CC 8002D5CC 03E00008 */  jr         $ra
/* 2E1D0 8002D5D0 00000000 */   nop       

glabel func_8002D5D4
/* 2E1D4 8002D5D4 2C810014 */  sltiu      $at, $a0, 0x14
/* 2E1D8 8002D5D8 14200007 */  bnez       $at, .L8002D5F8
/* 2E1DC 8002D5DC 2C81002A */   sltiu     $at, $a0, 0x2a
/* 2E1E0 8002D5E0 10200005 */  beqz       $at, .L8002D5F8
/* 2E1E4 8002D5E4 3C0E800B */   lui       $t6, 0x800b
/* 2E1E8 8002D5E8 8DCEF744 */  lw         $t6, -0x8bc($t6)
/* 2E1EC 8002D5EC 00047880 */  sll        $t7, $a0, 2
/* 2E1F0 8002D5F0 01CFC021 */  addu       $t8, $t6, $t7
/* 2E1F4 8002D5F4 AF050000 */  sw         $a1, ($t8)
.L8002D5F8:
/* 2E1F8 8002D5F8 03E00008 */  jr         $ra
/* 2E1FC 8002D5FC 00000000 */   nop       

glabel func_8002D600
/* 2E200 8002D600 10800007 */  beqz       $a0, .L8002D620
/* 2E204 8002D604 2C81000A */   sltiu     $at, $a0, 0xa
/* 2E208 8002D608 10200005 */  beqz       $at, .L8002D620
/* 2E20C 8002D60C 3C0E800B */   lui       $t6, 0x800b
/* 2E210 8002D610 8DCEF744 */  lw         $t6, -0x8bc($t6)
/* 2E214 8002D614 00047880 */  sll        $t7, $a0, 2
/* 2E218 8002D618 01CFC021 */  addu       $t8, $t6, $t7
/* 2E21C 8002D61C AF050000 */  sw         $a1, ($t8)
.L8002D620:
/* 2E220 8002D620 03E00008 */  jr         $ra
/* 2E224 8002D624 00000000 */   nop       

glabel func_8002D628
/* 2E228 8002D628 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 2E22C 8002D62C AFB60030 */  sw         $s6, 0x30($sp)
/* 2E230 8002D630 AFB30024 */  sw         $s3, 0x24($sp)
/* 2E234 8002D634 AFB20020 */  sw         $s2, 0x20($sp)
/* 2E238 8002D638 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2E23C 8002D63C AFB00018 */  sw         $s0, 0x18($sp)
/* 2E240 8002D640 24B6FFFF */  addiu      $s6, $a1, -1
/* 2E244 8002D644 00C08025 */  or         $s0, $a2, $zero
/* 2E248 8002D648 00808825 */  or         $s1, $a0, $zero
/* 2E24C 8002D64C AFBF003C */  sw         $ra, 0x3c($sp)
/* 2E250 8002D650 AFBE0038 */  sw         $fp, 0x38($sp)
/* 2E254 8002D654 AFB70034 */  sw         $s7, 0x34($sp)
/* 2E258 8002D658 AFB5002C */  sw         $s5, 0x2c($sp)
/* 2E25C 8002D65C AFB40028 */  sw         $s4, 0x28($sp)
/* 2E260 8002D660 00009025 */  or         $s2, $zero, $zero
/* 2E264 8002D664 12C00049 */  beqz       $s6, .L8002D78C
/* 2E268 8002D668 00009825 */   or        $s3, $zero, $zero
/* 2E26C 8002D66C 3C15800B */  lui        $s5, 0x800b
/* 2E270 8002D670 26B5F744 */  addiu      $s5, $s5, -0x8bc
/* 2E274 8002D674 241E0023 */  addiu      $fp, $zero, 0x23
/* 2E278 8002D678 24170001 */  addiu      $s7, $zero, 1
/* 2E27C 8002D67C 8FB40054 */  lw         $s4, 0x54($sp)
.L8002D680:
/* 2E280 8002D680 52400006 */  beql       $s2, $zero, .L8002D69C
/* 2E284 8002D684 82020000 */   lb        $v0, ($s0)
/* 2E288 8002D688 52570034 */  beql       $s2, $s7, .L8002D75C
/* 2E28C 8002D68C 82820000 */   lb        $v0, ($s4)
/* 2E290 8002D690 1000003B */  b          .L8002D780
/* 2E294 8002D694 0276082B */   sltu      $at, $s3, $s6
/* 2E298 8002D698 82020000 */  lb         $v0, ($s0)
.L8002D69C:
/* 2E29C 8002D69C 26100001 */  addiu      $s0, $s0, 1
/* 2E2A0 8002D6A0 5040003B */  beql       $v0, $zero, .L8002D790
/* 2E2A4 8002D6A4 A2200000 */   sb        $zero, ($s1)
/* 2E2A8 8002D6A8 545E0028 */  bnel       $v0, $fp, .L8002D74C
/* 2E2AC 8002D6AC A2220000 */   sb        $v0, ($s1)
/* 2E2B0 8002D6B0 82020000 */  lb         $v0, ($s0)
/* 2E2B4 8002D6B4 820E0001 */  lb         $t6, 1($s0)
/* 2E2B8 8002D6B8 26100002 */  addiu      $s0, $s0, 2
/* 2E2BC 8002D6BC 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 2E2C0 8002D6C0 00027880 */  sll        $t7, $v0, 2
/* 2E2C4 8002D6C4 01E27821 */  addu       $t7, $t7, $v0
/* 2E2C8 8002D6C8 000F7840 */  sll        $t7, $t7, 1
/* 2E2CC 8002D6CC 01CF1021 */  addu       $v0, $t6, $t7
/* 2E2D0 8002D6D0 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 2E2D4 8002D6D4 1840000E */  blez       $v0, .L8002D710
/* 2E2D8 8002D6D8 2841000A */   slti      $at, $v0, 0xa
/* 2E2DC 8002D6DC 1020000C */  beqz       $at, .L8002D710
/* 2E2E0 8002D6E0 27A40058 */   addiu     $a0, $sp, 0x58
/* 2E2E4 8002D6E4 8EB80000 */  lw         $t8, ($s5)
/* 2E2E8 8002D6E8 0002C880 */  sll        $t9, $v0, 2
/* 2E2EC 8002D6EC 3C058008 */  lui        $a1, 0x8008
/* 2E2F0 8002D6F0 03194021 */  addu       $t0, $t8, $t9
/* 2E2F4 8002D6F4 8D060000 */  lw         $a2, ($t0)
/* 2E2F8 8002D6F8 24A5C430 */  addiu      $a1, $a1, -0x3bd0
/* 2E2FC 8002D6FC 27B40058 */  addiu      $s4, $sp, 0x58
/* 2E300 8002D700 0C017811 */  jal        func_8005E044
/* 2E304 8002D704 24120001 */   addiu     $s2, $zero, 1
/* 2E308 8002D708 1000001D */  b          .L8002D780
/* 2E30C 8002D70C 0276082B */   sltu      $at, $s3, $s6
.L8002D710:
/* 2E310 8002D710 28410014 */  slti       $at, $v0, 0x14
/* 2E314 8002D714 14200019 */  bnez       $at, .L8002D77C
/* 2E318 8002D718 2841002A */   slti      $at, $v0, 0x2a
/* 2E31C 8002D71C 50200018 */  beql       $at, $zero, .L8002D780
/* 2E320 8002D720 0276082B */   sltu      $at, $s3, $s6
/* 2E324 8002D724 8EA90000 */  lw         $t1, ($s5)
/* 2E328 8002D728 00025080 */  sll        $t2, $v0, 2
/* 2E32C 8002D72C 012A5821 */  addu       $t3, $t1, $t2
/* 2E330 8002D730 8D630000 */  lw         $v1, ($t3)
/* 2E334 8002D734 50600012 */  beql       $v1, $zero, .L8002D780
/* 2E338 8002D738 0276082B */   sltu      $at, $s3, $s6
/* 2E33C 8002D73C 0060A025 */  or         $s4, $v1, $zero
/* 2E340 8002D740 1000000E */  b          .L8002D77C
/* 2E344 8002D744 02E09025 */   or        $s2, $s7, $zero
/* 2E348 8002D748 A2220000 */  sb         $v0, ($s1)
.L8002D74C:
/* 2E34C 8002D74C 26310001 */  addiu      $s1, $s1, 1
/* 2E350 8002D750 1000000A */  b          .L8002D77C
/* 2E354 8002D754 26730001 */   addiu     $s3, $s3, 1
/* 2E358 8002D758 82820000 */  lb         $v0, ($s4)
.L8002D75C:
/* 2E35C 8002D75C 26940001 */  addiu      $s4, $s4, 1
/* 2E360 8002D760 54400004 */  bnel       $v0, $zero, .L8002D774
/* 2E364 8002D764 A2220000 */   sb        $v0, ($s1)
/* 2E368 8002D768 10000004 */  b          .L8002D77C
/* 2E36C 8002D76C 00009025 */   or        $s2, $zero, $zero
/* 2E370 8002D770 A2220000 */  sb         $v0, ($s1)
.L8002D774:
/* 2E374 8002D774 26310001 */  addiu      $s1, $s1, 1
/* 2E378 8002D778 26730001 */  addiu      $s3, $s3, 1
.L8002D77C:
/* 2E37C 8002D77C 0276082B */  sltu       $at, $s3, $s6
.L8002D780:
/* 2E380 8002D780 1420FFBF */  bnez       $at, .L8002D680
/* 2E384 8002D784 00000000 */   nop       
/* 2E388 8002D788 AFB40054 */  sw         $s4, 0x54($sp)
.L8002D78C:
/* 2E38C 8002D78C A2200000 */  sb         $zero, ($s1)
.L8002D790:
/* 2E390 8002D790 8FBF003C */  lw         $ra, 0x3c($sp)
/* 2E394 8002D794 8FBE0038 */  lw         $fp, 0x38($sp)
/* 2E398 8002D798 8FB70034 */  lw         $s7, 0x34($sp)
/* 2E39C 8002D79C 8FB60030 */  lw         $s6, 0x30($sp)
/* 2E3A0 8002D7A0 8FB5002C */  lw         $s5, 0x2c($sp)
/* 2E3A4 8002D7A4 8FB40028 */  lw         $s4, 0x28($sp)
/* 2E3A8 8002D7A8 8FB30024 */  lw         $s3, 0x24($sp)
/* 2E3AC 8002D7AC 8FB20020 */  lw         $s2, 0x20($sp)
/* 2E3B0 8002D7B0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2E3B4 8002D7B4 8FB00018 */  lw         $s0, 0x18($sp)
/* 2E3B8 8002D7B8 03E00008 */  jr         $ra
/* 2E3BC 8002D7BC 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002D7C0
/* 2E3C0 8002D7C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2E3C4 8002D7C4 00077080 */  sll        $t6, $a3, 2
/* 2E3C8 8002D7C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2E3CC 8002D7CC 00CE7821 */  addu       $t7, $a2, $t6
/* 2E3D0 8002D7D0 8DF80004 */  lw         $t8, 4($t7)
/* 2E3D4 8002D7D4 0306C821 */  addu       $t9, $t8, $a2
/* 2E3D8 8002D7D8 14800003 */  bnez       $a0, .L8002D7E8
/* 2E3DC 8002D7DC AFB90018 */   sw        $t9, 0x18($sp)
/* 2E3E0 8002D7E0 10000005 */  b          .L8002D7F8
/* 2E3E4 8002D7E4 03201825 */   or        $v1, $t9, $zero
.L8002D7E8:
/* 2E3E8 8002D7E8 8FA60018 */  lw         $a2, 0x18($sp)
/* 2E3EC 8002D7EC 0C00B58A */  jal        func_8002D628
/* 2E3F0 8002D7F0 AFA4001C */   sw        $a0, 0x1c($sp)
/* 2E3F4 8002D7F4 8FA3001C */  lw         $v1, 0x1c($sp)
.L8002D7F8:
/* 2E3F8 8002D7F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2E3FC 8002D7FC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2E400 8002D800 00601025 */  or         $v0, $v1, $zero
/* 2E404 8002D804 03E00008 */  jr         $ra
/* 2E408 8002D808 00000000 */   nop       

glabel func_8002D80C
/* 2E40C 8002D80C 80850000 */  lb         $a1, ($a0)
/* 2E410 8002D810 00001025 */  or         $v0, $zero, $zero
/* 2E414 8002D814 00001825 */  or         $v1, $zero, $zero
/* 2E418 8002D818 10A00009 */  beqz       $a1, .L8002D840
/* 2E41C 8002D81C 24840001 */   addiu     $a0, $a0, 1
/* 2E420 8002D820 2406000A */  addiu      $a2, $zero, 0xa
.L8002D824:
/* 2E424 8002D824 14A60002 */  bne        $a1, $a2, .L8002D830
/* 2E428 8002D828 00A01025 */   or        $v0, $a1, $zero
/* 2E42C 8002D82C 24630001 */  addiu      $v1, $v1, 1
.L8002D830:
/* 2E430 8002D830 80850000 */  lb         $a1, ($a0)
/* 2E434 8002D834 24840001 */  addiu      $a0, $a0, 1
/* 2E438 8002D838 14A0FFFA */  bnez       $a1, .L8002D824
/* 2E43C 8002D83C 00000000 */   nop       
.L8002D840:
/* 2E440 8002D840 2406000A */  addiu      $a2, $zero, 0xa
/* 2E444 8002D844 10460002 */  beq        $v0, $a2, .L8002D850
/* 2E448 8002D848 00000000 */   nop       
/* 2E44C 8002D84C 24630001 */  addiu      $v1, $v1, 1
.L8002D850:
/* 2E450 8002D850 03E00008 */  jr         $ra
/* 2E454 8002D854 00601025 */   or        $v0, $v1, $zero
/* 2E458 8002D858 00000000 */  nop        
/* 2E45C 8002D85C 00000000 */  nop        
