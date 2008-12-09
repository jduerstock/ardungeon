		.include	"equates.inc"

off_F4	= $F4

;		.ORG	$96F0
		JMP	loc_97B5
; ---------------------------------------------------------------------------
		.WORD loc_97F7
; ---------------------------------------------------------------------------
		JMP	loc_97A3
; ---------------------------------------------------------------------------
byte_96F8:	.BYTE 0			; DATA XREF: RAM:97A5vw	RAM:97B7vw ...
byte_96F9:	.BYTE 0			; DATA XREF: RAM:loc_9A1Evw RAM:9A2Evr
byte_96FA:	.BYTE 0			; DATA XREF: RAM:9A0Dvw	RAM:9A63vr ...
byte_96FB:	.BYTE 0			; DATA XREF: RAM:99EEvw	RAM:9A4Cvr ...
byte_96FC:	.BYTE 0			; DATA XREF: RAM:99F1vw	RAM:9A5Bvr ...
byte_96FD:	.BYTE 0			; DATA XREF: RAM:99E7vw	RAM:9A36vr ...
unk_96FE:	.BYTE $A9 ; ©		; DATA XREF: RAM:982Bvr	RAM:9847vr ...
		.BYTE $6A ; j
		.BYTE $8D ; ç
		.BYTE $44 ; D
		.BYTE $19
unk_9703:	.BYTE $A9 ; ©		; DATA XREF: RAM:loc_97FEvr RAM:980Bvr ...
		.BYTE $5D ; ]
		.BYTE $8D ; ç
		.BYTE $45 ; E
		.BYTE $19
unk_9708:	.BYTE $20		; DATA XREF: RAM:97E5vw	sub_9856+9vr ...
		.BYTE $E8 ; Ë
		.BYTE $4E ; N
		.BYTE $B0 ; ∞
		.BYTE $3E ; >
unk_970D:	.BYTE $C9 ; …		; DATA XREF: RAM:97DFvw	sub_9856+Evr ...
		.BYTE $80 ; Ä
		.BYTE $90 ; ê
		.BYTE	3
		.BYTE $4C ; L
unk_9712:	.BYTE $66 ; f		; DATA XREF: RAM:9830vr	RAM:9835vw ...
		.BYTE $54 ; T
		.BYTE $85 ; Ö
		.BYTE $4B ; K
		.BYTE $20
unk_9717:	.BYTE $AA ; ™		; DATA XREF: RAM:98DDvw	RAM:9AE9vw ...
		.BYTE $49 ; I
		.BYTE $20
		.BYTE $FA ; ˙
		.BYTE $4C ; L
unk_971C:	.BYTE $A0 ; †		; DATA XREF: RAM:98CAvw	sub_9B17+4Evr
		.BYTE	0
		.BYTE $B1 ; ±
		.BYTE $41 ; A
unk_9720:	.BYTE $29 ; )		; DATA XREF: RAM:98E9vw	sub_9B17+4vr
		.BYTE	7
		.BYTE $8D ; ç
		.BYTE $A1 ; °
unk_9724:	.BYTE $60 ; `		; DATA XREF: RAM:98F1vw	sub_9B17+Evr
		.BYTE $AA ; ™
		.BYTE $BD ; Ω
		.BYTE $5F ; _
unk_9728:	.BYTE $50 ; P		; DATA XREF: RAM:98DAvw	sub_9B17+3Dvw ...
		.BYTE $48 ; H
		.BYTE $BD ; Ω
		.BYTE $67 ; g
unk_972C:	.BYTE $50 ; P		; DATA XREF: RAM:98E0vr	RAM:9906vw ...
		.BYTE $48 ; H
		.BYTE $60 ; `
		.BYTE $A5 ; •
unk_9730:	.BYTE $4B ; K		; DATA XREF: RAM:98E3vw	sub_9B17+43vw ...
		.BYTE $20
		.BYTE $AA ; ™
		.BYTE $49 ; I
unk_9734:	.BYTE $F0 ; 		; DATA XREF: RAM:98FAvw
					; sub_9B17:loc_9B49vr
		.BYTE $15
		.BYTE $A5 ; •
		.BYTE $4B ; K
