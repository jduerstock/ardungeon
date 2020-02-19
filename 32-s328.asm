		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		.ORG	$7600
		.BYTE	$10
; ---------------------------------------------------------------------------
		JMP	loc_7611
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_87D7
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604^j	RAM:7607^j
		JSR	$184E
		RTS
; ---------------------------------------------------------------------------

loc_7611:				; CODE XREF: RAM:7601^j
		LDA	#$FF
		STA	$1937
		LDX	#4

loc_7618:				; CODE XREF: RAM:761Fvj
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_7618
		LDA	$754C
		BNE	loc_7640
		LDA	#$80
		STA	$754C
		LDA	#0
		STA	$754A
		LDA	#5
		STA	$754E
		LDA	#$FF
		STA	$754D
		STA	$7548
		STA	$7549

loc_7640:				; CODE XREF: RAM:7624^j
		dldi	off_1977, loc_766C
		dldi	off_16, byte_7A6D
		JSR	$184B
		LDA	$1933
		STA	$67
		dldi	off_7, $8953
		LDA	#2
		JSR	$180F
		LDA	#0
		STA	$6C
		RTS
; ---------------------------------------------------------------------------

loc_766C:
		LDA	$754A
		BPL	loc_76E3
		JSR	j_sub_2E31
		LDA	$630F
		CLC
		ADC	#$1E
		STA	$6A
		LDA	$6310
		ADC	#0
		STA	$6B
		LDA	$7549
		CMP	$6B
		BCC	loc_76A8
		BEQ	loc_768E
		BCS	loc_7695

loc_768E:				; CODE XREF: RAM:768A^j
		LDA	$7548
		CMP	$6A
		BCC	loc_76A8

loc_7695:				; CODE XREF: RAM:768C^j	
		dldi	off_16, $7B38
		JSR	sub_7A37
		LDA	#5
		JSR	j_sub_2BFC
		JMP	loc_76E3
; ---------------------------------------------------------------------------

loc_76A8:				; CODE XREF: RAM:7688^j	RAM:7693^j
		dldi	off_16, $7E5B
		JSR	sub_7A37
		LDA	$6A
		SEC
		SBC	$7548
		STA	$6A

loc_76BB:				; CODE XREF: RAM:76DEvj
		LDA	#1
		LDX	#$47 ; 'G'
		JSR	$1872
		LDA	#1
		LDX	#$45 ; 'E'
		JSR	$1872
		DEC	$195F
		JSR	j_sub_408B
		LDX	#8

loc_76D1:				; CODE XREF: RAM:76DAvj
		LDA	$252

loc_76D4:				; CODE XREF: RAM:76D7vj
		CMP	$252
		BEQ	loc_76D4
		DEX
		BPL	loc_76D1
		DEC	$6A
		BPL	loc_76BB
		JMP	loc_798F
; ---------------------------------------------------------------------------

loc_76E3:				; CODE XREF: RAM:766F^j	RAM:76A5^j ...
		LDA	#0
		STA	$754A
		JSR	j_sub_2E31
		LDA	$630F
		CMP	$7548
		BNE	loc_7715
		LDA	$6310
		CMP	$7549
		BNE	loc_7715
		ldxy	off_7A5F
		LDA	#1
		JSR	j_RND_A
		JSR	j_sub_2C9B
		JSR	sub_7A37
		DEC	$754C
		LDA	#6
		JSR	j_sub_2BFC
		JMP	loc_798F
; ---------------------------------------------------------------------------

loc_7715:				; CODE XREF: RAM:76F1^j	RAM:76F9^j ...
		LDA	$754C
		CMP	#$78 ; 'x'
		BCS	loc_7746
		dldi	off_16, $7DB2
		JSR	sub_7A37
		LDA	#$C
		JSR	j_sub_2BFC
		LDA	#$FF
		STA	$754A
		LDA	#$78 ; 'x'
		STA	$754C
		LDA	$754E
		CLC
		ADC	#5
		BCC	loc_7740
		LDA	#$FF

loc_7740:				; CODE XREF: RAM:773C^j
		STA	$754E
		JMP	loc_798F
; ---------------------------------------------------------------------------

loc_7746:				; CODE XREF: RAM:771A^j
		LDA	$6C
		CMP	#3
		BCC	loc_776D
		dldi	off_16, $7BBB
		JSR	sub_7A37
		LDA	#8
		JSR	j_sub_2BFC
		JSR	j_sub_2E31
		LDX	#1

loc_7761:				; CODE XREF: RAM:7768vj
		LDA	$630F,X
		STA	$7548,X
		DEX
		BPL	loc_7761
		JMP	loc_798F
; ---------------------------------------------------------------------------

loc_776D:				; CODE XREF: RAM:774A^j
		LDA	$6C
		BNE	loc_77A5
		LDA	$754C
		CMP	#$7C ; '|'
		BCS	loc_7783
		dldi	off_16, str_7D37
		JMP	loc_77AD
; ---------------------------------------------------------------------------

loc_7783:				; CODE XREF: RAM:7776^j
		CMP	#$88
		BCC	loc_7796
		ldxy	off_7A69
		LDA	#1
		JSR	j_RND_A
		JSR	j_sub_2C9B
		JMP	loc_77AD
; ---------------------------------------------------------------------------

loc_7796:				; CODE XREF: RAM:7785^j
		ldxy	off_7A49
		LDA	#2
		JSR	j_RND_A
		JSR	j_sub_2C9B
		JMP	loc_77AD
; ---------------------------------------------------------------------------

loc_77A5:				; CODE XREF: RAM:776F^j
		dldi	off_16, str_7F74

loc_77AD:				; CODE XREF: RAM:7780^j	RAM:7793^j ...
		dmv	$6E, off_16

loc_77B5:				; CODE XREF: RAM:77E4vj
		dmv	off_16,	$6E
		JSR	sub_7A37

loc_77C0:				; CODE XREF: RAM:77D9vj
		dldi	off_1977, loc_77CD
		JMP	$1806
; ---------------------------------------------------------------------------

loc_77CD:
		JSR	j_sub_262F
		AND	#2
		BEQ	loc_77D7
		JMP	loc_798F
; ---------------------------------------------------------------------------

loc_77D7:				; CODE XREF: RAM:77D2^j
		LDA	$31
		BMI	loc_77C0
		CMP	#'1'
		BNE	loc_77E2
		JMP	loc_77E9
; ---------------------------------------------------------------------------

loc_77E2:				; CODE XREF: RAM:77DD^j
		CMP	#'2'
		BNE	loc_77B5
		JMP	loc_7A20
; ---------------------------------------------------------------------------

loc_77E9:				; CODE XREF: RAM:77DF^j
		JSR	sub_7A3C
		JSR	$189F
		JSR	j_sub_408B
		LDX	#$F

loc_77F4:				; CODE XREF: RAM:7820vj
		LDA	$6494,X
		CMP	#2
		BNE	loc_781F
		LDA	$64A4,X
		CMP	I_LOC_X
		BNE	loc_781F
		LDA	$64B4,X
		CMP	I_LOC_Y
		BNE	loc_781F
		LDA	$64C4,X
		CMP	I_LOC_Z
		BNE	loc_781F
		LDA	$64D4,X
		STA	$4B
		STA	$66
		INC	$6C
		JMP	loc_7825
; ---------------------------------------------------------------------------

loc_781F:				; CODE XREF: RAM:77F9^j	RAM:7801^j ...
		DEX
		BPL	loc_77F4
		JMP	loc_7715
; ---------------------------------------------------------------------------

loc_7825:				; CODE XREF: RAM:781C^j
		JSR	$1887
		LDA	off_41
		CLC
		ADC	#6
		STA	byte_818C
		LDA	off_41+1
		ADC	#0
		STA	byte_818D
		LDY	#6
		ldxy	$7A63
		LDA	#2
		JSR	j_RND_A
		JSR	j_sub_2C9B
		JSR	sub_7A37
		JSR	$183C
		JSR	sub_7A3C
		mv	$4b, $66
		JSR	$1887
		LDY	#0
		LDA	(off_41),Y
		CMP	#0
		BNE	loc_78C1
		JSR	$1896
		LDY	#0
		LDA	(off_43),Y
		CMP	#9
		BNE	loc_7894
		LDY	#1
		LDA	(off_43),Y
		STA	$6B
		INY
		LDA	(off_43),Y
		STA	$6A
		LDA	$6B
		BNE	loc_7891
		LDA	$6A
		CMP	$754E
		BCS	loc_7891
		dldi	off_16, $7AF7
		JSR	sub_7A37
		LDA	#6
		JSR	j_sub_2BFC
		JMP	loc_76E3
