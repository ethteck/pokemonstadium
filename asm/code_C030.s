.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8000B430
/* C030 8000B430 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* C034 8000B434 AFBF001C */  sw        $ra, 0x1c($sp)
/* C038 8000B438 AFB00018 */  sw        $s0, 0x18($sp)
/* C03C 8000B43C 0C016F40 */  jal       func_8005BD00
/* C040 8000B440 00808025 */  or        $s0, $a0, $zero
/* C044 8000B444 AFA20024 */  sw        $v0, 0x24($sp)
/* C048 8000B448 02002825 */  or        $a1, $s0, $zero
/* C04C 8000B44C 001027C3 */  sra       $a0, $s0, 0x1f
/* C050 8000B450 24060000 */  addiu     $a2, $zero, 0
/* C054 8000B454 0C015D5E */  jal       func_80057578
/* C058 8000B458 240703E8 */  addiu     $a3, $zero, 0x3e8
/* C05C 8000B45C 00402025 */  or        $a0, $v0, $zero
/* C060 8000B460 00602825 */  or        $a1, $v1, $zero
/* C064 8000B464 24060000 */  addiu     $a2, $zero, 0
/* C068 8000B468 0C015D5E */  jal       func_80057578
/* C06C 8000B46C 24070BB8 */  addiu     $a3, $zero, 0xbb8
/* C070 8000B470 00402025 */  or        $a0, $v0, $zero
/* C074 8000B474 00602825 */  or        $a1, $v1, $zero
/* C078 8000B478 24060000 */  addiu     $a2, $zero, 0
/* C07C 8000B47C 0C015D1E */  jal       func_80057478
/* C080 8000B480 24070040 */  addiu     $a3, $zero, 0x40
/* C084 8000B484 8FAE0024 */  lw        $t6, 0x24($sp)
/* C088 8000B488 0C016F40 */  jal       func_8005BD00
/* C08C 8000B48C 006E8021 */  addu      $s0, $v1, $t6
/* C090 8000B490 0050082B */  sltu      $at, $v0, $s0
/* C094 8000B494 50200007 */  beql      $at, $zero, .L8000B4B4
/* C098 8000B498 8FBF001C */  lw        $ra, 0x1c($sp)
.L8000B49C:
/* C09C 8000B49C 0C016F40 */  jal       func_8005BD00
/* C0A0 8000B4A0 00000000 */  nop       
/* C0A4 8000B4A4 0050082B */  sltu      $at, $v0, $s0
/* C0A8 8000B4A8 1420FFFC */  bnez      $at, .L8000B49C
/* C0AC 8000B4AC 00000000 */  nop       
/* C0B0 8000B4B0 8FBF001C */  lw        $ra, 0x1c($sp)
.L8000B4B4:
/* C0B4 8000B4B4 8FB00018 */  lw        $s0, 0x18($sp)
/* C0B8 8000B4B8 27BD0028 */  addiu     $sp, $sp, 0x28
/* C0BC 8000B4BC 03E00008 */  jr        $ra
/* C0C0 8000B4C0 00000000 */  nop       

