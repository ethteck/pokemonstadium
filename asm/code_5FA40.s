.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8005EE40
/* 5FA40 8005EE40 28C10010 */  slti       $at, $a2, 0x10
/* 5FA44 8005EE44 14200037 */  bnez       $at, .L8005EF24
/* 5FA48 8005EE48 00851026 */   xor       $v0, $a0, $a1
/* 5FA4C 8005EE4C 30420003 */  andi       $v0, $v0, 3
/* 5FA50 8005EE50 14400019 */  bnez       $v0, .L8005EEB8
/* 5FA54 8005EE54 0004C023 */   negu      $t8, $a0
/* 5FA58 8005EE58 33180003 */  andi       $t8, $t8, 3
/* 5FA5C 8005EE5C 13000007 */  beqz       $t8, .L8005EE7C
/* 5FA60 8005EE60 00D83023 */   subu      $a2, $a2, $t8
/* 5FA64 8005EE64 00601025 */  or         $v0, $v1, $zero
/* 5FA68 8005EE68 88820000 */  lwl        $v0, ($a0)
/* 5FA6C 8005EE6C 88A30000 */  lwl        $v1, ($a1)
/* 5FA70 8005EE70 00982021 */  addu       $a0, $a0, $t8
/* 5FA74 8005EE74 00B82821 */  addu       $a1, $a1, $t8
/* 5FA78 8005EE78 14430036 */  bne        $v0, $v1, .L8005EF54
.L8005EE7C:
/* 5FA7C 8005EE7C 2401FFFC */   addiu     $at, $zero, -4
/* 5FA80 8005EE80 00C13824 */  and        $a3, $a2, $at
/* 5FA84 8005EE84 10E00027 */  beqz       $a3, .L8005EF24
/* 5FA88 8005EE88 00C73023 */   subu      $a2, $a2, $a3
/* 5FA8C 8005EE8C 00E43821 */  addu       $a3, $a3, $a0
/* 5FA90 8005EE90 8C820000 */  lw         $v0, ($a0)
.L8005EE94:
/* 5FA94 8005EE94 8CA30000 */  lw         $v1, ($a1)
/* 5FA98 8005EE98 24840004 */  addiu      $a0, $a0, 4
/* 5FA9C 8005EE9C 24A50004 */  addiu      $a1, $a1, 4
/* 5FAA0 8005EEA0 1443002C */  bne        $v0, $v1, .L8005EF54
/* 5FAA4 8005EEA4 00000000 */   nop       
/* 5FAA8 8005EEA8 5487FFFA */  bnel       $a0, $a3, .L8005EE94
/* 5FAAC 8005EEAC 8C820000 */   lw        $v0, ($a0)
/* 5FAB0 8005EEB0 1000001C */  b          .L8005EF24
/* 5FAB4 8005EEB4 00000000 */   nop       
.L8005EEB8:
/* 5FAB8 8005EEB8 00053823 */  negu       $a3, $a1
/* 5FABC 8005EEBC 30E70003 */  andi       $a3, $a3, 3
/* 5FAC0 8005EEC0 10E0000A */  beqz       $a3, .L8005EEEC
/* 5FAC4 8005EEC4 00C73023 */   subu      $a2, $a2, $a3
/* 5FAC8 8005EEC8 00E43821 */  addu       $a3, $a3, $a0
/* 5FACC 8005EECC 90820000 */  lbu        $v0, ($a0)
.L8005EED0:
/* 5FAD0 8005EED0 90A30000 */  lbu        $v1, ($a1)
/* 5FAD4 8005EED4 24840001 */  addiu      $a0, $a0, 1
/* 5FAD8 8005EED8 24A50001 */  addiu      $a1, $a1, 1
/* 5FADC 8005EEDC 1443001D */  bne        $v0, $v1, .L8005EF54
/* 5FAE0 8005EEE0 00000000 */   nop       
/* 5FAE4 8005EEE4 5487FFFA */  bnel       $a0, $a3, .L8005EED0
/* 5FAE8 8005EEE8 90820000 */   lbu       $v0, ($a0)
.L8005EEEC:
/* 5FAEC 8005EEEC 2401FFFC */  addiu      $at, $zero, -4
/* 5FAF0 8005EEF0 00C13824 */  and        $a3, $a2, $at
/* 5FAF4 8005EEF4 10E0000B */  beqz       $a3, .L8005EF24
/* 5FAF8 8005EEF8 00C73023 */   subu      $a2, $a2, $a3
/* 5FAFC 8005EEFC 00E43821 */  addu       $a3, $a3, $a0
/* 5FB00 8005EF00 88820000 */  lwl        $v0, ($a0)
.L8005EF04:
/* 5FB04 8005EF04 8CA30000 */  lw         $v1, ($a1)
/* 5FB08 8005EF08 98820003 */  lwr        $v0, 3($a0)
/* 5FB0C 8005EF0C 24840004 */  addiu      $a0, $a0, 4
/* 5FB10 8005EF10 24A50004 */  addiu      $a1, $a1, 4
/* 5FB14 8005EF14 1443000F */  bne        $v0, $v1, .L8005EF54
/* 5FB18 8005EF18 00000000 */   nop       
/* 5FB1C 8005EF1C 5487FFF9 */  bnel       $a0, $a3, .L8005EF04
/* 5FB20 8005EF20 88820000 */   lwl       $v0, ($a0)
.L8005EF24:
/* 5FB24 8005EF24 18C00009 */  blez       $a2, .L8005EF4C
/* 5FB28 8005EF28 00C43821 */   addu      $a3, $a2, $a0
/* 5FB2C 8005EF2C 90820000 */  lbu        $v0, ($a0)
.L8005EF30:
/* 5FB30 8005EF30 90A30000 */  lbu        $v1, ($a1)
/* 5FB34 8005EF34 24840001 */  addiu      $a0, $a0, 1
/* 5FB38 8005EF38 24A50001 */  addiu      $a1, $a1, 1
/* 5FB3C 8005EF3C 14430005 */  bne        $v0, $v1, .L8005EF54
/* 5FB40 8005EF40 00000000 */   nop       
/* 5FB44 8005EF44 5487FFFA */  bnel       $a0, $a3, .L8005EF30
/* 5FB48 8005EF48 90820000 */   lbu       $v0, ($a0)
.L8005EF4C:
/* 5FB4C 8005EF4C 03E00008 */  jr         $ra
/* 5FB50 8005EF50 00001025 */   or        $v0, $zero, $zero
.L8005EF54:
/* 5FB54 8005EF54 03E00008 */  jr         $ra
/* 5FB58 8005EF58 24020001 */   addiu     $v0, $zero, 1
/* 5FB5C 8005EF5C 00000000 */  nop        