; ---------------------------------------------------------------------------

loc_7891:				; CODE XREF: RAM:7875^j	RAM:787C^j
		JMP	loc_79A0
; ---------------------------------------------------------------------------

loc_7894:				; CODE XREF: RAM:7866^j
		CMP	#6
		BCS	loc_789B
		JMP	loc_793B
; ---------------------------------------------------------------------------

loc_789B:				; CODE XREF: RAM:7896^j
		CMP	#$C
		BCC	loc_78A2
		JMP	loc_793B
; ---------------------------------------------------------------------------

loc_78A2:				; CODE XREF: RAM:789D^j
		JSR	sub_7A3C
		LDA	#$10
		LDY	#2
		STA	(off_41),Y
		JSR	j_sub_408B
		dldi	off_16, $7B8F
		JSR	sub_7A37
		LDA	#6
		JSR	j_sub_2BFC
		JMP	loc_76E3
; ---------------------------------------------------------------------------

loc_78C1:				; CODE XREF: RAM:785B^j
		CMP	#7
		BNE	loc_793B
		JSR	$1896
		LDY	#0
		LDA	(off_43),Y
		CMP	#2
		BNE	loc_793B
		INY
		LDA	(off_43),Y
		CMP	#2
		BNE	loc_793B
		LDA	#$10
		LDY	#2
		STA	(off_41),Y
		JSR	j_sub_408B
		LDA	$754C
		CLC
		ADC	#$A
		BCC	loc_78EA
		LDA	#$FF

loc_78EA:				; CODE XREF: RAM:78E6^j
		STA	$754C
		LDA	#0
		ldxy	$7508
		SEC
		JSR	j_SETBIT
		DEC	$195F
		dldi	off_16, byte_818E
		JSR	sub_7A37
		LDA	#6
		JSR	j_sub_2BFC
		LDA	#1
		STA	$754E
		LDA	#5
		LDX	#$4A
		JSR	j_ADDSTAT1
		LDA	#5
		LDX	#$52
		JSR	j_ADDSTAT1
		LDA	#5
		LDX	#$6A
		JSR	j_ADDSTAT1
		LDA	#$A
		LDX	#$7A
		JSR	j_ADDSTAT1
		LDX	#$85
		LDA	#5
		JSR	j_ADDSTAT1
		DEC	$195F
		JSR	j_sub_408B
		JMP	loc_76E3
; ---------------------------------------------------------------------------

loc_793B:				; CODE XREF: RAM:7898^j	RAM:789F^j ...
		LDA	#0
		STA	$6D
		DEC	$754C
		dldi	off_16, $809D
		LDY	#3
		LDA	(off_41),Y
		BEQ	loc_7962
		BMI	loc_7962
		dldi	off_16, $80D9
		INC	$754C
		INC	$754C
		DEC	$6D

loc_7962:				; CODE XREF: RAM:794E^j	RAM:7950^j
		JSR	sub_7A37
		JSR	$183C
		JSR	sub_7A3C
		LDA	#$10
		LDY	#2
		STA	(off_41),Y
		JSR	j_sub_408B
		BIT	$6D
		BMI	loc_798C
		ldxy	off_7A4F
		LDA	#2
		JSR	j_RND_A
		JSR	j_sub_2C9B
		JSR	sub_7A37
		LDA	#$A
		JSR	j_sub_2BFC

loc_798C:				; CODE XREF: RAM:7976^j
		JMP	loc_76E3
; ---------------------------------------------------------------------------

loc_798F:				; CODE XREF: RAM:76E0^j	RAM:7712^j ...
		LDX	#4

loc_7991:				; CODE XREF: RAM:7998vj
		LDA	$750D,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_7991
		STX	$AC00
		JMP	$180C
; ---------------------------------------------------------------------------

loc_79A0:				; CODE XREF: RAM:loc_7891^j
		JSR	sub_7A3C
		LDA	#$10
		LDY	#2
		STA	(off_41),Y
		JSR	j_sub_408B
		JSR	j_sub_2E31
		LDX	#1

loc_79B1:				; CODE XREF: RAM:79B8vj
		LDA	$630F,X
		STA	$7548,X
		DEX
		BPL	loc_79B1
		INC	$754D

loc_79BD:				; CODE XREF: RAM:79CFvj	RAM:79FEvj
		LDA	$754D
		ASL	A
		TAX
		LDA	$8202,X
		STA	$64
		LDA	$8203,X
		BNE	loc_79D1
		STA	$754D
		BEQ	loc_79BD

loc_79D1:				; CODE XREF: RAM:79CA^j
		STA	$65
		LDY	#0
		LDA	($64),Y
		STA	$62
		INY
		LDA	($64),Y
		STA	$63
		BEQ	loc_7A01
		INY
		LDA	($64),Y
		LDX	$63
		LDY	$62
		JSR	j_TESTBIT
		LDY	#2
		LDA	($64),Y
		BPL	loc_79F5
		BCC	loc_79F7
		JMP	loc_7A01
; ---------------------------------------------------------------------------

loc_79F5:				; CODE XREF: RAM:79EE^j
		BCC	loc_7A01

loc_79F7:				; CODE XREF: RAM:79F0^j
		LDY	#3
		LDA	($64),Y
		STA	$754D
		JMP	loc_79BD
; ---------------------------------------------------------------------------

loc_7A01:				; CODE XREF: RAM:79DE^j	RAM:79F2^j ...
		LDA	$64
		CLC
		ADC	#4
		STA	$68
		LDA	$65
		ADC	#0
		STA	$69
		ldxy	$7A55
		LDA	#1
		JSR	j_RND_A
		JSR	j_sub_2C9B
		JSR	sub_7A37
		JSR	$183C

loc_7A20:				; CODE XREF: RAM:77E6^j
		ldxy	$7A59
		LDA	#2
		JSR	j_RND_A
		JSR	j_sub_2C9B
		JSR	sub_7A37
		LDA	#6
		JSR	j_sub_2BFC
		JMP	loc_798F

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7A37:				; CODE XREF: RAM:769D^p	RAM:76B0^p ...
		LDX	$67
		JMP	j_sub_3C5C
; End of function sub_7A37


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7A3C:				; CODE XREF: RAM:loc_77E9^p RAM:784B^p ...
		dldi	off_16, $7A6D
		LDX	$67
		JMP	j_sub_3C5C
; End of function sub_7A3C

; ---------------------------------------------------------------------------

off_7A49:
		.WORD byte_7C14
		.WORD byte_7C5E
		.WORD byte_7CC5

off_7A4F:
		.WORD byte_8115
		.WORD byte_8115
		.WORD byte_814B
		.WORD byte_806D
		.WORD byte_8086
		.WORD byte_8023
		.WORD byte_803F
		.WORD byte_804E

off_7A5F:
		.WORD byte_7A6F
		.WORD byte_7AB5
		.WORD byte_7FB0
		.WORD byte_7FE6
		.WORD byte_7FE6

off_7A69:
		.WORD byte_7EB9
		.WORD byte_7F0B
byte_7A6D:	.BYTE	$A8,$FF

byte_7A6F:	MOVEXY	0,2		; DATA XREF: RAM:7A5F^o
		.BYTE	$A5,"I can give words of wisdom but once",$0D,$0D
		.BYTE	$A5,"per day.  Return tommorow.",$0D,$FF

byte_7AB5:	MOVEXY	0,2		; DATA XREF: RAM:7A61^o
		.BYTE	$A5,"You return too soon,",$0D,$0D
		.BYTE	$A5,"wait until tommorrow",$0D,$0D
		.BYTE	$A5,"for my wisdom!",$0D,$FF

		MOVEXY	0,1
		.BYTE	$A5,"I am sorry but your offering is not",$0D,$0D
		.BYTE	$A5,"enough for my wisdom.",$0D,$FF

		MOVEXY	0,1
		.BYTE	$A5,"I see you have returned.  Be more",$0D,$0D
		.BYTE	$A5,"respectful and you shall receive",$0D,$0D
		.BYTE	$A5,"knowledge.",$0D,$FF

		MOVEXY	0,2
		.BYTE	$A5,"I can only accept an offering of gold.",$0D,$FF

		MOVEXY	0,2
		.BYTE	$A5,"My patience with thee has ended.",$0D,$0D
		.BYTE	$A5,"Return tommorow with a more suitable",$0D,$0D
		.BYTE	$A5,"offering.",$0D,$FF

