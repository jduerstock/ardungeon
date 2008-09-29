		.include	"globals.inc"

;		.ORG	$9000

loc_9000:
		JSR	$1827
		LDA	#$C
		STA	$6320
		STA	$195B
		LDA	#0
		TAX

loc_900E:
		STA	unk_90BE,X
		STA	$91BE,X
		INX
		BNE	loc_900E
		STX	word_232
		INX
		STX	word_232+1
		LDA	#<unk_90BE
		STA	off_9
		LDA	#>unk_90BE
		STA	off_9+1
		LDA	#3
		STA	6

loc_902A:
		LDX	#8

loc_902C:
		STA	$100,X
		DEX
		BPL	loc_902C

loc_9032:
		JSR	$182D

.ifndef		CRACKED

		BPL	loc_9044
		LDX	#8

loc_9039:
		LDA	unk_906B,X
		CMP	$100,X
		BNE	loc_9032
		DEX
		BPL	loc_9039

.else

		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		INC	word_232
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		
.endif

loc_9044:
		LDY	#0

loc_9046:
		LDA	$100,Y
		STA	(9),Y
		INY
		BPL	loc_9046
		LDA	9
		CLC
		ADC	#$80 ; 'Ђ'
		STA	9
		BCC	loc_9059
		INC	$A

loc_9059:
		DEC	6
		BNE	loc_902A
		LDX	#$7F ; ''

loc_905F:
		LDA	loc_9074,X
		STA	$100,X
		DEX
		BPL	loc_905F
		JMP	$100
; ---------------------------------------------------------------------------
unk_906B:	.BYTE $28 ; (		; DATA XREF: RAM:loc_9039r
		.BYTE $29 ; )
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE $28 ; (
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE	1
; ---------------------------------------------------------------------------

loc_9074:				; DATA XREF: RAM:loc_905Fr
		LDX	#$7F ; ''

loc_9076:				; CODE XREF: RAM:loc_907Fj
		LDA	unk_90BE,X
		CMP	$913E,X
		BNE	loc_9083
		DEX

loc_907F:				; DATA XREF: RAM:90B2w
		BPL	loc_9076
		BMI	loc_90AC

loc_9083:				; CODE XREF: RAM:907Cj
		LDX	#$7F ; ''

loc_9085:				; CODE XREF: RAM:908Ej
		LDA	$913E,X
		CMP	$91BE,X
		BNE	loc_9092
		DEX
		BPL	loc_9085
		BMI	loc_90AC

loc_9092:				; CODE XREF: RAM:908Bj
		LDX	#$7F ; ''

loc_9094:				; CODE XREF: RAM:909Dj
		LDA	unk_90BE,X
		CMP	$91BE,X
		BNE	loc_90A1
		DEX
		BPL	loc_9094
		BMI	loc_90AC

loc_90A1:				; CODE XREF: RAM:909Aj
		LDX	#$FF
		STX	$265
		STX	$6320
		STX	$195B

loc_90AC:				; CODE XREF: RAM:9081j	RAM:9090j ...
		LDA	#0
		TAX

loc_90AF:				; CODE XREF: RAM:90B9j
		STA	loc_9000,X
		STA	loc_907F+1,X
		STA	$9100,X
		INX
		BNE	loc_90AF
		JMP	$1830
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД
; ---------------------------------------------------------------------------
unk_90BE:	.RES	66,0

		.END


