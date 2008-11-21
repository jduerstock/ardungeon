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
		JMP	loc_7AB8
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		JSR	$184E
		INC	$1937
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
		dldi	off_1977, loc_764A
		dldi	off_16, $77B1
		JSR	$184B
		LDA	$1933
		STA	$68
		dldi	off_7, $7C34
		LDA	#2
		JSR	$180F
		RTS
; ---------------------------------------------------------------------------

loc_764A:
		dldi	off_16, $77B3
		LDX	$68
		JSR	$1851
		LDA	#$A
		JSR	$185A

loc_765C:				; CODE XREF: RAM:768Aj	RAM:76CBj ...
		dldi	off_16, $7808
		LDX	$68
		JSR	$1851

loc_7669:				; CODE XREF: RAM:7682j
		dldi	off_1977, loc_7676
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7676:
		JSR	$1821
		AND	#2
		BEQ	loc_7680

loc_767D:				; CODE XREF: RAM:7686j
		JMP	loc_7795
; ---------------------------------------------------------------------------

loc_7680:				; CODE XREF: RAM:767Bj
		LDA	$31
		BMI	loc_7669
		CMP	#'0'
		BEQ	loc_767D
		CMP	#'1'
		BNE	loc_765C
		dldi	off_16, $77B1
		LDX	$68
		JSR	$1851
		JSR	$189F
		JSR	$18A5
		LDX	#$F

loc_76A1:				; CODE XREF: RAM:76C9j
		LDA	$6494,X
		CMP	#2
		BNE	loc_76C8
		LDA	$64A4,X
		CMP	I_LOC_X
		BNE	loc_76C8
		LDA	$64B4,X
		CMP	I_LOC_Y
		BNE	loc_76C8
		LDA	$64C4,X
		CMP	I_LOC_Z
		BNE	loc_76C8
		LDA	$64D4,X
		STA	$4B
		JMP	loc_76CE
; ---------------------------------------------------------------------------

loc_76C8:				; CODE XREF: RAM:76A6j	RAM:76AEj ...
		DEX
		BPL	loc_76A1
		JMP	loc_765C
; ---------------------------------------------------------------------------

loc_76CE:				; CODE XREF: RAM:76C5j
		STA	$69
		JSR	$1887
		LDA	#6
		CLC
		ADC	off_41
		STA	$66
		LDA	#0
		ADC	off_41+1
		STA	$67
		JSR	$1869
		LDX	#3
		LDA	$630A
		BNE	loc_775E
		LDY	#0
		LDA	(off_41),Y
		CMP	#7
		BEQ	loc_771D
		CMP	#0
		BNE	loc_775E
		LDA	$69
		JSR	$1896
		LDX	#3
		LDY	#0
		LDA	(off_43),Y
		CMP	#$B
		BNE	loc_775E
		INY
		LDA	(off_43),Y
		BNE	loc_7711
		INY
		LDA	(off_43),Y
		CMP	#2
		BCC	loc_775E

loc_7711:				; CODE XREF: RAM:7708j
		dldi	off_16, $7913
		LDX	#0
		BEQ	loc_7766

loc_771D:				; CODE XREF: RAM:76F0j
		LDA	$69
		JSR	$1896
		LDX	#3
		LDY	#0
		LDA	(off_43),Y
		CMP	#2
		BNE	loc_775E
		INY
		LDA	(off_43),Y
		BNE	loc_775E
		dldi	off_16, $798E
		LDX	$68
		JSR	$1851
		LDA	#$F
		JSR	$185A
		LDA	$69
		JSR	$1887
		LDY	#2
		LDA	#$10
		STA	(off_41),Y
		JSR	$18A5
		LDA	$6385
		CMP	#$B8 ; '∏'
		BCS	loc_775B
		INC	$6385

loc_775B:				; CODE XREF: RAM:7756j
		JMP	loc_765C
; ---------------------------------------------------------------------------

loc_775E:				; CODE XREF: RAM:76E8j	RAM:76F4j ...
		dldi	off_16, $78AE

loc_7766:				; CODE XREF: RAM:771Bj
		LDA	unk_77AB,X
		STA	$750D
		LDA	unk_77AC,X
		STA	$750E
		LDA	#4
		STA	$750F
		LDA	unk_77AD,X
		STA	$6312
		LDX	$68
		JSR	$1851
		LDA	#$A
		JSR	$185A
		LDA	$69
		JSR	$1887
		LDY	#2
		LDA	#$10
		STA	($41),Y
		JSR	$18A5

