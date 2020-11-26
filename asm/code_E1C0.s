.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000D5C0
/* E1C0 8000D5C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E1C4 8000D5C4 AFA40028 */  sw         $a0, 0x28($sp)
/* E1C8 8000D5C8 AFBF0024 */  sw         $ra, 0x24($sp)
/* E1CC 8000D5CC 3C048120 */  lui        $a0, 0x8120
/* E1D0 8000D5D0 AFB20020 */  sw         $s2, 0x20($sp)
/* E1D4 8000D5D4 AFB1001C */  sw         $s1, 0x1c($sp)
/* E1D8 8000D5D8 AFB00018 */  sw         $s0, 0x18($sp)
/* E1DC 8000D5DC 0C000BA0 */  jal        func_80002E80
/* E1E0 8000D5E0 24846F38 */   addiu     $a0, $a0, 0x6f38
/* E1E4 8000D5E4 3C040100 */  lui        $a0, 0x100
/* E1E8 8000D5E8 00409025 */  or         $s2, $v0, $zero
/* E1EC 8000D5EC 0C018DBC */  jal        func_800636F0
/* E1F0 8000D5F0 34840C01 */   ori       $a0, $a0, 0xc01
/* E1F4 8000D5F4 3C10800B */  lui        $s0, 0x800b
/* E1F8 8000D5F8 2610A664 */  addiu      $s0, $s0, -0x599c
/* E1FC 8000D5FC 8E040000 */  lw         $a0, ($s0)
/* E200 8000D600 00002825 */  or         $a1, $zero, $zero
/* E204 8000D604 0C001330 */  jal        func_80004CC0
/* E208 8000D608 24060001 */   addiu     $a2, $zero, 1
/* E20C 8000D60C 0C0014CA */  jal        func_80005328
/* E210 8000D610 8E040000 */   lw        $a0, ($s0)
/* E214 8000D614 3C11800A */  lui        $s1, 0x800a
/* E218 8000D618 263162E0 */  addiu      $s1, $s1, 0x62e0
.L8000D61C:
/* E21C 8000D61C 0C00133D */  jal        func_80004CF4
/* E220 8000D620 8E040000 */   lw        $a0, ($s0)
/* E224 8000D624 862E0A38 */  lh         $t6, 0xa38($s1)
/* E228 8000D628 29C10015 */  slti       $at, $t6, 0x15
/* E22C 8000D62C 1020FFFB */  beqz       $at, .L8000D61C
/* E230 8000D630 00000000 */   nop       
/* E234 8000D634 0240F809 */  jalr       $s2
/* E238 8000D638 8E040000 */   lw        $a0, ($s0)
/* E23C 8000D63C 1000FFF7 */  b          .L8000D61C
/* E240 8000D640 00000000 */   nop       
/* E244 8000D644 00000000 */  nop        
/* E248 8000D648 00000000 */  nop        
/* E24C 8000D64C 00000000 */  nop        
/* E250 8000D650 00000000 */  nop        
/* E254 8000D654 00000000 */  nop        
/* E258 8000D658 00000000 */  nop        
/* E25C 8000D65C 00000000 */  nop        
/* E260 8000D660 8FBF0024 */  lw         $ra, 0x24($sp)
/* E264 8000D664 8FB00018 */  lw         $s0, 0x18($sp)
/* E268 8000D668 8FB1001C */  lw         $s1, 0x1c($sp)
/* E26C 8000D66C 8FB20020 */  lw         $s2, 0x20($sp)
/* E270 8000D670 03E00008 */  jr         $ra
/* E274 8000D674 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000D678
/* E278 8000D678 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E27C 8000D67C AFA40028 */  sw         $a0, 0x28($sp)
/* E280 8000D680 AFBF0024 */  sw         $ra, 0x24($sp)
/* E284 8000D684 3C048120 */  lui        $a0, 0x8120
/* E288 8000D688 AFB20020 */  sw         $s2, 0x20($sp)
/* E28C 8000D68C AFB1001C */  sw         $s1, 0x1c($sp)
/* E290 8000D690 AFB00018 */  sw         $s0, 0x18($sp)
/* E294 8000D694 0C000BA0 */  jal        func_80002E80
/* E298 8000D698 24846D9C */   addiu     $a0, $a0, 0x6d9c
/* E29C 8000D69C 3C048120 */  lui        $a0, 0x8120
/* E2A0 8000D6A0 00408825 */  or         $s1, $v0, $zero
/* E2A4 8000D6A4 0C000BA0 */  jal        func_80002E80
/* E2A8 8000D6A8 24846E64 */   addiu     $a0, $a0, 0x6e64
/* E2AC 8000D6AC 3C040100 */  lui        $a0, 0x100
/* E2B0 8000D6B0 00409025 */  or         $s2, $v0, $zero
/* E2B4 8000D6B4 0C018DBC */  jal        func_800636F0
/* E2B8 8000D6B8 34840C01 */   ori       $a0, $a0, 0xc01
/* E2BC 8000D6BC 3C10800B */  lui        $s0, 0x800b
/* E2C0 8000D6C0 2610A660 */  addiu      $s0, $s0, -0x59a0
/* E2C4 8000D6C4 8E040000 */  lw         $a0, ($s0)
/* E2C8 8000D6C8 00002825 */  or         $a1, $zero, $zero
/* E2CC 8000D6CC 0C001330 */  jal        func_80004CC0
/* E2D0 8000D6D0 24060001 */   addiu     $a2, $zero, 1
/* E2D4 8000D6D4 0C0014CA */  jal        func_80005328
/* E2D8 8000D6D8 8E040000 */   lw        $a0, ($s0)
/* E2DC 8000D6DC 0220F809 */  jalr       $s1
/* E2E0 8000D6E0 8E040000 */   lw        $a0, ($s0)
/* E2E4 8000D6E4 3C04800B */  lui        $a0, 0x800b
/* E2E8 8000D6E8 0C0194DC */  jal        osStartThread
/* E2EC 8000D6EC 8C84A664 */   lw        $a0, -0x599c($a0)
/* E2F0 8000D6F0 3C11800A */  lui        $s1, 0x800a
/* E2F4 8000D6F4 263162E0 */  addiu      $s1, $s1, 0x62e0
.L8000D6F8:
/* E2F8 8000D6F8 0C00133D */  jal        func_80004CF4
/* E2FC 8000D6FC 8E040000 */   lw        $a0, ($s0)
/* E300 8000D700 862E0A38 */  lh         $t6, 0xa38($s1)
/* E304 8000D704 29C10015 */  slti       $at, $t6, 0x15
/* E308 8000D708 1020FFFB */  beqz       $at, .L8000D6F8
/* E30C 8000D70C 00000000 */   nop       
/* E310 8000D710 0240F809 */  jalr       $s2
/* E314 8000D714 8E040000 */   lw        $a0, ($s0)
/* E318 8000D718 1000FFF7 */  b          .L8000D6F8
/* E31C 8000D71C 00000000 */   nop       
/* E320 8000D720 8FBF0024 */  lw         $ra, 0x24($sp)
/* E324 8000D724 8FB00018 */  lw         $s0, 0x18($sp)
/* E328 8000D728 8FB1001C */  lw         $s1, 0x1c($sp)
/* E32C 8000D72C 8FB20020 */  lw         $s2, 0x20($sp)
/* E330 8000D730 03E00008 */  jr         $ra
/* E334 8000D734 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000D738
/* E338 8000D738 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E33C 8000D73C AFA40028 */  sw         $a0, 0x28($sp)
/* E340 8000D740 AFBF0024 */  sw         $ra, 0x24($sp)
/* E344 8000D744 3C044742 */  lui        $a0, 0x4742
/* E348 8000D748 AFB10020 */  sw         $s1, 0x20($sp)
/* E34C 8000D74C AFB0001C */  sw         $s0, 0x1c($sp)
/* E350 8000D750 0C0009E1 */  jal        func_80002784
/* E354 8000D754 3484454D */   ori       $a0, $a0, 0x454d
/* E358 8000D758 24042210 */  addiu      $a0, $zero, 0x2210
/* E35C 8000D75C 0C000971 */  jal        func_800025C4
/* E360 8000D760 00002825 */   or        $a1, $zero, $zero
/* E364 8000D764 3C11800B */  lui        $s1, 0x800b
/* E368 8000D768 2631A660 */  addiu      $s1, $s1, -0x59a0
/* E36C 8000D76C AE220000 */  sw         $v0, ($s1)
/* E370 8000D770 240421E0 */  addiu      $a0, $zero, 0x21e0
/* E374 8000D774 0C000971 */  jal        func_800025C4
/* E378 8000D778 00002825 */   or        $a1, $zero, $zero
/* E37C 8000D77C 3C01800B */  lui        $at, 0x800b
/* E380 8000D780 AC22A664 */  sw         $v0, -0x599c($at)
/* E384 8000D784 3C048120 */  lui        $a0, 0x8120
/* E388 8000D788 24840000 */  addiu      $a0, $a0, 0
/* E38C 8000D78C 3C010FF0 */  lui        $at, 0xff0
/* E390 8000D790 00812024 */  and        $a0, $a0, $at
/* E394 8000D794 00042502 */  srl        $a0, $a0, 0x14
/* E398 8000D798 3C050008 */  lui        $a1, 8
/* E39C 8000D79C 3C06000B */  lui        $a2, 0xb
/* E3A0 8000D7A0 24C6DC80 */  addiu      $a2, $a2, -0x2380
/* E3A4 8000D7A4 24A5F980 */  addiu      $a1, $a1, -0x680
/* E3A8 8000D7A8 0C001115 */  jal        func_80004454
/* E3AC 8000D7AC 2484FFF0 */   addiu     $a0, $a0, -0x10
/* E3B0 8000D7B0 3C04003C */  lui        $a0, 0x3c
/* E3B4 8000D7B4 3C05003D */  lui        $a1, 0x3d
/* E3B8 8000D7B8 24A5B130 */  addiu      $a1, $a1, -0x4ed0
/* E3BC 8000D7BC 2484A190 */  addiu      $a0, $a0, -0x5e70
/* E3C0 8000D7C0 24060001 */  addiu      $a2, $zero, 1
/* E3C4 8000D7C4 0C00113D */  jal        func_800044F4
/* E3C8 8000D7C8 24070001 */   addiu     $a3, $zero, 1
/* E3CC 8000D7CC 00408025 */  or         $s0, $v0, $zero
/* E3D0 8000D7D0 00402025 */  or         $a0, $v0, $zero
/* E3D4 8000D7D4 0C001213 */  jal        func_8000484C
/* E3D8 8000D7D8 00002825 */   or        $a1, $zero, $zero
/* E3DC 8000D7DC 8E2E0000 */  lw         $t6, ($s1)
/* E3E0 8000D7E0 02002025 */  or         $a0, $s0, $zero
/* E3E4 8000D7E4 24050001 */  addiu      $a1, $zero, 1
/* E3E8 8000D7E8 0C001213 */  jal        func_8000484C
/* E3EC 8000D7EC ADC221FC */   sw        $v0, 0x21fc($t6)
/* E3F0 8000D7F0 8E2F0000 */  lw         $t7, ($s1)
/* E3F4 8000D7F4 24060001 */  addiu      $a2, $zero, 1
/* E3F8 8000D7F8 ADE22200 */  sw         $v0, 0x2200($t7)
/* E3FC 8000D7FC 8FB90028 */  lw         $t9, 0x28($sp)
/* E400 8000D800 8E380000 */  lw         $t8, ($s1)
/* E404 8000D804 8F290000 */  lw         $t1, ($t9)
/* E408 8000D808 AF092204 */  sw         $t1, 0x2204($t8)
/* E40C 8000D80C 8F280004 */  lw         $t0, 4($t9)
/* E410 8000D810 AF082208 */  sw         $t0, 0x2208($t8)
/* E414 8000D814 8E300000 */  lw         $s0, ($s1)
/* E418 8000D818 260421E4 */  addiu      $a0, $s0, 0x21e4
/* E41C 8000D81C 0C0178E8 */  jal        func_8005E3A0
/* E420 8000D820 260521E0 */   addiu     $a1, $s0, 0x21e0
/* E424 8000D824 3C04800B */  lui        $a0, 0x800b
/* E428 8000D828 8C84A664 */  lw         $a0, -0x599c($a0)
/* E42C 8000D82C 3C068001 */  lui        $a2, 0x8001
/* E430 8000D830 240B0011 */  addiu      $t3, $zero, 0x11
/* E434 8000D834 248A21E0 */  addiu      $t2, $a0, 0x21e0
/* E438 8000D838 AFAA0010 */  sw         $t2, 0x10($sp)
/* E43C 8000D83C AFAB0014 */  sw         $t3, 0x14($sp)
/* E440 8000D840 24C6D5C0 */  addiu      $a2, $a2, -0x2a40
/* E444 8000D844 2405000A */  addiu      $a1, $zero, 0xa
/* E448 8000D848 0C016330 */  jal        func_80058CC0
/* E44C 8000D84C 00003825 */   or        $a3, $zero, $zero
/* E450 8000D850 8E300000 */  lw         $s0, ($s1)
/* E454 8000D854 3C068001 */  lui        $a2, 0x8001
/* E458 8000D858 240D000F */  addiu      $t5, $zero, 0xf
/* E45C 8000D85C 260C21E0 */  addiu      $t4, $s0, 0x21e0
/* E460 8000D860 AFAC0010 */  sw         $t4, 0x10($sp)
/* E464 8000D864 AFAD0014 */  sw         $t5, 0x14($sp)
/* E468 8000D868 24C6D678 */  addiu      $a2, $a2, -0x2988
/* E46C 8000D86C 24050008 */  addiu      $a1, $zero, 8
/* E470 8000D870 00003825 */  or         $a3, $zero, $zero
/* E474 8000D874 0C016330 */  jal        func_80058CC0
/* E478 8000D878 02002025 */   or        $a0, $s0, $zero
/* E47C 8000D87C 0C002CC6 */  jal        func_8000B318
/* E480 8000D880 00002025 */   or        $a0, $zero, $zero
/* E484 8000D884 3C01800B */  lui        $at, 0x800b
/* E488 8000D888 A022A668 */  sb         $v0, -0x5998($at)
/* E48C 8000D88C 0C0194DC */  jal        osStartThread
/* E490 8000D890 8E240000 */   lw        $a0, ($s1)
/* E494 8000D894 8FBF0024 */  lw         $ra, 0x24($sp)
/* E498 8000D898 8FB0001C */  lw         $s0, 0x1c($sp)
/* E49C 8000D89C 8FB10020 */  lw         $s1, 0x20($sp)
/* E4A0 8000D8A0 03E00008 */  jr         $ra
/* E4A4 8000D8A4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000D8A8
/* E4A8 8000D8A8 3C04800B */  lui        $a0, 0x800b
/* E4AC 8000D8AC 8C84A660 */  lw         $a0, -0x59a0($a0)
/* E4B0 8000D8B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E4B4 8000D8B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* E4B8 8000D8B8 27A5001C */  addiu      $a1, $sp, 0x1c
/* E4BC 8000D8BC 24060001 */  addiu      $a2, $zero, 1
/* E4C0 8000D8C0 0C015AB4 */  jal        func_80056AD0
/* E4C4 8000D8C4 248421E4 */   addiu     $a0, $a0, 0x21e4
/* E4C8 8000D8C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* E4CC 8000D8CC 8FA2001C */  lw         $v0, 0x1c($sp)
/* E4D0 8000D8D0 27BD0020 */  addiu      $sp, $sp, 0x20
/* E4D4 8000D8D4 03E00008 */  jr         $ra
/* E4D8 8000D8D8 00000000 */   nop       

