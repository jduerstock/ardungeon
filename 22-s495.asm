		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		* =  $7600
		.BYTE $1C
; ---------------------------------------------------------------------------
		JMP	loc_7610
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_782B
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		JMP	$184E
; ---------------------------------------------------------------------------

loc_7610:				; CODE XREF: RAM:7601j
		ldi	$1937, $FF
		dldi	off_1977, $763C
		dldi	off_16, $76A7
		JSR	$184B
		LDA	$1933
		STA	$62
		dldi	off_7, $79A7
		LDA	#2
		JMP	$180F
; ---------------------------------------------------------------------------
		dldi	off_16, $76A9
		LDX	$62
		JSR	$1851

loc_7649:				; CODE XREF: RAM:767Cj
		LDA	$62
		STA	$1933
		JSR	$1848

loc_7651:				; CODE XREF: RAM:7660j
		dldi	off_1977,$765E
		JMP	$1806
; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_7651
		CMP	#$31 ; '1'
		BNE	loc_766E
		LDX	#$1F
		LDY	#9
		LDA	#4
		BNE	loc_7684

loc_766E:				; CODE XREF: RAM:7664j
		CMP	#$32 ; '2'
		BNE	loc_767A
		LDX	#9
		LDY	#$C
		LDA	#5
		BNE	loc_7684

loc_767A:				; CODE XREF: RAM:7670j
		CMP	#$33 ; '3'
		BNE	loc_7649
		LDX	#$D
		LDY	#$16
		LDA	#1

loc_7684:				; CODE XREF: RAM:766Cj	RAM:7678j
		STX	$6313
		STY	$6314
		STA	$6315
		dldi	off_16, $7734
		LDX	$62
		JSR	$1851
		LDA	#2
		JSR	$185A
		LDA	#$FF
		STA	$AC00
		JMP	$180C
; ---------------------------------------------------------------------------
		.BYTE	$A8,$FF

		MOVEXY	0,0
		.BYTE	$A5,"In the elevator you find three buttons.",$0D,$0D
		.BYTE	$A5,"Which do you press?",$0D
		MOVEXY	10,4
		MenuItem "1","The red button"
		MOVEXY	10,5
		MenuItem "2","The green button"
		MOVEXY	10,6
		MenuItem "3","The blue button"
		.BYTE	$FF

		MOVEXY	0,3
		.BYTE $A5,"You feel the room moving.",$0D,$FF

unk_7753:	.BYTE $70 ; p		; DATA XREF: RAM:7783o
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
		.BYTE $41 ; A
		.WORD unk_7753
; ---------------------------------------------------------------------------
		PHA
		TXA
		PHA
		TYA
		PHA
		STA	WSYNC
		LDA	#$36 ; '6'
		STA	$D019
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
		STA	$D01A
		STX	$D016
		STY	$D018
		LDX	#$23 ; '#'
		LDY	$BBDC,X

loc_77E9:				; CODE XREF: RAM:780Ej
		LDA	$BB94,X
		STA	WSYNC
		STA	$D017
		STY	$D019
		LDA	$BB4C,X
		STA	CHBASE
		LDA	$BB70,X
		STA	WSYNC
		STA	$D016
		LDA	$BBB8,X
		STA	$D018
		LDY	$BBDB,X
		DEX
		BPL	loc_77E9
		LDA	#0
		STA	WSYNC
		STA	$D018
		STA	$D01A
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

loc_782B:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$53 ; 'S'
		STA	$254
		LDA	#$77 ; 'w'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_783E:				; CODE XREF: RAM:784Cj
		LDY	#$C

loc_7840:				; CODE XREF: RAM:7847j
		STA	$BB4C,X
		DEX
		BMI	loc_784E
		DEY
		BNE	loc_7840
		CLC
		ADC	#4
		BNE	loc_783E

loc_784E:				; CODE XREF: RAM:7844j
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_7946
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_7946
		LDA	#0
		STA	loc_7874+1
		LDA	#$BD ; 'Ω'
		STA	loc_7874+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_7874:				; CODE XREF: RAM:7878j	RAM:787Ej
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_7874
		INC	loc_7874+2
		DEY
		BNE	loc_7874
		LDX	#7

loc_7882:				; CODE XREF: RAM:7886j
		STA	$D000,X
		DEX
		BPL	loc_7882
		LDA	#3
		TAX

