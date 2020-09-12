.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80019F70
/* 1AB70 80019F70 14800002 */  bnez      $a0, .L80019F7C
/* 1AB74 80019F74 3C01800B */  lui       $at, 0x800b
/* 1AB78 80019F78 AC25C820 */  sw        $a1, -0x37e0($at)
.L80019F7C:
/* 1AB7C 80019F7C 03E00008 */  jr        $ra
/* 1AB80 80019F80 00001025 */  or        $v0, $zero, $zero

glabel func_80019F84
/* 1AB84 80019F84 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1AB88 80019F88 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1AB8C 80019F8C AFA40028 */  sw        $a0, 0x28($sp)
/* 1AB90 80019F90 AFA5002C */  sw        $a1, 0x2c($sp)
/* 1AB94 80019F94 0C0009D9 */  jal       func_80002764
/* 1AB98 80019F98 AFA60030 */  sw        $a2, 0x30($sp)
/* 1AB9C 80019F9C 00402025 */  or        $a0, $v0, $zero
/* 1ABA0 80019FA0 0C000B44 */  jal       func_80002D10
/* 1ABA4 80019FA4 00002825 */  or        $a1, $zero, $zero
/* 1ABA8 80019FA8 3C058007 */  lui       $a1, 0x8007
/* 1ABAC 80019FAC AFA20020 */  sw        $v0, 0x20($sp)
/* 1ABB0 80019FB0 24A5F350 */  addiu     $a1, $a1, -0xcb0
/* 1ABB4 80019FB4 0C0062DC */  jal       func_80018B70
/* 1ABB8 80019FB8 00402025 */  or        $a0, $v0, $zero
/* 1ABBC 80019FBC 8FA30028 */  lw        $v1, 0x28($sp)
/* 1ABC0 80019FC0 3C0E800B */  lui       $t6, 0x800b
/* 1ABC4 80019FC4 AC62000C */  sw        $v0, 0xc($v1)
/* 1ABC8 80019FC8 8DCEC820 */  lw        $t6, -0x37e0($t6)
/* 1ABCC 80019FCC AC6E0010 */  sw        $t6, 0x10($v1)
/* 1ABD0 80019FD0 0C000B58 */  jal       func_80002D60
/* 1ABD4 80019FD4 8FA40020 */  lw        $a0, 0x20($sp)
/* 1ABD8 80019FD8 8FAF0028 */  lw        $t7, 0x28($sp)
/* 1ABDC 80019FDC 87B90032 */  lh        $t9, 0x32($sp)
/* 1ABE0 80019FE0 00002825 */  or        $a1, $zero, $zero
/* 1ABE4 80019FE4 8DF8000C */  lw        $t8, 0xc($t7)
/* 1ABE8 80019FE8 00003025 */  or        $a2, $zero, $zero
/* 1ABEC 80019FEC 87A7002E */  lh        $a3, 0x2e($sp)
/* 1ABF0 80019FF0 8F04000C */  lw        $a0, 0xc($t8)
/* 1ABF4 80019FF4 AFB90010 */  sw        $t9, 0x10($sp)
/* 1ABF8 80019FF8 0C00476B */  jal       func_80011DAC
/* 1ABFC 80019FFC AFA40024 */  sw        $a0, 0x24($sp)
/* 1AC00 8001A000 8FA40024 */  lw        $a0, 0x24($sp)
/* 1AC04 8001A004 3C0541F0 */  lui       $a1, 0x41f0
/* 1AC08 8001A008 3C0642C8 */  lui       $a2, 0x42c8
/* 1AC0C 8001A00C 0C00479A */  jal       func_80011E68
/* 1AC10 8001A010 3C074648 */  lui       $a3, 0x4648
/* 1AC14 8001A014 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1AC18 8001A018 27BD0028 */  addiu     $sp, $sp, 0x28
/* 1AC1C 8001A01C 03E00008 */  jr        $ra
/* 1AC20 8001A020 00000000 */  nop       

glabel func_8001A024
/* 1AC24 8001A024 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 1AC28 8001A028 AFB60038 */  sw        $s6, 0x38($sp)
/* 1AC2C 8001A02C AFB50034 */  sw        $s5, 0x34($sp)
/* 1AC30 8001A030 AFB40030 */  sw        $s4, 0x30($sp)
/* 1AC34 8001A034 AFB00020 */  sw        $s0, 0x20($sp)
/* 1AC38 8001A038 00808025 */  or        $s0, $a0, $zero
/* 1AC3C 8001A03C 0005A400 */  sll       $s4, $a1, 0x10
/* 1AC40 8001A040 0006AC00 */  sll       $s5, $a2, 0x10
/* 1AC44 8001A044 0007B400 */  sll       $s6, $a3, 0x10
/* 1AC48 8001A048 AFBF003C */  sw        $ra, 0x3c($sp)
/* 1AC4C 8001A04C AFA50044 */  sw        $a1, 0x44($sp)
/* 1AC50 8001A050 0016B403 */  sra       $s6, $s6, 0x10
/* 1AC54 8001A054 0015AC03 */  sra       $s5, $s5, 0x10
/* 1AC58 8001A058 0014A403 */  sra       $s4, $s4, 0x10
/* 1AC5C 8001A05C AFB3002C */  sw        $s3, 0x2c($sp)
/* 1AC60 8001A060 AFB20028 */  sw        $s2, 0x28($sp)
/* 1AC64 8001A064 AFB10024 */  sw        $s1, 0x24($sp)
/* 1AC68 8001A068 AFA60048 */  sw        $a2, 0x48($sp)
/* 1AC6C 8001A06C AFA7004C */  sw        $a3, 0x4c($sp)
/* 1AC70 8001A070 00002825 */  or        $a1, $zero, $zero
/* 1AC74 8001A074 0C000971 */  jal       func_800025C4
/* 1AC78 8001A078 2404001C */  addiu     $a0, $zero, 0x1c
/* 1AC7C 8001A07C 10400049 */  beqz      $v0, .L8001A1A4
/* 1AC80 8001A080 00408825 */  or        $s1, $v0, $zero
/* 1AC84 8001A084 240EFFFF */  addiu     $t6, $zero, -1
/* 1AC88 8001A088 00142080 */  sll       $a0, $s4, 2
/* 1AC8C 8001A08C A0400000 */  sb        $zero, ($v0)
/* 1AC90 8001A090 A0400002 */  sb        $zero, 2($v0)
/* 1AC94 8001A094 A04E0003 */  sb        $t6, 3($v0)
/* 1AC98 8001A098 00942023 */  subu      $a0, $a0, $s4
/* 1AC9C 8001A09C A2340001 */  sb        $s4, 1($s1)
/* 1ACA0 8001A0A0 000420C0 */  sll       $a0, $a0, 3
/* 1ACA4 8001A0A4 0C000971 */  jal       func_800025C4
/* 1ACA8 8001A0A8 00002825 */  or        $a1, $zero, $zero
/* 1ACAC 8001A0AC 3C0F8007 */  lui       $t7, 0x8007
/* 1ACB0 8001A0B0 25EFFF00 */  addiu     $t7, $t7, -0x100
/* 1ACB4 8001A0B4 AE220008 */  sw        $v0, 8($s1)
/* 1ACB8 8001A0B8 AE300004 */  sw        $s0, 4($s1)
/* 1ACBC 8001A0BC AE200014 */  sw        $zero, 0x14($s1)
/* 1ACC0 8001A0C0 12000009 */  beqz      $s0, .L8001A0E8
/* 1ACC4 8001A0C4 AE2F0018 */  sw        $t7, 0x18($s1)
/* 1ACC8 8001A0C8 24180001 */  addiu     $t8, $zero, 1
/* 1ACCC 8001A0CC AFB80010 */  sw        $t8, 0x10($sp)
/* 1ACD0 8001A0D0 00002025 */  or        $a0, $zero, $zero
/* 1ACD4 8001A0D4 24050002 */  addiu     $a1, $zero, 2
/* 1ACD8 8001A0D8 02A03025 */  or        $a2, $s5, $zero
/* 1ACDC 8001A0DC 0C0018C5 */  jal       func_80006314
/* 1ACE0 8001A0E0 02C03825 */  or        $a3, $s6, $zero
/* 1ACE4 8001A0E4 AE220014 */  sw        $v0, 0x14($s1)
.L8001A0E8:
/* 1ACE8 8001A0E8 5A800029 */  blezl     $s4, .L8001A190
/* 1ACEC 8001A0EC 00152C00 */  sll       $a1, $s5, 0x10
/* 1ACF0 8001A0F0 02B60019 */  multu     $s5, $s6
/* 1ACF4 8001A0F4 00149880 */  sll       $s3, $s4, 2
/* 1ACF8 8001A0F8 02749823 */  subu      $s3, $s3, $s4
/* 1ACFC 8001A0FC 001398C0 */  sll       $s3, $s3, 3
/* 1AD00 8001A100 00008025 */  or        $s0, $zero, $zero
/* 1AD04 8001A104 00009012 */  mflo      $s2
/* 1AD08 8001A108 00129040 */  sll       $s2, $s2, 1
/* 1AD0C 8001A10C 00000000 */  nop       
/* 1AD10 8001A110 8E390008 */  lw        $t9, 8($s1)
.L8001A114:
/* 1AD14 8001A114 00002025 */  or        $a0, $zero, $zero
/* 1AD18 8001A118 24050002 */  addiu     $a1, $zero, 2
/* 1AD1C 8001A11C 03304021 */  addu      $t0, $t9, $s0
/* 1AD20 8001A120 A5000000 */  sh        $zero, ($t0)
/* 1AD24 8001A124 8E290008 */  lw        $t1, 8($s1)
/* 1AD28 8001A128 02A03025 */  or        $a2, $s5, $zero
/* 1AD2C 8001A12C 02C03825 */  or        $a3, $s6, $zero
/* 1AD30 8001A130 01305021 */  addu      $t2, $t1, $s0
/* 1AD34 8001A134 AD400014 */  sw        $zero, 0x14($t2)
/* 1AD38 8001A138 0C0018C5 */  jal       func_80006314
/* 1AD3C 8001A13C AFA00010 */  sw        $zero, 0x10($sp)
/* 1AD40 8001A140 8E2B0008 */  lw        $t3, 8($s1)
/* 1AD44 8001A144 02402825 */  or        $a1, $s2, $zero
/* 1AD48 8001A148 01706021 */  addu      $t4, $t3, $s0
/* 1AD4C 8001A14C AD82000C */  sw        $v0, 0xc($t4)
/* 1AD50 8001A150 8E2D0008 */  lw        $t5, 8($s1)
/* 1AD54 8001A154 01B07021 */  addu      $t6, $t5, $s0
/* 1AD58 8001A158 8DCF000C */  lw        $t7, 0xc($t6)
/* 1AD5C 8001A15C 0C015FF4 */  jal       func_80057FD0
/* 1AD60 8001A160 8DE40008 */  lw        $a0, 8($t7)
/* 1AD64 8001A164 8E250014 */  lw        $a1, 0x14($s1)
/* 1AD68 8001A168 50A00006 */  beql      $a1, $zero, .L8001A184
/* 1AD6C 8001A16C 26100018 */  addiu     $s0, $s0, 0x18
/* 1AD70 8001A170 8E380008 */  lw        $t8, 8($s1)
/* 1AD74 8001A174 0310C821 */  addu      $t9, $t8, $s0
/* 1AD78 8001A178 0C001905 */  jal       func_80006414
/* 1AD7C 8001A17C 8F24000C */  lw        $a0, 0xc($t9)
/* 1AD80 8001A180 26100018 */  addiu     $s0, $s0, 0x18
.L8001A184:
/* 1AD84 8001A184 5613FFE3 */  bnel      $s0, $s3, .L8001A114
/* 1AD88 8001A188 8E390008 */  lw        $t9, 8($s1)
/* 1AD8C 8001A18C 00152C00 */  sll       $a1, $s5, 0x10
.L8001A190:
/* 1AD90 8001A190 00163400 */  sll       $a2, $s6, 0x10
/* 1AD94 8001A194 00063403 */  sra       $a2, $a2, 0x10
/* 1AD98 8001A198 00052C03 */  sra       $a1, $a1, 0x10
/* 1AD9C 8001A19C 0C0067E1 */  jal       func_80019F84
/* 1ADA0 8001A1A0 02202025 */  or        $a0, $s1, $zero
.L8001A1A4:
/* 1ADA4 8001A1A4 8FBF003C */  lw        $ra, 0x3c($sp)
/* 1ADA8 8001A1A8 02201025 */  or        $v0, $s1, $zero
/* 1ADAC 8001A1AC 8FB10024 */  lw        $s1, 0x24($sp)
/* 1ADB0 8001A1B0 8FB00020 */  lw        $s0, 0x20($sp)
/* 1ADB4 8001A1B4 8FB20028 */  lw        $s2, 0x28($sp)
/* 1ADB8 8001A1B8 8FB3002C */  lw        $s3, 0x2c($sp)
/* 1ADBC 8001A1BC 8FB40030 */  lw        $s4, 0x30($sp)
/* 1ADC0 8001A1C0 8FB50034 */  lw        $s5, 0x34($sp)
/* 1ADC4 8001A1C4 8FB60038 */  lw        $s6, 0x38($sp)
/* 1ADC8 8001A1C8 03E00008 */  jr        $ra
/* 1ADCC 8001A1CC 27BD0040 */  addiu     $sp, $sp, 0x40

glabel func_8001A1D0
/* 1ADD0 8001A1D0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1ADD4 8001A1D4 AFBF0024 */  sw        $ra, 0x24($sp)
/* 1ADD8 8001A1D8 AFB30020 */  sw        $s3, 0x20($sp)
/* 1ADDC 8001A1DC AFB2001C */  sw        $s2, 0x1c($sp)
/* 1ADE0 8001A1E0 AFB10018 */  sw        $s1, 0x18($sp)
/* 1ADE4 8001A1E4 AFB00014 */  sw        $s0, 0x14($sp)
/* 1ADE8 8001A1E8 908E0001 */  lbu       $t6, 1($a0)
/* 1ADEC 8001A1EC 00809025 */  or        $s2, $a0, $zero
/* 1ADF0 8001A1F0 00C09825 */  or        $s3, $a2, $zero
/* 1ADF4 8001A1F4 AC850004 */  sw        $a1, 4($a0)
/* 1ADF8 8001A1F8 AC860014 */  sw        $a2, 0x14($a0)
/* 1ADFC 8001A1FC 19C0000D */  blez      $t6, .L8001A234
/* 1AE00 8001A200 00008025 */  or        $s0, $zero, $zero
/* 1AE04 8001A204 00008825 */  or        $s1, $zero, $zero
/* 1AE08 8001A208 8E4F0008 */  lw        $t7, 8($s2)
.L8001A20C:
/* 1AE0C 8001A20C 02602825 */  or        $a1, $s3, $zero
/* 1AE10 8001A210 01F1C021 */  addu      $t8, $t7, $s1
/* 1AE14 8001A214 0C001905 */  jal       func_80006414
/* 1AE18 8001A218 8F04000C */  lw        $a0, 0xc($t8)
/* 1AE1C 8001A21C 92590001 */  lbu       $t9, 1($s2)
/* 1AE20 8001A220 26100001 */  addiu     $s0, $s0, 1
/* 1AE24 8001A224 26310018 */  addiu     $s1, $s1, 0x18
/* 1AE28 8001A228 0219082A */  slt       $at, $s0, $t9
/* 1AE2C 8001A22C 5420FFF7 */  bnel      $at, $zero, .L8001A20C
/* 1AE30 8001A230 8E4F0008 */  lw        $t7, 8($s2)
.L8001A234:
/* 1AE34 8001A234 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1AE38 8001A238 8FB00014 */  lw        $s0, 0x14($sp)
/* 1AE3C 8001A23C 8FB10018 */  lw        $s1, 0x18($sp)
/* 1AE40 8001A240 8FB2001C */  lw        $s2, 0x1c($sp)
/* 1AE44 8001A244 8FB30020 */  lw        $s3, 0x20($sp)
/* 1AE48 8001A248 03E00008 */  jr        $ra
/* 1AE4C 8001A24C 27BD0028 */  addiu     $sp, $sp, 0x28

glabel func_8001A250
/* 1AE50 8001A250 03E00008 */  jr        $ra
/* 1AE54 8001A254 AC850018 */  sw        $a1, 0x18($a0)

glabel func_8001A258
/* 1AE58 8001A258 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1AE5C 8001A25C AFBF0024 */  sw        $ra, 0x24($sp)
/* 1AE60 8001A260 AFB20020 */  sw        $s2, 0x20($sp)
/* 1AE64 8001A264 AFB1001C */  sw        $s1, 0x1c($sp)
/* 1AE68 8001A268 AFB00018 */  sw        $s0, 0x18($sp)
/* 1AE6C 8001A26C 908E0000 */  lbu       $t6, ($a0)
/* 1AE70 8001A270 00808825 */  or        $s1, $a0, $zero
/* 1AE74 8001A274 31CF0001 */  andi      $t7, $t6, 1
/* 1AE78 8001A278 51E00006 */  beql      $t7, $zero, .L8001A294
/* 1AE7C 8001A27C 92390001 */  lbu       $t9, 1($s1)
/* 1AE80 8001A280 0C00672A */  jal       func_80019CA8
/* 1AE84 8001A284 8C840004 */  lw        $a0, 4($a0)
/* 1AE88 8001A288 0C006F3C */  jal       func_8001BCF0
/* 1AE8C 8001A28C 8E240010 */  lw        $a0, 0x10($s1)
/* 1AE90 8001A290 92390001 */  lbu       $t9, 1($s1)
.L8001A294:
/* 1AE94 8001A294 2418FFFF */  addiu     $t8, $zero, -1
/* 1AE98 8001A298 A2200000 */  sb        $zero, ($s1)
/* 1AE9C 8001A29C A2200002 */  sb        $zero, 2($s1)
/* 1AEA0 8001A2A0 A2380003 */  sb        $t8, 3($s1)
/* 1AEA4 8001A2A4 1B200019 */  blez      $t9, .L8001A30C
/* 1AEA8 8001A2A8 00009025 */  or        $s2, $zero, $zero
/* 1AEAC 8001A2AC 00008025 */  or        $s0, $zero, $zero
/* 1AEB0 8001A2B0 8E280008 */  lw        $t0, 8($s1)
.L8001A2B4:
/* 1AEB4 8001A2B4 01101021 */  addu      $v0, $t0, $s0
/* 1AEB8 8001A2B8 8C43000C */  lw        $v1, 0xc($v0)
/* 1AEBC 8001A2BC 94660004 */  lhu       $a2, 4($v1)
/* 1AEC0 8001A2C0 94670006 */  lhu       $a3, 6($v1)
/* 1AEC4 8001A2C4 A4400000 */  sh        $zero, ($v0)
/* 1AEC8 8001A2C8 8E290008 */  lw        $t1, 8($s1)
/* 1AECC 8001A2CC 00C70019 */  multu     $a2, $a3
/* 1AED0 8001A2D0 01305021 */  addu      $t2, $t1, $s0
/* 1AED4 8001A2D4 AD400014 */  sw        $zero, 0x14($t2)
/* 1AED8 8001A2D8 8E2B0008 */  lw        $t3, 8($s1)
/* 1AEDC 8001A2DC 01706021 */  addu      $t4, $t3, $s0
/* 1AEE0 8001A2E0 8D8D000C */  lw        $t5, 0xc($t4)
/* 1AEE4 8001A2E4 00002812 */  mflo      $a1
/* 1AEE8 8001A2E8 00052840 */  sll       $a1, $a1, 1
/* 1AEEC 8001A2EC 0C015FF4 */  jal       func_80057FD0
/* 1AEF0 8001A2F0 8DA40008 */  lw        $a0, 8($t5)
/* 1AEF4 8001A2F4 922E0001 */  lbu       $t6, 1($s1)
/* 1AEF8 8001A2F8 26520001 */  addiu     $s2, $s2, 1
/* 1AEFC 8001A2FC 26100018 */  addiu     $s0, $s0, 0x18
/* 1AF00 8001A300 024E082A */  slt       $at, $s2, $t6
/* 1AF04 8001A304 5420FFEB */  bnel      $at, $zero, .L8001A2B4
/* 1AF08 8001A308 8E280008 */  lw        $t0, 8($s1)
.L8001A30C:
/* 1AF0C 8001A30C 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1AF10 8001A310 8FB00018 */  lw        $s0, 0x18($sp)
/* 1AF14 8001A314 8FB1001C */  lw        $s1, 0x1c($sp)
/* 1AF18 8001A318 8FB20020 */  lw        $s2, 0x20($sp)
/* 1AF1C 8001A31C 03E00008 */  jr        $ra
/* 1AF20 8001A320 27BD0028 */  addiu     $sp, $sp, 0x28

glabel func_8001A324
/* 1AF24 8001A324 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 1AF28 8001A328 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1AF2C 8001A32C AFB10018 */  sw        $s1, 0x18($sp)
/* 1AF30 8001A330 AFB00014 */  sw        $s0, 0x14($sp)
/* 1AF34 8001A334 AFA50034 */  sw        $a1, 0x34($sp)
/* 1AF38 8001A338 AFA7003C */  sw        $a3, 0x3c($sp)
/* 1AF3C 8001A33C 908F0001 */  lbu       $t7, 1($a0)
/* 1AF40 8001A340 00808025 */  or        $s0, $a0, $zero
/* 1AF44 8001A344 00C08825 */  or        $s1, $a2, $zero
/* 1AF48 8001A348 00AF082A */  slt       $at, $a1, $t7
/* 1AF4C 8001A34C 10200042 */  beqz      $at, .L8001A458
/* 1AF50 8001A350 00051880 */  sll       $v1, $a1, 2
/* 1AF54 8001A354 8C980008 */  lw        $t8, 8($a0)
/* 1AF58 8001A358 00651823 */  subu      $v1, $v1, $a1
/* 1AF5C 8001A35C 000318C0 */  sll       $v1, $v1, 3
/* 1AF60 8001A360 0303C821 */  addu      $t9, $t8, $v1
/* 1AF64 8001A364 8F22000C */  lw        $v0, 0xc($t9)
/* 1AF68 8001A368 94460004 */  lhu       $a2, 4($v0)
/* 1AF6C 8001A36C 94470006 */  lhu       $a3, 6($v0)
/* 1AF70 8001A370 8C440008 */  lw        $a0, 8($v0)
/* 1AF74 8001A374 AFA30024 */  sw        $v1, 0x24($sp)
/* 1AF78 8001A378 00C70019 */  multu     $a2, $a3
/* 1AF7C 8001A37C 00002812 */  mflo      $a1
/* 1AF80 8001A380 00052840 */  sll       $a1, $a1, 1
/* 1AF84 8001A384 0C015FF4 */  jal       func_80057FD0
/* 1AF88 8001A388 00000000 */  nop       
/* 1AF8C 8001A38C 1A200004 */  blez      $s1, .L8001A3A0
/* 1AF90 8001A390 8FA30024 */  lw        $v1, 0x24($sp)
/* 1AF94 8001A394 2A210098 */  slti      $at, $s1, 0x98
/* 1AF98 8001A398 54200003 */  bnel      $at, $zero, .L8001A3A8
/* 1AF9C 8001A39C 8E090008 */  lw        $t1, 8($s0)
.L8001A3A0:
/* 1AFA0 8001A3A0 24110098 */  addiu     $s1, $zero, 0x98
/* 1AFA4 8001A3A4 8E090008 */  lw        $t1, 8($s0)
.L8001A3A8:
/* 1AFA8 8001A3A8 24080001 */  addiu     $t0, $zero, 1
/* 1AFAC 8001A3AC 001110C0 */  sll       $v0, $s1, 3
/* 1AFB0 8001A3B0 01235021 */  addu      $t2, $t1, $v1
/* 1AFB4 8001A3B4 A5480000 */  sh        $t0, ($t2)
/* 1AFB8 8001A3B8 8E0D0008 */  lw        $t5, 8($s0)
/* 1AFBC 8001A3BC 97AB003E */  lhu       $t3, 0x3e($sp)
/* 1AFC0 8001A3C0 00511023 */  subu      $v0, $v0, $s1
/* 1AFC4 8001A3C4 01A37821 */  addu      $t7, $t5, $v1
/* 1AFC8 8001A3C8 316CFFFE */  andi      $t4, $t3, 0xfffe
/* 1AFCC 8001A3CC A5EC0002 */  sh        $t4, 2($t7)
/* 1AFD0 8001A3D0 8E0E0008 */  lw        $t6, 8($s0)
/* 1AFD4 8001A3D4 00021080 */  sll       $v0, $v0, 2
/* 1AFD8 8001A3D8 3C0142C8 */  lui       $at, 0x42c8
/* 1AFDC 8001A3DC 01C3C021 */  addu      $t8, $t6, $v1
/* 1AFE0 8001A3E0 AF110014 */  sw        $s1, 0x14($t8)
/* 1AFE4 8001A3E4 8E190018 */  lw        $t9, 0x18($s0)
/* 1AFE8 8001A3E8 44814000 */  mtc1      $at, $f8
/* 1AFEC 8001A3EC 8E0A0008 */  lw        $t2, 8($s0)
/* 1AFF0 8001A3F0 03224821 */  addu      $t1, $t9, $v0
/* 1AFF4 8001A3F4 8528FFE6 */  lh        $t0, -0x1a($t1)
/* 1AFF8 8001A3F8 01435821 */  addu      $t3, $t2, $v1
/* 1AFFC 8001A3FC 44882000 */  mtc1      $t0, $f4
/* 1B000 8001A400 00000000 */  nop       
/* 1B004 8001A404 468021A0 */  cvt.s.w   $f6, $f4
/* 1B008 8001A408 46083283 */  div.s     $f10, $f6, $f8
/* 1B00C 8001A40C E56A0008 */  swc1      $f10, 8($t3)
/* 1B010 8001A410 8E0D0008 */  lw        $t5, 8($s0)
/* 1B014 8001A414 01A36021 */  addu      $t4, $t5, $v1
/* 1B018 8001A418 AD800010 */  sw        $zero, 0x10($t4)
/* 1B01C 8001A41C 8E0F0018 */  lw        $t7, 0x18($s0)
/* 1B020 8001A420 01E22021 */  addu      $a0, $t7, $v0
/* 1B024 8001A424 8C8EFFE8 */  lw        $t6, -0x18($a0)
/* 1B028 8001A428 55C00008 */  bnel      $t6, $zero, .L8001A44C
/* 1B02C 8001A42C 8E0B0008 */  lw        $t3, 8($s0)
/* 1B030 8001A430 8C98FFEC */  lw        $t8, -0x14($a0)
/* 1B034 8001A434 8E090008 */  lw        $t1, 8($s0)
/* 1B038 8001A438 2719F1C8 */  addiu     $t9, $t8, -0xe38
/* 1B03C 8001A43C 01234021 */  addu      $t0, $t1, $v1
/* 1B040 8001A440 10000005 */  b         .L8001A458
/* 1B044 8001A444 A5190004 */  sh        $t9, 4($t0)
/* 1B048 8001A448 8E0B0008 */  lw        $t3, 8($s0)
.L8001A44C:
/* 1B04C 8001A44C 240AF1C8 */  addiu     $t2, $zero, -0xe38
/* 1B050 8001A450 01636821 */  addu      $t5, $t3, $v1
/* 1B054 8001A454 A5AA0004 */  sh        $t2, 4($t5)
.L8001A458:
/* 1B058 8001A458 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1B05C 8001A45C 8FB00014 */  lw        $s0, 0x14($sp)
/* 1B060 8001A460 8FB10018 */  lw        $s1, 0x18($sp)
/* 1B064 8001A464 03E00008 */  jr        $ra
/* 1B068 8001A468 27BD0030 */  addiu     $sp, $sp, 0x30

