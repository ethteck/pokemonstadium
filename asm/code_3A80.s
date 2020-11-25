.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80002E80
/* 3A80 80002E80 3C028000 */  lui        $v0, 0x8000
/* 3A84 80002E84 8C420318 */  lw         $v0, 0x318($v0)
/* 3A88 80002E88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3A8C 80002E8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A90 80002E90 0082082B */  sltu       $at, $a0, $v0
/* 3A94 80002E94 10200004 */  beqz       $at, .L80002EA8
/* 3A98 80002E98 00001825 */   or        $v1, $zero, $zero
/* 3A9C 80002E9C 3C058000 */  lui        $a1, 0x8000
/* 3AA0 80002EA0 1000001C */  b          .L80002F14
/* 3AA4 80002EA4 00851825 */   or        $v1, $a0, $a1
.L80002EA8:
/* 3AA8 80002EA8 3C011000 */  lui        $at, 0x1000
/* 3AAC 80002EAC 0081082B */  sltu       $at, $a0, $at
/* 3AB0 80002EB0 50200006 */  beql       $at, $zero, .L80002ECC
/* 3AB4 80002EB4 3C018100 */   lui       $at, 0x8100
/* 3AB8 80002EB8 0C000744 */  jal        func_80001D10
/* 3ABC 80002EBC 00000000 */   nop       
/* 3AC0 80002EC0 10000014 */  b          .L80002F14
/* 3AC4 80002EC4 00401825 */   or        $v1, $v0, $zero
/* 3AC8 80002EC8 3C018100 */  lui        $at, 0x8100
.L80002ECC:
/* 3ACC 80002ECC 0081082B */  sltu       $at, $a0, $at
/* 3AD0 80002ED0 14200009 */  bnez       $at, .L80002EF8
/* 3AD4 80002ED4 3C058000 */   lui       $a1, 0x8000
/* 3AD8 80002ED8 3C019000 */  lui        $at, 0x9000
/* 3ADC 80002EDC 0081082B */  sltu       $at, $a0, $at
/* 3AE0 80002EE0 50200006 */  beql       $at, $zero, .L80002EFC
/* 3AE4 80002EE4 0085082B */   sltu      $at, $a0, $a1
/* 3AE8 80002EE8 0C000838 */  jal        func_800020E0
/* 3AEC 80002EEC 00000000 */   nop       
/* 3AF0 80002EF0 10000008 */  b          .L80002F14
/* 3AF4 80002EF4 00401825 */   or        $v1, $v0, $zero
.L80002EF8:
/* 3AF8 80002EF8 0085082B */  sltu       $at, $a0, $a1
.L80002EFC:
/* 3AFC 80002EFC 14200005 */  bnez       $at, .L80002F14
/* 3B00 80002F00 00457021 */   addu      $t6, $v0, $a1
/* 3B04 80002F04 008E082B */  sltu       $at, $a0, $t6
/* 3B08 80002F08 50200003 */  beql       $at, $zero, .L80002F18
/* 3B0C 80002F0C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3B10 80002F10 00801825 */  or         $v1, $a0, $zero
.L80002F14:
/* 3B14 80002F14 8FBF0014 */  lw         $ra, 0x14($sp)
.L80002F18:
/* 3B18 80002F18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3B1C 80002F1C 00601025 */  or         $v0, $v1, $zero
/* 3B20 80002F20 03E00008 */  jr         $ra
/* 3B24 80002F24 00000000 */   nop       

