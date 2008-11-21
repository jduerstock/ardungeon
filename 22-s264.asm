		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		.ORG	$7600
		.BYTE	$26
; ---------------------------------------------------------------------------
		JMP	loc_7611
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_871F
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		JSR	$184E
		RTS
; ---------------------------------------------------------------------------

loc_7611:				; CODE XREF: RAM:7601j
		dldi	off_7, $889B
		LDA	#2
		JSR	$180F
		LDA	#$FF
		STA	$1937
		LDX	#4

loc_7625:				; CODE XREF: RAM:762Cj
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_7625
		dldi	off_1977, loc_765D
		dldi	off_16, $7C6E
		JSR	$184B
		LDA	$1933
		STA	$66
		RTS
; ---------------------------------------------------------------------------

loc_7649:				; CODE XREF: RAM:76B2j	RAM:76BAj
		LDX	#4

loc_764B:				; CODE XREF: RAM:7652j
		LDA	$750D,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_764B
		STX	$AC00
		STX	byte_96F0
		JMP	$180C
; ---------------------------------------------------------------------------

loc_765D:
		JSR	$1869
		LDA	$630F
		CMP	$753E
		BNE	loc_7670
		LDA	$6310
		CMP	$753F
		BEQ	loc_768C

loc_7670:				; CODE XREF: RAM:7666j
		LDA	$630F
		STA	$753E
		LDA	$6310
		STA	$753F
		LDA	#0
		STA	$7540
		LDA	#$D
		JSR	j_RND_A
		STA	$7541
		JSR	loc_7942
; START	OF FUNCTION CHUNK FOR sub_78D8

loc_768C:				; CODE XREF: RAM:766Ej	RAM:76A8j ...
		LDA	#$9F ; 'Ÿ'
		STA	$16
		LDA	#$79 ; 'y'
		STA	$17
		LDX	$66
		JSR	$1851

loc_7699:				; CODE XREF: RAM:76B6j
		dldi	off_1977, loc_76AD
		JMP	$1806
; END OF FUNCTION CHUNK	FOR sub_78D8
; ---------------------------------------------------------------------------

loc_76A6:				; CODE XREF: RAM:76BEj
		CMP	#$31 ; '1'
		BNE	loc_768C
		JMP	loc_775D
; ---------------------------------------------------------------------------

loc_76AD:
		JSR	$1821
		AND	#2
		BNE	loc_7649
		LDA	$31
		BMI	loc_7699
		CMP	#$30 ; '0'
		BEQ	loc_7649
		CMP	#$32 ; '2'
		BNE	loc_76A6
		LDA	#$B2 ; '²'
		STA	$16
		LDA	#$7A ; 'z'
		STA	$17
		LDX	$66
		JSR	$1851

loc_76CD:				; CODE XREF: RAM:76E5j
		dldi	off_1977, loc_76DA
		JMP	$1806
; ---------------------------------------------------------------------------

loc_76DA:
		LDA	$31
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_768C
		CMP	#'Y'
		BNE	loc_76CD
		LDX	#0
		STX	$78

loc_76EB:				; CODE XREF: RAM:771Aj
		LDA	$644B,X
		BEQ	loc_7717
		STA	$63
		LDA	$640B,X
		STA	$62
		LDY	#0
		LDA	($62),Y
		BPL	loc_7717
		AND	#7
		CMP	#6
		BNE	loc_7717
		LDY	#$C
		LDA	($62),Y
		BNE	loc_7717
		LDY	#5
		LDA	($62),Y
		TAY
		DEY
		LDA	($62),Y
		CMP	#1
		BNE	loc_7741
		INC	$78

loc_7717:				; CODE XREF: RAM:76EEj	RAM:76FBj ...
		INX
		CPX	#$40 ; '@'
		BNE	loc_76EB
		LDA	$78
		BNE	loc_7727
		LDX	#$7C ; '|'
		LDY	#$30 ; '0'
		JMP	loc_7730
; ---------------------------------------------------------------------------

loc_7727:				; CODE XREF: RAM:771Ej
		LDA	#2
		JSR	sub_78D8
		LDX	#$7B ; '{'
		LDY	#$2E ; '.'
; START	OF FUNCTION CHUNK FOR sub_78D8

loc_7730:				; CODE XREF: RAM:7724j	RAM:775Aj ...
		STX	$17
		STY	$16
		LDX	$66
		JSR	$1851
		LDA	#6
		JSR	$185A
		JMP	loc_768C
; END OF FUNCTION CHUNK	FOR sub_78D8
; ---------------------------------------------------------------------------

loc_7741:				; CODE XREF: RAM:7713j
		LDA	#2
		JSR	sub_78D8
		LDY	#$C
		LDA	#$20 ; ' '
		STA	($62),Y
		LDY	#6

loc_774E:				; CODE XREF: RAM:7754j
		LDA	($62),Y
		STA	$7D41,Y
		INY
		BPL	loc_774E
		LDX	#$7B ; '{'
		LDY	#$1A
		JMP	loc_7730
; ---------------------------------------------------------------------------

loc_775D:				; CODE XREF: RAM:76AAj
		LDA	#0
		STA	$67
		LDA	$7540
		BNE	loc_77B4
		LDA	#$59 ; 'Y'
		STA	$16
		LDA	#$7B ; '{'
		STA	$17
		LDX	$66
		JSR	$1851

loc_7773:				; CODE XREF: RAM:7782j	RAM:778Dj
		dldi	off_1977, loc_7780
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7780:
		LDA	$31
		BMI	loc_7773
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_77B4
		CMP	#'Y'
		BNE	loc_7773
		LDA	#$28 ; '('
		JSR	sub_78D8
		INC	$7540
		LDX	$7541
		LDA	unk_7DEC,X
		TAY
		LDA	unk_7E0F,X
		TAX
		JSR	$1884
		LDA	#1
		JSR	j_RND_A
		ldxy	$7BB3
		JSR	$185D
		JMP	loc_7855
; ---------------------------------------------------------------------------

loc_77B4:				; CODE XREF: RAM:7764j	RAM:7789j ...
		LDX	$67
		LDA	unk_7DC7,X
		STA	$78
		JSR	sub_788E
		LDA	$70
		BPL	loc_77D1
		DEC	$67
		LDX	$67
		LDA	unk_7DC7,X
		STA	$78
		JSR	sub_788E
		JMP	loc_77DE
; ---------------------------------------------------------------------------

loc_77D1:				; CODE XREF: RAM:77C0j
		dldi	off_16, $7C70
		LDX	$66
		JSR	$1851

loc_77DE:				; CODE XREF: RAM:77CEj	RAM:77EDj ...
		dldi	off_1977, loc_77EB
		JMP	$1806
; ---------------------------------------------------------------------------

loc_77EB:
		LDA	$31
		BMI	loc_77DE
		JSR	j_UPPER
		CMP	#'F'
		BNE	loc_7806
		LDY	$73
		BMI	loc_77DE
		INY
		LDX	$67
		INX
		STX	$67
		TYA
		STA	unk_7DC7,X
		BPL	loc_77B4

loc_7806:				; CODE XREF: RAM:77F4j
		CMP	#'B'
		BNE	loc_7813
		LDX	$67
		DEX
		BMI	loc_77DE
		STX	$67
		BPL	loc_77B4

loc_7813:				; CODE XREF: RAM:7808j
		CMP	#$1B
		BNE	loc_781A
		JMP	loc_768C
; ---------------------------------------------------------------------------

