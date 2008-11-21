		.include	"equates.inc"
		.include	"exp_kernel.inc"
		.include	"globals.inc"
		.include	"macros.inc"

;		* =  $7600
		.BYTE 1
; ---------------------------------------------------------------------------
		JMP	loc_7613
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_823B
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		DEC	$1937
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7613:				; CODE XREF: RAM:7601j
		INC	$1937
		LDX	#4

loc_7618:				; CODE XREF: RAM:761Fj
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_7618
		dldi	off_1977, $7670
		dldi	off_16, $774F
		JSR	$184B
		LDA	$1933
		STA	$62
		LDX	#$A

loc_763D:				; CODE XREF: RAM:766Ej
		TXA
		ASL	A
		ASL	A
		TAY
		LDA	$6313
		CMP	unk_7751,Y
		BNE	loc_766D
		LDA	$6314
		CMP	unk_7752,Y
		BNE	loc_766D
		LDA	$6315
		CMP	unk_7753,Y
		BNE	loc_766D
		STY	$63
		LDX	unk_7754,Y
		LDA	unk_77A9,X
		STA	7
		LDA	unk_77AB,X
		STA	8
		LDA	#2
		JMP	$180F
; ---------------------------------------------------------------------------

loc_766D:				; CODE XREF: RAM:7647j	RAM:764Fj ...
		DEX
		BPL	loc_763D
		LDY	$63
		LDX	unk_7754,Y
		LDA	unk_770B,X
		STA	byte_770F
		LDA	unk_770D,X
		STA	byte_7710
		dldi	off_16, $7711
		LDX	$62
		JSR	$1851

loc_768E:				; CODE XREF: RAM:76F7j	RAM:7708j
		LDA	#0
		STA	byte_77AD

loc_7693:				; CODE XREF: RAM:76A9j	RAM:76FFj
		dldi	off_1977, $76A0
		JMP	$1806
; ---------------------------------------------------------------------------
		LDA	$31
		BPL	loc_76AE
		JSR	$1821
		AND	#2
		BEQ	loc_7693
		JMP	loc_76DE
; ---------------------------------------------------------------------------

loc_76AE:				; CODE XREF: RAM:76A2j
		JSR	$183F
		CMP	#$59 ; 'Y'
		BNE	loc_76DA
		LDY	$63
		LDA	unk_777D,Y
		STA	$6313
		LDA	unk_777E,Y
		STA	$6314
		LDA	unk_777F,Y
		STA	$6315
		LDA	unk_7780,Y
		STA	$6312
		LDA	#$11
		STA	$6316
		STA	$6317
		JMP	loc_76E9
; ---------------------------------------------------------------------------

loc_76DA:				; CODE XREF: RAM:76B3j
		CMP	#$4E ; 'N'
		BNE	loc_76F1

loc_76DE:				; CODE XREF: RAM:76ABj
		LDX	#4

loc_76E0:				; CODE XREF: RAM:76E7j
		LDA	$750D,X
		STA	$6313,X
		DEX
		BPL	loc_76E0

loc_76E9:				; CODE XREF: RAM:76D7j
		LDA	#$FF
		STA	$AC00
		JMP	$180C
; ---------------------------------------------------------------------------

loc_76F1:				; CODE XREF: RAM:76DCj
		LDX	byte_77AD
		CMP	a8531212,X	; "853-1212"
		BNE	loc_768E
		INX
		STX	byte_77AD
		CPX	#8
		BCC	loc_7693
		LDY	#$B6 ; '∂'
		LDX	#$77 ; 'w'
		JSR	$1884
		JMP	loc_768E
; ---------------------------------------------------------------------------
unk_770B:	.BYTE $DF ; ﬂ		; DATA XREF: RAM:7675r
		.BYTE $E2 ; ‚
unk_770D:	.BYTE $77 ; w		; DATA XREF: RAM:767Br
		.BYTE $77 ; w
