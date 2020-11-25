.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8002B5C0
/* 2C1C0 8002B5C0 A0800000 */  sb         $zero, ($a0)
/* 2C1C4 8002B5C4 A0800001 */  sb         $zero, 1($a0)
/* 2C1C8 8002B5C8 A4800002 */  sh         $zero, 2($a0)
/* 2C1CC 8002B5CC AC800004 */  sw         $zero, 4($a0)
/* 2C1D0 8002B5D0 AC800014 */  sw         $zero, 0x14($a0)
/* 2C1D4 8002B5D4 AC800008 */  sw         $zero, 8($a0)
/* 2C1D8 8002B5D8 AC80000C */  sw         $zero, 0xc($a0)
/* 2C1DC 8002B5DC A080001D */  sb         $zero, 0x1d($a0)
/* 2C1E0 8002B5E0 AC800020 */  sw         $zero, 0x20($a0)
/* 2C1E4 8002B5E4 03E00008 */  jr         $ra
/* 2C1E8 8002B5E8 A080001E */   sb        $zero, 0x1e($a0)

glabel func_8002B5EC
/* 2C1EC 8002B5EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C1F0 8002B5F0 AFA40018 */  sw         $a0, 0x18($sp)
/* 2C1F4 8002B5F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C1F8 8002B5F8 3C04800B */  lui        $a0, 0x800b
/* 2C1FC 8002B5FC AFA5001C */  sw         $a1, 0x1c($sp)
/* 2C200 8002B600 AFA60020 */  sw         $a2, 0x20($sp)
/* 2C204 8002B604 0C00AD70 */  jal        func_8002B5C0
/* 2C208 8002B608 2484F6D4 */   addiu     $a0, $a0, -0x92c
/* 2C20C 8002B60C 3C04800B */  lui        $a0, 0x800b
/* 2C210 8002B610 0C00AD70 */  jal        func_8002B5C0
/* 2C214 8002B614 2484F6FC */   addiu     $a0, $a0, -0x904
/* 2C218 8002B618 3C03800B */  lui        $v1, 0x800b
/* 2C21C 8002B61C 2463E540 */  addiu      $v1, $v1, -0x1ac0
/* 2C220 8002B620 8FAE0018 */  lw         $t6, 0x18($sp)
/* 2C224 8002B624 8FAF001C */  lw         $t7, 0x1c($sp)
/* 2C228 8002B628 8FB80020 */  lw         $t8, 0x20($sp)
/* 2C22C 8002B62C 24190001 */  addiu      $t9, $zero, 1
/* 2C230 8002B630 A0790003 */  sb         $t9, 3($v1)
/* 2C234 8002B634 A06011ED */  sb         $zero, 0x11ed($v1)
/* 2C238 8002B638 A06011EE */  sb         $zero, 0x11ee($v1)
/* 2C23C 8002B63C A06011EF */  sb         $zero, 0x11ef($v1)
/* 2C240 8002B640 A06011F4 */  sb         $zero, 0x11f4($v1)
/* 2C244 8002B644 A06011F5 */  sb         $zero, 0x11f5($v1)
/* 2C248 8002B648 A06011F3 */  sb         $zero, 0x11f3($v1)
/* 2C24C 8002B64C A46011F6 */  sh         $zero, 0x11f6($v1)
/* 2C250 8002B650 A06011EC */  sb         $zero, 0x11ec($v1)
/* 2C254 8002B654 A06E0000 */  sb         $t6, ($v1)
/* 2C258 8002B658 A06F0001 */  sb         $t7, 1($v1)
/* 2C25C 8002B65C A0780002 */  sb         $t8, 2($v1)
/* 2C260 8002B660 3C03800B */  lui        $v1, 0x800b
/* 2C264 8002B664 3C02800B */  lui        $v0, 0x800b
/* 2C268 8002B668 2442E540 */  addiu      $v0, $v0, -0x1ac0
/* 2C26C 8002B66C 2463EDB0 */  addiu      $v1, $v1, -0x1250
.L8002B670:
/* 2C270 8002B670 2442021C */  addiu      $v0, $v0, 0x21c
/* 2C274 8002B674 0043082B */  sltu       $at, $v0, $v1
/* 2C278 8002B678 1420FFFD */  bnez       $at, .L8002B670
/* 2C27C 8002B67C A040FDE8 */   sb        $zero, -0x218($v0)
/* 2C280 8002B680 3C03800B */  lui        $v1, 0x800b
/* 2C284 8002B684 3C04800B */  lui        $a0, 0x800b
/* 2C288 8002B688 2484E548 */  addiu      $a0, $a0, -0x1ab8
/* 2C28C 8002B68C 2463E540 */  addiu      $v1, $v1, -0x1ac0
/* 2C290 8002B690 240200FF */  addiu      $v0, $zero, 0xff
.L8002B694:
/* 2C294 8002B694 24630004 */  addiu      $v1, $v1, 4
/* 2C298 8002B698 A06211E1 */  sb         $v0, 0x11e1($v1)
/* 2C29C 8002B69C A06211E2 */  sb         $v0, 0x11e2($v1)
/* 2C2A0 8002B6A0 A06211E3 */  sb         $v0, 0x11e3($v1)
/* 2C2A4 8002B6A4 1464FFFB */  bne        $v1, $a0, .L8002B694
/* 2C2A8 8002B6A8 A06211E0 */   sb        $v0, 0x11e0($v1)
/* 2C2AC 8002B6AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C2B0 8002B6B0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2C2B4 8002B6B4 03E00008 */  jr         $ra
/* 2C2B8 8002B6B8 00000000 */   nop       

glabel func_8002B6BC
/* 2C2BC 8002B6BC 3C03800B */  lui        $v1, 0x800b
/* 2C2C0 8002B6C0 3C04800B */  lui        $a0, 0x800b
/* 2C2C4 8002B6C4 2484E548 */  addiu      $a0, $a0, -0x1ab8
/* 2C2C8 8002B6C8 2463E540 */  addiu      $v1, $v1, -0x1ac0
/* 2C2CC 8002B6CC 240200FF */  addiu      $v0, $zero, 0xff
.L8002B6D0:
/* 2C2D0 8002B6D0 24630004 */  addiu      $v1, $v1, 4
/* 2C2D4 8002B6D4 A06211E1 */  sb         $v0, 0x11e1($v1)
/* 2C2D8 8002B6D8 A06211E2 */  sb         $v0, 0x11e2($v1)
/* 2C2DC 8002B6DC A06211E3 */  sb         $v0, 0x11e3($v1)
/* 2C2E0 8002B6E0 1464FFFB */  bne        $v1, $a0, .L8002B6D0
/* 2C2E4 8002B6E4 A06211E0 */   sb        $v0, 0x11e0($v1)
/* 2C2E8 8002B6E8 3C02800B */  lui        $v0, 0x800b
/* 2C2EC 8002B6EC 2442E540 */  addiu      $v0, $v0, -0x1ac0
/* 2C2F0 8002B6F0 240E0001 */  addiu      $t6, $zero, 1
/* 2C2F4 8002B6F4 A04E0003 */  sb         $t6, 3($v0)
/* 2C2F8 8002B6F8 03E00008 */  jr         $ra
/* 2C2FC 8002B6FC A04011F3 */   sb        $zero, 0x11f3($v0)

glabel func_8002B700
/* 2C300 8002B700 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2C304 8002B704 AFA40028 */  sw         $a0, 0x28($sp)
/* 2C308 8002B708 AFA5002C */  sw         $a1, 0x2c($sp)
/* 2C30C 8002B70C 3C03800B */  lui        $v1, 0x800b
/* 2C310 8002B710 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C314 8002B714 AFA60030 */  sw         $a2, 0x30($sp)
/* 2C318 8002B718 AFA70034 */  sw         $a3, 0x34($sp)
/* 2C31C 8002B71C 00004025 */  or         $t0, $zero, $zero
/* 2C320 8002B720 2463E540 */  addiu      $v1, $v1, -0x1ac0
/* 2C324 8002B724 00002825 */  or         $a1, $zero, $zero
/* 2C328 8002B728 24040004 */  addiu      $a0, $zero, 4
/* 2C32C 8002B72C 00001025 */  or         $v0, $zero, $zero
.L8002B730:
/* 2C330 8002B730 906E0004 */  lbu        $t6, 4($v1)
/* 2C334 8002B734 2463021C */  addiu      $v1, $v1, 0x21c
/* 2C338 8002B738 15C0000C */  bnez       $t6, .L8002B76C
/* 2C33C 8002B73C 000278C0 */   sll       $t7, $v0, 3
/* 2C340 8002B740 01E27821 */  addu       $t7, $t7, $v0
/* 2C344 8002B744 3C04800B */  lui        $a0, 0x800b
/* 2C348 8002B748 000F78C0 */  sll        $t7, $t7, 3
/* 2C34C 8002B74C 2484E540 */  addiu      $a0, $a0, -0x1ac0
/* 2C350 8002B750 01E27821 */  addu       $t7, $t7, $v0
/* 2C354 8002B754 000F78C0 */  sll        $t7, $t7, 3
/* 2C358 8002B758 00854021 */  addu       $t0, $a0, $a1
/* 2C35C 8002B75C 008F1821 */  addu       $v1, $a0, $t7
/* 2C360 8002B760 25080004 */  addiu      $t0, $t0, 4
/* 2C364 8002B764 10000005 */  b          .L8002B77C
/* 2C368 8002B768 24630874 */   addiu     $v1, $v1, 0x874
.L8002B76C:
/* 2C36C 8002B76C 24420001 */  addiu      $v0, $v0, 1
/* 2C370 8002B770 1444FFEF */  bne        $v0, $a0, .L8002B730
/* 2C374 8002B774 24A5021C */   addiu     $a1, $a1, 0x21c
/* 2C378 8002B778 8FA30020 */  lw         $v1, 0x20($sp)
.L8002B77C:
/* 2C37C 8002B77C 1100002B */  beqz       $t0, .L8002B82C
/* 2C380 8002B780 8FB80028 */   lw        $t8, 0x28($sp)
/* 2C384 8002B784 2401FFFF */  addiu      $at, $zero, -1
/* 2C388 8002B788 17010009 */  bne        $t8, $at, .L8002B7B0
/* 2C38C 8002B78C 25040008 */   addiu     $a0, $t0, 8
/* 2C390 8002B790 3C09800A */  lui        $t1, 0x800a
/* 2C394 8002B794 24020001 */  addiu      $v0, $zero, 1
/* 2C398 8002B798 24190003 */  addiu      $t9, $zero, 3
/* 2C39C 8002B79C 25297320 */  addiu      $t1, $t1, 0x7320
/* 2C3A0 8002B7A0 A1190000 */  sb         $t9, ($t0)
/* 2C3A4 8002B7A4 A1020001 */  sb         $v0, 1($t0)
/* 2C3A8 8002B7A8 1000000D */  b          .L8002B7E0
/* 2C3AC 8002B7AC AD090004 */   sw        $t1, 4($t0)
.L8002B7B0:
/* 2C3B0 8002B7B0 24020001 */  addiu      $v0, $zero, 1
/* 2C3B4 8002B7B4 A1020000 */  sb         $v0, ($t0)
/* 2C3B8 8002B7B8 8FAA0028 */  lw         $t2, 0x28($sp)
/* 2C3BC 8002B7BC 3C0D800A */  lui        $t5, 0x800a
/* 2C3C0 8002B7C0 25AD7320 */  addiu      $t5, $t5, 0x7320
/* 2C3C4 8002B7C4 A10A0001 */  sb         $t2, 1($t0)
/* 2C3C8 8002B7C8 8FAB0028 */  lw         $t3, 0x28($sp)
/* 2C3CC 8002B7CC 000B60C0 */  sll        $t4, $t3, 3
/* 2C3D0 8002B7D0 018B6021 */  addu       $t4, $t4, $t3
/* 2C3D4 8002B7D4 000C6080 */  sll        $t4, $t4, 2
/* 2C3D8 8002B7D8 018D7021 */  addu       $t6, $t4, $t5
/* 2C3DC 8002B7DC AD0E0004 */  sw         $t6, 4($t0)
.L8002B7E0:
/* 2C3E0 8002B7E0 AD000018 */  sw         $zero, 0x18($t0)
/* 2C3E4 8002B7E4 AD030214 */  sw         $v1, 0x214($t0)
/* 2C3E8 8002B7E8 A1000002 */  sb         $zero, 2($t0)
/* 2C3EC 8002B7EC A4600000 */  sh         $zero, ($v1)
/* 2C3F0 8002B7F0 A0600002 */  sb         $zero, 2($v1)
/* 2C3F4 8002B7F4 A0620003 */  sb         $v0, 3($v1)
/* 2C3F8 8002B7F8 AFA8001C */  sw         $t0, 0x1c($sp)
/* 2C3FC 8002B7FC AFA30020 */  sw         $v1, 0x20($sp)
/* 2C400 8002B800 0C00294C */  jal        func_8000A530
/* 2C404 8002B804 8FA50030 */   lw        $a1, 0x30($sp)
/* 2C408 8002B808 8FA30020 */  lw         $v1, 0x20($sp)
/* 2C40C 8002B80C 8FA50030 */  lw         $a1, 0x30($sp)
/* 2C410 8002B810 0C00294C */  jal        func_8000A530
/* 2C414 8002B814 24640014 */   addiu     $a0, $v1, 0x14
/* 2C418 8002B818 8FA30020 */  lw         $v1, 0x20($sp)
/* 2C41C 8002B81C 8FA50034 */  lw         $a1, 0x34($sp)
/* 2C420 8002B820 0C00294C */  jal        func_8000A530
/* 2C424 8002B824 24640220 */   addiu     $a0, $v1, 0x220
/* 2C428 8002B828 8FA8001C */  lw         $t0, 0x1c($sp)
.L8002B82C:
/* 2C42C 8002B82C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C430 8002B830 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2C434 8002B834 01001025 */  or         $v0, $t0, $zero
/* 2C438 8002B838 03E00008 */  jr         $ra
/* 2C43C 8002B83C 00000000 */   nop       