byte_7C14:	MOVEXY	0,1		; DATA XREF: RAM:7A49^o
		.BYTE	$A5,"Welcome to the Oracle.",$0D,$0D
		.BYTE	$A5,"What dost thou offer for my knowledge?",$0D
		MOVEXY	7,6
		STRSUB	aDoYou
byte_7C5E:	MOVEXY	0,0
		.BYTE	$A5,"You stand before the great and mighty",$0D,$0D
aOracle_WhatWil:.BYTE	$A5,"Oracle.  What will thee offer for",$0D,$0D
aWordsOfWisdomq:.BYTE	$A5,"words of wisdom?",$0D
		.BYTE	$A6,  7,	6
		.BYTE	$AC
		.WORD aDoYou		; "Do you ("
byte_7CC5:	.BYTE	$A6,  0,	0	; DATA XREF: RAM:7A4D^o
		.BYTE	$A5
aIAmTheAllKnowi:.BYTE	"I am the all-knowing Oracle, offer me"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aAGiftAndIfIAmP:.BYTE	"a gift and if I am pleased I will"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aRewardTheeWith:.BYTE	"reward thee with knowledge."
		.BYTE	$D
		.BYTE	$A6,  7,	6
		.BYTE	$AC
		.WORD aDoYou		; "Do you ("

str_7D37:
		MOVEXY	0,0
		.BYTE	$A5,"Foolish human, thou must make an",$0D,$0D
		.BYTE	$A5,"offering of sufficient value before I",$0D,$0D
		.BYTE	$A5,"will impart any of my wisdom to thee.",$0D
		.BYTE	$A6,  7,	6
		.BYTE	$AC
		.WORD aDoYou		; "Do you ("
		.BYTE	$A6,  0,	1
		.BYTE	$A5
aYouHaveAngered:.BYTE	"You have angered me enough!  I will"
		.BYTE	$D
		.BYTE	$A5
aTolerateThyPre:.BYTE	"tolerate thy presence no more for"
		.BYTE	$D
		.BYTE	$A5
aAtLeastAMonth:	.BYTE	"at least a month!"
		.BYTE	$D
		.BYTE	$A5
aIfThouReturnSo:.BYTE	"If thou return sooner prepare to face"
		.BYTE	$D
		.BYTE	$A5
aTheConsequence:.BYTE	"the consequences!"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
		.BYTE	$A1
		.BYTE	$7F ; 
aBegone:	.BYTE	" BEGONE! "
		.BYTE	$7F ; 
		.BYTE	$A0
		.BYTE	$D
		.BYTE	$FF

		.BYTE	$A6,  0,	0
		.BYTE	$A5
aYouWereToldNot:.BYTE	"You were told not to return for a"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aMonthNowYouMus:.BYTE	"month!  Now you must face the wrath"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aOfTheOracle:	.BYTE	"of the Oracle!"
		.BYTE	$D
		.BYTE	$FF
byte_7EB9:	.BYTE	$A6,  0,	0	; DATA XREF: RAM:7A69^o
		.BYTE	$A5
aGreetings:	.BYTE	"Greetings "
		.BYTE	$B3
		.WORD $6321
		.BYTE	$19
		.BYTE	","
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aForASmallOffer:.BYTE	"for a small offering I will share"
		.BYTE	$D
		.BYTE	$A5
aSomeOfMyWisdom:.BYTE	"some of my wisdom."
		.BYTE	$D
		.BYTE	$A6,  7,	6
		.BYTE	$AC
		.WORD aDoYou		; "Do you ("
byte_7F0B:	.BYTE	$A6,  0,	0	; DATA XREF: RAM:7A6B^o
		.BYTE	$A5
aWelcome:	.BYTE	"Welcome "
		.BYTE	$B3
		.WORD $6321
		.BYTE	$19
		.BYTE	",",$0D,$0D
aIHaveExpectedT:.BYTE	$A5,"I have expected thee.  As usual I shall",$0D,$0D
aImpartInsightF:.BYTE	$A5,"impart insight for a small offering.",$0D
		.BYTE	$A6,  7,	6
		.BYTE	$AC
		.WORD aDoYou

str_7F74:
		.BYTE	$A6,  7,	2
aDoYou:		.BYTE	"Do you "        ; DATA XREF: RAM:7C5C^o RAM:7CC3^o ...
		MenuItem "1","make an offering"
		.BYTE	$D
aOr:		.BYTE	"           or "
		MenuItem "2","leave?"
		.BYTE	$FF
byte_7FB0:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:7A63^o
		.BYTE	$A5
aYouHurlThe:	.BYTE	"You hurl the "
		.BYTE	$B4
		.WORD byte_818C
		.BYTE	$1B
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aIntoTheFlaming:.BYTE	"into the flaming Oracle pit."
		.BYTE	$D
		.BYTE	$FF
byte_7FE6:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:7A65^o	RAM:7A67^o
		.BYTE	$A5
aYouTossThe:	.BYTE	"You toss the "
		.BYTE	$B4
		.WORD byte_818C
		.BYTE	$1B
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aIntoTheFlamesB:.BYTE	"into the flames beneath the Oracle.",$D
		.BYTE	$FF
byte_8023:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:7A59^o
		.BYTE	$A5
aFareTheeWellHu:.BYTE	"Fare thee well, human!"
		.BYTE	$D
		.BYTE	$FF
byte_803F:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:7A5B^o
		.BYTE	$A5
aFarewell_:	.BYTE	"Farewell."
		.BYTE	$D
		.BYTE	$FF
byte_804E:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:7A5D^o
		.BYTE	$A5
aMayTheGodsBeWi:.BYTE	"May the gods be with you!"
		.BYTE	$D
		.BYTE	$FF
byte_806D:	.BYTE	$A6,  0,	0	; DATA XREF: RAM:7A55^o
		.BYTE	$A5
aTheOracleSays:	.BYTE	"The oracle says:"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$AD
		.WORD $68
byte_8086:	.BYTE	$A6,  0,	0	; DATA XREF: RAM:7A57^o
		.BYTE	$A5
aHeedMyWisdom:	.BYTE	"Heed my wisdom:"
		.BYTE	$D
		.BYTE	$AD
		.WORD $68
		.BYTE	$A6,  0,	1
		.BYTE	$A5
aTheFlamesFlare:.BYTE	"The flames flare slightly as the"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
		.BYTE	$B4
		.WORD byte_818C
		.BYTE	$1B
aIs:		.BYTE	" is"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aConsumed_:	.BYTE	"consumed."
		.BYTE	$D
		.BYTE	$FF
		.BYTE	$A6,  0,	1
		.BYTE	$A5
aTheFlamesBlaze:.BYTE	"The flames blaze fiercely as the"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
		.BYTE	$B4
		.WORD byte_818C
		.BYTE	$1B
aIs_0:		.BYTE	" is"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aConsumed:	.BYTE	"consumed!",$D
		.BYTE	$FF
byte_8115:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:7A4F^o	RAM:7A51^o
		.BYTE	$A5
aIHaveNoInteres:.BYTE	"I have no interest in your worthless"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aOffering:	.BYTE	"offering!"
		.BYTE	$D
		.BYTE	$FF
byte_814B:	.BYTE	$A6,  0,	2	; DATA XREF: RAM:7A53^o
		.BYTE	$A5
aTryAgainWhenYo:.BYTE	"Try again when you have something",$0D,$0D
aWorthwhileToOf:.BYTE	$A5,"worthwhile to offer me!",$0D,$FF
byte_818C:	.BYTE	0			; DATA XREF: RAM:782D^w	RAM:7FC2^o ...
byte_818D:	.BYTE	0			; DATA XREF: RAM:7834^w
byte_818E:	.BYTE	$A6,  0,	1
aYouHaveJustDes:.BYTE	$A5,"You have just destroyed the ring of",$0D,$0D
aEvilForRidding:.BYTE	$A5,"Evil!  For ridding the world of",$0D,$0D
aThisEvilArtifa:.BYTE	$A5,"this evil artifact I shall reward you!",$0D,$FF
		.WORD word_821A
		.WORD word_826A
		.WORD word_8359
		.WORD word_838D
		.WORD word_83F8
		.WORD word_8484
		.WORD word_84FE
		.WORD word_8575
		.WORD word_85CF
		.WORD word_8600
		.WORD word_869C
		.WORD 0
