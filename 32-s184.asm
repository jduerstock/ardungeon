		.include	"equates.inc"
		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

.macro DBGSYM Label, Addr
	.BYTE	($80 | .STRLEN(Label))
	.BYTE	Label
	.BYTE	.LOBYTE(Addr), .HIBYTE(Addr)
.endmacro

.macro Item Type,Unknown1,Unknown2,Weight,Name
:		.BYTE	Type
		.BYTE	:++-:-
		.BYTE	Unknown1
		.BYTE	Unknown2
		.BYTE	Weight
		.BYTE	:+-:-
		.BYTE	Name
		.BYTE	0
:
.endmacro

byte_96F0	= $96F0
byte_96F3	= $96F3
byte_96F4	= $96F4
byte_96F5	= $96F5


		.SEGMENT "GUILD_A"
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

loc_760D:				; CODE XREF: RAM:7604^j	RAM:7607^j
		INC	$1937
		JSR	$184E
		JSR	byte_96F5
		RTS
; ---------------------------------------------------------------------------

loc_7617:				; CODE XREF: RAM:7601^j
		dldi	off_7, GUILD_A_END
		dldi	off_9, GUILD_B_START
		dldi	word_B, $680
		JSR	$187E
		DEC	$1937
		LDX	#4

loc_7637:				; CODE XREF: RAM:763Evj
		LDA	$6318,X
		STA	$750D,X
		DEX
		BPL	loc_7637
		LDX	#$D

loc_7642:				; CODE XREF: RAM:765Evj
		LDA	byte_905B,X
		CMP	I_LOC_X
		BNE	loc_765D
		LDA	byte_9069,X
		CMP	I_LOC_Y
		BNE	loc_765D
		LDA	byte_9077,X
		CMP	I_LOC_Z
		BNE	loc_765D
		JMP	loc_7661
; ---------------------------------------------------------------------------

loc_765D:				; CODE XREF: RAM:7648^j	RAM:7650^j ...
		DEX
		BPL	loc_7642
		BRK
; ---------------------------------------------------------------------------

loc_7661:				; CODE XREF: RAM:765A^j
		STX	$67
		dldi	off_1977, loc_76CE
		ldi	SEGNO, $0F
		dldi	SEGADDR, byte_96F0
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
		JSR	byte_96F5
		LDA	byte_96F3
		STA	$224
		LDA	byte_96F4
		STA	$225
		DEC	$22F
		ldxy	$9FF2
		JMP	byte_96F0
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
		AND	#$81
		BNE	loc_76FB
		LDX	$67
		LDA	unk_8ADA,X
		STA	off_8AD8
		LDA	unk_8AE8,X
		STA	off_8AD8+1
		LDA	$63C2,X
		STA	$6E
		AND	#$40 ; '@'
		BEQ	loc_7709

loc_76FB:				; CODE XREF: RAM:76E2^j
		dldi	off_16, $8936
		JSR	sub_7900
		JMP	loc_774A
; ---------------------------------------------------------------------------

loc_7709:				; CODE XREF: RAM:76F9^j
		LDA	$6E
		AND	#$81
		BEQ	loc_7712
		JMP	loc_7973
; ---------------------------------------------------------------------------

loc_7712:				; CODE XREF: RAM:770D^j
		dldi	off_16, $88E9
		LDX	$66
		JSR	j_sub_3C5C

loc_771F:				; CODE XREF: RAM:7745vj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_7727:				; CODE XREF: RAM:773Dvj
		dldi	off_1977, $7734
		JMP	$1806
; ---------------------------------------------------------------------------
		JSR	j_sub_262F
		AND	#2
		BNE	loc_774A
		LDA	$31
		BMI	loc_7727
		CMP	#'0'
		BEQ	loc_774A
		CMP	#'1'
		BNE	loc_771F
		JMP	loc_7766
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_7AE2

loc_774A:				; CODE XREF: RAM:7706^j	RAM:7739^j ...
		JSR	byte_96F5
		INC	$22F
		LDX	#4

loc_7752:				; CODE XREF: sub_7AE2-389vj
		LDA	$750D,X
		STA	I_LOC_X,X
		DEX
		BPL	loc_7752
		LDA	#$FF
		STA	$AC00
		STA	byte_96F0
		JMP	$180C
; END OF FUNCTION CHUNK	FOR sub_7AE2
; ---------------------------------------------------------------------------

loc_7766:				; CODE XREF: RAM:7747^j
		LDX	#$E
		LDA	#$31 ; '1'
		STA	$68
		LDA	$63D1

loc_776F:				; CODE XREF: RAM:7773vj
		ORA	$63C2,X
		DEX
		BPL	loc_776F
		ASL	A
		BCC	loc_77A8
		dldi	off_16, $8E33
		LDX	$66
		JSR	j_sub_3C5C

loc_7785:				; CODE XREF: RAM:77A4vj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_778D:				; CODE XREF: RAM:779Cvj
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

loc_77A6:				; CODE XREF: RAM:77A0^j
		STA	$68

loc_77A8:				; CODE XREF: RAM:7776^j
		LDX	$67
		LDA	I_EXPLVL
		CMP	byte_9085,X
		BCS	loc_77C2
		ldxy	byte_8C10

loc_77B6:				; CODE XREF: RAM:7833vj	RAM:7842vj ...
		JSR	sub_78FC
		JMP	loc_774A
; ---------------------------------------------------------------------------

loc_77BC:				; CODE XREF: RAM:77E5vj	RAM:77ECvj ...
		JSR	sub_78FC
		JMP	loc_774A
; ---------------------------------------------------------------------------

loc_77C2:				; CODE XREF: RAM:77B0^j
		LDA	byte_9093,X
		BEQ	loc_7811
		LDA	$6385
		SEC
		SBC	byte_9093,X
		BCC	loc_77D7
		CMP	#5
		BCS	loc_7811
		JMP	loc_780A
; ---------------------------------------------------------------------------

loc_77D7:				; CODE XREF: RAM:77CE^j
		LDA	$67
		LSR	A
		BCS	loc_77EF
		LDA	$6385
		BPL	loc_77E8
		ldxy	byte_8D3D
		JMP	loc_77BC
; ---------------------------------------------------------------------------

loc_77E8:				; CODE XREF: RAM:77DF^j
		ldxy	byte_8C60
		JMP	loc_77BC
; ---------------------------------------------------------------------------

loc_77EF:				; CODE XREF: RAM:77DA^j
		LDA	$6385
		BPL	loc_77FB
		ldxy	byte_8CEF
		JMP	loc_77BC
; ---------------------------------------------------------------------------

loc_77FB:				; CODE XREF: RAM:77F2^j
		LDA	$6385
		CMP	byte_9093,X
		BCC	loc_780A
		ldxy	byte_8CAD
		JMP	loc_77BC
; ---------------------------------------------------------------------------

loc_780A:				; CODE XREF: RAM:77D4^j	RAM:7801^j
		ldxy	byte_8C60
		JMP	loc_77BC
; ---------------------------------------------------------------------------

loc_7811:				; CODE XREF: RAM:77C5^j	RAM:77D2^j
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

loc_7825:				; CODE XREF: RAM:781C^j
		LDA	$67
		LSR	A
		BCS	loc_784C
		LDA	$6385
		BPL	loc_7836
		ldxy	byte_8D3D
		JMP	loc_77B6
; ---------------------------------------------------------------------------

loc_7836:				; CODE XREF: RAM:782D^j
		LDA	$90A1,X
		CMP	$6385
		BCC	loc_7845
		ldxy	byte_8C60
		JMP	loc_77B6
; ---------------------------------------------------------------------------

loc_7845:				; CODE XREF: RAM:7822^j	RAM:783C^j
		ldxy	byte_8CEF
		JMP	loc_77B6
; ---------------------------------------------------------------------------

loc_784C:				; CODE XREF: RAM:7828^j
		LDA	$6385
		BPL	loc_7858
		ldxy	byte_8CEF
		JMP	loc_77B6
; ---------------------------------------------------------------------------

loc_7858:				; CODE XREF: RAM:784F^j
		ldxy	byte_8CAD
		JMP	loc_77B6
; ---------------------------------------------------------------------------

loc_785F:				; CODE XREF: RAM:7816^j	RAM:7820^j
		LDA	$90AF,X
		LDY	$68
		CPY	#$31 ; '1'
		BNE	loc_786B
		CLC
		ADC	#$78 ; 'x'

loc_786B:				; CODE XREF: RAM:7866^j
		STA	$69
		dldi	off_16, $8F0C
		LDX	$66
		JSR	j_sub_3C5C

loc_787A:				; CODE XREF: RAM:789Fvj	RAM:7DABvj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_7882:				; CODE XREF: RAM:7891vj
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

loc_789D:				; CODE XREF: RAM:7898^j
		CMP	#'Y'
		BNE	loc_787A
		LDA	$69
		JSR	sub_7B11
		BCC	loc_78B2
		ldxy	byte_8DFE
		JSR	sub_78FC
		JMP	loc_7968
; ---------------------------------------------------------------------------

loc_78B2:				; CODE XREF: RAM:78A6^j
		LDA	$68
		LSR	A
		BCC	loc_78EE
		LDX	#$F

loc_78B9:				; CODE XREF: RAM:78C2vj
		LDA	$63C2,X
		AND	#$7F ; ''
		STA	$63C2,X
		DEX
		BPL	loc_78B9
		LDA	#0
		LDX	#$11

loc_78C8:				; CODE XREF: RAM:78CCvj
		STA	$7571,X
		DEX
		BPL	loc_78C8
		LDX	$67
		LDA	$6E
		ORA	#$81 ; 'Å'
		STA	$63C2,X
		STA	$6E
		JSR	sub_7ACF
		ldxy	$82AF
		JSR	sub_790A
		JSR	sub_7916
		BNE	loc_78E8

loc_78E8:
		JSR	sub_81B0
		JMP	loc_7973
; ---------------------------------------------------------------------------

loc_78EE:				; CODE XREF: RAM:78B5^j
		LDX	$67
		LDA	$6E
		ORA	#1
		STA	$63C2,X
		STA	$6E
		JMP	loc_7973

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_78FC:				; CODE XREF: RAM:loc_77B6^p
					; RAM:loc_77BC^p ...
		STX	off_16+1
		STY	off_16
; End of function sub_78FC


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7900:				; CODE XREF: RAM:7703^p
		LDX	$66
		JSR	j_sub_3C5C
		LDA	#$F
		JMP	j_sub_2BFC
