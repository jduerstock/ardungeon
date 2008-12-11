		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		.ORG	$7600
		.BYTE $1A
; ---------------------------------------------------------------------------
		JMP	loc_7616
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_882E
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604^j	RAM:7607^j
		INC	$1937
		INC	$22F
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7616:				; CODE XREF: RAM:7601^j
		LDA	$6385
		CMP	#$60 ; '`'
		BCS	loc_7635
		LDA	#0
		STA	byte_86BD
		STA	byte_86CD
		LDA	#$85 ; 'Ö'
		STA	byte_86BC
		STA	byte_86CC
		LDA	RANDOM
		AND	#1
		STA	byte_86C0

loc_7635:				; CODE XREF: RAM:761B^j	RAM:765Fvj ...
		JSR	$1869
		LDA	$630F
		SEC
		SBC	$752C
		LDA	$6310
		SBC	$752D
		BMI	loc_7666
		LDA	$752A
		CLC
		ADC	#1
		CMP	#7
		BCC	loc_7653
		LDA	#0

loc_7653:				; CODE XREF: RAM:764F^j
		STA	$752A
		LDA	$752C
		CLC
		ADC	#7
		STA	$752C
		BCC	loc_7635
		INC	$752D
		BCS	loc_7635

loc_7666:				; CODE XREF: RAM:7645^j
		LDA	#$16
		STA	$66
		LDA	#$7E ; '~'
		STA	$67
		LDA	$6385
		CMP	#$E0 ; '‡'
		BCC	loc_767D
		LDA	#$22 ; '"'
		STA	$66
		LDA	#$7E ; '~'
		STA	$67

loc_767D:				; CODE XREF: RAM:7673^j
		DEC	$1937
		LDX	#2

loc_7682:				; CODE XREF: RAM:769Bvj
		LDA	I_LOC_X
		CMP	byte_8696,X
		BNE	loc_769A
		LDA	I_LOC_Y
		CMP	byte_8699,X
		BNE	loc_769A
		LDA	I_LOC_Z
		CMP	byte_869C,X
		BEQ	loc_76A0

loc_769A:				; CODE XREF: RAM:7688^j	RAM:7690^j
		DEX
		BPL	loc_7682
		JMP	loc_77EB
; ---------------------------------------------------------------------------

loc_76A0:				; CODE XREF: RAM:7698^j
		LDA	byte_869F,X
		STA	$69
		BNE	loc_76B4
		dldi	off_1977, $7763
		JMP	loc_76D0
; ---------------------------------------------------------------------------

loc_76B4:				; CODE XREF: RAM:76A5^j
		dldi	off_1977, $772A
		dldi	SEGADDR, $89AA
		LDA	#$32 ; '2'
		STA	SEGNO
		JSR	j_SEGLOAD

loc_76D0:				; CODE XREF: RAM:76B1^j
		dldi	off_16, $7E14
		JSR	$184B
		LDA	$1933
		STA	$6A
		dldi	SEGADDR, $96F0
		LDA	#$F
		STA	SEGNO
		JSR	j_SEGLOAD
		dldi	SEGADDR, $A2F0
		LDA	#$30 ; '0'
		STA	SEGNO
		JSR	j_SEGLOAD
		dldi	off_7, $89AA
		LDA	#2
		JSR	$180F
		JSR	$96F5
		dmv	off_224, $96F3
		DEC	$22F
		ldxy	$A2F0
		JMP	$96F0
; ---------------------------------------------------------------------------

loc_772A:				; CODE XREF: RAM:77A3vj	RAM:7877vj
		ldxy	$7508
		LDA	#4
		JSR	j_TESTBIT
		BCS	loc_7758
		ldxy	$7508
		LDA	#4
		SEC
		JSR	j_SETBIT
		ldxy	$8711
		JSR	$1884
		ldxy	$86D3
		JSR	$1884
		dldi	off_16, $7C67
		JMP	loc_7915
; ---------------------------------------------------------------------------

loc_7758:				; CODE XREF: RAM:7733^j
		dldi	off_16, $7E8A
		JMP	loc_77AD
; ---------------------------------------------------------------------------
		LDA	#$3F ; '?'
		STA	$6B

loc_7767:				; CODE XREF: RAM:779Fvj
		LDA	$6B
		STA	$4B
		JSR	$1887
		BEQ	loc_779D
		LDY	#0
		LDA	(off_41),Y
		CMP	#$87
		BNE	loc_779D
		JSR	$1896
		LDY	#0
		LDA	($43),Y
		CMP	#2
		BNE	loc_779D
		INY
		LDA	($43),Y
		BNE	loc_779D
		dldi	off_16, $7B42
		LDX	$6A
		JSR	j_sub_3C5C
		LDA	#$10
		JSR	j_sub_2BFC
		JMP	loc_77EB
; ---------------------------------------------------------------------------

loc_779D:				; CODE XREF: RAM:776E^j	RAM:7776^j ...
		DEC	$6B
		BPL	loc_7767

loc_77A1:				; CODE XREF: RAM:77CDvj	RAM:78A3vj ...
		LDA	$69
		BNE	loc_772A
		dldi	off_16, $7D71

loc_77AD:				; CODE XREF: RAM:7760^j
		LDX	$6A
		JSR	j_sub_3C5C

loc_77B2:				; CODE XREF: RAM:77C8vj	RAM:77D6vj ...
		dldi	off_1977, $77BF
		JMP	$1806
; ---------------------------------------------------------------------------
		JSR	$1821
		AND	#2
		BNE	loc_77EB
		LDA	$31
		BMI	loc_77B2
		SEC
		SBC	#$30 ; '0'
		BCC	loc_77A1
		TAX
		LDA	$69
		BNE	loc_7801
		CPX	#6
		BCS	loc_77B2
		CPX	#5
		BCC	loc_77E2
		LDA	$66
		CMP	#$22 ; '"'
		BNE	loc_77B2

loc_77E2:				; CODE XREF: RAM:77DA^j	RAM:780Avj
		LDA	unk_7815,X
		PHA
		LDA	unk_780C,X
		PHA
		RTS
; ---------------------------------------------------------------------------

loc_77EB:				; CODE XREF: RAM:769D^j	RAM:779A^j ...
		LDX	#4