loc_7795:				; CODE XREF: RAM:loc_767Dj
		LDX	#4

loc_7797:				; CODE XREF: RAM:779Ej
		LDA	$750D,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_7797
		STX	$AC00
		JMP	$180C
; ---------------------------------------------------------------------------
		LDA	#4
		JMP	$185A
; ---------------------------------------------------------------------------
unk_77AB:	.BYTE $1C		; DATA XREF: RAM:loc_7766r
unk_77AC:	.BYTE $14		; DATA XREF: RAM:776Cr
unk_77AD:	.BYTE	2		; DATA XREF: RAM:7777r
		.BYTE  $A
		.BYTE $1E
		.BYTE	1
		.BYTE $A8,$FF
		MOVEXY	0,1
aYouAreAtARiver:.BYTE	$A5,"You are at a river crossing.",$D
aTheRiverLooksT:.BYTE	$A5,"The river looks too swift to safely",$D
aSwimAcross_:	.BYTE	$A5,"swim across.",$D,$FF
		MOVEXY	0,0		
aAGhostlyFigure:.BYTE	$A5,"A ghostly figure is waiting",$D
		MOVEXY	9,1
aForYouAtTheDoc:.BYTE	"for you at the dock"
		STRJSR	locret_79DF
		.BYTE	"."
		STRJSR	locret_79DF
		.BYTE	"."
		STRJSR	locret_79DF
		.BYTE	".",$D
aHeSlowlyOpensH:.BYTE	$A5,"He slowly opens his",$D
aOutstretchedHa:.BYTE	$A5,"outstretched hand.",$D,$D
aDoYou:		.BYTE	"   Do you ("
a1:		BLINK	"1"
aOfferSomething:.BYTE	") Offer something or",$D
		.BYTE	"          ("
		BLINK	"0"
aLeave:		.BYTE	") Leave",$FF

		MOVEXY	0,0
aTheMysteriousB:.BYTE $A5,"The mysterious boatman takes",$D,$D
aYour:		.BYTE $A5,"your "
		.BYTE $B4
		.WORD $66
		.BYTE $12
aAndProceedsTo:	.BYTE " and proceeds to",$D,$D
aTakeYouDownThe:.BYTE $A5,"take you down the river in his boat.",$D,$FF

		MOVEXY	0,0
aTheMysteriou_0:.BYTE $A5,"The mysterious boatman takes his",$D,$D
aFeeAndPlacesIt:.BYTE $A5,"fee and places it in his pouch.",$D,$D
aHeThenRowsYouA:.BYTE $A5,"He then rows you across the",$D,$D
aRiverInHisBoat:.BYTE $A5,"river in his boat.",$D,$FF

		MOVEXY	0,1
aTheBoatmanTake:.BYTE	$A5,"The boatman takes the",$D,$D
		.BYTE	$A5
		.BYTE	$B4
		.WORD	$66
		.BYTE	$12
		.BYTE	$D,$D
aAndPlacesItInH:.BYTE	$A5,"and places it in his boat.",$D,$FF
; ---------------------------------------------------------------------------
		LDX	#$64 ; 'd'

loc_79CF:				; CODE XREF: RAM:79DDj
		LDA	$252

loc_79D2:				; CODE XREF: RAM:79D5j
		CMP	$252
		BEQ	loc_79D2
		JSR	$181E
		BPL	locret_79DF
		DEX
		BNE	loc_79CF

locret_79DF:				; CODE XREF: RAM:79DAj
					; DATA XREF: RAM:783Fo	...
		RTS
; ---------------------------------------------------------------------------
unk_79E0:	.BYTE $70 ; p		; DATA XREF: RAM:7A10o
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
		.BYTE $44
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
		.BYTE $41
		.WORD unk_79E0
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
		STY	$D018
		LDX	#$23 ; '#'
		LDY	$BBDC,X

loc_7A76:				; CODE XREF: RAM:7A9Bj
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
		BPL	loc_7A76
		LDA	#0
		STA	WSYNC
		STA	$D018
		STA	COLBK
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

loc_7AB8:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$E0 ; '‡'
		STA	$254
		LDA	#$79 ; 'y'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_7ACB:				; CODE XREF: RAM:7AD9j
		LDY	#$C

loc_7ACD:				; CODE XREF: RAM:7AD4j
		STA	$BB4C,X
		DEX
		BMI	loc_7ADB
		DEY
		BNE	loc_7ACD
		CLC
		ADC	#4
		BNE	loc_7ACB