glabel func_8001A46C
/* 1B06C 8001A46C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 1B070 8001A470 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1B074 8001A474 AFB10018 */  sw        $s1, 0x18($sp)
/* 1B078 8001A478 AFB00014 */  sw        $s0, 0x14($sp)
/* 1B07C 8001A47C AFA50034 */  sw        $a1, 0x34($sp)
/* 1B080 8001A480 AFA7003C */  sw        $a3, 0x3c($sp)
/* 1B084 8001A484 908F0001 */  lbu       $t7, 1($a0)
/* 1B088 8001A488 00808025 */  or        $s0, $a0, $zero
/* 1B08C 8001A48C 00C08825 */  or        $s1, $a2, $zero
/* 1B090 8001A490 00AF082A */  slt       $at, $a1, $t7
/* 1B094 8001A494 1020006A */  beqz      $at, .L8001A640
/* 1B098 8001A498 00051080 */  sll       $v0, $a1, 2
/* 1B09C 8001A49C 8C980008 */  lw        $t8, 8($a0)
/* 1B0A0 8001A4A0 00451023 */  subu      $v0, $v0, $a1
/* 1B0A4 8001A4A4 000210C0 */  sll       $v0, $v0, 3
/* 1B0A8 8001A4A8 0302C821 */  addu      $t9, $t8, $v0
/* 1B0AC 8001A4AC 8F23000C */  lw        $v1, 0xc($t9)
/* 1B0B0 8001A4B0 94660004 */  lhu       $a2, 4($v1)
/* 1B0B4 8001A4B4 94670006 */  lhu       $a3, 6($v1)
/* 1B0B8 8001A4B8 8C640008 */  lw        $a0, 8($v1)
/* 1B0BC 8001A4BC AFA20024 */  sw        $v0, 0x24($sp)
/* 1B0C0 8001A4C0 00C70019 */  multu     $a2, $a3
/* 1B0C4 8001A4C4 00002812 */  mflo      $a1
/* 1B0C8 8001A4C8 00052840 */  sll       $a1, $a1, 1
/* 1B0CC 8001A4CC 0C015FF4 */  jal       func_80057FD0
/* 1B0D0 8001A4D0 00000000 */  nop       
/* 1B0D4 8001A4D4 92230000 */  lbu       $v1, ($s1)
/* 1B0D8 8001A4D8 8FA20024 */  lw        $v0, 0x24($sp)
/* 1B0DC 8001A4DC 97A6003E */  lhu       $a2, 0x3e($sp)
/* 1B0E0 8001A4E0 18600039 */  blez      $v1, .L8001A5C8
/* 1B0E4 8001A4E4 28610098 */  slti      $at, $v1, 0x98
/* 1B0E8 8001A4E8 50200038 */  beql      $at, $zero, .L8001A5CC
/* 1B0EC 8001A4EC 8E190008 */  lw        $t9, 8($s0)
/* 1B0F0 8001A4F0 8E090008 */  lw        $t1, 8($s0)
/* 1B0F4 8001A4F4 24080003 */  addiu     $t0, $zero, 3
/* 1B0F8 8001A4F8 30CDFFFE */  andi      $t5, $a2, 0xfffe
/* 1B0FC 8001A4FC 01225021 */  addu      $t2, $t1, $v0
/* 1B100 8001A500 A5480000 */  sh        $t0, ($t2)
/* 1B104 8001A504 8E0B0008 */  lw        $t3, 8($s0)
/* 1B108 8001A508 3C0142C8 */  lui       $at, 0x42c8
/* 1B10C 8001A50C 44814000 */  mtc1      $at, $f8
/* 1B110 8001A510 01626021 */  addu      $t4, $t3, $v0
/* 1B114 8001A514 AD910014 */  sw        $s1, 0x14($t4)
/* 1B118 8001A518 8E0F0008 */  lw        $t7, 8($s0)
/* 1B11C 8001A51C 02202825 */  or        $a1, $s1, $zero
/* 1B120 8001A520 01E27021 */  addu      $t6, $t7, $v0
/* 1B124 8001A524 A5CD0002 */  sh        $t5, 2($t6)
/* 1B128 8001A528 92390000 */  lbu       $t9, ($s1)
/* 1B12C 8001A52C 8E180018 */  lw        $t8, 0x18($s0)
/* 1B130 8001A530 8E0B0008 */  lw        $t3, 8($s0)
/* 1B134 8001A534 001948C0 */  sll       $t1, $t9, 3
/* 1B138 8001A538 01394823 */  subu      $t1, $t1, $t9
/* 1B13C 8001A53C 00094880 */  sll       $t1, $t1, 2
/* 1B140 8001A540 03094021 */  addu      $t0, $t8, $t1
/* 1B144 8001A544 850AFFE6 */  lh        $t2, -0x1a($t0)
/* 1B148 8001A548 01626021 */  addu      $t4, $t3, $v0
/* 1B14C 8001A54C 448A2000 */  mtc1      $t2, $f4
/* 1B150 8001A550 00000000 */  nop       
/* 1B154 8001A554 468021A0 */  cvt.s.w   $f6, $f4
/* 1B158 8001A558 46083283 */  div.s     $f10, $f6, $f8
/* 1B15C 8001A55C E58A0008 */  swc1      $f10, 8($t4)
/* 1B160 8001A560 8E0F0008 */  lw        $t7, 8($s0)
/* 1B164 8001A564 AFA20024 */  sw        $v0, 0x24($sp)
/* 1B168 8001A568 01E22021 */  addu      $a0, $t7, $v0
/* 1B16C 8001A56C 0C006FBA */  jal       func_8001BEE8
/* 1B170 8001A570 24840010 */  addiu     $a0, $a0, 0x10
/* 1B174 8001A574 922E0000 */  lbu       $t6, ($s1)
/* 1B178 8001A578 8E0D0018 */  lw        $t5, 0x18($s0)
/* 1B17C 8001A57C 8FA20024 */  lw        $v0, 0x24($sp)
/* 1B180 8001A580 000EC8C0 */  sll       $t9, $t6, 3
/* 1B184 8001A584 032EC823 */  subu      $t9, $t9, $t6
/* 1B188 8001A588 0019C880 */  sll       $t9, $t9, 2
/* 1B18C 8001A58C 01B91821 */  addu      $v1, $t5, $t9
/* 1B190 8001A590 8C78FFE8 */  lw        $t8, -0x18($v1)
/* 1B194 8001A594 57000008 */  bnel      $t8, $zero, .L8001A5B8
/* 1B198 8001A598 8E0F0008 */  lw        $t7, 8($s0)
/* 1B19C 8001A59C 8C69FFEC */  lw        $t1, -0x14($v1)
/* 1B1A0 8001A5A0 8E0A0008 */  lw        $t2, 8($s0)
/* 1B1A4 8001A5A4 2528F1C8 */  addiu     $t0, $t1, -0xe38
/* 1B1A8 8001A5A8 01425821 */  addu      $t3, $t2, $v0
/* 1B1AC 8001A5AC 10000024 */  b         .L8001A640
/* 1B1B0 8001A5B0 A5680004 */  sh        $t0, 4($t3)
/* 1B1B4 8001A5B4 8E0F0008 */  lw        $t7, 8($s0)
.L8001A5B8:
/* 1B1B8 8001A5B8 240CF1C8 */  addiu     $t4, $zero, -0xe38
/* 1B1BC 8001A5BC 01E27021 */  addu      $t6, $t7, $v0
/* 1B1C0 8001A5C0 1000001F */  b         .L8001A640
/* 1B1C4 8001A5C4 A5CC0004 */  sh        $t4, 4($t6)
.L8001A5C8:
/* 1B1C8 8001A5C8 8E190008 */  lw        $t9, 8($s0)
.L8001A5CC:
/* 1B1CC 8001A5CC 240D0001 */  addiu     $t5, $zero, 1
/* 1B1D0 8001A5D0 30C9FFFE */  andi      $t1, $a2, 0xfffe
/* 1B1D4 8001A5D4 0322C021 */  addu      $t8, $t9, $v0
/* 1B1D8 8001A5D8 A70D0000 */  sh        $t5, ($t8)
/* 1B1DC 8001A5DC 8E0A0008 */  lw        $t2, 8($s0)
/* 1B1E0 8001A5E0 240B0098 */  addiu     $t3, $zero, 0x98
/* 1B1E4 8001A5E4 3C0142C8 */  lui       $at, 0x42c8
/* 1B1E8 8001A5E8 01424021 */  addu      $t0, $t2, $v0
/* 1B1EC 8001A5EC A5090002 */  sh        $t1, 2($t0)
/* 1B1F0 8001A5F0 8E0F0008 */  lw        $t7, 8($s0)
/* 1B1F4 8001A5F4 44812000 */  mtc1      $at, $f4
/* 1B1F8 8001A5F8 2408F1C8 */  addiu     $t0, $zero, -0xe38
/* 1B1FC 8001A5FC 01E26021 */  addu      $t4, $t7, $v0
/* 1B200 8001A600 AD8B0014 */  sw        $t3, 0x14($t4)
/* 1B204 8001A604 8E0E0018 */  lw        $t6, 0x18($s0)
/* 1B208 8001A608 8E0D0008 */  lw        $t5, 8($s0)
/* 1B20C 8001A60C 85D91086 */  lh        $t9, 0x1086($t6)
/* 1B210 8001A610 01A2C021 */  addu      $t8, $t5, $v0
/* 1B214 8001A614 44998000 */  mtc1      $t9, $f16
/* 1B218 8001A618 00000000 */  nop       
/* 1B21C 8001A61C 468084A0 */  cvt.s.w   $f18, $f16
/* 1B220 8001A620 46049183 */  div.s     $f6, $f18, $f4
/* 1B224 8001A624 E7060008 */  swc1      $f6, 8($t8)
/* 1B228 8001A628 8E0A0008 */  lw        $t2, 8($s0)
/* 1B22C 8001A62C 01424821 */  addu      $t1, $t2, $v0
/* 1B230 8001A630 AD200010 */  sw        $zero, 0x10($t1)
/* 1B234 8001A634 8E0F0008 */  lw        $t7, 8($s0)
/* 1B238 8001A638 01E25821 */  addu      $t3, $t7, $v0
/* 1B23C 8001A63C A5680004 */  sh        $t0, 4($t3)
.L8001A640:
/* 1B240 8001A640 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1B244 8001A644 8FB00014 */  lw        $s0, 0x14($sp)
/* 1B248 8001A648 8FB10018 */  lw        $s1, 0x18($sp)
/* 1B24C 8001A64C 03E00008 */  jr        $ra
/* 1B250 8001A650 27BD0030 */  addiu     $sp, $sp, 0x30

glabel func_8001A654
/* 1B254 8001A654 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1B258 8001A658 AFB1001C */  sw        $s1, 0x1c($sp)
/* 1B25C 8001A65C AFBF0024 */  sw        $ra, 0x24($sp)
/* 1B260 8001A660 AFB00018 */  sw        $s0, 0x18($sp)
/* 1B264 8001A664 AFA5002C */  sw        $a1, 0x2c($sp)
/* 1B268 8001A668 00058840 */  sll       $s1, $a1, 1
/* 1B26C 8001A66C 00808025 */  or        $s0, $a0, $zero
/* 1B270 8001A670 AFB20020 */  sw        $s2, 0x20($sp)
/* 1B274 8001A674 AFA60030 */  sw        $a2, 0x30($sp)
/* 1B278 8001A678 0C0178BC */  jal       func_8005E2F0
/* 1B27C 8001A67C 02202825 */  or        $a1, $s1, $zero
/* 1B280 8001A680 2A230002 */  slti      $v1, $s1, 2
/* 1B284 8001A684 38630001 */  xori      $v1, $v1, 1
/* 1B288 8001A688 1060000C */  beqz      $v1, .L8001A6BC
/* 1B28C 8001A68C 2631FFFE */  addiu     $s1, $s1, -2
/* 1B290 8001A690 27B20030 */  addiu     $s2, $sp, 0x30
.L8001A694:
/* 1B294 8001A694 8E450000 */  lw        $a1, ($s2)
/* 1B298 8001A698 96040000 */  lhu       $a0, ($s0)
/* 1B29C 8001A69C 0C00432A */  jal       func_80010CA8
/* 1B2A0 8001A6A0 AFA50004 */  sw        $a1, 4($sp)
/* 1B2A4 8001A6A4 2A230002 */  slti      $v1, $s1, 2
/* 1B2A8 8001A6A8 38630001 */  xori      $v1, $v1, 1
/* 1B2AC 8001A6AC 2631FFFE */  addiu     $s1, $s1, -2
/* 1B2B0 8001A6B0 A6020000 */  sh        $v0, ($s0)
/* 1B2B4 8001A6B4 1460FFF7 */  bnez      $v1, .L8001A694
/* 1B2B8 8001A6B8 26100002 */  addiu     $s0, $s0, 2
.L8001A6BC:
/* 1B2BC 8001A6BC 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1B2C0 8001A6C0 8FB00018 */  lw        $s0, 0x18($sp)
/* 1B2C4 8001A6C4 8FB1001C */  lw        $s1, 0x1c($sp)
/* 1B2C8 8001A6C8 8FB20020 */  lw        $s2, 0x20($sp)
/* 1B2CC 8001A6CC 03E00008 */  jr        $ra
/* 1B2D0 8001A6D0 27BD0028 */  addiu     $sp, $sp, 0x28

glabel func_8001A6D4
/* 1B2D4 8001A6D4 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1B2D8 8001A6D8 AFBF0014 */  sw        $ra, 0x14($sp)
/* 1B2DC 8001A6DC AFA5001C */  sw        $a1, 0x1c($sp)
/* 1B2E0 8001A6E0 948F0006 */  lhu       $t7, 6($a0)
/* 1B2E4 8001A6E4 948E0004 */  lhu       $t6, 4($a0)
/* 1B2E8 8001A6E8 8FA6001C */  lw        $a2, 0x1c($sp)
/* 1B2EC 8001A6EC 8C840008 */  lw        $a0, 8($a0)
/* 1B2F0 8001A6F0 01CF0019 */  multu     $t6, $t7
/* 1B2F4 8001A6F4 AFA60008 */  sw        $a2, 8($sp)
/* 1B2F8 8001A6F8 00002812 */  mflo      $a1
/* 1B2FC 8001A6FC 0C006995 */  jal       func_8001A654
/* 1B300 8001A700 00000000 */  nop       
/* 1B304 8001A704 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1B308 8001A708 27BD0018 */  addiu     $sp, $sp, 0x18
/* 1B30C 8001A70C 03E00008 */  jr        $ra
/* 1B310 8001A710 00000000 */  nop       