glabel func_8002B840
/* 2C440 8002B840 00047080 */  sll        $t6, $a0, 2
/* 2C444 8002B844 01C47021 */  addu       $t6, $t6, $a0
/* 2C448 8002B848 3C0F800B */  lui        $t7, 0x800b
/* 2C44C 8002B84C 25EFE540 */  addiu      $t7, $t7, -0x1ac0
/* 2C450 8002B850 000E70C0 */  sll        $t6, $t6, 3
/* 2C454 8002B854 01CF1021 */  addu       $v0, $t6, $t7
/* 2C458 8002B858 90461195 */  lbu        $a2, 0x1195($v0)
/* 2C45C 8002B85C 24431194 */  addiu      $v1, $v0, 0x1194
/* 2C460 8002B860 28C10002 */  slti       $at, $a2, 2
/* 2C464 8002B864 10200006 */  beqz       $at, .L8002B880
/* 2C468 8002B868 0006C080 */   sll       $t8, $a2, 2
/* 2C46C 8002B86C 0078C821 */  addu       $t9, $v1, $t8
/* 2C470 8002B870 AF250008 */  sw         $a1, 8($t9)
/* 2C474 8002B874 90680001 */  lbu        $t0, 1($v1)
/* 2C478 8002B878 25090001 */  addiu      $t1, $t0, 1
/* 2C47C 8002B87C A0690001 */  sb         $t1, 1($v1)
.L8002B880:
/* 2C480 8002B880 03E00008 */  jr         $ra
/* 2C484 8002B884 00000000 */   nop       

glabel func_8002B888
/* 2C488 8002B888 90830002 */  lbu        $v1, 2($a0)
/* 2C48C 8002B88C 00A03025 */  or         $a2, $a1, $zero
/* 2C490 8002B890 8C820214 */  lw         $v0, 0x214($a0)
/* 2C494 8002B894 28610006 */  slti       $at, $v1, 6
/* 2C498 8002B898 10200020 */  beqz       $at, .L8002B91C
/* 2C49C 8002B89C 00032880 */   sll       $a1, $v1, 2
/* 2C4A0 8002B8A0 00A32821 */  addu       $a1, $a1, $v1
/* 2C4A4 8002B8A4 00052880 */  sll        $a1, $a1, 2
/* 2C4A8 8002B8A8 00A32821 */  addu       $a1, $a1, $v1
/* 2C4AC 8002B8AC 00052880 */  sll        $a1, $a1, 2
/* 2C4B0 8002B8B0 00857021 */  addu       $t6, $a0, $a1
/* 2C4B4 8002B8B4 00C0C825 */  or         $t9, $a2, $zero
/* 2C4B8 8002B8B8 24C80054 */  addiu      $t0, $a2, 0x54
.L8002B8BC:
/* 2C4BC 8002B8BC 8F380000 */  lw         $t8, ($t9)
/* 2C4C0 8002B8C0 2739000C */  addiu      $t9, $t9, 0xc
/* 2C4C4 8002B8C4 25CE000C */  addiu      $t6, $t6, 0xc
/* 2C4C8 8002B8C8 ADD80010 */  sw         $t8, 0x10($t6)
/* 2C4CC 8002B8CC 8F2FFFF8 */  lw         $t7, -8($t9)
/* 2C4D0 8002B8D0 ADCF0014 */  sw         $t7, 0x14($t6)
/* 2C4D4 8002B8D4 8F38FFFC */  lw         $t8, -4($t9)
/* 2C4D8 8002B8D8 1728FFF8 */  bne        $t9, $t0, .L8002B8BC
/* 2C4DC 8002B8DC ADD80018 */   sw        $t8, 0x18($t6)
/* 2C4E0 8002B8E0 00454821 */  addu       $t1, $v0, $a1
/* 2C4E4 8002B8E4 00C06025 */  or         $t4, $a2, $zero
/* 2C4E8 8002B8E8 24CD0054 */  addiu      $t5, $a2, 0x54
.L8002B8EC:
/* 2C4EC 8002B8EC 8D8B0000 */  lw         $t3, ($t4)
/* 2C4F0 8002B8F0 258C000C */  addiu      $t4, $t4, 0xc
/* 2C4F4 8002B8F4 2529000C */  addiu      $t1, $t1, 0xc
/* 2C4F8 8002B8F8 AD2B001C */  sw         $t3, 0x1c($t1)
/* 2C4FC 8002B8FC 8D8AFFF8 */  lw         $t2, -8($t4)
/* 2C500 8002B900 AD2A0020 */  sw         $t2, 0x20($t1)
/* 2C504 8002B904 8D8BFFFC */  lw         $t3, -4($t4)
/* 2C508 8002B908 158DFFF8 */  bne        $t4, $t5, .L8002B8EC
/* 2C50C 8002B90C AD2B0024 */   sw        $t3, 0x24($t1)
/* 2C510 8002B910 24670001 */  addiu      $a3, $v1, 1
/* 2C514 8002B914 A0870002 */  sb         $a3, 2($a0)
/* 2C518 8002B918 A0470002 */  sb         $a3, 2($v0)
.L8002B91C:
/* 2C51C 8002B91C 03E00008 */  jr         $ra
/* 2C520 8002B920 00000000 */   nop       