unk_9738:	.BYTE $20		; DATA XREF: RAM:9900vw	sub_9B17+1Avr
		.BYTE $BC ; º
		.BYTE $49 ; I
		.BYTE $AD ; ≠
unk_973C:	.BYTE $A1 ; °		; DATA XREF: RAM:990Cvw	sub_9B17+79vr
		.BYTE $60 ; `
		.BYTE $8D ; ç
		.BYTE $61 ; a
unk_9740:	.BYTE $19		; DATA XREF: RAM:9912vw	sub_9B17+37vr ...
		.BYTE $2C ; ,
		.BYTE $A2 ; ¢
		.BYTE $60 ; `
		.BYTE $10
		.BYTE	5
		.BYTE $A5 ; •
		.BYTE $4B ; K
		.BYTE $20
		.BYTE $FF
		.BYTE $48 ; H
		.BYTE $CE ; Œ
		.BYTE $5F ; _
		.BYTE $19
		.BYTE $60 ; `
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $52 ; R
		.BYTE $52 ; R
		.BYTE $53 ; S
		.BYTE $53 ; S
		.BYTE $53 ; S
		.BYTE $54 ; T
		.BYTE $6E ; n
		.BYTE $F8 ; ¯
		.BYTE $44 ; D
		.BYTE $BC ; º
		.BYTE	0
		.BYTE $17
		.BYTE $7D ; }
		.BYTE $44 ; D
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $B1 ; ±
		.BYTE $41 ; A
		.BYTE $29 ; )
		.BYTE $78 ; x
		.BYTE $D0 ; –
		.BYTE	3
		.BYTE $4C ; L
		.BYTE $5B ; [
		.BYTE $50 ; P
		.BYTE $A2 ; ¢
		.BYTE	2
		.BYTE $DD ; ›
		.BYTE $96 ; ñ
		.BYTE $50 ; P
		.BYTE $F0 ; 
		.BYTE	6
		.BYTE $CA ;  
		.BYTE $10
		.BYTE $F8 ; ¯
		.BYTE $4C ; L
		.BYTE $3F ; ?
		.BYTE $50 ; P
		.BYTE $BD ; Ω
		.BYTE $93 ; ì
		.BYTE $50 ; P
		.BYTE $48 ; H
		.BYTE $BD ; Ω
		.BYTE $90 ; ê
		.BYTE $50 ; P
		.BYTE $48 ; H
		.BYTE $60 ; `
		.BYTE $98 ; ò
		.BYTE $B7 ; ∑
		.BYTE $C8 ; »
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE	8
		.BYTE $10
		.BYTE $18
		.BYTE $AD ; ≠
		.BYTE $BE ; æ
		.BYTE $63 ; c
		.BYTE $F0 ; 
		.BYTE	6
		.BYTE $CE ; Œ
		.BYTE $BE ; æ
		.BYTE $63 ; c
		.BYTE $4C ; L
		.BYTE $3F ; ?
		.BYTE $50 ; P
byte_9794:	.BYTE 7			; DATA XREF: RAM:97CAvw	RAM:9994vr ...
byte_9795:	.BYTE 7			; DATA XREF: RAM:97CDvw
byte_9796:	.BYTE 7			; DATA XREF: RAM:97D0vw
byte_9797:	.BYTE 7			; DATA XREF: RAM:97D3vw
byte_9798:	.BYTE 7			; DATA XREF: RAM:97D6vw
unk_9799:	.BYTE $44 ; D		; DATA XREF: RAM:998Avr	RAM:99AEvr
		.BYTE $54 ; T
		.BYTE $64 ; d
		.BYTE $74 ; t
		.BYTE $84 ; Ñ
unk_979E:	.BYTE $97 ; ó		; DATA XREF: RAM:998Fvr	RAM:99B3vr
		.BYTE $97 ; ó
		.BYTE $97 ; ó
		.BYTE $97 ; ó
		.BYTE $97 ; ó
; ---------------------------------------------------------------------------

loc_97A3:				; CODE XREF: RAM:96F5^j
		LDA	#$80
		STA	byte_96F8
		LDX	#8
		LDA	#0