glabel func_8001A714
/* 1B314 8001A714 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 1B318 8001A718 AFBF0024 */  sw        $ra, 0x24($sp)
/* 1B31C 8001A71C AFB10020 */  sw        $s1, 0x20($sp)
/* 1B320 8001A720 AFB0001C */  sw        $s0, 0x1c($sp)
/* 1B324 8001A724 8C8E000C */  lw        $t6, 0xc($a0)
/* 1B328 8001A728 00051080 */  sll       $v0, $a1, 2
/* 1B32C 8001A72C 00808025 */  or        $s0, $a0, $zero
/* 1B330 8001A730 8DCF000C */  lw        $t7, 0xc($t6)
/* 1B334 8001A734 00451023 */  subu      $v0, $v0, $a1
/* 1B338 8001A738 000210C0 */  sll       $v0, $v0, 3
/* 1B33C 8001A73C AFAF0034 */  sw        $t7, 0x34($sp)
/* 1B340 8001A740 8C990004 */  lw        $t9, 4($a0)
/* 1B344 8001A744 8C980008 */  lw        $t8, 8($a0)
/* 1B348 8001A748 8F280024 */  lw        $t0, 0x24($t9)
/* 1B34C 8001A74C 03028821 */  addu      $s1, $t8, $v0
/* 1B350 8001A750 8D090008 */  lw        $t1, 8($t0)
/* 1B354 8001A754 8D2A0000 */  lw        $t2, ($t1)
/* 1B358 8001A758 AFAA002C */  sw        $t2, 0x2c($sp)
/* 1B35C 8001A75C 8C840010 */  lw        $a0, 0x10($a0)
/* 1B360 8001A760 0C006F3C */  jal       func_8001BCF0
/* 1B364 8001A764 AFA20028 */  sw        $v0, 0x28($sp)
/* 1B368 8001A768 0C005CF3 */  jal       func_800173CC
/* 1B36C 8001A76C 8E040010 */  lw        $a0, 0x10($s0)
/* 1B370 8001A770 862B0000 */  lh        $t3, ($s1)
/* 1B374 8001A774 316C0002 */  andi      $t4, $t3, 2
/* 1B378 8001A778 5180003B */  beql      $t4, $zero, .L8001A868
/* 1B37C 8001A77C 8E2A0014 */  lw        $t2, 0x14($s1)
/* 1B380 8001A780 8E2E0014 */  lw        $t6, 0x14($s1)
/* 1B384 8001A784 2402001C */  addiu     $v0, $zero, 0x1c
/* 1B388 8001A788 8E0D0018 */  lw        $t5, 0x18($s0)
/* 1B38C 8001A78C 91CF0000 */  lbu       $t7, ($t6)
/* 1B390 8001A790 00002825 */  or        $a1, $zero, $zero
/* 1B394 8001A794 8FA7002C */  lw        $a3, 0x2c($sp)
/* 1B398 8001A798 01E20019 */  multu     $t7, $v0
/* 1B39C 8001A79C 0000C012 */  mflo      $t8
/* 1B3A0 8001A7A0 01B8C821 */  addu      $t9, $t5, $t8
/* 1B3A4 8001A7A4 8F28FFF8 */  lw        $t0, -8($t9)
/* 1B3A8 8001A7A8 00084C02 */  srl       $t1, $t0, 0x10
/* 1B3AC 8001A7AC 00095400 */  sll       $t2, $t1, 0x10
/* 1B3B0 8001A7B0 000A5C03 */  sra       $t3, $t2, 0x10
/* 1B3B4 8001A7B4 000B6183 */  sra       $t4, $t3, 6
/* 1B3B8 8001A7B8 A7AC0038 */  sh        $t4, 0x38($sp)
/* 1B3BC 8001A7BC 8E2F0014 */  lw        $t7, 0x14($s1)
/* 1B3C0 8001A7C0 8E0E0018 */  lw        $t6, 0x18($s0)
/* 1B3C4 8001A7C4 91ED0000 */  lbu       $t5, ($t7)
/* 1B3C8 8001A7C8 01A20019 */  multu     $t5, $v0
/* 1B3CC 8001A7CC 0000C012 */  mflo      $t8
/* 1B3D0 8001A7D0 01D8C821 */  addu      $t9, $t6, $t8
/* 1B3D4 8001A7D4 8F28FFF8 */  lw        $t0, -8($t9)
/* 1B3D8 8001A7D8 00084982 */  srl       $t1, $t0, 6
/* 1B3DC 8001A7DC 00095400 */  sll       $t2, $t1, 0x10
/* 1B3E0 8001A7E0 000A5C03 */  sra       $t3, $t2, 0x10
/* 1B3E4 8001A7E4 000B6103 */  sra       $t4, $t3, 4
/* 1B3E8 8001A7E8 A7AC003A */  sh        $t4, 0x3a($sp)
/* 1B3EC 8001A7EC 8E2D0014 */  lw        $t5, 0x14($s1)
/* 1B3F0 8001A7F0 8E0F0018 */  lw        $t7, 0x18($s0)
/* 1B3F4 8001A7F4 91AE0000 */  lbu       $t6, ($t5)
/* 1B3F8 8001A7F8 01C20019 */  multu     $t6, $v0
/* 1B3FC 8001A7FC 0000C012 */  mflo      $t8
/* 1B400 8001A800 01F8C821 */  addu      $t9, $t7, $t8
/* 1B404 8001A804 8F29FFF8 */  lw        $t1, -8($t9)
/* 1B408 8001A808 00095580 */  sll       $t2, $t1, 0x16
/* 1B40C 8001A80C 000A5C03 */  sra       $t3, $t2, 0x10
/* 1B410 8001A810 000B6183 */  sra       $t4, $t3, 6
/* 1B414 8001A814 A7AC003C */  sh        $t4, 0x3c($sp)
/* 1B418 8001A818 8E2D0014 */  lw        $t5, 0x14($s1)
/* 1B41C 8001A81C 8E040010 */  lw        $a0, 0x10($s0)
/* 1B420 8001A820 0C006F0D */  jal       func_8001BC34
/* 1B424 8001A824 91A60000 */  lbu       $a2, ($t5)
/* 1B428 8001A828 8E040010 */  lw        $a0, 0x10($s0)
/* 1B42C 8001A82C 0C006F41 */  jal       func_8001BD04
/* 1B430 8001A830 24050001 */  addiu     $a1, $zero, 1
/* 1B434 8001A834 8E2F0014 */  lw        $t7, 0x14($s1)
/* 1B438 8001A838 8E0E0018 */  lw        $t6, 0x18($s0)
/* 1B43C 8001A83C 8E040010 */  lw        $a0, 0x10($s0)
/* 1B440 8001A840 91F80000 */  lbu       $t8, ($t7)
/* 1B444 8001A844 0018C8C0 */  sll       $t9, $t8, 3
/* 1B448 8001A848 0338C823 */  subu      $t9, $t9, $t8
/* 1B44C 8001A84C 0019C880 */  sll       $t9, $t9, 2
/* 1B450 8001A850 01D94021 */  addu      $t0, $t6, $t9
/* 1B454 8001A854 0C005D19 */  jal       func_80017464
/* 1B458 8001A858 9105FFE5 */  lbu       $a1, -0x1b($t0)
/* 1B45C 8001A85C 10000036 */  b         .L8001A938
/* 1B460 8001A860 8E040010 */  lw        $a0, 0x10($s0)
/* 1B464 8001A864 8E2A0014 */  lw        $t2, 0x14($s1)
.L8001A868:
/* 1B468 8001A868 8E090018 */  lw        $t1, 0x18($s0)
/* 1B46C 8001A86C 00002825 */  or        $a1, $zero, $zero
/* 1B470 8001A870 000A58C0 */  sll       $t3, $t2, 3
/* 1B474 8001A874 016A5823 */  subu      $t3, $t3, $t2
/* 1B478 8001A878 000B5880 */  sll       $t3, $t3, 2
/* 1B47C 8001A87C 012B6021 */  addu      $t4, $t1, $t3
/* 1B480 8001A880 8D8DFFF8 */  lw        $t5, -8($t4)
/* 1B484 8001A884 8FA7002C */  lw        $a3, 0x2c($sp)
/* 1B488 8001A888 000D7C02 */  srl       $t7, $t5, 0x10
/* 1B48C 8001A88C 000FC400 */  sll       $t8, $t7, 0x10
/* 1B490 8001A890 00187403 */  sra       $t6, $t8, 0x10
/* 1B494 8001A894 000EC983 */  sra       $t9, $t6, 6
/* 1B498 8001A898 A7B90038 */  sh        $t9, 0x38($sp)
/* 1B49C 8001A89C 8E2A0014 */  lw        $t2, 0x14($s1)
/* 1B4A0 8001A8A0 8E080018 */  lw        $t0, 0x18($s0)
/* 1B4A4 8001A8A4 000A48C0 */  sll       $t1, $t2, 3
/* 1B4A8 8001A8A8 012A4823 */  subu      $t1, $t1, $t2
/* 1B4AC 8001A8AC 00094880 */  sll       $t1, $t1, 2
/* 1B4B0 8001A8B0 01095821 */  addu      $t3, $t0, $t1
/* 1B4B4 8001A8B4 8D6CFFF8 */  lw        $t4, -8($t3)
/* 1B4B8 8001A8B8 000C6982 */  srl       $t5, $t4, 6
/* 1B4BC 8001A8BC 000D7C00 */  sll       $t7, $t5, 0x10
/* 1B4C0 8001A8C0 000FC403 */  sra       $t8, $t7, 0x10
/* 1B4C4 8001A8C4 00187103 */  sra       $t6, $t8, 4
/* 1B4C8 8001A8C8 A7AE003A */  sh        $t6, 0x3a($sp)
/* 1B4CC 8001A8CC 8E2A0014 */  lw        $t2, 0x14($s1)
/* 1B4D0 8001A8D0 8E190018 */  lw        $t9, 0x18($s0)
/* 1B4D4 8001A8D4 000A40C0 */  sll       $t0, $t2, 3
/* 1B4D8 8001A8D8 010A4023 */  subu      $t0, $t0, $t2
/* 1B4DC 8001A8DC 00084080 */  sll       $t0, $t0, 2
/* 1B4E0 8001A8E0 03284821 */  addu      $t1, $t9, $t0
/* 1B4E4 8001A8E4 8D2CFFF8 */  lw        $t4, -8($t1)
/* 1B4E8 8001A8E8 000C6D80 */  sll       $t5, $t4, 0x16
/* 1B4EC 8001A8EC 000D7C03 */  sra       $t7, $t5, 0x10
/* 1B4F0 8001A8F0 000FC183 */  sra       $t8, $t7, 6
/* 1B4F4 8001A8F4 A7B8003C */  sh        $t8, 0x3c($sp)
/* 1B4F8 8001A8F8 86260016 */  lh        $a2, 0x16($s1)
/* 1B4FC 8001A8FC 0C006F0D */  jal       func_8001BC34
/* 1B500 8001A900 8E040010 */  lw        $a0, 0x10($s0)
/* 1B504 8001A904 8E040010 */  lw        $a0, 0x10($s0)
/* 1B508 8001A908 0C006F41 */  jal       func_8001BD04
/* 1B50C 8001A90C 24050001 */  addiu     $a1, $zero, 1
/* 1B510 8001A910 8E2A0014 */  lw        $t2, 0x14($s1)
/* 1B514 8001A914 8E0E0018 */  lw        $t6, 0x18($s0)
/* 1B518 8001A918 8E040010 */  lw        $a0, 0x10($s0)
/* 1B51C 8001A91C 000AC8C0 */  sll       $t9, $t2, 3
/* 1B520 8001A920 032AC823 */  subu      $t9, $t9, $t2
/* 1B524 8001A924 0019C880 */  sll       $t9, $t9, 2
/* 1B528 8001A928 01D94021 */  addu      $t0, $t6, $t9
/* 1B52C 8001A92C 0C005D19 */  jal       func_80017464
/* 1B530 8001A930 9105FFE5 */  lbu       $a1, -0x1b($t0)
/* 1B534 8001A934 8E040010 */  lw        $a0, 0x10($s0)
.L8001A938:
/* 1B538 8001A938 27A50038 */  addiu     $a1, $sp, 0x38
/* 1B53C 8001A93C 0C003A64 */  jal       func_8000E990
/* 1B540 8001A940 24840024 */  addiu     $a0, $a0, 0x24
/* 1B544 8001A944 8E020010 */  lw        $v0, 0x10($s0)
/* 1B548 8001A948 90490002 */  lbu       $t1, 2($v0)
/* 1B54C 8001A94C 312BFFBF */  andi      $t3, $t1, 0xffbf
/* 1B550 8001A950 A04B0002 */  sb        $t3, 2($v0)
/* 1B554 8001A954 8E020010 */  lw        $v0, 0x10($s0)
/* 1B558 8001A958 904C0002 */  lbu       $t4, 2($v0)
/* 1B55C 8001A95C 358D0080 */  ori       $t5, $t4, 0x80
/* 1B560 8001A960 A04D0002 */  sb        $t5, 2($v0)
/* 1B564 8001A964 C6200008 */  lwc1      $f0, 8($s1)
/* 1B568 8001A968 8E040010 */  lw        $a0, 0x10($s0)
/* 1B56C 8001A96C 44050000 */  mfc1      $a1, $f0
/* 1B570 8001A970 44060000 */  mfc1      $a2, $f0
/* 1B574 8001A974 44070000 */  mfc1      $a3, $f0
/* 1B578 8001A978 0C003A23 */  jal       func_8000E88C
/* 1B57C 8001A97C 24840030 */  addiu     $a0, $a0, 0x30
/* 1B580 8001A980 8FA20034 */  lw        $v0, 0x34($sp)
/* 1B584 8001A984 862F0004 */  lh        $t7, 4($s1)
/* 1B588 8001A988 3C06449C */  lui       $a2, 0x449c
/* 1B58C 8001A98C 34C64000 */  ori       $a2, $a2, 0x4000
/* 1B590 8001A990 2407071C */  addiu     $a3, $zero, 0x71c
/* 1B594 8001A994 244400B4 */  addiu     $a0, $v0, 0xb4
/* 1B598 8001A998 244500A8 */  addiu     $a1, $v0, 0xa8
/* 1B59C 8001A99C 0C0040D5 */  jal       func_80010354
/* 1B5A0 8001A9A0 AFAF0010 */  sw        $t7, 0x10($sp)
/* 1B5A4 8001A9A4 8E180008 */  lw        $t8, 8($s0)
/* 1B5A8 8001A9A8 8FAA0028 */  lw        $t2, 0x28($sp)
/* 1B5AC 8001A9AC 3C11800A */  lui       $s1, 0x800a
/* 1B5B0 8001A9B0 26317420 */  addiu     $s1, $s1, 0x7420
/* 1B5B4 8001A9B4 030A7021 */  addu      $t6, $t8, $t2
/* 1B5B8 8001A9B8 8DC5000C */  lw        $a1, 0xc($t6)
/* 1B5BC 8001A9BC 0C001926 */  jal       func_80006498
/* 1B5C0 8001A9C0 02202025 */  or        $a0, $s1, $zero
/* 1B5C4 8001A9C4 0C0054D2 */  jal       func_80015348
/* 1B5C8 8001A9C8 00000000 */  nop       
/* 1B5CC 8001A9CC 0C0054CF */  jal       func_8001533C
/* 1B5D0 8001A9D0 24040003 */  addiu     $a0, $zero, 3
/* 1B5D4 8001A9D4 0C005425 */  jal       func_80015094
/* 1B5D8 8001A9D8 8E04000C */  lw        $a0, 0xc($s0)
/* 1B5DC 8001A9DC 8E190008 */  lw        $t9, 8($s0)
/* 1B5E0 8001A9E0 8FA80028 */  lw        $t0, 0x28($sp)
/* 1B5E4 8001A9E4 02202025 */  or        $a0, $s1, $zero
/* 1B5E8 8001A9E8 03284821 */  addu      $t1, $t9, $t0
/* 1B5EC 8001A9EC 0C001A67 */  jal       func_8000699C
/* 1B5F0 8001A9F0 95250002 */  lhu       $a1, 2($t1)
/* 1B5F4 8001A9F4 0C0054CF */  jal       func_8001533C
/* 1B5F8 8001A9F8 24040001 */  addiu     $a0, $zero, 1
/* 1B5FC 8001A9FC 0C005425 */  jal       func_80015094
/* 1B600 8001AA00 8E04000C */  lw        $a0, 0xc($s0)
/* 1B604 8001AA04 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1B608 8001AA08 8FB0001C */  lw        $s0, 0x1c($sp)
/* 1B60C 8001AA0C 8FB10020 */  lw        $s1, 0x20($sp)
/* 1B610 8001AA10 03E00008 */  jr        $ra
/* 1B614 8001AA14 27BD0040 */  addiu     $sp, $sp, 0x40

glabel func_8001AA18
/* 1B618 8001AA18 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 1B61C 8001AA1C 240EFFFF */  addiu     $t6, $zero, -1
/* 1B620 8001AA20 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1B624 8001AA24 AFB00018 */  sw        $s0, 0x18($sp)
/* 1B628 8001AA28 AFAE0024 */  sw        $t6, 0x24($sp)
/* 1B62C 8001AA2C 90880000 */  lbu       $t0, ($a0)
/* 1B630 8001AA30 00808025 */  or        $s0, $a0, $zero
/* 1B634 8001AA34 80870002 */  lb        $a3, 2($a0)
/* 1B638 8001AA38 310F0001 */  andi      $t7, $t0, 1
/* 1B63C 8001AA3C 11E00029 */  beqz      $t7, .L8001AAE4
/* 1B640 8001AA40 24010001 */  addiu     $at, $zero, 1
/* 1B644 8001AA44 54A10007 */  bnel      $a1, $at, .L8001AA64
/* 1B648 8001AA48 8E040004 */  lw        $a0, 4($s0)
/* 1B64C 8001AA4C 8C840004 */  lw        $a0, 4($a0)
/* 1B650 8001AA50 0C00672A */  jal       func_80019CA8
/* 1B654 8001AA54 AFA70020 */  sw        $a3, 0x20($sp)
/* 1B658 8001AA58 10000005 */  b         .L8001AA70
/* 1B65C 8001AA5C 8FA70020 */  lw        $a3, 0x20($sp)
/* 1B660 8001AA60 8E040004 */  lw        $a0, 4($s0)
.L8001AA64:
/* 1B664 8001AA64 0C006702 */  jal       func_80019C08
/* 1B668 8001AA68 AFA70020 */  sw        $a3, 0x20($sp)
/* 1B66C 8001AA6C 8FA70020 */  lw        $a3, 0x20($sp)
.L8001AA70:
/* 1B670 8001AA70 10400049 */  beqz      $v0, .L8001AB98
/* 1B674 8001AA74 24060018 */  addiu     $a2, $zero, 0x18
/* 1B678 8001AA78 00E60019 */  multu     $a3, $a2
/* 1B67C 8001AA7C 92180000 */  lbu       $t8, ($s0)
/* 1B680 8001AA80 8E090008 */  lw        $t1, 8($s0)
/* 1B684 8001AA84 02002025 */  or        $a0, $s0, $zero
/* 1B688 8001AA88 3319FFFE */  andi      $t9, $t8, 0xfffe
/* 1B68C 8001AA8C A2190000 */  sb        $t9, ($s0)
/* 1B690 8001AA90 00E02825 */  or        $a1, $a3, $zero
/* 1B694 8001AA94 00005012 */  mflo      $t2
/* 1B698 8001AA98 012A1021 */  addu      $v0, $t1, $t2
/* 1B69C 8001AA9C 844B0000 */  lh        $t3, ($v0)
/* 1B6A0 8001AAA0 316CFFFE */  andi      $t4, $t3, 0xfffe
/* 1B6A4 8001AAA4 A44C0000 */  sh        $t4, ($v0)
/* 1B6A8 8001AAA8 0C0069C5 */  jal       func_8001A714
/* 1B6AC 8001AAAC AFA70020 */  sw        $a3, 0x20($sp)
/* 1B6B0 8001AAB0 8FA70020 */  lw        $a3, 0x20($sp)
/* 1B6B4 8001AAB4 A2070003 */  sb        $a3, 3($s0)
/* 1B6B8 8001AAB8 AFA70024 */  sw        $a3, 0x24($sp)
/* 1B6BC 8001AABC 820D0002 */  lb        $t5, 2($s0)
/* 1B6C0 8001AAC0 92180001 */  lbu       $t8, 1($s0)
/* 1B6C4 8001AAC4 25AE0001 */  addiu     $t6, $t5, 1
/* 1B6C8 8001AAC8 A20E0002 */  sb        $t6, 2($s0)
/* 1B6CC 8001AACC 820F0002 */  lb        $t7, 2($s0)
/* 1B6D0 8001AAD0 01F8082A */  slt       $at, $t7, $t8
/* 1B6D4 8001AAD4 54200031 */  bnel      $at, $zero, .L8001AB9C
/* 1B6D8 8001AAD8 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1B6DC 8001AADC 1000002E */  b         .L8001AB98
/* 1B6E0 8001AAE0 A2000002 */  sb        $zero, 2($s0)
.L8001AAE4:
/* 1B6E4 8001AAE4 92040001 */  lbu       $a0, 1($s0)
/* 1B6E8 8001AAE8 00001825 */  or        $v1, $zero, $zero
/* 1B6EC 8001AAEC 24060018 */  addiu     $a2, $zero, 0x18
/* 1B6F0 8001AAF0 18800029 */  blez      $a0, .L8001AB98
/* 1B6F4 8001AAF4 350B0001 */  ori       $t3, $t0, 1
/* 1B6F8 8001AAF8 8E050008 */  lw        $a1, 8($s0)
.L8001AAFC:
/* 1B6FC 8001AAFC 00E60019 */  multu     $a3, $a2
/* 1B700 8001AB00 24630001 */  addiu     $v1, $v1, 1
/* 1B704 8001AB04 0000C812 */  mflo      $t9
/* 1B708 8001AB08 00B91021 */  addu      $v0, $a1, $t9
/* 1B70C 8001AB0C 84490000 */  lh        $t1, ($v0)
/* 1B710 8001AB10 312A0001 */  andi      $t2, $t1, 1
/* 1B714 8001AB14 51400019 */  beql      $t2, $zero, .L8001AB7C
/* 1B718 8001AB18 24E70001 */  addiu     $a3, $a3, 1
/* 1B71C 8001AB1C A20B0000 */  sb        $t3, ($s0)
/* 1B720 8001AB20 844C0000 */  lh        $t4, ($v0)
/* 1B724 8001AB24 318D0002 */  andi      $t5, $t4, 2
/* 1B728 8001AB28 51A0000B */  beql      $t5, $zero, .L8001AB58
/* 1B72C 8001AB2C 8C460010 */  lw        $a2, 0x10($v0)
/* 1B730 8001AB30 8C4E0014 */  lw        $t6, 0x14($v0)
/* 1B734 8001AB34 8C460010 */  lw        $a2, 0x10($v0)
/* 1B738 8001AB38 8E040004 */  lw        $a0, 4($s0)
/* 1B73C 8001AB3C 91C50000 */  lbu       $a1, ($t6)
/* 1B740 8001AB40 AFA70020 */  sw        $a3, 0x20($sp)
/* 1B744 8001AB44 0C006639 */  jal       func_800198E4
/* 1B748 8001AB48 AFA60008 */  sw        $a2, 8($sp)
/* 1B74C 8001AB4C 10000008 */  b         .L8001AB70
/* 1B750 8001AB50 8FA70020 */  lw        $a3, 0x20($sp)
/* 1B754 8001AB54 8C460010 */  lw        $a2, 0x10($v0)
.L8001AB58:
/* 1B758 8001AB58 8E040004 */  lw        $a0, 4($s0)
/* 1B75C 8001AB5C 94450016 */  lhu       $a1, 0x16($v0)
/* 1B760 8001AB60 AFA70020 */  sw        $a3, 0x20($sp)
/* 1B764 8001AB64 0C006639 */  jal       func_800198E4
/* 1B768 8001AB68 AFA60008 */  sw        $a2, 8($sp)
/* 1B76C 8001AB6C 8FA70020 */  lw        $a3, 0x20($sp)
.L8001AB70:
/* 1B770 8001AB70 10000009 */  b         .L8001AB98
/* 1B774 8001AB74 A2070002 */  sb        $a3, 2($s0)
/* 1B778 8001AB78 24E70001 */  addiu     $a3, $a3, 1
.L8001AB7C:
/* 1B77C 8001AB7C 00E4082A */  slt       $at, $a3, $a0
/* 1B780 8001AB80 54200003 */  bnel      $at, $zero, .L8001AB90
/* 1B784 8001AB84 0064082A */  slt       $at, $v1, $a0
/* 1B788 8001AB88 00003825 */  or        $a3, $zero, $zero
/* 1B78C 8001AB8C 0064082A */  slt       $at, $v1, $a0
.L8001AB90:
/* 1B790 8001AB90 1420FFDA */  bnez      $at, .L8001AAFC
/* 1B794 8001AB94 00000000 */  nop       
.L8001AB98:
/* 1B798 8001AB98 8FBF001C */  lw        $ra, 0x1c($sp)
.L8001AB9C:
/* 1B79C 8001AB9C 8FA20024 */  lw        $v0, 0x24($sp)
/* 1B7A0 8001ABA0 8FB00018 */  lw        $s0, 0x18($sp)
/* 1B7A4 8001ABA4 03E00008 */  jr        $ra
/* 1B7A8 8001ABA8 27BD0030 */  addiu     $sp, $sp, 0x30

glabel func_8001ABAC
/* 1B7AC 8001ABAC 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 1B7B0 8001ABB0 240EFFFF */  addiu     $t6, $zero, -1
/* 1B7B4 8001ABB4 AFBF0024 */  sw        $ra, 0x24($sp)
/* 1B7B8 8001ABB8 AFB30020 */  sw        $s3, 0x20($sp)
/* 1B7BC 8001ABBC AFB2001C */  sw        $s2, 0x1c($sp)
/* 1B7C0 8001ABC0 AFB10018 */  sw        $s1, 0x18($sp)
/* 1B7C4 8001ABC4 AFB00014 */  sw        $s0, 0x14($sp)
/* 1B7C8 8001ABC8 AFA50054 */  sw        $a1, 0x54($sp)
/* 1B7CC 8001ABCC AFAE0044 */  sw        $t6, 0x44($sp)
/* 1B7D0 8001ABD0 80820003 */  lb        $v0, 3($a0)
/* 1B7D4 8001ABD4 00809825 */  or        $s3, $a0, $zero
/* 1B7D8 8001ABD8 80910002 */  lb        $s1, 2($a0)
/* 1B7DC 8001ABDC 04400018 */  bltz      $v0, .L8001AC40
/* 1B7E0 8001ABE0 24050018 */  addiu     $a1, $zero, 0x18
/* 1B7E4 8001ABE4 00450019 */  multu     $v0, $a1
/* 1B7E8 8001ABE8 8C8F0008 */  lw        $t7, 8($a0)
/* 1B7EC 8001ABEC 0000C012 */  mflo      $t8
/* 1B7F0 8001ABF0 01F88021 */  addu      $s0, $t7, $t8
/* 1B7F4 8001ABF4 86190000 */  lh        $t9, ($s0)
/* 1B7F8 8001ABF8 33280004 */  andi      $t0, $t9, 4
/* 1B7FC 8001ABFC 51000011 */  beql      $t0, $zero, .L8001AC44
/* 1B800 8001AC00 92630001 */  lbu       $v1, 1($s3)
/* 1B804 8001AC04 0C000724 */  jal       func_80001C90
/* 1B808 8001AC08 00000000 */  nop       
/* 1B80C 8001AC0C 54400006 */  bnel      $v0, $zero, .L8001AC28
/* 1B810 8001AC10 8E050010 */  lw        $a1, 0x10($s0)
.L8001AC14:
/* 1B814 8001AC14 0C000724 */  jal       func_80001C90
/* 1B818 8001AC18 00000000 */  nop       
/* 1B81C 8001AC1C 1040FFFD */  beqz      $v0, .L8001AC14
/* 1B820 8001AC20 00000000 */  nop       
/* 1B824 8001AC24 8E050010 */  lw        $a1, 0x10($s0)
.L8001AC28:
/* 1B828 8001AC28 8E04000C */  lw        $a0, 0xc($s0)
/* 1B82C 8001AC2C 0C0069B5 */  jal       func_8001A6D4
/* 1B830 8001AC30 AFA50004 */  sw        $a1, 4($sp)
/* 1B834 8001AC34 860B0000 */  lh        $t3, ($s0)
/* 1B838 8001AC38 316CFFFB */  andi      $t4, $t3, 0xfffb
/* 1B83C 8001AC3C A60C0000 */  sh        $t4, ($s0)
.L8001AC40:
/* 1B840 8001AC40 92630001 */  lbu       $v1, 1($s3)
.L8001AC44:
/* 1B844 8001AC44 24050018 */  addiu     $a1, $zero, 0x18
/* 1B848 8001AC48 00001025 */  or        $v0, $zero, $zero
/* 1B84C 8001AC4C 58600049 */  blezl     $v1, .L8001AD74
/* 1B850 8001AC50 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1B854 8001AC54 8E640008 */  lw        $a0, 8($s3)
.L8001AC58:
/* 1B858 8001AC58 02250019 */  multu     $s1, $a1
/* 1B85C 8001AC5C 24420001 */  addiu     $v0, $v0, 1
/* 1B860 8001AC60 00009012 */  mflo      $s2
/* 1B864 8001AC64 00928021 */  addu      $s0, $a0, $s2
/* 1B868 8001AC68 860D0000 */  lh        $t5, ($s0)
/* 1B86C 8001AC6C 31AE0001 */  andi      $t6, $t5, 1
/* 1B870 8001AC70 51C00038 */  beql      $t6, $zero, .L8001AD54
/* 1B874 8001AC74 26310001 */  addiu     $s1, $s1, 1
/* 1B878 8001AC78 0C000724 */  jal       func_80001C90
/* 1B87C 8001AC7C 00000000 */  nop       
/* 1B880 8001AC80 54400006 */  bnel      $v0, $zero, .L8001AC9C
/* 1B884 8001AC84 AFA00048 */  sw        $zero, 0x48($sp)
.L8001AC88:
/* 1B888 8001AC88 0C000724 */  jal       func_80001C90
/* 1B88C 8001AC8C 00000000 */  nop       
/* 1B890 8001AC90 1040FFFD */  beqz      $v0, .L8001AC88
/* 1B894 8001AC94 00000000 */  nop       
/* 1B898 8001AC98 AFA00048 */  sw        $zero, 0x48($sp)
.L8001AC9C:
/* 1B89C 8001AC9C 860F0000 */  lh        $t7, ($s0)
/* 1B8A0 8001ACA0 8FA60048 */  lw        $a2, 0x48($sp)
/* 1B8A4 8001ACA4 31F80002 */  andi      $t8, $t7, 2
/* 1B8A8 8001ACA8 5300000F */  beql      $t8, $zero, .L8001ACE8
/* 1B8AC 8001ACAC 8E640004 */  lw        $a0, 4($s3)
/* 1B8B0 8001ACB0 8E190014 */  lw        $t9, 0x14($s0)
/* 1B8B4 8001ACB4 8E640004 */  lw        $a0, 4($s3)
/* 1B8B8 8001ACB8 00003025 */  or        $a2, $zero, $zero
/* 1B8BC 8001ACBC 93250000 */  lbu       $a1, ($t9)
/* 1B8C0 8001ACC0 0C006639 */  jal       func_800198E4
/* 1B8C4 8001ACC4 AFA00008 */  sw        $zero, 8($sp)
/* 1B8C8 8001ACC8 8E090010 */  lw        $t1, 0x10($s0)
/* 1B8CC 8001ACCC 11200009 */  beqz      $t1, .L8001ACF4
/* 1B8D0 8001ACD0 00000000 */  nop       
/* 1B8D4 8001ACD4 860A0000 */  lh        $t2, ($s0)
/* 1B8D8 8001ACD8 354B0004 */  ori       $t3, $t2, 4
/* 1B8DC 8001ACDC 10000005 */  b         .L8001ACF4
/* 1B8E0 8001ACE0 A60B0000 */  sh        $t3, ($s0)
/* 1B8E4 8001ACE4 8E640004 */  lw        $a0, 4($s3)
.L8001ACE8:
/* 1B8E8 8001ACE8 96050016 */  lhu       $a1, 0x16($s0)
/* 1B8EC 8001ACEC 0C006639 */  jal       func_800198E4
/* 1B8F0 8001ACF0 AFA60008 */  sw        $a2, 8($sp)
.L8001ACF4:
/* 1B8F4 8001ACF4 0C00672A */  jal       func_80019CA8
/* 1B8F8 8001ACF8 8E640004 */  lw        $a0, 4($s3)
/* 1B8FC 8001ACFC 8E6D0008 */  lw        $t5, 8($s3)
/* 1B900 8001AD00 02602025 */  or        $a0, $s3, $zero
/* 1B904 8001AD04 02202825 */  or        $a1, $s1, $zero
/* 1B908 8001AD08 01B21821 */  addu      $v1, $t5, $s2
/* 1B90C 8001AD0C 846E0000 */  lh        $t6, ($v1)
/* 1B910 8001AD10 31CFFFFE */  andi      $t7, $t6, 0xfffe
/* 1B914 8001AD14 0C0069C5 */  jal       func_8001A714
/* 1B918 8001AD18 A46F0000 */  sh        $t7, ($v1)
/* 1B91C 8001AD1C AFB10044 */  sw        $s1, 0x44($sp)
/* 1B920 8001AD20 A2710002 */  sb        $s1, 2($s3)
/* 1B924 8001AD24 82780002 */  lb        $t8, 2($s3)
/* 1B928 8001AD28 92690001 */  lbu       $t1, 1($s3)
/* 1B92C 8001AD2C A2710003 */  sb        $s1, 3($s3)
/* 1B930 8001AD30 27190001 */  addiu     $t9, $t8, 1
/* 1B934 8001AD34 A2790002 */  sb        $t9, 2($s3)
/* 1B938 8001AD38 82680002 */  lb        $t0, 2($s3)
/* 1B93C 8001AD3C 0109082A */  slt       $at, $t0, $t1
/* 1B940 8001AD40 5420000C */  bnel      $at, $zero, .L8001AD74
/* 1B944 8001AD44 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1B948 8001AD48 10000009 */  b         .L8001AD70
/* 1B94C 8001AD4C A2600002 */  sb        $zero, 2($s3)
/* 1B950 8001AD50 26310001 */  addiu     $s1, $s1, 1
.L8001AD54:
/* 1B954 8001AD54 0223082A */  slt       $at, $s1, $v1
/* 1B958 8001AD58 54200003 */  bnel      $at, $zero, .L8001AD68
/* 1B95C 8001AD5C 0043082A */  slt       $at, $v0, $v1
/* 1B960 8001AD60 00008825 */  or        $s1, $zero, $zero
/* 1B964 8001AD64 0043082A */  slt       $at, $v0, $v1
.L8001AD68:
/* 1B968 8001AD68 1420FFBB */  bnez      $at, .L8001AC58
/* 1B96C 8001AD6C 00000000 */  nop       
.L8001AD70:
/* 1B970 8001AD70 8FBF0024 */  lw        $ra, 0x24($sp)
.L8001AD74:
/* 1B974 8001AD74 8FA20044 */  lw        $v0, 0x44($sp)
/* 1B978 8001AD78 8FB00014 */  lw        $s0, 0x14($sp)
/* 1B97C 8001AD7C 8FB10018 */  lw        $s1, 0x18($sp)
/* 1B980 8001AD80 8FB2001C */  lw        $s2, 0x1c($sp)
/* 1B984 8001AD84 8FB30020 */  lw        $s3, 0x20($sp)
/* 1B988 8001AD88 03E00008 */  jr        $ra
/* 1B98C 8001AD8C 27BD0050 */  addiu     $sp, $sp, 0x50