loc_788B:				; CODE XREF: RAM:788Fj
		STA	$D008,X
		DEX
		BPL	loc_788B
		LDA	#$FF
		STA	$D00C
		LDA	#3
		STA	$D01D
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_78B9:				; CODE XREF: RAM:78DFj
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_78C1:				; CODE XREF: RAM:78CCj
		LSR	4
		BCC	loc_78CB
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_78CB:				; CODE XREF: RAM:78C3j
		DEY
		BPL	loc_78C1
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_78D9
		INC	$A

loc_78D9:				; CODE XREF: RAM:78D5j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_78B9
		LDA	#$2D ; '-'
		STA	7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_78F1:				; CODE XREF: RAM:7902j
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
		BCC	loc_78F1

loc_7904:				; CODE XREF: RAM:7921j
		LDX	#0

loc_7906:				; CODE XREF: RAM:791Fj
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_790C:				; CODE XREF: RAM:7911j
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_790C
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_7923
		CPX	#$A
		BCC	loc_7906
		BCS	loc_7904

loc_7923:				; CODE XREF: RAM:791Bj
		LDX	#3
		LDA	$BC5F

loc_7928:				; CODE XREF: RAM:792Cj
		STA	COLPM0,X
		DEX
		BPL	loc_7928
		dldi	off_24A, $7785
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_7946:				; CODE XREF: RAM:7856p	RAM:7861p ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_7950
		INC	8

loc_7950:				; CODE XREF: RAM:794Cj
		CMP	#$1B
		BEQ	loc_795F
		STA	(9),Y
		INC	9
		BNE	loc_795C
		INC	$A

loc_795C:				; CODE XREF: RAM:7958j
		JMP	loc_7946
; ---------------------------------------------------------------------------

loc_795F:				; CODE XREF: RAM:7952j
		LDA	(7),Y
		INC	7
		BNE	loc_7967
		INC	8

loc_7967:				; CODE XREF: RAM:7963j
		CMP	#$FF
		BNE	loc_796C
		RTS
; ---------------------------------------------------------------------------

loc_796C:				; CODE XREF: RAM:7969j
		STA	byte_79A6
		ADC	9
		STA	loc_797F+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_7984
		LDA	byte_79A6

loc_797F:				; DATA XREF: RAM:7971w
		SBC	#$FF
		STA	byte_79A6

loc_7984:				; CODE XREF: RAM:797Aj
		LDA	(7),Y
		INC	7
		BNE	loc_798C
		INC	8

loc_798C:				; CODE XREF: RAM:7988j
		LDY	byte_79A6

loc_798F:				; CODE XREF: RAM:7992j
		STA	(9),Y
		DEY
		BPL	loc_798F
		INC	byte_79A6
		LDA	byte_79A6
		CLC
		ADC	9
		STA	9
		BCC	loc_79A3
		INC	$A

loc_79A3:				; CODE XREF: RAM:799Fj
		JMP	loc_7946
