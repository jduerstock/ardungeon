		.include	"equates.inc"
		.include	"exp_kernel.inc"
		.include	"globals.inc"
		.include	"macros.inc"
;		* =  $7600
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
		JSR	$1869
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
		JSR	$1869
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
		CMP	#$F0 ; ''
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
		LDX	#$B3 ; '≥'
		JSR	$187B
		JSR	sub_7746
		JSR	sub_774F
		LDX	#$B5 ; 'µ'
		JSR	$187B
		LDX	#$B7 ; '∑'
		JSR	$187B
		JSR	sub_7746
		LDX	#$B9 ; 'π'
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
		ADC	#$C8 ; '»'
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
		AND	#$F0 ; ''
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
		LDA	#$93 ; 'ì'
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
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_7F86
		LDA	#0
		STA	loc_7EB4+1
		LDA	#$BD ; 'Ω'
		STA	loc_7EB4+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

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
		ORA	#$80 ; 'Ä'
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
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_7F31:				; CODE XREF: RAM:7F42vj
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
		.BYTE $CF ; œ
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $FF
		.BYTE $C3 ; √
		.BYTE $F0 ; 
		.BYTE $F3 ; Û
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $CC ; Ã
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; Û
		.BYTE $F0 ; 
		.BYTE $CF ; œ
		.BYTE	3
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE	3
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $C
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $3D ; =
		.BYTE $CA ;  
		.BYTE $D5 ; ’
		.BYTE $3F ; ?
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $C5 ; ≈
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $F3 ; Û
		.BYTE $CF ; œ
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $A5 ; •
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $F3 ; Û
		.BYTE $FC ; ¸
		.BYTE $99 ; ô
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $83 ; É
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $C3 ; √
		.BYTE $F0 ; 
		.BYTE $7F ; 
		.BYTE $6F ; o
		.BYTE $A7 ; ß
		.BYTE $56 ; V
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $C3 ; √
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE  $F
		.BYTE $C3 ; √
		.BYTE $F0 ; 
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
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
		.BYTE $CF ; œ
		.BYTE $C0 ; ¿
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE  $F
		.BYTE  $F
		.BYTE $C0 ; ¿
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $CF ; œ
		.BYTE $C3 ; √
		.BYTE $C0 ; ¿
		.BYTE  $F
		.BYTE  $F
		.BYTE $F3 ; Û
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $C3 ; √
		.BYTE  $F
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE	3
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FA ; ˙
		.BYTE $A5 ; •
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE	3
		.BYTE $CF ; œ
		.BYTE $EA ; Í
		.BYTE $A5 ; •
		.BYTE $56 ; V
		.BYTE  $F
		.BYTE $C0 ; ¿
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $BF ; ø
		.BYTE $AA ; ™
		.BYTE $56 ; V
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $CF ; œ
		.BYTE $F0 ; 
		.BYTE $F3 ; Û
		.BYTE $3F ; ?
		.BYTE $C3 ; √
		.BYTE $F0 ; 
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE	3
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $3F ; ?
		.BYTE $C0 ; ¿
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $CF ; œ
		.BYTE $C0 ; ¿
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $CF ; œ
		.BYTE $F0 ; 
		.BYTE $F3 ; Û
		.BYTE	3
		.BYTE $3C ; <
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE  $F
		.BYTE $30 ; 0
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $C3 ; √
		.BYTE $F3 ; Û
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $F3 ; Û
		.BYTE  $F
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE  $F
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $F0 ; 
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE  $F
		.BYTE $C0 ; ¿
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE  $F
		.BYTE $C0 ; ¿
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $F3 ; Û
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE  $F
		.BYTE $F3 ; Û
		.BYTE $FC ; ¸
		.BYTE $CF ; œ
		.BYTE $C3 ; √
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $C3 ; √
		.BYTE $CC ; Ã
		.BYTE $3D ; =
		.BYTE $F5 ; ı
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $5A ; Z
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $59 ; Y
		.BYTE $1B
		.BYTE $1D
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $69 ; i
		.BYTE $95 ; ï
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
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $8F ; è
		.BYTE $50 ; P
		.BYTE $5B ; [
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $CF ; œ
		.BYTE  $F
		.BYTE $F3 ; Û
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $BC ; º
		.BYTE $5C ; \
		.BYTE $5B ; [
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $3C ; <
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $C0 ; ¿
		.BYTE $C3 ; √
		.BYTE  $F
		.BYTE $FF
		.BYTE $FF
		.BYTE  $F
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $CF ; œ
		.BYTE $C0 ; ¿
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $F3 ; Û
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE	3
		.BYTE $F1 ; Ò
		.BYTE $E5 ; Â
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $F9 ; ˘
		.BYTE $D5 ; ’
		.BYTE $95 ; ï
		.BYTE $59 ; Y
		.BYTE $55 ; U
		.BYTE $F2 ; Ú
		.BYTE $E5 ; Â
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $A5 ; •
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE  $E
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $95 ; ï
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
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $6B ; k
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $F3 ; Û
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE  $F
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; Û
		.BYTE $1B
		.BYTE	4
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $C3 ; √
		.BYTE $F3 ; Û
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE	0
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE  $F
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE  $F
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $C0 ; ¿
		.BYTE $3C ; <
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE	3
		.BYTE $F3 ; Û
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $C3 ; √
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $F3 ; Û
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $C0 ; ¿
		.BYTE $CF ; œ
		.BYTE  $F
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE  $F
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $F1 ; Ò
		.BYTE	5
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE  $A
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $A9 ; ©
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $59 ; Y
		.BYTE $65 ; e
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $65 ; e
		.BYTE $95 ; ï
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
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $69 ; i
		.BYTE $59 ; Y
		.BYTE $5A ; Z
		.BYTE $96 ; ñ
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $69 ; i
		.BYTE $1B
		.BYTE  $B
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $6F ; o
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $C0 ; ¿
		.BYTE $C3 ; √
		.BYTE $73 ; s
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $3F ; ?
		.BYTE $CD ; Õ
		.BYTE $59 ; Y
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $A5 ; •
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
		.BYTE $AB ; ´
		.BYTE $BA ; ∫
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $A8 ; ®
		.BYTE $BC ; º
		.BYTE $FC ; ¸
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $A5 ; •
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $6B ; k
		.BYTE $6B ; k
		.BYTE $5B ; [
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	5
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	3
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE  $F
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; Û
		.BYTE  $F
		.BYTE $CF ; œ
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE  $F
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $C0 ; ¿
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $CF ; œ
		.BYTE  $F
		.BYTE $C3 ; √
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE  $F
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $CF ; œ
		.BYTE $C0 ; ¿
		.BYTE $CF ; œ
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE $C3 ; √
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $C3 ; √
		.BYTE $F3 ; Û
		.BYTE $F0 ; 
		.BYTE $30 ; 0
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	3
		.BYTE $F3 ; Û
		.BYTE $CF ; œ
		.BYTE $3F ; ?
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
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE $3F ; ?
		.BYTE $C0 ; ¿
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE  $F
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE  $D
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
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
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $A3 ; £
		.BYTE $B3 ; ≥
		.BYTE $1B
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $59 ; Y
		.BYTE $A5 ; •
		.BYTE $96 ; ñ
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
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE $55 ; U
		.BYTE $A5 ; •
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	3
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $E9 ; È
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE $13
		.BYTE $55 ; U
		.BYTE $65 ; e
		.BYTE $65 ; e
		.BYTE $A5 ; •
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $A5 ; •
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
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $AE ; Æ
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $EF ; Ô
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $BF ; ø
		.BYTE $BE ; æ
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $E8 ; Ë
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $AB ; ´
		.BYTE $AF ; Ø
		.BYTE $83 ; É
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	6
		.BYTE $3F ; ?
		.BYTE $C3 ; √
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE $CF ; œ
		.BYTE $F3 ; Û
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; Û
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $56 ; V
		.BYTE $58 ; X
		.BYTE $58 ; X
		.BYTE $68 ; h
		.BYTE $C0 ; ¿
		.BYTE $80 ; Ä
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
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE	3
		.BYTE $FC ; ¸
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE  $F
		.BYTE $CF ; œ
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $F3 ; Û
		.BYTE $F3 ; Û
		.BYTE $CF ; œ
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
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
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FC ; ¸
		.BYTE $C0 ; ¿
		.BYTE $CF ; œ
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	8
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F3 ; Û
		.BYTE	3
		.BYTE $C5 ; ≈
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; ı
		.BYTE $D5 ; ’
		.BYTE $15
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $59 ; Y
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $C3 ; √
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $A5 ; •
		.BYTE $F3 ; Û
		.BYTE $CF ; œ
		.BYTE $CD ; Õ
		.BYTE	5
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $65 ; e
		.BYTE $D5 ; ’
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $54 ; T
		.BYTE $50 ; P
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $3A ; :
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $37 ; 7
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $A5 ; •
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $C9 ; …
		.BYTE $C5 ; ≈
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $59 ; Y
		.BYTE $1B
		.BYTE	2
		.BYTE $65 ; e
		.BYTE $96 ; ñ
		.BYTE $95 ; ï
		.BYTE $5F ; _
		.BYTE $5F ; _
		.BYTE $5B ; [
		.BYTE $52 ; R
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FB ; ˚
		.BYTE $BB ; ª
		.BYTE $2F ; /
		.BYTE  $B
		.BYTE $F2 ; Ú
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FB ; ˚
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $F0 ; 
		.BYTE $5A ; Z
		.BYTE $6A ; j
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE	5
		.BYTE	5
		.BYTE $9A ; ö
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $5B ; [
		.BYTE $5B ; [
		.BYTE $AF ; Ø
		.BYTE $BF ; ø
		.BYTE $AF ; Ø
		.BYTE $BB ; ª
		.BYTE $BE ; æ
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $FA ; ˙
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; ø
		.BYTE $EA ; Í
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $AE ; Æ
		.BYTE $FA ; ˙
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $B3 ; ≥
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $F3 ; Û
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $C0 ; ¿
		.BYTE $C3 ; √
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $CF ; œ
		.BYTE $C3 ; √
		.BYTE $CF ; œ
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $F3 ; Û
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $2A ; *
		.BYTE $EA ; Í
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $A9 ; ©
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $95 ; ï
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
		.BYTE $82 ; Ç
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $3C ; <
		.BYTE $BC ; º
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $56 ; V
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
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
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE	0
		.BYTE $CF ; œ
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $40 ; @
		.BYTE $F4 ; Ù
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $3D ; =
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE	0
		.BYTE	1
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE	7
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; ’
		.BYTE $C5 ; ≈
		.BYTE $C5 ; ≈
		.BYTE $C1 ; ¡
		.BYTE $C1 ; ¡
		.BYTE $C0 ; ¿
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
		.BYTE $DD ; ›
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $3A ; :
		.BYTE $29 ; )
		.BYTE $A5 ; •
		.BYTE $C2 ; ¬
		.BYTE	9
		.BYTE $25 ; %
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $51 ; Q
		.BYTE $41 ; A
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $E0 ; ‡
		.BYTE $F8 ; ¯
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
		.BYTE $BB ; ª
		.BYTE $EF ; Ô
		.BYTE $FB ; ˚
		.BYTE $FE ; ˛
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $3D ; =
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE $B0 ; ∞
		.BYTE $EA ; Í
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
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
		.BYTE $AE ; Æ
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE $AA ; ™
		.BYTE $F8 ; ¯
		.BYTE $EB ; Î
		.BYTE $BF ; ø
		.BYTE $FE ; ˛
		.BYTE $FA ; ˙
		.BYTE $E2 ; ‚
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE $4F ; O
		.BYTE $9F ; ü
		.BYTE $A7 ; ß
		.BYTE $A9 ; ©
		.BYTE $A9 ; ©
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $95 ; ï
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
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $96 ; ñ
		.BYTE $A5 ; •
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $A6 ; ¶
		.BYTE $AD ; ≠
		.BYTE $95 ; ï
		.BYTE $AA ; ™
		.BYTE $AC ; ¨
		.BYTE $AC ; ¨
		.BYTE $68 ; h
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $3E ; >
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $3E ; >
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $95 ; ï
		.BYTE $55 ; U
		.BYTE $6A ; j
		.BYTE $8E ; é
		.BYTE $1B
		.BYTE	2
		.BYTE $8F ; è
		.BYTE $8E ; é
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $83 ; É
		.BYTE $BF ; ø
		.BYTE $BF ; ø
		.BYTE $B7 ; ∑
		.BYTE $1B
		.BYTE	3
		.BYTE $BF ; ø
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	8
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE  $D
		.BYTE $FF
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
		.BYTE	7
		.BYTE $FF
		.BYTE $D7 ; ◊
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $FC ; ¸
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $15
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $F0 ; 
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
		.BYTE $D7 ; ◊
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	0
		.BYTE	2
		.BYTE $F2 ; Ú
		.BYTE $FA ; ˙
		.BYTE $F9 ; ˘
		.BYTE $E9 ; È
		.BYTE $E5 ; Â
		.BYTE $E5 ; Â
		.BYTE $95 ; ï
		.BYTE $94 ; î
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $7C ; |
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE  $F
		.BYTE $C3 ; √
		.BYTE $C3 ; √
		.BYTE $F8 ; ¯
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE	0
		.BYTE	8
		.BYTE  $E
		.BYTE $83 ; É
		.BYTE $83 ; É
		.BYTE $E3 ; „
		.BYTE $E3 ; „
		.BYTE $FF
		.BYTE  $E
		.BYTE	3
		.BYTE	3
		.BYTE $80 ; Ä
		.BYTE $E0 ; ‡
		.BYTE $F8 ; ¯
		.BYTE $F8 ; ¯
		.BYTE $FE ; ˛
		.BYTE  $F
		.BYTE $8F ; è
		.BYTE $EF ; Ô
		.BYTE $FF
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $37 ; 7
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $A0 ; †
		.BYTE	3
		.BYTE  $F
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE	2
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $AA ; ™
		.BYTE $2A ; *
		.BYTE $CA ;  
		.BYTE $C0 ; ¿
		.BYTE $C0 ; ¿
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; 
		.BYTE $A5 ; •
		.BYTE $1B
		.BYTE	2
		.BYTE $A8 ; ®
		.BYTE	0
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $FA ; ˙
		.BYTE  $F
		.BYTE	3
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE $F8 ; ¯
		.BYTE $3E ; >
		.BYTE $3E ; >
		.BYTE  $F
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AF ; Ø
		.BYTE $A0 ; †
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $A5 ; •
		.BYTE $29 ; )
		.BYTE $2A ; *
		.BYTE $EA ; Í
		.BYTE $CA ;  
		.BYTE $CA ;  
		.BYTE $F2 ; Ú
		.BYTE $F2 ; Ú
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $15
		.BYTE $15
		.BYTE	5
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE $80 ; Ä
		.BYTE $5A ; Z
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	4
		.BYTE $55 ; U
		.BYTE $AF ; Ø
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $6A ; j
		.BYTE $5A ; Z
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $B0 ; ∞
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	2
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $7F ; 
		.BYTE $F7 ; ˜
		.BYTE $FD ; ˝
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	8
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE  $A
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $7D ; }
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $E7 ; Á
		.BYTE $E7 ; Á
		.BYTE $EB ; Î
		.BYTE $FB ; ˚
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $FF
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $C3 ; √
		.BYTE $CF ; œ
		.BYTE $8F ; è
		.BYTE $AF ; Ø
		.BYTE	3
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $77 ; w
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $D7 ; ◊
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FD ; ˝
		.BYTE $7F ; 
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $85 ; Ö
		.BYTE $C1 ; ¡
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $D0 ; –
		.BYTE $50 ; P
		.BYTE $70 ; p
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	5
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $43 ; C
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE	0
		.BYTE	2
		.BYTE $82 ; Ç
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE  $F
		.BYTE $83 ; É
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $7F ; 
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $8F ; è
		.BYTE $8F ; è
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AF ; Ø
		.BYTE $A0 ; †
		.BYTE $A0 ; †
		.BYTE $AF ; Ø
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $CA ;  
		.BYTE $CA ;  
		.BYTE $C2 ; ¬
		.BYTE $C2 ; ¬
		.BYTE $CF ; œ
		.BYTE $1B
		.BYTE	2
		.BYTE $A0 ; †
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $EA ; Í
		.BYTE $25 ; %
		.BYTE $29 ; )
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $58 ; X
		.BYTE $68 ; h
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; ™
		.BYTE  $A
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $1B
		.BYTE $15
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $75 ; u
		.BYTE $7F ; 
		.BYTE $DD ; ›
		.BYTE $5F ; _
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $FF
		.BYTE $DD ; ›
		.BYTE $FF
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $5D ; ]
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $DF ; ﬂ
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $D5 ; ’
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $7D ; }
		.BYTE $7F ; 
		.BYTE $FD ; ˝
		.BYTE $7F ; 
		.BYTE $FD ; ˝
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
		.BYTE $FD ; ˝
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $F5 ; ı
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F5 ; ı
		.BYTE $57 ; W
		.BYTE $FD ; ˝
		.BYTE $77 ; w
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $FD ; ˝
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $D7 ; ◊
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $F5 ; ı
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $F7 ; ˜
		.BYTE $FD ; ˝
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $FD ; ˝
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
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $FF
		.BYTE $F5 ; ı
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $7F ; 
		.BYTE $DD ; ›
		.BYTE $D7 ; ◊
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FD ; ˝
		.BYTE $5F ; _
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $DD ; ›
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $7F ; 
		.BYTE $5F ; _
		.BYTE $D5 ; ’
		.BYTE $FF
		.BYTE $F4 ; Ù
		.BYTE $D4 ; ‘
		.BYTE $F5 ; ı
		.BYTE $D7 ; ◊
		.BYTE $DD ; ›
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $60 ; `
		.BYTE $60 ; `
		.BYTE $68 ; h
		.BYTE $58 ; X
		.BYTE $74 ; t
		.BYTE $55 ; U
		.BYTE $7D ; }
		.BYTE $DF ; ﬂ
		.BYTE $81 ; Å
		.BYTE $81 ; Å
		.BYTE $A1 ; °
		.BYTE $61 ; a
		.BYTE $61 ; a
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE $DD ; ›
		.BYTE $A3 ; £
		.BYTE $63 ; c
		.BYTE $51 ; Q
		.BYTE $D7 ; ◊
		.BYTE $55 ; U
		.BYTE $7D ; }
		.BYTE $57 ; W
		.BYTE $5D ; ]
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $5F ; _
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F5 ; ı
		.BYTE $DF ; ﬂ
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $77 ; w
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $DF ; ﬂ
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $EA ; Í
		.BYTE $EA ; Í
		.BYTE $FA ; ˙
		.BYTE $FA ; ˙
		.BYTE $FE ; ˛
		.BYTE $DE ; ﬁ
		.BYTE $FE ; ˛
		.BYTE $FF
		.BYTE $CF ; œ
		.BYTE $8F ; è
		.BYTE $8C ; å
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; ¸
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $C0 ; ¿
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $C1 ; ¡
		.BYTE $C1 ; ¡
		.BYTE $C5 ; ≈
		.BYTE $CD ; Õ
		.BYTE $CD ; Õ
		.BYTE $FE ; ˛
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE  $C
		.BYTE $3C ; <
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $A9 ; ©
		.BYTE $30 ; 0
		.BYTE $3C ; <
		.BYTE $57 ; W
		.BYTE $D5 ; ’
		.BYTE $75 ; u
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $C3 ; √
		.BYTE $C3 ; √
		.BYTE $F3 ; Û
		.BYTE $71 ; q
		.BYTE $51 ; Q
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $55 ; U
		.BYTE $DF ; ﬂ
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7D ; }
		.BYTE $F5 ; ı
		.BYTE $F7 ; ˜
		.BYTE $F7 ; ˜
		.BYTE $F5 ; ı
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $D7 ; ◊
		.BYTE $F7 ; ˜
		.BYTE $F5 ; ı
		.BYTE $F5 ; ı
		.BYTE $D7 ; ◊
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $F7 ; ˜
		.BYTE $FF
		.BYTE $FF
		.BYTE $5F ; _
		.BYTE $D7 ; ◊
		.BYTE $F7 ; ˜
		.BYTE $F7 ; ˜
		.BYTE $D7 ; ◊
		.BYTE $DF ; ﬂ
		.BYTE $F5 ; ı
		.BYTE $77 ; w
		.BYTE $FF
		.BYTE $F7 ; ˜
		.BYTE $DF ; ﬂ
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $F7 ; ˜
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
		.BYTE $CC ; Ã
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $C5 ; ≈
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
		.BYTE $EF ; Ô
		.BYTE $3C ; <
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $E1 ; ·
		.BYTE $F7 ; ˜
		.BYTE $3C ; <
		.BYTE $ED ; Ì
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $E0 ; ‡
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $EF ; Ô
		.BYTE $E1 ; ·
		.BYTE $BF ; ø
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F0 ; 
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
		.BYTE $80 ; Ä
		.BYTE  $F
		.BYTE	0
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $1E
		.BYTE	3
		.BYTE $DA ; ⁄
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE $3E ; >
		.BYTE $9C ; ú
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $3C ; <
		.BYTE $1F
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $CC ; Ã
		.BYTE $35 ; 5
		.BYTE $34 ; 4
		.BYTE $9C ; ú
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
