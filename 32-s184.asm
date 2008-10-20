		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"
		
;		.ORG	$7600
		.BYTE	$C
; ---------------------------------------------------------------------------
		JMP	loc_7617
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_760D
; ---------------------------------------------------------------------------
		JMP	loc_9284
; ---------------------------------------------------------------------------

loc_760D:				; CODE XREF: RAM:7604j	RAM:7607j
		INC	$1937
		JSR	$184E
		JSR	unk_96F5
		RTS
; ---------------------------------------------------------------------------

loc_7617:				; CODE XREF: RAM:7601j
		dldi	off_7, $95BC
		dldi	off_9, $B000
		dldi	word_B, $680
		JSR	$187E
		DEC	$1937
		LDX	#4

loc_7637:				; CODE XREF: RAM:763Ej
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_7637
		LDX	#$D

loc_7642:				; CODE XREF: RAM:765Ej
		LDA	$905B,X
		CMP	$6313
		BNE	loc_765D
		LDA	$9069,X
		CMP	$6314
		BNE	loc_765D
		LDA	$9077,X
		CMP	$6315
		BNE	loc_765D
		JMP	loc_7661
; ---------------------------------------------------------------------------

loc_765D:				; CODE XREF: RAM:7648j	RAM:7650j ...
		DEX
		BPL	loc_7642
		BRK
; ---------------------------------------------------------------------------

loc_7661:				; CODE XREF: RAM:765Aj
		STX	$67
		dldi	off_1977, loc_76CE
		LDA	#$F
		STA	SEGNO
		dldi	SEGADDR, $96F0
		JSR	j_SEGLOAD
		LDA	$67
		LSR	A
		LDA	#$40 ; '@'
		ADC	#0
		STA	SEGNO
		dldi	SEGADDR, $9FF0
		JSR	j_SEGLOAD
		dldi	off_16, $8230
		JSR	$184B
		LDA	$1933
		STA	$66
		dmv	off_7, $9FF0
		LDA	#2
		JSR	$180F
		JSR	unk_96F5
		LDA	byte_96F3
		STA	$224
		LDA	byte_96F4
		STA	$225
		DEC	$22F
		LDX	#$9F ; 'ü'
		LDY	#$F2 ; 'Ú'
		JMP	unk_96F0
; ---------------------------------------------------------------------------

loc_76CE:
		LDA	$67
		EOR	#1
		TAX
		LDA	unk_8ADA,X
		STA	$8A
		LDA	unk_8AE8,X
		STA	$8B
		LDA	$63C2,X
		AND	#$81 ; 'Å'
		BNE	loc_76FB
		LDX	$67
		LDA	unk_8ADA,X
		STA	byte_8AD8
		LDA	unk_8AE8,X
		STA	byte_8AD9
		LDA	$63C2,X
		STA	$6E
		AND	#$40 ; '@'
		BEQ	loc_7709

loc_76FB:				; CODE XREF: RAM:76E2j
		LDA	#$36 ; '6'
		STA	$16
		LDA	#$89 ; 'â'
		STA	$17
		JSR	sub_7900
		JMP	loc_774A
; ---------------------------------------------------------------------------

loc_7709:				; CODE XREF: RAM:76F9j
		LDA	$6E
		AND	#$81 ; 'Å'
		BEQ	loc_7712
		JMP	loc_7973
; ---------------------------------------------------------------------------

loc_7712:				; CODE XREF: RAM:770Dj
		LDA	#$E9 ; 'È'
		STA	$16
		LDA	#$88 ; 'à'
		STA	$17
		LDX	$66
		JSR	$1851

loc_771F:				; CODE XREF: RAM:7745j
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7727:				; CODE XREF: RAM:773Dj
		dldi	off_1977, $7734
		JMP	$1806
; ---------------------------------------------------------------------------
		JSR	$1821
		AND	#2
		BNE	loc_774A
		LDA	$31
		BMI	loc_7727
		CMP	#$30 ; '0'
		BEQ	loc_774A
		CMP	#$31 ; '1'
		BNE	loc_771F
		JMP	loc_7766
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_7AE2

loc_774A:				; CODE XREF: RAM:7706j	RAM:7739j ...
		JSR	unk_96F5
		INC	$22F
		LDX	#4

loc_7752:				; CODE XREF: sub_7AE2-389j
		LDA	$750D,X
		STA	$6313,X
		DEX
		BPL	loc_7752
		LDA	#$FF
		STA	$AC00
		STA	unk_96F0
		JMP	$180C
; END OF FUNCTION CHUNK	FOR sub_7AE2
; ---------------------------------------------------------------------------

loc_7766:				; CODE XREF: RAM:7747j
		LDX	#$E
		LDA	#$31 ; '1'
		STA	$68
		LDA	$63D1

loc_776F:				; CODE XREF: RAM:7773j
		ORA	$63C2,X
		DEX
		BPL	loc_776F
		ASL	A
		BCC	loc_77A8
		dldi	off_16, $8E33
		LDX	$66
		JSR	$1851

loc_7785:				; CODE XREF: RAM:77A4j
		LDX	$66
		STX	$1933
		JSR	$1848

loc_778D:				; CODE XREF: RAM:779Cj
		dldi	off_1977, loc_779A
		JMP	$1806
; ---------------------------------------------------------------------------

loc_779A:
		LDA	$31
		BMI	loc_778D
		CMP	#'1'
		BEQ	loc_77A6
		CMP	#'2'
		BNE	loc_7785

loc_77A6:				; CODE XREF: RAM:77A0j
		STA	$68

loc_77A8:				; CODE XREF: RAM:7776j
		LDX	$67
		LDA	$633C
		CMP	$9085,X
		BCS	loc_77C2
		LDX	#$8C ; 'å'
		LDY	#$10

loc_77B6:				; CODE XREF: RAM:7833j	RAM:7842j ...
		JSR	sub_78FC
		JMP	loc_774A
; ---------------------------------------------------------------------------

loc_77BC:				; CODE XREF: RAM:77E5j	RAM:77ECj ...
		JSR	sub_78FC
		JMP	loc_774A
; ---------------------------------------------------------------------------

loc_77C2:				; CODE XREF: RAM:77B0j
		LDA	$9093,X
		BEQ	loc_7811
		LDA	$6385
		SEC
		SBC	$9093,X
		BCC	loc_77D7
		CMP	#5
		BCS	loc_7811
		JMP	loc_780A
; ---------------------------------------------------------------------------

loc_77D7:				; CODE XREF: RAM:77CEj
		LDA	$67
		LSR	A
		BCS	loc_77EF
		LDA	$6385
		BPL	loc_77E8
		LDX	#$8D ; 'ç'
		LDY	#$3D ; '='
		JMP	loc_77BC
; ---------------------------------------------------------------------------

loc_77E8:				; CODE XREF: RAM:77DFj
		LDX	#$8C ; 'å'
		LDY	#$60 ; '`'
		JMP	loc_77BC
; ---------------------------------------------------------------------------

loc_77EF:				; CODE XREF: RAM:77DAj
		LDA	$6385
		BPL	loc_77FB
		LDX	#$8C ; 'å'
		LDY	#$EF ; 'Ô'
		JMP	loc_77BC
; ---------------------------------------------------------------------------

loc_77FB:				; CODE XREF: RAM:77F2j
		LDA	$6385
		CMP	$9093,X
		BCC	loc_780A
		LDX	#$8C ; 'å'
		LDY	#$AD ; '≠'
		JMP	loc_77BC
; ---------------------------------------------------------------------------

loc_780A:				; CODE XREF: RAM:77D4j	RAM:7801j
		LDX	#$8C ; 'å'
		LDY	#$60 ; '`'
		JMP	loc_77BC
; ---------------------------------------------------------------------------

loc_7811:				; CODE XREF: RAM:77C5j	RAM:77D2j
		LDA	$90A1,X
		CMP	#$FF
		BEQ	loc_785F
		SEC
		SBC	$6385
		BCC	loc_7825
		CMP	#5
		BCS	loc_785F
		JMP	loc_7845
; ---------------------------------------------------------------------------

loc_7825:				; CODE XREF: RAM:781Cj
		LDA	$67
		LSR	A
		BCS	loc_784C
		LDA	$6385
		BPL	loc_7836
		LDX	#$8D ; 'ç'
		LDY	#$3D ; '='
		JMP	loc_77B6
; ---------------------------------------------------------------------------

loc_7836:				; CODE XREF: RAM:782Dj
		LDA	$90A1,X
		CMP	$6385
		BCC	loc_7845
		LDX	#$8C ; 'å'
		LDY	#$60 ; '`'
		JMP	loc_77B6
; ---------------------------------------------------------------------------

loc_7845:				; CODE XREF: RAM:7822j	RAM:783Cj
		LDX	#$8C ; 'å'
		LDY	#$EF ; 'Ô'
		JMP	loc_77B6
; ---------------------------------------------------------------------------

loc_784C:				; CODE XREF: RAM:7828j
		LDA	$6385
		BPL	loc_7858
		LDX	#$8C ; 'å'
		LDY	#$EF ; 'Ô'
		JMP	loc_77B6
; ---------------------------------------------------------------------------

loc_7858:				; CODE XREF: RAM:784Fj
		LDX	#$8C ; 'å'
		LDY	#$AD ; '≠'
		JMP	loc_77B6
; ---------------------------------------------------------------------------

loc_785F:				; CODE XREF: RAM:7816j	RAM:7820j
		LDA	$90AF,X
		LDY	$68
		CPY	#$31 ; '1'
		BNE	loc_786B
		CLC
		ADC	#$78 ; 'x'

loc_786B:				; CODE XREF: RAM:7866j
		STA	$69
		dldi	off_16, $8F0C
		LDX	$66
		JSR	$1851

loc_787A:				; CODE XREF: RAM:789Fj	RAM:7DABj
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7882:				; CODE XREF: RAM:7891j
		dldi	off_1977, loc_788F
		JMP	$1806
; ---------------------------------------------------------------------------

loc_788F:
		LDA	$31
		BMI	loc_7882
		JSR	j_UPPER
		CMP	#'N'
		BNE	loc_789D
		JMP	loc_7968
; ---------------------------------------------------------------------------

loc_789D:				; CODE XREF: RAM:7898j
		CMP	#'Y'
		BNE	loc_787A
		LDA	$69
		JSR	sub_7B11
		BCC	loc_78B2
		ldxy	$8DFE
		JSR	sub_78FC
		JMP	loc_7968
; ---------------------------------------------------------------------------

loc_78B2:				; CODE XREF: RAM:78A6j
		LDA	$68
		LSR	A
		BCC	loc_78EE
		LDX	#$F

loc_78B9:				; CODE XREF: RAM:78C2j
		LDA	$63C2,X
		AND	#$7F ; ''
		STA	$63C2,X
		DEX
		BPL	loc_78B9
		LDA	#0
		LDX	#$11

loc_78C8:				; CODE XREF: RAM:78CCj
		STA	$7571,X
		DEX
		BPL	loc_78C8
		LDX	$67
		LDA	$6E
		ORA	#$81 ; 'Å'
		STA	$63C2,X
		STA	$6E
		JSR	sub_7ACF
		LDX	#$82 ; 'Ç'
		LDY	#$AF ; 'Ø'
		JSR	sub_790A
		JSR	sub_7916
		BNE	loc_78E8

loc_78E8:
		JSR	sub_81B0
		JMP	loc_7973
; ---------------------------------------------------------------------------

loc_78EE:				; CODE XREF: RAM:78B5j
		LDX	$67
		LDA	$6E
		ORA	#1
		STA	$63C2,X
		STA	$6E
		JMP	loc_7973

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_78FC:				; CODE XREF: RAM:loc_77B6p
					; RAM:loc_77BCp ...
		STX	$17
		STY	$16
; End of function sub_78FC


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7900:				; CODE XREF: RAM:7703p
		LDX	$66
		JSR	$1851
		LDA	#$F
		JMP	$185A
; End of function sub_7900


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_790A:				; CODE XREF: RAM:78E0p
		STX	$17
		STY	$16
		LDX	$66
		JSR	$1851
		JMP	$183C
; End of function sub_790A


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7916:				; CODE XREF: RAM:78E3p	RAM:loc_798Ep ...
		LDX	#$40 ; '@'

loc_7918:				; CODE XREF: sub_7916+4Ej
		LDA	$640B,X
		STA	$62
		LDA	$644B,X
		STA	$63
		LDY	#0
		LDA	($62),Y
		AND	#$7F ; ''
		CMP	#2
		BNE	loc_7963
		LDY	#5
		LDA	($62),Y
		CLC
		ADC	$62
		STA	$64
		LDA	$63
		ADC	#0
		STA	$65
		LDY	#0

