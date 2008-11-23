		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"
;		.ORG	$7600
		.BYTE $13
; ---------------------------------------------------------------------------
		JMP	loc_7614
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_7AF5
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		INC	$1937
		JSR	$184E
		RTS
; ---------------------------------------------------------------------------

loc_7614:				; CODE XREF: RAM:7601j
		DEC	$1937
		LDX	#4

loc_7619:				; CODE XREF: RAM:7620j
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_7619
		LDX	$631D
		DEX
		STX	$63
		dldi	off_1977, loc_764F
		dldi 	off_16, $7790
		JSR	$184B
		LDA	$1933
		STA	$62
		dldi	off_7, $7C71
		LDA	#2
		JSR	$180F

loc_764F:				; CODE XREF: RAM:7703j
		LDX	$63
		LDA	$7792,X
		STA	byte_778E
		LDA	$7795,X
		STA	byte_778F
		dldi	off_16, $7756
		LDX	$62
		JSR	$1851

loc_766A:				; CODE XREF: RAM:76BEj
		LDX	$62
		STX	$1933
		JSR	$1848

loc_7672:				; CODE XREF: RAM:7688j
		dldi	off_1977, loc_767F
		JMP	$1806
; ---------------------------------------------------------------------------

loc_767F:
		JSR	$1821
		AND	#2
		BNE	loc_76C0
		LDA	$31
		BMI	loc_7672
		CMP	#'1'
		BNE	loc_76BC
		LDA	$6398
		BPL	loc_76A3
		dldi	off_16, $79FA
		LDX	$62
		JSR	$1851
		JMP	loc_7700
; ---------------------------------------------------------------------------

loc_76A3:				; CODE XREF: RAM:7691j
		LDX	#$9A ; 'ö'
		LDA	#$10
		JSR	$1878
		LDX	#$98 ; 'ò'
		LDA	#$10
		JSR	$1878
		LDX	$63
		LDA	byte_79F7,X
		PHA
		LDA	byte_79F4,X
		PHA
		RTS
; ---------------------------------------------------------------------------

loc_76BC:				; CODE XREF: RAM:768Cj
		CMP	#$30 ; '0'
		BNE	loc_766A

loc_76C0:				; CODE XREF: RAM:7684j
		LDX	#4

loc_76C2:				; CODE XREF: RAM:76C9j
		LDA	$750D,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_76C2
		STX	$AC00
		JMP	$180C
; ---------------------------------------------------------------------------

loc_76D1:
		LDA	$6347
		CMP	$6345
		BNE	loc_76E4
		LDA	$6348
		CMP	$6346
		BNE	loc_76E4
		JMP	loc_773A
; ---------------------------------------------------------------------------

loc_76E4:				; CODE XREF: RAM:76D7j	RAM:76DFj
		LDX	#1

loc_76E6:				; CODE XREF: RAM:76EDj
		LDA	$6347,X
		STA	$6345,X
		DEX
		BPL	loc_76E6
		LDA	#2
		JSR	j_RND_A
		ldxy	$780F
		JSR	$185D
		LDX	$62
		JSR	$1851

loc_7700:				; CODE XREF: RAM:76A0j	RAM:771Ej ...
		JSR	sub_774E
		JMP	loc_764F
; ---------------------------------------------------------------------------

loc_7706:
		LDA	#$81 ; 'Å'
		STA	$51
		JSR	$1893
		LDA	#2
		JSR	j_RND_A
		ldxy	$7815
		JSR	$185D
		LDX	$62
		JSR	$1851
		JMP	loc_7700
; ---------------------------------------------------------------------------

loc_7721:
		LDA	#$FF
		STA	$639B
		LDA	#2
		JSR	j_RND_A
		ldxy	$781B
		JSR	$185D
		LDX	$62
		JSR	$1851
		JMP	loc_7700
; ---------------------------------------------------------------------------

loc_773A:				; CODE XREF: RAM:76E1j
		LDA	#2
		JSR	j_RND_A
		ldxy	$7821
		JSR	$185D
		LDX	$62
		JSR	$1851
		JMP	loc_7700

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_774E:				; CODE XREF: RAM:loc_7700p
		DEC	$195F
		LDA	#4
		JMP	$185A
; End of function sub_774E

; ---------------------------------------------------------------------------
		MOVEXY	0,1
		.BYTE $A5
		.BYTE $B4
		.WORD byte_778E
		.BYTE $28
		.BYTE $D
		MOVEXY	5,3