byte_770F:	.BYTE 0			; DATA XREF: RAM:7678w
byte_7710:	.BYTE 0			; DATA XREF: RAM:767Ew
		.BYTE $A6,  0,	0
		.BYTE $A5
aAStairwayLeads:.BYTE "A stairway leads "
		.BYTE $B4
		.WORD $770F
		.BYTE 5
aDoYouTakeItq:	.BYTE ", do you take it?",$0D,$0D
		.BYTE $A5,'('
		BLINK 'Y'
aEsOr:		.BYTE "es or "
aN:		BLINK 'N'
aO:		.BYTE "o)",$0D,$FF
		.BYTE $A8,$FF
unk_7751:	.BYTE $10		; DATA XREF: RAM:7644r
unk_7752:	.BYTE $11		; DATA XREF: RAM:764Cr
unk_7753:	.BYTE	0		; DATA XREF: RAM:7654r
unk_7754:	.BYTE	1		; DATA XREF: RAM:765Br	RAM:7672r
		.BYTE $11
		.BYTE $11
		.BYTE	1
		.BYTE	1
		.BYTE $10
		.BYTE $10
		.BYTE	2
		.BYTE	1
		.BYTE $10
		.BYTE  $F
		.BYTE	3
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	4
		.BYTE	0
		.BYTE $1F
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $1F
		.BYTE	4
		.BYTE	0
		.BYTE $1F
		.BYTE $1F
		.BYTE	4
		.BYTE	0
		.BYTE $11
		.BYTE  $C
		.BYTE	4
		.BYTE	1
		.BYTE	6
		.BYTE  $F
		.BYTE	5
		.BYTE	0
		.BYTE  $A
		.BYTE	3
		.BYTE	5
		.BYTE	0
unk_777D:	.BYTE	0		; DATA XREF: RAM:76B7r
unk_777E:	.BYTE	0		; DATA XREF: RAM:76BDr
unk_777F:	.BYTE	4		; DATA XREF: RAM:76C3r
unk_7780:	.BYTE	0		; DATA XREF: RAM:76C9r
		.BYTE $1E
		.BYTE	0
		.BYTE	4
		.BYTE	3
		.BYTE	1
		.BYTE $1F
		.BYTE	4
		.BYTE	1
		.BYTE $1E
		.BYTE $1F
		.BYTE	4
		.BYTE	3
		.BYTE $10
		.BYTE $10
		.BYTE	0
		.BYTE	0
		.BYTE $10
		.BYTE $11
		.BYTE	1
		.BYTE	3
		.BYTE $11
		.BYTE $10
		.BYTE	2
		.BYTE	1
		.BYTE  $F
		.BYTE  $F
		.BYTE	3
		.BYTE	3
		.BYTE	9
		.BYTE	3
		.BYTE	5
		.BYTE	3
		.BYTE  $E
		.BYTE $16
		.BYTE	4
		.BYTE	0
		.BYTE $10
		.BYTE  $C
		.BYTE	4
		.BYTE	3
unk_77A9:	.BYTE $E7 ; Á		; DATA XREF: RAM:765Er
		.BYTE $B7 ; ∑
unk_77AB:	.BYTE $77 ; w		; DATA XREF: RAM:7663r
		.BYTE $83 ; É
byte_77AD:	.BYTE 0			; DATA XREF: RAM:7690w	RAM:loc_76F1r ...
a8531212:	.BYTE "853-1212"        ; DATA XREF: RAM:76F4r
		.BYTE $81
		.BYTE $29 ; )
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $14
aTacticalNuke:	.BYTE "Tactical Nuke",0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE $DD ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $5F ; _
		.BYTE	0
		.BYTE $FF