glabel func_8000B4C4
/* C0C4 8000B4C4 3C0E8007 */  lui       $t6, 0x8007
/* C0C8 8000B4C8 8DCE97E0 */  lw        $t6, -0x6820($t6)
/* C0CC 8000B4CC 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* C0D0 8000B4D0 AFBF0024 */  sw        $ra, 0x24($sp)
/* C0D4 8000B4D4 15C00071 */  bnez      $t6, .L8000B69C
/* C0D8 8000B4D8 AFB00020 */  sw        $s0, 0x20($sp)
/* C0DC 8000B4DC 3C04800A */  lui       $a0, 0x800a
/* C0E0 8000B4E0 248473B0 */  addiu     $a0, $a0, 0x73b0
/* C0E4 8000B4E4 0C016CA8 */  jal       func_8005B2A0
/* C0E8 8000B4E8 27A5002F */  addiu     $a1, $sp, 0x2f
/* C0EC 8000B4EC 93AF002F */  lbu       $t7, 0x2f($sp)
/* C0F0 8000B4F0 31F80008 */  andi      $t8, $t7, 8
/* C0F4 8000B4F4 13000067 */  beqz      $t8, .L8000B694
/* C0F8 8000B4F8 00000000 */  nop       
/* C0FC 8000B4FC 0C001747 */  jal       func_80005D1C
/* C100 8000B500 00000000 */  nop       
/* C104 8000B504 3C10800B */  lui       $s0, 0x800b
/* C108 8000B508 261082B0 */  addiu     $s0, $s0, -0x7d50
/* C10C 8000B50C 00001825 */  or        $v1, $zero, $zero
/* C110 8000B510 240200FE */  addiu     $v0, $zero, 0xfe
.L8000B514:
/* C114 8000B514 0203C821 */  addu      $t9, $s0, $v1
/* C118 8000B518 24630001 */  addiu     $v1, $v1, 1
/* C11C 8000B51C 28610020 */  slti      $at, $v1, 0x20
/* C120 8000B520 1420FFFC */  bnez      $at, .L8000B514
/* C124 8000B524 A3220000 */  sb        $v0, ($t9)
/* C128 8000B528 3C04800A */  lui       $a0, 0x800a
/* C12C 8000B52C 248473B0 */  addiu     $a0, $a0, 0x73b0
/* C130 8000B530 24050003 */  addiu     $a1, $zero, 3
/* C134 8000B534 24060400 */  addiu     $a2, $zero, 0x400
/* C138 8000B538 02003825 */  or        $a3, $s0, $zero
/* C13C 8000B53C 0C018E04 */  jal       func_80063810
/* C140 8000B540 AFA00010 */  sw        $zero, 0x10($sp)
/* C144 8000B544 24010002 */  addiu     $at, $zero, 2
/* C148 8000B548 1441000D */  bne       $v0, $at, .L8000B580
/* C14C 8000B54C 3C04800A */  lui       $a0, 0x800a
/* C150 8000B550 248473B0 */  addiu     $a0, $a0, 0x73b0
/* C154 8000B554 24050003 */  addiu     $a1, $zero, 3
/* C158 8000B558 24060400 */  addiu     $a2, $zero, 0x400
/* C15C 8000B55C 02003825 */  or        $a3, $s0, $zero
/* C160 8000B560 0C018E04 */  jal       func_80063810
/* C164 8000B564 AFA00010 */  sw        $zero, 0x10($sp)
/* C168 8000B568 10400005 */  beqz      $v0, .L8000B580
/* C16C 8000B56C 00000000 */  nop       
/* C170 8000B570 0C001752 */  jal       func_80005D48
/* C174 8000B574 00000000 */  nop       
/* C178 8000B578 10000049 */  b         .L8000B6A0
/* C17C 8000B57C 00001025 */  or        $v0, $zero, $zero
.L8000B580:
/* C180 8000B580 3C04800A */  lui       $a0, 0x800a
/* C184 8000B584 248473B0 */  addiu     $a0, $a0, 0x73b0
/* C188 8000B588 24050003 */  addiu     $a1, $zero, 3
/* C18C 8000B58C 24060400 */  addiu     $a2, $zero, 0x400
/* C190 8000B590 0C018E98 */  jal       func_80063A60
/* C194 8000B594 02003825 */  or        $a3, $s0, $zero
/* C198 8000B598 14400009 */  bnez      $v0, .L8000B5C0
/* C19C 8000B59C 3C08800B */  lui       $t0, 0x800b
/* C1A0 8000B5A0 910882CF */  lbu       $t0, -0x7d31($t0)
/* C1A4 8000B5A4 240100FE */  addiu     $at, $zero, 0xfe
/* C1A8 8000B5A8 55010006 */  bnel      $t0, $at, .L8000B5C4
/* C1AC 8000B5AC 00001825 */  or        $v1, $zero, $zero
/* C1B0 8000B5B0 0C001752 */  jal       func_80005D48
/* C1B4 8000B5B4 00000000 */  nop       
/* C1B8 8000B5B8 10000039 */  b         .L8000B6A0
/* C1BC 8000B5BC 00001025 */  or        $v0, $zero, $zero
.L8000B5C0:
/* C1C0 8000B5C0 00001825 */  or        $v1, $zero, $zero
.L8000B5C4:
/* C1C4 8000B5C4 24050020 */  addiu     $a1, $zero, 0x20
/* C1C8 8000B5C8 24040085 */  addiu     $a0, $zero, 0x85
.L8000B5CC:
/* C1CC 8000B5CC 02031021 */  addu      $v0, $s0, $v1
/* C1D0 8000B5D0 24630004 */  addiu     $v1, $v1, 4
/* C1D4 8000B5D4 A0440000 */  sb        $a0, ($v0)
/* C1D8 8000B5D8 A0440001 */  sb        $a0, 1($v0)
/* C1DC 8000B5DC A0440002 */  sb        $a0, 2($v0)
/* C1E0 8000B5E0 1465FFFA */  bne       $v1, $a1, .L8000B5CC
/* C1E4 8000B5E4 A0440003 */  sb        $a0, 3($v0)
/* C1E8 8000B5E8 3C04800A */  lui       $a0, 0x800a
/* C1EC 8000B5EC 248473B0 */  addiu     $a0, $a0, 0x73b0
/* C1F0 8000B5F0 24050003 */  addiu     $a1, $zero, 3
/* C1F4 8000B5F4 24060400 */  addiu     $a2, $zero, 0x400
/* C1F8 8000B5F8 02003825 */  or        $a3, $s0, $zero
/* C1FC 8000B5FC 0C018E04 */  jal       func_80063810
/* C200 8000B600 AFA00010 */  sw        $zero, 0x10($sp)
/* C204 8000B604 24010002 */  addiu     $at, $zero, 2
/* C208 8000B608 1441000D */  bne       $v0, $at, .L8000B640
/* C20C 8000B60C 3C04800A */  lui       $a0, 0x800a
/* C210 8000B610 248473B0 */  addiu     $a0, $a0, 0x73b0
/* C214 8000B614 24050003 */  addiu     $a1, $zero, 3
/* C218 8000B618 24060400 */  addiu     $a2, $zero, 0x400
/* C21C 8000B61C 02003825 */  or        $a3, $s0, $zero
/* C220 8000B620 0C018E04 */  jal       func_80063810
/* C224 8000B624 AFA00010 */  sw        $zero, 0x10($sp)
/* C228 8000B628 10400005 */  beqz      $v0, .L8000B640
/* C22C 8000B62C 00000000 */  nop       
/* C230 8000B630 0C001752 */  jal       func_80005D48
/* C234 8000B634 00000000 */  nop       
/* C238 8000B638 10000019 */  b         .L8000B6A0
/* C23C 8000B63C 00001025 */  or        $v0, $zero, $zero
.L8000B640:
/* C240 8000B640 3C04800A */  lui       $a0, 0x800a
/* C244 8000B644 248473B0 */  addiu     $a0, $a0, 0x73b0
/* C248 8000B648 24050003 */  addiu     $a1, $zero, 3
/* C24C 8000B64C 24060400 */  addiu     $a2, $zero, 0x400
/* C250 8000B650 0C018E98 */  jal       func_80063A60
/* C254 8000B654 02003825 */  or        $a3, $s0, $zero
/* C258 8000B658 1440000C */  bnez      $v0, .L8000B68C
/* C25C 8000B65C 3C09800B */  lui       $t1, 0x800b
/* C260 8000B660 912982CF */  lbu       $t1, -0x7d31($t1)
/* C264 8000B664 24010085 */  addiu     $at, $zero, 0x85
/* C268 8000B668 15210008 */  bne       $t1, $at, .L8000B68C
/* C26C 8000B66C 00000000 */  nop       
/* C270 8000B670 0C001752 */  jal       func_80005D48
/* C274 8000B674 00000000 */  nop       
/* C278 8000B678 240A0001 */  addiu     $t2, $zero, 1
/* C27C 8000B67C 3C018007 */  lui       $at, 0x8007
/* C280 8000B680 AC2A97E0 */  sw        $t2, -0x6820($at)
/* C284 8000B684 10000006 */  b         .L8000B6A0
/* C288 8000B688 24020001 */  addiu     $v0, $zero, 1
.L8000B68C:
/* C28C 8000B68C 0C001752 */  jal       func_80005D48
/* C290 8000B690 00000000 */  nop       
.L8000B694:
/* C294 8000B694 10000002 */  b         .L8000B6A0
/* C298 8000B698 00001025 */  or        $v0, $zero, $zero
.L8000B69C:
/* C29C 8000B69C 24020001 */  addiu     $v0, $zero, 1
.L8000B6A0:
/* C2A0 8000B6A0 8FBF0024 */  lw        $ra, 0x24($sp)
/* C2A4 8000B6A4 8FB00020 */  lw        $s0, 0x20($sp)
/* C2A8 8000B6A8 27BD0038 */  addiu     $sp, $sp, 0x38
/* C2AC 8000B6AC 03E00008 */  jr        $ra
/* C2B0 8000B6B0 00000000 */  nop       

