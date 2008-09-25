		.include	"equates.inc"
		.include	"exp_kernel.inc"
		.include	"globals.inc"

;		.ORG	$7600

loc_7600:				; CODE XREF: RAM:7814j
		LDA	#0
		JSR	$180F
		LDA	#$3E ; '>'
		STA	$1909
		LDA	#0
		STA	$190B
		LDA	#$90 ; 'ђ'
		STA	$190C
		JSR	j_SEGLOAD
		LDA	RANDOM
		AND	#7
		BNE	loc_7621
		JSR	$9000

loc_7621:				; CODE XREF: RAM:761Cj	RAM:7677j ...
		LDA	#$46 ; 'F'
		STA	off_16
		LDA	#$78 ; 'x'
		STA	off_16+1
		JSR	$1818

loc_762C:				; CODE XREF: RAM:762Fj
		JSR	$181E
		BMI	loc_762C
		LDX	#$1F

loc_7633:				; CODE XREF: RAM:763Aj
		LDA	unk_7A98,X
		STA	$197C,X
		DEX
		BPL	loc_7633
		JSR	$1827
		LDA	#3
		STA	$68

loc_7643:				; CODE XREF: RAM:7672j
		LDA	#2
		STA	$232
		LDA	#0
		STA	$233
		LDA	$230
		AND	#$F
		TAX
		LDA	$24D,X
		BMI	loc_765D
		JSR	$182D
		BPL	loc_767A

loc_765D:				; CODE XREF: RAM:7656j	RAM:7682j
		LDA	$230
		AND	#$F
		CLC
		ADC	#1
		CMP	#4
		BCC	loc_766B
		LDA	#1

loc_766B:				; CODE XREF: RAM:7667j
		ORA	#$30 ; '0'
		STA	$230
		DEC	$68
		BPL	loc_7643
		JSR	$1830
		JMP	loc_7621
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

loc_767A:				; CODE XREF: RAM:765Bj
		LDX	#7

loc_767C:				; CODE XREF: RAM:7685j
		LDA	aArChar,X	; "AR CHAR!"
		CMP	$100,X
		BNE	loc_765D
		DEX
		BPL	loc_767C
		LDX	#$1F

loc_7689:				; CODE XREF: RAM:7690j
		LDA	unk_7A78,X
		STA	$197C,X
		DEX
		BPL	loc_7689
		LDX	#$7F ; ''

loc_7694:				; CODE XREF: RAM:769Bj
		LDA	$100,X
		STA	unk_7AB8,X
		DEX
		BPL	loc_7694
		LDX	$6300
		BPL	loc_76C2
		LDX	#0

loc_76A4:				; CODE XREF: RAM:76ACj
		LDA	unk_7AC0,X
		BEQ	loc_76B1
		INX
		CPX	#4
		BCC	loc_76A4
		JMP	loc_7817
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

loc_76B1:				; CODE XREF: RAM:76A7j
		LDA	#0
		STA	unk_7AC4,X
		STA	unk_7ACC,X
		STA	unk_7AC8,X
		STX	$6300
		JMP	loc_76F1
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

loc_76C2:				; CODE XREF: RAM:76A0j
		STX	$62
		LDA	unk_7AC0,X
		CMP	#$7F ; ''
		BEQ	loc_76CE
		JMP	loc_7817
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

loc_76CE:				; CODE XREF: RAM:76C9j
		LDA	unk_7AC4,X
		CMP	$6311
		BEQ	loc_76D9
		JMP	loc_7817
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

loc_76D9:				; CODE XREF: RAM:76D4j
		LDY	unk_7832,X
		LDX	#0

loc_76DE:				; CODE XREF: RAM:76EDj
		LDA	$6321,X
		CMP	unk_7AD0,Y
		BEQ	loc_76E9
		JMP	loc_7817
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

loc_76E9:				; CODE XREF: RAM:76E4j
		INY
		INX
		CPX	#$1A
		BCC	loc_76DE
		LDX	$62

loc_76F1:				; CODE XREF: RAM:76BFj
		STX	$62
		LDX	#$3F ; '?'