glabel func_8001AD90
/* 1B990 8001AD90 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1B994 8001AD94 AFBF0024 */  sw        $ra, 0x24($sp)
/* 1B998 8001AD98 AFB30020 */  sw        $s3, 0x20($sp)
/* 1B99C 8001AD9C AFB2001C */  sw        $s2, 0x1c($sp)
/* 1B9A0 8001ADA0 AFB10018 */  sw        $s1, 0x18($sp)
/* 1B9A4 8001ADA4 AFB00014 */  sw        $s0, 0x14($sp)
/* 1B9A8 8001ADA8 AFA5002C */  sw        $a1, 0x2c($sp)
/* 1B9AC 8001ADAC 90830001 */  lbu       $v1, 1($a0)
/* 1B9B0 8001ADB0 00809825 */  or        $s3, $a0, $zero
/* 1B9B4 8001ADB4 2406FFFF */  addiu     $a2, $zero, -1
/* 1B9B8 8001ADB8 80900002 */  lb        $s0, 2($a0)
/* 1B9BC 8001ADBC 18600043 */  blez      $v1, .L8001AECC
/* 1B9C0 8001ADC0 00001025 */  or        $v0, $zero, $zero
/* 1B9C4 8001ADC4 8C840008 */  lw        $a0, 8($a0)
/* 1B9C8 8001ADC8 24050018 */  addiu     $a1, $zero, 0x18
.L8001ADCC:
/* 1B9CC 8001ADCC 02050019 */  multu     $s0, $a1
/* 1B9D0 8001ADD0 24420001 */  addiu     $v0, $v0, 1
/* 1B9D4 8001ADD4 00009012 */  mflo      $s2
/* 1B9D8 8001ADD8 00928821 */  addu      $s1, $a0, $s2
/* 1B9DC 8001ADDC 862E0000 */  lh        $t6, ($s1)
/* 1B9E0 8001ADE0 31CF0001 */  andi      $t7, $t6, 1
/* 1B9E4 8001ADE4 51E00032 */  beql      $t7, $zero, .L8001AEB0
/* 1B9E8 8001ADE8 26100001 */  addiu     $s0, $s0, 1
/* 1B9EC 8001ADEC 0C000724 */  jal       func_80001C90
/* 1B9F0 8001ADF0 00000000 */  nop       
/* 1B9F4 8001ADF4 54400006 */  bnel      $v0, $zero, .L8001AE10
/* 1B9F8 8001ADF8 86380000 */  lh        $t8, ($s1)
.L8001ADFC:
/* 1B9FC 8001ADFC 0C000724 */  jal       func_80001C90
/* 1BA00 8001AE00 00000000 */  nop       
/* 1BA04 8001AE04 1040FFFD */  beqz      $v0, .L8001ADFC
/* 1BA08 8001AE08 00000000 */  nop       
/* 1BA0C 8001AE0C 86380000 */  lh        $t8, ($s1)
.L8001AE10:
/* 1BA10 8001AE10 33190002 */  andi      $t9, $t8, 2
/* 1BA14 8001AE14 5320000A */  beql      $t9, $zero, .L8001AE40
/* 1BA18 8001AE18 8E260010 */  lw        $a2, 0x10($s1)
/* 1BA1C 8001AE1C 8E280014 */  lw        $t0, 0x14($s1)
/* 1BA20 8001AE20 8E260010 */  lw        $a2, 0x10($s1)
/* 1BA24 8001AE24 8E640004 */  lw        $a0, 4($s3)
/* 1BA28 8001AE28 91050000 */  lbu       $a1, ($t0)
/* 1BA2C 8001AE2C 0C006639 */  jal       func_800198E4
/* 1BA30 8001AE30 AFA60008 */  sw        $a2, 8($sp)
/* 1BA34 8001AE34 10000006 */  b         .L8001AE50
/* 1BA38 8001AE38 00000000 */  nop       
/* 1BA3C 8001AE3C 8E260010 */  lw        $a2, 0x10($s1)
.L8001AE40:
/* 1BA40 8001AE40 8E640004 */  lw        $a0, 4($s3)
/* 1BA44 8001AE44 96250016 */  lhu       $a1, 0x16($s1)
/* 1BA48 8001AE48 0C006639 */  jal       func_800198E4
/* 1BA4C 8001AE4C AFA60008 */  sw        $a2, 8($sp)
.L8001AE50:
/* 1BA50 8001AE50 0C00672A */  jal       func_80019CA8
/* 1BA54 8001AE54 8E640004 */  lw        $a0, 4($s3)
/* 1BA58 8001AE58 8E6D0008 */  lw        $t5, 8($s3)
/* 1BA5C 8001AE5C 02602025 */  or        $a0, $s3, $zero
/* 1BA60 8001AE60 02002825 */  or        $a1, $s0, $zero
/* 1BA64 8001AE64 01B21821 */  addu      $v1, $t5, $s2
/* 1BA68 8001AE68 846E0000 */  lh        $t6, ($v1)
/* 1BA6C 8001AE6C 31CFFFFE */  andi      $t7, $t6, 0xfffe
/* 1BA70 8001AE70 0C0069C5 */  jal       func_8001A714
/* 1BA74 8001AE74 A46F0000 */  sh        $t7, ($v1)
/* 1BA78 8001AE78 A2700002 */  sb        $s0, 2($s3)
/* 1BA7C 8001AE7C 82780002 */  lb        $t8, 2($s3)
/* 1BA80 8001AE80 92690001 */  lbu       $t1, 1($s3)
/* 1BA84 8001AE84 02003025 */  or        $a2, $s0, $zero
/* 1BA88 8001AE88 27190001 */  addiu     $t9, $t8, 1
/* 1BA8C 8001AE8C A2790002 */  sb        $t9, 2($s3)
/* 1BA90 8001AE90 82680002 */  lb        $t0, 2($s3)
/* 1BA94 8001AE94 A2700003 */  sb        $s0, 3($s3)
/* 1BA98 8001AE98 0109082A */  slt       $at, $t0, $t1
/* 1BA9C 8001AE9C 5420000C */  bnel      $at, $zero, .L8001AED0
/* 1BAA0 8001AEA0 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1BAA4 8001AEA4 10000009 */  b         .L8001AECC
/* 1BAA8 8001AEA8 A2600002 */  sb        $zero, 2($s3)
/* 1BAAC 8001AEAC 26100001 */  addiu     $s0, $s0, 1
.L8001AEB0:
/* 1BAB0 8001AEB0 0203082A */  slt       $at, $s0, $v1
/* 1BAB4 8001AEB4 54200003 */  bnel      $at, $zero, .L8001AEC4
/* 1BAB8 8001AEB8 0043082A */  slt       $at, $v0, $v1
/* 1BABC 8001AEBC 00008025 */  or        $s0, $zero, $zero
/* 1BAC0 8001AEC0 0043082A */  slt       $at, $v0, $v1
.L8001AEC4:
/* 1BAC4 8001AEC4 1420FFC1 */  bnez      $at, .L8001ADCC
/* 1BAC8 8001AEC8 00000000 */  nop       
.L8001AECC:
/* 1BACC 8001AECC 8FBF0024 */  lw        $ra, 0x24($sp)
.L8001AED0:
/* 1BAD0 8001AED0 8FB00014 */  lw        $s0, 0x14($sp)
/* 1BAD4 8001AED4 8FB10018 */  lw        $s1, 0x18($sp)
/* 1BAD8 8001AED8 8FB2001C */  lw        $s2, 0x1c($sp)
/* 1BADC 8001AEDC 8FB30020 */  lw        $s3, 0x20($sp)
/* 1BAE0 8001AEE0 27BD0028 */  addiu     $sp, $sp, 0x28
/* 1BAE4 8001AEE4 03E00008 */  jr        $ra
/* 1BAE8 8001AEE8 00C01025 */  or        $v0, $a2, $zero

glabel func_8001AEEC
/* 1BAEC 8001AEEC 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1BAF0 8001AEF0 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1BAF4 8001AEF4 AFB00018 */  sw        $s0, 0x18($sp)
/* 1BAF8 8001AEF8 808E0003 */  lb        $t6, 3($a0)
/* 1BAFC 8001AEFC 00808025 */  or        $s0, $a0, $zero
/* 1BB00 8001AF00 00A03025 */  or        $a2, $a1, $zero
/* 1BB04 8001AF04 14AE0017 */  bne       $a1, $t6, .L8001AF64
/* 1BB08 8001AF08 3C04800A */  lui       $a0, 0x800a
/* 1BB0C 8001AF0C 8E0F0008 */  lw        $t7, 8($s0)
/* 1BB10 8001AF10 00051080 */  sll       $v0, $a1, 2
/* 1BB14 8001AF14 00451023 */  subu      $v0, $v0, $a1
/* 1BB18 8001AF18 000210C0 */  sll       $v0, $v0, 3
/* 1BB1C 8001AF1C 01E2C021 */  addu      $t8, $t7, $v0
/* 1BB20 8001AF20 8F05000C */  lw        $a1, 0xc($t8)
/* 1BB24 8001AF24 AFA20020 */  sw        $v0, 0x20($sp)
/* 1BB28 8001AF28 0C001926 */  jal       func_80006498
/* 1BB2C 8001AF2C 24847420 */  addiu     $a0, $a0, 0x7420
/* 1BB30 8001AF30 8FA20020 */  lw        $v0, 0x20($sp)
/* 1BB34 8001AF34 8E190008 */  lw        $t9, 8($s0)
/* 1BB38 8001AF38 3C04800A */  lui       $a0, 0x800a
/* 1BB3C 8001AF3C 24847420 */  addiu     $a0, $a0, 0x7420
/* 1BB40 8001AF40 03224021 */  addu      $t0, $t9, $v0
/* 1BB44 8001AF44 0C001A67 */  jal       func_8000699C
/* 1BB48 8001AF48 95050002 */  lhu       $a1, 2($t0)
/* 1BB4C 8001AF4C 0C0054CF */  jal       func_8001533C
/* 1BB50 8001AF50 24040001 */  addiu     $a0, $zero, 1
/* 1BB54 8001AF54 0C005425 */  jal       func_80015094
/* 1BB58 8001AF58 8E04000C */  lw        $a0, 0xc($s0)
/* 1BB5C 8001AF5C 1000001A */  b         .L8001AFC8
/* 1BB60 8001AF60 8FBF001C */  lw        $ra, 0x1c($sp)
.L8001AF64:
/* 1BB64 8001AF64 92030001 */  lbu       $v1, 1($s0)
/* 1BB68 8001AF68 00067080 */  sll       $t6, $a2, 2
/* 1BB6C 8001AF6C 1860000C */  blez      $v1, .L8001AFA0
/* 1BB70 8001AF70 00035080 */  sll       $t2, $v1, 2
/* 1BB74 8001AF74 8E090008 */  lw        $t1, 8($s0)
/* 1BB78 8001AF78 01435023 */  subu      $t2, $t2, $v1
/* 1BB7C 8001AF7C 000A50C0 */  sll       $t2, $t2, 3
/* 1BB80 8001AF80 012A1021 */  addu      $v0, $t1, $t2
.L8001AF84:
/* 1BB84 8001AF84 844BFFE8 */  lh        $t3, -0x18($v0)
/* 1BB88 8001AF88 316C0001 */  andi      $t4, $t3, 1
/* 1BB8C 8001AF8C 15800004 */  bnez      $t4, .L8001AFA0
/* 1BB90 8001AF90 00000000 */  nop       
/* 1BB94 8001AF94 2463FFFF */  addiu     $v1, $v1, -1
/* 1BB98 8001AF98 1C60FFFA */  bgtz      $v1, .L8001AF84
/* 1BB9C 8001AF9C 2442FFE8 */  addiu     $v0, $v0, -0x18
.L8001AFA0:
/* 1BBA0 8001AFA0 54600009 */  bnel      $v1, $zero, .L8001AFC8
/* 1BBA4 8001AFA4 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1BBA8 8001AFA8 8E0D0008 */  lw        $t5, 8($s0)
/* 1BBAC 8001AFAC 01C67023 */  subu      $t6, $t6, $a2
/* 1BBB0 8001AFB0 000E70C0 */  sll       $t6, $t6, 3
/* 1BBB4 8001AFB4 01AE1021 */  addu      $v0, $t5, $t6
/* 1BBB8 8001AFB8 844F0000 */  lh        $t7, ($v0)
/* 1BBBC 8001AFBC 35F80001 */  ori       $t8, $t7, 1
/* 1BBC0 8001AFC0 A4580000 */  sh        $t8, ($v0)
/* 1BBC4 8001AFC4 8FBF001C */  lw        $ra, 0x1c($sp)
.L8001AFC8:
/* 1BBC8 8001AFC8 8FB00018 */  lw        $s0, 0x18($sp)
/* 1BBCC 8001AFCC 27BD0028 */  addiu     $sp, $sp, 0x28
/* 1BBD0 8001AFD0 03E00008 */  jr        $ra
/* 1BBD4 8001AFD4 00000000 */  nop       

glabel func_8001AFD8
/* 1BBD8 8001AFD8 908E0001 */  lbu       $t6, 1($a0)
/* 1BBDC 8001AFDC 00001825 */  or        $v1, $zero, $zero
/* 1BBE0 8001AFE0 0005C080 */  sll       $t8, $a1, 2
/* 1BBE4 8001AFE4 00AE082A */  slt       $at, $a1, $t6
/* 1BBE8 8001AFE8 10200007 */  beqz      $at, .L8001B008
/* 1BBEC 8001AFEC 00000000 */  nop       
/* 1BBF0 8001AFF0 8C8F0008 */  lw        $t7, 8($a0)
/* 1BBF4 8001AFF4 0305C023 */  subu      $t8, $t8, $a1
/* 1BBF8 8001AFF8 0018C0C0 */  sll       $t8, $t8, 3
/* 1BBFC 8001AFFC 01F8C821 */  addu      $t9, $t7, $t8
/* 1BC00 8001B000 8F28000C */  lw        $t0, 0xc($t9)
/* 1BC04 8001B004 8D030008 */  lw        $v1, 8($t0)
.L8001B008:
/* 1BC08 8001B008 03E00008 */  jr        $ra
/* 1BC0C 8001B00C 00601025 */  or        $v0, $v1, $zero

glabel func_8001B010
/* 1BC10 8001B010 90830001 */  lbu       $v1, 1($a0)
/* 1BC14 8001B014 00001025 */  or        $v0, $zero, $zero
/* 1BC18 8001B018 5860000D */  blezl     $v1, .L8001B050
/* 1BC1C 8001B01C 24020001 */  addiu     $v0, $zero, 1
/* 1BC20 8001B020 8C850008 */  lw        $a1, 8($a0)
.L8001B024:
/* 1BC24 8001B024 84AE0000 */  lh        $t6, ($a1)
/* 1BC28 8001B028 24420001 */  addiu     $v0, $v0, 1
/* 1BC2C 8001B02C 0043082A */  slt       $at, $v0, $v1
/* 1BC30 8001B030 31CF0005 */  andi      $t7, $t6, 5
/* 1BC34 8001B034 11E00003 */  beqz      $t7, .L8001B044
/* 1BC38 8001B038 00000000 */  nop       
/* 1BC3C 8001B03C 03E00008 */  jr        $ra
/* 1BC40 8001B040 00001025 */  or        $v0, $zero, $zero
.L8001B044:
/* 1BC44 8001B044 1420FFF7 */  bnez      $at, .L8001B024
/* 1BC48 8001B048 24A50018 */  addiu     $a1, $a1, 0x18
/* 1BC4C 8001B04C 24020001 */  addiu     $v0, $zero, 1
.L8001B050:
/* 1BC50 8001B050 03E00008 */  jr        $ra
/* 1BC54 8001B054 00000000 */  nop       

glabel func_8001B058
/* 1BC58 8001B058 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1BC5C 8001B05C AFBF0014 */  sw        $ra, 0x14($sp)
/* 1BC60 8001B060 3C040082 */  lui       $a0, 0x82
/* 1BC64 8001B064 00002825 */  or        $a1, $zero, $zero
/* 1BC68 8001B068 24060001 */  addiu     $a2, $zero, 1
/* 1BC6C 8001B06C 0C00113D */  jal       func_800044F4
/* 1BC70 8001B070 24070001 */  addiu     $a3, $zero, 1
/* 1BC74 8001B074 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1BC78 8001B078 3C01800B */  lui       $at, 0x800b
/* 1BC7C 8001B07C AC22C824 */  sw        $v0, -0x37dc($at)
/* 1BC80 8001B080 03E00008 */  jr        $ra
/* 1BC84 8001B084 27BD0018 */  addiu     $sp, $sp, 0x18

glabel func_8001B088
/* 1BC88 8001B088 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1BC8C 8001B08C AFBF0014 */  sw        $ra, 0x14($sp)
/* 1BC90 8001B090 18A0000E */  blez      $a1, .L8001B0CC
/* 1BC94 8001B094 AFA5001C */  sw        $a1, 0x1c($sp)
/* 1BC98 8001B098 28A10099 */  slti      $at, $a1, 0x99
/* 1BC9C 8001B09C 1020000B */  beqz      $at, .L8001B0CC
/* 1BCA0 8001B0A0 3C02800B */  lui       $v0, 0x800b
/* 1BCA4 8001B0A4 8C42C824 */  lw        $v0, -0x37dc($v0)
/* 1BCA8 8001B0A8 00057900 */  sll       $t7, $a1, 4
/* 1BCAC 8001B0AC 00003825 */  or        $a3, $zero, $zero
/* 1BCB0 8001B0B0 004F1821 */  addu      $v1, $v0, $t7
/* 1BCB4 8001B0B4 8C780000 */  lw        $t8, ($v1)
/* 1BCB8 8001B0B8 8C590004 */  lw        $t9, 4($v0)
/* 1BCBC 8001B0BC 8C680004 */  lw        $t0, 4($v1)
/* 1BCC0 8001B0C0 03192821 */  addu      $a1, $t8, $t9
/* 1BCC4 8001B0C4 0C000ECC */  jal       func_80003B30
/* 1BCC8 8001B0C8 01053021 */  addu      $a2, $t0, $a1
.L8001B0CC:
/* 1BCCC 8001B0CC 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1BCD0 8001B0D0 27BD0018 */  addiu     $sp, $sp, 0x18
/* 1BCD4 8001B0D4 03E00008 */  jr        $ra
/* 1BCD8 8001B0D8 00000000 */  nop       

glabel func_8001B0DC
/* 1BCDC 8001B0DC 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1BCE0 8001B0E0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 1BCE4 8001B0E4 14C00005 */  bnez      $a2, .L8001B0FC
/* 1BCE8 8001B0E8 AFA40020 */  sw        $a0, 0x20($sp)
/* 1BCEC 8001B0EC 0C006C22 */  jal       func_8001B088
/* 1BCF0 8001B0F0 00000000 */  nop       
/* 1BCF4 8001B0F4 1000000F */  b         .L8001B134
/* 1BCF8 8001B0F8 8FBF0014 */  lw        $ra, 0x14($sp)
.L8001B0FC:
/* 1BCFC 8001B0FC 27A4001C */  addiu     $a0, $sp, 0x1c
/* 1BD00 8001B100 00C02825 */  or        $a1, $a2, $zero
/* 1BD04 8001B104 0C006FBA */  jal       func_8001BEE8
/* 1BD08 8001B108 AFA60028 */  sw        $a2, 0x28($sp)
/* 1BD0C 8001B10C 8FA60028 */  lw        $a2, 0x28($sp)
/* 1BD10 8001B110 8FA40020 */  lw        $a0, 0x20($sp)
/* 1BD14 8001B114 0C006C22 */  jal       func_8001B088
/* 1BD18 8001B118 90C50000 */  lbu       $a1, ($a2)
/* 1BD1C 8001B11C 8FA6001C */  lw        $a2, 0x1c($sp)
/* 1BD20 8001B120 8FA40020 */  lw        $a0, 0x20($sp)
/* 1BD24 8001B124 24050640 */  addiu     $a1, $zero, 0x640
/* 1BD28 8001B128 0C006995 */  jal       func_8001A654
/* 1BD2C 8001B12C AFA60008 */  sw        $a2, 8($sp)
/* 1BD30 8001B130 8FBF0014 */  lw        $ra, 0x14($sp)
.L8001B134:
/* 1BD34 8001B134 27BD0020 */  addiu     $sp, $sp, 0x20
/* 1BD38 8001B138 03E00008 */  jr        $ra
/* 1BD3C 8001B13C 00000000 */  nop       

glabel func_8001B140
/* 1BD40 8001B140 14800002 */  bnez      $a0, .L8001B14C
/* 1BD44 8001B144 3C01800B */  lui       $at, 0x800b
/* 1BD48 8001B148 AC25C830 */  sw        $a1, -0x37d0($at)
.L8001B14C:
/* 1BD4C 8001B14C 03E00008 */  jr        $ra
/* 1BD50 8001B150 00001025 */  or        $v0, $zero, $zero