word_821A:	.WORD $7508		; DATA XREF: RAM:8202^o
		.WORD $113
		.BYTE	$D
		.BYTE	$A5
aSeekThePrisonU:.BYTE	"Seek the prison under the palace."
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aFreeThePrisone:.BYTE	"Free the prisoner with a silver key."
		.BYTE	$D
		.BYTE	$FF
word_826A:	.WORD $7508		; DATA XREF: RAM:8204^o
		.WORD $300
		.BYTE	$A5
aBringMeTheRing:.BYTE	"Bring me the ring that the Goblins &"
		.BYTE	$D
		.BYTE	$A5
aTrollsWarOver_:.BYTE	"Trolls war over.  The Goblins are to"
		.BYTE	$D
		.BYTE	$A5
aTheNorthwestAn:.BYTE	"the Northwest and the Trolls are to the"
		.BYTE	$D
		.BYTE	$A5
aSouth_TheSmith:.BYTE	"South.  The Smithy on the second level"
		.BYTE	$D
		.BYTE	$A5
aWillReforgeThe:.BYTE	"will reforge the ring halves.  Be quick"
		.BYTE	$D
		.BYTE	$A5
aReturningTheRi:.BYTE	"returning the ring for it is evil.",$D
		.BYTE	$FF
word_8359:	.WORD 0			; DATA XREF: RAM:8206^o
		.WORD $300
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aTheFutureIsClo:.BYTE	"The future is cloudy, try again"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
		.BYTE	"tomorrow."
		.BYTE	$D
		.BYTE	$FF
word_838D:	.WORD	$7508		; DATA XREF: RAM:8208^o
		.WORD	$401
		.BYTE	$D
aOnTheSecondLev:.BYTE	$A5,"On the second level find the one in",$0D
aTheRoomOfGlass:.BYTE	$A5,"the room of glass.  Don't start off",$0D
aWithoutATouchO:.BYTE	$A5,"without a touch of class.",$0D,$FF

word_83F8:	.WORD	$7508		; DATA XREF: RAM:820A^o
		.WORD	$514
		.BYTE	$A5
aCrossTheRiverS:.BYTE	"Cross the river Stonz at midnight.  On"
		.BYTE	$D
		.BYTE	$A5
aTheSouthSideOf:.BYTE	"the south side of the river awaits"
		.BYTE	$D
		.BYTE	$A5
aAKing_PassTheS:.BYTE	"a king.  Pass the seven who guard to"
		.BYTE	$D
		.BYTE	$A5
aFurtherYourCau:.BYTE	"further your cause."
		.BYTE	$D
		.BYTE	$FF
word_8484:	.WORD $7508		; DATA XREF: RAM:820C^o
		.WORD $607
		.BYTE	$D
		.BYTE	$A5
aAFearsomeFaceL:.BYTE	"A fearsome face lurks by the Dragon's"
		.BYTE	$D
		.BYTE	$A5
aLair_AnswerHis:.BYTE	"lair.  Answer his queries for a"
		.BYTE	$D
		.BYTE	$A5
aValuableAlly_:	.BYTE	"valuable ally."
		.BYTE	$D
		.BYTE	$A5
aRememberXebecS:.BYTE	"Remember ",$22,"Xebec's Demise",$22,"."
		.BYTE	$D
		.BYTE	$FF
word_84FE:	.WORD $7508		; DATA XREF: RAM:820E^o
		.WORD $715
		.BYTE	$D
		.BYTE	$A5
aAnswerThreeOfT:.BYTE	"Answer three of the Riddler's riddles"
		.BYTE	$D
		.BYTE	$A5
aToHelpYouFindW:.BYTE	"to help you find what the Dragon"
		.BYTE	$D
		.BYTE	$A5
aSeeksForTheDra:.BYTE	"seeks, for the Dragon is a mighty foe."
		.BYTE	$D
		.BYTE	$FF
word_8575:	.WORD $7508		; DATA XREF: RAM:8210^o
		.WORD $818
		.BYTE	$D
		.BYTE	$A5
aReturnAllThree:.BYTE	"Return all three staff pieces to"
		.BYTE	$D
		.BYTE	$A5
aAcrinimirilToR:.BYTE	"Acrinimiril to recieve the key to"
		.BYTE	$D
		.BYTE	$A5
aDeathSDoor_:	.BYTE	"Death's Door."
		.BYTE	$D
		.BYTE	$FF
word_85CF:	.WORD $7508		; DATA XREF: RAM:8212^o
		.WORD $901
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
aAMirrorIsProof:.BYTE	"A mirror is proof against a stony stare."
		.BYTE	$D
		.BYTE	$FF
word_8600:	.WORD $7508		; DATA XREF: RAM:8214^o
		.WORD $A83
		.BYTE	$D
		.BYTE	$A5
aCongratulation:.BYTE	"Congratulations!  The aliens no longer"
		.BYTE	$D
		.BYTE	$A5
aGainAmusementF:.BYTE	"gain amusement from The Dungeon!"
		.BYTE	$D
		.BYTE	$A5
aKeepUpTheGoodW:.BYTE	"Keep up the good work and you shall"
		.BYTE	$D
		.BYTE	$A5
aBeAbleToReturn:.BYTE	"be able to return to your home world."
		.BYTE	$D
		.BYTE	$FF
word_869C:	.WORD 0			; DATA XREF: RAM:8216^o
		.WORD 0
		.BYTE	$D
		.BYTE	$A5
aAlasIHaveToldY:.BYTE	"Alas, I have told you all that I know"
		.BYTE	$D
		.BYTE	$A5
aAboutYourFutur:.BYTE	"about your future. The future is in"
		.BYTE	$D
		.BYTE	$A5
aYourHandsNow_:	.BYTE	"your hands now."
		.BYTE	$D
		.BYTE	$FF
unk_86FF:	.BYTE	$70 ; p		; DATA XREF: RAM:872Fvo
		.BYTE	$70 ; p
		.BYTE	$30 ; 0
		.BYTE	$42
		.WORD $400
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	6
		.BYTE	0
		.BYTE	$44
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
		.WORD	unk_86FF
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

loc_8795:				; CODE XREF: RAM:87BAvj
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
		BPL	loc_8795
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

loc_87D7:				; CODE XREF: RAM:760A^j
		LDA	#$7F ; ''
		STA	$253
		LDA	#$FF
		STA	$254
		LDA	#$86 ; 'Ü'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_87EA:				; CODE XREF: RAM:87F8vj
		LDY	#$C

loc_87EC:				; CODE XREF: RAM:87F3vj
		STA	$BB4C,X
		DEX
		BMI	loc_87FA
		DEY
		BNE	loc_87EC
		CLC
		ADC	#4
		BNE	loc_87EA

loc_87FA:				; CODE XREF: RAM:87F0^j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_88F2
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_88F2
		LDA	#0
		STA	loc_8820+1
		LDA	#$BD ; 'Ω'
		STA	loc_8820+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_8820:				; CODE XREF: RAM:8824vj	RAM:882Avj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_8820
		INC	loc_8820+2
		DEY
		BNE	loc_8820
		LDX	#7

loc_882E:				; CODE XREF: RAM:8832vj
		STA	$D000,X
		DEX
		BPL	loc_882E
		LDA	#3
		TAX

loc_8837:				; CODE XREF: RAM:883Bvj
		STA	$D008,X
		DEX
		BPL	loc_8837
		ldi	SIZEM, $FF
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_8865:				; CODE XREF: RAM:888Bvj
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_886D:				; CODE XREF: RAM:8878vj
		LSR	4
		BCC	loc_8877
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_8877:				; CODE XREF: RAM:886F^j
		DEY
		BPL	loc_886D
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_8885
		INC	$A

loc_8885:				; CODE XREF: RAM:8881^j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_8865
		LDA	#$2D ; '-'
		STA	off_7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_889D:				; CODE XREF: RAM:88AEvj
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
		BCC	loc_889D

loc_88B0:				; CODE XREF: RAM:88CDvj
		LDX	#0

loc_88B2:				; CODE XREF: RAM:88CBvj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_88B8:				; CODE XREF: RAM:88BDvj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_88B8
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_88CF
		CPX	#$A
		BCC	loc_88B2
		BCS	loc_88B0

loc_88CF:				; CODE XREF: RAM:88C7^j
		LDX	#3
		LDA	$BC5F

loc_88D4:				; CODE XREF: RAM:88D8vj
		STA	COLPM0,X
		DEX
		BPL	loc_88D4
		dldi	off_24A, $8731
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_88F2:				; CODE XREF: RAM:8802^p	RAM:880D^p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_88FC
		INC	8

