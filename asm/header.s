.section .header, "a"

.word 0x80371240 /* PI PSD Domain 1 register */
.word 0x0000000F /* Clockrate setting */
.word 0x80100400 /* Entrypoint address */
.word 0x00001449 /* Revision */
.word 0x90F5D9B3 /* Checksum 1 */
.word 0x9D0EDCF0 /* Checksum 2 */
.word 0x00000000 /* Unknown 1 */
.word 0x00000000 /* Unknown 2 */
.ascii "POKEMON STADIUM     " /* Internal ROM name */
.word 0x00000000 /* Unknown 3 */
.word 0x0000004E /* Cartridge */
.ascii "PO" /* Cartridge ID */
.ascii "E" /* Country code */
.byte 00 /* Version */
