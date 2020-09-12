.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80033230
/* 33E30 80033230 AFA40000 */  sw        $a0, ($sp)
/* 33E34 80033234 24040002 */  addiu     $a0, $zero, 2
/* 33E38 80033238 00001025 */  or        $v0, $zero, $zero
/* 33E3C 8003323C 24050008 */  addiu     $a1, $zero, 8
/* 33E40 80033240 00001825 */  or        $v1, $zero, $zero
.L80033244:
/* 33E44 80033244 24630001 */  addiu     $v1, $v1, 1
.L80033248:
/* 33E48 80033248 5464FFFF */  bnel      $v1, $a0, .L80033248
/* 33E4C 8003324C 24630001 */  addiu     $v1, $v1, 1
/* 33E50 80033250 24420001 */  addiu     $v0, $v0, 1
/* 33E54 80033254 5445FFFB */  bnel      $v0, $a1, .L80033244
/* 33E58 80033258 00001825 */  or        $v1, $zero, $zero
/* 33E5C 8003325C 03E00008 */  jr        $ra
/* 33E60 80033260 00000000 */  nop       

glabel func_80033264
/* 33E64 80033264 AFA40000 */  sw        $a0, ($sp)
/* 33E68 80033268 00001025 */  or        $v0, $zero, $zero
/* 33E6C 8003326C 24030004 */  addiu     $v1, $zero, 4
/* 33E70 80033270 24420001 */  addiu     $v0, $v0, 1
.L80033274:
/* 33E74 80033274 5443FFFF */  bnel      $v0, $v1, .L80033274
/* 33E78 80033278 24420001 */  addiu     $v0, $v0, 1
/* 33E7C 8003327C 03E00008 */  jr        $ra
/* 33E80 80033280 00000000 */  nop       