glabel func_8002B924
/* 2C524 8002B924 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2C528 8002B928 AFA5002C */  sw         $a1, 0x2c($sp)
/* 2C52C 8002B92C 30A500FF */  andi       $a1, $a1, 0xff
/* 2C530 8002B930 00057080 */  sll        $t6, $a1, 2
/* 2C534 8002B934 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2C538 8002B938 AFB00018 */  sw         $s0, 0x18($sp)
/* 2C53C 8002B93C AFA60030 */  sw         $a2, 0x30($sp)
/* 2C540 8002B940 01C57023 */  subu       $t6, $t6, $a1
/* 2C544 8002B944 000E70C0 */  sll        $t6, $t6, 3
/* 2C548 8002B948 3C0F8007 */  lui        $t7, 0x8007
/* 2C54C 8002B94C 25EF0FA0 */  addiu      $t7, $t7, 0xfa0
/* 2C550 8002B950 01C57023 */  subu       $t6, $t6, $a1
/* 2C554 8002B954 A0850000 */  sb         $a1, ($a0)
/* 2C558 8002B958 A0800004 */  sb         $zero, 4($a0)
/* 2C55C 8002B95C A0800005 */  sb         $zero, 5($a0)
/* 2C560 8002B960 01CF1821 */  addu       $v1, $t6, $t7
/* 2C564 8002B964 9078FFEF */  lbu        $t8, -0x11($v1)
/* 2C568 8002B968 24026400 */  addiu      $v0, $zero, 0x6400
/* 2C56C 8002B96C 240807CF */  addiu      $t0, $zero, 0x7cf
/* 2C570 8002B970 A0980006 */  sb         $t8, 6($a0)
/* 2C574 8002B974 9079FFF0 */  lbu        $t9, -0x10($v1)
/* 2C578 8002B978 A4820014 */  sh         $v0, 0x14($a0)
/* 2C57C 8002B97C A4820016 */  sh         $v0, 0x16($a0)
/* 2C580 8002B980 A4820018 */  sh         $v0, 0x18($a0)
/* 2C584 8002B984 A482001A */  sh         $v0, 0x1a($a0)
/* 2C588 8002B988 A482001C */  sh         $v0, 0x1c($a0)
/* 2C58C 8002B98C 24020005 */  addiu      $v0, $zero, 5
/* 2C590 8002B990 3409FFFF */  ori        $t1, $zero, 0xffff
/* 2C594 8002B994 00063400 */  sll        $a2, $a2, 0x10
/* 2C598 8002B998 00808025 */  or         $s0, $a0, $zero
/* 2C59C 8002B99C A0800008 */  sb         $zero, 8($a0)
/* 2C5A0 8002B9A0 A0800009 */  sb         $zero, 9($a0)
/* 2C5A4 8002B9A4 A080000A */  sb         $zero, 0xa($a0)
/* 2C5A8 8002B9A8 A080000B */  sb         $zero, 0xb($a0)
/* 2C5AC 8002B9AC A080000C */  sb         $zero, 0xc($a0)
/* 2C5B0 8002B9B0 A488000E */  sh         $t0, 0xe($a0)
/* 2C5B4 8002B9B4 A489001E */  sh         $t1, 0x1e($a0)
/* 2C5B8 8002B9B8 A0820020 */  sb         $v0, 0x20($a0)
/* 2C5BC 8002B9BC A0820021 */  sb         $v0, 0x21($a0)
/* 2C5C0 8002B9C0 A0820022 */  sb         $v0, 0x22($a0)
/* 2C5C4 8002B9C4 A0820023 */  sb         $v0, 0x23($a0)
/* 2C5C8 8002B9C8 A0800052 */  sb         $zero, 0x52($a0)
/* 2C5CC 8002B9CC A0800053 */  sb         $zero, 0x53($a0)
/* 2C5D0 8002B9D0 A0990007 */  sb         $t9, 7($a0)
/* 2C5D4 8002B9D4 00063403 */  sra        $a2, $a2, 0x10
/* 2C5D8 8002B9D8 00A03825 */  or         $a3, $a1, $zero
/* 2C5DC 8002B9DC 00A02025 */  or         $a0, $a1, $zero
/* 2C5E0 8002B9E0 30C5FFFF */  andi       $a1, $a2, 0xffff
/* 2C5E4 8002B9E4 0C00892E */  jal        func_800224B8
/* 2C5E8 8002B9E8 AFA70020 */   sw        $a3, 0x20($sp)
/* 2C5EC 8002B9EC AE020010 */  sw         $v0, 0x10($s0)
/* 2C5F0 8002B9F0 0C0088CE */  jal        func_80022338
/* 2C5F4 8002B9F4 02002025 */   or        $a0, $s0, $zero
/* 2C5F8 8002B9F8 960A0026 */  lhu        $t2, 0x26($s0)
/* 2C5FC 8002B9FC 8FA50020 */  lw         $a1, 0x20($sp)
/* 2C600 8002BA00 26040030 */  addiu      $a0, $s0, 0x30
/* 2C604 8002BA04 0C008729 */  jal        func_80021CA4
/* 2C608 8002BA08 A60A0002 */   sh        $t2, 2($s0)
/* 2C60C 8002BA0C 0C008C47 */  jal        func_8002311C
/* 2C610 8002BA10 00002025 */   or        $a0, $zero, $zero
/* 2C614 8002BA14 2604003B */  addiu      $a0, $s0, 0x3b
/* 2C618 8002BA18 0C00294C */  jal        func_8000A530
/* 2C61C 8002BA1C 00402825 */   or        $a1, $v0, $zero
/* 2C620 8002BA20 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2C624 8002BA24 02001025 */  or         $v0, $s0, $zero
/* 2C628 8002BA28 8FB00018 */  lw         $s0, 0x18($sp)
/* 2C62C 8002BA2C 03E00008 */  jr         $ra
/* 2C630 8002BA30 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002BA34
/* 2C634 8002BA34 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* 2C638 8002BA38 AFA400D8 */  sw         $a0, 0xd8($sp)
/* 2C63C 8002BA3C 97AE00DA */  lhu        $t6, 0xda($sp)
/* 2C640 8002BA40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C644 8002BA44 AFA500DC */  sw         $a1, 0xdc($sp)
/* 2C648 8002BA48 2DC10008 */  sltiu      $at, $t6, 8
/* 2C64C 8002BA4C AFA600E0 */  sw         $a2, 0xe0($sp)
/* 2C650 8002BA50 10200018 */  beqz       $at, .L8002BAB4
/* 2C654 8002BA54 AFA700E4 */   sw        $a3, 0xe4($sp)
/* 2C658 8002BA58 000E7080 */  sll        $t6, $t6, 2
/* 2C65C 8002BA5C 3C018008 */  lui        $at, 0x8008
/* 2C660 8002BA60 002E0821 */  addu       $at, $at, $t6
/* 2C664 8002BA64 8C2EC3E4 */  lw         $t6, -0x3c1c($at)
/* 2C668 8002BA68 01C00008 */  jr         $t6
/* 2C66C 8002BA6C 00000000 */   nop       
/* 2C670 8002BA70 240F0032 */  addiu      $t7, $zero, 0x32
/* 2C674 8002BA74 1000000F */  b          .L8002BAB4
/* 2C678 8002BA78 A7AF00D6 */   sh        $t7, 0xd6($sp)
/* 2C67C 8002BA7C 24180032 */  addiu      $t8, $zero, 0x32
/* 2C680 8002BA80 1000000C */  b          .L8002BAB4
/* 2C684 8002BA84 A7B800D6 */   sh        $t8, 0xd6($sp)
/* 2C688 8002BA88 2419001E */  addiu      $t9, $zero, 0x1e
/* 2C68C 8002BA8C 10000009 */  b          .L8002BAB4
/* 2C690 8002BA90 A7B900D6 */   sh        $t9, 0xd6($sp)
/* 2C694 8002BA94 24080019 */  addiu      $t0, $zero, 0x19
/* 2C698 8002BA98 10000006 */  b          .L8002BAB4
/* 2C69C 8002BA9C A7A800D6 */   sh        $t0, 0xd6($sp)
/* 2C6A0 8002BAA0 24090064 */  addiu      $t1, $zero, 0x64
/* 2C6A4 8002BAA4 10000003 */  b          .L8002BAB4
/* 2C6A8 8002BAA8 A7A900D6 */   sh        $t1, 0xd6($sp)
/* 2C6AC 8002BAAC 240A0064 */  addiu      $t2, $zero, 0x64
/* 2C6B0 8002BAB0 A7AA00D6 */  sh         $t2, 0xd6($sp)
.L8002BAB4:
/* 2C6B4 8002BAB4 24040010 */  addiu      $a0, $zero, 0x10
/* 2C6B8 8002BAB8 87A500DA */  lh         $a1, 0xda($sp)
/* 2C6BC 8002BABC 0C00AD7B */  jal        func_8002B5EC
/* 2C6C0 8002BAC0 87A600DE */   lh        $a2, 0xde($sp)
/* 2C6C4 8002BAC4 0C008C47 */  jal        func_8002311C
/* 2C6C8 8002BAC8 24040001 */   addiu     $a0, $zero, 1
/* 2C6CC 8002BACC AFA2001C */  sw         $v0, 0x1c($sp)
/* 2C6D0 8002BAD0 0C008C47 */  jal        func_8002311C
/* 2C6D4 8002BAD4 24040002 */   addiu     $a0, $zero, 2
/* 2C6D8 8002BAD8 00002025 */  or         $a0, $zero, $zero
/* 2C6DC 8002BADC 00002825 */  or         $a1, $zero, $zero
/* 2C6E0 8002BAE0 8FA6001C */  lw         $a2, 0x1c($sp)
/* 2C6E4 8002BAE4 0C00ADC0 */  jal        func_8002B700
/* 2C6E8 8002BAE8 00403825 */   or        $a3, $v0, $zero
/* 2C6EC 8002BAEC AFA200D0 */  sw         $v0, 0xd0($sp)
/* 2C6F0 8002BAF0 0C008C47 */  jal        func_8002311C
/* 2C6F4 8002BAF4 24040001 */   addiu     $a0, $zero, 1
/* 2C6F8 8002BAF8 AFA2001C */  sw         $v0, 0x1c($sp)
/* 2C6FC 8002BAFC 0C008C47 */  jal        func_8002311C
/* 2C700 8002BB00 24040002 */   addiu     $a0, $zero, 2
/* 2C704 8002BB04 24040001 */  addiu      $a0, $zero, 1
/* 2C708 8002BB08 00002825 */  or         $a1, $zero, $zero
/* 2C70C 8002BB0C 8FA6001C */  lw         $a2, 0x1c($sp)
/* 2C710 8002BB10 0C00ADC0 */  jal        func_8002B700
/* 2C714 8002BB14 00403825 */   or        $a3, $v0, $zero
/* 2C718 8002BB18 AFA200CC */  sw         $v0, 0xcc($sp)
/* 2C71C 8002BB1C 27A40078 */  addiu      $a0, $sp, 0x78
/* 2C720 8002BB20 93A500E3 */  lbu        $a1, 0xe3($sp)
/* 2C724 8002BB24 0C00AE49 */  jal        func_8002B924
/* 2C728 8002BB28 87A600D6 */   lh        $a2, 0xd6($sp)
/* 2C72C 8002BB2C 8FA400D0 */  lw         $a0, 0xd0($sp)
/* 2C730 8002BB30 0C00AE22 */  jal        func_8002B888
/* 2C734 8002BB34 00402825 */   or        $a1, $v0, $zero
/* 2C738 8002BB38 27A40024 */  addiu      $a0, $sp, 0x24
/* 2C73C 8002BB3C 93A500E7 */  lbu        $a1, 0xe7($sp)
/* 2C740 8002BB40 0C00AE49 */  jal        func_8002B924
/* 2C744 8002BB44 87A600D6 */   lh        $a2, 0xd6($sp)
/* 2C748 8002BB48 8FA400CC */  lw         $a0, 0xcc($sp)
/* 2C74C 8002BB4C 0C00AE22 */  jal        func_8002B888
/* 2C750 8002BB50 00402825 */   or        $a1, $v0, $zero
/* 2C754 8002BB54 00002025 */  or         $a0, $zero, $zero
/* 2C758 8002BB58 0C00AE10 */  jal        func_8002B840
/* 2C75C 8002BB5C 8FA500D0 */   lw        $a1, 0xd0($sp)
/* 2C760 8002BB60 24040001 */  addiu      $a0, $zero, 1
/* 2C764 8002BB64 0C00AE10 */  jal        func_8002B840
/* 2C768 8002BB68 8FA500CC */   lw        $a1, 0xcc($sp)
/* 2C76C 8002BB6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C770 8002BB70 27BD00D8 */  addiu      $sp, $sp, 0xd8
/* 2C774 8002BB74 03E00008 */  jr         $ra
/* 2C778 8002BB78 00000000 */   nop       

glabel func_8002BB7C
/* 2C77C 8002BB7C 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 2C780 8002BB80 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2C784 8002BB84 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2C788 8002BB88 AFB00018 */  sw         $s0, 0x18($sp)
/* 2C78C 8002BB8C AFA400A0 */  sw         $a0, 0xa0($sp)
/* 2C790 8002BB90 00C08025 */  or         $s0, $a2, $zero
/* 2C794 8002BB94 00A08825 */  or         $s1, $a1, $zero
/* 2C798 8002BB98 AFB40028 */  sw         $s4, 0x28($sp)
/* 2C79C 8002BB9C AFB30024 */  sw         $s3, 0x24($sp)
/* 2C7A0 8002BBA0 AFB20020 */  sw         $s2, 0x20($sp)
/* 2C7A4 8002BBA4 0C008EBE */  jal        func_80023AF8
/* 2C7A8 8002BBA8 00C02025 */   or        $a0, $a2, $zero
/* 2C7AC 8002BBAC 27B20034 */  addiu      $s2, $sp, 0x34
/* 2C7B0 8002BBB0 02402825 */  or         $a1, $s2, $zero
/* 2C7B4 8002BBB4 0C00946C */  jal        func_800251B0
/* 2C7B8 8002BBB8 02002025 */   or        $a0, $s0, $zero
/* 2C7BC 8002BBBC 0C008C47 */  jal        func_8002311C
/* 2C7C0 8002BBC0 24040001 */   addiu     $a0, $zero, 1
/* 2C7C4 8002BBC4 02202025 */  or         $a0, $s1, $zero
/* 2C7C8 8002BBC8 00002825 */  or         $a1, $zero, $zero
/* 2C7CC 8002BBCC 02403025 */  or         $a2, $s2, $zero
/* 2C7D0 8002BBD0 0C00ADC0 */  jal        func_8002B700
/* 2C7D4 8002BBD4 00403825 */   or        $a3, $v0, $zero
/* 2C7D8 8002BBD8 0040A025 */  or         $s4, $v0, $zero
/* 2C7DC 8002BBDC 24040020 */  addiu      $a0, $zero, 0x20
/* 2C7E0 8002BBE0 02002825 */  or         $a1, $s0, $zero
/* 2C7E4 8002BBE4 00003025 */  or         $a2, $zero, $zero
/* 2C7E8 8002BBE8 0C008B0A */  jal        func_80022C28
/* 2C7EC 8002BBEC 00003825 */   or        $a3, $zero, $zero
/* 2C7F0 8002BBF0 10400011 */  beqz       $v0, .L8002BC38
/* 2C7F4 8002BBF4 00409825 */   or        $s3, $v0, $zero
/* 2C7F8 8002BBF8 00008025 */  or         $s0, $zero, $zero
/* 2C7FC 8002BBFC 24120006 */  addiu      $s2, $zero, 6
/* 2C800 8002BC00 27B10048 */  addiu      $s1, $sp, 0x48
/* 2C804 8002BC04 02202025 */  or         $a0, $s1, $zero
.L8002BC08:
/* 2C808 8002BC08 24050001 */  addiu      $a1, $zero, 1
/* 2C80C 8002BC0C 0C008B86 */  jal        func_80022E18
/* 2C810 8002BC10 02603025 */   or        $a2, $s3, $zero
/* 2C814 8002BC14 10400006 */  beqz       $v0, .L8002BC30
/* 2C818 8002BC18 02802025 */   or        $a0, $s4, $zero
/* 2C81C 8002BC1C 0C00AE22 */  jal        func_8002B888
/* 2C820 8002BC20 02202825 */   or        $a1, $s1, $zero
/* 2C824 8002BC24 26100001 */  addiu      $s0, $s0, 1
/* 2C828 8002BC28 5612FFF7 */  bnel       $s0, $s2, .L8002BC08
/* 2C82C 8002BC2C 02202025 */   or        $a0, $s1, $zero
.L8002BC30:
/* 2C830 8002BC30 0C008B63 */  jal        func_80022D8C
/* 2C834 8002BC34 02602025 */   or        $a0, $s3, $zero
.L8002BC38:
/* 2C838 8002BC38 8FA400A0 */  lw         $a0, 0xa0($sp)
/* 2C83C 8002BC3C 0C00AE10 */  jal        func_8002B840
/* 2C840 8002BC40 02802825 */   or        $a1, $s4, $zero
/* 2C844 8002BC44 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2C848 8002BC48 8FB00018 */  lw         $s0, 0x18($sp)
/* 2C84C 8002BC4C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2C850 8002BC50 8FB20020 */  lw         $s2, 0x20($sp)
/* 2C854 8002BC54 8FB30024 */  lw         $s3, 0x24($sp)
/* 2C858 8002BC58 8FB40028 */  lw         $s4, 0x28($sp)
/* 2C85C 8002BC5C 03E00008 */  jr         $ra
/* 2C860 8002BC60 27BD00A0 */   addiu     $sp, $sp, 0xa0