loc_793D:				; CODE XREF: sub_7916+40j sub_7916+44j
		LDA	($64),Y
		BEQ	loc_795C
		CMP	#$F0 ; ''
		BCC	loc_7950
		LDA	$64
		ADC	#$F
		STA	$64
		BCC	loc_7950
		INC	$65
		CLC

loc_7950:				; CODE XREF: sub_7916+2Dj sub_7916+35j
		LDA	$64
		ADC	#$10
		STA	$64
		BCC	loc_793D
		INC	$65
		BNE	loc_793D

loc_795C:				; CODE XREF: sub_7916+29j
		INY
		LDA	($64),Y
		CMP	#1
		BEQ	locret_7966

loc_7963:				; CODE XREF: sub_7916+14j
		DEX
		BPL	loc_7918

locret_7966:				; CODE XREF: sub_7916+4Bj
		RTS
; End of function sub_7916

; ---------------------------------------------------------------------------
		RTS
; ---------------------------------------------------------------------------

loc_7968:				; CODE XREF: RAM:789Aj	RAM:78AFj
		LDX	$67
		LDA	$63C2,X
		LSR	A
		BCS	loc_7973
		JMP	loc_774A
; ---------------------------------------------------------------------------

loc_7973:				; CODE XREF: RAM:770Fj	RAM:78EBj ...
		LDX	$67
		LDA	$63C2,X
		AND	#$40 ; '@'
		BEQ	loc_7983
		LDX	#$89 ; 'â'
		LDY	#$36 ; '6'
		JMP	loc_7A12
; ---------------------------------------------------------------------------

loc_7983:				; CODE XREF: RAM:797Aj
		LDA	$6E
		BMI	loc_798E
		LDX	#$90 ; 'ê'
		LDY	#$2A ; '*'
		JMP	loc_79A4
; ---------------------------------------------------------------------------

loc_798E:				; CODE XREF: RAM:7985j
		JSR	sub_7916
		BNE	loc_79A0
		LDY	#0
		LDA	($62),Y
		BPL	loc_79A0
		LDX	#$8F ; 'è'
		LDY	#$FB ; '˚'
		JMP	loc_79A4
; ---------------------------------------------------------------------------

loc_79A0:				; CODE XREF: RAM:7991j	RAM:7997j
		LDX	#$90 ; 'ê'
		LDY	#$12

loc_79A4:				; CODE XREF: RAM:798Bj	RAM:799Dj
		STX	$6D
		STY	$6C
		LDA	$633B
		ASL	A
		LDA	#0
		ADC	#0
		ASL	A
		TAX
		LDA	$81AC,X
		STA	$6A
		LDA	$81AD,X
		STA	$6B
		LDX	#$8E ; 'é'
		LDY	#$1B
		JSR	sub_78FC
		LDX	$67
		LDA	$7561,X
		CMP	$6385
		BEQ	loc_7A1F
		LDA	$9093,X
		BEQ	loc_79F3
		LDA	$6385
		STA	$7561,X
		SEC
		SBC	$9093,X
		BCC	loc_79EC
		CMP	#5
		BCS	loc_79F3
		LDX	#$84 ; 'Ñ'
		LDY	#$B5 ; 'µ'
		JSR	sub_78FC
		JMP	loc_7A1F
; ---------------------------------------------------------------------------

loc_79EC:				; CODE XREF: RAM:79DCj
		LDX	#$8D ; 'ç'
		LDY	#$83 ; 'É'
		JMP	loc_7A12
; ---------------------------------------------------------------------------

loc_79F3:				; CODE XREF: RAM:79D0j	RAM:79E0j
		LDA	$90A1,X
		CMP	#$FF
		BEQ	loc_7A1F
		SEC
		SBC	$6385
		BCC	loc_7A0E
		CMP	#5
		BCS	loc_7A1F
		LDX	#$84 ; 'Ñ'
		LDY	#$6B ; 'k'
		JSR	sub_78FC
		JMP	loc_7A1F
; ---------------------------------------------------------------------------

loc_7A0E:				; CODE XREF: RAM:79FEj
		LDX	#$8D ; 'ç'
		LDY	#$BD ; 'Ω'

loc_7A12:				; CODE XREF: RAM:7980j	RAM:79F0j
		JSR	sub_78FC
		LDX	$67
		LDA	#$40 ; '@'
		STA	$63C2,X
		JSR	sub_7AE2

loc_7A1F:				; CODE XREF: RAM:79CBj	RAM:79E9j ...
		LDX	$67
		LDA	$63C2,X
		CMP	$758E,X
		BEQ	loc_7A42
		STA	$758E,X
		AND	#$30 ; '0'
		BEQ	loc_7A42
		CMP	#$30 ; '0'
		BEQ	loc_7A3B
		LDX	#$84 ; 'Ñ'
		LDY	#$34 ; '4'
		JMP	loc_7A3F
; ---------------------------------------------------------------------------

loc_7A3B:				; CODE XREF: RAM:7A32j
		ldxy	$8411

loc_7A3F:				; CODE XREF: RAM:7A38j
		JSR	sub_78FC

loc_7A42:				; CODE XREF: RAM:7A27j	RAM:7A2Ej ...
		dldi	off_16, $8F49
		LDX	$66
		JSR	$1851

loc_7A4F:				; CODE XREF: RAM:7A74j
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7A57:				; CODE XREF: RAM:7A6Dj
		dldi	off_1977, loc_7A64
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7A64:
		JSR	$1821
		AND	#2
		BNE	loc_7A8A
		LDA	$31
		BMI	loc_7A57
		SEC
		SBC	#$30 ; '0'
		CMP	#7
		BCS	loc_7A4F
		ASL	A
		TAX
		LDA	off_7B77,X
		STA	loc_7A84+1
		LDA	off_7B77+1,X
		STA	loc_7A84+2

loc_7A84:				; DATA XREF: RAM:7A7Bw	RAM:7A81w
		JSR	$FFFF
		JMP	loc_7A42
; ---------------------------------------------------------------------------

loc_7A8A:				; CODE XREF: RAM:7A69j
		BNE	loc_7B02

loc_7A8C:				; DATA XREF: RAM:7B7Bo
		LDA	#$83 ; 'É'
		STA	$51
		JSR	$1893
		LDX	#$82 ; 'Ç'
		LDY	#$32 ; '2'
		JMP	sub_78FC
; ---------------------------------------------------------------------------

locret_7A9A:				; CODE XREF: RAM:7AC6j
		RTS
; ---------------------------------------------------------------------------

loc_7A9B:				; DATA XREF: RAM:7B81o
		dldi	off_16, $863E
		LDX	$66
		JSR	$1851

loc_7AA8:				; CODE XREF: RAM:7ACAj
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7AB0:				; CODE XREF: RAM:7ABFj
		dldi	off_1977, loc_7ABD
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7ABD:
		LDA	$31
		BMI	loc_7AB0
		JSR	j_UPPER
		CMP	#'N'
		BEQ	locret_7A9A
		CMP	#'Y'
		BNE	loc_7AA8
		JMP	sub_7AE2

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7ACF:				; CODE XREF: RAM:78D9p	sub_7AE2p
		LDX	$67
		LDA	$63C2,X
		BPL	locret_7AE1
		JSR	sub_7916
		BNE	locret_7AE1
		LDY	#2
		LDA	#$10
		STA	($62),Y

locret_7AE1:				; CODE XREF: sub_7ACF+5j sub_7ACF+Aj
		RTS
; End of function sub_7ACF


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7AE2:				; CODE XREF: RAM:7A1Cp	RAM:7ACCj

; FUNCTION CHUNK AT 774A SIZE 0000001C BYTES

		JSR	sub_7ACF
		LDX	$67
		LDA	$63C2,X
		AND	#$7E ; '~'
		STA	$63C2,X
		LDA	#0
		LDX	#$11

loc_7AF3:				; CODE XREF: sub_7AE2+15j
		STA	$7571,X
		DEX
		BPL	loc_7AF3
		LDX	#$88 ; 'à'
		LDY	#$71 ; 'q'
		JSR	sub_78FC
		PLA
		PLA

loc_7B02:				; CODE XREF: RAM:loc_7A8Aj
		JMP	loc_774A
; End of function sub_7AE2

; ---------------------------------------------------------------------------

loc_7B05:				; DATA XREF: RAM:off_7B77o
		PLA
		PLA
		LDX	#$88 ; 'à'
		LDY	#$C6 ; '∆'
		JSR	sub_78FC
		JMP	loc_774A

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B11:				; CODE XREF: RAM:78A3p	RAM:7D69p ...
		STA	2
		LDA	#0
		STA	3

loc_7B17:				; CODE XREF: RAM:7E4Ep
		LDY	#3

loc_7B19:				; CODE XREF: sub_7B11+Fj
		LDA	$63B1,Y
		STA	$7B73,Y
		DEY
		BPL	loc_7B19

loc_7B22:				; CODE XREF: sub_7B11:loc_7B53j
		LDA	byte_7B76
		CMP	2
		LDA	byte_7B75
		SBC	3
		BCS	loc_7B56
		SEC
		LDA	byte_7B74
		ORA	byte_7B73
		BNE	loc_7B38
		RTS
; ---------------------------------------------------------------------------

loc_7B38:				; CODE XREF: sub_7B11+24j
		LDA	byte_7B74
		SBC	#1
		STA	byte_7B74
		BCS	loc_7B45
		DEC	byte_7B73

loc_7B45:				; CODE XREF: sub_7B11+2Fj
		LDA	#$A
		CLC
		ADC	byte_7B76
		STA	byte_7B76
		BCC	loc_7B53
		INC	byte_7B75

loc_7B53:				; CODE XREF: sub_7B11+3Dj
		JMP	loc_7B22
; ---------------------------------------------------------------------------

loc_7B56:				; CODE XREF: sub_7B11+1Bj
		LDA	byte_7B76
		SBC	2
		STA	byte_7B76
		LDA	byte_7B75
		SBC	3
		STA	byte_7B75
		LDY	#3

loc_7B68:				; CODE XREF: sub_7B11+5Ej RAM:7B8Aj
		LDA	$7B73,Y
		STA	$63B1,Y
		DEY
		BPL	loc_7B68
		CLC
		RTS
; End of function sub_7B11

; ---------------------------------------------------------------------------
byte_7B73:	.BYTE 0			; DATA XREF: sub_7B11+21r sub_7B11+31w
byte_7B74:	.BYTE $63		; DATA XREF: sub_7B11+1Er
					; sub_7B11:loc_7B38r ...
byte_7B75:	.BYTE $A5		; DATA XREF: sub_7B11+16r sub_7B11+3Fw ...
byte_7B76:	.BYTE $4B		; DATA XREF: sub_7B11:loc_7B22r
					; sub_7B11+37r	...
off_7B77:	.WORD loc_7B05		; DATA XREF: RAM:7A78r	RAM:7A7Er
		.WORD loc_7DB1
		.WORD loc_7A8C
		.WORD loc_7E8E
		.WORD loc_7F5D
		.WORD loc_7A9B
		.WORD loc_7B85
; ---------------------------------------------------------------------------

loc_7B85:				; CODE XREF: RAM:7C58j	RAM:7CF4j ...
		LDX	$67
		LDA	$63C2,X
		BPL	loc_7B68
		dldi	off_16, $8962
		LDX	$66
		JSR	$1851

loc_7B99:				; CODE XREF: RAM:7BBCj
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7BA1:				; CODE XREF: RAM:7BB0j
		dldi	off_1977, loc_7BAE
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7BAE:
		LDA	$31
		BMI	loc_7BA1
		CMP	#'1'
		BEQ	loc_7BBF
		CMP	#'2'
		BEQ	loc_7BD6
		CMP	#'0'
		BNE	loc_7B99
		RTS
; ---------------------------------------------------------------------------

loc_7BBF:				; CODE XREF: RAM:7BB4j
		LDX	#$8B ; 'ã'
		LDY	#$93 ; 'ì'
		LDA	#$B1 ; '±'
		STA	$81
		LDA	#$63 ; 'c'
		STA	$82
		LDA	#$71 ; 'q'
		STA	$83
		LDA	#$75 ; 'u'
		STA	$84
		JMP	loc_7BEA
; ---------------------------------------------------------------------------

loc_7BD6:				; CODE XREF: RAM:7BB8j
		LDX	#$8B ; 'ã'
		LDY	#$9B ; 'õ'
		LDA	#$71 ; 'q'
		STA	$81
		LDA	#$75 ; 'u'
		STA	$82
		LDA	#$B1 ; '±'
		STA	$83
		LDA	#$63 ; 'c'
		STA	$84

