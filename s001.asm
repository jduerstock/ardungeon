		.INCLUDE "equates.inc"

loc_B000	= $B000

;		.ORG	$600
byte_600:	.BYTE	1
		.BYTE	1
		.WORD	byte_600
		.WORD	loc_606
; ---------------------------------------------------------------------------
loc_606:
		LDA	#<byte_640
		STA	SDLST
		LDA	#>byte_640
		STA	SDLST+1
		LDA	RTCLOK+2

loc_612:
		CMP	RTCLOK+2
		BEQ	loc_612
		LDA	PORTB
		ORA	#2
		STA	PORTB
		LDA	#16
		STA	DAUX
		LDA	#0
		STA	COLOR2
		STA	SOUNDR
		STA	DBUF
		LDA	#>loc_B000
		STA	DBUF+1

loc_632:
		JSR	DSKINV
		BMI	loc_632
		LDA	byte_600
		STA	loc_B000-1
		JMP	loc_B000
; ---------------------------------------------------------------------------
byte_640:	.BYTE	ANTIC_BLANK8
		.BYTE	ANTIC_JMP_WVBLANK
		.WORD	byte_640
		.BYTE	$9B
aAhoyPiratesCha:.BYTE	"Ahoy pirates!  Change the first byte in this sector "
		.BYTE	"to a 0."