loc_97AC:				; CODE XREF: RAM:97B0vj
		STA	$D200,X
		DEX
		BPL	loc_97AC
		JMP	loc_9B00
; ---------------------------------------------------------------------------

loc_97B5:				; CODE XREF: RAM:96F0^j
		LDA	#$80
		STA	byte_96F8
		STY	off_F4
		STX	off_F4+1
		LDA	#0
		LDX	#$4C ; 'L'

loc_97C2:				; CODE XREF: RAM:97C6vj
		STA	byte_96F8,X
		DEX
		BNE	loc_97C2
		LDA	#7
		STA	byte_9794
		STA	byte_9795
		STA	byte_9796
		STA	byte_9797
		STA	byte_9798
		LDY	#9
		LDX	#4

loc_97DD:				; CODE XREF: RAM:97EAvj
		LDA	(off_F4),Y
		STA	unk_970D,X
		DEY
		LDA	(off_F4),Y
		STA	unk_9708,X
		DEY
		DEX
		BPL	loc_97DD
		LDA	#3
		STA	SKCTL
		LDA	#0
		STA	byte_96F8

locret_97F6:				; CODE XREF: RAM:97FAvj
		RTS
; ---------------------------------------------------------------------------

loc_97F7:				; DATA XREF: RAM:96F3^o
		BIT	byte_96F8
		BMI	locret_97F6
		LDX	#4

loc_97FE:				; CODE XREF: RAM:9823vj
		LDA	unk_9703,X
		BEQ	loc_9822
		LDY	#4
		STA	$F7

loc_9807:				; CODE XREF: RAM:9811vj
		LSR	$F7
		BCC	loc_9810
		LDA	unk_9703,Y
		BEQ	loc_9822

loc_9810:				; CODE XREF: RAM:9809^j
		DEY
		BPL	loc_9807
		LDY	#4

loc_9815:				; CODE XREF: RAM:9820vj
		LSR	unk_9703,X
		BCC	loc_981F
		LDA	#0
		STA	unk_9703,Y

loc_981F:				; CODE XREF: RAM:9818^j
		DEY
		BPL	loc_9815

loc_9822:				; CODE XREF: RAM:9801^j	RAM:980E^j
		DEX
		BPL	loc_97FE
		LDA	#4
		STA	$F6

loc_9829:				; CODE XREF: RAM:9845vj
		LDX	$F6
		LDA	unk_96FE,X
		BNE	loc_9843
		LDA	unk_9712,X
		BEQ	loc_9840
		DEC	unk_9712,X
		BEQ	loc_9840
		JSR	sub_9B17
		JMP	loc_9843
; ---------------------------------------------------------------------------

loc_9840:				; CODE XREF: RAM:9833^j	RAM:9838^j
		JSR	sub_9856

loc_9843:				; CODE XREF: RAM:982E^j	RAM:983D^j
		DEC	$F6
		BPL	loc_9829
		LDA	unk_96FE
		LDX	#4

loc_984C:				; CODE XREF: RAM:9850vj
		AND	unk_96FE,X
		DEX
		BNE	loc_984C
		STA	byte_96F8
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9856:				; CODE XREF: RAM:loc_9840^p RAM:9891vj ...
		LDX	$F6
		LDA	unk_9703,X
		BNE	locret_9884
		LDY	#0
		LDA	unk_9708,X
		STA	off_F4
		LDA	unk_970D,X
		STA	off_F4+1
		LDY	#0
		LDA	(off_F4),Y
		CMP	#$19
		BCS	loc_9885
		TAY
		LDA	unk_9BBB,Y
		PHA
		LDA	unk_9BA7,Y
		PHA
		INC	off_F4
		BNE	loc_9880
		INC	off_F4+1

loc_9880:				; CODE XREF: sub_9856+26^j
		LDY	#0
		LDA	(off_F4),Y

locret_9884:				; CODE XREF: sub_9856+5^j
		RTS
; ---------------------------------------------------------------------------

loc_9885:				; CODE XREF: sub_9856+19^j sub_9856+35vj
		LDA	RANDOM
		STA	COLBK
		JMP	loc_9885
; End of function sub_9856

; ---------------------------------------------------------------------------

