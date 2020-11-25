.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004FD90
/* 50990 8004FD90 3C0E8008 */  lui        $t6, %hi(D_80078584)
/* 50994 8004FD94 8DCE8584 */  lw         $t6, %lo(D_80078584)($t6)
/* 50998 8004FD98 03E00008 */  jr         $ra
/* 5099C 8004FD9C ADC00000 */   sw        $zero, ($t6)

glabel func_8004FDA0
/* 509A0 8004FDA0 3C0E8008 */  lui        $t6, %hi(D_80078584)
/* 509A4 8004FDA4 8DCE8584 */  lw         $t6, %lo(D_80078584)($t6)
/* 509A8 8004FDA8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 509AC 8004FDAC AFBF0014 */  sw         $ra, 0x14($sp)
/* 509B0 8004FDB0 AFA40020 */  sw         $a0, 0x20($sp)
/* 509B4 8004FDB4 8DCF0034 */  lw         $t7, 0x34($t6)
/* 509B8 8004FDB8 00043C00 */  sll        $a3, $a0, 0x10
/* 509BC 8004FDBC 00073C03 */  sra        $a3, $a3, 0x10
/* 509C0 8004FDC0 00071880 */  sll        $v1, $a3, 2
/* 509C4 8004FDC4 01E32021 */  addu       $a0, $t7, $v1
/* 509C8 8004FDC8 24840024 */  addiu      $a0, $a0, 0x24
/* 509CC 8004FDCC 0C013B1C */  jal        func_8004EC70
/* 509D0 8004FDD0 AFA3001C */   sw        $v1, 0x1c($sp)
/* 509D4 8004FDD4 3C188008 */  lui        $t8, %hi(D_80078584)
/* 509D8 8004FDD8 8F188584 */  lw         $t8, %lo(D_80078584)($t8)
/* 509DC 8004FDDC 8FA3001C */  lw         $v1, 0x1c($sp)
/* 509E0 8004FDE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 509E4 8004FDE4 8F190034 */  lw         $t9, 0x34($t8)
/* 509E8 8004FDE8 03234021 */  addu       $t0, $t9, $v1
/* 509EC 8004FDEC 8D020024 */  lw         $v0, 0x24($t0)
/* 509F0 8004FDF0 03E00008 */  jr         $ra
/* 509F4 8004FDF4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 509F8 8004FDF8 00000000 */  nop        
/* 509FC 8004FDFC 00000000 */  nop        