glabel func_80033284
/* 33E84 80033284 27BDFEB8 */  addiu     $sp, $sp, -0x148
/* 33E88 80033288 AFBF001C */  sw        $ra, 0x1c($sp)
/* 33E8C 8003328C AFB00018 */  sw        $s0, 0x18($sp)
/* 33E90 80033290 AFA5014C */  sw        $a1, 0x14c($sp)
/* 33E94 80033294 AFA60150 */  sw        $a2, 0x150($sp)
/* 33E98 80033298 AFA70154 */  sw        $a3, 0x154($sp)
/* 33E9C 8003329C C4A40000 */  lwc1      $f4, ($a1)
/* 33EA0 800332A0 00808025 */  or        $s0, $a0, $zero
/* 33EA4 800332A4 27A40034 */  addiu     $a0, $sp, 0x34
/* 33EA8 800332A8 E7A40144 */  swc1      $f4, 0x144($sp)
/* 33EAC 800332AC C4A60004 */  lwc1      $f6, 4($a1)
/* 33EB0 800332B0 E7A60140 */  swc1      $f6, 0x140($sp)
/* 33EB4 800332B4 C4A80008 */  lwc1      $f8, 8($a1)
/* 33EB8 800332B8 3C058007 */  lui       $a1, 0x8007
/* 33EBC 800332BC 8CA5F088 */  lw        $a1, -0xf78($a1)
/* 33EC0 800332C0 E7A8013C */  swc1      $f8, 0x13c($sp)
/* 33EC4 800332C4 0C00C7BD */  jal       func_80031EF4
/* 33EC8 800332C8 24A50064 */  addiu     $a1, $a1, 0x64
/* 33ECC 800332CC 27A40034 */  addiu     $a0, $sp, 0x34
/* 33ED0 800332D0 0C016BD4 */  jal       func_8005AF50
/* 33ED4 800332D4 27A50078 */  addiu     $a1, $sp, 0x78
/* 33ED8 800332D8 C7A00160 */  lwc1      $f0, 0x160($sp)
/* 33EDC 800332DC 27A400B8 */  addiu     $a0, $sp, 0xb8
/* 33EE0 800332E0 44050000 */  mfc1      $a1, $f0
/* 33EE4 800332E4 44060000 */  mfc1      $a2, $f0
/* 33EE8 800332E8 44070000 */  mfc1      $a3, $f0
/* 33EEC 800332EC 0C015B51 */  jal       func_80056D44
/* 33EF0 800332F0 00000000 */  nop       
/* 33EF4 800332F4 27A400F8 */  addiu     $a0, $sp, 0xf8
/* 33EF8 800332F8 8FA50144 */  lw        $a1, 0x144($sp)
/* 33EFC 800332FC 8FA60140 */  lw        $a2, 0x140($sp)
/* 33F00 80033300 0C01797A */  jal       func_8005E5E8
/* 33F04 80033304 8FA7013C */  lw        $a3, 0x13c($sp)
/* 33F08 80033308 0C0017D7 */  jal       func_80005F5C
/* 33F0C 8003330C 24040040 */  addiu     $a0, $zero, 0x40
/* 33F10 80033310 AFA20138 */  sw        $v0, 0x138($sp)
/* 33F14 80033314 27A400B8 */  addiu     $a0, $sp, 0xb8
/* 33F18 80033318 27A500F8 */  addiu     $a1, $sp, 0xf8
/* 33F1C 8003331C 0C017454 */  jal       func_8005D150
/* 33F20 80033320 00403025 */  or        $a2, $v0, $zero
/* 33F24 80033324 8FA50138 */  lw        $a1, 0x138($sp)
/* 33F28 80033328 27A40078 */  addiu     $a0, $sp, 0x78
/* 33F2C 8003332C 0C017454 */  jal       func_8005D150
/* 33F30 80033330 00A03025 */  or        $a2, $a1, $zero
/* 33F34 80033334 3C0FDA38 */  lui       $t7, 0xda38
/* 33F38 80033338 35EF0002 */  ori       $t7, $t7, 2
/* 33F3C 8003333C 02001025 */  or        $v0, $s0, $zero
/* 33F40 80033340 AC4F0000 */  sw        $t7, ($v0)
/* 33F44 80033344 8FB80138 */  lw        $t8, 0x138($sp)
/* 33F48 80033348 26100008 */  addiu     $s0, $s0, 8
/* 33F4C 8003334C 02001825 */  or        $v1, $s0, $zero
/* 33F50 80033350 3C19FA00 */  lui       $t9, 0xfa00
/* 33F54 80033354 AC580004 */  sw        $t8, 4($v0)
/* 33F58 80033358 AC790000 */  sw        $t9, ($v1)
/* 33F5C 8003335C 93AC0157 */  lbu       $t4, 0x157($sp)
/* 33F60 80033360 93A90153 */  lbu       $t1, 0x153($sp)
/* 33F64 80033364 93B8015B */  lbu       $t8, 0x15b($sp)
/* 33F68 80033368 93AB015F */  lbu       $t3, 0x15f($sp)
/* 33F6C 8003336C 000C6C00 */  sll       $t5, $t4, 0x10
/* 33F70 80033370 00095600 */  sll       $t2, $t1, 0x18
/* 33F74 80033374 014D7025 */  or        $t6, $t2, $t5
/* 33F78 80033378 0018CA00 */  sll       $t9, $t8, 8
/* 33F7C 8003337C 01D94025 */  or        $t0, $t6, $t9
/* 33F80 80033380 26100008 */  addiu     $s0, $s0, 8
/* 33F84 80033384 02002025 */  or        $a0, $s0, $zero
/* 33F88 80033388 010B6025 */  or        $t4, $t0, $t3
/* 33F8C 8003338C AC6C0004 */  sw        $t4, 4($v1)
/* 33F90 80033390 3C0D8007 */  lui       $t5, 0x8007
/* 33F94 80033394 25AD6330 */  addiu     $t5, $t5, 0x6330
/* 33F98 80033398 26100008 */  addiu     $s0, $s0, 8
/* 33F9C 8003339C 3C0ADE00 */  lui       $t2, 0xde00
/* 33FA0 800333A0 AC8A0000 */  sw        $t2, ($a0)
/* 33FA4 800333A4 AC8D0004 */  sw        $t5, 4($a0)
/* 33FA8 800333A8 02002825 */  or        $a1, $s0, $zero
/* 33FAC 800333AC 3C0FD838 */  lui       $t7, 0xd838
/* 33FB0 800333B0 35EF0002 */  ori       $t7, $t7, 2
/* 33FB4 800333B4 24180040 */  addiu     $t8, $zero, 0x40
/* 33FB8 800333B8 ACB80004 */  sw        $t8, 4($a1)
/* 33FBC 800333BC ACAF0000 */  sw        $t7, ($a1)
/* 33FC0 800333C0 8FBF001C */  lw        $ra, 0x1c($sp)
/* 33FC4 800333C4 26020008 */  addiu     $v0, $s0, 8
/* 33FC8 800333C8 8FB00018 */  lw        $s0, 0x18($sp)
/* 33FCC 800333CC 03E00008 */  jr        $ra
/* 33FD0 800333D0 27BD0148 */  addiu     $sp, $sp, 0x148
/* 33FD4 800333D4 00000000 */  nop       
/* 33FD8 800333D8 00000000 */  nop       
/* 33FDC 800333DC 00000000 */  nop       
