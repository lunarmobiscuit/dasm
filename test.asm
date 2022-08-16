	PROCESSOR 6524T8
	SEG Code
	ORG $FF0000

	; dasm Apple2four.asm -oApple2four.rom -f3

Reset
	CLD
	JSR Sub
	LDX 0
	LDA Hello,X
	BEQ Loop
	STA $400,X
	INX
	BNE Reset

Loop
	CLC
	BCC Loop

Sub
	CLC
	RTS

	SEG Data
	ORG $FF0200

Hello dc.b "Apple ][4"

	SEG Interrupts
	ORG $FFFFF7

Vectors
	.byte $00, $00, $00    ; NMI
	.byte $00, $ff, $ff    ; RESET
	.byte $00, $00, $00    ; IRQ

	END