; ---------------------------------------------------------------------------
byte_79A6:	.BYTE 0			; DATA XREF: RAM:loc_796Cw RAM:797Cr ...
		.BYTE $1B
		.BYTE $57 ; W
		.BYTE	0
		.BYTE $A5 ; •
		.BYTE $29 ; )
		.BYTE $29 ; )
		.BYTE  $A
		.BYTE	2
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $A5 ; •
		.BYTE $29 ; )
		.BYTE $1B
		.BYTE $76 ; v
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $56 ; V
		.BYTE $5A ; Z
		.BYTE $68 ; h
		.BYTE $68 ; h
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $A0 ; †
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE $1B
		.BYTE $35 ; 5
		.BYTE	0
		.BYTE $29 ; )
		.BYTE $1B
		.BYTE	6
		.BYTE  $A
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
		.BYTE	5
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $75 ; u
		.BYTE $77 ; w
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $D7 ; ◊
		.BYTE $57 ; W
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $D5 ; ’
		.BYTE $75 ; u
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $FD ; ˝
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $75 ; u
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5F ; _
		.BYTE $75 ; u
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $75 ; u
		.BYTE $D7 ; ◊
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	2
		.BYTE $D5 ; ’
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
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $AA ; ™
		.BYTE $AA ; ™
		.BYTE $1B
		.BYTE	4
		.BYTE $5A ; Z
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE $1B
		.BYTE $3F ; ?
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $A
		.BYTE $1B
		.BYTE $13
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	3
		.BYTE $50 ; P
		.BYTE $75 ; u
		.BYTE $F7 ; ˜
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $57 ; W
		.BYTE $D7 ; ◊
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $75 ; u
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $DD ; ›
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $77 ; w
		.BYTE $7F ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $1F
		.BYTE $1F
		.BYTE $5D ; ]
		.BYTE $5D ; ]
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $75 ; u
		.BYTE $75 ; u
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $55 ; U
		.BYTE $F5 ; ı
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
		.BYTE $D5 ; ’
		.BYTE $D5 ; ’
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE $F0 ; 
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE $68 ; h
		.BYTE	0
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $F9 ; ˘
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE	2
		.BYTE $55 ; U
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $10
		.BYTE	0
		.BYTE $15
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $5A ; Z
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $56 ; V
		.BYTE $1B
		.BYTE	3
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $1B
		.BYTE $5F ; _
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $A
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $1F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $1F
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $F
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $1F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $1F
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F0 ; 
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	4
		.BYTE $5F ; _
		.BYTE $55 ; U
		.BYTE $55 ; U
		.BYTE $FD ; ˝
		.BYTE $FF
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $F
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $1F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $1F
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	7
		.BYTE $5F ; _
		.BYTE $FF
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	2
		.BYTE $FF
		.BYTE $AF ; Ø
		.BYTE $1B
		.BYTE	7
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $F
		.BYTE  $F
		.BYTE $1B
		.BYTE	5
		.BYTE  $A
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $1F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $1F
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE	2
		.BYTE $5F ; _
		.BYTE $57 ; W
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $AF ; Ø
		.BYTE $FF
		.BYTE $FF
		.BYTE $FD ; ˝
		.BYTE $1B
		.BYTE	3
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $5F ; _
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $A
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $1F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $1F
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE $1B
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $1B
		.BYTE	7
		.BYTE  $A
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $50 ; P
		.BYTE $1B
		.BYTE $1F
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $1F
		.BYTE $1B
		.BYTE $17
		.BYTE $FF
		.BYTE $1B
		.BYTE	7
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE  $F
		.BYTE $55 ; U
		.BYTE $1B
		.BYTE	7
		.BYTE $5A ; Z
		.BYTE $1B
		.BYTE $7E ; ~
		.BYTE	0
		.BYTE $1B
		.BYTE $20
		.BYTE	0
		.BYTE $1B
		.BYTE $FF
		.BYTE	4
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
		.BYTE	8
		.BYTE	6
		.BYTE	4
		.BYTE	2
		.BYTE	4
		.BYTE	6
		.BYTE	8
		.BYTE  $A
		.BYTE  $C
		.BYTE  $E
		.BYTE  $C
		.BYTE  $A
		.BYTE  $A
		.BYTE $94 ; î
		.BYTE $96 ; ñ
		.BYTE $98 ; ò
		.BYTE $9A ; ö
		.BYTE $1B
		.BYTE  $A
		.BYTE $90 ; ê
		.BYTE $74 ; t
		.BYTE $74 ; t
		.BYTE $90 ; ê
		.BYTE $B8 ; ∏
		.BYTE $90 ; ê
		.BYTE $34 ; 4
		.BYTE $34 ; 4
		.BYTE $1B
		.BYTE $26 ; &
		.BYTE $90 ; ê
		.BYTE $1B
		.BYTE	5
		.BYTE  $F
		.BYTE $1B
		.BYTE	2
		.BYTE $42 ; B
		.BYTE $1B
		.BYTE	5
		.BYTE  $F
		.BYTE	8
		.BYTE	6
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE	4
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
		.BYTE	0
		.BYTE	2
		.BYTE	4
		.BYTE	6
		.BYTE	8
		.BYTE  $A
		.BYTE  $C
		.BYTE  $F
		.BYTE  $F
		.BYTE $1B
		.BYTE	9
		.BYTE $9C ; ú
		.BYTE $1B
		.BYTE $10
		.BYTE	0
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $E0 ; ‡
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $E0 ; ‡
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $E0 ; ‡
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $1B
		.BYTE	2
		.BYTE	0
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $FF
		.BYTE $FE ; ˛
		.BYTE	0
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE  $E
		.BYTE	0
		.BYTE	0
		.BYTE $9C ; ú
		.BYTE  $E
		.BYTE  $E
		.BYTE $9C ; ú
		.BYTE $9A ; ö
		.BYTE $1B
		.BYTE $FF
		.RES	166,$00
; end of 'RAM'


		.END