; End of function sub_7900


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_790A:				; CODE XREF: RAM:78E0^p
		STX	off_16+1
		STY	off_16
		LDX	$66
		JSR	j_sub_3C5C
		JMP	$183C
; End of function sub_790A


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7916:				; CODE XREF: RAM:78E3^p	RAM:loc_798Evp ...
		LDX	#$40 ; '@'

loc_7918:				; CODE XREF: sub_7916+4Evj
		LDA	$640B,X
		STA	off_62
		LDA	$644B,X
		STA	off_62+1
		LDY	#0
		LDA	(off_62),Y
		AND	#$7F ; ''
		CMP	#2
		BNE	loc_7963
		LDY	#5
		LDA	(off_62),Y
		CLC
		ADC	off_62
		STA	$64
		LDA	off_62+1
		ADC	#0
		STA	$65
		LDY	#0

loc_793D:				; CODE XREF: sub_7916+40vj sub_7916+44vj
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

loc_7950:				; CODE XREF: sub_7916+2D^j sub_7916+35^j
		LDA	$64
		ADC	#$10
		STA	$64
		BCC	loc_793D
		INC	$65
		BNE	loc_793D

loc_795C:				; CODE XREF: sub_7916+29^j
		INY
		LDA	($64),Y
		CMP	#1
		BEQ	locret_7966

loc_7963:				; CODE XREF: sub_7916+14^j
		DEX
		BPL	loc_7918

locret_7966:				; CODE XREF: sub_7916+4B^j
		RTS
; End of function sub_7916

; ---------------------------------------------------------------------------
		RTS
; ---------------------------------------------------------------------------

loc_7968:				; CODE XREF: RAM:789A^j	RAM:78AF^j
		LDX	$67
		LDA	$63C2,X
		LSR	A
		BCS	loc_7973
		JMP	loc_774A
; ---------------------------------------------------------------------------

loc_7973:				; CODE XREF: RAM:770F^j	RAM:78EB^j ...
		LDX	$67
		LDA	$63C2,X
		AND	#$40 ; '@'
		BEQ	loc_7983
		ldxy	$8936
		JMP	loc_7A12
; ---------------------------------------------------------------------------

loc_7983:				; CODE XREF: RAM:797A^j
		LDA	$6E
		BMI	loc_798E
		ldxy	$902A
		JMP	loc_79A4
; ---------------------------------------------------------------------------

loc_798E:				; CODE XREF: RAM:7985^j
		JSR	sub_7916
		BNE	loc_79A0
		LDY	#0
		LDA	(off_62),Y
		BPL	loc_79A0
		ldxy	$8FFB
		JMP	loc_79A4
; ---------------------------------------------------------------------------

loc_79A0:				; CODE XREF: RAM:7991^j	RAM:7997^j
		ldxy	$9012

loc_79A4:				; CODE XREF: RAM:798B^j	RAM:799D^j
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
		ldxy	$8E1B
		JSR	sub_78FC
		LDX	$67
		LDA	$7561,X
		CMP	$6385
		BEQ	loc_7A1F
		LDA	byte_9093,X
		BEQ	loc_79F3
		LDA	$6385
		STA	$7561,X
		SEC
		SBC	byte_9093,X
		BCC	loc_79EC
		CMP	#5
		BCS	loc_79F3
		ldxy	$84B5
		JSR	sub_78FC
		JMP	loc_7A1F
; ---------------------------------------------------------------------------

loc_79EC:				; CODE XREF: RAM:79DC^j
		ldxy	$8D83
		JMP	loc_7A12
; ---------------------------------------------------------------------------

loc_79F3:				; CODE XREF: RAM:79D0^j	RAM:79E0^j
		LDA	$90A1,X
		CMP	#$FF
		BEQ	loc_7A1F
		SEC
		SBC	$6385
		BCC	loc_7A0E
		CMP	#5
		BCS	loc_7A1F
		ldxy	$846B
		JSR	sub_78FC
		JMP	loc_7A1F
; ---------------------------------------------------------------------------

loc_7A0E:				; CODE XREF: RAM:79FE^j
		ldxy	$8DBD

loc_7A12:				; CODE XREF: RAM:7980^j	RAM:79F0^j
		JSR	sub_78FC
		LDX	$67
		LDA	#$40 ; '@'
		STA	$63C2,X
		JSR	sub_7AE2

loc_7A1F:				; CODE XREF: RAM:79CB^j	RAM:79E9^j ...
		LDX	$67
		LDA	$63C2,X
		CMP	$758E,X
		BEQ	loc_7A42
		STA	$758E,X
		AND	#$30 ; '0'
		BEQ	loc_7A42
		CMP	#$30 ; '0'
		BEQ	loc_7A3B
		ldxy	$8434
		JMP	loc_7A3F
; ---------------------------------------------------------------------------

loc_7A3B:				; CODE XREF: RAM:7A32^j
		ldxy	$8411

loc_7A3F:				; CODE XREF: RAM:7A38^j
		JSR	sub_78FC

loc_7A42:				; CODE XREF: RAM:7A27^j	RAM:7A2E^j ...
		dldi	off_16, $8F49
		LDX	$66
		JSR	j_sub_3C5C

loc_7A4F:				; CODE XREF: RAM:7A74vj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_7A57:				; CODE XREF: RAM:7A6Dvj
		dldi	off_1977, loc_7A64
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7A64:
		JSR	j_sub_262F
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

loc_7A84:				; DATA XREF: RAM:7A7B^w	RAM:7A81^w
		JSR	$FFFF
		JMP	loc_7A42
; ---------------------------------------------------------------------------

loc_7A8A:				; CODE XREF: RAM:7A69^j
		BNE	loc_7B02

loc_7A8C:				; DATA XREF: RAM:7B7Bvo
		LDA	#$83 ; 'É'
		STA	$51
		JSR	$1893
		ldxy	$8232
		JMP	sub_78FC
; ---------------------------------------------------------------------------

locret_7A9A:				; CODE XREF: RAM:7AC6vj
		RTS
; ---------------------------------------------------------------------------

loc_7A9B:				; DATA XREF: RAM:7B81vo
		dldi	off_16, $863E
		LDX	$66
		JSR	j_sub_3C5C

loc_7AA8:				; CODE XREF: RAM:7ACAvj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_7AB0:				; CODE XREF: RAM:7ABFvj
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


sub_7ACF:				; CODE XREF: RAM:78D9^p	sub_7AE2vp
		LDX	$67
		LDA	$63C2,X
		BPL	locret_7AE1
		JSR	sub_7916
		BNE	locret_7AE1
		LDY	#2
		LDA	#$10
		STA	(off_62),Y

locret_7AE1:				; CODE XREF: sub_7ACF+5^j sub_7ACF+A^j
		RTS
; End of function sub_7ACF


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7AE2:				; CODE XREF: RAM:7A1C^p	RAM:7ACC^j

; FUNCTION CHUNK AT 774A SIZE 0000001C BYTES

		JSR	sub_7ACF
		LDX	$67
		LDA	$63C2,X
		AND	#$7E ; '~'
		STA	$63C2,X
		LDA	#0
		LDX	#$11

loc_7AF3:				; CODE XREF: sub_7AE2+15vj
		STA	$7571,X
		DEX
		BPL	loc_7AF3
		ldxy	$8871
		JSR	sub_78FC
		PLA
		PLA

loc_7B02:				; CODE XREF: RAM:loc_7A8A^j
		JMP	loc_774A
; End of function sub_7AE2

; ---------------------------------------------------------------------------

loc_7B05:				; DATA XREF: RAM:off_7B77vo
		PLA
		PLA
		ldxy	$88C6
		JSR	sub_78FC
		JMP	loc_774A

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B11:				; CODE XREF: RAM:78A3^p	RAM:7D69vp ...
		STA	2
		LDA	#0
		STA	3

loc_7B17:				; CODE XREF: RAM:7E4Evp
		LDY	#3

loc_7B19:				; CODE XREF: sub_7B11+Fvj
		LDA	$63B1,Y
		STA	$7B73,Y
		DEY
		BPL	loc_7B19

loc_7B22:				; CODE XREF: sub_7B11:loc_7B53vj
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

loc_7B38:				; CODE XREF: sub_7B11+24^j
		LDA	byte_7B74
		SBC	#1
		STA	byte_7B74
		BCS	loc_7B45
		DEC	byte_7B73

loc_7B45:				; CODE XREF: sub_7B11+2F^j
		LDA	#$A
		CLC
		ADC	byte_7B76
		STA	byte_7B76
		BCC	loc_7B53
		INC	byte_7B75

loc_7B53:				; CODE XREF: sub_7B11+3D^j
		JMP	loc_7B22
; ---------------------------------------------------------------------------

loc_7B56:				; CODE XREF: sub_7B11+1B^j
		LDA	byte_7B76
		SBC	2
		STA	byte_7B76
		LDA	byte_7B75
		SBC	3
		STA	byte_7B75
		LDY	#3

loc_7B68:				; CODE XREF: sub_7B11+5Evj RAM:7B8Avj
		LDA	$7B73,Y
		STA	$63B1,Y
		DEY
		BPL	loc_7B68
		CLC
		RTS
; End of function sub_7B11

; ---------------------------------------------------------------------------
byte_7B73:	.BYTE 0			; DATA XREF: sub_7B11+21^r sub_7B11+31^w
byte_7B74:	.BYTE $63		; DATA XREF: sub_7B11+1E^r
					; sub_7B11:loc_7B38^r ...
byte_7B75:	.BYTE $A5		; DATA XREF: sub_7B11+16^r sub_7B11+3F^w ...
byte_7B76:	.BYTE $4B		; DATA XREF: sub_7B11:loc_7B22^r
					; sub_7B11+37^r	...
off_7B77:	.WORD loc_7B05		; DATA XREF: RAM:7A78^r	RAM:7A7E^r
		.WORD loc_7DB1
		.WORD loc_7A8C
		.WORD loc_7E8E
		.WORD loc_7F5D
		.WORD loc_7A9B
		.WORD loc_7B85
; ---------------------------------------------------------------------------

loc_7B85:				; CODE XREF: RAM:7C58vj	RAM:7CF4vj ...
		LDX	$67
		LDA	$63C2,X
		BPL	loc_7B68
		dldi	off_16, $8962
		LDX	$66
		JSR	j_sub_3C5C

