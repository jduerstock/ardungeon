
;		* =  $7600
		.BYTE 4
; ---------------------------------------------------------------------------
		JMP	loc_7608
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,
		.BYTE	0
		.BYTE $20
; ---------------------------------------------------------------------------
		RTS
; ---------------------------------------------------------------------------

loc_7608:				; CODE XREF: RAM:7601j
		LDA	#1
		JSR	$180F
		LDA	#$18
		STA	$1977
		LDA	#$76 ; 'v'
		STA	$1978
		RTS
; ---------------------------------------------------------------------------

loc_7618:				; CODE XREF: RAM:788Dj
		LDX	#0
		LDY	#0

loc_761C:				; CODE XREF: RAM:7643j
		LDA	unk_7B5E,X
		CMP	$6313
		BNE	loc_763C
		LDA	unk_7B5F,X
		CMP	$6314
		BNE	loc_763C
		LDA	unk_7B60,X
		CMP	$6315
		BNE	loc_763C
		LDA	unk_7B61,X
		STA	$66
		JMP	loc_7659
; ---------------------------------------------------------------------------

loc_763C:				; CODE XREF: RAM:7622j	RAM:762Aj ...
		INX
		INX
		INX
		INX
		INY
		CPX	#$10
		BNE	loc_761C

loc_7645:				; CODE XREF: RAM:7683j	RAM:7688j ...
		LDX	#4

loc_7647:				; CODE XREF: RAM:764Ej
		LDA	$6318,X
		STA	$6313,X
		DEX
		BPL	loc_7647
		JSR	$184B
		JSR	$184E
		JMP	$180C
; ---------------------------------------------------------------------------

loc_7659:				; CODE XREF: RAM:7639j
		LDA	unk_7B6E,Y
		STA	byte_7BA5
		LDA	unk_7B72,Y
		STA	byte_7BA6
		LDA	#$B7 ; '∑'
		STA	$16
		LDA	#$78 ; 'x'
		STA	$17
		JSR	$1815

loc_7670:				; CODE XREF: RAM:7673j	RAM:768Aj
		JSR	$181E
		BMI	loc_7670
		JSR	$183F
		CMP	#'Y'
		BNE	loc_767F
		JMP	loc_768C
; ---------------------------------------------------------------------------

loc_767F:				; CODE XREF: RAM:767Aj
		CMP	#'N'
		BNE	loc_7686
		JMP	loc_7645
; ---------------------------------------------------------------------------

loc_7686:				; CODE XREF: RAM:7681j
		CMP	#$1B
		BEQ	loc_7645
		BNE	loc_7670

loc_768C:				; CODE XREF: RAM:767Cj	RAM:76F0j ...
		LDA	#$1A
		STA	$16
		LDA	#$79 ; 'y'
		STA	$17
		JSR	$1815

loc_7697:				; CODE XREF: RAM:769Aj	RAM:76A5j
		JSR	$181E
		BMI	loc_7697
		JSR	$183F
		CMP	#$20 ; ' '
		BEQ	loc_76AA
		CMP	#$1B
		BNE	loc_7697
		JMP	loc_7645
; ---------------------------------------------------------------------------

loc_76AA:				; CODE XREF: RAM:76A1j
		LDX	#$1F

loc_76AC:				; CODE XREF: RAM:76B3j
		LDA	aCheckingCharac,X ; "	Checking Character Disk...   "
		STA	$197C,X
		DEX
		BPL	loc_76AC
		JSR	$1827
		LDA	#3
		STA	$69

loc_76BC:				; CODE XREF: RAM:76EBj
		LDA	#2
		STA	$232
		LDA	#0
		STA	$233
		LDA	$230
		AND	#$F
		TAX
		LDA	$24D,X
		BMI	loc_76D6
		JSR	$182D
		BPL	loc_76F3

loc_76D6:				; CODE XREF: RAM:76CFj	RAM:76FBj
		LDA	$230
		AND	#$F
		CLC
		ADC	#1
		CMP	#4
		BCC	loc_76E4
		LDA	#1

loc_76E4:				; CODE XREF: RAM:76E0j
		ORA	#$30 ; '0'
		STA	$230
		DEC	$69
		BPL	loc_76BC
		JSR	$1830
		JMP	loc_768C
; ---------------------------------------------------------------------------

loc_76F3:				; CODE XREF: RAM:76D4j
		LDX	#7