glabel func_80002F28
/* 3B28 80002F28 0006102A */  slt        $v0, $zero, $a2
/* 3B2C 80002F2C 10400008 */  beqz       $v0, .L80002F50
/* 3B30 80002F30 24C6FFFF */   addiu     $a2, $a2, -1
.L80002F34:
/* 3B34 80002F34 8CAE0000 */  lw         $t6, ($a1)
/* 3B38 80002F38 0006102A */  slt        $v0, $zero, $a2
/* 3B3C 80002F3C 24C6FFFF */  addiu      $a2, $a2, -1
/* 3B40 80002F40 24840004 */  addiu      $a0, $a0, 4
/* 3B44 80002F44 24A50004 */  addiu      $a1, $a1, 4
/* 3B48 80002F48 1440FFFA */  bnez       $v0, .L80002F34
/* 3B4C 80002F4C AC8EFFFC */   sw        $t6, -4($a0)
.L80002F50:
/* 3B50 80002F50 03E00008 */  jr         $ra
/* 3B54 80002F54 00000000 */   nop       

glabel func_80002F58
/* 3B58 80002F58 3C0E8007 */  lui        $t6, 0x8007
/* 3B5C 80002F5C 8DCE8B90 */  lw         $t6, -0x7470($t6)
/* 3B60 80002F60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3B64 80002F64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3B68 80002F68 11C0000C */  beqz       $t6, .L80002F9C
/* 3B6C 80002F6C 3C0F8000 */   lui       $t7, 0x8000
/* 3B70 80002F70 8DEF0318 */  lw         $t7, 0x318($t7)
/* 3B74 80002F74 3C010060 */  lui        $at, 0x60
/* 3B78 80002F78 34210001 */  ori        $at, $at, 1
/* 3B7C 80002F7C 01E1082B */  sltu       $at, $t7, $at
/* 3B80 80002F80 14200006 */  bnez       $at, .L80002F9C
/* 3B84 80002F84 3C048010 */   lui       $a0, 0x8010
/* 3B88 80002F88 24844BB0 */  addiu      $a0, $a0, 0x4bb0
/* 3B8C 80002F8C 0C0008B0 */  jal        func_800022C0
/* 3B90 80002F90 3C058060 */   lui       $a1, 0x8060
/* 3B94 80002F94 10000007 */  b          .L80002FB4
/* 3B98 80002F98 00000000 */   nop       
.L80002F9C:
/* 3B9C 80002F9C 3C048010 */  lui        $a0, 0x8010
/* 3BA0 80002FA0 24844BB0 */  addiu      $a0, $a0, 0x4bb0
/* 3BA4 80002FA4 0C0008B0 */  jal        func_800022C0
/* 3BA8 80002FA8 3C058040 */   lui       $a1, 0x8040
/* 3BAC 80002FAC 3C018007 */  lui        $at, 0x8007
/* 3BB0 80002FB0 AC208B90 */  sw         $zero, -0x7470($at)
.L80002FB4:
/* 3BB4 80002FB4 0C000E18 */  jal        func_80003860
/* 3BB8 80002FB8 00000000 */   nop       
/* 3BBC 80002FBC 3C040001 */  lui        $a0, 1
/* 3BC0 80002FC0 0C000A90 */  jal        func_80002A40
/* 3BC4 80002FC4 00002825 */   or        $a1, $zero, $zero
/* 3BC8 80002FC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3BCC 80002FCC 3C01800A */  lui        $at, 0x800a
/* 3BD0 80002FD0 AC2260B0 */  sw         $v0, 0x60b0($at)
/* 3BD4 80002FD4 03E00008 */  jr         $ra
/* 3BD8 80002FD8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80002FDC
/* 3BDC 80002FDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3BE0 80002FE0 00802825 */  or         $a1, $a0, $zero
/* 3BE4 80002FE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3BE8 80002FE8 3C04800A */  lui        $a0, 0x800a
/* 3BEC 80002FEC 0C000ABE */  jal        func_80002AF8
/* 3BF0 80002FF0 8C8460B0 */   lw        $a0, 0x60b0($a0)
/* 3BF4 80002FF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3BF8 80002FF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3BFC 80002FFC 03E00008 */  jr         $ra
/* 3C00 80003000 00000000 */   nop       

