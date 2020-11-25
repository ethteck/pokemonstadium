.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80063C90
/* 64890 80063C90 AFA40000 */  sw         $a0, ($sp)
/* 64894 80063C94 308EFFFF */  andi       $t6, $a0, 0xffff
/* 64898 80063C98 01C02025 */  or         $a0, $t6, $zero
/* 6489C 80063C9C 00001825 */  or         $v1, $zero, $zero
/* 648A0 80063CA0 24020400 */  addiu      $v0, $zero, 0x400
.L80063CA4:
/* 648A4 80063CA4 00037840 */  sll        $t7, $v1, 1
/* 648A8 80063CA8 0082C024 */  and        $t8, $a0, $v0
/* 648AC 80063CAC 13000008 */  beqz       $t8, .L80063CD0
/* 648B0 80063CB0 01E01825 */   or        $v1, $t7, $zero
/* 648B4 80063CB4 31F90020 */  andi       $t9, $t7, 0x20
/* 648B8 80063CB8 13200003 */  beqz       $t9, .L80063CC8
/* 648BC 80063CBC 00000000 */   nop       
/* 648C0 80063CC0 10000007 */  b          .L80063CE0
/* 648C4 80063CC4 39E30014 */   xori      $v1, $t7, 0x14
.L80063CC8:
/* 648C8 80063CC8 10000005 */  b          .L80063CE0
/* 648CC 80063CCC 24630001 */   addiu     $v1, $v1, 1
.L80063CD0:
/* 648D0 80063CD0 30690020 */  andi       $t1, $v1, 0x20
/* 648D4 80063CD4 11200002 */  beqz       $t1, .L80063CE0
/* 648D8 80063CD8 386A0015 */   xori      $t2, $v1, 0x15
/* 648DC 80063CDC 01401825 */  or         $v1, $t2, $zero
.L80063CE0:
/* 648E0 80063CE0 00025842 */  srl        $t3, $v0, 1
/* 648E4 80063CE4 1560FFEF */  bnez       $t3, .L80063CA4
/* 648E8 80063CE8 01601025 */   or        $v0, $t3, $zero
/* 648EC 80063CEC 00036040 */  sll        $t4, $v1, 1
/* 648F0 80063CF0 318D0020 */  andi       $t5, $t4, 0x20
/* 648F4 80063CF4 11A00002 */  beqz       $t5, .L80063D00
/* 648F8 80063CF8 01801825 */   or        $v1, $t4, $zero
/* 648FC 80063CFC 39830015 */  xori       $v1, $t4, 0x15
.L80063D00:
/* 64900 80063D00 00037840 */  sll        $t7, $v1, 1
/* 64904 80063D04 31F80020 */  andi       $t8, $t7, 0x20
/* 64908 80063D08 13000002 */  beqz       $t8, .L80063D14
/* 6490C 80063D0C 01E01825 */   or        $v1, $t7, $zero
/* 64910 80063D10 39E30015 */  xori       $v1, $t7, 0x15
.L80063D14:
/* 64914 80063D14 00034040 */  sll        $t0, $v1, 1
/* 64918 80063D18 31090020 */  andi       $t1, $t0, 0x20
/* 6491C 80063D1C 11200002 */  beqz       $t1, .L80063D28
/* 64920 80063D20 01001825 */   or        $v1, $t0, $zero
/* 64924 80063D24 39030015 */  xori       $v1, $t0, 0x15
.L80063D28:
/* 64928 80063D28 00035840 */  sll        $t3, $v1, 1
/* 6492C 80063D2C 316C0020 */  andi       $t4, $t3, 0x20
/* 64930 80063D30 11800002 */  beqz       $t4, .L80063D3C
/* 64934 80063D34 01601825 */   or        $v1, $t3, $zero
/* 64938 80063D38 39630015 */  xori       $v1, $t3, 0x15
.L80063D3C:
/* 6493C 80063D3C 00037040 */  sll        $t6, $v1, 1
/* 64940 80063D40 31CF0020 */  andi       $t7, $t6, 0x20
/* 64944 80063D44 11E00002 */  beqz       $t7, .L80063D50
/* 64948 80063D48 01C01825 */   or        $v1, $t6, $zero
/* 6494C 80063D4C 39C30015 */  xori       $v1, $t6, 0x15
.L80063D50:
/* 64950 80063D50 00601025 */  or         $v0, $v1, $zero
/* 64954 80063D54 3059001F */  andi       $t9, $v0, 0x1f
/* 64958 80063D58 03E00008 */  jr         $ra
/* 6495C 80063D5C 03201025 */   or        $v0, $t9, $zero