loc_76F5:				; CODE XREF: RAM:76FEj
		LDA	aArChar,X	; "AR CHAR!"
		CMP	$100,X
		BNE	loc_76D6
		DEX
		BPL	loc_76F5
		LDX	#$1F

loc_7702:				; CODE XREF: RAM:7709j
		LDA	aCarefullySavin,X ; "  Carefully Saving	Character... "
		STA	$197C,X
		DEX
		BPL	loc_7702
		LDX	#$7F ; ''

loc_770D:				; CODE XREF: RAM:7714j
		LDA	$100,X
		STA	aCarefullySavin+$20,X
		DEX
		BPL	loc_770D
		LDX	$6300
		BPL	loc_773B
		LDX	#0

loc_771D:				; CODE XREF: RAM:7725j
		LDA	$7BEF,X
		BEQ	loc_772A
		INX
		CPX	#4
		BCC	loc_771D
		JMP	loc_7890
; ---------------------------------------------------------------------------

loc_772A:				; CODE XREF: RAM:7720j
		LDA	#0
		STA	unk_7BF3,X
		STA	unk_7BFB,X
		STA	unk_7BF7,X
		STX	$6300
		JMP	loc_776A
; ---------------------------------------------------------------------------

loc_773B:				; CODE XREF: RAM:7719j
		STX	$62
		LDA	unk_7BEF,X
		CMP	#$7F ; ''
		BEQ	loc_7747
		JMP	loc_7890
; ---------------------------------------------------------------------------

loc_7747:				; CODE XREF: RAM:7742j
		LDA	unk_7BF3,X
		CMP	$6311
		BEQ	loc_7752
		JMP	loc_7890
; ---------------------------------------------------------------------------

loc_7752:				; CODE XREF: RAM:774Dj
		LDY	unk_78A3,X
		LDX	#0

loc_7757:				; CODE XREF: RAM:7766j
		LDA	$6321,X
		CMP	unk_7BFF,Y
		BEQ	loc_7762
		JMP	loc_7890
; ---------------------------------------------------------------------------

loc_7762:				; CODE XREF: RAM:775Dj
		INY
		INX
		CPX	#$1A
		BCC	loc_7757
		LDX	$62

loc_776A:				; CODE XREF: RAM:7738j
		STX	$62
		LDX	#$3F ; '?'

loc_776E:				; CODE XREF: RAM:777Aj
		LDA	$644B,X
		BEQ	loc_7779
		SEC
		SBC	#$63 ; 'c'
		STA	$644B,X

loc_7779:				; CODE XREF: RAM:7771j
		DEX
		BPL	loc_776E
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

loc_7798:				; CODE XREF: RAM:779Bj	RAM:77A0j
		ADC	($64),Y
		INY
		BNE	loc_7798
		INC	$65
		DEX
		BPL	loc_7798
		STA	$638E

loc_77A5:				; CODE XREF: RAM:787Aj
		LDX	$62
		LDA	#$FF
		STA	unk_7BEF,X
		STA	unk_7BF3,X
		LDA	unk_7BFB,X
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		ORA	$66
		STA	unk_7BFB,X
		LDY	unk_78A3,X
		LDX	#0

loc_77C0:				; CODE XREF: RAM:77CAj
		LDA	$6321,X
		STA	unk_7BFF,Y
		INY
		INX
		CPX	#$1A
		BCC	loc_77C0
		JSR	$1827
		LDX	#$7F ; ''

loc_77D1:				; CODE XREF: RAM:77D8j
		LDA	aCarefullySavin+$20,X
		STA	$100,X
		DEX
		BPL	loc_77D1
		LDA	#2
		STA	$232
		LDA	#0
		STA	$233
		LDA	#$57 ; 'W'
		LDX	#$80 ; 'Ä'
		LDY	#3
		JSR	$1833
		BMI	loc_7867
		JSR	$1830
		LDA	$62
		ASL	A
		TAX
		LDA	unk_78A7,X
		STA	$232
		LDA	unk_78A8,X
		STA	$233
		LDA	#0
		STA	$67
		LDA	#$63 ; 'c'
		STA	$68
		LDA	#$13
		STA	$63
		JSR	$1827

loc_7811:				; CODE XREF: RAM:784Fj
		LDY	#$7F ; ''