aDoYou:		.BYTE "Do you "
		MenuItem "1","Take a drink or"
		MOVEXY	12,4
		MenuItem "0","Leave?"
		.BYTE	$FF
byte_778E:	.BYTE $FF		; DATA XREF: RAM:7654w	RAM:775Bo
byte_778F:	.BYTE $FF		; DATA XREF: RAM:765Aw
		.BYTE $A8,$FF
		.BYTE	<aYouHaveComeToA
		.BYTE	<aYouReFacingACr
		.BYTE	<aYouInARoomWith
		.BYTE	>aYouHaveComeToA
		.BYTE	>aYouReFacingACr
		.BYTE	>aYouInARoomWith
aYouHaveComeToA:.BYTE "You have come to a bubbling fountain.",0
aYouReFacingACr:.BYTE "You're facing a crystal clear fountain.",0
aYouInARoomWith:.BYTE "You in a room with a sparkling fountain.",0
		.WORD byte_7827
		.WORD byte_7842
		.WORD byte_7867
		.WORD byte_7882
		.WORD byte_78A5
		.WORD byte_78D6
		.WORD byte_7903
		.WORD byte_792E
		.WORD byte_7949
		.WORD byte_7965
		.WORD byte_7986
		.WORD byte_79C0

byte_7827:	MOVEXY	0,3
		.BYTE	$A5,"You feel much better!",$D,$FF

byte_7842:	MOVEXY	0,3
		.BYTE	$A5,"Ahh!  Now you feel much better!",$D,$FF

byte_7867:	MOVEXY	0,3
		.BYTE	$A5,"You feel rejuvenated!",$D,$FF

byte_7882:	MOVEXY	0,3
		.BYTE	$A5,"Your health improves rapidly!",$D,$FF

byte_78A5:	MOVEXY	0,2
		.BYTE	$A5,"You feel a wave of relief",$D,$D
		.BYTE	$A5,"sweep over you!",$D,$FF

byte_78D6:	MOVEXY	0,3
		.BYTE	$A5,"Every cell in your body seems purified!",$D,$FF

byte_7903:	MOVEXY	0,3
		.BYTE	$A5,"All of a sudden you feel very rested!",$D,$FF

byte_792E:	MOVEXY	0,3
		.BYTE	$A5,"You feel revitalized!",$D,$FF

byte_7949:	MOVEXY	0,3
		.BYTE	$A5,"Your fatigue vanishes!",$D,$FF

byte_7965:	MOVEXY	0,3
		.BYTE	$A5,"The water tastes delicious!",$D,$FF

byte_7986:	MOVEXY	0,2
		.BYTE	$A5,"The water is cool, clear and",$D,$D
		.BYTE	$A5,"really hits the spot!",$D,$FF

byte_79C0:	MOVEXY	0,2
		.BYTE	$A5,"Ahh!  The water tastes",$D,$D
		.BYTE	$A5,"absolutely marvelous!",$D,$FF

byte_79F4:
		.BYTE	<(loc_76D1-1)
		.BYTE	<(loc_7706-1)
		.BYTE	<(loc_7721-1)

byte_79F7:
		.BYTE	>(loc_76D1-1)
		.BYTE	>(loc_7706-1)
		.BYTE	>(loc_7721-1)

		MOVEXY	0,2
		.BYTE	$A5,"You are too bloated to drink!",$D,$FF

unk_7A1D:	.BYTE $70 ; p		; DATA XREF: RAM:7A4Do
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42
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
		.BYTE $42
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
		.WORD unk_7A1D
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
		STA	COLBK
		STX	$D016
		STY	COLPF2
		LDX	#$23 ; '#'
		LDY	$BBDC,X

loc_7AB3:				; CODE XREF: RAM:7AD8j
		LDA	$BB94,X
		STA	WSYNC
		STA	COLPF1
		STY	COLPF3
		LDA	$BB4C,X
		STA	CHBASE
		LDA	$BB70,X
		STA	WSYNC
		STA	$D016
		LDA	$BBB8,X
		STA	COLPF2
		LDY	$BBDB,X
		DEX
		BPL	loc_7AB3
		LDA	#0
		STA	WSYNC
		STA	COLPF2
		STA	COLBK
		ldi	COLPF1, $0E
		ldi	CHBASE, $14
		PLA
		TAY
		PLA
		TAX
		PLA
		RTI