glabel func_8001B154
/* 1BD54 8001B154 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1BD58 8001B158 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1BD5C 8001B15C AFA40028 */  sw        $a0, 0x28($sp)
/* 1BD60 8001B160 AFA5002C */  sw        $a1, 0x2c($sp)
/* 1BD64 8001B164 AFA60030 */  sw        $a2, 0x30($sp)
/* 1BD68 8001B168 0C0009D9 */  jal       func_80002764
/* 1BD6C 8001B16C AFA70034 */  sw        $a3, 0x34($sp)
/* 1BD70 8001B170 00402025 */  or        $a0, $v0, $zero
/* 1BD74 8001B174 0C000B44 */  jal       func_80002D10
/* 1BD78 8001B178 00002825 */  or        $a1, $zero, $zero
/* 1BD7C 8001B17C 3C058007 */  lui       $a1, 0x8007
/* 1BD80 8001B180 AFA20024 */  sw        $v0, 0x24($sp)
/* 1BD84 8001B184 24A5F3E0 */  addiu     $a1, $a1, -0xc20
/* 1BD88 8001B188 0C0062DC */  jal       func_80018B70
/* 1BD8C 8001B18C 00402025 */  or        $a0, $v0, $zero
/* 1BD90 8001B190 8FA30028 */  lw        $v1, 0x28($sp)
/* 1BD94 8001B194 3C0E800B */  lui       $t6, 0x800b
/* 1BD98 8001B198 AC620020 */  sw        $v0, 0x20($v1)
/* 1BD9C 8001B19C 8DCEC830 */  lw        $t6, -0x37d0($t6)
/* 1BDA0 8001B1A0 AC6E0024 */  sw        $t6, 0x24($v1)
/* 1BDA4 8001B1A4 0C000B58 */  jal       func_80002D60
/* 1BDA8 8001B1A8 8FA40024 */  lw        $a0, 0x24($sp)
/* 1BDAC 8001B1AC 8FAF0028 */  lw        $t7, 0x28($sp)
/* 1BDB0 8001B1B0 87B9003A */  lh        $t9, 0x3a($sp)
/* 1BDB4 8001B1B4 87A5002E */  lh        $a1, 0x2e($sp)
/* 1BDB8 8001B1B8 8DF80020 */  lw        $t8, 0x20($t7)
/* 1BDBC 8001B1BC 87A60032 */  lh        $a2, 0x32($sp)
/* 1BDC0 8001B1C0 87A70036 */  lh        $a3, 0x36($sp)
/* 1BDC4 8001B1C4 8F04000C */  lw        $a0, 0xc($t8)
/* 1BDC8 8001B1C8 0C00476B */  jal       func_80011DAC
/* 1BDCC 8001B1CC AFB90010 */  sw        $t9, 0x10($sp)
/* 1BDD0 8001B1D0 8FA80028 */  lw        $t0, 0x28($sp)
/* 1BDD4 8001B1D4 3C0541F0 */  lui       $a1, 0x41f0
/* 1BDD8 8001B1D8 3C0642C8 */  lui       $a2, 0x42c8
/* 1BDDC 8001B1DC 8D090020 */  lw        $t1, 0x20($t0)
/* 1BDE0 8001B1E0 3C074648 */  lui       $a3, 0x4648
/* 1BDE4 8001B1E4 0C00479A */  jal       func_80011E68
/* 1BDE8 8001B1E8 8D24000C */  lw        $a0, 0xc($t1)
/* 1BDEC 8001B1EC 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1BDF0 8001B1F0 27BD0028 */  addiu     $sp, $sp, 0x28
/* 1BDF4 8001B1F4 03E00008 */  jr        $ra
/* 1BDF8 8001B1F8 00000000 */  nop       

glabel func_8001B1FC
/* 1BDFC 8001B1FC 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 1BE00 8001B200 AFBF0024 */  sw        $ra, 0x24($sp)
/* 1BE04 8001B204 AFA40028 */  sw        $a0, 0x28($sp)
/* 1BE08 8001B208 AFA5002C */  sw        $a1, 0x2c($sp)
/* 1BE0C 8001B20C AFB00020 */  sw        $s0, 0x20($sp)
/* 1BE10 8001B210 AFA60030 */  sw        $a2, 0x30($sp)
/* 1BE14 8001B214 AFA70034 */  sw        $a3, 0x34($sp)
/* 1BE18 8001B218 00002825 */  or        $a1, $zero, $zero
/* 1BE1C 8001B21C 0C000971 */  jal       func_800025C4
/* 1BE20 8001B220 24040030 */  addiu     $a0, $zero, 0x30
/* 1BE24 8001B224 10400027 */  beqz      $v0, .L8001B2C4
/* 1BE28 8001B228 00408025 */  or        $s0, $v0, $zero
/* 1BE2C 8001B22C 87A6002E */  lh        $a2, 0x2e($sp)
/* 1BE30 8001B230 87A70032 */  lh        $a3, 0x32($sp)
/* 1BE34 8001B234 240E0006 */  addiu     $t6, $zero, 6
/* 1BE38 8001B238 A44E0000 */  sh        $t6, ($v0)
/* 1BE3C 8001B23C 8FAF0028 */  lw        $t7, 0x28($sp)
/* 1BE40 8001B240 AC400014 */  sw        $zero, 0x14($v0)
/* 1BE44 8001B244 A4460004 */  sh        $a2, 4($v0)
/* 1BE48 8001B248 A4470006 */  sh        $a3, 6($v0)
/* 1BE4C 8001B24C AC4F001C */  sw        $t7, 0x1c($v0)
/* 1BE50 8001B250 87B8003E */  lh        $t8, 0x3e($sp)
/* 1BE54 8001B254 00002025 */  or        $a0, $zero, $zero
/* 1BE58 8001B258 24050002 */  addiu     $a1, $zero, 2
/* 1BE5C 8001B25C A4580008 */  sh        $t8, 8($v0)
/* 1BE60 8001B260 87B90042 */  lh        $t9, 0x42($sp)
/* 1BE64 8001B264 A459000A */  sh        $t9, 0xa($v0)
/* 1BE68 8001B268 8FA80044 */  lw        $t0, 0x44($sp)
/* 1BE6C 8001B26C AC48000C */  sw        $t0, 0xc($v0)
/* 1BE70 8001B270 0C0018C5 */  jal       func_80006314
/* 1BE74 8001B274 AFA00010 */  sw        $zero, 0x10($sp)
/* 1BE78 8001B278 AE020028 */  sw        $v0, 0x28($s0)
/* 1BE7C 8001B27C 24090001 */  addiu     $t1, $zero, 1
/* 1BE80 8001B280 AFA90010 */  sw        $t1, 0x10($sp)
/* 1BE84 8001B284 87A70032 */  lh        $a3, 0x32($sp)
/* 1BE88 8001B288 87A6002E */  lh        $a2, 0x2e($sp)
/* 1BE8C 8001B28C 00002025 */  or        $a0, $zero, $zero
/* 1BE90 8001B290 0C0018C5 */  jal       func_80006314
/* 1BE94 8001B294 24050002 */  addiu     $a1, $zero, 2
/* 1BE98 8001B298 AE02002C */  sw        $v0, 0x2c($s0)
/* 1BE9C 8001B29C 8E040028 */  lw        $a0, 0x28($s0)
/* 1BEA0 8001B2A0 0C001905 */  jal       func_80006414
/* 1BEA4 8001B2A4 00402825 */  or        $a1, $v0, $zero
/* 1BEA8 8001B2A8 87AA0042 */  lh        $t2, 0x42($sp)
/* 1BEAC 8001B2AC 02002025 */  or        $a0, $s0, $zero
/* 1BEB0 8001B2B0 87A50036 */  lh        $a1, 0x36($sp)
/* 1BEB4 8001B2B4 87A6003A */  lh        $a2, 0x3a($sp)
/* 1BEB8 8001B2B8 87A7003E */  lh        $a3, 0x3e($sp)
/* 1BEBC 8001B2BC 0C006C55 */  jal       func_8001B154
/* 1BEC0 8001B2C0 AFAA0010 */  sw        $t2, 0x10($sp)
.L8001B2C4:
/* 1BEC4 8001B2C4 8FBF0024 */  lw        $ra, 0x24($sp)
/* 1BEC8 8001B2C8 02001025 */  or        $v0, $s0, $zero
/* 1BECC 8001B2CC 8FB00020 */  lw        $s0, 0x20($sp)
/* 1BED0 8001B2D0 03E00008 */  jr        $ra
/* 1BED4 8001B2D4 27BD0028 */  addiu     $sp, $sp, 0x28

glabel func_8001B2D8
/* 1BED8 8001B2D8 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 1BEDC 8001B2DC AFBF001C */  sw        $ra, 0x1c($sp)
/* 1BEE0 8001B2E0 AFB10018 */  sw        $s1, 0x18($sp)
/* 1BEE4 8001B2E4 AFB00014 */  sw        $s0, 0x14($sp)
/* 1BEE8 8001B2E8 AFA60038 */  sw        $a2, 0x38($sp)
/* 1BEEC 8001B2EC 90AE0000 */  lbu       $t6, ($a1)
/* 1BEF0 8001B2F0 240A001C */  addiu     $t2, $zero, 0x1c
/* 1BEF4 8001B2F4 3C098007 */  lui       $t1, 0x8007
/* 1BEF8 8001B2F8 01CA0019 */  multu     $t6, $t2
/* 1BEFC 8001B2FC 2529FF00 */  addiu     $t1, $t1, -0x100
/* 1BF00 8001B300 94990000 */  lhu       $t9, ($a0)
/* 1BF04 8001B304 240C0100 */  addiu     $t4, $zero, 0x100
/* 1BF08 8001B308 3C0142C8 */  lui       $at, 0x42c8
/* 1BF0C 8001B30C 372B0001 */  ori       $t3, $t9, 1
/* 1BF10 8001B310 44814000 */  mtc1      $at, $f8
/* 1BF14 8001B314 8C990024 */  lw        $t9, 0x24($a0)
/* 1BF18 8001B318 00808025 */  or        $s0, $a0, $zero
/* 1BF1C 8001B31C 00A08825 */  or        $s1, $a1, $zero
/* 1BF20 8001B320 00007812 */  mflo      $t7
/* 1BF24 8001B324 012FC021 */  addu      $t8, $t1, $t7
/* 1BF28 8001B328 8F08FFF8 */  lw        $t0, -8($t8)
/* 1BF2C 8001B32C A48B0000 */  sh        $t3, ($a0)
/* 1BF30 8001B330 AC850014 */  sw        $a1, 0x14($a0)
/* 1BF34 8001B334 A48C0012 */  sh        $t4, 0x12($a0)
/* 1BF38 8001B338 A4800010 */  sh        $zero, 0x10($a0)
/* 1BF3C 8001B33C A4860002 */  sh        $a2, 2($a0)
/* 1BF40 8001B340 90AD0000 */  lbu       $t5, ($a1)
/* 1BF44 8001B344 00081C02 */  srl       $v1, $t0, 0x10
/* 1BF48 8001B348 00031C00 */  sll       $v1, $v1, 0x10
/* 1BF4C 8001B34C 01AA0019 */  multu     $t5, $t2
/* 1BF50 8001B350 00031C03 */  sra       $v1, $v1, 0x10
/* 1BF54 8001B354 00031983 */  sra       $v1, $v1, 6
/* 1BF58 8001B358 00031C00 */  sll       $v1, $v1, 0x10
/* 1BF5C 8001B35C 00083982 */  srl       $a3, $t0, 6
/* 1BF60 8001B360 00031C03 */  sra       $v1, $v1, 0x10
/* 1BF64 8001B364 00073C00 */  sll       $a3, $a3, 0x10
/* 1BF68 8001B368 44838000 */  mtc1      $v1, $f16
/* 1BF6C 8001B36C 00073C03 */  sra       $a3, $a3, 0x10
/* 1BF70 8001B370 00073903 */  sra       $a3, $a3, 4
/* 1BF74 8001B374 00007012 */  mflo      $t6
/* 1BF78 8001B378 012E7821 */  addu      $t7, $t1, $t6
/* 1BF7C 8001B37C 85F8FFE6 */  lh        $t8, -0x1a($t7)
/* 1BF80 8001B380 00073C00 */  sll       $a3, $a3, 0x10
/* 1BF84 8001B384 468084A0 */  cvt.s.w   $f18, $f16
/* 1BF88 8001B388 44982000 */  mtc1      $t8, $f4
/* 1BF8C 8001B38C 00073C03 */  sra       $a3, $a3, 0x10
/* 1BF90 8001B390 00084580 */  sll       $t0, $t0, 0x16
/* 1BF94 8001B394 00084403 */  sra       $t0, $t0, 0x10
/* 1BF98 8001B398 468021A0 */  cvt.s.w   $f6, $f4
/* 1BF9C 8001B39C 44872000 */  mtc1      $a3, $f4
/* 1BFA0 8001B3A0 00084183 */  sra       $t0, $t0, 6
/* 1BFA4 8001B3A4 00084400 */  sll       $t0, $t0, 0x10
/* 1BFA8 8001B3A8 00084403 */  sra       $t0, $t0, 0x10
/* 1BFAC 8001B3AC 3C0E8007 */  lui       $t6, 0x8007
/* 1BFB0 8001B3B0 46083283 */  div.s     $f10, $f6, $f8
/* 1BFB4 8001B3B4 44884000 */  mtc1      $t0, $f8
/* 1BFB8 8001B3B8 25CEF05C */  addiu     $t6, $t6, -0xfa4
/* 1BFBC 8001B3BC 468021A0 */  cvt.s.w   $f6, $f4
/* 1BFC0 8001B3C0 E48A0018 */  swc1      $f10, 0x18($a0)
/* 1BFC4 8001B3C4 E7320024 */  swc1      $f18, 0x24($t9)
/* 1BFC8 8001B3C8 8C8B0024 */  lw        $t3, 0x24($a0)
/* 1BFCC 8001B3CC 468042A0 */  cvt.s.w   $f10, $f8
/* 1BFD0 8001B3D0 E5660028 */  swc1      $f6, 0x28($t3)
/* 1BFD4 8001B3D4 8C8C0024 */  lw        $t4, 0x24($a0)
/* 1BFD8 8001B3D8 E58A002C */  swc1      $f10, 0x2c($t4)
/* 1BFDC 8001B3DC 8DD80000 */  lw        $t8, ($t6)
/* 1BFE0 8001B3E0 8C8D0024 */  lw        $t5, 0x24($a0)
/* 1BFE4 8001B3E4 27A4002C */  addiu     $a0, $sp, 0x2c
/* 1BFE8 8001B3E8 A9B8001E */  swl       $t8, 0x1e($t5)
/* 1BFEC 8001B3EC B9B80021 */  swr       $t8, 0x21($t5)
/* 1BFF0 8001B3F0 95D80004 */  lhu       $t8, 4($t6)
/* 1BFF4 8001B3F4 0C006FBA */  jal       func_8001BEE8
/* 1BFF8 8001B3F8 A5B80022 */  sh        $t8, 0x22($t5)
/* 1BFFC 8001B3FC 8FA6002C */  lw        $a2, 0x2c($sp)
/* 1C000 8001B400 8E04001C */  lw        $a0, 0x1c($s0)
/* 1C004 8001B404 92250000 */  lbu       $a1, ($s1)
/* 1C008 8001B408 0C006639 */  jal       func_800198E4
/* 1C00C 8001B40C AFA60008 */  sw        $a2, 8($sp)
/* 1C010 8001B410 0C00672A */  jal       func_80019CA8
/* 1C014 8001B414 8E04001C */  lw        $a0, 0x1c($s0)
/* 1C018 8001B418 0C006F3C */  jal       func_8001BCF0
/* 1C01C 8001B41C 8E040024 */  lw        $a0, 0x24($s0)
/* 1C020 8001B420 8E0B001C */  lw        $t3, 0x1c($s0)
/* 1C024 8001B424 8E040024 */  lw        $a0, 0x24($s0)
/* 1C028 8001B428 00002825 */  or        $a1, $zero, $zero
/* 1C02C 8001B42C 8D6C0024 */  lw        $t4, 0x24($t3)
/* 1C030 8001B430 92260000 */  lbu       $a2, ($s1)
/* 1C034 8001B434 8D8D0008 */  lw        $t5, 8($t4)
/* 1C038 8001B438 0C006F0D */  jal       func_8001BC34
/* 1C03C 8001B43C 8DA70000 */  lw        $a3, ($t5)
/* 1C040 8001B440 8E040024 */  lw        $a0, 0x24($s0)
/* 1C044 8001B444 0C006F41 */  jal       func_8001BD04
/* 1C048 8001B448 24050001 */  addiu     $a1, $zero, 1
/* 1C04C 8001B44C 8E020024 */  lw        $v0, 0x24($s0)
/* 1C050 8001B450 904E0002 */  lbu       $t6, 2($v0)
/* 1C054 8001B454 31CFFFBF */  andi      $t7, $t6, 0xffbf
/* 1C058 8001B458 A04F0002 */  sb        $t7, 2($v0)
/* 1C05C 8001B45C 8E020024 */  lw        $v0, 0x24($s0)
/* 1C060 8001B460 90580002 */  lbu       $t8, 2($v0)
/* 1C064 8001B464 37190080 */  ori       $t9, $t8, 0x80
/* 1C068 8001B468 A0590002 */  sb        $t9, 2($v0)
/* 1C06C 8001B46C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1C070 8001B470 8FB10018 */  lw        $s1, 0x18($sp)
/* 1C074 8001B474 8FB00014 */  lw        $s0, 0x14($sp)
/* 1C078 8001B478 03E00008 */  jr        $ra
/* 1C07C 8001B47C 27BD0030 */  addiu     $sp, $sp, 0x30

glabel func_8001B480
/* 1C080 8001B480 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 1C084 8001B484 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1C088 8001B488 AFB00018 */  sw        $s0, 0x18($sp)
/* 1C08C 8001B48C AFA5003C */  sw        $a1, 0x3c($sp)
/* 1C090 8001B490 AFA60040 */  sw        $a2, 0x40($sp)
/* 1C094 8001B494 000578C0 */  sll       $t7, $a1, 3
/* 1C098 8001B498 94990000 */  lhu       $t9, ($a0)
/* 1C09C 8001B49C 01E57823 */  subu      $t7, $t7, $a1
/* 1C0A0 8001B4A0 3C188007 */  lui       $t8, 0x8007
/* 1C0A4 8001B4A4 2718FF00 */  addiu     $t8, $t8, -0x100
/* 1C0A8 8001B4A8 000F7880 */  sll       $t7, $t7, 2
/* 1C0AC 8001B4AC 01F81821 */  addu      $v1, $t7, $t8
/* 1C0B0 8001B4B0 8C69FFF8 */  lw        $t1, -8($v1)
/* 1C0B4 8001B4B4 332AFFFE */  andi      $t2, $t9, 0xfffe
/* 1C0B8 8001B4B8 A48A0000 */  sh        $t2, ($a0)
/* 1C0BC 8001B4BC 8FAB003C */  lw        $t3, 0x3c($sp)
/* 1C0C0 8001B4C0 240C0100 */  addiu     $t4, $zero, 0x100
/* 1C0C4 8001B4C4 A48C0012 */  sh        $t4, 0x12($a0)
/* 1C0C8 8001B4C8 A4800010 */  sh        $zero, 0x10($a0)
/* 1C0CC 8001B4CC A4860002 */  sh        $a2, 2($a0)
/* 1C0D0 8001B4D0 AC8B0014 */  sw        $t3, 0x14($a0)
/* 1C0D4 8001B4D4 846DFFE6 */  lh        $t5, -0x1a($v1)
/* 1C0D8 8001B4D8 3C0142C8 */  lui       $at, 0x42c8
/* 1C0DC 8001B4DC 44814000 */  mtc1      $at, $f8
/* 1C0E0 8001B4E0 448D2000 */  mtc1      $t5, $f4
/* 1C0E4 8001B4E4 00093C02 */  srl       $a3, $t1, 0x10
/* 1C0E8 8001B4E8 00073C00 */  sll       $a3, $a3, 0x10
/* 1C0EC 8001B4EC 468021A0 */  cvt.s.w   $f6, $f4
/* 1C0F0 8001B4F0 00073C03 */  sra       $a3, $a3, 0x10
/* 1C0F4 8001B4F4 00073983 */  sra       $a3, $a3, 6
/* 1C0F8 8001B4F8 00073C00 */  sll       $a3, $a3, 0x10
/* 1C0FC 8001B4FC 00094182 */  srl       $t0, $t1, 6
/* 1C100 8001B500 00073C03 */  sra       $a3, $a3, 0x10
/* 1C104 8001B504 46083283 */  div.s     $f10, $f6, $f8
/* 1C108 8001B508 00084400 */  sll       $t0, $t0, 0x10
/* 1C10C 8001B50C 44878000 */  mtc1      $a3, $f16
/* 1C110 8001B510 00084403 */  sra       $t0, $t0, 0x10
/* 1C114 8001B514 00084103 */  sra       $t0, $t0, 4
/* 1C118 8001B518 00084400 */  sll       $t0, $t0, 0x10
/* 1C11C 8001B51C 468084A0 */  cvt.s.w   $f18, $f16
/* 1C120 8001B520 00084403 */  sra       $t0, $t0, 0x10
/* 1C124 8001B524 00094D80 */  sll       $t1, $t1, 0x16
/* 1C128 8001B528 44882000 */  mtc1      $t0, $f4
/* 1C12C 8001B52C 00094C03 */  sra       $t1, $t1, 0x10
/* 1C130 8001B530 00094983 */  sra       $t1, $t1, 6
/* 1C134 8001B534 8C8E0024 */  lw        $t6, 0x24($a0)
/* 1C138 8001B538 00094C00 */  sll       $t1, $t1, 0x10
/* 1C13C 8001B53C 00094C03 */  sra       $t1, $t1, 0x10
/* 1C140 8001B540 44894000 */  mtc1      $t1, $f8
/* 1C144 8001B544 3C0A8007 */  lui       $t2, 0x8007
/* 1C148 8001B548 254AF05C */  addiu     $t2, $t2, -0xfa4
/* 1C14C 8001B54C 00808025 */  or        $s0, $a0, $zero
/* 1C150 8001B550 00003025 */  or        $a2, $zero, $zero
/* 1C154 8001B554 468021A0 */  cvt.s.w   $f6, $f4
/* 1C158 8001B558 E48A0018 */  swc1      $f10, 0x18($a0)
/* 1C15C 8001B55C E5D20024 */  swc1      $f18, 0x24($t6)
/* 1C160 8001B560 8C8F0024 */  lw        $t7, 0x24($a0)
/* 1C164 8001B564 468042A0 */  cvt.s.w   $f10, $f8
/* 1C168 8001B568 E5E60028 */  swc1      $f6, 0x28($t7)
/* 1C16C 8001B56C 8C980024 */  lw        $t8, 0x24($a0)
/* 1C170 8001B570 E70A002C */  swc1      $f10, 0x2c($t8)
/* 1C174 8001B574 8D4C0000 */  lw        $t4, ($t2)
/* 1C178 8001B578 8C990024 */  lw        $t9, 0x24($a0)
/* 1C17C 8001B57C AB2C001E */  swl       $t4, 0x1e($t9)
/* 1C180 8001B580 BB2C0021 */  swr       $t4, 0x21($t9)
/* 1C184 8001B584 954C0004 */  lhu       $t4, 4($t2)
/* 1C188 8001B588 A72C0022 */  sh        $t4, 0x22($t9)
/* 1C18C 8001B58C AFA00034 */  sw        $zero, 0x34($sp)
/* 1C190 8001B590 8C84001C */  lw        $a0, 0x1c($a0)
/* 1C194 8001B594 AFA00008 */  sw        $zero, 8($sp)
/* 1C198 8001B598 0C006639 */  jal       func_800198E4
/* 1C19C 8001B59C 97A5003E */  lhu       $a1, 0x3e($sp)
/* 1C1A0 8001B5A0 0C00672A */  jal       func_80019CA8
/* 1C1A4 8001B5A4 8E04001C */  lw        $a0, 0x1c($s0)
/* 1C1A8 8001B5A8 0C006F3C */  jal       func_8001BCF0
/* 1C1AC 8001B5AC 8E040024 */  lw        $a0, 0x24($s0)
/* 1C1B0 8001B5B0 8E0E001C */  lw        $t6, 0x1c($s0)
/* 1C1B4 8001B5B4 8E040024 */  lw        $a0, 0x24($s0)
/* 1C1B8 8001B5B8 00002825 */  or        $a1, $zero, $zero
/* 1C1BC 8001B5BC 8DCF0024 */  lw        $t7, 0x24($t6)
/* 1C1C0 8001B5C0 87A6003E */  lh        $a2, 0x3e($sp)
/* 1C1C4 8001B5C4 8DF80008 */  lw        $t8, 8($t7)
/* 1C1C8 8001B5C8 0C006F0D */  jal       func_8001BC34
/* 1C1CC 8001B5CC 8F070000 */  lw        $a3, ($t8)
/* 1C1D0 8001B5D0 8E040024 */  lw        $a0, 0x24($s0)
/* 1C1D4 8001B5D4 0C006F41 */  jal       func_8001BD04
/* 1C1D8 8001B5D8 24050001 */  addiu     $a1, $zero, 1
/* 1C1DC 8001B5DC 8E020024 */  lw        $v0, 0x24($s0)
/* 1C1E0 8001B5E0 90590002 */  lbu       $t9, 2($v0)
/* 1C1E4 8001B5E4 332AFFBF */  andi      $t2, $t9, 0xffbf
/* 1C1E8 8001B5E8 A04A0002 */  sb        $t2, 2($v0)
/* 1C1EC 8001B5EC 8E020024 */  lw        $v0, 0x24($s0)
/* 1C1F0 8001B5F0 904B0002 */  lbu       $t3, 2($v0)
/* 1C1F4 8001B5F4 356C0080 */  ori       $t4, $t3, 0x80
/* 1C1F8 8001B5F8 A04C0002 */  sb        $t4, 2($v0)
/* 1C1FC 8001B5FC 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1C200 8001B600 8FB00018 */  lw        $s0, 0x18($sp)
/* 1C204 8001B604 27BD0038 */  addiu     $sp, $sp, 0x38
/* 1C208 8001B608 03E00008 */  jr        $ra
/* 1C20C 8001B60C 00000000 */  nop       