loc_88FC:				; CODE XREF: RAM:88F8^j
		CMP	#$1B
		BEQ	loc_890B
		STA	(9),Y
		INC	9
		BNE	loc_8908
		INC	$A

loc_8908:				; CODE XREF: RAM:8904^j
		JMP	loc_88F2
; ---------------------------------------------------------------------------

loc_890B:				; CODE XREF: RAM:88FE^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_8913
		INC	off_7+1

loc_8913:				; CODE XREF: RAM:890F^j
		CMP	#$FF
		BNE	loc_8918
		RTS
; ---------------------------------------------------------------------------

loc_8918:				; CODE XREF: RAM:8915^j
		STA	byte_8952
		ADC	off_9
		STA	loc_892B+1
		LDA	off_9+1
		ADC	#0
		CMP	#$14
		BNE	loc_8930
		LDA	byte_8952

loc_892B:				; DATA XREF: RAM:891D^w
		SBC	#$FF
		STA	byte_8952

loc_8930:				; CODE XREF: RAM:8926^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_8938
		INC	off_7+1

loc_8938:				; CODE XREF: RAM:8934^j
		LDY	byte_8952

loc_893B:				; CODE XREF: RAM:893Evj
		STA	(off_9),Y
		DEY
		BPL	loc_893B
		INC	byte_8952
		LDA	byte_8952
		CLC
		ADC	off_9
		STA	off_9
		BCC	loc_894F
		INC	off_9+1

loc_894F:				; CODE XREF: RAM:894B^j
		JMP	loc_88F2