glabel func_8002BC64
/* 2C864 8002BC64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C868 8002BC68 AFA40018 */  sw         $a0, 0x18($sp)
/* 2C86C 8002BC6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C870 8002BC70 3C045249 */  lui        $a0, 0x5249
/* 2C874 8002BC74 AFA5001C */  sw         $a1, 0x1c($sp)
/* 2C878 8002BC78 AFA60020 */  sw         $a2, 0x20($sp)
/* 2C87C 8002BC7C AFA70024 */  sw         $a3, 0x24($sp)
/* 2C880 8002BC80 0C0009E1 */  jal        func_80002784
/* 2C884 8002BC84 3484564C */   ori       $a0, $a0, 0x564c
/* 2C888 8002BC88 00002025 */  or         $a0, $zero, $zero
/* 2C88C 8002BC8C 24050003 */  addiu      $a1, $zero, 3
/* 2C890 8002BC90 0C00AD7B */  jal        func_8002B5EC
/* 2C894 8002BC94 00003025 */   or        $a2, $zero, $zero
/* 2C898 8002BC98 8FA20018 */  lw         $v0, 0x18($sp)
/* 2C89C 8002BC9C 00002025 */  or         $a0, $zero, $zero
/* 2C8A0 8002BCA0 18400003 */  blez       $v0, .L8002BCB0
/* 2C8A4 8002BCA4 2445FFFF */   addiu     $a1, $v0, -1
/* 2C8A8 8002BCA8 0C00AEDF */  jal        func_8002BB7C
/* 2C8AC 8002BCAC 00A03025 */   or        $a2, $a1, $zero
.L8002BCB0:
/* 2C8B0 8002BCB0 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2C8B4 8002BCB4 00002025 */  or         $a0, $zero, $zero
/* 2C8B8 8002BCB8 18400003 */  blez       $v0, .L8002BCC8
/* 2C8BC 8002BCBC 2445FFFF */   addiu     $a1, $v0, -1
/* 2C8C0 8002BCC0 0C00AEDF */  jal        func_8002BB7C
/* 2C8C4 8002BCC4 00A03025 */   or        $a2, $a1, $zero
.L8002BCC8:
/* 2C8C8 8002BCC8 8FA20020 */  lw         $v0, 0x20($sp)
/* 2C8CC 8002BCCC 24040001 */  addiu      $a0, $zero, 1
/* 2C8D0 8002BCD0 18400003 */  blez       $v0, .L8002BCE0
/* 2C8D4 8002BCD4 2445FFFF */   addiu     $a1, $v0, -1
/* 2C8D8 8002BCD8 0C00AEDF */  jal        func_8002BB7C
/* 2C8DC 8002BCDC 00A03025 */   or        $a2, $a1, $zero
.L8002BCE0:
/* 2C8E0 8002BCE0 8FA20024 */  lw         $v0, 0x24($sp)
/* 2C8E4 8002BCE4 24040001 */  addiu      $a0, $zero, 1
/* 2C8E8 8002BCE8 18400003 */  blez       $v0, .L8002BCF8
/* 2C8EC 8002BCEC 2445FFFF */   addiu     $a1, $v0, -1
/* 2C8F0 8002BCF0 0C00AEDF */  jal        func_8002BB7C
/* 2C8F4 8002BCF4 00A03025 */   or        $a2, $a1, $zero
.L8002BCF8:
/* 2C8F8 8002BCF8 3C045249 */  lui        $a0, 0x5249
/* 2C8FC 8002BCFC 0C000A0E */  jal        func_80002838
/* 2C900 8002BD00 3484564C */   ori       $a0, $a0, 0x564c
/* 2C904 8002BD04 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C908 8002BD08 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2C90C 8002BD0C 03E00008 */  jr         $ra
/* 2C910 8002BD10 00000000 */   nop       

glabel func_8002BD14
/* 2C914 8002BD14 3C03800B */  lui        $v1, 0x800b
/* 2C918 8002BD18 8063E543 */  lb         $v1, -0x1abd($v1)
/* 2C91C 8002BD1C 3C05800B */  lui        $a1, 0x800b
/* 2C920 8002BD20 24A5E540 */  addiu      $a1, $a1, -0x1ac0
/* 2C924 8002BD24 2463FFFF */  addiu      $v1, $v1, -1
/* 2C928 8002BD28 1860000A */  blez       $v1, .L8002BD54
/* 2C92C 8002BD2C 00001025 */   or        $v0, $zero, $zero
.L8002BD30:
/* 2C930 8002BD30 90AE11E4 */  lbu        $t6, 0x11e4($a1)
/* 2C934 8002BD34 24420001 */  addiu      $v0, $v0, 1
/* 2C938 8002BD38 0043082A */  slt        $at, $v0, $v1
/* 2C93C 8002BD3C 148E0003 */  bne        $a0, $t6, .L8002BD4C
/* 2C940 8002BD40 00000000 */   nop       
/* 2C944 8002BD44 03E00008 */  jr         $ra
/* 2C948 8002BD48 24020001 */   addiu     $v0, $zero, 1
.L8002BD4C:
/* 2C94C 8002BD4C 1420FFF8 */  bnez       $at, .L8002BD30
/* 2C950 8002BD50 24A50001 */   addiu     $a1, $a1, 1
.L8002BD54:
/* 2C954 8002BD54 00001025 */  or         $v0, $zero, $zero
/* 2C958 8002BD58 03E00008 */  jr         $ra
/* 2C95C 8002BD5C 00000000 */   nop       

glabel func_8002BD60
/* 2C960 8002BD60 3C05800B */  lui        $a1, 0x800b
/* 2C964 8002BD64 24A5E540 */  addiu      $a1, $a1, -0x1ac0
/* 2C968 8002BD68 80A20003 */  lb         $v0, 3($a1)
/* 2C96C 8002BD6C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2C970 8002BD70 AFB00014 */  sw         $s0, 0x14($sp)
/* 2C974 8002BD74 00827023 */  subu       $t6, $a0, $v0
/* 2C978 8002BD78 25CF0001 */  addiu      $t7, $t6, 1
/* 2C97C 8002BD7C 24010001 */  addiu      $at, $zero, 1
/* 2C980 8002BD80 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2C984 8002BD84 AFB10018 */  sw         $s1, 0x18($sp)
/* 2C988 8002BD88 2410FFFF */  addiu      $s0, $zero, -1
/* 2C98C 8002BD8C 14410003 */  bne        $v0, $at, .L8002BD9C
/* 2C990 8002BD90 AFAF0024 */   sw        $t7, 0x24($sp)
/* 2C994 8002BD94 10000031 */  b          .L8002BE5C
/* 2C998 8002BD98 00001025 */   or        $v0, $zero, $zero
.L8002BD9C:
/* 2C99C 8002BD9C 00A2C021 */  addu       $t8, $a1, $v0
/* 2C9A0 8002BDA0 930311E3 */  lbu        $v1, 0x11e3($t8)
/* 2C9A4 8002BDA4 240100FF */  addiu      $at, $zero, 0xff
/* 2C9A8 8002BDA8 10610003 */  beq        $v1, $at, .L8002BDB8
/* 2C9AC 8002BDAC 00000000 */   nop       
/* 2C9B0 8002BDB0 1000002A */  b          .L8002BE5C
/* 2C9B4 8002BDB4 00601025 */   or        $v0, $v1, $zero
.L8002BDB8:
/* 2C9B8 8002BDB8 0C016F40 */  jal        func_8005BD00
/* 2C9BC 8002BDBC 00000000 */   nop       
/* 2C9C0 8002BDC0 3051000F */  andi       $s1, $v0, 0xf
/* 2C9C4 8002BDC4 1A200006 */  blez       $s1, .L8002BDE0
/* 2C9C8 8002BDC8 00000000 */   nop       
.L8002BDCC:
/* 2C9CC 8002BDCC 0C002935 */  jal        func_8000A4D4
/* 2C9D0 8002BDD0 00000000 */   nop       
/* 2C9D4 8002BDD4 2631FFFF */  addiu      $s1, $s1, -1
/* 2C9D8 8002BDD8 1620FFFC */  bnez       $s1, .L8002BDCC
/* 2C9DC 8002BDDC 00000000 */   nop       
.L8002BDE0:
/* 2C9E0 8002BDE0 0C002935 */  jal        func_8000A4D4
/* 2C9E4 8002BDE4 00000000 */   nop       
/* 2C9E8 8002BDE8 8FB90024 */  lw         $t9, 0x24($sp)
/* 2C9EC 8002BDEC 0059001A */  div        $zero, $v0, $t9
/* 2C9F0 8002BDF0 00001810 */  mfhi       $v1
/* 2C9F4 8002BDF4 00608825 */  or         $s1, $v1, $zero
/* 2C9F8 8002BDF8 17200002 */  bnez       $t9, .L8002BE04
/* 2C9FC 8002BDFC 00000000 */   nop       
/* 2CA00 8002BE00 0007000D */  break      7
.L8002BE04:
/* 2CA04 8002BE04 2401FFFF */   addiu     $at, $zero, -1
/* 2CA08 8002BE08 17210004 */  bne        $t9, $at, .L8002BE1C
/* 2CA0C 8002BE0C 3C018000 */   lui       $at, 0x8000
/* 2CA10 8002BE10 14410002 */  bne        $v0, $at, .L8002BE1C
/* 2CA14 8002BE14 00000000 */   nop       
/* 2CA18 8002BE18 0006000D */  break      6
.L8002BE1C:
/* 2CA1C 8002BE1C 0462000F */   bltzl     $v1, .L8002BE5C
/* 2CA20 8002BE20 02001025 */   or        $v0, $s0, $zero
/* 2CA24 8002BE24 26100001 */  addiu      $s0, $s0, 1
.L8002BE28:
/* 2CA28 8002BE28 0C00AF45 */  jal        func_8002BD14
/* 2CA2C 8002BE2C 02002025 */   or        $a0, $s0, $zero
/* 2CA30 8002BE30 50400007 */  beql       $v0, $zero, .L8002BE50
/* 2CA34 8002BE34 2631FFFF */   addiu     $s1, $s1, -1
/* 2CA38 8002BE38 26100001 */  addiu      $s0, $s0, 1
.L8002BE3C:
/* 2CA3C 8002BE3C 0C00AF45 */  jal        func_8002BD14
/* 2CA40 8002BE40 02002025 */   or        $a0, $s0, $zero
/* 2CA44 8002BE44 5440FFFD */  bnel       $v0, $zero, .L8002BE3C
/* 2CA48 8002BE48 26100001 */   addiu     $s0, $s0, 1
/* 2CA4C 8002BE4C 2631FFFF */  addiu      $s1, $s1, -1
.L8002BE50:
/* 2CA50 8002BE50 0623FFF5 */  bgezl      $s1, .L8002BE28
/* 2CA54 8002BE54 26100001 */   addiu     $s0, $s0, 1
/* 2CA58 8002BE58 02001025 */  or         $v0, $s0, $zero
.L8002BE5C:
/* 2CA5C 8002BE5C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2CA60 8002BE60 8FB00014 */  lw         $s0, 0x14($sp)
/* 2CA64 8002BE64 8FB10018 */  lw         $s1, 0x18($sp)
/* 2CA68 8002BE68 03E00008 */  jr         $ra
/* 2CA6C 8002BE6C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002BE70
/* 2CA70 8002BE70 3C0E800B */  lui        $t6, 0x800b
/* 2CA74 8002BE74 8DCEF6DC */  lw         $t6, -0x924($t6)
/* 2CA78 8002BE78 00001825 */  or         $v1, $zero, $zero
/* 2CA7C 8002BE7C 00002825 */  or         $a1, $zero, $zero
/* 2CA80 8002BE80 8DC40214 */  lw         $a0, 0x214($t6)
/* 2CA84 8002BE84 90860002 */  lbu        $a2, 2($a0)
/* 2CA88 8002BE88 24820028 */  addiu      $v0, $a0, 0x28
/* 2CA8C 8002BE8C 18C0000C */  blez       $a2, .L8002BEC0
/* 2CA90 8002BE90 00000000 */   nop       
.L8002BE94:
/* 2CA94 8002BE94 90440024 */  lbu        $a0, 0x24($v0)
/* 2CA98 8002BE98 24A50001 */  addiu      $a1, $a1, 1
/* 2CA9C 8002BE9C 00052C00 */  sll        $a1, $a1, 0x10
/* 2CAA0 8002BEA0 0064082A */  slt        $at, $v1, $a0
/* 2CAA4 8002BEA4 10200003 */  beqz       $at, .L8002BEB4
/* 2CAA8 8002BEA8 00052C03 */   sra       $a1, $a1, 0x10
/* 2CAAC 8002BEAC 00041C00 */  sll        $v1, $a0, 0x10
/* 2CAB0 8002BEB0 00031C03 */  sra        $v1, $v1, 0x10
.L8002BEB4:
/* 2CAB4 8002BEB4 00A6082A */  slt        $at, $a1, $a2
/* 2CAB8 8002BEB8 1420FFF6 */  bnez       $at, .L8002BE94
/* 2CABC 8002BEBC 24420054 */   addiu     $v0, $v0, 0x54
.L8002BEC0:
/* 2CAC0 8002BEC0 03E00008 */  jr         $ra
/* 2CAC4 8002BEC4 00601025 */   or        $v0, $v1, $zero