glabel func_8001B610
/* 1C210 8001B610 3C0E8007 */  lui       $t6, 0x8007
/* 1C214 8001B614 8DCE8BA0 */  lw        $t6, -0x7460($t6)
/* 1C218 8001B618 00001825 */  or        $v1, $zero, $zero
/* 1C21C 8001B61C 95C20006 */  lhu       $v0, 6($t6)
/* 1C220 8001B620 304F0800 */  andi      $t7, $v0, 0x800
/* 1C224 8001B624 51E00009 */  beql      $t7, $zero, .L8001B64C
/* 1C228 8001B628 30490400 */  andi      $t1, $v0, 0x400
/* 1C22C 8001B62C 84980000 */  lh        $t8, ($a0)
/* 1C230 8001B630 3C088007 */  lui       $t0, 0x8007
/* 1C234 8001B634 24030001 */  addiu     $v1, $zero, 1
/* 1C238 8001B638 27190400 */  addiu     $t9, $t8, 0x400
/* 1C23C 8001B63C A4990000 */  sh        $t9, ($a0)
/* 1C240 8001B640 8D088BA0 */  lw        $t0, -0x7460($t0)
/* 1C244 8001B644 95020006 */  lhu       $v0, 6($t0)
/* 1C248 8001B648 30490400 */  andi      $t1, $v0, 0x400
.L8001B64C:
/* 1C24C 8001B64C 51200009 */  beql      $t1, $zero, .L8001B674
/* 1C250 8001B650 304D0200 */  andi      $t5, $v0, 0x200
/* 1C254 8001B654 848A0000 */  lh        $t2, ($a0)
/* 1C258 8001B658 3C0C8007 */  lui       $t4, 0x8007
/* 1C25C 8001B65C 24030001 */  addiu     $v1, $zero, 1
/* 1C260 8001B660 254BFC00 */  addiu     $t3, $t2, -0x400
/* 1C264 8001B664 A48B0000 */  sh        $t3, ($a0)
/* 1C268 8001B668 8D8C8BA0 */  lw        $t4, -0x7460($t4)
/* 1C26C 8001B66C 95820006 */  lhu       $v0, 6($t4)
/* 1C270 8001B670 304D0200 */  andi      $t5, $v0, 0x200
.L8001B674:
/* 1C274 8001B674 51A00009 */  beql      $t5, $zero, .L8001B69C
/* 1C278 8001B678 30590100 */  andi      $t9, $v0, 0x100
/* 1C27C 8001B67C 848E0002 */  lh        $t6, 2($a0)
/* 1C280 8001B680 3C188007 */  lui       $t8, 0x8007
/* 1C284 8001B684 24030001 */  addiu     $v1, $zero, 1
/* 1C288 8001B688 25CF0400 */  addiu     $t7, $t6, 0x400
/* 1C28C 8001B68C A48F0002 */  sh        $t7, 2($a0)
/* 1C290 8001B690 8F188BA0 */  lw        $t8, -0x7460($t8)
/* 1C294 8001B694 97020006 */  lhu       $v0, 6($t8)
/* 1C298 8001B698 30590100 */  andi      $t9, $v0, 0x100
.L8001B69C:
/* 1C29C 8001B69C 13200005 */  beqz      $t9, .L8001B6B4
/* 1C2A0 8001B6A0 00000000 */  nop       
/* 1C2A4 8001B6A4 84880002 */  lh        $t0, 2($a0)
/* 1C2A8 8001B6A8 24030001 */  addiu     $v1, $zero, 1
/* 1C2AC 8001B6AC 2509FC00 */  addiu     $t1, $t0, -0x400
/* 1C2B0 8001B6B0 A4890002 */  sh        $t1, 2($a0)
.L8001B6B4:
/* 1C2B4 8001B6B4 03E00008 */  jr        $ra
/* 1C2B8 8001B6B8 00601025 */  or        $v0, $v1, $zero

glabel func_8001B6BC
/* 1C2BC 8001B6BC AFA40000 */  sw        $a0, ($sp)
/* 1C2C0 8001B6C0 03E00008 */  jr        $ra
/* 1C2C4 8001B6C4 00001025 */  or        $v0, $zero, $zero

glabel func_8001B6C8
/* 1C2C8 8001B6C8 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1C2CC 8001B6CC AFBF0014 */  sw        $ra, 0x14($sp)
/* 1C2D0 8001B6D0 84820012 */  lh        $v0, 0x12($a0)
/* 1C2D4 8001B6D4 8C880024 */  lw        $t0, 0x24($a0)
/* 1C2D8 8001B6D8 00002825 */  or        $a1, $zero, $zero
/* 1C2DC 8001B6DC 28410100 */  slti      $at, $v0, 0x100
/* 1C2E0 8001B6E0 10200004 */  beqz      $at, .L8001B6F4
/* 1C2E4 8001B6E4 2508001E */  addiu     $t0, $t0, 0x1e
/* 1C2E8 8001B6E8 244E0010 */  addiu     $t6, $v0, 0x10
/* 1C2EC 8001B6EC A48E0012 */  sh        $t6, 0x12($a0)
/* 1C2F0 8001B6F0 84820012 */  lh        $v0, 0x12($a0)
.L8001B6F4:
/* 1C2F4 8001B6F4 850F0002 */  lh        $t7, 2($t0)
/* 1C2F8 8001B6F8 85070000 */  lh        $a3, ($t0)
/* 1C2FC 8001B6FC 2401000C */  addiu     $at, $zero, 0xc
/* 1C300 8001B700 01E2C021 */  addu      $t8, $t7, $v0
/* 1C304 8001B704 A5180002 */  sh        $t8, 2($t0)
/* 1C308 8001B708 04E10003 */  bgez      $a3, .L8001B718
/* 1C30C 8001B70C 84860012 */  lh        $a2, 0x12($a0)
/* 1C310 8001B710 10000002 */  b         .L8001B71C
/* 1C314 8001B714 00072023 */  negu      $a0, $a3
.L8001B718:
/* 1C318 8001B718 00E02025 */  or        $a0, $a3, $zero
.L8001B71C:
/* 1C31C 8001B71C 0081001A */  div       $zero, $a0, $at
/* 1C320 8001B720 00001012 */  mflo      $v0
/* 1C324 8001B724 0002CC00 */  sll       $t9, $v0, 0x10
/* 1C328 8001B728 00194C03 */  sra       $t1, $t9, 0x10
/* 1C32C 8001B72C 00021C00 */  sll       $v1, $v0, 0x10
/* 1C330 8001B730 29210008 */  slti      $at, $t1, 8
/* 1C334 8001B734 10200002 */  beqz      $at, .L8001B740
/* 1C338 8001B738 00031C03 */  sra       $v1, $v1, 0x10
/* 1C33C 8001B73C 24030008 */  addiu     $v1, $zero, 8
.L8001B740:
/* 1C340 8001B740 0066082A */  slt       $at, $v1, $a2
/* 1C344 8001B744 10200003 */  beqz      $at, .L8001B754
/* 1C348 8001B748 00072400 */  sll       $a0, $a3, 0x10
/* 1C34C 8001B74C 00033400 */  sll       $a2, $v1, 0x10
/* 1C350 8001B750 00063403 */  sra       $a2, $a2, 0x10
.L8001B754:
/* 1C354 8001B754 00042403 */  sra       $a0, $a0, 0x10
/* 1C358 8001B758 0C0040FC */  jal       func_800103F0
/* 1C35C 8001B75C AFA80018 */  sw        $t0, 0x18($sp)
/* 1C360 8001B760 8FA80018 */  lw        $t0, 0x18($sp)
/* 1C364 8001B764 A5020000 */  sh        $v0, ($t0)
/* 1C368 8001B768 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1C36C 8001B76C 27BD0020 */  addiu     $sp, $sp, 0x20
/* 1C370 8001B770 03E00008 */  jr        $ra
/* 1C374 8001B774 00000000 */  nop       

glabel func_8001B778
/* 1C378 8001B778 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1C37C 8001B77C AFBF001C */  sw        $ra, 0x1c($sp)
/* 1C380 8001B780 AFB00018 */  sw        $s0, 0x18($sp)
/* 1C384 8001B784 948E0000 */  lhu       $t6, ($a0)
/* 1C388 8001B788 00808025 */  or        $s0, $a0, $zero
/* 1C38C 8001B78C 00001825 */  or        $v1, $zero, $zero
/* 1C390 8001B790 31CF0002 */  andi      $t7, $t6, 2
/* 1C394 8001B794 11E0000A */  beqz      $t7, .L8001B7C0
/* 1C398 8001B798 00000000 */  nop       
/* 1C39C 8001B79C 8C840024 */  lw        $a0, 0x24($a0)
/* 1C3A0 8001B7A0 0C006D84 */  jal       func_8001B610
/* 1C3A4 8001B7A4 2484001E */  addiu     $a0, $a0, 0x1e
/* 1C3A8 8001B7A8 14400005 */  bnez      $v0, .L8001B7C0
/* 1C3AC 8001B7AC 00401825 */  or        $v1, $v0, $zero
/* 1C3B0 8001B7B0 8E040024 */  lw        $a0, 0x24($s0)
/* 1C3B4 8001B7B4 0C006DAF */  jal       func_8001B6BC
/* 1C3B8 8001B7B8 2484001E */  addiu     $a0, $a0, 0x1e
/* 1C3BC 8001B7BC 00401825 */  or        $v1, $v0, $zero
.L8001B7C0:
/* 1C3C0 8001B7C0 10600004 */  beqz      $v1, .L8001B7D4
/* 1C3C4 8001B7C4 24180078 */  addiu     $t8, $zero, 0x78
/* 1C3C8 8001B7C8 A6000012 */  sh        $zero, 0x12($s0)
/* 1C3CC 8001B7CC 1000000C */  b         .L8001B800
/* 1C3D0 8001B7D0 A6180010 */  sh        $t8, 0x10($s0)
.L8001B7D4:
/* 1C3D4 8001B7D4 96190000 */  lhu       $t9, ($s0)
/* 1C3D8 8001B7D8 33280004 */  andi      $t0, $t9, 4
/* 1C3DC 8001B7DC 51000009 */  beql      $t0, $zero, .L8001B804
/* 1C3E0 8001B7E0 C6000018 */  lwc1      $f0, 0x18($s0)
/* 1C3E4 8001B7E4 86020010 */  lh        $v0, 0x10($s0)
/* 1C3E8 8001B7E8 18400003 */  blez      $v0, .L8001B7F8
/* 1C3EC 8001B7EC 2449FFFF */  addiu     $t1, $v0, -1
/* 1C3F0 8001B7F0 10000003 */  b         .L8001B800
/* 1C3F4 8001B7F4 A6090010 */  sh        $t1, 0x10($s0)
.L8001B7F8:
/* 1C3F8 8001B7F8 0C006DB2 */  jal       func_8001B6C8
/* 1C3FC 8001B7FC 02002025 */  or        $a0, $s0, $zero
.L8001B800:
/* 1C400 8001B800 C6000018 */  lwc1      $f0, 0x18($s0)
.L8001B804:
/* 1C404 8001B804 3C04800B */  lui       $a0, 0x800b
/* 1C408 8001B808 8C84C830 */  lw        $a0, -0x37d0($a0)
/* 1C40C 8001B80C 44050000 */  mfc1      $a1, $f0
/* 1C410 8001B810 44060000 */  mfc1      $a2, $f0
/* 1C414 8001B814 44070000 */  mfc1      $a3, $f0
/* 1C418 8001B818 0C003A23 */  jal       func_8000E88C
/* 1C41C 8001B81C 24840030 */  addiu     $a0, $a0, 0x30
/* 1C420 8001B820 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1C424 8001B824 8FB00018 */  lw        $s0, 0x18($sp)
/* 1C428 8001B828 27BD0020 */  addiu     $sp, $sp, 0x20
/* 1C42C 8001B82C 03E00008 */  jr        $ra
/* 1C430 8001B830 00000000 */  nop       

glabel func_8001B834
/* 1C434 8001B834 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 1C438 8001B838 AFBF003C */  sw        $ra, 0x3c($sp)
/* 1C43C 8001B83C AFB50038 */  sw        $s5, 0x38($sp)
/* 1C440 8001B840 AFB40034 */  sw        $s4, 0x34($sp)
/* 1C444 8001B844 AFB30030 */  sw        $s3, 0x30($sp)
/* 1C448 8001B848 AFB2002C */  sw        $s2, 0x2c($sp)
/* 1C44C 8001B84C AFB10028 */  sw        $s1, 0x28($sp)
/* 1C450 8001B850 AFB00024 */  sw        $s0, 0x24($sp)
/* 1C454 8001B854 8C88000C */  lw        $t0, 0xc($a0)
/* 1C458 8001B858 3C15800A */  lui       $s5, 0x800a
/* 1C45C 8001B85C 00809825 */  or        $s3, $a0, $zero
/* 1C460 8001B860 15000007 */  bnez      $t0, .L8001B880
/* 1C464 8001B864 26B57420 */  addiu     $s5, $s5, 0x7420
/* 1C468 8001B868 3C15800A */  lui       $s5, 0x800a
/* 1C46C 8001B86C 26A47420 */  addiu     $a0, $s5, 0x7420
/* 1C470 8001B870 0C001A67 */  jal       func_8000699C
/* 1C474 8001B874 96650002 */  lhu       $a1, 2($s3)
/* 1C478 8001B878 1000004E */  b         .L8001B9B4
/* 1C47C 8001B87C 8FBF003C */  lw        $ra, 0x3c($sp)
.L8001B880:
/* 1C480 8001B880 8EA20000 */  lw        $v0, ($s5)
/* 1C484 8001B884 3C0FE700 */  lui       $t7, 0xe700
/* 1C488 8001B888 3C19E300 */  lui       $t9, 0xe300
/* 1C48C 8001B88C 244E0008 */  addiu     $t6, $v0, 8
/* 1C490 8001B890 AEAE0000 */  sw        $t6, ($s5)
/* 1C494 8001B894 AC400004 */  sw        $zero, 4($v0)
/* 1C498 8001B898 AC4F0000 */  sw        $t7, ($v0)
/* 1C49C 8001B89C 8EA20000 */  lw        $v0, ($s5)
/* 1C4A0 8001B8A0 37390A01 */  ori       $t9, $t9, 0xa01
/* 1C4A4 8001B8A4 3C090020 */  lui       $t1, 0x20
/* 1C4A8 8001B8A8 24580008 */  addiu     $t8, $v0, 8
/* 1C4AC 8001B8AC AEB80000 */  sw        $t8, ($s5)
/* 1C4B0 8001B8B0 AC490004 */  sw        $t1, 4($v0)
/* 1C4B4 8001B8B4 AC590000 */  sw        $t9, ($v0)
/* 1C4B8 8001B8B8 8EA20000 */  lw        $v0, ($s5)
/* 1C4BC 8001B8BC 3C0BE200 */  lui       $t3, 0xe200
/* 1C4C0 8001B8C0 356B001C */  ori       $t3, $t3, 0x1c
/* 1C4C4 8001B8C4 244A0008 */  addiu     $t2, $v0, 8
/* 1C4C8 8001B8C8 AEAA0000 */  sw        $t2, ($s5)
/* 1C4CC 8001B8CC AC400004 */  sw        $zero, 4($v0)
/* 1C4D0 8001B8D0 AC4B0000 */  sw        $t3, ($v0)
/* 1C4D4 8001B8D4 8EA20000 */  lw        $v0, ($s5)
/* 1C4D8 8001B8D8 3C0DE300 */  lui       $t5, 0xe300
/* 1C4DC 8001B8DC 35AD0C00 */  ori       $t5, $t5, 0xc00
/* 1C4E0 8001B8E0 244C0008 */  addiu     $t4, $v0, 8
/* 1C4E4 8001B8E4 AEAC0000 */  sw        $t4, ($s5)
/* 1C4E8 8001B8E8 AC400004 */  sw        $zero, 4($v0)
/* 1C4EC 8001B8EC AC4D0000 */  sw        $t5, ($v0)
/* 1C4F0 8001B8F0 8663000A */  lh        $v1, 0xa($s3)
/* 1C4F4 8001B8F4 01009025 */  or        $s2, $t0, $zero
/* 1C4F8 8001B8F8 00008025 */  or        $s0, $zero, $zero
/* 1C4FC 8001B8FC 18600017 */  blez      $v1, .L8001B95C
/* 1C500 8001B900 3C140020 */  lui       $s4, 0x20
/* 1C504 8001B904 86710004 */  lh        $s1, 4($s3)
.L8001B908:
/* 1C508 8001B908 00701023 */  subu      $v0, $v1, $s0
/* 1C50C 8001B90C 28410009 */  slti      $at, $v0, 9
/* 1C510 8001B910 14200002 */  bnez      $at, .L8001B91C
/* 1C514 8001B914 00002025 */  or        $a0, $zero, $zero
/* 1C518 8001B918 24020008 */  addiu     $v0, $zero, 8
.L8001B91C:
/* 1C51C 8001B91C 86660008 */  lh        $a2, 8($s3)
/* 1C520 8001B920 00102C00 */  sll       $a1, $s0, 0x10
/* 1C524 8001B924 00023C00 */  sll       $a3, $v0, 0x10
/* 1C528 8001B928 00073C03 */  sra       $a3, $a3, 0x10
/* 1C52C 8001B92C 00052C03 */  sra       $a1, $a1, 0x10
/* 1C530 8001B930 AFB40018 */  sw        $s4, 0x18($sp)
/* 1C534 8001B934 AFB10014 */  sw        $s1, 0x14($sp)
/* 1C538 8001B938 0C0071AB */  jal       func_8001C6AC
/* 1C53C 8001B93C AFB20010 */  sw        $s2, 0x10($sp)
/* 1C540 8001B940 8663000A */  lh        $v1, 0xa($s3)
/* 1C544 8001B944 86710004 */  lh        $s1, 4($s3)
/* 1C548 8001B948 26100008 */  addiu     $s0, $s0, 8
/* 1C54C 8001B94C 0203082A */  slt       $at, $s0, $v1
/* 1C550 8001B950 00117100 */  sll       $t6, $s1, 4
/* 1C554 8001B954 1420FFEC */  bnez      $at, .L8001B908
/* 1C558 8001B958 024E9021 */  addu      $s2, $s2, $t6
.L8001B95C:
/* 1C55C 8001B95C 8EA20000 */  lw        $v0, ($s5)
/* 1C560 8001B960 3C18E700 */  lui       $t8, 0xe700
/* 1C564 8001B964 3C09E300 */  lui       $t1, 0xe300
/* 1C568 8001B968 244F0008 */  addiu     $t7, $v0, 8
/* 1C56C 8001B96C AEAF0000 */  sw        $t7, ($s5)
/* 1C570 8001B970 AC400004 */  sw        $zero, 4($v0)
/* 1C574 8001B974 AC580000 */  sw        $t8, ($v0)
/* 1C578 8001B978 8EA20000 */  lw        $v0, ($s5)
/* 1C57C 8001B97C 35290C00 */  ori       $t1, $t1, 0xc00
/* 1C580 8001B980 3C0A0008 */  lui       $t2, 8
/* 1C584 8001B984 24590008 */  addiu     $t9, $v0, 8
/* 1C588 8001B988 AEB90000 */  sw        $t9, ($s5)
/* 1C58C 8001B98C AC4A0004 */  sw        $t2, 4($v0)
/* 1C590 8001B990 AC490000 */  sw        $t1, ($v0)
/* 1C594 8001B994 866B000A */  lh        $t3, 0xa($s3)
/* 1C598 8001B998 86670008 */  lh        $a3, 8($s3)
/* 1C59C 8001B99C 02A02025 */  or        $a0, $s5, $zero
/* 1C5A0 8001B9A0 00002825 */  or        $a1, $zero, $zero
/* 1C5A4 8001B9A4 00003025 */  or        $a2, $zero, $zero
/* 1C5A8 8001B9A8 0C0019F9 */  jal       func_800067E4
/* 1C5AC 8001B9AC AFAB0010 */  sw        $t3, 0x10($sp)
/* 1C5B0 8001B9B0 8FBF003C */  lw        $ra, 0x3c($sp)
.L8001B9B4:
/* 1C5B4 8001B9B4 8FB00024 */  lw        $s0, 0x24($sp)
/* 1C5B8 8001B9B8 8FB10028 */  lw        $s1, 0x28($sp)
/* 1C5BC 8001B9BC 8FB2002C */  lw        $s2, 0x2c($sp)
/* 1C5C0 8001B9C0 8FB30030 */  lw        $s3, 0x30($sp)
/* 1C5C4 8001B9C4 8FB40034 */  lw        $s4, 0x34($sp)
/* 1C5C8 8001B9C8 8FB50038 */  lw        $s5, 0x38($sp)
/* 1C5CC 8001B9CC 03E00008 */  jr        $ra
/* 1C5D0 8001B9D0 27BD0040 */  addiu     $sp, $sp, 0x40