loc_7B99:				; CODE XREF: RAM:7BBCvj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_7BA1:				; CODE XREF: RAM:7BB0vj
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

loc_7BBF:				; CODE XREF: RAM:7BB4^j
		ldxy	$8B93
		dldi	$81, $63B1
		dldi	$83, $7571
		JMP	loc_7BEA
; ---------------------------------------------------------------------------

loc_7BD6:				; CODE XREF: RAM:7BB8^j
		ldxy	$8B9B
		dldi	$81, $7571
		dldi	$83, $63B1

loc_7BEA:				; CODE XREF: RAM:7BD3^j
		STX	$70
		STY	$6F
		LDA	#0
		STA	$85

loc_7BF2:				; CODE XREF: RAM:loc_7C4Avj RAM:7C6Avj
		LDX	$85
		LDY	#0

loc_7BF6:				; CODE XREF: RAM:7C26vj
		LDA	byte_8200,X
		STA	$71,Y
		INY
		LDA	byte_820C,X
		STA	$71,Y
		INY
		STY	loc_7C1A+1
		LDY	byte_8224,X
		LDA	byte_8218,X
		LSR	A
		BCC	loc_7C14
		LDA	#0
		BEQ	loc_7C16

loc_7C14:				; CODE XREF: RAM:7C0E^j
		LDA	($81),Y

loc_7C16:				; CODE XREF: RAM:7C12^j
		PHA
		INY
		LDA	($81),Y

loc_7C1A:				; DATA XREF: RAM:7C04^w
		LDY	#$FF
		STA	$78,Y
		PLA
		STA	$77,Y
		INX
		CPY	#8
		BNE	loc_7BF6
		dldi	off_16, $89E6
		LDX	$66
		JSR	j_sub_3C5C

loc_7C35:				; CODE XREF: RAM:7C66vj	RAM:7C75vj ...
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_7C3D:				; CODE XREF: RAM:7C4Fvj
		dldi	off_1977, loc_7C4D
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7C4A:				; CODE XREF: RAM:7C79vj
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

loc_7C5B:				; CODE XREF: RAM:7C56^j
		CMP	#'F'
		BNE	loc_7C6C
		CLC
		LDA	$85
		ADC	#4
		CMP	#$C
		BEQ	loc_7C35
		STA	$85
		BNE	loc_7BF2

loc_7C6C:				; CODE XREF: RAM:7C5D^j
		CMP	#'B'
		BNE	loc_7C7B
		LDA	$85
		SEC
		SBC	#4
		BCC	loc_7C35
		STA	$85
		BCS	loc_7C4A

loc_7C7B:				; CODE XREF: RAM:7C6E^j
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
		LDA	byte_8200,X
		STA	$71
		LDA	byte_820C,X
		STA	$72
		LDY	#$FF
		STY	$87
		LDA	byte_8218,X
		LSR	A
		PHP
		LDA	$87
		ADC	#0
		STA	$86
		LDY	byte_8224,X
		LDA	#0
		STA	$7B
		PLP
		BCS	loc_7CBA
		LDA	($83),Y
		STA	$7B

loc_7CBA:				; CODE XREF: RAM:7CB4^j
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

loc_7CDE:				; CODE XREF: RAM:7CD4^j
		dldi	off_16, $8A82
		LDX	$66
		JSR	j_sub_3C5C
		JSR	j_sub_2AA0
		LDA	2
		ORA	3
		BNE	loc_7CF7
		JMP	loc_7B85
; ---------------------------------------------------------------------------

loc_7CF7:				; CODE XREF: RAM:7CF2^j
		LDA	$87
		CMP	2
		LDA	$86
		SBC	3
		BCS	loc_7D09
		LDA	$87
		STA	2
		LDA	$86
		STA	3

loc_7D09:				; CODE XREF: RAM:7CFF^j
		SEC
		LDX	$85
		LDY	byte_8224,X
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
		ldxy	$8A72
		JSR	sub_78FC
		JMP	loc_7B85
; ---------------------------------------------------------------------------

loc_7D36:				; CODE XREF: RAM:loc_7DAEvj
		dldi	off_16, $85B5
		LDX	$66
		JSR	j_sub_3C5C

loc_7D43:				; CODE XREF: RAM:7D65vj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_7D4B:				; CODE XREF: RAM:7D5Avj
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

loc_7D6E:				; CODE XREF: RAM:7E53vj	RAM:7F17vj ...
		ldxy	byte_8DFE
		JMP	sub_78FC
; ---------------------------------------------------------------------------

loc_7D75:				; CODE XREF: RAM:7D6C^j
		JSR	sub_7916
		BNE	loc_7D80
		LDY	#2
		LDA	#$10
		STA	(off_62),Y

loc_7D80:				; CODE XREF: RAM:7D78^j
		ldxy	$8FFB
		STX	$6D
		STY	$6C
		JMP	sub_81B0
; ---------------------------------------------------------------------------

locret_7D8B:				; CODE XREF: RAM:7D61^j	RAM:7DEDvj
		RTS
; ---------------------------------------------------------------------------

loc_7D8C:				; CODE XREF: RAM:7DB6vj
		dldi	off_16, $867D
		LDX	$66
		JSR	j_sub_3C5C
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D
		PLA
		PLA
		LDA	#$78 ; 'x'
		STA	$69
		LDA	#$31 ; '1'
		STA	$68
		JMP	loc_787A
; ---------------------------------------------------------------------------

loc_7DAE:				; CODE XREF: RAM:7DBBvj	RAM:7DC1vj
		JMP	loc_7D36
; ---------------------------------------------------------------------------

loc_7DB1:				; DATA XREF: RAM:7B79^o
		LDX	$67
		LDA	$63C2,X
		BPL	loc_7D8C
		JSR	sub_7916
		BNE	loc_7DAE
		LDY	#0
		LDA	(off_62),Y
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

loc_7DD3:				; CODE XREF: RAM:7DCA^j
		STA	$87
		dldi	off_16, $86D8
		LDA	#0
		STA	$86
		LDX	$66
		JSR	j_sub_3C5C
		JSR	j_sub_2AA0
		LDA	2
		ORA	3
		BEQ	locret_7D8B
		LDA	3
		BEQ	loc_7DF7
		LDA	#$FF
		STA	2

loc_7DF7:				; CODE XREF: RAM:7DF1^j
		LDA	$87
		CMP	2
		BCS	loc_7DFF
		STA	2

loc_7DFF:				; CODE XREF: RAM:7DFB^j
		LDA	#0
		STA	$79
		LDA	2
		STA	$71
		STA	$7A
		LDX	#0
		CMP	#1
		BEQ	loc_7E11
		LDX	#$73 ; 's'

loc_7E11:				; CODE XREF: RAM:7E0D^j
		STX	byte_90DA
		dldi	off_16, $85FF
		LDX	$66
		JSR	j_sub_3C5C

loc_7E21:				; CODE XREF: RAM:7E44vj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_7E29:				; CODE XREF: RAM:7E39vj
		dldi	off_1977, loc_7E37
		JMP	$1806
; ---------------------------------------------------------------------------

locret_7E36:				; CODE XREF: RAM:7E40vj
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

loc_7E56:				; CODE XREF: RAM:7E51^j
		JSR	sub_7916
		LDY	#2
		LDA	$71
		CLC
		ADC	($64),Y
		STA	($64),Y
		LDX	#0
		SEC

loc_7E65:				; CODE XREF: RAM:7E6Avj
		SBC	#$A
		BCC	loc_7E6C
		INX
		BNE	loc_7E65

loc_7E6C:				; CODE XREF: RAM:7E67^j
		ADC	#$A
		STX	$79
		ORA	#$30 ; '0'
		STA	$72
		LDY	#5
		LDA	(off_62),Y
		SEC
		SBC	#3
		TAY
		LDA	$72
		STA	(off_62),Y
		DEY
		LDA	$79
		ORA	#$30 ; '0'
		STA	(off_62),Y
		ldxy	$888A
		JMP	sub_78FC
; ---------------------------------------------------------------------------

loc_7E8E:				; DATA XREF: RAM:7B7D^o
		LDX	$67
		LDA	byte_94C8,X
		STA	off_62
		LDA	byte_94D6,X
		STA	off_62+1
		LDY	#0

loc_7E9C:				; CODE XREF: RAM:loc_7EEDvj
		STY	$85
		LDA	(off_62),Y
		BMI	loc_7EF0
		TAX
		LDA	I_EXPLVL
		CMP	byte_9496,X
		BCC	loc_7EF3
		TXA
		JSR	sub_80D1
		BEQ	loc_7EF3
		LDY	$69
		LDA	byte_9400,Y
		STA	$75
		CLC
		ADC	#6
		STA	$71
		LDA	byte_9432,Y
		STA	$76
		ADC	#0
		STA	$72
		LDA	byte_9464,Y
		STA	$79
		dldi	off_16, $8EBF
		LDX	$66
		JSR	j_sub_3C5C

loc_7ED8:				; CODE XREF: RAM:7F0Bvj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_7EE0:				; CODE XREF: RAM:7EF8vj
		dldi	off_1977, loc_7EF6
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7EED:				; CODE XREF: RAM:7F5Avj
		JMP	loc_7E9C
; ---------------------------------------------------------------------------

loc_7EF0:				; CODE XREF: RAM:7EA0^j
		JMP	locret_7F5C
; ---------------------------------------------------------------------------

loc_7EF3:				; CODE XREF: RAM:7EA9^j	RAM:7EAF^j
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

loc_7F1A:				; CODE XREF: RAM:7F15^j
		LDX	#$84 ; 'Ñ'
		LDY	#0
		JSR	sub_78FC
		LDX	$76
		LDY	$75
		JSR	j_sub_4B4D
		STA	$4B
		JSR	$1896
		LDA	#$19
		JSR	j_RND_A
		STA	$69
		LDA	#$19
		JSR	j_RND_A
		ADC	$69
		STA	$69
		LDA	$6369
		LSR	A
		ADC	$69
		BCC	loc_7F47
		LDA	#$42 ; 'B'

loc_7F47:				; CODE XREF: RAM:7F43^j
		CMP	#$43 ; 'C'
		BCC	loc_7F4D
		LDA	#$42 ; 'B'

loc_7F4D:				; CODE XREF: RAM:7F49^j
		CMP	#$21 ; '!'
		BCS	loc_7F53
		LDA	#$21 ; '!'