loc_76F5:				; CODE XREF: RAM:7701j
		LDA	$644B,X
		BEQ	loc_7700
		SEC
		SBC	#$63 ; 'c'
		STA	$644B,X

loc_7700:				; CODE XREF: RAM:76F8j
		DEX
		BPL	loc_76F5
		LDA	$64E5
		SEC
		SBC	#$63 ; 'c'
		STA	$64E5
		LDA	#0
		STA	$64
		LDA	#$63 ; 'c'
		STA	$65
		LDY	#0
		STY	$638E
		CLC
		LDX	#$11
		LDA	$6309

loc_771F:				; CODE XREF: RAM:7722j	RAM:7727j
		ADC	($64),Y
		INY
		BNE	loc_771F
		INC	$65
		DEX
		BPL	loc_771F
		STA	$638E

loc_772C:				; CODE XREF: RAM:7801j
		LDX	$62
		LDA	#$FF
		STA	unk_7AC0,X
		STA	unk_7AC4,X
		LDA	unk_7ACC,X
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		ORA	#2
		STA	unk_7ACC,X
		LDY	unk_7832,X
		LDX	#0

loc_7747:				; CODE XREF: RAM:7751j
		LDA	$6321,X
		STA	unk_7AD0,Y
		INY
		INX
		CPX	#$1A
		BCC	loc_7747
		JSR	$1827
		LDX	#$7F ; ''

loc_7758:				; CODE XREF: RAM:775Fj
		LDA	unk_7AB8,X
		STA	$100,X
		DEX
		BPL	loc_7758
		LDA	#2
		STA	$232
		LDA	#0
		STA	$233
		LDA	#'W'
		LDX	#$80 ; 'Ђ'
		LDY	#3
		JSR	$1833
		BMI	loc_77EE
		JSR	$1830
		LDA	$62
		ASL	A
		TAX
		LDA	unk_7836,X
		STA	$232
		LDA	unk_7837,X
		STA	$233
		LDA	#0
		STA	$66
		LDA	#$63 ; 'c'
		STA	$67
		LDA	#$13
		STA	$63
		JSR	$1827

loc_7798:				; CODE XREF: RAM:77D6j
		LDY	#$7F ; ''

loc_779A:				; CODE XREF: RAM:77A0j
		LDA	($66),Y
		STA	$100,Y
		DEY
		BPL	loc_779A
		LDA	#'W'
		LDX	#$80 ; 'Ђ'
		LDY	#3
		JSR	$1833
		BMI	loc_77EE
		INC	$232
		BNE	loc_77B5
		INC	$233

loc_77B5:				; CODE XREF: RAM:77B0j
		LDY	#$FF

loc_77B7:				; CODE XREF: RAM:77BDj
		LDA	($66),Y
		STA	$80,Y
		DEY
		BMI	loc_77B7
		LDA	#$57 ; 'W'
		LDX	#$80 ; 'Ђ'
		LDY	#3
		JSR	$1833
		BMI	loc_77EE
		INC	$232
		BNE	loc_77D2
		INC	$233

loc_77D2:				; CODE XREF: RAM:77CDj
		INC	$67
		DEC	$63
		BNE	loc_7798
		JSR	$1830
		LDA	#$8E ; 'Ћ'
		STA	off_16
		LDA	#$78 ; 'x'
		STA	off_16+1
		JSR	$1818

loc_77E6:				; CODE XREF: RAM:77E9j
		JSR	$181E
		BMI	loc_77E6
		JMP	$18B4
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

loc_77EE:				; CODE XREF: RAM:7774j	RAM:77ABj ...
		JSR	$1830
		LDA	#$59 ; 'Y'
		STA	off_16
		LDA	#$79 ; 'y'
		STA	off_16+1
		JSR	$1818

loc_77FC:				; CODE XREF: RAM:77FFj
		JSR	$181E
		BMI	loc_77FC
		JMP	loc_772C
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД
		LDA	#$E3 ; 'г'
		STA	off_16
		LDA	#$79 ; 'y'
		STA	off_16+1
		JSR	$1818