; ---------------------------------------------------------------------------
byte_8952:	.BYTE	0			; DATA XREF: RAM:loc_8918^w RAM:8928^r ...
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$11
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	6
		.BYTE	0
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	6
		.BYTE	0
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	5
		.BYTE	0
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	5
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	0
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	0
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	 $F
		.BYTE	5
		.BYTE	5
		.BYTE	1
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FB ; ˚
		.BYTE	$59 ; Y
		.BYTE	$59 ; Y
		.BYTE	$69 ; i
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	$5F ; _
		.BYTE	$50 ; P
		.BYTE	$40 ; @
		.BYTE	$1B
		.BYTE	5
		.BYTE	$FF
		.BYTE	0
		.BYTE	0
		.BYTE	$1B
		.BYTE	5
		.BYTE	$FF
		.BYTE	0
		.BYTE	0
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FF
		.BYTE	0
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FF
		.BYTE	0
		.BYTE	$1B
		.BYTE	$26 ; &
		.BYTE	$FF
		.BYTE	0
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FF
		.BYTE	0
		.BYTE	$1B
		.BYTE	5
		.BYTE	$FF
		.BYTE	0
		.BYTE	0
		.BYTE	$1B
		.BYTE	5
		.BYTE	$FF
		.BYTE	0
		.BYTE	0
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	$F5 ; ı
		.BYTE	5
		.BYTE	1
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$FC ; ¸
		.BYTE	$50 ; P
		.BYTE	$50 ; P
		.BYTE	$40 ; @
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	4
		.BYTE	0
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	5
		.BYTE	0
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	5
		.BYTE	0
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	6
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	$1B
		.BYTE	6
		.BYTE	0
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$44 ; D
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$11
		.BYTE	$1B
		.BYTE	$35 ; 5
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	8
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	$AC ; ¨
		.BYTE	$AC ; ¨
		.BYTE	$BE ; æ
		.BYTE	$BE ; æ
		.BYTE	$FE ; ˛
		.BYTE	$69 ; i
		.BYTE	$69 ; i
		.BYTE	$65 ; e
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A5 ; •
		.BYTE	$95 ; ï
		.BYTE	$95 ; ï
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$D6 ; ÷
		.BYTE	$D6 ; ÷
		.BYTE	$DA ; ⁄
		.BYTE	$DA ; ⁄
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	0
		.BYTE	8
		.BYTE	8
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	$2A ; *
		.BYTE	$1B
		.BYTE	4
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	0
		.BYTE	$20
		.BYTE	$28 ; (
		.BYTE	$28 ; (
		.BYTE	8
		.BYTE	8
		.BYTE	 $A
		.BYTE	$2A ; *
		.BYTE	$2A ; *
		.BYTE	$1B
		.BYTE	6
		.BYTE	0
		.BYTE	$80 ; Ä
		.BYTE	$1B
		.BYTE	7
		.BYTE	0
		.BYTE	 $E
		.BYTE	$3E ; >
		.BYTE	$F8 ; ¯
		.BYTE	$3E ; >
		.BYTE	 $F
		.BYTE	$3E ; >
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$15
		.BYTE	$95 ; ï
		.BYTE	$95 ; ï
		.BYTE	$15
		.BYTE	$15
		.BYTE	$1B
		.BYTE	2
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	4
		.BYTE	$54 ; T
		.BYTE	$40 ; @
		.BYTE	$40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$20
		.BYTE	$A0 ; †
		.BYTE	$1B
		.BYTE	 $B
		.BYTE	0
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$32 ; 2
		.BYTE	$3A ; :
		.BYTE	3
		.BYTE	 $B
		.BYTE	$2F ; /
		.BYTE	$2C ; ,
		.BYTE	$AC ; ¨
		.BYTE	$BC ; º
		.BYTE	$B0 ; ∞
		.BYTE	$B0 ; ∞
		.BYTE	$1B
		.BYTE	5
		.BYTE	0
		.BYTE	$20
		.BYTE	$20
		.BYTE	$1B
		.BYTE	5
		.BYTE	0
		.BYTE	 $C
		.BYTE	 $C
		.BYTE	$1B
		.BYTE	9
		.BYTE	$55 ; U
		.BYTE	$5D ; ]
		.BYTE	$5D ; ]
		.BYTE	$5F ; _
		.BYTE	$5F ; _
		.BYTE	$57 ; W
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$1B
		.BYTE	3
		.BYTE	$C0 ; ¿
		.BYTE	$1B
		.BYTE	2
		.BYTE	$F0 ; 
		.BYTE	$1B
		.BYTE	2
		.BYTE	0
		.BYTE	$1B
		.BYTE	4
		.BYTE	$30 ; 0
		.BYTE	$1B
		.BYTE	$2F ; /
		.BYTE	0
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$44 ; D
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$11
		.BYTE	$1B
		.BYTE	$28 ; (
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE	$1B
		.BYTE	4
		.BYTE	0
		.BYTE	8
		.BYTE	 $A
		.BYTE	$8A ; ä
		.BYTE	$8A ; ä
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	2
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$BE ; æ
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$95 ; ï
		.BYTE	$A5 ; •
		.BYTE	$AB ; ´
		.BYTE	$EB ; Î
		.BYTE	$EB ; Î
		.BYTE	$1B
		.BYTE	2
		.BYTE	$EF ; Ô
		.BYTE	$F9 ; ˘
		.BYTE	$EA ; Í
		.BYTE	$E9 ; È
		.BYTE	$E9 ; È
		.BYTE	$A9 ; ©
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A5 ; •
		.BYTE	$2C ; ,
		.BYTE	$2F ; /
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AF ; Ø
		.BYTE	$2B ; +
		.BYTE	$2B ; +
		.BYTE	 $B
		.BYTE	2
		.BYTE	2
		.BYTE	 $A
		.BYTE	$2A ; *
		.BYTE	$2B ; +
		.BYTE	$2F ; /
		.BYTE	$EF ; Ô
		.BYTE	$FF
		.BYTE	$2E ; .
		.BYTE	$AE ; Æ
		.BYTE	$BE ; æ
		.BYTE	$BE ; æ
		.BYTE	$FE ; ˛
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$80 ; Ä
		.BYTE	$83 ; É
		.BYTE	$83 ; É
		.BYTE	3
		.BYTE	$1B
		.BYTE	2
		.BYTE	$2F ; /
		.BYTE	$AF ; Ø
		.BYTE	$1B
		.BYTE	2
		.BYTE	$C0 ; ¿
		.BYTE	$C3 ; √
		.BYTE	3
		.BYTE	 $F
		.BYTE	$FF
		.BYTE	$FA ; ˙
		.BYTE	$3E ; >
		.BYTE	$3E ; >
		.BYTE	$2F ; /
		.BYTE	$2F ; /
		.BYTE	$2B ; +
		.BYTE	$AB ; ´
		.BYTE	$AE ; Æ
		.BYTE	$BA ; ∫
		.BYTE	$17
		.BYTE	$97 ; ó
		.BYTE	$9F ; ü
		.BYTE	$AF ; Ø
		.BYTE	$ED ; Ì
		.BYTE	$FD ; ˝
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$1B
		.BYTE	5
		.BYTE	$54 ; T
		.BYTE	$A4 ; §
		.BYTE	$A8 ; ®
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$A3 ; £
		.BYTE	$AB ; ´
		.BYTE	$1B
		.BYTE	2
		.BYTE	$2B ; +
		.BYTE	$2A ; *
		.BYTE	$1B
		.BYTE	3
		.BYTE	$C0 ; ¿
		.BYTE	0
		.BYTE	0
		.BYTE	$C0 ; ¿
		.BYTE	$F0 ; 
		.BYTE	$3A ; :
		.BYTE	$3E ; >
		.BYTE	 $E
		.BYTE	 $E
		.BYTE	 $F
		.BYTE	$23 ; #
		.BYTE	$23 ; #
		.BYTE	$A2 ; ¢
		.BYTE	$1B
		.BYTE	2
		.BYTE	$BC ; º
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$EF ; Ô
		.BYTE	$EF ; Ô
		.BYTE	$FE ; ˛
		.BYTE	8
		.BYTE	8
		.BYTE	$20
		.BYTE	$A0 ; †
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$B3 ; ≥
		.BYTE	$B3 ; ≥
		.BYTE	 $C
		.BYTE	$3C ; <
		.BYTE	$30 ; 0
		.BYTE	$30 ; 0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$F0 ; 
		.BYTE	$C0 ; ¿
		.BYTE	$65 ; e
		.BYTE	$65 ; e
		.BYTE	$A5 ; •
		.BYTE	$A5 ; •
		.BYTE	$69 ; i
		.BYTE	$69 ; i
		.BYTE	$6A ; j
		.BYTE	$6A ; j
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$5D ; ]
		.BYTE	$7D ; }
		.BYTE	$75 ; u
		.BYTE	$F5 ; ı
		.BYTE	$F5 ; ı
		.BYTE	$FD ; ˝
		.BYTE	$FC ; ¸
		.BYTE	$1B
		.BYTE	3
		.BYTE	$3E ; >
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$1B
		.BYTE	$2F ; /
		.BYTE	0
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$44 ; D
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$52 ; R
		.BYTE	$3D ; =
		.BYTE	$FF
		.BYTE	$F7 ; ˜
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$7E ; ~
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$A8 ; ®
		.BYTE	$59 ; Y
		.BYTE	$58 ; X
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$5A ; Z
		.BYTE	$55 ; U
		.BYTE	$95 ; ï
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$99 ; ô
		.BYTE	$4A ; J
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$D9 ; Ÿ
		.BYTE	$EA ; Í
		.BYTE	$AB ; ´
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FD ; ˝
		.BYTE	$E0 ; ‡
		.BYTE	$7F ; 
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$7F ; 
		.BYTE	$FC ; ¸
		.BYTE	 $D
		.BYTE	$FF
		.BYTE	$F7 ; ˜
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$EB ; Î
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$A8 ; ®
		.BYTE	$59 ; Y
		.BYTE	$59 ; Y
		.BYTE	$56 ; V
		.BYTE	$55 ; U
		.BYTE	$56 ; V
		.BYTE	$65 ; e
		.BYTE	$95 ; ï
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$11
		.BYTE	$1B
		.BYTE	$2F ; /
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$A3 ; £
		.BYTE	$1B
		.BYTE	2
		.BYTE	$2B ; +
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$CA ;  
		.BYTE	$C2 ; ¬
		.BYTE	$F2 ; Ú
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$9D ; ù
		.BYTE	$BD ; Ω
		.BYTE	$BD ; Ω
		.BYTE	$F5 ; ı
		.BYTE	$E5 ; Â
		.BYTE	$E9 ; È
		.BYTE	$A9 ; ©
		.BYTE	$AA ; ™
		.BYTE	 $A
		.BYTE	$CA ;  
		.BYTE	$CB ; À
		.BYTE	$FB ; ˚
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$BB ; ª
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$EF ; Ô
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$8F ; è
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$1B
		.BYTE	2
		.BYTE	$3F ; ?
		.BYTE	$EA ; Í
		.BYTE	$EF ; Ô
		.BYTE	$EB ; Î
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$1B
		.BYTE	$15
		.BYTE	$AA ; ™
		.BYTE	$3A ; :
		.BYTE	$3A ; :
		.BYTE	$BE ; æ
		.BYTE	$AE ; Æ
		.BYTE	$AE ; Æ
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$1B
		.BYTE	2
		.BYTE	$BC ; º
		.BYTE	$FC ; ¸
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$F2 ; Ú
		.BYTE	$FE ; ˛
		.BYTE	$A2 ; ¢
		.BYTE	$20
		.BYTE	$2C ; ,
		.BYTE	$AC ; ¨
		.BYTE	$AC ; ¨
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$FE ; ˛
		.BYTE	$BE ; æ
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$2B ; +
		.BYTE	$EA ; Í
		.BYTE	$CA ;  
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$C0 ; ¿
		.BYTE	$C2 ; ¬
		.BYTE	2
		.BYTE	 $B
		.BYTE	 $B
		.BYTE	$2F ; /
		.BYTE	$2F ; /
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$EB ; Î
		.BYTE	$EB ; Î
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$FF
		.BYTE	$EF ; Ô
		.BYTE	$EF ; Ô
		.BYTE	$EB ; Î
		.BYTE	$1B
		.BYTE	2
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$BE ; æ
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$F0 ; 
		.BYTE	$F0 ; 
		.BYTE	$B0 ; ∞
		.BYTE	$BC ; º
		.BYTE	$AC ; ¨
		.BYTE	$AC ; ¨
		.BYTE	$1B
		.BYTE	4
		.BYTE	0
		.BYTE	8
		.BYTE	8
		.BYTE	$28 ; (
		.BYTE	$1B
		.BYTE	$27 ; '
		.BYTE	0
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$44 ; D
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$11
		.BYTE	$1B
		.BYTE	$2F ; /
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	2
		.BYTE	2
		.BYTE	$1B
		.BYTE	2
		.BYTE	0
		.BYTE	$FE ; ˛
		.BYTE	$BE ; æ
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$AE ; Æ
		.BYTE	$BE ; æ
		.BYTE	$BE ; æ
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$1B
		.BYTE	2
		.BYTE	$EA ; Í
		.BYTE	$AE ; Æ
		.BYTE	$AE ; Æ
		.BYTE	$AF ; Ø
		.BYTE	$1B
		.BYTE	2
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$EB ; Î
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$EB ; Î
		.BYTE	$EB ; Î
		.BYTE	$FA ; ˙
		.BYTE	$FB ; ˚
		.BYTE	$FF
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$EB ; Î
		.BYTE	$FB ; ˚
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$1B
		.BYTE	6
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AF ; Ø
		.BYTE	$BC ; º
		.BYTE	$1B
		.BYTE	2
		.BYTE	$F1 ; Ò
		.BYTE	$C5 ; ≈
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$D5 ; ’
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$40 ; @
		.BYTE	$40 ; @
		.BYTE	3
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$FE ; ˛
		.BYTE	$4F ; O
		.BYTE	$53 ; S
		.BYTE	$D3 ; ”
		.BYTE	$D3 ; ”
		.BYTE	$14
		.BYTE	$1B
		.BYTE	3
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$3E ; >
		.BYTE	$BF ; ø
		.BYTE	$8F ; è
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$FB ; ˚
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$BE ; æ
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$BE ; æ
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$BA ; ∫
		.BYTE	$BE ; æ
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$BE ; æ
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$1B
		.BYTE	2
		.BYTE	$EA ; Í
		.BYTE	$E8 ; Ë
		.BYTE	$A8 ; ®
		.BYTE	$A0 ; †
		.BYTE	$20
		.BYTE	$A0 ; †
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$1B
		.BYTE	$2B ; +
		.BYTE	0
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$44 ; D
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$11
		.BYTE	$1B
		.BYTE	$32 ; 2
		.BYTE	0
		.BYTE	$1B
		.BYTE	2
		.BYTE	$80 ; Ä
		.BYTE	$A0 ; †
		.BYTE	$A0 ; †
		.BYTE	$1B
		.BYTE	2
		.BYTE	$2B ; +
		.BYTE	$2F ; /
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$BE ; æ
		.BYTE	$BE ; æ
		.BYTE	$1B
		.BYTE	2
		.BYTE	$EA ; Í
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$BE ; æ
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$AE ; Æ
		.BYTE	$BE ; æ
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$AE ; Æ
		.BYTE	$BE ; æ
		.BYTE	$FA ; ˙
		.BYTE	$BE ; æ
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$FF
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$EB ; Î
		.BYTE	$EF ; Ô
		.BYTE	$EF ; Ô
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$1B
		.BYTE	3
		.BYTE	$C5 ; ≈
		.BYTE	$1B
		.BYTE	2
		.BYTE	$F1 ; Ò
		.BYTE	$FC ; ¸
		.BYTE	 $F
		.BYTE	 $F
		.BYTE	 $C
		.BYTE	0
		.BYTE	$40 ; @
		.BYTE	$40 ; @
		.BYTE	$55 ; U
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	3
		.BYTE	$14
		.BYTE	$1B
		.BYTE	2
		.BYTE	$53 ; S
		.BYTE	$4F ; O
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$A0 ; †
		.BYTE	$1B
		.BYTE	3
		.BYTE	$BF ; ø
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$EB ; Î
		.BYTE	$EB ; Î
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AB ; ´
		.BYTE	$EF ; Ô
		.BYTE	$EF ; Ô
		.BYTE	$FF
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$BE ; æ
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$FB ; ˚
		.BYTE	$80 ; Ä
		.BYTE	$80 ; Ä
		.BYTE	$88 ; à
		.BYTE	8
		.BYTE	$E8 ; Ë
		.BYTE	$E8 ; Ë
		.BYTE	$E0 ; ‡
		.BYTE	$E0 ; ‡
		.BYTE	$1B
		.BYTE	$2F ; /
		.BYTE	0
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$44 ; D
		.BYTE	$11
		.BYTE	$1F
		.BYTE	$F5 ; ı
		.BYTE	$1B
		.BYTE	7
		.BYTE	$FF
		.BYTE	$2F ; /
		.BYTE	$FA ; ˙
		.BYTE	$AF ; Ø
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FA ; ˙
		.BYTE	$BF ; ø
		.BYTE	$FB ; ˚
		.BYTE	$FC ; ¸
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$FA ; ˙
		.BYTE	$AA ; ™
		.BYTE	$FA ; ˙
		.BYTE	$AE ; Æ
		.BYTE	$AA ; ™
		.BYTE	$5A ; Z
		.BYTE	$F5 ; ı
		.BYTE	$55 ; U
		.BYTE	$50 ; P
		.BYTE	0
		.BYTE	$1A
		.BYTE	$F6 ; ˆ
		.BYTE	$AA ; ™
		.BYTE	$B9 ; π
		.BYTE	$55 ; U
		.BYTE	$4D ; M
		.BYTE	$11
		.BYTE	$17
		.BYTE	$FC ; ¸
		.BYTE	$7F ; 
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FF
		.BYTE	$6F ; o
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$AB ; ´
		.BYTE	$FF
		.BYTE	$FB ; ˚
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$11
		.BYTE	$1B
		.BYTE	$2F ; /
		.BYTE	0
		.BYTE	$28 ; (
		.BYTE	$2A ; *
		.BYTE	$2A ; *
		.BYTE	 $A
		.BYTE	 $A
		.BYTE	2
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$BE ; æ
		.BYTE	$BE ; æ
		.BYTE	$AE ; Æ
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$FB ; ˚
		.BYTE	$FB ; ˚
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AF ; Ø
		.BYTE	$1B
		.BYTE	2
		.BYTE	$BE ; æ
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$BF ; ø
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$BE ; æ
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	$A0 ; †
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$BE ; æ
		.BYTE	$8F ; è
		.BYTE	 $F
		.BYTE	$3E ; >
		.BYTE	$BF ; ø
		.BYTE	$AE ; Æ
		.BYTE	$FE ; ˛
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$EB ; Î
		.BYTE	$EF ; Ô
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$15
		.BYTE	$C0 ; ¿
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$A0 ; †
		.BYTE	$A3 ; £
		.BYTE	$8F ; è
		.BYTE	$BF ; ø
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$FB ; ˚
		.BYTE	$BE ; æ
		.BYTE	$BE ; æ
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$EF ; Ô
		.BYTE	$FC ; ¸
		.BYTE	$BC ; º
		.BYTE	$B0 ; ∞
		.BYTE	$F0 ; 
		.BYTE	$AB ; ´
		.BYTE	$EB ; Î
		.BYTE	$EF ; Ô
		.BYTE	$2B ; +
		.BYTE	$2A ; *
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$EB ; Î
		.BYTE	$EB ; Î
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$BE ; æ
		.BYTE	$1B
		.BYTE	2
		.BYTE	$BF ; ø
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$A8 ; ®
		.BYTE	$AA ; ™
		.BYTE	$A0 ; †
		.BYTE	$80 ; Ä
		.BYTE	$A0 ; †
		.BYTE	$80 ; Ä
		.BYTE	$1B
		.BYTE	2
		.BYTE	0
		.BYTE	$FC ; ¸
		.BYTE	$1B
		.BYTE	$2F ; /
		.BYTE	0
		.BYTE	$1B
		.BYTE	$17
		.BYTE	$44 ; D
		.BYTE	$1B
		.BYTE	6
		.BYTE	$11
		.BYTE	0
		.BYTE	$1B
		.BYTE	6
		.BYTE	$11
		.BYTE	0
		.BYTE	$1B
		.BYTE	6
		.BYTE	$11
		.BYTE	$1B
		.BYTE	$16
		.BYTE	0
		.BYTE	 $F
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	0
		.BYTE	 $F
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	0
		.BYTE	0
		.BYTE	 $F
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	 $F
		.BYTE	$1B
		.BYTE	 $E
		.BYTE	$FF
		.BYTE	$FA ; ˙
		.BYTE	$1B
		.BYTE	2
		.BYTE	$F2 ; Ú
		.BYTE	$F0 ; 
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FC ; ¸
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$2A ; *
		.BYTE	$2A ; *
		.BYTE	$F3 ; Û
		.BYTE	$F3 ; Û
		.BYTE	$1B
		.BYTE	3
		.BYTE	$FF
		.BYTE	$FC ; ¸
		.BYTE	$A0 ; †
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A0 ; †
		.BYTE	$1B
		.BYTE	2
		.BYTE	$A8 ; ®
		.BYTE	$AA ; ™
		.BYTE	$FA ; ˙
		.BYTE	$AA ; ™
		.BYTE	$AB ; ´
		.BYTE	$EB ; Î
		.BYTE	$FA ; ˙
		.BYTE	$3E ; >
		.BYTE	$3F ; ?
		.BYTE	 $F
		.BYTE	$C3 ; √
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$1B
		.BYTE	2
		.BYTE	$EA ; Í
		.BYTE	$FA ; ˙
		.BYTE	$FB ; ˚
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FB ; ˚
		.BYTE	$FA ; ˙
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	$CA ;  
		.BYTE	$C0 ; ¿
		.BYTE	$C0 ; ¿
		.BYTE	$F3 ; Û
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$AA ; ™
		.BYTE	$AA ; ™
		.BYTE	$AE ; Æ
		.BYTE	$AE ; Æ
		.BYTE	$1B
		.BYTE	2
		.BYTE	$3C ; <
		.BYTE	$FF
		.BYTE	$AE ; Æ
		.BYTE	$AE ; Æ
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$8F ; è
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$FF
		.BYTE	$FB ; ˚
		.BYTE	$EA ; Í
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$EB ; Î
		.BYTE	$FB ; ˚
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$AB ; ´
		.BYTE	$EA ; Í
		.BYTE	$EA ; Í
		.BYTE	$EB ; Î
		.BYTE	$EB ; Î
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AA ; ™
		.BYTE	$C2 ; ¬
		.BYTE	$F2 ; Ú
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$BF ; ø
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$BE ; æ
		.BYTE	$EA ; Í
		.BYTE	$AA ; ™
		.BYTE	$AE ; Æ
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$F0 ; 
		.BYTE	$EE ; Ó
		.BYTE	$BE ; æ
		.BYTE	$BE ; æ
		.BYTE	$BA ; ∫
		.BYTE	$FA ; ˙
		.BYTE	$F2 ; Ú
		.BYTE	 $A
		.BYTE	$2A ; *
		.BYTE	$1B
		.BYTE	2
		.BYTE	$AF ; Ø
		.BYTE	$8F ; è
		.BYTE	$8F ; è
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$3F ; ?
		.BYTE	$1B
		.BYTE	7
		.BYTE	$FF
		.BYTE	$F0 ; 
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FF
		.BYTE	0
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$1B
		.BYTE	4
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	3
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	5
		.BYTE	0
		.BYTE	$F0 ; 
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	 $F
		.BYTE	0
		.BYTE	$1B
		.BYTE	6
		.BYTE	$44 ; D
		.BYTE	0
		.BYTE	$1B
		.BYTE	6
		.BYTE	$44 ; D
		.BYTE	0
		.BYTE	$1B
		.BYTE	6
		.BYTE	$44 ; D
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$40 ; @
		.BYTE	0
		.BYTE	$53 ; S
		.BYTE	3
		.BYTE	$1B
		.BYTE	3
		.BYTE	$57 ; W
		.BYTE	 $F
		.BYTE	$1B
		.BYTE	$36 ; 6
		.BYTE	$FF
		.BYTE	$28 ; (
		.BYTE	 $A
		.BYTE	$CA ;  
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$AA ; ™
		.BYTE	$2A ; *
		.BYTE	$2A ; *
		.BYTE	$8A ; ä
		.BYTE	$8A ; ä
		.BYTE	$82 ; Ç
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$FF
		.BYTE	$AF ; Ø
		.BYTE	$AB ; ´
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$FB ; ˚
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$AB ; ´
		.BYTE	$F3 ; Û
		.BYTE	$BF ; ø
		.BYTE	$8F ; è
		.BYTE	$C3 ; √
		.BYTE	$F3 ; Û
		.BYTE	$F0 ; 
		.BYTE	$FC ; ¸
		.BYTE	$FC ; ¸
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FF
		.BYTE	$3F ; ?
		.BYTE	$3F ; ?
		.BYTE	$AA ; ™
		.BYTE	$8A ; ä
		.BYTE	$CA ;  
		.BYTE	$CA ;  
		.BYTE	2
		.BYTE	2
		.BYTE	$C0 ; ¿
		.BYTE	$F2 ; Ú
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$EB ; Î
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$FF
		.BYTE	$EF ; Ô
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$FE ; ˛
		.BYTE	$EF ; Ô
		.BYTE	$AF ; Ø
		.BYTE	$FE ; ˛
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$BF ; ø
		.BYTE	$BF ; ø
		.BYTE	$FF
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$AB ; ´
		.BYTE	$AF ; Ø
		.BYTE	$AF ; Ø
		.BYTE	$EB ; Î
		.BYTE	$EB ; Î
		.BYTE	$AA ; ™
		.BYTE	$8A ; ä
		.BYTE	 $B
		.BYTE	$1B
		.BYTE	2
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$F8 ; ¯
		.BYTE	$E8 ; Ë
		.BYTE	$FA ; ˙
		.BYTE	$FC ; ¸
		.BYTE	$BA ; ∫
		.BYTE	$FA ; ˙
		.BYTE	$BE ; æ
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$2B ; +
		.BYTE	 $F
		.BYTE	$3F ; ?
		.BYTE	$FF
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$FE ; ˛
		.BYTE	$FA ; ˙
		.BYTE	$FB ; ˚
		.BYTE	$F2 ; Ú
		.BYTE	$C2 ; ¬
		.BYTE	$FA ; ˙
		.BYTE	$FA ; ˙
		.BYTE	$EA ; Í
		.BYTE	$FB ; ˚
		.BYTE	$FF
		.BYTE	$FA ; ˙
		.BYTE	$FE ; ˛
		.BYTE	$BE ; æ
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$FF
		.BYTE	$FE ; ˛
		.BYTE	$BE ; æ
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$FF
		.BYTE	2
		.BYTE	$2A ; *
		.BYTE	$AA ; ™
		.BYTE	$A2 ; ¢
		.BYTE	$82 ; Ç
		.BYTE	$8B ; ã
		.BYTE	$BF ; ø
		.BYTE	$FF
		.BYTE	$A8 ; ®
		.BYTE	$A8 ; ®
		.BYTE	$A3 ; £
		.BYTE	$AF ; Ø
		.BYTE	$BF ; ø
		.BYTE	$1B
		.BYTE	$32 ; 2
		.BYTE	$FF
		.BYTE	$F0 ; 
		.BYTE	$1B
		.BYTE	6
		.BYTE	$FF
		.BYTE	1
		.BYTE	0
		.BYTE	$C5 ; ≈
		.BYTE	$C0 ; ¿
		.BYTE	$1B
		.BYTE	3
		.BYTE	$D5 ; ’
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$1B
		.BYTE	4
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$55 ; U
		.BYTE	0
		.BYTE	$1B
		.BYTE	3
		.BYTE	$55 ; U
		.BYTE	$1B
		.BYTE	$3F ; ?
		.BYTE	0
		.BYTE	$1B
		.BYTE	$FF
		.BYTE	$1B
		.BYTE	$23 ; #
		.BYTE	$84 ; Ñ
		.BYTE	$1B
		.BYTE	3
		.BYTE	$42 ; B
		.BYTE	$44 ; D
		.BYTE	$44 ; D
		.BYTE	$1B
		.BYTE	$12
		.BYTE	$46 ; F
		.BYTE	$1B
		.BYTE	2
		.BYTE	$38 ; 8
		.BYTE	$1B
		.BYTE	3
		.BYTE	$3A ; :
		.BYTE	$1B
		.BYTE	2
		.BYTE	$3E ; >
		.BYTE	$45 ; E
		.BYTE	$1B
		.BYTE	8
		.BYTE	6
		.BYTE	$1B
		.BYTE	 $A
		.BYTE	 $F
		.BYTE	$1B
		.BYTE	 $F
		.BYTE	7
		.BYTE	$1B
		.BYTE	2
		.BYTE	$36 ; 6
		.BYTE	$38 ; 8
		.BYTE	$39 ; 9
		.BYTE	$38 ; 8
		.BYTE	$38 ; 8
		.BYTE	$1B
		.BYTE	3
		.BYTE	$3B ; ;
		.BYTE	$1B
		.BYTE	4
		.BYTE	$3D ; =
		.BYTE	$1B
		.BYTE	7
		.BYTE	$2D ; -
		.BYTE	$1B
		.BYTE	7
		.BYTE	$2F ; /
		.BYTE	$1B
		.BYTE	3
		.BYTE	$3A ; :
		.BYTE	$1B
		.BYTE	5
		.BYTE	0
		.BYTE	$2A ; *
		.BYTE	$21 ; !
		.BYTE	$AE ; Æ
		.BYTE	0
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$F7 ; ˜
		.BYTE	$EF ; Ô
		.BYTE	0
		.BYTE	0
		.BYTE	$7F ; 
		.BYTE	$E7 ; Á
		.BYTE	$FE ; ˛
		.BYTE	0
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$83 ; É
		.BYTE	$FE ; ˛
		.BYTE	0
		.BYTE	0
		.BYTE	$7F ; 
		.BYTE	$81 ; Å
		.BYTE	$FE ; ˛
		.BYTE	0
		.BYTE	0
		.BYTE	$3F ; ?
		.BYTE	$C3 ; √
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	0
		.BYTE	$1F
		.BYTE	$FF
		.BYTE	$F8 ; ¯
		.BYTE	0
		.BYTE	0
		.BYTE	7
		.BYTE	$FF
		.BYTE	$E0 ; ‡
		.BYTE	$1B
		.BYTE	$16
		.BYTE	0
		.BYTE	$38 ; 8
		.BYTE	$1B
		.BYTE	3
		.BYTE	0
		.BYTE	$3A ; :
		.BYTE	$1B
		.BYTE	2
		.BYTE	0
		.BYTE	7
		.BYTE	$1F
		.BYTE	$D8 ; ÿ
		.BYTE	0
		.BYTE	0
		.BYTE	$7F ; 
		.BYTE	$FF
		.BYTE	$FC ; ¸
		.BYTE	0
		.BYTE	0
		.BYTE	$7F ; 
		.BYTE	$FF
		.BYTE	$F8 ; ¯
		.BYTE	0
		.BYTE	$8B ; ã
		.BYTE	$84 ; Ñ
		.BYTE	$35 ; 5
		.BYTE	7
		.BYTE	$9C ; ú
		.BYTE	0
		.BYTE	$1B
		.BYTE	$FF
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
