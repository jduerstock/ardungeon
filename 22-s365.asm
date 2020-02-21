
		.include	"equates.inc"
		.include	"exp_kernel.inc"
		.include	"globals.inc"
		.include	"macros.inc"

;	.ORG	$100
	.SEGMENT "SEG_28_KEY"

	.BYTE	$4d,$6d,$00,$15,$83,$76,$2d,$5f,$b6,$a7,$a9,$a8,$0c,$21,$a2,$04 ; |Mm...v-_.....!..|
	.BYTE	$34,$2b,$91,$a8,$37,$4b,$19,$89,$2c,$2d,$27,$73,$60,$91,$f4,$5f ; |4+..7K..,-'s`.._|
	.BYTE	$29,$c6,$41,$4f,$a5,$78,$dd,$d8,$b1,$a1,$22,$35,$32,$2e,$7d,$b1 ; |).AO.x...."52.}.|
	.BYTE	$a7,$96,$2b,$fa,$4d,$b9,$62,$48,$d4,$51,$29,$78,$ae,$dc,$d7,$4b ; |..+.M.bH.Q)x...K|
	.BYTE	$49,$2f,$bf,$52,$c6,$06,$f5,$54,$f0,$47,$06,$5b,$0d,$28,$8f,$1f ; |I/.R...T.G.[.(..|
	.BYTE	$fd,$a2,$ff,$43,$ca,$e6,$8f,$1c,$16,$0f,$bc,$c9,$f9,$70,$dd,$ae ; |...C.........p..|
	.BYTE	$02,$5a,$c1,$f8,$78,$1c,$25,$2e,$43,$06,$77,$60,$da,$e5,$a9,$c9 ; |.Z..x.%.C.w`....|
	.BYTE	$ef,$41,$de,$c4,$56,$a0,$7e,$5a,$c1,$f9,$36,$b8,$ec,$2f,$17,$5f ; |.A..V.~Z..6../._|


;		* =  $7600
	.SEGMENT "SEG_28"

		.BYTE $18
; ---------------------------------------------------------------------------
		JMP	loc_7610
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_7E6B
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604^j	RAM:7607^j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601^j
		ldi	$1937, $FF
		dldi	$1977, $7648
		dldi	off_16, $795B
		JSR	$184B
		LDA	$1933
		STA	$62
		ldxy	$7508
		LDA	#6
		JSR	$1863
		BCS	locret_7647
		dldi	off_7, $7FE7
		LDA	#2
		JSR	$180F

locret_7647:				; CODE XREF: RAM:7638^j
		RTS
; ---------------------------------------------------------------------------
		ldxy	$7508
		LDA	#6
		JSR	$1863
		BCS	loc_7656
		JMP	loc_7762
; ---------------------------------------------------------------------------

loc_7656:				; CODE XREF: RAM:7651^j	RAM:775Cvj
		dldi	off_16, $7A01
		LDX	$62
		JSR	j_sub_3C5C

loc_7663:				; CODE XREF: RAM:767Cvj
		dldi	$1977, $7670
		JMP	$1806
; ---------------------------------------------------------------------------
		JSR	j_sub_262F
		AND	#2
		BEQ	loc_767A
		JMP	loc_791F
; ---------------------------------------------------------------------------

loc_767A:				; CODE XREF: RAM:7675^j
		LDA	$31
		BMI	loc_7663
		CMP	#$31 ; '1'
		BEQ	loc_7685
		JMP	loc_7758
; ---------------------------------------------------------------------------

loc_7685:				; CODE XREF: RAM:7680^j
		LDA	$758C
		ORA	$758D
		BNE	loc_76CC
		JSR	j_sub_2E31
		dmv	$758C, $630F
		ldxy	$7508
		LDA	#$15
		JSR	$1863
		BCS	loc_76CC
		dldi	off_16, $7A55
		JSR	sub_7930
		ldxy	$7D7E
		JSR	j_sub_4B4D
		JSR	j_sub_408B
		ldxy	$7508
		SEC
		LDA	#$15
		JSR	$1860
		JSR	sub_771E
		JMP	loc_791F
; ---------------------------------------------------------------------------

loc_76CC:				; CODE XREF: RAM:768B^j	RAM:76A5^j
		JSR	j_sub_2E31
		LDA	$630F
		SEC
		SBC	$758C
		STA	7
		LDA	$6310
		SBC	$758D
		STA	8
		LDA	8
		BNE	loc_7702
		LDA	7
		CMP	#2
		BCS	loc_7702
		LDA	$6394
		CMP	#$F0 ; 'ð'
		BCS	loc_7710
		dldi	off_16, $7AC2
		JSR	sub_7930
		JSR	sub_771E
		JMP	loc_791F
; ---------------------------------------------------------------------------

loc_7702:				; CODE XREF: RAM:76E2^j	RAM:76E8^j
		dldi	off_16, $7AE7
		JSR	sub_7930
		JMP	loc_791F
; ---------------------------------------------------------------------------

loc_7710:				; CODE XREF: RAM:76EF^j
		dldi	off_16, $7B5A
		JSR	sub_7930
		JMP	loc_791F

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_771E:				; CODE XREF: RAM:76C6^p	RAM:76FC^p
		JSR	sub_774F
		LDX	#$B1 ; '±'
		JSR	$187B
		JSR	sub_774F
		LDX	#$B3 ; '³'
		JSR	$187B
		JSR	sub_7746
		JSR	sub_774F
		LDX	#$B5 ; 'µ'
		JSR	$187B
		LDX	#$B7 ; '·'
		JSR	$187B
		JSR	sub_7746
		LDX	#$B9 ; '¹'
		JMP	$187B
; End of function sub_771E


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7746:				; CODE XREF: sub_771E+10^p sub_771E+20^p
		LDA	#$32 ; '2'
		JSR	j_RND_A
		CLC
		ADC	#$32 ; '2'
		RTS
; End of function sub_7746


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_774F:				; CODE XREF: sub_771E^p	sub_771E+8^p ...
		LDA	#$32 ; '2'
		JSR	j_RND_A
		CLC
		ADC	#$C8 ; 'È'
		RTS
; End of function sub_774F

; ---------------------------------------------------------------------------

loc_7758:				; CODE XREF: RAM:7682^j
		CMP	#$30 ; '0'
		BEQ	loc_775F
		JMP	loc_7656
; ---------------------------------------------------------------------------

loc_775F:				; CODE XREF: RAM:775A^j
		JMP	loc_791F
; ---------------------------------------------------------------------------

loc_7762:				; CODE XREF: RAM:7653^j
		dldi	off_16, $795D
		ldxy	$7508
		LDA	#5
		JSR	$1863
		BCC	loc_777D
		dldi	off_16, $79AE

loc_777D:				; CODE XREF: RAM:7773^j
		JSR	sub_7930

loc_7780:				; CODE XREF: RAM:loc_77FBvj
		dldi	off_16, $7BBC
		LDX	$62
		JSR	j_sub_3C5C

loc_778D:				; CODE XREF: RAM:77C2vj
		dldi	$1977, $779A
		JMP	$1806
; ---------------------------------------------------------------------------
		LDA	$31
		CMP	#$31 ; '1'
		BNE	loc_77A3
		JMP	loc_77C7
; ---------------------------------------------------------------------------

loc_77A3:				; CODE XREF: RAM:779E^j
		CMP	#$32 ; '2'
		BNE	loc_77B9
		ldxy	$7508
		LDA	#6
		SEC
		JSR	$1860
		LDA	#$48 ; 'H'
		STA	$6320
		JMP	loc_791F
; ---------------------------------------------------------------------------

loc_77B9:				; CODE XREF: RAM:77A5^j
		CMP	#$30 ; '0'
		BEQ	loc_77C4
		JSR	j_sub_262F
		AND	#2
		BEQ	loc_778D

loc_77C4:				; CODE XREF: RAM:77BB^j
		JMP	loc_7879
; ---------------------------------------------------------------------------

loc_77C7:				; CODE XREF: RAM:77A0^j
		dldi	off_16, $795B
		LDX	$62
		JSR	j_sub_3C5C
		JSR	$189F
		JSR	j_sub_408B
		LDY	#$F

loc_77DC:				; CODE XREF: RAM:77F9vj
		LDA	$6494,Y
		CMP	#2
		BNE	loc_77F8
		LDA	$64A4,Y
		CMP	#3
		BNE	loc_77F8
		LDA	$64B4,Y
		CMP	#$E
		BNE	loc_77F8
		LDA	$64C4,Y
		CMP	#5
		BEQ	loc_77FE

loc_77F8:				; CODE XREF: RAM:77E1^j	RAM:77E8^j ...
		DEY
		BPL	loc_77DC

loc_77FB:				; CODE XREF: RAM:7806vj
		JMP	loc_7780
; ---------------------------------------------------------------------------

loc_77FE:				; CODE XREF: RAM:77F6^j
		LDA	$64D4,Y
		STA	$4B
		JSR	$1887
		BEQ	loc_77FB
		LDY	#0
		LDA	(off_41),Y
		CMP	#7
		BNE	loc_7857
		JSR	$1896
		LDY	#0
		LDA	(off_43),Y
		CMP	#2
		BNE	loc_7857
		INY
		LDA	(off_43),Y
		CMP	#8
		BNE	loc_7857
		LDA	#$10
		LDY	#2
		STA	(off_41),Y
		JSR	j_sub_408B
		ldxy	$7508
		LDA	#5
		SEC
		JSR	$1860
		ldxy	$7D7E
		JSR	j_sub_4B4D
		JSR	j_sub_408B
		ldxy	$7508
		LDA	#$15
		SEC
		JSR	$1860
		dldi	off_16, $7C3C
		JSR	sub_7930
		JMP	loc_791F
; ---------------------------------------------------------------------------

loc_7857:				; CODE XREF: RAM:780E^j	RAM:7819^j ...
		LDA	#$10
		LDY	#2
		STA	(off_41),Y
		JSR	j_sub_408B
		ldxy	$7508
		LDA	#5
		JSR	$1863
		BCC	loc_786E
		JMP	loc_7879
; ---------------------------------------------------------------------------

loc_786E:				; CODE XREF: RAM:7869^j
		dldi	off_16, $7CAE
		JSR	sub_7930

loc_7879:				; CODE XREF: RAM:loc_77C4^j RAM:786B^j
		LDA	RANDOM
		LSR	A
		BCC	loc_788C
		dldi	$68, $7D3C
		LDY	#0
		JMP	loc_7896
; ---------------------------------------------------------------------------

loc_788C:				; CODE XREF: RAM:787D^j
		dldi	$68, $7D5B
		LDY	#4

loc_7896:				; CODE XREF: RAM:7889^j
		STY	$66
		LDA	#$19
		SEC
		SBC	$63A6,Y
		BCS	loc_78A2
		LDA	#0

loc_78A2:				; CODE XREF: RAM:789E^j
		STA	$63
		LDA	$639F
		BMI	loc_790A
		STA	$4B
		JSR	$1887
		JSR	$1896
		LDY	$66
		INY
		LDA	(off_43),Y
		BEQ	loc_790A
		CMP	#$FF
		BEQ	loc_7906
		TAX
		AND	#$F0 ; 'ð'
		BEQ	loc_78F7
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	$64
		TXA
		AND	#$F
		BEQ	loc_78FF
		SEC
		SBC	#1
		STA	$65
		LDY	$64
		LDA	#0
		STA	$67

loc_78D7:				; CODE XREF: RAM:78E2vj
		LDA	$65
		JSR	j_RND_A
		CLC
		ADC	$67
		STA	$67
		DEY
		BNE	loc_78D7
		LDA	$64
		CLC
		ADC	$67
		STA	$67
		LDA	$63
		SEC
		SBC	$67
		BCC	loc_7906
		STA	$63
		JMP	loc_790A
; ---------------------------------------------------------------------------

loc_78F7:				; CODE XREF: RAM:78BF^j
		LDA	$63
		ASL	A
		STA	$63
		JMP	loc_790A
; ---------------------------------------------------------------------------

loc_78FF:				; CODE XREF: RAM:78CA^j
		LDX	#$45 ; 'E'
		LDA	$63
		JSR	$187B

loc_7906:				; CODE XREF: RAM:78BA^j	RAM:78F0^j
		LDA	#0
		STA	$63

loc_790A:				; CODE XREF: RAM:78A7^j	RAM:78B6^j ...
		LDA	$63
		LDX	#$45 ; 'E'
		JSR	$1872
		JSR	j_sub_408B
		dldi	off_16, $7CED
		JSR	sub_7930

loc_791F:				; CODE XREF: RAM:7677^j	RAM:76C9^j ...
		LDY	#4

loc_7921:				; CODE XREF: RAM:7928vj
		LDA	$6318,Y
		STA	I_LOC_X,Y
		DEY
		BPL	loc_7921
		STY	$AC00
		JMP	$180C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7930:				; CODE XREF: RAM:76AF^p	RAM:76F9^p ...
		LDX	$62
		JSR	j_sub_3C5C
		LDA	#$10
		JMP	j_sub_2BFC
; End of function sub_7930

; ---------------------------------------------------------------------------

loc_793A:				; DATA XREF: RAM:7D05vo
		dldi	off_16, $7D07
		LDA	$63
		BNE	locret_794E
		dldi	off_16, $7D24

locret_794E:				; CODE XREF: RAM:7944^j
		RTS
; ---------------------------------------------------------------------------

loc_794F:				; DATA XREF: RAM:7D08vo
		LDA	#$FF
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------

loc_7955:				; DATA XREF: RAM:7D21vo
		LDA	#0
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------
		.BYTE	$A8,$FF
		MOVEXY	0,1
		.BYTE	$A5,$22,"Thief!  How dare you disturb my sleep!",$0D,$0D
		.BYTE	$A5,"What dost thou want crunchy one?",$22,$0D,$FF
		MOVEXY	0,1
		.BYTE	$A5,$22,"Thief!  You dare to return?",$0D,$0D
		.BYTE	$A5,"I have no further need for you",$0D,$0D
		.BYTE	$A5,"foul morsel!",$22,$0D,$FF
		MOVEXY	0,0
		.BYTE	$A5,"The lair is empty.",$0D
		.BYTE	$A5,"What do you do?",$0D
		MOVEXY	8,3
		MenuItem "1","Grab some treasure"
		.BYTE	$0D
		MOVEXY	8,4
		MenuItem "0","Leave"
		.BYTE $0D,$FF
		MOVEXY	0,1
		.BYTE	$A5,"You grab lots of gold, silver, gems",$0D,$0D
		.BYTE	$A5,"jewels and coppers.  You also find a",$0D,$0D
		.BYTE	$A5,"broken piece from a staff.",$0D,$FF
		MOVEXY	0,2
		.BYTE	$A5,"You grab handfuls of valuables.",$0D,$FF
		MOVEXY	0,2
		.BYTE	$A5,"Apparently word travels fast in the",$0D,$0D
		.BYTE	$A5,"Dungeon, because the lair has already",$0D,$0D
		.BYTE	$A5,"been picked clean of valuables!",$D,$FF
		MOVEXY	0,2
		.BYTE	$A5,"As you grab at the treasures your burden",$0D,$0D
		.BYTE	$A5,"is such that you drop just as much as",$0D,$0D
		.BYTE	$A5,"you keep!",$D,$FF
		MOVEXY	0,0
aYouConfrontAHi:.BYTE	$A5,"You confront a hideous dragon.",$D
		MOVEXY	4,2
aWhatDoYouDoq_0:.BYTE	$A5,"What do you do?",$D
		MOVEXY	8,4
		MenuItem "1","Offer the dragon a gift"
		MOVEXY	8,5
		MenuItem "2","Attack the dragon"
		MOVEXY	8,6
		MenuItem "0","Flee!"
		.BYTE	$FF
		MOVEXY	0,2
aInExchangeForT:.BYTE	$A5,"In exchange for the Bloodstone I",$0D,$0D
aSupposeYouWant:.BYTE	$A5,"suppose you want a reward?  Here, you",$0D,$0D
aMayHaveThisSti:.BYTE	$A5,"may have this stick.  Now begone!",$0D,$FF
		MOVEXY	0,2
aIHaveNeedOfOnl:.BYTE	$A5,"I have need of only one thing.",$0D,$0D
aBringMeTheBloo:.BYTE	$A5,"Bring me the Bloodstone!",$0D,$FF
		MOVEXY	0,2
		.BYTE	$A5,"The Dragon",$0D,$0D
		.BYTE	$A5
		.BYTE	$B4
		.WORD	$68
		.BYTE	$26
		.BYTE	$0D,$0D
		STRJSR	loc_793A
		STRJSR	loc_794F
aWhichHitsFor:	.BYTE	$A5,"which hits for "
		.BYTE	$B2
		.WORD	$63
		.BYTE	3
a_:		.BYTE ".",$D
		STRJSR	loc_7955
		.BYTE	$FF
		.BYTE $A5
aWhichDoesNoDam:.BYTE "which does no damage."
		.BYTE $D
		.BYTE $FF
aWhacksYouWithH:.BYTE "whacks you with his scaly tail",0
aScorchesYouWit:.BYTE "scorches you with his fiery breath",0
		.BYTE	7
		.BYTE $15
		.BYTE	1
		.BYTE	0
		.BYTE	2
		.BYTE $12
aStaffPiece:	.BYTE "Staff Piece",0
		.BYTE	0
		.BYTE	2
		.BYTE	6
unk_7D93:	.BYTE $70 ; p		; DATA XREF: RAM:7DC3vo
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42 ; B
		.WORD $400
		.BYTE $80 ; 
		.BYTE	2
		.BYTE $80 ; 
		.BYTE	2
		.BYTE $80 ; 
		.BYTE	2
		.BYTE $80 ; 
		.BYTE	2
		.BYTE $80 ; 
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
		.BYTE $41
		.WORD unk_7D93
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
		STY	COLPF2
		LDX	#$23 ; '#'
		LDY	$BBDC,X

loc_7E29:				; CODE XREF: RAM:7E4Evj
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
		BPL	loc_7E29
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

loc_7E6B:				; CODE XREF: RAM:760A^j
		LDA	#$7F ; ''
		STA	$253
		LDA	#$93 ; ''
		STA	$254
		LDA	#$7D ; '}'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_7E7E:				; CODE XREF: RAM:7E8Cvj
		LDY	#$C

loc_7E80:				; CODE XREF: RAM:7E87vj
		STA	$BB4C,X
		DEX
		BMI	loc_7E8E
		DEY
		BNE	loc_7E80
		CLC
		ADC	#4
		BNE	loc_7E7E

loc_7E8E:				; CODE XREF: RAM:7E84^j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_7F86
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; '»'
		STA	$A
		JSR	loc_7F86
		LDA	#0
		STA	loc_7EB4+1
		LDA	#$BD ; '½'
		STA	loc_7EB4+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; ''

loc_7EB4:				; CODE XREF: RAM:7EB8vj	RAM:7EBEvj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7EB4
		INC	loc_7EB4+2
		DEY
		BNE	loc_7EB4
		LDX	#7

loc_7EC2:				; CODE XREF: RAM:7EC6vj
		STA	$D000,X
		DEX
		BPL	loc_7EC2
		LDA	#3
		TAX

loc_7ECB:				; CODE XREF: RAM:7ECFvj
		STA	$D008,X
		DEX
		BPL	loc_7ECB
		ldi	SIZEM, $FF
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_7EF9:				; CODE XREF: RAM:7F1Fvj
		LDY	6
		LDA	(off_7),Y
		STA	4
		LDY	#7

loc_7F01:				; CODE XREF: RAM:7F0Cvj
		LSR	4
		BCC	loc_7F0B
		LDA	(off_9),Y
		ORA	#$80 ; ''
		STA	(off_9),Y

loc_7F0B:				; CODE XREF: RAM:7F03^j
		DEY
		BPL	loc_7F01
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_7F19
		INC	$A

loc_7F19:				; CODE XREF: RAM:7F15^j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_7EF9
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; '½'
		STA	$F1

loc_7F31:				; CODE XREF: RAM:7F42vj
		CLC
		LDA	$F0,X
		ADC	#$80 ; ''
		STA	$F2,X
		LDA	$F1,X
		ADC	#0
		STA	$F3,X
		INX
		INX
		CPX	#8
		BCC	loc_7F31

loc_7F44:				; CODE XREF: RAM:7F61vj
		LDX	#0

loc_7F46:				; CODE XREF: RAM:7F5Fvj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_7F4C:				; CODE XREF: RAM:7F51vj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_7F4C
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_7F63
		CPX	#$A
		BCC	loc_7F46
		BCS	loc_7F44

loc_7F63:				; CODE XREF: RAM:7F5B^j
		LDX	#3
		LDA	$BC5F

loc_7F68:				; CODE XREF: RAM:7F6Cvj
		STA	COLPM0,X
		DEX
		BPL	loc_7F68
		dldi	off_24A, $7DC5
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_7F86:				; CODE XREF: RAM:7E96^p	RAM:7EA1^p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_7F90
		INC	8

loc_7F90:				; CODE XREF: RAM:7F8C^j
		CMP	#$1B
		BEQ	loc_7F9F
		STA	(9),Y
		INC	9
		BNE	loc_7F9C
		INC	$A

loc_7F9C:				; CODE XREF: RAM:7F98^j
		JMP	loc_7F86
; ---------------------------------------------------------------------------

loc_7F9F:				; CODE XREF: RAM:7F92^j
		LDA	(7),Y
		INC	7
		BNE	loc_7FA7
		INC	8

loc_7FA7:				; CODE XREF: RAM:7FA3^j
		CMP	#$FF
		BNE	loc_7FAC
		RTS
; ---------------------------------------------------------------------------

loc_7FAC:				; CODE XREF: RAM:7FA9^j
		STA	byte_7FE6
		ADC	9
		STA	loc_7FBF+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_7FC4
		LDA	byte_7FE6

loc_7FBF:				; DATA XREF: RAM:7FB1^w
		SBC	#$FF
		STA	byte_7FE6

loc_7FC4:				; CODE XREF: RAM:7FBA^j
		LDA	(7),Y
		INC	7
		BNE	loc_7FCC
		INC	8

loc_7FCC:				; CODE XREF: RAM:7FC8^j
		LDY	byte_7FE6

loc_7FCF:				; CODE XREF: RAM:7FD2vj
		STA	(9),Y
		DEY
		BPL	loc_7FCF
		INC	byte_7FE6
		LDA	byte_7FE6
		CLC
		ADC	9
		STA	9
		BCC	loc_7FE3
		INC	$A

loc_7FE3:				; CODE XREF: RAM:7FDF^j
		JMP	loc_7F86
; ---------------------------------------------------------------------------
byte_7FE6:	.BYTE 0			; DATA XREF: RAM:loc_7FAC^w RAM:7FBC^r ...
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $CF ; Ï
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE	0
		.BYTE $FF
		.BYTE $C3 ; Ã
		.BYTE $F0 ; ð
		.BYTE $F3 ; ó
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $CC ; Ì
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; ó
		.BYTE $F0 ; ð
		.BYTE $CF ; Ï
		.BYTE	3
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE	3
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $C
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $3D ; =
		.BYTE $CA ; Ê
		.BYTE $D5 ; Õ
		.BYTE $3F ; ?
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $C5 ; Å
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $F3 ; ó
		.BYTE $CF ; Ï
		.BYTE $D5 ; Õ
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $A5 ; ¥
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $99 ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $83 ; 
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $C3 ; Ã
		.BYTE $F0 ; ð
		.BYTE $7F ; 
		.BYTE $6F ; o
		.BYTE $A7 ; §
		.BYTE $56 ; V
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $C3 ; Ã
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE  $F
		.BYTE $C3 ; Ã
		.BYTE $F0 ; ð
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $1B
		.BYTE	4
		.BYTE $CF ; Ï
		.BYTE $C0 ; À
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE  $F
		.BYTE  $F
		.BYTE $C0 ; À
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $CF ; Ï
		.BYTE $C3 ; Ã
		.BYTE $C0 ; À
		.BYTE  $F
		.BYTE  $F
		.BYTE $F3 ; ó
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $C3 ; Ã
		.BYTE  $F
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE	3
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $A5 ; ¥
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE	3
		.BYTE $CF ; Ï
		.BYTE $EA ; ê
		.BYTE $A5 ; ¥
		.BYTE $56 ; V
		.BYTE  $F
		.BYTE $C0 ; À
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $BF ; ¿
		.BYTE $AA ; ª
		.BYTE $56 ; V
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $AF ; ¯
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $CF ; Ï
		.BYTE $F0 ; ð
		.BYTE $F3 ; ó
		.BYTE $3F ; ?
		.BYTE $C3 ; Ã
		.BYTE $F0 ; ð
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE	3
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $3F ; ?
		.BYTE $C0 ; À
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $CF ; Ï
		.BYTE $C0 ; À
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $CF ; Ï
		.BYTE $F0 ; ð
		.BYTE $F3 ; ó
		.BYTE	3
		.BYTE $3C ; <
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE  $F
		.BYTE $30 ; 0
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $C3 ; Ã
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $F3 ; ó
		.BYTE  $F
		.BYTE $CF ; Ï
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE  $F
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $F0 ; ð
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE  $F
		.BYTE $C0 ; À
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE  $F
		.BYTE $C0 ; À
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $F3 ; ó
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $CF ; Ï
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE  $F
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $CF ; Ï
		.BYTE $C3 ; Ã
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $C3 ; Ã
		.BYTE $CC ; Ì
		.BYTE $3D ; =
		.BYTE $F5 ; õ
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $F5 ; õ
		.BYTE $D5 ; Õ
		.BYTE $5A ; Z
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $FD ; ý
		.BYTE $F5 ; õ
		.BYTE $59 ; Y
		.BYTE $1B
		.BYTE $1D
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $AA ; ª
		.BYTE $69 ; i
		.BYTE $95 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $8F ; 
		.BYTE $50 ; P
		.BYTE $5B ; [
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $CF ; Ï
		.BYTE  $F
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $BC ; ¼
		.BYTE $5C ; \
		.BYTE $5B ; [
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $3C ; <
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $C0 ; À
		.BYTE $C3 ; Ã
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF
		.BYTE  $F
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $CF ; Ï
		.BYTE $C0 ; À
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE	3
		.BYTE $F1 ; ñ
		.BYTE $E5 ; å
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $F9 ; ù
		.BYTE $D5 ; Õ
		.BYTE $95 ; 
		.BYTE $59 ; Y
		.BYTE $55 ; U
		.BYTE $F2 ; ò
		.BYTE $E5 ; å
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $A5 ; ¥
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE  $E
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $6C ; l
		.BYTE $5B ; [
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $65 ; e
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $59 ; Y
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ¿
		.BYTE $AF ; ¯
		.BYTE $6B ; k
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $F3 ; ó
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE  $F
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE $BF ; ¿
		.BYTE $BF ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	4
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $C3 ; Ã
		.BYTE $F3 ; ó
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE	0
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE  $F
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE  $F
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $C0 ; À
		.BYTE $3C ; <
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE	3
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $C3 ; Ã
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $F3 ; ó
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $C0 ; À
		.BYTE $CF ; Ï
		.BYTE  $F
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE  $F
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $F1 ; ñ
		.BYTE	5
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $FD ; ý
		.BYTE $F5 ; õ
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE  $A
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $AA ; ª
		.BYTE $A9 ; ©
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $A9 ; ©
		.BYTE $95 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $59 ; Y
		.BYTE $65 ; e
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $65 ; e
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $A5 ; ¥
		.BYTE $69 ; i
		.BYTE $59 ; Y
		.BYTE $5A ; Z
		.BYTE $96 ; 
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE  $B
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $6F ; o
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $C0 ; À
		.BYTE $C3 ; Ã
		.BYTE $73 ; s
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $95 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $3F ; ?
		.BYTE $CD ; Í
		.BYTE $59 ; Y
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $A5 ; ¥
		.BYTE $1B
		.BYTE	9
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $6A ; j
		.BYTE $AB ; «
		.BYTE $BA ; º
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $FA ; ú
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A8 ; ¨
		.BYTE $BC ; ¼
		.BYTE $FC ; ü
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $A9 ; ©
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $A5 ; ¥
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $FE ; þ
		.BYTE $FE ; þ
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $A5 ; ¥
		.BYTE $A5 ; ¥
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $AF ; ¯
		.BYTE $AF ; ¯
		.BYTE $6B ; k
		.BYTE $6B ; k
		.BYTE $5B ; [
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	5
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE  $F
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; ó
		.BYTE  $F
		.BYTE $CF ; Ï
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE  $F
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $C0 ; À
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $CF ; Ï
		.BYTE  $F
		.BYTE $C3 ; Ã
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE  $F
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $CF ; Ï
		.BYTE $C0 ; À
		.BYTE $CF ; Ï
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $C3 ; Ã
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $C3 ; Ã
		.BYTE $F3 ; ó
		.BYTE $F0 ; ð
		.BYTE $30 ; 0
		.BYTE $CF ; Ï
		.BYTE $1B
		.BYTE	3
		.BYTE $F3 ; ó
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $52 ; R
		.BYTE $3D ; =
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $A8 ; ¨
		.BYTE $59 ; Y
		.BYTE $58 ; X
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $99 ; 
		.BYTE $4A ; J
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $D9 ; Ù
		.BYTE $EA ; ê
		.BYTE $AB ; «
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $E0 ; à
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FC ; ü
		.BYTE  $D
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $EB ; ë
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $A8 ; ¨
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $65 ; e
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE $3F ; ?
		.BYTE $C0 ; À
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE  $F
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $FD ; ý
		.BYTE  $D
		.BYTE $F5 ; õ
		.BYTE $D5 ; Õ
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE	8
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $6A ; j
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $AF ; ¯
		.BYTE $BF ; ¿
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $AB ; «
		.BYTE $A3 ; £
		.BYTE $B3 ; ³
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $FE ; þ
		.BYTE $FD ; ý
		.BYTE $F5 ; õ
		.BYTE $D5 ; Õ
		.BYTE $59 ; Y
		.BYTE $A5 ; ¥
		.BYTE $96 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $A9 ; ©
		.BYTE $A5 ; ¥
		.BYTE $55 ; U
		.BYTE $A5 ; ¥
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	3
		.BYTE $95 ; 
		.BYTE $A5 ; ¥
		.BYTE $E9 ; é
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $A5 ; ¥
		.BYTE $1B
		.BYTE $13
		.BYTE $55 ; U
		.BYTE $65 ; e
		.BYTE $65 ; e
		.BYTE $A5 ; ¥
		.BYTE $95 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $A5 ; ¥
		.BYTE $1B
		.BYTE	8
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6B ; k
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AF ; ¯
		.BYTE $BF ; ¿
		.BYTE $FF
		.BYTE $BF ; ¿
		.BYTE $AE ; ®
		.BYTE $BF ; ¿
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ¿
		.BYTE $EF ; ï
		.BYTE $FA ; ú
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $BF ; ¿
		.BYTE $BE ; ¾
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE $E8 ; è
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $AB ; «
		.BYTE $AF ; ¯
		.BYTE $83 ; 
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE $CF ; Ï
		.BYTE $1B
		.BYTE	6
		.BYTE $3F ; ?
		.BYTE $C3 ; Ã
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE $CF ; Ï
		.BYTE $F3 ; ó
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; ó
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $56 ; V
		.BYTE $58 ; X
		.BYTE $58 ; X
		.BYTE $68 ; h
		.BYTE $C0 ; À
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE	3
		.BYTE $FC ; ü
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE  $F
		.BYTE $CF ; Ï
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $F3 ; ó
		.BYTE $F3 ; ó
		.BYTE $CF ; Ï
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE $FF
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE	3
		.BYTE  $D
		.BYTE $1F
		.BYTE	7
		.BYTE	3
		.BYTE	0
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $FC ; ü
		.BYTE $C0 ; À
		.BYTE $CF ; Ï
		.BYTE $CF ; Ï
		.BYTE $1B
		.BYTE	8
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F3 ; ó
		.BYTE	3
		.BYTE $C5 ; Å
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; õ
		.BYTE $D5 ; Õ
		.BYTE $15
		.BYTE $D5 ; Õ
		.BYTE $D5 ; Õ
		.BYTE $55 ; U
		.BYTE $59 ; Y
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	4
		.BYTE $AB ; «
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $C3 ; Ã
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $A5 ; ¥
		.BYTE $F3 ; ó
		.BYTE $CF ; Ï
		.BYTE $CD ; Í
		.BYTE	5
		.BYTE $D5 ; Õ
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $65 ; e
		.BYTE $D5 ; Õ
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $A5 ; ¥
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $3A ; :
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $37 ; 7
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $A5 ; ¥
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $C9 ; É
		.BYTE $C5 ; Å
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	2
		.BYTE $59 ; Y
		.BYTE $1B
		.BYTE	2
		.BYTE $65 ; e
		.BYTE $96 ; 
		.BYTE $95 ; 
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $5B ; [
		.BYTE $52 ; R
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $FE ; þ
		.BYTE $FB ; û
		.BYTE $BB ; »
		.BYTE $2F ; /
		.BYTE  $B
		.BYTE $F2 ; ò
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $FE ; þ
		.BYTE $FB ; û
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE $F0 ; ð
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ª
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $A5 ; ¥
		.BYTE	5
		.BYTE	5
		.BYTE $9A ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $95 ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $5B ; [
		.BYTE $5B ; [
		.BYTE $AF ; ¯
		.BYTE $BF ; ¿
		.BYTE $AF ; ¯
		.BYTE $BB ; »
		.BYTE $BE ; ¾
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $EF ; ï
		.BYTE $FA ; ú
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ¿
		.BYTE $EA ; ê
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $FA ; ú
		.BYTE $AE ; ®
		.BYTE $FA ; ú
		.BYTE $EA ; ê
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $EA ; ê
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $B3 ; ³
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $F3 ; ó
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $CF ; Ï
		.BYTE $C0 ; À
		.BYTE $C3 ; Ã
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $CF ; Ï
		.BYTE $C3 ; Ã
		.BYTE $CF ; Ï
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; ó
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; þ
		.BYTE $FA ; ú
		.BYTE $FA ; ú
		.BYTE $2A ; *
		.BYTE $EA ; ê
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $A9 ; ©
		.BYTE $A5 ; ¥
		.BYTE $A5 ; ¥
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $45 ; E
		.BYTE $45 ; E
		.BYTE $41 ; A
		.BYTE $41 ; A
		.BYTE $1B
		.BYTE	2
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $60 ; `
		.BYTE $60 ; `
		.BYTE $68 ; h
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $15
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $82 ; 
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $3C ; <
		.BYTE $BC ; ¼
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $56 ; V
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE	7
		.BYTE  $D
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $7F ; 
		.BYTE $1D
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE	0
		.BYTE $CF ; Ï
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $40 ; @
		.BYTE $F4 ; ô
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $3D ; =
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE	0
		.BYTE	1
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE	7
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; Õ
		.BYTE $C5 ; Å
		.BYTE $C5 ; Å
		.BYTE $C1 ; Á
		.BYTE $C1 ; Á
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE $13
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	1
		.BYTE $77 ; w
		.BYTE $DD ; Ý
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $DF ; ß
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $3A ; :
		.BYTE $29 ; )
		.BYTE $A5 ; ¥
		.BYTE $C2 ; Â
		.BYTE	9
		.BYTE $25 ; %
		.BYTE $95 ; 
		.BYTE $95 ; 
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $51 ; Q
		.BYTE $41 ; A
		.BYTE	1
		.BYTE $80 ; 
		.BYTE $E0 ; à
		.BYTE $F8 ; ø
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $4F ; O
		.BYTE $43 ; C
		.BYTE $43 ; C
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE	8
		.BYTE $BB ; »
		.BYTE $EF ; ï
		.BYTE $FB ; û
		.BYTE $FE ; þ
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $3D ; =
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE $C0 ; À
		.BYTE $B0 ; °
		.BYTE $EA ; ê
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $95 ; 
		.BYTE $A5 ; ¥
		.BYTE $A9 ; ©
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $7A ; z
		.BYTE $1B
		.BYTE	3
		.BYTE $7F ; 
		.BYTE $6F ; o
		.BYTE $5E ; ^
		.BYTE $5F ; _
		.BYTE $FF
		.BYTE $AE ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; þ
		.BYTE $AA ; ª
		.BYTE $F8 ; ø
		.BYTE $EB ; ë
		.BYTE $BF ; ¿
		.BYTE $FE ; þ
		.BYTE $FA ; ú
		.BYTE $E2 ; â
		.BYTE $80 ; 
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $4F ; O
		.BYTE $9F ; 
		.BYTE $A7 ; §
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $95 ; 
		.BYTE  $F
		.BYTE $1D
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $96 ; 
		.BYTE $A5 ; ¥
		.BYTE $A9 ; ©
		.BYTE $AA ; ª
		.BYTE $A6 ; ¦
		.BYTE $AD ; ­
		.BYTE $95 ; 
		.BYTE $AA ; ª
		.BYTE $AC ; ¬
		.BYTE $AC ; ¬
		.BYTE $68 ; h
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $AA ; ª
		.BYTE $3E ; >
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3E ; >
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $95 ; 
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $8E ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $8F ; 
		.BYTE $8E ; 
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $83 ; 
		.BYTE $BF ; ¿
		.BYTE $BF ; ¿
		.BYTE $B7 ; ·
		.BYTE $1B
		.BYTE	3
		.BYTE $BF ; ¿
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $1B
		.BYTE	8
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $1B
		.BYTE  $D
		.BYTE $FF
		.BYTE $11
		.BYTE $1F
		.BYTE $F5 ; õ
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $2F ; /
		.BYTE $FA ; ú
		.BYTE $AF ; ¯
		.BYTE $FF
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $BF ; ¿
		.BYTE $FB ; û
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FA ; ú
		.BYTE $AA ; ª
		.BYTE $FA ; ú
		.BYTE $AE ; ®
		.BYTE $AA ; ª
		.BYTE $5A ; Z
		.BYTE $F5 ; õ
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1A
		.BYTE $F6 ; ö
		.BYTE $AA ; ª
		.BYTE $B9 ; ¹
		.BYTE $55 ; U
		.BYTE $4D ; M
		.BYTE $11
		.BYTE $17
		.BYTE $FC ; ü
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $6F ; o
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; «
		.BYTE $FF
		.BYTE $FB ; û
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $D7 ; ×
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $FC ; ü
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $15
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	3
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $D7 ; ×
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE	2
		.BYTE $F2 ; ò
		.BYTE $FA ; ú
		.BYTE $F9 ; ù
		.BYTE $E9 ; é
		.BYTE $E5 ; å
		.BYTE $E5 ; å
		.BYTE $95 ; 
		.BYTE $94 ; 
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $7C ; |
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE  $F
		.BYTE $C3 ; Ã
		.BYTE $C3 ; Ã
		.BYTE $F8 ; ø
		.BYTE $FE ; þ
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE	0
		.BYTE	8
		.BYTE  $E
		.BYTE $83 ; 
		.BYTE $83 ; 
		.BYTE $E3 ; ã
		.BYTE $E3 ; ã
		.BYTE $FF
		.BYTE  $E
		.BYTE	3
		.BYTE	3
		.BYTE $80 ; 
		.BYTE $E0 ; à
		.BYTE $F8 ; ø
		.BYTE $F8 ; ø
		.BYTE $FE ; þ
		.BYTE  $F
		.BYTE $8F ; 
		.BYTE $EF ; ï
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $37 ; 7
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $95 ; 
		.BYTE $A5 ; ¥
		.BYTE $A9 ; ©
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $95 ; 
		.BYTE $A5 ; ¥
		.BYTE $A0 ;  
		.BYTE	3
		.BYTE  $F
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	2
		.BYTE $F0 ; ð
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $AA ; ª
		.BYTE $2A ; *
		.BYTE $CA ; Ê
		.BYTE $C0 ; À
		.BYTE $C0 ; À
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; ð
		.BYTE $A5 ; ¥
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ¨
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $FA ; ú
		.BYTE  $F
		.BYTE	3
		.BYTE	0
		.BYTE $A0 ;  
		.BYTE $F8 ; ø
		.BYTE $3E ; >
		.BYTE $3E ; >
		.BYTE  $F
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AF ; ¯
		.BYTE $A0 ;  
		.BYTE $AF ; ¯
		.BYTE $AF ; ¯
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $A5 ; ¥
		.BYTE $29 ; )
		.BYTE $2A ; *
		.BYTE $EA ; ê
		.BYTE $CA ; Ê
		.BYTE $CA ; Ê
		.BYTE $F2 ; ò
		.BYTE $F2 ; ò
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $95 ; 
		.BYTE $A5 ; ¥
		.BYTE $A9 ; ©
		.BYTE $AA ; ª
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $15
		.BYTE	5
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE $80 ; 
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $AF ; ¯
		.BYTE $AB ; «
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $B0 ; °
		.BYTE $A0 ;  
		.BYTE $80 ; 
		.BYTE	0
		.BYTE	2
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $7F ; 
		.BYTE $F7 ; ÷
		.BYTE $FD ; ý
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	8
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE  $A
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F5 ; õ
		.BYTE $7D ; }
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F5 ; õ
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $F5 ; õ
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $F5 ; õ
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $E7 ; ç
		.BYTE $E7 ; ç
		.BYTE $EB ; ë
		.BYTE $FB ; û
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $C3 ; Ã
		.BYTE $CF ; Ï
		.BYTE $8F ; 
		.BYTE $AF ; ¯
		.BYTE	3
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $D7 ; ×
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FD ; ý
		.BYTE $7F ; 
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $85 ; 
		.BYTE $C1 ; Á
		.BYTE $C0 ; À
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $D0 ; Ð
		.BYTE $50 ; P
		.BYTE $70 ; p
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	5
		.BYTE	0
		.BYTE $80 ; 
		.BYTE $80 ; 
		.BYTE $A0 ;  
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $43 ; C
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE	0
		.BYTE	2
		.BYTE $82 ; 
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE  $F
		.BYTE $83 ; 
		.BYTE $F0 ; ð
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $7F ; 
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $8F ; 
		.BYTE $8F ; 
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $DF ; ß
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AF ; ¯
		.BYTE $A0 ;  
		.BYTE $A0 ;  
		.BYTE $AF ; ¯
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $CA ; Ê
		.BYTE $CA ; Ê
		.BYTE $C2 ; Â
		.BYTE $C2 ; Â
		.BYTE $CF ; Ï
		.BYTE $1B
		.BYTE	2
		.BYTE $A0 ;  
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $EA ; ê
		.BYTE $25 ; %
		.BYTE $29 ; )
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ª
		.BYTE $58 ; X
		.BYTE $68 ; h
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ª
		.BYTE  $A
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $AB ; «
		.BYTE $AB ; «
		.BYTE $1B
		.BYTE $15
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $75 ; u
		.BYTE $7F ; 
		.BYTE $DD ; Ý
		.BYTE $5F ; _
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $FF
		.BYTE $DD ; Ý
		.BYTE $FF
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $5D ; ]
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $DF ; ß
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $D5 ; Õ
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $7F ; 
		.BYTE $FD ; ý
		.BYTE $7F ; 
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $FF
		.BYTE $77 ; w
		.BYTE $FD ; ý
		.BYTE $FD ; ý
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $F5 ; õ
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F5 ; õ
		.BYTE $57 ; W
		.BYTE $FD ; ý
		.BYTE $77 ; w
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $FD ; ý
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $D5 ; Õ
		.BYTE $DF ; ß
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $D7 ; ×
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $F5 ; õ
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $FF
		.BYTE $D5 ; Õ
		.BYTE $F7 ; ÷
		.BYTE $FD ; ý
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $F5 ; õ
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $F5 ; õ
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $DD ; Ý
		.BYTE $D7 ; ×
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FD ; ý
		.BYTE $5F ; _
		.BYTE $FD ; ý
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $DD ; Ý
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $D5 ; Õ
		.BYTE $FF
		.BYTE $F4 ; ô
		.BYTE $D4 ; Ô
		.BYTE $F5 ; õ
		.BYTE $D7 ; ×
		.BYTE $DD ; Ý
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $60 ; `
		.BYTE $60 ; `
		.BYTE $68 ; h
		.BYTE $58 ; X
		.BYTE $74 ; t
		.BYTE $55 ; U
		.BYTE $7D ; }
		.BYTE $DF ; ß
		.BYTE $81 ; 
		.BYTE $81 ; 
		.BYTE $A1 ; ¡
		.BYTE $61 ; a
		.BYTE $61 ; a
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE $DD ; Ý
		.BYTE $A3 ; £
		.BYTE $63 ; c
		.BYTE $51 ; Q
		.BYTE $D7 ; ×
		.BYTE $55 ; U
		.BYTE $7D ; }
		.BYTE $57 ; W
		.BYTE $5D ; ]
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $5F ; _
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FD ; ý
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F5 ; õ
		.BYTE $DF ; ß
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $77 ; w
		.BYTE $DD ; Ý
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $DF ; ß
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $EA ; ê
		.BYTE $EA ; ê
		.BYTE $FA ; ú
		.BYTE $FA ; ú
		.BYTE $FE ; þ
		.BYTE $DE ; Þ
		.BYTE $FE ; þ
		.BYTE $FF
		.BYTE $CF ; Ï
		.BYTE $8F ; 
		.BYTE $8C ; 
		.BYTE $A8 ; ¨
		.BYTE $A8 ; ¨
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ª
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ü
		.BYTE $F0 ; ð
		.BYTE $F0 ; ð
		.BYTE $C0 ; À
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE $C1 ; Á
		.BYTE $C1 ; Á
		.BYTE $C5 ; Å
		.BYTE $CD ; Í
		.BYTE $CD ; Í
		.BYTE $FE ; þ
		.BYTE $AA ; ª
		.BYTE $AA ; ª
		.BYTE  $C
		.BYTE $3C ; <
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $95 ; 
		.BYTE $A9 ; ©
		.BYTE $30 ; 0
		.BYTE $3C ; <
		.BYTE $57 ; W
		.BYTE $D5 ; Õ
		.BYTE $75 ; u
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $C3 ; Ã
		.BYTE $C3 ; Ã
		.BYTE $F3 ; ó
		.BYTE $71 ; q
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE $F5 ; õ
		.BYTE $55 ; U
		.BYTE $DF ; ß
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7D ; }
		.BYTE $F5 ; õ
		.BYTE $F7 ; ÷
		.BYTE $F7 ; ÷
		.BYTE $F5 ; õ
		.BYTE $FF
		.BYTE $FD ; ý
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $D7 ; ×
		.BYTE $F7 ; ÷
		.BYTE $F5 ; õ
		.BYTE $F5 ; õ
		.BYTE $D7 ; ×
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $F7 ; ÷
		.BYTE $FF
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $D7 ; ×
		.BYTE $F7 ; ÷
		.BYTE $F7 ; ÷
		.BYTE $D7 ; ×
		.BYTE $DF ; ß
		.BYTE $F5 ; õ
		.BYTE $77 ; w
		.BYTE $FF
		.BYTE $F7 ; ÷
		.BYTE $DF ; ß
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F7 ; ÷
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $36 ; 6
		.BYTE $1B
		.BYTE $1D
		.BYTE $CC ; Ì
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $C5 ; Å
		.BYTE $1B
		.BYTE  $D
		.BYTE $43 ; C
		.BYTE $1B
		.BYTE $15
		.BYTE $34 ; 4
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $2B ; +
		.BYTE $1B
		.BYTE  $B
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE  $C
		.BYTE $1E
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE $EF ; ï
		.BYTE $3C ; <
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $E1 ; á
		.BYTE $F7 ; ÷
		.BYTE $3C ; <
		.BYTE $ED ; í
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $E0 ; à
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $EF ; ï
		.BYTE $E1 ; á
		.BYTE $BF ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F0 ; ð
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE	7
		.BYTE	0
		.BYTE	0
		.BYTE $21 ; !
		.BYTE $80 ; 
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $80 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1E
		.BYTE	3
		.BYTE $DA ; Ú
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $3E ; >
		.BYTE $9C ; 
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $1F
		.BYTE $C0 ; À
		.BYTE	0
		.BYTE $CC ; Ì
		.BYTE $35 ; 5
		.BYTE $34 ; 4
		.BYTE $9C ; 
		.BYTE $2E ; .
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
; end of 'RAM'


		.END