loc_780F:				; CODE XREF: RAM:7812j
		JSR	$181E
		BMI	loc_780F
		JMP	loc_7600
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД

loc_7817:				; CODE XREF: RAM:76AEj	RAM:76CBj ...
		BIT	$253
		BPL	loc_781F
		JSR	$1830

loc_781F:				; CODE XREF: RAM:781Aj
		LDA	#$B
		STA	off_16
		LDA	#$79 ; 'y'
		STA	off_16+1
		JSR	$1818

loc_782A:				; CODE XREF: RAM:782Dj
		JSR	$181E
		BMI	loc_782A
		JMP	loc_7621
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД
unk_7832:	.BYTE	0		; DATA XREF: RAM:loc_76D9r RAM:7742r
		.BYTE $1A
		.BYTE $34 ; 4
		.BYTE $4E ; N
unk_7836:	.BYTE	3		; DATA XREF: RAM:777Dr
unk_7837:	.BYTE	0		; DATA XREF: RAM:7783r
		.BYTE $BB ; »
		.BYTE	0
		.BYTE $73 ; s
		.BYTE	1
		.BYTE $2B ; +
		.BYTE	2
aArChar:	.BYTE "AR CHAR!"        ; DATA XREF: RAM:loc_767Cr
		.BYTE $AC
		.WORD byte_7A66
		.BYTE $A6,  0,	8
		.BYTE $A5
aPleaseInsertYo:.BYTE "Please insert your character disk"
		.BYTE $D
		.BYTE $A6,  0,$16
		.BYTE $A5
aPressAnyKeyT_0:.BYTE "Press any key to continue"
		.BYTE $D
		.BYTE $FF
		.BYTE $AC
		.WORD byte_7A66
		.BYTE $A6,  0,	8
		.BYTE $A5
		.BYTE $B3
		.WORD $6321
		.BYTE $18
		.BYTE $20
aHasBeenSaved_:	.BYTE "has been saved."
		.BYTE $D
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThankYouForPla:.BYTE "Thank you for playing Alternate Reality"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheDungeon_:	.BYTE "The Dungeon."
		.BYTE $D
		.BYTE $A6,  0,$18
		.BYTE $A5
aPress:		.BYTE "(Press "
		.BYTE $A1
aSpaceBar:	.BYTE "SPACE BAR"
		.BYTE $A0
aToPlayAgain:	.BYTE " to play again)"
		.BYTE $D
		.BYTE $FF
		.BYTE $AC
		.WORD byte_7A66
		.BYTE $A6,  0,	8
		.BYTE $A5
aThatIsNotTheCo:.BYTE "That is not the correct character disk!"
		.BYTE $D
		.BYTE $A6,  0,$16
		.BYTE $A5
aPressAnyKeyToC:.BYTE "Press any key to continue"
		.BYTE $D
		.BYTE $FF
		.BYTE $AC
		.WORD byte_7A66
		.BYTE $A6,  0,	8
		.BYTE $A5
aErrorWritingTo:.BYTE "Error writing to character disk!"
		.BYTE $D
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aMakeSureDriveD:.BYTE "Make sure drive door is closed and"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aDiskNotWritePr:.BYTE "disk not write protected."
		.BYTE $D
		.BYTE $A6,  0,$16
		.BYTE $A5
aPressAnyKeyToT:.BYTE "Press any key to try again"
		.BYTE $D
		.BYTE $FF
		.BYTE $AC
		.WORD byte_7A66
		.BYTE $A6,  0,	8
		.BYTE $A5
aThisCharacterD:.BYTE "This character disk already has four"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aCharactersOnIt:.BYTE "characters on it!"
		.BYTE $D
		.BYTE $A6,  0,$15
		.BYTE $A5
aInsertAnotherC:.BYTE "Insert another character disk and"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aPressAnyKeyT_1:.BYTE "press any key to continue"
		.BYTE $D
		.BYTE $FF
byte_7A66:	.BYTE $A8		; DATA XREF: RAM:7847o	RAM:788Fo ...
		.BYTE $A5