glabel func_80063D60
/* 64960 80063D60 00802825 */  or         $a1, $a0, $zero
/* 64964 80063D64 00001825 */  or         $v1, $zero, $zero
/* 64968 80063D68 24020020 */  addiu      $v0, $zero, 0x20
.L80063D6C:
/* 6496C 80063D6C 24040080 */  addiu      $a0, $zero, 0x80
/* 64970 80063D70 90A60000 */  lbu        $a2, ($a1)
.L80063D74:
/* 64974 80063D74 00037040 */  sll        $t6, $v1, 1
/* 64978 80063D78 00C47824 */  and        $t7, $a2, $a0
/* 6497C 80063D7C 11E00008 */  beqz       $t7, .L80063DA0
/* 64980 80063D80 01C01825 */   or        $v1, $t6, $zero
/* 64984 80063D84 31D80100 */  andi       $t8, $t6, 0x100
/* 64988 80063D88 13000003 */  beqz       $t8, .L80063D98
/* 6498C 80063D8C 00000000 */   nop       
/* 64990 80063D90 10000007 */  b          .L80063DB0
/* 64994 80063D94 39C30084 */   xori      $v1, $t6, 0x84
.L80063D98:
/* 64998 80063D98 10000005 */  b          .L80063DB0
/* 6499C 80063D9C 24630001 */   addiu     $v1, $v1, 1
.L80063DA0:
/* 649A0 80063DA0 30680100 */  andi       $t0, $v1, 0x100
/* 649A4 80063DA4 11000002 */  beqz       $t0, .L80063DB0
/* 649A8 80063DA8 38690085 */   xori      $t1, $v1, 0x85
/* 649AC 80063DAC 01201825 */  or         $v1, $t1, $zero
.L80063DB0:
/* 649B0 80063DB0 00045042 */  srl        $t2, $a0, 1
/* 649B4 80063DB4 1540FFEF */  bnez       $t2, .L80063D74
/* 649B8 80063DB8 01402025 */   or        $a0, $t2, $zero
/* 649BC 80063DBC 2442FFFF */  addiu      $v0, $v0, -1
/* 649C0 80063DC0 1440FFEA */  bnez       $v0, .L80063D6C
/* 649C4 80063DC4 24A50001 */   addiu     $a1, $a1, 1
/* 649C8 80063DC8 00035840 */  sll        $t3, $v1, 1
.L80063DCC:
/* 649CC 80063DCC 316C0100 */  andi       $t4, $t3, 0x100
/* 649D0 80063DD0 11800002 */  beqz       $t4, .L80063DDC
/* 649D4 80063DD4 01601825 */   or        $v1, $t3, $zero
/* 649D8 80063DD8 39630085 */  xori       $v1, $t3, 0x85
.L80063DDC:
/* 649DC 80063DDC 24420001 */  addiu      $v0, $v0, 1
/* 649E0 80063DE0 2C410008 */  sltiu      $at, $v0, 8
/* 649E4 80063DE4 5420FFF9 */  bnel       $at, $zero, .L80063DCC
/* 649E8 80063DE8 00035840 */   sll       $t3, $v1, 1
/* 649EC 80063DEC 03E00008 */  jr         $ra
/* 649F0 80063DF0 306200FF */   andi      $v0, $v1, 0xff
/* 649F4 80063DF4 00000000 */  nop        
/* 649F8 80063DF8 00000000 */  nop        
/* 649FC 80063DFC 00000000 */  nop        
