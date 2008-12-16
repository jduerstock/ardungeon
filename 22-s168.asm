		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		.ORG	$7600
		.BYTE	$14
; ---------------------------------------------------------------------------
		JMP	loc_7610
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_7A75
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604^j	RAM:7607^j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601^j
		ldxy	$7508
		LDA	#1
		JSR	j_TESTBIT
		BCS	loc_7628
		dldi	off_7, $7BF1
		LDA	#2
		JSR	$180F

loc_7628:				; CODE XREF: RAM:7619^j
		LDA	#$FF
		STA	$1937
		dldi	off_16, $775C
		JSR	$184B
		LDA	$1933
		STA	$62
		dldi	off_1977, loc_7648
		RTS
; ---------------------------------------------------------------------------

loc_7648:
		ldxy	$7508
		LDA	#1
		JSR	j_TESTBIT
		BCC	loc_765E
		dldi	off_16, $77D1
		JMP	loc_76F6
; ---------------------------------------------------------------------------

loc_765E:				; CODE XREF: RAM:7651^j
		dldi	off_16, $775E
		LDX	$62
		JSR	j_sub_3C5C
		JSR	sub_770F
		LDA	$1976
		BMI	loc_76EE
		CMP	#8
		BCC	loc_76EE

loc_7677:				; CODE XREF: RAM:76A6vj
		JSR	sub_7714
		BCS	loc_76EE
		dldi	off_16, $7869
		LDX	$62
		JSR	j_sub_3C5C

loc_7689:				; CODE XREF: RAM:7698vj
		dldi	off_1977, loc_7696
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7696:
		LDA	$31
		BMI	loc_7689
		JSR	j_UPPER
		CMP	#'Y'
		BNE	loc_76A4
		JMP	loc_76AB
; ---------------------------------------------------------------------------

loc_76A4:				; CODE XREF: RAM:769F^j
		CMP	#'N'
		BNE	loc_7677
		JMP	loc_76FE
; ---------------------------------------------------------------------------

loc_76AB:				; CODE XREF: RAM:76A1^j
		dldi	off_16, $7902
		LDX	$62
		JSR	j_sub_3C5C
		LDA	#$F
		JSR	j_sub_2BFC
		dldi	off_16, $775C
		LDX	$62
		JSR	j_sub_3C5C
		LDA	$64
		STA	$4B
		JSR	$1887
		LDY	#2
		LDA	#$10
		STA	(off_41),Y
		JSR	j_sub_408B
		ldxy	$7508
		LDA	#1
		SEC
		JSR	j_SETBIT
		ldxy	$7953
		JSR	$1884
		JMP	loc_76FE
; ---------------------------------------------------------------------------

loc_76EE:				; CODE XREF: RAM:7671^j	RAM:7675^j ...
		dldi	off_16, $780E

loc_76F6:				; CODE XREF: RAM:765B^j
		LDX	$62
		JSR	j_sub_3C5C
		JSR	sub_770F

loc_76FE:				; CODE XREF: RAM:76A8^j	RAM:76EB^j
		LDX	#4

loc_7700:				; CODE XREF: RAM:7707vj
		LDA	$6318,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_7700
		STX	$AC00
		JMP	$180C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_770F:				; CODE XREF: RAM:766B^p	RAM:76FB^p
		LDA	#$A
		JMP	j_sub_2BFC
; End of function sub_770F


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7714:				; CODE XREF: RAM:loc_7677^p
		LDX	#$FF
		STX	$64
		INX
		STX	$67
		LDA	#3
		STA	$63

loc_771F:				; CODE XREF: sub_7714+2Cvj
		LDX	$63
		LDA	$63A2,X
		BMI	loc_773E
		STA	$4B
		JSR	$1887
		JSR	$1896
		LDY	#0
		LDA	($43),Y
		BMI	loc_773E
		CMP	$67
		BCC	loc_773E
		STA	$67
		LDA	$4B
		STA	$64

loc_773E:				; CODE XREF: sub_7714+10^j sub_7714+1E^j ...
		DEC	$63
		BPL	loc_771F
		LDA	$64
		BPL	loc_7748
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_7748:				; CODE XREF: sub_7714+30^j
		STA	$4B
		JSR	$1887
		CLC
		LDA	#6
		ADC	off_41
		STA	$65
		LDA	off_41+1
		ADC	#0
		STA	$66
		CLC
		RTS
; End of function sub_7714

; ---------------------------------------------------------------------------
		.BYTE	$A8,$FF

		MOVEXY	0,1
		.BYTE	$A5,"You enter a room filled with mirrors.",$0D,$0D
		.BYTE	$A5,"A magnificently clad warhorse is",$0D
		.BYTE	$A5,"admiring himself in an oval mirror.",$0D,$FF

		MOVEXY	0,1
		.BYTE	$A5,"The room is completely dark and",$0D,$0D
		.BYTE	$A5,"there is nobody here.",$0D,$FF

		MOVEXY	0,0
		.BYTE	$A5,"The Clothes Horse remarks:",$0D,$0D
		.BYTE	$A5,$22,"Your attire is not fit for a pauper.",$0D,$0D
		.BYTE	$A5,"You must leave!",$22,$0D,$FF

		MOVEXY	0,0
		.BYTE	$A5,"The Clothes Horse says:",$0D,$0D
		.BYTE	$A5,$22,"That "
		PRINTSTRP $65, 25
		.BYTE	" would",$0D
		.BYTE	$A5,"look much better on me.  I must have it!",$0D
		.BYTE	$A5,"I shall trade my mirror for it.",$22,$0D,$0D
		.BYTE	$A5,"Do you trade? ("
		BLINK "Y"
		.BYTE " or "
		BLINK "N"
		.BYTE ")",$0D,$FF

		MOVEXY	0,2
		.BYTE	$A5,"You hand the Clothes Horse your",$0D,$0D
		.BYTE	$A5
		PRINTSTRP $65, 30
		.BYTE	" and he",$0D,$0D
		.BYTE	$A5,"hands you a shining shield.",$D,$FF

		.BYTE	3
		.BYTE $4A ; J
		.BYTE	1
		.BYTE	0
		.BYTE  $A
		.BYTE $16
