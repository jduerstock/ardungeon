		.include	"equates.inc"
		.include	"globals.inc"
		.include	"macros.inc"

;		* =  $7600
		.BYTE $1B
; ---------------------------------------------------------------------------
		JMP	loc_7610
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_7AF9
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601j
		LDA	#$FF
		STA	$1937
		LDA	#$8C ; 'å'
		STA	$1977
		LDA	#$76 ; 'v'
		STA	$1978
		LDA	#$E2 ; '‚'
		STA	$16
		LDA	#$77 ; 'w'
		STA	$17
		JSR	$184B
		LDA	$1933
		STA	$62
		LDA	#$F0 ; ''
		STA	$190B
		LDA	#$96 ; 'ñ'
		STA	$190C
		LDA	#$F
		STA	$1909
		JSR	$1842
		JSR	sub_77A3
		BCC	loc_7651
		LDA	#$F8 ; '¯'
		STA	7
		LDA	#$82 ; 'Ç'
		STA	8
		JMP	loc_7659
; ---------------------------------------------------------------------------

loc_7651:				; CODE XREF: RAM:7644j
		LDA	#$75 ; 'u'
		STA	7
		LDA	#$7C ; '|'
		STA	8

loc_7659:				; CODE XREF: RAM:764Ej
		LDA	#2
		JSR	$180F
		JSR	$96F5
		LDA	$96F3
		STA	$224
		LDA	$96F4
		STA	$225
		DEC	$22F
		LDA	#$E7 ; 'Á'
		STA	7
		LDA	#$89 ; 'â'
		STA	8
		LDA	#$E6 ; 'Ê'
		STA	$B
		LDA	#5
		STA	$C
		LDA	#$F0 ; ''
		STA	9
		LDA	#$9F ; 'ü'
		STA	$A
		JSR	$187E
		RTS
; ---------------------------------------------------------------------------
		JSR	sub_77A3
		BCC	loc_76C4
		LDX	#$9F ; 'ü'
		LDY	#$F0 ; ''
		JSR	$96F0

loc_7698:				; CODE XREF: RAM:76BFj
		LDA	#$B6 ; '∂'
		STA	$16
		LDA	#$79 ; 'y'
		STA	$17
		LDX	$62
		JSR	$1851

loc_76A5:				; CODE XREF: RAM:76BBj
		LDA	#$B2 ; '≤'
		STA	$1977
		LDA	#$76 ; 'v'
		STA	$1978
		JMP	$1806
; ---------------------------------------------------------------------------
		JSR	$1821
		AND	#2
		BNE	loc_76C1
		LDA	$31
		BMI	loc_76A5
		CMP	#$30 ; '0'
		BNE	loc_7698

loc_76C1:				; CODE XREF: RAM:76B7j
		JMP	loc_77AC
; ---------------------------------------------------------------------------

loc_76C4:				; CODE XREF: RAM:768Fj
		LDA	#$E4 ; '‰'
		STA	$16
		LDA	#$77 ; 'w'
		STA	$17
		JSR	sub_77D8
		LDA	$639C
		BMI	loc_76D9
		JSR	sub_776E
		BCC	loc_7705

loc_76D9:				; CODE XREF: RAM:76D2j
		LDA	$639D
		BMI	loc_76E3
		JSR	sub_776E
		BCC	loc_7705

loc_76E3:				; CODE XREF: RAM:76DCj
		LDA	#$8E ; 'é'
		STA	$16
		LDA	#$79 ; 'y'
		STA	$17
		JSR	sub_77D8
		LDA	#0
		STA	$6347
		LDA	#0
		STA	$6348
		LDA	#$EE ; 'Ó'
		STA	$1977
		LDA	#$76 ; 'v'
		STA	$1978
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7705:				; CODE XREF: RAM:76D7j	RAM:76E1j
		LDA	$6303
		ORA	#$80 ; 'Ä'
		STA	$6303
		JSR	$1869
		LDA	$630F
		STA	$7521
		LDA	$6310
		STA	$7522
		LDX	#$75 ; 'u'
		LDY	#8
		LDA	#3
		SEC
		JSR	$1860
		LDA	#$F8 ; '¯'
		STA	7
		LDA	#$82 ; 'Ç'
		STA	8
		LDA	#2
		JSR	$180F
		LDX	#$9F ; 'ü'
		LDY	#$F0 ; ''
		JSR	$96F0
		LDA	#$58 ; 'X'
		STA	$16
		LDA	#$78 ; 'x'
		STA	$17
		JSR	sub_77D8
		LDA	#$A9 ; '©'
		STA	$16
		LDA	#$78 ; 'x'
		STA	$17
		JSR	sub_77D8
		LDA	#$FE ; '˛'
		STA	$16
		LDA	#$78 ; 'x'
		STA	$17
		JSR	sub_77D8
		LDA	#$E2 ; '‚'
		STA	$16
		LDA	#$77 ; 'w'
		STA	$17
		LDX	$62
		JSR	$1851
		JSR	$183C
		JMP	loc_77AC

; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_776E:				; CODE XREF: RAM:76D4p	RAM:76DEp
		STA	$4B
		JSR	$1887
		BEQ	loc_77A1
		LDA	$41
		CLC
		ADC	#6
		STA	$41
		BCC	loc_7780
		INC	$42

loc_7780:				; CODE XREF: sub_776E+Ej
		LDY	#0
		LDA	($41),Y
		CMP	#$7F ; ''
		BNE	loc_7793
		LDA	#2
		CLC
		ADC	$41
		STA	$41
		BCC	loc_7793
		INC	$42

loc_7793:				; CODE XREF: sub_776E+18j sub_776E+21j
		LDY	#$E

loc_7795:				; CODE XREF: sub_776E+2Fj
		LDA	($41),Y
		CMP	$7A12,Y
		BNE	loc_77A1
		DEY
		BPL	loc_7795
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_77A1:				; CODE XREF: sub_776E+5j sub_776E+2Cj
		SEC
		RTS
; End of function sub_776E


; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_77A3:				; CODE XREF: RAM:7641p	RAM:768Cp
		LDX	#$75 ; 'u'
		LDY	#8
		LDA	#3
		JMP	$1863
; End of function sub_77A3

; ---------------------------------------------------------------------------

loc_77AC:				; CODE XREF: RAM:loc_76C1j RAM:776Bj
		JSR	$96F5
		INC	$22F
		LDA	$6313
		CMP	#6
		BNE	loc_77C6
		LDA	#6
		STA	$6313
		LDA	#1
		STA	$6314
		JMP	$180C
; ---------------------------------------------------------------------------

loc_77C6:				; CODE XREF: RAM:77B7j
		LDA	#7
		STA	$6313
		LDA	#3
		STA	$6314
		LDA	#$FF
		STA	$AC00
		JMP	$180C

; €€€€€€€€€€€€€€€ S U B	R O U T	I N E €€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€


sub_77D8:				; CODE XREF: RAM:76CCp	RAM:76EBp ...
		LDX	$62
		JSR	$1851
		LDA	#$14
		JMP	$185A
; End of function sub_77D8

