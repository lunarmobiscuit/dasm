
	.PROCESSOR 6502

	.ORG 0

    DC.w $EE00		; native is little endian

    DC.s $FF00		; the opposite

    DC.w "Multibyte String"

    DC.s "Big Endian"