aMirroredShield:.BYTE "Mirrored Shield",0
		.BYTE $88 ; �
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $81 ; �
		.BYTE $AC ; �
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $88 ; �
		.BYTE $FF
		.BYTE	8
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $91 ; �
		.BYTE $AC ; �
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
		.BYTE $10
		.BYTE $FF
		.BYTE $FF
		.BYTE $82 ; �
		.BYTE $60 ; `
byte_799D:	.BYTE $70 ; p		; DATA XREF: RAM:79CDvo
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42
		.WORD $400
		.BYTE $80 ; �
		.BYTE	2
		.BYTE $80 ; �
		.BYTE	2
		.BYTE $80 ; �
		.BYTE	2
		.BYTE $80 ; �
		.BYTE	2
		.BYTE $80 ; �
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
		.WORD	$0658
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
		.WORD	byte_799D
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
		LDY	#$90 ; '�'
		STA	WSYNC
		STA	$D000
		STX	$D001
		STY	$D002
		STA	WSYNC
		LDA	#$B0 ; '�'
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

loc_7A33:				; CODE XREF: RAM:7A58vj
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
		BPL	loc_7A33
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

loc_7A75:				; CODE XREF: RAM:760A^j
		LDA	#$7F
		STA	$253
		dldi	off_254, $799D
		LDA	#8
		LDX	#$23

loc_7A88:				; CODE XREF: RAM:7A96vj
		LDY	#$C

loc_7A8A:				; CODE XREF: RAM:7A91vj
		STA	$BB4C,X
		DEX
		BMI	loc_7A98
		DEY
		BNE	loc_7A8A
		CLC
		ADC	#4
		BNE	loc_7A88

loc_7A98:				; CODE XREF: RAM:7A8E^j

		dldi	off_9, $0800
		JSR	loc_7B90
		dldi	off_9, $BB70
		JSR	loc_7B90
		dldi	loc_7ABE+1, $BD00
		LDY	#3
		LDA	#0
		LDX	#$80

loc_7ABE:				; CODE XREF: RAM:7AC2vj	RAM:7AC8vj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7ABE
		INC	loc_7ABE+2
		DEY
		BNE	loc_7ABE
		LDX	#7

loc_7ACC:				; CODE XREF: RAM:7AD0vj
		STA	$D000,X
		DEX
		BPL	loc_7ACC
		LDA	#3
		TAX

loc_7AD5:				; CODE XREF: RAM:7AD9vj
		STA	$D008,X
		DEX
		BPL	loc_7AD5
		ldi	SIZEM, $FF
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_7B03:				; CODE XREF: RAM:7B29vj
		LDY	6
		LDA	(off_7),Y
		STA	4
		LDY	#7

loc_7B0B:				; CODE XREF: RAM:7B16vj
		LSR	4
		BCC	loc_7B15
		LDA	(off_9),Y
		ORA	#$80 ; '�'
		STA	(off_9),Y

loc_7B15:				; CODE XREF: RAM:7B0D^j
		DEY
		BPL	loc_7B0B
		LDA	off_9
		CLC
		ADC	#8
		STA	off_9
		BCC	loc_7B23
		INC	off_9+1

loc_7B23:				; CODE XREF: RAM:7B1F^j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_7B03
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		dldi	$F0, $BDA9

loc_7B3B:				; CODE XREF: RAM:7B4Cvj
		CLC
		LDA	$F0,X
		ADC	#$80
		STA	$F2,X
		LDA	$F1,X
		ADC	#0
		STA	$F3,X
		INX
		INX
		CPX	#8
		BCC	loc_7B3B

loc_7B4E:				; CODE XREF: RAM:7B6Bvj
		LDX	#0

loc_7B50:				; CODE XREF: RAM:7B69vj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_7B56:				; CODE XREF: RAM:7B5Bvj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_7B56
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_7B6D
		CPX	#$A
		BCC	loc_7B50
		BCS	loc_7B4E

loc_7B6D:				; CODE XREF: RAM:7B65^j
		LDX	#3
		LDA	$BC5F

loc_7B72:				; CODE XREF: RAM:7B76vj
		STA	COLPM0,X
		DEX
		BPL	loc_7B72
		dldi	off_24A, $79CF
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_7B90:				; CODE XREF: RAM:7AA0^p	RAM:7AAB^p ...
		LDY	#0
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_7B9A
		INC	off_7+1

loc_7B9A:				; CODE XREF: RAM:7B96^j
		CMP	#$1B
		BEQ	loc_7BA9
		STA	(off_9),Y
		INC	off_9
		BNE	loc_7BA6
		INC	off_9+1

loc_7BA6:				; CODE XREF: RAM:7BA2^j
		JMP	loc_7B90
; ---------------------------------------------------------------------------

loc_7BA9:				; CODE XREF: RAM:7B9C^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_7BB1
		INC	off_7+1

loc_7BB1:				; CODE XREF: RAM:7BAD^j
		CMP	#$FF
		BNE	loc_7BB6
		RTS
; ---------------------------------------------------------------------------

loc_7BB6:				; CODE XREF: RAM:7BB3^j
		STA	byte_7BF0
		ADC	off_9
		STA	loc_7BC9+1
		LDA	off_9+1
		ADC	#0
		CMP	#$14
		BNE	loc_7BCE
		LDA	byte_7BF0

loc_7BC9:				; DATA XREF: RAM:7BBB^w
		SBC	#$FF
		STA	byte_7BF0

loc_7BCE:				; CODE XREF: RAM:7BC4^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_7BD6
		INC	off_7+1

loc_7BD6:				; CODE XREF: RAM:7BD2^j
		LDY	byte_7BF0

loc_7BD9:				; CODE XREF: RAM:7BDCvj
		STA	(off_9),Y
		DEY
		BPL	loc_7BD9
		INC	byte_7BF0
		LDA	byte_7BF0
		CLC
		ADC	off_9
		STA	off_9
		BCC	loc_7BED
		INC	off_9+1

loc_7BED:				; CODE XREF: RAM:7BE9^j
		JMP	loc_7B90
; ---------------------------------------------------------------------------
byte_7BF0:	.BYTE 0			; DATA XREF: RAM:loc_7BB6^w RAM:7BC6^r ...
		.BYTE $1B
		.BYTE	5
		.BYTE $3D ; =
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $D5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $FD ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $F9 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $F5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $F8 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $2B ; +
		.BYTE $1B
		.BYTE	7
		.BYTE $FD ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	3
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $E8 ; �
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $B3 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; �
		.BYTE $8F ; �
		.BYTE $8F ; �
		.BYTE $BF ; �
		.BYTE $1B
		.BYTE	4
		.BYTE $8F ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $C5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	7
		.BYTE  $E
		.BYTE $1B
		.BYTE	7
		.BYTE $D5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $FB ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $D5 ; �
		.BYTE $1B
		.BYTE	4
		.BYTE $6A ; j
		.BYTE $4A ; J
		.BYTE $4A ; J
		.BYTE $42 ; B
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $8A ; �
		.BYTE $8A ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $FD ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $66 ; f
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $BD ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	6
		.BYTE $AF ; �
		.BYTE $AC ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $56 ; V
		.BYTE $58 ; X
		.BYTE $60 ; `
		.BYTE $41 ; A
		.BYTE	5
		.BYTE $39 ; 9
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE  $A
		.BYTE $4A ; J
		.BYTE $42 ; B
		.BYTE $50 ; P
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	6
		.BYTE $BF ; �
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE	7
		.BYTE $99 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $97 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $D5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $F9 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $FD ; �
		.BYTE $F9 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $F5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $F8 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $2B ; +
		.BYTE $1B
		.BYTE	7
		.BYTE $FD ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $28 ; (
		.BYTE $E8 ; �
		.BYTE $28 ; (
		.BYTE $E8 ; �
		.BYTE $E8 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $B3 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	4
		.BYTE $BF ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $8F ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $C5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	7
		.BYTE  $E
		.BYTE $1B
		.BYTE	7
		.BYTE $D5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $FB ; �
		.BYTE $D5 ; �
		.BYTE $D1 ; �
		.BYTE $D1 ; �
		.BYTE $D4 ; �
		.BYTE $14
		.BYTE	4
		.BYTE $C5 ; �
		.BYTE $C1 ; �
		.BYTE $42 ; B
		.BYTE $42 ; B
		.BYTE $40 ; @
		.BYTE $40 ; @
		.BYTE $4C ; L
		.BYTE $FC ; �
		.BYTE $F0 ; �
		.BYTE $C0 ; �
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	2
		.BYTE $22 ; "
		.BYTE	2
		.BYTE $C2 ; �
		.BYTE $F3 ; �
		.BYTE $FF
		.BYTE $F1 ; �
		.BYTE $C1 ; �
		.BYTE	1
		.BYTE	1
		.BYTE $1B
		.BYTE	2
		.BYTE  $D
		.BYTE $CD ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $66 ; f
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $BD ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $5A ; Z
		.BYTE $A8 ; �
		.BYTE $A3 ; �
		.BYTE $A3 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $8B ; �
		.BYTE $3B ; ;
		.BYTE $3B ; ;
		.BYTE $FE ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FC ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $56 ; V
		.BYTE $95 ; �
		.BYTE $A5 ; �
		.BYTE $E5 ; �
		.BYTE $E5 ; �
		.BYTE $29 ; )
		.BYTE	9
		.BYTE	9
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $4F ; O
		.BYTE $1B
		.BYTE	7
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE	7
		.BYTE $99 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $97 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	6
		.BYTE $95 ; �
		.BYTE $B5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	7
		.BYTE $F9 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $F5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $F8 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $2B ; +
		.BYTE $FD ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $F1 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $C1 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	7
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	7
		.BYTE $54 ; T
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	3
		.BYTE  $F
		.BYTE $1B
		.BYTE	7
		.BYTE $B3 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $A0 ; �
		.BYTE	0
		.BYTE $1B
		.BYTE	5
		.BYTE $8F ; �
		.BYTE $13
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE $C5 ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $54 ; T
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE  $E
		.BYTE $3E ; >
		.BYTE $1B
		.BYTE	7
		.BYTE $D5 ; �
		.BYTE $F8 ; �
		.BYTE $F8 ; �
		.BYTE $FB ; �
		.BYTE $FB ; �
		.BYTE $F0 ; �
		.BYTE $F8 ; �
		.BYTE $FB ; �
		.BYTE $C0 ; �
		.BYTE $D0 ; �
		.BYTE $10
		.BYTE $13
		.BYTE $C3 ; �
		.BYTE $CF ; �
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $DB ; -
		.BYTE $FF
		.BYTE $FE ; �
		.BYTE $FA ; �
		.BYTE $F8 ; �
		.BYTE $EF ; �
		.BYTE $F3 ; �
		.BYTE $73 ; s
		.BYTE $EF ; �
		.BYTE $AB ; �
		.BYTE $8A ; �
		.BYTE $1B
		.BYTE	2
		.BYTE	2
		.BYTE $C2 ; �
		.BYTE $A0 ; �
		.BYTE $F5 ; �
		.BYTE $C5 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $C1 ; �
		.BYTE $F0 ; �
		.BYTE $B3 ; �
		.BYTE $B0 ; �
		.BYTE $66 ; f
		.BYTE $EA ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FA ; �
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $F5 ; �
		.BYTE $55 ; U
		.BYTE $AA ; �
		.BYTE $56 ; V
		.BYTE $BD ; �
		.BYTE $BD ; �
		.BYTE $AF ; �
		.BYTE $AA ; �
		.BYTE $56 ; V
		.BYTE $69 ; i
		.BYTE $AA ; �
		.BYTE $95 ; �
		.BYTE $58 ; X
		.BYTE $58 ; X
		.BYTE $E8 ; �
		.BYTE $E3 ; �
		.BYTE $A3 ; �
		.BYTE $63 ; c
		.BYTE $A3 ; �
		.BYTE $53 ; S
		.BYTE $1B
		.BYTE	7
		.BYTE $FB ; �
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $FC ; �
		.BYTE $FC ; �
		.BYTE $F3 ; �
		.BYTE $F9 ; �
		.BYTE $F9 ; �
		.BYTE $CA ; �
		.BYTE $3E ; >
		.BYTE $FE ; �
		.BYTE $32 ; 2
		.BYTE $F2 ; �
		.BYTE $EA ; �
		.BYTE $4F ; O
		.BYTE $43 ; C
		.BYTE $1B
		.BYTE	5
		.BYTE $53 ; S
		.BYTE $1B
		.BYTE	7
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE	7
		.BYTE $99 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $97 ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $52 ; R
		.BYTE $3D ; =
		.BYTE $FF
		.BYTE $F7 ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $7E ; ~
		.BYTE $FF
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $EA ; �
		.BYTE $A8 ; �
		.BYTE $59 ; Y
		.BYTE $58 ; X
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $95 ; �
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $99 ; �
		.BYTE $4A ; J
		.BYTE $AA ; �
		.BYTE $EA ; �
		.BYTE $D9 ; �
		.BYTE $EA ; �
		.BYTE $AB ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; �
		.BYTE $E0 ; �
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $7F ; 
		.BYTE $FC ; �
		.BYTE  $D
		.BYTE $FF
		.BYTE $F7 ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $EB ; �
		.BYTE $FF
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $EA ; �
		.BYTE $A8 ; �
		.BYTE $59 ; Y
		.BYTE $59 ; Y
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $65 ; e
		.BYTE $95 ; �
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $B5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	7
		.BYTE $F9 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $F5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $F8 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $2B ; +
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $C1 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE	1
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	7
		.BYTE $28 ; (
		.BYTE $1B
		.BYTE	7
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	7
		.BYTE  $F
		.BYTE $1B
		.BYTE	5
		.BYTE $B3 ; �
		.BYTE $B2 ; �
		.BYTE $B2 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $57 ; W
		.BYTE $5F ; _
		.BYTE $5E ; ^
		.BYTE $7E ; ~
		.BYTE $7B ; {
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $BF ; �
		.BYTE $BF ; �
		.BYTE $FF
		.BYTE $FC ; �
		.BYTE $F8 ; �
		.BYTE $E0 ; �
		.BYTE $CC ; �
		.BYTE $F3 ; �
		.BYTE $F0 ; �
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $FF
		.BYTE $3C ; <
		.BYTE $A8 ; �
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE  $A
		.BYTE	2
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	5
		.BYTE	1
		.BYTE	1
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $FE ; �
		.BYTE $7E ; ~
		.BYTE $FE ; �
		.BYTE $FE ; �
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $AA ; �
		.BYTE $15
		.BYTE $D5 ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; �
		.BYTE $AB ; �
		.BYTE $55 ; U
		.BYTE $AA ; �
		.BYTE $54 ; T
		.BYTE $F4 ; �
		.BYTE $C4 ; -
		.BYTE $F0 ; �
		.BYTE $F3 ; �
		.BYTE $33 ; 3
		.BYTE $43 ; C
		.BYTE $4F ; O
		.BYTE  $F
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $BF ; �
		.BYTE $AF ; �
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; �
		.BYTE $F0 ; �
		.BYTE $A0 ; �
		.BYTE $E0 ; �
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3C ; <
		.BYTE $BC ; �
		.BYTE $BF ; �
		.BYTE $FC ; �
		.BYTE $F0 ; �
		.BYTE $C0 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $AA ; �
		.BYTE $BF ; �
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $6A ; j
		.BYTE $56 ; V
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $A6 ; �
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $A4 ; �
		.BYTE $A1 ; �
		.BYTE $4A ; J
		.BYTE $5D ; ]
		.BYTE $AA ; �
		.BYTE $96 ; �
		.BYTE $63 ; c
		.BYTE $8F ; �
		.BYTE $4F ; O
		.BYTE $1B
		.BYTE	4
		.BYTE $8F ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $FB ; �
		.BYTE $F8 ; �
		.BYTE $C0 ; �
		.BYTE $C0 ; �
		.BYTE	0
		.BYTE $20
		.BYTE $CF ; �
		.BYTE $FF
		.BYTE $BF ; �
		.BYTE  $B
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $C2 ; �
		.BYTE	2
		.BYTE $C2 ; �
		.BYTE $F2 ; �
		.BYTE $FE ; �
		.BYTE $BE ; �
		.BYTE $3E ; >
		.BYTE  $E
		.BYTE $1B
		.BYTE	7
		.BYTE $53 ; S
		.BYTE $1B
		.BYTE	7
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE	7
		.BYTE $99 ; �
		.BYTE $1B
		.BYTE	4
		.BYTE $97 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	4
		.BYTE $57 ; W
		.BYTE $D7 ; �
		.BYTE $F7 ; �
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $B5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	7
		.BYTE $F9 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $F5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $F8 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	7
		.BYTE	1
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	7
		.BYTE $28 ; (
		.BYTE $54 ; T
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE  $F
		.BYTE  $F
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $B2 ; �
		.BYTE $BE ; �
		.BYTE $B2 ; �
		.BYTE $B2 ; �
		.BYTE $BE ; �
		.BYTE $BE ; �
		.BYTE $B2 ; �
		.BYTE $B2 ; �
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $AB ; �
		.BYTE $AF ; �
		.BYTE $BF ; �
		.BYTE $BE ; �
		.BYTE $FE ; �
		.BYTE $FB ; �
		.BYTE $FB ; �
		.BYTE $EF ; �
		.BYTE $BE ; �
		.BYTE $F8 ; �
		.BYTE $F8 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $E0 ; �
		.BYTE $80 ; �
		.BYTE $1B
		.BYTE	9
		.BYTE	0
		.BYTE	3
		.BYTE  $F
		.BYTE $2E ; .
		.BYTE $BE ; �
		.BYTE	2
		.BYTE  $A
		.BYTE $3B ; ;
		.BYTE $EF ; �
		.BYTE $AF ; �
		.BYTE $BF ; �
		.BYTE $BF ; �
		.BYTE $FF
		.BYTE $A0 ; �
		.BYTE $B8 ; �
		.BYTE $AE ; �
		.BYTE $EF ; �
		.BYTE $EB ; �
		.BYTE $FB ; �
		.BYTE $FA ; �
		.BYTE $FE ; �
		.BYTE $1A
		.BYTE $25 ; %
		.BYTE $2A ; *
		.BYTE $E9 ; �
		.BYTE $F9 ; �
		.BYTE $FE ; �
		.BYTE $FF
		.BYTE $FE ; �
		.BYTE $A9 ; �
		.BYTE $51 ; Q
		.BYTE $A4 ; �
		.BYTE $14
		.BYTE $43 ; C
		.BYTE $CF ; �
		.BYTE $BF ; �
		.BYTE $FE ; �
		.BYTE $BE ; �
		.BYTE $BA ; �
		.BYTE $F8 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; �
		.BYTE $BC ; �
		.BYTE $AF ; �
		.BYTE $AF ; �
		.BYTE $2B ; +
		.BYTE  $B
		.BYTE  $A
		.BYTE $1B
		.BYTE	3
		.BYTE	2
		.BYTE $1B
		.BYTE	3
		.BYTE $F0 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; �
		.BYTE $BC ; �
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE  $C
		.BYTE  $C
		.BYTE $2F ; /
		.BYTE $2B ; +
		.BYTE $A6 ; �
		.BYTE $96 ; �
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $20
		.BYTE $F8 ; �
		.BYTE $FE ; �
		.BYTE $BF ; �
		.BYTE	2
		.BYTE $82 ; �
		.BYTE $80 ; �
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE $AF ; �
		.BYTE $FE ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $15
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $97 ; �
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $AA ; �
		.BYTE $FD ; �
		.BYTE $5C ; \
		.BYTE $A2 ; �
		.BYTE $8F ; �
		.BYTE $8F ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $4F ; O
		.BYTE $8F ; �
		.BYTE $4F ; O
		.BYTE $4F ; O
		.BYTE $20
		.BYTE $20
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $E0 ; �
		.BYTE $CA ; �
		.BYTE $C0 ; �
		.BYTE $A0 ; �
		.BYTE $80 ; �
		.BYTE $80 ; �
		.BYTE	0
		.BYTE	2
		.BYTE	8
		.BYTE $A0 ; �
		.BYTE	3
		.BYTE  $E
		.BYTE  $E
		.BYTE $3E ; >
		.BYTE $3A ; :
		.BYTE  $A
		.BYTE $2A ; *
		.BYTE $AA ; �
		.BYTE $EA ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $53 ; S
		.BYTE $1B
		.BYTE	7
		.BYTE $65 ; e
		.BYTE $99 ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $95 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $B5 ; �
		.BYTE $BD ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $BF ; �
		.BYTE $1B
		.BYTE	4
		.BYTE $6A ; j
		.BYTE $1B
		.BYTE	2
		.BYTE $EA ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $F9 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $F5 ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $F6 ; �
		.BYTE $F8 ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $B8 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE	0
		.BYTE $A0 ; �
		.BYTE $A8 ; �
		.BYTE $A8 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $6A ; j
		.BYTE $29 ; )
		.BYTE $29 ; )
		.BYTE $1B
		.BYTE	2
		.BYTE $2B ; +
		.BYTE $1B
		.BYTE	2
		.BYTE $2A ; *
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $D5 ; �
		.BYTE $FD ; �
		.BYTE $FF
		.BYTE $BF ; �
		.BYTE $AB ; �
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $AF ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $B2 ; �
		.BYTE $F8 ; �
		.BYTE $1B
		.BYTE	5
		.BYTE $FF
		.BYTE $BF ; �
		.BYTE $A0 ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $80 ; �
		.BYTE	0
		.BYTE	2
		.BYTE  $A
		.BYTE  $B
		.BYTE $2B ; +
		.BYTE $1B
		.BYTE	2
		.BYTE $2F ; /
		.BYTE $BE ; �
		.BYTE $FA ; �
		.BYTE $FB ; �
		.BYTE $EB ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $EF ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $FE ; �
		.BYTE $FE ; �
		.BYTE $FF
		.BYTE $FE ; �
		.BYTE $FA ; �
		.BYTE $EA ; �
		.BYTE $EE ; �
		.BYTE $AA ; �
		.BYTE $BB ; �
		.BYTE $EB ; �
		.BYTE $AF ; �
		.BYTE $AF ; �
		.BYTE $BF ; �
		.BYTE $BF ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $FE ; �
		.BYTE $FA ; �
		.BYTE $FB ; �
		.BYTE $EB ; �
		.BYTE $AC ; �
		.BYTE $BC ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; �
		.BYTE $EF ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $2F ; /
		.BYTE $1B
		.BYTE	2
		.BYTE  $B
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $C0 ; �
		.BYTE $F0 ; �
		.BYTE $F0 ; �
		.BYTE $FC ; �
		.BYTE $FF
		.BYTE $1B
		.BYTE	6
		.BYTE $BC ; �
		.BYTE $BE ; �
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE $EA ; �
		.BYTE $94 ; �
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $95 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE  $A
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $FE ; �
		.BYTE $56 ; V
		.BYTE $A8 ; �
		.BYTE $A2 ; �
		.BYTE $A2 ; �
		.BYTE $EF ; �
		.BYTE $A2 ; �
		.BYTE $8A ; �
		.BYTE $BE ; �
		.BYTE $95 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $EA ; �
		.BYTE $8F ; �
		.BYTE $8F ; �
		.BYTE $A3 ; �
		.BYTE $61 ; a
		.BYTE $1B
		.BYTE	3
		.BYTE $A2 ; �
		.BYTE $FA ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $FB ; �
		.BYTE $3B ; ;
		.BYTE $83 ; �
		.BYTE $90 ; �
		.BYTE $6A ; j
		.BYTE $AF ; �
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $80 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $E9 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $F9 ; �
		.BYTE $E9 ; �
		.BYTE $43 ; C
		.BYTE $1B
		.BYTE	6
		.BYTE $4F ; O
		.BYTE $1B
		.BYTE	7
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE	7
		.BYTE $95 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $11
		.BYTE $1F
		.BYTE $F5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $2F ; /
		.BYTE $FA ; �
		.BYTE $AF ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $FA ; �
		.BYTE $BF ; �
		.BYTE $FB ; �
		.BYTE $FC ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $FA ; �
		.BYTE $AA ; �
		.BYTE $FA ; �
		.BYTE $AE ; �
		.BYTE $AA ; �
		.BYTE $5A ; Z
		.BYTE $F5 ; �
		.BYTE $55 ; U
		.BYTE $50 ; P
		.BYTE	0
		.BYTE $1A
		.BYTE $F6 ; �
		.BYTE $AA ; �
		.BYTE $B9 ; �
		.BYTE $55 ; U
		.BYTE $4D ; M
		.BYTE $11
		.BYTE $17
		.BYTE $FC ; �
		.BYTE $7F ; 
		.BYTE $1B
		.BYTE	6
		.BYTE $FF
		.BYTE $6F ; o
		.BYTE $FF
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $AB ; �
		.BYTE $FF
		.BYTE $FB ; �
		.BYTE $1B
		.BYTE	4
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $BF ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $EA ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $F9 ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $D5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $F5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $B8 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $80 ; �
		.BYTE $55 ; U
		.BYTE $A5 ; �
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $6A ; j
		.BYTE $A8 ; �
		.BYTE	0
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $6A ; j
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $AB ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE	0
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $AF ; �
		.BYTE	0
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $AE ; �
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $AF ; �
		.BYTE $FF
		.BYTE	0
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $82 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $A2 ; �
		.BYTE $A0 ; �
		.BYTE	2
		.BYTE $EA ; �
		.BYTE $FB ; �
		.BYTE $BF ; �
		.BYTE $BF ; �
		.BYTE $BB ; �
		.BYTE $FB ; �
		.BYTE $FB ; �
		.BYTE $EF ; �
		.BYTE $EE ; �
		.BYTE $FE ; �
		.BYTE $FA ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $80 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $E0 ; �
		.BYTE $C0 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $2F ; /
		.BYTE $1B
		.BYTE	4
		.BYTE $EF ; �
		.BYTE $AF ; �
		.BYTE $BF ; �
		.BYTE $BF ; �
		.BYTE $FA ; �
		.BYTE $EB ; �
		.BYTE $EF ; �
		.BYTE $EB ; �
		.BYTE $FB ; �
		.BYTE $FA ; �
		.BYTE $FE ; �
		.BYTE $FA ; �
		.BYTE $FB ; �
		.BYTE $EB ; �
		.BYTE $EF ; �
		.BYTE $AF ; �
		.BYTE $BF ; �
		.BYTE $BE ; �
		.BYTE $FE ; �
		.BYTE $FB ; �
		.BYTE $FE ; �
		.BYTE $FA ; �
		.BYTE $1B
		.BYTE	5
		.BYTE $FB ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $C0 ; �
		.BYTE	2
		.BYTE	2
		.BYTE $1B
		.BYTE	5
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; �
		.BYTE $BF ; �
		.BYTE $2B ; +
		.BYTE	2
		.BYTE	3
		.BYTE	3
		.BYTE $EB ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $B8 ; �
		.BYTE $EC ; �
		.BYTE $FC ; �
		.BYTE $E5 ; �
		.BYTE $EA ; �
		.BYTE $EA ; �
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $BF ; �
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $FA ; �
		.BYTE $56 ; V
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $A2 ; �
		.BYTE $BA ; �
		.BYTE $8A ; �
		.BYTE $2A ; *
		.BYTE $FF
		.BYTE $D5 ; �
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $FA ; �
		.BYTE $28 ; (
		.BYTE $A8 ; �
		.BYTE $AC ; �
		.BYTE $A2 ; �
		.BYTE $8A ; �
		.BYTE $EA ; �
		.BYTE $2A ; *
		.BYTE $AA ; �
		.BYTE $A9 ; �
		.BYTE $AE ; �
		.BYTE $9A ; �
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $8A ; �
		.BYTE $8A ; �
		.BYTE $85 ; �
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $A9 ; �
		.BYTE $AB ; �
		.BYTE $A6 ; �
		.BYTE $BA ; �
		.BYTE $6A ; j
		.BYTE $AA ; �
		.BYTE $65 ; e
		.BYTE $65 ; e
		.BYTE $A5 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $85 ; �
		.BYTE $1C
		.BYTE  $F
		.BYTE $1B
		.BYTE	6
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $65 ; e
		.BYTE $95 ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	7
		.BYTE $FF
		.BYTE $1B
		.BYTE	5
		.BYTE $BF ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $EA ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $F9 ; �
		.BYTE $FD ; �
		.BYTE $FD ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $D5 ; �
		.BYTE $F5 ; �
		.BYTE $FD ; �
		.BYTE $FD ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F5 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $BC ; �
		.BYTE $14
		.BYTE $16
		.BYTE $1B
		.BYTE	5
		.BYTE $2A ; *
		.BYTE	5
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; �
		.BYTE $AB ; �
		.BYTE $B0 ; �
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $AC ; �
		.BYTE $B2 ; �
		.BYTE  $A
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $AA ; �
		.BYTE $AB ; �
		.BYTE $C0 ; �
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $68 ; h
		.BYTE $82 ; �
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; �
		.BYTE $25 ; %
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $AF ; �
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $EB ; �
		.BYTE $AB ; �
		.BYTE $AF ; �
		.BYTE $AF ; �
		.BYTE $BE ; �
		.BYTE $FA ; �
		.BYTE $A8 ; �
		.BYTE $86 ; �
		.BYTE $EC ; �
		.BYTE $EC ; �
		.BYTE $AF ; �
		.BYTE $AB ; �
		.BYTE $A7 ; �
		.BYTE $9B ; �
		.BYTE $6A ; j
		.BYTE $AA ; �
		.BYTE $2F ; /
		.BYTE $2F ; /
		.BYTE  $B
		.BYTE  $B
		.BYTE	2
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $BF ; �
		.BYTE $AF ; �
		.BYTE $2B ; +
		.BYTE  $B
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $FB ; �
		.BYTE $EB ; �
		.BYTE $8F ; �
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $FB ; �
		.BYTE $EB ; �
		.BYTE $EB ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $CB ; �
		.BYTE $1B
		.BYTE	5
		.BYTE $FB ; �
		.BYTE $EA ; �
		.BYTE $E2 ; �
		.BYTE $1B
		.BYTE	4
		.BYTE $F0 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; �
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE $1B
		.BYTE	3
		.BYTE  $F
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	2
		.BYTE $FC ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $F0 ; �
		.BYTE $C0 ; �
		.BYTE $C0 ; �
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $AA ; �
		.BYTE $A2 ; �
		.BYTE $8A ; �
		.BYTE $5A ; Z
		.BYTE $AA ; �
		.BYTE $BA ; �
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $AB ; �
		.BYTE $56 ; V
		.BYTE $A8 ; �
		.BYTE $A2 ; �
		.BYTE $BA ; �
		.BYTE $8A ; �
		.BYTE $EA ; �
		.BYTE $2A ; *
		.BYTE $AA ; �
		.BYTE $95 ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; �
		.BYTE $A2 ; �
		.BYTE $A2 ; �
		.BYTE $A8 ; �
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $28 ; (
		.BYTE $21 ; !
		.BYTE $87 ; �
		.BYTE $83 ; �
		.BYTE $A0 ; �
		.BYTE $1C
		.BYTE $1C
		.BYTE $7C ; |
		.BYTE $72 ; r
		.BYTE $F2 ; �
		.BYTE $CA ; �
		.BYTE $CA ; �
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	7
		.BYTE $BF ; �
		.BYTE $65 ; e
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE  $D
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	7
		.BYTE $3F ; ?
		.BYTE $1B
		.BYTE	9
		.BYTE $FF
		.BYTE $1B
		.BYTE	3
		.BYTE $BF ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $EA ; �
		.BYTE $1B
		.BYTE  $F
		.BYTE $FF
		.BYTE $1B
		.BYTE	2
		.BYTE $F5 ; �
		.BYTE $FD ; �
		.BYTE $FD ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $BC ; �
		.BYTE $2A ; *
		.BYTE $2A ; *
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE $AB ; �
		.BYTE $AE ; �
		.BYTE $EA ; �
		.BYTE	0
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	6
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $AF ; �
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $A8 ; �
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $EA ; �
		.BYTE $A5 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE	0
		.BYTE $1B
		.BYTE	2
		.BYTE $AA ; �
		.BYTE $55 ; U
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $80 ; �
		.BYTE	0
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $EA ; �
		.BYTE $55 ; U
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $C0 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE $B0 ; �
		.BYTE	2
		.BYTE  $A
		.BYTE  $A
		.BYTE  $F
		.BYTE $1B
		.BYTE	3
		.BYTE $2A ; *
		.BYTE  $F
		.BYTE $8F ; �
		.BYTE $AF ; �
		.BYTE $5F ; _
		.BYTE $AF ; �
		.BYTE $AB ; �
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $8A ; �
		.BYTE $FA ; �
		.BYTE $FA ; �
		.BYTE $FB ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $BF ; �
		.BYTE $B2 ; �
		.BYTE $F2 ; �
		.BYTE $F2 ; �
		.BYTE $C2 ; �
		.BYTE $C2 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FC ; �
		.BYTE $FC ; �
		.BYTE $FF
		.BYTE $FF
		.BYTE $BF ; �
		.BYTE $BE ; �
		.BYTE $BA ; �
		.BYTE $A8 ; �
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $1B
		.BYTE	4
		.BYTE $3F ; ?
		.BYTE $3E ; >
		.BYTE  $A
		.BYTE  $A
		.BYTE	2
		.BYTE	2
		.BYTE	1
		.BYTE	0
		.BYTE $C0 ; �
		.BYTE $C0 ; �
		.BYTE $F0 ; �
		.BYTE $BF ; �
		.BYTE $AA ; �
		.BYTE $6A ; j
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $2A ; *
		.BYTE  $A
		.BYTE	2
		.BYTE	0
		.BYTE $AA ; �
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; �
		.BYTE $A6 ; �
		.BYTE $FB ; �
		.BYTE $65 ; e
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	5
		.BYTE $AA ; �
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	4
		.BYTE $AA ; �
		.BYTE $BA ; �
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $AA ; �
		.BYTE $1B
		.BYTE	7
		.BYTE $2A ; *
		.BYTE $1B
		.BYTE	7
		.BYTE $BF ; �
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE $AD ; �
		.BYTE $9C ; �
		.BYTE $9A ; �
		.BYTE $98 ; �
		.BYTE $96 ; �
		.BYTE $94 ; �
		.BYTE $92 ; �
		.BYTE $94 ; �
		.BYTE $96 ; �
		.BYTE $98 ; �
		.BYTE $9A ; �
		.BYTE $9C ; �
		.BYTE $9E ; �
		.BYTE $9C ; �
		.BYTE $9A ; �
		.BYTE $98 ; �
		.BYTE $96 ; �
		.BYTE $94 ; �
		.BYTE $92 ; �
		.BYTE $94 ; �
		.BYTE $96 ; �
		.BYTE $98 ; �
		.BYTE $9A ; �
		.BYTE $9C ; �
		.BYTE $9E ; �
		.BYTE $9C ; �
		.BYTE $9A ; �
		.BYTE $98 ; �
		.BYTE $96 ; �
		.BYTE $94 ; �
		.BYTE $92 ; �
		.BYTE $94 ; �
		.BYTE $96 ; �
		.BYTE $98 ; �
		.BYTE $9A ; �
		.BYTE $9C ; �
		.BYTE	6
		.BYTE	8
		.BYTE  $A
		.BYTE  $C
		.BYTE  $E
		.BYTE  $C
		.BYTE  $A
		.BYTE	8
		.BYTE	6
		.BYTE	4
		.BYTE	2
		.BYTE	4
		.BYTE	6
		.BYTE	8
		.BYTE  $A
		.BYTE  $C
		.BYTE  $F
		.BYTE  $C
		.BYTE  $A
		.BYTE	8
		.BYTE	6
		.BYTE	4
		.BYTE	2
		.BYTE	4
		.BYTE	6
		.BYTE	8
		.BYTE  $A
		.BYTE  $C
		.BYTE  $F
		.BYTE  $C
		.BYTE  $A
		.BYTE	8
		.BYTE	6
		.BYTE	4
		.BYTE	2
		.BYTE	0
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE  $F
		.BYTE $1B
		.BYTE $23 ; #
		.BYTE $37 ; 7
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $20
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $20
		.BYTE $1B
		.BYTE	7
		.BYTE	0
		.BYTE $70 ; p
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $E0 ; �
		.BYTE  $C
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $80 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	1
		.BYTE $C0 ; �
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE	1
		.BYTE $C0 ; �
		.BYTE $1B
		.BYTE	3
		.BYTE	0
		.BYTE $26 ; &
		.BYTE $20
		.BYTE	0
		.BYTE $80 ; �
		.BYTE $66 ; f
		.BYTE	6
		.BYTE $20
		.BYTE	0
		.BYTE $80 ; �
		.BYTE $66 ; f
		.BYTE	6
		.BYTE $28 ; (
		.BYTE $30 ; 0
		.BYTE $80 ; �
		.BYTE $6E ; n
		.BYTE $36 ; 6
		.BYTE $38 ; 8
		.BYTE $30 ; 0
		.BYTE $80 ; �
		.BYTE $66 ; f
		.BYTE $3E ; >
		.BYTE $7C ; |
		.BYTE $70 ; p
		.BYTE $80 ; �
		.BYTE $46 ; F
		.BYTE $7E ; ~
		.BYTE $FE ; �
		.BYTE $70 ; p
		.BYTE $80 ; �
		.BYTE $40 ; @
		.BYTE $E1 ; �
		.BYTE $FC ; �
		.BYTE	0
		.BYTE $80 ; �
		.BYTE	0
		.BYTE $63 ; c
		.BYTE $F0 ; �
		.BYTE	0
		.BYTE $80 ; �
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $E0 ; �
		.BYTE	0
		.BYTE $80 ; �
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $F0 ; �
		.BYTE	0
		.BYTE	6
		.BYTE $9F ; �
		.BYTE $35 ; 5
		.BYTE  $F
		.BYTE $9C ; �
		.BYTE $38 ; 8
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
; end of 'RAM'


		.END