; ---------------------------------------------------------------------------

loc_7AF5:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$1D
		STA	$254
		LDA	#$7A ; 'z'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_7B08:				; CODE XREF: RAM:7B16j
		LDY	#$C

loc_7B0A:				; CODE XREF: RAM:7B11j
		STA	$BB4C,X
		DEX
		BMI	loc_7B18
		DEY
		BNE	loc_7B0A
		CLC
		ADC	#4
		BNE	loc_7B08

loc_7B18:				; CODE XREF: RAM:7B0Ej
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_7C10
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_7C10
		LDA	#0
		STA	loc_7B3E+1
		LDA	#$BD ; 'Ω'
		STA	loc_7B3E+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_7B3E:				; CODE XREF: RAM:7B42j	RAM:7B48j
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7B3E
		INC	loc_7B3E+2
		DEY
		BNE	loc_7B3E
		LDX	#7

loc_7B4C:				; CODE XREF: RAM:7B50j
		STA	$D000,X
		DEX
		BPL	loc_7B4C
		LDA	#3
		TAX

loc_7B55:				; CODE XREF: RAM:7B59j
		STA	$D008,X
		DEX
		BPL	loc_7B55
		ldi	SIZEM, $FF
		ldi	GRACTL,	$03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_7B83:				; CODE XREF: RAM:7BA9j
		LDY	6
		LDA	(off_7),Y
		STA	4
		LDY	#7

loc_7B8B:				; CODE XREF: RAM:7B96j
		LSR	4
		BCC	loc_7B95
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_7B95:				; CODE XREF: RAM:7B8Dj
		DEY
		BPL	loc_7B8B
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_7BA3
		INC	$A

loc_7BA3:				; CODE XREF: RAM:7B9Fj
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_7B83
		LDA	#$2D ; '-'
		STA	off_7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_7BBB:				; CODE XREF: RAM:7BCCj
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
		BCC	loc_7BBB

loc_7BCE:				; CODE XREF: RAM:7BEBj
		LDX	#0

loc_7BD0:				; CODE XREF: RAM:7BE9j
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_7BD6:				; CODE XREF: RAM:7BDBj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_7BD6
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_7BED
		CPX	#$A
		BCC	loc_7BD0
		BCS	loc_7BCE

loc_7BED:				; CODE XREF: RAM:7BE5j
		LDX	#3
		LDA	$BC5F

loc_7BF2:				; CODE XREF: RAM:7BF6j
		STA	COLPM0,X
		DEX
		BPL	loc_7BF2
		dldi	off_24A, $7A4F
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_7C10:				; CODE XREF: RAM:7B20p	RAM:7B2Bp ...
		LDY	#0
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_7C1A
		INC	off_7+1

loc_7C1A:				; CODE XREF: RAM:7C16j
		CMP	#$1B
		BEQ	loc_7C29
		STA	(off_9),Y
		INC	off_9
		BNE	loc_7C26
		INC	off_9+1

loc_7C26:				; CODE XREF: RAM:7C22j
		JMP	loc_7C10
; ---------------------------------------------------------------------------

loc_7C29:				; CODE XREF: RAM:7C1Cj
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_7C31
		INC	off_7+1

loc_7C31:				; CODE XREF: RAM:7C2Dj
		CMP	#$FF
		BNE	loc_7C36
		RTS
; ---------------------------------------------------------------------------

loc_7C36:				; CODE XREF: RAM:7C33j
		STA	byte_7C70
		ADC	off_9
		STA	loc_7C49+1
		LDA	off_9+1
		ADC	#0
		CMP	#$14
		BNE	loc_7C4E
		LDA	byte_7C70

loc_7C49:				; DATA XREF: RAM:7C3Bw
		SBC	#$FF
		STA	byte_7C70

loc_7C4E:				; CODE XREF: RAM:7C44j
		LDA	(7),Y
		INC	7
		BNE	loc_7C56
		INC	8

loc_7C56:				; CODE XREF: RAM:7C52j
		LDY	byte_7C70

loc_7C59:				; CODE XREF: RAM:7C5Cj
		STA	(9),Y
		DEY
		BPL	loc_7C59
		INC	byte_7C70
		LDA	byte_7C70
		CLC
		ADC	9
		STA	9
		BCC	loc_7C6D
		INC	$A