aSaveCharacter:	.BYTE "Save Character"
		.BYTE $D
		.BYTE $AE
unk_7A78:	.BYTE $20		; DATA XREF: RAM:loc_7689r
		.BYTE $20
		.BYTE $43 ; C
		.BYTE $61 ; a
		.BYTE $72 ; r
		.BYTE $65 ; e
		.BYTE $66 ; f
		.BYTE $75 ; u
		.BYTE $6C ; l
		.BYTE $6C ; l
		.BYTE $79 ; y
		.BYTE $20
		.BYTE $53 ; S
		.BYTE $61 ; a
		.BYTE $76 ; v
		.BYTE $69 ; i
		.BYTE $6E ; n
		.BYTE $67 ; g
		.BYTE $20
		.BYTE $43 ; C
		.BYTE $68 ; h
		.BYTE $61 ; a
		.BYTE $72 ; r
		.BYTE $61 ; a
		.BYTE $63 ; c
		.BYTE $74 ; t
		.BYTE $65 ; e
		.BYTE $72 ; r
		.BYTE $2E ; .
		.BYTE $2E ; .
		.BYTE $2E ; .
		.BYTE $20
unk_7A98:	.BYTE $20		; DATA XREF: RAM:loc_7633r
		.BYTE $20
		.BYTE $20
		.BYTE $43 ; C
		.BYTE $68 ; h
		.BYTE $65 ; e
		.BYTE $63 ; c
		.BYTE $6B ; k
		.BYTE $69 ; i
		.BYTE $6E ; n
		.BYTE $67 ; g
		.BYTE $20
		.BYTE $43 ; C
		.BYTE $68 ; h
		.BYTE $61 ; a
		.BYTE $72 ; r
		.BYTE $61 ; a
		.BYTE $63 ; c
		.BYTE $74 ; t
		.BYTE $65 ; e
		.BYTE $72 ; r
		.BYTE $20
		.BYTE $44 ; D
		.BYTE $69 ; i
		.BYTE $73 ; s
		.BYTE $6B ; k
		.BYTE $2E ; .
		.BYTE $2E ; .
		.BYTE $2E ; .
		.BYTE $20
		.BYTE $20
		.BYTE $20
unk_7AB8:	.BYTE	0		; DATA XREF: RAM:7697w	RAM:loc_7758r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_7AC0:	.BYTE	0		; DATA XREF: RAM:loc_76A4r RAM:76C4r ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_7AC4:	.BYTE	0		; DATA XREF: RAM:76B3w	RAM:loc_76CEr ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_7AC8:	.BYTE	0		; DATA XREF: RAM:76B9w
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_7ACC:	.BYTE	0		; DATA XREF: RAM:76B6w	RAM:7736r ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_7AD0:	.BYTE	0		; DATA XREF: RAM:76E1r	RAM:774Aw
		.RES	303,$00
        .BYTE   $ff,$0e,$00,$15,$40,$84,$9d,$cd,$a8,$1d,$78,$e8,$b0,$63,$07,$15
        .BYTE   $00,$0c,$03,$05,$43,$85,$8c,$dc,$57,$e2,$8b,$1c,$47,$62,$07,$eb
        .BYTE   $ff,$33,$00,$14,$40,$84,$9d,$cd,$a8,$1d,$74,$e3,$b8,$63,$07,$14
        .BYTE   $00,$0c,$00,$14,$40,$84,$9d,$cd,$a8,$1d,$74,$63,$b8,$63,$07,$14
        .BYTE   $00,$0c,$00,$14,$ba,$84,$9c,$cd,$a9,$16,$7f,$e3,$b8,$63,$07,$14
        .BYTE   $00,$07,$0b,$14,$40,$84,$9d,$cd,$a8,$16,$7f,$e3,$b8,$63,$07,$14
        .BYTE   $00,$07,$0b,$14,$40,$84,$9d,$cd,$a8,$16,$7f,$e3,$b8,$63,$07,$14
        .BYTE   $00,$07,$0b,$14,$40,$84,$9d,$cd,$a8,$16,$7f,$e3,$b8,$63,$07,$14