glabel func_8002BEC8
/* 2CAC8 8002BEC8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2CACC 8002BECC AFA40030 */  sw         $a0, 0x30($sp)
/* 2CAD0 8002BED0 00042400 */  sll        $a0, $a0, 0x10
/* 2CAD4 8002BED4 00042403 */  sra        $a0, $a0, 0x10
/* 2CAD8 8002BED8 28810033 */  slti       $at, $a0, 0x33
/* 2CADC 8002BEDC AFBF002C */  sw         $ra, 0x2c($sp)
/* 2CAE0 8002BEE0 AFB50028 */  sw         $s5, 0x28($sp)
/* 2CAE4 8002BEE4 AFB40024 */  sw         $s4, 0x24($sp)
/* 2CAE8 8002BEE8 AFB30020 */  sw         $s3, 0x20($sp)
/* 2CAEC 8002BEEC AFB2001C */  sw         $s2, 0x1c($sp)
/* 2CAF0 8002BEF0 AFB10018 */  sw         $s1, 0x18($sp)
/* 2CAF4 8002BEF4 1420002A */  bnez       $at, .L8002BFA0
/* 2CAF8 8002BEF8 AFB00014 */   sw        $s0, 0x14($sp)
/* 2CAFC 8002BEFC 3C15800B */  lui        $s5, 0x800b
/* 2CB00 8002BF00 26B5E540 */  addiu      $s5, $s5, -0x1ac0
/* 2CB04 8002BF04 8EA211C4 */  lw         $v0, 0x11c4($s5)
/* 2CB08 8002BF08 00009025 */  or         $s2, $zero, $zero
/* 2CB0C 8002BF0C 00809825 */  or         $s3, $a0, $zero
/* 2CB10 8002BF10 904E0002 */  lbu        $t6, 2($v0)
/* 2CB14 8002BF14 8C510214 */  lw         $s1, 0x214($v0)
/* 2CB18 8002BF18 2450001C */  addiu      $s0, $v0, 0x1c
/* 2CB1C 8002BF1C 19C00020 */  blez       $t6, .L8002BFA0
/* 2CB20 8002BF20 26310028 */   addiu     $s1, $s1, 0x28
/* 2CB24 8002BF24 3094FFFF */  andi       $s4, $a0, 0xffff
.L8002BF28:
/* 2CB28 8002BF28 A2130024 */  sb         $s3, 0x24($s0)
/* 2CB2C 8002BF2C 92040000 */  lbu        $a0, ($s0)
/* 2CB30 8002BF30 0C00892E */  jal        func_800224B8
/* 2CB34 8002BF34 3285FFFF */   andi      $a1, $s4, 0xffff
/* 2CB38 8002BF38 AE020010 */  sw         $v0, 0x10($s0)
/* 2CB3C 8002BF3C 0C0088CE */  jal        func_80022338
/* 2CB40 8002BF40 02002025 */   or        $a0, $s0, $zero
/* 2CB44 8002BF44 960F0026 */  lhu        $t7, 0x26($s0)
/* 2CB48 8002BF48 02004025 */  or         $t0, $s0, $zero
/* 2CB4C 8002BF4C 02204825 */  or         $t1, $s1, $zero
/* 2CB50 8002BF50 260A0054 */  addiu      $t2, $s0, 0x54
/* 2CB54 8002BF54 A60F0002 */  sh         $t7, 2($s0)
.L8002BF58:
/* 2CB58 8002BF58 8D190000 */  lw         $t9, ($t0)
/* 2CB5C 8002BF5C 2508000C */  addiu      $t0, $t0, 0xc
/* 2CB60 8002BF60 2529000C */  addiu      $t1, $t1, 0xc
/* 2CB64 8002BF64 AD39FFF4 */  sw         $t9, -0xc($t1)
/* 2CB68 8002BF68 8D18FFF8 */  lw         $t8, -8($t0)
/* 2CB6C 8002BF6C AD38FFF8 */  sw         $t8, -8($t1)
/* 2CB70 8002BF70 8D19FFFC */  lw         $t9, -4($t0)
/* 2CB74 8002BF74 150AFFF8 */  bne        $t0, $t2, .L8002BF58
/* 2CB78 8002BF78 AD39FFFC */   sw        $t9, -4($t1)
/* 2CB7C 8002BF7C 8EAB11C4 */  lw         $t3, 0x11c4($s5)
/* 2CB80 8002BF80 26520001 */  addiu      $s2, $s2, 1
/* 2CB84 8002BF84 00129400 */  sll        $s2, $s2, 0x10
/* 2CB88 8002BF88 916C0002 */  lbu        $t4, 2($t3)
/* 2CB8C 8002BF8C 00129403 */  sra        $s2, $s2, 0x10
/* 2CB90 8002BF90 26310054 */  addiu      $s1, $s1, 0x54
/* 2CB94 8002BF94 024C082A */  slt        $at, $s2, $t4
/* 2CB98 8002BF98 1420FFE3 */  bnez       $at, .L8002BF28
/* 2CB9C 8002BF9C 26100054 */   addiu     $s0, $s0, 0x54
.L8002BFA0:
/* 2CBA0 8002BFA0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2CBA4 8002BFA4 8FB00014 */  lw         $s0, 0x14($sp)
/* 2CBA8 8002BFA8 8FB10018 */  lw         $s1, 0x18($sp)
/* 2CBAC 8002BFAC 8FB2001C */  lw         $s2, 0x1c($sp)
/* 2CBB0 8002BFB0 8FB30020 */  lw         $s3, 0x20($sp)
/* 2CBB4 8002BFB4 8FB40024 */  lw         $s4, 0x24($sp)
/* 2CBB8 8002BFB8 8FB50028 */  lw         $s5, 0x28($sp)
/* 2CBBC 8002BFBC 03E00008 */  jr         $ra
/* 2CBC0 8002BFC0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002BFC4
/* 2CBC4 8002BFC4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2CBC8 8002BFC8 AFA40028 */  sw         $a0, 0x28($sp)
/* 2CBCC 8002BFCC 00042400 */  sll        $a0, $a0, 0x10
/* 2CBD0 8002BFD0 AFB10018 */  sw         $s1, 0x18($sp)
/* 2CBD4 8002BFD4 3C11800B */  lui        $s1, 0x800b
/* 2CBD8 8002BFD8 00042403 */  sra        $a0, $a0, 0x10
/* 2CBDC 8002BFDC 2631E540 */  addiu      $s1, $s1, -0x1ac0
/* 2CBE0 8002BFE0 00047080 */  sll        $t6, $a0, 2
/* 2CBE4 8002BFE4 923811F2 */  lbu        $t8, 0x11f2($s1)
/* 2CBE8 8002BFE8 01C47021 */  addu       $t6, $t6, $a0
/* 2CBEC 8002BFEC AFA5002C */  sw         $a1, 0x2c($sp)
/* 2CBF0 8002BFF0 AFA60030 */  sw         $a2, 0x30($sp)
/* 2CBF4 8002BFF4 000E70C0 */  sll        $t6, $t6, 3
/* 2CBF8 8002BFF8 00063400 */  sll        $a2, $a2, 0x10
/* 2CBFC 8002BFFC 00052C00 */  sll        $a1, $a1, 0x10
/* 2CC00 8002C000 AFB30020 */  sw         $s3, 0x20($sp)
/* 2CC04 8002C004 022E7821 */  addu       $t7, $s1, $t6
/* 2CC08 8002C008 00052C03 */  sra        $a1, $a1, 0x10
/* 2CC0C 8002C00C 00063403 */  sra        $a2, $a2, 0x10
/* 2CC10 8002C010 AFBF0024 */  sw         $ra, 0x24($sp)
/* 2CC14 8002C014 AFB2001C */  sw         $s2, 0x1c($sp)
/* 2CC18 8002C018 AFB00014 */  sw         $s0, 0x14($sp)
/* 2CC1C 8002C01C AFA70034 */  sw         $a3, 0x34($sp)
/* 2CC20 8002C020 13000004 */  beqz       $t8, .L8002C034
/* 2CC24 8002C024 8DF3119C */   lw        $s3, 0x119c($t7)
/* 2CC28 8002C028 24A5001F */  addiu      $a1, $a1, 0x1f
/* 2CC2C 8002C02C 00052C00 */  sll        $a1, $a1, 0x10
/* 2CC30 8002C030 00052C03 */  sra        $a1, $a1, 0x10
.L8002C034:
/* 2CC34 8002C034 3C04800B */  lui        $a0, 0x800b
/* 2CC38 8002C038 8C84F738 */  lw         $a0, -0x8c8($a0)
/* 2CC3C 8002C03C 0C001213 */  jal        func_8000484C
/* 2CC40 8002C040 A7A60032 */   sh        $a2, 0x32($sp)
/* 2CC44 8002C044 87A60032 */  lh         $a2, 0x32($sp)
/* 2CC48 8002C048 82280003 */  lb         $t0, 3($s1)
/* 2CC4C 8002C04C 00008025 */  or         $s0, $zero, $zero
/* 2CC50 8002C050 0006C8C0 */  sll        $t9, $a2, 3
/* 2CC54 8002C054 0326C821 */  addu       $t9, $t9, $a2
/* 2CC58 8002C058 0019C880 */  sll        $t9, $t9, 2
/* 2CC5C 8002C05C 0326C823 */  subu       $t9, $t9, $a2
/* 2CC60 8002C060 0019C900 */  sll        $t9, $t9, 4
/* 2CC64 8002C064 02284821 */  addu       $t1, $s1, $t0
/* 2CC68 8002C068 00591821 */  addu       $v1, $v0, $t9
/* 2CC6C 8002C06C A12611E3 */  sb         $a2, 0x11e3($t1)
/* 2CC70 8002C070 946A0038 */  lhu        $t2, 0x38($v1)
/* 2CC74 8002C074 A2600002 */  sb         $zero, 2($s3)
/* 2CC78 8002C078 24720004 */  addiu      $s2, $v1, 4
/* 2CC7C 8002C07C AE6A0018 */  sw         $t2, 0x18($s3)
/* 2CC80 8002C080 946B003A */  lhu        $t3, 0x3a($v1)
/* 2CC84 8002C084 26510038 */  addiu      $s1, $s2, 0x38
/* 2CC88 8002C088 19600009 */  blez       $t3, .L8002C0B0
/* 2CC8C 8002C08C 02602025 */   or        $a0, $s3, $zero
.L8002C090:
/* 2CC90 8002C090 0C00AE22 */  jal        func_8002B888
/* 2CC94 8002C094 02202825 */   or        $a1, $s1, $zero
/* 2CC98 8002C098 964C0036 */  lhu        $t4, 0x36($s2)
/* 2CC9C 8002C09C 26100001 */  addiu      $s0, $s0, 1
/* 2CCA0 8002C0A0 26310054 */  addiu      $s1, $s1, 0x54
/* 2CCA4 8002C0A4 020C082A */  slt        $at, $s0, $t4
/* 2CCA8 8002C0A8 5420FFF9 */  bnel       $at, $zero, .L8002C090
/* 2CCAC 8002C0AC 02602025 */   or        $a0, $s3, $zero
.L8002C0B0:
/* 2CCB0 8002C0B0 26640008 */  addiu      $a0, $s3, 8
/* 2CCB4 8002C0B4 0C00294C */  jal        func_8000A530
/* 2CCB8 8002C0B8 02402825 */   or        $a1, $s2, $zero
/* 2CCBC 8002C0BC 8E640214 */  lw         $a0, 0x214($s3)
/* 2CCC0 8002C0C0 02402825 */  or         $a1, $s2, $zero
/* 2CCC4 8002C0C4 0C00294C */  jal        func_8000A530
/* 2CCC8 8002C0C8 24840014 */   addiu     $a0, $a0, 0x14
/* 2CCCC 8002C0CC 8E640214 */  lw         $a0, 0x214($s3)
/* 2CCD0 8002C0D0 2645000C */  addiu      $a1, $s2, 0xc
/* 2CCD4 8002C0D4 0C00294C */  jal        func_8000A530
/* 2CCD8 8002C0D8 24840220 */   addiu     $a0, $a0, 0x220
/* 2CCDC 8002C0DC 964D0034 */  lhu        $t5, 0x34($s2)
/* 2CCE0 8002C0E0 8E780214 */  lw         $t8, 0x214($s3)
/* 2CCE4 8002C0E4 000D7A03 */  sra        $t7, $t5, 8
/* 2CCE8 8002C0E8 A30F0003 */  sb         $t7, 3($t8)
/* 2CCEC 8002C0EC 8FB90034 */  lw         $t9, 0x34($sp)
/* 2CCF0 8002C0F0 53200007 */  beql       $t9, $zero, .L8002C110
/* 2CCF4 8002C0F4 8FBF0024 */   lw        $ra, 0x24($sp)
/* 2CCF8 8002C0F8 0C00AF9C */  jal        func_8002BE70
/* 2CCFC 8002C0FC 00000000 */   nop       
/* 2CD00 8002C100 00022400 */  sll        $a0, $v0, 0x10
/* 2CD04 8002C104 0C00AFB2 */  jal        func_8002BEC8
/* 2CD08 8002C108 00042403 */   sra       $a0, $a0, 0x10
/* 2CD0C 8002C10C 8FBF0024 */  lw         $ra, 0x24($sp)
.L8002C110:
/* 2CD10 8002C110 8FB00014 */  lw         $s0, 0x14($sp)
/* 2CD14 8002C114 8FB10018 */  lw         $s1, 0x18($sp)
/* 2CD18 8002C118 8FB2001C */  lw         $s2, 0x1c($sp)
/* 2CD1C 8002C11C 8FB30020 */  lw         $s3, 0x20($sp)
/* 2CD20 8002C120 03E00008 */  jr         $ra
/* 2CD24 8002C124 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002C128
/* 2CD28 8002C128 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2CD2C 8002C12C 3C08800B */  lui        $t0, 0x800b
/* 2CD30 8002C130 2508E540 */  addiu      $t0, $t0, -0x1ac0
/* 2CD34 8002C134 AFB00018 */  sw         $s0, 0x18($sp)
/* 2CD38 8002C138 81100003 */  lb         $s0, 3($t0)
/* 2CD3C 8002C13C 81020000 */  lb         $v0, ($t0)
/* 2CD40 8002C140 24040002 */  addiu      $a0, $zero, 2
/* 2CD44 8002C144 2610FFFF */  addiu      $s0, $s0, -1
/* 2CD48 8002C148 00108400 */  sll        $s0, $s0, 0x10
/* 2CD4C 8002C14C AFBF001C */  sw         $ra, 0x1c($sp)
/* 2CD50 8002C150 00108403 */  sra        $s0, $s0, 0x10
/* 2CD54 8002C154 1482000B */  bne        $a0, $v0, .L8002C184
/* 2CD58 8002C158 81030002 */   lb        $v1, 2($t0)
/* 2CD5C 8002C15C 910E11F2 */  lbu        $t6, 0x11f2($t0)
/* 2CD60 8002C160 51C00009 */  beql       $t6, $zero, .L8002C188
/* 2CD64 8002C164 24010007 */   addiu     $at, $zero, 7
/* 2CD68 8002C168 24040008 */  addiu      $a0, $zero, 8
/* 2CD6C 8002C16C 0C00AF58 */  jal        func_8002BD60
/* 2CD70 8002C170 A7A30024 */   sh        $v1, 0x24($sp)
/* 2CD74 8002C174 00028400 */  sll        $s0, $v0, 0x10
/* 2CD78 8002C178 00108403 */  sra        $s0, $s0, 0x10
/* 2CD7C 8002C17C 10000020 */  b          .L8002C200
/* 2CD80 8002C180 87A30024 */   lh        $v1, 0x24($sp)
.L8002C184:
/* 2CD84 8002C184 24010007 */  addiu      $at, $zero, 7
.L8002C188:
/* 2CD88 8002C188 1441001D */  bne        $v0, $at, .L8002C200
/* 2CD8C 8002C18C 24010009 */   addiu     $at, $zero, 9
/* 2CD90 8002C190 5461001C */  bnel       $v1, $at, .L8002C204
/* 2CD94 8002C194 3C045249 */   lui       $a0, 0x5249
/* 2CD98 8002C198 910211F0 */  lbu        $v0, 0x11f0($t0)
/* 2CD9C 8002C19C 24010001 */  addiu      $at, $zero, 1
/* 2CDA0 8002C1A0 1041000D */  beq        $v0, $at, .L8002C1D8
/* 2CDA4 8002C1A4 00000000 */   nop       
/* 2CDA8 8002C1A8 1044000D */  beq        $v0, $a0, .L8002C1E0
/* 2CDAC 8002C1AC 24010003 */   addiu     $at, $zero, 3
/* 2CDB0 8002C1B0 1041000D */  beq        $v0, $at, .L8002C1E8
/* 2CDB4 8002C1B4 24010099 */   addiu     $at, $zero, 0x99
/* 2CDB8 8002C1B8 1041000D */  beq        $v0, $at, .L8002C1F0
/* 2CDBC 8002C1BC 240100B0 */   addiu     $at, $zero, 0xb0
/* 2CDC0 8002C1C0 1041000D */  beq        $v0, $at, .L8002C1F8
/* 2CDC4 8002C1C4 240100B1 */   addiu     $at, $zero, 0xb1
/* 2CDC8 8002C1C8 1041000D */  beq        $v0, $at, .L8002C200
/* 2CDCC 8002C1CC 24100001 */   addiu     $s0, $zero, 1
/* 2CDD0 8002C1D0 1000000B */  b          .L8002C200
/* 2CDD4 8002C1D4 24100006 */   addiu     $s0, $zero, 6
.L8002C1D8:
/* 2CDD8 8002C1D8 10000009 */  b          .L8002C200
/* 2CDDC 8002C1DC 24100004 */   addiu     $s0, $zero, 4
.L8002C1E0:
/* 2CDE0 8002C1E0 10000007 */  b          .L8002C200
/* 2CDE4 8002C1E4 24100005 */   addiu     $s0, $zero, 5
.L8002C1E8:
/* 2CDE8 8002C1E8 10000005 */  b          .L8002C200
/* 2CDEC 8002C1EC 24100003 */   addiu     $s0, $zero, 3
.L8002C1F0:
/* 2CDF0 8002C1F0 10000003 */  b          .L8002C200
/* 2CDF4 8002C1F4 00008025 */   or        $s0, $zero, $zero
.L8002C1F8:
/* 2CDF8 8002C1F8 10000001 */  b          .L8002C200
/* 2CDFC 8002C1FC 24100002 */   addiu     $s0, $zero, 2
.L8002C200:
/* 2CE00 8002C200 3C045249 */  lui        $a0, 0x5249
.L8002C204:
/* 2CE04 8002C204 3484564C */  ori        $a0, $a0, 0x564c
/* 2CE08 8002C208 0C0009E1 */  jal        func_80002784
/* 2CE0C 8002C20C A7A30024 */   sh        $v1, 0x24($sp)
/* 2CE10 8002C210 3C040089 */  lui        $a0, 0x89
/* 2CE14 8002C214 34848000 */  ori        $a0, $a0, 0x8000
/* 2CE18 8002C218 00002825 */  or         $a1, $zero, $zero
/* 2CE1C 8002C21C 24060001 */  addiu      $a2, $zero, 1
/* 2CE20 8002C220 0C00113D */  jal        func_800044F4
/* 2CE24 8002C224 00003825 */   or        $a3, $zero, $zero
/* 2CE28 8002C228 3C08800B */  lui        $t0, 0x800b
/* 2CE2C 8002C22C 3C01800B */  lui        $at, 0x800b
/* 2CE30 8002C230 AC22F738 */  sw         $v0, -0x8c8($at)
/* 2CE34 8002C234 2508E540 */  addiu      $t0, $t0, -0x1ac0
/* 2CE38 8002C238 810F0000 */  lb         $t7, ($t0)
/* 2CE3C 8002C23C 87A30024 */  lh         $v1, 0x24($sp)
/* 2CE40 8002C240 25F8FFFF */  addiu      $t8, $t7, -1
/* 2CE44 8002C244 2F010008 */  sltiu      $at, $t8, 8
/* 2CE48 8002C248 1020004A */  beqz       $at, .L8002C374
/* 2CE4C 8002C24C 0018C080 */   sll       $t8, $t8, 2
/* 2CE50 8002C250 3C018008 */  lui        $at, 0x8008
/* 2CE54 8002C254 00380821 */  addu       $at, $at, $t8
/* 2CE58 8002C258 8C38C404 */  lw         $t8, -0x3bfc($at)
/* 2CE5C 8002C25C 03000008 */  jr         $t8
/* 2CE60 8002C260 00000000 */   nop       
/* 2CE64 8002C264 00103400 */  sll        $a2, $s0, 0x10
/* 2CE68 8002C268 00063403 */  sra        $a2, $a2, 0x10
/* 2CE6C 8002C26C 24040001 */  addiu      $a0, $zero, 1
/* 2CE70 8002C270 24050006 */  addiu      $a1, $zero, 6
/* 2CE74 8002C274 0C00AFF1 */  jal        func_8002BFC4
/* 2CE78 8002C278 00003825 */   or        $a3, $zero, $zero
/* 2CE7C 8002C27C 1000003E */  b          .L8002C378
/* 2CE80 8002C280 3C045249 */   lui       $a0, 0x5249
/* 2CE84 8002C284 00103400 */  sll        $a2, $s0, 0x10
/* 2CE88 8002C288 00063403 */  sra        $a2, $a2, 0x10
/* 2CE8C 8002C28C 24040001 */  addiu      $a0, $zero, 1
/* 2CE90 8002C290 24050007 */  addiu      $a1, $zero, 7
/* 2CE94 8002C294 0C00AFF1 */  jal        func_8002BFC4
/* 2CE98 8002C298 00003825 */   or        $a3, $zero, $zero
/* 2CE9C 8002C29C 10000036 */  b          .L8002C378
/* 2CEA0 8002C2A0 3C045249 */   lui       $a0, 0x5249
/* 2CEA4 8002C2A4 24650008 */  addiu      $a1, $v1, 8
/* 2CEA8 8002C2A8 00052C00 */  sll        $a1, $a1, 0x10
/* 2CEAC 8002C2AC 00103400 */  sll        $a2, $s0, 0x10
/* 2CEB0 8002C2B0 00063403 */  sra        $a2, $a2, 0x10
/* 2CEB4 8002C2B4 00052C03 */  sra        $a1, $a1, 0x10
/* 2CEB8 8002C2B8 24040001 */  addiu      $a0, $zero, 1
/* 2CEBC 8002C2BC 0C00AFF1 */  jal        func_8002BFC4
/* 2CEC0 8002C2C0 00003825 */   or        $a3, $zero, $zero
/* 2CEC4 8002C2C4 1000002C */  b          .L8002C378
/* 2CEC8 8002C2C8 3C045249 */   lui       $a0, 0x5249
/* 2CECC 8002C2CC 00103400 */  sll        $a2, $s0, 0x10
/* 2CED0 8002C2D0 00063403 */  sra        $a2, $a2, 0x10
/* 2CED4 8002C2D4 24040001 */  addiu      $a0, $zero, 1
/* 2CED8 8002C2D8 00002825 */  or         $a1, $zero, $zero
/* 2CEDC 8002C2DC 0C00AFF1 */  jal        func_8002BFC4
/* 2CEE0 8002C2E0 00003825 */   or        $a3, $zero, $zero
/* 2CEE4 8002C2E4 10000024 */  b          .L8002C378
/* 2CEE8 8002C2E8 3C045249 */   lui       $a0, 0x5249
/* 2CEEC 8002C2EC 00103400 */  sll        $a2, $s0, 0x10
/* 2CEF0 8002C2F0 00063403 */  sra        $a2, $a2, 0x10
/* 2CEF4 8002C2F4 24040001 */  addiu      $a0, $zero, 1
/* 2CEF8 8002C2F8 24050001 */  addiu      $a1, $zero, 1
/* 2CEFC 8002C2FC 0C00AFF1 */  jal        func_8002BFC4
/* 2CF00 8002C300 00003825 */   or        $a3, $zero, $zero
/* 2CF04 8002C304 1000001C */  b          .L8002C378
/* 2CF08 8002C308 3C045249 */   lui       $a0, 0x5249
/* 2CF0C 8002C30C 24650002 */  addiu      $a1, $v1, 2
/* 2CF10 8002C310 00052C00 */  sll        $a1, $a1, 0x10
/* 2CF14 8002C314 00103400 */  sll        $a2, $s0, 0x10
/* 2CF18 8002C318 00063403 */  sra        $a2, $a2, 0x10
/* 2CF1C 8002C31C 00052C03 */  sra        $a1, $a1, 0x10
/* 2CF20 8002C320 24040001 */  addiu      $a0, $zero, 1
/* 2CF24 8002C324 0C00AFF1 */  jal        func_8002BFC4
/* 2CF28 8002C328 00003825 */   or        $a3, $zero, $zero
/* 2CF2C 8002C32C 10000012 */  b          .L8002C378
/* 2CF30 8002C330 3C045249 */   lui       $a0, 0x5249
/* 2CF34 8002C334 2465000C */  addiu      $a1, $v1, 0xc
/* 2CF38 8002C338 00052C00 */  sll        $a1, $a1, 0x10
/* 2CF3C 8002C33C 00103400 */  sll        $a2, $s0, 0x10
/* 2CF40 8002C340 00063403 */  sra        $a2, $a2, 0x10
/* 2CF44 8002C344 00052C03 */  sra        $a1, $a1, 0x10
/* 2CF48 8002C348 24040001 */  addiu      $a0, $zero, 1
/* 2CF4C 8002C34C 0C00AFF1 */  jal        func_8002BFC4
/* 2CF50 8002C350 24070001 */   addiu     $a3, $zero, 1
/* 2CF54 8002C354 10000008 */  b          .L8002C378
/* 2CF58 8002C358 3C045249 */   lui       $a0, 0x5249
/* 2CF5C 8002C35C 00103400 */  sll        $a2, $s0, 0x10
/* 2CF60 8002C360 00063403 */  sra        $a2, $a2, 0x10
/* 2CF64 8002C364 24040001 */  addiu      $a0, $zero, 1
/* 2CF68 8002C368 24050016 */  addiu      $a1, $zero, 0x16
/* 2CF6C 8002C36C 0C00AFF1 */  jal        func_8002BFC4
/* 2CF70 8002C370 00003825 */   or        $a3, $zero, $zero
.L8002C374:
/* 2CF74 8002C374 3C045249 */  lui        $a0, 0x5249
.L8002C378:
/* 2CF78 8002C378 0C000A0E */  jal        func_80002838
/* 2CF7C 8002C37C 3484564C */   ori       $a0, $a0, 0x564c
/* 2CF80 8002C380 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2CF84 8002C384 8FB00018 */  lw         $s0, 0x18($sp)
/* 2CF88 8002C388 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2CF8C 8002C38C 03E00008 */  jr         $ra
/* 2CF90 8002C390 00000000 */   nop       