loc_7F53:				; CODE XREF: RAM:7F4F^j
		LDY	#1
		STA	($43),Y

loc_7F57:				; CODE XREF: RAM:loc_7EF3^j RAM:7F03^j
		LDY	$85
		INY
		BNE	loc_7EED

locret_7F5C:				; CODE XREF: RAM:loc_7EF0^j RAM:7EFC^j ...
		RTS
; ---------------------------------------------------------------------------

loc_7F5D:				; DATA XREF: RAM:7B7F^o
		dldi	off_16, $8815
		LDX	$66
		JSR	j_sub_3C5C

loc_7F6A:				; CODE XREF: RAM:7F90vj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_7F72:				; CODE XREF: RAM:7F81vj
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
		LDA	byte_94C8,X
		STA	off_62
		LDA	byte_94D6,X
		STA	off_62+1
		LDY	#0

loc_7FA0:				; CODE XREF: RAM:80CEvj
		STY	$85
		LDA	(off_62),Y
		BMI	loc_7FE8
		JSR	sub_80D1
		BNE	loc_7FEB
		LDY	#1
		LDA	($43),Y
		STA	$88
		LDY	$69
		LDA	byte_9400,Y
		STA	$75
		CLC
		ADC	#6
		STA	$71
		LDA	byte_9432,Y
		STA	$76
		ADC	#0
		STA	$72
		dldi	off_16, $87D1
		LDX	$66
		JSR	j_sub_3C5C

loc_7FD3:				; CODE XREF: RAM:7FFFvj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_7FDB:				; CODE XREF: RAM:7FF0vj
		dldi	off_1977, loc_7FEE
		JMP	$1806
; ---------------------------------------------------------------------------

loc_7FE8:				; CODE XREF: RAM:7FA4^j	RAM:7FFBvj
		JMP	locret_80C8
; ---------------------------------------------------------------------------

loc_7FEB:				; CODE XREF: RAM:7FA9^j	RAM:7FF7vj
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

loc_800B:				; CODE XREF: RAM:8006^j
		JSR	j_sub_2E31
		LDA	$630A
		CLC
		ADC	#4
		CMP	#$18
		BCC	loc_801A
		SBC	#$18

loc_801A:				; CODE XREF: RAM:8016^j
		STA	$88
		LDX	$66
		dldi	off_16, $8705
		JSR	j_sub_3C5C
		DEC	$1955

loc_802C:				; CODE XREF: RAM:805Evj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_8034:				; CODE XREF: RAM:805Avj
		dldi	off_1977, loc_8041
		JMP	$1806
; ---------------------------------------------------------------------------

loc_8041:
		JSR	j_sub_2E31
		SEC
		LDA	$88
		SBC	$630A
		BEQ	loc_8075
		BMI	loc_8054
		CMP	#$C
		BCC	loc_8054
		SBC	#$18

loc_8054:				; CODE XREF: RAM:804C^j	RAM:8050^j
		CMP	#$FE ; '˛'
		BCS	loc_8075
		LDA	$31
		BMI	loc_8034
		CMP	#$20 ; ' '
		BNE	loc_802C
		dldi	off_16, $8752
		LDX	$66
		JSR	j_sub_3C5C
		LDA	#$A
		JSR	j_sub_2BFC
		JMP	loc_80C5
; ---------------------------------------------------------------------------

loc_8075:				; CODE XREF: RAM:804A^j	RAM:8056^j
		LDA	$69
		JSR	sub_80D1
		LDY	#0

loc_807C:				; CODE XREF: RAM:8082vj
		LDA	(off_41),Y
		STA	$912B,Y
		INY
		BPL	loc_807C
		LDA	$6369
		LSR	A
		LSR	A
		LSR	A
		JSR	j_RND_A
		STA	$69
		LDA	#4
		JSR	j_RND_A
		ADC	$69
		CMP	#9
		BCC	loc_809C
		LDA	#8

loc_809C:				; CODE XREF: RAM:8098^j
		CMP	#4
		BCS	loc_80A2
		LDA	#4

loc_80A2:				; CODE XREF: RAM:809E^j
		LDY	#1
		ADC	($43),Y
		CMP	#$60 ; '`'
		BCC	loc_80C3
		LDA	#$5F ; '_'
		STA	($43),Y
		dldi	off_16, $878A
		LDX	$66
		JSR	j_sub_3C5C
		LDA	#$A
		JSR	j_sub_2BFC
		JMP	loc_80C5
; ---------------------------------------------------------------------------

loc_80C3:				; CODE XREF: RAM:80A8^j
		STA	($43),Y

loc_80C5:				; CODE XREF: RAM:8072^j	RAM:80C0^j
		INC	$1955

locret_80C8:				; CODE XREF: RAM:loc_7FE8^j RAM:80CCvj
		RTS
; ---------------------------------------------------------------------------

loc_80C9:				; CODE XREF: RAM:loc_7FEB^j
		LDY	$85
		INY
		BEQ	locret_80C8
		JMP	loc_7FA0

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_80D1:				; CODE XREF: RAM:7EAC^p	RAM:7FA6^p ...
		STA	$69
		LDA	#$40 ; '@'
		STA	$4B

loc_80D7:				; CODE XREF: sub_80D1+24vj
		LDA	$4B
		JSR	$1887
		BEQ	loc_80F3
		LDY	#0
		LDA	(off_41),Y
		AND	#$87
		CMP	#$81
		BNE	loc_80F3
		JSR	$1896
		LDY	#3
		LDA	($43),Y
		CMP	$69
		BEQ	locret_80F7

loc_80F3:				; CODE XREF: sub_80D1+B^j sub_80D1+15^j
		DEC	$4B
		BPL	loc_80D7

locret_80F7:				; CODE XREF: sub_80D1+20^j
		RTS
; End of function sub_80D1

; ---------------------------------------------------------------------------

loc_80F8:				; CODE XREF: RAM:7F0D^p
		LDX	#$40 ; '@'
		LDA	#0
		STA	$69

loc_80FE:				; CODE XREF: RAM:8115vj
		STX	$4B
		TXA
		JSR	$1887
		BEQ	loc_8112
		LDY	#0
		LDA	(off_41),Y
		AND	#$87 ; 'á'
		CMP	#$81 ; 'Å'
		BNE	loc_8112
		INC	$69

loc_8112:				; CODE XREF: RAM:8104^j	RAM:810E^j
		LDX	$4B
		DEX
		BPL	loc_80FE
		LDA	I_EXPLVL
		LSR	A
		CLC
		ADC	#4
		STA	$89
		CMP	$69
		BEQ	loc_8127
		BCC	loc_8127
		RTS
; ---------------------------------------------------------------------------

loc_8127:				; CODE XREF: RAM:8122^j	RAM:8124^j
		dldi	off_16, $850E
		LDX	$66
		JSR	j_sub_3C5C
		JSR	sub_81FB
		LDX	#$40 ; '@'

loc_8139:				; CODE XREF: RAM:81A7vj
		STX	loc_81A4+1
		TXA
		JSR	$1887
		BEQ	loc_81A4
		LDY	#0
		LDA	(off_41),Y
		AND	#$87 ; 'á'
		CMP	#$81 ; 'Å'
		BNE	loc_81A4

loc_814C:				; CODE XREF: RAM:8152vj
		LDA	(off_41),Y
		STA	$912B,Y
		INY
		BPL	loc_814C
		LDA	loc_81A4+1
		STA	$4B
		JSR	$1896
		LDY	#1
		LDA	($43),Y
		STA	$88
		dldi	off_16, $83B0
		LDX	$66
		JSR	j_sub_3C5C

loc_816F:				; CODE XREF: RAM:8191vj
		LDX	$66
		STX	$1933
		JSR	j_sub_3C2D

loc_8177:				; CODE XREF: RAM:8186vj
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
		STA	(off_41),Y
		JMP	locret_81AB
; ---------------------------------------------------------------------------

loc_81A4:				; CODE XREF: RAM:8140^j	RAM:814A^j ...
		LDX	#0
		DEX
		BPL	loc_8139
		PLA
		PLA

locret_81AB:				; CODE XREF: RAM:81A1^j
		RTS
; ---------------------------------------------------------------------------
		.BYTE $84 ; Ñ
		.BYTE $8B ; ã
		.BYTE $8C ; å
		.BYTE $8B ; ã

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_81B0:				; CODE XREF: RAM:loc_78E8^p RAM:7D88^j
		LDY	#5

loc_81B2:				; CODE XREF: sub_81B0+9vj
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

loc_81E0:				; CODE XREF: sub_81B0+36vj
		LDA	($62),Y
		STA	unk_9130,Y
		DEY
		BNE	loc_81E0

loc_81E8:				; CODE XREF: sub_81B0+42vj
		LDA	aRing99,Y	; " Ring [99]"
		STA	unk_9130,X
		INX
		INY
		CPY	#$E
		BNE	loc_81E8
		ldxy	$912B
		JMP	j_sub_4B4D
; End of function sub_81B0


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_81FB:				; CODE XREF: RAM:8134^p
		LDA	#$F
		JMP	j_sub_2BFC
; End of function sub_81FB

; ---------------------------------------------------------------------------

byte_8200:
		.BYTE	<aFoodPackets
		.BYTE	<aWaterFlasks
		.BYTE	<aUnlitTorches
		.BYTE	<aTimepieces
		.BYTE	<aCompasses
		.BYTE	<aKeys
		.BYTE	<aCrystals
		.BYTE	<aGems
		.BYTE	<aJewels
		.BYTE	<aGold
		.BYTE	<aSilver
		.BYTE	<aCopper

byte_820C:
		.BYTE	>aFoodPackets
		.BYTE	>aWaterFlasks
		.BYTE	>aUnlitTorches
		.BYTE	>aTimepieces
		.BYTE	>aCompasses
		.BYTE	>aKeys
		.BYTE	>aCrystals
		.BYTE	>aGems
		.BYTE	>aJewels
		.BYTE	>aGold
		.BYTE	>aSilver
		.BYTE	>aCopper

byte_8218:
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