loc_7C6D:				; CODE XREF: RAM:7C69j
		JMP	loc_7C10
; ---------------------------------------------------------------------------
byte_7C70:	.BYTE 0			; DATA XREF: RAM:loc_7C36w RAM:7C46r ...
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	5
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $8A ; ä
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	5
		.BYTE $A2 ; ¢
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $AD ; ≠
		.BYTE $A4 ; §
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $F4 ; Ù
		.BYTE $D0 ; –
		.BYTE $40 ; @
		.BYTE	5
		.BYTE	5
		.BYTE $14
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	5
		.BYTE $10
		.BYTE $40 ; @
		.BYTE $45 ; E
		.BYTE $10
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE	1
		.BYTE $41 ; A
		.BYTE $10
		.BYTE	4
		.BYTE $41 ; A
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $57 ; W
		.BYTE $17
		.BYTE $55 ; U
		.BYTE $45 ; E
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $F4 ; Ù
		.BYTE $F5 ; ı
		.BYTE $D1 ; —
		.BYTE $D1 ; —
		.BYTE $D5 ; ’
		.BYTE $51 ; Q
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $41 ; A
		.BYTE $45 ; E
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE	1
		.BYTE $50 ; P
		.BYTE	4
		.BYTE $15
		.BYTE $41 ; A
		.BYTE	1
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE	7
		.BYTE	1
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE	5
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1A
		.BYTE $1A
		.BYTE	6
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	4
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	4
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE $17
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	7
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $22 ; "
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $90 ; ê
		.BYTE $41 ; A
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	2
		.BYTE $51 ; Q
		.BYTE $11
		.BYTE $45 ; E
		.BYTE $44 ; D
		.BYTE $15
		.BYTE $14
		.BYTE $11
		.BYTE $14
		.BYTE $10
		.BYTE $45 ; E
		.BYTE $10
		.BYTE $40 ; @
		.BYTE	5
		.BYTE $51 ; Q
		.BYTE $10
		.BYTE $15
		.BYTE $40 ; @
		.BYTE $51 ; Q
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE $50 ; P
		.BYTE	4
		.BYTE $41 ; A
		.BYTE $10
		.BYTE $51 ; Q
		.BYTE $44 ; D
		.BYTE $54 ; T
		.BYTE $14
		.BYTE $51 ; Q
		.BYTE $15
		.BYTE $15
		.BYTE $45 ; E
		.BYTE $14
		.BYTE $44 ; D
		.BYTE $51 ; Q
		.BYTE $51 ; Q
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $14
		.BYTE $44 ; D
		.BYTE $50 ; P
		.BYTE $10
		.BYTE $41 ; A
		.BYTE $44 ; D
		.BYTE	4
		.BYTE $11
		.BYTE $14
		.BYTE	0
		.BYTE $15
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	5
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $14
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $14
		.BYTE	1
		.BYTE	0
		.BYTE $45 ; E
		.BYTE $41 ; A
		.BYTE $11
		.BYTE $11
		.BYTE $51 ; Q
		.BYTE $51 ; Q
		.BYTE $11
		.BYTE $51 ; Q
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE $30 ; 0
		.BYTE $BE ; æ
		.BYTE $BE ; æ
		.BYTE $8F ; è
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $BF ; ø
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $1B
		.BYTE $19
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AF ; Ø
		.BYTE $AC ; ¨
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	6
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $BE ; æ
		.BYTE $BE ; æ
		.BYTE $FF
		.BYTE $F3 ; Û
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $51 ; Q
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE $51 ; Q
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	6
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $10
		.BYTE	0
		.BYTE $11
		.BYTE	4
		.BYTE $10
		.BYTE $10
		.BYTE $11
		.BYTE $44 ; D
		.BYTE $11
		.BYTE	4
		.BYTE $50 ; P
		.BYTE	4
		.BYTE	1
		.BYTE $54 ; T
		.BYTE	5
		.BYTE $15
		.BYTE $11
		.BYTE $45 ; E
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $11
		.BYTE $45 ; E
		.BYTE $54 ; T
		.BYTE $14
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $14
		.BYTE $50 ; P
		.BYTE $51 ; Q
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $15
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $14
		.BYTE $41 ; A
		.BYTE $50 ; P
		.BYTE	4
		.BYTE	1
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $10
		.BYTE	4
		.BYTE $54 ; T
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE $15
		.BYTE $15
		.BYTE	5
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE $14
		.BYTE $44 ; D
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $6A ; j
		.BYTE $40 ; @
		.BYTE $6A ; j
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $33 ; 3
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; Û
		.BYTE $CF ; œ
		.BYTE $FF
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE $E8 ; Ë
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE $1D
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AE ; Æ
		.BYTE $AE ; Æ
		.BYTE $BE ; æ
		.BYTE $BE ; æ
		.BYTE $CE ; Œ
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE $27 ; '
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
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $3E ; >
		.BYTE $FE ; ˛
		.BYTE $CE ; Œ
		.BYTE $3E ; >
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $CA ;  
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE $10
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $BE ; æ
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE $13
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $51 ; Q
		.BYTE $41 ; A
		.BYTE $14
		.BYTE $1B
		.BYTE	6
		.BYTE $15
		.BYTE $11
		.BYTE $1B
		.BYTE	6
		.BYTE $14
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $41 ; A
		.BYTE $45 ; E
		.BYTE $1B
		.BYTE	4
		.BYTE $44 ; D
		.BYTE $11
		.BYTE $11
		.BYTE $1B
		.BYTE	4
		.BYTE	4
		.BYTE $44 ; D
		.BYTE $44 ; D
		.BYTE $51 ; Q
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE $45 ; E
		.BYTE $44 ; D
		.BYTE $44 ; D
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $45 ; E
		.BYTE $10
		.BYTE $44 ; D
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $10
		.BYTE	4
		.BYTE $44 ; D
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	2
		.BYTE $11
		.BYTE $41 ; A
		.BYTE $41 ; A
		.BYTE $11
		.BYTE $11
		.BYTE $1B
		.BYTE	3
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $10
		.BYTE $1B
		.BYTE	3
		.BYTE	4
		.BYTE $14
		.BYTE $1B
		.BYTE	2
		.BYTE $6A ; j
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE $17
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $F3 ; Û
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $CC ; Ã
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE $20
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE $A2 ; ¢
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $8B ; ã
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BE ; æ
		.BYTE $BE ; æ
		.BYTE $1B
		.BYTE	3
		.BYTE $BA ; ∫
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $A9 ; ©
		.BYTE	9
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $51 ; Q
		.BYTE $1B
		.BYTE	5
		.BYTE $11
		.BYTE	1
		.BYTE $1B
		.BYTE	7
		.BYTE $11
		.BYTE $1B
		.BYTE	7
		.BYTE $14
		.BYTE $1B
		.BYTE	3
		.BYTE $44 ; D
		.BYTE $4C ; L
		.BYTE $4C ; L
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $21 ; !
		.BYTE $20
		.BYTE	8
		.BYTE	2
		.BYTE	2
		.BYTE $82 ; Ç
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $52 ; R
		.BYTE $40 ; @
		.BYTE	8
		.BYTE $A0 ; †
		.BYTE $20
		.BYTE $20
		.BYTE $22 ; "
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	5
		.BYTE $11
		.BYTE $90 ; ê
		.BYTE $90 ; ê
		.BYTE	5
		.BYTE	5
		.BYTE $45 ; E
		.BYTE $1B
		.BYTE	4
		.BYTE $44 ; D
		.BYTE $1B
		.BYTE	4
		.BYTE $14
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE $6A ; j
		.BYTE $40 ; @
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $20
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	3
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE $1F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE  $E
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	3
		.BYTE $8A ; ä
		.BYTE $88 ; à
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $82 ; Ç
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE $20
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	5
		.BYTE $A9 ; ©
		.BYTE $AB ; ´
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $11
		.BYTE $1B
		.BYTE	4
		.BYTE $51 ; Q
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $14
		.BYTE	4
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $89 ; â
		.BYTE $82 ; Ç
		.BYTE $20
		.BYTE	8
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $96 ; ñ
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $A5 ; •
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $25 ; %
		.BYTE $25 ; %
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $96 ; ñ
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $A2 ; ¢
		.BYTE $68 ; h
		.BYTE $58 ; X
		.BYTE $60 ; `
		.BYTE $82 ; Ç
		.BYTE	8
		.BYTE $20
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $90 ; ê
		.BYTE $1B
		.BYTE	2
		.BYTE $10
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $44 ; D
		.BYTE	4
		.BYTE	0
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	4
		.BYTE $51 ; Q
		.BYTE $41 ; A
		.BYTE	0
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	6
		.BYTE $6A ; j
		.BYTE $FF
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE $2F ; /
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	3
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $EA ; Í
		.BYTE $82 ; Ç
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
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
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	5
		.BYTE $A2 ; ¢
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE $1B
		.BYTE $27 ; '
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $8A ; ä
		.BYTE $88 ; à
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE $A2 ; ¢
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	3
		.BYTE	0
		.BYTE $22 ; "
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $BE ; æ
		.BYTE $FA ; ˙
		.BYTE $E9 ; È
		.BYTE $E5 ; Â
		.BYTE $F5 ; ı
		.BYTE $3D ; =
		.BYTE  $F
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $C1 ; ¡
		.BYTE $8A ; ä
		.BYTE $45 ; E
		.BYTE $45 ; E
		.BYTE $40 ; @
		.BYTE	5
		.BYTE	5
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $A2 ; ¢
		.BYTE $51 ; Q
		.BYTE	0
		.BYTE $11
		.BYTE $51 ; Q
		.BYTE $41 ; A
		.BYTE $11
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $15
		.BYTE $15
		.BYTE	0
		.BYTE $14
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $A3 ; £
		.BYTE $AF ; Ø
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE $22 ; "
		.BYTE $82 ; Ç
		.BYTE $C2 ; ¬
		.BYTE $C2 ; ¬
		.BYTE $F2 ; Ú
		.BYTE $FE ; ˛
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $94 ; î
		.BYTE $1B
		.BYTE	3
		.BYTE $95 ; ï
		.BYTE $94 ; î
		.BYTE $AA ; ™
		.BYTE $51 ; Q
		.BYTE $51 ; Q
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE $A8 ; ®
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $AA ; ™
		.BYTE $46 ; F
		.BYTE $45 ; E
		.BYTE $74 ; t
		.BYTE $1B
		.BYTE	3
		.BYTE $54 ; T
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $FA ; ˙
		.BYTE $BD ; Ω
		.BYTE $AF ; Ø
		.BYTE $6B ; k
		.BYTE $5B ; [
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $FC ; ¸
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE $14
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	7
		.BYTE $8A ; ä
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE $26 ; &
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $83 ; É
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE $83 ; É
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE $1D
		.BYTE $FF
		.BYTE $40 ; @
		.BYTE $10
		.BYTE	5
		.BYTE	0
		.BYTE $10
		.BYTE $15
		.BYTE	4
		.BYTE	4
		.BYTE $FF
		.BYTE  $F
		.BYTE	0
		.BYTE $50 ; P
		.BYTE	5
		.BYTE	0
		.BYTE $10
		.BYTE $50 ; P
		.BYTE $D5 ; ’
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $15
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE  $F
		.BYTE	0
		.BYTE $50 ; P
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $54 ; T
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AF ; Ø
		.BYTE $BD ; Ω
		.BYTE $BD ; Ω
		.BYTE $F5 ; ı
		.BYTE $F4 ; Ù
		.BYTE	4
		.BYTE	4
		.BYTE $54 ; T
		.BYTE $7E ; ~
		.BYTE $5F ; _
		.BYTE $1F
		.BYTE $17
		.BYTE	7
		.BYTE	4
		.BYTE	4
		.BYTE	5
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $97 ; ó
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	5
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	1
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	4
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE	1
		.BYTE $54 ; T
		.BYTE	0
		.BYTE	1
		.BYTE	4
		.BYTE $C0 ; ¿
		.BYTE	1
		.BYTE $14
		.BYTE $40 ; @
		.BYTE	4
		.BYTE $10
		.BYTE $10
		.BYTE $14
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE	2
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $C2 ; ¬
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE $AA ; ™
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE $19
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $83 ; É
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $83 ; É
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE $34 ; 4
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE	4
		.BYTE	4
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $54 ; T
		.BYTE	5
		.BYTE	4
		.BYTE	4
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $40 ; @
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	5
		.BYTE $14
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE	1
		.BYTE	7
		.BYTE $1F
		.BYTE	7
		.BYTE	1
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $40 ; @
		.BYTE $D0 ; –
		.BYTE $F4 ; Ù
		.BYTE $FD ; ˝
		.BYTE $F4 ; Ù
		.BYTE $D0 ; –
		.BYTE $40 ; @
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE	1
		.BYTE	5
		.BYTE $14
		.BYTE $50 ; P
		.BYTE $41 ; A
		.BYTE	0
		.BYTE  $B
		.BYTE $FF
		.BYTE	1
		.BYTE	5
		.BYTE $14
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $40 ; @
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $10
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE  $F
		.BYTE $1B
		.BYTE $2D ; -
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE  $A
		.BYTE $C2 ; ¬
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $C2 ; ¬
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE $1B
		.BYTE	3
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $96 ; ñ
		.BYTE $98 ; ò
		.BYTE $9C ; ú
		.BYTE $9E ; û
		.BYTE $9C ; ú
		.BYTE $9A ; ö
		.BYTE $98 ; ò
		.BYTE $96 ; ñ
		.BYTE $94 ; î
		.BYTE $92 ; í
		.BYTE $94 ; î
		.BYTE $96 ; ñ
		.BYTE $98 ; ò
		.BYTE $9A ; ö
		.BYTE $9C ; ú
		.BYTE $9E ; û
		.BYTE $9C ; ú
		.BYTE $9A ; ö
		.BYTE $98 ; ò
		.BYTE $96 ; ñ
		.BYTE $94 ; î
		.BYTE $92 ; í
		.BYTE $94 ; î
		.BYTE $96 ; ñ
		.BYTE $9A ; ö
		.BYTE $9C ; ú
		.BYTE $9E ; û
		.BYTE $9C ; ú
		.BYTE $9A ; ö
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE	4
		.BYTE $1B
		.BYTE	3
		.BYTE $F8 ; ¯
		.BYTE $1B
		.BYTE	2
		.BYTE $F6 ; ˆ
		.BYTE $F4 ; Ù
		.BYTE $F4 ; Ù
		.BYTE $1B
		.BYTE	2
		.BYTE $F2 ; Ú
		.BYTE $1B
		.BYTE	7
		.BYTE $A2 ; ¢
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	6
		.BYTE $DE ; ﬁ
		.BYTE $38 ; 8
		.BYTE $36 ; 6
		.BYTE $2C ; ,
		.BYTE $36 ; 6
		.BYTE	6
		.BYTE	8
		.BYTE  $A
		.BYTE  $C
		.BYTE $1B
		.BYTE	4
		.BYTE $58 ; X
		.BYTE $1B
		.BYTE	7
		.BYTE  $E
		.BYTE $1B
		.BYTE	9
		.BYTE $26 ; &
		.BYTE $DE ; ﬁ
		.BYTE $1B
		.BYTE	7
		.BYTE $2E ; .
		.BYTE $1B
		.BYTE	3
		.BYTE $9E ; û
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $FF
		.BYTE $8C ; å
		.BYTE $20
		.BYTE $10
		.BYTE $61 ; a
		.BYTE $FF
		.BYTE $8C ; å
		.BYTE $20
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $FF
		.BYTE $8C ; å
		.BYTE	0
		.BYTE $18
		.BYTE $41 ; A
		.BYTE $FF
		.BYTE $8C ; å
		.BYTE $70 ; p
		.BYTE $18
		.BYTE	3
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	7
		.BYTE $DB ; -
		.BYTE $E0 ; ‡
		.BYTE $10
		.BYTE	0
		.BYTE	3
		.BYTE $FF
		.BYTE $E0 ; ‡
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $18
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $FC ; ¸
		.BYTE $DF ; ﬂ
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $F8 ; ¯
		.BYTE $FE ; ˛
		.BYTE $4E ; N
		.BYTE	0
		.BYTE $7C ; |
		.BYTE $20
		.BYTE $FE ; ˛
		.BYTE  $E
		.BYTE	0
		.BYTE $7C ; |
		.BYTE $21 ; !
		.BYTE $F0 ; 
		.BYTE $1E
		.BYTE	0
		.BYTE $70 ; p
		.BYTE	7
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $1F
		.BYTE $E0 ; ‡
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE $5E ; ^
		.BYTE $7F ; 
		.BYTE $C3 ; √
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $13
		.BYTE $FF
		.BYTE $CE ; Œ
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FD ; ˝
		.BYTE $9E ; û
		.BYTE $98 ; ò
		.BYTE $35 ; 5
		.BYTE  $E
		.BYTE $9C ; ú
		.BYTE  $A
		.BYTE $1B
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