loc_7ADB:				; CODE XREF: RAM:7AD1j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_7BD3
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_7BD3
		LDA	#0
		STA	loc_7B01+1
		LDA	#$BD ; 'Ω'
		STA	loc_7B01+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_7B01:				; CODE XREF: RAM:7B05j	RAM:7B0Bj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7B01
		INC	loc_7B01+2
		DEY
		BNE	loc_7B01
		LDX	#7

loc_7B0F:				; CODE XREF: RAM:7B13j
		STA	$D000,X
		DEX
		BPL	loc_7B0F
		LDA	#3
		TAX

loc_7B18:				; CODE XREF: RAM:7B1Cj
		STA	$D008,X
		DEX
		BPL	loc_7B18
		LDA	#$FF
		STA	$D00C
		ldi	GRACTL, $03
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

loc_7B46:				; CODE XREF: RAM:7B6Cj
		LDY	6
		LDA	(off_7),Y
		STA	4
		LDY	#7

loc_7B4E:				; CODE XREF: RAM:7B59j
		LSR	4
		BCC	loc_7B58
		LDA	(off_9),Y
		ORA	#$80 ; 'Ä'
		STA	(off_9),Y

loc_7B58:				; CODE XREF: RAM:7B50j
		DEY
		BPL	loc_7B4E
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_7B66
		INC	$A

loc_7B66:				; CODE XREF: RAM:7B62j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_7B46
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_7B7E:				; CODE XREF: RAM:7B8Fj
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
		BCC	loc_7B7E

loc_7B91:				; CODE XREF: RAM:7BAEj
		LDX	#0

loc_7B93:				; CODE XREF: RAM:7BACj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_7B99:				; CODE XREF: RAM:7B9Ej
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_7B99
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_7BB0
		CPX	#$A
		BCC	loc_7B93
		BCS	loc_7B91

loc_7BB0:				; CODE XREF: RAM:7BA8j
		LDX	#3
		LDA	$BC5F

loc_7BB5:				; CODE XREF: RAM:7BB9j
		STA	COLPM0,X
		DEX
		BPL	loc_7BB5
		dldi	off_24A, $7A12
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_7BD3:				; CODE XREF: RAM:7AE3p	RAM:7AEEp ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_7BDD
		INC	8

loc_7BDD:				; CODE XREF: RAM:7BD9j
		CMP	#$1B
		BEQ	loc_7BEC
		STA	(9),Y
		INC	9
		BNE	loc_7BE9
		INC	$A

loc_7BE9:				; CODE XREF: RAM:7BE5j
		JMP	loc_7BD3
; ---------------------------------------------------------------------------

loc_7BEC:				; CODE XREF: RAM:7BDFj
		LDA	(7),Y
		INC	7
		BNE	loc_7BF4
		INC	8

loc_7BF4:				; CODE XREF: RAM:7BF0j
		CMP	#$FF
		BNE	loc_7BF9
		RTS
; ---------------------------------------------------------------------------

loc_7BF9:				; CODE XREF: RAM:7BF6j
		STA	byte_7C33
		ADC	9
		STA	loc_7C0C+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_7C11
		LDA	byte_7C33

loc_7C0C:				; DATA XREF: RAM:7BFEw
		SBC	#$FF
		STA	byte_7C33

loc_7C11:				; CODE XREF: RAM:7C07j
		LDA	(7),Y
		INC	7
		BNE	loc_7C19
		INC	8

loc_7C19:				; CODE XREF: RAM:7C15j
		LDY	byte_7C33

loc_7C1C:				; CODE XREF: RAM:7C1Fj
		STA	(9),Y
		DEY
		BPL	loc_7C1C
		INC	byte_7C33
		LDA	byte_7C33
		CLC
		ADC	9
		STA	9
		BCC	loc_7C30
		INC	$A

loc_7C30:				; CODE XREF: RAM:7C2Cj
		JMP	loc_7BD3
