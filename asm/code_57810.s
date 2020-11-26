.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80056C10
/* 57810 80056C10 400C6000 */  mfc0       $t4, $12
/* 57814 80056C14 3182FF01 */  andi       $v0, $t4, 0xff01
/* 57818 80056C18 3C088008 */  lui        $t0, 0x8008
/* 5781C 80056C1C 250896B0 */  addiu      $t0, $t0, -0x6950
/* 57820 80056C20 8D0B0000 */  lw         $t3, ($t0)
/* 57824 80056C24 2401FFFF */  addiu      $at, $zero, -1
/* 57828 80056C28 01614026 */  xor        $t0, $t3, $at
/* 5782C 80056C2C 3108FF00 */  andi       $t0, $t0, 0xff00
/* 57830 80056C30 00481025 */  or         $v0, $v0, $t0
/* 57834 80056C34 3C0AA430 */  lui        $t2, 0xa430
/* 57838 80056C38 8D4A000C */  lw         $t2, 0xc($t2)
/* 5783C 80056C3C 11400005 */  beqz       $t2, .L80056C54
/* 57840 80056C40 000B4C02 */   srl       $t1, $t3, 0x10
/* 57844 80056C44 2401FFFF */  addiu      $at, $zero, -1
/* 57848 80056C48 01214826 */  xor        $t1, $t1, $at
/* 5784C 80056C4C 3129003F */  andi       $t1, $t1, 0x3f
/* 57850 80056C50 01495025 */  or         $t2, $t2, $t1
.L80056C54:
/* 57854 80056C54 000A5400 */  sll        $t2, $t2, 0x10
/* 57858 80056C58 004A1025 */  or         $v0, $v0, $t2
/* 5785C 80056C5C 3C01003F */  lui        $at, 0x3f
/* 57860 80056C60 00814024 */  and        $t0, $a0, $at
/* 57864 80056C64 010B4024 */  and        $t0, $t0, $t3
/* 57868 80056C68 000843C2 */  srl        $t0, $t0, 0xf
/* 5786C 80056C6C 3C0A8008 */  lui        $t2, 0x8008
/* 57870 80056C70 01485021 */  addu       $t2, $t2, $t0
/* 57874 80056C74 954AE210 */  lhu        $t2, -0x1df0($t2)
/* 57878 80056C78 3C01A430 */  lui        $at, 0xa430
/* 5787C 80056C7C AC2A000C */  sw         $t2, 0xc($at)
/* 57880 80056C80 3088FF01 */  andi       $t0, $a0, 0xff01
/* 57884 80056C84 3169FF00 */  andi       $t1, $t3, 0xff00
/* 57888 80056C88 01094024 */  and        $t0, $t0, $t1
/* 5788C 80056C8C 3C01FFFF */  lui        $at, 0xffff
/* 57890 80056C90 342100FF */  ori        $at, $at, 0xff
/* 57894 80056C94 01816024 */  and        $t4, $t4, $at
/* 57898 80056C98 01886025 */  or         $t4, $t4, $t0
/* 5789C 80056C9C 408C6000 */  mtc0       $t4, $12
/* 578A0 80056CA0 00000000 */  nop        
/* 578A4 80056CA4 00000000 */  nop        
/* 578A8 80056CA8 03E00008 */  jr         $ra
/* 578AC 80056CAC 00000000 */   nop       

glabel __osDequeueThread
/* 578B0 80056CB0 00803025 */  or         $a2, $a0, $zero
/* 578B4 80056CB4 8CC70000 */  lw         $a3, ($a2)
/* 578B8 80056CB8 27BDFFF8 */  addiu      $sp, $sp, -8
/* 578BC 80056CBC 10E0000A */  beqz       $a3, .L80056CE8
/* 578C0 80056CC0 00000000 */   nop       
.L80056CC4:
/* 578C4 80056CC4 14E50004 */  bne        $a3, $a1, .L80056CD8
/* 578C8 80056CC8 00000000 */   nop       
/* 578CC 80056CCC 8CAE0000 */  lw         $t6, ($a1)
/* 578D0 80056CD0 10000005 */  b          .L80056CE8
/* 578D4 80056CD4 ACCE0000 */   sw        $t6, ($a2)
.L80056CD8:
/* 578D8 80056CD8 00E03025 */  or         $a2, $a3, $zero
/* 578DC 80056CDC 8CC70000 */  lw         $a3, ($a2)
/* 578E0 80056CE0 14E0FFF8 */  bnez       $a3, .L80056CC4
/* 578E4 80056CE4 00000000 */   nop       
.L80056CE8:
/* 578E8 80056CE8 03E00008 */  jr         $ra
/* 578EC 80056CEC 27BD0008 */   addiu     $sp, $sp, 8

glabel func_80056CF0
/* 578F0 80056CF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 578F4 80056CF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 578F8 80056CF8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 578FC 80056CFC AFA60020 */  sw         $a2, 0x20($sp)
/* 57900 80056D00 AFA70024 */  sw         $a3, 0x24($sp)
/* 57904 80056D04 0C016C14 */  jal        func_8005B050
/* 57908 80056D08 AFA40018 */   sw        $a0, 0x18($sp)
/* 5790C 80056D0C 8FA40018 */  lw         $a0, 0x18($sp)
/* 57910 80056D10 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* 57914 80056D14 3C013F80 */  lui        $at, 0x3f80
/* 57918 80056D18 44815000 */  mtc1       $at, $f10
/* 5791C 80056D1C E4840000 */  swc1       $f4, ($a0)
/* 57920 80056D20 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 57924 80056D24 E4860014 */  swc1       $f6, 0x14($a0)
/* 57928 80056D28 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 5792C 80056D2C E48A003C */  swc1       $f10, 0x3c($a0)
/* 57930 80056D30 E4880028 */  swc1       $f8, 0x28($a0)
/* 57934 80056D34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 57938 80056D38 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5793C 80056D3C 03E00008 */  jr         $ra
/* 57940 80056D40 00000000 */   nop       

glabel func_80056D44
/* 57944 80056D44 44856000 */  mtc1       $a1, $f12
/* 57948 80056D48 44867000 */  mtc1       $a2, $f14
/* 5794C 80056D4C 44878000 */  mtc1       $a3, $f16
/* 57950 80056D50 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 57954 80056D54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 57958 80056D58 AFA40058 */  sw         $a0, 0x58($sp)
/* 5795C 80056D5C 44056000 */  mfc1       $a1, $f12
/* 57960 80056D60 44067000 */  mfc1       $a2, $f14
/* 57964 80056D64 44078000 */  mfc1       $a3, $f16
/* 57968 80056D68 0C015B3C */  jal        func_80056CF0
/* 5796C 80056D6C 27A40018 */   addiu     $a0, $sp, 0x18
/* 57970 80056D70 27A40018 */  addiu      $a0, $sp, 0x18
/* 57974 80056D74 0C016BD4 */  jal        func_8005AF50
/* 57978 80056D78 8FA50058 */   lw        $a1, 0x58($sp)
/* 5797C 80056D7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 57980 80056D80 27BD0058 */  addiu      $sp, $sp, 0x58
/* 57984 80056D84 03E00008 */  jr         $ra
/* 57988 80056D88 00000000 */   nop       
/* 5798C 80056D8C 00000000 */  nop        
