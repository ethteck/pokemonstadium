.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text_1000, "ax"

glabel func_80048B90
/* 49790 80048B90 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 49794 80048B94 3C01FFFF */  lui       $at, 0xffff
/* 49798 80048B98 44802000 */  mtc1      $zero, $f4
/* 4979C 80048B9C 00811024 */  and       $v0, $a0, $at
/* 497A0 80048BA0 240E0080 */  addiu     $t6, $zero, 0x80
/* 497A4 80048BA4 3C010120 */  lui       $at, 0x120
/* 497A8 80048BA8 AFBF001C */  sw        $ra, 0x1c($sp)
/* 497AC 80048BAC AFA40030 */  sw        $a0, 0x30($sp)
/* 497B0 80048BB0 AFAE0028 */  sw        $t6, 0x28($sp)
/* 497B4 80048BB4 14410006 */  bne       $v0, $at, .L80048BD0
/* 497B8 80048BB8 E7A40024 */  swc1      $f4, 0x24($sp)
/* 497BC 80048BBC 00002825 */  or        $a1, $zero, $zero
/* 497C0 80048BC0 0C0138C1 */  jal       func_8004E304
/* 497C4 80048BC4 00003025 */  or        $a2, $zero, $zero
/* 497C8 80048BC8 100000F1 */  b         .L80048F90
/* 497CC 80048BCC 8FBF001C */  lw        $ra, 0x1c($sp)
.L80048BD0:
/* 497D0 80048BD0 3C010110 */  lui       $at, 0x110
/* 497D4 80048BD4 14410007 */  bne       $v0, $at, .L80048BF4
/* 497D8 80048BD8 8FB80030 */  lw        $t8, 0x30($sp)
/* 497DC 80048BDC 8FA40030 */  lw        $a0, 0x30($sp)
/* 497E0 80048BE0 00002825 */  or        $a1, $zero, $zero
/* 497E4 80048BE4 0C0137E5 */  jal       func_8004DF94
/* 497E8 80048BE8 00003025 */  or        $a2, $zero, $zero
/* 497EC 80048BEC 100000E8 */  b         .L80048F90
/* 497F0 80048BF0 8FBF001C */  lw        $ra, 0x1c($sp)
.L80048BF4:
/* 497F4 80048BF4 2401000F */  addiu     $at, $zero, 0xf
/* 497F8 80048BF8 1701001C */  bne       $t8, $at, .L80048C6C
/* 497FC 80048BFC 3C198010 */  lui       $t9, 0x8010
/* 49800 80048C00 8F39C820 */  lw        $t9, -0x37e0($t9)
/* 49804 80048C04 3C048010 */  lui       $a0, 0x8010
/* 49808 80048C08 3C058010 */  lui       $a1, 0x8010
/* 4980C 80048C0C 00194000 */  sll       $t0, $t9, 0
/* 49810 80048C10 05000003 */  bltz      $t0, .L80048C20
/* 49814 80048C14 2406000F */  addiu     $a2, $zero, 0xf
/* 49818 80048C18 100000DC */  b         .L80048F8C
/* 4981C 80048C1C 00001025 */  or        $v0, $zero, $zero
.L80048C20:
/* 49820 80048C20 24090080 */  addiu     $t1, $zero, 0x80
/* 49824 80048C24 240AFFFF */  addiu     $t2, $zero, -1
/* 49828 80048C28 AFAA0014 */  sw        $t2, 0x14($sp)
/* 4982C 80048C2C AFA90010 */  sw        $t1, 0x10($sp)
/* 49830 80048C30 8C84F9C0 */  lw        $a0, -0x640($a0)
/* 49834 80048C34 8CA5C688 */  lw        $a1, -0x3978($a1)
/* 49838 80048C38 0C00E409 */  jal       func_80039024
/* 4983C 80048C3C 24070070 */  addiu     $a3, $zero, 0x70
/* 49840 80048C40 3C038008 */  lui       $v1, 0x8008
/* 49844 80048C44 24638A30 */  addiu     $v1, $v1, -0x75d0
/* 49848 80048C48 AC620000 */  sw        $v0, ($v1)
/* 4984C 80048C4C 3C048008 */  lui       $a0, 0x8008
/* 49850 80048C50 8C848E70 */  lw        $a0, -0x7190($a0)
/* 49854 80048C54 0C00E4AA */  jal       func_800392A8
/* 49858 80048C58 24050028 */  addiu     $a1, $zero, 0x28
/* 4985C 80048C5C 3C038008 */  lui       $v1, 0x8008
/* 49860 80048C60 24638A30 */  addiu     $v1, $v1, -0x75d0
/* 49864 80048C64 100000C9 */  b         .L80048F8C
/* 49868 80048C68 8C620000 */  lw        $v0, ($v1)
.L80048C6C:
/* 4986C 80048C6C 8FAB0030 */  lw        $t3, 0x30($sp)
/* 49870 80048C70 24010030 */  addiu     $at, $zero, 0x30
/* 49874 80048C74 15610002 */  bne       $t3, $at, .L80048C80
/* 49878 80048C78 240C0026 */  addiu     $t4, $zero, 0x26
/* 4987C 80048C7C AFAC0030 */  sw        $t4, 0x30($sp)
.L80048C80:
/* 49880 80048C80 8FAD0030 */  lw        $t5, 0x30($sp)
/* 49884 80048C84 2401003C */  addiu     $at, $zero, 0x3c
/* 49888 80048C88 55A10016 */  bnel      $t5, $at, .L80048CE4
/* 4988C 80048C8C 8FA90030 */  lw        $t1, 0x30($sp)
/* 49890 80048C90 3C038008 */  lui       $v1, 0x8008
/* 49894 80048C94 24638A50 */  addiu     $v1, $v1, -0x75b0
/* 49898 80048C98 90620000 */  lbu       $v0, ($v1)
/* 4989C 80048C9C 24190005 */  addiu     $t9, $zero, 5
/* 498A0 80048CA0 3C01C140 */  lui       $at, 0xc140
/* 498A4 80048CA4 10400008 */  beqz      $v0, .L80048CC8
/* 498A8 80048CA8 24580001 */  addiu     $t8, $v0, 1
/* 498AC 80048CAC 244E0001 */  addiu     $t6, $v0, 1
/* 498B0 80048CB0 31CF00FF */  andi      $t7, $t6, 0xff
/* 498B4 80048CB4 19E00002 */  blez      $t7, .L80048CC0
/* 498B8 80048CB8 A06E0000 */  sb        $t6, ($v1)
/* 498BC 80048CBC A0600000 */  sb        $zero, ($v1)
.L80048CC0:
/* 498C0 80048CC0 100000B2 */  b         .L80048F8C
/* 498C4 80048CC4 00001025 */  or        $v0, $zero, $zero
.L80048CC8:
/* 498C8 80048CC8 44813000 */  mtc1      $at, $f6
/* 498CC 80048CCC A0780000 */  sb        $t8, ($v1)
/* 498D0 80048CD0 24080038 */  addiu     $t0, $zero, 0x38
/* 498D4 80048CD4 AFB90030 */  sw        $t9, 0x30($sp)
/* 498D8 80048CD8 AFA80028 */  sw        $t0, 0x28($sp)
/* 498DC 80048CDC E7A60024 */  swc1      $f6, 0x24($sp)
/* 498E0 80048CE0 8FA90030 */  lw        $t1, 0x30($sp)
.L80048CE4:
/* 498E4 80048CE4 252AFFFF */  addiu     $t2, $t1, -1
/* 498E8 80048CE8 2D410033 */  sltiu     $at, $t2, 0x33
/* 498EC 80048CEC 10200057 */  beqz      $at, .L80048E4C
/* 498F0 80048CF0 000A5080 */  sll       $t2, $t2, 2
/* 498F4 80048CF4 3C018008 */  lui       $at, 0x8008
/* 498F8 80048CF8 002A0821 */  addu      $at, $at, $t2
/* 498FC 80048CFC 8C2AD3D0 */  lw        $t2, -0x2c30($at)
/* 49900 80048D00 01400008 */  jr        $t2
/* 49904 80048D04 00000000 */  nop       
/* 49908 80048D08 3C048008 */  lui       $a0, 0x8008
/* 4990C 80048D0C 8C848A34 */  lw        $a0, -0x75cc($a0)
/* 49910 80048D10 0C00E4AA */  jal       func_800392A8
/* 49914 80048D14 24050001 */  addiu     $a1, $zero, 1
/* 49918 80048D18 1000004E */  b         .L80048E54
/* 4991C 80048D1C 00000000 */  nop       
/* 49920 80048D20 3C048008 */  lui       $a0, 0x8008
/* 49924 80048D24 8C848A3C */  lw        $a0, -0x75c4($a0)
/* 49928 80048D28 0C00E4AA */  jal       func_800392A8
/* 4992C 80048D2C 24050001 */  addiu     $a1, $zero, 1
/* 49930 80048D30 10000048 */  b         .L80048E54
/* 49934 80048D34 00000000 */  nop       
/* 49938 80048D38 3C048008 */  lui       $a0, 0x8008
/* 4993C 80048D3C 8C848A38 */  lw        $a0, -0x75c8($a0)
/* 49940 80048D40 0C00E4AA */  jal       func_800392A8
/* 49944 80048D44 24050001 */  addiu     $a1, $zero, 1
/* 49948 80048D48 10000042 */  b         .L80048E54
/* 4994C 80048D4C 00000000 */  nop       
/* 49950 80048D50 3C048008 */  lui       $a0, 0x8008
/* 49954 80048D54 8C848A40 */  lw        $a0, -0x75c0($a0)
/* 49958 80048D58 0C00E4AA */  jal       func_800392A8
/* 4995C 80048D5C 24050014 */  addiu     $a1, $zero, 0x14
/* 49960 80048D60 1000003C */  b         .L80048E54
/* 49964 80048D64 00000000 */  nop       
/* 49968 80048D68 3C048008 */  lui       $a0, 0x8008
/* 4996C 80048D6C 8C848A44 */  lw        $a0, -0x75bc($a0)
/* 49970 80048D70 0C00E4AA */  jal       func_800392A8
/* 49974 80048D74 24050002 */  addiu     $a1, $zero, 2
/* 49978 80048D78 10000036 */  b         .L80048E54
/* 4997C 80048D7C 00000000 */  nop       
/* 49980 80048D80 3C048008 */  lui       $a0, 0x8008
/* 49984 80048D84 8C848A48 */  lw        $a0, -0x75b8($a0)
/* 49988 80048D88 0C00E4AA */  jal       func_800392A8
/* 4998C 80048D8C 24050002 */  addiu     $a1, $zero, 2
/* 49990 80048D90 240B00A0 */  addiu     $t3, $zero, 0xa0
/* 49994 80048D94 1000002F */  b         .L80048E54
/* 49998 80048D98 AFAB0028 */  sw        $t3, 0x28($sp)
/* 4999C 80048D9C 3C048008 */  lui       $a0, 0x8008
/* 499A0 80048DA0 8C848A48 */  lw        $a0, -0x75b8($a0)
/* 499A4 80048DA4 0C00E4AA */  jal       func_800392A8
/* 499A8 80048DA8 24050002 */  addiu     $a1, $zero, 2
/* 499AC 80048DAC 10000029 */  b         .L80048E54
/* 499B0 80048DB0 00000000 */  nop       
/* 499B4 80048DB4 3C048008 */  lui       $a0, 0x8008
/* 499B8 80048DB8 8C848A4C */  lw        $a0, -0x75b4($a0)
/* 499BC 80048DBC 0C00E4AA */  jal       func_800392A8
/* 499C0 80048DC0 24050002 */  addiu     $a1, $zero, 2
/* 499C4 80048DC4 10000023 */  b         .L80048E54
/* 499C8 80048DC8 00000000 */  nop       
/* 499CC 80048DCC 240C00E0 */  addiu     $t4, $zero, 0xe0
/* 499D0 80048DD0 10000020 */  b         .L80048E54
/* 499D4 80048DD4 AFAC0028 */  sw        $t4, 0x28($sp)
/* 499D8 80048DD8 8FAD0030 */  lw        $t5, 0x30($sp)
/* 499DC 80048DDC 25AEFFFF */  addiu     $t6, $t5, -1
/* 499E0 80048DE0 1000001C */  b         .L80048E54
/* 499E4 80048DE4 AFAE0030 */  sw        $t6, 0x30($sp)
/* 499E8 80048DE8 240F00D0 */  addiu     $t7, $zero, 0xd0
/* 499EC 80048DEC 10000019 */  b         .L80048E54
/* 499F0 80048DF0 AFAF0028 */  sw        $t7, 0x28($sp)
/* 499F4 80048DF4 0C0122E4 */  jal       func_80048B90
/* 499F8 80048DF8 2404001B */  addiu     $a0, $zero, 0x1b
/* 499FC 80048DFC 10000015 */  b         .L80048E54
/* 49A00 80048E00 00000000 */  nop       
/* 49A04 80048E04 3C040100 */  lui       $a0, 0x100
/* 49A08 80048E08 34840001 */  ori       $a0, $a0, 1
/* 49A0C 80048E0C 00002825 */  or        $a1, $zero, $zero
/* 49A10 80048E10 0C013769 */  jal       func_8004DDA4
/* 49A14 80048E14 00003025 */  or        $a2, $zero, $zero
/* 49A18 80048E18 3C038008 */  lui       $v1, 0x8008
/* 49A1C 80048E1C 24638A30 */  addiu     $v1, $v1, -0x75d0
/* 49A20 80048E20 1000005A */  b         .L80048F8C
/* 49A24 80048E24 AC620000 */  sw        $v0, ($v1)
/* 49A28 80048E28 3C040100 */  lui       $a0, 0x100
/* 49A2C 80048E2C 34840002 */  ori       $a0, $a0, 2
/* 49A30 80048E30 00002825 */  or        $a1, $zero, $zero
/* 49A34 80048E34 0C013769 */  jal       func_8004DDA4
/* 49A38 80048E38 00003025 */  or        $a2, $zero, $zero
/* 49A3C 80048E3C 3C038008 */  lui       $v1, 0x8008
/* 49A40 80048E40 24638A30 */  addiu     $v1, $v1, -0x75d0
/* 49A44 80048E44 10000051 */  b         .L80048F8C
/* 49A48 80048E48 AC620000 */  sw        $v0, ($v1)
.L80048E4C:
/* 49A4C 80048E4C 1000004F */  b         .L80048F8C
/* 49A50 80048E50 00001025 */  or        $v0, $zero, $zero
.L80048E54:
/* 49A54 80048E54 3C048010 */  lui       $a0, 0x8010
/* 49A58 80048E58 3C058010 */  lui       $a1, 0x8010
/* 49A5C 80048E5C 24180080 */  addiu     $t8, $zero, 0x80
/* 49A60 80048E60 2419FFFF */  addiu     $t9, $zero, -1
/* 49A64 80048E64 AFB90014 */  sw        $t9, 0x14($sp)
/* 49A68 80048E68 AFB80010 */  sw        $t8, 0x10($sp)
/* 49A6C 80048E6C 8CA5C688 */  lw        $a1, -0x3978($a1)
/* 49A70 80048E70 8C84C68C */  lw        $a0, -0x3974($a0)
/* 49A74 80048E74 8FA60030 */  lw        $a2, 0x30($sp)
/* 49A78 80048E78 0C00E409 */  jal       func_80039024
/* 49A7C 80048E7C 8FA70028 */  lw        $a3, 0x28($sp)
/* 49A80 80048E80 C7A80024 */  lwc1      $f8, 0x24($sp)
/* 49A84 80048E84 44805000 */  mtc1      $zero, $f10
/* 49A88 80048E88 3C038008 */  lui       $v1, 0x8008
/* 49A8C 80048E8C 24638A30 */  addiu     $v1, $v1, -0x75d0
/* 49A90 80048E90 460A4032 */  c.eq.s    $f8, $f10
/* 49A94 80048E94 AC620000 */  sw        $v0, ($v1)
/* 49A98 80048E98 45030007 */  bc1tl     .L80048EB8
/* 49A9C 80048E9C 8FA80030 */  lw        $t0, 0x30($sp)
/* 49AA0 80048EA0 44054000 */  mfc1      $a1, $f8
/* 49AA4 80048EA4 0C00E54D */  jal       func_80039534
/* 49AA8 80048EA8 00402025 */  or        $a0, $v0, $zero
/* 49AAC 80048EAC 3C038008 */  lui       $v1, 0x8008
/* 49AB0 80048EB0 24638A30 */  addiu     $v1, $v1, -0x75d0
/* 49AB4 80048EB4 8FA80030 */  lw        $t0, 0x30($sp)
.L80048EB8:
/* 49AB8 80048EB8 8FAA0030 */  lw        $t2, 0x30($sp)
/* 49ABC 80048EBC 8FA90030 */  lw        $t1, 0x30($sp)
/* 49AC0 80048EC0 2D01002D */  sltiu     $at, $t0, 0x2d
/* 49AC4 80048EC4 14200006 */  bnez      $at, .L80048EE0
/* 49AC8 80048EC8 254BFFFF */  addiu     $t3, $t2, -1
/* 49ACC 80048ECC 2401002D */  addiu     $at, $zero, 0x2d
/* 49AD0 80048ED0 5101002B */  beql      $t0, $at, .L80048F80
/* 49AD4 80048ED4 8C680000 */  lw        $t0, ($v1)
/* 49AD8 80048ED8 1000002C */  b         .L80048F8C
/* 49ADC 80048EDC 8C620000 */  lw        $v0, ($v1)
.L80048EE0:
/* 49AE0 80048EE0 2D210009 */  sltiu     $at, $t1, 9
/* 49AE4 80048EE4 14200005 */  bnez      $at, .L80048EFC
/* 49AE8 80048EE8 2401002C */  addiu     $at, $zero, 0x2c
/* 49AEC 80048EEC 51210020 */  beql      $t1, $at, .L80048F70
/* 49AF0 80048EF0 8C790000 */  lw        $t9, ($v1)
/* 49AF4 80048EF4 10000025 */  b         .L80048F8C
/* 49AF8 80048EF8 8C620000 */  lw        $v0, ($v1)
.L80048EFC:
/* 49AFC 80048EFC 2D610008 */  sltiu     $at, $t3, 8
/* 49B00 80048F00 10200021 */  beqz      $at, .L80048F88
/* 49B04 80048F04 000B5880 */  sll       $t3, $t3, 2
/* 49B08 80048F08 3C018008 */  lui       $at, 0x8008
/* 49B0C 80048F0C 002B0821 */  addu      $at, $at, $t3
/* 49B10 80048F10 8C2BD49C */  lw        $t3, -0x2b64($at)
/* 49B14 80048F14 01600008 */  jr        $t3
/* 49B18 80048F18 00000000 */  nop       
/* 49B1C 80048F1C 8C6C0000 */  lw        $t4, ($v1)
/* 49B20 80048F20 3C018008 */  lui       $at, 0x8008
/* 49B24 80048F24 10000018 */  b         .L80048F88
/* 49B28 80048F28 AC2C8A34 */  sw        $t4, -0x75cc($at)
/* 49B2C 80048F2C 8C6D0000 */  lw        $t5, ($v1)
/* 49B30 80048F30 3C018008 */  lui       $at, 0x8008
/* 49B34 80048F34 10000014 */  b         .L80048F88
/* 49B38 80048F38 AC2D8A3C */  sw        $t5, -0x75c4($at)
/* 49B3C 80048F3C 8C6E0000 */  lw        $t6, ($v1)
/* 49B40 80048F40 3C018008 */  lui       $at, 0x8008
/* 49B44 80048F44 10000010 */  b         .L80048F88
/* 49B48 80048F48 AC2E8A38 */  sw        $t6, -0x75c8($at)
/* 49B4C 80048F4C 8C6F0000 */  lw        $t7, ($v1)
/* 49B50 80048F50 3C018008 */  lui       $at, 0x8008
/* 49B54 80048F54 1000000C */  b         .L80048F88
/* 49B58 80048F58 AC2F8A40 */  sw        $t7, -0x75c0($at)
/* 49B5C 80048F5C 8C780000 */  lw        $t8, ($v1)
/* 49B60 80048F60 3C018008 */  lui       $at, 0x8008
/* 49B64 80048F64 10000008 */  b         .L80048F88
/* 49B68 80048F68 AC388A44 */  sw        $t8, -0x75bc($at)
/* 49B6C 80048F6C 8C790000 */  lw        $t9, ($v1)
.L80048F70:
/* 49B70 80048F70 3C018008 */  lui       $at, 0x8008
/* 49B74 80048F74 10000004 */  b         .L80048F88
/* 49B78 80048F78 AC398A48 */  sw        $t9, -0x75b8($at)
/* 49B7C 80048F7C 8C680000 */  lw        $t0, ($v1)
.L80048F80:
/* 49B80 80048F80 3C018008 */  lui       $at, 0x8008
/* 49B84 80048F84 AC288A4C */  sw        $t0, -0x75b4($at)
.L80048F88:
/* 49B88 80048F88 8C620000 */  lw        $v0, ($v1)
.L80048F8C:
/* 49B8C 80048F8C 8FBF001C */  lw        $ra, 0x1c($sp)
.L80048F90:
/* 49B90 80048F90 27BD0030 */  addiu     $sp, $sp, 0x30
/* 49B94 80048F94 03E00008 */  jr        $ra
/* 49B98 80048F98 00000000 */  nop       
/* 49B9C 80048F9C 00000000 */  nop       