glabel func_8000B6B4
/* C2B4 8000B6B4 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* C2B8 8000B6B8 AFBF0014 */  sw        $ra, 0x14($sp)
/* C2BC 8000B6BC 0C001747 */  jal       func_80005D1C
/* C2C0 8000B6C0 00000000 */  nop       
/* C2C4 8000B6C4 3C04800A */  lui       $a0, 0x800a
/* C2C8 8000B6C8 3C07800B */  lui       $a3, 0x800b
/* C2CC 8000B6CC 24E782B0 */  addiu     $a3, $a3, -0x7d50
/* C2D0 8000B6D0 248473B0 */  addiu     $a0, $a0, 0x73b0
/* C2D4 8000B6D4 24050003 */  addiu     $a1, $zero, 3
/* C2D8 8000B6D8 0C018E98 */  jal       func_80063A60
/* C2DC 8000B6DC 24060600 */  addiu     $a2, $zero, 0x600
/* C2E0 8000B6E0 0C001752 */  jal       func_80005D48
/* C2E4 8000B6E4 00000000 */  nop       
/* C2E8 8000B6E8 8FBF0014 */  lw        $ra, 0x14($sp)
/* C2EC 8000B6EC 3C02800B */  lui       $v0, 0x800b
/* C2F0 8000B6F0 904282CF */  lbu       $v0, -0x7d31($v0)
/* C2F4 8000B6F4 03E00008 */  jr        $ra
/* C2F8 8000B6F8 27BD0018 */  addiu     $sp, $sp, 0x18