byte_8224:
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

		.BYTE	$A8,$FF

		MOVEXY	0,1
		.BYTE	$A5,"The Guild Master performs a few",$0D
		.BYTE	$A5,"chants and gestures and then",$0D
		.BYTE	$A5,"proclaims:",$0D,$0D
		.BYTE	$A5,$22,"All curses have been removed,",$0D
		.BYTE	$A5
		PRINTSTRP $6A, 7
		.BYTE ' '
		.BYTE $B3
		.WORD $6321
		.BYTE $19
		.BYTE ".",$22,$0D,$FF

		MOVEXY	0,0
		.BYTE	$A5,"You are now part of our ancient order!",$0D
		.BYTE	$A5,"We give you your own Guild Ring to",$0D
		.BYTE	$A5,"store spell energy and identify yourself",$0D
		.BYTE	$A5,"to other members.  Wear it with pride!",$0D
		.BYTE	$A5,"You may also keep your valuables safe",$0D
		.BYTE	$A5,"in your guild locker. Beware of anyone",$0D
		.BYTE	$A5,"from The "
		PRINTSTRP $8A, 24
		.BYTE	'!',$0D,$FF

		MOVEXY	0,1
		.BYTE	$A5,"Do you want to relinquish your",$0D,$0D
		.BYTE	$A5,"spell of "
		.BYTE $B3
		.WORD unk_9131
		.BYTE $1E
		.BYTE	" ("
		.BYTE $B2
		.WORD $88
		.BYTE	2
aq:		.BYTE "%)?",$0D,$0D
		.BYTE	$A5
		STRSUB	asc_83F3
		.BYTE	$0D,$FF
asc_83F3:	.BYTE	'('               ; DATA XREF: RAM:85FBvo RAM:8637vo ...
aY:		BLINK	'Y'
aOr:		.BYTE	" or "
aN:		BLINK	'N'
		.BYTE	')'
		.BYTE	$AE
		MOVEXY	0,2
aItIsDone:	.BYTE	$A5,"It is done!",$0D,$FF
		MOVEXY	0,1
aThisIsYourLast:.BYTE	$A5,"This is your last warning!",$0D,$0D
		STRSUB	byte_8437
		MOVEXY	0,2
byte_8437:	.BYTE	$A5,"Thou shalt not kill fellow members",$0D,$0D
		.BYTE	$A5,"of the "
		PRINTSTRP off_8AD8, 22
		.BYTE	"!",$0D,$FF

		MOVEXY	0,2
		.BYTE	$A5,"Watch it!",$0D,$0D
		.BYTE	$A5,"We're getting tired of your holier than",$0D,$0D
		.BYTE	$A5,"thou attitude!",$0D,$FF

		MOVEXY	0,2
		.BYTE	$A5,"Be careful!",$0D,$0D
		.BYTE	$A5,"Thou art headed down the wrong path.",$0D,$FF

		MOVEXY	0,2
		.BYTE	$A5,"Your ring is fully charged!",$0D,$FF

		MOVEXY	0,0
		STRJSR	loc_90BD
		.BYTE	$A5,"At your present level you can only",$0D,$0D
		.BYTE	"maintain "
		.BYTE	$B2
		.WORD	$89
		.BYTE	2
		.BYTE	" spells at a time.  In order",$0D,$0D
		.BYTE	$A5,"to learn this new spell you must",$0D,$0D
		.BYTE	$A5,"relinquish one of your old spells first.",$0D
		STRJSR	loc_90C0
		.BYTE	$FF

		MOVEXY	0,1
		.BYTE	$A5,"It will cost 120 silvers to",$0D,$0D
		.BYTE	$A5,"replace your ring.",$0D,$0D
		.BYTE	$A5,"Are you sure? "
		STRSUB	asc_83F3
		.BYTE	$0D,$FF

		MOVEXY	0,1
		STRJSR	loc_90BD
		.BYTE	$A5,"That will cost "
		.BYTE $B1
		.WORD $79
		.BYTE 4
		.BYTE	" silver"
		.BYTE $B3
		.WORD byte_90DA
		.BYTE 2
a__0:		.BYTE	".",$0D,$0D
		.BYTE	$A5,"Are you sure? "
		STRSUB	asc_83F3
		.BYTE	$0D
		STRJSR	loc_90C0
		.BYTE	$FF
		MOVEXY	0,2
		.BYTE	$A5,"Are you sure you want to",$0D,$0D
		.BYTE	$A5,"terminate your membership? "
		STRSUB	asc_83F3
		.BYTE	$0D,$FF
		MOVEXY	0,1
		.BYTE	$A5,"It will cost 120 silvers to",$0D,$0D
		.BYTE	$A5,"give you full membership status.",$0D,$0D
		.BYTE	$A5,"Is this alright? "
		STRSUB	asc_83F3
		.BYTE	$0D,$FF
		MOVEXY	0,0
		.BYTE	$A5,"It costs a silver per unit. How many?",$0D
		STRSUB	byte_8A9A
		MOVEXY	0,2
		.BYTE	$A5,"Practicing the spell of",$0D,$0D
		.BYTE	$A5
		PRINTSTRP $71, 30
a__1:		.BYTE	".",$0D
		MOVEXY	0,7
		.BYTE	$A5,"(Press "
		BLINK	"SPACE BAR"
		.BYTE	" to leave early.)"
		.BYTE $0D,$FF
		MOVEXY	0,2
		.BYTE	$A5,"You quit practice early and gain no",$0D,$0D
		.BYTE	$A5,"proficiency.",$0D,$FF
		MOVEXY	0,2
		.BYTE	$A5,"You are already at the highest level of",$0D,$0D
		.BYTE	$A5,"ability for that spell!",$0D,$FF
		MOVEXY	0,1
		.BYTE	$A5,"Would you like to practice",$0D,$0D
		.BYTE	$A5,"your spell of "
		PRINTSTRP $71, 30
		.BYTE " ("
		.BYTE $B2
		.WORD $88
		.BYTE 2
		.BYTE "%)?",$0D,$0D
		.BYTE $A5
		.BYTE $AC
		.WORD asc_83F3		; "("
		.BYTE $D
		.BYTE $FF
		MOVEXY	0,2
		.BYTE	$A5,"Spell casting practice takes four",$0D
		.BYTE	$A5,"hours and costs 100 silvers.",$0D,$0D
		.BYTE	$A5,"Is this alright? "
		.BYTE $AC
		.WORD asc_83F3		; "("
		.BYTE $0D,$FF
		MOVEXY	0,2
		.BYTE	$A5,"Farewell "
		PRINTSTRP $6A, 7
		.BYTE	" "
		.BYTE	$B3
		.WORD	$6321
		.BYTE	$16
		.BYTE ".",$0D,$FF
		MOVEXY	0,2
		STRJSR	loc_90BD
		.BYTE	$A5,"Your ring has been charged",$0D,$0D
		.BYTE	$A5,"with "
		.BYTE $B2
		.WORD $71
		.BYTE 2
		.BYTE " unit"
		.BYTE $B3
		.WORD byte_90DA
		.BYTE 2
a__3:		.BYTE ".",$0D
		.BYTE $A3
		.WORD loc_90C0
		.BYTE $FF
		MOVEXY	0,2
aComeAgainSoon:	.BYTE $A5,"Come again soon,",$0D,$0D
		.BYTE $A5
		PRINTSTRP $6A, 7
		.BYTE " "
		.BYTE $B3
		.WORD $6321
		.BYTE $19
		.BYTE ".",$0D,$FF
		MOVEXY	0,1
		.BYTE	$A5,"Welcome to the "
		PRINTSTRP off_8AD8, 40
		.BYTE ".",$0D
		MOVEXY	5,3
		MenuItem "1","Apply for Guild membership."
		MOVEXY	5,5
		MenuItem "0","Leave."
		.BYTE	$FF
		MOVEXY	0,2
		.BYTE	$A5,"Leave!  Thou art not wanted here scum!",$0D,$FF
		MOVEXY	0,0
		.BYTE	$A5,"You are at your locker.",$0D
		.BYTE	$A5,"What do you want to do?",$0D
		MOVEXY	7,3
		MenuItem "1","Make a deposit"
		MOVEXY	7,4
		MenuItem "2","Make a withdrawal"
		MOVEXY	7,6
		MenuItem "0","Go back to main room"
		.BYTE $FF
		MOVEXY	0,0
		.BYTE $A5
		PRINTSTRP $6F, 20
		.BYTE $D
		STRJSR	loc_90BD
		MOVEXY	5,2
		MenuItem "1",""
		PRINTSTRP $71, 20
		.BYTE ": "
		.BYTE $B1
		.WORD $79
		.BYTE 6
		.BYTE $A6,  5,	3
		MenuItem "2",""
		PRINTSTRP $73, 20
		.BYTE ": "
		.BYTE $B1
		.WORD $7B
		.BYTE 6
		.BYTE $A6,  5,	4
		MenuItem "3",""
		PRINTSTRP $75, 20
		.BYTE ": "
		.BYTE $B1
		.WORD $7D
		.BYTE 6
		.BYTE $A6,  5,	5
		MenuItem "4",""
		PRINTSTRP $77, 20
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
		PRINTSTRP $6F, 20
aMade_:		.BYTE " made.",$D
		.BYTE $FF
		.BYTE $A6,  0,	0
		.BYTE $A5
		PRINTSTRP $6F, 20
aHowMany:	.BYTE " how many "
		PRINTSTRP $71, 28
aq_1:		.BYTE "?"
		.BYTE $D
byte_8A9A:	.BYTE $A6,  0,	1	; DATA XREF: RAM:8703^o
		.BYTE $A3
		.WORD loc_90BD
		.BYTE $A5
aUpTo:		.BYTE "(up to "
		.BYTE $B1
		.WORD $86
		.BYTE 6
		.BYTE ')',$0D
		MOVEXY	0,7
		.BYTE	$A5,"Enter amount or press "
		BLINK "ESC"
		.BYTE '.',$0D
		MOVEXY	10,3
		.BYTE "> "
		STRJSR	loc_90C0
		.BYTE $FF
off_8AD8:	.WORD $FFFF		; DATA XREF: RAM:76E9^w	RAM:88FD^o
unk_8ADA:	.BYTE	<aLightWizardsGu	; DATA XREF: RAM:76D3^r	RAM:76E6^r
		.BYTE	<aDarkWizardsGui
		.BYTE	<aGuildOfOrder
		.BYTE	<aGuildOfChaos
		.BYTE	<aWizardsOfLawGu
		.BYTE	<aThievesGuild
		.BYTE	<byte_8D83
		.BYTE	<byte_8D83
		.BYTE	<byte_8D83
		.BYTE	<byte_8D83
		.BYTE	<byte_8D83
		.BYTE	<byte_8D83
		.BYTE	<aPaladinsGuild
		.BYTE	<aMercenariesGui