glabel func_8001B9D4
/* 1C5D4 8001B9D4 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 1C5D8 8001B9D8 AFBF002C */  sw        $ra, 0x2c($sp)
/* 1C5DC 8001B9DC AFB00028 */  sw        $s0, 0x28($sp)
/* 1C5E0 8001B9E0 0C006DDE */  jal       func_8001B778
/* 1C5E4 8001B9E4 00808025 */  or        $s0, $a0, $zero
/* 1C5E8 8001B9E8 3C04800A */  lui       $a0, 0x800a
/* 1C5EC 8001B9EC 24847420 */  addiu     $a0, $a0, 0x7420
/* 1C5F0 8001B9F0 0C001926 */  jal       func_80006498
/* 1C5F4 8001B9F4 8E050028 */  lw        $a1, 0x28($s0)
/* 1C5F8 8001B9F8 0C006E0D */  jal       func_8001B834
/* 1C5FC 8001B9FC 02002025 */  or        $a0, $s0, $zero
/* 1C600 8001BA00 0C0054D2 */  jal       func_80015348
/* 1C604 8001BA04 00000000 */  nop       
/* 1C608 8001BA08 0C005425 */  jal       func_80015094
/* 1C60C 8001BA0C 8E040020 */  lw        $a0, 0x20($s0)
/* 1C610 8001BA10 3C0E800B */  lui       $t6, 0x800b
/* 1C614 8001BA14 8DCEC834 */  lw        $t6, -0x37cc($t6)
/* 1C618 8001BA18 59C0003B */  blezl     $t6, .L8001BB08
/* 1C61C 8001BA1C 8E0D0028 */  lw        $t5, 0x28($s0)
/* 1C620 8001BA20 0C007CFD */  jal       func_8001F3F4
/* 1C624 8001BA24 00000000 */  nop       
/* 1C628 8001BA28 24040008 */  addiu     $a0, $zero, 8
/* 1C62C 8001BA2C 0C007AF8 */  jal       func_8001EBE0
/* 1C630 8001BA30 2405FFFC */  addiu     $a1, $zero, -4
/* 1C634 8001BA34 3C02800B */  lui       $v0, 0x800b
/* 1C638 8001BA38 8C42C834 */  lw        $v0, -0x37cc($v0)
/* 1C63C 8001BA3C 24010001 */  addiu     $at, $zero, 1
/* 1C640 8001BA40 10410007 */  beq       $v0, $at, .L8001BA60
/* 1C644 8001BA44 24010002 */  addiu     $at, $zero, 2
/* 1C648 8001BA48 10410014 */  beq       $v0, $at, .L8001BA9C
/* 1C64C 8001BA4C 24010003 */  addiu     $at, $zero, 3
/* 1C650 8001BA50 10410021 */  beq       $v0, $at, .L8001BAD8
/* 1C654 8001BA54 00002025 */  or        $a0, $zero, $zero
/* 1C658 8001BA58 10000028 */  b         .L8001BAFC
/* 1C65C 8001BA5C 00000000 */  nop       
.L8001BA60:
/* 1C660 8001BA60 C6040018 */  lwc1      $f4, 0x18($s0)
/* 1C664 8001BA64 3C068008 */  lui       $a2, 0x8008
/* 1C668 8001BA68 24C6B590 */  addiu     $a2, $a2, -0x4a70
/* 1C66C 8001BA6C 460021A1 */  cvt.d.s   $f6, $f4
/* 1C670 8001BA70 00002025 */  or        $a0, $zero, $zero
/* 1C674 8001BA74 F7A60010 */  sdc1      $f6, 0x10($sp)
/* 1C678 8001BA78 8E0F0024 */  lw        $t7, 0x24($s0)
/* 1C67C 8001BA7C 24050064 */  addiu     $a1, $zero, 0x64
/* 1C680 8001BA80 C5E80028 */  lwc1      $f8, 0x28($t7)
/* 1C684 8001BA84 4600428D */  trunc.w.s $f10, $f8
/* 1C688 8001BA88 44195000 */  mfc1      $t9, $f10
/* 1C68C 8001BA8C 0C007C7A */  jal       func_8001F1E8
/* 1C690 8001BA90 AFB90018 */  sw        $t9, 0x18($sp)
/* 1C694 8001BA94 10000019 */  b         .L8001BAFC
/* 1C698 8001BA98 00000000 */  nop       
.L8001BA9C:
/* 1C69C 8001BA9C 8E020024 */  lw        $v0, 0x24($s0)
/* 1C6A0 8001BAA0 3C068008 */  lui       $a2, 0x8008
/* 1C6A4 8001BAA4 24C6B5A0 */  addiu     $a2, $a2, -0x4a60
/* 1C6A8 8001BAA8 C444002C */  lwc1      $f4, 0x2c($v0)
/* 1C6AC 8001BAAC C4500024 */  lwc1      $f16, 0x24($v0)
/* 1C6B0 8001BAB0 00002025 */  or        $a0, $zero, $zero
/* 1C6B4 8001BAB4 4600218D */  trunc.w.s $f6, $f4
/* 1C6B8 8001BAB8 24050064 */  addiu     $a1, $zero, 0x64
/* 1C6BC 8001BABC 4600848D */  trunc.w.s $f18, $f16
/* 1C6C0 8001BAC0 440A3000 */  mfc1      $t2, $f6
/* 1C6C4 8001BAC4 44079000 */  mfc1      $a3, $f18
/* 1C6C8 8001BAC8 0C007C7A */  jal       func_8001F1E8
/* 1C6CC 8001BACC AFAA0010 */  sw        $t2, 0x10($sp)
/* 1C6D0 8001BAD0 1000000A */  b         .L8001BAFC
/* 1C6D4 8001BAD4 00000000 */  nop       
.L8001BAD8:
/* 1C6D8 8001BAD8 8E020024 */  lw        $v0, 0x24($s0)
/* 1C6DC 8001BADC 3C068008 */  lui       $a2, 0x8008
/* 1C6E0 8001BAE0 24C6B5B0 */  addiu     $a2, $a2, -0x4a50
/* 1C6E4 8001BAE4 8C4B0048 */  lw        $t3, 0x48($v0)
/* 1C6E8 8001BAE8 94470020 */  lhu       $a3, 0x20($v0)
/* 1C6EC 8001BAEC 24050064 */  addiu     $a1, $zero, 0x64
/* 1C6F0 8001BAF0 000B6403 */  sra       $t4, $t3, 0x10
/* 1C6F4 8001BAF4 0C007C7A */  jal       func_8001F1E8
/* 1C6F8 8001BAF8 AFAC0010 */  sw        $t4, 0x10($sp)
.L8001BAFC:
/* 1C6FC 8001BAFC 0C007D11 */  jal       func_8001F444
/* 1C700 8001BB00 00000000 */  nop       
/* 1C704 8001BB04 8E0D0028 */  lw        $t5, 0x28($s0)
.L8001BB08:
/* 1C708 8001BB08 8FBF002C */  lw        $ra, 0x2c($sp)
/* 1C70C 8001BB0C 8FB00028 */  lw        $s0, 0x28($sp)
/* 1C710 8001BB10 8DA20008 */  lw        $v0, 8($t5)
/* 1C714 8001BB14 03E00008 */  jr        $ra
/* 1C718 8001BB18 27BD0030 */  addiu     $sp, $sp, 0x30
/* 1C71C 8001BB1C 00000000 */  nop       

glabel func_8001BB20
/* 1C720 8001BB20 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1C724 8001BB24 AFBF0014 */  sw        $ra, 0x14($sp)
/* 1C728 8001BB28 3C05800B */  lui       $a1, 0x800b
/* 1C72C 8001BB2C 24A5C840 */  addiu     $a1, $a1, -0x37c0
/* 1C730 8001BB30 0C00440F */  jal       func_8001103C
/* 1C734 8001BB34 00002025 */  or        $a0, $zero, $zero
/* 1C738 8001BB38 3C05800B */  lui       $a1, 0x800b
/* 1C73C 8001BB3C 24A5C858 */  addiu     $a1, $a1, -0x37a8
/* 1C740 8001BB40 0C00440F */  jal       func_8001103C
/* 1C744 8001BB44 00002025 */  or        $a0, $zero, $zero
/* 1C748 8001BB48 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1C74C 8001BB4C 27BD0018 */  addiu     $sp, $sp, 0x18
/* 1C750 8001BB50 03E00008 */  jr        $ra
/* 1C754 8001BB54 00000000 */  nop       

glabel func_8001BB58
/* 1C758 8001BB58 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1C75C 8001BB5C 3C0E8007 */  lui       $t6, 0x8007
/* 1C760 8001BB60 3C0F8007 */  lui       $t7, 0x8007
/* 1C764 8001BB64 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1C768 8001BB68 00802825 */  or        $a1, $a0, $zero
/* 1C76C 8001BB6C 25EFF064 */  addiu     $t7, $t7, -0xf9c
/* 1C770 8001BB70 25CEF05C */  addiu     $t6, $t6, -0xfa4
/* 1C774 8001BB74 3C078007 */  lui       $a3, 0x8007
/* 1C778 8001BB78 24E7F050 */  addiu     $a3, $a3, -0xfb0
/* 1C77C 8001BB7C AFAE0010 */  sw        $t6, 0x10($sp)
/* 1C780 8001BB80 AFAF0014 */  sw        $t7, 0x14($sp)
/* 1C784 8001BB84 AFA50020 */  sw        $a1, 0x20($sp)
/* 1C788 8001BB88 00002025 */  or        $a0, $zero, $zero
/* 1C78C 8001BB8C 0C00464E */  jal       func_80011938
/* 1C790 8001BB90 00003025 */  or        $a2, $zero, $zero
/* 1C794 8001BB94 3C04800B */  lui       $a0, 0x800b
/* 1C798 8001BB98 8FA50020 */  lw        $a1, 0x20($sp)
/* 1C79C 8001BB9C 0C004825 */  jal       func_80012094
/* 1C7A0 8001BBA0 2484C840 */  addiu     $a0, $a0, -0x37c0
/* 1C7A4 8001BBA4 8FA50020 */  lw        $a1, 0x20($sp)
/* 1C7A8 8001BBA8 90B80001 */  lbu       $t8, 1($a1)
/* 1C7AC 8001BBAC A0A000A6 */  sb        $zero, 0xa6($a1)
/* 1C7B0 8001BBB0 3319FFFE */  andi      $t9, $t8, 0xfffe
/* 1C7B4 8001BBB4 A0B90001 */  sb        $t9, 1($a1)
/* 1C7B8 8001BBB8 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1C7BC 8001BBBC 27BD0020 */  addiu     $sp, $sp, 0x20
/* 1C7C0 8001BBC0 03E00008 */  jr        $ra
/* 1C7C4 8001BBC4 00000000 */  nop       

glabel func_8001BBC8
/* 1C7C8 8001BBC8 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1C7CC 8001BBCC 3C0E8007 */  lui       $t6, 0x8007
/* 1C7D0 8001BBD0 3C0F8007 */  lui       $t7, 0x8007
/* 1C7D4 8001BBD4 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1C7D8 8001BBD8 AFA40020 */  sw        $a0, 0x20($sp)
/* 1C7DC 8001BBDC 25EFF064 */  addiu     $t7, $t7, -0xf9c
/* 1C7E0 8001BBE0 25CEF05C */  addiu     $t6, $t6, -0xfa4
/* 1C7E4 8001BBE4 3C078007 */  lui       $a3, 0x8007
/* 1C7E8 8001BBE8 24E7F050 */  addiu     $a3, $a3, -0xfb0
/* 1C7EC 8001BBEC AFAE0010 */  sw        $t6, 0x10($sp)
/* 1C7F0 8001BBF0 AFAF0014 */  sw        $t7, 0x14($sp)
/* 1C7F4 8001BBF4 8FA50020 */  lw        $a1, 0x20($sp)
/* 1C7F8 8001BBF8 00002025 */  or        $a0, $zero, $zero
/* 1C7FC 8001BBFC 0C00464E */  jal       func_80011938
/* 1C800 8001BC00 00003025 */  or        $a2, $zero, $zero
/* 1C804 8001BC04 3C04800B */  lui       $a0, 0x800b
/* 1C808 8001BC08 2484C858 */  addiu     $a0, $a0, -0x37a8
/* 1C80C 8001BC0C 0C004825 */  jal       func_80012094
/* 1C810 8001BC10 8FA50020 */  lw        $a1, 0x20($sp)
/* 1C814 8001BC14 8FA20020 */  lw        $v0, 0x20($sp)
/* 1C818 8001BC18 90580001 */  lbu       $t8, 1($v0)
/* 1C81C 8001BC1C 3319FFFE */  andi      $t9, $t8, 0xfffe
/* 1C820 8001BC20 A0590001 */  sb        $t9, 1($v0)
/* 1C824 8001BC24 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1C828 8001BC28 27BD0020 */  addiu     $sp, $sp, 0x20
/* 1C82C 8001BC2C 03E00008 */  jr        $ra
/* 1C830 8001BC30 00000000 */  nop       

glabel func_8001BC34
/* 1C834 8001BC34 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1C838 8001BC38 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1C83C 8001BC3C AFB00018 */  sw        $s0, 0x18($sp)
/* 1C840 8001BC40 AFA50024 */  sw        $a1, 0x24($sp)
/* 1C844 8001BC44 00808025 */  or        $s0, $a0, $zero
/* 1C848 8001BC48 AFA60028 */  sw        $a2, 0x28($sp)
/* 1C84C 8001BC4C 0C004825 */  jal       func_80012094
/* 1C850 8001BC50 00E02825 */  or        $a1, $a3, $zero
/* 1C854 8001BC54 0C003B66 */  jal       func_8000ED98
/* 1C858 8001BC58 26040060 */  addiu     $a0, $s0, 0x60
/* 1C85C 8001BC5C 87A4002A */  lh        $a0, 0x2a($sp)
/* 1C860 8001BC60 87AE0026 */  lh        $t6, 0x26($sp)
/* 1C864 8001BC64 92080002 */  lbu       $t0, 2($s0)
/* 1C868 8001BC68 92180001 */  lbu       $t8, 1($s0)
/* 1C86C 8001BC6C A60E0018 */  sh        $t6, 0x18($s0)
/* 1C870 8001BC70 310AFFFB */  andi      $t2, $t0, 0xfffb
/* 1C874 8001BC74 354C0020 */  ori       $t4, $t2, 0x20
/* 1C878 8001BC78 A20A0002 */  sb        $t2, 2($s0)
/* 1C87C 8001BC7C 358E0040 */  ori       $t6, $t4, 0x40
/* 1C880 8001BC80 37190001 */  ori       $t9, $t8, 1
/* 1C884 8001BC84 A20C0002 */  sb        $t4, 2($s0)
/* 1C888 8001BC88 31D8FFFD */  andi      $t8, $t6, 0xfffd
/* 1C88C 8001BC8C A2190001 */  sb        $t9, 1($s0)
/* 1C890 8001BC90 A20E0002 */  sb        $t6, 2($s0)
/* 1C894 8001BC94 2402FF00 */  addiu     $v0, $zero, -0x100
/* 1C898 8001BC98 2403FFFF */  addiu     $v1, $zero, -1
/* 1C89C 8001BC9C 240F00FF */  addiu     $t7, $zero, 0xff
/* 1C8A0 8001BCA0 A2180002 */  sb        $t8, 2($s0)
/* 1C8A4 8001BCA4 3319FFF7 */  andi      $t9, $t8, 0xfff7
/* 1C8A8 8001BCA8 A20F001D */  sb        $t7, 0x1d($s0)
/* 1C8AC 8001BCAC A200001C */  sb        $zero, 0x1c($s0)
/* 1C8B0 8001BCB0 AE0200A0 */  sw        $v0, 0xa0($s0)
/* 1C8B4 8001BCB4 AE02003C */  sw        $v0, 0x3c($s0)
/* 1C8B8 8001BCB8 A6030040 */  sh        $v1, 0x40($s0)
/* 1C8BC 8001BCBC AE000044 */  sw        $zero, 0x44($s0)
/* 1C8C0 8001BCC0 A6030054 */  sh        $v1, 0x54($s0)
/* 1C8C4 8001BCC4 AE000058 */  sw        $zero, 0x58($s0)
/* 1C8C8 8001BCC8 A2190002 */  sb        $t9, 2($s0)
/* 1C8CC 8001BCCC 18800003 */  blez      $a0, .L8001BCDC
/* 1C8D0 8001BCD0 A604001A */  sh        $a0, 0x1a($s0)
/* 1C8D4 8001BCD4 0C00C983 */  jal       func_8003260C
/* 1C8D8 8001BCD8 02002025 */  or        $a0, $s0, $zero
.L8001BCDC:
/* 1C8DC 8001BCDC 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1C8E0 8001BCE0 8FB00018 */  lw        $s0, 0x18($sp)
/* 1C8E4 8001BCE4 27BD0020 */  addiu     $sp, $sp, 0x20
/* 1C8E8 8001BCE8 03E00008 */  jr        $ra
/* 1C8EC 8001BCEC 00000000 */  nop       

glabel func_8001BCF0
/* 1C8F0 8001BCF0 908E0001 */  lbu       $t6, 1($a0)
/* 1C8F4 8001BCF4 AC80000C */  sw        $zero, 0xc($a0)
/* 1C8F8 8001BCF8 31CFFFFE */  andi      $t7, $t6, 0xfffe
/* 1C8FC 8001BCFC 03E00008 */  jr        $ra
/* 1C900 8001BD00 A08F0001 */  sb        $t7, 1($a0)

glabel func_8001BD04
/* 1C904 8001BD04 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1C908 8001BD08 AFBF0014 */  sw        $ra, 0x14($sp)
/* 1C90C 8001BD0C AFA40018 */  sw        $a0, 0x18($sp)
/* 1C910 8001BD10 AFA5001C */  sw        $a1, 0x1c($sp)
/* 1C914 8001BD14 8C82000C */  lw        $v0, 0xc($a0)
/* 1C918 8001BD18 00002025 */  or        $a0, $zero, $zero
/* 1C91C 8001BD1C 00002825 */  or        $a1, $zero, $zero
/* 1C920 8001BD20 8C590028 */  lw        $t9, 0x28($v0)
/* 1C924 8001BD24 0320F809 */  jalr      $t9
/* 1C928 8001BD28 00000000 */  nop       
/* 1C92C 8001BD2C 8FA3001C */  lw        $v1, 0x1c($sp)
/* 1C930 8001BD30 2401FFFF */  addiu     $at, $zero, -1
/* 1C934 8001BD34 8FA40018 */  lw        $a0, 0x18($sp)
/* 1C938 8001BD38 14610005 */  bne       $v1, $at, .L8001BD50
/* 1C93C 8001BD3C 00404025 */  or        $t0, $v0, $zero
/* 1C940 8001BD40 0C005CF3 */  jal       func_800173CC
/* 1C944 8001BD44 00000000 */  nop       
/* 1C948 8001BD48 10000010 */  b         .L8001BD8C
/* 1C94C 8001BD4C 00001025 */  or        $v0, $zero, $zero
.L8001BD50:
/* 1C950 8001BD50 904F0004 */  lbu       $t7, 4($v0)
/* 1C954 8001BD54 00032C00 */  sll       $a1, $v1, 0x10
/* 1C958 8001BD58 00052C03 */  sra       $a1, $a1, 0x10
/* 1C95C 8001BD5C 006F082A */  slt       $at, $v1, $t7
/* 1C960 8001BD60 5020000A */  beql      $at, $zero, .L8001BD8C
/* 1C964 8001BD64 00001025 */  or        $v0, $zero, $zero
/* 1C968 8001BD68 8D18000C */  lw        $t8, 0xc($t0)
/* 1C96C 8001BD6C 00034880 */  sll       $t1, $v1, 2
/* 1C970 8001BD70 3C070001 */  lui       $a3, 1
/* 1C974 8001BD74 03095021 */  addu      $t2, $t8, $t1
/* 1C978 8001BD78 0C005CF7 */  jal       func_800173DC
/* 1C97C 8001BD7C 8D460000 */  lw        $a2, ($t2)
/* 1C980 8001BD80 10000002 */  b         .L8001BD8C
/* 1C984 8001BD84 24020001 */  addiu     $v0, $zero, 1
/* 1C988 8001BD88 00001025 */  or        $v0, $zero, $zero
.L8001BD8C:
/* 1C98C 8001BD8C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1C990 8001BD90 27BD0018 */  addiu     $sp, $sp, 0x18
/* 1C994 8001BD94 03E00008 */  jr        $ra
/* 1C998 8001BD98 00000000 */  nop       

glabel func_8001BD9C
/* 1C99C 8001BD9C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1C9A0 8001BDA0 AFBF0014 */  sw        $ra, 0x14($sp)
/* 1C9A4 8001BDA4 AFA40018 */  sw        $a0, 0x18($sp)
/* 1C9A8 8001BDA8 8C82000C */  lw        $v0, 0xc($a0)
/* 1C9AC 8001BDAC 00A03825 */  or        $a3, $a1, $zero
/* 1C9B0 8001BDB0 AFA7001C */  sw        $a3, 0x1c($sp)
/* 1C9B4 8001BDB4 8C590028 */  lw        $t9, 0x28($v0)
/* 1C9B8 8001BDB8 00002825 */  or        $a1, $zero, $zero
/* 1C9BC 8001BDBC 00002025 */  or        $a0, $zero, $zero
/* 1C9C0 8001BDC0 0320F809 */  jalr      $t9
/* 1C9C4 8001BDC4 00000000 */  nop       
/* 1C9C8 8001BDC8 8FA7001C */  lw        $a3, 0x1c($sp)
/* 1C9CC 8001BDCC 2401FFFF */  addiu     $at, $zero, -1
/* 1C9D0 8001BDD0 8FA40018 */  lw        $a0, 0x18($sp)
/* 1C9D4 8001BDD4 14E10005 */  bne       $a3, $at, .L8001BDEC
/* 1C9D8 8001BDD8 00401825 */  or        $v1, $v0, $zero
/* 1C9DC 8001BDDC 0C005DE2 */  jal       func_80017788
/* 1C9E0 8001BDE0 00000000 */  nop       
/* 1C9E4 8001BDE4 1000000F */  b         .L8001BE24
/* 1C9E8 8001BDE8 00001025 */  or        $v0, $zero, $zero
.L8001BDEC:
/* 1C9EC 8001BDEC 904F0005 */  lbu       $t7, 5($v0)
/* 1C9F0 8001BDF0 00072C00 */  sll       $a1, $a3, 0x10
/* 1C9F4 8001BDF4 00EF082A */  slt       $at, $a3, $t7
/* 1C9F8 8001BDF8 5020000A */  beql      $at, $zero, .L8001BE24
/* 1C9FC 8001BDFC 00001025 */  or        $v0, $zero, $zero
/* 1CA00 8001BE00 8C780010 */  lw        $t8, 0x10($v1)
/* 1CA04 8001BE04 00074080 */  sll       $t0, $a3, 2
/* 1CA08 8001BE08 00052C03 */  sra       $a1, $a1, 0x10
/* 1CA0C 8001BE0C 03084821 */  addu      $t1, $t8, $t0
/* 1CA10 8001BE10 0C005DE6 */  jal       func_80017798
/* 1CA14 8001BE14 8D260000 */  lw        $a2, ($t1)
/* 1CA18 8001BE18 10000002 */  b         .L8001BE24
/* 1CA1C 8001BE1C 24020001 */  addiu     $v0, $zero, 1
/* 1CA20 8001BE20 00001025 */  or        $v0, $zero, $zero
.L8001BE24:
/* 1CA24 8001BE24 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1CA28 8001BE28 27BD0018 */  addiu     $sp, $sp, 0x18
/* 1CA2C 8001BE2C 03E00008 */  jr        $ra
/* 1CA30 8001BE30 00000000 */  nop       

glabel func_8001BE34
/* 1CA34 8001BE34 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 1CA38 8001BE38 93AE0033 */  lbu       $t6, 0x33($sp)
/* 1CA3C 8001BE3C AFBF001C */  sw        $ra, 0x1c($sp)
/* 1CA40 8001BE40 AFA40020 */  sw        $a0, 0x20($sp)
/* 1CA44 8001BE44 AFA50024 */  sw        $a1, 0x24($sp)
/* 1CA48 8001BE48 AFA60028 */  sw        $a2, 0x28($sp)
/* 1CA4C 8001BE4C AFA7002C */  sw        $a3, 0x2c($sp)
/* 1CA50 8001BE50 30E700FF */  andi      $a3, $a3, 0xff
/* 1CA54 8001BE54 30C600FF */  andi      $a2, $a2, 0xff
/* 1CA58 8001BE58 30A500FF */  andi      $a1, $a1, 0xff
/* 1CA5C 8001BE5C 248400A0 */  addiu     $a0, $a0, 0xa0
/* 1CA60 8001BE60 0C003A10 */  jal       func_8000E840
/* 1CA64 8001BE64 AFAE0010 */  sw        $t6, 0x10($sp)
/* 1CA68 8001BE68 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1CA6C 8001BE6C 27BD0020 */  addiu     $sp, $sp, 0x20
/* 1CA70 8001BE70 03E00008 */  jr        $ra
/* 1CA74 8001BE74 00000000 */  nop       

glabel func_8001BE78
/* 1CA78 8001BE78 AFA50004 */  sw        $a1, 4($sp)
/* 1CA7C 8001BE7C 03E00008 */  jr        $ra
/* 1CA80 8001BE80 A085001D */  sb        $a1, 0x1d($a0)

glabel func_8001BE84
/* 1CA84 8001BE84 AFA50004 */  sw        $a1, 4($sp)
/* 1CA88 8001BE88 03E00008 */  jr        $ra
/* 1CA8C 8001BE8C A085001C */  sb        $a1, 0x1c($a0)

glabel func_8001BE90
/* 1CA90 8001BE90 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1CA94 8001BE94 AFBF0014 */  sw        $ra, 0x14($sp)
/* 1CA98 8001BE98 00803025 */  or        $a2, $a0, $zero
/* 1CA9C 8001BE9C 00A03825 */  or        $a3, $a1, $zero
/* 1CAA0 8001BEA0 14800003 */  bnez      $a0, .L8001BEB0
/* 1CAA4 8001BEA4 00001825 */  or        $v1, $zero, $zero
/* 1CAA8 8001BEA8 3C068007 */  lui       $a2, 0x8007
/* 1CAAC 8001BEAC 8CC6F09C */  lw        $a2, -0xf64($a2)
.L8001BEB0:
/* 1CAB0 8001BEB0 50C00009 */  beql      $a2, $zero, .L8001BED8
/* 1CAB4 8001BEB4 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1CAB8 8001BEB8 8CC2000C */  lw        $v0, 0xc($a2)
/* 1CABC 8001BEBC 00E02025 */  or        $a0, $a3, $zero
/* 1CAC0 8001BEC0 00002825 */  or        $a1, $zero, $zero
/* 1CAC4 8001BEC4 8C590028 */  lw        $t9, 0x28($v0)
/* 1CAC8 8001BEC8 0320F809 */  jalr      $t9
/* 1CACC 8001BECC 00000000 */  nop       
/* 1CAD0 8001BED0 00401825 */  or        $v1, $v0, $zero
/* 1CAD4 8001BED4 8FBF0014 */  lw        $ra, 0x14($sp)
.L8001BED8:
/* 1CAD8 8001BED8 27BD0018 */  addiu     $sp, $sp, 0x18
/* 1CADC 8001BEDC 00601025 */  or        $v0, $v1, $zero
/* 1CAE0 8001BEE0 03E00008 */  jr        $ra
/* 1CAE4 8001BEE4 00000000 */  nop       