glabel func_8000D8DC
/* E4DC 8000D8DC 3C0E800B */  lui        $t6, 0x800b
/* E4E0 8000D8E0 8DCEA660 */  lw         $t6, -0x59a0($t6)
/* E4E4 8000D8E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E4E8 8000D8E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* E4EC 8000D8EC 8DD82204 */  lw         $t8, 0x2204($t6)
/* E4F0 8000D8F0 AC980000 */  sw         $t8, ($a0)
/* E4F4 8000D8F4 8DCF2208 */  lw         $t7, 0x2208($t6)
/* E4F8 8000D8F8 AC8F0004 */  sw         $t7, 4($a0)
/* E4FC 8000D8FC 3C04800B */  lui        $a0, 0x800b
/* E500 8000D900 0C002CC6 */  jal        func_8000B318
/* E504 8000D904 9084A668 */   lbu       $a0, -0x5998($a0)
/* E508 8000D908 0C016A78 */  jal        func_8005A9E0
/* E50C 8000D90C 24040001 */   addiu     $a0, $zero, 1
/* E510 8000D910 0C000719 */  jal        func_80001C64
/* E514 8000D914 00000000 */   nop       
/* E518 8000D918 3C04800B */  lui        $a0, 0x800b
/* E51C 8000D91C 0C0014DC */  jal        func_80005370
/* E520 8000D920 8C84A660 */   lw        $a0, -0x59a0($a0)
/* E524 8000D924 3C04800B */  lui        $a0, 0x800b
/* E528 8000D928 0C0014DC */  jal        func_80005370
/* E52C 8000D92C 8C84A664 */   lw        $a0, -0x599c($a0)
/* E530 8000D930 3C04800B */  lui        $a0, 0x800b
/* E534 8000D934 0C015CC0 */  jal        func_80057300
/* E538 8000D938 8C84A660 */   lw        $a0, -0x59a0($a0)
/* E53C 8000D93C 3C04800B */  lui        $a0, 0x800b
/* E540 8000D940 0C015CC0 */  jal        func_80057300
/* E544 8000D944 8C84A664 */   lw        $a0, -0x599c($a0)
/* E548 8000D948 3C044742 */  lui        $a0, 0x4742
/* E54C 8000D94C 0C000A0E */  jal        func_80002838
/* E550 8000D950 3484454D */   ori       $a0, $a0, 0x454d
/* E554 8000D954 8FBF0014 */  lw         $ra, 0x14($sp)
/* E558 8000D958 27BD0018 */  addiu      $sp, $sp, 0x18
/* E55C 8000D95C 03E00008 */  jr         $ra
/* E560 8000D960 00000000 */   nop       
/* E564 8000D964 00000000 */  nop        
/* E568 8000D968 00000000 */  nop        
/* E56C 8000D96C 00000000 */  nop        