loc_781A:				; CODE XREF: RAM:7815j
		SEC
		SBC	#$31 ; '1'
		BCC	loc_77B4
		CMP	#4
		BCS	loc_77B4
		TAX
		LDA	$70,X
		BMI	loc_77B4
		LDA	$74,X
		JSR	sub_78D8
		LDA	$70,X
		TAX
		LDA	unk_7DD7,X
		TAY
		LDA	unk_7DFA,X
		STX	$70
		TAX
		JSR	$1884
		LDA	RANDOM
		CMP	#$33 ; '3'
		BCS	loc_785F
		LDA	$70
		ldxy	$7542
		JSR	j_SETBIT
		dldi	off_16, $7A4D

loc_7855:				; CODE XREF: RAM:77B1j
		LDX	$66
		JSR	$1851
		LDA	#6
		JSR	$185A

loc_785F:				; CODE XREF: RAM:7842j
		dldi	off_16, $7A78
		LDX	$66
		JSR	$1851

loc_786C:				; CODE XREF: RAM:787Bj	RAM:7886j
		dldi	off_1977, loc_7879
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7879:
		LDA	$31
		BMI	loc_786C
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_788B
		CMP	#'Y'
		BNE	loc_786C
		JMP	loc_77B4
; ---------------------------------------------------------------------------

loc_788B:				; CODE XREF: RAM:7882j
		JMP	loc_768C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_788E:				; CODE XREF: RAM:77BBp	RAM:77CBp
		LDX	#3
		LDA	#$FF

loc_7892:				; CODE XREF: sub_788E+7j
		STA	$70,X
		DEX
		BPL	loc_7892
		INX
		STX	$79
		LDA	$78
		CMP	#$15
		BCS	locret_78D7

loc_78A0:				; CODE XREF: sub_788E+47j
		LDY	#<$7542
		LDX	#>$7542
		JSR	j_TESTBIT
		BCC	loc_78CF
		LDX	$79
		LDY	$78
		STY	$70,X
		LDA	$7E1D,Y
		STA	$74,X
		TXA
		ASL	A
		TAX
		LDA	$7DD7,Y
		CLC
		ADC	#$10
		STA	$68,X
		LDA	$7DFA,Y
		ADC	#0
		STA	$69,X
		LDX	$79
		INX
		CPX	#4
		BEQ	locret_78D7
		STX	$79

loc_78CF:				; CODE XREF: sub_788E+19j
		INC	$78
		LDA	$78
		CMP	#$15
		BCC	loc_78A0

locret_78D7:				; CODE XREF: sub_788E+10j sub_788E+3Dj
		RTS
; End of function sub_788E


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_78D8:				; CODE XREF: RAM:7729p	RAM:7743p ...

; FUNCTION CHUNK AT 768C SIZE 0000001A BYTES
; FUNCTION CHUNK AT 7730 SIZE 00000011 BYTES

		STA	2
		LDA	#0
		STA	3
		LDY	#3

loc_78E0:				; CODE XREF: sub_78D8+Fj
		LDA	$63B1,Y
		STA	$7D43,Y
		DEY
		BPL	loc_78E0

loc_78E9:				; CODE XREF: sub_78D8:loc_7922j
		LDA	byte_7D46
		CMP	2
		LDA	byte_7D45
		SBC	3
		BCS	loc_7925
		LDA	byte_7D44
		ORA	byte_7D43
		BNE	loc_7906
		PLA
		PLA
		LDX	#$7A ; 'z'
		LDY	#$25 ; '%'
		JMP	loc_7730
; ---------------------------------------------------------------------------

loc_7906:				; CODE XREF: sub_78D8+23j
		LDA	byte_7D44
		SEC
		SBC	#1
		STA	byte_7D44
		BCS	loc_7914
		DEC	byte_7D43

loc_7914:				; CODE XREF: sub_78D8+37j
		LDA	#$A
		CLC
		ADC	byte_7D46
		STA	byte_7D46
		BCC	loc_7922
		INC	byte_7D45

loc_7922:				; CODE XREF: sub_78D8+45j
		JMP	loc_78E9
; ---------------------------------------------------------------------------

loc_7925:				; CODE XREF: sub_78D8+1Bj
		LDA	byte_7D46
		SEC
		SBC	2
		STA	byte_7D46
		LDA	byte_7D45
		SBC	3
		STA	byte_7D45
		LDY	#3

loc_7938:				; CODE XREF: sub_78D8+67j
		LDA	$7D43,Y
		STA	$63B1,Y
		DEY
		BPL	loc_7938
		RTS
; End of function sub_78D8

; ---------------------------------------------------------------------------

loc_7942:				; CODE XREF: RAM:7689p
		LDX	#2
		STX	$79

loc_7946:				; CODE XREF: RAM:7955j
		LDA	#$14
		JSR	j_RND_A
		ldxy	$7542
		CLC
		JSR	j_SETBIT
		DEC	$79
		BPL	loc_7946

loc_7957:				; CODE XREF: RAM:7980j
		LDA	#0
		STA	$79
		LDY	#5

loc_795D:				; CODE XREF: RAM:796Bj
		LDX	#7
		LDA	$7542,Y

loc_7962:				; CODE XREF: RAM:7968j
		LSR	A
		BCC	loc_7967
		INC	$79

loc_7967:				; CODE XREF: RAM:7963j
		DEX
		BPL	loc_7962
		DEY
		BPL	loc_795D
		LDA	$79
		CMP	#5
		BCS	loc_7983
		LDA	#$14
		JSR	j_RND_A
		ldxy	$7542
		SEC
		JSR	j_SETBIT
		JMP	loc_7957
; ---------------------------------------------------------------------------

loc_7983:				; CODE XREF: RAM:7971j
		CMP	#$C
		BCS	locret_799E
		LDX	#4

loc_7989:				; CODE XREF: RAM:799Cj
		LDA	#$14
		JSR	j_RND_A
		STX	loc_7999+1
		ldxy	$7542
		SEC
		JSR	j_SETBIT

loc_7999:				; DATA XREF: RAM:798Ew
		LDX	#$FF
		DEX
		BPL	loc_7989

locret_799E:				; CODE XREF: RAM:7985j
		RTS
; ---------------------------------------------------------------------------
		MOVEXY	0,1
		.BYTE $A5
aWelcomeToLucky:.BYTE "Welcome to Lucky's Potion Brewery!"
		.BYTE $D
		.BYTE $A5
aHowCanIHelpYou:.BYTE "How can I help you?"
		.BYTE $D
		.BYTE $A6,  6,	4
		MenuItem "1","Purchase a potion"
		.BYTE $A6,  6,	5
		MenuItem "2","Have a potion identified"
		.BYTE $A6,  6,	7
		MenuItem "0","Leave"
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aIMSorryYouHave:.BYTE "I'm sorry, you have not the funds."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aYouReInLuck_:	.BYTE "You're in luck."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aHereSMyLastOne:.BYTE "Here's my last one!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	3
		.BYTE $A5
aWouldYouLikeTo:.BYTE "Would you like to buy another potion?"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		.BYTE '('
		.BYTE $A1
aY:		.BYTE 'Y'
		.BYTE $A0
aOr:		.BYTE " or "
		.BYTE $A1
aN:		.BYTE 'N'
		.BYTE $A0
		.BYTE ')'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aFor2SilversIWi:.BYTE "For 2 silvers I will identify the"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTrueNatureOfAn:.BYTE "true nature of any potion."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWouldYouLikeTh:.BYTE "Would you like this? ("
		.BYTE $A1
