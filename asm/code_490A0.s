.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_800484A0
/* 490A0 800484A0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 490A4 800484A4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 490A8 800484A8 0C00E4D5 */  jal       func_80039354
/* 490AC 800484AC 00000000 */  nop       
/* 490B0 800484B0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 490B4 800484B4 27BD0018 */  addiu     $sp, $sp, 0x18
/* 490B8 800484B8 03E00008 */  jr        $ra
/* 490BC 800484BC 00000000 */  nop       

glabel func_800484C0
/* 490C0 800484C0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 490C4 800484C4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 490C8 800484C8 0C00E481 */  jal       func_80039204
/* 490CC 800484CC 00000000 */  nop       
/* 490D0 800484D0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 490D4 800484D4 27BD0018 */  addiu     $sp, $sp, 0x18
/* 490D8 800484D8 03E00008 */  jr        $ra
/* 490DC 800484DC 00000000 */  nop       

glabel func_800484E0
/* 490E0 800484E0 3C028010 */  lui       $v0, 0x8010
/* 490E4 800484E4 3C038010 */  lui       $v1, 0x8010
/* 490E8 800484E8 8C63C818 */  lw        $v1, -0x37e8($v1)
/* 490EC 800484EC 8C42C814 */  lw        $v0, -0x37ec($v0)
/* 490F0 800484F0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 490F4 800484F4 AFB1001C */  sw        $s1, 0x1c($sp)
/* 490F8 800484F8 AFBF0024 */  sw        $ra, 0x24($sp)
/* 490FC 800484FC AFB20020 */  sw        $s2, 0x20($sp)
/* 49100 80048500 AFB00018 */  sw        $s0, 0x18($sp)
/* 49104 80048504 10430002 */  beq       $v0, $v1, .L80048510
/* 49108 80048508 00008825 */  or        $s1, $zero, $zero
/* 4910C 8004850C 00438823 */  subu      $s1, $v0, $v1
.L80048510:
/* 49110 80048510 00008025 */  or        $s0, $zero, $zero
/* 49114 80048514 24120002 */  addiu     $s2, $zero, 2
.L80048518:
/* 49118 80048518 0C011395 */  jal       func_80044E54
/* 4911C 8004851C 02002025 */  or        $a0, $s0, $zero
/* 49120 80048520 10400002 */  beqz      $v0, .L8004852C
/* 49124 80048524 26100001 */  addiu     $s0, $s0, 1
/* 49128 80048528 26310064 */  addiu     $s1, $s1, 0x64
.L8004852C:
/* 4912C 8004852C 1612FFFA */  bne       $s0, $s2, .L80048518
/* 49130 80048530 00000000 */  nop       
/* 49134 80048534 0C00F525 */  jal       func_8003D494
/* 49138 80048538 00000000 */  nop       
/* 4913C 8004853C 10400007 */  beqz      $v0, .L8004855C
/* 49140 80048540 8FB00018 */  lw        $s0, 0x18($sp)
/* 49144 80048544 00027140 */  sll       $t6, $v0, 5
/* 49148 80048548 01C27023 */  subu      $t6, $t6, $v0
/* 4914C 8004854C 000E7080 */  sll       $t6, $t6, 2
/* 49150 80048550 01C27021 */  addu      $t6, $t6, $v0
/* 49154 80048554 000E70C0 */  sll       $t6, $t6, 3
/* 49158 80048558 022E8821 */  addu      $s1, $s1, $t6
.L8004855C:
/* 4915C 8004855C 8FBF0024 */  lw        $ra, 0x24($sp)
/* 49160 80048560 02201025 */  or        $v0, $s1, $zero
/* 49164 80048564 8FB1001C */  lw        $s1, 0x1c($sp)
/* 49168 80048568 8FB20020 */  lw        $s2, 0x20($sp)
/* 4916C 8004856C 03E00008 */  jr        $ra
/* 49170 80048570 27BD0028 */  addiu     $sp, $sp, 0x28

glabel func_80048574
/* 49174 80048574 3C028010 */  lui       $v0, 0x8010
/* 49178 80048578 03E00008 */  jr        $ra
/* 4917C 8004857C 8C42C818 */  lw        $v0, -0x37e8($v0)

glabel func_80048580
/* 49180 80048580 3C028010 */  lui       $v0, 0x8010
/* 49184 80048584 03E00008 */  jr        $ra
/* 49188 80048588 8C42C81C */  lw        $v0, -0x37e4($v0)
/* 4918C 8004858C 00000000 */  nop       