glabel func_80003004
/* 3C04 80003004 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C08 80003008 00802825 */  or         $a1, $a0, $zero
/* 3C0C 8000300C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3C10 80003010 3C04800A */  lui        $a0, 0x800a
/* 3C14 80003014 0C000AF4 */  jal        func_80002BD0
/* 3C18 80003018 8C8460B0 */   lw        $a0, 0x60b0($a0)
/* 3C1C 8000301C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3C20 80003020 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3C24 80003024 03E00008 */  jr         $ra
/* 3C28 80003028 00000000 */   nop       

glabel func_8000302C
/* 3C2C 8000302C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3C30 80003030 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3C34 80003034 AFA40028 */  sw         $a0, 0x28($sp)
/* 3C38 80003038 AFA5002C */  sw         $a1, 0x2c($sp)
/* 3C3C 8000303C AFA60030 */  sw         $a2, 0x30($sp)
/* 3C40 80003040 AFA70034 */  sw         $a3, 0x34($sp)
/* 3C44 80003044 8C830000 */  lw         $v1, ($a0)
/* 3C48 80003048 2408000F */  addiu      $t0, $zero, 0xf
/* 3C4C 8000304C 24090011 */  addiu      $t1, $zero, 0x11
/* 3C50 80003050 AFA90020 */  sw         $t1, 0x20($sp)
/* 3C54 80003054 AFA80024 */  sw         $t0, 0x24($sp)
/* 3C58 80003058 0C001E96 */  jal        func_80007A58
/* 3C5C 8000305C AFA3001C */   sw        $v1, 0x1c($sp)
/* 3C60 80003060 8FA3001C */  lw         $v1, 0x1c($sp)
/* 3C64 80003064 8FA7002C */  lw         $a3, 0x2c($sp)
/* 3C68 80003068 8FA80024 */  lw         $t0, 0x24($sp)
/* 3C6C 8000306C 8FA90020 */  lw         $t1, 0x20($sp)
/* 3C70 80003070 10400005 */  beqz       $v0, .L80003088
/* 3C74 80003074 8FAA0030 */   lw        $t2, 0x30($sp)
/* 3C78 80003078 00073840 */  sll        $a3, $a3, 1
/* 3C7C 8000307C 000A5040 */  sll        $t2, $t2, 1
/* 3C80 80003080 2408001E */  addiu      $t0, $zero, 0x1e
/* 3C84 80003084 24090022 */  addiu      $t1, $zero, 0x22
.L80003088:
/* 3C88 80003088 00601025 */  or         $v0, $v1, $zero
/* 3C8C 8000308C 3C0FE700 */  lui        $t7, 0xe700
/* 3C90 80003090 AC4F0000 */  sw         $t7, ($v0)
/* 3C94 80003094 AC400004 */  sw         $zero, 4($v0)
/* 3C98 80003098 24640008 */  addiu      $a0, $v1, 8
/* 3C9C 8000309C 3C18F700 */  lui        $t8, 0xf700
/* 3CA0 800030A0 AC980000 */  sw         $t8, ($a0)
/* 3CA4 800030A4 97A50036 */  lhu        $a1, 0x36($sp)
/* 3CA8 800030A8 314C03FF */  andi       $t4, $t2, 0x3ff
/* 3CAC 800030AC 000C6B80 */  sll        $t5, $t4, 0xe
/* 3CB0 800030B0 0005CC00 */  sll        $t9, $a1, 0x10
/* 3CB4 800030B4 312F03FF */  andi       $t7, $t1, 0x3ff
/* 3CB8 800030B8 3C01F600 */  lui        $at, 0xf600
/* 3CBC 800030BC 03255825 */  or         $t3, $t9, $a1
/* 3CC0 800030C0 AC8B0004 */  sw         $t3, 4($a0)
/* 3CC4 800030C4 01A17025 */  or         $t6, $t5, $at
/* 3CC8 800030C8 000FC080 */  sll        $t8, $t7, 2
/* 3CCC 800030CC 310D03FF */  andi       $t5, $t0, 0x3ff
/* 3CD0 800030D0 30EB03FF */  andi       $t3, $a3, 0x3ff
/* 3CD4 800030D4 24860008 */  addiu      $a2, $a0, 8
/* 3CD8 800030D8 000B6380 */  sll        $t4, $t3, 0xe
/* 3CDC 800030DC 000D7880 */  sll        $t7, $t5, 2
/* 3CE0 800030E0 01D8C825 */  or         $t9, $t6, $t8
/* 3CE4 800030E4 018F7025 */  or         $t6, $t4, $t7
/* 3CE8 800030E8 ACCE0004 */  sw         $t6, 4($a2)
/* 3CEC 800030EC ACD90000 */  sw         $t9, ($a2)
/* 3CF0 800030F0 8FB80028 */  lw         $t8, 0x28($sp)
/* 3CF4 800030F4 24C30008 */  addiu      $v1, $a2, 8
/* 3CF8 800030F8 AF030000 */  sw         $v1, ($t8)
/* 3CFC 800030FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D00 80003100 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3D04 80003104 03E00008 */  jr         $ra
/* 3D08 80003108 00000000 */   nop       