aY_0:		.BYTE 'Y'
		.BYTE $A0
aOr_0:		.BYTE " or "
		.BYTE $A1
aN_0:		.BYTE 'N'
		.BYTE $A0
		.BYTE ')'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aItIsA:		.BYTE "It is a"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		.BYTE $B3
		.WORD unk_7D47
		.BYTE '('
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aItIsOneOfMyExp:.BYTE "It is one of my experimental potions."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aWouldYouLike_0:.BYTE "Would you like to try one of my"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aExperimentalPo:.BYTE "experimental potions for 20 silvers?"
		.BYTE $D
		.BYTE $A5
		.BYTE '('
		.BYTE $A1
aY_1:		.BYTE 'Y'
		.BYTE $A0
aOr_1:		.BYTE " or "
		.BYTE $A1
aN_1:		.BYTE 'N'
		.BYTE $A0
		.BYTE ')'
		.BYTE $D
		.BYTE $FF
		.WORD byte_7BB7
		.WORD byte_7BF7
byte_7BB7:	.BYTE $A6,  0,	2	; DATA XREF: RAM:7BB3o
		.BYTE $A5
aPleaseLetMeKno:.BYTE "Please let me know what you"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThinkOfMyLates:.BYTE "think of my latest creation.",$D
		.BYTE $FF
byte_7BF7:	.BYTE $A6,  0,	2	; DATA XREF: RAM:7BB5o
		.BYTE $A5
aIThinkIMReally:.BYTE "I think I'm really on to"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aSomethingWithT:.BYTE "something with this one!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aYouDonTHaveAny:.BYTE "You don't have any unknown"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aPotionsForMeTo:.BYTE "potions for me to identify!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A8,$FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aWhatWouldThouL:.BYTE "What would thou like?"
		.BYTE $D
		.BYTE $A6,  0,	2
		MenuItem "1",""
		.BYTE $B4
		.WORD $68
		.BYTE $1E
		.BYTE $A6,$1B,	2
		.BYTE $B2
		.WORD $74
		.BYTE 4
aSilvers:	.BYTE "silvers"
		.BYTE $A3
		.WORD loc_7D25
		.BYTE $D
		MenuItem "2",""
		.BYTE $B4
		.WORD $6A
		.BYTE $1E
		.BYTE $A6,$1B,	3
		.BYTE $B2
		.WORD $75
		.BYTE 4
aSilvers_0:	.BYTE "silvers"
		.BYTE $A3
		.WORD loc_7D28
		.BYTE $D
		MenuItem "3",""
		.BYTE $B4
		.WORD $6C
		.BYTE $1E
		.BYTE $A6,$1B,	4
		.BYTE $B2
		.WORD $76
		.BYTE 4
aSilvers_1:	.BYTE "silvers"
		.BYTE $A3
		.WORD loc_7D2B
		.BYTE $D
		MenuItem "4",""
		.BYTE $B4
		.WORD $6E
		.BYTE $1E
		.BYTE $A6,$1B,	5
		.BYTE $B2
		.WORD $77
		.BYTE 4
aSilvers_2:	.BYTE "silvers"
		.BYTE $A6,  0,	7
		.BYTE $A5
		.BYTE $A1
aF:		.BYTE 'F'
		.BYTE $A0
aOrward:	.BYTE "orward, "
		.BYTE $A1
aB:		.BYTE 'B'
		.BYTE $A0
aAckwardOr:	.BYTE "ackward or "
		.BYTE $A1
aEsc:		.BYTE "ESC"
		.BYTE $A0
aToExit:	.BYTE " to exit"
		.BYTE $D
		.BYTE $FF
; ---------------------------------------------------------------------------

loc_7D25:				; DATA XREF: RAM:7CA6o
		LDX	#1
; ---------------------------------------------------------------------------
		.BYTE $2C
; ---------------------------------------------------------------------------

loc_7D28:				; DATA XREF: RAM:7CC2o
		LDX	#2
; ---------------------------------------------------------------------------
		.BYTE $2C
; ---------------------------------------------------------------------------

loc_7D2B:				; DATA XREF: RAM:7CDEo
		LDX	#3
		LDA	$70,X
		BPL	locret_7D39
		LDA	#$F9 ; 'ù'
		STA	$16
		LDA	#$7C ; '|'
		STA	$17

locret_7D39:				; CODE XREF: RAM:7D2Fj
		RTS
; ---------------------------------------------------------------------------
		LDA	#$FF
; ---------------------------------------------------------------------------
		.BYTE $2C
; ---------------------------------------------------------------------------
		LDA	#0
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------
byte_7D43:	.BYTE $27		; DATA XREF: sub_78D8+20r sub_78D8+39w
byte_7D44:	.BYTE $6C		; DATA XREF: sub_78D8+1Dr
					; sub_78D8:loc_7906r ...
byte_7D45:	.BYTE $6C		; DATA XREF: sub_78D8+16r sub_78D8+47w ...
byte_7D46:	.BYTE $20		; DATA XREF: sub_78D8:loc_78E9r
					; sub_78D8+3Fr	...