loc_7BEA:				; CODE XREF: RAM:7BD3j
		STX	$70
		STY	$6F
		LDA	#0
		STA	$85

loc_7BF2:				; CODE XREF: RAM:loc_7C4Aj RAM:7C6Aj
		LDX	$85
		LDY	#0

loc_7BF6:				; CODE XREF: RAM:7C26j
		LDA	$8200,X
		STA	$71,Y
		INY
		LDA	$820C,X
		STA	$71,Y
		INY
		STY	loc_7C1A+1
		LDY	$8224,X
		LDA	$8218,X
		LSR	A
		BCC	loc_7C14
		LDA	#0
		BEQ	loc_7C16

loc_7C14:				; CODE XREF: RAM:7C0Ej
		LDA	($81),Y

loc_7C16:				; CODE XREF: RAM:7C12j
		PHA
		INY
		LDA	($81),Y

loc_7C1A:				; DATA XREF: RAM:7C04w
		LDY	#$FF
		STA	$78,Y
		PLA
		STA	$77,Y
		INX
		CPY	#8
		BNE	loc_7BF6
		LDA	#$E6 ; 'Ê'
		STA	$16
		LDA	#$89 ; 'â'
		STA	$17
		LDX	$66
		JSR	$1851

loc_7C35:				; CODE XREF: RAM:7C66j	RAM:7C75j ...
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7C3D:				; CODE XREF: RAM:7C4Fj
		dldi	off_1977, loc_7C4D
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7C4A:				; CODE XREF: RAM:7C79j
		JMP	loc_7BF2
; ---------------------------------------------------------------------------

loc_7C4D:
		LDA	$31
		BMI	loc_7C3D
		JSR	j_UPPER
		CMP	#$1B
		BNE	loc_7C5B
		JMP	loc_7B85
; ---------------------------------------------------------------------------

loc_7C5B:				; CODE XREF: RAM:7C56j
		CMP	#'F'
		BNE	loc_7C6C
		CLC
		LDA	$85
		ADC	#4
		CMP	#$C
		BEQ	loc_7C35
		STA	$85
		BNE	loc_7BF2

loc_7C6C:				; CODE XREF: RAM:7C5Dj
		CMP	#'B'
		BNE	loc_7C7B
		LDA	$85
		SEC
		SBC	#4
		BCC	loc_7C35
		STA	$85
		BCS	loc_7C4A

loc_7C7B:				; CODE XREF: RAM:7C6Ej
		SEC
		SBC	#$31 ; '1'
		CMP	#4
		BCS	loc_7C35
		ASL	A
		TAX
		LDA	$79,X
		STA	$79
		LDA	$7A,X
		STA	$7A
		TXA
		LSR	A
		ADC	$85
		STA	$85
		TAX
		LDA	$8200,X
		STA	$71
		LDA	$820C,X
		STA	$72
		LDY	#$FF
		STY	$87
		LDA	$8218,X
		LSR	A
		PHP
		LDA	$87
		ADC	#0
		STA	$86
		LDY	$8224,X
		LDA	#0
		STA	$7B
		PLP
		BCS	loc_7CBA
		LDA	($83),Y
		STA	$7B

loc_7CBA:				; CODE XREF: RAM:7CB4j
		INY
		LDA	($83),Y
		STA	$7C
		SEC
		LDA	$87
		SBC	$7C
		STA	$87
		LDA	$86
		SBC	$7B
		STA	$86
		LDA	$87
		CMP	$7A
		LDA	$86
		SBC	$79
		BCC	loc_7CDE
		LDA	$79
		STA	$86
		LDA	$7A
		STA	$87

loc_7CDE:				; CODE XREF: RAM:7CD4j
		LDA	#$82 ; 'Ç'
		STA	$16
		LDA	#$8A ; 'ä'
		STA	$17
		LDX	$66
		JSR	$1851
		JSR	$18AE
		LDA	2
		ORA	3
		BNE	loc_7CF7
		JMP	loc_7B85
; ---------------------------------------------------------------------------

loc_7CF7:				; CODE XREF: RAM:7CF2j
		LDA	$87
		CMP	2
		LDA	$86
		SBC	3
		BCS	loc_7D09
		LDA	$87
		STA	2
		LDA	$86
		STA	3

loc_7D09:				; CODE XREF: RAM:7CFFj
		SEC
		LDX	$85
		LDY	$8224,X
		INY
		LDA	($81),Y
		SBC	2
		STA	($81),Y
		DEY
		LDA	($81),Y
		SBC	3
		STA	($81),Y
		INY
		CLC
		LDA	($83),Y
		ADC	2
		STA	($83),Y
		DEY
		LDA	($83),Y
		ADC	3
		STA	($83),Y
		LDX	#$8A ; 'ä'
		LDY	#$72 ; 'r'
		JSR	sub_78FC
		JMP	loc_7B85
; ---------------------------------------------------------------------------

loc_7D36:				; CODE XREF: RAM:loc_7DAEj
		LDA	#$B5 ; 'µ'
		STA	$16
		LDA	#$85 ; 'Ö'
		STA	$17
		LDX	$66
		JSR	$1851

loc_7D43:				; CODE XREF: RAM:7D65j
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7D4B:				; CODE XREF: RAM:7D5Aj
		dldi	off_1977, loc_7D58
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7D58:
		LDA	$31
		BMI	loc_7D4B
		JSR	j_UPPER
		CMP	#'N'
		BEQ	locret_7D8B
		CMP	#'Y'
		BNE	loc_7D43
		LDA	#$78 ; 'x'
		JSR	sub_7B11
		BCC	loc_7D75

loc_7D6E:				; CODE XREF: RAM:7E53j	RAM:7F17j ...
		LDX	#$8D ; 'ç'
		LDY	#$FE ; '˛'
		JMP	sub_78FC
; ---------------------------------------------------------------------------

loc_7D75:				; CODE XREF: RAM:7D6Cj
		JSR	sub_7916
		BNE	loc_7D80
		LDY	#2
		LDA	#$10
		STA	($62),Y

loc_7D80:				; CODE XREF: RAM:7D78j
		LDX	#$8F ; 'è'
		LDY	#$FB ; '˚'
		STX	$6D
		STY	$6C
		JMP	sub_81B0
; ---------------------------------------------------------------------------

locret_7D8B:				; CODE XREF: RAM:7D61j	RAM:7DEDj
		RTS
; ---------------------------------------------------------------------------

loc_7D8C:				; CODE XREF: RAM:7DB6j
		LDA	#$7D ; '}'
		STA	$16
		LDA	#$86 ; 'Ü'
		STA	$17
		LDX	$66
		JSR	$1851
		LDX	$66
		STX	$1933
		JSR	$1848
		PLA
		PLA
		LDA	#$78 ; 'x'
		STA	$69
		LDA	#$31 ; '1'
		STA	$68
		JMP	loc_787A
; ---------------------------------------------------------------------------

loc_7DAE:				; CODE XREF: RAM:7DBBj	RAM:7DC1j
		JMP	loc_7D36
; ---------------------------------------------------------------------------

loc_7DB1:				; DATA XREF: RAM:7B79o
		LDX	$67
		LDA	$63C2,X
		BPL	loc_7D8C
		JSR	sub_7916
		BNE	loc_7DAE
		LDY	#0
		LDA	($62),Y
		BPL	loc_7DAE
		LDY	#2
		LDA	#$63 ; 'c'
		SEC
		SBC	($64),Y
		BNE	loc_7DD3
		LDX	#$84 ; 'Ñ'
		LDY	#$ED ; 'Ì'
		JMP	sub_78FC
; ---------------------------------------------------------------------------

loc_7DD3:				; CODE XREF: RAM:7DCAj
		STA	$87
		LDA	#$D8 ; 'ÿ'
		STA	$16
		LDA	#$86 ; 'Ü'
		STA	$17
		LDA	#0
		STA	$86
		LDX	$66
		JSR	$1851
		JSR	$18AE
		LDA	2
		ORA	3
		BEQ	locret_7D8B
		LDA	3
		BEQ	loc_7DF7
		LDA	#$FF
		STA	2

loc_7DF7:				; CODE XREF: RAM:7DF1j
		LDA	$87
		CMP	2
		BCS	loc_7DFF
		STA	2

loc_7DFF:				; CODE XREF: RAM:7DFBj
		LDA	#0
		STA	$79
		LDA	2
		STA	$71
		STA	$7A
		LDX	#0
		CMP	#1
		BEQ	loc_7E11
		LDX	#$73 ; 's'

loc_7E11:				; CODE XREF: RAM:7E0Dj
		STX	byte_90DA
		LDA	#$FF
		STA	$16
		LDA	#$85 ; 'Ö'
		STA	$17
		LDX	$66
		JSR	$1851

loc_7E21:				; CODE XREF: RAM:7E44j
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7E29:				; CODE XREF: RAM:7E39j
		dldi	off_1977, loc_7E37
		JMP	$1806
; ---------------------------------------------------------------------------

locret_7E36:				; CODE XREF: RAM:7E40j
		RTS
; ---------------------------------------------------------------------------

loc_7E37:
		LDA	$31
		BMI	loc_7E29
		JSR	j_UPPER
		CMP	#'N'
		BEQ	locret_7E36
		CMP	#'Y'
		BNE	loc_7E21
		LDA	$79
		STA	3
		LDA	$7A
		STA	2
		JSR	loc_7B17
		BCC	loc_7E56
		JMP	loc_7D6E
; ---------------------------------------------------------------------------

loc_7E56:				; CODE XREF: RAM:7E51j
		JSR	sub_7916
		LDY	#2
		LDA	$71
		CLC
		ADC	($64),Y
		STA	($64),Y
		LDX	#0
		SEC

loc_7E65:				; CODE XREF: RAM:7E6Aj
		SBC	#$A
		BCC	loc_7E6C
		INX
		BNE	loc_7E65

loc_7E6C:				; CODE XREF: RAM:7E67j
		ADC	#$A
		STX	$79
		ORA	#$30 ; '0'
		STA	$72
		LDY	#5
		LDA	($62),Y
		SEC
		SBC	#3
		TAY
		LDA	$72
		STA	($62),Y
		DEY
		LDA	$79
		ORA	#$30 ; '0'
		STA	($62),Y
		LDX	#$88 ; 'à'
		LDY	#$8A ; 'ä'
		JMP	sub_78FC
; ---------------------------------------------------------------------------

loc_7E8E:				; DATA XREF: RAM:7B7Do
		LDX	$67
		LDA	unk_94C8,X
		STA	$62
		LDA	unk_94D6,X
		STA	$63
		LDY	#0

loc_7E9C:				; CODE XREF: RAM:loc_7EEDj
		STY	$85
		LDA	($62),Y
		BMI	loc_7EF0
		TAX
		LDA	$633C
		CMP	$9496,X
		BCC	loc_7EF3
		TXA
		JSR	sub_80D1
		BEQ	loc_7EF3
		LDY	$69
		LDA	$9400,Y
		STA	$75
		CLC
		ADC	#6
		STA	$71
		LDA	$9432,Y
		STA	$76
		ADC	#0
		STA	$72
		LDA	$9464,Y
		STA	$79
		LDA	#$BF ; 'ø'
		STA	$16
		LDA	#$8E ; 'é'
		STA	$17
		LDX	$66
		JSR	$1851

loc_7ED8:				; CODE XREF: RAM:7F0Bj
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7EE0:				; CODE XREF: RAM:7EF8j
		dldi	off_1977, loc_7EF6
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7EED:				; CODE XREF: RAM:7F5Aj
		JMP	loc_7E9C
; ---------------------------------------------------------------------------

loc_7EF0:				; CODE XREF: RAM:7EA0j
		JMP	locret_7F5C
; ---------------------------------------------------------------------------

loc_7EF3:				; CODE XREF: RAM:7EA9j	RAM:7EAFj
		JMP	loc_7F57
; ---------------------------------------------------------------------------

loc_7EF6:
		LDA	$31
		BMI	loc_7EE0
		CMP	#$1B
		BEQ	locret_7F5C
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_7F57
		CMP	#$1B
		BEQ	locret_7F5C
		CMP	#'Y'
		BNE	loc_7ED8
		JSR	loc_80F8
		LDA	$79
		JSR	sub_7B11
		BCC	loc_7F1A
		JMP	loc_7D6E
; ---------------------------------------------------------------------------