loc_988E:				; CODE XREF: RAM:9917vj	RAM:991Cvj ...
		JSR	sub_9894
		JMP	sub_9856

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9894:				; CODE XREF: RAM:loc_988E^p RAM:98D5vp ...
		LDX	$F6
		CLC
		ADC	off_F4
		STA	unk_9708,X
		LDA	off_F4+1
		ADC	#0
		STA	unk_970D,X
		RTS
; End of function sub_9894


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_98A4:				; CODE XREF: RAM:9962vp	RAM:9AACvp
		LDA	(off_F4),Y
		STA	$FB
		INY
		LDA	(off_F4),Y
		STA	$FC
		INY
		LDA	(off_F4),Y
		STA	$F7
		LDY	#0
		RTS
; End of function sub_98A4

; ---------------------------------------------------------------------------

loc_98B5:
		LDA	#$80
		STA	unk_96FE,X
		CPX	#4
		BEQ	locret_98C9
		LDA	#0
		LDY	unk_9BA3,X
		STA	$D200,Y
		STA	$D201,Y

locret_98C9:				; CODE XREF: RAM:98BC^j
		RTS
; ---------------------------------------------------------------------------

loc_98CA:
		STA	unk_971C,X
		INY
		LDA	(off_F4),Y
		STA	unk_9712,X
		LDA	#2
		JSR	sub_9894
		LDA	#0
		STA	unk_9728,X
		STA	unk_9717,X
		LDA	unk_972C,X
		STA	unk_9730,X
		JMP	sub_9B17
; ---------------------------------------------------------------------------

loc_98E9:
		STA	unk_9720,X
		STA	$F9
		INY
		LDA	(off_F4),Y
		STA	unk_9724,X
		STA	$FA
		LDY	#$40 ; '@'
		LDA	($F9),Y
		STA	unk_9734,X
		INY
		LDA	($F9),Y
		STA	unk_9738,X
		INY
		LDA	($F9),Y
		STA	unk_972C,X
		INY
		LDA	($F9),Y
		STA	unk_973C,X
		INY
		LDA	($F9),Y
		STA	unk_9740,X
		LDA	#2
		JMP	loc_988E
; ---------------------------------------------------------------------------

loc_991A:
		LDA	#1
		JMP	loc_988E
; ---------------------------------------------------------------------------

loc_991F:
		STA	loc_9928+1
		INY
		LDA	(off_F4),Y
		STA	loc_9928+2

loc_9928:				; DATA XREF: RAM:991F^w	RAM:9925^w
		DEC	$FFFF
		BEQ	loc_993C
		INY
		LDA	(off_F4),Y
		STA	unk_9708,X
		INY
		LDA	(off_F4),Y
		STA	unk_970D,X
		JMP	sub_9856
; ---------------------------------------------------------------------------

loc_993C:				; CODE XREF: RAM:992B^j
		LDA	#4
		JMP	loc_988E
; ---------------------------------------------------------------------------

loc_9941:				; CODE XREF: RAM:995Avj
		STA	unk_9708,X
		INY
		LDA	(off_F4),Y
		STA	unk_970D,X
		JMP	sub_9856
; ---------------------------------------------------------------------------

loc_994D:
		CMP	RANDOM
		BCC	loc_995D
		INC	off_F4
		BNE	loc_9958
		INC	off_F4+1

loc_9958:				; CODE XREF: RAM:9954^j
		LDA	(off_F4),Y
		JMP	loc_9941
; ---------------------------------------------------------------------------

loc_995D:				; CODE XREF: RAM:9950^j
		LDA	#3
		JMP	loc_988E
; ---------------------------------------------------------------------------

loc_9962:
		JSR	sub_98A4
		STA	($FB),Y
		LDA	#3
		JMP	loc_988E
; ---------------------------------------------------------------------------

loc_996C:
		STA	$FB
		INY
		LDA	(off_F4),Y
		STA	$FC
		CLC
		LDA	off_F4
		ADC	#2
		STA	$F9
		LDA	off_F4+1
		ADC	#0
		STA	$FA
		LDA	$FB
		STA	unk_9708,X
		LDA	$FC
		STA	unk_970D,X
		LDA	unk_9799,X
		STA	$FB
		LDA	unk_979E,X
		STA	$FC
		LDY	byte_9794,X
		LDA	$FA
		STA	($FB),Y
		DEY
		TYA
		AND	#$F
		TAY
		LDA	$F9
		STA	($FB),Y
		DEY
		TYA
		AND	#$F
		STA	byte_9794,X
		JMP	sub_9856