unk_8AE8:	.BYTE	>aLightWizardsGu	; DATA XREF: RAM:76D8^r	RAM:76EC^r
		.BYTE	>aDarkWizardsGui
		.BYTE	>aGuildOfOrder
		.BYTE	>aGuildOfChaos
		.BYTE	>aWizardsOfLawGu
		.BYTE	>aThievesGuild
		.BYTE	>byte_8D83
		.BYTE	>byte_8D83
		.BYTE	>byte_8D83
		.BYTE	>byte_8D83
		.BYTE	>byte_8D83
		.BYTE	>byte_8D83
		.BYTE	>aPaladinsGuild
		.BYTE	>aMercenariesGui
aLightWizardsGu:.BYTE "Light Wizards' Guild",0
aDarkWizardsGui:.BYTE "Dark Wizards' Guild",0
aGuildOfOrder:	.BYTE "Guild of Order",0
aGuildOfChaos:	.BYTE "Guild of Chaos",0
aWizardsOfLawGu:.BYTE "Wizards of Law Guild",0
aThievesGuild:	.BYTE "Thieves' Guild",0
aPaladinsGuild:	.BYTE "Paladins' Guild",0
aMercenariesGui:.BYTE "Mercenaries' Guild"
byte_8D83:	.BYTE	0
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
aSilver:	.BYTE "Silver",0
aCopper:	.BYTE "Copper",0

byte_8C10:
		MOVEXY	0,2
		.BYTE	$A5,"I am deeply sorry but you have not",$0D,$0D
		.BYTE	$A5,"the experience to join our guild yet.",$0D,$FF

byte_8C60:
		MOVEXY	0,1
		.BYTE	$A5,"I am sorry but your soul is too dark",$0D,$0D
		.BYTE	$A5,"to become a member of our guild.",$0D,$FF

byte_8CAD:
		MOVEXY	0,1
		.BYTE	$A5,"I am sorry but you're not quite evil",$0D,$0D
		.BYTE	$A5,"enough for our guild.",$0D,$FF

byte_8CEF:
		MOVEXY	0,1
		.BYTE	$A5,"I am sorry, but you are too righteous",$0D,$0D
		.BYTE	$A5,"to become a member of our guild.",$0D,$FF

byte_8D3D:
		MOVEXY	0,1
		.BYTE	$A5,"I am sorry but you aren't quite good",$0D,$0D
		.BYTE	$A5,"enough to join our guild.",$0D,$FF

		MOVEXY	0,1
		.BYTE	$A5,"Get out of our guild!",$0D,$0D
		.BYTE	$A5,"You are too evil for us now!",$0D,$FF

		MOVEXY	0,2
		.BYTE	$A5,"Get out of our guild!",$0D,$0D
		.BYTE	$A5,"You are too goody-goody for us now!",$0D,$FF

byte_8DFE:
		MOVEXY	0,2
		.BYTE	$A5,"You have not the funds!",$0D,$FF

		MOVEXY	0,2
		.BYTE	$A5,"Welcome "
		PRINTSTRP $6A, 7
		.BYTE " "
		.BYTE $B3
		.WORD $6321
		.BYTE $16
		.BYTE "!",$0D,$FF

		MOVEXY	0,0
		.BYTE	$A5,"You can only have full membership",$0D
		.BYTE	$A5,"privileges in but one guild.",$0D,$0D
		.BYTE	$A5,"Do you want:",$0D
		MOVEXY	5,5
		MenuItem "1","Full membership or"
		MOVEXY	5,6
		MenuItem "2","Associate membership"
		.BYTE	$FF

		MOVEXY	0,2
		STRJSR	loc_90BD
		.BYTE	$A5,"Would you like to learn",$0D,$0D
		.BYTE	$A5,"a spell of "
		PRINTSTRP $71, 30
		.BYTE $0D,$0D
aFor:		.BYTE $A5,"For "
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
		PRINTSTRP $6C, 25
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

loc_904B:				; DATA XREF: RAM:8FCA^o
		LDX	$67
		LDA	$63C2,X
		BMI	locret_905A
		dldi	off_16, $8FEC

locret_905A:				; CODE XREF: RAM:9050^j
		RTS
; ---------------------------------------------------------------------------
byte_905B:	.BYTE	2		; light wizards
		.BYTE	1		; dark wizards
		.BYTE $1A		; wizards of order
		.BYTE $12		; wizards of chaos
		.BYTE $1E		; wizards of law
		.BYTE  $C		; thieves guild
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2		; ?
		.BYTE	8		; ?

byte_9069:	.BYTE $1B
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

byte_9077:	.BYTE	2
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

byte_9085:
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

byte_9093:
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

loc_90BD:				; DATA XREF: RAM:8512^o	RAM:8603^o ...
		LDA	#$FF
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_90C0:				; DATA XREF: RAM:85B2^o	RAM:863B^o ...
		LDA	#0
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------
unk_90C6:	.BYTE $82 ; Ç		; DATA XREF: sub_81B0:loc_81B2^r
		.BYTE $13
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $10
aRing99:	.BYTE " Ring [99]",0    ; DATA XREF: sub_81B0:loc_81E8^r
		.BYTE	0
		.BYTE	1
		.BYTE $63 ; c
byte_90DA:	.BYTE 0			; DATA XREF: RAM:loc_7E11^w RAM:8621^o ...
		.BYTE	0
off_90DC:	.WORD byte_90F8		; DATA XREF: sub_81B0+F^r sub_81B0+14^r
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
byte_90F8:	.BYTE 6			; DATA XREF: RAM:off_90DC^o RAM:90E8^o ...
aLight:		.BYTE "Light"
byte_90FE:	.BYTE 5			; DATA XREF: RAM:90DE^o
aDark:		.BYTE "Dark"
byte_9103:	.BYTE 6			; DATA XREF: RAM:90E0^o
aOrder:		.BYTE "Order"
byte_9109:	.BYTE 6			; DATA XREF: RAM:90E2^o
aChaos:		.BYTE "Chaos"
byte_910F:	.BYTE 4			; DATA XREF: RAM:90E4^o
aLaw:		.BYTE "Law"
byte_9113:	.BYTE 6			; DATA XREF: RAM:90E6^o
aThief:		.BYTE "Thief"
byte_9119:	.BYTE 8			; DATA XREF: RAM:90F4^o
aPaladin:	.BYTE "Paladin"
byte_9121:	.BYTE $A		; DATA XREF: RAM:90F6^o
aMercenary:	.BYTE "Mercenary"
byte_912B:	.BYTE $30		; DATA XREF: sub_81B0+5^w
byte_912C:	.BYTE $CC		; DATA XREF: sub_81B0+1D^r sub_81B0+20^w
		.BYTE $2B ; +
		.BYTE $87 ; á
		.BYTE $50 ; P
unk_9130:	.BYTE $52 ; R		; DATA XREF: sub_81B0+25^r sub_81B0+28^w ...
unk_9131:	.BYTE $45 ; E		; DATA XREF: RAM:83DF^o
		.BYTE $53 ; S
		.BYTE $4D ; M
		.BYTE $53 ; S
		.BYTE $47 ; G
		.BYTE $D4 ; ‘
		.BYTE $2B ; +
		DBGSYM	"WAIT4S",$2BFE
		DBGSYM	"WAITSEC", $2C00
		DBGSYM	"WAITSE05", $2C2A
		DBGSYM	"WAITSE10", $2C43
		DBGSYM	"WAITSE20", $2C5F
		DBGSYM	"WAITCNTR", $2C67
		DBGSYM	"NUMSECS", $2C68
		DBGSYM	"FORCEWT", $2C69
		DBGSYM	"WAITJIFF", $2C6A
		DBGSYM	"WAITKEY", $2C73
		DBGSYM	"WAITK10", $2C8C
		.BYTE $87 ; á
		.BYTE $53 ; S
unk_91AC:	.BYTE $70 ; p		; DATA XREF: RAM:91DCvo
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
		.BYTE	$42 ; B
		.BYTE	$58 ; X
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
		.BYTE	$41 ; A
		.WORD	unk_91AC
; ---------------------------------------------------------------------------

loc_91DE:
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

loc_9242:				; CODE XREF: RAM:9267vj
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
		BPL	loc_9242
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

loc_9284:				; CODE XREF: RAM:760A^j
		LDA	#$7F ; ''
		STA	$253
		dldi	$254, $91AC
		LDA	#8
		LDX	#$23 ; '#'

loc_9297:				; CODE XREF: RAM:92A5vj
		LDY	#$C

loc_9299:				; CODE XREF: RAM:92A0vj
		STA	$BB4C,X
		DEX
		BMI	loc_92A7
		DEY
		BNE	loc_9299
		CLC
		ADC	#4
		BNE	loc_9297

loc_92A7:				; CODE XREF: RAM:929D^j
		dldi	off_9, $0800
		JSR	loc_939F
		dldi	off_9, $BB70
		JSR	loc_939F
		dldi	loc_92CD+1, $BD00
		LDY	#3
		LDA	#0
		LDX	#$80

loc_92CD:				; CODE XREF: RAM:92D1vj	RAM:92D7vj
					; DATA XREF: ...
		STA	$FFFF,X
		INX
		BNE	loc_92CD
		INC	loc_92CD+2
		DEY
		BNE	loc_92CD
		LDX	#7

loc_92DB:				; CODE XREF: RAM:92DFvj
		STA	$D000,X
		DEX
		BPL	loc_92DB
		LDA	#3
		TAX

loc_92E4:				; CODE XREF: RAM:92E8vj
		STA	$D008,X
		DEX
		BPL	loc_92E4
		ldi	SIZEM, $FF
		ldi	GRACTL, $03
		ldi	PMBASE, $BC
		ldi	PRIOR, $04
		dldi	off_7, $BC00
		dldi	off_9, $04F0
		LDA	#0
		STA	6

loc_9312:				; CODE XREF: RAM:9338vj
		LDY	6
		LDA	(off_7),Y
		STA	4
		LDY	#7

loc_931A:				; CODE XREF: RAM:9325vj
		LSR	4
		BCC	loc_9324
		LDA	(off_9),Y
		ORA	#$80 ; 'Ä'
		STA	(off_9),Y

loc_9324:				; CODE XREF: RAM:931C^j
		DEY
		BPL	loc_931A
		LDA	off_9
		CLC
		ADC	#8
		STA	off_9
		BCC	loc_9332
		INC	off_9+1