aUp:		.BYTE "up",0
aDown:		.BYTE "down",0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $82 ; Ç
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A3 ; £
		.BYTE $AE ; Æ
		.BYTE $3E ; >
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $BF ; ø
		.BYTE $EB ; Î
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $BC ; º
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	9
		.BYTE	0
		.BYTE	8
		.BYTE	2
		.BYTE	0
		.BYTE	8
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	8
		.BYTE $20
		.BYTE	8
		.BYTE $22 ; "
		.BYTE $80 ; Ä
		.BYTE	8
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $82 ; Ç
		.BYTE $88 ; à
		.BYTE	8
		.BYTE $20
		.BYTE	2
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $22 ; "
		.BYTE $8A ; ä
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $20
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE	8
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $88 ; à
		.BYTE $20
		.BYTE $2A ; *
		.BYTE $88 ; à
		.BYTE $A2 ; ¢
		.BYTE $82 ; Ç
		.BYTE	8
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $A0 ; †
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $28 ; (
		.BYTE $88 ; à
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE	8
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $20
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE	8
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $22 ; "
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $28 ; (
		.BYTE $80 ; Ä
		.BYTE $A2 ; ¢
		.BYTE $82 ; Ç
		.BYTE	8
		.BYTE $8A ; ä
		.BYTE $88 ; à
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE	8
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $BF ; ø
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $82 ; Ç
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $82 ; Ç
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $83 ; É
		.BYTE $2B ; +
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $AE ; Æ
		.BYTE $1B
		.BYTE	2
		.BYTE $BE ; æ
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $CA ;  
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $88 ; à
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $20
		.BYTE $82 ; Ç
		.BYTE $22 ; "
		.BYTE $20
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $20
		.BYTE $88 ; à
		.BYTE $82 ; Ç
		.BYTE	8
		.BYTE $20
		.BYTE $88 ; à
		.BYTE $22 ; "
		.BYTE $28 ; (
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE	8
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE	8
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $8A ; ä
		.BYTE $20
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $28 ; (
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $22 ; "
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $28 ; (
		.BYTE $88 ; à
		.BYTE $A2 ; ¢
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $2A ; *
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $88 ; à
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $22 ; "
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $22 ; "
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $80 ; Ä
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $8F ; è
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $BA ; ∫
		.BYTE $BE ; æ
		.BYTE $BE ; æ
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $CA ;  
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $28 ; (
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $83 ; É
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $AA ; ™
		.BYTE $BC ; º
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $C3 ; √
		.BYTE	3
		.BYTE $83 ; É
		.BYTE $8A ; ä
		.BYTE $20
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $82 ; Ç
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $C0 ; ¿
		.BYTE $CA ;  
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	8
		.BYTE $88 ; à
		.BYTE	2
		.BYTE	8
		.BYTE	0
		.BYTE	8
		.BYTE $22 ; "
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $22 ; "
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $28 ; (
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $20
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $88 ; à
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE	2
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE $22 ; "
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $22 ; "
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $22 ; "
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $88 ; à
		.BYTE $A2 ; ¢
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	3
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $88 ; à
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	8
		.BYTE $22 ; "
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $88 ; à
		.BYTE $A0 ; †
		.BYTE $88 ; à
		.BYTE	8
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $A8 ; ®
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $8E ; é
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $F2 ; Ú
		.BYTE $C2 ; ¬
		.BYTE $E2 ; ‚
		.BYTE $C8 ; »
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $BC ; º
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $F0 ; 
		.BYTE $EA ; Í
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $52 ; R
		.BYTE $3D ; =
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $A8 ; ®
		.BYTE $59 ; Y
		.BYTE $58 ; X
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $99 ; ô
		.BYTE $4A ; J
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $D9 ; Ÿ
		.BYTE $EA ; Í
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $E0 ; ‡
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FC ; ¸
		.BYTE  $D
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $EB ; Î
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $A8 ; ®
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $65 ; e
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $82 ; Ç
		.BYTE $2A ; *
		.BYTE $BF ; ø
		.BYTE $8F ; è
		.BYTE $83 ; É
		.BYTE $1B
		.BYTE	4
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	1
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE	2
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $A2 ; ¢
		.BYTE $22 ; "
		.BYTE	8
		.BYTE  $A
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $28 ; (
		.BYTE $88 ; à
		.BYTE $82 ; Ç
		.BYTE $22 ; "
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE	2
		.BYTE $4A ; J
		.BYTE $88 ; à
		.BYTE $A2 ; ¢
		.BYTE $28 ; (
		.BYTE $88 ; à
		.BYTE $82 ; Ç
		.BYTE $22 ; "
		.BYTE $28 ; (
		.BYTE $8A ; ä
		.BYTE $28 ; (
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE	8
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE	2
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $88 ; à
		.BYTE $82 ; Ç
		.BYTE $82 ; Ç
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $A2 ; ¢
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $20
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $22 ; "
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $88 ; à
		.BYTE $A2 ; ¢
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $A0 ; †
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $41 ; A
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $82 ; Ç
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $BA ; ∫
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $3C ; <
		.BYTE  $C
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $82 ; Ç
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $82 ; Ç
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	3
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $42 ; B
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $88 ; à
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $A2 ; ¢
		.BYTE $22 ; "
		.BYTE	8
		.BYTE $4A ; J
		.BYTE $42 ; B
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $88 ; à
		.BYTE  $A
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $22 ; "
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $20
		.BYTE	0
		.BYTE $42 ; B
		.BYTE $88 ; à
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $28 ; (
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE $28 ; (
		.BYTE $A8 ; ®
		.BYTE $28 ; (
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $20
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE	8
		.BYTE $20
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $41 ; A
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $20
		.BYTE	0
		.BYTE  $A
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $22 ; "
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $82 ; Ç
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE	0
		.BYTE  $A
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE  $A
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $82 ; Ç
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $42 ; B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $A8 ; ®
		.BYTE $22 ; "
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $4A ; J
		.BYTE $42 ; B
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $A8 ; ®
		.BYTE $20
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $41 ; A
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $11
		.BYTE $1F
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $2F ; /
		.BYTE $FA ; ˙
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $BF ; ø
		.BYTE $FB ; ˚
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $AA ; ™
		.BYTE $FA ; ˙
		.BYTE $AE ; Æ
		.BYTE $AA ; ™
		.BYTE $5A ; Z
		.BYTE $F5 ; ı
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1A
		.BYTE $F6 ; ˆ
		.BYTE $AA ; ™
		.BYTE $B9 ; π
		.BYTE $55 ; U
		.BYTE $4D ; M
		.BYTE $11
		.BYTE $17
		.BYTE $FC ; ¸
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $6F ; o
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $82 ; Ç
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	5
		.BYTE	0
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	4
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $41 ; A
		.BYTE $14
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $82 ; Ç
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	5
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	5
		.BYTE $51 ; Q
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE  $A
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $82 ; Ç
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE  $A
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $41 ; A
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE  $B
		.BYTE $1B
		.BYTE $1E
		.BYTE	8
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $36 ; 6
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $D
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $2E ; .
		.BYTE	3
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE $70 ; p
		.BYTE	5
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE	5
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $70 ; p
		.BYTE $1B
		.BYTE $1D
		.BYTE	0
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE	3
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE $70 ; p
		.BYTE $1B
		.BYTE $1E
		.BYTE	0
		.BYTE	8
		.BYTE $35 ; 5
		.BYTE  $D
		.BYTE $9C ; ú
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE $FF
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42 ; B
		.BYTE	0
		.BYTE	4
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	6
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $F0 ; 
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $42 ; B
		.BYTE $58 ; X
		.BYTE	6
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE $41 ; A
		.BYTE $63 ; c
		.BYTE $81 ; Å
		.BYTE $48 ; H
		.BYTE $8A ; ä
		.BYTE $48 ; H
		.BYTE $98 ; ò
		.BYTE $48 ; H
		.BYTE $8D ; ç
		.BYTE  $A
		.BYTE $D4 ; ‘
		.BYTE $A9 ; ©
		.BYTE $36 ; 6
		.BYTE $8D ; ç
		.BYTE $19
		.BYTE $D0 ; –
		.BYTE $8D ; ç
		.BYTE  $A
		.BYTE $D4 ; ‘
		.BYTE $A9 ; ©
		.BYTE $50 ; P
		.BYTE $A2 ; ¢
		.BYTE $70 ; p
		.BYTE $A0 ; †
		.BYTE $90 ; ê
		.BYTE $8D ; ç
		.BYTE  $A
		.BYTE $D4 ; ‘
		.BYTE $8D ; ç
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE $8E ; é
		.BYTE	1
		.BYTE $D0 ; –
		.BYTE $8C ; å
		.BYTE	2
		.BYTE $D0 ; –
		.BYTE $8D ; ç
		.BYTE  $A
		.BYTE $D4 ; ‘
		.BYTE $A9 ; ©
		.BYTE $B0 ; ∞
		.BYTE $A2 ; ¢
		.BYTE $48 ; H
		.BYTE $A0 ; †
		.BYTE $40 ; @
		.BYTE $8D ; ç
		.BYTE  $A
		.BYTE $D4 ; ‘
		.BYTE $8D ; ç
		.BYTE	3
		.BYTE $D0 ; –
		.BYTE $8E ; é
		.BYTE	4
		.BYTE $D0 ; –
		.BYTE $8C ; å
		.BYTE	5
		.BYTE $D0 ; –
		.BYTE $8D ; ç
		.BYTE  $A
		.BYTE $D4 ; ‘
		.BYTE $A9 ; ©
		.BYTE $38 ; 8
		.BYTE $A2 ; ¢
		.BYTE $30 ; 0
		.BYTE $8D ; ç
		.BYTE  $A
		.BYTE $D4 ; ‘
		.BYTE $8D ; ç
		.BYTE	6
		.BYTE $D0 ; –
		.BYTE $8E ; é
		.BYTE	7
		.BYTE $D0 ; –
		.BYTE $8D ; ç
		.BYTE  $A
		.BYTE $D4 ; ‘
		.BYTE $AE ; Æ
		.BYTE $5B ; [
		.BYTE $BC ; º
		.BYTE $AC ; ¨
		.BYTE $5D ; ]
		.BYTE $BC ; º
		.BYTE $AD ; ≠
		.BYTE $5A ; Z
		.BYTE $BC ; º
		.BYTE $8D ; ç
		.BYTE  $A
		.BYTE $D4 ; ‘
		.BYTE $8D ; ç
		.BYTE $1A
		.BYTE $D0 ; –
		.BYTE $8E ; é
		.BYTE $16
		.BYTE $D0 ; –
		.BYTE $8C ; å
		.BYTE $18
		.BYTE $D0 ; –
		.BYTE $A2 ; ¢
		.BYTE $23 ; #
		.BYTE $BC ; º
		.BYTE $DC ; ‹
		.BYTE $BB ; ª
		.BYTE $BD ; Ω
		.BYTE $94 ; î
		.BYTE $BB ; ª
		.BYTE $8D ; ç
		.BYTE  $A
		.BYTE $D4 ; ‘
		.BYTE $8D ; ç
		.BYTE $17
		.BYTE $D0 ; –
		.BYTE $8C ; å
		.BYTE $19
		.BYTE $D0 ; –
		.BYTE $BD ; Ω
		.BYTE $4C ; L
		.BYTE $BB ; ª
		.BYTE $8D ; ç
		.BYTE	9
		.BYTE $D4 ; ‘
		.BYTE $BD ; Ω
		.BYTE $70 ; p
		.BYTE $BB ; ª
		.BYTE $8D ; ç
		.BYTE  $A
		.BYTE $D4 ; ‘
		.BYTE $8D ; ç
		.BYTE $16
		.BYTE $D0 ; –
		.BYTE $BD ; Ω
		.BYTE $B8 ; ∏
		.BYTE $BB ; ª
		.BYTE $8D ; ç
		.BYTE $18
		.BYTE $D0 ; –
		.BYTE $BC ; º
		.BYTE $DB ; €
		.BYTE $BB ; ª
		.BYTE $CA ;  
		.BYTE $10
		.BYTE $D9 ; Ÿ
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $8D ; ç
		.BYTE  $A
		.BYTE $D4 ; ‘
		.BYTE $8D ; ç
		.BYTE $18
		.BYTE $D0 ; –
		.BYTE $8D ; ç
		.BYTE $1A
		.BYTE $D0 ; –
		.BYTE $A9 ; ©
		.BYTE  $E
		.BYTE $8D ; ç
		.BYTE $17
		.BYTE $D0 ; –
		.BYTE $A9 ; ©
		.BYTE $14
		.BYTE $8D ; ç
		.BYTE	9
		.BYTE $D4 ; ‘
		.BYTE $68 ; h
		.BYTE $A8 ; ®
		.BYTE $68 ; h
		.BYTE $AA ; ™
		.BYTE $68 ; h
		.BYTE $40 ; @
; ---------------------------------------------------------------------------

loc_823B:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$63 ; 'c'
		STA	$254
		LDA	#$81 ; 'Å'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_824E:				; CODE XREF: RAM:825Cj
		LDY	#$C

loc_8250:				; CODE XREF: RAM:8257j
		STA	$BB4C,X
		DEX
		BMI	loc_825E
		DEY
		BNE	loc_8250
		CLC
		ADC	#4
		BNE	loc_824E

loc_825E:				; CODE XREF: RAM:8254j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_8356
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_8356
		LDA	#0
		STA	loc_8284+1
		LDA	#$BD ; 'Ω'
		STA	loc_8284+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_8284:				; CODE XREF: RAM:8288j	RAM:828Ej
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_8284
		INC	loc_8284+2
		DEY
		BNE	loc_8284
		LDX	#7

loc_8292:				; CODE XREF: RAM:8296j
		STA	$D000,X
		DEX
		BPL	loc_8292
		LDA	#3
		TAX

loc_829B:				; CODE XREF: RAM:829Fj
		STA	$D008,X
		DEX
		BPL	loc_829B
		LDA	#$FF
		STA	$D00C
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_82C9:				; CODE XREF: RAM:82EFj
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_82D1:				; CODE XREF: RAM:82DCj
		LSR	4
		BCC	loc_82DB
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_82DB:				; CODE XREF: RAM:82D3j
		DEY
		BPL	loc_82D1
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_82E9
		INC	$A

loc_82E9:				; CODE XREF: RAM:82E5j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_82C9
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_8301:				; CODE XREF: RAM:8312j
		CLC
		LDA	$F0,X
		ADC	#$80 ; 'Ä'
		STA	$F2,X
		LDA	$F1,X
		ADC	#0
		STA	$F3,X
		INX
		INX
		CPX	#8
		BCC	loc_8301

loc_8314:				; CODE XREF: RAM:8331j
		LDX	#0

loc_8316:				; CODE XREF: RAM:832Fj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_831C:				; CODE XREF: RAM:8321j
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_831C
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_8333
		CPX	#$A
		BCC	loc_8316
		BCS	loc_8314

loc_8333:				; CODE XREF: RAM:832Bj
		LDX	#3
		LDA	$BC5F

loc_8338:				; CODE XREF: RAM:833Cj
		STA	COLPM0,X
		DEX
		BPL	loc_8338
		dldi	off_24A, $8195
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_8356:				; CODE XREF: RAM:8266p	RAM:8271p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_8360
		INC	8

loc_8360:				; CODE XREF: RAM:835Cj
		CMP	#$1B
		BEQ	loc_836F
		STA	(9),Y
		INC	9
		BNE	loc_836C
		INC	$A

loc_836C:				; CODE XREF: RAM:8368j
		JMP	loc_8356
; ---------------------------------------------------------------------------

loc_836F:				; CODE XREF: RAM:8362j
		LDA	(7),Y
		INC	7
		BNE	loc_8377
		INC	8

loc_8377:				; CODE XREF: RAM:8373j
		CMP	#$FF
		BNE	loc_837C
		RTS
; ---------------------------------------------------------------------------

loc_837C:				; CODE XREF: RAM:8379j
		STA	byte_83B6
		ADC	9
		STA	loc_838F+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_8394
		LDA	byte_83B6

loc_838F:				; DATA XREF: RAM:8381w
		SBC	#$FF
		STA	byte_83B6

loc_8394:				; CODE XREF: RAM:838Aj
		LDA	(7),Y
		INC	7
		BNE	loc_839C
		INC	8

loc_839C:				; CODE XREF: RAM:8398j
		LDY	byte_83B6

loc_839F:				; CODE XREF: RAM:83A2j
		STA	(9),Y
		DEY
		BPL	loc_839F
		INC	byte_83B6
		LDA	byte_83B6
		CLC
		ADC	9
		STA	9
		BCC	loc_83B3
		INC	$A

loc_83B3:				; CODE XREF: RAM:83AFj
		JMP	loc_8356
; ---------------------------------------------------------------------------
byte_83B6:	.BYTE 0			; DATA XREF: RAM:loc_837Cw RAM:838Cr ...
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $BE ; æ
		.BYTE $EB ; Î
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $AF ; Ø
		.BYTE $FA ; ˙
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $FA ; ˙
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	3
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $FA ; ˙
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $80 ; Ä
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE $57 ; W
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $54 ; T
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $80 ; Ä
		.BYTE $2B ; +
		.BYTE $AB ; ´
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $AB ; ´
		.BYTE $83 ; É
		.BYTE $23 ; #
		.BYTE $AE ; Æ
		.BYTE $AB ; ´
		.BYTE $AF ; Ø
		.BYTE $3A ; :
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $AF ; Ø
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $AE ; Æ
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $AF ; Ø
		.BYTE $BA ; ∫
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; Í
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $CA ;  
		.BYTE $C0 ; ¿
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $82 ; Ç
		.BYTE	8
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE $88 ; à
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $20
		.BYTE $1B
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $54 ; T
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE	2
		.BYTE	0
		.BYTE $A3 ; £
		.BYTE $1B
		.BYTE	3
		.BYTE $AB ; ´
		.BYTE $AE ; Æ
		.BYTE $BA ; ∫
		.BYTE $FA ; ˙
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $BA ; ∫
		.BYTE $AF ; Ø
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $BA ; ∫
		.BYTE $AE ; Æ
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $BA ; ∫
		.BYTE $BA ; ∫
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $F0 ; 
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $AF ; Ø
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $AE ; Æ
		.BYTE $BA ; ∫
		.BYTE $3A ; :
		.BYTE $BF ; ø
		.BYTE $BA ; ∫
		.BYTE $8E ; é
		.BYTE $8E ; é
		.BYTE $83 ; É
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AF ; Ø
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $AE ; Æ
		.BYTE $B2 ; ≤
		.BYTE $B2 ; ≤
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE	3
		.BYTE $83 ; É
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	3
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $E8 ; Ë
		.BYTE $C0 ; ¿
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $28 ; (
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $22 ; "
		.BYTE $82 ; Ç
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $20
		.BYTE $88 ; à
		.BYTE $80 ; Ä
		.BYTE	8
		.BYTE $28 ; (
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	8
		.BYTE $1B
		.BYTE $47 ; G
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $54 ; T
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; Í
		.BYTE $BE ; æ
		.BYTE $AE ; Æ
		.BYTE $A3 ; £
		.BYTE $8E ; é
		.BYTE $3A ; :
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $BA ; ∫
		.BYTE $BA ; ∫
		.BYTE $BE ; æ
		.BYTE $BE ; æ
		.BYTE $CE ; Œ
		.BYTE $C2 ; ¬
		.BYTE	2
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $EB ; Î
		.BYTE $BE ; æ
		.BYTE $1B
		.BYTE	3
		.BYTE $AE ; Æ
		.BYTE $EA ; Í
		.BYTE $C0 ; ¿
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $52 ; R
		.BYTE $3D ; =
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $A8 ; ®
		.BYTE $59 ; Y
		.BYTE $58 ; X
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $99 ; ô
		.BYTE $4A ; J
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $D9 ; Ÿ
		.BYTE $EA ; Í
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $E0 ; ‡
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FC ; ¸
		.BYTE  $D
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $EB ; Î
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $A8 ; ®
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $65 ; e
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $1B
		.BYTE	6
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $AE ; Æ
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	4
		.BYTE $80 ; Ä
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $FA ; ˙
		.BYTE $BA ; ∫
		.BYTE $1B
		.BYTE	3
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $22 ; "
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $88 ; à
		.BYTE $80 ; Ä
		.BYTE $28 ; (
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $20
		.BYTE $1B
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $54 ; T
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $BA ; ∫
		.BYTE $BA ; ∫
		.BYTE $AE ; Æ
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $BF ; ø
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AE ; Æ
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	5
		.BYTE $80 ; Ä
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $AE ; Æ
		.BYTE $AC ; ¨
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	3
		.BYTE $A2 ; ¢
		.BYTE $28 ; (
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE	2
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE $A0 ; †
		.BYTE $82 ; Ç
		.BYTE $22 ; "
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE $20
		.BYTE	2
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE	8
		.BYTE $1B
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $54 ; T
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $20
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $20
		.BYTE $28 ; (
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $88 ; à
		.BYTE $82 ; Ç
		.BYTE $22 ; "
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $20
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE	8
		.BYTE $20
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $20
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE	8
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE	8
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $54 ; T
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $11
		.BYTE $1F
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $2F ; /
		.BYTE $FA ; ˙
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $BF ; ø
		.BYTE $FB ; ˚
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $AA ; ™
		.BYTE $FA ; ˙
		.BYTE $AE ; Æ
		.BYTE $AA ; ™
		.BYTE $5A ; Z
		.BYTE $F5 ; ı
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1A
		.BYTE $F6 ; ˆ
		.BYTE $AA ; ™
		.BYTE $B9 ; π
		.BYTE $55 ; U
		.BYTE $4D ; M
		.BYTE $11
		.BYTE $17
		.BYTE $FC ; ¸
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $6F ; o
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $88 ; à
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $82 ; Ç
		.BYTE $22 ; "
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $28 ; (
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $28 ; (
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $20
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $20
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $28 ; (
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE $20
		.BYTE $82 ; Ç
		.BYTE $20
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE $20
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	8
		.BYTE	0
		.BYTE $20
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $15
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $A8 ; ®
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE $88 ; à
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $1B
		.BYTE	4
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $80 ; Ä
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	2
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	0
		.BYTE  $A
		.BYTE  $A
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $15
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $28 ; (
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $41 ; A
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE  $A
		.BYTE $1B
		.BYTE $1E
		.BYTE	8
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $36 ; 6
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $D
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $2F ; /
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE $60 ; `
		.BYTE  $D
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	1
		.BYTE $AC ; ¨
		.BYTE  $D
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	1
		.BYTE $2C ; ,
		.BYTE	5
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	1
		.BYTE $E8 ; Ë
		.BYTE $1B
		.BYTE $1D
		.BYTE	0
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE	3
		.BYTE $80 ; Ä
		.BYTE	0
; end of 'RAM'


		.END