; ---------------------------------------------------------------------------
		.BYTE $A8,$FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aYouAreInARoomF:.BYTE "You are in a room filled with strange"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aMachinery_Sudd:.BYTE "machinery. Suddenly, a guard notices"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYouDrawsHisLas:.BYTE "you, draws his laser and fires!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aTheBlastIsRefl:.BYTE "The blast is reflected by your"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aMirroredShield:.BYTE "mirrored shield and vaporizes"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheAlien_:	.BYTE "the alien."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aCongratulation:.BYTE "CONGRATULATIONS!"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYouHaveSolvedO:.BYTE "You have solved one of the"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aMysteriesOfAlt:.BYTE "mysteries of Alternate Reality."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aButTakeHeed_Th:.BYTE "But take heed. The alien captors"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aDoNotTakeYourI:.BYTE "do not take your intrusion lightly."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aADoorLeadsToFu:.BYTE "A door leads to further adventures"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aInTheDungeonAn:.BYTE "in the Dungeon and beyond..."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	3
		.BYTE $A5
aTheBlastVapori:.BYTE "THE BLAST VAPORIZES YOU INSTANTLY!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aYouAreInARoo_0:.BYTE "You are in a room filled with the"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aCharredRemains:.BYTE "charred remains of alien machinery."
		.BYTE $D
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		.BYTE '('
		.BYTE $A1
a0:		.BYTE '0'
		.BYTE $A0
aLeave:		.BYTE ") Leave",$D
		.BYTE $FF
aMirroredShie_0:.BYTE "Mirrored Shield"
unk_7A21:	.BYTE $70 ; p		; DATA XREF: RAM:7A51o
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42 ; B
		.WORD $400
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
		.WORD $4F0
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
		.WORD $658
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
		.WORD unk_7A21
; ---------------------------------------------------------------------------
		PHA
		TXA
		PHA
		TYA
		PHA
		STA	WSYNC
		LDA	#$36 ; '6'
		STA	COLPF3
		STA	WSYNC
		LDA	#$50 ; 'P'
		LDX	#$70 ; 'p'
		LDY	#$90 ; 'ê'
		STA	WSYNC
		STA	$D000
		STX	$D001
		STY	$D002
		STA	WSYNC
		LDA	#$B0 ; '∞'
		LDX	#$48 ; 'H'
		LDY	#$40 ; '@'
		STA	WSYNC
		STA	$D003
		STX	$D004
		STY	$D005
		STA	WSYNC
		LDA	#$38 ; '8'
		LDX	#$30 ; '0'
		STA	WSYNC
		STA	$D006
		STX	$D007
		STA	WSYNC
		LDX	$BC5B
		LDY	$BC5D
		LDA	$BC5A
		STA	WSYNC
		STA	$D01A
		STX	$D016
		STY	$D018
		LDX	#$23 ; '#'
		LDY	$BBDC,X

loc_7AB7:				; CODE XREF: RAM:7ADCj
		LDA	$BB94,X
		STA	WSYNC
		STA	$D017
		STY	COLPF3
		LDA	$BB4C,X
		STA	CHBASE
		LDA	$BB70,X
		STA	WSYNC
		STA	$D016
		LDA	$BBB8,X
		STA	$D018
		LDY	$BBDB,X
		DEX
		BPL	loc_7AB7
		LDA	#0
		STA	WSYNC
		STA	$D018
		STA	$D01A
		LDA	#$E
		STA	$D017
		LDA	#$14
		STA	CHBASE
		PLA
		TAY
		PLA
		TAX
		PLA
		RTI
; ---------------------------------------------------------------------------

loc_7AF9:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$21 ; '!'
		STA	$254
		LDA	#$7A ; 'z'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_7B0C:				; CODE XREF: RAM:7B1Aj
		LDY	#$C

loc_7B0E:				; CODE XREF: RAM:7B15j
		STA	$BB4C,X
		DEX
		BMI	loc_7B1C
		DEY
		BNE	loc_7B0E
		CLC
		ADC	#4
		BNE	loc_7B0C

loc_7B1C:				; CODE XREF: RAM:7B12j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_7C14
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_7C14
		LDA	#0
		STA	loc_7B42+1
		LDA	#$BD ; 'Ω'
		STA	loc_7B42+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_7B42:				; CODE XREF: RAM:7B46j	RAM:7B4Cj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7B42
		INC	loc_7B42+2
		DEY
		BNE	loc_7B42
		LDX	#7

loc_7B50:				; CODE XREF: RAM:7B54j
		STA	$D000,X
		DEX
		BPL	loc_7B50
		LDA	#3
		TAX

loc_7B59:				; CODE XREF: RAM:7B5Dj
		STA	$D008,X
		DEX
		BPL	loc_7B59
		LDA	#$FF
		STA	$D00C
		LDA	#3
		STA	$D01D
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		LDA	#0
		STA	7
		LDA	#$BC ; 'º'
		STA	8
		LDA	#$F0 ; ''
		STA	9
		LDA	#4
		STA	$A
		LDA	#0
		STA	6

loc_7B87:				; CODE XREF: RAM:7BADj
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_7B8F:				; CODE XREF: RAM:7B9Aj
		LSR	4
		BCC	loc_7B99
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_7B99:				; CODE XREF: RAM:7B91j
		DEY
		BPL	loc_7B8F
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_7BA7
		INC	$A

loc_7BA7:				; CODE XREF: RAM:7BA3j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_7B87
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_7BBF:				; CODE XREF: RAM:7BD0j
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
		BCC	loc_7BBF

loc_7BD2:				; CODE XREF: RAM:7BEFj
		LDX	#0

loc_7BD4:				; CODE XREF: RAM:7BEDj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_7BDA:				; CODE XREF: RAM:7BDFj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_7BDA
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_7BF1
		CPX	#$A
		BCC	loc_7BD4
		BCS	loc_7BD2

loc_7BF1:				; CODE XREF: RAM:7BE9j
		LDX	#3
		LDA	$BC5F

loc_7BF6:				; CODE XREF: RAM:7BFAj
		STA	COLPM0,X
		DEX
		BPL	loc_7BF6
		dldi	off_24A, $7A53
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_7C14:				; CODE XREF: RAM:7B24p	RAM:7B2Fp ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_7C1E
		INC	8

loc_7C1E:				; CODE XREF: RAM:7C1Aj
		CMP	#$1B
		BEQ	loc_7C2D
		STA	(9),Y
		INC	9
		BNE	loc_7C2A
		INC	$A

loc_7C2A:				; CODE XREF: RAM:7C26j
		JMP	loc_7C14
; ---------------------------------------------------------------------------

loc_7C2D:				; CODE XREF: RAM:7C20j
		LDA	(7),Y
		INC	7
		BNE	loc_7C35
		INC	8

loc_7C35:				; CODE XREF: RAM:7C31j
		CMP	#$FF
		BNE	loc_7C3A
		RTS
; ---------------------------------------------------------------------------

loc_7C3A:				; CODE XREF: RAM:7C37j
		STA	byte_7C74
		ADC	9
		STA	loc_7C4D+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_7C52
		LDA	byte_7C74