loc_9332:				; CODE XREF: RAM:932E^j
		INC	6
		LDA	6
		CMP	#$2D ; '-'
		BCC	loc_9312
		LDA	#$2D ; '-'
		STA	off_7
		LDX	#0
		STX	6
		dldi	$F0, $BDA9

loc_934A:				; CODE XREF: RAM:935Bvj
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

loc_935D:				; CODE XREF: RAM:937Avj
		LDX	#0

loc_935F:				; CODE XREF: RAM:9378vj
		LDY	6
		LDA	(off_7),Y
		LDY	#4

loc_9365:				; CODE XREF: RAM:936Avj
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

loc_937C:				; CODE XREF: RAM:9374^j
		LDX	#3
		LDA	$BC5F

loc_9381:				; CODE XREF: RAM:9385vj
		STA	COLPM0,X
		DEX
		BPL	loc_9381
		dldi	off_24A, loc_91DE
		ldi	NMIEN, $C0
		LDA	#0
		STA	$18B8
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_939F:				; CODE XREF: RAM:92AF^p	RAM:92BA^p ...
		LDY	#0
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_93A9
		INC	off_7+1

loc_93A9:				; CODE XREF: RAM:93A5^j
		CMP	#$1B
		BEQ	loc_93B8
		STA	(off_9),Y
		INC	off_9
		BNE	loc_93B5
		INC	off_9+1

loc_93B5:				; CODE XREF: RAM:93B1^j
		JMP	loc_939F
; ---------------------------------------------------------------------------

loc_93B8:				; CODE XREF: RAM:93AB^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_93C0
		INC	off_7+1

loc_93C0:				; CODE XREF: RAM:93BC^j
		CMP	#$FF
		BNE	loc_93C5
		RTS
; ---------------------------------------------------------------------------

loc_93C5:				; CODE XREF: RAM:93C2^j
		STA	byte_93FF
		ADC	9
		STA	loc_93D8+1
		LDA	$A
		ADC	#0
		CMP	#$14
		BNE	loc_93DD
		LDA	byte_93FF

loc_93D8:				; DATA XREF: RAM:93CA^w
		SBC	#$FF
		STA	byte_93FF

loc_93DD:				; CODE XREF: RAM:93D3^j
		LDA	(off_7),Y
		INC	off_7
		BNE	loc_93E5
		INC	off_7+1

loc_93E5:				; CODE XREF: RAM:93E1^j
		LDY	byte_93FF

loc_93E8:				; CODE XREF: RAM:93EBvj
		STA	(off_9),Y
		DEY
		BPL	loc_93E8
		INC	byte_93FF
		LDA	byte_93FF
		CLC
		ADC	off_9
		STA	off_9
		BCC	loc_93FC
		INC	off_9+1

loc_93FC:				; CODE XREF: RAM:93F8^j
		JMP	loc_939F
; ---------------------------------------------------------------------------
byte_93FF:	.BYTE 0			; DATA XREF: RAM:loc_93C5^w RAM:93D5^r ...
byte_9400:	.BYTE	<s_Location	; $00
		.BYTE	<s_Repair	; $01
		.BYTE	<s_Strength	; $02
		.BYTE	<s_Strength	; $03
		.BYTE	<s_Strength	; $04
		.BYTE	<s_Strength	; $05
		.BYTE	<s_Strength	; $06
		.BYTE	<s_Strength	; $07
		.BYTE	<s_Strength	; $08
		.BYTE	<s_Strength	; $09
		.BYTE	<s_Strength	; $0A
		.BYTE	<s_Strength	; $0B
		.BYTE	<s_Strength	; $0C
		.BYTE	<s_Strength	; $0D
		.BYTE	<s_Strength	; $0E
		.BYTE	<s_Strength	; $0F
		.BYTE	<s_Strength	; $10
		.BYTE	<s_Charisma	; $11
		.BYTE	<s_Dexterity	; $12
		.BYTE	<s_Speed	; $13
		.BYTE	<s_Light	; $14
		.BYTE	<s_NightVision	; $15
		.BYTE	<s_Paralysis	; $16
		.BYTE	<s_Healing	; $17
		.BYTE	<s_Fireblade	; $18
		.BYTE	<s_Razoredge	; $19
		.BYTE	<s_SlayEvil	; $1A
		.BYTE	<s_SlayGood	; $1B
		.BYTE	<s_DefeatEvil	; $1C
		.BYTE	<s_DefeatGood	; $1D
		.BYTE	<s_FireBalls	; $1E
		.BYTE	<s_ColdBlast	; $1F
		.BYTE	<s_MagicDarts	; $20
		.BYTE	<s_ProtFromEvil	; $21
		.BYTE	<s_ProtFromGood	; $22
		.BYTE	<s_Protection	; $23
		.BYTE	<s_Fury		; $24
		.BYTE	<s_Luck		; $25
		.BYTE	<s_Bewilder	; $26
		.BYTE	<s_Bewilder	; $27
		.BYTE	<s_Shadowmeld	; $28
		.BYTE	<s_Prism	; $29
		.BYTE	<s_LightningBolts	; $2A
		.BYTE	<s_Fear		; $2B
		.BYTE	<s_ConjureKey	; $2C
		.BYTE	<s_Vigor	; $2D
		.BYTE	<s_Shield	; $2E
		.BYTE	<s_ConjureFood	; $2F
		.BYTE	<s_SuperVision	; $30
		.BYTE	<s_Blinding	; $31

byte_9432:
		.BYTE	>s_Location
		.BYTE	>s_Repair
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Strength
		.BYTE	>s_Charisma
		.BYTE	>s_Dexterity
		.BYTE	>s_Speed
		.BYTE	>s_Light
		.BYTE	>s_NightVision
		.BYTE	>s_Paralysis
		.BYTE	>s_Healing
		.BYTE	>s_Fireblade
		.BYTE	>s_Razoredge
		.BYTE	>s_SlayEvil
		.BYTE	>s_SlayGood
		.BYTE	>s_DefeatEvil
		.BYTE	>s_DefeatGood
		.BYTE	>s_FireBalls
		.BYTE	>s_ColdBlast
		.BYTE	>s_MagicDarts
		.BYTE	>s_ProtFromEvil
		.BYTE	>s_ProtFromGood
		.BYTE	>s_Protection
		.BYTE	>s_Fury
		.BYTE	>s_Luck
		.BYTE	>s_Bewilder
		.BYTE	>s_Bewilder
		.BYTE	>s_Shadowmeld
		.BYTE	>s_Prism
		.BYTE	>s_LightningBolts
		.BYTE	>s_Fear
		.BYTE	>s_ConjureKey
		.BYTE	>s_Vigor
		.BYTE	>s_Shield
		.BYTE	>s_ConjureFood
		.BYTE	>s_SuperVision
		.BYTE	>s_Blinding

byte_9464:
		.BYTE	$2A
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$28
		.BYTE	$1E
		.BYTE	$1E
		.BYTE	$1E
		.BYTE	$18
		.BYTE	$21
		.BYTE	$21
		.BYTE	$2C
		.BYTE	$32
		.BYTE	$34
		.BYTE	$31
		.BYTE	$30
		.BYTE	$30
		.BYTE	$37
		.BYTE	$37
		.BYTE	$33
		.BYTE	$33
		.BYTE	$32
		.BYTE	$2D
		.BYTE	$2D
		.BYTE	$27
		.BYTE	$34
		.BYTE	$35
		.BYTE	$35
		.BYTE	$2B
		.BYTE	$2C
		.BYTE	$25
		.BYTE	$2B
		.BYTE	$25
		.BYTE	$2F
		.BYTE	$26
		.BYTE	$23
		.BYTE	$33
		.BYTE	$34
		.BYTE	$27

byte_9496:
		.BYTE	2
		.BYTE	3
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
		.BYTE	$FF
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
		.BYTE	$FF
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

byte_94C8:	.BYTE	<byte_94E4	; DATA XREF: RAM:7E90^r
		.BYTE	<byte_94F2
		.BYTE	<byte_9500
		.BYTE	<byte_950D
		.BYTE	<byte_951E
		.BYTE	<byte_952C
		.BYTE	<byte_953A
		.BYTE	<byte_9545
		.BYTE	<byte_952C
		.BYTE	<byte_952C
		.BYTE	<byte_952C
		.BYTE	<byte_952C
		.BYTE	<byte_953A
		.BYTE	<byte_9545
byte_94D6:	.BYTE	>byte_94E4	; DATA XREF: RAM:7E95^r
		.BYTE	>byte_94F2
		.BYTE	>byte_9500
		.BYTE	>byte_950D
		.BYTE	>byte_951E
		.BYTE	>byte_952C
		.BYTE	>byte_953A
		.BYTE	>byte_9545
		.BYTE	>byte_952C
		.BYTE	>byte_952C
		.BYTE	>byte_952C
		.BYTE	>byte_952C
		.BYTE	>byte_953A
		.BYTE	>byte_9545

byte_94E4:	.BYTE	$00,$13,$14,$17,$1E,$20,$21,$23,$29,$2A,$2B,$2E,$31,$FF
byte_94F2:	.BYTE	$00,$11,$15,$17,$1D,$1F,$20,$22,$23,$28,$2A,$2B,$2E,$FF
byte_9500:	.BYTE	$00,$14,$17,$1A,$1C,$1F,$21,$27,$2B,$2E,$2F,$30,$FF
byte_950D:	.BYTE	$00,$10,$11,$15,$16,$17,$18,$1B,$1D,$1E,$22,$27,$2B,$2D,$2E,$30,$FF
byte_951E:	.BYTE	$00,$10,$12,$14,$16,$17,$1C,$1F,$21,$2C,$2D,$2E,$30,$FF
byte_952C:	.BYTE	$01,$11,$12,$13,$15,$17,$23,$25,$27,$28,$2C,$2E,$30,$FF
byte_953A:	.BYTE	$01,$10,$14,$17,$18,$19,$23,$24,$2D,$2E,$FF
byte_9545:	.BYTE	$00,$01,$11,$15,$16,$19,$25,$27,$2C,$2E,$2F,$30,$FF

s_Location:
		Item	$89,$00,$00,$00,"Location"
		.BYTE	$00,$02,$00,$01,$00

s_Repair:
		Item	$91,$00,$00,$00,"Repair"
		.BYTE	$00,$03,$00,$02,$01