glabel func_8000B6FC
/* C2FC 8000B6FC 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* C300 8000B700 AFB10020 */  sw        $s1, 0x20($sp)
/* C304 8000B704 3C11800B */  lui       $s1, 0x800b
/* C308 8000B708 263182B0 */  addiu     $s1, $s1, -0x7d50
/* C30C 8000B70C AFBF002C */  sw        $ra, 0x2c($sp)
/* C310 8000B710 AFB20024 */  sw        $s2, 0x24($sp)
/* C314 8000B714 AFB30028 */  sw        $s3, 0x28($sp)
/* C318 8000B718 AFB0001C */  sw        $s0, 0x1c($sp)
/* C31C 8000B71C AFA40030 */  sw        $a0, 0x30($sp)
/* C320 8000B720 0C001747 */  jal       func_80005D1C
/* C324 8000B724 02209025 */  or        $s2, $s1, $zero
/* C328 8000B728 3C13800A */  lui       $s3, 0x800a
/* C32C 8000B72C 267373B0 */  addiu     $s3, $s3, 0x73b0
/* C330 8000B730 02602025 */  or        $a0, $s3, $zero
/* C334 8000B734 24050003 */  addiu     $a1, $zero, 3
/* C338 8000B738 24060600 */  addiu     $a2, $zero, 0x600
/* C33C 8000B73C 0C018E98 */  jal       func_80063A60
/* C340 8000B740 02203825 */  or        $a3, $s1, $zero
/* C344 8000B744 3C0E800B */  lui       $t6, 0x800b
/* C348 8000B748 91CE82CF */  lbu       $t6, -0x7d31($t6)
/* C34C 8000B74C 24100008 */  addiu     $s0, $zero, 8
/* C350 8000B750 560E000C */  bnel      $s0, $t6, .L8000B784
/* C354 8000B754 93B80033 */  lbu       $t8, 0x33($sp)
.L8000B758:
/* C358 8000B758 0C002D0C */  jal       func_8000B430
/* C35C 8000B75C 24040014 */  addiu     $a0, $zero, 0x14
/* C360 8000B760 02602025 */  or        $a0, $s3, $zero
/* C364 8000B764 24050003 */  addiu     $a1, $zero, 3
/* C368 8000B768 24060600 */  addiu     $a2, $zero, 0x600
/* C36C 8000B76C 0C018E98 */  jal       func_80063A60
/* C370 8000B770 02203825 */  or        $a3, $s1, $zero
/* C374 8000B774 924F001F */  lbu       $t7, 0x1f($s2)
/* C378 8000B778 120FFFF7 */  beq       $s0, $t7, .L8000B758
/* C37C 8000B77C 00000000 */  nop       
/* C380 8000B780 93B80033 */  lbu       $t8, 0x33($sp)
.L8000B784:
/* C384 8000B784 3C01800B */  lui       $at, 0x800b
/* C388 8000B788 24190001 */  addiu     $t9, $zero, 1
/* C38C 8000B78C AFB90010 */  sw        $t9, 0x10($sp)
/* C390 8000B790 02602025 */  or        $a0, $s3, $zero
/* C394 8000B794 24050003 */  addiu     $a1, $zero, 3
/* C398 8000B798 24060600 */  addiu     $a2, $zero, 0x600
/* C39C 8000B79C 02203825 */  or        $a3, $s1, $zero
/* C3A0 8000B7A0 0C018E04 */  jal       func_80063810
/* C3A4 8000B7A4 A03882CF */  sb        $t8, -0x7d31($at)
/* C3A8 8000B7A8 0C001752 */  jal       func_80005D48
/* C3AC 8000B7AC 00000000 */  nop       
/* C3B0 8000B7B0 8FBF002C */  lw        $ra, 0x2c($sp)
/* C3B4 8000B7B4 8FB0001C */  lw        $s0, 0x1c($sp)
/* C3B8 8000B7B8 8FB10020 */  lw        $s1, 0x20($sp)
/* C3BC 8000B7BC 8FB20024 */  lw        $s2, 0x24($sp)
/* C3C0 8000B7C0 8FB30028 */  lw        $s3, 0x28($sp)
/* C3C4 8000B7C4 03E00008 */  jr        $ra
/* C3C8 8000B7C8 27BD0030 */  addiu     $sp, $sp, 0x30
/* C3CC 8000B7CC 00000000 */  nop       

glabel func_8000B7D0
/* C3D0 8000B7D0 40849000 */  mtc0      $a0, $18
/* C3D4 8000B7D4 40809800 */  mtc0      $zero, $19
/* C3D8 8000B7D8 03E00008 */  jr        $ra
/* C3DC 8000B7DC 00000000 */  nop       

glabel func_8000B7E0
/* C3E0 8000B7E0 0000000D */  break     
/* C3E4 8000B7E4 03E00008 */  jr        $ra
/* C3E8 8000B7E8 00000000 */  nop       
/* C3EC 8000B7EC 00000000 */  nop       