unk_7D47:	.BYTE $62 ; b		; DATA XREF: RAM:7B29o
		.BYTE $65 ; e
		.BYTE $20
		.BYTE $62 ; b
		.BYTE $75 ; u
		.BYTE $73 ; s
		.BYTE $79 ; y
		.BYTE $20
		.BYTE $66 ; f
		.BYTE $6F ; o
		.BYTE $72 ; r
		.BYTE $20
		.BYTE $B2 ; ²
		.BYTE $C0 ; À
		.BYTE $84 ; „
		.BYTE	1
		.BYTE $20
		.BYTE $64 ; d
		.BYTE $61 ; a
		.BYTE $79 ; y
		.BYTE $73 ; s
		.BYTE $20
		.BYTE $79 ; y
		.BYTE $65 ; e
		.BYTE $74 ; t
		.BYTE $2C ; ,
		.BYTE  $D
		.BYTE  $D
		.BYTE $A5 ; ¥
		.BYTE $66 ; f
		.BYTE $6F ; o
		.BYTE $72 ; r
		.BYTE $67 ; g
		.BYTE $69 ; i
		.BYTE $6E ; n
		.BYTE $67 ; g
		.BYTE $20
		.BYTE $61 ; a
		.BYTE $6E ; n
		.BYTE $64 ; d
		.BYTE $20
		.BYTE $69 ; i
		.BYTE $6E ; n
		.BYTE $73 ; s
		.BYTE $63 ; c
		.BYTE $72 ; r
		.BYTE $69 ; i
		.BYTE $62 ; b
		.BYTE $69 ; i
		.BYTE $6E ; n
		.BYTE $67 ; g
		.BYTE $20
		.BYTE $79 ; y
		.BYTE $6F ; o
		.BYTE $75 ; u
		.BYTE $72 ; r
		.BYTE $20
		.BYTE $77 ; w
		.BYTE $65 ; e
		.BYTE $61 ; a
		.BYTE $70 ; p
		.BYTE $6F ; o
		.BYTE $6E ; n
		.BYTE $2E ; .
		.BYTE  $D
		.BYTE  $D
		.BYTE $A5 ; ¥
		.BYTE $49 ; I
		.BYTE $20
		.BYTE $73 ; s
		.BYTE $68 ; h
		.BYTE $61 ; a
		.BYTE $6C ; l
		.BYTE $6C ; l
		.BYTE $20
		.BYTE $73 ; s
		.BYTE $65 ; e
		.BYTE $65 ; e
		.BYTE $20
		.BYTE $79 ; y
		.BYTE $6F ; o
		.BYTE $75 ; u
		.BYTE $20
		.BYTE $74 ; t
		.BYTE $68 ; h
		.BYTE $65 ; e
		.BYTE $6E ; n
		.BYTE $2E ; .
		.BYTE  $D
		.BYTE $FF
		.BYTE $A6 ; ¦
		.BYTE	0
		.BYTE	1
		.BYTE $AD ; ­
		.BYTE $13
		.BYTE $7E ; ~
		.BYTE $A6 ; ¦
		.BYTE	5
		.BYTE	3
		.BYTE $28 ; (
		.BYTE $A1 ; ¡
		.BYTE $31 ; 1
		.BYTE $A0 ;  
		.BYTE $29 ; )
		.BYTE $20
		.BYTE $45 ; E
		.BYTE $78 ; x
		.BYTE $61 ; a
		.BYTE $6D ; m
		.BYTE $69 ; i
		.BYTE $6E ; n
		.BYTE $65 ; e
		.BYTE $20
		.BYTE $6D ; m
		.BYTE $79 ; y
		.BYTE $20
		.BYTE $77 ; w
		.BYTE $61 ; a
		.BYTE $72 ; r
		.BYTE $65 ; e
		.BYTE $73 ; s
		.BYTE $2E ; .
		.BYTE $A6 ; ¦
		.BYTE	5
		.BYTE	4
		.BYTE $28 ; (
		.BYTE $A1 ; ¡
		.BYTE $32 ; 2
unk_7DC7:	.BYTE	0		; DATA XREF: RAM:77B6r	RAM:77C6r ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_7DD7:	.BYTE $4A ; J		; DATA XREF: RAM:7830r
		.BYTE $95 ; •
		.BYTE $DF ; ß
		.BYTE $2D ; -
		.BYTE $77 ; w
		.BYTE $A2 ; ¢
		.BYTE $EE ; î
		.BYTE $3A ; :
		.BYTE $86 ; †
		.BYTE $D0 ; Ð
		.BYTE $1B
		.BYTE $67 ; g
		.BYTE $A5 ; ¥
		.BYTE $F2 ; ò
		.BYTE $3D ; =
		.BYTE $6F ; o
		.BYTE $BC ; ¼
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $6F ; o
		.BYTE $98 ; ˜
unk_7DEC:	.BYTE $C5 ; Å		; DATA XREF: RAM:779Ar
		.BYTE	3
		.BYTE $3D ; =
		.BYTE $6C ; l
		.BYTE $97 ; —
		.BYTE $C2 ; Â
		.BYTE $ED ; í
		.BYTE $18
		.BYTE $43 ; C
		.BYTE $6F ; o
		.BYTE $9C ; œ
		.BYTE $C8 ; È
		.BYTE $F3 ; ó
		.BYTE $1D
unk_7DFA:	.BYTE $7E ; ~		; DATA XREF: RAM:7834r
		.BYTE $7E ; ~
		.BYTE $7E ; ~
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $80 ; €
		.BYTE $80 ; €
		.BYTE $80 ; €
		.BYTE $81 ; 
		.BYTE $81 ; 
		.BYTE $81 ; 
		.BYTE $81 ; 
		.BYTE $82 ; ‚
		.BYTE $82 ; ‚
		.BYTE $82 ; ‚
		.BYTE $83 ; ƒ
		.BYTE $83 ; ƒ
		.BYTE $83 ; ƒ
		.BYTE $83 ; ƒ
unk_7E0F:	.BYTE $83 ; ƒ		; DATA XREF: RAM:779Er
		.BYTE $84 ; „
		.BYTE $84 ; „
		.BYTE $84 ; „
		.BYTE $84 ; „
		.BYTE $84 ; „
		.BYTE $84 ; „
		.BYTE $85 ; …
		.BYTE $85 ; …
		.BYTE $85 ; …
		.BYTE $85 ; …
		.BYTE $85 ; …
		.BYTE $85 ; …
		.BYTE $86 ; †
		.BYTE $16
		.BYTE $1D
		.BYTE $1D
		.BYTE $1D
		.BYTE $1B
		.BYTE $34 ; 4
		.BYTE $32 ; 2
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $36 ; 6
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $21 ; !
		.BYTE $1D
		.BYTE $1D
		.BYTE $1D
		.BYTE $23 ; #
		.BYTE $19
		.BYTE $2A ; *
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $86 ; †
		.BYTE $4B ; K
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotionOfFleetn:.BYTE "Potion of Fleetness",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $7B ; {
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $7B ; {
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aFleetness:	.BYTE "Fleetness",0
		.BYTE $54 ; T
		.BYTE $68 ; h
		.BYTE $61 ; a
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4A ; J
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $19
aPotionOfStreng:.BYTE "Potion of Strength",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $5B ; [
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $5B ; [
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aStrength:	.BYTE "Strength",0
		.BYTE  $F
		.BYTE $80 ; €
		.BYTE $28 ; (
		.BYTE $2E ; .
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4E ; N
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1D
aPotionOfIntell:.BYTE "Potion of Intelligence",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $63 ; c
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $63 ; c
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aIntelligence:	.BYTE "Intelligence",0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4A ; J
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $19
aPotionOfCharis:.BYTE "Potion of Charisma",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $53 ; S
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $53 ; S
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aCharisma:	.BYTE "Charisma",0
		.BYTE $20
		.BYTE $72 ; r
		.BYTE $69 ; i
		.BYTE $6E ; n
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2B ; +
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotionOfEndura:.BYTE "Potion of Endurance",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $9B ; ›
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4C ; L
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1B
aPotionOfInv_Bl:.BYTE "Potion of Inv. Blunt",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $A6 ; ¦
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $A6 ; ¦
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aInv_Blunt:	.BYTE "Inv. Blunt",0
		.BYTE $6F ; o
		.BYTE $75 ; u
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4C ; L
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1B
aPotionOfInv_Sh:.BYTE "Potion of Inv. Sharp",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $A7 ; §
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $A7 ; §
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aInv_Sharp:	.BYTE "Inv. Sharp",0
		.BYTE	0
		.BYTE $A6 ; ¦
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4C ; L
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1B
aPotionOfInv_Ea:.BYTE "Potion of Inv. Earth",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aInv_Earth:	.BYTE "Inv. Earth",0
		.BYTE	0
		.BYTE $1C
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4A ; J
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $19
aPotionOfInv_Ai:.BYTE "Potion of Inv. Air",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aInv_Air:	.BYTE "Inv. Air",0
		.BYTE	0
		.BYTE $1C
		.BYTE $A6 ; ¦
		.BYTE $1A
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4B ; K
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotionOfInv_Fi:.BYTE "Potion of Inv. Fire",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aInv_Fire:	.BYTE "Inv. Fire",0
		.BYTE $79 ; y
		.BYTE $20
		.BYTE $6C ; l
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4C ; L
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1B
aPotionOfInv_Wa:.BYTE "Potion of Inv. Water",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $AB ; «
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $AB ; «
		.BYTE $C6 ; Æ
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aInv_Water:	.BYTE "Inv. Water",0
		.BYTE $6C ; l
		.BYTE $20
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $3E ; >
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1D
aPotionOfRegene:.BYTE "Potion of Regeneration",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE $7B ; {
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $82 ; ‚
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aRegeneration:	.BYTE "Regeneration",0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4D ; M
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aPotionOfInv_Me:.BYTE "Potion of Inv. Mental",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $AD ; ­
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $AD ; ­
		.BYTE $C6 ; Æ
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aInv_Mental:	.BYTE "Inv. Mental",0
		.BYTE $F0 ; ð
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4B ; K
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotionOfInv_Co:.BYTE "Potion of Inv. Cold",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $B0 ; °
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $B0 ; °
		.BYTE $C6 ; Æ
		.BYTE	1
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aInv_Cold:	.BYTE "Inv. Cold",0
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $32 ; 2
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $21 ; !
aPotionOfThirst:.BYTE "Potion of Thirst Quenching",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $9A ; š
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4D ; M
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aPotionOfElvenS:.BYTE "Potion of Elven Sight",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E5 ; å
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $8B ; ‹
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $8B ; ‹
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aElvenSight:	.BYTE "Elven Sight",0
		.BYTE $A1 ; ¡
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4B ; K
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotionOfDexter:.BYTE "Potion of Dexterity",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $73 ; s
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $1E
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $73 ; s
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $1E
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aDexterity:	.BYTE "Dexterity",0
		.BYTE $65 ; e
		.BYTE $6D ; m
		.BYTE $73 ; s
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $4E ; N
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1D
aPotionOfInfraV:.BYTE "Potion of Infra-Vision",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE $E0 ; à
		.BYTE	1
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $90 ; 
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; „
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $90 ; 
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aInfraVision:	.BYTE "Infra-Vision",0
		.BYTE	0
		.BYTE $8E ; Ž
		.BYTE $1A
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $18
aPotionOfCleans:.BYTE "Potion of Cleanse",0
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $86 ; †
		.BYTE $29 ; )
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $18
aPotionOfAntaci:.BYTE "Potion of Antacid",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	5
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE	1
		.BYTE $98 ; ˜
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2D ; -
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aPotionOfRestor:.BYTE "Potion of Restoration",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE	1
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $3E ; >
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1D
aPotionOfRege_0:.BYTE "Potion of Regeneration",0
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE $D5 ; Õ
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $82 ; ‚
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $EC ; ì
		.BYTE	0
		.BYTE $44 ; D
aRegeneration_0:.BYTE "Regeneration",0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $3A ; :
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $19
aPotion:	.BYTE "Potion",0
aOfHemlock:	.BYTE "of Hemlock",0
		.BYTE	1
		.BYTE $82 ; ‚
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	2
		.BYTE $92 ; ’
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $82 ; ‚
		.BYTE	0
		.BYTE $44 ; D
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $3C ; <
		.BYTE	0
		.BYTE	0
		.BYTE $92 ; ’
		.BYTE $47 ; G
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2F ; /
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1E
aPotion_0:	.BYTE "Potion",0
aOfIntelligence:.BYTE "of Intelligence",0
		.BYTE	1
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $62 ; b
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2B ; +
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotion_1:	.BYTE "Potion",0
aOfDumbness:	.BYTE "of Dumbness",0
		.BYTE	1
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $62 ; b
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2B ; +
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotion_2:	.BYTE "Potion",0
aOfCharisma:	.BYTE "of Charisma",0
		.BYTE	1
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $52 ; R
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2B ; +
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotion_3:	.BYTE "Potion",0
aOfUgliness:	.BYTE "of Ugliness",0
		.BYTE	1
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $52 ; R
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2B ; +
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotion_4:	.BYTE "Potion",0
aOfStrength:	.BYTE "of Strength",0
		.BYTE	1
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $5A ; Z
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2B ; +
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotion_5:	.BYTE "Potion",0
aOfWeakness:	.BYTE "of Weakness",0
		.BYTE	1
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $5A ; Z
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2C ; ,
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1B
aPotion_6:	.BYTE "Potion",0
aOfDexterity:	.BYTE "of Dexterity",0
		.BYTE	1
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $72 ; r
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2D ; -
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1C
aPotion_7:	.BYTE "Potion",0
aOfClumsiness:	.BYTE "of Clumsiness",0
		.BYTE	1
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $72 ; r
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2C ; ,
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1B
aPotion_8:	.BYTE "Potion",0
aOfFleetness:	.BYTE "of Fleetness",0
		.BYTE	1
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $7A ; z
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2B ; +
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1A
aPotion_9:	.BYTE "Potion",0
aOfSlowness:	.BYTE "of Slowness",0
		.BYTE	1
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $91 ; ‘
		.BYTE $7A ; z
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $19
aPotion_10:	.BYTE "Potion",0
aOfSpirits:	.BYTE "of Spirits",0
		.BYTE	1
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	3
		.BYTE $3C ; <
		.BYTE	0
		.BYTE $3C ; <
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $20
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $2C ; ,
		.BYTE	0
		.BYTE	0
		.BYTE $86 ; †
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $19
aPotion_11:	.BYTE "Potion",0
aOfSpirits_0:	.BYTE "of Spirits",0
		.BYTE	1
		.BYTE $84 ; „
		.BYTE $FF
		.BYTE $C4 ; -
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE $ED ; í
		.BYTE $FE ; þ
		.BYTE	0
		.BYTE $81 ; 
		.BYTE $96 ; –
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $10
		.BYTE	0
		.BYTE	0
unk_8647:	.BYTE $70 ; p		; DATA XREF: RAM:8677o
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42
		.WORD $400
		.BYTE $80 ; €
		.BYTE	2
		.BYTE $80 ; €
		.BYTE	2
		.BYTE $80 ; €
		.BYTE	2
		.BYTE $80 ; €
		.BYTE	2
		.BYTE $80 ; €
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
		.BYTE $41
		.WORD unk_8647
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
		LDY	#$90 ; ''
		STA	WSYNC
		STA	$D000
		STX	$D001
		STY	$D002
		STA	WSYNC
		LDA	#$B0 ; '°'
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

loc_86DD:				; CODE XREF: RAM:8702j
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
		BPL	loc_86DD
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

loc_871F:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$47 ; 'G'
		STA	$254
		LDA	#$86 ; '†'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_8732:				; CODE XREF: RAM:8740j
		LDY	#$C

loc_8734:				; CODE XREF: RAM:873Bj
		STA	$BB4C,X
		DEX
		BMI	loc_8742
		DEY
		BNE	loc_8734
		CLC
		ADC	#4
		BNE	loc_8732

loc_8742:				; CODE XREF: RAM:8738j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_883A
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; '»'
		STA	$A
		JSR	loc_883A
		LDA	#0
		STA	loc_8768+1
		LDA	#$BD ; '½'
		STA	loc_8768+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; '€'

loc_8768:				; CODE XREF: RAM:876Cj	RAM:8772j
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_8768
		INC	loc_8768+2
		DEY
		BNE	loc_8768
		LDX	#7

loc_8776:				; CODE XREF: RAM:877Aj
		STA	$D000,X
		DEX
		BPL	loc_8776
		LDA	#3
		TAX

loc_877F:				; CODE XREF: RAM:8783j
		STA	$D008,X
		DEX
		BPL	loc_877F
		LDA	#$FF
		STA	$D00C
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		LDA	#0
		STA	7
		LDA	#$BC ; '¼'
		STA	8
		LDA	#$F0 ; 'ð'
		STA	9
		LDA	#4
		STA	$A
		LDA	#0
		STA	6

loc_87AD:				; CODE XREF: RAM:87D3j
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_87B5:				; CODE XREF: RAM:87C0j
		LSR	4
		BCC	loc_87BF
		LDA	(9),Y
		ORA	#$80 ; '€'
		STA	(9),Y

loc_87BF:				; CODE XREF: RAM:87B7j
		DEY
		BPL	loc_87B5
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_87CD
		INC	$A

loc_87CD:				; CODE XREF: RAM:87C9j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_87AD
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; '½'
		STA	$F1

loc_87E5:				; CODE XREF: RAM:87F6j
		CLC
		LDA	$F0,X
		ADC	#$80 ; '€'
		STA	$F2,X
		LDA	$F1,X
		ADC	#0
		STA	$F3,X
		INX
		INX
		CPX	#8
		BCC	loc_87E5

loc_87F8:				; CODE XREF: RAM:8815j
		LDX	#0

loc_87FA:				; CODE XREF: RAM:8813j
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_8800:				; CODE XREF: RAM:8805j
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_8800
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_8817
		CPX	#$A
		BCC	loc_87FA
		BCS	loc_87F8

loc_8817:				; CODE XREF: RAM:880Fj
		LDX	#3
		LDA	$BC5F

loc_881C:				; CODE XREF: RAM:8820j
		STA	COLPM0,X
		DEX
		BPL	loc_881C
		dldi	off_24A, $8679
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_883A:				; CODE XREF: RAM:874Ap	RAM:8755p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_8844
		INC	8

loc_8844:				; CODE XREF: RAM:8840j
		CMP	#$1B
		BEQ	loc_8853
		STA	(9),Y
		INC	9
		BNE	loc_8850
		INC	$A

loc_8850:				; CODE XREF: RAM:884Cj
		JMP	loc_883A
; ---------------------------------------------------------------------------

loc_8853:				; CODE XREF: RAM:8846j
		LDA	(7),Y
		INC	7
		BNE	loc_885B
		INC	8

loc_885B:				; CODE XREF: RAM:8857j
		CMP	#$FF
		BNE	loc_8860
		RTS
; ---------------------------------------------------------------------------

loc_8860:				; CODE XREF: RAM:885Dj
		STA	byte_889A
		ADC	9
		STA	loc_8873+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_8878
		LDA	byte_889A

loc_8873:				; DATA XREF: RAM:8865w
		SBC	#$FF
		STA	byte_889A

loc_8878:				; CODE XREF: RAM:886Ej
		LDA	(7),Y
		INC	7
		BNE	loc_8880
		INC	8

loc_8880:				; CODE XREF: RAM:887Cj
		LDY	byte_889A

loc_8883:				; CODE XREF: RAM:8886j
		STA	(9),Y
		DEY
		BPL	loc_8883
		INC	byte_889A
		LDA	byte_889A
		CLC
		ADC	9
		STA	9
		BCC	loc_8897
		INC	$A

loc_8897:				; CODE XREF: RAM:8893j
		JMP	loc_883A
; ---------------------------------------------------------------------------
byte_889A:	.BYTE 0			; DATA XREF: RAM:loc_8860w RAM:8870r ...
		.BYTE $1B
		.BYTE $26 ; &
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE  $A
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $BE ; ¾
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE $AB ; «
		.BYTE $FA ; ú
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE  $A
		.BYTE $AE ; ®
		.BYTE $E8 ; è
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $E2 ; â
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	3
		.BYTE	3
		.BYTE $1B
		.BYTE $3D ; =
		.BYTE	0
		.BYTE	5
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $53 ; S
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	7
		.BYTE  $F
		.BYTE $1B
		.BYTE  $A
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE  $D
		.BYTE	0
		.BYTE	2
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE $88 ; ˆ
		.BYTE $8A ; Š
		.BYTE	2
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE	8
		.BYTE $28 ; (
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $80 ; €
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE  $E
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $20
		.BYTE $1B
		.BYTE $19
		.BYTE	0
		.BYTE	2
		.BYTE  $A
		.BYTE $23 ; #
		.BYTE $2C ; ,
		.BYTE $23 ; #
		.BYTE  $B
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $AC ; ¬
		.BYTE $B3 ; ³
		.BYTE $AC ; ¬
		.BYTE $EA ; ê
		.BYTE $30 ; 0
		.BYTE  $F
		.BYTE $AB ; «
		.BYTE $CA ; Ê
		.BYTE $E0 ; à
		.BYTE $80 ; €
		.BYTE $20
		.BYTE $AA ; ª
		.BYTE $33 ; 3
		.BYTE  $F
		.BYTE $EA ; ê
		.BYTE $80 ; €
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $33 ; 3
		.BYTE $C3 ; Ã
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $B8 ; ¸
		.BYTE $C8 ; È
		.BYTE $38 ; 8
		.BYTE $E0 ; à
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE	8
		.BYTE  $B
		.BYTE  $B
		.BYTE $1B
		.BYTE	2
		.BYTE	8
		.BYTE  $B
		.BYTE  $B
		.BYTE $1B
		.BYTE	7
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE $18
		.BYTE	0
		.BYTE  $F
		.BYTE	3
		.BYTE  $B
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	2
		.BYTE $B0 ; °
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $45 ; E
		.BYTE $50 ; P
		.BYTE $51 ; Q
		.BYTE $49 ; I
		.BYTE $29 ; )
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $50 ; P
		.BYTE $45 ; E
		.BYTE $15
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $C0 ; À
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	7
		.BYTE  $F
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $22 ; "
		.BYTE $A2 ; ¢
		.BYTE $80 ; €
		.BYTE $BF ; ¿
		.BYTE $BF ; ¿
		.BYTE $AF ; ¯
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $A0 ;  
		.BYTE $20
		.BYTE $20
		.BYTE $28 ; (
		.BYTE	8
		.BYTE $F8 ; ø
		.BYTE $F8 ; ø
		.BYTE $E8 ; è
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $80 ; €
		.BYTE $82 ; ‚
		.BYTE $82 ; ‚
		.BYTE $20
		.BYTE $20
		.BYTE $22 ; "
		.BYTE $A2 ; ¢
		.BYTE $88 ; ˆ
		.BYTE $88 ; ˆ
		.BYTE $80 ; €
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $20
		.BYTE $28 ; (
		.BYTE	8
		.BYTE	8
		.BYTE  $A
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE  $A
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $25 ; %
		.BYTE $25 ; %
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE  $A
		.BYTE	8
		.BYTE $28 ; (
		.BYTE $2F ; /
		.BYTE $AE ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $20
		.BYTE $28 ; (
		.BYTE	8
		.BYTE  $A
		.BYTE $FE ; þ
		.BYTE $FE ; þ
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $23 ; #
		.BYTE $2C ; ,
		.BYTE $23 ; #
		.BYTE $2C ; ,
		.BYTE $CC ; Ì
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $EA ; ê
		.BYTE $F3 ; ó
		.BYTE $3C ; <
		.BYTE $F0 ; ð
		.BYTE $AA ; ª
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $3C ; <
		.BYTE $33 ; 3
		.BYTE $CF ; Ï
		.BYTE $AA ; ª
		.BYTE $33 ; 3
		.BYTE $CC ; Ì
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $FC ; ü
		.BYTE $CC ; Ì
		.BYTE $80 ; €
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $F8 ; ø
		.BYTE $C8 ; È
		.BYTE $38 ; 8
		.BYTE $C8 ; È
		.BYTE $1B
		.BYTE	9
		.BYTE	0
		.BYTE	2
		.BYTE  $A
		.BYTE	8
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $A2 ; ¢
		.BYTE $A8 ; ¨
		.BYTE $83 ; ƒ
		.BYTE $83 ; ƒ
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $83 ; ƒ
		.BYTE $83 ; ƒ
		.BYTE $A8 ; ¨
		.BYTE	8
		.BYTE  $A
		.BYTE	2
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $80 ; €
		.BYTE $A0 ;  
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $AB ; «
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $8A ; Š
		.BYTE $A2 ; ¢
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $83 ; ƒ
		.BYTE $78 ; x
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $7A ; z
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $90 ; 
		.BYTE $94 ; ”
		.BYTE $95 ; •
		.BYTE $95 ; •
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $AA ; ª
		.BYTE $BE ; ¾
		.BYTE $FA ; ú
		.BYTE $EA ; ê
		.BYTE $2F ; /
		.BYTE  $B
		.BYTE  $A
		.BYTE  $A
		.BYTE $95 ; •
		.BYTE $95 ; •
		.BYTE $A5 ; ¥
		.BYTE $A5 ; ¥
		.BYTE $E9 ; é
		.BYTE $E9 ; é
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	3
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	3
		.BYTE $56 ; V
		.BYTE $FF
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $FA ; ú
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A9 ; ©
		.BYTE $80 ; €
		.BYTE $81 ; 
		.BYTE $85 ; …
		.BYTE $A5 ; ¥
		.BYTE $A5 ; ¥
		.BYTE $95 ; •
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $2B ; +
		.BYTE  $A
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $E0 ; à
		.BYTE $E0 ; à
		.BYTE $A0 ;  
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $82 ; ‚
		.BYTE  $A
		.BYTE	9
		.BYTE	9
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE	0
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $BA ; º
		.BYTE $BE ; ¾
		.BYTE $AF ; ¯
		.BYTE $2B ; +
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $FA ; ú
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE $54 ; T
		.BYTE	0
		.BYTE	8
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE $CC ; Ì
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $C3 ; Ã
		.BYTE $AA ; ª
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $2C ; ,
		.BYTE $33 ; 3
		.BYTE  $F
		.BYTE $AA ; ª
		.BYTE  $C
		.BYTE $F3 ; ó
		.BYTE $32 ; 2
		.BYTE $A8 ; ¨
		.BYTE $F3 ; ó
		.BYTE $20
		.BYTE $80 ; €
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $38 ; 8
		.BYTE $CA ; Ê
		.BYTE $38 ; 8
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE	0
		.BYTE $82 ; ‚
		.BYTE $82 ; ‚
		.BYTE $80 ; €
		.BYTE $80 ; €
		.BYTE $82 ; ‚
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE	8
		.BYTE $83 ; ƒ
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $20
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	4
		.BYTE	8
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $20
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE	7
		.BYTE $1B
		.BYTE	2
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $7A ; z
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $95 ; •
		.BYTE $1B
		.BYTE	4
		.BYTE $15
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE  $A
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $BF ; ¿
		.BYTE $FE ; þ
		.BYTE $FA ; ú
		.BYTE  $A
		.BYTE $4A ; J
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $A5 ; ¥
		.BYTE $95 ; •
		.BYTE $95 ; •
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $15
		.BYTE $15
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $50 ; P
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
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $15
		.BYTE $16
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $40 ; @
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
		.BYTE $1E
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE	2
		.BYTE $83 ; ƒ
		.BYTE $3F ; ?
		.BYTE	3
		.BYTE $CE ; Î
		.BYTE $32 ; 2
		.BYTE $FE ; þ
		.BYTE $32 ; 2
		.BYTE $F2 ; ò
		.BYTE $3C ; <
		.BYTE $3A ; :
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $E8 ; è
		.BYTE $A0 ;  
		.BYTE $20
		.BYTE $21 ; !
		.BYTE $26 ; &
		.BYTE $1B
		.BYTE	2
		.BYTE $25 ; %
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $69 ; i
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE  $A
		.BYTE $4A ; J
		.BYTE $9B ; ›
		.BYTE $1B
		.BYTE	2
		.BYTE $5B ; [
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $AC ; ¬
		.BYTE $EA ; ê
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $A8 ; ¨
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	7
		.BYTE $15
		.BYTE $1B
		.BYTE $14
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $57 ; W
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $45 ; E
		.BYTE $15
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $51 ; Q
		.BYTE $51 ; Q
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	2
		.BYTE $45 ; E
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	4
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE  $B
		.BYTE	0
		.BYTE  $A
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $A9 ; ©
		.BYTE $85 ; …
		.BYTE $14
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE	5
		.BYTE $14
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $A8 ; ¨
		.BYTE  $A
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE	1
		.BYTE	6
		.BYTE $1B
		.BYTE	5
		.BYTE $19
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	5
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $3B ; ;
		.BYTE $EF ; ï
		.BYTE $EF ; ï
		.BYTE  $F
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $EF ; ï
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $C0 ; À
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE $1E
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE	2
		.BYTE  $A
		.BYTE $28 ; (
		.BYTE $A0 ;  
		.BYTE $80 ; €
		.BYTE  $E
		.BYTE $CE ; Î
		.BYTE $3E ; >
		.BYTE $F2 ; ò
		.BYTE $3E ; >
		.BYTE $CF ; Ï
		.BYTE $3C ; <
		.BYTE $CF ; Ï
		.BYTE	3
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $BF ; ¿
		.BYTE $AF ; ¯
		.BYTE $2B ; +
		.BYTE  $A
		.BYTE $1B
		.BYTE	7
		.BYTE $E5 ; å
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $95 ; •
		.BYTE $1B
		.BYTE	7
		.BYTE $5B ; [
		.BYTE $1B
		.BYTE $2F ; /
		.BYTE $FF
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $D0 ; Ð
		.BYTE $D4 ; Ô
		.BYTE $D5 ; Õ
		.BYTE $F5 ; õ
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $7D ; }
		.BYTE $1B
		.BYTE	2
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; õ
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $45 ; E
		.BYTE $51 ; Q
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE $17
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $9A ; š
		.BYTE $5A ; Z
		.BYTE $68 ; h
		.BYTE $68 ; h
		.BYTE $A0 ;  
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $19
		.BYTE $1A
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE  $A
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $EF ; ï
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE $58 ; X
		.BYTE	0
		.BYTE  $A
		.BYTE	8
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $20
		.BYTE $A0 ;  
		.BYTE $83 ; ƒ
		.BYTE $8E ; Ž
		.BYTE  $F
		.BYTE $3C ; <
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	0
		.BYTE $EE ; î
		.BYTE $AB ; «
		.BYTE $AE ; ®
		.BYTE $30 ; 0
		.BYTE	3
		.BYTE $30 ; 0
		.BYTE	3
		.BYTE	0
		.BYTE $BA ; º
		.BYTE $EE ; î
		.BYTE $AA ; ª
		.BYTE $C2 ; Â
		.BYTE $FF
		.BYTE	3
		.BYTE $F3 ; ó
		.BYTE $C0 ; À
		.BYTE $AC ; ¬
		.BYTE $EB ; ë
		.BYTE $FA ; ú
		.BYTE $A5 ; ¥
		.BYTE $B9 ; ¹
		.BYTE $AE ; ®
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $2B ; +
		.BYTE  $B
		.BYTE  $B
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $5B ; [
		.BYTE $6F ; o
		.BYTE $BF ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $FA ; ú
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; ê
		.BYTE $FF
		.BYTE $FF
		.BYTE $EF ; ï
		.BYTE $BE ; ¾
		.BYTE $EB ; ë
		.BYTE $BB ; »
		.BYTE $BE ; ¾
		.BYTE $BA ; º
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $AF ; ¯
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE $1B
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $FA ; ú
		.BYTE $FA ; ú
		.BYTE $EA ; ê
		.BYTE $F0 ; ð
		.BYTE $C3 ; Ã
		.BYTE  $F
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $F5 ; õ
		.BYTE $F5 ; õ
		.BYTE $F0 ; ð
		.BYTE	5
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $15
		.BYTE $1B
		.BYTE $14
		.BYTE $55 ; U
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
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	1
		.BYTE	6
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $50 ; P
		.BYTE $90 ; 
		.BYTE $90 ; 
		.BYTE $54 ; T
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
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE  $A
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; €
		.BYTE	0
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
		.BYTE  $A
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE	2
		.BYTE  $E
		.BYTE $3E ; >
		.BYTE $1B
		.BYTE	3
		.BYTE $FE ; þ
		.BYTE $BF ; ¿
		.BYTE $BE ; ¾
		.BYTE $1B
		.BYTE	4
		.BYTE $FE ; þ
		.BYTE $BE ; ¾
		.BYTE $EA ; ê
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $BF ; ¿
		.BYTE $EA ; ê
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $FA ; ú
		.BYTE $1B
		.BYTE	4
		.BYTE $FE ; þ
		.BYTE $FA ; ú
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE  $D
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $80 ; €
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	3
		.BYTE $82 ; ‚
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	6
		.BYTE $BF ; ¿
		.BYTE $AF ; ¯
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $F9 ; ù
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $95 ; •
		.BYTE $55 ; U
		.BYTE $A9 ; ©
		.BYTE $A6 ; ¦
		.BYTE $9A ; š
		.BYTE $A9 ; ©
		.BYTE $A6 ; ¦
		.BYTE $9A ; š
		.BYTE $AA ; ª
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $AF ; ¯
		.BYTE $AF ; ¯
		.BYTE $BF ; ¿
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE $2C ; ,
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $51 ; Q
		.BYTE $51 ; Q
		.BYTE $45 ; E
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE  $F
		.BYTE	3
		.BYTE	3
		.BYTE  $F
		.BYTE  $F
		.BYTE  $E
		.BYTE  $E
		.BYTE	0
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $B0 ; °
		.BYTE $B0 ; °
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; €
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	7
		.BYTE	6
		.BYTE $1B
		.BYTE	3
		.BYTE $54 ; T
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE  $E
		.BYTE $8E ; Ž
		.BYTE $A3 ; £
		.BYTE $83 ; ƒ
		.BYTE $80 ; €
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $BF ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $BF ; ¿
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $C3 ; Ã
		.BYTE  $A
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	3
		.BYTE $A0 ;  
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	2
		.BYTE $52 ; R
		.BYTE $52 ; R
		.BYTE $A8 ; ¨
		.BYTE $20
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $BF ; ¿
		.BYTE $AF ; ¯
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE $2B ; +
		.BYTE  $B
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $1B
		.BYTE	2
		.BYTE $F8 ; ø
		.BYTE $E8 ; è
		.BYTE $E0 ; à
		.BYTE $A0 ;  
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE $FA ; ú
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $8A ; Š
		.BYTE  $A
		.BYTE $CA ; Ê
		.BYTE $CA ; Ê
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $22 ; "
		.BYTE $88 ; ˆ
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $AF ; ¯
		.BYTE $AF ; ¯
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $AF ; ¯
		.BYTE $FF
		.BYTE $E5 ; å
		.BYTE $E9 ; é
		.BYTE $FA ; ú
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE $FF
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $95 ; •
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $AA ; ª
		.BYTE $A6 ; ¦
		.BYTE $9A ; š
		.BYTE $6B ; k
		.BYTE $AF ; ¯
		.BYTE $6F ; o
		.BYTE $AF ; ¯
		.BYTE $BF ; ¿
		.BYTE $BF ; ¿
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE $D5 ; Õ
		.BYTE $F5 ; õ
		.BYTE $F5 ; õ
		.BYTE $C5 ; Å
		.BYTE $1B
		.BYTE	3
		.BYTE	5
		.BYTE $1B
		.BYTE  $E
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $41 ; A
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $41 ; A
		.BYTE $15
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $1B
		.BYTE  $E
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $A5 ; ¥
		.BYTE $A5 ; ¥
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $68 ; h
		.BYTE $68 ; h
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $80 ; €
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE	6
		.BYTE	5
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $80 ; €
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $A0 ;  
		.BYTE $80 ; €
		.BYTE	0
		.BYTE $EF ; ï
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	5
		.BYTE	3
		.BYTE	0
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE $BA ; º
		.BYTE $1B
		.BYTE	2
		.BYTE $B0 ; °
		.BYTE $F0 ; ð
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $59 ; Y
		.BYTE $15
		.BYTE $16
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $5A ; Z
		.BYTE $4A ; J
		.BYTE $4A ; J
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE $41 ; A
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $D6 ; Ö
		.BYTE $1B
		.BYTE  $B
		.BYTE $2F ; /
		.BYTE $1B
		.BYTE	5
		.BYTE $5F ; _
		.BYTE $5E ; ^
		.BYTE $5E ; ^
		.BYTE $1B
		.BYTE  $F
		.BYTE $2F ; /
		.BYTE $1B
		.BYTE	3
		.BYTE $FA ; ú
		.BYTE $1B
		.BYTE	2
		.BYTE $F8 ; ø
		.BYTE $1B
		.BYTE	2
		.BYTE $F6 ; ö
		.BYTE $1B
		.BYTE	2
		.BYTE $F4 ; ô
		.BYTE $1B
		.BYTE	2
		.BYTE $F2 ; ò
		.BYTE $1B
		.BYTE	2
		.BYTE $F1 ; ñ
		.BYTE $1B
		.BYTE $10
		.BYTE $F4 ; ô
		.BYTE $A4 ; ¤
		.BYTE $A6 ; ¦
		.BYTE $A8 ; ¨
		.BYTE $AA ; ª
		.BYTE $AC ; ¬
		.BYTE $AC ; ¬
		.BYTE $AE ; ®
		.BYTE $AE ; ®
		.BYTE $1B
		.BYTE $11
		.BYTE $78 ; x
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	4
		.BYTE $78 ; x
		.BYTE	7
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $3E ; >
		.BYTE $43 ; C
		.BYTE	0
		.BYTE $1F
		.BYTE	6
		.BYTE $3E ; >
		.BYTE $43 ; C
		.BYTE	0
		.BYTE $1C
		.BYTE	6
		.BYTE $1E
		.BYTE $43 ; C
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE  $E
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	6
		.BYTE	8
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE  $E
		.BYTE $3C ; <
		.BYTE $20
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $3E ; >
		.BYTE	0
		.BYTE	0
		.BYTE $61 ; a
		.BYTE $E0 ; à
		.BYTE $3E ; >
		.BYTE	0
		.BYTE	0
		.BYTE $60 ; `
		.BYTE $E0 ; à
		.BYTE $1B
		.BYTE  $B
		.BYTE	0
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE	1
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	1
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE	0
		.BYTE	0
		.BYTE $80 ; €
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $22 ; "
		.BYTE	3
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $A1 ; ¡
		.BYTE $D6 ; Ö
		.BYTE $35 ; 5
		.BYTE $F4 ; ô
		.BYTE $9C ; œ
		.BYTE	9
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
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_96F0:	.BYTE 0			; DATA XREF: RAM:7657w
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