loc_7F1A:				; CODE XREF: RAM:7F15j
		LDX	#$84 ; 'Ñ'
		LDY	#0
		JSR	sub_78FC
		LDX	$76
		LDY	$75
		JSR	$1884
		STA	$4B
		JSR	$1896
		LDA	#$19
		JSR	$1899
		STA	$69
		LDA	#$19
		JSR	$1899
		ADC	$69
		STA	$69
		LDA	$6369
		LSR	A
		ADC	$69
		BCC	loc_7F47
		LDA	#$42 ; 'B'

loc_7F47:				; CODE XREF: RAM:7F43j
		CMP	#$43 ; 'C'
		BCC	loc_7F4D
		LDA	#$42 ; 'B'

loc_7F4D:				; CODE XREF: RAM:7F49j
		CMP	#$21 ; '!'
		BCS	loc_7F53
		LDA	#$21 ; '!'

loc_7F53:				; CODE XREF: RAM:7F4Fj
		LDY	#1
		STA	($43),Y

loc_7F57:				; CODE XREF: RAM:loc_7EF3j RAM:7F03j
		LDY	$85
		INY
		BNE	loc_7EED

locret_7F5C:				; CODE XREF: RAM:loc_7EF0j RAM:7EFCj ...
		RTS
; ---------------------------------------------------------------------------

loc_7F5D:				; DATA XREF: RAM:7B7Fo
		LDA	#$15
		STA	$16
		LDA	#$88 ; 'à'
		STA	$17
		LDX	$66
		JSR	$1851

loc_7F6A:				; CODE XREF: RAM:7F90j
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7F72:				; CODE XREF: RAM:7F81j
		dldi	off_1977, loc_7F7F
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7F7F:
		LDA	$31
		BMI	loc_7F72
		CMP	#$1B
		BEQ	locret_7F5C
		JSR	j_UPPER
		CMP	#'N'
		BEQ	locret_7F5C
		CMP	#'Y'
		BNE	loc_7F6A
		LDX	$67
		LDA	$94C8,X
		STA	$62
		LDA	$94D6,X
		STA	$63
		LDY	#0

loc_7FA0:				; CODE XREF: RAM:80CEj
		STY	$85
		LDA	($62),Y
		BMI	loc_7FE8
		JSR	sub_80D1
		BNE	loc_7FEB
		LDY	#1
		LDA	($43),Y
		STA	$88
		LDY	$69
		LDA	$9400,Y
		STA	$75
		CLC
		ADC	#6
		STA	$71
		LDA	$9432,Y
		STA	$76
		ADC	#0
		STA	$72
		LDA	#$D1 ; '—'
		STA	$16
		LDA	#$87 ; 'á'
		STA	$17
		LDX	$66
		JSR	$1851

loc_7FD3:				; CODE XREF: RAM:7FFFj
		LDX	$66
		STX	$1933
		JSR	$1848

loc_7FDB:				; CODE XREF: RAM:7FF0j
		dldi	off_1977, loc_7FEE
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7FE8:				; CODE XREF: RAM:7FA4j	RAM:7FFBj
		JMP	locret_80C8
; ---------------------------------------------------------------------------

loc_7FEB:				; CODE XREF: RAM:7FA9j	RAM:7FF7j
		JMP	loc_80C9
; ---------------------------------------------------------------------------

loc_7FEE:
		LDA	$31
		BMI	loc_7FDB
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_7FEB
		CMP	#$1B
		BEQ	loc_7FE8
		CMP	#'Y'
		BNE	loc_7FD3
		LDA	#$64 ; 'd'
		JSR	sub_7B11
		BCC	loc_800B
		JMP	loc_7D6E
; ---------------------------------------------------------------------------

loc_800B:				; CODE XREF: RAM:8006j
		JSR	$1869
		LDA	$630A
		CLC
		ADC	#4
		CMP	#$18
		BCC	loc_801A
		SBC	#$18

loc_801A:				; CODE XREF: RAM:8016j
		STA	$88
		LDX	$66
		dldi	off_16, $8705
		JSR	$1851
		DEC	$1955

loc_802C:				; CODE XREF: RAM:805Ej
		LDX	$66
		STX	$1933
		JSR	$1848

loc_8034:				; CODE XREF: RAM:805Aj
		dldi	off_1977, loc_8041
		JMP	$1806
; ---------------------------------------------------------------------------

loc_8041:
		JSR	$1869
		SEC
		LDA	$88
		SBC	$630A
		BEQ	loc_8075
		BMI	loc_8054
		CMP	#$C
		BCC	loc_8054
		SBC	#$18

loc_8054:				; CODE XREF: RAM:804Cj	RAM:8050j
		CMP	#$FE ; '˛'
		BCS	loc_8075
		LDA	$31
		BMI	loc_8034
		CMP	#$20 ; ' '
		BNE	loc_802C
		dldi	off_16, $8752
		LDX	$66
		JSR	$1851
		LDA	#$A
		JSR	$185A
		JMP	loc_80C5
; ---------------------------------------------------------------------------

loc_8075:				; CODE XREF: RAM:804Aj	RAM:8056j
		LDA	$69
		JSR	sub_80D1
		LDY	#0

loc_807C:				; CODE XREF: RAM:8082j
		LDA	($41),Y
		STA	$912B,Y
		INY
		BPL	loc_807C
		LDA	$6369
		LSR	A
		LSR	A
		LSR	A
		JSR	$1899
		STA	$69
		LDA	#4
		JSR	$1899
		ADC	$69
		CMP	#9
		BCC	loc_809C
		LDA	#8

loc_809C:				; CODE XREF: RAM:8098j
		CMP	#4
		BCS	loc_80A2
		LDA	#4

loc_80A2:				; CODE XREF: RAM:809Ej
		LDY	#1
		ADC	($43),Y
		CMP	#$60 ; '`'
		BCC	loc_80C3
		LDA	#$5F ; '_'
		STA	($43),Y
		LDA	#$8A ; 'ä'
		STA	$16
		LDA	#$87 ; 'á'
		STA	$17
		LDX	$66
		JSR	$1851
		LDA	#$A
		JSR	$185A
		JMP	loc_80C5
; ---------------------------------------------------------------------------

loc_80C3:				; CODE XREF: RAM:80A8j
		STA	($43),Y

loc_80C5:				; CODE XREF: RAM:8072j	RAM:80C0j
		INC	$1955

locret_80C8:				; CODE XREF: RAM:loc_7FE8j RAM:80CCj
		RTS
; ---------------------------------------------------------------------------

loc_80C9:				; CODE XREF: RAM:loc_7FEBj
		LDY	$85
		INY
		BEQ	locret_80C8
		JMP	loc_7FA0

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_80D1:				; CODE XREF: RAM:7EACp	RAM:7FA6p ...
		STA	$69
		LDA	#$40 ; '@'
		STA	$4B

loc_80D7:				; CODE XREF: sub_80D1+24j
		LDA	$4B
		JSR	$1887
		BEQ	loc_80F3
		LDY	#0
		LDA	($41),Y
		AND	#$87 ; 'á'
		CMP	#$81 ; 'Å'
		BNE	loc_80F3
		JSR	$1896
		LDY	#3
		LDA	($43),Y
		CMP	$69
		BEQ	locret_80F7

loc_80F3:				; CODE XREF: sub_80D1+Bj sub_80D1+15j
		DEC	$4B
		BPL	loc_80D7

locret_80F7:				; CODE XREF: sub_80D1+20j
		RTS
; End of function sub_80D1

; ---------------------------------------------------------------------------

loc_80F8:				; CODE XREF: RAM:7F0Dp
		LDX	#$40 ; '@'
		LDA	#0
		STA	$69

loc_80FE:				; CODE XREF: RAM:8115j
		STX	$4B
		TXA
		JSR	$1887
		BEQ	loc_8112
		LDY	#0
		LDA	($41),Y
		AND	#$87 ; 'á'
		CMP	#$81 ; 'Å'
		BNE	loc_8112
		INC	$69

loc_8112:				; CODE XREF: RAM:8104j	RAM:810Ej
		LDX	$4B
		DEX
		BPL	loc_80FE
		LDA	$633C
		LSR	A
		CLC
		ADC	#4
		STA	$89
		CMP	$69
		BEQ	loc_8127
		BCC	loc_8127
		RTS
; ---------------------------------------------------------------------------

loc_8127:				; CODE XREF: RAM:8122j	RAM:8124j
		LDA	#$E
		STA	$16
		LDA	#$85 ; 'Ö'
		STA	$17
		LDX	$66
		JSR	$1851
		JSR	sub_81FB
		LDX	#$40 ; '@'

loc_8139:				; CODE XREF: RAM:81A7j
		STX	loc_81A4+1
		TXA
		JSR	$1887
		BEQ	loc_81A4
		LDY	#0
		LDA	($41),Y
		AND	#$87 ; 'á'
		CMP	#$81 ; 'Å'
		BNE	loc_81A4

loc_814C:				; CODE XREF: RAM:8152j
		LDA	($41),Y
		STA	$912B,Y
		INY
		BPL	loc_814C
		LDA	loc_81A4+1
		STA	$4B
		JSR	$1896
		LDY	#1
		LDA	($43),Y
		STA	$88
		LDA	#$B0 ; '∞'
		STA	$16
		LDA	#$83 ; 'É'
		STA	$17
		LDX	$66
		JSR	$1851

loc_816F:				; CODE XREF: RAM:8191j
		LDX	$66
		STX	$1933
		JSR	$1848

loc_8177:				; CODE XREF: RAM:8186j
		dldi	off_1977, loc_8184
		JMP	$1806
; ---------------------------------------------------------------------------

loc_8184:
		LDA	$31
		BMI	loc_8177
		JSR	j_UPPER
		CMP	#'N'
		BEQ	loc_81A4
		CMP	#'Y'
		BNE	loc_816F
		LDA	loc_81A4+1
		STA	$4B
		JSR	$1887
		LDY	#2
		LDA	#$10
		STA	($41),Y
		JMP	locret_81AB
; ---------------------------------------------------------------------------

loc_81A4:				; CODE XREF: RAM:8140j	RAM:814Aj ...
		LDX	#0
		DEX
		BPL	loc_8139
		PLA
		PLA

locret_81AB:				; CODE XREF: RAM:81A1j
		RTS
; ---------------------------------------------------------------------------
		.BYTE $84 ; Ñ
		.BYTE $8B ; ã
		.BYTE $8C ; å
		.BYTE $8B ; ã

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_81B0:				; CODE XREF: RAM:loc_78E8p RAM:7D88j
		LDY	#5

loc_81B2:				; CODE XREF: sub_81B0+9j
		LDA	unk_90C6,Y
		STA	byte_912B,Y
		DEY
		BPL	loc_81B2
		LDA	$67
		ASL	A
		TAX
		LDA	off_90DC,X
		STA	$62
		LDA	off_90DC+1,X
		STA	$63
		LDY	#0
		LDA	($62),Y
		ADC	byte_912C
		STA	byte_912C
		LDA	($62),Y
		ADC	unk_9130
		STA	unk_9130
		LDA	($62),Y
		TAX
		TAY
		DEY

loc_81E0:				; CODE XREF: sub_81B0+36j
		LDA	($62),Y
		STA	unk_9130,Y
		DEY
		BNE	loc_81E0

loc_81E8:				; CODE XREF: sub_81B0+42j
		LDA	aRing99,Y	; " Ring [99]"
		STA	unk_9130,X
		INX
		INY
		CPY	#$E
		BNE	loc_81E8
		LDX	#$91 ; 'ë'
		LDY	#$2B ; '+'
		JMP	$1884
; End of function sub_81B0


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_81FB:				; CODE XREF: RAM:8134p
		LDA	#$F
		JMP	$185A
; End of function sub_81FB

; ---------------------------------------------------------------------------
		.BYTE $A6 ; ¶
		.BYTE $B3 ; ≥
		.BYTE $C0 ; ¿
		.BYTE $CE ; Œ
		.BYTE $D9 ; Ÿ
		.BYTE $E3 ; „
		.BYTE $E8 ; Ë
		.BYTE $F1 ; Ò
		.BYTE $F6 ; ˆ
		.BYTE $FD ; ˝
		.BYTE	2
		.BYTE	9
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8C ; å
		.BYTE $8C ; å
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	9
		.BYTE  $A
		.BYTE  $B
		.BYTE  $F
		.BYTE  $E
		.BYTE  $D
		.BYTE  $C
		.BYTE	6
		.BYTE	8
		.BYTE	0
		.BYTE	2
		.BYTE	4
		.BYTE $A8,$FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aTheGuildMaster:.BYTE "The Guild Master performs a few"
		.BYTE $D
		.BYTE $A5
aChantsAndGestu:.BYTE "chants and gestures and then"
		.BYTE $D
		.BYTE $A5
