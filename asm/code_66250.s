.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80065650
/* 66250 80065650 46206109 */  trunc.l.d  $f4, $f12
/* 66254 80065654 44222000 */  dmfc1      $v0, $f4
/* 66258 80065658 00000000 */  nop        
/* 6625C 8006565C 0002183C */  dsll32     $v1, $v0, 0
/* 66260 80065660 0003183F */  dsra32     $v1, $v1, 0
/* 66264 80065664 03E00008 */  jr         $ra
/* 66268 80065668 0002103F */   dsra32    $v0, $v0, 0

glabel func_8006566C
/* 6626C 8006566C 46006109 */  trunc.l.s  $f4, $f12
/* 66270 80065670 44222000 */  dmfc1      $v0, $f4
/* 66274 80065674 00000000 */  nop        
/* 66278 80065678 0002183C */  dsll32     $v1, $v0, 0
/* 6627C 8006567C 0003183F */  dsra32     $v1, $v1, 0
/* 66280 80065680 03E00008 */  jr         $ra
/* 66284 80065684 0002103F */   dsra32    $v0, $v0, 0

glabel func_80065688
/* 66288 80065688 444EF800 */  cfc1       $t6, $31
/* 6628C 8006568C 24020001 */  addiu      $v0, $zero, 1
/* 66290 80065690 44C2F800 */  ctc1       $v0, $31
/* 66294 80065694 00000000 */  nop        
/* 66298 80065698 46206125 */  cvt.l.d    $f4, $f12
/* 6629C 8006569C 4442F800 */  cfc1       $v0, $31
/* 662A0 800656A0 00000000 */  nop        
/* 662A4 800656A4 30410004 */  andi       $at, $v0, 4
/* 662A8 800656A8 30420078 */  andi       $v0, $v0, 0x78
/* 662AC 800656AC 10400015 */  beqz       $v0, .L80065704
/* 662B0 800656B0 3C0143E0 */   lui       $at, 0x43e0
/* 662B4 800656B4 44812800 */  mtc1       $at, $f5
/* 662B8 800656B8 44802000 */  mtc1       $zero, $f4
/* 662BC 800656BC 24020001 */  addiu      $v0, $zero, 1
/* 662C0 800656C0 46246101 */  sub.d      $f4, $f12, $f4
/* 662C4 800656C4 44C2F800 */  ctc1       $v0, $31
/* 662C8 800656C8 00000000 */  nop        
/* 662CC 800656CC 46202125 */  cvt.l.d    $f4, $f4
/* 662D0 800656D0 4442F800 */  cfc1       $v0, $31
/* 662D4 800656D4 00000000 */  nop        
/* 662D8 800656D8 30410004 */  andi       $at, $v0, 4
/* 662DC 800656DC 30420078 */  andi       $v0, $v0, 0x78
/* 662E0 800656E0 14400006 */  bnez       $v0, .L800656FC
/* 662E4 800656E4 00000000 */   nop       
/* 662E8 800656E8 3C0F8008 */  lui        $t7, 0x8008
/* 662EC 800656EC DDEFE640 */  ld         $t7, -0x19c0($t7)
/* 662F0 800656F0 44222000 */  dmfc1      $v0, $f4
/* 662F4 800656F4 10000007 */  b          .L80065714
/* 662F8 800656F8 004F1025 */   or        $v0, $v0, $t7
.L800656FC:
/* 662FC 800656FC 10000005 */  b          .L80065714
/* 66300 80065700 2402FFFF */   addiu     $v0, $zero, -1
.L80065704:
/* 66304 80065704 44222000 */  dmfc1      $v0, $f4
/* 66308 80065708 00000000 */  nop        
/* 6630C 8006570C 0440FFFB */  bltz       $v0, .L800656FC
/* 66310 80065710 00000000 */   nop       
.L80065714:
/* 66314 80065714 44CEF800 */  ctc1       $t6, $31
/* 66318 80065718 0002183C */  dsll32     $v1, $v0, 0
/* 6631C 8006571C 0003183F */  dsra32     $v1, $v1, 0
/* 66320 80065720 03E00008 */  jr         $ra
/* 66324 80065724 0002103F */   dsra32    $v0, $v0, 0