glabel func_8005EF60
/* 5FB60 8005EF60 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 5FB64 8005EF64 3C018008 */  lui        $at, 0x8008
/* 5FB68 8005EF68 C424E4A0 */  lwc1       $f4, -0x1b60($at)
/* 5FB6C 8005EF6C AFB00018 */  sw         $s0, 0x18($sp)
/* 5FB70 8005EF70 00808025 */  or         $s0, $a0, $zero
/* 5FB74 8005EF74 3C018010 */  lui        $at, 0x8010
/* 5FB78 8005EF78 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5FB7C 8005EF7C AFA5003C */  sw         $a1, 0x3c($sp)
/* 5FB80 8005EF80 AFA60040 */  sw         $a2, 0x40($sp)
/* 5FB84 8005EF84 AFA70044 */  sw         $a3, 0x44($sp)
/* 5FB88 8005EF88 27A60048 */  addiu      $a2, $sp, 0x48
/* 5FB8C 8005EF8C 27A50044 */  addiu      $a1, $sp, 0x44
/* 5FB90 8005EF90 27A40040 */  addiu      $a0, $sp, 0x40
/* 5FB94 8005EF94 0C018908 */  jal        func_80062420
/* 5FB98 8005EF98 E4243880 */   swc1      $f4, 0x3880($at)
/* 5FB9C 8005EF9C 3C018010 */  lui        $at, 0x8010
/* 5FBA0 8005EFA0 C7AC003C */  lwc1       $f12, 0x3c($sp)
/* 5FBA4 8005EFA4 C4263880 */  lwc1       $f6, 0x3880($at)
/* 5FBA8 8005EFA8 46066302 */  mul.s      $f12, $f12, $f6
/* 5FBAC 8005EFAC 0C015B64 */  jal        func_80056D90
/* 5FBB0 8005EFB0 E7AC003C */   swc1      $f12, 0x3c($sp)
/* 5FBB4 8005EFB4 C7AC003C */  lwc1       $f12, 0x3c($sp)
/* 5FBB8 8005EFB8 0C018BE4 */  jal        func_80062F90
/* 5FBBC 8005EFBC E7A00034 */   swc1      $f0, 0x34($sp)
/* 5FBC0 8005EFC0 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* 5FBC4 8005EFC4 C7A40044 */  lwc1       $f4, 0x44($sp)
/* 5FBC8 8005EFC8 3C013F80 */  lui        $at, 0x3f80
/* 5FBCC 8005EFCC 44814000 */  mtc1       $at, $f8
/* 5FBD0 8005EFD0 46045182 */  mul.s      $f6, $f10, $f4
/* 5FBD4 8005EFD4 02002025 */  or         $a0, $s0, $zero
/* 5FBD8 8005EFD8 46004081 */  sub.s      $f2, $f8, $f0
/* 5FBDC 8005EFDC C7A80048 */  lwc1       $f8, 0x48($sp)
/* 5FBE0 8005EFE0 E7A00030 */  swc1       $f0, 0x30($sp)
/* 5FBE4 8005EFE4 46023402 */  mul.s      $f16, $f6, $f2
/* 5FBE8 8005EFE8 00000000 */  nop        
/* 5FBEC 8005EFEC 46082182 */  mul.s      $f6, $f4, $f8
/* 5FBF0 8005EFF0 E7B0002C */  swc1       $f16, 0x2c($sp)
/* 5FBF4 8005EFF4 46023482 */  mul.s      $f18, $f6, $f2
/* 5FBF8 8005EFF8 00000000 */  nop        
/* 5FBFC 8005EFFC 460A4102 */  mul.s      $f4, $f8, $f10
/* 5FC00 8005F000 E7B20028 */  swc1       $f18, 0x28($sp)
/* 5FC04 8005F004 46022182 */  mul.s      $f6, $f4, $f2
/* 5FC08 8005F008 0C016C14 */  jal        func_8005B050
/* 5FC0C 8005F00C E7A60024 */   swc1      $f6, 0x24($sp)
/* 5FC10 8005F010 C7A80040 */  lwc1       $f8, 0x40($sp)
/* 5FC14 8005F014 3C013F80 */  lui        $at, 0x3f80
/* 5FC18 8005F018 44815000 */  mtc1       $at, $f10
/* 5FC1C 8005F01C 46084002 */  mul.s      $f0, $f8, $f8
/* 5FC20 8005F020 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* 5FC24 8005F024 C7AE0034 */  lwc1       $f14, 0x34($sp)
/* 5FC28 8005F028 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* 5FC2C 8005F02C C7B20028 */  lwc1       $f18, 0x28($sp)
/* 5FC30 8005F030 46005101 */  sub.s      $f4, $f10, $f0
/* 5FC34 8005F034 460C2182 */  mul.s      $f6, $f4, $f12
/* 5FC38 8005F038 46003200 */  add.s      $f8, $f6, $f0
/* 5FC3C 8005F03C E6080000 */  swc1       $f8, ($s0)
/* 5FC40 8005F040 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* 5FC44 8005F044 460E5102 */  mul.s      $f4, $f10, $f14
/* 5FC48 8005F048 46049181 */  sub.s      $f6, $f18, $f4
/* 5FC4C 8005F04C E6060024 */  swc1       $f6, 0x24($s0)
/* 5FC50 8005F050 C7A80040 */  lwc1       $f8, 0x40($sp)
/* 5FC54 8005F054 460E4282 */  mul.s      $f10, $f8, $f14
/* 5FC58 8005F058 44814000 */  mtc1       $at, $f8
/* 5FC5C 8005F05C 46125100 */  add.s      $f4, $f10, $f18
/* 5FC60 8005F060 E6040018 */  swc1       $f4, 0x18($s0)
/* 5FC64 8005F064 C7A60044 */  lwc1       $f6, 0x44($sp)
/* 5FC68 8005F068 46063082 */  mul.s      $f2, $f6, $f6
/* 5FC6C 8005F06C 46024281 */  sub.s      $f10, $f8, $f2
/* 5FC70 8005F070 460C5102 */  mul.s      $f4, $f10, $f12
/* 5FC74 8005F074 46022180 */  add.s      $f6, $f4, $f2
/* 5FC78 8005F078 E6060014 */  swc1       $f6, 0x14($s0)
/* 5FC7C 8005F07C C7A80044 */  lwc1       $f8, 0x44($sp)
/* 5FC80 8005F080 C7A40024 */  lwc1       $f4, 0x24($sp)
/* 5FC84 8005F084 460E4282 */  mul.s      $f10, $f8, $f14
/* 5FC88 8005F088 46045180 */  add.s      $f6, $f10, $f4
/* 5FC8C 8005F08C E6060020 */  swc1       $f6, 0x20($s0)
/* 5FC90 8005F090 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* 5FC94 8005F094 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 5FC98 8005F098 460E5102 */  mul.s      $f4, $f10, $f14
/* 5FC9C 8005F09C 46044181 */  sub.s      $f6, $f8, $f4
/* 5FCA0 8005F0A0 44814000 */  mtc1       $at, $f8
/* 5FCA4 8005F0A4 E6060008 */  swc1       $f6, 8($s0)
/* 5FCA8 8005F0A8 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* 5FCAC 8005F0AC 460A5002 */  mul.s      $f0, $f10, $f10
/* 5FCB0 8005F0B0 46004101 */  sub.s      $f4, $f8, $f0
/* 5FCB4 8005F0B4 460C2182 */  mul.s      $f6, $f4, $f12
/* 5FCB8 8005F0B8 46003280 */  add.s      $f10, $f6, $f0
/* 5FCBC 8005F0BC E60A0028 */  swc1       $f10, 0x28($s0)
/* 5FCC0 8005F0C0 C7A80048 */  lwc1       $f8, 0x48($sp)
/* 5FCC4 8005F0C4 460E4102 */  mul.s      $f4, $f8, $f14
/* 5FCC8 8005F0C8 46048181 */  sub.s      $f6, $f16, $f4
/* 5FCCC 8005F0CC E6060010 */  swc1       $f6, 0x10($s0)
/* 5FCD0 8005F0D0 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* 5FCD4 8005F0D4 460E5202 */  mul.s      $f8, $f10, $f14
/* 5FCD8 8005F0D8 46104100 */  add.s      $f4, $f8, $f16
/* 5FCDC 8005F0DC E6040004 */  swc1       $f4, 4($s0)
/* 5FCE0 8005F0E0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5FCE4 8005F0E4 8FB00018 */  lw         $s0, 0x18($sp)
/* 5FCE8 8005F0E8 27BD0038 */  addiu      $sp, $sp, 0x38
/* 5FCEC 8005F0EC 03E00008 */  jr         $ra
/* 5FCF0 8005F0F0 00000000 */   nop       