glabel func_8000310C
/* 3D0C 8000310C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 3D10 80003110 AFBF0024 */  sw         $ra, 0x24($sp)
/* 3D14 80003114 AFB0001C */  sw         $s0, 0x1c($sp)
/* 3D18 80003118 00808025 */  or         $s0, $a0, $zero
/* 3D1C 8000311C 0C000A8C */  jal        func_80002A30
/* 3D20 80003120 AFB10020 */   sw        $s1, 0x20($sp)
/* 3D24 80003124 0C0009D9 */  jal        func_80002764
/* 3D28 80003128 AFA20054 */   sw        $v0, 0x54($sp)
/* 3D2C 8000312C 3C088007 */  lui        $t0, 0x8007
/* 3D30 80003130 8D088B90 */  lw         $t0, -0x7470($t0)
/* 3D34 80003134 8FA30054 */  lw         $v1, 0x54($sp)
/* 3D38 80003138 02002025 */  or         $a0, $s0, $zero
/* 3D3C 8000313C 00488823 */  subu       $s1, $v0, $t0
/* 3D40 80003140 06200039 */  bltz       $s1, .L80003228
/* 3D44 80003144 3C021FFF */   lui       $v0, 0x1fff
/* 3D48 80003148 8C6F0028 */  lw         $t7, 0x28($v1)
/* 3D4C 8000314C 3C021FFF */  lui        $v0, 0x1fff
/* 3D50 80003150 3442FFFF */  ori        $v0, $v0, 0xffff
/* 3D54 80003154 01E2C024 */  and        $t8, $t7, $v0
/* 3D58 80003158 0018CBC2 */  srl        $t9, $t8, 0xf
/* 3D5C 8000315C 8C6E0020 */  lw         $t6, 0x20($v1)
/* 3D60 80003160 2729001E */  addiu      $t1, $t9, 0x1e
/* 3D64 80003164 AFA90044 */  sw         $t1, 0x44($sp)
/* 3D68 80003168 8C6A002C */  lw         $t2, 0x2c($v1)
/* 3D6C 8000316C 01C23024 */  and        $a2, $t6, $v0
/* 3D70 80003170 000633C2 */  srl        $a2, $a2, 0xf
/* 3D74 80003174 01425824 */  and        $t3, $t2, $v0
/* 3D78 80003178 01686023 */  subu       $t4, $t3, $t0
/* 3D7C 8000317C 000C6BC2 */  srl        $t5, $t4, 0xf
/* 3D80 80003180 25AE001E */  addiu      $t6, $t5, 0x1e
/* 3D84 80003184 AFAE0040 */  sw         $t6, 0x40($sp)
/* 3D88 80003188 8C6F0024 */  lw         $t7, 0x24($v1)
/* 3D8C 8000318C 24C6001E */  addiu      $a2, $a2, 0x1e
/* 3D90 80003190 AFA60048 */  sw         $a2, 0x48($sp)
/* 3D94 80003194 01E2C024 */  and        $t8, $t7, $v0
/* 3D98 80003198 0308C823 */  subu       $t9, $t8, $t0
/* 3D9C 8000319C 00194BC2 */  srl        $t1, $t9, 0xf
/* 3DA0 800031A0 252A001E */  addiu      $t2, $t1, 0x1e
/* 3DA4 800031A4 AFAA003C */  sw         $t2, 0x3c($sp)
/* 3DA8 800031A8 02002025 */  or         $a0, $s0, $zero
/* 3DAC 800031AC 2405001E */  addiu      $a1, $zero, 0x1e
/* 3DB0 800031B0 0C000C0B */  jal        func_8000302C
/* 3DB4 800031B4 3407FBCB */   ori       $a3, $zero, 0xfbcb
/* 3DB8 800031B8 02002025 */  or         $a0, $s0, $zero
/* 3DBC 800031BC 8FA50048 */  lw         $a1, 0x48($sp)
/* 3DC0 800031C0 8FA60044 */  lw         $a2, 0x44($sp)
/* 3DC4 800031C4 0C000C0B */  jal        func_8000302C
/* 3DC8 800031C8 3407FFCB */   ori       $a3, $zero, 0xffcb
/* 3DCC 800031CC 02002025 */  or         $a0, $s0, $zero
/* 3DD0 800031D0 8FA50044 */  lw         $a1, 0x44($sp)
/* 3DD4 800031D4 8FA60040 */  lw         $a2, 0x40($sp)
/* 3DD8 800031D8 0C000C0B */  jal        func_8000302C
/* 3DDC 800031DC 24072ABF */   addiu     $a3, $zero, 0x2abf
/* 3DE0 800031E0 02002025 */  or         $a0, $s0, $zero
/* 3DE4 800031E4 8FA50040 */  lw         $a1, 0x40($sp)
/* 3DE8 800031E8 8FA6003C */  lw         $a2, 0x3c($sp)
/* 3DEC 800031EC 0C000C0B */  jal        func_8000302C
/* 3DF0 800031F0 3407FFCB */   ori       $a3, $zero, 0xffcb
/* 3DF4 800031F4 3C068008 */  lui        $a2, 0x8008
/* 3DF8 800031F8 24C6AF20 */  addiu      $a2, $a2, -0x50e0
/* 3DFC 800031FC 2404001E */  addiu      $a0, $zero, 0x1e
/* 3E00 80003200 24050014 */  addiu      $a1, $zero, 0x14
/* 3E04 80003204 02203825 */  or         $a3, $s1, $zero
/* 3E08 80003208 06210003 */  bgez       $s1, .L80003218
/* 3E0C 8000320C 00115A83 */   sra       $t3, $s1, 0xa
/* 3E10 80003210 262103FF */  addiu      $at, $s1, 0x3ff
/* 3E14 80003214 00015A83 */  sra        $t3, $at, 0xa
.L80003218:
/* 3E18 80003218 0C002055 */  jal        func_80008154
/* 3E1C 8000321C AFAB0010 */   sw        $t3, 0x10($sp)
/* 3E20 80003220 10000036 */  b          .L800032FC
/* 3E24 80003224 8FBF0024 */   lw        $ra, 0x24($sp)
.L80003228:
/* 3E28 80003228 8C6D0028 */  lw         $t5, 0x28($v1)
/* 3E2C 8000322C 3442FFFF */  ori        $v0, $v0, 0xffff
/* 3E30 80003230 8C6C0020 */  lw         $t4, 0x20($v1)
/* 3E34 80003234 01A27024 */  and        $t6, $t5, $v0
/* 3E38 80003238 000E7BC2 */  srl        $t7, $t6, 0xf
/* 3E3C 8000323C 25F8001E */  addiu      $t8, $t7, 0x1e
/* 3E40 80003240 AFB80030 */  sw         $t8, 0x30($sp)
/* 3E44 80003244 8C79002C */  lw         $t9, 0x2c($v1)
/* 3E48 80003248 01823024 */  and        $a2, $t4, $v0
/* 3E4C 8000324C 000633C2 */  srl        $a2, $a2, 0xf
/* 3E50 80003250 03224824 */  and        $t1, $t9, $v0
/* 3E54 80003254 01285023 */  subu       $t2, $t1, $t0
/* 3E58 80003258 000A5BC2 */  srl        $t3, $t2, 0xf
/* 3E5C 8000325C 256C001E */  addiu      $t4, $t3, 0x1e
/* 3E60 80003260 AFAC002C */  sw         $t4, 0x2c($sp)
/* 3E64 80003264 8C6D0024 */  lw         $t5, 0x24($v1)
/* 3E68 80003268 24C6001E */  addiu      $a2, $a2, 0x1e
/* 3E6C 8000326C AFA60034 */  sw         $a2, 0x34($sp)
/* 3E70 80003270 01A27024 */  and        $t6, $t5, $v0
/* 3E74 80003274 01C87823 */  subu       $t7, $t6, $t0
/* 3E78 80003278 000FC3C2 */  srl        $t8, $t7, 0xf
/* 3E7C 8000327C 2719001E */  addiu      $t9, $t8, 0x1e
/* 3E80 80003280 AFB90028 */  sw         $t9, 0x28($sp)
/* 3E84 80003284 2405001E */  addiu      $a1, $zero, 0x1e
/* 3E88 80003288 0C000C0B */  jal        func_8000302C
/* 3E8C 8000328C 3407FBCB */   ori       $a3, $zero, 0xfbcb
/* 3E90 80003290 02002025 */  or         $a0, $s0, $zero
/* 3E94 80003294 8FA50034 */  lw         $a1, 0x34($sp)
/* 3E98 80003298 8FA6002C */  lw         $a2, 0x2c($sp)
/* 3E9C 8000329C 0C000C0B */  jal        func_8000302C
/* 3EA0 800032A0 3407FFCB */   ori       $a3, $zero, 0xffcb
/* 3EA4 800032A4 02002025 */  or         $a0, $s0, $zero
/* 3EA8 800032A8 8FA5002C */  lw         $a1, 0x2c($sp)
/* 3EAC 800032AC 8FA60030 */  lw         $a2, 0x30($sp)
/* 3EB0 800032B0 0C000C0B */  jal        func_8000302C
/* 3EB4 800032B4 3407F94B */   ori       $a3, $zero, 0xf94b
/* 3EB8 800032B8 02002025 */  or         $a0, $s0, $zero
/* 3EBC 800032BC 8FA50030 */  lw         $a1, 0x30($sp)
/* 3EC0 800032C0 8FA60028 */  lw         $a2, 0x28($sp)
/* 3EC4 800032C4 0C000C0B */  jal        func_8000302C
/* 3EC8 800032C8 3407FFCB */   ori       $a3, $zero, 0xffcb
/* 3ECC 800032CC 00113823 */  negu       $a3, $s1
/* 3ED0 800032D0 3C068008 */  lui        $a2, 0x8008
/* 3ED4 800032D4 24C6AF34 */  addiu      $a2, $a2, -0x50cc
/* 3ED8 800032D8 2404001E */  addiu      $a0, $zero, 0x1e
/* 3EDC 800032DC 24050014 */  addiu      $a1, $zero, 0x14
/* 3EE0 800032E0 04E10003 */  bgez       $a3, .L800032F0
/* 3EE4 800032E4 00074A83 */   sra       $t1, $a3, 0xa
/* 3EE8 800032E8 24E103FF */  addiu      $at, $a3, 0x3ff
/* 3EEC 800032EC 00014A83 */  sra        $t1, $at, 0xa
.L800032F0:
/* 3EF0 800032F0 0C002055 */  jal        func_80008154
/* 3EF4 800032F4 AFA90010 */   sw        $t1, 0x10($sp)
/* 3EF8 800032F8 8FBF0024 */  lw         $ra, 0x24($sp)
.L800032FC:
/* 3EFC 800032FC 8FB0001C */  lw         $s0, 0x1c($sp)
/* 3F00 80003300 8FB10020 */  lw         $s1, 0x20($sp)
/* 3F04 80003304 03E00008 */  jr         $ra
/* 3F08 80003308 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8000330C
/* 3F0C 8000330C 2CA20001 */  sltiu      $v0, $a1, 1
/* 3F10 80003310 38420001 */  xori       $v0, $v0, 1
/* 3F14 80003314 1040000A */  beqz       $v0, .L80003340
/* 3F18 80003318 24A5FFFF */   addiu     $a1, $a1, -1
.L8000331C:
/* 3F1C 8000331C 2CA20001 */  sltiu      $v0, $a1, 1
/* 3F20 80003320 38420001 */  xori       $v0, $v0, 1
/* 3F24 80003324 240EFFFF */  addiu      $t6, $zero, -1
/* 3F28 80003328 240FFFFF */  addiu      $t7, $zero, -1
/* 3F2C 8000332C 24A5FFFF */  addiu      $a1, $a1, -1
/* 3F30 80003330 AC8F0004 */  sw         $t7, 4($a0)
/* 3F34 80003334 AC8E0000 */  sw         $t6, ($a0)
/* 3F38 80003338 1440FFF8 */  bnez       $v0, .L8000331C
/* 3F3C 8000333C 24840008 */   addiu     $a0, $a0, 8
.L80003340:
/* 3F40 80003340 03E00008 */  jr         $ra
/* 3F44 80003344 00000000 */   nop       