glabel func_8002C394
/* 2CF94 8002C394 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CF98 8002C398 AFA40018 */  sw         $a0, 0x18($sp)
/* 2CF9C 8002C39C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CFA0 8002C3A0 3C045249 */  lui        $a0, 0x5249
/* 2CFA4 8002C3A4 0C0009E1 */  jal        func_80002784
/* 2CFA8 8002C3A8 3484564C */   ori       $a0, $a0, 0x564c
/* 2CFAC 8002C3AC 3C040089 */  lui        $a0, 0x89
/* 2CFB0 8002C3B0 34848000 */  ori        $a0, $a0, 0x8000
/* 2CFB4 8002C3B4 00002825 */  or         $a1, $zero, $zero
/* 2CFB8 8002C3B8 24060001 */  addiu      $a2, $zero, 1
/* 2CFBC 8002C3BC 0C00113D */  jal        func_800044F4
/* 2CFC0 8002C3C0 00003825 */   or        $a3, $zero, $zero
/* 2CFC4 8002C3C4 3C01800B */  lui        $at, 0x800b
/* 2CFC8 8002C3C8 AC22F738 */  sw         $v0, -0x8c8($at)
/* 2CFCC 8002C3CC 24040009 */  addiu      $a0, $zero, 9
/* 2CFD0 8002C3D0 24050006 */  addiu      $a1, $zero, 6
/* 2CFD4 8002C3D4 0C00AD7B */  jal        func_8002B5EC
/* 2CFD8 8002C3D8 00003025 */   or        $a2, $zero, $zero
/* 2CFDC 8002C3DC 87AE001A */  lh         $t6, 0x1a($sp)
/* 2CFE0 8002C3E0 24010001 */  addiu      $at, $zero, 1
/* 2CFE4 8002C3E4 15C10019 */  bne        $t6, $at, .L8002C44C
/* 2CFE8 8002C3E8 00000000 */   nop       
/* 2CFEC 8002C3EC 0C008C47 */  jal        func_8002311C
/* 2CFF0 8002C3F0 24040001 */   addiu     $a0, $zero, 1
/* 2CFF4 8002C3F4 3C068008 */  lui        $a2, 0x8008
/* 2CFF8 8002C3F8 24C6C3D0 */  addiu      $a2, $a2, -0x3c30
/* 2CFFC 8002C3FC 00002025 */  or         $a0, $zero, $zero
/* 2D000 8002C400 00002825 */  or         $a1, $zero, $zero
/* 2D004 8002C404 0C00ADC0 */  jal        func_8002B700
/* 2D008 8002C408 00403825 */   or        $a3, $v0, $zero
/* 2D00C 8002C40C 00002025 */  or         $a0, $zero, $zero
/* 2D010 8002C410 0C00AE10 */  jal        func_8002B840
/* 2D014 8002C414 00402825 */   or        $a1, $v0, $zero
/* 2D018 8002C418 0C008C47 */  jal        func_8002311C
/* 2D01C 8002C41C 24040003 */   addiu     $a0, $zero, 3
/* 2D020 8002C420 3C068008 */  lui        $a2, 0x8008
/* 2D024 8002C424 24C6C3D4 */  addiu      $a2, $a2, -0x3c2c
/* 2D028 8002C428 2404FFFF */  addiu      $a0, $zero, -1
/* 2D02C 8002C42C 00002825 */  or         $a1, $zero, $zero
/* 2D030 8002C430 0C00ADC0 */  jal        func_8002B700
/* 2D034 8002C434 00403825 */   or        $a3, $v0, $zero
/* 2D038 8002C438 24040001 */  addiu      $a0, $zero, 1
/* 2D03C 8002C43C 0C00AE10 */  jal        func_8002B840
/* 2D040 8002C440 00402825 */   or        $a1, $v0, $zero
/* 2D044 8002C444 10000017 */  b          .L8002C4A4
/* 2D048 8002C448 00000000 */   nop       
.L8002C44C:
/* 2D04C 8002C44C 0C008C47 */  jal        func_8002311C
/* 2D050 8002C450 24040001 */   addiu     $a0, $zero, 1
/* 2D054 8002C454 3C068008 */  lui        $a2, 0x8008
/* 2D058 8002C458 24C6C3D8 */  addiu      $a2, $a2, -0x3c28
/* 2D05C 8002C45C 00002025 */  or         $a0, $zero, $zero
/* 2D060 8002C460 00002825 */  or         $a1, $zero, $zero
/* 2D064 8002C464 0C00ADC0 */  jal        func_8002B700
/* 2D068 8002C468 00403825 */   or        $a3, $v0, $zero
/* 2D06C 8002C46C 00002025 */  or         $a0, $zero, $zero
/* 2D070 8002C470 0C00AE10 */  jal        func_8002B840
/* 2D074 8002C474 00402825 */   or        $a1, $v0, $zero
/* 2D078 8002C478 0C008C47 */  jal        func_8002311C
/* 2D07C 8002C47C 24040001 */   addiu     $a0, $zero, 1
/* 2D080 8002C480 3C068008 */  lui        $a2, 0x8008
/* 2D084 8002C484 24C6C3DC */  addiu      $a2, $a2, -0x3c24
/* 2D088 8002C488 24040001 */  addiu      $a0, $zero, 1
/* 2D08C 8002C48C 00002825 */  or         $a1, $zero, $zero
/* 2D090 8002C490 0C00ADC0 */  jal        func_8002B700
/* 2D094 8002C494 00403825 */   or        $a3, $v0, $zero
/* 2D098 8002C498 24040001 */  addiu      $a0, $zero, 1
/* 2D09C 8002C49C 0C00AE10 */  jal        func_8002B840
/* 2D0A0 8002C4A0 00402825 */   or        $a1, $v0, $zero
.L8002C4A4:
/* 2D0A4 8002C4A4 3C0F8007 */  lui        $t7, 0x8007
/* 2D0A8 8002C4A8 85EF5684 */  lh         $t7, 0x5684($t7)
/* 2D0AC 8002C4AC 00002025 */  or         $a0, $zero, $zero
/* 2D0B0 8002C4B0 2405001D */  addiu      $a1, $zero, 0x1d
/* 2D0B4 8002C4B4 15E0000D */  bnez       $t7, .L8002C4EC
/* 2D0B8 8002C4B8 24060001 */   addiu     $a2, $zero, 1
/* 2D0BC 8002C4BC 00002025 */  or         $a0, $zero, $zero
/* 2D0C0 8002C4C0 2405001D */  addiu      $a1, $zero, 0x1d
/* 2D0C4 8002C4C4 00003025 */  or         $a2, $zero, $zero
/* 2D0C8 8002C4C8 0C00AFF1 */  jal        func_8002BFC4
/* 2D0CC 8002C4CC 00003825 */   or        $a3, $zero, $zero
/* 2D0D0 8002C4D0 24040001 */  addiu      $a0, $zero, 1
/* 2D0D4 8002C4D4 2405001D */  addiu      $a1, $zero, 0x1d
/* 2D0D8 8002C4D8 24060001 */  addiu      $a2, $zero, 1
/* 2D0DC 8002C4DC 0C00AFF1 */  jal        func_8002BFC4
/* 2D0E0 8002C4E0 00003825 */   or        $a3, $zero, $zero
/* 2D0E4 8002C4E4 10000008 */  b          .L8002C508
/* 2D0E8 8002C4E8 00000000 */   nop       
.L8002C4EC:
/* 2D0EC 8002C4EC 0C00AFF1 */  jal        func_8002BFC4
/* 2D0F0 8002C4F0 00003825 */   or        $a3, $zero, $zero
/* 2D0F4 8002C4F4 24040001 */  addiu      $a0, $zero, 1
/* 2D0F8 8002C4F8 2405001D */  addiu      $a1, $zero, 0x1d
/* 2D0FC 8002C4FC 00003025 */  or         $a2, $zero, $zero
/* 2D100 8002C500 0C00AFF1 */  jal        func_8002BFC4
/* 2D104 8002C504 00003825 */   or        $a3, $zero, $zero
.L8002C508:
/* 2D108 8002C508 3C188007 */  lui        $t8, 0x8007
/* 2D10C 8002C50C 87185684 */  lh         $t8, 0x5684($t8)
/* 2D110 8002C510 3C018007 */  lui        $at, 0x8007
/* 2D114 8002C514 3C045249 */  lui        $a0, 0x5249
/* 2D118 8002C518 3B190001 */  xori       $t9, $t8, 1
/* 2D11C 8002C51C A4395684 */  sh         $t9, 0x5684($at)
/* 2D120 8002C520 0C000A0E */  jal        func_80002838
/* 2D124 8002C524 3484564C */   ori       $a0, $a0, 0x564c
/* 2D128 8002C528 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D12C 8002C52C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2D130 8002C530 03E00008 */  jr         $ra
/* 2D134 8002C534 00000000 */   nop       

