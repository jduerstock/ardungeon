		.include	"equates.inc"
		.include	"globals.inc"

;		.ORG	$1400
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $78,$9C,$3C,$36,$3E,$66,$66,$C3
		.BYTE $EE,$73,$63,$6E,$63,$63,$63,$DE
		.BYTE $3C,$66,$CC,$C0,$C0,$C0,$E6,$7C
		.BYTE $EE,$73,$63,$63,$63,$63,$63,$DE
		.BYTE $FE,$66,$60,$78,$60,$63,$66,$7C
		.BYTE $FE,$66,$60,$78,$60,$60,$60,$60
		.BYTE $3C,$66,$C6,$C0,$DE,$C6,$66,$3C
		.BYTE $C6,$C6,$C6,$CE,$FE,$E6,$C6,$C6
		.BYTE $30,$18,$18,$18,$18,$18,$18, $C
		.BYTE $1E, $C, $C, $C, $C,$1C,$38,$60
		.BYTE $C6,$6C,$6C,$78,$78,$6C,$6C,$C6
		.BYTE $E0,$60,$60,$60,$60,$66,$7E,$78
		.BYTE $C6,$EE,$FE,$D6,$C6,$C6,$C6,$C6
		.BYTE $C6,$C6,$E6,$F6,$DE,$CE,$C6,$C6
		.BYTE $7C,$CE,$C6,$C6,$C6,$C6,$E6,$7C
		.BYTE $FC,$66,$66,$66,$6C,$60,$60,$C0
		.BYTE $7C,$E6,$C6,$C6,$C6,$C6,$CE,$7F
		.BYTE $EE,$73,$66,$6C,$66,$66,$63,$C3
		.BYTE $3A,$66,$60,$3C,	6,  6,$66,$5C
		.BYTE $FE,$30,$60,$C0,$C0,$C2,$C6,$7C
		.BYTE $E6,$66,$66,$66,$66,$66,$6E,$3F
		.BYTE $C3,$66,$66,$66,$66,$66,$3C,$18
		.BYTE $C3,$C3,$C3,$D3,$CB,$DF,$77,$62
		.BYTE $C3,$C3,$66,$3C,$3C,$66,$C3,$C3
		.BYTE $C3,$66,$66,$3C,$18,$18,$18,$18
		.BYTE $7E,$C6, $C,$18,$FE,$60,$C3,$FE
		.BYTE	0,  0,	0,  0,	0,$18,$18,  0
		.BYTE	0,  0,	0,  0,$7E,  0,	0,  0
		.BYTE	0,$18,$18,$18,	0,  0,	0,  0
		.BYTE $18,$3C,$3C,$3C,$18,$18,	0,$18
		.BYTE $3C,$66,$66, $C,$18,  0,$18,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,  0
		.BYTE $18,$3C,$3C,$3C,$18,$18,	0,$18
		.BYTE $66,$66,$66,  0,	0,  0,	0,  0
		.BYTE	0,$66,$FF,$66,$66,$FF,$66,  0
		.BYTE $18,$3E,$60,$3C,	6,$7C,$18,  0
		.BYTE	0,$66,$6C,$18,$30,$66,$46,  0
		.BYTE $1C,$36,$1C,$38,$6F,$66,$3B,  0
		.BYTE	0,$18,$18,$18,	0,  0,	0,  0
		.BYTE	6, $E,$1C,$18,$18,$1C, $E,  6
		.BYTE $60,$70,$38,$18,$18,$38,$70,$60
		.BYTE	0,$66,$3C,$FF,$3C,$66,	0,  0
		.BYTE	0,$18,$18,$7E,$18,$18,	0,  0
		.BYTE	0,  0,	0,  0,	0,$18,$18,$30
		.BYTE	0,  0,	0,$7E,	0,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,$18,$18,  0
		.BYTE	3,  6, $C,$18,$30,$60,$40,  0
		.BYTE $7C,$CE,$C6,$C6,$C6,$E6,$7C,  0
		.BYTE $38,$38,$18,$18,$18,$18,$18,  0
		.BYTE $7C,$E6, $C,$18,$30,$60,$FE,  0
		.BYTE $7E, $C,$18, $C,	6,$66,$3C,  0
		.BYTE  $C,$1C,$3C,$6C,$CC,$FE, $C,  0
		.BYTE $7E,$60,$7C,  6,	6,$66,$3C,  0
		.BYTE $7C,$C6,$C0,$FC,$CE,$E6,$7C,  0
		.BYTE $7E,  6, $C,$18,$30,$30,$30,  0
		.BYTE $7C,$CE,$E6,$7C,$CE,$E6,$7C,  0
		.BYTE $7C,$CE,$C6,$E6,$7E, $C,$18,$30
		.BYTE	0,$38,$38,  0,	0,$38,$38,  0
		.BYTE	0,  0,$18,$18,	0,$18,$18,$30
		.BYTE	6, $C,$18,$30,$18, $C,	6,  0
		.BYTE	0,  0,$7E,  0,	0,$7E,	0,  0
		.BYTE $60,$30,$18, $C,$18,$30,$60,  0
		.BYTE $3C,$66,$66, $C,$18,  0,$18,  0
		.BYTE	0,$3C,$66,$6E,$6E,$60,$3E,  0
		.BYTE $78,$9C,$3C,$36,$3E,$66,$66,$C3
		.BYTE $EE,$73,$63,$6E,$63,$63,$63,$DE
		.BYTE $3C,$66,$CC,$C0,$C0,$C0,$E6,$7C
		.BYTE $EE,$73,$63,$63,$63,$63,$63,$DE
		.BYTE $FE,$66,$60,$78,$60,$63,$66,$7C
		.BYTE $FE,$66,$60,$78,$60,$60,$60,$60
		.BYTE $3C,$66,$C6,$C0,$DE,$C6,$66,$3C
		.BYTE $C6,$C6,$C6,$CE,$FE,$E6,$C6,$C6
		.BYTE $30,$18,$18,$18,$18,$18,$18, $C
		.BYTE $1E, $C, $C, $C, $C,$1C,$38,$60
		.BYTE $C6,$6C,$6C,$78,$78,$6C,$6C,$C6
		.BYTE $E0,$60,$60,$60,$60,$66,$7E,$78
		.BYTE $C6,$EE,$FE,$D6,$C6,$C6,$C6,$C6
		.BYTE $C6,$C6,$E6,$F6,$DE,$CE,$C6,$C6
		.BYTE $7C,$CE,$C6,$C6,$C6,$C6,$E6,$7C
		.BYTE $FC,$66,$66,$66,$6C,$60,$60,$C0
		.BYTE $7C,$E6,$C6,$C6,$C6,$C6,$CE,$7F
		.BYTE $EE,$73,$66,$6C,$66,$66,$63,$C3
		.BYTE $3A,$66,$60,$3C,	6,  6,$66,$5C
		.BYTE $FE,$30,$60,$C0,$C0,$C2,$C6,$7C
		.BYTE $E6,$66,$66,$66,$66,$66,$6E,$3F
		.BYTE $C3,$66,$66,$66,$66,$66,$3C,$18
		.BYTE $C3,$C3,$C3,$D3,$CB,$DF,$77,$62
		.BYTE $C3,$C3,$66,$3C,$3C,$66,$C3,$C3
		.BYTE $C3,$66,$66,$3C,$18,$18,$18,$18
		.BYTE $7E,$C6, $C,$18,$FE,$60,$C3,$FE
		.BYTE $1E,$18,$18,$18,$18,$18,$18,$1E
		.BYTE	0,$40,$60,$30,$18, $C,	6,  0
		.BYTE $78,$18,$18,$18,$18,$18,$18,$78
		.BYTE	0,  8,$1C,$36,$63,  0,	0,  0
		.BYTE	0,  0,	0,  0,	0,  0,	0,$FF
		.BYTE $7E,$7E,$7E,$7E,$7E,$7E,$7E,$7E
		.BYTE	0,  0,$3E,$66,$66,$66,$3B,  0
		.BYTE $E0,$60,$60,$7C,$66,$66,$7C,  0
		.BYTE	0,  0,$3C,$66,$60,$66,$3C,  0
		.BYTE  $C,  6,	6,$3E,$66,$66,$3B,  0
		.BYTE	0,  0,$3C,$66,$7E,$60,$3E,  0
		.BYTE  $E,$18,$18,$18,$3E,$18,$18,  0
		.BYTE	0,  6,$7C,$CC,$CC,$78,$C2,$7C
		.BYTE $C0,$60,$60,$6C,$76,$66,$66,  0
		.BYTE $30,  0,$18, $C, $C, $C, $C,  0
		.BYTE  $C,  0, $C, $C, $C, $C, $C,$38
		.BYTE $C0,$60,$66,$6C,$78,$6C,$E6,  0
		.BYTE $30,$18,$18,$18,$18,$18, $C,  0
		.BYTE	0,$C0,$66,$7E,$7E,$6B,$63,  0
		.BYTE	0,$C0,$7C,$66,$66,$66,$63,  0
		.BYTE	0,  0,$3C,$6E,$66,$76,$3C,  0
		.BYTE	0,$C0,$7C,$66,$66,$7C,$60,$E0
		.BYTE	0,  0,$3B,$66,$66,$3E,	6,  7
		.BYTE	0,$C0,$7C,$76,$60,$60,$60,  0
		.BYTE	0,  0,$3E,$60,$3C,  6,$7C,  0
		.BYTE	0,$30,$7E,$30,$30,$30,$36,$1C
		.BYTE	0,  0,$E6,$66,$66,$6E,$3B,  0
		.BYTE	0,  0,$E6,$66,$66,$3C,$18,  0
		.BYTE	0,  0,$E3,$6B,$7F,$3E,$36,  0
		.BYTE	0,  3,$66,$3C,$18,$3C,$66,$C0
		.BYTE	0,  0,$E6,$66,$66,$3E,$CC,$78
		.BYTE	0,  0,$7E, $C,$7E,$31,$7E,  0
		.BYTE $18,$18,$18,$FF,$FF,$18,$18,$18
		.BYTE  $C, $C,$D8,$FC,$3F,$1B,$30,$30
		.BYTE $42,$E7,$7E,$3C,$3C,$7E,$E7,$42
		.BYTE $30,$30,$1B,$3F,$FC,$D8, $C, $C
		.BYTE	8,$18,$30,$7C,$18,$30,$60,$40
; ---------------------------------------------------------------------------
		JMP	sub_2979
; ---------------------------------------------------------------------------
		JMP	loc_2F80
; ---------------------------------------------------------------------------
		JMP	loc_2FF3
; ---------------------------------------------------------------------------
		JMP	loc_30E3
; ---------------------------------------------------------------------------
		JMP	loc_3183
; ---------------------------------------------------------------------------
		JMP	sub_1A0D
; ---------------------------------------------------------------------------
		JMP	sub_1C84
; ---------------------------------------------------------------------------
		JMP	sub_1C88
; ---------------------------------------------------------------------------
		JMP	loc_1C8C
; ---------------------------------------------------------------------------
		JMP	sub_1C2C
; ---------------------------------------------------------------------------
		JMP	sub_2643
; ---------------------------------------------------------------------------
		JMP	sub_262F
; ---------------------------------------------------------------------------
		JMP	sub_275B
; ---------------------------------------------------------------------------
		JMP	sub_245D
; ---------------------------------------------------------------------------
		JMP	sub_28A1
; ---------------------------------------------------------------------------
		JMP	sub_248E
; ---------------------------------------------------------------------------
		JMP	loc_24C6
; ---------------------------------------------------------------------------
		JMP	loc_2494
; ---------------------------------------------------------------------------
		JMP	sub_3C61
; ---------------------------------------------------------------------------
		JMP	sub_2A41
; ---------------------------------------------------------------------------
		JMP	sub_2BB0
; ---------------------------------------------------------------------------
		JMP	sub_2BA5
; ---------------------------------------------------------------------------
j_SEGLOAD:
		JMP	SEGLOAD
; ---------------------------------------------------------------------------
		JMP	loc_3C27
; ---------------------------------------------------------------------------
		JMP	sub_3C2D
; ---------------------------------------------------------------------------
		JMP	sub_3CA5
; ---------------------------------------------------------------------------
		JMP	sub_3CC2
; ---------------------------------------------------------------------------
		JMP	sub_3C5C
; ---------------------------------------------------------------------------
		JMP	loc_2D8F
; ---------------------------------------------------------------------------
		JMP	loc_2C6F
; ---------------------------------------------------------------------------
		JMP	loc_2BFC
; ---------------------------------------------------------------------------
		JMP	loc_2C9B
; ---------------------------------------------------------------------------
		JMP	sub_2DAB
; ---------------------------------------------------------------------------
		JMP	sub_2DE3
; ---------------------------------------------------------------------------
		JMP	sub_2E0D
; ---------------------------------------------------------------------------
		JMP	sub_2E31
; ---------------------------------------------------------------------------
		JMP	loc_2E6B
; ---------------------------------------------------------------------------
j_SUBSTAT1:
		JMP	SUBSTAT1
; ---------------------------------------------------------------------------
j_SUBSTAT2:
		JMP	SUBSTAT2
; ---------------------------------------------------------------------------
		JMP	loc_2E45
; ---------------------------------------------------------------------------
j_ADDSTAT1:
		JMP	ADDSTAT1
; ---------------------------------------------------------------------------
j_ADDSTAT2:
		JMP	ADDSTAT2
; ---------------------------------------------------------------------------
		JMP	loc_2E9E
; ---------------------------------------------------------------------------
		JMP	sub_2CC2
; ---------------------------------------------------------------------------
		JMP	sub_4B4D
; ---------------------------------------------------------------------------
		JMP	sub_4B74
; ---------------------------------------------------------------------------
		JMP	sub_4AC9
; ---------------------------------------------------------------------------
		JMP	loc_4E06
; ---------------------------------------------------------------------------
		JMP	sub_49B0
; ---------------------------------------------------------------------------
		JMP	sub_55B7
; ---------------------------------------------------------------------------
		JMP	sub_4EC4
; ---------------------------------------------------------------------------
		JMP	sub_2B6B
; ---------------------------------------------------------------------------
		JMP	sub_5471
; ---------------------------------------------------------------------------
		JMP	loc_375F
; ---------------------------------------------------------------------------
		JMP	sub_2B47
; ---------------------------------------------------------------------------
		JMP	sub_408B
; ---------------------------------------------------------------------------
		JMP	loc_3771
; ---------------------------------------------------------------------------
		JMP	loc_5BB8
; ---------------------------------------------------------------------------
		JMP	sub_2AA0
; ---------------------------------------------------------------------------
		JMP	loc_5492
; ---------------------------------------------------------------------------
		JMP	loc_2EC6
; ---------------------------------------------------------------------------
byte_18B7:	.BYTE 0			; DATA XREF: RAM:23AFw
byte_18B8:	.BYTE 0			; DATA XREF: RAM:1A86w	RAM:1B32r ...
byte_18B9:	.BYTE 0			; DATA XREF: sub_1A0D+1w RAM:234Br ...
byte_18BA:	.BYTE 0			; DATA XREF: RAM:loc_1ABBw RAM:1B61r ...
byte_18BB:	.BYTE 0			; DATA XREF: RAM:1B67r
byte_18BC:	.BYTE 0			; DATA XREF: RAM:1B6Dr
byte_18BD:	.BYTE 0			; DATA XREF: RAM:1B79r
byte_18BE:	.BYTE 0			; DATA XREF: RAM:1BC8r
byte_18BF:	.BYTE 0			; DATA XREF: RAM:1B73r
		.BYTE	0
byte_18C1:	.BYTE	0		; DATA XREF: sub_1C88+8r sub_1C88+4Dw
		.BYTE	0
		.BYTE	0
byte_18C4:	.BYTE	0		; DATA XREF: sub_1C88+Dr sub_1C88+56w
		.BYTE	0
		.BYTE	0
byte_18C7:	.BYTE	0		; DATA XREF: sub_1C88+16r sub_1C88+5Bw
		.BYTE	0
		.BYTE	0
byte_18CA:	.BYTE	0		; DATA XREF: RAM:loc_1E40r
					; RAM:loc_1E59r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_18D4:	.BYTE 0			; DATA XREF: sub_2A41:loc_2A47w
					; sub_2A41+50r
unk_18D5:	.BYTE $80 ; Ä		; DATA XREF: sub_2A41+1Ew sub_2A41+55w ...
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE	0
byte_18FE:	.BYTE 0			; DATA XREF: RAM:1E71r	RAM:5816w ...
byte_18FF:	.BYTE 0			; DATA XREF: RAM:2659r	RAM:2667w ...
byte_1900:	.BYTE 0			; DATA XREF: sub_267A+10r
					; sub_267A:loc_269Fw
byte_1901:	.BYTE 0			; DATA XREF: sub_27DE+16w sub_27DE+7Br ...
byte_1902:	.BYTE 0			; DATA XREF: sub_27DE+19w sub_27DE+83w ...
word_1903:	.WORD 0			; DATA XREF: sub_28A1+32w sub_2937+Ar
byte_1905:	.BYTE 0			; DATA XREF: sub_28D7r
					; sub_2937:loc_2969r
byte_1906:	.BYTE 0			; DATA XREF: sub_28A1+2Fr
byte_1907:	.BYTE 0			; DATA XREF: sub_27DE+4Br sub_27DE+62r ...
byte_1908:	.BYTE 0			; DATA XREF: sub_27DE+26r sub_27DE+73r ...
SEGNO:		.BYTE	0		; DATA XREF: sub_28A1+4r sub_2CC2+2r ...
		.BYTE	0
SEGADDR:	.WORD	0		; DATA XREF: sub_27DE+1Cr
					; sub_27DE:loc_2845r ...
byte_190D:	.BYTE 0			; DATA XREF: sub_2799+36w
byte_190E:	.BYTE 0			; DATA XREF: sub_2799+Cw sub_28D7+21r	...
byte_190F:	.BYTE 0			; DATA XREF: sub_275B+Bw sub_275B+21w
byte_1910:	.BYTE 0			; DATA XREF: sub_28D7+13w RAM:29D0o
byte_1911:	.BYTE 0			; DATA XREF: sub_28D7+10w RAM:29C4o
byte_1912:	.BYTE 0			; DATA XREF: sub_2BFA+393w
					; sub_2BFA+5BCw ...
byte_1913:	.BYTE $80		; DATA XREF: RAM:2EE8w	sub_3C2D+19r ...
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
byte_191A:	.BYTE $80		; DATA XREF: RAM:3338w	sub_3596+16w
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
byte_1923:	.BYTE $80		; DATA XREF: RAM:2EEDw	sub_3C2D+1Er ...
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
byte_192A:	.BYTE $80		; DATA XREF: RAM:333Bw	RAM:3590w ...
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
byte_1933:	.BYTE 0			; DATA XREF: RAM:2EE3w	RAM:2F64w ...
byte_1934:	.BYTE 0			; DATA XREF: RAM:2F54w	RAM:3C77r ...
byte_1935:	.BYTE 0			; DATA XREF: RAM:2F15w	RAM:37FEw ...
byte_1936:	.BYTE 0			; DATA XREF: sub_3CA5+3w sub_3CC2+Br
byte_1937:	.BYTE 0			; DATA XREF: sub_2BFA+9w RAM:2C5Fw ...
byte_1938:	.BYTE 0			; DATA XREF: sub_2BFA+396w RAM:3627w ...
byte_1939:	.BYTE 0			; DATA XREF: sub_2BFA+39Cw sub_322C+Br ...
off_193A:	.WORD	$FFFF		; DATA XREF: RAM:36B3w	RAM:36CAw ...
off_193C:	.WORD	$FFFF		; DATA XREF: sub_502E+Ew sub_502E+14w	...
off_193E:	.WORD	$FFFF		; DATA XREF: RAM:5D6Fo
off_1940:	.WORD	$FFFF		; DATA XREF: RAM:5D85o
off_1942:	.WORD	$FFFF
off_1944:	.WORD	$FFFF		; DATA XREF: RAM:36D4w	sub_51B6+24w ...
byte_1946:	.BYTE 0			; DATA XREF: sub_502E:loc_5032w
					; sub_508C+6r ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_194A:	.BYTE 0			; DATA XREF: sub_3635+29w RAM:3694r ...
		.BYTE	0
		.BYTE	0
byte_194D:	.BYTE 0			; DATA XREF: RAM:5349r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_1953:	.BYTE $80		; DATA XREF: RAM:4245r
byte_1954:	.BYTE 0			; DATA XREF: RAM:32E7w
byte_1955:	.BYTE 0			; DATA XREF: RAM:23C1r	RAM:23D3r
byte_1956:	.BYTE 0			; DATA XREF: sub_2BFA:loc_306Aw
					; sub_408B+2Fw
byte_1957:	.BYTE 0			; DATA XREF: sub_408B:loc_40BFw
byte_1958:	.BYTE 0			; DATA XREF: sub_2BFA+3FFr
					; sub_2BFA+40Dw ...
byte_1959:	.BYTE 0			; DATA XREF: sub_2BFA+404r
					; sub_2BFA+5E6w ...
byte_195A:	.BYTE 0			; DATA XREF: sub_2BFA+5D1w RAM:3548r ...
		.BYTE	0
		.BYTE	0
byte_195D:	.BYTE 0			; DATA XREF: sub_2BFA+447r
					; sub_2BFA+44Ew ...
byte_195E:	.BYTE 0			; DATA XREF: RAM:420Aw	RAM:4234r ...
byte_195F:	.BYTE 0			; DATA XREF: sub_2BFA+39Fw RAM:346Bw ...
byte_1960:	.BYTE 0			; DATA XREF: sub_2BFA+3A2w
					; RAM:loc_41FCr ...
byte_1961:	.BYTE 0			; DATA XREF: sub_51B6+62w RAM:52C8w ...
byte_1962:	.BYTE 0			; DATA XREF: RAM:23F3w	sub_408B+Dr ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_1968:	.BYTE 0			; DATA XREF: sub_2BFA+48Ar
					; sub_2BFA+49Br
		.BYTE	0
byte_196A:	.BYTE 0			; DATA XREF: sub_2BFA+399w RAM:3621w
unk_196B:	.BYTE	0		; DATA XREF: RAM:loc_337Ar RAM:3391w
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_196F:	.BYTE 0			; DATA XREF: RAM:3389w	RAM:loc_3397r ...
byte_1970:	.BYTE 0			; DATA XREF: RAM:loc_334Ew
					; RAM:loc_341Cr ...
byte_1971:	.BYTE 0			; DATA XREF: sub_2BFA:loc_300Dr
					; RAM:3364w ...
byte_1972:	.BYTE 0			; DATA XREF: RAM:41A2r	RAM:43B9r ...
byte_1973:	.BYTE 0			; DATA XREF: sub_2BFA+610w RAM:4149r
byte_1974:	.BYTE 0			; DATA XREF: sub_2BFA+5C6w sub_322C+8r ...
byte_1975:	.BYTE 0			; DATA XREF: RAM:30E5w	RAM:3115w ...
byte_1976:	.BYTE 0			; DATA XREF: RAM:4207w	RAM:422Br ...
off_1977:	.WORD 0			; DATA XREF: sub_2BFA:loc_2C26r
					; sub_2BFA+3Aw	...
byte_1979:	.BYTE 0			; DATA XREF: sub_2BFA+41Dr
					; sub_2BFA+424w ...
byte_197A:	.BYTE 0			; DATA XREF: sub_3635+2w RAM:367Dw ...
byte_197B:	.BYTE 0			; DATA XREF: sub_2BFA:loc_3032r
					; sub_5857+2w
unk_197C:	.BYTE $80 ; Ä		; DATA XREF: sub_2CFB:loc_2D03w
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
unk_1987:	.BYTE $80 ; Ä		; DATA XREF: sub_2CFB:loc_2D18w
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
		.BYTE $80 ; Ä
byte_199C:	.BYTE 0			; DATA XREF: sub_245D+1Cw sub_2503r ...

byte_199D:
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42 ; B
		.BYTE	0
		.BYTE	4
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE $41 ; A
		.BYTE $9D ; ù
		.BYTE $19

byte_19BE:
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $30 ; 0
		.BYTE $42 ; B
		.BYTE	0
		.BYTE	4
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	2
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE $44 ; D
		.BYTE $F0 ; 
		.BYTE	4
		.BYTE	4
		.BYTE $84 ; Ñ
		.BYTE $84 ; Ñ
		.BYTE	4
		.BYTE $84 ; Ñ
		.BYTE	4
		.BYTE	4
		.BYTE $84 ; Ñ
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
		.WORD	byte_19BE

unk_19EF:	.BYTE	>byte_199D	; DATA XREF: sub_1A0D+14r
		.BYTE	>byte_19BE
		.BYTE	>byte_19BE
unk_19F2:	.BYTE	<byte_199D	; DATA XREF: sub_1A0D+1Ar
		.BYTE	<byte_19BE
		.BYTE	<byte_19BE
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $70 ; p
		.BYTE $42 ; B
		.BYTE $7C ; |
		.BYTE $19
		.BYTE $41 ; A
		.BYTE $F5 ; ı
		.BYTE $19
		.BYTE $41 ; A
		.BYTE  $A
		.BYTE $1A

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1A0D:				; CODE XREF: RAM:180Fj	RAM:2ED5p ...
		TAX
		STA	byte_18B9
		LDA	#0
		LDY	#3
		STY	$253

loc_1A18:				; CODE XREF: sub_1A0D+Fj
		STA	$D000,Y
		DEY
		BPL	loc_1A18
		JSR	sub_2454
		LDA	unk_19EF,X
		STA	$255
		LDA	unk_19F2,X
		STA	$254
		LDY	unk_1C21,X
		LDA	#0

loc_1A32:				; CODE XREF: sub_1A0D+29j
		STA	$4C8,Y
		DEY
		BPL	loc_1A32
		LDA	unk_1A41,X
		PHA
		LDA	unk_1A44,X
		PHA
		RTS
; End of function sub_1A0D

; ---------------------------------------------------------------------------
unk_1A41:	.BYTE	>(loc_1A47-1)	; DATA XREF: sub_1A0D+2Br
		.BYTE	>(loc_1A65-1)
		.BYTE	>(loc_1B19-1)
unk_1A44:	.BYTE	<(loc_1A47-1)	; DATA XREF: sub_1A0D+2Fr
		.BYTE	<(loc_1A65-1)
		.BYTE	<(loc_1B19-1)
; ---------------------------------------------------------------------------

loc_1A47:
		LDA	#<loc_1B55
		STA	off_200
		STA	off_248
		LDA	#>loc_1B55
		STA	off_200+1
		STA	off_248+1
		LDX	#7
		LDA	#0

loc_1A5B:				; CODE XREF: RAM:1A5Fj
		STA	$D000,X
		DEX
		BPL	loc_1A5B
		STA	$253
		RTS
; ---------------------------------------------------------------------------

loc_1A65:
		LDA	#<loc_1B2F
		STA	off_200
		STA	off_248
		LDA	#>loc_1B2F
		STA	off_200+1
		STA	off_248+1
		LDA	#<$1B56
		STA	off_24A
		LDA	#>$1B56
		STA	off_24A+1
		LDA	#$C0 ; '¿'
		STA	$D40E
		LDA	#0
		STA	byte_18B8
		LDA	#$34 ; '4'
		STA	$D01B
		LDX	#3
		STX	$D008
		STX	$D009

loc_1A96:				; CODE XREF: RAM:1AABj
		LDA	unk_1C24,X
		STA	$D004,X
		LDA	unk_1C28,X
		STA	$D000,X
		LDA	#0
		STA	$D00D,X
		STA	$D012,X
		DEX
		BPL	loc_1A96
		STA	$D01D
		STA	$D019
		STX	$D011
		STX	$D00C
		LDX	#5

loc_1ABB:				; CODE XREF: RAM:1ABFj
		STA	byte_18BA,X
		DEX
		BPL	loc_1ABB
		JSR	sub_1C09
		LDA	#<$4F0
		STA	off_7
		LDA	#>$4F0
		STA	off_7+1
		LDA	#<$50D
		STA	off_9
		LDA	#>$50D
		STA	off_9+1
		LDX	#9

loc_1AD6:				; CODE XREF: RAM:1AFEj
		LDY	#$A

loc_1AD8:				; CODE XREF: RAM:1AE5j
		LDA	(off_7),Y
		ORA	#$80 ; 'Ä'
		STA	(off_7),Y
		LDA	(off_9),Y
		ORA	#$80 ; 'Ä'
		STA	(off_9),Y
		DEY
		BPL	loc_1AD8
		LDA	off_7
		CLC
		ADC	#$28 ; '('
		STA	off_7
		BCC	loc_1AF2
		INC	off_7+1

loc_1AF2:				; CODE XREF: RAM:1AEEj
		LDA	off_9
		CLC
		ADC	#$28 ; '('
		STA	off_9
		BCC	loc_1AFD
		INC	off_9+1

loc_1AFD:				; CODE XREF: RAM:1AF9j
		DEX
		BNE	loc_1AD6
		LDA	#<$800
		STA	off_9
		LDA	#>$800
		STA	off_9+1
		LDX	#$C
		LDY	#0
		LDA	#$FF

loc_1B0E:				; CODE XREF: RAM:1B11j	RAM:1B16j
		STA	(off_9),Y
		INY
		BNE	loc_1B0E
		INC	off_9+1
		DEX
		BNE	loc_1B0E
		RTS
; ---------------------------------------------------------------------------

loc_1B19:
		JSR	sub_1C09
		LDA	#<loc_1B2F
		STA	off_200
		STA	off_248
		LDA	#>loc_1B2F
		STA	off_200+1
		STA	off_248+1
		JMP	$760A
; ---------------------------------------------------------------------------

loc_1B2F:
		PHA
		TXA
		PHA
		LDX	byte_18B8
		LDA	unk_1C19,X
		STA	WSYNC
		STA	COLPF2
		INX
		STX	byte_18B8
		CPX	#4
		BCC	loc_1B52
		LDA	off_24A
		STA	off_200
		LDA	off_24A+1
		STA	off_200+1

loc_1B52:				; CODE XREF: RAM:1B44j
		PLA
		TAX
		PLA

loc_1B55:
		RTI
; ---------------------------------------------------------------------------

loc_1B56:
		PHA
		LDA	#<loc_1BA2
		STA	off_200
		LDA	#>loc_1BA2
		STA	off_200+1
		LDA	byte_18BA
		STA	$D016
		LDA	byte_18BB
		STA	$D017
		LDA	byte_18BC
		STA	COLPF2
		LDA	byte_18BF
		STA	$D019
		LDA	byte_18BD
		STA	WSYNC
		STA	$D01A
		LDA	#8
		STA	$D409
		LDA	$7600
		CMP	#1
		BEQ	loc_1BA0
		LDA	#$90 ; 'ê'
		STA	$D012
		LDA	#$34 ; '4'
		STA	$D013
		LDA	#$FF
		STA	$D00D
		STA	$D00E

loc_1BA0:				; CODE XREF: RAM:1B8Cj
		PLA
		RTI
; ---------------------------------------------------------------------------

loc_1BA2:
		PHA
		LDA	#<loc_1BB7
		STA	off_200
		LDA	#>loc_1BB7
		STA	off_200+1
		LDA	#$C
		STA	WSYNC
		STA	$D409
		PLA
		RTI
; ---------------------------------------------------------------------------

loc_1BB7:
		PHA
		STA	WSYNC
		LDA	#<sub_1BD6
		STA	off_200
		LDA	#>sub_1BD6
		STA	off_200+1
		STA	WSYNC
		LDA	byte_18BE
		STA	WSYNC
		STA	WSYNC
		STA	$D01A
		PLA
		RTI
; ---------------------------------------------------------------------------

sub_1BD6:
		PHA
		LDA	#<sub_1BEB
		STA	off_200
		LDA	#>sub_1BEB
		STA	off_200+1
		LDA	#$10
		STA	WSYNC
		STA	$D409
		PLA
		RTI
; ---------------------------------------------------------------------------

sub_1BEB:
		PHA
		LDA	#0
		STA	WSYNC
		STA	COLPF2
		STA	$D01A
		STA	$D012
		STA	$D013
		LDA	#$E
		STA	$D017
		LDA	#$14
		STA	$D409
		PLA
		RTI

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1C09:				; CODE XREF: RAM:1AC1p	RAM:1B19p
		LDX	#$77 ; 'w'

loc_1C0B:				; CODE XREF: sub_1C09+Dj
		TXA
		STA	$4F0,X
		STA	$568,X
		STA	$5E0,X
		DEX
		BPL	loc_1C0B
		RTS
; End of function sub_1C09

; ---------------------------------------------------------------------------
unk_1C19:	.BYTE $46 ; F		; DATA XREF: RAM:1B35r
		.BYTE $68 ; h
		.BYTE $88 ; à
byte_1C1C:	.BYTE $B6 ; ∂		; DATA XREF: RAM:loc_23A3r
		.BYTE $76 ; v
		.BYTE $9E ; û
		.BYTE $34 ; 4
		.BYTE	0
unk_1C21:	.BYTE	0		; DATA XREF: sub_1A0D+20r
		.BYTE $27 ; '
		.BYTE $13
unk_1C24:	.BYTE $20		; DATA XREF: RAM:loc_1A96r
		.BYTE $28 ; (
		.BYTE $D0 ; –
		.BYTE $D8 ; ÿ
unk_1C28:	.BYTE $38 ; 8		; DATA XREF: RAM:1A9Cr
		.BYTE $AC ; ¨
		.BYTE	0
		.BYTE	0

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1C2C:				; CODE XREF: RAM:181Bj	RAM:loc_1F4Bj ...
		STX	$1B
		STY	$1C
		STA	$1A
		LDY	$1F
		LDX	$20
		CMP	#$D
		BEQ	loc_1C63
		CMP	#8
		BEQ	loc_1C77
		LDA	#0
		STA	$1E
		TXA
		ASL	A
		ASL	A
		ASL	A
		STA	$1D
		ASL	A
		ROL	$1E
		ASL	A
		ROL	$1E
		ADC	$1D
		STA	$1D
		LDA	$1E
		ADC	#4
		STA	$1E
		LDA	$1A
		ORA	BLINKFLAG
		STA	(off_1D),Y
		INY
		CPY	#$28 ; '('
		BCC	loc_1C6C

loc_1C63:				; CODE XREF: sub_1C2C+Cj
		LDY	#0
		INX
		CPX	#$19
		BCC	loc_1C6C
		LDX	#$18

loc_1C6C:				; CODE XREF: sub_1C2C+35j sub_1C2C+3Cj ...
		STY	$1F
		STX	$20
		LDY	$1C
		LDX	$1B
		LDA	$1A
		RTS
; ---------------------------------------------------------------------------

loc_1C77:				; CODE XREF: sub_1C2C+10j
		DEY
		BPL	loc_1C6C
		LDY	#$27 ; '''
		DEX
		BPL	loc_1C6C
		LDX	#0
		BEQ	loc_1C6C
		RTS
; End of function sub_1C2C


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1C84:				; CODE XREF: RAM:1812j	RAM:2F44p ...
		LDX	#0
		BEQ	loc_1C8E
; End of function sub_1C84


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1C88:				; CODE XREF: RAM:1815j	sub_28D7+1Ep ...
		LDX	#1
		BNE	loc_1C8E

loc_1C8C:				; CODE XREF: RAM:1818j	RAM:2EE0p
		LDX	#2

loc_1C8E:				; CODE XREF: sub_1C84+2j sub_1C88+2j
		STX	$23
		LDA	byte_18C1,X
		STA	$1F
		LDA	byte_18C4,X
		CLC
		ADC	unk_1FA8,X
		STA	$20
		LDA	byte_18C7,X
		STA	BLINKFLAG
		LDA	#0
		STA	$24
		STA	$25
		STA	$26

loc_1CAB:				; CODE XREF: sub_1C88+2Dj RAM:1CEBj ...
		JSR	sub_1F31
		CMP	#$80 ; 'Ä'
		BCS	loc_1CB8
		JSR	loc_1F3C
		JMP	loc_1CAB
; ---------------------------------------------------------------------------

loc_1CB8:				; CODE XREF: sub_1C88+28j
		CMP	#$FF
		BEQ	loc_1CD1
		SEC
		SBC	#$A0 ; '†'
		CMP	#$15
		BCS	loc_1CCF
		LDX	$23
		TAY
		LDA	unk_1FD4,Y
		PHA
		LDA	unk_1FBF,Y
		PHA
		RTS
; ---------------------------------------------------------------------------

loc_1CCF:				; CODE XREF: sub_1C88+39j
		BRK
; ---------------------------------------------------------------------------
		RTS
; ---------------------------------------------------------------------------

loc_1CD1:				; CODE XREF: sub_1C88+32j
		LDX	$23
		LDA	$1F
		STA	byte_18C1,X
		LDA	$20
		SEC
		SBC	unk_1FA8,X
		STA	byte_18C4,X
		LDA	BLINKFLAG
		STA	byte_18C7,X
		RTS
; End of function sub_1C88

; ---------------------------------------------------------------------------

loc_1CE7:
		LDA	#0
		STA	BLINKFLAG
		BEQ	loc_1CAB

loc_1CED:
		LDA	#$80
		STA	BLINKFLAG
		BNE	loc_1CAB

loc_1CF3:
		JSR	sub_1F26
		LDA	(off_18),Y
		JSR	sub_1E9D
		JMP	loc_1CAB
; ---------------------------------------------------------------------------
loc_1CFE:
		JSR	sub_1F26
		JSR	sub_1D07
		JMP	loc_1CAB

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1D07:				; CODE XREF: RAM:1D01p
		JMP	(off_18)
; End of function sub_1D07

; ---------------------------------------------------------------------------

loc_1D0A:
		LDA	#0
		STA	byte_1F23

loc_1D0F:				; CODE XREF: RAM:1D28j
		STA	$25
		STA	$26
		LDA	off_16
		STA	$27
		LDA	off_16+1
		STA	$28
		LDA	#$80 ; 'Ä'
		STA	$24
		BMI	loc_1CAB

loc_1D21:
		LDA	#$80 ; 'Ä'
		STA	byte_1F23
		LDA	#0
		BEQ	loc_1D0F

loc_1D2A:
		JSR	sub_1F31
		STA	$1F
		JSR	sub_1F31
		CLC
		ADC	unk_1FA8,X
		STA	$20
		JMP	loc_1CAB
; ---------------------------------------------------------------------------

loc_1D3B:
		LDA	off_16
		STA	$27
		LDA	off_16+1
		STA	$28
		LDA	#$C0 ; '¿'
		STA	$24
		LDA	#0
		STA	$25
		STA	$26
		JMP	loc_1CAB
; ---------------------------------------------------------------------------

loc_1D50:
		LDA	#0
		STA	$1F
		LDA	unk_1FA8,X
		CLC
		ADC	unk_1FAB,X
		STA	$20

loc_1D5D:				; CODE XREF: RAM:1D6Aj
		JSR	loc_1D7A
		DEC	$20
		LDA	$20
		SEC
		SBC	unk_1FA8,X
		CMP	#$FF
		BNE	loc_1D5D
		LDA	unk_1FA8,X
		STA	$20
		JMP	loc_1CAB
; ---------------------------------------------------------------------------

loc_1D74:
		JSR	loc_1D7A
		JMP	loc_1CAB
; ---------------------------------------------------------------------------

loc_1D7A:				; CODE XREF: RAM:loc_1D5Dp RAM:1D74p
		LDY	$20
		LDA	#$28 ; '('
		JSR	sub_1FE9
		CLC
		ADC	#0
		STA	loc_1D91+1
		LDA	3
		ADC	#4
		STA	loc_1D91+2
		LDY	#$27 ; '''
		TXA

loc_1D91:				; CODE XREF: RAM:1D95j
					; DATA XREF: RAM:1D84w	...
		STA	$FFFF,Y
		DEY
		BPL	loc_1D91
		LDX	$23
		RTS
; ---------------------------------------------------------------------------

loc_1D9A:
		BIT	$24
		BMI	loc_1DBD
		LDA	#$28 ; '('
		LDY	$20
		JSR	sub_1FE9
		CLC
		LDA	2
		ADC	#0
		STA	off_9
		LDA	3
		ADC	#4
		STA	off_9+1
		LDY	$1F
		LDA	#$20 ; ' '

loc_1DB6:				; CODE XREF: RAM:1DBBj
		STA	(off_9),Y
		INY
		CPY	#$28 ; '('
		BCC	loc_1DB6

loc_1DBD:				; CODE XREF: RAM:1D9Cj
		JMP	loc_1CAB
; ---------------------------------------------------------------------------

loc_1DC0:
		LDA	#0
		STA	BLINKFLAG
		STA	$24
		JMP	loc_1CAB
; ---------------------------------------------------------------------------

loc_1DC9:
		JSR	sub_1F26

loc_1DCC:				; CODE XREF: RAM:1DD4j
		LDA	(off_18),Y
		STA	$29,Y
		INY
		CPY	#4
		BCC	loc_1DCC
		JMP	loc_1DF9
; ---------------------------------------------------------------------------

loc_1DD9:
		JSR	sub_1F26
		STY	$29
		STY	$2A
		LDA	(off_18),Y
		STA	$2B
		INY
		LDA	(off_18),Y
		STA	$2C
		JMP	loc_1DF9
; ---------------------------------------------------------------------------

loc_1DEC:
		JSR	sub_1F26
		STY	$29
		STY	$2A
		STY	$2B
		LDA	(off_18),Y
		STA	$2C

loc_1DF9:				; CODE XREF: RAM:1DD6j	RAM:1DE9j
		JSR	sub_1F31
		STA	$2D
		SED
		LDA	#0
		LDX	#3

loc_1E03:				; CODE XREF: RAM:1E06j
		STA	2,X
		DEX
		BPL	loc_1E03
		LDX	#$1F

loc_1E0A:				; CODE XREF: RAM:1E2Dj
		ASL	$2C
		ROL	$2B
		ROL	$2A
		ROL	$29
		LDA	5
		ADC	5
		STA	5
		LDA	4
		ADC	4
		STA	4
		LDA	3
		ADC	3
		STA	3
		LDA	2
		ADC	2
		STA	2
		BCS	loc_1E7E
		DEX
		BPL	loc_1E0A
		CLD
		LDX	#0
		LDY	#0

loc_1E34:				; CODE XREF: RAM:1E3Aj
		JSR	sub_1E8B
		INX
		CPX	#4
		BCC	loc_1E34
		LDX	#0
		LDY	#8

loc_1E40:				; CODE XREF: RAM:1E47j
		LDA	byte_18CA,X
		BNE	loc_1E4B
		INX
		DEY
		BNE	loc_1E40
		DEX
		INY

loc_1E4B:				; CODE XREF: RAM:1E43j
		SEC
		LDA	$2D
		SBC	unk_1FAE,Y
		BCC	loc_1E7E
		STA	$2D
		LDA	unk_1FB7,X
		TAY

loc_1E59:				; CODE XREF: RAM:1E6Fj
		LDA	byte_18CA,X
		ORA	#$30 ; '0'
		JSR	loc_1F3C
		DEY
		BNE	loc_1E6C
		LDA	#$2C ; ','
		JSR	loc_1F3C
		LDY	$1FB8,X

loc_1E6C:				; CODE XREF: RAM:1E62j
		INX
		CPX	#8
		BCC	loc_1E59
		BIT	byte_18FE
		BMI	loc_1E88
		LDA	$2D
		BEQ	loc_1E88
		LDA	#$20 ; ' '
		BNE	loc_1E81

loc_1E7E:				; CODE XREF: RAM:1E2Aj	RAM:1E51j
		CLD
		LDA	#$21 ; '!'

loc_1E81:				; CODE XREF: RAM:1E7Cj	RAM:1E86j
		JSR	loc_1F3C
		DEC	$2D
		BNE	loc_1E81

loc_1E88:				; CODE XREF: RAM:1E74j	RAM:1E78j
		JMP	loc_1CAB

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1E8B:				; CODE XREF: RAM:loc_1E34p
		LDA	2,X
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		JSR	sub_1E98
		LDA	2,X
		AND	#$F
; End of function sub_1E8B


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1E98:				; CODE XREF: sub_1E8B+6p
		STA	byte_18CA,Y
		INY
		RTS
; End of function sub_1E98


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1E9D:				; CODE XREF: RAM:1CF8p
		PHA
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		JSR	sub_1EA8
		PLA
		AND	#$F
; End of function sub_1E9D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1EA8:				; CODE XREF: sub_1E9D+5p
		CLC
		ADC	#$30 ; '0'
		CMP	#$3A ; ':'
		BCC	loc_1EB1
		ADC	#6

loc_1EB1:				; CODE XREF: sub_1EA8+5j
		JMP	loc_1F3C
; End of function sub_1EA8

; ---------------------------------------------------------------------------

loc_1EB4:
		JSR	sub_1F26
		JSR	sub_1F31
		STA	$2D
		JMP	loc_1ED4
; ---------------------------------------------------------------------------

loc_1EBF:
		JSR	sub_1F26
		JSR	sub_1F31
		STA	$2D
		LDA	(off_18),Y
		PHA
		INY
		LDA	(off_18),Y
		STA	off_18+1
		PLA
		STA	off_18
		LDY	#0

loc_1ED4:				; CODE XREF: RAM:1EBCj	RAM:1EDEj
		LDA	(off_18),Y
		BEQ	loc_1EE0
		JSR	loc_1F3C
		INY
		CPY	$2D
		BCC	loc_1ED4

loc_1EE0:				; CODE XREF: RAM:1ED6j
		JMP	loc_1CAB
; ---------------------------------------------------------------------------

loc_1EE3:
		JSR	sub_1F26
		LDA	off_16
		STA	byte_1F24
		LDA	off_16+1
		STA	byte_1F25
		LDA	off_18
		STA	off_16
		LDA	off_18+1
		STA	off_16+1
		JMP	loc_1CAB
; ---------------------------------------------------------------------------

loc_1EFB:
		JSR	sub_1F26
		LDA	off_16
		STA	byte_1F24
		LDA	off_16+1
		STA	byte_1F25
		LDY	#0
		LDA	(off_18),Y
		STA	off_16
		INY
		LDA	(off_18),Y
		STA	off_16+1
		JMP	loc_1CAB
; ---------------------------------------------------------------------------

loc_1F16:
		LDA	byte_1F24
		STA	off_16
		LDA	byte_1F25
		STA	off_16+1
		JMP	loc_1CAB
; ---------------------------------------------------------------------------
byte_1F23:	.BYTE 0			; DATA XREF: RAM:1D0Cw	RAM:1D23w ...
byte_1F24:	.BYTE 0			; DATA XREF: RAM:1EE8w	RAM:1F00w ...
byte_1F25:	.BYTE 0			; DATA XREF: RAM:1EEDw	RAM:1F05w ...

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1F26:				; CODE XREF: RAM:1CF3p	RAM:1CFEp ...
		JSR	sub_1F31
		STA	$18
		JSR	sub_1F31
		STA	$19
		RTS
; End of function sub_1F26


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1F31:				; CODE XREF: sub_1C88:loc_1CABp
					; RAM:1D2Ap ...
		LDY	#0
		LDA	(off_16),Y
		INC	off_16
		BNE	locret_1F3B
		INC	off_16+1

locret_1F3B:				; CODE XREF: sub_1F31+6j
		RTS
; End of function sub_1F31

; ---------------------------------------------------------------------------

loc_1F3C:				; CODE XREF: sub_1C88+2Ap RAM:1E5Ep ...
		BIT	$24
		BMI	loc_1F4E
		BIT	$26
		BPL	loc_1F4B
		CMP	#$D
		BNE	loc_1F4B
		STA	$26
		RTS
; ---------------------------------------------------------------------------

loc_1F4B:				; CODE XREF: RAM:1F42j	RAM:1F46j
		JMP	sub_1C2C
; ---------------------------------------------------------------------------

loc_1F4E:				; CODE XREF: RAM:1F3Ej
		CMP	#$D
		BEQ	loc_1F55
		INC	$25
		RTS
; ---------------------------------------------------------------------------

loc_1F55:				; CODE XREF: RAM:1F50j
		LDA	#0
		BIT	$24
		STA	$24
		BVC	loc_1F7D
		LDA	#$28 ; '('
		SEC
		SBC	$25
		CMP	#$28 ; '('
		BCC	loc_1F68
		LDA	#0

loc_1F68:				; CODE XREF: RAM:1F64j
		STA	$1F
		BNE	loc_1F70

loc_1F6C:				; CODE XREF: RAM:1FA4j
		LDA	#$80 ; 'Ä'
		STA	$26

loc_1F70:				; CODE XREF: RAM:1F6Aj	RAM:1FA6j
		PLA
		PLA
		LDA	$27
		STA	off_16
		LDA	$28
		STA	off_16+1
		JMP	loc_1CAB
; ---------------------------------------------------------------------------

loc_1F7D:				; CODE XREF: RAM:1F5Bj
		LDA	#$28 ; '('
		SEC
		SBC	$25
		LSR	A
		BPL	loc_1F87
		LDA	#0

loc_1F87:				; CODE XREF: RAM:1F83j
		STA	loc_1F9A+1
		BIT	byte_1F23
		BPL	loc_1F9E
		LDA	#0
		STA	$1F

loc_1F93:				; CODE XREF: RAM:1F9Cj
		LDA	#$20 ; ' '
		JSR	sub_1C2C
		LDA	$1F

loc_1F9A:				; DATA XREF: RAM:loc_1F87w
		CMP	#$FF
		BNE	loc_1F93

loc_1F9E:				; CODE XREF: RAM:1F8Dj
		STA	$1F
		LDA	$25
		CMP	#$28 ; '('
		BEQ	loc_1F6C
		BNE	loc_1F70
; ---------------------------------------------------------------------------
unk_1FA8:	.BYTE	0		; DATA XREF: sub_1C88+11r sub_1C88+53r ...
		.BYTE  $F
		.BYTE	0
unk_1FAB:	.BYTE	5		; DATA XREF: RAM:1D58r
		.BYTE	7
		.BYTE $18
unk_1FAE:	.BYTE	1		; DATA XREF: RAM:1E4Er
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	5
		.BYTE	6
		.BYTE	7
		.BYTE	9
		.BYTE  $A
unk_1FB7:	.BYTE	2		; DATA XREF: RAM:1E55r
		.BYTE	1
		.BYTE	3
		.BYTE	2
		.BYTE	1
		.BYTE	9
		.BYTE	9
		.BYTE	9
unk_1FBF:	.BYTE	<(loc_1CE7-1)	; DATA XREF: sub_1C88+42r
		.BYTE	<(loc_1CED-1)
		.BYTE	<(loc_1D21-1)
		.BYTE	<(loc_1CFE-1)
		.BYTE	<(loc_1CF3-1)
		.BYTE	<(loc_1D0A-1)
		.BYTE	<(loc_1D2A-1)
		.BYTE	<(loc_1D3B-1)
		.BYTE	<(loc_1D50-1)
		.BYTE	<(loc_1D74-1)
		.BYTE	<(loc_1DC0-1)
		.BYTE	<(loc_1D9A-1)
		.BYTE	<(loc_1EE3-1)
		.BYTE	<(loc_1EFB-1)
		.BYTE	<(loc_1F16-1)
		.BYTE	<(loc_1CCF-1)
		.BYTE	<(loc_1DC9-1)
		.BYTE	<(loc_1DD9-1)
		.BYTE	<(loc_1DEC-1)
		.BYTE	<(loc_1EB4-1)
		.BYTE	<(loc_1EBF-1)
unk_1FD4:	.BYTE	>(loc_1CE7-1)	; DATA XREF: sub_1C88+3Er
		.BYTE	>(loc_1CED-1)
		.BYTE	>(loc_1D21-1)
		.BYTE	>(loc_1CFE-1)
		.BYTE	>(loc_1CF3-1)
		.BYTE	>(loc_1D0A-1)
		.BYTE	>(loc_1D2A-1)
		.BYTE	>(loc_1D3B-1)
		.BYTE	>(loc_1D50-1)
		.BYTE	>(loc_1D74-1)
		.BYTE	>(loc_1DC0-1)
		.BYTE	>(loc_1D9A-1)
		.BYTE	>(loc_1EE3-1)
		.BYTE	>(loc_1EFB-1)
		.BYTE	>(loc_1F16-1)
		.BYTE	>(loc_1CCF-1)
		.BYTE	>(loc_1DC9-1)
		.BYTE	>(loc_1DD9-1)
		.BYTE	>(loc_1DEC-1)
		.BYTE	>(loc_1EB4-1)
		.BYTE	>(loc_1EBF-1)

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_1FE9:				; CODE XREF: RAM:1D7Ep	RAM:1DA2p
		STA	4
		STY	5
		LDA	#0
		STA	3
		LDX	#8

loc_1FF3:				; CODE XREF: sub_1FE9+19j
		ASL	A
		ROL	3
		ASL	5
		BCC	loc_2001
		CLC
		ADC	4
		BCC	loc_2001
		INC	3

loc_2001:				; CODE XREF: sub_1FE9+Fj sub_1FE9+14j
		DEX
		BNE	loc_1FF3
		STA	2
		RTS
; End of function sub_1FE9

; ---------------------------------------------------------------------------

byte_2007:
		.BYTE $A8,$FF

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2009:				; CODE XREF: sub_20F7+Dp
		LDA	#7
		AND	$237
		ORA	#$20 ; ' '
		STA	$237
		STA	$D20F
		LDA	#$C7 ; '«'
		AND	$236
		ORA	#$10

loc_201D:				; CODE XREF: sub_21B7+17j
		STA	$236
		STA	$D20E
		LDA	#$28 ; '('
		STA	$D208
		LDA	#$A0 ; '†'
		STA	$D207,X
		STA	$D205
		STA	$D203
		STA	$D201
		RTS
; End of function sub_2009


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2037:				; CODE XREF: sub_248E:loc_20EDp
					; sub_20F7+28p
		LDA	#$C7 ; '«'
		AND	$236
		STA	$236
		STA	$D20E
		LDX	#6
		LDA	#0

loc_2046:				; CODE XREF: sub_2037+14j
		STA	$D201,X
		DEX
		DEX
		BPL	loc_2046
		RTS
; End of function sub_2037

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_248E

loc_204E:				; CODE XREF: sub_248E+12j
		LDA	#1
		STA	$23F

loc_2053:				; CODE XREF: sub_248E-3A4j
		LDA	#$D
		STA	$23E

loc_2058:				; CODE XREF: sub_248E-3FCj
		LDX	#3

loc_205A:				; CODE XREF: sub_248E-42Dj
		LDA	$230,X
		STA	$266,X
		DEX
		BPL	loc_205A
		LDA	#$28 ; '('
		STA	$D204
		LDA	#0
		STA	$D206
		CLC
		CLC
		LDA	#$66 ; 'f'
		STA	off_0
		ADC	#4
		STA	off_23A
		LDA	#2
		STA	off_0+1
		STA	off_23A+1
		LDA	#$34 ; '4'
		STA	$D303
		JSR	sub_20F7
		LDA	$257
		BNE	loc_208F
		TYA
		BNE	loc_2097

loc_208F:				; CODE XREF: sub_248E-404j
					; sub_248E-3E7j
		DEC	$23E
		BPL	loc_2058
		JMP	loc_20E5
; ---------------------------------------------------------------------------

loc_2097:				; CODE XREF: sub_248E-401j
		LDA	$246
		BPL	loc_20A9
		LDA	#$D
		STA	$23E
		JSR	sub_21D1
		JSR	sub_20F7
		BEQ	loc_208F

loc_20A9:				; CODE XREF: sub_248E-3F4j
		LDA	$247
		ROR	A
		ROR	A
		TAY
		AND	#$3F ; '?'
		TAX
		TYA
		ROR	A
		AND	#$C0 ; '¿'
		TAY
		LDA	#0
		STA	$257
		JSR	sub_2126
		BEQ	loc_20D3
		BIT	$246
		BVS	loc_20CD
		LDA	$257
		BNE	loc_20E5
		BEQ	loc_20ED

loc_20CD:				; CODE XREF: sub_248E-3CAj
		JSR	sub_21D1
		JSR	sub_218E

loc_20D3:				; CODE XREF: sub_248E-3CFj
		LDA	$257
		BEQ	loc_20DE
		LDA	$238
		STA	$23D

loc_20DE:				; CODE XREF: sub_248E-3B8j
		LDA	$23D
		CMP	#1
		BEQ	loc_20ED

loc_20E5:				; CODE XREF: sub_248E-3FAj
					; sub_248E-3C5j
		DEC	$23F
		BMI	loc_20ED
		JMP	loc_2053
; ---------------------------------------------------------------------------

loc_20ED:				; CODE XREF: sub_248E-3C3j
					; sub_248E-3ABj ...
		JSR	sub_2037
		LDY	$23D
		STY	$246
		RTS
; END OF FUNCTION CHUNK	FOR sub_248E

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_20F7:				; CODE XREF: sub_248E-40Ap
					; sub_248E-3EAp
		LDX	#0

loc_20F9:				; CODE XREF: sub_20F7+3j
		DEX
		BNE	loc_20F9

loc_20FC:				; CODE XREF: sub_20F7+6j
		DEX
		BNE	loc_20FC
		LDA	#1
		STA	$23D
		JSR	sub_2009
		LDY	#0
		STY	$23C
		STY	$243
		STY	$241
		LDA	(off_0),Y
		STA	$D20D
		STA	$23C

loc_211A:				; CODE XREF: sub_20F7+26j
		LDA	$241
		BEQ	loc_211A
		JSR	sub_2037
		LDY	#2
		LDX	#0
; End of function sub_20F7


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2126:				; CODE XREF: sub_248E-3D2p
		LDA	#0
		STA	$239
		STY	$24C
		STX	$24D
		INC	$239
		LDA	#0
		STA	$257
		CLC
		LDA	#$70 ; 'p'
		STA	off_0
		ADC	#1
		STA	off_23A
		LDA	#2
		STA	off_0+1
		STA	off_23A+1
		LDA	#$FF
		STA	$245
		JSR	sub_218E
		LDY	#$FF
		LDA	$23D
		CMP	#1
		BNE	loc_2176
		LDA	$270
		CMP	#'A'
		BEQ	loc_2186
		CMP	#'C'
		BEQ	loc_2186
		CMP	#'E'
		BNE	loc_2171
		LDA	#$90 ; 'ê'
		STA	$23D
		BNE	loc_2176

loc_2171:				; CODE XREF: sub_2126+42j
		LDA	#$8B ; 'ã'
		STA	$23D

loc_2176:				; CODE XREF: sub_2126+33j sub_2126+49j
		LDA	$23D
		CMP	#$8A ; 'ä'
		BEQ	loc_2184
		LDA	#$FF
		STA	$257
		BNE	loc_2186

loc_2184:				; CODE XREF: sub_2126+55j
		LDY	#0

loc_2186:				; CODE XREF: sub_2126+3Aj sub_2126+3Ej ...
		LDA	$23D
		STA	$238
		TYA
		RTS
; End of function sub_2126


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_218E:				; CODE XREF: sub_248E-3BEp
					; sub_2126+29p
		LDA	#0
		STA	$23C
		STA	$242
		STA	$240
		LDA	#1
		STA	$23D
		JSR	sub_21B7
		LDA	#$3C ; '<'
		STA	$D303

loc_21A6:				; CODE XREF: sub_218E+20j
		LDA	$239
		BEQ	loc_21B1
		LDA	$240
		BEQ	loc_21A6
		RTS
; ---------------------------------------------------------------------------

loc_21B1:				; CODE XREF: sub_218E+1Bj
		LDA	#$8A ; 'ä'
		STA	$23D
		RTS
; End of function sub_218E


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_21B7:				; CODE XREF: sub_218E+10p
		LDA	#7
		AND	$237
		ORA	#$10
		STA	$237
		STA	$D20F
		STA	SKREST
		LDA	#$C7 ; '«'
		AND	$236
		ORA	#$20 ; ' '
		JMP	loc_201D
; End of function sub_21B7


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_21D1:				; CODE XREF: sub_248E-3EDp
					; sub_248E:loc_20CDp
		CLC
		LDA	#0
		STA	off_0
		ADC	$234
		STA	off_23A
		LDA	#1
		STA	off_0+1
		ADC	$235
		STA	off_23A+1
		RTS
; End of function sub_21D1

; ---------------------------------------------------------------------------

loc_21E7:
		TYA
		PHA
		LDA	$D20F
		STA	SKREST
		BMI	loc_21F6
		LDY	#$8C ; 'å'
		STY	$23D

loc_21F6:				; CODE XREF: RAM:21EFj
		AND	#$20 ; ' '
		BNE	loc_21FF
		LDY	#$8E ; 'é'
		STY	$23D

loc_21FF:				; CODE XREF: RAM:21F8j
		LDA	$242
		BEQ	loc_221A
		LDA	$D20D
		CMP	$23C
		BEQ	loc_2211
		LDY	#$8F ; 'è'
		STY	$23D

loc_2211:				; CODE XREF: RAM:220Aj	RAM:2246j
		LDA	#$FF
		STA	$240

loc_2216:				; CODE XREF: RAM:223Aj	RAM:224Dj
		PLA
		TAY
		PLA
		RTI
; ---------------------------------------------------------------------------

loc_221A:				; CODE XREF: RAM:2202j
		LDA	$D20D
		LDY	#0
		STA	(off_0),Y
		CLC
		ADC	$23C
		ADC	#0
		STA	$23C
		INC	off_0
		BNE	loc_2230
		INC	off_0+1

loc_2230:				; CODE XREF: RAM:222Cj
		LDA	off_0
		CMP	off_23A
		LDA	off_0+1
		SBC	off_23A+1
		BCC	loc_2216
		LDA	$245
		BEQ	loc_2248
		LDA	#0
		STA	$245
		BEQ	loc_2211

loc_2248:				; CODE XREF: RAM:223Fj
		LDA	#$FF
		STA	$242
		BNE	loc_2216

loc_224F:
		TYA
		PHA
		INC	off_0
		BNE	loc_2257
		INC	off_0+1

loc_2257:				; CODE XREF: RAM:2253j
		LDA	off_0
		CMP	off_23A
		LDA	off_0+1
		SBC	off_23A+1
		BCC	loc_2284
		LDA	$243
		BNE	loc_2275
		LDA	$23C
		STA	$D20D
		LDA	#$FF
		STA	$243
		BNE	loc_2280

loc_2275:				; CODE XREF: RAM:2266j
		LDA	$236
		ORA	#8
		STA	$236
		STA	$D20E

loc_2280:				; CODE XREF: RAM:2273j	RAM:2294j
		PLA
		TAY
		PLA
		RTI
; ---------------------------------------------------------------------------

loc_2284:				; CODE XREF: RAM:2261j
		LDY	#0
		LDA	(off_0),Y
		STA	$D20D
		CLC
		ADC	$23C
		ADC	#0
		STA	$23C
		JMP	loc_2280
; ---------------------------------------------------------------------------

loc_2297:
		LDA	$243
		BEQ	loc_22AA
		STA	$241
		LDA	$236
		AND	#$F7 ; '˜'
		STA	$236
		STA	$D20E

loc_22AA:				; CODE XREF: RAM:229Aj
		PLA
		RTI
; ---------------------------------------------------------------------------

loc_22AC:
		PHA
		LDA	$D20E
		AND	#$20 ; ' '
		BNE	loc_22C2
		LDA	#$DF ; 'ﬂ'
		STA	$D20E
		LDA	$236
		STA	$D20E
		JMP	(off_20A)
; ---------------------------------------------------------------------------

loc_22C2:				; CODE XREF: RAM:22B2j
		TXA
		PHA
		LDX	#2

loc_22C6:				; CODE XREF: RAM:22D8j
		LDA	unk_2301,X
		CPX	#1
		BNE	loc_22D2
		AND	$236
		BEQ	loc_22D7

loc_22D2:				; CODE XREF: RAM:22CBj
		BIT	$D20E
		BEQ	loc_22DC

loc_22D7:				; CODE XREF: RAM:22D0j
		DEX
		BPL	loc_22C6
		BMI	loc_22F7

loc_22DC:				; CODE XREF: RAM:22D5j
		EOR	#$FF
		STA	$D20E
		LDA	$236
		STA	$D20E
		LDA	unk_2304,X
		STA	loc_22F4+1
		LDA	#2
		STA	loc_22F4+2
		PLA
		TAX

loc_22F4:				; DATA XREF: RAM:22EAw	RAM:22EFw
		.BYTE	$6C		; bytes for JMP ($FFFF)
		.WORD	$FFFF		; to prevent assembler warning
; ---------------------------------------------------------------------------

loc_22F7:				; CODE XREF: RAM:22DAj
		PLA
		TAX
		LDA	$D300
		LDA	PORTB
		PLA
		RTI
; ---------------------------------------------------------------------------
unk_2301:	.BYTE $40 ; @		; DATA XREF: RAM:loc_22C6r
		.BYTE	8
		.BYTE $10
unk_2304:	.BYTE	8		; DATA XREF: RAM:22E7r
		.BYTE  $E
		.BYTE  $C
unk_2307:	.BYTE $22 ; "		; DATA XREF: RAM:234Er
		.BYTE $22 ; "
		.BYTE $2E ; .
; ---------------------------------------------------------------------------

loc_230A:				; CODE XREF: RAM:235Ej
		LDA	#$F5 ; 'ı'
		STA	$D402
		LDA	#$19
		STA	$D403
		LDA	#$40 ; '@'
		STA	$D40E
		LDA	#$21 ; '!'
		STA	$D400
		LDA	$239
		BEQ	loc_2344
		LDA	$24C
		ORA	$24D
		BEQ	loc_2344
		SEC
		LDA	$24C
		SBC	#1
		STA	$24C
		LDA	$24D
		SBC	#0
		STA	$24D
		ORA	$24C
		BNE	loc_2344
		STA	$239

loc_2344:				; CODE XREF: RAM:2321j	RAM:2329j ...
		JMP	loc_244B
; ---------------------------------------------------------------------------

loc_2347:
		CLD
		INC	$252
		LDX	byte_18B9
		LDA	unk_2307,X
		STA	$D400
		LDA	#$14
		STA	$D409
		LDA	$253
		BEQ	loc_236F
		BMI	loc_230A
		DEC	$253
		LDA	#$A
		STA	$D402
		LDA	#$1A
		STA	$D403
		BNE	loc_2344

loc_236F:				; CODE XREF: RAM:235Cj
		LDA	$254
		STA	$D402
		LDA	$255
		STA	$D403
		LDA	off_248
		STA	off_200
		LDA	off_248+1
		STA	off_200+1
		LDA	#$C0 ; '¿'
		STA	$D40E
		LDA	$256
		BEQ	loc_2394
		JMP	loc_244B
; ---------------------------------------------------------------------------

loc_2394:				; CODE XREF: RAM:238Fj
		INC	$256
		LDX	byte_18B9
		DEX
		BNE	loc_23A1
		DEX
		STX	$D011

loc_23A1:				; CODE XREF: RAM:239Bj
		LDX	#5

loc_23A3:				; CODE XREF: RAM:23AAj
		LDA	byte_1C1C,X
		STA	COLPM3,X
		DEX
		BNE	loc_23A3
		STX	byte_18B8
		STX	byte_18B7
		LDX	byte_18B9
		BNE	loc_23BA
		STX	COLPF2

loc_23BA:				; CODE XREF: RAM:23B5j
		JSR	sub_267A
		LDX	$32
		BMI	loc_242E
		BIT	byte_1955
		BPL	loc_23C9
		JSR	loc_24E5

loc_23C9:				; CODE XREF: RAM:23C4j
		INC	$33
		LDA	$33
		CMP	#4
		BCC	loc_242E
		STX	$33
		BIT	byte_1955
		BMI	loc_23EF
		DEC	byte_24FF
		BPL	loc_23E5
		LDA	#2
		STA	byte_24FF
		JSR	loc_24E5

loc_23E5:				; CODE XREF: RAM:23DBj
		INC	$34
		LDA	$34
		CMP	#$3C ; '<'
		BCC	loc_242E
		STX	$34

loc_23EF:				; CODE XREF: RAM:23D6j
		LDA	$50
		BNE	loc_23F6
		INC	byte_1962

loc_23F6:				; CODE XREF: RAM:23F1j
		STX	$50
		STX	$50
		INC	$35
		LDA	$35
		CMP	#$3C ; '<'
		BCC	loc_242E
		STX	$35
		INC	$36
		LDA	$36
		CMP	#$18
		BCC	loc_242E
		STX	$36
		INC	$3B
		BNE	loc_2414
		INC	$3C

loc_2414:				; CODE XREF: RAM:2410j
		INC	$37
		LDA	$37
		CMP	#$1E
		BCC	loc_242E
		STX	$37
		INC	$38
		LDA	$38
		CMP	#$C
		BCC	loc_242E
		STX	$38
		INC	$3A
		BNE	loc_242E
		INC	$39

loc_242E:				; CODE XREF: RAM:23BFj	RAM:23CFj ...
		LDX	#0
		LDA	$252
		AND	#$3F ; '?'
		CMP	#8
		BCS	loc_243A
		INX

loc_243A:				; CODE XREF: RAM:2437j
		STX	$D401
		LDA	$22F
		BPL	loc_2445
		JSR	sub_2451

loc_2445:				; CODE XREF: RAM:2440j
		JSR	sub_2503
		DEC	$256

loc_244B:				; CODE XREF: RAM:loc_2344j RAM:2391j
		PLA
		TAY
		PLA
		TAX
		PLA
		RTI

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2451:				; CODE XREF: RAM:2442p
		JMP	(off_224)
; End of function sub_2451


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2454:				; CODE XREF: sub_1A0D+11p sub_245D+12p
		LDA	$252

loc_2457:				; CODE XREF: sub_2454+6j
		CMP	$252
		BEQ	loc_2457
		RTS
; End of function sub_2454


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_245D:				; CODE XREF: RAM:1827j	sub_275B+3p
		LDA	#7
		STA	$237
		LDA	#$80 ; 'Ä'
		STA	$253
		LDX	#0
		STX	$236
		STX	$D20E
		JSR	sub_2454
		STX	$D01A
		STX	COLPF2
		TXA
		STA	byte_199C
		LDX	#3

loc_247E:				; CODE XREF: sub_245D+2Bj
		STA	$D00D,X
		STA	$D200,X
		STA	$D204,X
		DEX
		BPL	loc_247E
		STX	$D017
		RTS
; End of function sub_245D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_248E:				; CODE XREF: RAM:182Dj
					; sub_2979:loc_298Ap

; FUNCTION CHUNK AT 204E SIZE 000000A9 BYTES

		LDA	#$52 ; 'R'
		LDX	#$40 ; '@'
		LDY	#3

loc_2494:				; CODE XREF: RAM:1833j	RAM:24B6p
		STA	$231
		STY	$247
		STX	$23D
		STX	$246
		JMP	loc_204E
; End of function sub_248E

; ---------------------------------------------------------------------------
		LDA	#0
		STA	$100
		STA	$235
		LDA	#4
		STA	$234
		LDA	#$53 ; 'S'
		LDX	#$40 ; '@'
		LDY	#3
		JSR	loc_2494
		PHP
		LDA	#$80 ; 'Ä'
		STA	$234
		LDA	#0
		STA	$235
		PLP
		RTS
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_275B

loc_24C6:				; CODE XREF: RAM:1830j
					; sub_275B:loc_2782j ...
		PHP
		LDA	#$40 ; '@'
		STA	$236
		STA	$D20E
		LDA	#3
		STA	$D20F
		LDA	#0
		STA	$D208
		LDA	#1
		STA	$253

loc_24DE:				; CODE XREF: sub_275B-27Aj
		LDA	$253
		BNE	loc_24DE
		PLP
		RTS
; END OF FUNCTION CHUNK	FOR sub_275B
; ---------------------------------------------------------------------------

loc_24E5:				; CODE XREF: RAM:23C6p	RAM:23E2p
		LDA	$453
		CMP	#$7B ; '{'
		BCC	locret_24FA
		INC	loc_24EF+1

loc_24EF:				; DATA XREF: RAM:24ECw
		LDA	#$FF
		AND	#3
		TAX
		LDA	unk_24FB,X
		STA	$453

locret_24FA:				; CODE XREF: RAM:24EAj
		RTS
; ---------------------------------------------------------------------------
unk_24FB:	.BYTE $7B ; {		; DATA XREF: RAM:24F4r
		.BYTE $7C ; |
		.BYTE $7D ; }
		.BYTE $7E ; ~
byte_24FF:	.BYTE 2			; DATA XREF: RAM:23D8w	RAM:23DFw
		.BYTE	0
		.BYTE	0
		.BYTE	0

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2503:				; CODE XREF: RAM:loc_2445p
		LDA	byte_199C
		BMI	loc_250B
		JMP	loc_254F
; ---------------------------------------------------------------------------

loc_250B:				; CODE XREF: sub_2503+3j
		AND	#$7F ; ''
		TAX
		LDA	#0
		LDY	#8
		STA	byte_199C

loc_2515:				; CODE XREF: sub_2503+16j
		STA	$D200,Y
		DEY
		BPL	loc_2515
		LDA	unk_2623,X
		STA	$F0
		LDA	unk_2629,X
		STA	$F1
		LDA	unk_2617,X
		STA	$F2
		LDA	unk_261D,X
		STA	$F3
		LDA	#1
		STA	byte_25BE
		LDA	#4
		STA	byte_25BF
		LDA	unk_2611,X
		STA	byte_25C0
		STA	byte_25C1
		STX	byte_25C3
		LDY	unk_25E5,X
		STY	$D208
		STA	byte_199C
		RTS
; ---------------------------------------------------------------------------

loc_254F:				; CODE XREF: sub_2503+5j
		BNE	loc_2552

locret_2551:				; CODE XREF: sub_2503+58j
		RTS
; ---------------------------------------------------------------------------

loc_2552:				; CODE XREF: sub_2503:loc_254Fj
		LDA	byte_25C0
		ORA	byte_25C1
		STA	byte_199C
		BEQ	locret_2551
		LDA	#1
		STA	byte_25C4

loc_2562:				; CODE XREF: sub_2503+65j
		JSR	sub_256B
		DEC	byte_25C4
		BPL	loc_2562
		RTS
; End of function sub_2503


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_256B:				; CODE XREF: sub_2503:loc_2562p
		LDX	byte_25C4
		DEC	byte_25BE,X
		BNE	loc_25AB
		DEC	byte_25C0,X
		BEQ	locret_25AA
		LDY	byte_25C0,X
		DEY
		LDA	(off_F2),Y
		STA	byte_25BE,X
		LDA	(off_F0),Y
		STA	byte_25C2
		TXA
		ASL	A
		ASL	A
		TAY
		LSR	A
		ADC	byte_25C2
		STA	$D200,Y
		CLC
		ADC	#1
		STA	$D202,Y
		LDX	byte_25C3
		LDA	unk_25EB,X
		CPY	#0
		BNE	loc_25A4
		CLC
		ADC	#3

loc_25A4:				; CODE XREF: sub_256B+34j
		STA	$D201,Y
		STA	$D202,Y

locret_25AA:				; CODE XREF: sub_256B+Bj
		RTS
; ---------------------------------------------------------------------------

loc_25AB:				; CODE XREF: sub_256B+6j
		LDA	byte_25BE,X
		CMP	#1
		BNE	locret_25BD
		TXA
		ASL	A
		TAX
		LDA	#0
		STA	$D201,X
		STA	$D203,X

locret_25BD:				; CODE XREF: sub_256B+45j
		RTS
; End of function sub_256B

; ---------------------------------------------------------------------------
byte_25BE:	.BYTE 0			; DATA XREF: sub_2503+2Ew sub_256B+3w	...
byte_25BF:	.BYTE 0			; DATA XREF: sub_2503+33w
byte_25C0:	.BYTE 0			; DATA XREF: sub_2503+39w
					; sub_2503:loc_2552r ...
byte_25C1:	.BYTE 0			; DATA XREF: sub_2503+3Cw sub_2503+52r
byte_25C2:	.BYTE 0			; DATA XREF: sub_256B+18w sub_256B+20r
byte_25C3:	.BYTE 0			; DATA XREF: sub_2503+3Fw sub_256B+2Cr
byte_25C4:	.BYTE 0			; DATA XREF: sub_2503+5Cw sub_2503+62w ...

byte_25C5:
		.BYTE $CC ; Ã
		.BYTE $B6 ; ∂
		.BYTE $AD ; ≠

byte_25C8:
		.BYTE $F0 ; 
		.BYTE $FF
		.BYTE $EE ; Ó
		.BYTE $F8 ; ¯

byte_25CC:
		.BYTE $88 ; à
		.BYTE $88 ; à
		.BYTE $72 ; r
		.BYTE $99 ; ô
		.BYTE $88 ; à
		.BYTE $66 ; f

byte_25D2:
		.BYTE $FC ; ¸
		.BYTE $AD ; ≠
		.BYTE $A2 ; ¢
		.BYTE $99 ; ô
		.BYTE $F3 ; Û

byte_25D7:
		.BYTE $66 ; f
		.BYTE $4C ; L
		.BYTE $4C ; L
		.BYTE $5B ; [
		.BYTE $5B ; [
		.BYTE $5B ; [
		.BYTE $5B ; [

byte_25DE:
		.BYTE $79 ; y
		.BYTE $90 ; ê
		.BYTE $80 ; Ä
		.BYTE $79 ; y
		.BYTE $60 ; `
		.BYTE $55 ; U
		.BYTE $60 ; `
unk_25E5:	.BYTE	0		; DATA XREF: sub_2503+42r
		.BYTE $40 ; @
		.BYTE	4
		.BYTE	7
		.BYTE	7
		.BYTE	6
unk_25EB:	.BYTE $A1 ; °		; DATA XREF: sub_256B+2Fr
		.BYTE	1
		.BYTE $A1 ; °
		.BYTE $A1 ; °
		.BYTE $A1 ; °
		.BYTE $A1 ; °

byte_25F1:
		.BYTE $40 ; @
		.BYTE	8
		.BYTE	8

byte_25F4:
		.BYTE	4
		.BYTE	1
		.BYTE	3
		.BYTE	3

byte_25F8:
		.BYTE $10
		.BYTE	8
		.BYTE	8
		.BYTE	6
		.BYTE	5
		.BYTE	5

byte_25FE:
		.BYTE $50 ; P
		.BYTE $2F ; /
		.BYTE	8
		.BYTE $26 ; &
		.BYTE $2F ; /

byte_2603:
		.BYTE $61 ; a
		.BYTE  $C
		.BYTE  $C
		.BYTE $17
		.BYTE  $C
		.BYTE $17
		.BYTE  $C

byte_260A:
		.BYTE $20
		.BYTE $40 ; @
		.BYTE	8
		.BYTE	8
		.BYTE	8
		.BYTE	8
		.BYTE	8
unk_2611:	.BYTE	4		; DATA XREF: sub_2503+36r
		.BYTE	5
		.BYTE	7
		.BYTE	6
		.BYTE	8
		.BYTE	8
unk_2617:	.BYTE	<byte_25F1	; DATA XREF: sub_2503+22r
		.BYTE	<byte_25F4
		.BYTE	<byte_25F8
		.BYTE	<byte_25FE
		.BYTE	<byte_2603
		.BYTE	<byte_260A
unk_261D:	.BYTE	>byte_25F1	; DATA XREF: sub_2503+27r
		.BYTE	>byte_25F4
		.BYTE	>byte_25F8
		.BYTE	>byte_25FE
		.BYTE	>byte_2603
		.BYTE	>byte_260A
unk_2623:	.BYTE	<byte_25C5	; DATA XREF: sub_2503+18r
		.BYTE	<byte_25C8
		.BYTE	<byte_25CC
		.BYTE	<byte_25D2
		.BYTE	<byte_25D7
		.BYTE	<byte_25DE
unk_2629:	.BYTE	>byte_25C5	; DATA XREF: sub_2503+1Dr
		.BYTE	>byte_25C8
		.BYTE	>byte_25CC
		.BYTE	>byte_25D2
		.BYTE	>byte_25D7
		.BYTE	>byte_25DE

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_262F:				; CODE XREF: RAM:1821j
					; sub_28D7:loc_2908p
		LDA	$D010
		LSR	A
		LDA	$D300
		AND	#$F
		BCC	loc_263C
		ORA	#$80 ; 'Ä'

loc_263C:				; CODE XREF: sub_262F+9j
		EOR	#$8F ; 'è'
		ORA	$2F
		STA	$2E
		RTS
; End of function sub_262F


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2643:				; CODE XREF: RAM:181Ej	sub_28D7+36p ...
		LDA	$30
		BMI	loc_2650
		STA	$31
		ORA	#$80 ; 'Ä'
		STA	$30
		AND	#$7F ; ''
		RTS
; ---------------------------------------------------------------------------

loc_2650:				; CODE XREF: sub_2643+2j
		STA	$31
		RTS
; End of function sub_2643

; ---------------------------------------------------------------------------

loc_2653:
		TXA
		PHA
		LDA	$30
		BPL	loc_2676
		LDA	byte_18FF
		BNE	loc_2676
		LDA	$D20F
		AND	#$20 ; ' '
		BEQ	loc_2676
		LDA	#4
		STA	byte_18FF
		LDX	KBCODE
		BMI	loc_2676
		LDA	byte_26D1,X
		BMI	loc_2676
		STA	$30

loc_2676:				; CODE XREF: RAM:2657j	RAM:265Cj ...
		PLA
		TAX
		PLA
		RTI

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_267A:				; CODE XREF: RAM:loc_23BAp
		LDA	#8
		STA	$D01F
		LDA	$30
		BPL	loc_26A2
		LDA	$D01F
		CMP	#7
		BNE	loc_269F
		LDA	byte_1900
		CMP	#7
		BEQ	loc_269F
		LDX	#$10
		LSR	A
		BCC	loc_269B
		INX
		LSR	A
		BCC	loc_269B
		INX

loc_269B:				; CODE XREF: sub_267A+1Aj sub_267A+1Ej
		STX	$30
		LDA	#7

loc_269F:				; CODE XREF: sub_267A+Ej sub_267A+15j
		STA	byte_1900

loc_26A2:				; CODE XREF: sub_267A+7j
		LDY	#0
		LDA	$D20F
		AND	#4
		BNE	loc_26BD
		LDX	#4
		LDA	KBCODE

loc_26B0:				; CODE XREF: sub_267A+3Cj
		CMP	unk_2751,X
		BEQ	loc_26BA
		DEX
		BPL	loc_26B0
		BMI	loc_26BD

loc_26BA:				; CODE XREF: sub_267A+39j
		LDY	unk_2756,X

loc_26BD:				; CODE XREF: sub_267A+2Fj sub_267A+3Ej
		STY	$2F
		LDA	byte_18FF
		BEQ	locret_26D0
		LDY	#1
		STY	$D01F
		DEY
		STY	$D01F
		STY	byte_18FF

locret_26D0:				; CODE XREF: sub_267A+48j
		RTS
; End of function sub_267A

; ---------------------------------------------------------------------------
byte_26D1:	.BYTE	"l","j",";",$FF,$FF,"k","+","*" ;DATA XREF: RAM:266Fr
		.BYTE	"o",$FF,"p","u",$0D,"i","-","="
		.BYTE	"v","?","c",$FF,$FF,"b","x","z"
		.BYTE	"4",$FF,"3","6",$1B,"5","2","1"
		.BYTE	","," ",".","n",$FF,"m","/","?"
		.BYTE	"r",$FF,"e","y",$FF,"t","w","q"
		.BYTE	"9",$FF,"0","7",$08,"8","<",">"
		.BYTE	"f","h","d",$FF,$FF,"g","s","a"
		.BYTE	"L","J",":",$FF,$FF,"K",$5C,"^"
		.BYTE	"O",$FF,"P","U",$0D,"I","-","="
		.BYTE	"V","?","C",$FF,$FF,"B","X","Z"
		.BYTE	"$",$FF,"#","&",$FF,"%",$22,"!"
		.BYTE	"["," ","]","N",$FF,"M","?","?"
		.BYTE	"R",$FF,"E","Y",$FF,"T","W","Q"
		.BYTE	"(",$FF,")",$27,$FF,"@","<",">"
		.BYTE	"F","H","D",$FF,$FF,"G","S","A"
unk_2751:	.BYTE  $D	; "i"	; DATA XREF: sub_267A:loc_26B0r
		.BYTE	1	; "j"
		.BYTE	5	; "k"
		.BYTE	0	; "l"
		.BYTE $21	; " "
unk_2756:	.BYTE	1		; DATA XREF: sub_267A:loc_26BAr
		.BYTE	4
		.BYTE	2
		.BYTE	8
		.BYTE $80 ; Ä

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_275B:				; CODE XREF: RAM:1824j	sub_2CFB+52p

; FUNCTION CHUNK AT 24C6 SIZE 0000001F BYTES

		JSR	sub_2788
		JSR	sub_245D
		JSR	sub_28A1
		LDA	#4
		STA	byte_190F

loc_2769:				; CODE XREF: sub_275B+24j
		LDA	$230
		AND	#$F
		TAX
		LDA	$24D,X
		BMI	loc_2779
		JSR	sub_2799
		BCC	loc_2782

loc_2779:				; CODE XREF: sub_275B+17j
		JSR	sub_2785
		DEC	byte_190F
		BNE	loc_2769
		SEC

loc_2782:				; CODE XREF: sub_275B+1Cj
		JMP	loc_24C6
; End of function sub_275B


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2785:				; CODE XREF: sub_275B:loc_2779p
		INC	$230
; End of function sub_2785


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2788:				; CODE XREF: sub_275Bp
		LDA	$230
		CMP	#'1'
		BCC	loc_2793
		CMP	#'5'
		BCC	locret_2798

loc_2793:				; CODE XREF: sub_2788+5j
		LDA	#$31 ; '1'
		STA	$230

locret_2798:				; CODE XREF: sub_2788+9j
		RTS
; End of function sub_2788


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2799:				; CODE XREF: sub_275B+19p
		JSR	sub_2937
		BMI	loc_27D6

loc_279E:				; CODE XREF: sub_2799:loc_27CAj
		JSR	sub_2979
		BMI	loc_27D6
		LDA	#0
		STA	byte_190E
		TAY

loc_27A9:				; CODE XREF: sub_2799+25j
		LDA	$100,Y
		STA	(9),Y
		SEC
		LDA	$B
		SBC	#1
		STA	$B
		BCS	loc_27B9
		DEC	$C

loc_27B9:				; CODE XREF: sub_2799+1Cj
		ORA	$C
		BEQ	loc_27CD
		INY
		BPL	loc_27A9
		TYA
		CLC
		ADC	9
		STA	9
		BCC	loc_27CA
		INC	$A

loc_27CA:				; CODE XREF: sub_2799+2Dj
		JMP	loc_279E
; ---------------------------------------------------------------------------

loc_27CD:				; CODE XREF: sub_2799+22j
		LDA	#0
		STA	byte_190D
		JSR	sub_27DE
		RTS
; ---------------------------------------------------------------------------

loc_27D6:				; CODE XREF: sub_2799+3j sub_2799+8j
		SEC
		RTS
; End of function sub_2799

; ---------------------------------------------------------------------------
		CLC
; ---------------------------------------------------------------------------
		.BYTE $24
; ---------------------------------------------------------------------------
		SEC
		JMP	loc_24C6

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_27DE:				; CODE XREF: sub_2799+39p
		LDY	#0

loc_27E0:				; CODE XREF: sub_27DE+12j
		LDX	#0

loc_27E2:				; CODE XREF: sub_27DE+10j
		LDA	$180,X
		STA	$100,Y
		INY
		BMI	loc_27F2
		INX
		CPX	#$10
		BCC	loc_27E2
		BCS	loc_27E0

loc_27F2:				; CODE XREF: sub_27DE+Bj
		LDY	#0
		STY	byte_1901
		STY	byte_1902
		LDA	SEGADDR
		STA	9
		LDA	SEGADDR+1
		STA	$A
		LDX	byte_1908
		BEQ	loc_2827
		STX	$C
		LDX	#0

loc_280D:				; CODE XREF: sub_27DE+41j sub_27DE+47j
		LDA	(9),Y
		LSR	A
		BCC	loc_2814
		ORA	#$80 ; 'Ä'

loc_2814:				; CODE XREF: sub_27DE+32j
		EOR	$100,X
		STA	(9),Y
		INX
		BPL	loc_281E
		LDX	#0

loc_281E:				; CODE XREF: sub_27DE+3Cj
		INY
		BNE	loc_280D
		INC	$A
		DEC	$C
		BNE	loc_280D

loc_2827:				; CODE XREF: sub_27DE+29j
		LDX	#0
		LDA	byte_1907
		BEQ	loc_2845

loc_282E:				; CODE XREF: sub_27DE+65j
		LDA	(9),Y
		LSR	A
		BCC	loc_2835
		ORA	#$80 ; 'Ä'

loc_2835:				; CODE XREF: sub_27DE+53j
		EOR	$100,X
		STA	(9),Y
		INX
		BPL	loc_283F
		LDX	#0

loc_283F:				; CODE XREF: sub_27DE+5Dj
		INY
		CPY	byte_1907
		BCC	loc_282E

loc_2845:				; CODE XREF: sub_27DE+4Ej
		LDA	SEGADDR
		STA	9
		LDA	SEGADDR+1
		STA	$A
		LDY	#0
		LDX	byte_1908
		BEQ	loc_286C

loc_2856:				; CODE XREF: sub_27DE+87j sub_27DE+8Cj
		LDA	(9),Y
		CLC
		ADC	byte_1901
		STA	byte_1901
		BCC	loc_2864
		INC	byte_1902

loc_2864:				; CODE XREF: sub_27DE+81j
		INY
		BNE	loc_2856
		INC	$A
		DEX
		BNE	loc_2856

loc_286C:				; CODE XREF: sub_27DE+76j
		LDX	byte_1907
		BEQ	loc_2885

loc_2871:				; CODE XREF: sub_27DE+A5j
		LDA	(9),Y
		CLC
		ADC	byte_1901
		STA	byte_1901
		BCC	loc_287F
		INC	byte_1902

loc_287F:				; CODE XREF: sub_27DE+9Cj
		INY
		CPY	byte_1907
		BCC	loc_2871

loc_2885:				; CODE XREF: sub_27DE+91j
		LDA	byte_1901
		CMP	$184
		BNE	loc_2897
		LDA	byte_1902
		CMP	$185
		BNE	loc_2897
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_2897:				; CODE XREF: sub_27DE+ADj sub_27DE+B5j
		LDA	#0
		STA	$25B
		DEC	$264
		SEC
		RTS
; End of function sub_27DE


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_28A1:				; CODE XREF: RAM:182Aj	sub_275B+6p
		LDA	#0
		STA	off_7+1
		LDA	SEGNO
		LDX	#2

loc_28AA:				; CODE XREF: sub_28A1+Dj
		ASL	A
		ROL	off_7+1
		DEX
		BNE	loc_28AA
		ADC	#$80 ; 'Ä'
		STA	off_7
		LDA	off_7+1
		ADC	#2
		STA	off_7+1		; off_7 = SEGNO << 2 + $0280 ?
		LDY	#3

loc_28BC:				; CODE XREF: sub_28A1+21j
		LDA	(off_7),Y
		STA	$1905,Y
		DEY
		BPL	loc_28BC
		PHA
		AND	#$FC ; '¸'
		STA	$25C
		PLA
		AND	#3
		STA	word_1903+1
		LDA	byte_1906
		STA	word_1903
		RTS
; End of function sub_28A1


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_28D7:				; CODE XREF: SEGLOAD+Cp sub_2CC2+1Bp
		LDA	byte_1905
		LDX	#1
		LSR	A
		LSR	A
		LSR	A
		BCC	loc_28E2
		INX

loc_28E2:				; CODE XREF: sub_28D7+8j
		AND	#3
		CLC
		ADC	#1
		STA	byte_1911
		STX	byte_1910
		LDA	#$9F ; 'ü'
		STA	off_16
		LDA	#$29 ; ')'
		STA	off_16+1
		JSR	sub_1C88
		LDA	byte_190E
		BEQ	loc_2908
		LDA	#7
		STA	off_16
		LDA	#$2A ; '*'
		STA	off_16+1
		JSR	sub_1C88

loc_2908:				; CODE XREF: sub_28D7+24j sub_28D7+43j ...
		JSR	sub_262F
		BMI	loc_2926
		JSR	sub_2643
		CMP	#$10
		BEQ	loc_2926
		CMP	#$20 ; ' '
		BEQ	loc_2926
		CMP	#$1B
		BNE	loc_2908
		LDA	byte_190E
		BEQ	loc_2908
		JSR	sub_292B
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_2926:				; CODE XREF: sub_28D7+34j sub_28D7+3Bj ...
		JSR	sub_292B
		CLC
		RTS
; End of function sub_28D7


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_292B:				; CODE XREF: sub_28D7+4Ap
					; sub_28D7:loc_2926p
		LDA	#7
		STA	off_16
		LDA	#$20 ; ' '
		STA	off_16+1
		JSR	sub_1C88
		RTS
; End of function sub_292B


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2937:				; CODE XREF: sub_2799p
		LDA	SEGADDR
		STA	9
		LDA	SEGADDR+1
		STA	$A
		LDA	word_1903
		STA	word_232
		LDA	word_1903+1
		STA	word_232+1
		LDA	byte_1907
		STA	$B
		LDA	byte_1908
		STA	$C
		JSR	sub_2979
		BMI	loc_2976
		LDX	#$F

loc_295E:				; CODE XREF: sub_2937+2Ej
		LDA	$100,X
		STA	$180,X
		DEX
		BPL	loc_295E
		LDX	#3

loc_2969:				; CODE XREF: sub_2937+3Bj
		LDA	byte_1905,X
		CMP	$180,X
		BNE	loc_2976
		DEX
		BPL	loc_2969
		INX
		RTS
; ---------------------------------------------------------------------------

loc_2976:				; CODE XREF: sub_2937+23j sub_2937+38j
		LDA	#$FF
		RTS
; End of function sub_2937


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2979:				; CODE XREF: RAM:1800j
					; sub_2799:loc_279Ep ...
		BIT	$258
		BVC	loc_2986
		BIT	$25A
		BPL	loc_2986
		JMP	$F9F4
; ---------------------------------------------------------------------------

loc_2986:				; CODE XREF: sub_2979+3j sub_2979+8j
		LDA	#2
		STA	6

loc_298A:				; CODE XREF: sub_2979+18j
		JSR	sub_248E
		BPL	loc_2995
		DEC	6
		BNE	loc_298A
		BEQ	loc_299D

loc_2995:				; CODE XREF: sub_2979+14j
		INC	word_232
		BNE	loc_299D
		INC	word_232+1

loc_299D:				; CODE XREF: sub_2979+1Aj sub_2979+1Fj
		TYA
		RTS
; End of function sub_2979

; ---------------------------------------------------------------------------
		.BYTE $A8
		MOVEXY	0,1
		.BYTE $A5
aPleaseInsertTh:.BYTE "Please insert The Dungeon Disk "
		PRINTBYTE byte_1911,1
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aSide:		.BYTE "Side "
		PRINTBYTE byte_1910,1
		.BYTE $20
aIntoAnyDrive_:	.BYTE "into any drive."
		.BYTE $D
		MOVEXY	0,5
		.BYTE $A5
aPress:		.BYTE "Press "
		BLINK	"SPACE BAR"
aToContinue:	.BYTE " to continue"
		.BYTE $D
		.BYTE $FF
		MOVEXY	0,7
		.BYTE $A5
aOrPress:	.BYTE "or press "
		BLINK	"ESC"
aToAbort:	.BYTE " to abort"
		.BYTE $D
		.BYTE $FF
aLoading___:	.BYTE "Loading..."      ; DATA XREF: sub_2CFB+1Ar
aEncounter:	.BYTE "Encounter!",0    ; DATA XREF: sub_2CFB:loc_2D0Er
		.BYTE	1
		.BYTE $EF ; Ô
		.BYTE $FF
		.BYTE $DE ; ﬁ
		.BYTE $B4 ; ¥
		.BYTE $B9 ; π
		.BYTE $F0 ; 
		.BYTE $E0 ; ‡

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2A41:				; CODE XREF: RAM:1839j	sub_2AA0+8p
		CMP	#$28 ; '('
		BCC	loc_2A47
		LDA	#$27 ; '''

loc_2A47:				; CODE XREF: sub_2A41+2j
		STA	byte_18D4
		LDX	#0

loc_2A4C:				; CODE XREF: sub_2A41+49j sub_2A41+5Cj
		LDA	#$5F ; '_'
		JSR	sub_1C2C
		LDA	#8
		JSR	sub_1C2C

loc_2A56:				; CODE XREF: sub_2A41+18j sub_2A41+39j ...
		JSR	sub_2643
		BMI	loc_2A56
		CMP	#$D
		BNE	loc_2A69
		STA	unk_18D5,X
		LDA	#$20 ; ' '
		JSR	sub_1C2C
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_2A69:				; CODE XREF: sub_2A41+1Cj
		CMP	#$1B
		BNE	loc_2A74
		LDA	#$20 ; ' '
		JSR	sub_1C2C
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_2A74:				; CODE XREF: sub_2A41+2Aj
		CMP	#8
		BNE	loc_2A8D
		CPX	#0
		BEQ	loc_2A56
		LDA	#$20 ; ' '
		JSR	sub_1C2C
		LDA	#8
		JSR	sub_1C2C
		JSR	sub_1C2C
		DEX
		JMP	loc_2A4C
; ---------------------------------------------------------------------------

loc_2A8D:				; CODE XREF: sub_2A41+35j
		CMP	#$20 ; ' '
		BCC	loc_2A56
		CPX	byte_18D4
		BCS	loc_2A56
		STA	unk_18D5,X
		JSR	sub_1C2C
		INX
		JMP	loc_2A4C
; End of function sub_2A41


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2AA0:				; CODE XREF: RAM:18AEj	sub_5AB4+9Cp
		LDA	#0
		STA	2
		STA	3
		LDA	#5
		JSR	sub_2A41
		BCS	locret_2B01
		CPX	#0
		BNE	loc_2AB4
		JMP	loc_2AF8
; ---------------------------------------------------------------------------

loc_2AB4:				; CODE XREF: sub_2AA0+Fj
		JSR	sub_2B0F
		BEQ	loc_2AF8
		DEX

loc_2ABA:				; CODE XREF: sub_2AA0+26j
		LDA	unk_18D5,X
		CMP	#$30 ; '0'
		BCC	loc_2B02
		CMP	#$3A ; ':'
		BCS	loc_2B02
		DEX
		BPL	loc_2ABA
		INX
		STX	6

loc_2ACB:				; CODE XREF: sub_2AA0+56j
		LDA	#$A
		STA	7
		LDA	#0
		STA	8
		JSR	sub_2B47
		LDA	4
		ORA	5
		BNE	loc_2B06
		LDX	6
		CLC
		LDA	unk_18D5,X
		AND	#$F
		ADC	2
		STA	2
		LDA	#0
		ADC	3
		STA	3
		BCS	loc_2B06
		INX
		STX	6
		CPX	byte_2B46
		BCC	loc_2ACB

loc_2AF8:				; CODE XREF: sub_2AA0+11j sub_2AA0+17j ...
		CLC
		LDA	2
		ORA	3
		BPL	locret_2B01
		LDA	#1

locret_2B01:				; CODE XREF: sub_2AA0+Bj sub_2AA0+5Dj
		RTS
; ---------------------------------------------------------------------------

loc_2B02:				; CODE XREF: sub_2AA0+1Fj sub_2AA0+23j
		CLC
		LDA	#$FF
		RTS
; ---------------------------------------------------------------------------

loc_2B06:				; CODE XREF: sub_2AA0+3Aj sub_2AA0+4Ej
		LDA	#$FF
		STA	2
		STA	3
		BNE	loc_2AF8
		RTS
; End of function sub_2AA0


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2B0F:				; CODE XREF: sub_2AA0:loc_2AB4p
		STX	byte_2B46
		DEX

loc_2B13:				; CODE XREF: sub_2B0F+Cj
		LDA	unk_18D5,X
		CMP	#$20 ; ' '
		BNE	loc_2B1D
		DEX
		BPL	loc_2B13

loc_2B1D:				; CODE XREF: sub_2B0F+9j
		INX
		STX	byte_2B46
		LDX	#0

loc_2B23:				; CODE XREF: sub_2B0F+1Fj
		LDA	unk_18D5,X
		CMP	#$20 ; ' '
		BNE	loc_2B30
		INX
		CPX	byte_2B46
		BCC	loc_2B23

loc_2B30:				; CODE XREF: sub_2B0F+19j
		LDY	#0

loc_2B32:				; CODE XREF: sub_2B0F+2Ej
		LDA	unk_18D5,X
		STA	unk_18D5,Y
		INY
		INX
		CPX	byte_2B46
		BCC	loc_2B32
		STY	byte_2B46
		LDX	byte_2B46
		RTS
; End of function sub_2B0F

; ---------------------------------------------------------------------------
byte_2B46:	.BYTE 0			; DATA XREF: sub_2AA0+53r sub_2B0Fw ...

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2B47:				; CODE XREF: RAM:18A2j	sub_2AA0+33p
		LDA	#0
		STA	4
		STA	5
		LDX	#$11
		CLC

loc_2B50:				; CODE XREF: sub_2B47+21j
		ROR	5
		ROR	4
		ROR	3
		ROR	2
		BCC	loc_2B67
		CLC
		LDA	7
		ADC	4
		STA	4
		LDA	8
		ADC	5
		STA	5

loc_2B67:				; CODE XREF: sub_2B47+11j
		DEX
		BNE	loc_2B50
		RTS
; End of function sub_2B47


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2B6B:				; CODE XREF: RAM:1899j	RAM:535Dp
		PHA
		TXA
		PHA
		TYA
		PHA
		TSX
		INC	$103,X
		BNE	loc_2B7C
		LDA	RANDOM
		JMP	loc_2B92
; ---------------------------------------------------------------------------

loc_2B7C:				; CODE XREF: sub_2B6B+9j
		LDA	$103,X
		LDY	#7

loc_2B81:				; CODE XREF: sub_2B6B+1Aj
		ASL	A
		BCS	loc_2B87
		DEY
		BPL	loc_2B81

loc_2B87:				; CODE XREF: sub_2B6B+17j sub_2B6B+25j
		LDA	RANDOM
		AND	unk_2B9D,Y
		CMP	$103,X
		BCS	loc_2B87

loc_2B92:				; CODE XREF: sub_2B6B+Ej
		STA	$103,X
		PLA
		TAY
		PLA
		TAX
		PLA
		ORA	#0
		RTS
; End of function sub_2B6B

; ---------------------------------------------------------------------------
unk_2B9D:	.BYTE	1		; DATA XREF: sub_2B6B+1Fr
		.BYTE	3
		.BYTE	7
		.BYTE  $F
		.BYTE $1F
		.BYTE $3F ; ?
		.BYTE $7F ; 
		.BYTE $FF

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2BA5:				; CODE XREF: RAM:183Fj
					; sub_2BFA:loc_30AAp ...
		CMP	#$61 ; 'a'
		BCC	locret_2BAF
		CMP	#$7B ; '{'
		BCS	locret_2BAF
		SBC	#$1F

locret_2BAF:				; CODE XREF: sub_2BA5+2j sub_2BA5+6j
		RTS
; End of function sub_2BA5


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2BB0:				; CODE XREF: RAM:183Cj	RAM:348Cp ...
		DEC	$32
		LDX	#$1E

loc_2BB4:				; CODE XREF: sub_2BB0+8j
		JSR	sub_2C66
		DEX
		BNE	loc_2BB4
		JSR	sub_2643
		LDA	#$D0 ; '–'
		STA	off_16
		LDA	#$2B ; '+'
		STA	off_16+1
		JSR	sub_1C88

loc_2BC8:				; CODE XREF: sub_2BB0+1Bj
		JSR	sub_2643
		BMI	loc_2BC8
		INC	$32
		RTS
; End of function sub_2BB0

; ---------------------------------------------------------------------------
		MOVEXY	0,7
		.BYTE $A9
		.BYTE $A5
		.BYTE "<<< "
aPressAnyKeyToC:BLINK	"Press any key to continue"
		.BYTE $20
		.BYTE ">>>"
		.BYTE $D
		.BYTE $FF

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2BFA:				; CODE XREF: RAM:527Cp	RAM:53EDp ...

; FUNCTION CHUNK AT 2F80 SIZE 00000151 BYTES
; FUNCTION CHUNK AT 30DB SIZE 00000006 BYTES
; FUNCTION CHUNK AT 3183 SIZE 00000072 BYTES
; FUNCTION CHUNK AT 31F8 SIZE 0000002D BYTES

		LDA	#6

loc_2BFC:				; CODE XREF: RAM:185Aj	RAM:3443p ...
		STA	byte_2C64
		DEC	$32
		DEC	$F
		DEC	byte_1937
		LDA	#1
		STA	byte_2C65
		JSR	sub_2643

loc_2C0E:				; CODE XREF: sub_2BFA+29j RAM:2C59j
		LDA	#6
		STA	byte_2C63

loc_2C13:				; CODE XREF: RAM:2C54j
		LDX	#$A

loc_2C15:				; CODE XREF: sub_2BFA+1Fj
		JSR	sub_2C66
		DEX
		BNE	loc_2C15
		LDA	byte_2C65
		BMI	loc_2C26
		DEC	byte_2C65
		JMP	loc_2C0E
; ---------------------------------------------------------------------------

loc_2C26:				; CODE XREF: sub_2BFA+24j
		LDA	off_1977
		STA	off_2C99
		LDA	off_1977+1
		STA	off_2C99+1
		LDA	#<loc_2C3F
		STA	off_1977
		LDA	#>loc_2C3F
		STA	off_1977+1
		JMP	loc_2FF3
; End of function sub_2BFA

; ---------------------------------------------------------------------------

loc_2C3F:
		LDA	off_2C99
		STA	off_1977
		LDA	off_2C99+1
		STA	off_1977+1
		LDA	$31
		CMP	#$20 ; ' '
		BEQ	loc_2C5B
		DEC	byte_2C63
		BNE	loc_2C13
		DEC	byte_2C64
		BNE	loc_2C0E

loc_2C5B:				; CODE XREF: RAM:2C4Fj
		INC	$32
		INC	$F
		INC	byte_1937
		RTS
; ---------------------------------------------------------------------------
byte_2C63:	.BYTE 0			; DATA XREF: sub_2BFA+16w RAM:2C51w
byte_2C64:	.BYTE 0			; DATA XREF: sub_2BFA:loc_2BFCw
					; RAM:2C56w
byte_2C65:	.BYTE 0			; DATA XREF: sub_2BFA+Ew sub_2BFA+21r	...

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2C66:				; CODE XREF: sub_2BB0:loc_2BB4p
					; sub_2BFA:loc_2C15p ...
		LDA	$252

loc_2C69:				; CODE XREF: sub_2C66+6j
		CMP	$252
		BEQ	loc_2C69
		RTS
; End of function sub_2C66

; ---------------------------------------------------------------------------

loc_2C6F:				; CODE XREF: RAM:1857j	RAM:2C96j
		LDA	off_1977
		STA	off_2C99
		LDA	off_1977+1
		STA	off_2C99+1
		LDA	#<loc_2C88
		STA	off_1977
		LDA	#>loc_2C88
		STA	off_1977+1
		JMP	loc_2FF3
; ---------------------------------------------------------------------------

loc_2C88:
		LDA	off_2C99
		STA	off_1977
		LDA	off_2C99+1
		STA	off_1977+1
		LDA	$31
		BMI	loc_2C6F
		RTS
; ---------------------------------------------------------------------------
off_2C99:	.WORD	$FFFF		; DATA XREF: sub_2BFA+2Fw RAM:2C3Fr ...
; ---------------------------------------------------------------------------

loc_2C9B:				; CODE XREF: RAM:185Dj
		STX	off_D+1
		STY	off_D
		ASL	A
		TAY
		LDA	(off_D),Y
		STA	off_16
		INY
		LDA	(off_D),Y
		STA	off_16+1
		RTS
; ---------------------------------------------------------------------------

loc_2CAB:
		BRK
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


SEGLOAD:				; CODE XREF: j_SEGLOADj	RAM:2EFFp ...
		DEC	$32
		LDA	#0
		STA	byte_190E

loc_2CB4:				; CODE XREF: SEGLOAD+Fj
		JSR	sub_2CFB
		BCC	loc_2CBF
		JSR	sub_28D7
		JMP	loc_2CB4
; ---------------------------------------------------------------------------

loc_2CBF:				; CODE XREF: SEGLOAD+Aj
		INC	$32
		RTS
; End of function SEGLOAD


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2CC2:				; CODE XREF: RAM:1881j	sub_2BFA+3D8p
		DEC	$32
		LDA	SEGNO
		LDX	#3

loc_2CC9:				; CODE XREF: sub_2CC2+Dj
		CMP	unk_2CF7,X
		BEQ	loc_2CD3
		DEX
		BPL	loc_2CC9
		BMI	loc_2CD8

loc_2CD3:				; CODE XREF: sub_2CC2+Aj
		LDA	#0
		STA	byte_190E

loc_2CD8:				; CODE XREF: sub_2CC2+Fj sub_2CC2+1Ej
		JSR	sub_2CFB
		BCC	loc_2CF4
		JSR	sub_28D7
		BCC	loc_2CD8
		LDX	#4

loc_2CE4:				; CODE XREF: sub_2CC2+29j
		LDA	$6318,X
		STA	$6313,X
		DEX
		BPL	loc_2CE4
		LDA	$631F
		STA	$631E
		SEC

loc_2CF4:				; CODE XREF: sub_2CC2+19j
		INC	$32
		RTS
; End of function sub_2CC2

; ---------------------------------------------------------------------------
unk_2CF7:	.BYTE $10		; DATA XREF: sub_2CC2:loc_2CC9r
		.BYTE $11
		.BYTE $12
		.BYTE $3F ; ?

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2CFB:				; CODE XREF: SEGLOAD:loc_2CB4p
					; sub_2CC2:loc_2CD8p
		LDA	SEGNO
		PHA

loc_2CFF:				; CODE XREF: sub_2CFB+87j
		LDX	#$1F
		LDA	#0

loc_2D03:				; CODE XREF: sub_2CFB+Cj
		STA	unk_197C,X
		DEX
		BPL	loc_2D03
		LDX	#9
		LDY	SEGNO

loc_2D0E:				; CODE XREF: sub_2CFB+21j
		LDA	aEncounter,X	; "Encounter!"
		CPY	#$11
		BEQ	loc_2D18
		LDA	aLoading___,X	; "Loading..."

loc_2D18:				; CODE XREF: sub_2CFB+18j
		STA	unk_1987,X
		DEX
		BPL	loc_2D0E
		LDA	#0
		STA	$264
		STA	$259
		STA	$25A
		STA	$25B
		BIT	$258
		BPL	loc_2D40
		LDA	SEGNO
		CMP	#$E
		BCS	loc_2D40
		DEC	$259
		JSR	$F953
		BCC	loc_2D62

loc_2D40:				; CODE XREF: sub_2CFB+34j sub_2CFB+3Bj
		LDA	SEGNO
		LDX	#$2A ; '*'
		LDY	#$38 ; '8'
		JSR	sub_2DE3
		ROR	$25A
		JSR	sub_275B
		BCS	loc_2D5C
		BIT	$259
		BPL	loc_2D62
		JSR	$F900
		BCC	loc_2D62

loc_2D5C:				; CODE XREF: sub_2CFB+55j
		BIT	$23D
		BPL	loc_2D67

loc_2D61:				; CODE XREF: sub_2CFB+7Fj
		SEC

loc_2D62:				; CODE XREF: sub_2CFB+43j sub_2CFB+5Aj ...
		PLA
		STA	SEGNO
		RTS
; ---------------------------------------------------------------------------

loc_2D67:				; CODE XREF: sub_2CFB+64j
		LDA	SEGNO
		LDX	#5
		BIT	$258
		BVC	loc_2D72
		DEX

loc_2D72:				; CODE XREF: sub_2CFB+74j sub_2CFB+7Dj
		CMP	unk_2D85,X
		BEQ	loc_2D7C
		DEX
		BPL	loc_2D72
		BMI	loc_2D61

loc_2D7C:				; CODE XREF: sub_2CFB+7Aj
		LDA	unk_2D8A,X
		STA	SEGNO
		JMP	loc_2CFF
; End of function sub_2CFB

; ---------------------------------------------------------------------------
unk_2D85:	.BYTE $35 ; 5		; DATA XREF: sub_2CFB:loc_2D72r
		.BYTE  $F
		.BYTE $44 ; D
		.BYTE $43 ; C
		.BYTE $10
unk_2D8A:	.BYTE $2F ; /		; DATA XREF: sub_2CFB:loc_2D7Cr
		.BYTE $44 ; D
		.BYTE $43 ; C
		.BYTE $42 ; B
		.BYTE $3F ; ?
; ---------------------------------------------------------------------------

loc_2D8F:				; CODE XREF: RAM:1854j
		LDY	#0
		LDX	$C
		BEQ	loc_2D9F

loc_2D95:				; CODE XREF: RAM:2D98j	RAM:2D9Dj
		STA	(9),Y
		INY
		BNE	loc_2D95
		INC	$A
		DEX
		BNE	loc_2D95

loc_2D9F:				; CODE XREF: RAM:2D93j
		LDX	$B
		BEQ	locret_2DAA

loc_2DA3:				; CODE XREF: RAM:2DA8j
		STA	(9),Y
		INY
		CPY	$B
		BNE	loc_2DA3

locret_2DAA:				; CODE XREF: RAM:2DA1j
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2DAB:				; CODE XREF: RAM:1860j	RAM:3578p ...
		STX	loc_2DD9+2
		STX	loc_2DDF+2
		STY	loc_2DD9+1
		STY	loc_2DDF+1
		PHA
		LDA	#$1D
		LDX	#$2E ; '.'
		LDY	#5
		BCS	loc_2DC6
		LDA	#$3D ; '='
		LDX	#$2D ; '-'
		LDY	#$FD ; '˝'

loc_2DC6:				; CODE XREF: sub_2DAB+13j
		STA	loc_2DDC
		STY	loc_2DDC+1
		STX	loc_2DDC+2
		PLA
		PHA
		AND	#7
		TAX
		PLA
		LSR	A
		LSR	A
		LSR	A
		TAY

loc_2DD9:				; DATA XREF: sub_2DAB+6w sub_2DABw
		LDA	$FFFF,Y

loc_2DDC:				; DATA XREF: sub_2DAB:loc_2DC6w
					; sub_2DAB+1Ew	...
		ORA	byte_2E05,X

loc_2DDF:				; DATA XREF: sub_2DAB+9w sub_2DAB+3w
		STA	$FFFF,Y
		RTS
; End of function sub_2DAB


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2DE3:				; CODE XREF: RAM:1863j	sub_2CFB+4Cp ...
		STX	loc_2DF3+2
		STY	loc_2DF3+1
		PHA
		AND	#7
		TAX
		PLA
		LSR	A
		LSR	A
		LSR	A
		TAY
		CLC

loc_2DF3:				; DATA XREF: sub_2DE3+3w sub_2DE3w
		LDA	$FFFF,Y
		AND	byte_2E05,X
		BEQ	locret_2DFC
		SEC

locret_2DFC:				; CODE XREF: sub_2DE3+16j
		RTS
; End of function sub_2DE3

; ---------------------------------------------------------------------------
		.BYTE $7F,$BF,$DF,$EF,$F7,$FB,$FD,$FE
byte_2E05:	.BYTE $80,$40,$20,$10,	8,  4,	2,  1 ;	DATA XREF: sub_2DAB:loc_2DDCr
					; sub_2DE3+13r

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2E0D:				; CODE XREF: RAM:1866j	sub_4AC9+49p ...
		STY	$B
		LDY	#0
		CPX	#0
		BEQ	loc_2E23

loc_2E15:				; CODE XREF: sub_2E0D+Dj sub_2E0D+14j
		LDA	(off_7),Y
		STA	(9),Y
		INY
		BNE	loc_2E15
		INC	$A
		INC	8
		DEX
		BNE	loc_2E15

loc_2E23:				; CODE XREF: sub_2E0D+6j
		LDA	$B
		BEQ	locret_2E30

loc_2E27:				; CODE XREF: sub_2E0D+21j
		LDA	(off_7),Y
		STA	(9),Y
		INY
		CPY	$B
		BNE	loc_2E27

locret_2E30:				; CODE XREF: sub_2E0D+18j
		RTS
; End of function sub_2E0D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2E31:				; CODE XREF: RAM:1869j	RAM:5730p
		DEC	$32
		LDX	#7

loc_2E35:				; CODE XREF: sub_2E31+Aj
		LDA	$35,X
		STA	$6309,X
		DEX
		BPL	loc_2E35
		INC	$32
		RTS
; End of function sub_2E31

; ---------------------------------------------------------------------------

ADDSTAT2:				; CODE XREF: RAM:187Bj
		LDY	#1
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,

; --------------- S U B	R O U T	I N E ---------------------------------------


ADDSTAT1:				; CODE XREF: RAM:1878j	RAM:41C4p ...
		LDY	#0

loc_2E45:				; CODE XREF: RAM:1875j
		JSR	sub_2E8D

loc_2E48:				; CODE XREF: RAM:loc_494Dp
		CLC
		LDA	(off_45),Y
		ADC	$51
		STA	(off_45),Y
		DEY
		BMI	loc_2E5B

loc_2E52:				; CODE XREF: ADDSTAT1+16j
		LDA	(off_45),Y
		ADC	#0
		STA	(off_45),Y
		DEY
		BPL	loc_2E52

loc_2E5B:				; CODE XREF: ADDSTAT1+Dj
		BCC	locret_2E65
		TYA
		LDY	$54

loc_2E60:				; CODE XREF: ADDSTAT1+20j
		STA	(off_45),Y
		DEY
		BPL	loc_2E60

locret_2E65:				; CODE XREF: ADDSTAT1:loc_2E5Bj
		RTS
; End of function ADDSTAT1

; ---------------------------------------------------------------------------

SUBSTAT2:				; CODE XREF: RAM:1872j	RAM:34ADp ...
		LDY	#1
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,

; --------------- S U B	R O U T	I N E ---------------------------------------


SUBSTAT1:				; CODE XREF: RAM:186Fj	RAM:34F7p ...
		LDY	#0

loc_2E6B:				; CODE XREF: RAM:186Cj
		JSR	sub_2E8D

loc_2E6E:				; CODE XREF: RAM:loc_4953p
		SEC
		LDA	(off_45),Y
		SBC	$51
		STA	(off_45),Y
		DEY
		BMI	loc_2E81

loc_2E78:				; CODE XREF: SUBSTAT1+16j
		LDA	(off_45),Y
		SBC	#0
		STA	(off_45),Y
		DEY
		BPL	loc_2E78

loc_2E81:				; CODE XREF: SUBSTAT1+Dj
		BCS	locret_2E8C
		LDA	#0
		LDY	$54

loc_2E87:				; CODE XREF: SUBSTAT1+21j
		STA	(off_45),Y
		DEY
		BPL	loc_2E87

locret_2E8C:				; CODE XREF: SUBSTAT1:loc_2E81j
		RTS
; End of function SUBSTAT1


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_2E8D:				; CODE XREF: ADDSTAT1:loc_2E45p
					; SUBSTAT1:loc_2E6Bp
		STA	$51
		STY	$54
		CLC
		TXA
		ADC	#<SEG_6300
		STA	off_45
		LDA	#>SEG_6300
		ADC	#0
		STA	off_45+1
		RTS
; End of function sub_2E8D

; ---------------------------------------------------------------------------

loc_2E9E:				; CODE XREF: RAM:187Ej
		LDA	$B
		EOR	#$FF
		STA	$B
		LDA	$C
		EOR	#$FF
		STA	$C
		INC	$B
		BNE	loc_2EB0
		INC	$C

loc_2EB0:				; CODE XREF: RAM:2EACj
		LDY	#0

loc_2EB2:				; CODE XREF: RAM:2EBFj	RAM:2EC3j
		LDA	(off_7),Y
		STA	(off_9),Y
		INY
		BNE	loc_2EBD
		INC	off_7+1
		INC	off_9+1

loc_2EBD:				; CODE XREF: RAM:2EB7j
		INC	$B
		BNE	loc_2EB2
		INC	$C
		BNE	loc_2EB2
		RTS
; ---------------------------------------------------------------------------

loc_2EC6:				; CODE XREF: RAM:18B4j	RAM:37F9j
		LDX	#$FF
		TXS
		LDX	#$E6 ; 'Ê'
		LDA	#0

loc_2ECD:				; CODE XREF: RAM:2ED1j
		STA	$18B6,X
		DEX
		BNE	loc_2ECD
		LDA	#0
		JSR	sub_1A0D
		LDA	#7
		STA	off_16
		LDA	#$20 ; ' '
		STA	off_16+1
		JSR	loc_1C8C
		STX	byte_1933
		LDA	#<byte_2007
		STA	byte_1913
		LDA	#>byte_2007
		STA	byte_1923
		LDA	#$19
		STA	SEGNO
		LDA	#<SEG_7600
		STA	SEGADDR
		LDA	#>SEG_7600
		STA	SEGADDR+1
		JSR	SEGLOAD
		JSR	SEG_7600
		LDA	#2
		STA	$253
		LDA	#$FF
		STA	$AC00
		STA	$7600
		STA	$96F0
		STA	byte_1935
		LDA	#1
		JSR	sub_1A0D
		LDX	#7

loc_2F1F:				; CODE XREF: RAM:2F25j
		LDA	$6309,X
		STA	$35,X
		DEX
		BPL	loc_2F1F
		INX
		STX	$32
		STX	$F
		LDX	#$13

loc_2F2E:				; CODE XREF: RAM:2F3Aj
		LDA	#>asc_47E5
		STA	off_45A3,X
		DEX
		LDA	#<asc_47E5
		STA	off_45A3,X
		DEX
		BPL	loc_2F2E
		LDA	#<a_LevelStats
		STA	off_16
		LDA	#>a_LevelStats
		STA	off_16+1
		JSR	sub_1C84
		LDA	#<byte_3969
		STA	off_16
		LDA	#>byte_3969
		STA	off_16+1
		JSR	sub_1C84
		LDX	#8
		STX	byte_1934
		DEX

loc_2F58:				; CODE XREF: RAM:2F68j
		LDA	byte_2F70,X
		STA	byte_1913,X
		LDA	byte_2F78,X
		STA	byte_1923,X
		STX	byte_1933
		DEX
		BPL	loc_2F58
		JSR	sub_3C2D
		JMP	loc_318C
; ---------------------------------------------------------------------------

byte_2F70:
		.BYTE	<byte_3CDE
		.BYTE	<byte_3D84
		.BYTE	<byte_3E31
		.BYTE	<byte_3EA2
		.BYTE	<byte_3ED1
		.BYTE	<byte_3EE9
		.BYTE	<byte_3F03
		.BYTE	0

byte_2F78:
		.BYTE	>byte_3CDE
		.BYTE	>byte_3D84
		.BYTE	>byte_3E31
		.BYTE	>byte_3EA2
		.BYTE	>byte_3ED1
		.BYTE	>byte_3EE9
		.BYTE	>byte_3F03
		.BYTE	0
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_2BFA

loc_2F80:				; CODE XREF: RAM:1803j	sub_2BFA+435j ...
		JSR	sub_322C
		LDA	$7600
		CMP	$631E
		BEQ	loc_2FE5
		LDA	#$FF
		STA	byte_1912
		STA	byte_1938
		STA	byte_196A
		STA	byte_1939
		STA	byte_195F
		STA	byte_1960
		LDA	$631E
		CMP	#1
		BEQ	loc_2FBA
		CMP	#2
		BEQ	loc_2FBA
		LDA	$631F
		CMP	#1
		BEQ	loc_2FBA
		CMP	#2
		BEQ	loc_2FBA
		LDA	#1
		JSR	sub_1A0D

loc_2FBA:				; CODE XREF: sub_2BFA+3AAj
					; sub_2BFA+3AEj ...
		LDA	#<SEG_7600
		STA	SEGADDR
		LDA	#>SEG_7600
		STA	SEGADDR+1
		LDA	$631E
		CLC
		ADC	#$10
		STA	SEGNO
		LDA	#$FF
		STA	byte_190E
		JSR	sub_2CC2
		BCC	loc_2FDA
		JMP	loc_3183
; ---------------------------------------------------------------------------

loc_2FDA:				; CODE XREF: sub_2BFA+3DBj
		LDX	#$F3 ; 'Û'
		LDA	#0

loc_2FDE:				; CODE XREF: sub_2BFA+3E9j
		STA	off_0,X
		DEX
		CPX	#$62 ; 'b'
		BCS	loc_2FDE

loc_2FE5:				; CODE XREF: sub_2BFA+38Fj
		LDA	$631F
		CMP	$631E
		BEQ	loc_2FF0
		JSR	$7601

loc_2FF0:				; CODE XREF: sub_2BFA+3F1j
		JMP	(off_1977)
; ---------------------------------------------------------------------------

loc_2FF3:				; CODE XREF: RAM:1806j	sub_2BFA+42j ...
		JSR	sub_408B
		JSR	sub_386F
		LDA	byte_1958
		BMI	loc_300D
		LDA	byte_1959
		CMP	#2
		BNE	loc_300D
		LDA	#$FF
		STA	byte_1958
		JSR	sub_3596

loc_300D:				; CODE XREF: sub_2BFA+402j
					; sub_2BFA+409j
		LDA	byte_1971
		BMI	loc_307F
		LDA	$7600
		BNE	loc_307F
		LDA	byte_1979
		BPL	loc_3032
		LDA	#0
		STA	byte_1979
		LDA	$631E
		STA	$631F
		LDA	#2
		STA	$631E
		JSR	$7607
		JMP	loc_2F80
; ---------------------------------------------------------------------------

loc_3032:				; CODE XREF: sub_2BFA+420j
		LDA	byte_197B
		BEQ	loc_303C
		LDA	#$47 ; 'G'
		JMP	loc_30AA
; ---------------------------------------------------------------------------

loc_303C:				; CODE XREF: sub_2BFA+43Bj
		LDA	$6320
		BPL	loc_3046
		LDA	byte_195D
		BEQ	loc_307F

loc_3046:				; CODE XREF: sub_2BFA+445j
		LDA	#$FF
		STA	byte_195D
		LDA	$6316
		CMP	#$12
		BNE	loc_306A
		LDA	$6317
		CMP	#$12
		BNE	loc_306A
		LDA	$631E
		STA	$631F
		LDA	#1
		STA	$631E
		JSR	$7607
		JMP	loc_2F80
; ---------------------------------------------------------------------------

loc_306A:				; CODE XREF: sub_2BFA+456j
					; sub_2BFA+45Dj
		DEC	byte_1956
		LDX	#1

loc_306F:				; CODE XREF: sub_2BFA+481j
		LDA	$6316,X
		STA	$195B,X
		LDA	#$12
		STA	$6316,X
		DEX
		BPL	loc_306F
		BMI	loc_30DB

loc_307F:				; CODE XREF: sub_2BFA+416j
					; sub_2BFA+41Bj ...
		LDA	#0
		STA	byte_195D
		LDA	byte_1968
		CMP	#1
		BCC	loc_30A5
		LDA	RANDOM
		CMP	#$10
		BCS	loc_30A5
		LDA	RANDOM
		CMP	byte_1968
		BCS	loc_30A5
		AND	#1
		TAX
		LDA	byte_30E1,X
		STA	$31
		JMP	loc_30AA
; ---------------------------------------------------------------------------

loc_30A5:				; CODE XREF: sub_2BFA+48Fj
					; sub_2BFA+496j ...
		JSR	sub_2643
		BMI	loc_30DB

loc_30AA:				; CODE XREF: sub_2BFA+43Fj
					; sub_2BFA+4A8j
		JSR	sub_2BA5
		LDX	#$C

loc_30AF:				; CODE XREF: sub_2BFA+4BBj
		CMP	byte_3B78,X
		BEQ	loc_30BA
		DEX
		BPL	loc_30AF
		JMP	loc_30DE
; ---------------------------------------------------------------------------

loc_30BA:				; CODE XREF: sub_2BFA+4B8j
		BIT	byte_1937
		BPL	loc_30C5
		CPX	#5
		BCS	loc_30C5
		BCC	loc_30DE

loc_30C5:				; CODE XREF: sub_2BFA+4C3j
					; sub_2BFA+4C7j
		LDA	byte_3B85,X
		STA	loc_30D1+1
		LDA	byte_3B92,X
		STA	loc_30D1+2
; END OF FUNCTION CHUNK	FOR sub_2BFA

loc_30D1:				; DATA XREF: sub_2BFA+4CEw
					; sub_2BFA+4D4w
		JSR	$FFFF
		LDA	#$FF
		STA	$31
		JSR	sub_386F
; START	OF FUNCTION CHUNK FOR sub_2BFA

loc_30DB:				; CODE XREF: sub_2BFA+483j
					; sub_2BFA+4AEj
		LDA	RANDOM

loc_30DE:				; CODE XREF: sub_2BFA+4BDj
					; sub_2BFA+4C9j
		JMP	(off_1977)
; END OF FUNCTION CHUNK	FOR sub_2BFA
; ---------------------------------------------------------------------------
byte_30E1:
		.BYTE $2C ; ,
		.BYTE $2E ; .
; ---------------------------------------------------------------------------

loc_30E3:				; CODE XREF: RAM:1809j
		LDA	#0
		STA	byte_1975
		LDA	$631E
		STA	$631F
		JSR	sub_3531
		LDA	$2E
		BIT	byte_3B74
		BNE	loc_3124
		BIT	byte_3B75
		BNE	loc_311B
		BIT	byte_3B76
		BNE	loc_3108
		INC	$6312
		JMP	loc_310B
; ---------------------------------------------------------------------------

loc_3108:				; CODE XREF: RAM:3100j
		DEC	$6312

loc_310B:				; CODE XREF: RAM:3105j
		LDA	$6312
		AND	#3
		STA	$6312
		LDA	#$FF
		STA	byte_1975
		JMP	loc_3180
; ---------------------------------------------------------------------------

loc_311B:				; CODE XREF: RAM:30FBj
		LDA	$6312
		ORA	#4
		TAX
		JMP	loc_3127
; ---------------------------------------------------------------------------

loc_3124:				; CODE XREF: RAM:30F6j
		LDX	$6312

loc_3127:				; CODE XREF: RAM:3121j
		STX	byte_317F
		JSR	sub_32CA
		LDA	unk_3B44,X
		EOR	#1
		TAY
		LDA	#$11
		STA	$6316,Y
		LDY	unk_3B44,X
		LDA	unk_3B54,X
		BMI	loc_314A
		LDA	$6316,Y
		CLC
		ADC	$6383
		JMP	loc_3151
; ---------------------------------------------------------------------------

loc_314A:				; CODE XREF: RAM:313Ej
		LDA	$6316,Y
		SEC
		SBC	$6383

loc_3151:				; CODE XREF: RAM:3147j
		STA	$6316,Y
		CMP	#$24 ; '$'
		BCC	loc_3180
		CLC
		ADC	unk_3B4C,X
		STA	$6316,Y
		LDY	unk_3B64,X
		LDA	(off_10),Y
		LDY	unk_3B6C,X
		BPL	loc_316D
		LSR	A
		LSR	A
		LSR	A
		LSR	A

loc_316D:				; CODE XREF: RAM:3167j
		AND	#$F
		TAY
		LDA	unk_3B24,Y
		STA	loc_317C+1
		LDA	unk_3B34,Y
		STA	loc_317C+2

loc_317C:				; DATA XREF: RAM:3173w	RAM:3179w
		JMP	$FFFF
; ---------------------------------------------------------------------------
byte_317F:	.BYTE 0			; DATA XREF: RAM:loc_3127w
					; RAM:loc_331Er
; ---------------------------------------------------------------------------

loc_3180:				; CODE XREF: RAM:3118j	RAM:3156j ...
		JMP	loc_318C
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_2BFA

loc_3183:				; CODE XREF: RAM:180Cj	sub_2BFA+3DDj
		JSR	sub_32CA
		LDA	$631E
		STA	$631F

loc_318C:				; CODE XREF: RAM:2F6Dj	RAM:loc_3180j ...
		LDA	$6315
		CMP	$AC00
		BEQ	loc_31B9
		TAX
		LDA	unk_3225,X
		STA	$631D
		TXA
		CLC
		ADC	#1
		STA	SEGNO
		LDA	#1
		JSR	sub_1A0D
		LDA	#0
		STA	SEGADDR
		LDA	#$AC ; '¨'
		STA	SEGADDR+1
		JSR	SEGLOAD
		LDA	#$FF
		STA	byte_1912

loc_31B9:				; CODE XREF: sub_2BFA+598j
		JSR	sub_3531
		LDY	#2
		LDA	(off_10),Y
		STA	byte_1974
		LDY	#3
		LDA	(off_10),Y
		BPL	loc_31F8
		AND	#$1F
		STA	byte_195A
		LDA	#0
		STA	$631E
		BIT	byte_1958
		BMI	loc_320D
		LDA	(off_10),Y
		ROL	A
		ROL	A
		ROL	A
		ROL	A
		AND	#3
		STA	byte_1959
		TAX
		LDA	unk_3B9F,X
		STA	loc_31F5+1
		LDA	unk_3BA3,X
		STA	loc_31F5+2
		LDA	#$FF
		STA	byte_1958
; END OF FUNCTION CHUNK	FOR sub_2BFA

loc_31F5:				; DATA XREF: sub_2BFA+5EDw
					; sub_2BFA+5F3w
		JMP	$FFFF
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_2BFA

loc_31F8:				; CODE XREF: sub_2BFA+5CDj
		AND	#$1F
		STA	$631E
		LDA	#$FF
		STA	byte_1959
		LDA	(off_10),Y
		ROL	A
		ROL	A
		ROL	A
		ROL	A
		AND	#3
		STA	byte_1973

loc_320D:				; CODE XREF: sub_2BFA+5DCj RAM:3559j ...
		LDA	$631F
		CMP	#$FF
		BEQ	loc_3222
		LDA	$631E
		CMP	$631F
		BNE	loc_321F
		JMP	loc_2F80
; ---------------------------------------------------------------------------

loc_321F:				; CODE XREF: sub_2BFA+620j
		JSR	$7604

loc_3222:				; CODE XREF: sub_2BFA+618j
		JMP	loc_2F80
; END OF FUNCTION CHUNK	FOR sub_2BFA
; ---------------------------------------------------------------------------
unk_3225:	.BYTE	1		; DATA XREF: sub_2BFA+59Br
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	2
		.BYTE	3
		.BYTE	4

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_322C:				; CODE XREF: sub_2BFA:loc_2F80p
		LDA	$AC00
		CMP	$6315
		BNE	locret_3296
		LDA	byte_1974
		CMP	byte_1939
		BEQ	locret_3296
		STA	byte_1939
		LDA	#$BE ; 'æ'
		STA	off_16
		LDA	#$32 ; '2'
		STA	off_16+1
		JSR	sub_1C84
		LDA	$AC01
		STA	off_12
		LDA	$AC02
		STA	off_12+1
		LDY	#0
		LDX	byte_1974

loc_3259:				; CODE XREF: sub_322C+3Aj
		DEX
		BMI	loc_326B

loc_325C:				; CODE XREF: sub_322C+3Cj
		LDA	(off_12),Y
		INC	off_12
		BNE	loc_3264
		INC	off_12+1

loc_3264:				; CODE XREF: sub_322C+34j
		ORA	#0
		BEQ	loc_3259
		JMP	loc_325C
; ---------------------------------------------------------------------------

loc_326B:				; CODE XREF: sub_322C+2Ej sub_322C+7Aj ...
		LDA	(off_12),Y
		INC	off_12
		BNE	loc_3273
		INC	off_12+1

loc_3273:				; CODE XREF: sub_322C+43j
		ORA	#0
		BEQ	loc_32B1
		BPL	loc_32AB
		AND	#$7F ; ''
		TAX
		LDA	#<$AC03
		STA	off_14
		LDA	#>$AC03
		STA	off_14+1

loc_3284:				; CODE XREF: sub_322C+65j
		DEX
		BMI	loc_3297

loc_3287:				; CODE XREF: sub_322C+67j
		LDA	(off_14),Y
		INC	off_14
		BNE	loc_328F
		INC	off_14+1

loc_328F:				; CODE XREF: sub_322C+5Fj
		ORA	#0
		BMI	loc_3284
		JMP	loc_3287
; ---------------------------------------------------------------------------

locret_3296:				; CODE XREF: sub_322C+6j sub_322C+Ej ...
		RTS
; ---------------------------------------------------------------------------

loc_3297:				; CODE XREF: sub_322C+59j sub_322C+7Cj
		LDA	(off_14),Y
		PHP
		INC	off_14
		BNE	loc_32A0
		INC	off_14+1

loc_32A0:				; CODE XREF: sub_322C+70j
		AND	#$7F ; ''
		JSR	sub_1C2C
		PLP
		BMI	loc_326B
		JMP	loc_3297
; ---------------------------------------------------------------------------

loc_32AB:				; CODE XREF: sub_322C+4Bj
		JSR	sub_1C2C
		JMP	loc_326B
; ---------------------------------------------------------------------------

loc_32B1:				; CODE XREF: sub_322C+49j sub_322C+8Ej
		LDA	$1F
		BEQ	locret_3296
		LDA	#$20 ; ' '
		JSR	sub_1C2C
		JMP	loc_32B1
; End of function sub_322C

; ---------------------------------------------------------------------------
		RTS
; ---------------------------------------------------------------------------
		MOVEXY	1,4
aYouAre:	.BYTE "You are "
		.BYTE $FF

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_32CA:				; CODE XREF: RAM:312Ap
					; sub_2BFA:loc_3183p
		TXA
		PHA
		LDX	#4

loc_32CE:				; CODE XREF: sub_32CA+Bj
		LDA	$6313,X
		STA	$6318,X
		DEX
		BPL	loc_32CE
		PLA
		TAX
		RTS
; End of function sub_32CA

; ---------------------------------------------------------------------------
		LDY	unk_3B44,X
		LDA	unk_3B5C,X
		CMP	$631B,Y
		BNE	loc_32ED
		LDA	#$FF
		STA	byte_1954
		LDA	unk_3B5C,X

loc_32ED:				; CODE XREF: RAM:32E3j
		STA	$6316,Y
		JMP	loc_3180
; ---------------------------------------------------------------------------

loc_32F3:				; CODE XREF: RAM:33E3j	RAM:352Bj
		LDY	unk_3B44,X
		LDA	unk_3B5C,X
		CMP	$631B,Y
		BNE	loc_3301
		LDA	unk_3B5C,X

loc_3301:				; CODE XREF: RAM:32FCj
		STA	$6316,Y
		JMP	loc_3180
; ---------------------------------------------------------------------------
		LDA	#$80 ; 'Ä'
		STA	byte_199C
		JMP	loc_3314
; ---------------------------------------------------------------------------

loc_330F:				; CODE XREF: RAM:335Ej	RAM:34A0j
		LDA	#$81 ; 'Å'
		STA	byte_199C

loc_3314:				; CODE XREF: RAM:330Cj
		LDA	RANDOM
		AND	#$51 ; 'Q'
		BNE	loc_331E
		DEC	byte_195D

loc_331E:				; CODE XREF: RAM:3319j
		LDX	byte_317F
		LDY	unk_3B44,X
		CLC
		LDA	$6313,Y
		ADC	unk_3B54,X
		STA	$6313,Y
		LDA	#$FF
		STA	byte_1975
		LDA	#0
		STA	byte_1958
		STA	byte_191A
		STA	byte_192A
		JSR	sub_3C2D
		JMP	loc_3180
; ---------------------------------------------------------------------------
		LDA	#0
		BEQ	loc_334E
		LDA	#1
		BNE	loc_334E
		LDA	#2

loc_334E:				; CODE XREF: RAM:3346j	RAM:334Aj
		STA	byte_1970
		LDA	$6388
		AND	#2
		BEQ	loc_3361
		EOR	$6388
		STA	$6388
		JMP	loc_330F
; ---------------------------------------------------------------------------

loc_3361:				; CODE XREF: RAM:3356j
		DEC	byte_1937
		DEC	byte_1971
		LDA	#7
		STA	off_16
		LDA	#$20 ; ' '
		STA	off_16+1
		JSR	sub_3CA5
		LDA	byte_1933
		STA	byte_352E
		LDX	#3

loc_337A:				; CODE XREF: RAM:3383j
		LDA	unk_196B,X
		CMP	$6312,X
		BNE	loc_3387
		DEX
		BPL	loc_337A
		BMI	loc_3397

loc_3387:				; CODE XREF: RAM:3380j
		LDA	#0
		STA	byte_196F
		LDX	#3

loc_338E:				; CODE XREF: RAM:3395j
		LDA	$6312,X
		STA	unk_196B,X
		DEX
		BPL	loc_338E

loc_3397:				; CODE XREF: RAM:3385j
		LDA	byte_196F
		BPL	loc_339F
		JMP	loc_347E
; ---------------------------------------------------------------------------

loc_339F:				; CODE XREF: RAM:339Aj	RAM:33EFj ...
		LDA	#<a_TheDoorWontOpen
		STA	off_16
		LDA	#>a_TheDoorWontOpen
		STA	off_16+1
		LDX	byte_352E
		JSR	sub_3C5C

loc_33AD:				; CODE XREF: RAM:33E8j
		LDA	off_1977
		STA	off_352F
		LDA	off_1977+1
		STA	off_352F+1
		LDA	#<loc_33C6
		STA	off_1977
		LDA	#>loc_33C6
		STA	off_1977+1
		JMP	loc_2FF3
; ---------------------------------------------------------------------------

loc_33C6:
		LDA	off_352F
		STA	off_1977
		LDA	off_352F+1
		STA	off_1977+1
		LDA	byte_195D
		BPL	loc_33E6
		INC	byte_1937
		INC	byte_1971
		JSR	sub_3CC2
		LDX	$6312
		JMP	loc_32F3
; ---------------------------------------------------------------------------

loc_33E6:				; CODE XREF: RAM:33D5j
		LDA	$31
		BMI	loc_33AD
		SEC
		SBC	#$30 ; '0'
		CMP	#5
		BCS	loc_339F
		CMP	#1
		BNE	loc_3454
		LDA	#$CD ; 'Õ'
		STA	off_16
		LDA	#$3A ; ':'
		STA	off_16+1
		LDX	byte_352E
		JSR	sub_3C5C
		LDX	#$F0 ; ''

loc_3405:				; CODE XREF: RAM:3409j
		JSR	sub_2C66
		DEX
		BNE	loc_3405
		LDA	byte_196F
		AND	#1
		BNE	loc_341C
		LDA	RANDOM
		LSR	A
		LSR	A
		CMP	$6369
		BCS	loc_3449

loc_341C:				; CODE XREF: RAM:3410j
		LDX	byte_1970
		LDA	$3AF9,X
		STA	word_3A61
		LDA	$3AFC,X
		STA	word_3A61+1
		LDA	byte_196F
		ORA	#1
		STA	byte_196F
		LDA	#$48 ; 'H'
		STA	off_16
		LDA	#$3A ; ':'
		STA	off_16+1

loc_343B:				; CODE XREF: RAM:3451j	RAM:34B8j ...
		LDX	byte_352E
		JSR	sub_3C5C
		LDA	#4
		JSR	loc_2BFC
		JMP	loc_339F
; ---------------------------------------------------------------------------

loc_3449:				; CODE XREF: RAM:341Aj
		LDA	#$66 ; 'f'
		STA	off_16
		LDA	#$3A ; ':'
		STA	off_16+1
		JMP	loc_343B
; ---------------------------------------------------------------------------

loc_3454:				; CODE XREF: RAM:33F3j
		CMP	#2
		BNE	loc_34BB
		LDA	#$91 ; 'ë'
		STA	off_16
		LDA	#$3A ; ':'
		STA	off_16+1
		LDX	byte_352E
		JSR	sub_3C5C
		LDA	#1
		JSR	loc_2BFC
		DEC	byte_195F
		LDA	RANDOM
		LSR	A
		CMP	$6359
		BCS	loc_34A3
		LDA	byte_1970
		CMP	#1
		BNE	loc_34A3

loc_347E:				; CODE XREF: RAM:339Cj	RAM:34D7j ...
		LDA	#$9C ; 'ú'
		STA	off_16
		LDA	#$3A ; ':'
		STA	off_16+1
		LDX	byte_352E
		JSR	sub_3C5C
		JSR	sub_2BB0
		LDA	byte_196F
		ORA	#$80 ; 'Ä'
		STA	byte_196F
		INC	byte_1937
		INC	byte_1971
		JSR	sub_3CC2
		JMP	loc_330F
; ---------------------------------------------------------------------------

loc_34A3:				; CODE XREF: RAM:3475j	RAM:347Cj ...
		LDA	RANDOM
		AND	#1
		CLC
		ADC	#1
		LDX	#I_CURHP-SEG_6300
		JSR	SUBSTAT2
		LDA	#<a_TheDoorRemains
		STA	off_16
		LDA	#>a_TheDoorRemains
		STA	off_16+1
		JMP	loc_343B
; ---------------------------------------------------------------------------

loc_34BB:				; CODE XREF: RAM:3456j
		CMP	#3
		BNE	loc_34D9
		LDA	I_KEYS
		BNE	loc_34CF
		LDA	#<a_YouHaveNone
		STA	off_16
		LDA	#>a_YouHaveNone
		STA	off_16+1
		JMP	loc_343B
; ---------------------------------------------------------------------------

loc_34CF:				; CODE XREF: RAM:34C2j
		DEC	I_KEYS
		LDA	byte_1970
		BNE	loc_34A3
		BEQ	loc_347E

loc_34D9:				; CODE XREF: RAM:34BDj
		CMP	#4
		BNE	loc_3518
		LDA	#<a_Concentrating
		STA	off_16
		LDA	#>a_Concentrating
		STA	off_16+1
		LDX	byte_352E
		JSR	sub_3C5C
		LDX	#$78 ; 'x'

loc_34ED:				; CODE XREF: RAM:34F1j
		JSR	sub_2C66
		DEX
		BNE	loc_34ED
		LDA	#1
		LDX	#$65 ; 'e'
		JSR	SUBSTAT1
		LDA	RANDOM
		LSR	A
		CMP	I_CURINT
		BCS	loc_350D
		LDA	byte_1970
		CMP	#2
		BNE	loc_350D
		JMP	loc_347E
; ---------------------------------------------------------------------------

loc_350D:				; CODE XREF: RAM:3501j	RAM:3508j
		LDA	#<a_TheDoorRemains
		STA	off_16
		LDA	#>a_TheDoorRemains
		STA	off_16+1
		JMP	loc_343B
; ---------------------------------------------------------------------------

loc_3518:				; CODE XREF: RAM:34DBj
		CMP	#0
		BEQ	loc_351F
		JMP	loc_339F
; ---------------------------------------------------------------------------

loc_351F:				; CODE XREF: RAM:351Aj
		JSR	sub_3CC2
		LDX	$6312
		INC	byte_1937
		INC	byte_1971
		JMP	loc_32F3
; ---------------------------------------------------------------------------
byte_352E:	.BYTE 0			; DATA XREF: RAM:3375w	RAM:33A7r ...
off_352F:	.WORD	$FFFF		; DATA XREF: RAM:33B0w	RAM:33C6r

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_3531:				; CODE XREF: RAM:30EEp
					; sub_2BFA:loc_31B9p
		LDA	$6314
		LSR	A
		ORA	#$B0 ; '∞'
		STA	off_10+1
		LDA	#0
		ROR	A
		STA	off_10
		LDA	$6313
		ASL	A
		ASL	A
		ORA	off_10
		STA	off_10
		RTS
; End of function sub_3531

; ---------------------------------------------------------------------------
		LDA	byte_195A
		LDX	#$75 ; 'u'
		LDY	#0
		JSR	sub_2DE3
		BCS	loc_355C
		LDA	#$FF
		STA	byte_195D
		JMP	loc_320D
; ---------------------------------------------------------------------------

loc_355C:				; CODE XREF: RAM:3552j	RAM:356Ej
		LDA	#$FF
		STA	byte_1959
		JMP	loc_320D
; ---------------------------------------------------------------------------
		LDA	byte_195A
		LDX	#$75 ; 'u'
		LDY	#4
		JSR	sub_2DE3
		BCS	loc_355C
		LDA	byte_195A
		LDX	#$75 ; 'u'
		LDY	#4
		SEC
		JSR	sub_2DAB
		LDA	#$FF
		STA	byte_1979
		JMP	loc_320D
; ---------------------------------------------------------------------------
		JSR	sub_3596
		BCS	loc_358B
		JMP	loc_320D
; ---------------------------------------------------------------------------

loc_358B:				; CODE XREF: RAM:3586j
		LDA	#0
		STA	byte_1958
		STA	byte_192A
		JMP	loc_320D

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_3596:				; CODE XREF: sub_2BFA+410p RAM:3583p
		LDA	$7600
		BNE	loc_35BF
		LDA	$760A
		STA	$12
		LDA	$760B
		STA	$13
		LDA	byte_195A
		ASL	A
		TAY
		LDA	(off_12),Y
		STA	byte_191A
		INY
		LDA	(off_12),Y
		STA	byte_192A
		LDA	#7
		STA	byte_1933
		JSR	sub_3C2D
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_35BF:				; CODE XREF: sub_3596+3j
		SEC
		RTS
; End of function sub_3596

; ---------------------------------------------------------------------------
		LDA	byte_195A
		ASL	A
		ASL	A
		TAX
		LDA	byte_3BA7,X
		STA	$6313
		LDA	byte_3BA7+1,X
		STA	$6314
		LDA	byte_3BA7+2,X
		STA	$6315
		LDA	byte_3BA7+3,X
		BPL	loc_35E7
		CMP	#$FF
		BEQ	loc_35EA
		LDA	RANDOM
		AND	#3

loc_35E7:				; CODE XREF: RAM:35DCj
		STA	$6312

loc_35EA:				; CODE XREF: RAM:35E0j
		LDX	#4

loc_35EC:				; CODE XREF: RAM:35F3j
		LDA	byte_18BA,X
		STA	unk_3630,X
		DEX
		BPL	loc_35EC
		LDY	#8

loc_35F7:				; CODE XREF: RAM:3612j
		LDA	#$1A
		LDX	#4

loc_35FB:				; CODE XREF: RAM:35FFj
		STA	byte_18BA,X
		DEX
		BPL	loc_35FB
		JSR	sub_2C66
		LDA	#0
		LDX	#4

loc_3608:				; CODE XREF: RAM:360Cj
		STA	byte_18BA,X
		DEX
		BPL	loc_3608
		JSR	sub_2C66
		DEY
		BNE	loc_35F7
		LDX	#4

loc_3616:				; CODE XREF: RAM:361Dj
		LDA	unk_3630,X
		STA	byte_18BA,X
		DEX
		BPL	loc_3616
		LDA	#$FF
		STA	byte_196A
		STA	byte_1912
		STA	byte_1938
		STA	byte_1939
		JMP	loc_318C
; ---------------------------------------------------------------------------
unk_3630:	.BYTE $85 ; Ö		; DATA XREF: RAM:35EFw	RAM:loc_3616r
		.BYTE	3
		.BYTE $A2 ; ¢
		.BYTE	8
		.BYTE  $A

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_3635:				; CODE XREF: RAM:loc_3689p RAM:3756p ...
		LDA	#$FF
		STA	byte_197A
		DEC	$F
		DEC	$32
		DEC	byte_1937
		DEC	byte_1971
		LDA	off_1977
		STA	off_3681
		LDA	off_1977+1
		STA	off_3681+1
		LDA	#<byte_2007
		STA	off_16
		LDA	#>byte_2007
		STA	off_16+1
		JSR	sub_3CA5
		LDX	byte_1933
		STX	byte_194A
		RTS
; End of function sub_3635

; ---------------------------------------------------------------------------

loc_3662:				; CODE XREF: RAM:loc_36ECj RAM:375Cj ...
		JSR	sub_3CC2
		LDA	off_3681
		STA	off_1977
		LDA	off_3681+1
		STA	off_1977+1
		INC	$32
		INC	byte_1937
		INC	$F
		INC	byte_1971
		LDA	#0
		STA	byte_197A
		RTS
; ---------------------------------------------------------------------------
off_3681:	.WORD	$FFFF		; DATA XREF: sub_3635+12w RAM:3665r
; ---------------------------------------------------------------------------

loc_3683:
		LDA	byte_197A
		BEQ	loc_3689
		RTS
; ---------------------------------------------------------------------------

loc_3689:				; CODE XREF: RAM:3686j
		JSR	sub_3635
		LDA	#<byte_3710
		STA	off_16
		LDA	#>byte_3710
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C

loc_369A:				; CODE XREF: RAM:369Dj	RAM:36ACj
		JSR	sub_2643
		BMI	loc_369A
		JSR	sub_2BA5
		CMP	#'I'
		BEQ	loc_36B1
		CMP	#'S'
		BEQ	loc_36C3
		CMP	#$1B
		BNE	loc_369A
		JMP	loc_36EC
; ---------------------------------------------------------------------------

loc_36B1:				; CODE XREF: RAM:36A4j
		LDA	#<aExamineInvento
		STA	off_193A
		LDA	#>aExamineInvento
		STA	off_193A+1
		LDA	#$F0 ; ''
		STA	loc_51B0
		JMP	loc_36D2
; ---------------------------------------------------------------------------

loc_36C3:				; CODE XREF: RAM:36A8j
		LDA	#$D0 ; '–'
		STA	loc_51B0
		LDA	#<aExamineSpells
		STA	off_193A
		LDA	#>aExamineSpells
		STA	off_193A+1

loc_36D2:				; CODE XREF: RAM:36C0j
		LDA	#<aForwardBackEsc
		STA	off_1944
		LDA	#>aForwardBackEsc
		STA	off_1944+1
		LDA	#0
		STA	byte_6276
		JSR	sub_50B2

loc_36E4:				; CODE XREF: RAM:36E9j
		BCS	loc_36EC
		JSR	loc_50B7
		JMP	loc_36E4
; ---------------------------------------------------------------------------

loc_36EC:				; CODE XREF: RAM:36AEj	RAM:loc_36E4j
		JMP	loc_3662
; ---------------------------------------------------------------------------
aExamineInvento:.BYTE "Examine Inventory",0
aExamineSpells:	.BYTE "Examine Spells",0

byte_3710:
		MOVEXY 0,2
		.BYTE $A5
aExamine:	.BYTE "Examine "
		BLINK	"I"
aTemsOr:	.BYTE "tems or "
		BLINK	"S"
aPellsq:	.BYTE "pells?"
		.BYTE $D
		.BYTE $FF

aForwardBackEsc:
		BLINK	"F"
aOrward:	.BYTE "orward, "
		BLINK	"B"
aAckOr:		.BYTE "ack, or "
		BLINK	"ESC"
		.BYTE " to exit"
		.BYTE $AE
; ---------------------------------------------------------------------------

loc_3756:
		JSR	sub_3635
		JSR	sub_5857
		JMP	loc_3662
; ---------------------------------------------------------------------------

loc_375F:				; CODE XREF: RAM:189Fj
		JSR	sub_3635
		JSR	sub_5AB4
		JMP	loc_3662
; ---------------------------------------------------------------------------

loc_3768:
		JSR	sub_3635
		JSR	loc_5ACB
		JMP	loc_3662
; ---------------------------------------------------------------------------

loc_3771:				; CODE XREF: RAM:18A8j
		JSR	sub_3635
		JSR	sub_51B6
		JMP	loc_3662
; ---------------------------------------------------------------------------

loc_377A:
		JSR	sub_3635
		JSR	sub_577E
		JMP	loc_3662
; ---------------------------------------------------------------------------

loc_3783:
		LDA	$7600
		BEQ	loc_3789
		RTS
; ---------------------------------------------------------------------------

loc_3789:				; CODE XREF: RAM:3786j
		JSR	sub_3635
		LDA	#$BE ; 'æ'
		STA	off_16
		LDA	#$37 ; '7'
		STA	off_16+1
		JSR	sub_3C5C

loc_3797:				; CODE XREF: RAM:379Aj
		JSR	sub_2643
		BMI	loc_3797
		JSR	sub_2BA5
		CMP	#$59 ; 'Y'
		BNE	loc_37BB
		JSR	sub_3CC2
		LDA	#$31 ; '1'
		STA	SEGNO
		LDA	#0
		STA	SEGADDR
		LDA	#$76 ; 'v'
		STA	SEGADDR+1
		JSR	SEGLOAD
		JMP	$7600
; ---------------------------------------------------------------------------

loc_37BB:				; CODE XREF: RAM:37A1j
		JMP	loc_3662
; ---------------------------------------------------------------------------
		MOVEXY	0,2
		.BYTE $A5
aSaveCharacterq:.BYTE "Save character?"
		.BYTE $D
		.BYTE $D
		.BYTE $AC
		.WORD byte_382E
; ---------------------------------------------------------------------------

loc_37D6:
		DEC	$32
		LDA	#4
		STA	off_16
		LDA	#$38 ; '8'
		STA	off_16+1
		JSR	sub_1C88

loc_37E3:				; CODE XREF: RAM:37E6j
		JSR	sub_2643
		BMI	loc_37E3
		JSR	sub_2BA5
		CMP	#$59 ; 'Y'
		BNE	loc_37FC
		LDA	#0
		STA	$22F
		LDA	#1
		JSR	sub_1A0D
		JMP	loc_2EC6
; ---------------------------------------------------------------------------

loc_37FC:				; CODE XREF: RAM:37EDj
		INC	$32
		DEC	byte_1935
		JMP	sub_3C2D
; ---------------------------------------------------------------------------
		.BYTE $A8
		MOVEXY	0,2
		.BYTE $A5
aQuitGameWithou:.BYTE "Quit game without saving character?"
		.BYTE $D
		.BYTE $D
byte_382E:	.BYTE $A5		; DATA XREF: RAM:37D4o
aAreYouSure:	.BYTE "Are you sure ("
		BLINK	'Y'
aOr:		.BYTE " or "
		BLINK	'N'
		.BYTE ')'
		.BYTE $D
		.BYTE $FF
; ---------------------------------------------------------------------------

loc_384A:
		DEC	$32
		LDA	#<a_Paused
		STA	off_16
		LDA	#>a_Paused
		STA	off_16+1
		JSR	sub_3CA5
		JSR	sub_2BB0
		JSR	sub_3CC2
		INC	$32
		RTS
; ---------------------------------------------------------------------------

a_Paused:
		.BYTE $A8
		MOVEXY	0,2
		.BYTE $A5
aPaused:	.BYTE "(Paused)"
		.BYTE $D
		.BYTE $FF

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_386F:				; CODE XREF: sub_2BFA+3FCp RAM:30D8p
		LDA	#0
		STA	byte_38CF
		LDA	#$D0 ; '–'
		STA	off_16
		LDA	#$38 ; '8'
		STA	off_16+1
		LDA	$631E
		BEQ	loc_3882
		RTS
; ---------------------------------------------------------------------------

loc_3882:				; CODE XREF: sub_386F+10j
		LDX	#$F

loc_3884:				; CODE XREF: sub_386F+38j
		LDA	$6494,X
		CMP	#2
		BNE	loc_38A6
		LDA	$64A4,X
		CMP	$6313
		BNE	loc_38A6
		LDA	$64B4,X
		CMP	$6314
		BNE	loc_38A6
		LDA	$64C4,X
		CMP	$6315
		BNE	loc_38A6
		INC	byte_38CF

loc_38A6:				; CODE XREF: sub_386F+1Aj sub_386F+22j ...
		DEX
		BPL	loc_3884
		LDX	byte_38CF
		CPX	byte_1938
		BEQ	locret_38CE
		STX	byte_1938
		TXA
		BEQ	loc_38CB
		LDA	#$F9 ; '˘'
		STA	off_16
		LDA	#$38 ; '8'
		STA	off_16+1
		CPX	#2
		BCC	loc_38CB
		LDA	#$D5 ; '’'
		STA	off_16
		LDA	#$38 ; '8'
		STA	off_16+1

loc_38CB:				; CODE XREF: sub_386F+46j sub_386F+52j
		JSR	sub_1C84

locret_38CE:				; CODE XREF: sub_386F+40j
		RTS
; End of function sub_386F

; ---------------------------------------------------------------------------
byte_38CF:	.BYTE 0			; DATA XREF: sub_386F+2w sub_386F+34w	...
		MOVEXY	0,5
		.BYTE $AB
		.BYTE $FF
		MOVEXY	0,5
aThereAreSevera:.BYTE " There are several things here."
		.BYTE $AB
		.BYTE $FF
		MOVEXY	0,5
aThereIsSomethi:.BYTE " There is something here."
		.BYTE $AB
		.BYTE $FF

a_LevelStats:
		.BYTE $A8
		MOVEXY	31,0
aLevel:		.BYTE "Level:"
		MOVEXY	1,1
aStatsStaChrStr:.BYTE "Stats:  STA  CHR  STR  INT  WIS  SKL"
		MOVEXY	3,2
		.BYTE $7B ; {
		MOVEXY	1,3
aExperience:	.BYTE "Experience:"
		MOVEXY	23,3
aHitPoints:	.BYTE "Hit Points:"
		.BYTE $FF

byte_3969:
		MOVEXY	1,0
		.BYTE $B3
		.WORD $6321
		.BYTE $1C
		MOVEXY	37,0
		PRINTBYTE $633C,2
		MOVEXY	9,2
		PRINTBYTE $6349,3
		.BYTE "  "
		PRINTBYTE $6351,3
		.BYTE "  "
		PRINTBYTE $6359,3
		.BYTE "  "
		PRINTBYTE $6361,3
		.BYTE "  "
		PRINTBYTE $6369,3
		.BYTE "  "
		PRINTBYTE $6371,3
		MOVEXY	12,3
		PRINTDWORD $633D,10
		MOVEXY	34,3
		PRINTWORD $6345,5
		.BYTE $FF
		MOVEXY	0,4
		.BYTE $AB
		.BYTE $FF

a_TheDoorWontOpen:
		MOVEXY	0,0
		.BYTE $A5
aTheDoorWonTOpe:.BYTE "The door won't open. You may:"
		.BYTE $D
		MOVEXY	8,2
		.BYTE "("
		BLINK	'1'
aExamineTheDoor:.BYTE ") Examine the door."
		MOVEXY 8,3
		.BYTE '('
		BLINK	'2'
aForceTheDoor_:	.BYTE ") Force the door."
		MOVEXY	8,4
		.BYTE '('
		BLINK	'3'
		.BYTE ") Use a key."
		MOVEXY	8,5
		.BYTE '('
		BLINK	'4'
aBreakAnEnchant:.BYTE ") Break an enchantment."
		MOVEXY	8,7
		.BYTE '('
		BLINK	'0'
aLeaveIt_:	.BYTE ") Leave it."
		.BYTE $FF
		MOVEXY	0,2
		.BYTE $A5
aTheDoorAppears:.BYTE "The door appears to "
		.BYTE $B3
word_3A61:	.WORD $FFFF		; DATA XREF: RAM:3422w	RAM:3428w
		.BYTE $11
		.BYTE $D
		.BYTE $FF
		MOVEXY	0,2
		.BYTE $A5
aYouCanTDiscern:.BYTE "You can't discern what bars the door."
		.BYTE $D
		.BYTE $FF
		MOVEXY	0,2
		.BYTE $A5
aWham:		.BYTE "Wham!"
		.BYTE $D
		.BYTE $FF
		MOVEXY	0,2
		.BYTE $A5
aTheDoorOpens:	.BYTE "The door opens!"
		.BYTE $D
		.BYTE $FF

a_TheDoorRemains:
		MOVEXY	0,2
		.BYTE $A5
aTheDoorRemains:.BYTE "The door remains shut."
		.BYTE $D
		.BYTE $FF
		MOVEXY	0,2
		.BYTE	BLINKON
		.BYTE $A5
aExamining___:	.BYTE "Examining..."
		.BYTE $D
		.BYTE	BLINKOFF
		.BYTE $FF

a_Concentrating:
		MOVEXY	0,2
		.BYTE	BLINKON
		.BYTE $A5
aConcentrating_:.BYTE "Concentrating..."
		.BYTE $D
		.BYTE	BLINKOFF
		.BYTE $FF
		.BYTE $FF
		.BYTE  $B
		.BYTE $16
		.BYTE $3A ; :
		.BYTE $3B ; ;
		.BYTE $3B ; ;
aNeedAKey_:	.BYTE "need a key.",0
aBeBolted_:	.BYTE "be bolted.",0
aBeEnchanted:	.BYTE "be enchanted!",0
unk_3B24:	.BYTE $21 ; !		; DATA XREF: RAM:3170r
		.BYTE $21 ; !
		.BYTE $21 ; !
		.BYTE  $F
		.BYTE  $F
		.BYTE	7
		.BYTE	7
		.BYTE $21 ; !
		.BYTE $44 ; D
		.BYTE $48 ; H
		.BYTE $4C ; L
		.BYTE $DA ; ⁄
		.BYTE $DA ; ⁄
		.BYTE $DA ; ⁄
		.BYTE $DA ; ⁄
		.BYTE $DA ; ⁄
unk_3B34:	.BYTE $33 ; 3		; DATA XREF: RAM:3176r
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $33 ; 3
		.BYTE $32 ; 2
		.BYTE $32 ; 2
		.BYTE $32 ; 2
		.BYTE $32 ; 2
		.BYTE $32 ; 2
unk_3B44:	.BYTE	1		; DATA XREF: RAM:312Dr	RAM:3138r ...
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
		.BYTE	1
		.BYTE	0
unk_3B4C:	.BYTE $24 ; $		; DATA XREF: RAM:3159r
		.BYTE $DC ; ‹
		.BYTE $DC ; ‹
		.BYTE $24 ; $
		.BYTE $DC ; ‹
		.BYTE $24 ; $
		.BYTE $24 ; $
		.BYTE $DC ; ‹
unk_3B54:	.BYTE $FF		; DATA XREF: RAM:313Br	RAM:3328r
		.BYTE	1
		.BYTE	1
		.BYTE $FF
		.BYTE	1
		.BYTE $FF
		.BYTE $FF
		.BYTE	1
unk_3B5C:	.BYTE	0		; DATA XREF: RAM:32DDr	RAM:32EAr ...
		.BYTE $23 ; #
		.BYTE $23 ; #
		.BYTE	0
		.BYTE $23 ; #
		.BYTE	0
		.BYTE	0
		.BYTE $23 ; #
unk_3B64:	.BYTE	0		; DATA XREF: RAM:315Fr
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.WORD 0
unk_3B6C:	.BYTE	0		; DATA XREF: RAM:3164r
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $80 ; Ä
		.BYTE	0
		.BYTE $80 ; Ä
byte_3B74:	.BYTE 1			; DATA XREF: RAM:30F3r
byte_3B75:	.BYTE 2			; DATA XREF: RAM:30F8r
byte_3B76:	.BYTE 4			; DATA XREF: RAM:30FDr
		.BYTE	8

byte_3B78:
		.BYTE	"G"
		.BYTE	"D"
		.BYTE	"U"
		.BYTE	"C"
		.BYTE	"S"
		.BYTE	"E"
		.BYTE	"Q"
		.BYTE	"P"
		.BYTE	","
		.BYTE	"."
		.BYTE	$10
		.BYTE	$11
		.BYTE	$13

byte_3B85:
		.BYTE	<loc_3756
		.BYTE	<loc_3768
		.BYTE	<loc_3771
		.BYTE	<loc_377A
		.BYTE	<loc_3783
		.BYTE	<loc_3683
		.BYTE	<loc_37D6
		.BYTE	<loc_384A
		.BYTE	<loc_3C8C
		.BYTE	<loc_3C71
		.BYTE	<loc_3C71
		.BYTE	<loc_3C8C
		.BYTE	<loc_2CAB

byte_3B92:
		.BYTE	>loc_3756
		.BYTE	>loc_3768
		.BYTE	>loc_3771
		.BYTE	>loc_377A
		.BYTE	>loc_3783
		.BYTE	>loc_3683
		.BYTE	>loc_37D6
		.BYTE	>loc_384A
		.BYTE	>loc_3C8C
		.BYTE	>loc_3C71
		.BYTE	>loc_3C71
		.BYTE	>loc_3C8C
		.BYTE	>loc_2CAB
unk_3B9F:	.BYTE $48 ; H		; DATA XREF: sub_2BFA+5EAr
		.BYTE $64 ; d
		.BYTE $83 ; É
		.BYTE $C1 ; ¡
unk_3BA3:	.BYTE $35 ; 5		; DATA XREF: sub_2BFA+5F0r
		.BYTE $35 ; 5
		.BYTE $35 ; 5
		.BYTE $35 ; 5
byte_3BA7:	.BYTE $12,$1E,	0,$FF	; DATA XREF: RAM:35C7r	RAM:35CDr ...
		.BYTE $12,$1B,	0,  3
		.BYTE $13,$1B,	0,  1
		.BYTE  $F,$17,	0,  0
		.BYTE $1D,$17,	0,  0
		.BYTE	5,$1A,	0,$FF
		.BYTE $14,$1F,	0,  0
		.BYTE $10,  1,	0,$FF
		.BYTE  $B,  1,	1,$FF
		.BYTE $11,  7,	1,$FF
		.BYTE $11, $A,	1,$FF
		.BYTE  $B,$1C,	1,$FF
		.BYTE  $B,$1F,	1,$FF
		.BYTE	8, $F,	1,$80
		.BYTE $12,  9,	2,$80
		.BYTE	0,  1,	2,$FF
		.BYTE	0,$1E,	0,$FF
		.BYTE	1,  0,	1,$FF
		.BYTE $1E,  0,	0,$FF
		.BYTE $1F,$1E,	1,$FF
		.BYTE $1F,  1,	3,$FF
		.BYTE	1,$1F,	3,$FF
		.BYTE $1E,$1F,	2,$FF
		.BYTE	0,$12,	5,$FF
		.BYTE  $D, $F,	5,$FF
		.BYTE	3,  1,	3,$FF
		.BYTE	3,$1E,	1,$FF
		.BYTE  $B,  0,	4,$FF
		.BYTE $16,  7,	1,  2
		.BYTE $1A,  5,	1,  0
		.BYTE $1C,  7,	1,  2
		.BYTE $18,$1B,	2,  3
; ---------------------------------------------------------------------------

loc_3C27:				; CODE XREF: RAM:1845j
		CMP	byte_1933
		BEQ	sub_3C2D
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_3C2D:				; CODE XREF: RAM:1848j	RAM:2F6Ap ...
		LDX	byte_1933
		CPX	byte_1935
		BEQ	loc_3C40
		LDA	#7
		STA	off_16
		LDA	#$20 ; ' '
		STA	off_16+1
		JSR	sub_1C88

loc_3C40:				; CODE XREF: sub_3C2D+6j
		LDX	byte_1933
		STX	byte_1935
		LDA	byte_1913,X
		STA	off_16
		LDA	byte_1923,X
		BNE	loc_3C57
		LDX	#0
		STX	byte_1933
		BEQ	sub_3C2D

loc_3C57:				; CODE XREF: sub_3C2D+21j
		STA	off_16+1
		JMP	sub_1C88
; End of function sub_3C2D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_3C5C:				; CODE XREF: RAM:1851j	RAM:33AAp ...
		LDA	#$FF
		STA	byte_1935
; End of function sub_3C5C


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_3C61:				; CODE XREF: RAM:1836j	sub_5049+1Ep
		STX	byte_1933
		LDA	off_16
		STA	byte_1913,X
		LDA	off_16+1
		STA	byte_1923,X
		JMP	sub_3C2D
; End of function sub_3C61

; ---------------------------------------------------------------------------

loc_3C71:				; CODE XREF: RAM:3C87j
		INC	byte_1933
		LDA	byte_1933
		CMP	byte_1934
		BCC	loc_3C81
		LDA	#0
		STA	byte_1933

loc_3C81:				; CODE XREF: RAM:3C7Aj
		LDX	byte_1933
		LDA	byte_1923,X
		BEQ	loc_3C71
		JMP	sub_3C2D
; ---------------------------------------------------------------------------

loc_3C8C:				; CODE XREF: RAM:3CA0j
		DEC	byte_1933
		BPL	loc_3C9A
		LDA	byte_1934
		SEC
		SBC	#1
		STA	byte_1933

loc_3C9A:				; CODE XREF: RAM:3C8Fj
		LDX	byte_1933
		LDA	byte_1923,X
		BEQ	loc_3C8C
		JMP	sub_3C2D

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_3CA5:				; CODE XREF: RAM:184Bj	RAM:336Fp ...
		LDX	byte_1933
		STX	byte_1936
		LDX	byte_1934
		STX	byte_1933
		LDA	off_16
		STA	byte_1913,X
		LDA	off_16+1
		STA	byte_1923,X
		INX
		STX	byte_1934
		JMP	sub_3C2D
; End of function sub_3CA5


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_3CC2:				; CODE XREF: RAM:184Ej	RAM:33DDp ...
		DEC	byte_1934
		LDA	byte_1933
		CMP	byte_1934
		BCC	locret_3CDD
		LDA	byte_1936
		CMP	byte_1934
		BCC	loc_3CD7
		LDA	#0

loc_3CD7:				; CODE XREF: sub_3CC2+11j
		STA	byte_1933
		JMP	sub_3C2D
; ---------------------------------------------------------------------------

locret_3CDD:				; CODE XREF: sub_3CC2+9j
		RTS
; End of function sub_3CC2

; ---------------------------------------------------------------------------

byte_3CDE:
		MOVEXY	0,0
aFoodPackets:	.BYTE "Food Packets"
		MOVEXY	16,0
aTorches:	.BYTE "Torches"
		.BYTE $A7
aWaterFlasks:	.BYTE "Water Flasks"
		.BYTE $D
		MOVEXY	5,1
		PRINTBYTE I_FOOD,3
		MOVEXY	18,1
		PRINTBYTE $63BD,3
		MOVEXY	33,1
		PRINTBYTE $63BC,3
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aYouAreOnLevel:	.BYTE "You are on level "
		PRINTBYTE $631D,1
		.BYTE $D
		.BYTE $A5
aOfTheDungeon:	.BYTE "of the Dungeon"
		.BYTE $D
		MOVEXY	0,4
		PRINTSTR off_45A9,12
		.BYTE $D
		PRINTSTR off_45A7,12
		.BYTE $D
		PRINTSTR off_45A5,12
		.BYTE $D
		PRINTSTR off_45AD,12
		MOVEXY	28,4
		PRINTSTR off_45AB,12
		MOVEXY	28,5
		PRINTSTR off_45A3,12
		MOVEXY	28,6
		PRINTSTR off_45B3,12
		MOVEXY	28,7
		PRINTSTR off_45B1,12
		MOVEXY	14,6
		PRINTSTR off_45B5,12
		MOVEXY	14,7
		PRINTSTR off_45AF,12
		.BYTE $FF

byte_3D84:
		MOVEXY	0,0
aGoldCoinsSilve:.BYTE "Gold Coins   Silver Coins   Copper Coins  "
		PRINTWORD $63B1,6
		MOVEXY	16,1
		PRINTWORD $63B3,6
		MOVEXY	31,1
		PRINTWORD $63B5,6
		MOVEXY	12,3
aOtherPossessio:.BYTE "Other Possessions"
		MOVEXY	7,5
aGems:		.BYTE "Gems:"
		PRINTWORD $63B7,6
		MOVEXY	28,5
aKeys:		.BYTE "Keys:"
		PRINTBYTE I_KEYS,3
		MOVEXY	5,6
aJewels:	.BYTE "Jewels:"
		PRINTWORD $63B9,6
		MOVEXY	23,6
aCompasses:	.BYTE "Compasses:"
		PRINTBYTE $63C0,3
		MOVEXY	3,7
aCrystals:	.BYTE "Crystals:"
		PRINTBYTE $63BE,3
		MOVEXY	22,7
aTimepieces:	.BYTE "Timepieces:"
		PRINTBYTE $63C1,3
		.BYTE $FF

byte_3E31:
		MOVEXY	0,0
		.BYTE $A5
aWeapons:	.BYTE "Weapons"
		.BYTE $D
		.BYTE $A3
		.WORD loc_3F41
		MOVEXY	0,1
aPrimary:	.BYTE "Primary: "
		PRINTSTR off_407F,31
		.BYTE $AB
		MOVEXY	0,2
aSecondary:	.BYTE "Secondary: "
		PRINTSTR off_4081,29
		.BYTE $AB
		.BYTE $D
		.BYTE $A5
aArmor:		.BYTE "Armor"
		.BYTE $D
aHead:		.BYTE "Head: "
		PRINTSTR off_4083,34
		.BYTE $AB
		MOVEXY	0,5
aBody:		.BYTE "Body: "
		PRINTSTR off_4085,34
		.BYTE $AB
		MOVEXY	0,6
aArms:		.BYTE "Arms: "
		PRINTSTR off_4087,34
		.BYTE $AB
		MOVEXY	0,7
aLegs:		.BYTE "Legs: "
		PRINTSTR off_4089,34
		.BYTE $AB
		.BYTE $FF

byte_3EA2:
		MOVEXY	0,0
		.BYTE $A5
aApparel:	.BYTE "Apparel"
		.BYTE $D
		.BYTE $A3
		.WORD loc_3F8D
		MOVEXY	10,2
		.BYTE $A2
		PRINTSTR off_407F,30
		.BYTE $AB
		.BYTE $D
		.BYTE $A2
		PRINTSTR off_4081,30
		.BYTE $AB
		.BYTE $D
		.BYTE $A2
		PRINTSTR off_4083,30
		.BYTE $AB
		.BYTE $D
		.BYTE $A2
		PRINTSTR off_4085,30
		.BYTE $AB
		.BYTE $D
		.BYTE $FF

byte_3ED1:
		MOVEXY	0,0
		.BYTE $A5
aActiveMagic:	.BYTE "Active Magic"
		.BYTE $D
		.BYTE $A3
		.WORD loc_3FFC
		.BYTE $AC
		.WORD byte_3F15
		.BYTE $FF

byte_3EE9:
		MOVEXY	0,0
		.BYTE $A5
aKnownDiseases:	.BYTE "Known Diseases"
		.BYTE $D
		.BYTE $A3
		.WORD loc_3FF6
		.BYTE $AC
		.WORD byte_3F15
		.BYTE $FF

byte_3F03:
		MOVEXY	0,0
		.BYTE $A5
aCurses:	.BYTE "Curses"
		.BYTE $D
		.BYTE $A3
		.WORD loc_3FF9
		.BYTE $AC
		.WORD byte_3F15
		.BYTE $FF
byte_3F15:	.BYTE $D		; DATA XREF: RAM:3EE6o	RAM:3F00o ...
		.BYTE $A2
		PRINTSTR off_407F,38
		.BYTE $AB
		.BYTE $D
		.BYTE $A2
		PRINTSTR off_4081,38
		.BYTE $AB
		.BYTE $D
		.BYTE $A2
		PRINTSTR off_4083,38
		.BYTE $AB
		.BYTE $D
		.BYTE $A2
		PRINTSTR off_4085,38
		.BYTE $AB
		.BYTE $D
		.BYTE $A2
		PRINTSTR off_4087,38
		.BYTE $AB
		.BYTE $D
		.BYTE $A2
		PRINTSTR off_4089,38
		.BYTE $AB
		.BYTE $D
		.BYTE $AE
; ---------------------------------------------------------------------------

loc_3F41:				; DATA XREF: RAM:3E3Eo
		LDA	#<aBareHand
		STA	off_407F
		STA	off_4081
		LDA	#>aBareHand
		STA	off_407F+1
		STA	off_4081+1
		LDX	#7

loc_3F53:				; CODE XREF: RAM:3F5Fj
		LDA	#>aNone
		STA	off_4083,X
		DEX
		LDA	#<aNone
		STA	off_4083,X
		DEX
		BPL	loc_3F53
		LDA	#5
		STA	byte_407D

loc_3F66:				; CODE XREF: RAM:3F8Aj
		LDX	byte_407D
		LDA	$639C,X
		BMI	loc_3F87
		JSR	sub_4B74
		BEQ	loc_3F87
		CLC
		LDA	byte_407D
		ASL	A
		TAY
		LDA	off_41
		ADC	#6
		STA	off_407F,Y
		LDA	#0
		ADC	off_41+1
		STA	off_407F+1,Y

loc_3F87:				; CODE XREF: RAM:3F6Cj	RAM:3F71j
		DEC	byte_407D
		BPL	loc_3F66
		RTS
; ---------------------------------------------------------------------------

loc_3F8D:				; DATA XREF: RAM:3EAFo
		LDA	#<$4060
		STA	off_407F
		LDA	#>$4060
		STA	off_407F+1
		LDX	#5

loc_3F99:				; CODE XREF: RAM:3FA5j
		LDA	#>unk_5E53
		STA	off_4081,X
		DEX
		LDA	#<unk_5E53
		STA	off_4081,X
		DEX
		BPL	loc_3F99
		LDY	#4

loc_3FA9:				; CODE XREF: RAM:3FC8j
		LDX	#0

loc_3FAB:				; CODE XREF: RAM:3FC5j
		LDA	$63A2,X
		BPL	loc_3FC2

loc_3FB0:				; CODE XREF: RAM:3FB9j
		LDA	$63A3,X
		STA	$63A2,X
		INX
		CPX	#4
		BCC	loc_3FB0
		LDA	#$FF
		STA	$63A5
		BMI	loc_3FC7

loc_3FC2:				; CODE XREF: RAM:3FAEj
		INX
		CPX	#4
		BCC	loc_3FAB

loc_3FC7:				; CODE XREF: RAM:3FC0j
		DEY
		BNE	loc_3FA9
		LDA	#3
		STA	byte_407D

loc_3FCF:				; CODE XREF: RAM:3FF3j
		LDX	byte_407D
		LDA	$63A2,X
		BMI	loc_3FF0
		JSR	sub_4B74
		BEQ	loc_3FF0
		LDA	byte_407D
		ASL	A
		TAX
		CLC
		LDA	off_41
		ADC	#6
		STA	off_407F,X
		LDA	off_41+1
		ADC	#0
		STA	off_407F+1,X

loc_3FF0:				; CODE XREF: RAM:3FD5j	RAM:3FDAj
		DEC	byte_407D
		BPL	loc_3FCF
		RTS
; ---------------------------------------------------------------------------

loc_3FF6:				; DATA XREF: RAM:3EFDo
		LDA	#9
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_3FF9:				; DATA XREF: RAM:3F0Fo
		LDA	#$B
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_3FFC:				; DATA XREF: RAM:3EE3o
		LDA	#$C
		STA	byte_407E
		LDX	#$B

loc_4003:				; CODE XREF: RAM:400Fj
		LDA	#>unk_5E53
		STA	off_407F,X
		DEX
		LDA	#<unk_5E53
		STA	off_407F,X
		DEX
		BPL	loc_4003
		LDA	#0
		STA	$3D
		LDA	#$65 ; 'e'
		STA	$3E
		LDA	#0
		STA	$49
		STA	byte_407D

loc_4020:				; CODE XREF: RAM:405Dj
		LDY	#0
		LDA	(off_3D),Y
		CMP	#$E0 ; '‡'
		BCC	loc_404C
		AND	#$F
		CMP	byte_407E
		BNE	loc_404C
		LDA	byte_407D
		ASL	A
		TAX
		LDA	$3D
		ADC	#3
		STA	off_407F,X
		LDA	$3E
		ADC	#0
		STA	off_407F+1,X
		INC	byte_407D
		LDA	byte_407D
		CMP	#6
		BEQ	locret_405F

loc_404C:				; CODE XREF: RAM:4026j	RAM:402Dj
		LDA	$3D
		CLC
		ADC	#$10
		STA	$3D
		BCC	loc_4057
		INC	$3E

loc_4057:				; CODE XREF: RAM:4053j
		INC	$49
		LDA	$49
		CMP	#$40 ; '@'
		BCC	loc_4020

locret_405F:				; CODE XREF: RAM:404Aj
		RTS
; ---------------------------------------------------------------------------
aBirthdaySuit:	.BYTE "Birthday suit",0
aBareHand:	.BYTE "Bare hand",0
aNone:		.BYTE "None",0
byte_407D:	.BYTE 0			; DATA XREF: RAM:3F63w	RAM:loc_3F66r ...
byte_407E:	.BYTE 0			; DATA XREF: RAM:3FFEw	RAM:402Ar
off_407F:	.WORD	0		; DATA XREF: RAM:3E4Do	RAM:3EB6o ...
off_4081:	.WORD	0		; DATA XREF: RAM:3E60o	RAM:3EBDo ...
off_4083:	.WORD	0		; DATA XREF: RAM:3E73o	RAM:3EC4o ...
off_4085:	.WORD	0		; DATA XREF: RAM:3E81o	RAM:3ECBo ...
off_4087:	.WORD	0		; DATA XREF: RAM:3E8Fo	RAM:3F34o
off_4089:	.WORD	0		; DATA XREF: RAM:3E9Do	RAM:3F3Bo

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_408B:				; CODE XREF: RAM:18A5j
					; sub_2BFA:loc_2FF3p
		JSR	sub_4A5F
		LDX	$50
		BEQ	loc_4095
		JMP	loc_40CD
; ---------------------------------------------------------------------------

loc_4095:				; CODE XREF: sub_408B+5j
		DEX
		LDY	#0
		LDA	byte_1962
		STX	$50
		STY	byte_1962
		STA	byte_413C
		JSR	loc_41FC

loc_40A6:				; CODE XREF: sub_408B+3Fj
		JSR	loc_47F2
		JSR	loc_4176
		JSR	sub_42E7
		JSR	loc_4377
		JSR	loc_43C6
		LDA	$638B
		BEQ	loc_40BF
		DEC	byte_1956
		LDA	#$FF

loc_40BF:				; CODE XREF: sub_408B+2Dj
		STA	byte_1957
		JSR	loc_413D
		DEC	byte_413C
		BMI	loc_40CD
		JMP	loc_40A6
; ---------------------------------------------------------------------------

loc_40CD:				; CODE XREF: sub_408B+7j sub_408B+3Dj
		LDA	byte_195F
		BEQ	loc_40EB
		JSR	sub_42E7
		JSR	loc_43C6
		LDA	#$69 ; 'i'
		STA	off_16
		LDA	#$39 ; '9'
		STA	off_16+1
		JSR	sub_1C84
		JSR	sub_3C2D
		LDA	#0
		STA	byte_195F

loc_40EB:				; CODE XREF: sub_408B+45j
		LDA	$6345
		ORA	$6346
		BNE	locret_413B
		LDA	#$FF
		LDX	#3

loc_40F7:				; CODE XREF: sub_408B+70j
		STA	$6345,X
		DEX
		BPL	loc_40F7
		LDA	#0
		STA	$22F
		LDX	#3

loc_4104:				; CODE XREF: sub_408B+7Dj
		STA	$D000,X
		DEX
		BPL	loc_4104
		LDA	#1
		JSR	sub_1A0D
		LDA	#$69 ; 'i'
		STA	off_16
		LDA	#$39 ; '9'
		STA	off_16+1
		JSR	sub_1C84
		DEC	$32
		DEC	$F
		LDA	#$F0 ; ''

loc_4120:				; CODE XREF: sub_408B+99j
		JSR	sub_2C66
		DEX
		BNE	loc_4120
		LDA	#$35 ; '5'
		STA	SEGNO
		LDA	#0
		STA	SEGADDR
		LDA	#$76 ; 'v'
		STA	SEGADDR+1
		JSR	SEGLOAD
		JMP	$7600
; ---------------------------------------------------------------------------

locret_413B:				; CODE XREF: sub_408B+66j
		RTS
; End of function sub_408B

; ---------------------------------------------------------------------------
byte_413C:	.BYTE 0			; DATA XREF: sub_408B+15w sub_408B+3Aw
; ---------------------------------------------------------------------------

loc_413D:				; CODE XREF: sub_408B+37p
		LDA	$7600
		BNE	locret_4171
		BIT	$32
		BMI	locret_4171
		LDA	$6382
		LDX	byte_1973
		SEC
		SBC	#$80 ; 'Ä'
		CLC
		BMI	loc_415B
		ADC	unk_4172,X
		BCC	loc_4162
		LDA	#$FF
		BMI	loc_4162

loc_415B:				; CODE XREF: RAM:4150j
		ADC	unk_4172,X
		BCS	loc_4162
		LDA	#0

loc_4162:				; CODE XREF: RAM:4155j	RAM:4159j ...
		STA	loc_4168+1
		LDA	RANDOM

loc_4168:				; DATA XREF: RAM:loc_4162w
		CMP	#$FF
		BEQ	loc_416E
		BCS	locret_4171

loc_416E:				; CODE XREF: RAM:416Aj
		DEC	byte_195D

locret_4171:				; CODE XREF: RAM:4140j	RAM:4144j ...
		RTS
; ---------------------------------------------------------------------------
unk_4172:	.BYTE  $C		; DATA XREF: RAM:4152r	RAM:loc_415Br
		.BYTE $10
		.BYTE $18
		.BYTE $20
; ---------------------------------------------------------------------------

loc_4176:				; CODE XREF: sub_408B+1Ep
		DEC	byte_4590
		BNE	loc_4187
		LDA	#$21 ; '!'
		STA	byte_4590
		LDX	#I_HUNGER-SEG_6300
		LDA	#1
		JSR	SUBSTAT1

loc_4187:				; CODE XREF: RAM:4179j
		DEC	byte_4591
		BNE	loc_4198
		LDA	#$16
		STA	byte_4591
		LDX	#I_THIRST-SEG_6300
		LDA	#1
		JSR	SUBSTAT1

loc_4198:				; CODE XREF: RAM:418Aj
		DEC	byte_4592
		BNE	loc_41AE
		LDA	#$E
		STA	byte_4592
		BIT	byte_1972
		BMI	loc_41AE
		LDX	#I_ENERGY-SEG_6300
		LDA	#1
		JSR	SUBSTAT1

loc_41AE:				; CODE XREF: RAM:419Bj	RAM:41A5j
		DEC	byte_4593
		BNE	loc_41DE
		LDA	#1
		STA	byte_4593
		LDA	$6396
		BEQ	loc_41CA
		DEC	$6396
		LDX	#I_DRUNK-SEG_6300
		LDA	#1
		JSR	ADDSTAT1
		JMP	loc_41DE
; ---------------------------------------------------------------------------

loc_41CA:				; CODE XREF: RAM:41BBj
		LDA	loc_41D2+1
		EOR	#$FF
		STA	loc_41D2+1

loc_41D2:				; DATA XREF: RAM:loc_41CAr RAM:41CFw
		LDA	#$FF
		BMI	loc_41DE
		LDA	$6397
		BEQ	loc_41DE
		DEC	$6397

loc_41DE:				; CODE XREF: RAM:41B1j	RAM:41C7j ...
		DEC	byte_4594
		BNE	locret_41EF
		LDA	#2
		STA	byte_4594
		LDX	#I_STOMACH-SEG_6300
		LDA	#1
		JSR	SUBSTAT1

locret_41EF:				; CODE XREF: RAM:41E1j
		RTS
; ---------------------------------------------------------------------------
		.BYTE	4
		.BYTE	4
		.BYTE	4
		.BYTE	3
		.BYTE	3
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	3
		.BYTE	3
		.BYTE	2
		.BYTE	2
; ---------------------------------------------------------------------------

loc_41FC:				; CODE XREF: sub_408B+18p
		LDA	byte_1960
		BNE	loc_4202
		RTS
; ---------------------------------------------------------------------------

loc_4202:				; CODE XREF: RAM:41FFj
		LDA	#0
		STA	byte_1960
		STA	byte_1976
		STA	byte_195E
		STA	$6394
		STA	byte_42E5
		STA	byte_42E6
		LDA	#3
		STA	$5C

loc_421A:				; CODE XREF: RAM:423Fj
		LDX	$5C
		LDA	$63A2,X
		BMI	loc_423D
		STA	$4B
		JSR	sub_4B74
		JSR	sub_4EC4
		LDY	#0
		LDA	byte_1976
		ADC	(off_43),Y
		STA	byte_1976
		INY
		LDA	byte_195E
		CLC
		ADC	(off_43),Y
		STA	byte_195E

loc_423D:				; CODE XREF: RAM:421Fj
		DEC	$5C
		BPL	loc_421A
		LDA	byte_195E
		CLC
		ADC	byte_1953
		STA	$6395
		LDA	#$3F ; '?'
		STA	$4B

loc_424F:				; CODE XREF: RAM:4271j
		LDA	$4B
		JSR	sub_4B74
		BEQ	loc_426F
		LDY	#0
		LDA	(off_41),Y
		BPL	loc_426F
		LDY	#4
		LDA	(off_41),Y
		CLC
		ADC	byte_42E5
		STA	byte_42E5
		LDA	byte_42E6
		ADC	#0
		STA	byte_42E6

loc_426F:				; CODE XREF: RAM:4254j	RAM:425Aj
		DEC	$4B
		BPL	loc_424F
		LDX	#4

loc_4275:				; CODE XREF: RAM:429Bj
		TXA
		ASL	A
		TAY
		LDA	$63B1,Y
		STA	$58
		LDA	$63B2,Y
		LDY	$41F0,X

loc_4283:				; CODE XREF: RAM:4289j
		BEQ	loc_428B
		LSR	$58
		ROR	A
		DEY
		BPL	loc_4283

loc_428B:				; CODE XREF: RAM:loc_4283j
		CLC
		ADC	byte_42E5
		STA	byte_42E5
		LDA	byte_42E6
		ADC	#0
		STA	byte_42E6
		DEX
		BPL	loc_4275
		LDX	#6

loc_429F:				; CODE XREF: RAM:42BBj
		LDA	I_FOOD,X
		LDY	$41F5,X

loc_42A5:				; CODE XREF: RAM:42A9j
		BEQ	loc_42AB
		LSR	A
		DEY
		BPL	loc_42A5

loc_42AB:				; CODE XREF: RAM:loc_42A5j
		CLC
		ADC	byte_42E5
		STA	byte_42E5
		LDA	byte_42E6
		ADC	#0
		STA	byte_42E6
		DEX
		BPL	loc_429F
		LDA	$6359
		LSR	A
		STA	loc_42C8+1
		LDA	byte_42E5
		SEC

loc_42C8:				; DATA XREF: RAM:42C1w
		SBC	#$FF
		STA	byte_42E5
		LDA	byte_42E6
		SBC	#0
		STA	byte_42E6
		BCC	locret_42E4
		BEQ	loc_42DE
		LDA	#$FF
		STA	byte_42E5

loc_42DE:				; CODE XREF: RAM:42D7j
		LDA	byte_42E5
		STA	$6394

locret_42E4:				; CODE XREF: RAM:42D5j
		RTS
; ---------------------------------------------------------------------------
byte_42E5:	.BYTE $FF		; DATA XREF: RAM:4210w	RAM:4261r ...
byte_42E6:	.BYTE $FF		; DATA XREF: RAM:4213w	RAM:4267r ...

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_42E7:				; CODE XREF: sub_408B+21p sub_408B+47p
		LDA	#$E5 ; 'Â'
		STA	off_45B1
		STA	off_45B3
		STA	off_45B5
		LDA	#$47 ; 'G'
		STA	off_45B1+1
		STA	off_45B3+1
		STA	off_45B5+1
		BIT	$6391
		BPL	loc_430C
		LDA	#$CB ; 'À'
		STA	off_45B1
		LDA	#$47 ; 'G'
		STA	off_45B1+1

loc_430C:				; CODE XREF: sub_42E7+19j
		BIT	$6392
		BPL	loc_431B
		LDA	#$BE ; 'æ'
		STA	off_45B3
		LDA	#$47 ; 'G'
		STA	off_45B3+1

loc_431B:				; CODE XREF: sub_42E7+28j
		BIT	$6393
		BPL	loc_432A
		LDA	#$D8 ; 'ÿ'
		STA	off_45B5
		LDA	#$47 ; 'G'
		STA	off_45B5+1

loc_432A:				; CODE XREF: sub_42E7+37j
		LDX	#6
		STX	$5C

loc_432E:				; CODE XREF: sub_42E7+8Dj
		LDA	byte_45E0,X
		STA	off_58
		LDA	byte_45E7,X
		STA	off_58+1
		LDA	byte_45EE,X
		STA	off_5A
		LDA	byte_45F5,X
		STA	off_5A+1
		LDA	byte_45D9,X
		TAY
		LDA	SEG_6300,Y
		LDY	#0

loc_434B:				; CODE XREF: sub_42E7+6Bj
		CMP	(off_58),Y
		BCC	loc_4354
		BEQ	loc_4354
		INY
		BNE	loc_434B

loc_4354:				; CODE XREF: sub_42E7+66j sub_42E7+68j
		TYA
		CMP	$1963,X
		BEQ	loc_4360
		DEC	byte_195F
		STA	$1963,X

loc_4360:				; CODE XREF: sub_42E7+71j
		ASL	A
		TAY
		TXA
		ASL	A
		TAX
		LDA	(off_5A),Y
		STA	$45A3,X
		INY
		LDA	(off_5A),Y
		STA	$45A4,X
		DEC	$5C
		LDX	$5C
		BPL	loc_432E
		RTS
; End of function sub_42E7

; ---------------------------------------------------------------------------

loc_4377:				; CODE XREF: sub_408B+24p
		LDA	$639B
		STA	byte_43C5
		LDX	#6
		STX	$5C

loc_4381:				; CODE XREF: RAM:43B7j
		DEC	byte_4595,X
		BNE	loc_43B3
		LDA	byte_459C,X
		STA	byte_4595,X
		LDA	byte_45FC,X
		STA	off_58
		LDA	byte_4603,X
		STA	off_58+1
		LDY	$1963,X
		LDA	(off_58),Y
		BEQ	loc_43B3
		ASL	A
		TAY
		LDA	off_45B5,Y
		STA	loc_43B0+1
		LDA	off_45B5+1,Y
		STA	loc_43B0+2
		LDA	#$FF
		STA	byte_195F

loc_43B0:				; DATA XREF: RAM:43A2w	RAM:43A8w
		JSR	$FFFF

loc_43B3:				; CODE XREF: RAM:4384j	RAM:439Bj
		DEC	$5C
		LDX	$5C
		BPL	loc_4381
		BIT	byte_1972
		BPL	locret_43C4
		LDA	byte_43C5
		STA	$639B

locret_43C4:				; CODE XREF: RAM:43BCj
		RTS
; ---------------------------------------------------------------------------
byte_43C5:	.BYTE 0			; DATA XREF: RAM:437Aw	RAM:43BEr
; ---------------------------------------------------------------------------

loc_43C6:				; CODE XREF: sub_408B+27p sub_408B+4Ap
		LDA	$6346
		CMP	$6348
		LDA	$6345
		SBC	$6347
		BCC	loc_43E2
		LDX	#1

loc_43D6:				; CODE XREF: RAM:43DDj
		LDA	$6347,X
		STA	$6345,X
		DEX
		BPL	loc_43D6
		LDA	#'='
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_43E2:				; CODE XREF: RAM:43D2j
		LDA	#':'
		STA	$499
		LDA	#<$6349
		STA	off_58
		LDA	#>$6349
		STA	off_58+1
		LDX	#6

loc_43F1:				; CODE XREF: RAM:442Ej
		LDY	#1
		LDA	(off_58),Y
		CLC
		LDY	#2
		ADC	(off_58),Y
		BCC	loc_43FE
		LDA	#$FF

loc_43FE:				; CODE XREF: RAM:43FAj
		SEC
		INY
		SBC	(off_58),Y
		BCS	loc_4406
		LDA	#0

loc_4406:				; CODE XREF: RAM:4402j
		INY
		SEC
		SBC	(off_58),Y
		BCS	loc_440E
		LDA	#0

loc_440E:				; CODE XREF: RAM:440Aj
		INY
		SEC
		SBC	(off_58),Y
		BCS	loc_4416
		LDA	#0

loc_4416:				; CODE XREF: RAM:4412j
		INY
		SEC
		SBC	(off_58),Y
		BCS	loc_441E
		LDA	#0

loc_441E:				; CODE XREF: RAM:441Aj
		LDY	#0
		STA	(off_58),Y
		LDA	#8
		CLC
		ADC	$58
		STA	$58
		BCC	loc_442D
		INC	$59

loc_442D:				; CODE XREF: RAM:4429j
		DEX
		BPL	loc_43F1
		LDA	$6379
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	byte_445F,X
		STA	$6383
		BIT	$6398
		BPL	loc_4446
		LSR	$6383

loc_4446:				; CODE XREF: RAM:4441j
		LDA	$6383
		CMP	#4
		BCS	loc_4452
		LDA	#4
		STA	$6383

loc_4452:				; CODE XREF: RAM:444Bj
		LDA	$6394
		CMP	#$E0 ; '‡'
		BCC	locret_445E
		LDA	#2
		STA	$6383

locret_445E:				; CODE XREF: RAM:4457j
		RTS
; ---------------------------------------------------------------------------

byte_445F:
		.BYTE	6
		.BYTE	7
		.BYTE	8
		.BYTE	9
		.BYTE  $A
		.BYTE  $B
		.BYTE  $C
		.BYTE  $D
		.BYTE  $E
		.BYTE  $F
		.BYTE $10
		.BYTE $11
		.BYTE $11
		.BYTE $11
		.BYTE $12
		.BYTE $12
; ---------------------------------------------------------------------------

loc_446F:				; CODE XREF: RAM:loc_449Dp
					; RAM:loc_44AEp ...
		LDA	RANDOM
		STA	loc_4479+1
		LDA	$6349
		LSR	A

loc_4479:				; DATA XREF: RAM:4472w
		CMP	#$FF
		BCS	loc_447E
		RTS
; ---------------------------------------------------------------------------

loc_447E:				; CODE XREF: RAM:447Bj
		PLA
		PLA
		RTS
; ---------------------------------------------------------------------------

loc_4481:				; DATA XREF: RAM:45B7o
		LDX	#I_ENERGY-SEG_6300
		LDA	#1
		JSR	SUBSTAT1
		LDX	#$99 ; 'ô'
		LDA	#1
		JMP	SUBSTAT1
; ---------------------------------------------------------------------------

loc_448F:				; DATA XREF: RAM:45B9o
		LDX	#I_ENERGY-SEG_6300
		LDA	#1
		JSR	SUBSTAT1
		LDX	#$9A ; 'ö'
		LDA	#1
		JMP	SUBSTAT1
; ---------------------------------------------------------------------------

loc_449D:				; DATA XREF: RAM:45BBo
		JSR	loc_446F
		LDX	#$5D ; ']'
		LDA	#1
		JSR	ADDSTAT1
		LDX	#$7D ; '}'
		LDA	#1
		JMP	ADDSTAT1
; ---------------------------------------------------------------------------

loc_44AE:				; DATA XREF: RAM:45BDo
		JSR	loc_446F
		LDX	#$45 ; 'E'
		LDA	#1
		JSR	SUBSTAT2
		LDX	#$5D ; ']'
		LDA	#1
		JSR	ADDSTAT1
		LDX	#$75 ; 'u'
		LDA	#1
		JSR	ADDSTAT1
		LDX	#$7D ; '}'
		LDA	#1
		JSR	ADDSTAT1
		LDX	#I_ENERGY-SEG_6300
		LDA	#1
		JMP	SUBSTAT1
; ---------------------------------------------------------------------------

loc_44D4:				; DATA XREF: RAM:45D3o
		LDX	#$5D ; ']'
		LDA	#1
		JSR	SUBSTAT1
		LDX	#$75 ; 'u'
		LDA	#1
		JSR	SUBSTAT1
		LDX	#$7D ; '}'
		LDA	#1
		JMP	SUBSTAT1
; ---------------------------------------------------------------------------

loc_44E9:				; DATA XREF: RAM:45BFo
		JSR	loc_446F
		LDX	#$5E ; '^'
		LDA	#1
		JSR	ADDSTAT1
		LDX	#$7E ; '~'
		LDA	#1
		JMP	ADDSTAT1
; ---------------------------------------------------------------------------

loc_44FA:				; DATA XREF: RAM:45C1o
		JSR	loc_446F
		LDX	#$45 ; 'E'
		LDA	#1
		JSR	SUBSTAT2
		LDX	#$5E ; '^'
		LDA	#1
		JSR	ADDSTAT1
		LDX	#$7E ; '~'
		LDA	#1
		JSR	ADDSTAT1
		LDX	#$9B ; 'õ'
		LDA	#1
		JMP	SUBSTAT1
; ---------------------------------------------------------------------------

loc_4519:				; DATA XREF: RAM:45D5o
		LDX	#$5E ; '^'
		LDA	#1
		JSR	SUBSTAT1
		LDX	#$7E ; '~'
		LDA	#1
		JMP	SUBSTAT1
; ---------------------------------------------------------------------------

loc_4527:				; DATA XREF: RAM:45C3o
		JSR	loc_446F
		LDA	byte_1972
		BPL	loc_4530
		RTS
; ---------------------------------------------------------------------------

loc_4530:				; CODE XREF: RAM:452Dj
		LDX	#$7F ; ''
		LDA	#1
		JSR	ADDSTAT1
		LDX	#$5F ; '_'
		LDA	#1
		JMP	ADDSTAT1
; ---------------------------------------------------------------------------

loc_453E:				; DATA XREF: RAM:45C5o
		JSR	loc_446F
		BIT	byte_1972
		BPL	loc_4547
		RTS
; ---------------------------------------------------------------------------

loc_4547:				; CODE XREF: RAM:4544j
		LDX	#$45 ; 'E'
		LDA	#1
		JSR	SUBSTAT2
		LDX	#$7F ; ''
		LDA	#1
		JSR	ADDSTAT1
		LDX	#$5F ; '_'
		LDA	#1
		JSR	ADDSTAT1
		LDX	#$77 ; 'w'
		LDA	#1
		JMP	ADDSTAT1
; ---------------------------------------------------------------------------

loc_4563:				; DATA XREF: RAM:45D7o
		LDX	#$7F ; ''
		LDA	#1
		JSR	SUBSTAT1
		LDX	#$5F ; '_'
		LDA	#1
		JSR	SUBSTAT1
		LDX	#$77 ; 'w'
		LDA	#1
		JMP	SUBSTAT1
; ---------------------------------------------------------------------------

loc_4578:				; DATA XREF: RAM:45C7o
		JSR	loc_446F
		LDX	#I_ENERGY-SEG_6300
		LDA	#1
		JMP	SUBSTAT1
; ---------------------------------------------------------------------------

loc_4582:				; DATA XREF: RAM:45C9o
		JSR	loc_446F
		LDX	#I_ENERGY-SEG_6300
		LDA	#1
		JMP	SUBSTAT1
; ---------------------------------------------------------------------------

locret_458C:				; DATA XREF: RAM:45CBo
		RTS
; ---------------------------------------------------------------------------

locret_458D:				; DATA XREF: RAM:45CDo
		RTS
; ---------------------------------------------------------------------------

locret_458E:				; DATA XREF: RAM:45CFo
		RTS
; ---------------------------------------------------------------------------

locret_458F:				; DATA XREF: RAM:45D1o
		RTS
; ---------------------------------------------------------------------------
byte_4590:	.BYTE $21		; DATA XREF: RAM:loc_4176w RAM:417Dw
byte_4591:	.BYTE $16		; DATA XREF: RAM:loc_4187w RAM:418Ew
byte_4592:	.BYTE $E		; DATA XREF: RAM:loc_4198w RAM:419Fw
byte_4593:	.BYTE 4			; DATA XREF: RAM:loc_41AEw RAM:41B5w
byte_4594:	.BYTE 3			; DATA XREF: RAM:loc_41DEw RAM:41E5w

byte_4595:
		.BYTE	4
		.BYTE $21 ; !
		.BYTE $16
		.BYTE  $E
		.BYTE	3
		.BYTE	2
		.BYTE	2

byte_459C:
		.BYTE	4
		.BYTE $21 ; !
		.BYTE $16
		.BYTE  $E
		.BYTE	3
		.BYTE	2
		.BYTE	2
off_45A3:	.WORD asc_47E5		; DATA XREF: RAM:3D64o
					; "	       "
off_45A5:	.WORD asc_47E5		; DATA XREF: RAM:3D51o
					; "	       "
off_45A7:	.WORD asc_47E5		; DATA XREF: RAM:3D4Co
					; "	       "
off_45A9:	.WORD asc_47E5		; DATA XREF: RAM:3D47o
					; "	       "
off_45AB:	.WORD asc_47E5		; DATA XREF: RAM:3D5Do
					; "	       "
off_45AD:	.WORD asc_47E5		; DATA XREF: RAM:3D56o
					; "	       "
off_45AF:	.WORD asc_47E5		; DATA XREF: RAM:3D80o
					; "	       "
off_45B1:	.WORD asc_47E5		; DATA XREF: RAM:3D72o	sub_42E7+2w ...
					; "	       "
off_45B3:	.WORD asc_47E5		; DATA XREF: RAM:3D6Bo	sub_42E7+5w ...
					; "	       "
off_45B5:	.WORD asc_47E5		; DATA XREF: RAM:3D79o	sub_42E7+8w ...
					; "	       "
		.WORD loc_4481
		.WORD loc_448F
		.WORD loc_449D
		.WORD loc_44AE
		.WORD loc_44E9
		.WORD loc_44FA
		.WORD loc_4527
		.WORD loc_453E
		.WORD loc_4578
		.WORD loc_4582
		.WORD locret_458C
		.WORD locret_458D
		.WORD locret_458E
		.WORD locret_458F
		.WORD loc_44D4
		.WORD loc_4519
		.WORD loc_4563

byte_45D9:
		.BYTE	I_TEMPER-SEG_6300
		.BYTE	I_HUNGER-SEG_6300
		.BYTE	I_THIRST-SEG_6300
		.BYTE	I_ENERGY-SEG_6300
		.BYTE	I_BURDEN-SEG_6300
		.BYTE	I_DRUNK-SEG_6300
		.BYTE	I_STOMACH-SEG_6300

byte_45E0:
		.BYTE	<byte_460A
		.BYTE	<byte_4626
		.BYTE	<byte_4636
		.BYTE	<byte_4646
		.BYTE	<byte_4656
		.BYTE	<byte_4666
		.BYTE	<byte_4676

byte_45E7:
		.BYTE	>byte_460A
		.BYTE	>byte_4626
		.BYTE	>byte_4636
		.BYTE	>byte_4646
		.BYTE	>byte_4656
		.BYTE	>byte_4666
		.BYTE	>byte_4676

byte_45EE:
		.BYTE	<off_4618
		.BYTE	<off_462E
		.BYTE	<off_463E
		.BYTE	<off_464E
		.BYTE	<off_465E
		.BYTE	<off_466E
		.BYTE	<off_467E

byte_45F5:
		.BYTE	>off_4618
		.BYTE	>off_462E
		.BYTE	>off_463E
		.BYTE	>off_464E
		.BYTE	>off_465E
		.BYTE	>off_466E
		.BYTE	>off_467E

byte_45FC:
		.BYTE	<byte_4611
		.BYTE	<byte_462A
		.BYTE	<byte_463A
		.BYTE	<byte_464A
		.BYTE	<byte_465A
		.BYTE	<byte_466A
		.BYTE	<byte_467A

byte_4603:
		.BYTE	>byte_4611
		.BYTE	>byte_462A
		.BYTE	>byte_463A
		.BYTE	>byte_464A
		.BYTE	>byte_465A
		.BYTE	>byte_466A
		.BYTE	>byte_467A

byte_460A:
		.BYTE $20
		.BYTE $40 ; @
		.BYTE $60 ; `
		.BYTE $A0 ; †
		.BYTE $C0 ; ¿
		.BYTE $E0 ; ‡
		.BYTE $FF

byte_4611:
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	2

off_4618:
		.WORD aFreezing		; "   Freezing!"
		.WORD aCold		; "	   Cold"
		.WORD aChilly		; "	 Chilly"
		.WORD asc_47E5		; "	       "
		.WORD aWarm		; "	   Warm"
		.WORD aHot		; "	    Hot"
		.WORD aRoasting		; "   Roasting!"

byte_4626:
		.BYTE $30 ; 0
		.BYTE $80 ; Ä
		.BYTE $EC ; Ï
		.BYTE $FF

byte_462A:
		.BYTE	4
		.BYTE	3
		.BYTE	0
		.BYTE  $F

off_462E:
		.WORD aStarving		; "Starving!   "
		.WORD aFamished		; "Famished    "
		.WORD aHungry		; "Hungry      "
		.WORD asc_47E5		; "	       "

byte_4636:
		.BYTE $40 ; @
		.BYTE $80 ; Ä
		.BYTE $D0 ; –
		.BYTE $FF

byte_463A:
		.BYTE	6
		.BYTE	5
		.BYTE	0
		.BYTE $10

off_463E:
		.WORD aDehydrated	; "Dehydrated! "
		.WORD aParched		; "Parched     "
		.WORD aThirsty		; "Thirsty     "
		.WORD asc_47E5		; "	       "

byte_4646:
		.BYTE $40 ; @
		.BYTE $A0 ; †
		.BYTE $C0 ; ¿
		.BYTE $FF

byte_464A:
		.BYTE	8
		.BYTE	7
		.BYTE	0
		.BYTE $11

off_464E:
		.WORD aExhausted	; "Exhausted!  "
		.WORD aTired		; "Tired       "
		.WORD aWeary		; "Weary       "
		.WORD asc_47E5		; "	       "

byte_4656:
		.BYTE $80 ; Ä
		.BYTE $C0 ; ¿
		.BYTE $F0 ; 
		.BYTE $FF

byte_465A:
		.BYTE	0
		.BYTE	0
		.BYTE	9
		.BYTE  $A

off_465E:
		.WORD asc_47E5		; "	       "
		.WORD aBurdened		; "    Burdened"
		.WORD aEncumbered	; "  Encumbered"
		.WORD aImmobilized	; "Immobilized!"

byte_4666:
		.BYTE	8
		.BYTE $10
		.BYTE $20
		.BYTE $FF

byte_466A:
		.BYTE	0
		.BYTE	0
		.BYTE  $B
		.BYTE  $C

off_466E:
		.WORD asc_47E5		; "	       "
		.WORD aTipsy		; "Tipsy       "
		.WORD aDrunk		; "Drunk       "
		.WORD aVeryDrunk	; "Very	Drunk! "

byte_4676:
		.BYTE $40 ; @
		.BYTE $60 ; `
		.BYTE $80 ; Ä
		.BYTE $FF

byte_467A:
		.BYTE	0
		.BYTE	0
		.BYTE  $D
		.BYTE  $E

off_467E:
		.WORD asc_47E5		; "	       "
		.WORD aFull		; "    Full    "
		.WORD aStuffed		; "  Stuffed   "
		.WORD aBloated		; "  Bloated!  "

aFreezing:	.BYTE "   Freezing!",0  ; DATA XREF: RAM:4618o
aCold:		.BYTE "        Cold",0  ; DATA XREF: RAM:461Ao
aChilly:	.BYTE "      Chilly",0  ; DATA XREF: RAM:461Co
aWarm:		.BYTE "        Warm",0  ; DATA XREF: RAM:4620o
aHot:		.BYTE "         Hot",0  ; DATA XREF: RAM:4622o
aRoasting:	.BYTE "   Roasting!",0  ; DATA XREF: RAM:4624o
aHungry:	.BYTE "Hungry      ",0  ; DATA XREF: RAM:4632o
aFamished:	.BYTE "Famished    ",0  ; DATA XREF: RAM:4630o
aStarving:	.BYTE "Starving!   ",0  ; DATA XREF: RAM:462Eo
aThirsty:	.BYTE "Thirsty     ",0  ; DATA XREF: RAM:4642o
aParched:	.BYTE "Parched     ",0  ; DATA XREF: RAM:4640o
aDehydrated:	.BYTE "Dehydrated! ",0  ; DATA XREF: RAM:463Eo
aWeary:		.BYTE "Weary       ",0  ; DATA XREF: RAM:4652o
aTired:		.BYTE "Tired       ",0  ; DATA XREF: RAM:4650o
aExhausted:	.BYTE "Exhausted!  ",0  ; DATA XREF: RAM:464Eo
aBurdened:	.BYTE "    Burdened",0  ; DATA XREF: RAM:4660o
aEncumbered:	.BYTE "  Encumbered",0  ; DATA XREF: RAM:4662o
aImmobilized:	.BYTE "Immobilized!",0  ; DATA XREF: RAM:4664o
aTipsy:		.BYTE "Tipsy       ",0  ; DATA XREF: RAM:4670o
aDrunk:		.BYTE "Drunk       ",0  ; DATA XREF: RAM:4672o
aVeryDrunk:	.BYTE "Very Drunk! ",0  ; DATA XREF: RAM:4674o
aFull:		.BYTE "    Full    ",0  ; DATA XREF: RAM:4680o
aStuffed:	.BYTE "  Stuffed   ",0  ; DATA XREF: RAM:4682o
aBloated:	.BYTE "  Bloated!  ",0  ; DATA XREF: RAM:4684o
aPoisoned:	.BYTE "   Poisoned!",0
aDiseased:	.BYTE "   Diseased!",0
aCursed:	.BYTE "   Cursed!  ",0
asc_47E5:	.BYTE "            ",0  ; DATA XREF: RAM:off_45A3o
					; RAM:off_45A5o ...
; ---------------------------------------------------------------------------

loc_47F2:				; CODE XREF: sub_408B:loc_40A6p
		LDA	$F
		BEQ	loc_47F9
		JMP	locret_49AF
; ---------------------------------------------------------------------------

loc_47F9:				; CODE XREF: RAM:47F4j
		STA	$49
		STA	$6391
		STA	$6392
		STA	$6393
		LDA	#$F0 ; ''
		STA	$50
		LDA	#<$6500
		STA	off_3D
		LDA	#>$6500
		STA	off_3D+1

loc_4810:				; CODE XREF: RAM:49ACj
		LDY	#0
		LDA	(off_3D),Y
		CMP	#$81 ; 'Å'
		BCS	loc_481B
		JMP	loc_4999
; ---------------------------------------------------------------------------

loc_481B:				; CODE XREF: RAM:4816j
		CMP	#$E0 ; '‡'
		BCC	loc_4822
		JMP	loc_4999
; ---------------------------------------------------------------------------

loc_4822:				; CODE XREF: RAM:481Dj
		AND	#7
		BEQ	loc_482E
		CMP	#4
		BCS	loc_482E
		TAX
		DEC	$6390,X

loc_482E:				; CODE XREF: RAM:4824j	RAM:4828j
		LDY	#4
		LDA	(off_3D),Y
		INY
		ORA	(off_3D),Y
		BNE	loc_483A
		JMP	loc_4999
; ---------------------------------------------------------------------------

loc_483A:				; CODE XREF: RAM:4835j
		DEY
		SEC
		LDA	(off_3D),Y
		SBC	#1
		STA	(off_3D),Y
		INY
		LDA	(off_3D),Y
		SBC	#0
		STA	(off_3D),Y
		DEY
		ORA	(off_3D),Y
		BEQ	loc_4851
		JMP	loc_4999
; ---------------------------------------------------------------------------

loc_4851:				; CODE XREF: RAM:484Cj
		LDY	#0
		LDA	(off_3D),Y
		AND	#$BF ; 'ø'
		CMP	(off_3D),Y
		BEQ	loc_4893
		STA	(off_3D),Y
		LDX	$49
		LDY	#1
		LDA	(off_3D),Y
		STA	$4A
		LDA	off_3D
		STA	off_3F
		LDA	off_3D+1
		STA	off_3F+1

loc_486D:				; CODE XREF: RAM:4883j	RAM:488Aj
		INX
		CPX	#$40 ; '@'
		BCS	loc_4893
		LDA	off_3F
		CLC
		ADC	#$10
		STA	off_3F
		BCC	loc_487D
		INC	off_3F+1

loc_487D:				; CODE XREF: RAM:4879j
		LDY	#0
		LDA	(off_3F),Y
		CMP	#$E0 ; '‡'
		BCC	loc_486D
		INY
		LDA	(off_3F),Y
		CMP	$4A
		BNE	loc_486D
		DEY
		LDA	(off_3F),Y
		ORA	#8
		STA	(off_3F),Y

loc_4893:				; CODE XREF: RAM:4859j	RAM:4870j
		LDY	#6
		LDA	(off_3D),Y
		TAX
		INY
		LDA	(off_3D),Y
		LDY	#5
		STA	(off_3D),Y
		DEY
		TXA
		STA	(off_3D),Y
		LDA	RANDOM
		CMP	#$20 ; ' '
		BCS	loc_48B9
		LDA	RANDOM
		LDY	#8
		CMP	(off_3D),Y
		BCS	loc_48B9
		JSR	sub_4A01
		JMP	loc_4999
; ---------------------------------------------------------------------------

loc_48B9:				; CODE XREF: RAM:48A8j	RAM:48B1j
		LDY	#$A
		LDA	(off_3D),Y
		STA	off_45
		INY
		CLC
		LDA	(off_3D),Y
		STA	off_45+1
		BPL	loc_48DE
		LDY	#$F
		LDA	(off_3D),Y
		TAX
		LDA	off_45
		ADC	$640B,X
		STA	off_45
		LDA	off_45+1
		AND	#$7F ; ''
		ADC	$644B,X
		STA	off_45+1
		BNE	loc_48EA

loc_48DE:				; CODE XREF: RAM:48C5j
		LDA	off_45
		ADC	#<SEG_6300
		STA	off_45
		LDA	off_45+1
		ADC	#>SEG_6300
		STA	off_45+1

loc_48EA:				; CODE XREF: RAM:48DCj
		LDY	#$E
		LDA	(off_3D),Y
		STA	$51
		LDY	#$C
		LDA	(off_3D),Y
		STA	$52
		LDY	#$D
		LDA	(off_3D),Y
		STA	$53
		LDY	#9
		LDA	(off_3D),Y
		BMI	loc_4913
		TAY
		DEY
		STY	$54
		LDA	#<loc_4978
		STA	loc_4936+1
		LDA	#>loc_4978
		STA	loc_4936+2
		JMP	loc_4936
; ---------------------------------------------------------------------------

loc_4913:				; CODE XREF: RAM:4900j
		PHA
		AND	#$F
		TAY
		DEY
		STY	$54
		PLA
		AND	#$70 ; 'p'
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	off_4968,X
		STA	loc_4936+1
		LDA	off_4968+1,X
		STA	loc_4936+2
		TXA
		LSR	A
		TAX
		LDA	loc_4960+1,X
		STA	loc_495B

loc_4936:				; CODE XREF: RAM:4910j	RAM:4948j
					; DATA XREF: ...
		JMP	$FFFF
; ---------------------------------------------------------------------------

loc_4939:				; CODE XREF: RAM:4950j	RAM:4956j ...
		CLC
		LDA	off_45
		ADC	$53
		STA	off_45
		BCC	loc_4944
		INC	off_45+1

loc_4944:				; CODE XREF: RAM:4940j
		LDY	$54
		DEC	$52
		BNE	loc_4936
		JMP	loc_4984
; ---------------------------------------------------------------------------

loc_494D:				; DATA XREF: RAM:off_4968o
		JSR	loc_2E48
		JMP	loc_4939
; ---------------------------------------------------------------------------

loc_4953:				; DATA XREF: RAM:496Ao
		JSR	loc_2E6E
		JMP	loc_4939
; ---------------------------------------------------------------------------

loc_4959:				; CODE XREF: RAM:loc_4960j
					; DATA XREF: RAM:4970o	...
		LDA	(off_45),Y

loc_495B:				; DATA XREF: RAM:4933w
		EOR	$51
		STA	(off_45),Y
		DEY

loc_4960:				; DATA XREF: RAM:4930r
		BPL	loc_4959
		JMP	loc_4939
; ---------------------------------------------------------------------------
		.BYTE $45 ; E
		.BYTE $25 ; %
		.BYTE	5
off_4968:	.WORD	loc_494D	; DATA XREF: RAM:4921r	RAM:4927r
		.WORD	loc_4953
		.WORD	loc_4939
		.WORD	loc_4939
		.WORD	loc_4959
		.WORD	loc_4959
		.WORD	loc_4959
		.WORD	loc_4982

loc_4978:
		LDA	$51
; ---------------------------------------------------------------------------

loc_497A:				; CODE XREF: RAM:497Dj
		STA	(off_45),Y
		DEY
		BPL	loc_497A
		JMP	loc_4939
; ---------------------------------------------------------------------------

loc_4982:
		BRK
		RTS
; ---------------------------------------------------------------------------

loc_4984:				; CODE XREF: RAM:494Aj
		LDY	#3
		LDA	(off_3D),Y
		BEQ	loc_4994
		SEC
		SBC	#1
		STA	(off_3D),Y
		BNE	loc_4994
		JSR	sub_4A01

loc_4994:				; CODE XREF: RAM:4988j	RAM:498Fj
		LDA	#$80 ; 'Ä'
		STA	byte_195F

loc_4999:				; CODE XREF: RAM:4818j	RAM:481Fj ...
		LDA	off_3D
		CLC
		ADC	#$10
		STA	off_3D
		BCC	loc_49A4
		INC	off_3D+1

loc_49A4:				; CODE XREF: RAM:49A0j
		INC	$49
		LDA	$49
		CMP	#$40 ; '@'
		BCS	locret_49AF
		JMP	loc_4810
; ---------------------------------------------------------------------------

locret_49AF:				; CODE XREF: RAM:47F6j	RAM:49AAj
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_49B0:				; CODE XREF: RAM:1890j	sub_4CCF+46p ...
		LDX	#$40 ; '@'
		STX	$55
		LDX	#0
		STA	$57
		CMP	#$F0 ; ''
		BCC	loc_49C0
		LDX	#$10
		DEC	$55

loc_49C0:				; CODE XREF: sub_49B0+Aj
		STX	$56
		LDA	#<$6500
		STA	off_3D
		LDA	#>$6500
		STA	off_3D+1
		LDX	#0

loc_49CC:				; CODE XREF: sub_49B0+3Cj
		LDY	$56
		LDA	#$80 ; 'Ä'
		CMP	(off_3D),Y
		BNE	loc_49DE
		CPY	#0
		BEQ	loc_49F5
		LDY	#0
		CMP	(off_3D),Y
		BEQ	loc_49F5

loc_49DE:				; CODE XREF: sub_49B0+22j
		LDA	off_3D
		CLC
		ADC	#$10
		STA	off_3D
		BCC	loc_49E9
		INC	off_3D+1

loc_49E9:				; CODE XREF: sub_49B0+35j
		INX
		CPX	$55
		BCC	loc_49CC
		LDX	#0
		STX	$3E
		DEX
		BMI	loc_49FD

loc_49F5:				; CODE XREF: sub_49B0+26j sub_49B0+2Cj
		LDA	$57
		STA	(off_3D),Y
		INY
		TXA
		STA	(off_3D),Y

loc_49FD:				; CODE XREF: sub_49B0+43j
		STX	$49
		TXA
		RTS
; End of function sub_49B0


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4A01:				; CODE XREF: RAM:48B3p	RAM:4991p ...
		DEC	byte_195F
		LDA	$49
		LDX	#4

loc_4A08:				; CODE XREF: sub_4A01+Bj
		ASL	A
		ROL	$40
		DEX
		BNE	loc_4A08
		CLC
		ADC	#<$6500
		STA	off_3F
		LDA	off_3F+1
		AND	#$F
		ADC	#>$6500
		STA	off_3F+1
		JSR	sub_4A4A
		LDA	$49
		TAX
		INY
		CMP	(off_3F),Y
		BEQ	loc_4A39
		RTS
; ---------------------------------------------------------------------------

loc_4A27:				; CODE XREF: sub_4A01+46j
		LDY	#0
		LDA	(off_3F),Y
		CMP	#$81 ; 'Å'
		BCC	loc_4A39
		INY
		LDA	(off_3F),Y
		CMP	$49
		BNE	loc_4A39
		JSR	sub_4A4A

loc_4A39:				; CODE XREF: sub_4A01+23j sub_4A01+2Cj ...
		LDA	off_3F
		CLC
		ADC	#$10
		STA	off_3F
		BCC	loc_4A44
		INC	off_3F+1

loc_4A44:				; CODE XREF: sub_4A01+3Fj
		INX
		CPX	#$40 ; '@'
		BCC	loc_4A27
		RTS
; End of function sub_4A01


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4A4A:				; CODE XREF: sub_4A01+1Ap sub_4A01+35p
		LDY	#0
		LDA	(off_3F),Y
		CMP	#$F0 ; ''
		BCC	loc_4A5A
		LDY	#$10
		LDA	#$80 ; 'Ä'
		STA	(off_3F),Y
		LDY	#0

loc_4A5A:				; CODE XREF: sub_4A4A+6j
		LDA	#$80 ; 'Ä'
		STA	(off_3F),Y
		RTS
; End of function sub_4A4A


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4A5F:				; CODE XREF: sub_408Bp
		LDA	$F
		BNE	locret_4A82
		DEC	$F
		LDX	#0
		STX	$4B

loc_4A69:				; CODE XREF: sub_4A5F+1Fj
		LDA	$644B,X
		BEQ	loc_4A78
		STA	$42
		LDA	$640B,X
		STA	$41
		JSR	sub_4BB3

loc_4A78:				; CODE XREF: sub_4A5F+Dj
		INC	$4B
		LDX	$4B
		CPX	#$40 ; '@'
		BCC	loc_4A69
		INC	$F

locret_4A82:				; CODE XREF: sub_4A5F+2j
		RTS
; End of function sub_4A5F


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4A83:				; CODE XREF: sub_4B4D+8p
		STA	$4F
		LDX	#$3F ; '?'

loc_4A87:				; CODE XREF: sub_4A83+Aj
		LDA	$644B,X
		BEQ	loc_4A91
		DEX
		BPL	loc_4A87
		BMI	locret_4ABE

loc_4A91:				; CODE XREF: sub_4A83+7j
		STX	$4B
		CLC
		LDA	$64E4
		STA	$640B,X
		STA	$41
		ADC	$4F
		TAY
		LDA	$64E5
		STA	$644B,X
		STA	$42
		ADC	#0
		TAX
		CMP	#$75 ; 'u'
		BCC	loc_4AB6
		BEQ	loc_4AB2
		BCS	loc_4ABF

loc_4AB2:				; CODE XREF: sub_4A83+2Bj
		CPY	#0
		BCS	loc_4ABF

loc_4AB6:				; CODE XREF: sub_4A83+29j
		STY	$64E4
		STX	$64E5
		LDA	$4B

locret_4ABE:				; CODE XREF: sub_4A83+Cj
		RTS
; ---------------------------------------------------------------------------

loc_4ABF:				; CODE XREF: sub_4A83+2Dj sub_4A83+31j
		LDX	$4B
		LDA	#0
		STA	$644B,X
		LDA	#$FF
		RTS
; End of function sub_4A83


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4AC9:				; CODE XREF: RAM:188Aj	RAM:4C1Ep ...
		STA	$4B
		TAX
		LDA	$640B,X
		STA	$41
		LDA	$644B,X
		STA	$42
		LDA	$4C
		PHA
		LDA	#$FF
		STA	$4C
		JSR	sub_4D93
		PLA
		STA	$4C
		JSR	sub_4EA2
		JSR	sub_4E90
		LDX	$4B
		LDA	#0
		STA	$644B,X
		LDY	#1
		LDA	(off_41),Y
		STA	$4F
		LDA	off_41
		STA	off_9
		CLC
		ADC	$4F
		STA	off_7
		LDA	off_41+1
		STA	$A
		ADC	#0
		STA	off_7+1
		SEC
		LDA	#0
		SBC	off_7
		TAY
		LDA	#$75 ; 'u'
		SBC	off_7+1
		TAX
		JSR	sub_2E0D
		SEC
		LDA	$64E4
		SBC	$4F
		STA	$64E4
		LDA	$64E5
		SBC	#0
		STA	$64E5
		LDX	#$3F ; '?'

loc_4B28:				; CODE XREF: sub_4AC9+81j
		SEC
		LDA	$640B,X
		SBC	$4F
		TAY
		LDA	$644B,X
		BEQ	loc_4B49
		SBC	#0
		CMP	off_41+1
		BCC	loc_4B49
		BEQ	loc_4B3E
		BCS	loc_4B42

loc_4B3E:				; CODE XREF: sub_4AC9+71j
		CPY	off_41
		BCC	loc_4B49

loc_4B42:				; CODE XREF: sub_4AC9+73j
		STA	$644B,X
		TYA
		STA	$640B,X

loc_4B49:				; CODE XREF: sub_4AC9+69j sub_4AC9+6Fj ...
		DEX
		BPL	loc_4B28
		RTS
; End of function sub_4AC9


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4B4D:				; CODE XREF: RAM:1884j	sub_4EFD+32p ...
		STY	7
		STX	8
		LDY	#1
		LDA	(off_7),Y
		JSR	sub_4A83
		BMI	locret_4B73
		LDX	#>$648B
		LDY	#<$648B
		CLC
		JSR	sub_2DAB
		LDY	$4F
		LDX	#0
		LDA	off_41
		STA	off_9
		LDA	off_41+1
		STA	off_9+1
		JSR	sub_2E0D
		LDA	$4B

locret_4B73:				; CODE XREF: sub_4B4D+Bj
		RTS
; End of function sub_4B4D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4B74:				; CODE XREF: RAM:1887j	RAM:3F6Ep ...
		TAX
		LDA	$640B,X
		STA	off_41
		LDA	$644B,X
		STA	off_41+1
		RTS
; End of function sub_4B74

; ---------------------------------------------------------------------------
		LDX	#1
; ---------------------------------------------------------------------------
		.BYTE $2C
; ---------------------------------------------------------------------------
		LDX	#2
; ---------------------------------------------------------------------------
		.BYTE $2C
; ---------------------------------------------------------------------------

loc_4B86:				; CODE XREF: sub_51B6+5Cp
		LDX	#4
; ---------------------------------------------------------------------------
		.BYTE $2C
; ---------------------------------------------------------------------------
		LDX	#8
; ---------------------------------------------------------------------------
		.BYTE $2C
; ---------------------------------------------------------------------------
		LDX	#$10
		STA	$4B
		STX	$4D
		JSR	sub_4BAA
		LDA	$4B
		JSR	sub_4B74
		BEQ	locret_4BA9
		LDY	#2
		LDA	$4D
		STA	$4C
		STA	(off_41),Y
		JSR	sub_4BB3
		LDA	#$FF

locret_4BA9:				; CODE XREF: RAM:4B9Aj
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4BAA:				; CODE XREF: RAM:4B92p
		JSR	sub_4B74
		BEQ	locret_4BB2
		JSR	sub_4BB3

locret_4BB2:				; CODE XREF: sub_4BAA+3j
		RTS
; End of function sub_4BAA


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4BB3:				; CODE XREF: sub_4A5F+16p RAM:4BA4p ...
		LDY	#2
		LDA	(off_41),Y
		BNE	loc_4BBA
		RTS
; ---------------------------------------------------------------------------

loc_4BBA:				; CODE XREF: sub_4BB3+4j
		STA	$4C
		DEC	byte_1960
		DEC	byte_195F
		LDA	#0
		STA	(off_41),Y
		JSR	sub_4E0F
		LDA	$4C
		LDY	#7
		LDX	#0

loc_4BCF:				; CODE XREF: sub_4BB3+21j
		LSR	A
		BCS	loc_4BD6
		INX
		DEY
		BNE	loc_4BCF

loc_4BD6:				; CODE XREF: sub_4BB3+1Dj
		TXA
		ASL	A
		TAX
		LDA	off_4CBF+1,X
		PHA
		LDA	off_4CBF,X
		PHA
		RTS
; End of function sub_4BB3

; ---------------------------------------------------------------------------

loc_4BE2:				; DATA XREF: RAM:off_4CBFo
		LDA	#$80 ; 'Ä'
		LDY	#0
		ORA	(off_41),Y
		STA	(off_41),Y
		JSR	sub_4E90
		LDA	#1
		PHA
		LDA	#2
		JMP	loc_4C95
; ---------------------------------------------------------------------------

loc_4BF5:				; DATA XREF: RAM:4CC1o
		LDY	#0
		LDA	(off_41),Y
		BMI	loc_4BFE
		JMP	locret_4C9C
; ---------------------------------------------------------------------------

loc_4BFE:				; CODE XREF: RAM:4BF9j
		AND	#$7F ; ''
		STA	(off_41),Y
		CMP	#$B
		BNE	loc_4C09
		JSR	sub_4EFD

loc_4C09:				; CODE XREF: RAM:4C04j
		JSR	sub_4EA2
		LDX	$6493
		LDA	$6494,X
		AND	#$7F ; ''
		BEQ	loc_4C27
		LDA	$4B
		PHA
		LDA	$64D4,X
		STA	$4B
		JSR	sub_4AC9
		PLA
		STA	$4B
		JSR	sub_4B74

loc_4C27:				; CODE XREF: RAM:4C14j
		LDX	$6493
		LDA	$6313
		STA	$64A4,X
		LDA	$6314
		STA	$64B4,X
		LDA	$6315
		STA	$64C4,X
		LDA	#2
		STA	$6494,X
		LDA	$4B
		STA	$64D4,X
		INX
		TXA
		AND	#$F
		STA	$6493
		LDY	#2
		LDA	#8
		STA	(off_41),Y
		LDA	#2
		PHA
		LDA	#1
		BNE	loc_4C95

loc_4C5A:				; DATA XREF: RAM:4CC3o
		LDX	#>$648B
		LDY	#<$648B
		LDA	$4B
		SEC
		JSR	sub_2DAB
		LDA	#4
		PHA
		LDA	#8
		BNE	loc_4C95

loc_4C6B:				; DATA XREF: RAM:4CC5o
		LDY	#0
		LDA	(off_41),Y
		AND	#$7F ; ''
		CMP	#$B
		BNE	loc_4C78
		JSR	sub_4EFD

loc_4C78:				; CODE XREF: RAM:4C73j
		LDX	#>$648B
		LDY	#<$648B
		LDA	$4B
		JSR	sub_2DE3
		BCS	loc_4C86
		JMP	locret_4C9C
; ---------------------------------------------------------------------------

loc_4C86:				; CODE XREF: RAM:4C81j
		LDX	#>$648B
		LDY	#<$648B
		LDA	$4B
		CLC
		JSR	sub_2DAB
		LDA	#8
		PHA
		LDA	#4

loc_4C95:				; CODE XREF: RAM:4BF2j	RAM:4C58j ...
		JSR	sub_4D93
		PLA
		JSR	sub_4CCF

locret_4C9C:				; CODE XREF: RAM:4BFBj	RAM:4C83j
					; DATA XREF: ...
		RTS
; ---------------------------------------------------------------------------

loc_4C9D:				; DATA XREF: RAM:4CC7o
		LDY	#0
		LDA	(off_41),Y
		CMP	#$8B ; 'ã'
		BNE	loc_4CAD
		LDA	$6390
		BEQ	loc_4CAD
		DEC	$6390

loc_4CAD:				; CODE XREF: RAM:4CA3j	RAM:4CA8j
		LDA	#2
		JSR	sub_4CCF
		LDA	#8
		JSR	sub_4CCF
		JSR	sub_4E90
		LDA	$4B
		JMP	sub_4AC9
; ---------------------------------------------------------------------------
off_4CBF:	.WORD	loc_4BE2-1	; DATA XREF: sub_4BB3+2Ar sub_4BB3+26r
		.WORD	loc_4BF5-1
		.WORD	loc_4C5A-1
		.WORD	loc_4C6B-1
		.WORD	loc_4C9D-1
		.WORD	locret_4C9C-1
		.WORD	locret_4C9C-1
		.WORD	locret_4C9C-1

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4CCF:				; CODE XREF: RAM:4C99p	RAM:4CAFp ...
		STA	$4C
		JSR	sub_4EE8
		LDA	#$FF
		STA	$4A

loc_4CD8:				; CODE XREF: sub_4CCF:loc_4D8Fj
		LDY	#0
		LDA	(off_43),Y
		BNE	loc_4CE1
		JMP	locret_4D92
; ---------------------------------------------------------------------------

loc_4CE1:				; CODE XREF: sub_4CCF+Dj
		LDY	#1
		LDA	(off_43),Y
		BPL	loc_4CE9
		STA	$4A

loc_4CE9:				; CODE XREF: sub_4CCF+16j
		LDY	#2
		LDA	(off_43),Y
		AND	#$20 ; ' '
		BEQ	loc_4CF7
		AND	$4C
		BNE	loc_4CFD
		BEQ	loc_4D05

loc_4CF7:				; CODE XREF: sub_4CCF+20j
		LDA	$4C
		AND	#$20 ; ' '
		BNE	loc_4D05

loc_4CFD:				; CODE XREF: sub_4CCF+24j
		LDA	(off_43),Y
		AND	$4C
		CMP	$4C
		BEQ	loc_4D08

loc_4D05:				; CODE XREF: sub_4CCF+26j sub_4CCF+2Cj
		JMP	loc_4D79
; ---------------------------------------------------------------------------

loc_4D08:				; CODE XREF: sub_4CCF+34j
		LDA	(off_43),Y
		BPL	loc_4D11
		JSR	sub_4DD4
		BMI	loc_4D1A

loc_4D11:				; CODE XREF: sub_4CCF+3Bj
		LDY	#0
		LDA	(off_43),Y
		JSR	sub_49B0
		BPL	loc_4D29

loc_4D1A:				; CODE XREF: sub_4CCF+40j
		LDA	$4A
		BPL	loc_4D21
		JMP	locret_4D92
; ---------------------------------------------------------------------------

loc_4D21:				; CODE XREF: sub_4CCF+4Dj
		STA	$49
		JSR	sub_4A01
		JMP	locret_4D92
; ---------------------------------------------------------------------------

loc_4D29:				; CODE XREF: sub_4CCF+49j
		LDY	#1
		BIT	$4A
		BMI	loc_4D33
		LDA	(off_43),Y
		BPL	loc_4D37

loc_4D33:				; CODE XREF: sub_4CCF+5Ej
		LDA	$49
		STA	$4A

loc_4D37:				; CODE XREF: sub_4CCF+62j
		LDA	$4A
		STA	(off_3D),Y
		DEY
		LDA	(off_3D),Y
		CMP	#$E0 ; '‡'
		BCS	loc_4D53
		LDY	#$F
		LDA	$4B
		STA	(off_43),Y
		LDY	#2
		LDA	(off_43),Y
		ASL	A
		BPL	loc_4D53
		LDY	#$F
		STA	(off_43),Y

loc_4D53:				; CODE XREF: sub_4CCF+71j sub_4CCF+7Ej
		LDY	#0
		LDA	(off_43),Y
		LDY	#$F
		CMP	#$F0 ; ''
		BCC	loc_4D5F
		LDY	#$1F

loc_4D5F:				; CODE XREF: sub_4CCF+8Cj sub_4CCF+97j
		LDA	(off_43),Y
		STA	(off_3D),Y
		DEY
		CPY	#2
		BCS	loc_4D5F
		LDY	#5
		LDA	(off_3D),Y
		BNE	loc_4D79
		DEY
		LDA	(off_3D),Y
		CMP	#1
		BNE	loc_4D79
		LDA	#0
		STA	$50

loc_4D79:				; CODE XREF: sub_4CCF:loc_4D05j
					; sub_4CCF+9Dj	...
		LDX	#$10
		LDY	#0
		LDA	(off_43),Y
		CMP	#$F0 ; ''
		BCC	loc_4D85
		LDX	#$20 ; ' '

loc_4D85:				; CODE XREF: sub_4CCF+B2j
		TXA
		CLC
		ADC	off_43
		STA	off_43
		BCC	loc_4D8F
		INC	off_43+1

loc_4D8F:				; CODE XREF: sub_4CCF+BCj
		JMP	loc_4CD8
; ---------------------------------------------------------------------------

locret_4D92:				; CODE XREF: sub_4CCF+Fj sub_4CCF+4Fj	...
		RTS
; End of function sub_4CCF


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4D93:				; CODE XREF: sub_4AC9+14p
					; RAM:loc_4C95p
		STA	$4C
		LDA	#<$6500
		STA	off_3D
		LDA	#>$6500
		STA	off_3D+1
		LDX	#0
		STX	$49

loc_4DA1:				; CODE XREF: sub_4D93+3Ej
		LDY	#0
		LDA	(off_3D),Y
		CMP	#$81 ; 'Å'
		BCC	loc_4DC0
		CMP	#$E0 ; '‡'
		BCS	loc_4DC0
		LDY	#$F
		LDA	(off_3D),Y
		CMP	$4B
		BNE	loc_4DC0
		LDY	#2
		LDA	(off_3D),Y
		AND	$4C
		BEQ	loc_4DC0
		JSR	sub_4A01

loc_4DC0:				; CODE XREF: sub_4D93+14j sub_4D93+18j ...
		LDA	off_3D
		CLC
		ADC	#$10
		STA	off_3D
		BCC	loc_4DCB
		INC	off_3D+1

loc_4DCB:				; CODE XREF: sub_4D93+34j
		INC	$49
		LDX	$49
		CPX	#$40 ; '@'
		BCC	loc_4DA1
		RTS
; End of function sub_4D93


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4DD4:				; CODE XREF: sub_4CCF+3Dp
		LDA	#<$6500
		STA	off_3F
		LDA	#>$6500
		STA	off_3F+1
		LDX	#$40 ; '@'

loc_4DDE:				; CODE XREF: sub_4DD4+2Fj
		LDY	#0
		LDA	(off_3F),Y
		CMP	#$81 ; 'Å'
		BCC	loc_4DF7
		LDY	#6

loc_4DE8:				; CODE XREF: sub_4DD4+1Dj
		LDA	(off_43),Y
		CMP	(off_3F),Y
		BNE	loc_4DF7
		INY
		CPY	#$F
		BCC	loc_4DE8
		LDA	#$FF
		BMI	locret_4E05

loc_4DF7:				; CODE XREF: sub_4DD4+10j sub_4DD4+18j
		LDA	$3F
		CLC
		ADC	#$10
		STA	$3F
		BCC	loc_4E02
		INC	$40

loc_4E02:				; CODE XREF: sub_4DD4+2Aj
		DEX
		BNE	loc_4DDE

locret_4E05:				; CODE XREF: sub_4DD4+21j
		RTS
; End of function sub_4DD4

; ---------------------------------------------------------------------------

loc_4E06:				; CODE XREF: RAM:188Dj
		JSR	sub_4B74
		BEQ	locret_4E22
		LDA	#4
		STA	$4C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4E0F:				; CODE XREF: sub_4BB3+13p
		LDA	$4C
		AND	#5
		BEQ	locret_4E22
		LDY	#3
		LDA	(off_41),Y
		BEQ	locret_4E22
		BPL	loc_4E23
		CMP	I_ALIGN
		BCS	loc_4E28

locret_4E22:				; CODE XREF: RAM:4E09j	sub_4E0F+4j ...
		RTS
; ---------------------------------------------------------------------------

loc_4E23:				; CODE XREF: sub_4E0F+Cj
		CMP	I_ALIGN
		BCS	locret_4E22

loc_4E28:				; CODE XREF: sub_4E0F+11j
		LDA	(off_41),Y
		BPL	loc_4E49
		LDA	I_ALIGN
		BPL	loc_4E3D
		LDA	#<aIWasMeantForBe
		STA	off_502C
		LDA	#>aIWasMeantForBe
		STA	off_502C+1
		BNE	loc_4E64

loc_4E3D:				; CODE XREF: sub_4E0F+20j
		LDA	#<aReleaseMeFoulM
		STA	off_502C
		LDA	#>aReleaseMeFoulM
		STA	off_502C+1
		BNE	loc_4E64

loc_4E49:				; CODE XREF: sub_4E0F+1Bj
		LDA	I_ALIGN
		BMI	loc_4E5A
		LDA	#<aYourEvilCannot
		STA	off_502C
		LDA	#>aYourEvilCannot
		STA	off_502C+1
		BNE	loc_4E64

loc_4E5A:				; CODE XREF: sub_4E0F+3Dj
		LDA	#<aMiserableDoGoo
		STA	off_502C
		LDA	#>aMiserableDoGoo
		STA	off_502C+1

loc_4E64:				; CODE XREF: sub_4E0F+2Cj sub_4E0F+38j ...
		CLC
		LDA	#6
		ADC	off_41
		STA	off_502A
		LDA	off_41+1
		ADC	#0
		STA	off_502A+1
		LDA	#<a_TheScreams
		STA	off_16
		LDA	#>a_TheScreams
		STA	off_16+1
		JSR	sub_3CA5
		JSR	sub_2BB0
		JSR	sub_3CC2
		LDA	$4C
		PHA
		ORA	#$20 ; ' '
		JSR	sub_4CCF
		PLA
		STA	$4C
		RTS
; End of function sub_4E0F


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4E90:				; CODE XREF: sub_4AC9+1Dp RAM:4BEAp ...
		LDX	#$F

loc_4E92:				; CODE XREF: sub_4E90+Fj
		LDA	$4B
		CMP	$64D4,X
		BNE	loc_4E9E
		LDA	#0
		STA	$6494,X

loc_4E9E:				; CODE XREF: sub_4E90+7j
		DEX
		BPL	loc_4E92
		RTS
; End of function sub_4E90


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4EA2:				; CODE XREF: sub_4AC9+1Ap
					; RAM:loc_4C09p ...
		LDX	#9

loc_4EA4:				; CODE XREF: sub_4EA2+Fj
		LDA	$4B
		CMP	$639C,X
		BNE	loc_4EB0
		LDA	#$FF
		STA	$639C,X

loc_4EB0:				; CODE XREF: sub_4EA2+7j
		DEX
		BPL	loc_4EA4
		RTS
; End of function sub_4EA2


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4EB4:				; CODE XREF: sub_5835+11p RAM:5DC9p
		LDY	#9

loc_4EB6:				; CODE XREF: sub_4EB4+Cj
		CMP	#$80 ; 'Ä'
		BCS	loc_4EC2
		CMP	$639C,Y
		BEQ	locret_4EC3
		DEY
		BPL	loc_4EB6

loc_4EC2:				; CODE XREF: sub_4EB4+4j
		CLC

locret_4EC3:				; CODE XREF: sub_4EB4+9j
		RTS
; End of function sub_4EB4


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4EC4:				; CODE XREF: RAM:1896j	RAM:4226p ...
		JSR	sub_4EE8

loc_4EC7:				; CODE XREF: sub_4EC4:loc_4EDFj
		LDY	#0
		LDA	(off_43),Y
		BEQ	loc_4EE1
		LDX	#$10
		CMP	#$F0 ; ''
		BCC	loc_4ED5
		LDX	#$20 ; ' '

loc_4ED5:				; CODE XREF: sub_4EC4+Dj
		TXA
		CLC
		ADC	off_43
		STA	off_43
		BCC	loc_4EDF
		INC	$44

loc_4EDF:				; CODE XREF: sub_4EC4+17j
		BNE	loc_4EC7

loc_4EE1:				; CODE XREF: sub_4EC4+7j
		INC	off_43
		BNE	locret_4EE7
		INC	$44

locret_4EE7:				; CODE XREF: sub_4EC4+1Fj
		RTS
; End of function sub_4EC4


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4EE8:				; CODE XREF: sub_4CCF+2p sub_4EC4p
		LDA	$4B
		JSR	sub_4B74
		LDY	#5
		CLC
		LDA	(off_41),Y
		ADC	$41
		STA	off_43
		LDA	$42
		ADC	#0
		STA	$44
		RTS
; End of function sub_4EE8


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_4EFD:				; CODE XREF: RAM:4C06p	RAM:4C75p
		LDA	$6390
		BEQ	loc_4F05
		DEC	$6390

loc_4F05:				; CODE XREF: sub_4EFD+3j
		LDY	#0
		LDA	(off_41),Y
		AND	#$80 ; 'Ä'
		PHA
		LDA	$4B
		LDX	#9

loc_4F10:				; CODE XREF: sub_4EFD+19j
		CMP	$639C,X
		BEQ	loc_4F18
		DEX
		BPL	loc_4F10

loc_4F18:				; CODE XREF: sub_4EFD+16j
		LDY	#$F

loc_4F1A:				; CODE XREF: sub_4EFD+23j
		CMP	$64D4,Y
		BEQ	loc_4F22
		DEY
		BPL	loc_4F1A

loc_4F22:				; CODE XREF: sub_4EFD+20j
		TXA
		PHA
		TYA
		PHA
		LDA	$4B
		JSR	sub_4AC9
		LDX	#$4F ; 'O'
		LDY	#$5D ; ']'
		JSR	sub_4B4D
		PLA
		TAX
		BMI	loc_4F4C
		LDA	$4B
		STA	$64D4,X
		LDA	$6313
		STA	$64A4,X
		LDA	$6314
		STA	$64B4,X
		LDA	#2
		STA	$6494,X

loc_4F4C:				; CODE XREF: sub_4EFD+37j
		PLA
		TAX
		BMI	loc_4F55
		LDA	$4B
		STA	$639C,X

loc_4F55:				; CODE XREF: sub_4EFD+51j
		PLA
		LDY	#0
		ORA	(off_41),Y
		STA	(off_41),Y
		RTS
; End of function sub_4EFD

; ---------------------------------------------------------------------------
		.BYTE	3
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	2
		.BYTE  $C
aStick:		.BYTE "stick",0
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
		.BYTE	4
		.BYTE	1
		.BYTE	9
		.BYTE	9
		.BYTE $82 ; Ç
		.BYTE	1

a_TheScreams:
		MOVEXY	0,0
		.BYTE $A5
aThe:		.BYTE "The"
		.BYTE $D
		.BYTE $A5
		PRINTSTR off_502A,39
		.BYTE $D
		.BYTE $A5
aScreams:	.BYTE "screams:"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		PRINTSTR off_502C,40
		.BYTE $D
		.BYTE $FF
aIWasMeantForBe:.BYTE $22,"I was meant for better than you!",$22,0
aYourEvilCannot:.BYTE $22,"Your evil cannot compare to mine!",$22,0
aReleaseMeFoulM:.BYTE $22,"Release me foul mortal or pay!",$22,0
aMiserableDoGoo:.BYTE $22,"Miserable do-gooder you shall pay!",$22,0
off_502A:	.WORD	0		; DATA XREF: sub_4E0F+5Aw RAM:4F87o
off_502C:	.WORD	0		; DATA XREF: sub_4E0F+24w sub_4E0F+30w ...

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_502E:				; CODE XREF: sub_50B2:loc_50B7p
					; RAM:552Ap
		LDX	#3
		LDA	#$FF

loc_5032:				; CODE XREF: sub_502E+8j
		STA	byte_1946,X
		DEX
		BPL	loc_5032
		LDX	#7

loc_503A:				; CODE XREF: sub_502E+18j
		LDA	#>unk_5E53
		STA	off_193C,X
		DEX
		LDA	#<unk_5E53
		STA	off_193C,X
		DEX
		BPL	loc_503A
		RTS
; End of function sub_502E


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_5049:				; CODE XREF: sub_50B2:loc_515Cp
					; RAM:loc_554Fp
		LDA	byte_6277
		CMP	byte_6276
		BCS	loc_505C
		LDA	#9
		STA	off_16
		LDA	#$5E ; '^'
		STA	off_16+1
		JMP	loc_5064
; ---------------------------------------------------------------------------

loc_505C:				; CODE XREF: sub_5049+6j
		LDA	#<byte_5D41
		STA	off_16
		LDA	#>byte_5D41
		STA	off_16+1

loc_5064:				; CODE XREF: sub_5049+10j
		LDX	byte_194A
		JSR	sub_3C61

loc_506A:				; CODE XREF: RAM:5079j
		LDA	#<loc_5077
		STA	off_1977
		LDA	#>loc_5077
		STA	off_1977+1
		JMP	loc_2FF3
; End of function sub_5049

; ---------------------------------------------------------------------------

loc_5077:
		LDA	$31
		BMI	loc_506A
		CMP	#'1'
		BCC	loc_5087
		CMP	#'5'
		BCS	loc_5087
		SBC	#'0'
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_5087:				; CODE XREF: RAM:507Dj	RAM:5081j
		JSR	sub_2BA5
		SEC
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_508C:				; CODE XREF: sub_50B2:loc_5159p
					; RAM:554Cp
		LDA	#3
		STA	6

loc_5090:				; CODE XREF: sub_508C+23j
		LDX	6
		LDA	byte_1946,X
		BMI	loc_50AD
		JSR	sub_4B74
		LDA	6
		ASL	A
		TAY
		CLC
		LDA	#6
		ADC	off_41
		STA	off_193C,Y
		LDA	off_41+1
		ADC	#0
		STA	off_193C+1,Y

loc_50AD:				; CODE XREF: sub_508C+9j
		DEC	6
		BPL	loc_5090
		RTS
; End of function sub_508C


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_50B2:				; CODE XREF: RAM:36E1p	sub_50B2+E3j ...
		LDA	#0
		STA	byte_6277

loc_50B7:				; CODE XREF: RAM:36E6p	sub_50B2+70j ...
		JSR	sub_502E
		LDA	#0
		STA	byte_6278
		LDA	byte_6277
		STA	byte_627D
		CMP	byte_6276
		BCS	loc_50EF

loc_50CA:				; CODE XREF: sub_50B2+39j
		LDA	byte_627D
		ASL	A
		TAY
		AND	#7
		TAX
		LDA	off_5F0D,Y
		STA	off_193C,X
		LDA	off_5F0D+1,Y
		STA	off_193C+1,X
		LDX	byte_6278
		TXA
		STA	byte_1946,X
		INC	byte_627D
		JSR	sub_5198
		BCC	loc_50CA
		BCS	loc_515C

loc_50EF:				; CODE XREF: sub_50B2+16j
		LDX	#$3F ; '?'
		STX	byte_627A
		SBC	byte_6276
		BEQ	loc_5125
		STA	byte_6279

loc_50FC:				; CODE XREF: sub_50B2+60j
		LDA	byte_627A
		JSR	loc_51A1
		BCS	loc_510F
		DEC	byte_6279
		BNE	loc_510F
		DEC	byte_627A
		JMP	loc_5125
; ---------------------------------------------------------------------------

loc_510F:				; CODE XREF: sub_50B2+50j sub_50B2+55j
		DEC	byte_627A
		BPL	loc_50FC

loc_5114:				; CODE XREF: sub_50B2+76j
		LDA	byte_6277
		ORA	byte_6276
		BEQ	loc_515C

loc_511C:				; CODE XREF: sub_50B2+8Cj
		LDA	byte_5470
		STA	byte_6277
		JMP	loc_50B7
; ---------------------------------------------------------------------------

loc_5125:				; CODE XREF: sub_50B2+45j sub_50B2+5Aj ...
		LDA	byte_627A
		BMI	loc_5114
		JSR	loc_51A1
		BCC	loc_5141
		DEC	byte_627A
		BPL	loc_5125
		LDA	byte_1946
		BPL	loc_5159
		LDA	byte_6276
		BEQ	loc_5159
		JMP	loc_511C
; ---------------------------------------------------------------------------

loc_5141:				; CODE XREF: sub_50B2+7Bj
		LDA	byte_627A
		LDY	byte_6278
		STA	byte_1946,Y
		DEC	byte_627A
		BMI	loc_5159
		INC	byte_6278
		LDA	byte_6278
		CMP	#4
		BCC	loc_5125

loc_5159:				; CODE XREF: sub_50B2+85j sub_50B2+8Aj ...
		JSR	sub_508C

loc_515C:				; CODE XREF: sub_50B2+3Bj sub_50B2+68j ...
		JSR	sub_5049
		BCC	loc_516E
		CMP	#'F'
		BEQ	loc_5180
		CMP	#'B'
		BEQ	loc_518E
		CMP	#$1B
		BNE	loc_515C
		RTS
; ---------------------------------------------------------------------------

loc_516E:				; CODE XREF: sub_50B2+ADj
		TAX
		LDA	byte_1946,X
		BMI	loc_515C
		LDX	byte_6277
		CPX	byte_6276
		BCS	loc_517E
		ORA	#$80 ; 'Ä'

loc_517E:				; CODE XREF: sub_50B2+C8j
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_5180:				; CODE XREF: sub_50B2+B1j
		LDA	byte_6277
		STA	byte_5470
		ADC	#3

loc_5188:				; CODE XREF: sub_50B2+E1j
		STA	byte_6277
		JMP	loc_50B7
; ---------------------------------------------------------------------------

loc_518E:				; CODE XREF: sub_50B2+B5j
		LDA	byte_6277
		SBC	#4
		BPL	loc_5188
		JMP	sub_50B2
; End of function sub_50B2


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_5198:				; CODE XREF: sub_50B2+36p
		INC	byte_6278
		LDA	byte_6278
		CMP	#4
		RTS
; End of function sub_5198

; ---------------------------------------------------------------------------

loc_51A1:				; CODE XREF: sub_50B2+4Dp sub_50B2+78p
		JSR	sub_4B74
		BEQ	loc_51B4
		LDY	#0
		LDA	(off_41),Y
		BPL	loc_51B4
		AND	#7
		CMP	#1

loc_51B0:				; DATA XREF: RAM:36BDw	RAM:36C5w ...
		BEQ	loc_51B4
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_51B4:				; CODE XREF: RAM:51A4j	RAM:51AAj ...
		SEC
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_51B6:				; CODE XREF: RAM:3774p

; FUNCTION CHUNK AT 5653 SIZE 0000000C BYTES

		LDA	#0
		STA	byte_627F
		LDA	#4
		LDX	$7600
		CPX	#1
		BNE	loc_51C6
		LDA	#0

loc_51C6:				; CODE XREF: sub_51B6+Cj
		STA	byte_6276
		LDA	#$F0 ; ''
		STA	loc_51B0
		LDA	#$25 ; '%'
		STA	off_193A
		LDA	#$5F ; '_'
		STA	off_193A+1

loc_51D8:				; CODE XREF: sub_577E+14j
		LDA	#$57 ; 'W'
		STA	off_1944
		LDA	#$5F ; '_'
		STA	off_1944+1
		JSR	sub_50B2
		BCS	loc_5225
		CMP	#$80 ; 'Ä'
		BCC	loc_51EE
		JMP	loc_5653
; ---------------------------------------------------------------------------

loc_51EE:				; CODE XREF: sub_51B6+33j
		STA	$4B
		JSR	sub_4B74
		JSR	sub_4EC4
		LDY	#0
		LDA	(off_41),Y
		AND	#7
		STA	byte_627E
		TAX
		LDA	unk_5229,X
		PHA
		LDA	unk_5231,X
		PHA
		RTS
; ---------------------------------------------------------------------------

loc_5209:				; CODE XREF: RAM:524Ej	RAM:526Bj ...
		LDA	$4B
		JSR	sub_4B74
		BEQ	loc_5225
		LDA	$4B
		JSR	loc_4B86
		LDA	byte_627E
		STA	byte_1961
		BIT	byte_627F
		BPL	loc_5225
		LDA	$4B
		JSR	sub_4AC9

loc_5225:				; CODE XREF: sub_51B6+2Fj sub_51B6+58j ...
		DEC	byte_195F
		RTS
; End of function sub_51B6

; ---------------------------------------------------------------------------
unk_5229:	.BYTE	>(loc_5239-1)	; DATA XREF: sub_51B6+4Ar
		.BYTE	>(loc_52C3-1)
		.BYTE	>(loc_540F-1)
		.BYTE	>(loc_54AA-1)
		.BYTE	>(loc_54EE-1)
		.BYTE	>(loc_5505-1)
		.BYTE	>(loc_556B-1)
		.BYTE	>(loc_5632-1)
unk_5231:	.BYTE	<(loc_5239-1)	; DATA XREF: sub_51B6+4Er
		.BYTE	<(loc_52C3-1)
		.BYTE	<(loc_540F-1)
		.BYTE	<(loc_54AA-1)
		.BYTE	<(loc_54EE-1)
		.BYTE	<(loc_5505-1)
		.BYTE	<(loc_556B-1)
		.BYTE	<(loc_5632-1)
; ---------------------------------------------------------------------------

loc_5239:
		LDY	#0
		LDA	(off_41),Y
		AND	#$78 ; 'x'
		BNE	loc_5244
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_5244:				; CODE XREF: RAM:523Fj
		LDX	#2

loc_5246:				; CODE XREF: RAM:524Cj
		CMP	byte_5260,X
		BEQ	loc_5251
		DEX
		BPL	loc_5246
		JMP	loc_5209
; ---------------------------------------------------------------------------

loc_5251:				; CODE XREF: RAM:5249j
		LDA	unk_525D,X
		PHA
		LDA	unk_525A,X
		PHA
		RTS
; ---------------------------------------------------------------------------
unk_525A:	.BYTE	<(loc_5263-1)	; DATA XREF: RAM:5255r
		.BYTE	<(loc_5282-1)
		.BYTE	<(loc_5293-1)
unk_525D:	.BYTE	>(loc_5263-1)	; DATA XREF: RAM:loc_5251r
		.BYTE	>(loc_5282-1)
		.BYTE	>(loc_5293-1)

byte_5260:
		.BYTE	8
		.BYTE $10
		.BYTE $18
; ---------------------------------------------------------------------------

loc_5263:
		LDA	I_CRYSTALS
		BEQ	loc_526E
		DEC	I_CRYSTALS
		JMP	loc_5209
; ---------------------------------------------------------------------------

loc_526E:				; CODE XREF: RAM:5266j
		LDA	#<a_YouNeedACryst
		STA	off_16
		LDA	#>a_YouNeedACryst
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C
		JSR	sub_2BFA
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_5282:
		LDY	#0
		LDA	(off_43),Y
		SEC
		SBC	#1
		STA	(off_43),Y
		BNE	loc_5290
		DEC	byte_627F

loc_5290:				; CODE XREF: RAM:528Bj
		JMP	loc_5209
; ---------------------------------------------------------------------------

loc_5293:
		LDY	#1
		LDA	(off_43),Y
		BEQ	loc_52A3
		SEC
		SBC	#1
		STA	(off_43),Y
		BNE	loc_52A3
		DEC	byte_627F

loc_52A3:				; CODE XREF: RAM:5297j	RAM:529Ej
		INY
		LDA	(off_43),Y
		CMP	#1
		BEQ	loc_52BD
		INY
		LDA	(off_43),Y
		CMP	#8
		BNE	loc_52BA
		LDY	#0
		LDA	(off_43),Y
		STA	$51
		JSR	sub_55B7

loc_52BA:				; CODE XREF: RAM:52AFj
		JMP	loc_5209
; ---------------------------------------------------------------------------

loc_52BD:				; CODE XREF: RAM:52A8j
		INY
		LDA	(off_43),Y
		JMP	loc_53F3
; ---------------------------------------------------------------------------

loc_52C3:
		LDA	#0
		STA	byte_627F
		STA	byte_1961
		LDA	$4B
		STA	byte_627B
		LDA	off_43
		STA	$47
		LDA	$44
		STA	$48
		LDY	#2

loc_52DA:				; CODE XREF: RAM:52E0j
		LDA	(off_47),Y
		STA	byte_6280,Y
		DEY
		BPL	loc_52DA
		LDA	#$3F ; '?'
		STA	$4B

loc_52E6:				; CODE XREF: RAM:5302j
		LDA	$4B
		JSR	sub_4B74
		BEQ	loc_5300
		LDY	#0
		LDA	(off_41),Y
		CMP	#$82 ; 'Ç'
		BNE	loc_5300
		JSR	sub_4EC4
		LDA	#1
		LDY	#0
		CMP	(off_43),Y
		BEQ	loc_5306

loc_5300:				; CODE XREF: RAM:52EBj	RAM:52F3j
		DEC	$4B
		BPL	loc_52E6
		BMI	loc_5328

loc_5306:				; CODE XREF: RAM:52FEj
		LDY	#1
		SEC
		LDA	(off_43),Y
		SBC	byte_6280
		BCC	loc_5318
		STA	(off_43),Y
		JSR	sub_5471
		JMP	loc_5342
; ---------------------------------------------------------------------------

loc_5318:				; CODE XREF: RAM:530Ej
		SEC
		LDA	byte_6280
		SBC	(off_43),Y
		STA	byte_6280
		LDA	#0
		STA	(off_43),Y
		JSR	sub_5471

loc_5328:				; CODE XREF: RAM:5304j
		SEC
		LDA	$639B
		SBC	byte_6280
		BCS	loc_533F
		LDX	#$45 ; 'E'
		SEC
		LDA	byte_6280
		SBC	$639B
		JSR	SUBSTAT2
		LDA	#0

loc_533F:				; CODE XREF: RAM:532Fj
		STA	$639B

loc_5342:				; CODE XREF: RAM:5315j
		LDA	$6388
		AND	#4
		BNE	loc_535B
		LDA	byte_194D
		AND	#2
		BEQ	loc_535B
		LDA	#<a_SomethingIsOdd
		STA	off_16
		LDA	#>a_SomethingIsOdd
		STA	off_16+1
		JMP	loc_53E7
; ---------------------------------------------------------------------------

loc_535B:				; CODE XREF: RAM:5347j	RAM:534Ej
		LDA	#$64 ; 'd'
		JSR	sub_2B6B
		CMP	byte_6281
		BCS	loc_53CA
		LDA	RANDOM
		STA	loc_5371+1
		LDA	$6369
		LSR	A
		ADC	#$20 ; ' '

loc_5371:				; DATA XREF: RAM:5368w
		CMP	#$FF
		BCC	loc_5390
		LDY	$7600
		DEY
		BEQ	loc_5382
		LDA	RANDOM
		CMP	#$40 ; '@'
		BCS	loc_5390

loc_5382:				; CODE XREF: RAM:5379j
		LDA	#1
		TAY
		CLC
		ADC	(off_47),Y
		CMP	#$60 ; '`'
		BCC	loc_538E
		LDA	#$5F ; '_'

loc_538E:				; CODE XREF: RAM:538Aj
		STA	(off_47),Y

loc_5390:				; CODE XREF: RAM:5373j	RAM:5380j
		LDA	byte_627B
		STA	$4B
		JSR	sub_4B74
		CLC
		LDA	off_41
		ADC	#6
		STA	off_193C
		LDA	off_41+1
		ADC	#0
		STA	off_193C+1
		LDA	#<a_YouCastTheSpell
		STA	off_16
		LDA	#>a_YouCastTheSpell
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C
		LDA	#$82 ; 'Ç'
		STA	byte_199C
		LDA	#1
		JSR	loc_2BFC
		LDY	#0
		LDA	(off_41),Y
		AND	#$78 ; 'x'
		BNE	loc_53F3
		JMP	loc_5209
; ---------------------------------------------------------------------------

loc_53CA:				; CODE XREF: RAM:5363j
		LDX	#$45 ; 'E'
		LDA	byte_6282
		JSR	SUBSTAT2
		LDA	#<a_TheSpellFailed
		STA	off_16
		LDA	#>a_TheSpellFailed
		STA	off_16+1
		LDA	byte_6282
		BEQ	loc_53E7
		LDA	#<a_TheSpellBackfired
		STA	off_16
		LDA	#>a_TheSpellBackfired
		STA	off_16+1

loc_53E7:				; CODE XREF: RAM:5358j	RAM:53DDj
		LDX	byte_194A
		JSR	sub_3C5C
		JSR	sub_2BFA
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_53F3:				; CODE XREF: RAM:52C0j	RAM:53C5j
		LDX	#1

loc_53F5:				; CODE XREF: RAM:53FBj
		CMP	unk_540D,X
		BEQ	loc_5400
		DEX
		BPL	loc_53F5
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_5400:				; CODE XREF: RAM:53F8j
		LDA	unk_540B,X
		PHA
		LDA	unk_5409,X
		PHA
		RTS
; ---------------------------------------------------------------------------
unk_5409:	.BYTE $EC ; Ï		; DATA XREF: RAM:5404r
		.BYTE $C4 ; -
unk_540B:	.BYTE $57 ; W		; DATA XREF: RAM:loc_5400r
		.BYTE $5C ; \
unk_540D:	.BYTE	8		; DATA XREF: RAM:loc_53F5r
		.BYTE $10
; ---------------------------------------------------------------------------

loc_540F:
		LDA	$4B
		STA	byte_627C
		LDA	off_43
		STA	7
		LDA	off_43+1
		STA	8
		LDY	#0
		LDA	(off_7),Y
		CMP	#1
		BEQ	loc_5450
		LDA	$639C
		BMI	loc_546D
		STA	$4B
		JSR	sub_4B74
		JSR	sub_4EC4
		LDY	#0
		LDA	(off_43),Y
		CMP	(off_7),Y
		BNE	loc_546D
		LDY	#$C

loc_543B:				; CODE XREF: RAM:5440j
		LDA	(off_7),Y
		STA	(off_43),Y
		DEY
		BNE	loc_543B
		JSR	sub_5471
		LDA	byte_627C
		STA	$4B
		DEC	byte_627F
		JMP	loc_5209
; ---------------------------------------------------------------------------

loc_5450:				; CODE XREF: RAM:5422j
		INY
		LDA	(off_7),Y
		CMP	#$63 ; 'c'
		BCS	loc_546D
		LDX	$63BE
		BEQ	loc_546D
		DEC	$63BE
		CLC
		ADC	#$A
		CMP	#$63 ; 'c'
		BCC	loc_5468
		LDA	#$63 ; 'c'

loc_5468:				; CODE XREF: RAM:5464j
		STA	(off_7),Y
		JSR	sub_5471

loc_546D:				; CODE XREF: RAM:5427j	RAM:5437j ...
		JMP	loc_5225
; ---------------------------------------------------------------------------
byte_5470:	.BYTE 0			; DATA XREF: sub_50B2:loc_511Cr
					; sub_50B2+D1w

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_5471:				; CODE XREF: RAM:189Cj	RAM:5312p ...
		LDY	#1
		LDA	(off_43),Y
		JSR	sub_548E
		LDY	#5
		LDA	(off_41),Y
		SEC
		SBC	#4
		TAY
		LDA	2
		ORA	#$30 ; '0'
		STA	(off_41),Y
		INY
		LDA	3
		ORA	#$30 ; '0'
		STA	(off_41),Y
		RTS
; End of function sub_5471


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_548E:				; CODE XREF: sub_5471+4p
		LDY	#0
		LDX	#$A

loc_5492:				; CODE XREF: RAM:18B1j
		STA	2
		STX	4
		TYA
		LDX	#8

loc_5499:				; CODE XREF: sub_548E+17j
		ASL	2
		ROL	A
		CMP	4
		BCC	loc_54A4
		SBC	4
		INC	2

loc_54A4:				; CODE XREF: sub_548E+10j
		DEX
		BNE	loc_5499
		STA	3
		RTS
; End of function sub_548E

; ---------------------------------------------------------------------------

loc_54AA:
		JSR	sub_57AB
		BCS	loc_54EB

loc_54AF:				; CODE XREF: RAM:5720j
		LDX	#$A
		LDA	#0

loc_54B3:				; CODE XREF: RAM:54B7j
		STA	$63D2,X
		DEX
		BPL	loc_54B3
		LDA	#0
		STA	$49
		LDA	#<$6500
		STA	off_3D
		LDA	#>$6500
		STA	off_3D+1

loc_54C5:				; CODE XREF: RAM:54E1j
		LDY	#0
		LDA	(off_3D),Y
		CMP	#$87 ; 'á'
		BNE	loc_54D0
		JSR	sub_4A01

loc_54D0:				; CODE XREF: RAM:54CBj
		INC	$49
		LDA	off_3D
		CLC
		ADC	#$10
		STA	off_3D
		BCC	loc_54DD
		INC	off_3D+1

loc_54DD:				; CODE XREF: RAM:54D9j
		LDA	$49
		CMP	#$40 ; '@'
		BCC	loc_54C5
		JSR	sub_5835
		BCS	loc_54EB
		JMP	loc_5209
; ---------------------------------------------------------------------------

loc_54EB:				; CODE XREF: RAM:54ADj	RAM:54E6j
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_54EE:
		LDY	#0
		LDA	(off_43),Y
		AND	#3
		CLC
		ADC	#2
		STA	byte_6283
		JSR	sub_5835
		BCS	loc_5502
		JMP	loc_5209
; ---------------------------------------------------------------------------

loc_5502:				; CODE XREF: RAM:54FDj
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_5505:
		LDX	#0

loc_5507:				; CODE XREF: RAM:5511j
		LDA	$63A2,X
		CMP	#$FF
		BEQ	loc_5515
		INX
		CPX	#4
		BCC	loc_5507
		BCS	loc_5519

loc_5515:				; CODE XREF: RAM:550Cj
		TXA
		JMP	loc_555A
; ---------------------------------------------------------------------------

loc_5519:				; CODE XREF: RAM:5513j
		LDX	#'1'
		STX	asc_5D51	; " ("
		INX
		STX	asc_5D67	; " ("
		INX
		STX	asc_5D7D	; " ("
		INX
		STX	asc_5D93	; " ("
		JSR	sub_502E
		LDA	#<aWearInsteadOf
		STA	off_193A
		LDA	#>aWearInsteadOf
		STA	off_193A+1
		LDA	#<a_ItemOrESC
		STA	off_1944
		LDA	#>a_ItemOrESC
		STA	off_1944+1
		LDX	#3

loc_5543:				; CODE XREF: RAM:554Aj
		LDA	$63A2,X
		STA	byte_1946,X
		DEX
		BPL	loc_5543
		JSR	sub_508C

loc_554F:				; CODE XREF: RAM:5558j
		JSR	sub_5049
		BCC	loc_555A
		CMP	#$1B
		BEQ	loc_5568
		BNE	loc_554F

loc_555A:				; CODE XREF: RAM:5516j	RAM:5552j
		CLC
		ADC	#6
		STA	byte_6283
		JSR	sub_5835
		BCS	loc_5568
		JMP	loc_5209
; ---------------------------------------------------------------------------

loc_5568:				; CODE XREF: RAM:5556j	RAM:5563j
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_556B:
		DEC	byte_627F
		LDA	$6398
		BPL	loc_5576
		JMP	loc_56C1
; ---------------------------------------------------------------------------

loc_5576:				; CODE XREF: RAM:5571j
		LDA	#4
		LDY	#2
		JSR	sub_56D7
		LDY	#0
		LDA	(off_41),Y
		AND	#$78 ; 'x'
		BEQ	loc_558F
		LDX	#0

loc_5587:				; CODE XREF: RAM:558Dj
		CMP	unk_559E,X
		BEQ	loc_5595
		DEX
		BPL	loc_5587

loc_558F:				; CODE XREF: RAM:5583j
		JSR	sub_5602
		JMP	loc_5209
; ---------------------------------------------------------------------------

loc_5595:				; CODE XREF: RAM:558Aj
		LDA	unk_559F,X
		PHA
		LDA	unk_55A0,X
		PHA
		RTS
; ---------------------------------------------------------------------------
unk_559E:	.BYTE	8		; DATA XREF: RAM:loc_5587r
unk_559F:	.BYTE $55 ; U		; DATA XREF: RAM:loc_5595r
unk_55A0:	.BYTE $A0 ; †		; DATA XREF: RAM:5599r
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $B1 ; ±
		.BYTE $43 ; C
		.BYTE $AA ; ™
		.BYTE	9
		.BYTE $80 ; Ä
; ---------------------------------------------------------------------------
		STA	$51
		TYA
		STA	$6390,X
		JSR	sub_55B7
		JSR	sub_5602
		JMP	loc_5209

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_55B7:				; CODE XREF: RAM:1893j	RAM:52B7p ...
		LDA	#0
		STA	$3D
		LDA	#$65 ; 'e'
		STA	$3E
		LDA	#0
		STA	$49

loc_55C3:				; CODE XREF: sub_55B7+2Aj
		LDY	#0
		LDA	(off_3D),Y
		AND	#$83 ; 'É'
		CMP	$51
		BNE	loc_55D0
		JSR	sub_4A01

loc_55D0:				; CODE XREF: sub_55B7+14j
		LDA	$3D
		CLC
		ADC	#$10
		STA	$3D
		BCC	loc_55DB
		INC	$3E

loc_55DB:				; CODE XREF: sub_55B7+20j
		INC	$49
		LDA	$49
		CMP	#$40 ; '@'
		BCC	loc_55C3
		LDA	$51
		AND	#3
		CMP	#3
		BNE	locret_5601
		TAX
		LDA	#0
		STA	$6390,X
		LDX	#0

loc_55F3:				; CODE XREF: sub_55B7+48j
		LDA	#0
		STA	$6350,X
		TXA
		CLC
		ADC	#8
		TAX
		CMP	#$38 ; '8'
		BCC	loc_55F3

locret_5601:				; CODE XREF: sub_55B7+32j
		RTS
; End of function sub_55B7


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_5602:				; CODE XREF: RAM:loc_558Fp RAM:55B1p
		CLC
		LDA	#6
		ADC	off_41
		STA	off_193C
		STA	off_7
		LDA	#0
		ADC	off_41+1
		STA	off_193C+1
		STA	off_7+1
		LDY	#6
		LDA	(off_7),Y
		BNE	loc_561F
		LDA	#$20 ; ' '
		STA	(off_7),Y

loc_561F:				; CODE XREF: sub_5602+17j
		LDA	#$E8 ; 'Ë'
		STA	off_16
		LDA	#$60 ; '`'
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C
		LDA	#2
		JMP	loc_2BFC
; End of function sub_5602

; ---------------------------------------------------------------------------

loc_5632:
		LDY	#0
		LDA	(off_41),Y
		AND	#$78 ; 'x'
		BEQ	loc_5644
		LDX	#0

loc_563C:				; CODE XREF: RAM:5642j
		CMP	byte_564F,X
		BEQ	loc_5647
		DEX
		BPL	loc_563C

loc_5644:				; CODE XREF: RAM:5638j
		JMP	loc_5209
; ---------------------------------------------------------------------------

loc_5647:				; CODE XREF: RAM:563Fj
		LDA	word_5650+1,X
		PHA
		LDA	word_5650,X
		PHA
; ---------------------------------------------------------------------------
byte_564F:	.BYTE $FF		; DATA XREF: RAM:loc_563Cr
word_5650:	.WORD $5208		; DATA XREF: RAM:564Br	RAM:loc_5647r
		.BYTE $60
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_51B6

loc_5653:				; CODE XREF: sub_51B6+35j
		AND	#3
		TAX
		LDA	unk_565F,X
		PHA
		LDA	unk_5663,X
		PHA
		RTS
; END OF FUNCTION CHUNK	FOR sub_51B6
; ---------------------------------------------------------------------------
unk_565F:	.BYTE	>(loc_5667-1)	; DATA XREF: sub_51B6+4A0r
		.BYTE	>(loc_56A7-1)
		.BYTE	>(loc_56EA-1)
		.BYTE	>(loc_5723-1)
unk_5663:	.BYTE	<(loc_5667-1)	; DATA XREF: sub_51B6+4A4r
		.BYTE	<(loc_56A7-1)
		.BYTE	<(loc_56EA-1)
		.BYTE	<(loc_5723-1)
; ---------------------------------------------------------------------------

loc_5667:
		LDA	I_FOOD
		BNE	loc_566F
		JMP	loc_5774
; ---------------------------------------------------------------------------

loc_566F:				; CODE XREF: RAM:566Aj
		DEC	I_FOOD
		LDA	$6398
		BMI	loc_5691
		LDA	$6399
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		TAX
		LDA	byte_6054,X
		LDX	#$99 ; 'ô'
		JSR	ADDSTAT1
		LDA	#$1C
		LDX	#$98 ; 'ò'
		JSR	ADDSTAT1
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_5691:				; CODE XREF: RAM:5675j
		LDA	#<a_YourStomachTurns
		STA	off_16
		LDA	#>a_YourStomachTurns
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C
		LDA	#$10
		JSR	loc_2BFC
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_56A7:
		LDA	$63BC
		BNE	loc_56AF
		JMP	loc_5774
; ---------------------------------------------------------------------------

loc_56AF:				; CODE XREF: RAM:56AAj
		DEC	$63BC
		LDA	$6398
		BMI	loc_56C1
		LDA	#$10
		LDY	#8
		JSR	sub_56D7
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_56C1:				; CODE XREF: RAM:5573j	RAM:56B5j
		LDA	#<a_YourThroatFails
		STA	off_16
		LDA	#>a_YourThroatFails
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C
		LDA	#$10
		JSR	loc_2BFC
		JMP	loc_5225

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_56D7:				; CODE XREF: RAM:557Ap	RAM:56BBp
		PHA
		TYA
		LDX	#$98 ; 'ò'
		JSR	ADDSTAT1
		PLA
		LDX	#$9A ; 'ö'
		JMP	ADDSTAT1
; End of function sub_56D7

; ---------------------------------------------------------------------------

loc_56E4:				; CODE XREF: RAM:5701j	RAM:5708j
		JSR	sub_57DC
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_56EA:
		LDA	$63BD
		BNE	loc_56F5
		JMP	loc_5774
; ---------------------------------------------------------------------------

loc_56F2:				; CODE XREF: RAM:56F8j
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_56F5:				; CODE XREF: RAM:56EDj
		JSR	sub_57AB
		BCS	loc_56F2
		LDX	#$61 ; 'a'
		LDY	#$29 ; ')'
		JSR	sub_4B4D
		BMI	loc_56E4
		LDA	#$88 ; 'à'
		JSR	sub_49B0
		BMI	loc_56E4
		LDY	#2

loc_570C:				; CODE XREF: RAM:5714j
		LDA	byte_611A,Y
		STA	(off_3D),Y
		INY
		CPY	#$F
		BNE	loc_570C
		LDA	$4B
		STA	(off_3D),Y
		DEC	$63BD
		INC	$6390
		JMP	loc_54AF
; ---------------------------------------------------------------------------

loc_5723:
		LDA	$63C1
		BEQ	loc_5774
		LDA	#<a_ItIs
		STA	off_16
		LDA	#>a_ItIs
		STA	off_16+1
		JSR	sub_2E31
		LDA	#'s'
		LDX	$6309
		CPX	#1
		BNE	loc_573E
		LDA	#' '

loc_573E:				; CODE XREF: RAM:573Aj
		STA	aMinutes+6
		LDA	#1
		CPX	#$A
		BCC	loc_5749
		LDA	#2

loc_5749:				; CODE XREF: RAM:5745j
		STA	byte_616E
		LDA	$630A
		LDY	#1
		CMP	#$A
		BCC	loc_5757
		LDY	#2

loc_5757:				; CODE XREF: RAM:5753j
		STY	byte_6186
		ASL	A
		TAX
		LDA	aTh_16,X	; "th"
		STA	aThHour_	; "th hour."
		LDA	aTh_16+1,X
		STA	aThHour_+1

loc_5768:				; CODE XREF: RAM:577Cj
		LDX	byte_194A
		JSR	sub_3C5C
		JSR	sub_2BFA
		JMP	loc_5225
; ---------------------------------------------------------------------------

loc_5774:				; CODE XREF: RAM:566Cj	RAM:56ACj ...
		LDA	#$4D ; 'M'
		STA	off_16
		LDA	#$61 ; 'a'
		STA	off_16+1
		BNE	loc_5768

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_577E:				; CODE XREF: RAM:377Dp
		LDA	#0
		STA	byte_6276
		LDA	#$D0 ; '–'
		STA	loc_51B0
		LDA	#$2E ; '.'
		STA	off_193A
		LDA	#$5F ; '_'
		STA	off_193A+1
		JMP	loc_51D8
; End of function sub_577E


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_5795:				; CODE XREF: sub_5835+Cp
		CMP	#$80 ; 'Ä'
		BCS	locret_57AA
		TAY
		LDA	$644B,Y
		STA	off_9+1
		LDA	$640B,Y
		STA	off_9
		LDY	#2
		LDA	#8
		STA	(off_9),Y

locret_57AA:				; CODE XREF: sub_5795+2j
		RTS
; End of function sub_5795


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_57AB:				; CODE XREF: RAM:54AAp	RAM:loc_56F5p ...
		LDA	#<a_UseAs
		STA	off_16
		LDA	#>a_UseAs
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C

loc_57B9:				; CODE XREF: RAM:57C8j
		LDA	#<loc_57C6
		STA	off_1977
		LDA	#>loc_57C6
		STA	off_1977+1
		JMP	loc_2FF3
; End of function sub_57AB

; ---------------------------------------------------------------------------

loc_57C6:
		LDA	$31
		BMI	loc_57B9
		CMP	#$1B
		BEQ	locret_57DB
		SEC
		SBC	#$31 ; '1'
		BCC	sub_57AB
		CMP	#2
		BCS	sub_57AB
		STA	byte_6283
		CLC

locret_57DB:				; CODE XREF: RAM:57CCj
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_57DC:				; CODE XREF: RAM:loc_56E4p
		LDA	#$C1 ; '¡'
		STA	off_16
		LDA	#$61 ; 'a'
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C
		JMP	sub_2BFA
; End of function sub_57DC

; ---------------------------------------------------------------------------
		LDX	$6315
		LDA	$6313
		CLC
		ADC	$628B,X
		STA	byte_6289
		SEC
		LDA	$6292,X
		SBC	$6314
		STA	byte_628A
		BPL	loc_580B
		LDA	#$FF
		STA	byte_6289

loc_580B:				; CODE XREF: RAM:5804j
		LDA	#$99 ; 'ô'
		STA	off_16
		LDA	#$62 ; 'b'
		STA	off_16+1
		LDX	byte_194A
		DEC	byte_18FE
		JSR	sub_3C5C
		LDA	#0
		STA	byte_18FE
		JSR	sub_2BB0
		LDA	#7
		STA	off_16
		LDA	#$20 ; ' '
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C
		JMP	loc_5209

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_5835:				; CODE XREF: RAM:54E3p	RAM:54FAp ...
		LDX	byte_6283
		LDA	$639C,X
		BMI	loc_5844
		CMP	$4B
		BEQ	loc_5844
		JSR	sub_5795

loc_5844:				; CODE XREF: sub_5835+6j sub_5835+Aj
		LDA	$4B
		JSR	sub_4EB4
		PHP
		JSR	sub_4EA2
		LDA	$4B
		LDX	byte_6283
		STA	$639C,X
		PLP
		RTS
; End of function sub_5835


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_5857:				; CODE XREF: RAM:3759p
		LDX	#0
		STX	byte_197B
		DEX
		STX	byte_58C1
		LDA	#$F
		STA	byte_6284

loc_5865:				; CODE XREF: sub_5857+51j
		LDX	byte_6284
		LDA	$6494,X
		CMP	#2
		BNE	loc_58A5
		LDA	$64C4,X
		CMP	$6315
		BNE	loc_58A5
		LDA	$64A4,X
		CMP	$6313
		BNE	loc_58A5
		LDA	$64B4,X
		CMP	$6314
		BNE	loc_58A5
		BIT	$4B
		BPL	loc_5895
		LDA	#$53 ; 'S'
		STA	off_59C1
		LDA	#$5E ; '^'
		STA	off_59C1+1

loc_5895:				; CODE XREF: sub_5857+32j
		LDX	byte_6284
		LDA	$64D4,X
		STA	$4B
		STA	byte_58C1
		JSR	sub_58C2
		BCS	locret_58C0

loc_58A5:				; CODE XREF: sub_5857+16j sub_5857+1Ej ...
		DEC	byte_6284
		BPL	loc_5865
		LDA	byte_58C1
		BPL	locret_58C0
		LDA	#$EE ; 'Ó'
		STA	off_16
		LDA	#$59 ; 'Y'
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C
		JSR	sub_2BB0

locret_58C0:				; CODE XREF: sub_5857+4Cj sub_5857+56j
		RTS
; End of function sub_5857

; ---------------------------------------------------------------------------
byte_58C1:	.BYTE 0			; DATA XREF: sub_5857+6w sub_5857+46w	...

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_58C2:				; CODE XREF: sub_5857+49p
		LDA	$4B
		JSR	sub_4B74
		LDA	#6
		CLC
		ADC	$41
		STA	off_59C1
		LDA	$42
		ADC	#0
		STA	off_59C1+1
		LDA	#<a_Getq_0
		STA	byte_5955
		LDA	#>a_Getq_0
		STA	byte_5956
		LDY	#0
		LDA	(off_41),Y
		AND	#$7F ; ''
		BNE	loc_5904
		LDA	$4B
		JSR	sub_4EC4
		LDY	#1
		LDA	(off_43),Y
		STA	byte_59E3
		INY
		LDA	(off_43),Y
		STA	byte_59E4
		LDA	#<a_Getq
		STA	byte_5955
		LDA	#>a_Getq
		STA	byte_5956

loc_5904:				; CODE XREF: sub_58C2+24j RAM:5932j
		LDA	byte_5955
		STA	off_16
		LDA	byte_5956
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C

loc_5914:				; CODE XREF: RAM:5923j
		LDA	#<loc_5921
		STA	off_1977
		LDA	#>loc_5921
		STA	off_1977+1
		JMP	loc_2FF3
; End of function sub_58C2

; ---------------------------------------------------------------------------

loc_5921:
		LDA	$31
		BMI	loc_5914
		CMP	#$1B
		BEQ	loc_594D
		JSR	sub_2BA5
		CMP	#'N'
		BEQ	loc_594B
		CMP	#'Y'
		BNE	loc_5904
		LDA	#8
		STA	byte_1961
		LDY	#0
		LDA	(off_41),Y
		BNE	loc_5945
		JSR	sub_5957
		JMP	loc_594B
; ---------------------------------------------------------------------------

loc_5945:				; CODE XREF: RAM:593Dj
		LDY	#2
		LDA	#1
		STA	(off_41),Y

loc_594B:				; CODE XREF: RAM:592Ej	RAM:5942j
		CLC
; ---------------------------------------------------------------------------
		.BYTE $24 ; $
; ---------------------------------------------------------------------------

loc_594D:				; CODE XREF: RAM:5927j
		SEC
		DEC	byte_195F
		DEC	byte_1960
		RTS
; ---------------------------------------------------------------------------
byte_5955:	.BYTE $9B		; DATA XREF: sub_58C2+16w sub_58C2+3Aw ...
byte_5956:	.BYTE $59		; DATA XREF: sub_58C2+1Bw sub_58C2+3Fw ...

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_5957:				; CODE XREF: RAM:593Fp
		LDY	#$16
		LDA	(off_41),Y
		TAX
		LDA	unk_5AA8,X
		LDY	#$18
		CPX	#7
		BCC	loc_5984
		TAX
		CLC
		LDA	(off_41),Y
		ADC	$6301,X
		STA	$6301,X
		DEY
		LDA	(off_41),Y
		ADC	$6300,X
		STA	$6300,X
		BCC	loc_5995
		LDA	#$FF
		STA	$6300,X
		STA	$6301,X
		BNE	loc_5995

loc_5984:				; CODE XREF: sub_5957+Cj
		TAX
		CLC
		LDA	(off_41),Y
		ADC	$6300,X
		STA	$6300,X
		BCC	loc_5995
		LDA	#$FF
		STA	$6300,X

loc_5995:				; CODE XREF: sub_5957+21j sub_5957+2Bj ...
		LDA	$4B
		JSR	sub_4AC9
		RTS
; End of function sub_5957

; ---------------------------------------------------------------------------

a_Getq_0:
		MOVEXY	0,0
		.BYTE $A5
aGetq:		.BYTE "GET?"
		.BYTE $D
		.BYTE $D
		.BYTE $D
		.BYTE $A9
		.BYTE $A5
		.BYTE $AC
		.WORD byte_59C0

a_Getq:
		MOVEXY	0,0
		.BYTE $A5
aGetq_0:	.BYTE "GET?"
		.BYTE $D
		.BYTE $D
		.BYTE $D
		.BYTE $A3
		.WORD loc_59E8
		.BYTE $A9
		.BYTE $A5
		PRINTWORD $59E3,6
		.BYTE $20
byte_59C0:	.BYTE $B3		; DATA XREF: RAM:59A9o
off_59C1:	.WORD unk_5E53		; DATA XREF: sub_5857+36w sub_58C2+Aw	...
		.BYTE $26
		.BYTE $D
		.BYTE $A3
		.WORD loc_59E5
		MOVEXY	0,7
		.BYTE $A5
		BLINK	'Y'
aEs:		.BYTE "es, "
		BLINK	'N'
aOOr:		.BYTE "o or "
		BLINK	"ESC"
a__0:		.BYTE '.'
		.BYTE $D
		.BYTE $FF
byte_59E3:	.BYTE 0			; DATA XREF: sub_58C2+2Fw
byte_59E4:	.BYTE 0			; DATA XREF: sub_58C2+35w
; ---------------------------------------------------------------------------

loc_59E5:				; DATA XREF: RAM:59C6o	RAM:6257o
		LDA	#0
; ---------------------------------------------------------------------------
		.BYTE $2C ; ,
; ---------------------------------------------------------------------------

loc_59E8:				; DATA XREF: RAM:59B7o	RAM:6228o
		LDA	#$FF
		STA	byte_18FE
		RTS
; ---------------------------------------------------------------------------
		MOVEXY	0,3
		.BYTE $A5
aNothingHere_:	.BYTE "Nothing here."
		.BYTE $D
		.BYTE $FF
		.BYTE $80 ; Ä
		.BYTE $19
		.BYTE	2
		.BYTE	0
		.BYTE	0
		.BYTE $15
aFoodPacketS:	.BYTE "Food Packet(s)",0 ; DATA XREF: sub_5AB4+121w
					; sub_5AB4:loc_5BDDw
		.BYTE	0
byte_5A17:	.BYTE 0			; DATA XREF: sub_5AB4+67w
					; sub_5AB4:loc_5BA1r ...
byte_5A18:	.BYTE 0			; DATA XREF: sub_5AB4+109w
					; sub_5AB4+17Cr
byte_5A19:	.BYTE 0			; DATA XREF: sub_5AB4+10Ew
					; sub_5AB4+174r
aFoodPacketS_0:	.BYTE "Food Packet(s)",0
aWaterFlaskS:	.BYTE "Water Flask(s)",0
aTorchEs:	.BYTE "Torch(es)",0
aTimepieceS:	.BYTE "Timepiece(s)",0
aCompassEs:	.BYTE "Compass(es)",0
aKeyS:		.BYTE "Key(s)",0
aCrystalS:	.BYTE "Crystal(s)",0
aGemS:		.BYTE "Gem(s)",0
aJewelS:	.BYTE "Jewel(s)",0
aGold:		.BYTE "Gold",0
aSilver:	.BYTE "Silver",0
aCopper:	.BYTE "Copper",0
unk_5A90:	.BYTE	<aFoodPacketS_0	; DATA XREF: sub_5AB4+111r
		.BYTE	<aWaterFlaskS
		.BYTE	<aTorchEs
		.BYTE	<aTimepieceS
		.BYTE	<aCompassEs
		.BYTE	<aKeyS
		.BYTE	<aCrystalS
		.BYTE	<aGemS
		.BYTE	<aJewelS
		.BYTE	<aGold
		.BYTE	<aSilver
		.BYTE	<aCopper
unk_5A9C:	.BYTE	>aFoodPacketS_0	; DATA XREF: sub_5AB4+116r
		.BYTE	>aWaterFlaskS
		.BYTE	>aTorchEs
		.BYTE	>aTimepieceS
		.BYTE	>aCompassEs
		.BYTE	>aKeyS
		.BYTE	>aCrystalS
		.BYTE	>aGemS
		.BYTE	>aJewelS
		.BYTE	>aGold
		.BYTE	>aSilver
		.BYTE	>aCopper
unk_5AA8:	.BYTE	I_FOOD-SEG_6300	; DATA XREF: sub_5AB4+73r sub_5AB4+F0r
		.BYTE	I_WATER-SEG_6300
		.BYTE	I_TORCHES-SEG_6300
		.BYTE	I_TIMEPIECES-SEG_6300
		.BYTE	I_COMPASSES-SEG_6300
		.BYTE	I_KEYS-SEG_6300
		.BYTE	I_CRYSTALS-SEG_6300
		.BYTE	I_GEMS-SEG_6300
		.BYTE	I_JEWELS-SEG_6300
		.BYTE	I_GOLD-SEG_6300
		.BYTE	I_SILVER-SEG_6300
		.BYTE	I_COPPER-SEG_6300

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_5AB4:				; CODE XREF: RAM:3762p
		LDA	#<aOffer
		STA	off_193A
		LDA	#>aOffer
		STA	off_193A+1
		LDA	#<a_OfferHowMany
		STA	off_5CC3
		LDA	#>a_OfferHowMany
		STA	off_5CC3+1
		JMP	loc_5ADF
; ---------------------------------------------------------------------------

loc_5ACB:				; CODE XREF: RAM:376Bp
		LDA	#<aDrop
		STA	off_193A
		LDA	#>aDrop
		STA	off_193A+1
		LDA	#<a_DropHowMany
		STA	off_5CC3
		LDA	#>a_DropHowMany
		STA	off_5CC3+1

loc_5ADF:				; CODE XREF: sub_5AB4+14j
		LDA	#<a_ItemForwardBack
		STA	off_1944
		LDA	#>a_ItemForwardBack
		STA	off_1944+1
		LDA	#$C
		STA	byte_6276
		LDA	#$F0 ; ''
		STA	loc_51B0
		JSR	sub_50B2
		BCS	loc_5B0E
		CMP	#$80 ; 'Ä'
		BCS	loc_5B15
		STA	$4B
		JSR	sub_4B74
		BEQ	loc_5B0E
		LDA	#9
		STA	byte_1961
		LDA	#2
		LDY	#2
		STA	(off_41),Y

loc_5B0E:				; CODE XREF: sub_5AB4+42j sub_5AB4+4Dj ...
		DEC	byte_195F
		DEC	byte_1960
		RTS
; ---------------------------------------------------------------------------

loc_5B15:				; CODE XREF: sub_5AB4+46j
		AND	#3
		CLC
		ADC	byte_6277
		STA	byte_5A17
		TAX
		LDA	#0
		STA	byte_6285
		STA	byte_6286
		LDY	unk_5AA8,X
		CPX	#7
		BCC	loc_5B35
		LDA	$6300,Y
		STA	byte_6285
		INY

loc_5B35:				; CODE XREF: sub_5AB4+78j
		LDA	$6300,Y
		STA	byte_6286
		ORA	byte_6285
		BEQ	loc_5B0E

loc_5B40:				; CODE XREF: sub_5AB4+B6j
		LDA	off_5CC3
		STA	off_16
		LDA	off_5CC3+1
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C
		JSR	sub_2AA0
		BCS	loc_5B0E
		BEQ	loc_5B0E
		BPL	loc_5B6D
		LDA	#<a_InvalidEntry
		STA	off_16
		LDA	#>a_InvalidEntry
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C
		JSR	sub_2BFA
		JMP	loc_5B40
; ---------------------------------------------------------------------------

loc_5B6D:				; CODE XREF: sub_5AB4+A3j
		LDX	3
		LDY	2
		STY	3
		STX	2
		LDA	#9
		STA	byte_1961
		SEC
		LDA	byte_6286
		SBC	3
		STA	byte_6288
		LDA	byte_6285
		SBC	2
		STA	byte_6287
		BCS	loc_5BA1
		LDA	byte_6285
		STA	2
		LDA	byte_6286
		STA	3
		LDA	#0
		STA	byte_6287
		LDA	#0
		STA	byte_6288

loc_5BA1:				; CODE XREF: sub_5AB4+D7j
		LDX	byte_5A17
		LDY	unk_5AA8,X
		CPX	#7
		BCC	loc_5BB2
		LDA	byte_6287
		STA	$6300,Y
		INY

loc_5BB2:				; CODE XREF: sub_5AB4+F5j
		LDA	byte_6288
		STA	$6300,Y

loc_5BB8:				; CODE XREF: RAM:18ABj
		STX	byte_5A17
		LDA	2
		STA	byte_5A18
		LDA	3
		STA	byte_5A19
		LDA	unk_5A90,X
		STA	7
		LDA	unk_5A9C,X
		STA	8
		LDY	#0

loc_5BD1:				; CODE XREF: sub_5AB4+125j
		LDA	(off_7),Y
		BEQ	loc_5BDB
		STA	aFoodPacketS,Y	; "Food	Packet(s)"
		INY
		BNE	loc_5BD1

loc_5BDB:				; CODE XREF: sub_5AB4+11Fj
		LDA	#0

loc_5BDD:				; CODE XREF: sub_5AB4+12Fj
		STA	aFoodPacketS,Y	; "Food	Packet(s)"
		INY
		CPY	#$F
		BCC	loc_5BDD
		LDA	#$F
		STA	byte_6284

loc_5BEA:				; CODE XREF: sub_5AB4+193j
		LDX	byte_6284
		LDA	$6494,X
		CMP	#2
		BNE	loc_5C44
		LDA	$64A4,X
		CMP	$6313
		BNE	loc_5C44
		LDA	$64B4,X
		CMP	$6314
		BNE	loc_5C44
		LDA	$64C4,X
		CMP	$6315
		BNE	loc_5C44
		LDA	$64D4,X
		STA	$4B
		JSR	sub_4B74
		BEQ	loc_5C44
		LDY	#0
		LDA	(off_41),Y
		BNE	loc_5C44
		LDY	#$16
		LDA	(off_41),Y
		CMP	byte_5A17
		BNE	loc_5C44
		LDY	#$18
		CLC
		LDA	byte_5A19
		ADC	(off_41),Y
		STA	(off_41),Y
		DEY
		LDA	byte_5A18
		ADC	(off_41),Y
		STA	off_41,Y
		BCC	loc_5C41
		LDA	#$FF
		STA	(off_41),Y
		INY
		STA	(off_41),Y

loc_5C41:				; CODE XREF: sub_5AB4+184j
		JMP	loc_5B0E
; ---------------------------------------------------------------------------

loc_5C44:				; CODE XREF: sub_5AB4+13Ej
					; sub_5AB4+146j ...
		DEC	byte_6284
		BPL	loc_5BEA
		LDX	#$5A ; 'Z'
		LDY	#1
		JSR	sub_4B4D
		JMP	loc_5B0E
; End of function sub_5AB4

; ---------------------------------------------------------------------------
a_OfferHowMany:
		MOVEXY	0,0
		.BYTE $A5
aOfferHowManyq:	.BYTE "Offer how many?"
		.BYTE $D
		.BYTE $AC
		.WORD byte_5C7D

a_DropHowMany:
		MOVEXY	0,0
		.BYTE $A5
aDropHowManyq:	.BYTE "Drop how many?",$D
byte_5C7D:	MOVEXY	0,7		; DATA XREF: RAM:5C68o
		.BYTE $A5
aEnterAmountOrP:.BYTE "Enter amount or press "
		BLINK	"ESC"
a__1:		.BYTE '.'
		.BYTE $D
		MOVEXY	10,3
		.BYTE "> "
		.BYTE $FF
a_InvalidEntry:
		MOVEXY	0,3
		.BYTE $A5
aInvalidEntryTr:.BYTE "Invalid entry, try again."
		.BYTE $D
		.BYTE $FF
off_5CC3:	.WORD	$FFFF		; DATA XREF: sub_5AB4+Cw sub_5AB4+23w	...
; ---------------------------------------------------------------------------
		LDA	$4B
		PHA
		LDX	#5

loc_5CCA:				; CODE XREF: RAM:5CEBj
		STX	byte_5D04
		LDA	$639C,X
		BMI	loc_5CEA
		STA	$4B
		JSR	sub_4B74
		JSR	sub_4EC4
		LDY	#$10
		LDX	byte_5D04
		CPX	#2
		BCC	loc_5CE5
		LDY	#$D

loc_5CE5:				; CODE XREF: RAM:5CE1j
		LDA	(off_43),Y
		DEY
		STA	(off_43),Y

loc_5CEA:				; CODE XREF: RAM:5CD0j
		DEX
		BPL	loc_5CCA
		LDA	#<a_YourInUseWeap
		STA	off_16
		LDA	#>a_YourInUseWeap
		STA	off_16+1
		LDX	byte_194A
		JSR	sub_3C5C
		JSR	sub_2BB0
		PLA
		STA	$4B
		JMP	loc_5209
; ---------------------------------------------------------------------------
byte_5D04:	.BYTE 0			; DATA XREF: RAM:loc_5CCAw RAM:5CDCr

a_YourInUseWeap:
		MOVEXY	0,2
		.BYTE $A5
aYourInUseWeapo:.BYTE "Your in use weapons and armor"
		.BYTE $D
		.BYTE $A5
aHaveBeenRepair:.BYTE "have been repaired."
		.BYTE $D
		.BYTE $FF
		.BYTE $31 ; 1
		.BYTE $32 ; 2
		.BYTE $33 ; 3
		.BYTE $34 ; 4

byte_5D41:
		MOVEXY	0,0
		.BYTE $A2
		PRINTSTR off_193A,40
		.BYTE $AB
		.BYTE $D
		.BYTE $A3
		.WORD loc_5DB6
		MOVEXY	3,2
asc_5D51:	.BYTE " ("              ; DATA XREF: RAM:551Bw RAM:5DC3w ...
		BLINK	'1'
		.BYTE ") "
		PRINTSTR off_193C,29
		.BYTE ' '
		.BYTE $AD
		.BYTE $AC ; ¨
		.BYTE $5D ; ]
		.BYTE $AB
		MOVEXY	3,3
		.BYTE $A3
		.WORD loc_5DBB
asc_5D67:	.BYTE " ("              ; DATA XREF: RAM:551Fw
		BLINK	'2'
		.BYTE ") "
		PRINTSTR off_193E,29
		.BYTE $20
		.BYTE $AD ; ≠
		.BYTE $AC ; ¨
		.BYTE $5D ; ]
		.BYTE $AB
		MOVEXY	3,4
		.BYTE $A3
		.WORD loc_5DBB
asc_5D7D:	.BYTE " ("              ; DATA XREF: RAM:5523w
		BLINK	'3'
		.BYTE	") "
		PRINTSTR off_1940,29
		.BYTE $20
		.BYTE $AD ; ≠
		.BYTE $AC ; ¨
		.BYTE $5D ; ]
		.BYTE $AB ; ´
		MOVEXY	3,5
		.BYTE $A3 ; £
		.BYTE $BB ; ª
		.BYTE $5D ; ]
asc_5D93:	.BYTE " ("              ; DATA XREF: RAM:5527w
		BLINK	'4'
		.BYTE $29 ; )
		.BYTE $20
		PRINTSTR off_1942,29
		.BYTE $20
		.BYTE $AD ; ≠
		.BYTE $AC ; ¨
		.BYTE $5D ; ]
		.BYTE $AB ; ´
		.BYTE  $D
		.BYTE  $D
		.BYTE $A2 ; ¢
		.BYTE $AD ; ≠
		.BYTE $44 ; D
		.BYTE $19
		.BYTE $AB ; ´
		.BYTE  $D
		.BYTE $FF
byte_5DAC:	.BYTE 0			; DATA XREF: RAM:5DD8w	RAM:5DFDw
byte_5DAD:	.BYTE 0			; DATA XREF: RAM:5DDDw	RAM:5E02w
byte_5DAE:	.BYTE 0			; DATA XREF: RAM:5DB1o	RAM:5DF8w
byte_5DAF:	.BYTE 0			; DATA XREF: RAM:5DB8w	RAM:loc_5DBBr ...

byte_5DB0:
		PRINTBYTE byte_5DAE,2
		.BYTE '%'
		.BYTE $AE
; ---------------------------------------------------------------------------

loc_5DB6:				; DATA XREF: RAM:5D4Co
		LDA	#0
		STA	byte_5DAF

loc_5DBB:				; DATA XREF: RAM:5D65o	RAM:5D7Bo
		LDX	byte_5DAF
		LDY	unk_5E55,X
		LDA	#$20 ; ' '
		STA	asc_5D51,Y	; " ("
		LDA	$1946,X
		JSR	sub_4EB4
		BCC	loc_5DD6
		LDY	unk_5E55,X
		LDA	#$2A ; '*'
		STA	asc_5D51,Y	; " ("

loc_5DD6:				; CODE XREF: RAM:5DCCj
		LDA	#$54 ; 'T'
		STA	byte_5DAC
		LDA	#$5E ; '^'
		STA	byte_5DAD
		LDA	loc_51B0
		CMP	#$D0 ; '–'
		BNE	loc_5E05
		LDA	byte_1946,X
		BMI	loc_5E05
		STA	$4B
		JSR	sub_4B74
		JSR	sub_4EC4
		LDY	#1
		LDA	(off_43),Y
		STA	byte_5DAE
		LDA	#<byte_5DB0
		STA	byte_5DAC
		LDA	#>byte_5DB0
		STA	byte_5DAD

loc_5E05:				; CODE XREF: RAM:5DE5j	RAM:5DEAj
		INC	byte_5DAF
		RTS
; ---------------------------------------------------------------------------

byte_5E09:
		MOVEXY	0,0
		.BYTE $A5
		PRINTSTR off_193A,40
		.BYTE $D
		MOVEXY	3,2
		.BYTE " ("
		BLINK	"1"
		.BYTE	") "
		.BYTE $AD ; ≠
		.BYTE $3C ; <
		.BYTE $19
		.BYTE $AB ; ´
		MOVEXY	3,3
		.BYTE	" ("
		BLINK	"2"
		.BYTE	") "
		.BYTE $AD ; ≠
		.BYTE $3E ; >
		.BYTE $19
		.BYTE $AB ; ´
		MOVEXY	3,4
		.BYTE	" ("
		BLINK	"3"
		.BYTE	") "
		.BYTE $AD ; ≠
		.WORD	off_1940
		.BYTE $AB ; ´
		MOVEXY	3,5
		.BYTE $20
		.BYTE $28 ; (
		BLINK	"4"
		.BYTE $29 ; )
		.BYTE $20
		.BYTE $AD ; ≠
		.BYTE $42 ; B
		.BYTE $19
		.BYTE $AB ; ´
		.BYTE  $D
		.BYTE  $D
		.BYTE $A2 ; ¢
		.BYTE $AD ; ≠
		.BYTE $44 ; D
		.BYTE $19
		.BYTE $AB ; ´
		.BYTE  $D
		.BYTE $FF
unk_5E53:	.BYTE	0		; DATA XREF: RAM:off_59C1o
		.BYTE $AE ; Æ
unk_5E55:	.BYTE	0		; DATA XREF: RAM:5DBEr	RAM:5DCEr
		.BYTE $16
		.BYTE $2C ; ,
		.BYTE $42 ; B
aFoodPackets_0:	.BYTE "Food Packets: "  ; DATA XREF: RAM:off_5F0Do
		PRINTBYTE I_FOOD,3
		.BYTE $AE
aWaterFlasks_0:	.BYTE "Water Flasks: "  ; DATA XREF: RAM:5F0Fo
		PRINTBYTE $63BC,3
		.BYTE $AE
aUnlitTorches:	.BYTE "Unlit Torches: " ; DATA XREF: RAM:5F11o
		PRINTBYTE $63BD,3
		.BYTE $AE
aTimepieces_0:	.BYTE "Timepieces: "    ; DATA XREF: RAM:5F13o
		PRINTBYTE $63C1,3
		.BYTE $AE
aCompasses_0:	.BYTE "Compasses: "     ; DATA XREF: RAM:5F15o
		PRINTBYTE $63C0,3
		.BYTE $AE
aKeys_0:	.BYTE "Keys: "          ; DATA XREF: RAM:5F17o
		PRINTBYTE I_KEYS,3
		.BYTE $AE
aCrystals_0:	.BYTE "Crystals: "      ; DATA XREF: RAM:5F19o
		PRINTBYTE $63BE,3
		.BYTE $AE
aGems_0:	.BYTE "Gems: "          ; DATA XREF: RAM:5F1Bo
		PRINTWORD $63B7,6
		.BYTE $AE
aJewels_0:	.BYTE "Jewels: "        ; DATA XREF: RAM:5F1Do
		PRINTWORD $63B9,6
		.BYTE $AE
aGold_0:	.BYTE "Gold  : "        ; DATA XREF: RAM:5F1Fo
		PRINTWORD $63B1,6
		.BYTE $AE
aSilver_0:	.BYTE "Silver: "        ; DATA XREF: RAM:5F21o
		PRINTWORD $63B3,6
		.BYTE $AE
aCopper_0:	.BYTE "Copper: "        ; DATA XREF: RAM:5F23o
		PRINTWORD $63B5,6
		.BYTE $AE
off_5F0D:	.WORD aFoodPackets_0	; DATA XREF: sub_50B2+20r sub_50B2+26r
					; "Food	Packets: "
		.WORD aWaterFlasks_0	; "Water Flasks: "
		.WORD aUnlitTorches	; "Unlit Torches: "
		.WORD aTimepieces_0	; "Timepieces: "
		.WORD aCompasses_0	; "Compasses: "
		.WORD aKeys_0		; "Keys: "
		.WORD aCrystals_0	; "Crystals: "
		.WORD aGems_0		; "Gems: "
		.WORD aJewels_0		; "Jewels: "
		.WORD aGold_0		; "Gold	 : "
		.WORD aSilver_0		; "Silver: "
		.WORD aCopper_0		; "Copper: "
aUse:		.BYTE "USE",0
aDrop:		.BYTE "DROP",0
aCast:		.BYTE "CAST",0
aGet:		.BYTE "GET",0
aOffer:		.BYTE "OFFER",0

a_ItemOrESC:
aItem:		.BYTE "Item "
		BLINK	'#'
aOr_0:		.BYTE " or "
		BLINK	"ESC"
aToExit_0:	.BYTE " to exit"
		.BYTE $AE
a_ItemForwardBack:
aItem_0:	.BYTE "Item "
		BLINK	'#'
		.BYTE ", "
		BLINK	'F'
aOrward_0:	.BYTE "orward, "
		BLINK	'B'
aAckOr_0:	.BYTE "ack, or "
aEsc_4:		BLINK	"ESC"
		.BYTE " to exit"
		.BYTE $AE
aWearInsteadOf:	.BYTE "Wear instead of:",0

a_UseAs:
		MOVEXY	0,0
		.BYTE $A5
aUseAs:		.BYTE "Use as:"
		.BYTE $D
		MOVEXY	11,3
		BLINK	'1'
aPrimaryWeapon:	.BYTE " Primary weapon"
		MOVEXY	11,4
		BLINK	'2'
aSecondaryWeapo:.BYTE " Secondary weapon"
		MOVEXY	0,7
		.BYTE $A5
aPressNumberOrE:.BYTE "Press number or ESC to exit"
		.BYTE $D
		.BYTE $FF

a_YourStomachTurns:
		MOVEXY	0,1
		.BYTE $A5
aYourStomachTur:.BYTE "Your stomach turns at"
		.BYTE $D
		.BYTE $A5
aTheThoughtOfEa:.BYTE "the thought of eating another bite."
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aThePacketSpill:.BYTE "The packet spills onto the ground."
		.BYTE $D
		.BYTE $FF
byte_6054:	.BYTE $30,$30,$30,$20,$20,$20,$10,$10	; DATA XREF: RAM:567Fr
		.BYTE $10,$10,$10,$10,$10,$10,$10,$10

a_YourThroatFails:
		MOVEXY	0,1
		.BYTE $A5
aYourThroatFail:.BYTE "Your throat fails to allow anything"
		.BYTE $D
		.BYTE $A5
aMoreToEnterYou:.BYTE "more to enter your already full belly"
		.BYTE $2E
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aTheLiquidSlide:.BYTE "The liquid slides down your face"
		.BYTE $D
		.BYTE $A5
aToTheGround_:	.BYTE "to the ground."
		.BYTE $D
		.BYTE $FF
		.BYTE $A8
		MOVEXY	0,2
		.BYTE $A5
aYouDrinkA:	.BYTE "You drink a"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		PRINTSTR off_193C,38
a__2:		.BYTE '.'
		.BYTE $D
		.BYTE $FF

a_YouNeedACryst:
		.BYTE $A8
		MOVEXY	0,3
		.BYTE $A5
aYouNeedACrysta:.BYTE "You need a crystal."
byte_611A:	.BYTE $D		; DATA XREF: RAM:loc_570Cr
		.BYTE $FF
		.BYTE	4
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	2
		.BYTE $80 ; Ä
		.BYTE	1
		.BYTE	0
		.BYTE	8
		.BYTE $8B ; ã
		.BYTE $24 ; $
		.BYTE	4
		.BYTE	0
		.BYTE	2
		.BYTE $10
aLitTorch:	.BYTE "Lit Torch",0
		.BYTE	0
		.BYTE $FF
		.BYTE	0
		.BYTE $13
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $13
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE $16
		.BYTE $16
		.BYTE $82 ; Ç
		.BYTE	3

a_YouHaveNone:
		MOVEXY	0,3
		.BYTE $A5
aYouHaveNone_:	.BYTE "You have none."
		.BYTE $D
		.BYTE $FF

a_ItIs:
		MOVEXY	0,2
		.BYTE $A5
aItIs:		.BYTE "It is "
		.BYTE $B2
		.WORD $6309
byte_616E:	.BYTE 2			; DATA XREF: RAM:loc_5749w
		.BYTE $20
aMinutes:	.BYTE "minutes "        ; DATA XREF: RAM:loc_573Ew
		.BYTE $D
		.BYTE $A5
aPastThe:	.BYTE "past the "
		.BYTE $B2
		.WORD $630A
byte_6186:	.BYTE 2			; DATA XREF: RAM:loc_5757w
aThHour_:	.BYTE "th hour."        ; DATA XREF: RAM:575Fw RAM:5765w
		.BYTE $D
		.BYTE $FF
aTh_16:		.BYTE "th"              ; DATA XREF: RAM:575Cr RAM:5762r
aSt_0:		.BYTE "st"
aNd_0:		.BYTE "nd"
aRd_0:		.BYTE "rd"
aTh_15:		.BYTE "th"
aTh_14:		.BYTE "th"
aTh_13:		.BYTE "th"
aTh_12:		.BYTE "th"
aTh_11:		.BYTE "th"
aTh_10:		.BYTE "th"
aTh_9:		.BYTE "th"
aTh_8:		.BYTE "th"
aTh_7:		.BYTE "th"
aTh_6:		.BYTE "th"
aTh_5:		.BYTE "th"
aTh_4:		.BYTE "th"
aTh_3:		.BYTE "th"
aTh_2:		.BYTE "th"
aTh_1:		.BYTE "th"
aTh_0:		.BYTE "th"
aTh:		.BYTE "th"
aSt:		.BYTE "st"
a_Nd:		.BYTE "nd"
aRd:		.BYTE "rd"
		MOVEXY	0,4
		.BYTE $A5
aYouAreCarrying:.BYTE "You are carrying too much!"
		.BYTE $D
		.BYTE $FF
a_YouCastTheSpell:
		.BYTE $A8
		MOVEXY	0,2
		.BYTE $A5
aYouCastTheSpel:.BYTE "You cast the spell of"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
		BLINK	$7F
		.BYTE ' '
		PRINTSTR off_193C,30
a__3:		.BYTE ". "
		BLINK	$7F
		.BYTE $D
		.BYTE $FF
a_TheSpellFailed:
		MOVEXY	0,3
		.BYTE $A5
aTheSpellFailed:.BYTE "The spell failed!"
		.BYTE $D
		.BYTE $FF
a_TheSpellBackfired:
		MOVEXY	0,2
		.BYTE $A3
		.WORD loc_59E8
		.BYTE $A5
aTheSpellFail_0:.BYTE "The spell failed"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aAndBackfiredFo:.BYTE "and backfired for "
		PRINTBYTE byte_6282,2
		.BYTE '!'
		.BYTE $D
		.BYTE $A3 ; £
		.WORD loc_59E5
		.BYTE $FF

a_SomethingIsOdd:
		MOVEXY	0,3
		.BYTE $A5 ; •
aSomethingIsOdd:.BYTE "Something is odd here."
		.BYTE $D
		.BYTE $FF
byte_6276:	.BYTE 0			; DATA XREF: RAM:36DEw	sub_5049+3r ...
byte_6277:	.BYTE 0			; DATA XREF: sub_5049r	sub_50B2+2w ...
byte_6278:	.BYTE 0			; DATA XREF: sub_50B2+Aw sub_50B2+2Cr	...
byte_6279:	.BYTE 0			; DATA XREF: sub_50B2+47w sub_50B2+52w
byte_627A:	.BYTE 0			; DATA XREF: sub_50B2+3Fw
					; sub_50B2:loc_50FCr ...
byte_627B:	.BYTE 0			; DATA XREF: RAM:52CDw	RAM:loc_5390r
byte_627C:	.BYTE 0			; DATA XREF: RAM:5411w	RAM:5445r
byte_627D:	.BYTE 0			; DATA XREF: sub_50B2+10w
					; sub_50B2:loc_50CAr ...
byte_627E:	.BYTE 0			; DATA XREF: sub_51B6+46w sub_51B6+5Fr
byte_627F:	.BYTE 0			; DATA XREF: sub_51B6+2w sub_51B6+65r	...
byte_6280:	.BYTE 0			; DATA XREF: RAM:52DCw	RAM:530Br ...
byte_6281:	.BYTE 0			; DATA XREF: RAM:5360r
byte_6282:	.BYTE 0			; DATA XREF: RAM:53CCr	RAM:53DAr ...
byte_6283:	.BYTE 0			; DATA XREF: RAM:54F7w	RAM:555Dw ...
byte_6284:	.BYTE 0			; DATA XREF: sub_5857+Bw
					; sub_5857:loc_5865r ...
byte_6285:	.BYTE 0			; DATA XREF: sub_5AB4+6Dw sub_5AB4+7Dw ...
byte_6286:	.BYTE 0			; DATA XREF: sub_5AB4+70w sub_5AB4+84w ...
byte_6287:	.BYTE 0			; DATA XREF: sub_5AB4+D4w sub_5AB4+E5w ...
byte_6288:	.BYTE 0			; DATA XREF: sub_5AB4+CCw sub_5AB4+EAw ...
byte_6289:	.BYTE 0			; DATA XREF: RAM:57F7w	RAM:5808w ...
byte_628A:	.BYTE 0			; DATA XREF: RAM:5801w	RAM:62A6o
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE $20
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $3F ; ?
		.BYTE $3F ; ?
		.BYTE $1F
		.BYTE $1F
		.BYTE $1F
		.BYTE  $F
		.BYTE	7
		MOVEXY	0,2
		.BYTE $A5
aYouAre_0:	.BYTE "You are "
		PRINTBYTE byte_628A,2
aSquaresNorth:	.BYTE " squares North"
		.BYTE $D
		.BYTE $A5
		.BYTE	"and "
		PRINTBYTE byte_6289,2
aSquaresEastFro:.BYTE " squares East from the Southwest"
		.BYTE $D
		.BYTE $A5
aCornerOfLevel:	.BYTE "corner of level "
		PRINTBYTE $631D,1
a_:		.BYTE '.'
		.BYTE $D
		.BYTE $FF

		; i think this is leftover debugging symbol table

		.BYTE	"MSG"
		.WORD	$197C
		.BYTE	$87