; ---------------------------------------------------------------------------

loc_99AE:
		LDA	unk_9799,X
		STA	$F9
		LDA	unk_979E,X
		STA	$FA
		LDY	byte_9794,X
		INY
		TYA
		AND	#$F
		TAY
		LDA	($F9),Y
		STA	unk_9708,X
		INY
		TYA
		AND	#$F
		TAY
		LDA	($F9),Y
		STA	unk_970D,X
		TYA
		STA	byte_9794,X
		JMP	sub_9856
; ---------------------------------------------------------------------------

loc_99D6:
		STA	$F8
		LDA	#1

loc_99DA:				; CODE XREF: RAM:99E2vj
		JMP	loc_988E
; ---------------------------------------------------------------------------

loc_99DD:
		STA	unk_9703,X
		LDA	#1
		BNE	loc_99DA

loc_99E4:
		LSR	A
		ROR	A
		ROR	A
		STA	byte_96FD
		LDY	#$13
		LDA	#0
		STA	byte_96FB
		STA	byte_96FC

loc_99F4:				; CODE XREF: RAM:99F8vj
		STA	$4C8,Y
		DEY
		BPL	loc_99F4
		LDY	#1

loc_99FC:				; CODE XREF: RAM:9A01vj
		LDA	(off_F4),Y
		BEQ	loc_9A03
		INY
		BNE	loc_99FC

loc_9A03:				; CODE XREF: RAM:99FE^j
		STY	$F7
		LSR	$F7
		SEC
		LDA	#$A
		SBC	$F7
		TAX
		STA	byte_96FA
		STY	$F7
		LDY	#1

loc_9A14:				; CODE XREF: RAM:9A40vj
		LDA	(off_F4),Y
		CMP	#$41 ; 'A'
		BCC	loc_9A1E
		CMP	#$5B ; '['
		BCC	loc_9A34

loc_9A1E:				; CODE XREF: RAM:9A18^j
		STX	byte_96F9
		LDX	#0

loc_9A23:				; CODE XREF: RAM:9A2Bvj
		CMP	byte_9A47,X
		BEQ	loc_9A2D
		INX
		CPX	#5
		BCC	loc_9A23

loc_9A2D:				; CODE XREF: RAM:9A26^j
		TXA
		LDX	byte_96F9
		CLC
		ADC	#$1B

loc_9A34:				; CODE XREF: RAM:9A1C^j
		AND	#$1F
		ORA	byte_96FD
		STA	$4C8,X
		INX
		INY
		CPY	$F7
		BCC	loc_9A14
		INY
		TYA
		JMP	loc_988E
; ---------------------------------------------------------------------------

byte_9A47:				; DATA XREF: RAM:loc_9A23^r
		.BYTE	".-'!?"

loc_9A4C:
		LDX	byte_96FB

loc_9A4F:				; CODE XREF: RAM:9A5Evj
		LDA	$4C8,X
		AND	#$3F ; '?'
		ORA	byte_96FD
		STA	$4C8,X
		INX
		CPX	byte_96FC
		BCC	loc_9A4F
		LDA	(off_F4),Y
		CLC
		ADC	byte_96FA
		STA	byte_96FB
		TAX
		INY
		LDA	(off_F4),Y
		CLC
		ADC	byte_96FA
		ADC	#1
		STA	byte_96FC
		INY
		LDA	(off_F4),Y
		LSR	A
		ROR	A
		ROR	A
		STA	$F7

loc_9A7E:				; CODE XREF: RAM:9A8Cvj
		LDA	$4C8,X
		AND	#$3F ; '?'
		ORA	$F7
		STA	$4C8,X
		INX
		CPX	byte_96FC
		BCC	loc_9A7E
		LDA	#3
		JMP	loc_988E
; ---------------------------------------------------------------------------

loc_9A93:
		LDX	byte_96FB

