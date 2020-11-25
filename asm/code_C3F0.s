.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000B7F0
/* C3F0 8000B7F0 8C870008 */  lw         $a3, 8($a0)
/* C3F4 8000B7F4 8C99000C */  lw         $t9, 0xc($a0)
/* C3F8 8000B7F8 8C980004 */  lw         $t8, 4($a0)
/* C3FC 8000B7FC 00E43820 */  add        $a3, $a3, $a0
/* C400 8000B800 0324C820 */  add        $t9, $t9, $a0
/* C404 8000B804 00003025 */  or         $a2, $zero, $zero
/* C408 8000B808 20840010 */  addi       $a0, $a0, 0x10
/* C40C 8000B80C 0305C020 */  add        $t8, $t8, $a1
.L8000B810:
/* C410 8000B810 54C00005 */  bnel       $a2, $zero, .L8000B828
/* C414 8000B814 0100482A */   slt       $t1, $t0, $zero
/* C418 8000B818 8C880000 */  lw         $t0, ($a0)
/* C41C 8000B81C 24060020 */  addiu      $a2, $zero, 0x20
/* C420 8000B820 20840004 */  addi       $a0, $a0, 4
/* C424 8000B824 0100482A */  slt        $t1, $t0, $zero
.L8000B828:
/* C428 8000B828 51200007 */  beql       $t1, $zero, .L8000B848
/* C42C 8000B82C 94EA0000 */   lhu       $t2, ($a3)
/* C430 8000B830 832A0000 */  lb         $t2, ($t9)
/* C434 8000B834 23390001 */  addi       $t9, $t9, 1
/* C438 8000B838 20A50001 */  addi       $a1, $a1, 1
/* C43C 8000B83C 1000000E */  b          .L8000B878
/* C440 8000B840 A0AAFFFF */   sb        $t2, -1($a1)
/* C444 8000B844 94EA0000 */  lhu        $t2, ($a3)
.L8000B848:
/* C448 8000B848 20E70002 */  addi       $a3, $a3, 2
/* C44C 8000B84C 000A5B02 */  srl        $t3, $t2, 0xc
/* C450 8000B850 314A0FFF */  andi       $t2, $t2, 0xfff
/* C454 8000B854 1160000D */  beqz       $t3, .L8000B88C
/* C458 8000B858 00AA4822 */   sub       $t1, $a1, $t2
/* C45C 8000B85C 216B0002 */  addi       $t3, $t3, 2
.L8000B860:
/* C460 8000B860 812AFFFF */  lb         $t2, -1($t1)
/* C464 8000B864 216BFFFF */  addi       $t3, $t3, -1
/* C468 8000B868 21290001 */  addi       $t1, $t1, 1
/* C46C 8000B86C 20A50001 */  addi       $a1, $a1, 1
/* C470 8000B870 1560FFFB */  bnez       $t3, .L8000B860
/* C474 8000B874 A0AAFFFF */   sb        $t2, -1($a1)
.L8000B878:
/* C478 8000B878 00084040 */  sll        $t0, $t0, 1
/* C47C 8000B87C 14B8FFE4 */  bne        $a1, $t8, .L8000B810
/* C480 8000B880 20C6FFFF */   addi      $a2, $a2, -1
/* C484 8000B884 03E00008 */  jr         $ra
/* C488 8000B888 00000000 */   nop       
.L8000B88C:
/* C48C 8000B88C 932B0000 */  lbu        $t3, ($t9)
/* C490 8000B890 23390001 */  addi       $t9, $t9, 1
/* C494 8000B894 1000FFF2 */  b          .L8000B860
/* C498 8000B898 216B0012 */   addi      $t3, $t3, 0x12
/* C49C 8000B89C 00000000 */  nop        
/* C4A0 8000B8A0 03E00008 */  jr         $ra
/* C4A4 8000B8A4 46006005 */   abs.s     $f0, $f12
/* C4A8 8000B8A8 00000000 */  nop        
/* C4AC 8000B8AC 00000000 */  nop        