loc_7813:				; CODE XREF: RAM:7819j
		LDA	($67),Y
		STA	$100,Y
		DEY
		BPL	loc_7813
		LDA	#$57 ; 'W'
		LDX	#$80 ; 'Ä'
		LDY	#3
		JSR	$1833
		BMI	loc_7867
		INC	$232
		BNE	loc_782E
		INC	$233

loc_782E:				; CODE XREF: RAM:7829j
		LDY	#$FF

loc_7830:				; CODE XREF: RAM:7836j
		LDA	($67),Y
		STA	$80,Y
		DEY
		BMI	loc_7830
		LDA	#$57 ; 'W'
		LDX	#$80 ; 'Ä'
		LDY	#3
		JSR	$1833
		BMI	loc_7867
		INC	$232
		BNE	loc_784B
		INC	$233

loc_784B:				; CODE XREF: RAM:7846j
		INC	$68
		DEC	$63
		BNE	loc_7811
		JSR	$1830
		LDA	#$74 ; 't'
		STA	$16
		LDA	#$79 ; 'y'
		STA	$17
		JSR	$1815

loc_785F:				; CODE XREF: RAM:7862j
		JSR	$181E
		BMI	loc_785F
		JMP	$18B4
; ---------------------------------------------------------------------------

loc_7867:				; CODE XREF: RAM:77EDj	RAM:7824j ...
		JSR	$1830
		LDA	#$59 ; 'Y'
		STA	$16
		LDA	#$7A ; 'z'
		STA	$17
		JSR	$1815

loc_7875:				; CODE XREF: RAM:7878j
		JSR	$181E
		BMI	loc_7875
		JMP	loc_77A5
; ---------------------------------------------------------------------------
		LDA	#$DF ; 'ﬂ'
		STA	$16
		LDA	#$7A ; 'z'
		STA	$17
		JSR	$1815

loc_7888:				; CODE XREF: RAM:788Bj
		JSR	$181E
		BMI	loc_7888
		JMP	loc_7618
; ---------------------------------------------------------------------------

loc_7890:				; CODE XREF: RAM:7727j	RAM:7744j ...
		LDA	#$D
		STA	$16
		LDA	#$7A ; 'z'
		STA	$17
		JSR	$1815

loc_789B:				; CODE XREF: RAM:789Ej
		JSR	$181E
		BMI	loc_789B
		JMP	loc_768C
; ---------------------------------------------------------------------------
unk_78A3:	.BYTE	0		; DATA XREF: RAM:loc_7752r RAM:77BBr
		.BYTE $1A
		.BYTE $34 ; 4
		.BYTE $4E ; N
unk_78A7:	.BYTE	3		; DATA XREF: RAM:77F6r
unk_78A8:	.BYTE	0		; DATA XREF: RAM:77FCr
		.BYTE $BB ; ª
		.BYTE	0
		.BYTE $73 ; s
		.BYTE	1
		.BYTE $2B ; +
		.BYTE	2
aArChar:	.BYTE "AR CHAR!"        ; DATA XREF: RAM:loc_76F5r
		.BYTE $A8
		.BYTE $A5
aYouAreAtTheEnt:.BYTE "You are at the entrance to",$D
		.BYTE $A5
		.BYTE $B4
		.WORD $7BA5
		.BYTE $F
a_:		.BYTE '.'
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAreYouSureYouW:.BYTE "Are you sure you want to enter this"
		.BYTE $D
		.BYTE $A5
aScenarioq:	.BYTE "scenario? ("
		.BYTE $A1
aY:		.BYTE 'Y'
		.BYTE $A0
aOr:		.BYTE " or "
		.BYTE $A1
aN:		.BYTE 'N'
		.BYTE $A0
		.BYTE ')',$D
		.BYTE $FF
		.BYTE $A8
		.BYTE $A6,  0,	1
		.BYTE $A5
aPleaseInsertYo:.BYTE "Please insert your character disk"
		.BYTE $D
		.BYTE $A6,  0,	6
		.BYTE $A5
aPressSpaceBarT:.BYTE "Press SPACE BAR to continue"
		.BYTE $D
		.BYTE $A5
aOrEscToCancel:	.BYTE "or ESC to cancel"
		.BYTE $D
		.BYTE $FF
		.BYTE $A8
		.BYTE $A6,  0,	0
		.BYTE $A5
		.BYTE $B3
		.WORD $6321
		.BYTE $18
		.BYTE $20