loc_9A96:				; CODE XREF: RAM:9AA5vj
		LDA	$4C8,X
		AND	#$3F ; '?'
		ORA	byte_96FD
		STA	$4C8,X
		INX
		CPX	byte_96FC
		BCC	loc_9A96
		LDA	#0
		JMP	loc_988E
; ---------------------------------------------------------------------------

loc_9AAC:
		JSR	sub_98A4
		STA	($FB),Y
		LDY	#3
		LDA	(off_F4),Y
		LDX	#0

loc_9AB7:				; CODE XREF: RAM:9ABDvj
		LSR	A
		BCS	loc_9ABF
		INX
		CPX	#8
		BCC	loc_9AB7

loc_9ABF:				; CODE XREF: RAM:9AB8^j
		LDA	byte_9ADB,X
		STA	$F7

loc_9AC4:				; CODE XREF: RAM:9ACDvj
		LDA	RANDOM
		AND	$F7
		CMP	(off_F4),Y
		BEQ	loc_9ACF
		BCS	loc_9AC4

loc_9ACF:				; CODE XREF: RAM:9ACB^j
		LDY	#0
		CLC
		ADC	($FB),Y
		STA	($FB),Y
		LDA	#4
		JMP	loc_988E
; ---------------------------------------------------------------------------

byte_9ADB:
		.BYTE $FF
		.BYTE $7F ; 
		.BYTE $3F ; ?
		.BYTE $1F
		.BYTE  $F
		.BYTE	7
		.BYTE	3
		.BYTE	1
		.BYTE	0
; ---------------------------------------------------------------------------

loc_9AE4:
		STA	unk_9712,X
		LDA	#$80 ; 'Ä'
		STA	unk_9717,X
		CPX	#4
		BEQ	loc_9AF8
		LDY	unk_9BA3,X
		LDA	#0
		STA	$D201,Y

loc_9AF8:				; CODE XREF: RAM:9AEE^j
		LDA	#1
		JSR	sub_9894
		JMP	sub_9B17
; ---------------------------------------------------------------------------

loc_9B00:				; CODE XREF: RAM:97B2^j
		LDA	#$80 ; 'Ä'
		LDX	#4

loc_9B04:				; CODE XREF: RAM:9B08vj
		STA	unk_96FE,X
		DEX
		BPL	loc_9B04
		STA	byte_96F8
		ASL	A
		LDX	#7

loc_9B10:				; CODE XREF: RAM:9B14vj
		STA	$D200,X
		DEX
		BPL	loc_9B10
; START	OF FUNCTION CHUNK FOR sub_9B17

locret_9B16:				; CODE XREF: sub_9B17+2vj
		RTS
; END OF FUNCTION CHUNK	FOR sub_9B17

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9B17:				; CODE XREF: RAM:983A^p	RAM:98E6^j ...

; FUNCTION CHUNK AT 9B16 SIZE 00000001 BYTES

		CPX	#4
		BEQ	locret_9B16
		LDA	unk_9720,X
		STA	$F9
		CLC
		ADC	#$20 ; ' '
		STA	$FB
		LDA	unk_9724,X
		STA	$FA
		ADC	#0
		STA	$FC
		LDA	unk_9712,X
		CMP	unk_9738,X
		BNE	loc_9B49
		TXA
		ASL	A
		TAY
		LDA	#0
		STA	$D200,Y
		STA	$D201,Y
		LDA	#$80 ; 'Ä'
		STA	unk_9717,X
		JMP	locret_9BA2
; ---------------------------------------------------------------------------

loc_9B49:				; CODE XREF: sub_9B17+1D^j
		CMP	unk_9734,X
		BNE	loc_9B5D
		LDA	unk_9740,X
		CLC
		ADC	#1
		STA	unk_9728,X
		LDA	unk_972C,X
		STA	unk_9730,X