glabel func_8005F0F4
/* 5FCF4 8005F0F4 44856000 */  mtc1       $a1, $f12
/* 5FCF8 8005F0F8 44867000 */  mtc1       $a2, $f14
/* 5FCFC 8005F0FC 44878000 */  mtc1       $a3, $f16
/* 5FD00 8005F100 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 5FD04 8005F104 C7A40070 */  lwc1       $f4, 0x70($sp)
/* 5FD08 8005F108 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5FD0C 8005F10C AFA40060 */  sw         $a0, 0x60($sp)
/* 5FD10 8005F110 44056000 */  mfc1       $a1, $f12
/* 5FD14 8005F114 44067000 */  mfc1       $a2, $f14
/* 5FD18 8005F118 44078000 */  mfc1       $a3, $f16
/* 5FD1C 8005F11C 27A40020 */  addiu      $a0, $sp, 0x20
/* 5FD20 8005F120 0C017BD8 */  jal        func_8005EF60
/* 5FD24 8005F124 E7A40010 */   swc1      $f4, 0x10($sp)
/* 5FD28 8005F128 27A40020 */  addiu      $a0, $sp, 0x20
/* 5FD2C 8005F12C 0C016BD4 */  jal        func_8005AF50
/* 5FD30 8005F130 8FA50060 */   lw        $a1, 0x60($sp)
/* 5FD34 8005F134 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5FD38 8005F138 27BD0060 */  addiu      $sp, $sp, 0x60
/* 5FD3C 8005F13C 03E00008 */  jr         $ra
/* 5FD40 8005F140 00000000 */   nop       
/* 5FD44 8005F144 00000000 */  nop        
/* 5FD48 8005F148 00000000 */  nop        
/* 5FD4C 8005F14C 00000000 */  nop        