glabel func_8001BEE8
/* 1CAE8 8001BEE8 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 1CAEC 8001BEEC AFBF0014 */  sw        $ra, 0x14($sp)
/* 1CAF0 8001BEF0 AFA40048 */  sw        $a0, 0x48($sp)
/* 1CAF4 8001BEF4 90AE0000 */  lbu       $t6, ($a1)
/* 1CAF8 8001BEF8 3C198007 */  lui       $t9, 0x8007
/* 1CAFC 8001BEFC 2739FF00 */  addiu     $t9, $t9, -0x100
/* 1CB00 8001BF00 000E78C0 */  sll       $t7, $t6, 3
/* 1CB04 8001BF04 01EE7823 */  subu      $t7, $t7, $t6
/* 1CB08 8001BF08 000F7880 */  sll       $t7, $t7, 2
/* 1CB0C 8001BF0C 25F8FFE4 */  addiu     $t8, $t7, -0x1c
/* 1CB10 8001BF10 03194021 */  addu      $t0, $t8, $t9
/* 1CB14 8001BF14 00A03025 */  or        $a2, $a1, $zero
/* 1CB18 8001BF18 AFA80030 */  sw        $t0, 0x30($sp)
/* 1CB1C 8001BF1C AFA00034 */  sw        $zero, 0x34($sp)
/* 1CB20 8001BF20 90A50000 */  lbu       $a1, ($a1)
/* 1CB24 8001BF24 AFA6004C */  sw        $a2, 0x4c($sp)
/* 1CB28 8001BF28 0C008729 */  jal       func_80021CA4
/* 1CB2C 8001BF2C 27A40038 */  addiu     $a0, $sp, 0x38
/* 1CB30 8001BF30 8FA6004C */  lw        $a2, 0x4c($sp)
/* 1CB34 8001BF34 27A50038 */  addiu     $a1, $sp, 0x38
/* 1CB38 8001BF38 24C70030 */  addiu     $a3, $a2, 0x30
/* 1CB3C 8001BF3C 00E02025 */  or        $a0, $a3, $zero
/* 1CB40 8001BF40 0C00296E */  jal       func_8000A5B8
/* 1CB44 8001BF44 AFA70020 */  sw        $a3, 0x20($sp)
/* 1CB48 8001BF48 8FA6004C */  lw        $a2, 0x4c($sp)
/* 1CB4C 8001BF4C 10400029 */  beqz      $v0, .L8001BFF4
/* 1CB50 8001BF50 8FA70020 */  lw        $a3, 0x20($sp)
/* 1CB54 8001BF54 94CB000E */  lhu       $t3, 0xe($a2)
/* 1CB58 8001BF58 80CC0030 */  lb        $t4, 0x30($a2)
/* 1CB5C 8001BF5C 00E01825 */  or        $v1, $a3, $zero
/* 1CB60 8001BF60 000B5203 */  sra       $t2, $t3, 8
/* 1CB64 8001BF64 014B2021 */  addu      $a0, $t2, $t3
/* 1CB68 8001BF68 11800008 */  beqz      $t4, .L8001BF8C
/* 1CB6C 8001BF6C 308400FF */  andi      $a0, $a0, 0xff
/* 1CB70 8001BF70 80E20000 */  lb        $v0, ($a3)
.L8001BF74:
/* 1CB74 8001BF74 00406825 */  or        $t5, $v0, $zero
/* 1CB78 8001BF78 80620001 */  lb        $v0, 1($v1)
/* 1CB7C 8001BF7C 008D2021 */  addu      $a0, $a0, $t5
/* 1CB80 8001BF80 24630001 */  addiu     $v1, $v1, 1
/* 1CB84 8001BF84 1440FFFB */  bnez      $v0, .L8001BF74
/* 1CB88 8001BF88 308400FF */  andi      $a0, $a0, 0xff
.L8001BF8C:
/* 1CB8C 8001BF8C 80CE003B */  lb        $t6, 0x3b($a2)
/* 1CB90 8001BF90 24C3003B */  addiu     $v1, $a2, 0x3b
/* 1CB94 8001BF94 51C00009 */  beql      $t6, $zero, .L8001BFBC
/* 1CB98 8001BF98 8FA30030 */  lw        $v1, 0x30($sp)
/* 1CB9C 8001BF9C 80620000 */  lb        $v0, ($v1)
.L8001BFA0:
/* 1CBA0 8001BFA0 00407825 */  or        $t7, $v0, $zero
/* 1CBA4 8001BFA4 80620001 */  lb        $v0, 1($v1)
/* 1CBA8 8001BFA8 008F2021 */  addu      $a0, $a0, $t7
/* 1CBAC 8001BFAC 24630001 */  addiu     $v1, $v1, 1
/* 1CBB0 8001BFB0 1440FFFB */  bnez      $v0, .L8001BFA0
/* 1CBB4 8001BFB4 308400FF */  andi      $a0, $a0, 0xff
/* 1CBB8 8001BFB8 8FA30030 */  lw        $v1, 0x30($sp)
.L8001BFBC:
/* 1CBBC 8001BFBC 240100FF */  addiu     $at, $zero, 0xff
/* 1CBC0 8001BFC0 84620010 */  lh        $v0, 0x10($v1)
/* 1CBC4 8001BFC4 84780012 */  lh        $t8, 0x12($v1)
/* 1CBC8 8001BFC8 00025980 */  sll       $t3, $v0, 6
/* 1CBCC 8001BFCC 0302C823 */  subu      $t9, $t8, $v0
/* 1CBD0 8001BFD0 00194180 */  sll       $t0, $t9, 6
/* 1CBD4 8001BFD4 01040019 */  multu     $t0, $a0
/* 1CBD8 8001BFD8 00004812 */  mflo      $t1
/* 1CBDC 8001BFDC 00000000 */  nop       
/* 1CBE0 8001BFE0 00000000 */  nop       
/* 1CBE4 8001BFE4 0121001A */  div       $zero, $t1, $at
/* 1CBE8 8001BFE8 00005012 */  mflo      $t2
/* 1CBEC 8001BFEC 014B6021 */  addu      $t4, $t2, $t3
/* 1CBF0 8001BFF0 A7AC0034 */  sh        $t4, 0x34($sp)
.L8001BFF4:
/* 1CBF4 8001BFF4 27AD0034 */  addiu     $t5, $sp, 0x34
/* 1CBF8 8001BFF8 8FA20048 */  lw        $v0, 0x48($sp)
/* 1CBFC 8001BFFC 8DAF0000 */  lw        $t7, ($t5)
/* 1CC00 8001C000 AC4F0000 */  sw        $t7, ($v0)
/* 1CC04 8001C004 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1CC08 8001C008 27BD0048 */  addiu     $sp, $sp, 0x48
/* 1CC0C 8001C00C 03E00008 */  jr        $ra
/* 1CC10 8001C010 00000000 */  nop       

glabel func_8001C014
/* 1CC14 8001C014 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 1CC18 8001C018 AFA60078 */  sw        $a2, 0x78($sp)
/* 1CC1C 8001C01C 97AE007A */  lhu       $t6, 0x7a($sp)
/* 1CC20 8001C020 AFBF0014 */  sw        $ra, 0x14($sp)
/* 1CC24 8001C024 AFA40070 */  sw        $a0, 0x70($sp)
/* 1CC28 8001C028 A3AE001C */  sb        $t6, 0x1c($sp)
/* 1CC2C 8001C02C 94AF0002 */  lhu       $t7, 2($a1)
/* 1CC30 8001C030 00A03825 */  or        $a3, $a1, $zero
/* 1CC34 8001C034 24A40004 */  addiu     $a0, $a1, 4
/* 1CC38 8001C038 27A5004C */  addiu     $a1, $sp, 0x4c
/* 1CC3C 8001C03C AFA70074 */  sw        $a3, 0x74($sp)
/* 1CC40 8001C040 24060010 */  addiu     $a2, $zero, 0x10
/* 1CC44 8001C044 0C018958 */  jal       func_80062560
/* 1CC48 8001C048 A7AF002A */  sh        $t7, 0x2a($sp)
/* 1CC4C 8001C04C 8FA70074 */  lw        $a3, 0x74($sp)
/* 1CC50 8001C050 27A50057 */  addiu     $a1, $sp, 0x57
/* 1CC54 8001C054 24060010 */  addiu     $a2, $zero, 0x10
/* 1CC58 8001C058 0C018958 */  jal       func_80062560
/* 1CC5C 8001C05C 24E40014 */  addiu     $a0, $a3, 0x14
/* 1CC60 8001C060 8FA40070 */  lw        $a0, 0x70($sp)
/* 1CC64 8001C064 0C006FBA */  jal       func_8001BEE8
/* 1CC68 8001C068 27A5001C */  addiu     $a1, $sp, 0x1c
/* 1CC6C 8001C06C 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1CC70 8001C070 27BD0070 */  addiu     $sp, $sp, 0x70
/* 1CC74 8001C074 03E00008 */  jr        $ra
/* 1CC78 8001C078 00000000 */  nop       

glabel func_8001C07C
/* 1CC7C 8001C07C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 1CC80 8001C080 AFBF001C */  sw        $ra, 0x1c($sp)
/* 1CC84 8001C084 AFB00018 */  sw        $s0, 0x18($sp)
/* 1CC88 8001C088 848E0002 */  lh        $t6, 2($a0)
/* 1CC8C 8001C08C AFA0002C */  sw        $zero, 0x2c($sp)
/* 1CC90 8001C090 00808025 */  or        $s0, $a0, $zero
/* 1CC94 8001C094 A7AE002A */  sh        $t6, 0x2a($sp)
/* 1CC98 8001C098 90820000 */  lbu       $v0, ($a0)
/* 1CC9C 8001C09C 304F0040 */  andi      $t7, $v0, 0x40
/* 1CCA0 8001C0A0 15E00038 */  bnez      $t7, .L8001C184
/* 1CCA4 8001C0A4 30580080 */  andi      $t8, $v0, 0x80
/* 1CCA8 8001C0A8 53000037 */  beql      $t8, $zero, .L8001C188
/* 1CCAC 8001C0AC 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1CCB0 8001C0B0 8C850004 */  lw        $a1, 4($a0)
/* 1CCB4 8001C0B4 87B9002A */  lh        $t9, 0x2a($sp)
/* 1CCB8 8001C0B8 50A00012 */  beql      $a1, $zero, .L8001C104
/* 1CCBC 8001C0BC 8E0E0010 */  lw        $t6, 0x10($s0)
/* 1CCC0 8001C0C0 90A80000 */  lbu       $t0, ($a1)
/* 1CCC4 8001C0C4 5728000F */  bnel      $t9, $t0, .L8001C104
/* 1CCC8 8001C0C8 8E0E0010 */  lw        $t6, 0x10($s0)
/* 1CCCC 8001C0CC 0C006FBA */  jal       func_8001BEE8
/* 1CCD0 8001C0D0 27A4002C */  addiu     $a0, $sp, 0x2c
/* 1CCD4 8001C0D4 87A9002A */  lh        $t1, 0x2a($sp)
/* 1CCD8 8001C0D8 24010019 */  addiu     $at, $zero, 0x19
/* 1CCDC 8001C0DC 55210009 */  bnel      $t1, $at, .L8001C104
/* 1CCE0 8001C0E0 8E0E0010 */  lw        $t6, 0x10($s0)
/* 1CCE4 8001C0E4 8E0A0004 */  lw        $t2, 4($s0)
/* 1CCE8 8001C0E8 240D0099 */  addiu     $t5, $zero, 0x99
/* 1CCEC 8001C0EC 914B0052 */  lbu       $t3, 0x52($t2)
/* 1CCF0 8001C0F0 316C0080 */  andi      $t4, $t3, 0x80
/* 1CCF4 8001C0F4 51800003 */  beql      $t4, $zero, .L8001C104
/* 1CCF8 8001C0F8 8E0E0010 */  lw        $t6, 0x10($s0)
/* 1CCFC 8001C0FC A7AD002A */  sh        $t5, 0x2a($sp)
/* 1CD00 8001C100 8E0E0010 */  lw        $t6, 0x10($s0)
.L8001C104:
/* 1CD04 8001C104 91CF0000 */  lbu       $t7, ($t6)
/* 1CD08 8001C108 31F80004 */  andi      $t8, $t7, 4
/* 1CD0C 8001C10C 5700000A */  bnel      $t8, $zero, .L8001C138
/* 1CD10 8001C110 8FA6002C */  lw        $a2, 0x2c($sp)
/* 1CD14 8001C114 0C000724 */  jal       func_80001C90
/* 1CD18 8001C118 00000000 */  nop       
/* 1CD1C 8001C11C 54400006 */  bnel      $v0, $zero, .L8001C138
/* 1CD20 8001C120 8FA6002C */  lw        $a2, 0x2c($sp)
.L8001C124:
/* 1CD24 8001C124 0C000724 */  jal       func_80001C90
/* 1CD28 8001C128 00000000 */  nop       
/* 1CD2C 8001C12C 1040FFFD */  beqz      $v0, .L8001C124
/* 1CD30 8001C130 00000000 */  nop       
/* 1CD34 8001C134 8FA6002C */  lw        $a2, 0x2c($sp)
.L8001C138:
/* 1CD38 8001C138 8E040010 */  lw        $a0, 0x10($s0)
/* 1CD3C 8001C13C 97A5002A */  lhu       $a1, 0x2a($sp)
/* 1CD40 8001C140 0C006639 */  jal       func_800198E4
/* 1CD44 8001C144 AFA60008 */  sw        $a2, 8($sp)
/* 1CD48 8001C148 92080000 */  lbu       $t0, ($s0)
/* 1CD4C 8001C14C 350A0040 */  ori       $t2, $t0, 0x40
/* 1CD50 8001C150 314CFFEF */  andi      $t4, $t2, 0xffef
/* 1CD54 8001C154 A20A0000 */  sb        $t2, ($s0)
/* 1CD58 8001C158 318D0020 */  andi      $t5, $t4, 0x20
/* 1CD5C 8001C15C 11A00009 */  beqz      $t5, .L8001C184
/* 1CD60 8001C160 A20C0000 */  sb        $t4, ($s0)
/* 1CD64 8001C164 0C00672A */  jal       func_80019CA8
/* 1CD68 8001C168 8E040010 */  lw        $a0, 0x10($s0)
/* 1CD6C 8001C16C 8E0E0010 */  lw        $t6, 0x10($s0)
/* 1CD70 8001C170 92180000 */  lbu       $t8, ($s0)
/* 1CD74 8001C174 8DCF0024 */  lw        $t7, 0x24($t6)
/* 1CD78 8001C178 3319FF1F */  andi      $t9, $t8, 0xff1f
/* 1CD7C 8001C17C A2190000 */  sb        $t9, ($s0)
/* 1CD80 8001C180 AE0F0014 */  sw        $t7, 0x14($s0)
.L8001C184:
/* 1CD84 8001C184 8FBF001C */  lw        $ra, 0x1c($sp)
.L8001C188:
/* 1CD88 8001C188 8FB00018 */  lw        $s0, 0x18($sp)
/* 1CD8C 8001C18C 27BD0030 */  addiu     $sp, $sp, 0x30
/* 1CD90 8001C190 03E00008 */  jr        $ra
/* 1CD94 8001C194 00000000 */  nop       

glabel func_8001C198
/* 1CD98 8001C198 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1CD9C 8001C19C AFBF0014 */  sw        $ra, 0x14($sp)
/* 1CDA0 8001C1A0 00802825 */  or        $a1, $a0, $zero
/* 1CDA4 8001C1A4 8C840010 */  lw        $a0, 0x10($a0)
/* 1CDA8 8001C1A8 0C006702 */  jal       func_80019C08
/* 1CDAC 8001C1AC AFA50018 */  sw        $a1, 0x18($sp)
/* 1CDB0 8001C1B0 10400009 */  beqz      $v0, .L8001C1D8
/* 1CDB4 8001C1B4 8FA50018 */  lw        $a1, 0x18($sp)
/* 1CDB8 8001C1B8 8CAE0010 */  lw        $t6, 0x10($a1)
/* 1CDBC 8001C1BC 90B80000 */  lbu       $t8, ($a1)
/* 1CDC0 8001C1C0 8DCF0024 */  lw        $t7, 0x24($t6)
/* 1CDC4 8001C1C4 3308FF1F */  andi      $t0, $t8, 0xff1f
/* 1CDC8 8001C1C8 A0A80000 */  sb        $t0, ($a1)
/* 1CDCC 8001C1CC 35090010 */  ori       $t1, $t0, 0x10
/* 1CDD0 8001C1D0 A0A90000 */  sb        $t1, ($a1)
/* 1CDD4 8001C1D4 ACAF0014 */  sw        $t7, 0x14($a1)
.L8001C1D8:
/* 1CDD8 8001C1D8 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1CDDC 8001C1DC 27BD0018 */  addiu     $sp, $sp, 0x18
/* 1CDE0 8001C1E0 03E00008 */  jr        $ra
/* 1CDE4 8001C1E4 00000000 */  nop       

glabel func_8001C1E8
/* 1CDE8 8001C1E8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1CDEC 8001C1EC AFBF0014 */  sw        $ra, 0x14($sp)
/* 1CDF0 8001C1F0 908E0000 */  lbu       $t6, ($a0)
/* 1CDF4 8001C1F4 00802825 */  or        $a1, $a0, $zero
/* 1CDF8 8001C1F8 31CF0040 */  andi      $t7, $t6, 0x40
/* 1CDFC 8001C1FC 51E0000F */  beql      $t7, $zero, .L8001C23C
/* 1CE00 8001C200 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1CE04 8001C204 8C840010 */  lw        $a0, 0x10($a0)
/* 1CE08 8001C208 0C00672A */  jal       func_80019CA8
/* 1CE0C 8001C20C AFA50018 */  sw        $a1, 0x18($sp)
/* 1CE10 8001C210 10400009 */  beqz      $v0, .L8001C238
/* 1CE14 8001C214 8FA50018 */  lw        $a1, 0x18($sp)
/* 1CE18 8001C218 8CB80010 */  lw        $t8, 0x10($a1)
/* 1CE1C 8001C21C 90A80000 */  lbu       $t0, ($a1)
/* 1CE20 8001C220 8F190024 */  lw        $t9, 0x24($t8)
/* 1CE24 8001C224 310AFF1F */  andi      $t2, $t0, 0xff1f
/* 1CE28 8001C228 A0AA0000 */  sb        $t2, ($a1)
/* 1CE2C 8001C22C 354B0010 */  ori       $t3, $t2, 0x10
/* 1CE30 8001C230 A0AB0000 */  sb        $t3, ($a1)
/* 1CE34 8001C234 ACB90014 */  sw        $t9, 0x14($a1)
.L8001C238:
/* 1CE38 8001C238 8FBF0014 */  lw        $ra, 0x14($sp)
.L8001C23C:
/* 1CE3C 8001C23C 27BD0018 */  addiu     $sp, $sp, 0x18
/* 1CE40 8001C240 03E00008 */  jr        $ra
/* 1CE44 8001C244 00000000 */  nop       

glabel func_8001C248
/* 1CE48 8001C248 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1CE4C 8001C24C AFBF0014 */  sw        $ra, 0x14($sp)
/* 1CE50 8001C250 9082001D */  lbu       $v0, 0x1d($a0)
/* 1CE54 8001C254 00803825 */  or        $a3, $a0, $zero
/* 1CE58 8001C258 304E0040 */  andi      $t6, $v0, 0x40
/* 1CE5C 8001C25C 15C0001A */  bnez      $t6, .L8001C2C8
/* 1CE60 8001C260 304F0080 */  andi      $t7, $v0, 0x80
/* 1CE64 8001C264 51E00019 */  beql      $t7, $zero, .L8001C2CC
/* 1CE68 8001C268 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1CE6C 8001C26C 8C840010 */  lw        $a0, 0x10($a0)
/* 1CE70 8001C270 8CE50020 */  lw        $a1, 0x20($a3)
/* 1CE74 8001C274 8CE60024 */  lw        $a2, 0x24($a3)
/* 1CE78 8001C278 0C00669F */  jal       func_80019A7C
/* 1CE7C 8001C27C AFA70018 */  sw        $a3, 0x18($sp)
/* 1CE80 8001C280 8FA70018 */  lw        $a3, 0x18($sp)
/* 1CE84 8001C284 90F8001D */  lbu       $t8, 0x1d($a3)
/* 1CE88 8001C288 37080040 */  ori       $t0, $t8, 0x40
/* 1CE8C 8001C28C 310AFFEF */  andi      $t2, $t0, 0xffef
/* 1CE90 8001C290 314B0020 */  andi      $t3, $t2, 0x20
/* 1CE94 8001C294 A0E8001D */  sb        $t0, 0x1d($a3)
/* 1CE98 8001C298 1160000B */  beqz      $t3, .L8001C2C8
/* 1CE9C 8001C29C A0EA001D */  sb        $t2, 0x1d($a3)
/* 1CEA0 8001C2A0 8CE40010 */  lw        $a0, 0x10($a3)
/* 1CEA4 8001C2A4 0C006738 */  jal       func_80019CE0
/* 1CEA8 8001C2A8 AFA70018 */  sw        $a3, 0x18($sp)
/* 1CEAC 8001C2AC 8FA70018 */  lw        $a3, 0x18($sp)
/* 1CEB0 8001C2B0 8CEC0010 */  lw        $t4, 0x10($a3)
/* 1CEB4 8001C2B4 90EE001D */  lbu       $t6, 0x1d($a3)
/* 1CEB8 8001C2B8 8D8D0028 */  lw        $t5, 0x28($t4)
/* 1CEBC 8001C2BC 31CFFF1F */  andi      $t7, $t6, 0xff1f
/* 1CEC0 8001C2C0 A0EF001D */  sb        $t7, 0x1d($a3)
/* 1CEC4 8001C2C4 ACED0024 */  sw        $t5, 0x24($a3)
.L8001C2C8:
/* 1CEC8 8001C2C8 8FBF0014 */  lw        $ra, 0x14($sp)
.L8001C2CC:
/* 1CECC 8001C2CC 27BD0018 */  addiu     $sp, $sp, 0x18
/* 1CED0 8001C2D0 03E00008 */  jr        $ra
/* 1CED4 8001C2D4 00000000 */  nop       

glabel func_8001C2D8
/* 1CED8 8001C2D8 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 1CEDC 8001C2DC AFBF0014 */  sw        $ra, 0x14($sp)
/* 1CEE0 8001C2E0 00802825 */  or        $a1, $a0, $zero
/* 1CEE4 8001C2E4 8C840010 */  lw        $a0, 0x10($a0)
/* 1CEE8 8001C2E8 0C006716 */  jal       func_80019C58
/* 1CEEC 8001C2EC AFA50018 */  sw        $a1, 0x18($sp)
/* 1CEF0 8001C2F0 10400009 */  beqz      $v0, .L8001C318
/* 1CEF4 8001C2F4 8FA50018 */  lw        $a1, 0x18($sp)
/* 1CEF8 8001C2F8 8CAE0010 */  lw        $t6, 0x10($a1)
/* 1CEFC 8001C2FC 90B8001D */  lbu       $t8, 0x1d($a1)
/* 1CF00 8001C300 8DCF0028 */  lw        $t7, 0x28($t6)
/* 1CF04 8001C304 3308FF1F */  andi      $t0, $t8, 0xff1f
/* 1CF08 8001C308 A0A8001D */  sb        $t0, 0x1d($a1)
/* 1CF0C 8001C30C 35090010 */  ori       $t1, $t0, 0x10
/* 1CF10 8001C310 A0A9001D */  sb        $t1, 0x1d($a1)
/* 1CF14 8001C314 ACAF0024 */  sw        $t7, 0x24($a1)
.L8001C318:
/* 1CF18 8001C318 8FBF0014 */  lw        $ra, 0x14($sp)
/* 1CF1C 8001C31C 27BD0018 */  addiu     $sp, $sp, 0x18
/* 1CF20 8001C320 03E00008 */  jr        $ra
/* 1CF24 8001C324 00000000 */  nop       
/* 1CF28 8001C328 00000000 */  nop       
/* 1CF2C 8001C32C 00000000 */  nop       