; ---------------------------------------------------------------------------
byte_7C33:	.BYTE 0			; DATA XREF: RAM:loc_7BF9w RAM:7C09r ...
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $80 ; Ä
		.BYTE	8
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $A2 ; ¢
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE $E2 ; ‚
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $2A ; *
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $20
		.BYTE	0
		.BYTE	8
		.BYTE $28 ; (
		.BYTE $A8 ; ®
		.BYTE $85 ; Ö
		.BYTE	5
		.BYTE $25 ; %
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $5D ; ]
		.BYTE $5F ; _
		.BYTE $5D ; ]
		.BYTE $5F ; _
		.BYTE $5D ; ]
		.BYTE  $F
		.BYTE $AE ; Æ
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	4
		.BYTE $D4 ; ‘
		.BYTE $C0 ; ¿
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $51 ; Q
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $A3 ; £
		.BYTE	0
		.BYTE	0
		.BYTE $51 ; Q
		.BYTE $CE ; Œ
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $30 ; 0
		.BYTE $2C ; ,
		.BYTE $55 ; U
		.BYTE $15
		.BYTE	5
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	4
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $82 ; Ç
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8F ; è
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $A2 ; ¢
		.BYTE $A2 ; ¢
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $E8 ; Ë
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $2A ; *
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	6
		.BYTE $A2 ; ¢
		.BYTE $22 ; "
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $80 ; Ä
		.BYTE $A2 ; ¢
		.BYTE $1B
		.BYTE	5
		.BYTE $8A ; ä
		.BYTE $88 ; à
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $22 ; "
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $83 ; É
		.BYTE  $B
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $82 ; Ç
		.BYTE $CA ;  
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $F0 ; 
		.BYTE $F2 ; Ú
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $8A ; ä
		.BYTE $8A ; ä
		.BYTE $80 ; Ä
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE	5
		.BYTE $25 ; %
		.BYTE $A5 ; •
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $FF
		.BYTE $AE ; Æ
		.BYTE $AF ; Ø
		.BYTE  $C
		.BYTE $AF ; Ø
		.BYTE $AE ; Æ
		.BYTE $5F ; _
		.BYTE $5D ; ]
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $C0 ; ¿
		.BYTE $E8 ; Ë
		.BYTE $E8 ; Ë
		.BYTE $D4 ; ‘
		.BYTE $D4 ; ‘
		.BYTE $FF
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $FF
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $FF
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $54 ; T
		.BYTE $5F ; _
		.BYTE $FF
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE $A0 ; †
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $A2 ; ¢
		.BYTE $CF ; œ
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $C7 ; «
		.BYTE $C6 ; ∆
		.BYTE $FC ; ¸
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	5
		.BYTE $80 ; Ä
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $14
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE  $A
		.BYTE  $A
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; ä
		.BYTE $82 ; Ç
		.BYTE $80 ; Ä
		.BYTE $88 ; à
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; ı
		.BYTE $EA ; Í
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $AF ; Ø
		.BYTE $A2 ; ¢
		.BYTE $22 ; "
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $A8 ; ®
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	6
		.BYTE $A2 ; ¢
		.BYTE $22 ; "
		.BYTE	2
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $A2 ; ¢
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE	3
		.BYTE $2B ; +
		.BYTE $1B
		.BYTE	2
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; ˛
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $F8 ; ¯
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $F2 ; Ú
		.BYTE $FA ; ˙
		.BYTE $20
		.BYTE	0
		.BYTE	8
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE  $A
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE  $A
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE  $A
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $D0 ; –
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE	2
		.BYTE  $B
		.BYTE $3F ; ?
		.BYTE  $B
		.BYTE $3F ; ?
		.BYTE  $B
		.BYTE $3F ; ?
		.BYTE	2
		.BYTE $22 ; "
		.BYTE	8
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $E0 ; ‡
		.BYTE $C8 ; »
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE	2
		.BYTE	5
		.BYTE	1
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $A8 ; ®
		.BYTE $68 ; h
		.BYTE $68 ; h
		.BYTE $58 ; X
		.BYTE $58 ; X
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE  $A
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FC ; ¸
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $A2 ; ¢
		.BYTE $22 ; "
		.BYTE	2
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE $1B
		.BYTE	4
		.BYTE $8A ; ä
		.BYTE $1B
		.BYTE	5
		.BYTE $AB ; ´
		.BYTE $A3 ; £
		.BYTE $83 ; É
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	5
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE $17
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	3
		.BYTE $FA ; ˙
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $F0 ; 
		.BYTE $C1 ; ¡
		.BYTE $A5 ; •
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $55 ; U
		.BYTE $14
		.BYTE	0
		.BYTE $15
		.BYTE $75 ; u
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $47 ; G
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $51 ; Q
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $D5 ; ’
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $59 ; Y
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE	0
		.BYTE $65 ; e
		.BYTE	0
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE	3
		.BYTE  $F
		.BYTE $3E ; >
		.BYTE $3F ; ?
		.BYTE $3E ; >
		.BYTE $3F ; ?
		.BYTE $82 ; Ç
		.BYTE $80 ; Ä
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE $88 ; à
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE	5
		.BYTE $50 ; P
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE  $A
		.BYTE $42 ; B
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $7F ; 
		.BYTE $4F ; O
		.BYTE $1B
		.BYTE	7
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE $17
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	2
		.BYTE $AF ; Ø
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	4
		.BYTE $A2 ; ¢
		.BYTE $8A ; ä
		.BYTE $88 ; à
		.BYTE $80 ; Ä
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE  $F
		.BYTE  $F
		.BYTE $1B
		.BYTE	5
		.BYTE $8F ; è
		.BYTE $1B
		.BYTE	6
		.BYTE $F0 ; 
		.BYTE $F1 ; Ò
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $14
		.BYTE	1
		.BYTE	0
		.BYTE $17
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	4
		.BYTE $50 ; P
		.BYTE $D4 ; ‘
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	8
		.BYTE $40 ; @
		.BYTE	1
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $15
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $19
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	8
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $55 ; U
		.BYTE $7D ; }
		.BYTE $1B
		.BYTE	3
		.BYTE $F9 ; ˘
		.BYTE $C9 ; …
		.BYTE $C9 ; …
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	7
		.BYTE $23 ; #
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $1B
		.BYTE	4
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $15
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $95 ; ï
		.BYTE	0
		.BYTE	0
		.BYTE $10
		.BYTE $55 ; U
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $15
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $44 ; D
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $41 ; A
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $44 ; D
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	7
		.BYTE  $F
		.BYTE $1B
		.BYTE	7
		.BYTE $F8 ; ¯
		.BYTE $A2 ; ¢
		.BYTE $22 ; "
		.BYTE	2
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $82 ; Ç
		.BYTE  $A
		.BYTE  $A
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE  $F
		.BYTE $2F ; /
		.BYTE $1B
		.BYTE	3
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	3
		.BYTE $F0 ; 
		.BYTE $F1 ; Ò
		.BYTE $F0 ; 
		.BYTE $F1 ; Ò
		.BYTE $F0 ; 
		.BYTE	3
		.BYTE	7
		.BYTE $17
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $53 ; S
		.BYTE $53 ; S
		.BYTE $13
		.BYTE $F5 ; ı
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $3F ; ?
		.BYTE $C3 ; √
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	5
		.BYTE $FF
		.BYTE $FF
		.BYTE $15
		.BYTE $56 ; V
		.BYTE	0
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE	1
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $65 ; e
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $C3 ; √
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $D9 ; Ÿ
		.BYTE $19
		.BYTE $19
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE	3
		.BYTE $65 ; e
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $23 ; #
		.BYTE $1B
		.BYTE	4
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $15
		.BYTE $15
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $80 ; Ä
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $65 ; e
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $44 ; D
		.BYTE $45 ; E
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $45 ; E
		.BYTE $50 ; P
		.BYTE	4
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $45 ; E
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	4
		.BYTE  $F
		.BYTE $4F ; O
		.BYTE $4F ; O
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $F8 ; ¯
		.BYTE $1B
		.BYTE	3
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $82 ; Ç
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $8A ; ä
		.BYTE $88 ; à
		.BYTE $80 ; Ä
		.BYTE $82 ; Ç
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE  $F
		.BYTE  $F
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $1B
		.BYTE	4
		.BYTE $F0 ; 
		.BYTE $F4 ; Ù
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $13
		.BYTE $1B
		.BYTE	3
		.BYTE	3
		.BYTE $17
		.BYTE $17
		.BYTE	5
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE  $F
		.BYTE $1B
		.BYTE	5
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
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
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE  $F
		.BYTE $1B
		.BYTE $1B
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $C0 ; ¿
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $65 ; e
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE	2
		.BYTE $59 ; Y
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $51 ; Q
		.BYTE $1B
		.BYTE	7
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $1B
		.BYTE	4
		.BYTE $FD ; ˝
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $41 ; A
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $45 ; E
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $45 ; E
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $41 ; A
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $80 ; Ä
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $4F ; O
		.BYTE  $F
		.BYTE  $F
		.BYTE $4F ; O
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $1F
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	3
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	3
		.BYTE $F8 ; ¯
		.BYTE $1B
		.BYTE	4
		.BYTE $A2 ; ¢
		.BYTE $22 ; "
		.BYTE	2
		.BYTE $82 ; Ç
		.BYTE $8A ; ä
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $8F ; è
		.BYTE $1B
		.BYTE	3
		.BYTE $F5 ; ı
		.BYTE $C5 ; ≈
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $65 ; e
		.BYTE $45 ; E
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE	3
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE $5D ; ]
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	2
		.BYTE $52 ; R
		.BYTE $56 ; V
		.BYTE	2
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE $1B
		.BYTE	6
		.BYTE $FD ; ˝
		.BYTE $FC ; ¸
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $40 ; @
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
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $20
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $F8 ; ¯
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	9
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $A0 ; †
		.BYTE $85 ; Ö
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $15
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $54 ; T
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $3E ; >
		.BYTE $FF
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE	0
		.BYTE $EF ; Ô
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $CF ; œ
		.BYTE	0
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	7
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $BC ; º
		.BYTE $FF
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $C5 ; ≈
		.BYTE $F5 ; ı
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	0
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $14
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $3A ; :
		.BYTE  $A
		.BYTE	2
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $72 ; r
		.BYTE $80 ; Ä
		.BYTE $72 ; r
		.BYTE $80 ; Ä
		.BYTE $72 ; r
		.BYTE $80 ; Ä
		.BYTE $72 ; r
		.BYTE $80 ; Ä
		.BYTE $72 ; r
		.BYTE $72 ; r
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	6
		.BYTE $82 ; Ç
		.BYTE $1B
		.BYTE	3
		.BYTE $72 ; r
		.BYTE $82 ; Ç
		.BYTE $74 ; t
		.BYTE $84 ; Ñ
		.BYTE	6
		.BYTE	6
		.BYTE	4
		.BYTE	2
		.BYTE	2
		.BYTE $12
		.BYTE	6
		.BYTE	4
		.BYTE $1B
		.BYTE $1D
		.BYTE	9
		.BYTE	8
		.BYTE	9
		.BYTE	9
		.BYTE	8
		.BYTE	8
		.BYTE	9
		.BYTE $E6 ; Ê
		.BYTE $E4 ; ‰
		.BYTE $E2 ; ‚
		.BYTE $E0 ; ‡
		.BYTE $25 ; %
		.BYTE $24 ; $
		.BYTE $24 ; $
		.BYTE $1B
		.BYTE $1C
		.BYTE $25 ; %
		.BYTE $F2 ; Ú
		.BYTE $F2 ; Ú
		.BYTE $F4 ; Ù
		.BYTE $F4 ; Ù
		.BYTE $F2 ; Ú
		.BYTE $F4 ; Ù
		.BYTE $F0 ; 
		.BYTE $F2 ; Ú
		.BYTE $F4 ; Ù
		.BYTE $F2 ; Ú
		.BYTE $F4 ; Ù
		.BYTE $F6 ; ˆ
		.BYTE $1B
		.BYTE	2
		.BYTE $F4 ; Ù
		.BYTE $F2 ; Ú
		.BYTE $F4 ; Ù
		.BYTE $F2 ; Ú
		.BYTE $F6 ; ˆ
		.BYTE $F4 ; Ù
		.BYTE $1B
		.BYTE	2
		.BYTE  $F
		.BYTE $9A ; ö
		.BYTE $1B
		.BYTE  $B
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE $1C
		.BYTE	8
		.BYTE	0
		.BYTE $76 ; v
		.BYTE	0
		.BYTE	0
		.BYTE $D7 ; ◊
		.BYTE $FE ; ˛
		.BYTE $B3 ; ≥
		.BYTE	0
		.BYTE $18
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $1E
		.BYTE	0
		.BYTE  $F
		.BYTE $B0 ; ∞
		.BYTE	0
		.BYTE $1E
		.BYTE $64 ; d
		.BYTE $FF
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE  $E
		.BYTE $7F ; 
		.BYTE $FE ; ˛
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	2
		.BYTE $1B
		.BYTE  $A
		.BYTE	0
		.BYTE $2B ; +
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE $83 ; É
		.BYTE $80 ; Ä
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $83 ; É
		.BYTE $FC ; ¸
		.BYTE $31 ; 1
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $C3 ; √
		.BYTE $FC ; ¸
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	1
		.BYTE $41 ; A
		.BYTE $FC ; ¸
		.BYTE $78 ; x
		.BYTE	0
		.BYTE	3
		.BYTE $C3 ; √
		.BYTE $FC ; ¸
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $FF
		.BYTE	0
		.BYTE	2
		.BYTE	9
		.BYTE $25 ; %
		.BYTE $9C ; ú
		.BYTE $90 ; ê
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
; end of 'RAM'


		.END
