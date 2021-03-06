.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80063510
/* 64110 80063510 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 64114 80063514 AFBF001C */  sw         $ra, 0x1c($sp)
/* 64118 80063518 0C015A10 */  jal        func_80056840
/* 6411C 8006351C AFB00018 */   sw        $s0, 0x18($sp)
/* 64120 80063520 3C0E8008 */  lui        $t6, 0x8008
/* 64124 80063524 8DCEAE40 */  lw         $t6, -0x51c0($t6)
/* 64128 80063528 3C108010 */  lui        $s0, 0x8010
/* 6412C 8006352C 261038D0 */  addiu      $s0, $s0, 0x38d0
/* 64130 80063530 15C00006 */  bnez       $t6, .L8006354C
/* 64134 80063534 3C018008 */   lui       $at, 0x8008
/* 64138 80063538 0C015A21 */  jal        func_80056884
/* 6413C 8006353C 00000000 */   nop       
/* 64140 80063540 3C108010 */  lui        $s0, 0x8010
/* 64144 80063544 10000042 */  b          .L80063650
/* 64148 80063548 260238D0 */   addiu     $v0, $s0, 0x38d0
.L8006354C:
/* 6414C 8006354C AC20AE40 */  sw         $zero, -0x51c0($at)
/* 64150 80063550 3C0FB000 */  lui        $t7, 0xb000
/* 64154 80063554 3C048010 */  lui        $a0, 0x8010
/* 64158 80063558 A2000004 */  sb         $zero, 4($s0)
/* 6415C 8006355C AE0F000C */  sw         $t7, 0xc($s0)
/* 64160 80063560 A2000009 */  sb         $zero, 9($s0)
/* 64164 80063564 AE000010 */  sw         $zero, 0x10($s0)
/* 64168 80063568 248438E4 */  addiu      $a0, $a0, 0x38e4
/* 6416C 8006356C 0C015FF4 */  jal        func_80057FD0
/* 64170 80063570 24050060 */   addiu     $a1, $zero, 0x60
/* 64174 80063574 3C03A460 */  lui        $v1, 0xa460
/* 64178 80063578 34630010 */  ori        $v1, $v1, 0x10
/* 6417C 8006357C 8C620000 */  lw         $v0, ($v1)
/* 64180 80063580 3C07A460 */  lui        $a3, 0xa460
/* 64184 80063584 34E70014 */  ori        $a3, $a3, 0x14
/* 64188 80063588 30580003 */  andi       $t8, $v0, 3
/* 6418C 8006358C 13000005 */  beqz       $t8, .L800635A4
/* 64190 80063590 3C08A460 */   lui       $t0, 0xa460
/* 64194 80063594 8C620000 */  lw         $v0, ($v1)
.L80063598:
/* 64198 80063598 30590003 */  andi       $t9, $v0, 3
/* 6419C 8006359C 5720FFFE */  bnel       $t9, $zero, .L80063598
/* 641A0 800635A0 8C620000 */   lw        $v0, ($v1)
.L800635A4:
/* 641A4 800635A4 8CE30000 */  lw         $v1, ($a3)
/* 641A8 800635A8 3508001C */  ori        $t0, $t0, 0x1c
/* 641AC 800635AC 3C09A460 */  lui        $t1, 0xa460
/* 641B0 800635B0 8D040000 */  lw         $a0, ($t0)
/* 641B4 800635B4 35290020 */  ori        $t1, $t1, 0x20
/* 641B8 800635B8 3C0AA460 */  lui        $t2, 0xa460
/* 641BC 800635BC 8D250000 */  lw         $a1, ($t1)
/* 641C0 800635C0 354A0018 */  ori        $t2, $t2, 0x18
/* 641C4 800635C4 8D460000 */  lw         $a2, ($t2)
/* 641C8 800635C8 240B00FF */  addiu      $t3, $zero, 0xff
/* 641CC 800635CC ACEB0000 */  sw         $t3, ($a3)
/* 641D0 800635D0 AD000000 */  sw         $zero, ($t0)
/* 641D4 800635D4 240C0003 */  addiu      $t4, $zero, 3
/* 641D8 800635D8 AD2C0000 */  sw         $t4, ($t1)
/* 641DC 800635DC AD4B0000 */  sw         $t3, ($t2)
/* 641E0 800635E0 8E0D000C */  lw         $t5, 0xc($s0)
/* 641E4 800635E4 3C01A000 */  lui        $at, 0xa000
/* 641E8 800635E8 01A17025 */  or         $t6, $t5, $at
/* 641EC 800635EC 8DC20000 */  lw         $v0, ($t6)
/* 641F0 800635F0 0002C402 */  srl        $t8, $v0, 0x10
/* 641F4 800635F4 00026502 */  srl        $t4, $v0, 0x14
/* 641F8 800635F8 3319000F */  andi       $t9, $t8, 0xf
/* 641FC 800635FC 318D000F */  andi       $t5, $t4, 0xf
/* 64200 80063600 00027A02 */  srl        $t7, $v0, 8
/* 64204 80063604 A2190006 */  sb         $t9, 6($s0)
/* 64208 80063608 A20D0007 */  sb         $t5, 7($s0)
/* 6420C 8006360C A20F0008 */  sb         $t7, 8($s0)
/* 64210 80063610 A2020005 */  sb         $v0, 5($s0)
/* 64214 80063614 ACE30000 */  sw         $v1, ($a3)
/* 64218 80063618 AD040000 */  sw         $a0, ($t0)
/* 6421C 8006361C AD250000 */  sw         $a1, ($t1)
/* 64220 80063620 0C018AA4 */  jal        __osDisableInt
/* 64224 80063624 AD460000 */   sw        $a2, ($t2)
/* 64228 80063628 3C038008 */  lui        $v1, 0x8008
/* 6422C 8006362C 2463A87C */  addiu      $v1, $v1, -0x5784
/* 64230 80063630 8C780000 */  lw         $t8, ($v1)
/* 64234 80063634 AC700000 */  sw         $s0, ($v1)
/* 64238 80063638 00402025 */  or         $a0, $v0, $zero
/* 6423C 8006363C 0C018AC0 */  jal        __osRestoreInt
/* 64240 80063640 AE180000 */   sw        $t8, ($s0)
/* 64244 80063644 0C015A21 */  jal        func_80056884
/* 64248 80063648 00000000 */   nop       
/* 6424C 8006364C 02001025 */  or         $v0, $s0, $zero
.L80063650:
/* 64250 80063650 8FBF001C */  lw         $ra, 0x1c($sp)
/* 64254 80063654 8FB00018 */  lw         $s0, 0x18($sp)
/* 64258 80063658 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6425C 8006365C 03E00008 */  jr         $ra
/* 64260 80063660 00000000 */   nop       
/* 64264 80063664 00000000 */  nop        
/* 64268 80063668 00000000 */  nop        
/* 6426C 8006366C 00000000 */  nop        