glabel func_80065728
/* 66328 80065728 444EF800 */  cfc1       $t6, $31
/* 6632C 8006572C 24020001 */  addiu      $v0, $zero, 1
/* 66330 80065730 44C2F800 */  ctc1       $v0, $31
/* 66334 80065734 00000000 */  nop        
/* 66338 80065738 46006125 */  cvt.l.s    $f4, $f12
/* 6633C 8006573C 4442F800 */  cfc1       $v0, $31
/* 66340 80065740 00000000 */  nop        
/* 66344 80065744 30410004 */  andi       $at, $v0, 4
/* 66348 80065748 30420078 */  andi       $v0, $v0, 0x78
/* 6634C 8006574C 10400014 */  beqz       $v0, .L800657A0
/* 66350 80065750 3C015F00 */   lui       $at, 0x5f00
/* 66354 80065754 44812000 */  mtc1       $at, $f4
/* 66358 80065758 24020001 */  addiu      $v0, $zero, 1
/* 6635C 8006575C 46046101 */  sub.s      $f4, $f12, $f4
/* 66360 80065760 44C2F800 */  ctc1       $v0, $31
/* 66364 80065764 00000000 */  nop        
/* 66368 80065768 46002125 */  cvt.l.s    $f4, $f4
/* 6636C 8006576C 4442F800 */  cfc1       $v0, $31
/* 66370 80065770 00000000 */  nop        
/* 66374 80065774 30410004 */  andi       $at, $v0, 4
/* 66378 80065778 30420078 */  andi       $v0, $v0, 0x78
/* 6637C 8006577C 14400006 */  bnez       $v0, .L80065798
/* 66380 80065780 00000000 */   nop       
/* 66384 80065784 3C0F8008 */  lui        $t7, 0x8008
/* 66388 80065788 DDEFE648 */  ld         $t7, -0x19b8($t7)
/* 6638C 8006578C 44222000 */  dmfc1      $v0, $f4
/* 66390 80065790 10000007 */  b          .L800657B0
/* 66394 80065794 004F1025 */   or        $v0, $v0, $t7
.L80065798:
/* 66398 80065798 10000005 */  b          .L800657B0
/* 6639C 8006579C 2402FFFF */   addiu     $v0, $zero, -1
.L800657A0:
/* 663A0 800657A0 44222000 */  dmfc1      $v0, $f4
/* 663A4 800657A4 00000000 */  nop        
/* 663A8 800657A8 0440FFFB */  bltz       $v0, .L80065798
/* 663AC 800657AC 00000000 */   nop       
.L800657B0:
/* 663B0 800657B0 44CEF800 */  ctc1       $t6, $31
/* 663B4 800657B4 0002183C */  dsll32     $v1, $v0, 0
/* 663B8 800657B8 0003183F */  dsra32     $v1, $v1, 0
/* 663BC 800657BC 03E00008 */  jr         $ra
/* 663C0 800657C0 0002103F */   dsra32    $v0, $v0, 0

glabel func_800657C4
/* 663C4 800657C4 AFA40000 */  sw         $a0, ($sp)
/* 663C8 800657C8 AFA50004 */  sw         $a1, 4($sp)
/* 663CC 800657CC DFAE0000 */  ld         $t6, ($sp)
/* 663D0 800657D0 44AE2000 */  dmtc1      $t6, $f4
/* 663D4 800657D4 03E00008 */  jr         $ra
/* 663D8 800657D8 46A02021 */   cvt.d.l   $f0, $f4

glabel func_800657DC
/* 663DC 800657DC AFA40000 */  sw         $a0, ($sp)
/* 663E0 800657E0 AFA50004 */  sw         $a1, 4($sp)
/* 663E4 800657E4 DFAE0000 */  ld         $t6, ($sp)
/* 663E8 800657E8 44AE2000 */  dmtc1      $t6, $f4
/* 663EC 800657EC 03E00008 */  jr         $ra
/* 663F0 800657F0 46A02020 */   cvt.s.l   $f0, $f4

glabel func_800657F4
/* 663F4 800657F4 AFA40000 */  sw         $a0, ($sp)
/* 663F8 800657F8 AFA50004 */  sw         $a1, 4($sp)
/* 663FC 800657FC DFAE0000 */  ld         $t6, ($sp)
/* 66400 80065800 44AE2000 */  dmtc1      $t6, $f4
/* 66404 80065804 05C10006 */  bgez       $t6, .L80065820
/* 66408 80065808 46A02021 */   cvt.d.l   $f0, $f4
/* 6640C 8006580C 3C0141F0 */  lui        $at, 0x41f0
/* 66410 80065810 44813800 */  mtc1       $at, $f7
/* 66414 80065814 44803000 */  mtc1       $zero, $f6
/* 66418 80065818 00000000 */  nop        
/* 6641C 8006581C 46260000 */  add.d      $f0, $f0, $f6
.L80065820:
/* 66420 80065820 03E00008 */  jr         $ra
/* 66424 80065824 00000000 */   nop       

glabel func_80065828
/* 66428 80065828 AFA40000 */  sw         $a0, ($sp)
/* 6642C 8006582C AFA50004 */  sw         $a1, 4($sp)
/* 66430 80065830 DFAE0000 */  ld         $t6, ($sp)
/* 66434 80065834 44AE2000 */  dmtc1      $t6, $f4
/* 66438 80065838 05C10005 */  bgez       $t6, .L80065850
/* 6643C 8006583C 46A02020 */   cvt.s.l   $f0, $f4
/* 66440 80065840 3C014F80 */  lui        $at, 0x4f80
/* 66444 80065844 44813000 */  mtc1       $at, $f6
/* 66448 80065848 00000000 */  nop        
/* 6644C 8006584C 46060000 */  add.s      $f0, $f0, $f6
.L80065850:
/* 66450 80065850 03E00008 */  jr         $ra
/* 66454 80065854 00000000 */   nop       
/* 66458 80065858 00000000 */  nop        
/* 6645C 8006585C 00000000 */  nop        