loc_9B5D:				; CODE XREF: sub_9B17+35^j
		LDA	unk_9717,X
		BMI	locret_9BA2
		LDY	unk_9728,X
		LDA	unk_971C,X
		CLC
		ADC	($F9),Y
		STA	$F7
		TXA
		ASL	A
		TAX
		LDA	$F7
		STA	$D200,X
		LDA	($FB),Y
		STA	$D201,X
		LDX	$F6
		DEC	unk_9730,X
		BNE	locret_9BA2
		LDA	unk_972C,X
		STA	unk_9730,X
		INC	unk_9728,X
		TYA
		CMP	unk_9740,X
		BNE	loc_9B99
		LDA	unk_973C,X
		STA	unk_9728,X
		JMP	locret_9BA2
; ---------------------------------------------------------------------------

loc_9B99:				; CODE XREF: sub_9B17+77^j
		CPY	#$1F
		BCC	locret_9BA2
		LDA	#$1F
		STA	unk_9728,X

locret_9BA2:				; CODE XREF: sub_9B17+2F^j sub_9B17+49^j ...
		RTS
; End of function sub_9B17

; ---------------------------------------------------------------------------
unk_9BA3:	.BYTE	0		; DATA XREF: RAM:98C0^r	RAM:9AF0^r
		.BYTE	2
		.BYTE	4
		.BYTE	8
unk_9BA7:	.BYTE	<(loc_98B5-1)	; DATA XREF: sub_9856+20^r
		.BYTE	<(loc_98CA-1)
		.BYTE	<(loc_98E9-1)
		.BYTE	<(loc_991A-1)
		.BYTE	<(loc_991F-1)
		.BYTE	<(loc_9941-1)
		.BYTE	<(loc_994D-1)
		.BYTE	<(loc_9962-1)
		.BYTE	0
		.BYTE	0
		.BYTE	<(loc_996C-1)
		.BYTE	<(loc_99AE-1)
		.BYTE	<(loc_99D6-1)
		.BYTE	<(loc_99DD-1)
		.BYTE	<(loc_99E4-1)
		.BYTE	<(loc_9A4C-1)
		.BYTE	<(loc_9A93-1)
		.BYTE	<(loc_9AAC-1)
		.BYTE	<(loc_9AE4-1)
		.BYTE	<(loc_9B00-1)
unk_9BBB:	.BYTE 	>(loc_98B5-1)	; DATA XREF: sub_9856+1C^r
		.BYTE	>(loc_98CA-1)
		.BYTE	>(loc_98E9-1)
		.BYTE	>(loc_991A-1)
		.BYTE	>(loc_991F-1)
		.BYTE	>(loc_9941-1)
		.BYTE	>(loc_994D-1)
		.BYTE	>(loc_9962-1)
		.BYTE	0
		.BYTE	0
		.BYTE	>(loc_996C-1)
		.BYTE	>(loc_99AE-1)
		.BYTE	>(loc_99D6-1)
		.BYTE	>(loc_99DD-1)
		.BYTE	>(loc_99E4-1)
		.BYTE	>(loc_9A4C-1)
		.BYTE	>(loc_9A93-1)
		.BYTE	>(loc_9AAC-1)
		.BYTE	>(loc_9AE4-1)
		.BYTE	>(loc_9B00-1)
		.BYTE $C1 ; ¡
		.BYTE $C7 ; «
		.BYTE $C5 ; ≈
		.BYTE $20
		.BYTE $D3 ; ”
		.BYTE $C5 ; ≈
		.BYTE $C3 ; √
		.BYTE $D4 ; ‘
		.BYTE $C9 ; …
		.BYTE $CF ; œ
		.BYTE $CE ; Œ
		.BYTE $A1 ; °
		.BYTE $8D ; ç
		.BYTE $AA ; ™
		.BYTE $D4 ; ‘
		.BYTE $C8 ; »
		.BYTE $C5 ; ≈
		.BYTE $D3 ; ”
		.BYTE $C5 ; ≈
		.BYTE $20
		.BYTE $C2 ; ¬
		.BYTE $D9 ; Ÿ
		.BYTE $D4 ; ‘
		.BYTE $C5 ; ≈
		.BYTE $D3 ; ”
		.BYTE $20
		.BYTE $C1 ; ¡
		.BYTE $D2 ; “
		.BYTE $C5 ; ≈
		.BYTE $20
		.BYTE $D3 ; ”
		.BYTE $C5 ; ≈
		.BYTE $D4 ; ‘
