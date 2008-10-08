		.include	"globals.inc"
		.include	"exp_kernel.inc"
		.include	"macros.inc"

;		.ORG	$9000

loc_9000:				; DATA XREF: RAM:loc_90AFw
		JSR	$1827
		LDA	#$C
		STA	$6320
		STA	$195B
		LDA	#0
		TAX

loc_900E:				; CODE XREF: RAM:9015j
		STA	byte_90BE,X
		STA	$91BE,X
		INX
		BNE	loc_900E
		STX	word_232
		INX
		STX	word_232+1
		dldi	off_9, $90BE
		LDA	#3
		STA	6

loc_902A:				; CODE XREF: RAM:905Bj
		LDX	#8

loc_902C:				; CODE XREF: RAM:9030j
		STA	$100,X
		DEX
		BPL	loc_902C

loc_9032:				; CODE XREF: RAM:903Fj
		JSR	j_READSECTOR
		BPL	loc_9044
		LDX	#8

loc_9039:				; CODE XREF: RAM:9042j
		LDA	unk_906B,X
		CMP	$100,X
		BNE	loc_9032
		DEX
		BPL	loc_9039

loc_9044:				; CODE XREF: RAM:9035j
		LDY	#0

loc_9046:				; CODE XREF: RAM:904Cj
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

loc_9059:				; CODE XREF: RAM:9055j
		DEC	6
		BNE	loc_902A
		LDX	#$7F ; ''

loc_905F:				; CODE XREF: RAM:9066j
		LDA	$9074,X
		STA	$100,X
		DEX
		BPL	loc_905F
		JMP	$100
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД
unk_906B:	.BYTE $28 ; (		; DATA XREF: RAM:loc_9039r
		.BYTE $29 ; )
		.BYTE	0
		.BYTE $34 ; 4
		.BYTE $28 ; (
		.BYTE $25 ; %
		.BYTE $32 ; 2
		.BYTE $25 ; %
		.BYTE	1
; ДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДДД
		LDX	#$7F ; ''

loc_9076:				; CODE XREF: RAM:loc_907Fj
		LDA	byte_90BE,X
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
		LDA	byte_90BE,X
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
byte_90BE:	.BYTE	0,  0,	0,  0,	0,  0,	0,  0 ;	DATA XREF: RAM:loc_900Ew
					; RAM:loc_9076r ...
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE	0,  0
; end of 'RAM'


		.END