s_Strength:
		Item	$81,$00,$00,$00,"Strength"
		.BYTE	$84,$FF,$84,$01,$68,$01,$0D,$F0,$00,$91,$5B,$00,$01,$00,$19,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$81,$5B,$00,$01,$00,$19,$00
		.BYTE	$EC,$00,$04,"Strength",$00,"2LEV"
		.BYTE	$00,$04,$00,$01,$10
:
GUILD_A_END:
		.SEGMENT "GUILD_B"
GUILD_B_START:

s_Charisma:
		Item	$81,$00,$00,$00,"Charisma"
		.BYTE	$84,$FF,$84,$01,$68,$01,$0D,$F0,$00,$91,$53,$00,$01,$00,$19,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$81,$53,$00,$01,$00,$19,$00
		.BYTE	$EC,$00,$04,"Charisma",$00,$33,$35,$8B,$32
		.BYTE	$00,$02,$00,$00,$11
s_Dexterity:
		Item	$81,$00,$00,$00,"Dexterity"
		.BYTE	$84,$FF,$84,$01,$68,$01,$0D,$F0,$00,$91,$73,$00,$01,$00,$19,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$81,$73,$00,$01,$00,$19,$00
		.BYTE	$EC,$00,$04,"Dexterity",$00,"CAN"
		.BYTE	$00,$03,$00,$01,$12
s_Speed:
		Item	$81,$00,$00,$00,"Speed"
		.BYTE	$84,$FF,$84,$01,$68,$01,$0D,$F0,$00,$91,$7B,$00,$01,$00,$40,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$81,$7B,$00,$01,$00,$40,$00
		.BYTE	$EC,$00,$04,"Speed",$00,$52,$55,$13,$33,$88,$54,$48
		.BYTE	$00,$06,$00,$01,$13
s_Light:
		Item	$81,$00,$00,$00,"Light"
		.BYTE	$84,$FF,$84,$01,$E0,$01,$0D,$F0,$00,$91,$90,$00,$01,$00,$01,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$81,$90,$00,$01,$00,$01,$00
		.BYTE	$EC,$00,$04,"Light",$00,"P3",$86,"DOOR"
		.BYTE	$00,$01,$00,$01,$14
s_NightVision:
		Item	$81,$00,$00,$00,"Night Vision"
		.BYTE	$84,$FF,$84,$01,$68,$01,$0D,$F0,$00,$91,$90,$00,$01,$00,$01,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$81,$90,$00,$01,$00,$01,$00
		.BYTE	$EC,$00,$04,"Night Vision",$00
		.BYTE	$00,$01,$00,$00,$15
s_Paralysis:
		Item	$81,$00,$00,$00,"Paralysis"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$F0,$00,$01,$00,$04,$00
		.BYTE	$00,$02,$00,$02,$16
s_Healing:
		Item	$81,$00,$00,$00,"Healing"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$82,$45,$00,$01,$00,$0A,$00
		.BYTE	$00,$0A,$00,$05,$17
s_Fireblade:
		Item	$81,$00,$00,$00,"Fireblade"
		.BYTE	$87,$FF,$84,$01,$3D,$00,$0D,$F0,$00,$01,$D5,$00,$01,$00,$00,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$01,$D5,$00,$01,$00,$24,$00
		.BYTE	$EC,$00,$04,"Fireblade",$00,"RTS"
		.BYTE	$00,$04,$00,$04,$18
s_Razoredge:
		Item	$81,$00,$00,$00,"Razoredge"
		.BYTE	$87,$FF,$84,$01,$3E,$00,$0D,$F0,$00,$01,$D3,$00,$01,$00,$00,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$01,$D3,$00,$01,$00,$24,$00
		.BYTE	$EC,$00,$04,"Razoredge",$00,$44,$8F,$35
		.BYTE	$00,$04,$00,$04,$19
s_SlayEvil:
		Item	$81,$00,$00,$00,"Slay Evil"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$E5,$00,$01,$00,$5A,$00
		.BYTE	$00,$05,$00,$05,$1A
s_SlayGood:
		Item	$81,$00,$00,$00,"Slay Good"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$E6,$00,$01,$00,$5A,$00
		.BYTE	$00,$05,$00,$05,$1B
s_DefeatEvil:
		Item	$81,$00,$00,$00,"Defeat Evil"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$E5,$00,$02,$03,$55,$00
		.BYTE	$00,$06,$00,$04,$1C
s_DefeatGood:
		Item	$81,$00,$00,$00,"Defeat Good"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$E6,$00,$02,$02,$55,$00
		.BYTE	$00,$06,$00,$04,$1D
s_FireBalls:
		Item	$81,$00,$00,$00,"Fire Balls"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$E1,$00,$02,$07,$66,$00
		.BYTE	$00,$04,$00,$04,$1E
s_ColdBlast:
		Item	$81,$00,$00,$00,"Cold Blast"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$E7,$00,$02,$01,$66,$00
		.BYTE	$00,$04,$00,$04,$1F
s_MagicDarts:
		Item	$81,$00,$00,$00,"Magic Darts"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$F0,$00,$01,$00,$07,$00
		.BYTE	$00,$04,$00,$02,$20
s_ProtFromEvil:
		Item	$81,$00,$00,$00,"Prot. From Evil"
		.BYTE	$84,$FF,$84,$01,$68,$01,$0D,$F0,$00,$91,$AF,$00,$01,$00,$0A,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$81,$AF,$00,$01,$00,$0A,$00
		.BYTE	$EC,$00,$04,"Prot. Evil",$00,"TE"
		.BYTE	$00,$04,$00,$01,$21
s_ProtFromGood:
		Item	$81,$00,$00,$00,"Prot. From Good"
		.BYTE	$84,$FF,$84,$01,$68,$01,$0D,$F0,$00,$91,$AE,$00,$01,$00,$0A,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$81,$AE,$00,$01,$00,$0A,$00
		.BYTE	$EC,$00,$04,"Prot. Good",$00,$D4,$38
		.BYTE	$00,$04,$00,$01,$22
s_Protection:
		Item	$81,$00,$00,$00,"Protection"
		.BYTE	$84,$FF,$84,$01,$68,$01,$0D,$F0,$00,$91,$A6,$00,$0B,$01,$02,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$81,$A6,$00,$0B,$01,$02,$00
		.BYTE	$EC,$00,$04,"Protection",0,"PP"
		.BYTE	$00,$04,$00,$02,$23
s_Fury:
		Item	$81,$00,$00,$00,"Fury"
		.BYTE	$84,$FF,$84,$01,$21,$00,$0D,$F0,$00,$91,$84,$00,$01,$00,$01,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$81,$84,$00,$01,$00,$02,$00
		.BYTE	$EC,$00,$04,"Fury",$00,"HFAIL",$B5,$3A,$88
		.BYTE	$00,$02,$00,$01,$24
s_Luck:
		Item	$81,$00,$00,$00,"Luck"
		.BYTE	$84,$FF,$84,$01,$68,$01,$0D,$F0,$00,$91,$84,$00,$01,$00,$01,$00
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$81,$84,$00,$01,$00,$01,$00
		.BYTE	$EC,$00,$04,"Luck",$00,"MSG",$03,$3B,$87,"BO"
		.BYTE	$00,$04,$00,$01,$25
s_Bewilder:
		Item	$81,$00,$00,$00,"Bewilder"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$F0,$00,$01,$00,$03,$00
		.BYTE	$00,$02,$00,$02,$27
s_Shadowmeld:
		Item	$81,$00,$00,$00,"Shadowmeld"
		.BYTE	$84,$FF,$84,$01,$FA,$00,$0D,$F0,$00,$91,$8D,$00,$01,$00,$01,$00
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$81,$8D,$00,$01,$00,$01,$00
		.BYTE	$EC,$00,$04,"Shadowmeld",$00,"OR"
		.BYTE	$00,$02,$00,$02,$28
s_Prism:
		Item	$81,$00,$00,$00,"Prism"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$F0,$00,$01,$00,$05,$00
		.BYTE	$00,$04,$00,$02,$29
s_LightningBolts:
		Item	$81,$00,$00,$00,"Lightning Bolts"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$E3,$00,$02,$05,$38,$00
		.BYTE	$00,$04,$00,$06,$2A
s_Fear:
		Item	$81,$00,$00,$00,"Fear"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$F0,$00,$01,$00,$08,$00
		.BYTE	$00,$03,$00,$01,$2B
s_ConjureKey:
		Item	$81,$00,$00,$00,"Conjure Key"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$81,$BF,$00,$01,$00,$01,$00
		.BYTE	$00,$04,$00,$00,$2C
s_Vigor:
		Item	$81,$00,$00,$00,"Vigor"
		.BYTE	$84,$FF,$04,$01,$01,$00,$0D,$F0,$00,$81,$9B,$00,$01,$00,$0A,$00
		.BYTE	$00,$0A,$00,$00,$2D
s_Shield:
		Item	$81,$00,$00,$00,"Shield"
		.BYTE	$84,$FF,$84,$01,$68,$01,$0D,$F0,$00,$91,$A6,$00,$02,$01,$03,$00	
		.BYTE	$84,$00,$04,$01,$01,$00,$0D,$F0,$00,$81,$A6,$00,$02,$01,$03,$00
		.BYTE	$EC,$00,$04,"Shield",0,"ELPAG0"
		.BYTE	$00,$03,$00,$01,$2E
s_ConjureFood:
		Item	$81,$00,$00,$00,"Conjure Food"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$81,$BB,$00,$01,$00,$01,$00
		.BYTE	$00,$04,$00,$00,$2F
s_SuperVision:
		Item	$81,$00,$00,$00,"Super Vision"
		.BYTE	$84,$FF,$84,$01,$64,$00,$0D,$F0,$00,$91,$8B,$00,$01,$00,$01,$00
		.BYTE	$84,$00,$84,$01,$01,$00,$0D,$F0,$00,$81,$8B,$00,$01,$00,$01,$00
		.BYTE	$EC,$00,$04,"Super Vision",0
		.BYTE	$00,$04,$00,$01,$30
s_Blinding:
		Item	$81,$00,$00,$00,"Blinding"
		.BYTE	$84,$FF,$84,$01,$01,$00,$0D,$F0,$00,$01,$F0,$00,$01,$00,$06,$00
		.BYTE	$00,$03,$00,$03,$31
:
		.RES	196,$00
; end of 'RAM'


		.END
