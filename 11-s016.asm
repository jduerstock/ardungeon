		.include	"macros.inc"


byte_600	= $600
loc_2000	= $2000
byte_BD80	= $BD80

;		.ORG	$B000
loc_B000:
		LDX	loc_B000-1
		LDA	byte_B043,X
		STA	$30A
		dldi	$0304, byte_BD80
		LDA	#5
		STA	$80
		JSR	sub_B045
		dldi	$0230, byte_B060
		LDA	$14

loc_B026:				; CODE XREF: RAM:B028j
		CMP	$14
		BEQ	loc_B026
		LDA	#17
		STA	$30A
		dldi	$0304, byte_600
		LDA	#188
		STA	$80
		JSR	sub_B045
		JMP	$2000
; ---------------------------------------------------------------------------
byte_B043:	.BYTE 11		; DATA XREF: RAM:B003r
		.BYTE 6

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_B045:				; CODE XREF: RAM:B017p	RAM:B03Dp ...
		JSR	$E453
		BMI	sub_B045
		CLC
		LDA	$304
		ADC	#128
		STA	$304
		BCC	loc_B058
		INC	$305

loc_B058:				; CODE XREF: sub_B045+Ej
		INC	$30A
		DEC	$80
		BNE	sub_B045
		RTS
; End of function sub_B045

; ---------------------------------------------------------------------------
byte_B060:	.BYTE $70		; DATA XREF: RAM:B07Do
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $42
		.WORD byte_BD80
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE $70 ; p
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE $70 ; p
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE $70 ; p
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE $41
		.WORD byte_B060
		.BYTE	0
; end of 'RAM'


		.END