glabel func_80003348
/* 3F48 80003348 8C8E0000 */  lw         $t6, ($a0)
/* 3F4C 8000334C 8C8F0004 */  lw         $t7, 4($a0)
/* 3F50 80003350 3C028040 */  lui        $v0, 0x8040
/* 3F54 80003354 3C018040 */  lui        $at, 0x8040
/* 3F58 80003358 002E0826 */  xor        $at, $at, $t6
/* 3F5C 8000335C 004F1026 */  xor        $v0, $v0, $t7
/* 3F60 80003360 00411025 */  or         $v0, $v0, $at
/* 3F64 80003364 2C420001 */  sltiu      $v0, $v0, 1
/* 3F68 80003368 00001825 */  or         $v1, $zero, $zero
/* 3F6C 8000336C 1040000C */  beqz       $v0, .L800033A0
/* 3F70 80003370 24840008 */   addiu     $a0, $a0, 8
.L80003374:
/* 3F74 80003374 8C980000 */  lw         $t8, ($a0)
/* 3F78 80003378 8C990004 */  lw         $t9, 4($a0)
/* 3F7C 8000337C 3C028040 */  lui        $v0, 0x8040
/* 3F80 80003380 3C018040 */  lui        $at, 0x8040
/* 3F84 80003384 00380826 */  xor        $at, $at, $t8
/* 3F88 80003388 00591026 */  xor        $v0, $v0, $t9
/* 3F8C 8000338C 00411025 */  or         $v0, $v0, $at
/* 3F90 80003390 2C420001 */  sltiu      $v0, $v0, 1
/* 3F94 80003394 24840008 */  addiu      $a0, $a0, 8
/* 3F98 80003398 1440FFF6 */  bnez       $v0, .L80003374
/* 3F9C 8000339C 24630001 */   addiu     $v1, $v1, 1
.L800033A0:
/* 3FA0 800033A0 03E00008 */  jr         $ra
/* 3FA4 800033A4 000310C0 */   sll       $v0, $v1, 3
/* 3FA8 800033A8 00000000 */  nop        
/* 3FAC 800033AC 00000000 */  nop        