glabel func_8002C538
/* 2D138 8002C538 3C02800B */  lui        $v0, 0x800b
/* 2D13C 8002C53C 2442E540 */  addiu      $v0, $v0, -0x1ac0
/* 2D140 8002C540 8C43119C */  lw         $v1, 0x119c($v0)
/* 2D144 8002C544 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 2D148 8002C548 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D14C 8002C54C 8C6E0214 */  lw         $t6, 0x214($v1)
/* 2D150 8002C550 804F0000 */  lb         $t7, ($v0)
/* 2D154 8002C554 80580002 */  lb         $t8, 2($v0)
/* 2D158 8002C558 80590003 */  lb         $t9, 3($v0)
/* 2D15C 8002C55C 904811F3 */  lbu        $t0, 0x11f3($v0)
/* 2D160 8002C560 904911F2 */  lbu        $t1, 0x11f2($v0)
/* 2D164 8002C564 904A11F0 */  lbu        $t2, 0x11f0($v0)
/* 2D168 8002C568 AFAE001C */  sw         $t6, 0x1c($sp)
/* 2D16C 8002C56C A3AF0020 */  sb         $t7, 0x20($sp)
/* 2D170 8002C570 A3B80021 */  sb         $t8, 0x21($sp)
/* 2D174 8002C574 A3B90022 */  sb         $t9, 0x22($sp)
/* 2D178 8002C578 A3A80024 */  sb         $t0, 0x24($sp)
/* 2D17C 8002C57C A3A90023 */  sb         $t1, 0x23($sp)
/* 2D180 8002C580 A3AA002D */  sb         $t2, 0x2d($sp)
/* 2D184 8002C584 8C6B0018 */  lw         $t3, 0x18($v1)
/* 2D188 8002C588 3C04800B */  lui        $a0, 0x800b
/* 2D18C 8002C58C 2484F724 */  addiu      $a0, $a0, -0x8dc
/* 2D190 8002C590 27A50025 */  addiu      $a1, $sp, 0x25
/* 2D194 8002C594 24060008 */  addiu      $a2, $zero, 8
/* 2D198 8002C598 0C018958 */  jal        func_80062560
/* 2D19C 8002C59C A7AB002E */   sh        $t3, 0x2e($sp)
/* 2D1A0 8002C5A0 3C02800B */  lui        $v0, 0x800b
/* 2D1A4 8002C5A4 2442E540 */  addiu      $v0, $v0, -0x1ac0
/* 2D1A8 8002C5A8 8C45119C */  lw         $a1, 0x119c($v0)
/* 2D1AC 8002C5AC 27A40030 */  addiu      $a0, $sp, 0x30
/* 2D1B0 8002C5B0 0C008708 */  jal        func_80021C20
/* 2D1B4 8002C5B4 24A50008 */   addiu     $a1, $a1, 8
/* 2D1B8 8002C5B8 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2D1BC 8002C5BC 27A40020 */  addiu      $a0, $sp, 0x20
/* 2D1C0 8002C5C0 24450028 */  addiu      $a1, $v0, 0x28
/* 2D1C4 8002C5C4 0C00A075 */  jal        func_800281D4
/* 2D1C8 8002C5C8 90460002 */   lbu       $a2, 2($v0)
/* 2D1CC 8002C5CC 24040015 */  addiu      $a0, $zero, 0x15
/* 2D1D0 8002C5D0 0C0099A1 */  jal        func_80026684
/* 2D1D4 8002C5D4 00002825 */   or        $a1, $zero, $zero
/* 2D1D8 8002C5D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D1DC 8002C5DC 27BD0040 */  addiu      $sp, $sp, 0x40
/* 2D1E0 8002C5E0 03E00008 */  jr         $ra
/* 2D1E4 8002C5E4 00000000 */   nop       