aHasBeenSaved_:	.BYTE "has been saved."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aPleaseBoot:	.BYTE "Please boot "
		.BYTE $B4
		.WORD $7BA5
		.BYTE $F
aToContinue_:	.BYTE " to continue.",$D,$D
		.BYTE $A5
aThankYouForPla:.BYTE "Thank you for playing Alternate Reality"
		.BYTE $D
		.BYTE $A5
aTheDungeon_:	.BYTE "The Dungeon."
		.BYTE $D
		.BYTE $A6,  0,	7
		.BYTE $A5
aPress:		.BYTE "(Press "
		.BYTE $A1
aSpaceBar:	.BYTE "SPACE BAR"
		.BYTE $A0
aToPlayAgain:	.BYTE " to play again)"
		.BYTE $D
		.BYTE $FF
		.BYTE $A8
		.BYTE $A6,  0,	1
		.BYTE $A5
aThatIsNotTheCo:.BYTE "That is not the correct character disk!"
		.BYTE $D
		.BYTE $A6,  0,	7
		.BYTE $A5
aPressAnyKeyT_0:.BYTE "Press any key to continue"
		.BYTE $D
		.BYTE $FF
		.BYTE $A8
		.BYTE $A6,  0,	1
		.BYTE $A5
aErrorWritingTo:.BYTE "Error writing to character disk!"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aMakeSureDriveD:.BYTE "Make sure drive door is closed and"
		.BYTE $D
		.BYTE $A5
aDiskNotWritePr:.BYTE "disk not write protected."
		.BYTE $D
		.BYTE $A6,  0,	7
		.BYTE $A5
aPressAnyKeyToT:.BYTE "Press any key to try again"
		.BYTE $D
		.BYTE $FF
		.BYTE $A8
		.BYTE $A6,  0,	0
		.BYTE	$A5,"This character disk already has four",$0D
		.BYTE	$A5,"characters on it!",$0D
		.BYTE $A6,  0,	6
		.BYTE $A5
aInsertAnotherC:.BYTE "Insert another character disk and"
		.BYTE $D
		.BYTE $A5
aPressAnyKeyToC:.BYTE "press any key to continue"
		.BYTE $D
		.BYTE $FF
unk_7B5E:	.BYTE  $B		; DATA XREF: RAM:loc_761Cr
unk_7B5F:	.BYTE $1F		; DATA XREF: RAM:7624r
unk_7B60:	.BYTE	4		; DATA XREF: RAM:762Cr
unk_7B61:	.BYTE	3		; DATA XREF: RAM:7634r
		.BYTE	6
		.BYTE	0
		.BYTE	4
		.BYTE	4
		.BYTE $14
		.BYTE $16
		.BYTE	1
		.BYTE	5
		.BYTE	4
		.BYTE	0
		.BYTE	6
		.BYTE	6
unk_7B6E:	.BYTE $76 ; v		; DATA XREF: RAM:loc_7659r
		.BYTE $85 ; Ö
		.BYTE $8F ; è
		.BYTE $9A ; ö
unk_7B72:	.BYTE $7B ; {		; DATA XREF: RAM:765Fr
		.BYTE $7B ; {
		.BYTE $7B ; {
		.BYTE $7B ; {
aTheWilderness:	.BYTE "The Wilderness",0
aTheArena:	.BYTE "The Arena",0
aThePalace:	.BYTE "The Palace",0
aRevelation:	.BYTE "Revelation",0
byte_7BA5:	.BYTE $FF		; DATA XREF: RAM:765Cw
byte_7BA6:	.BYTE $FF		; DATA XREF: RAM:7662w
aCheckingCharac:.BYTE "   Checking Character Disk...   " ; DATA XREF: RAM:loc_76ACr
aCarefullySavin:.BYTE "  Carefully Saving Character... ",0 ; DATA XREF: RAM:loc_7702r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_7BEF:	.BYTE	0		; DATA XREF: RAM:773Dr	RAM:77A9w
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_7BF3:	.BYTE	0		; DATA XREF: RAM:772Cw	RAM:loc_7747r ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_7BF7:	.BYTE	0		; DATA XREF: RAM:7732w
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_7BFB:	.BYTE	0		; DATA XREF: RAM:772Fw	RAM:77AFr ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_7BFF:	.BYTE	0		; DATA XREF: RAM:775Ar	RAM:77C3w
; end of 'RAM'


		.END