aProclaims:	.BYTE "proclaims:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAllCursesHaveB:.BYTE $22,"All curses have been removed,"
		.BYTE $D
		.BYTE $A5
		.BYTE $B4
		.WORD $6A
		.BYTE 7
		.BYTE ' '
		.BYTE $B3
		.WORD $6321
		.BYTE $19
a_:		.BYTE ".",$22
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aYouAreNowPartO:.BYTE "You are now part of our ancient order!"
		.BYTE $D
		.BYTE $A5
aWeGiveYouYourO:.BYTE "We give you your own Guild Ring to"
		.BYTE $D
		.BYTE $A5
aStoreSpellEner:.BYTE "store spell energy and identify yourself"
		.BYTE $D
		.BYTE $A5
aToOtherMembers:.BYTE "to other members.  Wear it with pride!"
		.BYTE $D
		.BYTE $A5
aYouMayAlsoKeep:.BYTE "You may also keep your valuables safe"
		.BYTE $D
		.BYTE $A5
aInYourGuildLoc:.BYTE "in your guild locker. Beware of anyone"
		.BYTE $D
		.BYTE $A5
aFromThe:	.BYTE "from The "
		.BYTE $B4
		.WORD $8A
		.BYTE $18
		.BYTE '!'
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aDoYouWantToRel:.BYTE "Do you want to relinquish your"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aSpellOf:	.BYTE "spell of "
		.BYTE $B3
		.WORD unk_9131
		.BYTE $1E
		.BYTE $20
		.BYTE $28 ; (
		.BYTE $B2
		.WORD $88
		.BYTE	2
aq:		.BYTE "%)?"
		.BYTE $D
		.BYTE $D
		.BYTE $A5 ; •
		.BYTE $AC ; ¨
		.WORD $83F3
		.BYTE $D
		.BYTE $FF
asc_83F3:	.BYTE '('               ; DATA XREF: RAM:85FBo RAM:8637o ...
		.BYTE $A1
aY:		.BYTE 'Y'
		.BYTE $A0
aOr:		.BYTE " or "
		.BYTE $A1
aN:		.BYTE 'N'
		.BYTE $A0
		.BYTE ')'
		.BYTE $AE
		.BYTE $A6,  0,	2
		.BYTE $A5
aItIsDone:	.BYTE "It is done!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aThisIsYourLast:.BYTE "This is your last warning!"
		.BYTE $D
		.BYTE $D
		.BYTE $AC
		.WORD byte_8437
		.BYTE $A6,  0,	2
byte_8437:	.BYTE $A5		; DATA XREF: RAM:8432o
aThouShaltNotKi:.BYTE "Thou shalt not kill fellow members"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aOfThe:		.BYTE "of the "
		.BYTE $B4
		.WORD $8AD8
		.BYTE $16
		.BYTE "!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aWatchIt:	.BYTE "Watch it!"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWeReGettingTir:.BYTE "We're getting tired of your holier than"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThouAttitude:	.BYTE "thou attitude!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aBeCareful:	.BYTE "Be careful!"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThouArtHeadedD:.BYTE "Thou art headed down the wrong path."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aYourRingIsFull:.BYTE "Your ring is fully charged!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A3
		.WORD loc_90BD
		.BYTE $A5
aAtYourPresentL:.BYTE "At your present level you can only"
		.BYTE $D
		.BYTE $D
aMaintain:	.BYTE "maintain "
		.BYTE $B2
		.WORD $89
		.BYTE 2
aSpellsAtATime_:.BYTE " spells at a time.  In order"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aToLearnThisNew:.BYTE "to learn this new spell you must"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aRelinquishOneO:.BYTE "relinquish one of your old spells first."
		.BYTE $D
		.BYTE $A3
		.WORD loc_90C0
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aItWillCost120S:.BYTE "It will cost 120 silvers to"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aReplaceYourRin:.BYTE "replace your ring."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAreYouSureq:	.BYTE "Are you sure? "
		.BYTE $AC
		.WORD asc_83F3		; "("
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A3
		.WORD loc_90BD
		.BYTE $A5
aThatWillCost:	.BYTE "That will cost "
		.BYTE $B1
		.WORD $79
		.BYTE 4
aSilver:	.BYTE " silver"
		.BYTE $B3
		.WORD byte_90DA
		.BYTE 2
a__0:		.BYTE "."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAreYouSureq_0:	.BYTE "Are you sure? "
		.BYTE $AC
		.WORD asc_83F3		; "("
		.BYTE $D
		.BYTE $A3
		.WORD loc_90C0
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aAreYouSureYouW:.BYTE "Are you sure you want to"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTerminateYourM:.BYTE "terminate your membership? "
		.BYTE $AC
		.WORD asc_83F3		; "("
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aItWillCost12_0:.BYTE "It will cost 120 silvers to"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aGiveYouFullMem:.BYTE "give you full membership status."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIsThisAlrightq:.BYTE "Is this alright? "
		.BYTE $AC
		.WORD asc_83F3		; "("
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aItCostsASilver:.BYTE "It costs a silver per unit. How many?",$D
		.BYTE $AC
		.WORD byte_8A9A
		.BYTE $A6,  0,	2
		.BYTE $A5
aPracticingTheS:.BYTE "Practicing the spell of"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		.BYTE $B4
		.WORD $71
		.BYTE $1E
a__1:		.BYTE "."
		.BYTE $D
		.BYTE $A6,  0,	7
		.BYTE $A5
aPress:		.BYTE "(Press "
		.BYTE $A1
aSpaceBar:	.BYTE "SPACE BAR"
		.BYTE $A0
aToLeaveEarly_:	.BYTE " to leave early.)"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aYouQuitPractic:.BYTE "You quit practice early and gain no"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aProficiency_:	.BYTE "proficiency."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aYouAreAlreadyA:.BYTE "You are already at the highest level of"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAbilityForThat:.BYTE "ability for that spell!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aWouldYouLikeTo:.BYTE "Would you like to practice"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYourSpellOf:	.BYTE "your spell of "
		.BYTE $B4
		.WORD $71
		.BYTE $1E
		.BYTE " ("
		.BYTE $B2
		.WORD $88
		.BYTE 2
aq_0:		.BYTE "%)?"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		.BYTE $AC
		.WORD asc_83F3		; "("
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aSpellCastingPr:.BYTE "Spell casting practice takes four"
		.BYTE $D
		.BYTE $A5
aHoursAndCosts1:.BYTE "hours and costs 100 silvers."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aIsThisAlrigh_0:.BYTE "Is this alright? "
		.BYTE $AC
		.WORD asc_83F3		; "("
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aFarewell:	.BYTE "Farewell "
		.BYTE $B4
		.WORD $6A
		.BYTE 7
		.BYTE $20
		.BYTE $B3
		.WORD $6321
		.BYTE $16
a__2:		.BYTE "."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A3
		.WORD loc_90BD
		.BYTE $A5
aYourRingHasBee:.BYTE "Your ring has been charged"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aWith:		.BYTE "with "
		.BYTE $B2
		.WORD $71
		.BYTE 2
aUnit:		.BYTE " unit"
		.BYTE $B3
		.WORD byte_90DA
		.BYTE 2
a__3:		.BYTE "."
		.BYTE $D
		.BYTE $A3
		.WORD loc_90C0
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aComeAgainSoon:	.BYTE "Come again soon,"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		.BYTE $B4
		.WORD $6A
		.BYTE 7
		.BYTE " "
		.BYTE $B3
		.WORD $6321
		.BYTE $19
a__4:		.BYTE "."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aWelcomeToThe:	.BYTE "Welcome to the "
		.BYTE $B4
		.WORD byte_8AD8
		.BYTE $28
a__5:		.BYTE "."
		.BYTE $D
		.BYTE $A6,  5,	3
		MenuItem "1","Apply for Guild membership."
		.BYTE $A6,  5,	5
		MenuItem "0","Leave."
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aLeaveThouArtNo:.BYTE "Leave!  Thou art not wanted here scum!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aYouAreAtYourLo:.BYTE "You are at your locker."
		.BYTE $D
		.BYTE $A5
aWhatDoYouWantT:.BYTE "What do you want to do?"
		.BYTE $D
		.BYTE $A6,  7,	3
		MenuItem "1","Make a deposit"
		.BYTE $A6,  7,	4
		MenuItem "2","Make a withdrawal"
		.BYTE $A6,  7,	6
		MenuItem "0","Go back to main room"
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
		.BYTE $B4
		.WORD $6F
		.BYTE $14
		.BYTE $D
		.BYTE $A3
		.WORD loc_90BD
		.BYTE $A6,  5,	2
		MenuItem "1",""
		.BYTE $B4
		.WORD $71
		.BYTE $14
		.BYTE ": "
		.BYTE $B1
		.WORD $79
		.BYTE 6
		.BYTE $A6,  5,	3
		MenuItem "2",""
		.BYTE $B4
		.WORD $73
		.BYTE $14
		.BYTE ": "
		.BYTE $B1
		.WORD $7B
		.BYTE 6
		.BYTE $A6,  5,	4
		MenuItem "3",""
		.BYTE $B4
		.WORD $75
		.BYTE $14
		.BYTE ": "
		.BYTE $B1
		.WORD $7D
		.BYTE 6
		.BYTE $A6,  5,	5
		MenuItem "4",""
		.BYTE $B4
		.WORD $77
		.BYTE $14
		.BYTE ": "
		.BYTE $B1
		.WORD $7F
		.BYTE 6
		.BYTE $A6,  0,	7
aItem:		.BYTE "Item "
		BLINK '#'
		.BYTE ", "
aF:		BLINK 'F'
aOrward:	.BYTE "orward, "
aB:		BLINK 'B'
aAckOr:		.BYTE "ack, or "
aEsc:		BLINK "ESC"
aToExit:	.BYTE " to exit"
		.BYTE $A3
		.WORD $90C0
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
		.BYTE $B4
		.WORD $6F
		.BYTE $14
aMade_:		.BYTE " made.",$D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
		.BYTE $B4
		.WORD $6F
		.BYTE $14
aHowMany:	.BYTE " how many "
		.BYTE $B4
		.WORD $71
		.BYTE $1C
aq_1:		.BYTE "?"
		.BYTE $D
byte_8A9A:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8703o
		.BYTE $A3
		.WORD loc_90BD
		.BYTE $A5
aUpTo:		.BYTE "(up to "
		.BYTE $B1
		.WORD $86
		.BYTE 6
		.BYTE ')'
		.BYTE $D
		.BYTE $A6,  0,	7
		.BYTE $A5
aEnterAmountOrP:.BYTE "Enter amount or press "
		.BYTE $A1
aEsc_0:		.BYTE "ESC"
		.BYTE $A0
a__6:		.BYTE '.'
		.BYTE $D
		.BYTE $A6, $A,	3
		.BYTE "> "
		.BYTE $A3
		.WORD $90C0
		.BYTE $FF
byte_8AD8:	.BYTE $FF		; DATA XREF: RAM:76E9w	RAM:88FDo
byte_8AD9:	.BYTE $FF		; DATA XREF: RAM:76EFw
unk_8ADA:	.BYTE $F6 ; ˆ		; DATA XREF: RAM:76D3r	RAM:76E6r
		.BYTE  $B
		.BYTE $1F
		.BYTE $2E ; .
		.BYTE $3D ; =
		.BYTE $52 ; R
		.BYTE $83 ; É
		.BYTE $83 ; É
		.BYTE $83 ; É
		.BYTE $83 ; É
		.BYTE $83 ; É
		.BYTE $83 ; É
		.BYTE $61 ; a
		.BYTE $71 ; q
unk_8AE8:	.BYTE $8A ; ä		; DATA XREF: RAM:76D8r	RAM:76ECr
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
		.BYTE $8B ; ã
aLightWizardsGu:.BYTE "Light Wizards' Guild",0
aDarkWizardsGui:.BYTE "Dark Wizards' Guild",0
aGuildOfOrder:	.BYTE "Guild of Order",0
aGuildOfChaos:	.BYTE "Guild of Chaos",0
aWizardsOfLawGu:.BYTE "Wizards of Law Guild",0
aThievesGuild:	.BYTE "Thieves' Guild",0
aPaladinsGuild:	.BYTE "Paladins' Guild",0
aMercenariesGui:.BYTE "Mercenaries' Guild",0
aBrother:	.BYTE "Brother",0
aSister:	.BYTE "Sister",0
aDeposit:	.BYTE "Deposit",0
aWithdrawal:	.BYTE "Withdrawal",0
aFoodPackets:	.BYTE "Food Packets",0
aWaterFlasks:	.BYTE "Water Flasks",0
aUnlitTorches:	.BYTE "Unlit Torches",0
aTimepieces:	.BYTE "Timepieces",0
aCompasses:	.BYTE "Compasses",0
aKeys:		.BYTE "Keys",0
aCrystals:	.BYTE "Crystals",0
aGems:		.BYTE "Gems",0
aJewels:	.BYTE "Jewels",0
aGold:		.BYTE "Gold",0
aSilver_0:	.BYTE "Silver",0
aCopper:	.BYTE "Copper",0
		.BYTE $A6,  0,	2
		.BYTE $A5
aIAmDeeplySorry:.BYTE "I am deeply sorry but you have not"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheExperienceT:.BYTE "the experience to join our guild yet."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aIAmSorryButYou:.BYTE "I am sorry but your soul is too dark"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aToBecomeAMembe:.BYTE "to become a member of our guild."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aIAmSorryButY_0:.BYTE "I am sorry but you're not quite evil"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aEnoughForOurGu:.BYTE "enough for our guild."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aIAmSorryButY_1:.BYTE "I am sorry, but you are too righteous"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aToBecomeAMem_0:.BYTE "to become a member of our guild."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aIAmSorryButY_2:.BYTE "I am sorry but you aren't quite good"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aEnoughToJoinOu:.BYTE "enough to join our guild."
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aGetOutOfOurGui:.BYTE "Get out of our guild!"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYouAreTooEvilF:.BYTE "You are too evil for us now!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aGetOutOfOurG_0:.BYTE "Get out of our guild!"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYouAreTooGoody:.BYTE "You are too goody-goody for us now!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aYouHaveNotTheF:.BYTE "You have not the funds!",$D
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A5
aWelcome:	.BYTE "Welcome "
		.BYTE $B4
		.WORD $6A
		.BYTE 7
		.BYTE " "
		.BYTE $B3
		.WORD $6321
		.BYTE $16
		.BYTE "!"
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
aYouCanOnlyHave:.BYTE "You can only have full membership"
		.BYTE $D
		.BYTE $A5
aPrivilegesInBu:.BYTE "privileges in but one guild."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aDoYouWant:	.BYTE "Do you want:"
		.BYTE $D
		.BYTE $A6,  5,	5
		MenuItem "1","Full membership or"
		.BYTE $A6,  5,	6
		MenuItem "2","Associate membership"
		.BYTE $FF
		.BYTE $A6,  0,	2
		.BYTE $A3
		.WORD loc_90BD
		.BYTE $A5
aWouldYouLike_0:.BYTE "Would you like to learn"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aASpellOf:	.BYTE "a spell of "
		.BYTE $B4
		.WORD $71
		.BYTE $1E
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aFor:		.BYTE "For "
		.BYTE $B2
		.WORD $79
		.BYTE 3
aSilversq:	.BYTE " silvers? "
		.BYTE $AC
		.WORD asc_83F3		; "("
		.BYTE $D
		.BYTE $A3
		.WORD loc_90C0
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aDuesAre:	.BYTE "Dues are "
		.BYTE $B2
		.WORD $69
		.BYTE 3
aSilvers_:	.BYTE " silvers."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aDoYouStillWish:.BYTE "Do you still wish to join? "
		.BYTE $AC
		.WORD asc_83F3		; "("
		.BYTE $D
		.BYTE $FF
		.BYTE $A6,  7,	1
		MenuItem "1",""
		.BYTE $B4
		.WORD $6C
		.BYTE $19
		.BYTE $A6,  7,	2
		MenuItem "2","Have curses removed"
		.BYTE $A6,  7,	3
		MenuItem "3","Learn Guild spells"
		.BYTE $A6,  7,	4
		MenuItem "4","Practice Guild spells"
		.BYTE $A6,  7,	5
		MenuItem "5","Resign from the Guild"
		.BYTE $A3
		.WORD loc_904B
		.BYTE $A6,  7,	6
		MenuItem "6","Check your Guild locker"
		.BYTE $A6,  7,	7
		MenuItem "0","Leave"
		.BYTE $FF
aChargeYourGuil:.BYTE "Charge your Guild Ring",0
aReplaceYourGui:.BYTE "Replace your Guild Ring",0
aApplyForFullMe:.BYTE "Apply for full membership status",0
; ---------------------------------------------------------------------------

loc_904B:				; DATA XREF: RAM:8FCAo
		LDX	$67
		LDA	$63C2,X
		BMI	locret_905A
		LDA	#$EC ; 'Ï'
		STA	$16
		LDA	#$8F ; 'è'
		STA	$17

locret_905A:				; CODE XREF: RAM:9050j
		RTS
; ---------------------------------------------------------------------------
		.BYTE	2
		.BYTE	1
		.BYTE $1A
		.BYTE $12
		.BYTE $1E
		.BYTE  $C
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	8
		.BYTE $1B
		.BYTE  $A
		.BYTE  $E
		.BYTE	4
		.BYTE  $E
		.BYTE $1E
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE $13
		.BYTE	2
		.BYTE	3
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	3
		.BYTE	3
		.BYTE	2
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	5
		.BYTE $9A ; ö
		.BYTE	0
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $7F ; 
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $7F ; 
		.BYTE	0
		.BYTE $FF
		.BYTE $66 ; f
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $FF
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $3C ; <
		.BYTE $3C ; <
		.BYTE $1E
		.BYTE $1E
		.BYTE $64 ; d
		.BYTE $64 ; d
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $28 ; (
		.BYTE $50 ; P
		.BYTE $50 ; P
; ---------------------------------------------------------------------------

loc_90BD:				; DATA XREF: RAM:8512o	RAM:8603o ...
		LDA	#$FF
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_90C0:				; DATA XREF: RAM:85B2o	RAM:863Bo ...
		LDA	#0
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------
unk_90C6:	.BYTE $82 ; Ç		; DATA XREF: sub_81B0:loc_81B2r
		.BYTE $13
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
aRing99:	.BYTE " Ring [99]",0    ; DATA XREF: sub_81B0:loc_81E8r
		.BYTE	0
		.BYTE	1
		.BYTE $63 ; c
byte_90DA:	.BYTE 0			; DATA XREF: RAM:loc_7E11w RAM:8621o ...
		.BYTE	0
off_90DC:	.WORD byte_90F8		; DATA XREF: sub_81B0+Fr sub_81B0+14r
		.WORD byte_90FE
		.WORD byte_9103
		.WORD byte_9109
		.WORD byte_910F
		.WORD byte_9113
		.WORD byte_90F8
		.WORD byte_90F8
		.WORD byte_90F8
		.WORD byte_90F8
		.WORD byte_90F8
		.WORD byte_90F8
		.WORD byte_9119
		.WORD byte_9121
byte_90F8:	.BYTE 6			; DATA XREF: RAM:off_90DCo RAM:90E8o ...
aLight:		.BYTE "Light"
byte_90FE:	.BYTE 5			; DATA XREF: RAM:90DEo
aDark:		.BYTE "Dark"
byte_9103:	.BYTE 6			; DATA XREF: RAM:90E0o
aOrder:		.BYTE "Order"
byte_9109:	.BYTE 6			; DATA XREF: RAM:90E2o
aChaos:		.BYTE "Chaos"
byte_910F:	.BYTE 4			; DATA XREF: RAM:90E4o
aLaw:		.BYTE "Law"
byte_9113:	.BYTE 6			; DATA XREF: RAM:90E6o
aThief:		.BYTE "Thief"
byte_9119:	.BYTE 8			; DATA XREF: RAM:90F4o
aPaladin:	.BYTE "Paladin"
byte_9121:	.BYTE $A		; DATA XREF: RAM:90F6o
aMercenary:	.BYTE "Mercenary"
byte_912B:	.BYTE $30		; DATA XREF: sub_81B0+5w
byte_912C:	.BYTE $CC		; DATA XREF: sub_81B0+1Dr sub_81B0+20w
		.BYTE $2B ; +
		.BYTE $87 ; á
		.BYTE $50 ; P
unk_9130:	.BYTE $52 ; R		; DATA XREF: sub_81B0+25r sub_81B0+28w ...
unk_9131:	.BYTE $45 ; E		; DATA XREF: RAM:83DFo
		.BYTE $53 ; S
		.BYTE $4D ; M
		.BYTE $53 ; S
		.BYTE $47 ; G
		.BYTE $D4 ; ‘
		.BYTE $2B ; +
		.BYTE $86 ; Ü
		.BYTE $57 ; W
		.BYTE $41 ; A
		.BYTE $49 ; I
		.BYTE $54 ; T
		.BYTE $34 ; 4
		.BYTE $53 ; S
		.BYTE $FE ; ˛
		.BYTE $2B ; +
		.BYTE $87 ; á
		.BYTE $57 ; W
		.BYTE $41 ; A
		.BYTE $49 ; I
		.BYTE $54 ; T
		.BYTE $53 ; S
		.BYTE $45 ; E
		.BYTE $43 ; C
		.BYTE	0
		.BYTE $2C ; ,
		.BYTE $88 ; à
		.BYTE $57 ; W
		.BYTE $41 ; A
		.BYTE $49 ; I
		.BYTE $54 ; T
		.BYTE $53 ; S
		.BYTE $45 ; E
		.BYTE $30 ; 0
		.BYTE $35 ; 5
		.BYTE $2A ; *
		.BYTE $2C ; ,
		.BYTE $88 ; à
		.BYTE $57 ; W
		.BYTE $41 ; A
		.BYTE $49 ; I
		.BYTE $54 ; T
		.BYTE $53 ; S
		.BYTE $45 ; E
		.BYTE $31 ; 1
		.BYTE $30 ; 0
		.BYTE $43 ; C
		.BYTE $2C ; ,
		.BYTE $88 ; à
		.BYTE $57 ; W
		.BYTE $41 ; A
		.BYTE $49 ; I
		.BYTE $54 ; T
		.BYTE $53 ; S
		.BYTE $45 ; E
		.BYTE $32 ; 2
		.BYTE $30 ; 0
		.BYTE $5F ; _
		.BYTE $2C ; ,
		.BYTE $88 ; à
		.BYTE $57 ; W
		.BYTE $41 ; A
		.BYTE $49 ; I
		.BYTE $54 ; T
		.BYTE $43 ; C
		.BYTE $4E ; N
		.BYTE $54 ; T
		.BYTE $52 ; R
		.BYTE $67 ; g
		.BYTE $2C ; ,
		.BYTE $87 ; á
		.BYTE $4E ; N
		.BYTE $55 ; U
		.BYTE $4D ; M
		.BYTE $53 ; S
		.BYTE $45 ; E
		.BYTE $43 ; C
		.BYTE $53 ; S
		.BYTE $68 ; h
		.BYTE $2C ; ,
		.BYTE $87 ; á
		.BYTE $46 ; F
		.BYTE $4F ; O
		.BYTE $52 ; R
		.BYTE $43 ; C
		.BYTE $45 ; E
		.BYTE $57 ; W
		.BYTE $54 ; T
		.BYTE $69 ; i
		.BYTE $2C ; ,
		.BYTE $88 ; à
		.BYTE $57 ; W
		.BYTE $41 ; A
		.BYTE $49 ; I
		.BYTE $54 ; T
		.BYTE $4A ; J
		.BYTE $49 ; I
		.BYTE $46 ; F
		.BYTE $46 ; F
		.BYTE $6A ; j
		.BYTE $2C ; ,
		.BYTE $87 ; á
		.BYTE $57 ; W
		.BYTE $41 ; A
		.BYTE $49 ; I
		.BYTE $54 ; T
		.BYTE $4B ; K
		.BYTE $45 ; E
		.BYTE $59 ; Y
		.BYTE $73 ; s
		.BYTE $2C ; ,
		.BYTE $87 ; á
		.BYTE $57 ; W
		.BYTE $41 ; A
		.BYTE $49 ; I
		.BYTE $54 ; T
		.BYTE $4B ; K
		.BYTE $31 ; 1
		.BYTE $30 ; 0
		.BYTE $8C ; å
		.BYTE $2C ; ,
		.BYTE $87 ; á
		.BYTE $53 ; S
unk_91AC:	.BYTE $70 ; p		; DATA XREF: RAM:91DCo
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
		.BYTE $F0 ; 
		.BYTE	4
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
		.BYTE $41 ; A
		.WORD unk_91AC
; ---------------------------------------------------------------------------
		PHA
		TXA
		PHA
		TYA
		PHA
		STA	$D40A
		LDA	#$36 ; '6'
		STA	$D019
		STA	$D40A
		LDA	#$50 ; 'P'
		LDX	#$70 ; 'p'
		LDY	#$90 ; 'ê'
		STA	$D40A
		STA	$D000
		STX	$D001
		STY	$D002
		STA	$D40A
		LDA	#$B0 ; '∞'
		LDX	#$48 ; 'H'
		LDY	#$40 ; '@'
		STA	$D40A
		STA	$D003
		STX	$D004
		STY	$D005
		STA	$D40A
		LDA	#$38 ; '8'
		LDX	#$30 ; '0'
		STA	$D40A
		STA	$D006
		STX	$D007
		STA	$D40A
		LDX	$BC5B
		LDY	$BC5D
		LDA	$BC5A
		STA	$D40A
		STA	$D01A
		STX	$D016
		STY	$D018
		LDX	#$23 ; '#'
		LDY	$BBDC,X

loc_9242:				; CODE XREF: RAM:9267j
		LDA	$BB94,X
		STA	$D40A
		STA	$D017
		STY	$D019
		LDA	$BB4C,X
		STA	$D409
		LDA	$BB70,X
		STA	$D40A
		STA	$D016
		LDA	$BBB8,X
		STA	$D018
		LDY	$BBDB,X
		DEX
		BPL	loc_9242
		LDA	#0
		STA	$D40A
		STA	$D018
		STA	$D01A
		LDA	#$E
		STA	$D017
		LDA	#$14
		STA	$D409
		PLA
		TAY
		PLA
		TAX
		PLA
		RTI
; ---------------------------------------------------------------------------

loc_9284:				; CODE XREF: RAM:760Aj
		LDA	#$7F ; ''
		STA	$253
		LDA	#$AC ; '¨'
		STA	$254
		LDA	#$91 ; 'ë'
		STA	$255
		LDA	#8
		LDX	#$23 ; '#'

loc_9297:				; CODE XREF: RAM:92A5j
		LDY	#$C

loc_9299:				; CODE XREF: RAM:92A0j
		STA	$BB4C,X
		DEX
		BMI	loc_92A7
		DEY
		BNE	loc_9299
		CLC
		ADC	#4
		BNE	loc_9297

loc_92A7:				; CODE XREF: RAM:929Dj
		LDA	#0
		STA	9
		LDA	#8
		STA	$A
		JSR	loc_939F
		LDA	#$70 ; 'p'
		STA	9
		LDA	#$BB ; 'ª'
		STA	$A
		JSR	loc_939F
		LDA	#0
		STA	loc_92CD+1
		LDA	#$BD ; 'Ω'
		STA	loc_92CD+2
		LDY	#3
		LDA	#0
		LDX	#$80 ; 'Ä'

loc_92CD:				; CODE XREF: RAM:92D1j	RAM:92D7j
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_92CD
		INC	loc_92CD+2
		DEY
		BNE	loc_92CD
		LDX	#7

loc_92DB:				; CODE XREF: RAM:92DFj
		STA	$D000,X
		DEX
		BPL	loc_92DB
		LDA	#3
		TAX

loc_92E4:				; CODE XREF: RAM:92E8j
		STA	$D008,X
		DEX
		BPL	loc_92E4
		LDA	#$FF
		STA	$D00C
		LDA	#3
		STA	$D01D
		LDA	#$BC ; 'º'
		STA	$D407
		LDA	#4
		STA	$D01B
		dldi	off_7, $BC00
		LDA	#$F0 ; ''
		STA	9
		LDA	#4
		STA	$A
		LDA	#0
		STA	6

loc_9312:				; CODE XREF: RAM:9338j
		LDY	6
		LDA	(7),Y
		STA	4
		LDY	#7

loc_931A:				; CODE XREF: RAM:9325j
		LSR	4
		BCC	loc_9324
		LDA	(9),Y
		ORA	#$80 ; 'Ä'
		STA	(9),Y

loc_9324:				; CODE XREF: RAM:931Cj
		DEY
		BPL	loc_931A
		LDA	9
		CLC
		ADC	#8
		STA	9
		BCC	loc_9332
		INC	$A

loc_9332:				; CODE XREF: RAM:932Ej
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_9312
		LDA	#$2D ; '-'
		STA	off_7
		LDX	#0
		STX	6
		LDA	#$A9 ; '©'
		STA	$F0
		LDA	#$BD ; 'Ω'
		STA	$F1

loc_934A:				; CODE XREF: RAM:935Bj
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
		BCC	loc_934A

loc_935D:				; CODE XREF: RAM:937Aj
		LDX	#0

loc_935F:				; CODE XREF: RAM:9378j
		LDY	6
		LDA	(7),Y
		LDY	#4

loc_9365:				; CODE XREF: RAM:936Aj
		STA	($F0,X)
		INC	$F0,X
		DEY
		BNE	loc_9365
		INX
		INX
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCS	loc_937C
		CPX	#$A
		BCC	loc_935F
		BCS	loc_935D

loc_937C:				; CODE XREF: RAM:9374j
		LDX	#3
		LDA	$BC5F

loc_9381:				; CODE XREF: RAM:9385j
		STA	$D012,X
		DEX
		BPL	loc_9381
		LDA	#$DE ; 'ﬁ'
		STA	$24A
		LDA	#$91 ; 'ë'
		STA	$24B
		LDA	#$C0 ; '¿'
		STA	NMIEN
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_939F:				; CODE XREF: RAM:92AFp	RAM:92BAp ...
		LDY	#0
		LDA	(7),Y
		INC	7
		BNE	loc_93A9
		INC	8

loc_93A9:				; CODE XREF: RAM:93A5j
		CMP	#$1B
		BEQ	loc_93B8
		STA	(9),Y
		INC	9
		BNE	loc_93B5
		INC	$A

loc_93B5:				; CODE XREF: RAM:93B1j
		JMP	loc_939F
; ---------------------------------------------------------------------------

loc_93B8:				; CODE XREF: RAM:93ABj
		LDA	(7),Y
		INC	7
		BNE	loc_93C0
		INC	8

loc_93C0:				; CODE XREF: RAM:93BCj
		CMP	#$FF
		BNE	loc_93C5
		RTS
; ---------------------------------------------------------------------------

loc_93C5:				; CODE XREF: RAM:93C2j
		STA	byte_93FF
		ADC	9
		STA	loc_93D8+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_93DD
		LDA	byte_93FF

loc_93D8:				; DATA XREF: RAM:93CAw
		SBC	#$FF
		STA	byte_93FF

loc_93DD:				; CODE XREF: RAM:93D3j
		LDA	(7),Y
		INC	7
		BNE	loc_93E5
		INC	8

loc_93E5:				; CODE XREF: RAM:93E1j
		LDY	byte_93FF

loc_93E8:				; CODE XREF: RAM:93EBj
		STA	(9),Y
		DEY
		BPL	loc_93E8
		INC	byte_93FF
		LDA	byte_93FF
		CLC
		ADC	9
		STA	9
		BCC	loc_93FC
		INC	$A

loc_93FC:				; CODE XREF: RAM:93F8j
		JMP	loc_939F
; ---------------------------------------------------------------------------
byte_93FF:	.BYTE 0			; DATA XREF: RAM:loc_93C5w RAM:93D5r ...
		.BYTE $52 ; R
		.BYTE $66 ; f
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE $78 ; x
		.BYTE	0
		.BYTE $44 ; D
		.BYTE $89 ; â
		.BYTE $CA ;  
		.BYTE  $B
		.BYTE $53 ; S
		.BYTE $78 ; x
		.BYTE $9B ; õ
		.BYTE $E0 ; ‡
		.BYTE $25 ; %
		.BYTE $4A ; J
		.BYTE $6F ; o
		.BYTE $96 ; ñ
		.BYTE $BD ; Ω
		.BYTE $E3 ; „
		.BYTE	9
		.BYTE $30 ; 0
		.BYTE $7B ; {
		.BYTE $C6 ; ∆
		.BYTE  $C
		.BYTE $4C ; L
		.BYTE $8C ; å
		.BYTE $8C ; å
		.BYTE $B0 ; ∞
		.BYTE $F6 ; ˆ
		.BYTE $17
		.BYTE $42 ; B
		.BYTE $62 ; b
		.BYTE $89 ; â
		.BYTE $AA ; ™
		.BYTE $EC ; Ï
		.BYTE $14
		.BYTE $5C ; \
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $B0 ; ∞
		.BYTE $B0 ; ∞
		.BYTE $B0 ; ∞
		.BYTE $B0 ; ∞
		.BYTE $B1 ; ±
		.BYTE $B1 ; ±
		.BYTE $B1 ; ±
		.BYTE $B1 ; ±
		.BYTE $B1 ; ±
		.BYTE $B2 ; ≤
		.BYTE $B2 ; ≤
		.BYTE $B2 ; ≤
		.BYTE $B2 ; ≤
		.BYTE $B2 ; ≤
		.BYTE $B2 ; ≤
		.BYTE $B3 ; ≥
		.BYTE $B3 ; ≥
		.BYTE $B3 ; ≥
		.BYTE $B3 ; ≥
		.BYTE $B4 ; ¥
		.BYTE $B4 ; ¥
		.BYTE $B4 ; ¥
		.BYTE $B4 ; ¥
		.BYTE $B4 ; ¥
		.BYTE $B4 ; ¥
		.BYTE $B5 ; µ
		.BYTE $B5 ; µ
		.BYTE $B5 ; µ
		.BYTE $B5 ; µ
		.BYTE $B5 ; µ
		.BYTE $B5 ; µ
		.BYTE $B6 ; ∂
		.BYTE $B6 ; ∂
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
		.BYTE $1E
		.BYTE $1E
		.BYTE $1E
		.BYTE $18
		.BYTE $21 ; !
		.BYTE $21 ; !
		.BYTE $2C ; ,
		.BYTE $32 ; 2
		.BYTE $34 ; 4
		.BYTE $31 ; 1
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE $37 ; 7
		.BYTE $37 ; 7
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $32 ; 2
		.BYTE $2D ; -
		.BYTE $2D ; -
		.BYTE $27 ; '
		.BYTE $34 ; 4
		.BYTE $35 ; 5
		.BYTE $35 ; 5
		.BYTE $2B ; +
		.BYTE $2C ; ,
		.BYTE $25 ; %
		.BYTE $2B ; +
		.BYTE $25 ; %
		.BYTE $2F ; /
		.BYTE $26 ; &
		.BYTE $23 ; #
		.BYTE $33 ; 3
		.BYTE $34 ; 4
		.BYTE $27 ; '
		.BYTE	2
		.BYTE	3
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	2
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	3
		.BYTE	4
		.BYTE	3
		.BYTE	3
		.BYTE	4
		.BYTE	4
		.BYTE	5
		.BYTE	6
		.BYTE	6
		.BYTE	5
		.BYTE	3
		.BYTE	4
		.BYTE	4
		.BYTE	7
		.BYTE	6
		.BYTE $FF
		.BYTE	5
		.BYTE	4
		.BYTE	6
		.BYTE	7
		.BYTE	3
		.BYTE	3
		.BYTE	5
		.BYTE	2
		.BYTE	4
		.BYTE	3
		.BYTE	5
unk_94C8:	.BYTE $E4 ; ‰		; DATA XREF: RAM:7E90r
		.BYTE $F2 ; Ú
		.BYTE	0
		.BYTE  $D
		.BYTE $1E
		.BYTE $2C ; ,
		.BYTE $3A ; :
		.BYTE $45 ; E
		.BYTE $2C ; ,
		.BYTE $2C ; ,
		.BYTE $2C ; ,
		.BYTE $2C ; ,
		.BYTE $3A ; :
		.BYTE $45 ; E
unk_94D6:	.BYTE $94 ; î		; DATA XREF: RAM:7E95r
		.BYTE $94 ; î
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE $95 ; ï
		.BYTE	0
		.BYTE $13
		.BYTE $14
		.BYTE $17
		.BYTE $1E
		.BYTE $20
		.BYTE $21 ; !
		.BYTE $23 ; #
		.BYTE $29 ; )
		.BYTE $2A ; *
		.BYTE $2B ; +
		.BYTE $2E ; .
		.BYTE $31 ; 1
		.BYTE $FF
		.BYTE	0
		.BYTE $11
		.BYTE $15
		.BYTE $17
		.BYTE $1D
		.BYTE $1F
		.BYTE $20
		.BYTE $22 ; "
		.BYTE $23 ; #
		.BYTE $28 ; (
		.BYTE $2A ; *
		.BYTE $2B ; +
		.BYTE $2E ; .
		.BYTE $FF
		.BYTE	0
		.BYTE $14
		.BYTE $17
		.BYTE $1A
		.BYTE $1C
		.BYTE $1F
		.BYTE $21 ; !
		.BYTE $27 ; '
		.BYTE $2B ; +
		.BYTE $2E ; .
		.BYTE $2F ; /
		.BYTE $30 ; 0
		.BYTE $FF
		.BYTE	0
		.BYTE $10
		.BYTE $11
		.BYTE $15
		.BYTE $16
		.BYTE $17
		.BYTE $18
		.BYTE $1B
		.BYTE $1D
		.BYTE $1E
		.BYTE $22 ; "
		.BYTE $27 ; '
		.BYTE $2B ; +
		.BYTE $2D ; -
		.BYTE $2E ; .
		.BYTE $30 ; 0
		.BYTE $FF
		.BYTE	0
		.BYTE $10
		.BYTE $12
		.BYTE $14
		.BYTE $16
		.BYTE $17
		.BYTE $1C
		.BYTE $1F
		.BYTE $21 ; !
		.BYTE $2C ; ,
		.BYTE $2D ; -
		.BYTE $2E ; .
		.BYTE $30 ; 0
		.BYTE $FF
		.BYTE	1
		.BYTE $11
		.BYTE $12
		.BYTE $13
		.BYTE $15
		.BYTE $17
		.BYTE $23 ; #
		.BYTE $25 ; %
		.BYTE $27 ; '
		.BYTE $28 ; (
		.BYTE $2C ; ,
		.BYTE $2E ; .
		.BYTE $30 ; 0
		.BYTE $FF
		.BYTE	1
		.BYTE $10
		.BYTE $14
		.BYTE $17
		.BYTE $18
		.BYTE $19
		.BYTE $23 ; #
		.BYTE $24 ; $
		.BYTE $2D ; -
		.BYTE $2E ; .
		.BYTE $FF
		.BYTE	0
		.BYTE	1
		.BYTE $11
		.BYTE $15
		.BYTE $16
		.BYTE $19
		.BYTE $25 ; %
		.BYTE $27 ; '
		.BYTE $2C ; ,
		.BYTE $2E ; .
		.BYTE $2F ; /
		.BYTE $30 ; 0
		.BYTE $FF
		.BYTE $89 ; â
		.BYTE $14
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $F
aLocation:	.BYTE "Location",0
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $12
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
aRepair:	.BYTE "Repair",0
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE $81 ; Å
		.BYTE $44 ; D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $F
aStrength:	.BYTE "Strength",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $68 ; h
		.BYTE	1
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $5B ; [
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $5B ; [
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aStrength_0:	.BYTE "Strength",0
		.BYTE $32 ; 2
		.BYTE $4C ; L
		.BYTE $45 ; E
		.BYTE $56 ; V
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE $10
		.BYTE $81 ; Å
		.BYTE $44 ; D
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $F
aCharisma:	.BYTE "Charisma",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $68 ; h
		.BYTE	1
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $53 ; S
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $53 ; S
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aCharisma_0:	.BYTE "Charisma",0
		.BYTE $33 ; 3
		.BYTE $35 ; 5
		.BYTE $8B ; ã
		.BYTE $32 ; 2
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $11
		.BYTE $81 ; Å
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
aDexterity:	.BYTE "Dexterity",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $68 ; h
		.BYTE	1
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $73 ; s
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $73 ; s
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $19
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aDexterity_0:	.BYTE "Dexterity",0
		.BYTE $43 ; C
		.BYTE $41 ; A
		.BYTE $4E ; N
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	1
		.BYTE $12
		.BYTE $81 ; Å
		.BYTE $41 ; A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $C
		.BYTE	"Speed",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $68 ; h
		.BYTE	1
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $7B ; {
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $7B ; {
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $40 ; @
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aSpeed:		.BYTE "Speed",0
		.BYTE $52 ; R
		.BYTE $55 ; U
		.BYTE $13
		.BYTE $33 ; 3
		.BYTE $88 ; à
		.BYTE $54 ; T
		.BYTE $48 ; H
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	1
		.BYTE $13
		.BYTE $81 ; Å
		.BYTE $41 ; A
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $C
aLight_0:	.BYTE "Light",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $E0 ; ‡
		.BYTE	1
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aLight_1:	.BYTE "Light",0
		.BYTE $50 ; P
		.BYTE $33 ; 3
		.BYTE $86 ; Ü
		.BYTE $44 ; D
		.BYTE $4F ; O
		.BYTE $4F ; O
		.BYTE $52 ; R
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE $14
		.BYTE $81 ; Å
		.BYTE $48 ; H
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $13
aNightVision:	.BYTE "Night Vision",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $68 ; h
		.BYTE	1
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $90 ; ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
unk_96F0:	.BYTE  $D		; CODE XREF: RAM:76CBj
					; DATA XREF: sub_7AE2-382w
		.BYTE $F0 ; 
		.BYTE	0
byte_96F3:	.BYTE $81		; DATA XREF: RAM:76B8r
byte_96F4:	.BYTE $90		; DATA XREF: RAM:76BEr
unk_96F5:	.BYTE	0		; CODE XREF: RAM:7613p	RAM:76B5p ...
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aNightVision_0:	.BYTE "Night Vision",0
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $15
		.BYTE $81 ; Å
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
aParalysis:	.BYTE "Paralysis",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE $16
		.BYTE $81 ; Å
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $E
aHealing:	.BYTE "Healing",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	5
		.BYTE $17
		.BYTE $81 ; Å
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
aFireblade:	.BYTE "Fireblade",0
		.BYTE $87 ; á
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $3D ; =
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $D5 ; ’
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aFireblade_0:	.BYTE "Fireblade",0
		.BYTE $52 ; R
		.BYTE $54 ; T
		.BYTE $53 ; S
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	4
		.BYTE $18
		.BYTE $81 ; Å
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
aRazoredge:	.BYTE "Razoredge",0
		.BYTE $87 ; á
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $3E ; >
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $24 ; $
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aRazoredge_0:	.BYTE "Razoredge",0
		.BYTE $44 ; D
		.BYTE $8F ; è
		.BYTE $35 ; 5
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	4
		.BYTE $19
		.BYTE $81 ; Å
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
aSlayEvil:	.BYTE "Slay Evil",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $E5 ; Â
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $5A ; Z
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	5
		.BYTE $1A
		.BYTE $81 ; Å
		.BYTE $25 ; %
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
aSlayGood:	.BYTE "Slay Good",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $E6 ; Ê
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $5A ; Z
		.BYTE	0
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	5
		.BYTE $1B
		.BYTE $81 ; Å
		.BYTE $27 ; '
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $12
aDefeatEvil:	.BYTE "Defeat Evil",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $E5 ; Â
		.BYTE	0
		.BYTE	2
		.BYTE	3
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	4
		.BYTE $1C
		.BYTE $81 ; Å
		.BYTE $27 ; '
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $12
aDefeatGood:	.BYTE "Defeat Good",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $E6 ; Ê
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE $55 ; U
		.BYTE	0
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	4
		.BYTE $1D
		.BYTE $81 ; Å
		.BYTE $26 ; &
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $11
aFireBalls:	.BYTE "Fire Balls",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $E1 ; ·
		.BYTE	0
		.BYTE	2
		.BYTE	7
		.BYTE $66 ; f
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	4
		.BYTE $1E
		.BYTE $81 ; Å
		.BYTE $26 ; &
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $11
aColdBlast:	.BYTE "Cold Blast",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $E7 ; Á
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE $66 ; f
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	4
		.BYTE $1F
		.BYTE $81 ; Å
		.BYTE $27 ; '
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $12
aMagicDarts:	.BYTE "Magic Darts",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	7
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	2
		.BYTE $20
		.BYTE $81 ; Å
		.BYTE $4B ; K
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
aProt_FromEvil:	.BYTE "Prot. From Evil",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $68 ; h
		.BYTE	1
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $AF ; Ø
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $AF ; Ø
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aProt_Evil:	.BYTE "Prot. Evil",0
		.BYTE $54 ; T
		.BYTE $45 ; E
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE $21 ; !
		.BYTE $81 ; Å
		.BYTE $4B ; K
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
aProt_FromGood:	.BYTE "Prot. From Good",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $68 ; h
		.BYTE	1
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $AE ; Æ
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $AE ; Æ
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aProt_Good:	.BYTE "Prot. Good",0
		.BYTE $D4 ; ‘
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE $22 ; "
		.BYTE $81 ; Å
		.BYTE $46 ; F
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $11
aProtection:	.BYTE "Protection",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $68 ; h
		.BYTE	1
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE  $B
		.BYTE	1
		.BYTE	2
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE  $B
		.BYTE	1
		.BYTE	2
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aProtection_0:	.BYTE "Protection",0
		.BYTE $50 ; P
		.BYTE $50 ; P
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	2
		.BYTE $23 ; #
		.BYTE $81 ; Å
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $B
		.BYTE $46 ; F
		.BYTE $75 ; u
		.BYTE $72 ; r
		.BYTE $79 ; y
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $21 ; !
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aFury:		.BYTE "Fury",0
		.BYTE $48 ; H
		.BYTE $46 ; F
		.BYTE $41 ; A
		.BYTE $49 ; I
		.BYTE $4C ; L
		.BYTE $B5 ; µ
		.BYTE $3A ; :
		.BYTE $88 ; à
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	1
		.BYTE $24 ; $
		.BYTE $81 ; Å
		.BYTE $40 ; @
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $B
aLuck:		.BYTE "Luck",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $68 ; h
		.BYTE	1
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aLuck_0:	.BYTE "Luck",0
		.BYTE $4D ; M
		.BYTE $53 ; S
		.BYTE $47 ; G
		.BYTE	3
		.BYTE $3B ; ;
		.BYTE $87 ; á
		.BYTE $42 ; B
		.BYTE $4F ; O
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE $25 ; %
		.BYTE $81 ; Å
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $F
aBewilder:	.BYTE "Bewilder",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE $27 ; '
		.BYTE $81 ; Å
		.BYTE $46 ; F
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $11
aShadowmeld:	.BYTE "Shadowmeld",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $FA ; ˙
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $8D ; ç
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $8D ; ç
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aShadowmeld_0:	.BYTE "Shadowmeld",0
		.BYTE $4F ; O
		.BYTE $52 ; R
		.BYTE	0
		.BYTE	2
		.BYTE	0
		.BYTE	2
		.BYTE $28 ; (
		.BYTE $81 ; Å
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $C
aPrism:		.BYTE "Prism",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	2
		.BYTE $29 ; )
		.BYTE $81 ; Å
		.BYTE $2B ; +
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $16
aLightningBolts:.BYTE "Lightning Bolts",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $E3 ; „
		.BYTE	0
		.BYTE	2
		.BYTE	5
		.BYTE $38 ; 8
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	6
		.BYTE $2A ; *
		.BYTE $81 ; Å
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $B
aFear:		.BYTE "Fear",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	8
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	1
		.BYTE $2B ; +
		.BYTE $81 ; Å
		.BYTE $27 ; '
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $12
aConjureKey:	.BYTE "Conjure Key",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $BF ; ø
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $2C ; ,
		.BYTE $81 ; Å
		.BYTE $21 ; !
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $C
aVigor:		.BYTE "Vigor",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $9B ; õ
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE  $A
		.BYTE	0
		.BYTE	0
		.BYTE $2D ; -
		.BYTE $81 ; Å
		.BYTE $42 ; B
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $D
aShield:	.BYTE "Shield",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $68 ; h
		.BYTE	1
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	3
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE	2
		.BYTE	1
		.BYTE	3
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aShield_0:	.BYTE "Shield",0
		.BYTE $45 ; E
		.BYTE $4C ; L
		.BYTE $50 ; P
		.BYTE $41 ; A
		.BYTE $47 ; G
		.BYTE $30 ; 0
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	1
		.BYTE $2E ; .
		.BYTE $81 ; Å
		.BYTE $28 ; (
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $13
aConjureFood:	.BYTE "Conjure Food",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $BB ; ª
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	0
		.BYTE $2F ; /
		.BYTE $81 ; Å
		.BYTE $48 ; H
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $13
aSuperVision:	.BYTE "Super Vision",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $64 ; d
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $91 ; ë
		.BYTE $8B ; ã
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE $81 ; Å
		.BYTE $8B ; ã
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE $EC ; Ï
		.BYTE	0
		.BYTE	4
aSuperVision_0:	.BYTE "Super Vision",0
		.BYTE	0
		.BYTE	4
		.BYTE	0
		.BYTE	1
		.BYTE $30 ; 0
		.BYTE $81 ; Å
		.BYTE $24 ; $
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $F
aBlinding:	.BYTE "Blinding",0
		.BYTE $84 ; Ñ
		.BYTE $FF
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE	1
		.BYTE	0
		.BYTE  $D
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	6
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	0
		.BYTE	3
		.BYTE $31 ; 1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
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