loc_7C4D:				; DATA XREF: RAM:7C3Fw
		SBC	#$FF
		STA	byte_7C74

loc_7C52:				; CODE XREF: RAM:7C48j
		LDA	(7),Y
		INC	7
		BNE	loc_7C5A
		INC	8

loc_7C5A:				; CODE XREF: RAM:7C56j
		LDY	byte_7C74

loc_7C5D:				; CODE XREF: RAM:7C60j
		STA	(9),Y
		DEY
		BPL	loc_7C5D
		INC	byte_7C74
		LDA	byte_7C74
		CLC
		ADC	9
		STA	9
		BCC	loc_7C71
		INC	$A

loc_7C71:				; CODE XREF: RAM:7C6Dj
		JMP	loc_7C14
; ---------------------------------------------------------------------------
byte_7C74:	.BYTE 0			; DATA XREF: RAM:loc_7C3Aw RAM:7C4Ar ...
		.BYTE $1B
		.BYTE $49 ; I
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE	4
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $58 ; X
		.BYTE $60 ; `
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $15
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE	0
		.BYTE	0
		.BYTE $51 ; Q
		.BYTE $41 ; A
		.BYTE $42 ; B
		.BYTE $42 ; B
		.BYTE $4A ; J
		.BYTE $6A ; j
		.BYTE	0
		.BYTE	0
		.BYTE $94 ; î
		.BYTE $96 ; ñ
		.BYTE $A4 ; §
		.BYTE $A6 ; ¶
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE $47 ; G
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $88 ; à
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE $17
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE  $D
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $3A ; :
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE $1B
		.BYTE $1F
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	5
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $15
		.BYTE $95 ; ï
		.BYTE $96 ; ñ
		.BYTE $16
		.BYTE $9A ; ö
		.BYTE $9A ; ö
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A4 ; §
		.BYTE $81 ; Å
		.BYTE	1
		.BYTE $44 ; D
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE	2
		.BYTE $45 ; E
		.BYTE $10
		.BYTE $1B
		.BYTE	7
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE  $F
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $3A ; :
		.BYTE $1B
		.BYTE	7
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	7
		.BYTE $AB ; ´
		.BYTE	0
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2F ; /
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $F8 ; ¯
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE $1B
		.BYTE $15
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE	5
		.BYTE	6
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $11
		.BYTE $10
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	4
		.BYTE $50 ; P
		.BYTE $D5 ; ’
		.BYTE $57 ; W
		.BYTE $44 ; D
		.BYTE	4
		.BYTE $14
		.BYTE $41 ; A
		.BYTE $10
		.BYTE $15
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $60 ; `
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $3A ; :
		.BYTE $3A ; :
		.BYTE $1B
		.BYTE	5
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	7
		.BYTE $A2 ; ¢
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE $1B
		.BYTE	5
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE $13
		.BYTE $AA ; ™
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
		.BYTE $1B
		.BYTE	9
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $D4 ; ‘
		.BYTE	0
		.BYTE	0
		.BYTE $C3 ; √
		.BYTE	0
		.BYTE	0
		.BYTE $C3 ; √
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE $1B
		.BYTE  $B
		.BYTE	0
		.BYTE $4C ; L
		.BYTE	0
		.BYTE	0
		.BYTE $4C ; L
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $10
		.BYTE $14
		.BYTE $54 ; T
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $A7 ; ß
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $FD ; ˝
		.BYTE $3D ; =
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $DA ; ⁄
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $7C ; |
		.BYTE $1B
		.BYTE	3
		.BYTE $A0 ; †
		.BYTE $E0 ; ‡
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE  $B
		.BYTE	0
		.BYTE $4C ; L
		.BYTE	0
		.BYTE	0
		.BYTE $4C ; L
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $C3 ; √
		.BYTE	0
		.BYTE	0
		.BYTE $C3 ; √
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $31 ; 1
		.BYTE	0
		.BYTE	0
		.BYTE $31 ; 1
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE  $F
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $35 ; 5
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $C3 ; √
		.BYTE $F0 ; 
		.BYTE $70 ; p
		.BYTE $7C ; |
		.BYTE $5C ; \
		.BYTE $5F ; _
		.BYTE	0
		.BYTE	0
		.BYTE $31 ; 1
		.BYTE	0
		.BYTE	0
		.BYTE $31 ; 1
		.BYTE $1B
		.BYTE	9
		.BYTE	0
		.BYTE $1B
		.BYTE $17
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE $1B
		.BYTE	4
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE	8
		.BYTE	8
		.BYTE $1B
		.BYTE	5
		.BYTE  $A
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $D4 ; ‘
		.BYTE $1B
		.BYTE	6
		.BYTE $D6 ; ÷
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $B8 ; ∏
		.BYTE $15
		.BYTE	1
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $15
		.BYTE	1
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $17
		.BYTE $1B
		.BYTE	2
		.BYTE $57 ; W
		.BYTE $43 ; C
		.BYTE	0
		.BYTE	0
		.BYTE $C1 ; ¡
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $F1 ; Ò
		.BYTE $FD ; ˝
		.BYTE $43 ; C
		.BYTE  $F
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $4F ; O
		.BYTE $7F ; 
		.BYTE $F0 ; 
		.BYTE $D0 ; –
		.BYTE $D0 ; –
		.BYTE $D4 ; ‘
		.BYTE $D4 ; ‘
		.BYTE $D5 ; ’
		.BYTE $15
		.BYTE	5
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $55 ; U
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $59 ; Y
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	7
		.BYTE  $D
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	7
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $B0 ; ∞
		.BYTE $BC ; º
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $A
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE $1F
		.BYTE	0
		.BYTE	5
		.BYTE $3D ; =
		.BYTE $3D ; =
		.BYTE $35 ; 5
		.BYTE $35 ; 5
		.BYTE $15
		.BYTE $17
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $7C ; |
		.BYTE $1B
		.BYTE	4
		.BYTE $FC ; ¸
		.BYTE	1
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $65 ; e
		.BYTE $24 ; $
		.BYTE $27 ; '
		.BYTE $2B ; +
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $16
		.BYTE $D6 ; ÷
		.BYTE $F2 ; Ú
		.BYTE $BA ; ∫
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $D
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE $15
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	7
		.BYTE  $E
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $AC ; ¨
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $A
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ™
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
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $F5 ; ı
		.BYTE $35 ; 5
		.BYTE $75 ; u
		.BYTE $35 ; 5
		.BYTE $35 ; 5
		.BYTE $75 ; u
		.BYTE $35 ; 5
		.BYTE $35 ; 5
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $43 ; C
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $43 ; C
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $31 ; 1
		.BYTE	0
		.BYTE	0
		.BYTE $31 ; 1
		.BYTE $1B
		.BYTE  $B
		.BYTE	0
		.BYTE $4C ; L
		.BYTE	0
		.BYTE	0
		.BYTE $4C ; L
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $C3 ; √
		.BYTE	0
		.BYTE	0
		.BYTE $C3 ; √
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $31 ; 1
		.BYTE	0
		.BYTE	0
		.BYTE $31 ; 1
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE  $A
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $98 ; ò
		.BYTE $AA ; ™
		.BYTE $BA ; ∫
		.BYTE $AA ; ™
		.BYTE $9A ; ö
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $55 ; U
		.BYTE $41 ; A
		.BYTE $49 ; I
		.BYTE $85 ; Ö
		.BYTE $8A ; ä
		.BYTE $22 ; "
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $3F ; ?
		.BYTE $BF ; ø
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $BF ; ø
		.BYTE $3F ; ?
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	7
		.BYTE $FE ; ˛
		.BYTE $AA ; ™
		.BYTE $BA ; ∫
		.BYTE $AA ; ™
		.BYTE $A6 ; ¶
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE $4C ; L
		.BYTE	0
		.BYTE	0
		.BYTE $4C ; L
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $C3 ; √
		.BYTE	0
		.BYTE	0
		.BYTE $C3 ; √
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $31 ; 1
		.BYTE	0
		.BYTE	0
		.BYTE $31 ; 1
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $1B
		.BYTE	4
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $5C ; \
		.BYTE $5E ; ^
		.BYTE $5C ; \
		.BYTE $5C ; \
		.BYTE $5E ; ^
		.BYTE $5F ; _
		.BYTE $5D ; ]
		.BYTE	0
		.BYTE	0
		.BYTE $31 ; 1
		.BYTE	0
		.BYTE	0
		.BYTE $31 ; 1
		.BYTE $C0 ; ¿
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE  $B
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $88 ; à
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE  $E
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	2
		.BYTE  $E
		.BYTE $1B
		.BYTE	4
		.BYTE $3A ; :
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $AC ; ¨
		.BYTE $AC ; ¨
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	4
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE	3
		.BYTE $35 ; 5
		.BYTE $3D ; =
		.BYTE  $F
		.BYTE $59 ; Y
		.BYTE $D5 ; ’
		.BYTE $FF
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $9C ; ú
		.BYTE $5C ; \
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE $18
		.BYTE	0
		.BYTE	5
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
		.BYTE	5
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $3F ; ?
		.BYTE $3D ; =
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $37 ; 7
		.BYTE $3D ; =
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $7C ; |
		.BYTE $74 ; t
		.BYTE $74 ; t
		.BYTE $DC ; ‹
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $15
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE	3
		.BYTE	0
		.BYTE $BF ; ø
		.BYTE $73 ; s
		.BYTE $B3 ; ≥
		.BYTE $73 ; s
		.BYTE $B3 ; ≥
		.BYTE $73 ; s
		.BYTE $F3 ; Û
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	6
		.BYTE $5C ; \
		.BYTE $EC ; Ï
		.BYTE $DC ; ‹
		.BYTE $EC ; Ï
		.BYTE $DC ; ‹
		.BYTE $EC ; Ï
		.BYTE $DC ; ‹
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE $1A
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	5
		.BYTE $3A ; :
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE $1B
		.BYTE  $F
		.BYTE $88 ; à
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	3
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	3
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF
		.BYTE $7C ; |
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $37 ; 7
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $74 ; t
		.BYTE $7C ; |
		.BYTE $7C ; |
		.BYTE $DC ; ‹
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE $43 ; C
		.BYTE $43 ; C
		.BYTE $1B
		.BYTE $47 ; G
		.BYTE $FF
		.BYTE $C8 ; »
		.BYTE $F8 ; ¯
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $88 ; à
		.BYTE $C8 ; »
		.BYTE $F8 ; ¯
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	7
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE $1B
		.BYTE $1F
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $49 ; I
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $C
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $66 ; f
		.BYTE	8
		.BYTE	0
		.BYTE $11
		.BYTE  $C
		.BYTE $22 ; "
		.BYTE	8
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $42 ; B
		.BYTE	8
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE  $C
		.BYTE $62 ; b
		.BYTE	8
		.BYTE	0
		.BYTE $11
		.BYTE  $C
		.BYTE $22 ; "
		.BYTE	8
		.BYTE	0
		.BYTE $22 ; "
		.BYTE  $C
		.BYTE $40 ; @
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE $FF
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE	0
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $77 ; w
		.BYTE $72 ; r
		.BYTE $EE ; Ó
		.BYTE  $F
		.BYTE $7F ; 
		.BYTE $77 ; w
		.BYTE $62 ; b
		.BYTE $EE ; Ó
		.BYTE  $F
		.BYTE $7C ; |
		.BYTE	0
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE  $D
		.BYTE $70 ; p
		.BYTE $77 ; w
		.BYTE  $C
		.BYTE $E6 ; Ê
		.BYTE  $D
		.BYTE $70 ; p
		.BYTE $37 ; 7
		.BYTE	0
		.BYTE $E6 ; Ê
		.BYTE  $D
		.BYTE $70 ; p
		.BYTE	0
		.BYTE $78 ; x
		.BYTE	0
		.BYTE  $D
		.BYTE $7C ; |
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE  $D
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	9
		.BYTE $3F ; ?
		.BYTE $8A ; ä
		.BYTE $49 ; I
		.BYTE $35 ; 5
		.BYTE	0
		.BYTE $9C ; ú
		.BYTE	8
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE $49 ; I
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE  $A
		.BYTE	9
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $95 ; ï
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $56 ; V
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE $60 ; `
		.BYTE $1B
		.BYTE $47 ; G
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $88 ; à
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE $17
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE  $D
		.BYTE	0
		.BYTE $15
		.BYTE $1A
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AD ; ≠
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE $1B
		.BYTE $1F
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A6 ; ¶
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE  $A
		.BYTE $1A
		.BYTE $1B
		.BYTE	2
		.BYTE $16
		.BYTE $15
		.BYTE $15
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	5
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	5
		.BYTE $1B
		.BYTE $17
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $A0 ; †
		.BYTE $60 ; `
		.BYTE $60 ; `
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE	5
		.BYTE $1B
		.BYTE	5
		.BYTE $15
		.BYTE	0
		.BYTE $6A ; j
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $68 ; h
		.BYTE $58 ; X
		.BYTE $58 ; X
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A5 ; •
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE  $F
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $1A
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $AD ; ≠
		.BYTE	0
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $35 ; 5
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $5C ; \
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE $1B
		.BYTE $15
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE $A6 ; ¶
		.BYTE $A5 ; •
		.BYTE $A9 ; ©
		.BYTE $95 ; ï
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $58 ; X
		.BYTE $94 ; î
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $15
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $54 ; T
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE	5
		.BYTE	9
		.BYTE	9
		.BYTE  $A
		.BYTE $C9 ; …
		.BYTE $1B
		.BYTE $1F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $50 ; P
		.BYTE $53 ; S
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE $C3 ; √
		.BYTE $25 ; %
		.BYTE $25 ; %
		.BYTE $29 ; )
		.BYTE $25 ; %
		.BYTE $15
		.BYTE $15
		.BYTE	5
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $29 ; )
		.BYTE $15
		.BYTE $1A
		.BYTE  $A
		.BYTE	0
		.BYTE $96 ; ñ
		.BYTE $9A ; ö
		.BYTE $95 ; ï
		.BYTE $59 ; Y
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $B8 ; ∏
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $58 ; X
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1A
		.BYTE $1A
		.BYTE $1B
		.BYTE	5
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $AD ; ≠
		.BYTE $AD ; ≠
		.BYTE $1B
		.BYTE	5
		.BYTE $AB ; ´
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE $1B
		.BYTE	5
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE $13
		.BYTE $AA ; ™
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
		.BYTE $1B
		.BYTE	9
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	0
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $54 ; T
		.BYTE $7C ; |
		.BYTE	0
		.BYTE	0
		.BYTE $41 ; A
		.BYTE	0
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE $1B
		.BYTE  $B
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	0
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $41 ; A
		.BYTE	0
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE	3
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $F5 ; ı
		.BYTE $3D ; =
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $F3 ; Û
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $F0 ; 
		.BYTE $E0 ; ‡
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $97 ; ó
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	3
		.BYTE  $F
		.BYTE $7F ; 
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $EB ; Î
		.BYTE $5F ; _
		.BYTE $6F ; o
		.BYTE $6F ; o
		.BYTE $2B ; +
		.BYTE  $A
		.BYTE $56 ; V
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $C3 ; √
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $B0 ; ∞
		.BYTE $BC ; º
		.BYTE $AC ; ¨
		.BYTE	0
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	0
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $41 ; A
		.BYTE	0
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE $1B
		.BYTE  $B
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	0
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $15
		.BYTE $1F
		.BYTE	0
		.BYTE	0
		.BYTE $41 ; A
		.BYTE	0
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE $1B
		.BYTE	9
		.BYTE	0
		.BYTE $1B
		.BYTE $17
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE $1B
		.BYTE	4
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $AE ; Æ
		.BYTE $EE ; Ó
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $AE ; Æ
		.BYTE $1B
		.BYTE	2
		.BYTE $EE ; Ó
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AF ; Ø
		.BYTE $EF ; Ô
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	2
		.BYTE $EE ; Ó
		.BYTE $1B
		.BYTE	3
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE $D0 ; –
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE	8
		.BYTE	8
		.BYTE $1B
		.BYTE	5
		.BYTE  $A
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $7C ; |
		.BYTE $1B
		.BYTE	6
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE	5
		.BYTE $1B
		.BYTE	5
		.BYTE $15
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	5
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE  $E
		.BYTE  $E
		.BYTE $3E ; >
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	2
		.BYTE $F9 ; ˘
		.BYTE $39 ; 9
		.BYTE $97 ; ó
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	4
		.BYTE $5F ; _
		.BYTE $EB ; Î
		.BYTE $EF ; Ô
		.BYTE $EF ; Ô
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	2
		.BYTE $BD ; Ω
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $7E ; ~
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	4
		.BYTE $BD ; Ω
		.BYTE $6C ; l
		.BYTE $6C ; l
		.BYTE $6F ; o
		.BYTE $6B ; k
		.BYTE $1B
		.BYTE	3
		.BYTE $5B ; [
		.BYTE	0
		.BYTE	5
		.BYTE $15
		.BYTE $F5 ; ı
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $15
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	5
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $5F ; _
		.BYTE $6A ; j
		.BYTE $2B ; +
		.BYTE $2F ; /
		.BYTE  $B
		.BYTE  $A
		.BYTE $2B ; +
		.BYTE $AF ; Ø
		.BYTE $50 ; P
		.BYTE $DA ; ⁄
		.BYTE $D6 ; ÷
		.BYTE $F6 ; ˆ
		.BYTE $F5 ; ı
		.BYTE $BD ; Ω
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	7
		.BYTE	1
		.BYTE $1B
		.BYTE $17
		.BYTE $EE ; Ó
		.BYTE $1B
		.BYTE	6
		.BYTE $D0 ; –
		.BYTE $D4 ; ‘
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $A
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $7F ; 
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $9A ; ö
		.BYTE $96 ; ñ
		.BYTE $A6 ; ¶
		.BYTE $A5 ; •
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $B4 ; ¥
		.BYTE $98 ; ò
		.BYTE $1B
		.BYTE	2
		.BYTE $68 ; h
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $15
		.BYTE $19
		.BYTE $29 ; )
		.BYTE $25 ; %
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $59 ; Y
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE $A4 ; §
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $60 ; `
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $39 ; 9
		.BYTE $3A ; :
		.BYTE $3E ; >
		.BYTE  $E
		.BYTE $3E ; >
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE	3
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $57 ; W
		.BYTE $97 ; ó
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $EF ; Ô
		.BYTE $EF ; Ô
		.BYTE $EB ; Î
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $7F ; 
		.BYTE $7E ; ~
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $EB ; Î
		.BYTE $FF
		.BYTE $BD ; Ω
		.BYTE $BD ; Ω
		.BYTE $1B
		.BYTE	3
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $FD ; ˝
		.BYTE $6B ; k
		.BYTE $6B ; k
		.BYTE $6F ; o
		.BYTE $6C ; l
		.BYTE $6C ; l
		.BYTE $AC ; ¨
		.BYTE $BC ; º
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	5
		.BYTE $15
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $64 ; d
		.BYTE $A4 ; §
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $68 ; h
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	2
		.BYTE	6
		.BYTE	6
		.BYTE $1B
		.BYTE	4
		.BYTE	7
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $FD ; ˝
		.BYTE $B8 ; ∏
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE $15
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	7
		.BYTE	6
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $EE ; Ó
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $EE ; Ó
		.BYTE $1B
		.BYTE	7
		.BYTE $F4 ; Ù
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $A
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ™
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
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $5F ; _
		.BYTE $1F
		.BYTE $5F ; _
		.BYTE $1F
		.BYTE $1F
		.BYTE $5F ; _
		.BYTE $1F
		.BYTE $1F
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $C1 ; ¡
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $C1 ; ¡
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE $1B
		.BYTE  $B
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	0
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $41 ; A
		.BYTE	0
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	2
		.BYTE  $E
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $A5 ; •
		.BYTE $56 ; V
		.BYTE $AF ; Ø
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A5 ; •
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $5B ; [
		.BYTE $6B ; k
		.BYTE $6B ; k
		.BYTE $5A ; Z
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $E5 ; Â
		.BYTE $56 ; V
		.BYTE $A6 ; ¶
		.BYTE $A5 ; •
		.BYTE $A9 ; ©
		.BYTE $AE ; Æ
		.BYTE $FF
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $A6 ; ¶
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $B0 ; ∞
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $CF ; œ
		.BYTE $83 ; É
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $44 ; D
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $41 ; A
		.BYTE	0
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	1
		.BYTE	1
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE	1
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $F4 ; Ù
		.BYTE $F5 ; ı
		.BYTE $F4 ; Ù
		.BYTE $F4 ; Ù
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; ı
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE $54 ; T
		.BYTE $74 ; t
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE  $B
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $88 ; à
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE  $E
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	2
		.BYTE	6
		.BYTE $1B
		.BYTE	4
		.BYTE $1A
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $F4 ; Ù
		.BYTE $F4 ; Ù
		.BYTE $F5 ; ı
		.BYTE $ED ; Ì
		.BYTE $1B
		.BYTE	3
		.BYTE $AD ; ≠
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $15
		.BYTE $1D
		.BYTE $1B
		.BYTE	3
		.BYTE $1F
		.BYTE $17
		.BYTE	5
		.BYTE $F7 ; ˜
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $74 ; t
		.BYTE $F4 ; Ù
		.BYTE $54 ; T
		.BYTE	0
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $18
		.BYTE	0
		.BYTE  $E
		.BYTE	3
		.BYTE	3
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $9A ; ö
		.BYTE $AA ; ™
		.BYTE $A6 ; ¶
		.BYTE $EA ; Í
		.BYTE $E9 ; È
		.BYTE $3A ; :
		.BYTE $3A ; :
		.BYTE  $F
		.BYTE $A6 ; ¶
		.BYTE $A5 ; •
		.BYTE $A9 ; ©
		.BYTE $AE ; Æ
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $E6 ; Ê
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE $9E ; û
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	0
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE $15
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE	1
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $D1 ; —
		.BYTE $51 ; Q
		.BYTE $D1 ; —
		.BYTE $51 ; Q
		.BYTE $D1 ; —
		.BYTE $51 ; Q
		.BYTE	1
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	6
		.BYTE $F4 ; Ù
		.BYTE $54 ; T
		.BYTE $74 ; t
		.BYTE $54 ; T
		.BYTE $74 ; t
		.BYTE $54 ; T
		.BYTE $74 ; t
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE $1A
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	3
		.BYTE $1A
		.BYTE $12
		.BYTE $10
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE	2
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $AD ; ≠
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE $1B
		.BYTE  $F
		.BYTE $88 ; à
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $D4 ; ‘
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $A5 ; •
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE  $A
		.BYTE $A5 ; •
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE  $A
		.BYTE $A8 ; ®
		.BYTE $A5 ; •
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $69 ; i
		.BYTE  $F
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	4
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
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	2
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $69 ; i
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $2F ; /
		.BYTE $AB ; ´
		.BYTE $5B ; [
		.BYTE $3F ; ?
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $BE ; æ
		.BYTE $AE ; Æ
		.BYTE $EA ; Í
		.BYTE $FE ; ˛
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $EA ; Í
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE $37 ; 7
		.BYTE $FF
		.BYTE $C8 ; »
		.BYTE $F8 ; ¯
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $88 ; à
		.BYTE $C8 ; »
		.BYTE $F8 ; ¯
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE	7
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AB ; ´
		.BYTE  $B
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	7
		.BYTE	8
		.BYTE $1B
		.BYTE $1F
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $C
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $49 ; I
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	6
		.BYTE	8
		.BYTE $E0 ; ‡
		.BYTE $10
		.BYTE	0
		.BYTE	2
		.BYTE	8
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE  $B
		.BYTE $C0 ; ¿
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	2
		.BYTE  $B
		.BYTE $C0 ; ¿
		.BYTE $10
		.BYTE	0
		.BYTE	2
		.BYTE  $B
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	8
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	8
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $F8 ; ¯
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $77 ; w
		.BYTE $42 ; B
		.BYTE $EE ; Ó
		.BYTE  $E
		.BYTE $7F ; 
		.BYTE $77 ; w
		.BYTE $42 ; B
		.BYTE $EE ; Ó
		.BYTE  $E
		.BYTE $7C ; |
		.BYTE	0
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE  $C
		.BYTE $70 ; p
		.BYTE $77 ; w
		.BYTE	0
		.BYTE $E6 ; Ê
		.BYTE  $C
		.BYTE $70 ; p
		.BYTE $37 ; 7
		.BYTE	0
		.BYTE $E2 ; ‚
		.BYTE  $C
		.BYTE $70 ; p
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE  $C
		.BYTE $7C ; |
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE  $E
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE  $F
		.BYTE $FF
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE  $E
		.BYTE $49 ; I
		.BYTE $9C ; ú
		.BYTE	8
		.BYTE $1B
		.BYTE $FF
		.BYTE $5A ; Z
		.BYTE $A1 ; °
		.BYTE $41 ; A
		.BYTE $A1 ; °
		.BYTE $28 ; (
		.BYTE $A1 ; °
		.BYTE $12
		.BYTE $A1 ; °
		.BYTE $60 ; `
		.BYTE $A1 ; °
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $A5 ; •
		.BYTE $A4 ; §
		.BYTE $A8 ; ®
		.BYTE $A6 ; ¶
		.BYTE $A3 ; £
		.BYTE $A1 ; °
		.BYTE $A1 ; °
		.BYTE $A1 ; °
		.BYTE $A1 ; °
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $10
		.BYTE	1
		.BYTE	1
		.BYTE	8
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $A7 ; ß
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $10
		.BYTE	1
		.BYTE	1
		.BYTE	8
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $FE ; ˛
		.BYTE $A7 ; ß
		.BYTE $A7 ; ß
		.BYTE $A6 ; ¶
		.BYTE $A6 ; ¶
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE	1
		.BYTE	1
		.BYTE	4
		.BYTE $1F
		.BYTE $1F
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE $A7 ; ß
		.BYTE $A6 ; ¶
		.BYTE $A6 ; ¶
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE	1
		.BYTE	1
		.BYTE	4
		.BYTE $1F
		.BYTE $1F
		.BYTE	2
		.BYTE $88 ; à
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $28 ; (
		.BYTE $A3 ; £
		.BYTE  $A
		.BYTE $73 ; s
		.BYTE $A3 ; £
		.BYTE  $A
		.BYTE $C0 ; ¿
		.BYTE $A3 ; £
		.BYTE  $A
		.BYTE $C0 ; ¿
		.BYTE $A3 ; £
		.BYTE  $A
		.BYTE $28 ; (
		.BYTE $A3 ; £
		.BYTE  $A
		.BYTE $97 ; ó
		.BYTE $A5 ; •
		.BYTE	0
		.BYTE  $A
		.BYTE $C6 ; ∆
		.BYTE $A4 ; §
		.BYTE  $A
		.BYTE $C6 ; ∆
		.BYTE $A4 ; §
		.BYTE  $A
		.BYTE $E2 ; ‚
		.BYTE $A4 ; §
		.BYTE  $A
		.BYTE $E2 ; ‚
		.BYTE $A4 ; §
		.BYTE  $A
		.BYTE $C6 ; ∆
		.BYTE $A4 ; §
		.BYTE  $A
		.BYTE $DB ; €
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $91 ; ë
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $3D ; =
		.BYTE $A5 ; •
		.BYTE	0
		.BYTE  $A
		.BYTE $EF ; Ô
		.BYTE $A4 ; §
		.BYTE  $A
		.BYTE $EF ; Ô
		.BYTE $A4 ; §
		.BYTE  $A
		.BYTE  $B
		.BYTE $A5 ; •
		.BYTE  $A
		.BYTE  $B
		.BYTE $A5 ; •
		.BYTE  $A
		.BYTE $EF ; Ô
		.BYTE $A4 ; §
		.BYTE  $A
		.BYTE $94 ; î
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $25 ; %
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $6A ; j
		.BYTE $A5 ; •
		.BYTE	0
		.BYTE	2
		.BYTE $CD ; Õ
		.BYTE $A0 ; †
		.BYTE	5
		.BYTE $15
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $E7 ; Á
		.BYTE $A3 ; £
		.BYTE  $A
		.BYTE $53 ; S
		.BYTE $A4 ; §
		.BYTE  $A
		.BYTE $E7 ; Á
		.BYTE $A3 ; £
		.BYTE  $A
		.BYTE $18
		.BYTE $A5 ; •
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $90 ; ê
		.BYTE $14
		.BYTE	1
		.BYTE $90 ; ê
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $90 ; ê
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	1
		.BYTE $90 ; ê
		.BYTE $14
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $D9 ; Ÿ
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $B6 ; ∂
		.BYTE $14
		.BYTE	1
		.BYTE $B6 ; ∂
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $D9 ; Ÿ
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $B6 ; ∂
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $D9 ; Ÿ
		.BYTE $14
		.BYTE	1
		.BYTE $B6 ; ∂
		.BYTE $14
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $F3 ; Û
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $F3 ; Û
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $F3 ; Û
		.BYTE $14
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $90 ; ê
		.BYTE $14
		.BYTE	1
		.BYTE $90 ; ê
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE $14
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $79 ; y
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $79 ; y
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $79 ; y
		.BYTE $14
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $90 ; ê
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $14
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $90 ; ê
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $90 ; ê
		.BYTE $14
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $14
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $79 ; y
		.BYTE $14
		.BYTE	1
		.BYTE $79 ; y
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $79 ; y
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE $14
		.BYTE	1
		.BYTE $79 ; y
		.BYTE $14
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $14
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $14
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $14
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $79 ; y
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $14
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $88 ; à
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $14
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $88 ; à
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $88 ; à
		.BYTE $14
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $14
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $99 ; ô
		.BYTE $14
		.BYTE	1
		.BYTE $99 ; ô
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $99 ; ô
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	1
		.BYTE $90 ; ê
		.BYTE $14
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $14
		.BYTE	1
		.BYTE $5B ; [
		.BYTE $14
		.BYTE  $B
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $3C ; <
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $78 ; x
		.BYTE $12
		.BYTE $17
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE $14
		.BYTE	1
		.BYTE $2F ; /
		.BYTE $14
		.BYTE	1
		.BYTE $2D ; -
		.BYTE $14
		.BYTE	1
		.BYTE $2F ; /
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE $25 ; %
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $78 ; x
		.BYTE $12
		.BYTE $17
		.BYTE	1
		.BYTE $2F ; /
		.BYTE $14
		.BYTE	1
		.BYTE $2D ; -
		.BYTE $14
		.BYTE	1
		.BYTE $28 ; (
		.BYTE $14
		.BYTE	1
		.BYTE $2D ; -
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $2F ; /
		.BYTE $25 ; %
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE $78 ; x
		.BYTE $12
		.BYTE $17
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $14
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE $14
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $14
		.BYTE	1
		.BYTE $2F ; /
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $25 ; %
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $78 ; x
		.BYTE $12
		.BYTE $14
		.BYTE  $B
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $3C ; <
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $78 ; x
		.BYTE $12
		.BYTE $17
		.BYTE	1
		.BYTE $5B ; [
		.BYTE $14
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $14
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $14
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $25 ; %
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $78 ; x
		.BYTE $12
		.BYTE $17
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	1
		.BYTE $5B ; [
		.BYTE $14
		.BYTE	1
		.BYTE $51 ; Q
		.BYTE $14
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $21 ; !
		.BYTE $12
		.BYTE	4
		.BYTE	1
		.BYTE $5B ; [
		.BYTE $78 ; x
		.BYTE $12
		.BYTE $17
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	1
		.BYTE $5B ; [
		.BYTE $14
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $25 ; %
		.BYTE	1
		.BYTE $6C ; l
		.BYTE $78 ; x
		.BYTE $12
		.BYTE $14
		.BYTE  $B
		.BYTE	1
		.BYTE $28 ; (
		.BYTE $3C ; <
		.BYTE $12
		.BYTE	3
		.BYTE	1
		.BYTE $28 ; (
		.BYTE $14
		.BYTE	1
		.BYTE $2D ; -
		.BYTE $14
		.BYTE	1
		.BYTE $2F ; /
		.BYTE $25 ; %
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE $78 ; x
		.BYTE $12
		.BYTE $14
		.BYTE	1
		.BYTE $2D ; -
		.BYTE $3C ; <
		.BYTE $12
		.BYTE	3
		.BYTE	1
		.BYTE $2D ; -
		.BYTE $14
		.BYTE	1
		.BYTE $2F ; /
		.BYTE $14
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE $25 ; %
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $78 ; x
		.BYTE $12
		.BYTE $14
		.BYTE  $B
		.BYTE  $E
		.BYTE	0
		.BYTE $49 ; I
		.BYTE $4E ; N
		.BYTE $54 ; T
		.BYTE $4F ; O
		.BYTE $20
		.BYTE $54 ; T
		.BYTE $48 ; H
		.BYTE $45 ; E
		.BYTE $20
		.BYTE $46 ; F
		.BYTE $52 ; R
		.BYTE $41 ; A
		.BYTE $59 ; Y
		.BYTE	0
		.BYTE $12
		.BYTE $8C ; å
		.BYTE $12
		.BYTE $8C ; å
		.BYTE  $E
		.BYTE	0
		.BYTE $49 ; I
		.BYTE $4E ; N
		.BYTE $54 ; T
		.BYTE $4F ; O
		.BYTE $20
		.BYTE $49 ; I
		.BYTE $54 ; T
		.BYTE $20
		.BYTE $45 ; E
		.BYTE $56 ; V
		.BYTE $45 ; E
		.BYTE $52 ; R
		.BYTE $59 ; Y
		.BYTE $44 ; D
		.BYTE $41 ; A
		.BYTE $59 ; Y
		.BYTE	0
		.BYTE $12
		.BYTE $8C ; å
		.BYTE $12
		.BYTE $8C ; å
		.BYTE  $E
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $48 ; H
		.BYTE $45 ; E
		.BYTE $52 ; R
		.BYTE $45 ; E
		.BYTE $20
		.BYTE $4A ; J
		.BYTE $55 ; U
		.BYTE $53 ; S
		.BYTE $54 ; T
		.BYTE $20
		.BYTE $54 ; T
		.BYTE $4F ; O
		.BYTE $20
		.BYTE $43 ; C
		.BYTE $41 ; A
		.BYTE $52 ; R
		.BYTE $52 ; R
		.BYTE $59 ; Y
		.BYTE	0
		.BYTE $12
		.BYTE $8C ; å
		.BYTE  $E
		.BYTE	0
		.BYTE $4F ; O
		.BYTE $4E ; N
		.BYTE	0
		.BYTE $12
		.BYTE $78 ; x
		.BYTE  $E
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $12
		.BYTE $14
		.BYTE  $E
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $4C ; L
		.BYTE $41 ; A
		.BYTE $59 ; Y
		.BYTE $49 ; I
		.BYTE $4E ; N
		.BYTE $47 ; G
		.BYTE $20
		.BYTE $54 ; T
		.BYTE $48 ; H
		.BYTE $45 ; E
		.BYTE $20
		.BYTE $43 ; C
		.BYTE $48 ; H
		.BYTE $41 ; A
		.BYTE $4D ; M
		.BYTE $50 ; P
		.BYTE $49 ; I
		.BYTE $4F ; O
		.BYTE $4E ; N
		.BYTE	0
		.BYTE $12
		.BYTE $8C ; å
		.BYTE $12
		.BYTE $8C ; å
		.BYTE  $B
		.BYTE  $E
		.BYTE	0
		.BYTE $4D ; M
		.BYTE $4F ; O
		.BYTE $56 ; V
		.BYTE $49 ; I
		.BYTE $4E ; N
		.BYTE $47 ; G
		.BYTE $20
		.BYTE $41 ; A
		.BYTE $4C ; L
		.BYTE $4F ; O
		.BYTE $4E ; N
		.BYTE $47 ; G
		.BYTE	0
		.BYTE $12
		.BYTE $8C ; å
		.BYTE $12
		.BYTE $8C ; å
		.BYTE  $E
		.BYTE	0
		.BYTE $53 ; S
		.BYTE $49 ; I
		.BYTE $4C ; L
		.BYTE $45 ; E
		.BYTE $4E ; N
		.BYTE $43 ; C
		.BYTE $45 ; E
		.BYTE $20
		.BYTE $4D ; M
		.BYTE $59 ; Y
		.BYTE $20
		.BYTE $4F ; O
		.BYTE $4E ; N
		.BYTE $4C ; L
		.BYTE $59 ; Y
		.BYTE $20
		.BYTE $53 ; S
		.BYTE $4F ; O
		.BYTE $4E ; N
		.BYTE $47 ; G
		.BYTE	0
		.BYTE $12
		.BYTE $8C ; å
		.BYTE $12
		.BYTE $8C ; å
		.BYTE  $E
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $53 ; S
		.BYTE $20
		.BYTE $49 ; I
		.BYTE $20
		.BYTE $43 ; C
		.BYTE $4F ; O
		.BYTE $4E ; N
		.BYTE $54 ; T
		.BYTE $49 ; I
		.BYTE $4E ; N
		.BYTE $55 ; U
		.BYTE $45 ; E
		.BYTE $20
		.BYTE $4F ; O
		.BYTE $4E ; N
		.BYTE	0
		.BYTE $12
		.BYTE $C8 ; »
		.BYTE  $E
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $12
		.BYTE $50 ; P
		.BYTE  $E
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $4C ; L
		.BYTE $41 ; A
		.BYTE $59 ; Y
		.BYTE $49 ; I
		.BYTE $4E ; N
		.BYTE $47 ; G
		.BYTE $20
		.BYTE $54 ; T
		.BYTE $48 ; H
		.BYTE $45 ; E
		.BYTE $20
		.BYTE $43 ; C
		.BYTE $48 ; H
		.BYTE $41 ; A
		.BYTE $4D ; M
		.BYTE $50 ; P
		.BYTE $49 ; I
		.BYTE $4F ; O
		.BYTE $4E ; N
		.BYTE	0
		.BYTE $12
		.BYTE $8C ; å
		.BYTE $12
		.BYTE $8C ; å
		.BYTE  $E
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $12
		.BYTE $FA ; ˙
		.BYTE $12
		.BYTE $FA ; ˙
		.BYTE $12
		.BYTE $FA ; ˙
		.BYTE $12
		.BYTE $FA ; ˙
		.BYTE $12
		.BYTE $78 ; x
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE $6C ; l
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $6C ; l
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $91 ; ë
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $6C ; l
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $B6 ; ∂
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $91 ; ë
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $DB ; €
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $91 ; ë
		.BYTE $A1 ; °
		.BYTE  $B
		.BYTE  $A
		.BYTE $B6 ; ∂
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $91 ; ë
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $91 ; ë
		.BYTE $A1 ; °
		.BYTE  $A
		.BYTE $DE ; ﬁ
		.BYTE $A2 ; ¢
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE  $A
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $25 ; %
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE	0
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $4A ; J
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $6F ; o
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $94 ; î
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $25 ; %
		.BYTE $A2 ; ¢
		.BYTE  $B
		.BYTE  $A
		.BYTE $4A ; J
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $6F ; o
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE $B9 ; π
		.BYTE $A2 ; ¢
		.BYTE  $A
		.BYTE	3
		.BYTE $A3 ; £
		.BYTE  $B
		.BYTE $12
		.BYTE $8C ; å
		.BYTE $12
		.BYTE $8C ; å
		.BYTE  $E
		.BYTE	0
		.BYTE $49 ; I
		.BYTE $20
		.BYTE $41 ; A
		.BYTE $4D ; M
		.BYTE $20
		.BYTE $54 ; T
		.BYTE $48 ; H
		.BYTE $45 ; E
		.BYTE $20
		.BYTE $43 ; C
		.BYTE $48 ; H
		.BYTE $41 ; A
		.BYTE $4D ; M
		.BYTE $50 ; P
		.BYTE $49 ; I
		.BYTE $4F ; O
		.BYTE $4E ; N
		.BYTE	0
		.BYTE $12
		.BYTE $C8 ; »
		.BYTE $12
		.BYTE $FA ; ˙
		.BYTE $12
		.BYTE $FA ; ˙
		.BYTE  $E
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $12
		.BYTE  $A
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $90 ; ê
		.BYTE $14
		.BYTE	1
		.BYTE $90 ; ê
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $19
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE $1E
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $C1 ; ¡
		.BYTE $28 ; (
		.BYTE	2
		.BYTE $88 ; à
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $A2 ; ¢
		.BYTE $32 ; 2
		.BYTE $12
		.BYTE $14
		.BYTE	1
		.BYTE $D9 ; Ÿ
		.BYTE $78 ; x
		.BYTE  $B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $79 ; y
		.BYTE $14
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $14
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $19
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $9F ; ü
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $1E
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $28 ; (
		.BYTE	2
		.BYTE $88 ; à
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $60 ; `
		.BYTE $32 ; 2
		.BYTE $12
		.BYTE $14
		.BYTE	1
		.BYTE $AD ; ≠
		.BYTE $78 ; x
		.BYTE  $B
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $14
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE $14
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $14
		.BYTE	1
		.BYTE $2F ; /
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $28 ; (
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $78 ; x
		.BYTE $12
		.BYTE $14
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $14
		.BYTE	1
		.BYTE $35 ; 5
		.BYTE $14
		.BYTE	1
		.BYTE $3C ; <
		.BYTE $14
		.BYTE	1
		.BYTE $2F ; /
		.BYTE $37 ; 7
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $5A ; Z
		.BYTE $12
		.BYTE $14
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $78 ; x
		.BYTE  $B
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $14
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $14
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $14
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $14
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $14
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $14
		.BYTE	1
		.BYTE $48 ; H
		.BYTE $14
		.BYTE  $B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
; end of 'RAM'


		.END