loc_77ED:				; CODE XREF: RAM:77F4vj
		LDA	$6318,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_77ED
		JSR	$96F5
		LDA	#$FF
		STA	$AC00
		JMP	$180C
; ---------------------------------------------------------------------------

loc_7801:				; CODE XREF: RAM:77D2^j
		CPX	#3
		BCS	loc_77B2
		TXA
		CLC
		ADC	#6
		TAX
		BNE	loc_77E2
; ---------------------------------------------------------------------------
unk_780C:	.BYTE $EA ; Í		; DATA XREF: RAM:77E6^r
		.BYTE  $C
		.BYTE	4
		.BYTE $B9 ; π
		.BYTE $28 ; (
		.BYTE $F1 ; Ò
		.BYTE $EA ; Í
		.BYTE $9E ; û
		.BYTE $1D
unk_7815:	.BYTE $77 ; w		; DATA XREF: RAM:loc_77E2^r
		.BYTE $79 ; y
		.BYTE $7A ; z
		.BYTE $79 ; y
		.BYTE $79 ; y
		.BYTE $78 ; x
		.BYTE $77 ; w
		.BYTE $79 ; y
		.BYTE $78 ; x
; ---------------------------------------------------------------------------
		dldi	off_16, $7D3E
		LDA	#$19
		STA	$68
		LDA	#$10
		STA	$6B
		LDX	$6A
		JSR	j_sub_3C5C
		LDA	#$FF
		STA	$1972
		STA	$1955

loc_783B:				; CODE XREF: RAM:786Avj
		dldi	off_1977, loc_7848
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7848:
		LDA	#$10
		LDX	#$45 ; 'E'
		JSR	$187B
		LDA	#$A
		LDX	#$9B
		JSR	j_ADDSTAT1
		JSR	$1869
		LDA	$630A
		CMP	$68
		BEQ	loc_7866
		STA	$68
		DEC	$6B
		BEQ	loc_786C

loc_7866:				; CODE XREF: RAM:785E^j
		LDA	$31
		CMP	#$20 ; ' '
		BNE	loc_783B

loc_786C:				; CODE XREF: RAM:7864^j
		LDA	#0
		STA	$1955
		STA	$1972
		DEC	$195F
		JMP	loc_772A
; ---------------------------------------------------------------------------

loc_787A:				; CODE XREF: RAM:79FFvj
		dldi	off_16, $7CD7
		LDX	$6A
		JSR	j_sub_3C5C

loc_7887:				; CODE XREF: RAM:7896vj	RAM:78A1vj
		dldi	off_1977, $7894
		JMP	$1806
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_7887
		JSR	j_UPPER
		CMP	#'Y'
		BEQ	loc_78A6
		CMP	#'N'
		BNE	loc_7887
		JMP	loc_77A1
; ---------------------------------------------------------------------------

loc_78A6:				; CODE XREF: RAM:789D^j
		LDA	#0
		LDX	#9

loc_78AA:				; CODE XREF: RAM:78AEvj
		STA	$63B1,X
		DEX
		BPL	loc_78AA
		LDX	#3

loc_78B2:				; CODE XREF: RAM:78B6vj
		STA	$63BE,X
		DEX
		BPL	loc_78B2
		LDX	#$3F ; '?'

loc_78BA:				; CODE XREF: RAM:78D9vj
		LDA	$644B,X
		BEQ	loc_78D8
		STA	$63
		LDA	$640B,X
		STA	$62
		LDY	#0
		LDA	($62),Y
		BPL	loc_78D8
		CMP	#$81 ; 'Å'
		BEQ	loc_78D8
		LDA	#$10
		LDY	#2
		ORA	($62),Y
		STA	($62),Y

loc_78D8:				; CODE XREF: RAM:78BD^j	RAM:78CA^j ...
		DEX
		BPL	loc_78BA
		LDA	#$80 ; 'Ä'
		STA	$6385
		JSR	$18A5
		LDX	#$87 ; 'á'
		LDY	#$39 ; '9'
		JSR	$1884
		BMI	loc_78EF
		STA	$63A2

loc_78EF:				; CODE XREF: RAM:78EA^j
		JMP	loc_77A1
; ---------------------------------------------------------------------------
		LDX	#4

loc_78F4:				; CODE XREF: RAM:78FBvj
		LDA	unk_86A2,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_78F4
		LDA	#1
		STA	$6312
		JSR	$96F5
		LDA	#$FF
		STA	$AC00
		JMP	$180C
; ---------------------------------------------------------------------------
		dldi	off_16, $7D2E

loc_7915:				; CODE XREF: RAM:7755^j	RAM:799Cvj ...
		LDX	$6A
		JSR	j_sub_3C5C
		ldxy	$86AB
		JSR	$1884
		LDA	#$A
		JSR	j_sub_2BFC
		JMP	loc_77A1
; ---------------------------------------------------------------------------
		dldi	off_16, $7E14
		LDX	$6A
		JSR	j_sub_3C5C
		JSR	$189F
		JSR	$18A5
		LDX	#$F

loc_793E:				; CODE XREF: RAM:795Evj
		LDA	$6494,X
		CMP	#2
		BNE	loc_795D
		LDA	$64A4,X
		CMP	I_LOC_X
		BNE	loc_795D
		LDA	$64B4,X
		CMP	I_LOC_Y
		BNE	loc_795D
		LDA	$64C4,X
		CMP	I_LOC_Z
		BEQ	loc_7963

loc_795D:				; CODE XREF: RAM:7943^j	RAM:794B^j ...
		DEX
		BPL	loc_793E
		JMP	loc_77A1
; ---------------------------------------------------------------------------

loc_7963:				; CODE XREF: RAM:795B^j
		LDA	$64D4,X
		TAX
		LDA	$644B,X
		STA	$63
		LDA	$640B,X
		STA	$62
		LDY	#2
		LDA	#$10
		STA	($62),Y
		JSR	$18A5
		JSR	$1869
		LDA	$630F
		CMP	$752B
		BEQ	loc_7990
		STA	$752B
		INC	$6385
		BNE	loc_7990
		DEC	$6385

loc_7990:				; CODE XREF: RAM:7983^j	RAM:798B^j
		ldxy	$7B30

loc_7994:				; CODE XREF: RAM:79B7vj
		LDA	#2
		JSR	j_RND_A
		JSR	$185D
		JMP	loc_7915
; ---------------------------------------------------------------------------

		ldxy	$7B36
		LDA	$1969
		BEQ	loc_79AC
		ldxy	$7B3C

loc_79AC:				; CODE XREF: RAM:79A6^j
		LDA	#$FF
		STA	$6399
		STA	$639A
		DEC	$195F
		JMP	loc_7994
; ---------------------------------------------------------------------------

		dldi	off_16, $7E4B
		LDX	$6A
		JSR	j_sub_3C5C
		LDA	#$A
		JSR	j_sub_2BFC
		dldi	off_62, byte_8681
		LDY	#0
		LDA	$6385

loc_79D9:				; CODE XREF: RAM:79E2vj
		CMP	(off_62),Y
		BCC	loc_79E4
		BEQ	loc_79E4
		INY
		INY
		INY
		BNE	loc_79D9

loc_79E4:				; CODE XREF: RAM:79DB^j	RAM:79DD^j
		INY
		LDA	(off_62),Y
		STA	off_16
		INY
		LDA	(off_62),Y
		STA	off_16+1
		LDX	$6A
		JSR	j_sub_3C5C
		LDA	#$A
		JSR	j_sub_2BFC
		LDA	$6385
		CMP	#$65 ; 'e'
		BCS	loc_7A02
		JMP	loc_787A
; ---------------------------------------------------------------------------

loc_7A02:				; CODE XREF: RAM:79FD^j
		JMP	loc_77A1
; ---------------------------------------------------------------------------
		JSR	$1869
		LDA	$630A
		LDX	#3

loc_7A0D:				; CODE XREF: RAM:7A13vj
		CMP	unk_86A7,X
		BEQ	loc_7A20
		DEX
		BPL	loc_7A0D
		LDA	#$FA ; '˙'
		STA	$16
		LDA	#$7E ; '~'
		STA	$17
		JMP	loc_7915
; ---------------------------------------------------------------------------

loc_7A20:				; CODE XREF: RAM:7A10^j
		dldi	off_16, $7D3D
		LDX	$6A
		JSR	j_sub_3C5C

loc_7A2D:				; CODE XREF: RAM:7A9Cvj
		LDA	$752A
		ASL	A
		TAX
		LDA	off_7B1C+1,X
		STA	off_16+1
		LDA	off_7B1C,X
		STA	off_16
		CLC
		ADC	#3
		STA	$62
		LDA	#0
		ADC	$17
		STA	$63
		LDY	#0

loc_7A49:				; CODE XREF: RAM:loc_7A55vj
		LDA	($62),Y
		CMP	#$FF
		BEQ	loc_7A58
		INC	$62
		BNE	loc_7A55
		INC	$63

loc_7A55:				; CODE XREF: RAM:7A51^j
		JMP	loc_7A49
; ---------------------------------------------------------------------------

loc_7A58:				; CODE XREF: RAM:7A4D^j
		LDA	#$20 ; ' '
		STA	($62),Y
		INC	$62
		BNE	loc_7A62
		INC	$63

loc_7A62:				; CODE XREF: RAM:7A5E^j
		LDA	($62),Y
		CMP	#$FF
		BEQ	loc_7A9F

loc_7A68:				; CODE XREF: RAM:7A76vj
		CMP	#$20 ; ' '
		STA	$64
		BEQ	loc_7A78
		INC	$62
		BNE	loc_7A74
		INC	$63

loc_7A74:				; CODE XREF: RAM:7A70^j
		LDA	($62),Y
		BNE	loc_7A68

loc_7A78:				; CODE XREF: RAM:7A6C^j
		LDA	#$FF
		STA	(off_62),Y
		LDA	RANDOM
		AND	#1
		CLC
		ADC	#1
		TAX
		LDA	$64
		CMP	#$2C ; ','
		BNE	loc_7A8C
		INX

loc_7A8C:				; CODE XREF: RAM:7A89^j
		CMP	#$2E ; '.'
		BNE	loc_7A91
		INX

loc_7A91:				; CODE XREF: RAM:7A8E^j
		TXA
		PHA
		LDX	$6A
		JSR	j_sub_3C5C
		PLA
		JSR	sub_7AF7
		JMP	loc_7A2D
; ---------------------------------------------------------------------------

loc_7A9F:				; CODE XREF: RAM:7A66^j
		JSR	$1869
		LDA	$630A
		SEC
		SBC	#8
		CMP	#2
		BCC	loc_7AB5
		LDA	$630A
		SBC	#$15
		CMP	#2
		BCS	loc_7AD5

loc_7AB5:				; CODE XREF: RAM:7AAA^j
		LDA	#$FF
		STA	$1955

loc_7ABA:				; CODE XREF: RAM:7AD3vj
		dldi	off_1977, loc_7AC7
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7AC7:
		JSR	$1869
		LDA	$630A
		CMP	#$A
		BEQ	loc_7AD5
		CMP	#$17
		BNE	loc_7ABA

loc_7AD5:				; CODE XREF: RAM:7AB3^j	RAM:7ACF^j
		LDA	#0
		STA	$1955
		LDA	#$C
		JSR	j_sub_2BFC
		LDA	$752A
		ASL	A
		TAX
		LDA	off_7B1C,X
		STA	off_62
		LDA	off_7B1C+1,X
		STA	off_62+1
		LDY	#3
		LDA	#$FF
		STA	(off_62),Y
		JMP	loc_77A1

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7AF7:				; CODE XREF: RAM:7A99^p
		LDY	#0

loc_7AF9:				; CODE XREF: sub_7AF7+22vj
		LDX	#$50 ; 'P'

loc_7AFB:				; CODE XREF: sub_7AF7+5vj sub_7AF7+1Dvj
		DEY
		BNE	loc_7AFB
		PHA
		TXA
		PHA
		dldi	off_1977, loc_7B0E
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7B0E:
		PLA
		TAX
		LDY	#0
		PLA
		DEX
		BNE	loc_7AFB
		SEC
		SBC	#1
		BCS	loc_7AF9
		RTS
; End of function sub_7AF7

; ---------------------------------------------------------------------------
off_7B1C:	.WORD byte_7F56		; DATA XREF: RAM:7A37^r	RAM:7AE4^r ...
		.WORD byte_8020
		.WORD byte_80E5
		.WORD byte_81CA
		.WORD byte_8298
		.WORD byte_83A5
		.WORD byte_846E
		.WORD byte_7D71
		.WORD byte_7D71
		.WORD byte_7D71
		.WORD byte_7C09
		.WORD byte_7C2A
		.WORD byte_7C4A
		.WORD byte_7BAB
		.WORD byte_7BAB
		.WORD byte_7BAB
		.WORD byte_7BD9
		.WORD byte_7BD9
		.WORD byte_7BD9
		MOVEXY	0,2
		.BYTE $A5
aIMSorryButWeCa:.BYTE $22,"I'm sorry but we can do nothing for"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThyDeceasedCom:.BYTE "thy deceased companion.  Our services"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAreForTheLivin:.BYTE "are for the living.",$22
		.BYTE $D
		.BYTE $FF
byte_7BAB:	.BYTE $A6,  0,	2	; DATA XREF: RAM:7B36^o	RAM:7B38^o ...
		.BYTE $A5
aYouEnjoyAHardy:.BYTE "You enjoy a hardy meal"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWithTheMonks_:	.BYTE "with the monks.",$D
		.BYTE $FF
byte_7BD9:	.BYTE $A6,  0,	2	; DATA XREF: RAM:7B3C^o	RAM:7B3E^o ...
		.BYTE $A5
aTheMonksLookAt:.BYTE "The monks look at your belly"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aInDisgust_:	.BYTE "in disgust."
		.BYTE $D
		.BYTE $FF
byte_7C09:	.BYTE $A6,  6,	3	; DATA XREF: RAM:7B30^o
aThyOfferWillBe:.BYTE "Thy offer will be remembered."
		.BYTE $FF
byte_7C2A:	.BYTE $A6,  6,	3	; DATA XREF: RAM:7B32^o
aWeThankTheeFor:.BYTE "We thank thee for thy offer."
		.BYTE $FF
byte_7C4A:	.BYTE $A6,  8,	3	; DATA XREF: RAM:7B34^o
aThyOfferIsAppr:.BYTE "Thy offer is appreciated."
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aThePriorSays:	.BYTE "The prior says:"
		.BYTE $D
		.BYTE $A5
aWelcome:	.BYTE $22,"Welcome "
		.BYTE $B3
		.WORD $6321
		.BYTE $28
		.BYTE "!"
		.BYTE $D
		.BYTE $A5
aBecauseThouArt:.BYTE "Because thou art worthy, we offer"
		.BYTE $D
		.BYTE $A5
aThisHolyMaceAn:.BYTE "this holy mace and this sacred spell.",$22
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aDostThouWishTo:.BYTE "Dost thou wish to repent"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAndGiveUpAllTh:.BYTE "and give up all thy worldy"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aPossessionsq:	.BYTE "possessions? ("
		.BYTE $A1
aY:		.BYTE "Y"
		.BYTE $A0
aOr:		.BYTE " or "
		.BYTE $A1
aN:		.BYTE "N"
		.BYTE $A0
		.BYTE ")"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6, $F,	2
		.BYTE $A1
aPraying___:	.BYTE "Praying..."
		.BYTE $A0
		.BYTE $FF
		.BYTE $A6, $E,	2
		.BYTE $A1
aSleeping___:	.BYTE "Sleeping..."
		.BYTE $A0
		.BYTE $A6,  0,	7
		.BYTE $A5
aPress:		.BYTE "Press "
		.BYTE $A1
aSpaceBar:	.BYTE "SPACE BAR"
		.BYTE $A0
aToWakeUp_:	.BYTE " to wake up.",$D
		.BYTE $FF
byte_7D71:	.BYTE $A6,  0,	0	; DATA XREF: RAM:7B2A^o	RAM:7B2C^o ...
		.BYTE $A5
aWelcomeToTheDu:.BYTE "Welcome to the Dungeon Chapel."
		.BYTE $D
		.BYTE $A5
aWhatWouldYouLi:.BYTE "What would you like to do?"
		.BYTE $D
		.BYTE $A6,  6,	2
		.BYTE "("
		.BYTE $A1
a1:		.BYTE "1"
		.BYTE $A0
aPray:		.BYTE ") Pray"
		.BYTE $A6,  6,	3
		.BYTE "("
		.BYTE $A1
a2:		.BYTE "2"
		.BYTE $A0
aListenToASermo:.BYTE ") Listen to a sermon"
		.BYTE $A6,  6,	4
		.BYTE "("
		.BYTE $A1
a3:		.BYTE "3"
		.BYTE $A0
aConsultWithAPr:.BYTE ") Consult with a priest"
		.BYTE $A6,  6,	5
		.BYTE "("
		.BYTE $A1
a4:		.BYTE "4"
		.BYTE $A0
aMakeADonation:	.BYTE ") Make a donation"
		.BYTE $A6,  6,	6
		.BYTE $AD
		.WORD $66
		.BYTE $A8
		.BYTE $FF
		.BYTE "("
		.BYTE $A1
a0:		.BYTE "0"
		.BYTE $A0
aLeave:		.BYTE ") Leave"
		.BYTE $FF
		.BYTE "("
		.BYTE $A1
a5:		.BYTE "5"
		.BYTE $A0
aEnterTheGarden:.BYTE ") Enter the Garden"
		.BYTE $D
		.BYTE "      ("
		.BYTE $A1
a0_0:		.BYTE "0"
		.BYTE $A0
aLeave_0:	.BYTE ") Leave"
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aThePriestTalks:.BYTE "The priest talks with you for a"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aMomentAndThenS:.BYTE "moment and then says..."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aWelcomeToSanct:.BYTE "Welcome to Sanctuary!"
		.BYTE $D
		.BYTE $D
aYouMay:	.BYTE "You may:"
		.BYTE $D
		.BYTE $A6,  6,	4
		.BYTE "("
		.BYTE $A1
a1_0:		.BYTE "1"
		.BYTE $A0
aShareAMealWith:.BYTE ") Share a meal with the monks"
		.BYTE $A6,  6,	5
		.BYTE "("
		.BYTE $A1
a2_0:		.BYTE "2"
		.BYTE $A0
aRestForAWhile:	.BYTE ") Rest for a while"
		.BYTE $A6,  6,	7
		.BYTE "("
		.BYTE $A1
a0_1:		.BYTE "0"
		.BYTE $A0
aLeave_1:	.BYTE ") Leave"
		.BYTE $FF
		MOVEXY	0,2
		.BYTE	$A5,"Services are from",$0D,$0D
		.BYTE	$A5,"8:00 to 11:00 in the morning, and",$0D,$0D
		.BYTE	$A5,"21:00 to 23:00 in the evening.",$0D,$FF

byte_7F56:	MOVEXY	7,0	; DATA XREF: RAM:off_7B1C^o
		.BYTE	$FF

		.BYTE	"Hear my words and acquire "
		MOVEXY	6,1
		.BYTE	"the skill to understand the "
		MOVEXY	5,2
		.BYTE	"riddles of the wise.  Only a "
		MOVEXY	2,3
		.BYTE "fool despises wisdom and learning. "
		MOVEXY	3,4
		.BYTE "Call wisdom your sister and under-"
		MOVEXY	5,5
		.BYTE "standing your closest friend. ",$FF

byte_8020:	.BYTE $A6,  3,	0	; DATA XREF: RAM:7B1E^o
		.BYTE $FF
aTheWiseWillHee:.BYTE "The wise will heed instructions, "
		.BYTE $A6,  5,	1
aButAFoolWillCo:.BYTE "but a fool will come to ruin. "
		.BYTE $A6,  6,	2
aTheViolentGetR:.BYTE "The violent get riches, but "
		.BYTE $A6,  4,	3
aTreasuresGaine:.BYTE "treasures gained by wickedness "
		.BYTE $A6,  4,	4
aDoNotProfit_Th:.BYTE "do not profit.  Those who trust "
		.BYTE $A6,  8,	5
aInRichesWillWi:.BYTE "in riches will wither. "
		.BYTE $FF
byte_80E5:	.BYTE $A6,  1,	0	; DATA XREF: RAM:7B20^o
		.BYTE $FF
aWealthHastilyG:.BYTE "Wealth hastily gotten will dwindle, "
		.BYTE $A6,  8,	1
aButTheOneWhoGa:.BYTE "but the one who gathers "
		.BYTE $A6,  2,	2
aLittleByLittle:.BYTE "little by little will increase it. "
		.BYTE $A6,  4,	3
aPovertyAndDisg:.BYTE " Poverty and disgrace come to "
		.BYTE $A6,  5,	4
aThoseWhoIgnore:.BYTE "those who ignore instruction. "
		.BYTE $A6,  5,	5
aTheDiligentAdv:.BYTE "The diligent Adventurer will "
		.BYTE $A6,  9,	6
aGetPreciousWea:.BYTE "get precious wealth.  "
		.BYTE $FF
byte_81CA:	.BYTE $A6,  4,	0	; DATA XREF: RAM:7B22^o
		.BYTE $FF
aTheSimpleBelie:.BYTE "The simple believes everything, "
		.BYTE $A6,  5,	1
aButThePrudentL:.BYTE "but the prudent looks where he"
		.BYTE $A6,  6,	2
aIsGoing_AWiseP:.BYTE "is going.  A wise person is"
		.BYTE $A6,  5,	3
aCautiousAndTur:.BYTE "cautious and turns away from "
		.BYTE $A6,  5,	4
aEvil_TheQuickT:.BYTE "evil.  The quick-tempered act "
		.BYTE $A6,  1,	5
aFoolishlyButTh:.BYTE "foolishly,  but the wise are patient. "
		.BYTE $FF
byte_8298:	.BYTE $A6,  3,	0	; DATA XREF: RAM:7B24^o
		.BYTE $FF
aAGiftIsLikeAMa:.BYTE "A gift is like a magic stone in "
		.BYTE $A6,  3,	1
aTheEyesOfTheOn:.BYTE "the eyes of the one who gives it; "
		.BYTE $A6,  3,	2
aTheGiverWillPr:.BYTE "the giver will prosper.  One who "
		.BYTE $A6,  6,	3
aIsKindToThePoo:.BYTE "is kind to the poor will be "
		.BYTE $A6,  3,	4
aRepaidByTheCre:.BYTE "repaid by the Creator.  Many seek "
		.BYTE $A6,  4,	5
aTheFavorOfAGen:.BYTE "the favor of a generous person; "
		.BYTE $A6,  4,	6
aEveryoneIsAFri:.BYTE "everyone is a friend to someone "
		.BYTE $A6, $B,	7
aWhoGivesGifts_:.BYTE "who gives gifts.  "
		.BYTE $FF
byte_83A5:	.BYTE $A6,  7,	0	; DATA XREF: RAM:7B26^o
		.BYTE $FF
aTheWayOfTheGui:.BYTE "The way of the guilty is "
		.BYTE $A6,  6,	1
aCrookedButTheC:.BYTE "crooked,  but the conduct of "
		.BYTE $A6,  9,	2
aThePureIsRight:.BYTE "the pure is right.  A "
		.BYTE $A6,  7,	3
aWickedPersonDe:.BYTE "wicked person desires evil "
		.BYTE $A6,  9,	4
aAndShowsNoMerc:.BYTE "and shows no mercy.  A "
		.BYTE $A6,  7,	5
aGoodNameIsToBe:.BYTE "good name is to be chosen "
		.BYTE $A6,  7,	6
aRatherThanGrea:.BYTE "rather than great riches. "
		.BYTE $FF
byte_846E:	.BYTE $A6,  6,	0	; DATA XREF: RAM:7B28^o
		.BYTE $FF
aALittleSleepAL:.BYTE "A little sleep,  a little "
		.BYTE $D
		.BYTE $A6,  5,	1
aSlumberALittle:.BYTE "slumber,  a little folding of "
		.BYTE $A6,  7,	2
aTheHandsToRest:.BYTE "the hands to rest,  and "
		.BYTE $A6,  6,	3
aPovertyWillCom:.BYTE "poverty will come upon thee "
		.BYTE $A6,  5,	4
aLikeAVagabond_:.BYTE "like a vagabond.  The desire "
		.BYTE $A6,  5,	5
aOfTheSluggardI:.BYTE "of the sluggard is fatal for "
		.BYTE $A6,  6,	6
aHisHandsRefuse:.BYTE "his hands refuse to labor. "
		.BYTE $FF
byte_8547:	.BYTE $A6,  0,	2	; DATA XREF: RAM:8694vo
		.BYTE $A5
aThouHastAchiev:.BYTE "Thou hast achieved"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aALevelOfGreatG:.BYTE "a level of great goodness.",$D
		.BYTE $FF
byte_857C:	.BYTE $A6, $E,	2	; DATA XREF: RAM:8691vo
aThouSoulIs:	.BYTE "Thou soul is"
		.BYTE $A6,  9,	4
aBecomingPurerD:.BYTE "becoming purer daily."
		.BYTE $FF
byte_85A4:	.BYTE $A6,  0,	2	; DATA XREF: RAM:868Evo
		.BYTE $A5
aThouArtOnThe:	.BYTE "Thou art on the"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aRightPathPilgr:.BYTE "right path, Pilgrim.",$D
		.BYTE $FF
byte_85D0:	.BYTE $A6,  0,	2	; DATA XREF: RAM:868Bvo
		.BYTE $A5
aThyPersonality:.BYTE "Thy personality is"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aHardToReadStra:.BYTE "hard to read, Stranger.",$D
		.BYTE $FF
byte_8602:	.BYTE $A6,  0,	2	; DATA XREF: RAM:8688vo
		.BYTE $A5
aThouArtHeading:.BYTE "Thou art heading down"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheWrongTrackA:.BYTE "the wrong track, Adventurer."
		.BYTE $D
		.BYTE $FF
byte_863C:	.BYTE $A6,  0,	3	; DATA XREF: RAM:8685vo
		.BYTE $A5
aThySoulIsDarkA:.BYTE "Thy soul is dark and fearsome."
		.BYTE $D
		.BYTE $FF
byte_8660:	.BYTE $A6,  0,	3	; DATA XREF: RAM:8682vo
aThySoulIsBlack:.BYTE $A5,"Thy soul is black as pitch!",$D,$FF

byte_8681:
		.BYTE $4A
		.WORD byte_8660
		.BYTE $64
		.WORD byte_863C
		.BYTE $77
		.WORD byte_8602
		.BYTE $87
		.WORD byte_85D0
		.BYTE $96
		.WORD byte_85A4
		.BYTE $E1
		.WORD byte_857C
		.BYTE $FF
		.WORD byte_8547

byte_8696:
		.BYTE $1B
		.BYTE $1C
		.BYTE $1F

byte_8699:
		.BYTE	8
		.BYTE	8
		.BYTE	8

byte_869C:
		.BYTE	0
		.BYTE	0
		.BYTE	0

byte_869F:
		.BYTE	0
		.BYTE	0
		.BYTE	1
unk_86A2:	.BYTE $1D		; DATA XREF: RAM:loc_78F4^r
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_86A7:	.BYTE	8		; DATA XREF: RAM:loc_7A0D^r
		.BYTE	9
		.BYTE $15
		.BYTE $16
		.BYTE $85 ; Ö
		.BYTE $28 ; (
		.BYTE $10
		.BYTE	0
		.BYTE	4
		.BYTE	7
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C2 ; ¬
		.BYTE	1
		.BYTE $A0 ; †
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; ë
byte_86BC:	.BYTE $84		; DATA XREF: RAM:7627^w
byte_86BD:	.BYTE 0			; DATA XREF: RAM:761F^w
		.BYTE	1
		.BYTE	0
byte_86C0:	.BYTE 1			; DATA XREF: RAM:7632^w
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $C2 ; ¬
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; Å
byte_86CC:	.BYTE $84		; DATA XREF: RAM:762A^w
byte_86CD:	.BYTE 0			; DATA XREF: RAM:7622^w
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $83 ; É
		.BYTE $3E ; >
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE  $A
		.BYTE $1A
aSt_PercivalSMa:.BYTE "St. Percival's Mace",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $A5 ; •
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $92 ; í
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	0
		.BYTE  $E
		.BYTE $10
		.BYTE $FF
		.BYTE $FF
		.BYTE $9A ; ö
		.BYTE $10
		.BYTE $81 ; Å
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $13
aDispellEvil:	.BYTE "Dispell Evil",0
		.BYTE $88 ; à
		.BYTE $FF
		.BYTE $44 ; D
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $E5 ; Â
		.BYTE	0
		.BYTE	2
		.BYTE	3
		.BYTE $F3 ; Û
		.BYTE	0
		.BYTE	0
		.BYTE	8
		.BYTE $32 ; 2
		.BYTE	5
		.BYTE $FF
		.BYTE $85 ; Ö
		.BYTE $1D
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE $1A
aSackclothAndAs:.BYTE "Sackcloth and Ashes",0
		.BYTE	0
		.BYTE $F8 ; ¯
		.BYTE	1
unk_8756:	.BYTE $70 ; p		; DATA XREF: RAM:8786vo
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
		.BYTE	$42
		.WORD	$658
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
		.BYTE	$41
		.WORD	unk_8756
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

loc_87EC:				; CODE XREF: RAM:8811vj
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
		BPL	loc_87EC
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

loc_882E:				; CODE XREF: RAM:760A^j
		LDA	#$7F ; ''
		STA	$253
		LDA	#$56 ; 'V'
		STA	$254
		LDA	#$87 ; 'á'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_8841:				; CODE XREF: RAM:884Fvj
		LDY	#$C

loc_8843:				; CODE XREF: RAM:884Avj
		STA	$BB4C,X
		DEX
		BMI	loc_8851
		DEY
		BNE	loc_8843
		CLC
		ADC	#4
		BNE	loc_8841

loc_8851:				; CODE XREF: RAM:8847^j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_8949
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_8949
		LDA	#0
		STA	loc_8877+1
		LDA	#$BD ; 'Ω'
		STA	loc_8877+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_8877:				; CODE XREF: RAM:887Bvj	RAM:8881vj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_8877
		INC	loc_8877+2
		DEY
		BNE	loc_8877
		LDX	#7

loc_8885:				; CODE XREF: RAM:8889vj
		STA	$D000,X
		DEX
		BPL	loc_8885
		LDA	#3
		TAX

loc_888E:				; CODE XREF: RAM:8892vj
		STA	$D008,X
		DEX
		BPL	loc_888E
		ldi	SIZEM, $FF
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

loc_88BC:				; CODE XREF: RAM:88E2vj
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_88C4:				; CODE XREF: RAM:88CFvj
		LSR	4
		BCC	loc_88CE
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_88CE:				; CODE XREF: RAM:88C6^j
		DEY
		BPL	loc_88C4
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_88DC
		INC	$A

loc_88DC:				; CODE XREF: RAM:88D8^j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_88BC
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_88F4:				; CODE XREF: RAM:8905vj
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
		BCC	loc_88F4

loc_8907:				; CODE XREF: RAM:8924vj
		LDX	#0

loc_8909:				; CODE XREF: RAM:8922vj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_890F:				; CODE XREF: RAM:8914vj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_890F
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_8926
		CPX	#$A
		BCC	loc_8909
		BCS	loc_8907

loc_8926:				; CODE XREF: RAM:891E^j
		LDX	#3
		LDA	$BC5F

loc_892B:				; CODE XREF: RAM:892Fvj
		STA	COLPM0,X
		DEX
		BPL	loc_892B
		dldi	off_24A, $8788
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_8949:				; CODE XREF: RAM:8859^p	RAM:8864^p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_8953
		INC	8

loc_8953:				; CODE XREF: RAM:894F^j
		CMP	#$1B
		BEQ	loc_8962
		STA	(9),Y
		INC	9
		BNE	loc_895F
		INC	$A

loc_895F:				; CODE XREF: RAM:895B^j
		JMP	loc_8949
; ---------------------------------------------------------------------------

loc_8962:				; CODE XREF: RAM:8955^j
		LDA	(7),Y
		INC	7
		BNE	loc_896A
		INC	8

loc_896A:				; CODE XREF: RAM:8966^j
		CMP	#$FF
		BNE	loc_896F
		RTS
; ---------------------------------------------------------------------------

loc_896F:				; CODE XREF: RAM:896C^j
		STA	byte_89A9
		ADC	9
		STA	loc_8982+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_8987
		LDA	byte_89A9

loc_8982:				; DATA XREF: RAM:8974^w
		SBC	#$FF
		STA	byte_89A9

loc_8987:				; CODE XREF: RAM:897D^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_898F
		INC	off_7+1

loc_898F:				; CODE XREF: RAM:898B^j
		LDY	byte_89A9

loc_8992:				; CODE XREF: RAM:8995vj
		STA	(off_9),Y
		DEY
		BPL	loc_8992
		INC	byte_89A9
		LDA	byte_89A9
		CLC
		ADC	off_9
		STA	off_9
		BCC	loc_89A6
		INC	off_9+1

loc_89A6:				; CODE XREF: RAM:89A2^j
		JMP	loc_8949
; ---------------------------------------------------------------------------
byte_89A9:	.BYTE 0			; DATA XREF: RAM:loc_896F^w RAM:897F^r ...
		.BYTE $1B
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	2
		.BYTE  $A
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A6 ; ¶
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $51 ; Q
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE $66 ; f
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE $15
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $9A ; ö
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $45 ; E
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE  $A
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $94 ; î
		.BYTE $94 ; î
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $45 ; E
		.BYTE $45 ; E
		.BYTE $51 ; Q
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $1D
		.BYTE $73 ; s
		.BYTE $73 ; s
		.BYTE $5D ; ]
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $45 ; E
		.BYTE $45 ; E
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE  $B
		.BYTE	0
		.BYTE	9
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	8
		.BYTE $40 ; @
		.BYTE $B0 ; ∞
		.BYTE $1B
		.BYTE $3C ; <
		.BYTE	0
		.BYTE	3
		.BYTE  $C
		.BYTE  $C
		.BYTE $30 ; 0
		.BYTE $C3 ; √
		.BYTE $1B
		.BYTE	2
		.BYTE $CC ; Ã
		.BYTE $30 ; 0
		.BYTE $33 ; 3
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE  $A
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $51 ; Q
		.BYTE $51 ; Q
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $45 ; E
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $74 ; t
		.BYTE $CD ; Õ
		.BYTE $CD ; Õ
		.BYTE $75 ; u
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $16
		.BYTE $16
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $51 ; Q
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE $70 ; p
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE  $A
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	2
		.BYTE $95 ; ï
		.BYTE $90 ; ê
		.BYTE $41 ; A
		.BYTE $41 ; A
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5D ; ]
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; Û
		.BYTE $7F ; 
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $41 ; A
		.BYTE $45 ; E
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; ’
		.BYTE $54 ; T
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	2
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE  $E
		.BYTE	9
		.BYTE  $D
		.BYTE	1
		.BYTE $CE ; Œ
		.BYTE	5
		.BYTE $88 ; à
		.BYTE $11
		.BYTE $B0 ; ∞
		.BYTE $90 ; ê
		.BYTE $DC ; ‹
		.BYTE $24 ; $
		.BYTE $60 ; `
		.BYTE $C4 ; -
		.BYTE $48 ; H
		.BYTE $91 ; ë
		.BYTE $48 ; H
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $20
		.BYTE $40 ; @
		.BYTE $B0 ; ∞
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE $14
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FB ; ˚
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE	8
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE  $C
		.BYTE	3
		.BYTE $33 ; 3
		.BYTE  $C
		.BYTE $33 ; 3
		.BYTE	0
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $C3 ; √
		.BYTE  $C
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	2
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE	5
		.BYTE	5
		.BYTE $41 ; A
		.BYTE $51 ; Q
		.BYTE $1B
		.BYTE	2
		.BYTE $57 ; W
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $CF ; œ
		.BYTE $FD ; ˝
		.BYTE $41 ; A
		.BYTE $41 ; A
		.BYTE	5
		.BYTE $15
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	2
		.BYTE $56 ; V
		.BYTE	6
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	3
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
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
		.BYTE $27 ; '
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $43 ; C
		.BYTE $43 ; C
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $50 ; P
		.BYTE	4
		.BYTE $C1 ; ¡
		.BYTE $C1 ; ¡
		.BYTE	5
		.BYTE $5D ; ]
		.BYTE $15
		.BYTE $15
		.BYTE	4
		.BYTE	1
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	4
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $14
		.BYTE	1
		.BYTE	5
		.BYTE $15
		.BYTE $55 ; U
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE	1
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE	0
		.BYTE  $E
		.BYTE	1
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $1F
		.BYTE $90 ; ê
		.BYTE $E0 ; ‡
		.BYTE $30 ; 0
		.BYTE $FC ; ¸
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE $C3 ; √
		.BYTE $FC ; ¸
		.BYTE $C1 ; ¡
		.BYTE $C0 ; ¿
		.BYTE $C3 ; √
		.BYTE $CF ; œ
		.BYTE $C3 ; √
		.BYTE $C3 ; √
		.BYTE $60 ; `
		.BYTE $40 ; @
		.BYTE $C0 ; ¿
		.BYTE $20
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE  $D
		.BYTE	0
		.BYTE	1
		.BYTE	5
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $EA ; Í
		.BYTE $C8 ; »
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $FB ; ˚
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $C0 ; ¿
		.BYTE $D0 ; –
		.BYTE $D4 ; ‘
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	8
		.BYTE  $A
		.BYTE  $A
		.BYTE	8
		.BYTE $14
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	5
		.BYTE	3
		.BYTE  $C
		.BYTE  $C
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $A9 ; ©
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE  $F
		.BYTE  $F
		.BYTE $40 ; @
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $10
		.BYTE	4
		.BYTE	5
		.BYTE $15
		.BYTE $75 ; u
		.BYTE $54 ; T
		.BYTE $10
		.BYTE $10
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	5
		.BYTE $10
		.BYTE $43 ; C
		.BYTE $43 ; C
		.BYTE $50 ; P
		.BYTE	5
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	5
		.BYTE $C1 ; ¡
		.BYTE $C1 ; ¡
		.BYTE	5
		.BYTE $1B
		.BYTE	7
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE $65 ; e
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $54 ; T
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $FD ; ˝
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	2
		.BYTE $15
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $43 ; C
		.BYTE $40 ; @
		.BYTE  $C
		.BYTE $1B
		.BYTE	2
		.BYTE $33 ; 3
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $15
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE	5
		.BYTE $15
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $30 ; 0
		.BYTE $FC ; ¸
		.BYTE  $F
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $C3 ; √
		.BYTE $CF ; œ
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $51 ; Q
		.BYTE $51 ; Q
		.BYTE $41 ; A
		.BYTE $43 ; C
		.BYTE $8F ; è
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $45 ; E
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $C
		.BYTE  $C
		.BYTE $3F ; ?
		.BYTE  $C
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE  $D
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $3C ; <
		.BYTE  $C
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $1B
		.BYTE	2
		.BYTE $CC ; Ã
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $54 ; T
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $C1 ; ¡
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE $15
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE $15
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE $37 ; 7
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE  $F
		.BYTE	3
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; Í
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE  $C
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	5
		.BYTE	5
		.BYTE $1B
		.BYTE	3
		.BYTE $15
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	8
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $2B ; +
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $F
		.BYTE $1B
		.BYTE	7
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $C
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $A9 ; ©
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	2
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	5
		.BYTE	5
		.BYTE $15
		.BYTE $15
		.BYTE $1B
		.BYTE  $B
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
		.BYTE	3
		.BYTE	2
		.BYTE	2
		.BYTE  $A
		.BYTE  $A
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $AE ; Æ
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	4
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE  $F
		.BYTE	0
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
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	9
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $E9 ; È
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $6A ; j
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $C0 ; ¿
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $2B ; +
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $F
		.BYTE $1B
		.BYTE	7
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE  $C
		.BYTE	5
		.BYTE $16
		.BYTE $16
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $A9 ; ©
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $15
		.BYTE	5
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $A8 ; ®
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	3
		.BYTE $5F ; _
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $AB ; ´
		.BYTE $2F ; /
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $FD ; ˝
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $A9 ; ©
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	3
		.BYTE $96 ; ñ
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $50 ; P
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	4
		.BYTE $14
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	7
		.BYTE $2B ; +
		.BYTE $1B
		.BYTE	3
		.BYTE $C0 ; ¿
		.BYTE $FF
		.BYTE $FF
		.BYTE $77 ; w
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $77 ; w
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	3
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF
		.BYTE $77 ; w
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	7
		.BYTE $A0 ; †
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $16
		.BYTE	6
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	6
		.BYTE $96 ; ñ
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	3
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $7F ; 
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE $28 ; (
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $96 ; ñ
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	5
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	9
		.BYTE $AA ; ™
		.BYTE $41 ; A
		.BYTE $45 ; E
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $54 ; T
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $EA ; Í
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $AC ; ¨
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $F5 ; ı
		.BYTE $FD ; ˝
		.BYTE	6
		.BYTE $46 ; F
		.BYTE $1B
		.BYTE	5
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $96 ; ñ
		.BYTE $1B
		.BYTE	4
		.BYTE $A6 ; ¶
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	6
		.BYTE $5A ; Z
		.BYTE $9A ; ö
		.BYTE $1B
		.BYTE  $F
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE	9
		.BYTE $3B ; ;
		.BYTE $1B
		.BYTE	3
		.BYTE $AC ; ¨
		.BYTE $1B
		.BYTE $15
		.BYTE $AD ; ≠
		.BYTE $1B
		.BYTE	8
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE  $C
		.BYTE $39 ; 9
		.BYTE $1B
		.BYTE	2
		.BYTE $3A ; :
		.BYTE $1B
		.BYTE  $A
		.BYTE $39 ; 9
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $2F ; /
		.BYTE  $D
		.BYTE  $B
		.BYTE	9
		.BYTE $1B
		.BYTE $20
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	3
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $33 ; 3
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	0
		.BYTE  $E
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE $30 ; 0
		.BYTE $3C ; <
		.BYTE $1F
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $7C ; |
		.BYTE	0
		.BYTE	1
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE	1
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $1C
		.BYTE	0
		.BYTE	3
		.BYTE $E0 ; ‡
		.BYTE	0
		.BYTE $3E ; >
		.BYTE	0
		.BYTE	3
		.BYTE $E0 ; ‡
		.BYTE	0
		.BYTE $3E ; >
		.BYTE	0
		.BYTE	3
		.BYTE $E0 ; ‡
		.BYTE	0
		.BYTE $3E ; >
		.BYTE	0
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE $70 ; p
		.BYTE  $C
		.BYTE	0
		.BYTE	0
		.BYTE $20
		.BYTE $70 ; p
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $70 ; p
		.BYTE $1B
		.BYTE	6
		.BYTE	0
		.BYTE	8
		.BYTE $AD ; ≠
		.BYTE $35 ; 5
		.BYTE $2F ; /
		.BYTE $9C ; ú
		.BYTE $6A ; j
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
; end of 'RAM'


		.END