glabel func_8002C5E8
/* 2D1E8 8002C5E8 27BDFD90 */  addiu      $sp, $sp, -0x270
/* 2D1EC 8002C5EC AFBF0024 */  sw         $ra, 0x24($sp)
/* 2D1F0 8002C5F0 AFB30020 */  sw         $s3, 0x20($sp)
/* 2D1F4 8002C5F4 AFB2001C */  sw         $s2, 0x1c($sp)
/* 2D1F8 8002C5F8 AFB10018 */  sw         $s1, 0x18($sp)
/* 2D1FC 8002C5FC AFB00014 */  sw         $s0, 0x14($sp)
/* 2D200 8002C600 27A40250 */  addiu      $a0, $sp, 0x250
/* 2D204 8002C604 0C00A0C8 */  jal        func_80028320
/* 2D208 8002C608 27A50058 */   addiu     $a1, $sp, 0x58
/* 2D20C 8002C60C 2401FFFF */  addiu      $at, $zero, -1
/* 2D210 8002C610 10410040 */  beq        $v0, $at, .L8002C714
/* 2D214 8002C614 00409825 */   or        $s3, $v0, $zero
/* 2D218 8002C618 93A40250 */  lbu        $a0, 0x250($sp)
/* 2D21C 8002C61C 93A60251 */  lbu        $a2, 0x251($sp)
/* 2D220 8002C620 0C00AD7B */  jal        func_8002B5EC
/* 2D224 8002C624 00802825 */   or        $a1, $a0, $zero
/* 2D228 8002C628 3C05800B */  lui        $a1, 0x800b
/* 2D22C 8002C62C 24A5F724 */  addiu      $a1, $a1, -0x8dc
/* 2D230 8002C630 27A40255 */  addiu      $a0, $sp, 0x255
/* 2D234 8002C634 0C018958 */  jal        func_80062560
/* 2D238 8002C638 24060008 */   addiu     $a2, $zero, 8
/* 2D23C 8002C63C 3C12800B */  lui        $s2, 0x800b
/* 2D240 8002C640 2652E540 */  addiu      $s2, $s2, -0x1ac0
/* 2D244 8002C644 93AE0252 */  lbu        $t6, 0x252($sp)
/* 2D248 8002C648 93AF0254 */  lbu        $t7, 0x254($sp)
/* 2D24C 8002C64C 93B80253 */  lbu        $t8, 0x253($sp)
/* 2D250 8002C650 93B9025D */  lbu        $t9, 0x25d($sp)
/* 2D254 8002C654 97B1025E */  lhu        $s1, 0x25e($sp)
/* 2D258 8002C658 27A40044 */  addiu      $a0, $sp, 0x44
/* 2D25C 8002C65C 27A50260 */  addiu      $a1, $sp, 0x260
/* 2D260 8002C660 A24E0003 */  sb         $t6, 3($s2)
/* 2D264 8002C664 A24F11F3 */  sb         $t7, 0x11f3($s2)
/* 2D268 8002C668 A25811F2 */  sb         $t8, 0x11f2($s2)
/* 2D26C 8002C66C 0C0086D7 */  jal        func_80021B5C
/* 2D270 8002C670 A25911F0 */   sb        $t9, 0x11f0($s2)
/* 2D274 8002C674 00118400 */  sll        $s0, $s1, 0x10
/* 2D278 8002C678 00108403 */  sra        $s0, $s0, 0x10
/* 2D27C 8002C67C 27A60044 */  addiu      $a2, $sp, 0x44
/* 2D280 8002C680 00102C00 */  sll        $a1, $s0, 0x10
/* 2D284 8002C684 00052C03 */  sra        $a1, $a1, 0x10
/* 2D288 8002C688 00C03825 */  or         $a3, $a2, $zero
/* 2D28C 8002C68C 0C00ADC0 */  jal        func_8002B700
/* 2D290 8002C690 00002025 */   or        $a0, $zero, $zero
/* 2D294 8002C694 00002025 */  or         $a0, $zero, $zero
/* 2D298 8002C698 0C00AE10 */  jal        func_8002B840
/* 2D29C 8002C69C 00402825 */   or        $a1, $v0, $zero
/* 2D2A0 8002C6A0 0C008C47 */  jal        func_8002311C
/* 2D2A4 8002C6A4 24040003 */   addiu     $a0, $zero, 3
/* 2D2A8 8002C6A8 00102C00 */  sll        $a1, $s0, 0x10
/* 2D2AC 8002C6AC 3C068008 */  lui        $a2, 0x8008
/* 2D2B0 8002C6B0 24C6C3E0 */  addiu      $a2, $a2, -0x3c20
/* 2D2B4 8002C6B4 00052C03 */  sra        $a1, $a1, 0x10
/* 2D2B8 8002C6B8 2404FFFF */  addiu      $a0, $zero, -1
/* 2D2BC 8002C6BC 0C00ADC0 */  jal        func_8002B700
/* 2D2C0 8002C6C0 00403825 */   or        $a3, $v0, $zero
/* 2D2C4 8002C6C4 24040001 */  addiu      $a0, $zero, 1
/* 2D2C8 8002C6C8 0C00AE10 */  jal        func_8002B840
/* 2D2CC 8002C6CC 00402825 */   or        $a1, $v0, $zero
/* 2D2D0 8002C6D0 1A60000D */  blez       $s3, .L8002C708
/* 2D2D4 8002C6D4 27B00058 */   addiu     $s0, $sp, 0x58
/* 2D2D8 8002C6D8 00134880 */  sll        $t1, $s3, 2
/* 2D2DC 8002C6DC 01334821 */  addu       $t1, $t1, $s3
/* 2D2E0 8002C6E0 00094880 */  sll        $t1, $t1, 2
/* 2D2E4 8002C6E4 01334821 */  addu       $t1, $t1, $s3
/* 2D2E8 8002C6E8 00094880 */  sll        $t1, $t1, 2
/* 2D2EC 8002C6EC 01308821 */  addu       $s1, $t1, $s0
/* 2D2F0 8002C6F0 8E44119C */  lw         $a0, 0x119c($s2)
.L8002C6F4:
/* 2D2F4 8002C6F4 0C00AE22 */  jal        func_8002B888
/* 2D2F8 8002C6F8 02002825 */   or        $a1, $s0, $zero
/* 2D2FC 8002C6FC 26100054 */  addiu      $s0, $s0, 0x54
/* 2D300 8002C700 5611FFFC */  bnel       $s0, $s1, .L8002C6F4
/* 2D304 8002C704 8E44119C */   lw        $a0, 0x119c($s2)
.L8002C708:
/* 2D308 8002C708 924A11F5 */  lbu        $t2, 0x11f5($s2)
/* 2D30C 8002C70C 354B0003 */  ori        $t3, $t2, 3
/* 2D310 8002C710 A24B11F5 */  sb         $t3, 0x11f5($s2)
.L8002C714:
/* 2D314 8002C714 8FBF0024 */  lw         $ra, 0x24($sp)
/* 2D318 8002C718 26620001 */  addiu      $v0, $s3, 1
/* 2D31C 8002C71C 8FB30020 */  lw         $s3, 0x20($sp)
/* 2D320 8002C720 8FB00014 */  lw         $s0, 0x14($sp)
/* 2D324 8002C724 8FB10018 */  lw         $s1, 0x18($sp)
/* 2D328 8002C728 8FB2001C */  lw         $s2, 0x1c($sp)
/* 2D32C 8002C72C 27BD0270 */  addiu      $sp, $sp, 0x270
/* 2D330 8002C730 03E00008 */  jr         $ra
/* 2D334 8002C734 0002102B */   sltu      $v0, $zero, $v0
/* 2D338 8002C738 00000000 */  nop        
/* 2D33C 8002C73C 00000000 */  nop        
