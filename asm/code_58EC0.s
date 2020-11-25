.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800582C0
/* 58EC0 800582C0 27BDFDF0 */  addiu      $sp, $sp, -0x210
/* 58EC4 800582C4 AFBF0044 */  sw         $ra, 0x44($sp)
/* 58EC8 800582C8 240E0001 */  addiu      $t6, $zero, 1
/* 58ECC 800582CC AFBE0040 */  sw         $fp, 0x40($sp)
/* 58ED0 800582D0 AFB7003C */  sw         $s7, 0x3c($sp)
/* 58ED4 800582D4 AFB60038 */  sw         $s6, 0x38($sp)
/* 58ED8 800582D8 AFB50034 */  sw         $s5, 0x34($sp)
/* 58EDC 800582DC AFB40030 */  sw         $s4, 0x30($sp)
/* 58EE0 800582E0 AFB3002C */  sw         $s3, 0x2c($sp)
/* 58EE4 800582E4 AFB20028 */  sw         $s2, 0x28($sp)
/* 58EE8 800582E8 AFB10024 */  sw         $s1, 0x24($sp)
/* 58EEC 800582EC AFB00020 */  sw         $s0, 0x20($sp)
/* 58EF0 800582F0 AFA40210 */  sw         $a0, 0x210($sp)
/* 58EF4 800582F4 AFA50214 */  sw         $a1, 0x214($sp)
/* 58EF8 800582F8 AFAE0208 */  sw         $t6, 0x208($sp)
/* 58EFC 800582FC AFA00204 */  sw         $zero, 0x204($sp)
/* 58F00 80058300 0C0177A8 */  jal        func_8005DEA0
/* 58F04 80058304 A7A00200 */   sh        $zero, 0x200($sp)
/* 58F08 80058308 2401000D */  addiu      $at, $zero, 0xd
/* 58F0C 8005830C 14410005 */  bne        $v0, $at, .L80058324
/* 58F10 80058310 00401825 */   or        $v1, $v0, $zero
/* 58F14 80058314 8FA40210 */  lw         $a0, 0x210($sp)
/* 58F18 80058318 0C0177A8 */  jal        func_8005DEA0
/* 58F1C 8005831C 8FA50214 */   lw        $a1, 0x214($sp)
/* 58F20 80058320 00401825 */  or         $v1, $v0, $zero
.L80058324:
/* 58F24 80058324 2401000D */  addiu      $at, $zero, 0xd
/* 58F28 80058328 14410003 */  bne        $v0, $at, .L80058338
/* 58F2C 8005832C 00000000 */   nop       
/* 58F30 80058330 100000F9 */  b          .L80058718
/* 58F34 80058334 24020004 */   addiu     $v0, $zero, 4
.L80058338:
/* 58F38 80058338 144000F6 */  bnez       $v0, .L80058714
/* 58F3C 8005833C 8FAF0214 */   lw        $t7, 0x214($sp)
/* 58F40 80058340 91F80000 */  lbu        $t8, ($t7)
/* 58F44 80058344 8FA40210 */  lw         $a0, 0x210($sp)
/* 58F48 80058348 33190001 */  andi       $t9, $t8, 1
/* 58F4C 8005834C 57200008 */  bnel       $t9, $zero, .L80058370
/* 58F50 80058350 27A40070 */   addiu     $a0, $sp, 0x70
/* 58F54 80058354 0C0161D4 */  jal        func_80058750
/* 58F58 80058358 24050001 */   addiu     $a1, $zero, 1
/* 58F5C 8005835C 50400004 */  beql       $v0, $zero, .L80058370
/* 58F60 80058360 27A40070 */   addiu     $a0, $sp, 0x70
/* 58F64 80058364 100000ED */  b          .L8005871C
/* 58F68 80058368 8FBF0044 */   lw        $ra, 0x44($sp)
/* 58F6C 8005836C 27A40070 */  addiu      $a0, $sp, 0x70
.L80058370:
/* 58F70 80058370 0C015FF4 */  jal        func_80057FD0
/* 58F74 80058374 2405000C */   addiu     $a1, $zero, 0xc
/* 58F78 80058378 24080080 */  addiu      $t0, $zero, 0x80
/* 58F7C 8005837C 24020080 */  addiu      $v0, $zero, 0x80
/* 58F80 80058380 AFA20068 */  sw         $v0, 0x68($sp)
/* 58F84 80058384 A7A80202 */  sh         $t0, 0x202($sp)
/* 58F88 80058388 24160001 */  addiu      $s6, $zero, 1
.L8005838C:
/* 58F8C 8005838C 8FA90208 */  lw         $t1, 0x208($sp)
/* 58F90 80058390 27AB007C */  addiu      $t3, $sp, 0x7c
/* 58F94 80058394 00009825 */  or         $s3, $zero, $zero
/* 58F98 80058398 000951C0 */  sll        $t2, $t1, 7
/* 58F9C 8005839C 00009025 */  or         $s2, $zero, $zero
/* 58FA0 800583A0 014BF021 */  addu       $fp, $t2, $t3
.L800583A4:
/* 58FA4 800583A4 8FA20068 */  lw         $v0, 0x68($sp)
/* 58FA8 800583A8 00138140 */  sll        $s0, $s3, 5
/* 58FAC 800583AC 03D0A821 */  addu       $s5, $fp, $s0
/* 58FB0 800583B0 00523021 */  addu       $a2, $v0, $s2
/* 58FB4 800583B4 30CCFFFF */  andi       $t4, $a2, 0xffff
/* 58FB8 800583B8 240D0020 */  addiu      $t5, $zero, 0x20
/* 58FBC 800583BC AFAD0010 */  sw         $t5, 0x10($sp)
/* 58FC0 800583C0 01803025 */  or         $a2, $t4, $zero
/* 58FC4 800583C4 02A03825 */  or         $a3, $s5, $zero
/* 58FC8 800583C8 8FA40210 */  lw         $a0, 0x210($sp)
/* 58FCC 800583CC 00002825 */  or         $a1, $zero, $zero
/* 58FD0 800583D0 0C019644 */  jal        func_80065910
/* 58FD4 800583D4 0240A025 */   or        $s4, $s2, $zero
/* 58FD8 800583D8 10400003 */  beqz       $v0, .L800583E8
/* 58FDC 800583DC 8FAE0208 */   lw        $t6, 0x208($sp)
/* 58FE0 800583E0 100000CE */  b          .L8005871C
/* 58FE4 800583E4 8FBF0044 */   lw        $ra, 0x44($sp)
.L800583E8:
/* 58FE8 800583E8 000E7880 */  sll        $t7, $t6, 2
/* 58FEC 800583EC 27B80070 */  addiu      $t8, $sp, 0x70
/* 58FF0 800583F0 01F8B821 */  addu       $s7, $t7, $t8
/* 58FF4 800583F4 02F3C821 */  addu       $t9, $s7, $s3
/* 58FF8 800583F8 A3360000 */  sb         $s6, ($t9)
/* 58FFC 800583FC 8FA80204 */  lw         $t0, 0x204($sp)
/* 59000 80058400 27AB0070 */  addiu      $t3, $sp, 0x70
/* 59004 80058404 27AD007C */  addiu      $t5, $sp, 0x7c
/* 59008 80058408 00084880 */  sll        $t1, $t0, 2
/* 5900C 8005840C 01335021 */  addu       $t2, $t1, $s3
/* 59010 80058410 014B8821 */  addu       $s1, $t2, $t3
/* 59014 80058414 922E0000 */  lbu        $t6, ($s1)
/* 59018 80058418 000861C0 */  sll        $t4, $t0, 7
/* 5901C 8005841C 018D9021 */  addu       $s2, $t4, $t5
/* 59020 80058420 15C0000F */  bnez       $t6, .L80058460
/* 59024 80058424 8FA40210 */   lw        $a0, 0x210($sp)
/* 59028 80058428 97AF0200 */  lhu        $t7, 0x200($sp)
/* 5902C 8005842C 24190020 */  addiu      $t9, $zero, 0x20
/* 59030 80058430 AFB90010 */  sw         $t9, 0x10($sp)
/* 59034 80058434 01F43021 */  addu       $a2, $t7, $s4
/* 59038 80058438 30D8FFFF */  andi       $t8, $a2, 0xffff
/* 5903C 8005843C 03003025 */  or         $a2, $t8, $zero
/* 59040 80058440 00002825 */  or         $a1, $zero, $zero
/* 59044 80058444 0C019644 */  jal        func_80065910
/* 59048 80058448 02503821 */   addu      $a3, $s2, $s0
/* 5904C 8005844C 50400004 */  beql       $v0, $zero, .L80058460
/* 59050 80058450 A2360000 */   sb        $s6, ($s1)
/* 59054 80058454 100000B1 */  b          .L8005871C
/* 59058 80058458 8FBF0044 */   lw        $ra, 0x44($sp)
/* 5905C 8005845C A2360000 */  sb         $s6, ($s1)
.L80058460:
/* 59060 80058460 02A02025 */  or         $a0, $s5, $zero
/* 59064 80058464 02502821 */  addu       $a1, $s2, $s0
/* 59068 80058468 0C017B90 */  jal        func_8005EE40
/* 5906C 8005846C 24060020 */   addiu     $a2, $zero, 0x20
/* 59070 80058470 10400003 */  beqz       $v0, .L80058480
/* 59074 80058474 26920020 */   addiu     $s2, $s4, 0x20
/* 59078 80058478 10000008 */  b          .L8005849C
/* 5907C 8005847C 00009825 */   or        $s3, $zero, $zero
.L80058480:
/* 59080 80058480 2A620003 */  slti       $v0, $s3, 3
/* 59084 80058484 26730001 */  addiu      $s3, $s3, 1
/* 59088 80058488 326AFFFF */  andi       $t2, $s3, 0xffff
/* 5908C 8005848C 3249FFFF */  andi       $t1, $s2, 0xffff
/* 59090 80058490 01209025 */  or         $s2, $t1, $zero
/* 59094 80058494 1440FFC3 */  bnez       $v0, .L800583A4
/* 59098 80058498 01409825 */   or        $s3, $t2, $zero
.L8005849C:
/* 5909C 8005849C 12600003 */  beqz       $s3, .L800584AC
/* 590A0 800584A0 02601025 */   or        $v0, $s3, $zero
/* 590A4 800584A4 1000009C */  b          .L80058718
/* 590A8 800584A8 24020004 */   addiu     $v0, $zero, 4
.L800584AC:
/* 590AC 800584AC 8FAB0204 */  lw         $t3, 0x204($sp)
/* 590B0 800584B0 00009825 */  or         $s3, $zero, $zero
/* 590B4 800584B4 00009025 */  or         $s2, $zero, $zero
/* 590B8 800584B8 11600036 */  beqz       $t3, .L80058594
.L800584BC:
/* 590BC 800584BC 02F38021 */   addu      $s0, $s7, $s3
/* 590C0 800584C0 92080000 */  lbu        $t0, ($s0)
/* 590C4 800584C4 8FA40210 */  lw         $a0, 0x210($sp)
/* 590C8 800584C8 00002825 */  or         $a1, $zero, $zero
/* 590CC 800584CC 1500000E */  bnez       $t0, .L80058508
/* 590D0 800584D0 8FAC0068 */   lw        $t4, 0x68($sp)
/* 590D4 800584D4 01923021 */  addu       $a2, $t4, $s2
/* 590D8 800584D8 30CDFFFF */  andi       $t5, $a2, 0xffff
/* 590DC 800584DC 00137140 */  sll        $t6, $s3, 5
/* 590E0 800584E0 240F0020 */  addiu      $t7, $zero, 0x20
/* 590E4 800584E4 AFAF0010 */  sw         $t7, 0x10($sp)
/* 590E8 800584E8 03CE3821 */  addu       $a3, $fp, $t6
/* 590EC 800584EC 0C019644 */  jal        func_80065910
/* 590F0 800584F0 01A03025 */   or        $a2, $t5, $zero
/* 590F4 800584F4 50400004 */  beql       $v0, $zero, .L80058508
/* 590F8 800584F8 A2160000 */   sb        $s6, ($s0)
/* 590FC 800584FC 10000087 */  b          .L8005871C
/* 59100 80058500 8FBF0044 */   lw        $ra, 0x44($sp)
/* 59104 80058504 A2160000 */  sb         $s6, ($s0)
.L80058508:
/* 59108 80058508 27B80070 */  addiu      $t8, $sp, 0x70
/* 5910C 8005850C 02788821 */  addu       $s1, $s3, $t8
/* 59110 80058510 92390000 */  lbu        $t9, ($s1)
/* 59114 80058514 00138140 */  sll        $s0, $s3, 5
/* 59118 80058518 8FA40210 */  lw         $a0, 0x210($sp)
/* 5911C 8005851C 1720000C */  bnez       $t9, .L80058550
/* 59120 80058520 00002825 */   or        $a1, $zero, $zero
/* 59124 80058524 27A9007C */  addiu      $t1, $sp, 0x7c
/* 59128 80058528 240A0020 */  addiu      $t2, $zero, 0x20
/* 5912C 8005852C AFAA0010 */  sw         $t2, 0x10($sp)
/* 59130 80058530 02093821 */  addu       $a3, $s0, $t1
/* 59134 80058534 0C019644 */  jal        func_80065910
/* 59138 80058538 3246FFFF */   andi      $a2, $s2, 0xffff
/* 5913C 8005853C 50400004 */  beql       $v0, $zero, .L80058550
/* 59140 80058540 A2360000 */   sb        $s6, ($s1)
/* 59144 80058544 10000075 */  b          .L8005871C
/* 59148 80058548 8FBF0044 */   lw        $ra, 0x44($sp)
/* 5914C 8005854C A2360000 */  sb         $s6, ($s1)
.L80058550:
/* 59150 80058550 27AB007C */  addiu      $t3, $sp, 0x7c
/* 59154 80058554 020B2821 */  addu       $a1, $s0, $t3
/* 59158 80058558 03D02021 */  addu       $a0, $fp, $s0
/* 5915C 8005855C 0C017B90 */  jal        func_8005EE40
/* 59160 80058560 24060020 */   addiu     $a2, $zero, 0x20
/* 59164 80058564 10400003 */  beqz       $v0, .L80058574
/* 59168 80058568 26520020 */   addiu     $s2, $s2, 0x20
/* 5916C 8005856C 10000009 */  b          .L80058594
/* 59170 80058570 00001025 */   or        $v0, $zero, $zero
.L80058574:
/* 59174 80058574 2A620003 */  slti       $v0, $s3, 3
/* 59178 80058578 26730001 */  addiu      $s3, $s3, 1
/* 5917C 8005857C 326CFFFF */  andi       $t4, $s3, 0xffff
/* 59180 80058580 3248FFFF */  andi       $t0, $s2, 0xffff
/* 59184 80058584 01009025 */  or         $s2, $t0, $zero
/* 59188 80058588 1440FFCC */  bnez       $v0, .L800584BC
/* 5918C 8005858C 01809825 */   or        $s3, $t4, $zero
/* 59190 80058590 01801025 */  or         $v0, $t4, $zero
.L80058594:
/* 59194 80058594 10400003 */  beqz       $v0, .L800585A4
/* 59198 80058598 8FAD0204 */   lw        $t5, 0x204($sp)
/* 5919C 8005859C 1000005E */  b          .L80058718
/* 591A0 800585A0 24020004 */   addiu     $v0, $zero, 4
.L800585A4:
/* 591A4 800585A4 11A00005 */  beqz       $t5, .L800585BC
/* 591A8 800585A8 000D7080 */   sll       $t6, $t5, 2
/* 591AC 800585AC 27AF0070 */  addiu      $t7, $sp, 0x70
/* 591B0 800585B0 01CF2021 */  addu       $a0, $t6, $t7
/* 591B4 800585B4 0C015FF4 */  jal        func_80057FD0
/* 591B8 800585B8 24050004 */   addiu     $a1, $zero, 4
.L800585BC:
/* 591BC 800585BC 8FAA0068 */  lw         $t2, 0x68($sp)
/* 591C0 800585C0 8FB90208 */  lw         $t9, 0x208($sp)
/* 591C4 800585C4 97B80202 */  lhu        $t8, 0x202($sp)
/* 591C8 800585C8 000A5840 */  sll        $t3, $t2, 1
/* 591CC 800585CC 3168FFFF */  andi       $t0, $t3, 0xffff
/* 591D0 800585D0 29014001 */  slti       $at, $t0, 0x4001
/* 591D4 800585D4 3B290003 */  xori       $t1, $t9, 3
/* 591D8 800585D8 AFA80068 */  sw         $t0, 0x68($sp)
/* 591DC 800585DC A7AB0202 */  sh         $t3, 0x202($sp)
/* 591E0 800585E0 AFA90208 */  sw         $t1, 0x208($sp)
/* 591E4 800585E4 AFB90204 */  sw         $t9, 0x204($sp)
/* 591E8 800585E8 1420FF68 */  bnez       $at, .L8005838C
/* 591EC 800585EC A7B80200 */   sh        $t8, 0x200($sp)
/* 591F0 800585F0 8FAC0210 */  lw         $t4, 0x210($sp)
/* 591F4 800585F4 8FAF0208 */  lw         $t7, 0x208($sp)
/* 591F8 800585F8 00009825 */  or         $s3, $zero, $zero
/* 591FC 800585FC 8D8D0050 */  lw         $t5, 0x50($t4)
/* 59200 80058600 00009025 */  or         $s2, $zero, $zero
/* 59204 80058604 27B9007C */  addiu      $t9, $sp, 0x7c
/* 59208 80058608 29A10002 */  slti       $at, $t5, 2
/* 5920C 8005860C 10200005 */  beqz       $at, .L80058624
/* 59210 80058610 000FC1C0 */   sll       $t8, $t7, 7
/* 59214 80058614 8D8E004C */  lw         $t6, 0x4c($t4)
/* 59218 80058618 24010002 */  addiu      $at, $zero, 2
/* 5921C 8005861C 55C10037 */  bnel       $t6, $at, .L800586FC
/* 59220 80058620 8FA40210 */   lw        $a0, 0x210($sp)
.L80058624:
/* 59224 80058624 0319F021 */  addu       $fp, $t8, $t9
/* 59228 80058628 3416A000 */  ori        $s6, $zero, 0xa000
.L8005862C:
/* 5922C 8005862C 02563021 */  addu       $a2, $s2, $s6
/* 59230 80058630 00138140 */  sll        $s0, $s3, 5
/* 59234 80058634 03D0A821 */  addu       $s5, $fp, $s0
/* 59238 80058638 30C9FFFF */  andi       $t1, $a2, 0xffff
/* 5923C 8005863C 240A0020 */  addiu      $t2, $zero, 0x20
/* 59240 80058640 AFAA0010 */  sw         $t2, 0x10($sp)
/* 59244 80058644 01203025 */  or         $a2, $t1, $zero
/* 59248 80058648 02A03825 */  or         $a3, $s5, $zero
/* 5924C 8005864C 8FA40210 */  lw         $a0, 0x210($sp)
/* 59250 80058650 00002825 */  or         $a1, $zero, $zero
/* 59254 80058654 0C019644 */  jal        func_80065910
/* 59258 80058658 0240A025 */   or        $s4, $s2, $zero
/* 5925C 8005865C 10400003 */  beqz       $v0, .L8005866C
/* 59260 80058660 8FA40210 */   lw        $a0, 0x210($sp)
/* 59264 80058664 1000002D */  b          .L8005871C
/* 59268 80058668 8FBF0044 */   lw        $ra, 0x44($sp)
.L8005866C:
/* 5926C 8005866C 8FA80204 */  lw         $t0, 0x204($sp)
/* 59270 80058670 26862000 */  addiu      $a2, $s4, 0x2000
/* 59274 80058674 27AE007C */  addiu      $t6, $sp, 0x7c
/* 59278 80058678 000869C0 */  sll        $t5, $t0, 7
/* 5927C 8005867C 01B06021 */  addu       $t4, $t5, $s0
/* 59280 80058680 018E8821 */  addu       $s1, $t4, $t6
/* 59284 80058684 30CBFFFF */  andi       $t3, $a2, 0xffff
/* 59288 80058688 240F0020 */  addiu      $t7, $zero, 0x20
/* 5928C 8005868C AFAF0010 */  sw         $t7, 0x10($sp)
/* 59290 80058690 01603025 */  or         $a2, $t3, $zero
/* 59294 80058694 02203825 */  or         $a3, $s1, $zero
/* 59298 80058698 0C019644 */  jal        func_80065910
/* 5929C 8005869C 00002825 */   or        $a1, $zero, $zero
/* 592A0 800586A0 10400003 */  beqz       $v0, .L800586B0
/* 592A4 800586A4 02A02025 */   or        $a0, $s5, $zero
/* 592A8 800586A8 1000001C */  b          .L8005871C
/* 592AC 800586AC 8FBF0044 */   lw        $ra, 0x44($sp)
.L800586B0:
/* 592B0 800586B0 02202825 */  or         $a1, $s1, $zero
/* 592B4 800586B4 0C017B90 */  jal        func_8005EE40
/* 592B8 800586B8 24060020 */   addiu     $a2, $zero, 0x20
/* 592BC 800586BC 10400003 */  beqz       $v0, .L800586CC
/* 592C0 800586C0 26920020 */   addiu     $s2, $s4, 0x20
/* 592C4 800586C4 10000008 */  b          .L800586E8
/* 592C8 800586C8 00009825 */   or        $s3, $zero, $zero
.L800586CC:
/* 592CC 800586CC 2A620003 */  slti       $v0, $s3, 3
/* 592D0 800586D0 26730001 */  addiu      $s3, $s3, 1
/* 592D4 800586D4 3279FFFF */  andi       $t9, $s3, 0xffff
/* 592D8 800586D8 3258FFFF */  andi       $t8, $s2, 0xffff
/* 592DC 800586DC 03009025 */  or         $s2, $t8, $zero
/* 592E0 800586E0 1440FFD2 */  bnez       $v0, .L8005862C
/* 592E4 800586E4 03209825 */   or        $s3, $t9, $zero
.L800586E8:
/* 592E8 800586E8 52600004 */  beql       $s3, $zero, .L800586FC
/* 592EC 800586EC 8FA40210 */   lw        $a0, 0x210($sp)
/* 592F0 800586F0 10000009 */  b          .L80058718
/* 592F4 800586F4 24020004 */   addiu     $v0, $zero, 4
/* 592F8 800586F8 8FA40210 */  lw         $a0, 0x210($sp)
.L800586FC:
/* 592FC 800586FC 0C0177A8 */  jal        func_8005DEA0
/* 59300 80058700 8FA50214 */   lw        $a1, 0x214($sp)
/* 59304 80058704 2401000D */  addiu      $at, $zero, 0xd
/* 59308 80058708 14410002 */  bne        $v0, $at, .L80058714
/* 5930C 8005870C 00401825 */   or        $v1, $v0, $zero
/* 59310 80058710 24030004 */  addiu      $v1, $zero, 4
.L80058714:
/* 59314 80058714 00601025 */  or         $v0, $v1, $zero
.L80058718:
/* 59318 80058718 8FBF0044 */  lw         $ra, 0x44($sp)
.L8005871C:
/* 5931C 8005871C 8FB00020 */  lw         $s0, 0x20($sp)
/* 59320 80058720 8FB10024 */  lw         $s1, 0x24($sp)
/* 59324 80058724 8FB20028 */  lw         $s2, 0x28($sp)
/* 59328 80058728 8FB3002C */  lw         $s3, 0x2c($sp)
/* 5932C 8005872C 8FB40030 */  lw         $s4, 0x30($sp)
/* 59330 80058730 8FB50034 */  lw         $s5, 0x34($sp)
/* 59334 80058734 8FB60038 */  lw         $s6, 0x38($sp)
/* 59338 80058738 8FB7003C */  lw         $s7, 0x3c($sp)
/* 5933C 8005873C 8FBE0040 */  lw         $fp, 0x40($sp)
/* 59340 80058740 03E00008 */  jr         $ra
/* 59344 80058744 27BD0210 */   addiu     $sp, $sp, 0x210
/* 59348 80058748 00000000 */  nop        
/* 5934C 8005874C 00000000 */  nop        
