.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_8005C150
/* 5CD50 8005C150 27BDFFF0 */  addiu     $sp, $sp, -0x10
/* 5CD54 8005C154 3C0E0040 */  lui       $t6, 0x40
/* 5CD58 8005C158 AFAE0008 */  sw        $t6, 8($sp)
.L8005C15C:
/* 5CD5C 8005C15C 8FAF0008 */  lw        $t7, 8($sp)
/* 5CD60 8005C160 3C01A000 */  lui       $at, 0xa000
/* 5CD64 8005C164 3C19A000 */  lui       $t9, 0xa000
/* 5CD68 8005C168 01E1C021 */  addu      $t8, $t7, $at
/* 5CD6C 8005C16C AFB8000C */  sw        $t8, 0xc($sp)
/* 5CD70 8005C170 032FC821 */  addu      $t9, $t9, $t7
/* 5CD74 8005C174 8F390000 */  lw        $t9, ($t9)
/* 5CD78 8005C178 3C08A010 */  lui       $t0, 0xa010
/* 5CD7C 8005C17C 010F4021 */  addu      $t0, $t0, $t7
/* 5CD80 8005C180 AFB90004 */  sw        $t9, 4($sp)
/* 5CD84 8005C184 8D08FFFC */  lw        $t0, -4($t0)
/* 5CD88 8005C188 3C09A000 */  lui       $t1, 0xa000
/* 5CD8C 8005C18C 012F4821 */  addu      $t1, $t1, $t7
/* 5CD90 8005C190 AFA80000 */  sw        $t0, ($sp)
/* 5CD94 8005C194 8D290000 */  lw        $t1, ($t1)
/* 5CD98 8005C198 2401FFFF */  addiu     $at, $zero, -1
/* 5CD9C 8005C19C 3C0C0010 */  lui       $t4, 0x10
/* 5CDA0 8005C1A0 01215026 */  xor       $t2, $t1, $at
/* 5CDA4 8005C1A4 3C01A000 */  lui       $at, 0xa000
/* 5CDA8 8005C1A8 002F0821 */  addu      $at, $at, $t7
/* 5CDAC 8005C1AC AC2A0000 */  sw        $t2, ($at)
/* 5CDB0 8005C1B0 8FAB000C */  lw        $t3, 0xc($sp)
/* 5CDB4 8005C1B4 2401FFFF */  addiu     $at, $zero, -1
/* 5CDB8 8005C1B8 018B6021 */  addu      $t4, $t4, $t3
/* 5CDBC 8005C1BC 8D8CFFFC */  lw        $t4, -4($t4)
/* 5CDC0 8005C1C0 01816826 */  xor       $t5, $t4, $at
/* 5CDC4 8005C1C4 3C010010 */  lui       $at, 0x10
/* 5CDC8 8005C1C8 002B0821 */  addu      $at, $at, $t3
/* 5CDCC 8005C1CC AC2DFFFC */  sw        $t5, -4($at)
/* 5CDD0 8005C1D0 8FAE000C */  lw        $t6, 0xc($sp)
/* 5CDD4 8005C1D4 8FB90004 */  lw        $t9, 4($sp)
/* 5CDD8 8005C1D8 2401FFFF */  addiu     $at, $zero, -1
/* 5CDDC 8005C1DC 8DD80000 */  lw        $t8, ($t6)
/* 5CDE0 8005C1E0 03214026 */  xor       $t0, $t9, $at
/* 5CDE4 8005C1E4 17080009 */  bne       $t8, $t0, .L8005C20C
/* 5CDE8 8005C1E8 00000000 */  nop       
/* 5CDEC 8005C1EC 3C090010 */  lui       $t1, 0x10
/* 5CDF0 8005C1F0 8FAA0000 */  lw        $t2, ($sp)
/* 5CDF4 8005C1F4 012E4821 */  addu      $t1, $t1, $t6
/* 5CDF8 8005C1F8 8D29FFFC */  lw        $t1, -4($t1)
/* 5CDFC 8005C1FC 2401FFFF */  addiu     $at, $zero, -1
/* 5CE00 8005C200 01417826 */  xor       $t7, $t2, $at
/* 5CE04 8005C204 112F0003 */  beq       $t1, $t7, .L8005C214
/* 5CE08 8005C208 00000000 */  nop       
.L8005C20C:
/* 5CE0C 8005C20C 10000013 */  b         .L8005C25C
/* 5CE10 8005C210 8FA20008 */  lw        $v0, 8($sp)
.L8005C214:
/* 5CE14 8005C214 8FAC0004 */  lw        $t4, 4($sp)
/* 5CE18 8005C218 8FAD000C */  lw        $t5, 0xc($sp)
/* 5CE1C 8005C21C 3C010010 */  lui       $at, 0x10
/* 5CE20 8005C220 ADAC0000 */  sw        $t4, ($t5)
/* 5CE24 8005C224 8FB9000C */  lw        $t9, 0xc($sp)
/* 5CE28 8005C228 8FAB0000 */  lw        $t3, ($sp)
/* 5CE2C 8005C22C 00390821 */  addu      $at, $at, $t9
/* 5CE30 8005C230 AC2BFFFC */  sw        $t3, -4($at)
/* 5CE34 8005C234 8FB80008 */  lw        $t8, 8($sp)
/* 5CE38 8005C238 3C010010 */  lui       $at, 0x10
/* 5CE3C 8005C23C 03014021 */  addu      $t0, $t8, $at
/* 5CE40 8005C240 AFA80008 */  sw        $t0, 8($sp)
/* 5CE44 8005C244 8FAE0008 */  lw        $t6, 8($sp)
/* 5CE48 8005C248 3C010080 */  lui       $at, 0x80
/* 5CE4C 8005C24C 01C1082B */  sltu      $at, $t6, $at
/* 5CE50 8005C250 1420FFC2 */  bnez      $at, .L8005C15C
/* 5CE54 8005C254 00000000 */  nop       
/* 5CE58 8005C258 8FA20008 */  lw        $v0, 8($sp)
.L8005C25C:
/* 5CE5C 8005C25C 03E00008 */  jr        $ra
/* 5CE60 8005C260 27BD0010 */  addiu     $sp, $sp, 0x10
/* 5CE64 8005C264 00000000 */  nop       
/* 5CE68 8005C268 00000000 */  nop       
/* 5CE6C 8005C26C 00000000 */  nop       
