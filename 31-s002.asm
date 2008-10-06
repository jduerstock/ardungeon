		.include	"equates.inc"
		.include	"globals.inc"
		.include	"macros.inc"
		.include	"exp_kernel.inc"

off_68	= $68
off_6A	= $6A
off_6E	= $6E
off_D6	= $D6
off_F4	= $F4

;		.ORG	$7600
		.BYTE	1
; ---------------------------------------------------------------------------
		JMP	loc_77BE
; ---------------------------------------------------------------------------
		JMP	locret_7607

locret_7607:
		RTS
; ---------------------------------------------------------------------------
		JMP	loc_776D
; ---------------------------------------------------------------------------
off_760B:	.WORD	0		; DATA XREF: RAM:7619w	RAM:765Bo
; ---------------------------------------------------------------------------

loc_760D:				; DATA XREF: RAM:7657o
		LDX	$76
		CPX	byte_AA00
		BCC	loc_7616
		LDX	#0

loc_7616:				; CODE XREF: RAM:7612j
		LDA	unk_7643,X
		STA	off_760B
		LDA	unk_764B,X
		STA	off_760B+1
		RTS
; ---------------------------------------------------------------------------
aThe:		.BYTE "The",0
a2nd:		.BYTE "2nd",0
a3rd:		.BYTE "3rd",0
a4th:		.BYTE "4th",0
a5th:		.BYTE "5th",0
a6th:		.BYTE "6th",0
a7th:		.BYTE "7th",0
a8th:		.BYTE "8th",0
unk_7643:	.BYTE	<aThe		; DATA XREF: RAM:loc_7616r
		.BYTE	<a2nd
		.BYTE	<a3rd
		.BYTE	<a4th
		.BYTE	<a5th
		.BYTE	<a6th
		.BYTE	<a7th
		.BYTE	<a8th
unk_764B:	.BYTE	>aThe		; DATA XREF: RAM:761Cr
		.BYTE	>a2nd
		.BYTE	>a3rd
		.BYTE	>a4th
		.BYTE	>a5th
		.BYTE	>a6th
		.BYTE	>a7th
		.BYTE	>a8th
unk_7653:	MOVEXY	0,2		; DATA XREF: RAM:AD54o	RAM:AD5Fo ...
byte_7656:
		.BYTE $A3
		.WORD loc_760D
		.BYTE $A5
		.BYTE $B4
		.WORD off_760B
		.BYTE 3
		.BYTE ' '
		.BYTE $B4
		.WORD $AA01
		.BYTE $14
		.BYTE $20
		.BYTE $AE ; Æ
byte_7665:	MOVEXY	0,3		; DATA XREF: RAM:990Eo
		.BYTE $A3
		.WORD loc_766B
; ---------------------------------------------------------------------------

loc_766B:				; DATA XREF: RAM:7669o
		dldi	off_16, byte_7656
		RTS
; ---------------------------------------------------------------------------
		MOVEXY	0,7
		.BYTE $A5
aDostThouYieldq:.BYTE "Dost thou yield? ("
		BLINK	'Y'
		.BYTE " or "
		BLINK	'N'
		.BYTE ')'
		.BYTE $D
		.BYTE $FF
		.BYTE $87 ; á
byte_7698:	.BYTE 0			; DATA XREF: sub_8560+2w
		.BYTE	2
		.BYTE	0
byte_769B:	.BYTE 0			; DATA XREF: sub_84CF+26w
		.BYTE $1D
byte_769D:	.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE $FF
		.BYTE	0
		.BYTE $FF
		.BYTE $FF
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
		.BYTE	3
		.BYTE	3
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
off_76D9:	.WORD	0		; DATA XREF: sub_7EA5+8w sub_7EA5+1Ew	...
off_76DB:	.WORD	0		; DATA XREF: sub_7B59+A2w sub_7B59+C5w ...
		.BYTE	0
		.BYTE	0
		.BYTE	0
unk_76E0:	.BYTE	0		; DATA XREF: sub_7DD2+A3r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	1
unk_76EC:	.BYTE $BB ; ª		; DATA XREF: sub_7DD2+A6r RAM:8D3Ar
		.BYTE $BC ; º
		.BYTE $BD ; Ω
		.BYTE $C1 ; ¡
		.BYTE $C0 ; ¿
		.BYTE $BF ; ø
		.BYTE $BE ; æ
		.BYTE $B7 ; ∑
		.BYTE $B9 ; π
		.BYTE $B1 ; ±
		.BYTE $B3 ; ≥
		.BYTE $B5 ; µ
; ---------------------------------------------------------------------------
		JMP	loc_863C
; ---------------------------------------------------------------------------
		JMP	loc_880D
; ---------------------------------------------------------------------------
		JMP	loc_8864
; ---------------------------------------------------------------------------
		JMP	loc_8880
; ---------------------------------------------------------------------------
		JMP	loc_8898
; ---------------------------------------------------------------------------
		JMP	sub_9482
; ---------------------------------------------------------------------------
		JMP	loc_8ED1
; ---------------------------------------------------------------------------
		JMP	sub_8ECE
; ---------------------------------------------------------------------------
		JMP	sub_7EA5
; ---------------------------------------------------------------------------
		JMP	sub_8EF9
; ---------------------------------------------------------------------------
		JMP	loc_8A53
; ---------------------------------------------------------------------------
		JMP	sub_7C9E
; ---------------------------------------------------------------------------
		JMP	loc_7853
; ---------------------------------------------------------------------------
		JMP	loc_785D
; ---------------------------------------------------------------------------
		JMP	sub_94F0
; ---------------------------------------------------------------------------
		JMP	locret_7DD1
; ---------------------------------------------------------------------------
		JMP	sub_8EEF
; ---------------------------------------------------------------------------
		JMP	loc_8FD2
; ---------------------------------------------------------------------------
		JMP	loc_79F9
; ---------------------------------------------------------------------------
		JMP	sub_886F
; ---------------------------------------------------------------------------
		JMP	sub_8EA7
; ---------------------------------------------------------------------------
		JMP	sub_9280
; ---------------------------------------------------------------------------
		JMP	loc_84ED
; ---------------------------------------------------------------------------
		JMP	sub_8CCB
; ---------------------------------------------------------------------------
		JMP	loc_8D74
; ---------------------------------------------------------------------------
		JMP	sub_901C
; ---------------------------------------------------------------------------
		JMP	loc_7D38
; ---------------------------------------------------------------------------
		JMP	loc_9734
; ---------------------------------------------------------------------------
		JMP	sub_9067
; ---------------------------------------------------------------------------
		JMP	sub_8B3E
; ---------------------------------------------------------------------------
		JMP	loc_8CBB
; ---------------------------------------------------------------------------
		JMP	loc_8B80
; ---------------------------------------------------------------------------
		JMP	sub_8560
; ---------------------------------------------------------------------------
		JMP	loc_8598
; ---------------------------------------------------------------------------
		JMP	sub_8F0D
; ---------------------------------------------------------------------------
		JMP	sub_9475
; ---------------------------------------------------------------------------
		JMP	sub_9081
; ---------------------------------------------------------------------------
		JMP	loc_90CD
; ---------------------------------------------------------------------------
		JMP	sub_8E7F
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_84CF

loc_776D:				; CODE XREF: RAM:7608j	sub_84CF-990j ...
		JSR	sub_9731
		JSR	sub_8EF9
		JSR	sub_9272
		LDX	#0
		JSR	nullsub_1
		LDA	#$FF
		BIT	byte_9870
		BPL	loc_7785
		STA	byte_AC00

loc_7785:				; CODE XREF: sub_84CF-D4Fj
		STA	loc_96F0
		STA	$1959
		LDA	$195B
		STA	$6316
		LDA	$195C
		STA	$6317
		LDA	#0
		STA	$1958
		STA	$1937
		DEC	$195F
		DEC	$1960
		JSR	$184E
		LDX	$72
		TXS
		LDA	$758A
		ORA	$758B
		BNE	loc_77B6
		JMP	$180C
; ---------------------------------------------------------------------------

loc_77B6:				; CODE XREF: sub_84CF-D1Ej
		LDA	#2
		STA	$631E
		JMP	$1803
; END OF FUNCTION CHUNK	FOR sub_84CF
; ---------------------------------------------------------------------------

loc_77BE:				; CODE XREF: RAM:7601j
		LDA	#$FF
		STA	$1937
		dldi	off_1977, loc_77FA
		dldi	off_16, byte_9881
		JSR	$184B
		LDX	$1933
		STX	byte_A892
		LDA	#0
		STA	$195D
		STA	$22F
		STA	$758A
		STA	$758B
		JSR	sub_9827
		dldi	off_224, $9758
		RTS
; ---------------------------------------------------------------------------

loc_77FA:
		TSX
		STX	$72
		LDA	#0
		STA	$638E
		STA	$97
		JSR	byte_AA00
		JSR	sub_7B59
		LDA	$638E
		BNE	loc_7824
		LDA	$6381
		JSR	sub_94D5
		BCS	loc_7819
		INC	$97

loc_7819:				; CODE XREF: RAM:7815j
		LDA	byte_AA10
		JSR	sub_94D5
		BCS	loc_7824
		INC	$638E

loc_7824:				; CODE XREF: RAM:780Dj	RAM:781Fj
		LDA	$97
		EOR	$638E
		BEQ	loc_7853
		LDA	$97
		BEQ	loc_7836
		JSR	sub_7DD2
		BCS	loc_785D
		BCC	loc_787B

loc_7836:				; CODE XREF: RAM:782Dj
		ldxy	$9883
		JSR	loc_8ED1
		DEC	$638E
		LDA	off_AA13+1
		BEQ	loc_784B
		LDX	off_AA13
		JMP	loc_94E7
; ---------------------------------------------------------------------------

loc_784B:				; CODE XREF: RAM:7843j
		LDA	byte_AA16
		BNE	loc_7853
		JMP	loc_79F9
; ---------------------------------------------------------------------------

loc_7853:				; CODE XREF: RAM:771Cj	RAM:7829j ...
		LDA	#0
		STA	$97
		STA	$638E
		JSR	sub_7DC6

loc_785D:				; CODE XREF: RAM:771Fj	RAM:7832j
		LDA	#$40 ; '@'
		JSR	$1899
		CLC
		ADC	byte_AA2A
		BCS	loc_7878
		STA	$96
		LDA	#$40 ; '@'
		JSR	$1899
		ADC	$6379
		BCS	loc_787B
		CMP	$96
		BCS	loc_787B

loc_7878:				; CODE XREF: RAM:7866j
		JMP	loc_79F9
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_88B0

loc_787B:				; CODE XREF: RAM:7834j	RAM:7872j ...
		LDA	#0
		STA	$A0
		STA	$A1
		STA	$9B
		STA	$7D

loc_7885:				; CODE XREF: sub_88B0-EBAj
		JSR	sub_94F0
		LDA	$91
		BEQ	loc_7896
		LDX	#3
		STX	$A0
		DEX
		STX	$9B
		JSR	sub_9272

loc_7896:				; CODE XREF: sub_88B0-1026j
		LDA	#0
		STA	$92
		LDX	#$15

loc_789C:				; CODE XREF: sub_88B0-1010j
		STA	$63DD,X
		DEX
		BPL	loc_789C
		STA	$A7
		STA	$A8
		JSR	sub_8EF9
		LDA	$6345
		ORA	$6346
		BNE	loc_78B4
		JMP	loc_7B42
; ---------------------------------------------------------------------------

loc_78B4:				; CODE XREF: sub_88B0-1001j
		LDA	$638E
		BEQ	loc_78C3
		ldxy	$9D97
		JSR	loc_8ED1
		JMP	loc_79F9
; ---------------------------------------------------------------------------

loc_78C3:				; CODE XREF: sub_88B0-FF9j
		LDA	$8A
		BMI	loc_78C9
		BNE	loc_78CC

loc_78C9:				; CODE XREF: sub_88B0-FEBj
					; sub_88B0-FE1j ...
		JMP	loc_7AC2
; ---------------------------------------------------------------------------

loc_78CC:				; CODE XREF: sub_88B0-FE9j
		LDA	byte_AA00
		BEQ	loc_78C9
		BMI	loc_78C9
		LDA	#$F0 ; ''
		STA	byte_A893
		LDA	#$FF
		STA	$1961

loc_78DD:				; CODE XREF: RAM:7919j	RAM:7963j
		ldxy	$9A4B
		JSR	sub_8EEF

loc_78E4:				; CODE XREF: RAM:7912j
		LDA	$252

loc_78E7:				; CODE XREF: sub_88B0-FC6j
		CMP	$252
		BEQ	loc_78E7
		DEC	byte_A893
		BEQ	loc_7966
		LDA	#0
		STA	$1937
		LDA	#6
		STA	byte_A894
		dldi	off_1977, $7908
		JMP	$1806
; END OF FUNCTION CHUNK	FOR sub_88B0
; ---------------------------------------------------------------------------
		DEC	$1937
		BIT	$1961
		BPL	loc_7966
		LDA	$31
		BMI	loc_78E4
		SEC
		SBC	#$30 ; '0'
		CMP	#6
		BCS	loc_78DD
		STA	byte_A894
		CMP	#4
		BEQ	loc_7941
		LDA	$1968
		BEQ	loc_7941
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	loc_7931+1
		LDA	RANDOM

loc_7931:				; DATA XREF: RAM:792Bw
		CMP	#$FF
		BCS	loc_7941
		LDA	#4
		STA	byte_A894
		ldxy	$9D32
		JSR	loc_8ED1

loc_7941:				; CODE XREF: RAM:7920j	RAM:7925j ...
		LDA	byte_A894
		CMP	#5
		BNE	loc_7966
		LDX	$639C
		LDY	$639D
		STX	$639D
		STY	$639C
		JSR	sub_8D7E
		ldxy	$A0C1
		JSR	sub_8EEF
		LDA	#1
		JSR	$185A
		JMP	loc_78DD
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_88B0

loc_7966:				; CODE XREF: sub_88B0-FC1j RAM:790Ej ...
		LDA	$91
		BEQ	loc_796C
		DEC	$91

loc_796C:				; CODE XREF: sub_88B0-F48j
		JSR	sub_7ECE
		JSR	sub_92D0
		LDA	$A7
		ORA	$A8
		BEQ	loc_797B
		JSR	sub_948D

loc_797B:				; CODE XREF: sub_88B0-F3Aj
		JSR	sub_9124
		LDA	byte_A894
		CMP	#4
		BNE	loc_79A0
		LDA	$97
		BEQ	loc_79A0
		DEC	$97
		INC	$A0
		INC	$A0
		INC	$9B
		INC	$9B
		INC	$9B
		LDA	byte_AA21
		ORA	#$20 ; ' '
		STA	byte_AA21
		JMP	loc_787B
; ---------------------------------------------------------------------------

loc_79A0:				; CODE XREF: sub_88B0-F2Dj
					; sub_88B0-F29j
		LDA	#0
		STA	$76

loc_79A4:				; CODE XREF: sub_88B0-F02j
		JSR	loc_94C5
		INC	$76
		LDA	$76
		CMP	byte_AA00
		BCC	loc_79A4
		JSR	sub_9219
		LDA	byte_AA00
		BNE	loc_79BB
		JMP	loc_7AC2
; ---------------------------------------------------------------------------

loc_79BB:				; CODE XREF: sub_88B0-EFAj
		BIT	$A5
		BPL	loc_79F0
		LDA	$91
		BNE	loc_79E3
		LDA	#0
		STA	$76
		LDY	byte_AA00

loc_79CA:				; CODE XREF: sub_88B0-EDCj
		JSR	sub_9509
		LDA	$C2,X
		ORA	$C3,X
		BEQ	loc_79D9
		DEY
		BNE	loc_79CA
		JMP	loc_79E3
; ---------------------------------------------------------------------------

loc_79D9:				; CODE XREF: sub_88B0-EDFj
		LDA	$6349
		LDX	#3
		JSR	sub_8F0D
		BMI	loc_79F0

loc_79E3:				; CODE XREF: sub_88B0-EEFj
					; sub_88B0-EDAj
		LDA	$A5
		AND	#$7F ; ''
		STA	$A5
		ldxy	$A24E
		JSR	sub_8ECE

loc_79F0:				; CODE XREF: sub_88B0-EF3j
					; sub_88B0-ECFj
		LDA	$92
		ORA	$91
		BEQ	loc_79F9
		JMP	loc_7885
; ---------------------------------------------------------------------------

loc_79F9:				; CODE XREF: RAM:772Ej	RAM:7850j ...
		LDA	byte_AA00
		BNE	loc_7A01
		JMP	loc_7AC2
; ---------------------------------------------------------------------------

loc_7A01:				; CODE XREF: sub_88B0-EB4j
		LDA	#0
		STA	$76

loc_7A05:				; CODE XREF: sub_88B0-E4Ej
		JSR	loc_94C5
		BCS	loc_7A53
		JSR	sub_9509
		LDA	byte_AA20
		AND	#$10
		BEQ	loc_7A1A
		LDA	#0
		STA	$C2,X
		STA	$97

loc_7A1A:				; CODE XREF: sub_88B0-E9Ej
		LDA	$C2,X
		BEQ	loc_7A28
		LDX	#$99 ; 'ô'
		LDY	#$D
		JSR	sub_8ECE
		JMP	loc_7A53
; ---------------------------------------------------------------------------

loc_7A28:				; CODE XREF: sub_88B0-E94j
		LDA	$C3,X
		BPL	loc_7A4D
		LDA	byte_AA27
		LDX	#3
		JSR	sub_8F15
		BMI	loc_7A43
		JSR	sub_9509
		LDA	#0
		STA	$C3,X
		ldxy	$9CB3
		BNE	loc_7A47

loc_7A43:				; CODE XREF: sub_88B0-E7Cj
		ldxy	$A1E7

loc_7A47:				; CODE XREF: sub_88B0-E6Fj
		JSR	sub_8ECE
		JMP	loc_7A53
; ---------------------------------------------------------------------------

loc_7A4D:				; CODE XREF: sub_88B0-E86j
		JSR	sub_85DE
		JSR	loc_94C5

loc_7A53:				; CODE XREF: sub_88B0-EA8j
					; sub_88B0-E8Bj ...
		LDA	byte_AA00
		BEQ	loc_7AC2
		JSR	sub_8EF9
		INC	$76
		LDA	$76
		CMP	byte_AA00
		BCC	loc_7A05
		LDY	byte_AA00
		LDX	#0

loc_7A69:				; CODE XREF: sub_88B0-E3Ej
		LDA	$C2,X
		BEQ	loc_7A6F
		DEC	$C2,X

loc_7A6F:				; CODE XREF: sub_88B0-E45j
		INX
		INX
		DEY
		BNE	loc_7A69
		JSR	sub_9219
		LDA	$638E
		BEQ	loc_7A7F
		DEC	$638E

loc_7A7F:				; CODE XREF: sub_88B0-E36j
		LDA	byte_AA00
		BEQ	loc_7AC2
		JSR	sub_9219
		JSR	sub_9072
		BIT	$C3
		BVC	loc_7AAC
		LDA	$A5
		ORA	$638E
		BNE	loc_7A9F
		LDA	byte_AA24
		LDX	#3
		JSR	sub_8F15
		BMI	loc_7AAC

loc_7A9F:				; CODE XREF: sub_88B0-E1Dj
		LDA	$C3
		AND	#$BF ; 'ø'
		STA	$C3
		ldxy	$A26D
		JSR	sub_8ECE

loc_7AAC:				; CODE XREF: sub_88B0-E24j
					; sub_88B0-E13j
		INC	byte_A89E
		LDA	$AC
		ORA	$AB
		BNE	loc_7ABF
		LDA	byte_A89E
		CMP	#4
		BCC	loc_7ABF
		JMP	loc_8D74
; ---------------------------------------------------------------------------

loc_7ABF:				; CODE XREF: sub_88B0-DFDj
					; sub_88B0-DF6j
		JMP	loc_787B
; END OF FUNCTION CHUNK	FOR sub_88B0
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_84CF

loc_7AC2:				; CODE XREF: sub_88B0:loc_78C9j
					; sub_88B0-EF8j ...
		LDA	$1959
		BNE	loc_7AD2
		LDA	$195A
		ldxy	$7500
		SEC
		JSR	$1860

loc_7AD2:				; CODE XREF: sub_84CF-A0Aj
		JSR	loc_9734
		JSR	sub_9067
		LDA	#$FF
		STA	$1959
		LDY	#0
		LDA	(off_68),Y
		CMP	#3
		BNE	loc_7B1E
		DEC	$197B
		dmv	off_7, off_68
		LDY	#5
		LDA	(off_7),Y
		CLC
		ADC	off_7
		STA	off_7
		BCC	loc_7AFD
		INC	off_7+1

loc_7AFD:				; CODE XREF: sub_84CF-9D6j
		LDY	#$F
		LDA	(off_7),Y
		CMP	#$FF
		BEQ	loc_7B10
		JSR	$1899
		CMP	(off_7),Y
		BCS	loc_7B0E
		ADC	#1

loc_7B0E:				; CODE XREF: sub_84CF-9C5j
		STA	(off_7),Y

loc_7B10:				; CODE XREF: sub_84CF-9CCj
		LDX	off_68+1
		LDY	off_68
		JSR	$1884
		BMI	loc_7B1E
		STA	$4B
		JSR	sub_9081

loc_7B1E:				; CODE XREF: sub_84CF-9ECj
					; sub_84CF-9B8j
		JSR	sub_9272
		LDA	#$B
		STA	$96

loc_7B25:				; CODE XREF: sub_84CF-995j
		LDX	$96
		LDA	#0
		STA	2
		LDA	$AA2B,X
		BEQ	loc_7B38
		STA	3
		JSR	$18AB
		DEC	$197B

loc_7B38:				; CODE XREF: sub_84CF-9A1j
		DEC	$96
		BPL	loc_7B25
		JSR	sub_852B
		JMP	loc_776D
; END OF FUNCTION CHUNK	FOR sub_84CF
; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_88B0

;		zero current and max hp

loc_7B42:				; CODE XREF: sub_88B0-FFFj
		dldi	$6345, 0
		dldi	$6347, 0
		JMP	loc_776D
; END OF FUNCTION CHUNK	FOR sub_88B0

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7B59:				; CODE XREF: RAM:7807p
		JSR	sub_950E
		JSR	sub_7C78
		LDA	#$FF
		STA	$6320
		JSR	sub_9550
		LDY	#0
		LDA	byte_AA0C
		BPL	loc_7B74
		INY
		CMP	#$80 ; 'Ä'
		BEQ	loc_7B74
		INY

loc_7B74:				; CODE XREF: sub_7B59+13j sub_7B59+18j
		LDX	$A88F,Y
		JSR	nullsub_1
		LDX	#0
		LDA	RANDOM
		CMP	#$B0 ; '∞'
		BCC	loc_7B89
		INX
		CMP	#$F8 ; '¯'
		BCC	loc_7B89
		INX

loc_7B89:				; CODE XREF: sub_7B59+28j sub_7B59+2Dj
		TXA
		JSR	sub_9289
		CLC
		LDA	$631D
		ADC	byte_AA00
		ASL	A
		ASL	A
		ASL	A
		ADC	#$18
		STA	byte_A8A0
		LDX	#$B

loc_7B9E:				; CODE XREF: sub_7B59+5Bj
		LDA	RANDOM
		CMP	byte_A8A0
		BCC	loc_7BAA
		LDA	#0
		BEQ	loc_7BB0

loc_7BAA:				; CODE XREF: sub_7B59+4Bj
		LDA	$AA2B,X
		JSR	$1899

loc_7BB0:				; CODE XREF: sub_7B59+4Fj
		STA	$AA2B,X
		DEX
		BPL	loc_7B9E
		LDA	$6385
		ASL	A
		LDA	byte_AA0C
		ROR	A
		AND	#$C0 ; '¿'
		STA	$AD
		LDA	byte_AA0C
		EOR	$6385
		BPL	loc_7BD2
		LDA	byte_AA21
		ORA	#$80 ; 'Ä'
		STA	byte_AA21

loc_7BD2:				; CODE XREF: sub_7B59+6Fj
		LDX	#0
		LDY	byte_AA00
		STY	$8A

loc_7BD9:				; CODE XREF: sub_7B59+8Dj
		LDA	byte_AA22
		STA	$B2,X
		LDA	byte_AA23
		STA	$B3,X
		INX
		INX
		DEY
		BNE	loc_7BD9
		LDA	#$29 ; ')'
		STA	$16
		LDA	#$A0 ; '†'
		STA	$17
		JSR	$1812
		LDA	$A6
		CMP	#$E
		BCS	locret_7C77
		dldi	off_76DB, $76DF
		LDX	#$A6 ; '¶'
		LDY	#$25 ; '%'
		JSR	sub_8EEF
		LDX	$A6
		LDA	$63C2,X
		AND	#$40 ; '@'
		BNE	loc_7C1C
		LDA	$63C2,X
		AND	#$8F ; 'è'
		BNE	loc_7C29
		BEQ	loc_7C4D

loc_7C1C:				; CODE XREF: sub_7B59+B8j
		dldi	off_76DB, $A679
		JMP	loc_7C63
; ---------------------------------------------------------------------------

loc_7C29:				; CODE XREF: sub_7B59+BFj
		LDA	byte_AA21
		AND	#$5F ; '_'
		ORA	#$40 ; '@'
		STA	byte_AA21
		dldi	off_76DB, $A689
		LDA	byte_AA17
		ORA	byte_AA18
		BNE	loc_7C4A
		LDA	#5
		STA	byte_AA17

loc_7C4A:				; CODE XREF: sub_7B59+EAj
		JMP	loc_7C6D
; ---------------------------------------------------------------------------

loc_7C4D:				; CODE XREF: sub_7B59+C1j
		LDA	$A6
		EOR	#1
		TAX
		LDA	$63C2,X
		AND	#$8F ; 'è'
		BEQ	loc_7C6D
		dldi	off_76DB, $A698

loc_7C63:				; CODE XREF: sub_7B59+CDj
		LDA	byte_AA21
		AND	#$BF ; 'ø'
		ORA	#$A0 ; '†'
		STA	byte_AA21

loc_7C6D:				; CODE XREF: sub_7B59:loc_7C4Aj
					; sub_7B59+FEj
		JSR	loc_9358
		LDX	#$A6 ; '¶'
		LDY	#$25 ; '%'
		JSR	loc_8ED1

locret_7C77:				; CODE XREF: sub_7B59+9Ej
		RTS
; End of function sub_7B59


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7C78:				; CODE XREF: sub_7B59+3p
		LDX	byte_AA11
		LDA	byte_AA12
		BEQ	loc_7C83
		JMP	loc_94E7
; ---------------------------------------------------------------------------

loc_7C83:				; CODE XREF: sub_7C78+6j
		LDA	unk_7C95,X
		PHA
		LDA	unk_7C8C,X
		PHA
		RTS
; End of function sub_7C78

; ---------------------------------------------------------------------------
unk_7C8C:	.BYTE $9D ; ù		; DATA XREF: sub_7C78+Fr
		.BYTE $9D ; ù
		.BYTE $37 ; 7
		.BYTE $9D ; ù
		.BYTE $9D ; ù
		.BYTE $4A ; J
		.BYTE $52 ; R
		.BYTE $81 ; Å
		.BYTE $9D ; ù
unk_7C95:	.BYTE $7C ; |		; DATA XREF: sub_7C78:loc_7C83r
		.BYTE $7C ; |
		.BYTE $7D ; }
		.BYTE $7C ; |
		.BYTE $7C ; |
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7D ; }
		.BYTE $7C ; |

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7C9E:				; CODE XREF: RAM:7719j	RAM:7D5Bp ...
		LDA	$6320
		BPL	loc_7CCA
		LDA	$633C
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	$96
		INC	$96
		LDX	$6315
		CLC
		LDA	unk_7D31,X
		ADC	$96
		JSR	$1899
		STA	$96
		BNE	loc_7CC0
		INC	$96

loc_7CC0:				; CODE XREF: sub_7C9E+1Ej
		LDA	$96
		CMP	byte_AA00
		BCS	loc_7CCA
		STA	byte_AA00

loc_7CCA:				; CODE XREF: sub_7C9E+3j sub_7C9E+27j
		LDA	$633C
		LSR	A
		JSR	$1899
		CMP	byte_AA0E
		BCS	loc_7CD9
		STA	byte_AA0E

loc_7CD9:				; CODE XREF: sub_7C9E+36j
		LDA	#7
		STA	$88
		LDA	byte_AA0E
		BEQ	locret_7D30
		STA	$87
		JSR	sub_8FAA
		CLC
		LDA	$7A
		ADC	byte_AA23
		STA	byte_AA23
		BCC	loc_7CF5
		INC	byte_AA22

loc_7CF5:				; CODE XREF: sub_7C9E+52j
		LDA	#6
		STA	$96

loc_7CF9:				; CODE XREF: sub_7C9E+79j
		LDA	#$F
		STA	$88
		LDA	byte_AA0E
		STA	$87
		JSR	sub_8FAA
		LDX	$96
		LDA	byte_AA24,X
		BEQ	loc_7D15
		ADC	$7A
		BCC	loc_7D12
		LDA	#$FF

loc_7D12:				; CODE XREF: sub_7C9E+70j
		STA	$AA24,X

loc_7D15:				; CODE XREF: sub_7C9E+6Cj
		DEC	$96
		BPL	loc_7CF9
		CLC
		LDA	byte_AA0E
		ADC	byte_AA0D
		STA	byte_AA0D
		LDX	$631D
		DEX
		BEQ	locret_7D30
		CPX	#3
		BEQ	locret_7D30
		JSR	sub_89B5

locret_7D30:				; CODE XREF: sub_7C9E+42j sub_7C9E+89j ...
		RTS
; End of function sub_7C9E

; ---------------------------------------------------------------------------
unk_7D31:	.BYTE	1		; DATA XREF: sub_7C9E+14r
		.BYTE	0
		.BYTE	2
		.BYTE	2
		.BYTE	3
		.BYTE	4
		.BYTE	1
; ---------------------------------------------------------------------------

loc_7D38:				; CODE XREF: RAM:7746j
		LDA	RANDOM
		BPL	loc_7D40
		JMP	loc_7D82
; ---------------------------------------------------------------------------

loc_7D40:				; CODE XREF: RAM:7D3Bj
		LDA	RANDOM
		BPL	loc_7D48
		JMP	loc_7D4B
; ---------------------------------------------------------------------------

loc_7D48:				; CODE XREF: RAM:7D43j
		JMP	loc_7D53
; ---------------------------------------------------------------------------

loc_7D4B:				; CODE XREF: RAM:7D45j
		LDA	RANDOM
		AND	#$7F ; ''
		JMP	loc_7D58
; ---------------------------------------------------------------------------

loc_7D53:				; CODE XREF: RAM:loc_7D48j
		LDA	RANDOM
		ORA	#$80 ; 'Ä'

loc_7D58:				; CODE XREF: RAM:7D50j
		STA	byte_AA0C
		JSR	sub_7C9E
		dldi	off_76DB, $76DF

loc_7D68:				; CODE XREF: RAM:7D7Fj
		LDA	byte_AA0C
		ROL	A
		ROL	A
		AND	#1
		EOR	#1
		STA	$96
		LDA	#4
		JSR	$1899
		ASL	A
		ORA	$96
		STA	$A6
		CMP	#5
		BEQ	loc_7D68
		RTS
; ---------------------------------------------------------------------------

loc_7D82:				; CODE XREF: RAM:7D3Dj
		JSR	sub_7C9E
		LDA	#0
		STA	$96
		LDX	#$7F ; ''
		LDA	byte_AA0C
		BPL	loc_7D9B
		CMP	#$80 ; 'Ä'
		BNE	loc_7D98
		LDX	#$FF
		BNE	loc_7D9B

loc_7D98:				; CODE XREF: RAM:7D92j
		SEC
		ROR	$96

loc_7D9B:				; CODE XREF: RAM:7D8Ej	RAM:7D96j
		TXA
		JSR	$1899
		ORA	$96
		STA	byte_AA0C
		STA	byte_AA0C
		LDA	byte_AA0C
		BPL	loc_7DB3
		LDA	$6385
		BMI	locret_7DC5
		BPL	loc_7DBD

loc_7DB3:				; CODE XREF: RAM:7DAAj
		LDA	$6385
		BMI	loc_7DBD
		LDA	RANDOM
		BMI	locret_7DC5

loc_7DBD:				; CODE XREF: RAM:7DB1j	RAM:7DB6j
		LDA	byte_AA21
		ORA	#$A0 ; '†'
		STA	byte_AA21

locret_7DC5:				; CODE XREF: RAM:7DAFj	RAM:7DBBj
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7DC6:				; CODE XREF: RAM:785Ap
		LDX	byte_AA15
		LDA	byte_AA16
		BEQ	locret_7DD1
		JMP	loc_94E7
; ---------------------------------------------------------------------------

locret_7DD1:				; CODE XREF: RAM:7725j	sub_7DC6+6j
		RTS
; End of function sub_7DC6


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7DD2:				; CODE XREF: RAM:782Fp

; FUNCTION CHUNK AT 849D SIZE 0000001D BYTES

		LDX	#$9B ; 'õ'
		LDY	#$2A ; '*'
		JSR	sub_8EEF
		LDA	#4
		JSR	sub_901C
		CMP	#3
		BNE	loc_7DE4
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_7DE4:				; CODE XREF: sub_7DD2+Ej
		CMP	#0
		BNE	loc_7DF1
		BIT	byte_AA20
		BVC	loc_7DEE
		RTS
; ---------------------------------------------------------------------------

loc_7DEE:				; CODE XREF: sub_7DD2+19j
		JMP	loc_849D
; ---------------------------------------------------------------------------

loc_7DF1:				; CODE XREF: sub_7DD2+14j
		LDA	byte_AA27
		BEQ	loc_7DFE
		LDA	$6385
		BEQ	loc_7DFE
		DEC	$6385

loc_7DFE:				; CODE XREF: sub_7DD2+22j sub_7DD2+27j
		LDA	#1
		STA	$96
		CMP	$74
		BNE	loc_7E23
		LDA	RANDOM
		AND	#3
		STA	$97
		BNE	loc_7E19
		LDX	#$9C ; 'ú'
		LDY	#$24 ; '$'
		JSR	loc_8ED1
		JMP	loc_7E98
; ---------------------------------------------------------------------------

loc_7E19:				; CODE XREF: sub_7DD2+3Bj
		LDA	RANDOM
		AND	#3
		CLC
		ADC	$96
		STA	$96

loc_7E23:				; CODE XREF: sub_7DD2+32j
		LDA	#$80 ; 'Ä'
		STA	$AB
		LDA	byte_AA21
		AND	#$10
		ORA	#$A0 ; '†'
		STA	byte_AA21
		LDX	#$87 ; 'á'
		LDA	#1
		JSR	$1878
		BIT	$6385
		BPL	loc_7E40
		DEC	$6385

loc_7E40:				; CODE XREF: sub_7DD2+69j sub_7DD2+C3j
		LDA	$96
		CMP	#1
		BNE	loc_7E50
		LDX	#$B

loc_7E48:				; CODE XREF: sub_7DD2+7Cj
		LDA	$AA2B,X
		BNE	loc_7E61
		DEX
		BPL	loc_7E48

loc_7E50:				; CODE XREF: sub_7DD2+72j
		LDA	#$B
		JSR	$1899
		TAX
		LDA	$AA2B,X
		BNE	loc_7E61
		LDA	#$B
		JSR	$1899
		TAX

loc_7E61:				; CODE XREF: sub_7DD2+79j sub_7DD2+87j
		STX	$94
		LDA	$AA2B,X
		BNE	loc_7E6F
		LDX	#$9B ; 'õ'
		LDY	#$B6 ; '∂'
		JMP	loc_7E8A
; ---------------------------------------------------------------------------

loc_7E6F:				; CODE XREF: sub_7DD2+94j
		PHA
		LDA	#0
		STA	$AA2B,X
		LDY	unk_76E0,X
		LDA	unk_76EC,X
		TAX
		PLA
		JSR	$1875
		JSR	sub_8EF9
		JSR	sub_7EA5
		LDX	#$9B ; 'õ'
		LDY	#$D1 ; '—'

loc_7E8A:				; CODE XREF: sub_7DD2+9Aj
		JSR	loc_8ED1
		DEC	$97
		BEQ	loc_7E98
		DEC	$96
		BEQ	loc_7E98
		JMP	loc_7E40
; ---------------------------------------------------------------------------

loc_7E98:				; CODE XREF: sub_7DD2+44j sub_7DD2+BDj ...
		LDA	#0
		STA	$97
		LDA	RANDOM
		AND	#1
		STA	$C2
		SEC
		RTS
; End of function sub_7DD2


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7EA5:				; CODE XREF: RAM:7710j	sub_7DD2+B1p
		LDA	$94
		BMI	loc_7EB7
		TAX
		LDA	unk_98F5,X
		STA	off_76D9
		LDA	unk_9901,X
		STA	off_76D9+1
		RTS
; ---------------------------------------------------------------------------

loc_7EB7:				; CODE XREF: sub_7EA5+2j
		AND	#$7F ; ''
		STA	$4B
		JSR	$1887
		CLC
		LDA	$41
		ADC	#6
		STA	off_76D9
		LDA	$42
		ADC	#0
		STA	off_76D9+1
		RTS
; End of function sub_7EA5


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_7ECE:				; CODE XREF: sub_88B0:loc_796Cp
		LDA	#0
		STA	$A7
		STA	$A8
		JSR	sub_8EF9
		JSR	sub_8D7E
		LDX	byte_A894
		LDA	unk_7EED,X
		PHA
		LDA	unk_7EE6,X
		PHA
		RTS
; End of function sub_7ECE

; ---------------------------------------------------------------------------
unk_7EE6:	.BYTE $F3 ; Û		; DATA XREF: sub_7ECE+13r
		.BYTE $4D ; M
		.BYTE $50 ; P
		.BYTE $61 ; a
		.BYTE $7D ; }
		.BYTE $A9 ; ©
		.BYTE $AA ; ™
unk_7EED:	.BYTE $7E ; ~		; DATA XREF: sub_7ECE+Fr
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $7F ; 
		.BYTE $7F ; 
; ---------------------------------------------------------------------------
		LDA	#$FB ; '˚'
		STA	$A1
		BIT	byte_AA20
		BVS	loc_7F31
		LDA	$91
		BNE	loc_7F2E
		LDA	$AC
		BEQ	loc_7F2E
		LDX	#0
		LDY	#0

loc_7F09:				; CODE XREF: RAM:7F15j
		LDA	$C2,X
		ORA	$C3,X
		BEQ	loc_7F19
		INX
		INX
		INY
		CPY	byte_AA00
		BCC	loc_7F09
		BCS	loc_7F2E

loc_7F19:				; CODE XREF: RAM:7F0Dj
		LDX	#6
		BIT	$A5
		BPL	loc_7F20
		DEX

loc_7F20:				; CODE XREF: RAM:7F1Dj
		LDA	$6379
		CMP	byte_AA2A
		BCS	loc_7F29
		DEX

loc_7F29:				; CODE XREF: RAM:7F26j
		JSR	sub_8F0D
		BMI	loc_7F3D

loc_7F2E:				; CODE XREF: RAM:7EFFj	RAM:7F03j ...
		JMP	loc_8468
; ---------------------------------------------------------------------------

loc_7F31:				; CODE XREF: RAM:7EFBj
		dldi	off_76D9, $A733
		BNE	loc_7F47

loc_7F3D:				; CODE XREF: RAM:7F2Cj
		dldi	off_76D9, $A72C

loc_7F47:				; CODE XREF: RAM:7F3Bj
		ldxy	$A716
		JMP	loc_8ED1
; ---------------------------------------------------------------------------
		JMP	loc_8160
; ---------------------------------------------------------------------------
		DEC	$A1
		DEC	$A1
		LDY	#$11
		LDA	(off_64),Y
		BPL	loc_7F5F
		INC	$A0
		INC	$A0

loc_7F5F:				; CODE XREF: RAM:7F59j
		JMP	loc_8160
; ---------------------------------------------------------------------------
		JSR	sub_948D
		INC	$A1
		INC	$A0
		INC	$A0
		INC	$9B
		LDA	RANDOM
		AND	#3
		BEQ	loc_7F77
		JMP	loc_8160
; ---------------------------------------------------------------------------

loc_7F77:				; CODE XREF: RAM:7F72j
		LDX	#$9C ; 'ú'
		LDY	#$DC ; '‹'
		JMP	loc_8ED1
; ---------------------------------------------------------------------------
		LDA	#0
		STA	$97
		STA	$C2
		DEC	$A1
		LDA	byte_AA21
		AND	#$20 ; ' '
		BNE	loc_7FA3
		BIT	byte_AA21
		BVS	loc_7FA0
		BPL	loc_7F9B
		LDA	RANDOM
		CMP	#$30 ; '0'
		BCS	loc_7FA3

loc_7F9B:				; CODE XREF: RAM:7F92j
		LDA	RANDOM
		BMI	loc_7FA3

loc_7FA0:				; CODE XREF: RAM:7F90j
		JMP	loc_8ABF
; ---------------------------------------------------------------------------

loc_7FA3:				; CODE XREF: RAM:7F8Bj	RAM:7F99j ...
		LDX	#$A7 ; 'ß'
		LDY	#$39 ; '9'
		JMP	loc_8ED1
; ---------------------------------------------------------------------------
		RTS
; ---------------------------------------------------------------------------
		JSR	sub_8EF9
		DEC	$A1
		JSR	sub_8061
		LDX	#$A

loc_7FB5:				; CODE XREF: RAM:7FBFj
		LDA	$63DD,X
		JSR	sub_8F8E
		STA	$63DD,X
		DEX
		BPL	loc_7FB5
		JSR	sub_83BC
		JSR	sub_8400
		JSR	sub_8E8F
		LDA	byte_AA20
		AND	#$20 ; ' '
		BNE	loc_7FD7
		LDA	$A7
		ORA	$A8
		BNE	loc_7FDA

loc_7FD7:				; CODE XREF: RAM:7FCFj
		JMP	locret_8060
; ---------------------------------------------------------------------------

loc_7FDA:				; CODE XREF: RAM:7FD5j
		LDX	#$9F ; 'ü'
		LDY	#$AD ; '≠'
		JSR	loc_8ED1
		LDX	#$98 ; 'ò'
		LDY	#$81 ; 'Å'
		JSR	sub_8EEF
		LDX	#2

loc_7FEA:				; CODE XREF: RAM:7FF1j
		LDA	$A179,X
		STA	$A16A,X
		DEX
		BPL	loc_7FEA
		LDA	#1
		STA	$8B
		LDA	$63E8
		BEQ	loc_8010
		LDY	byte_AA00
		CPY	#1
		BEQ	loc_8010
		STY	$8B
		LDX	#2

loc_8007:				; CODE XREF: RAM:800Ej
		LDA	$A17D,X
		STA	$A16A,X
		DEX
		BPL	loc_8007

loc_8010:				; CODE XREF: RAM:7FFAj	RAM:8001j
		LDA	#0
		STA	$8C

loc_8014:				; CODE XREF: RAM:8058j
		JSR	sub_810E
		LDA	$A7
		STA	2
		LDA	$A8
		STA	3
		LDA	$78
		BMI	loc_802D
		BNE	loc_8029
		LSR	2
		ROR	3

loc_8029:				; CODE XREF: RAM:8023j
		LSR	2
		ROR	3

loc_802D:				; CODE XREF: RAM:8021j
		LDA	2
		ORA	3
		BEQ	loc_8050
		LDX	$8C
		LDA	$C3,X
		AND	#$7F ; ''
		STA	$C3,X
		SEC
		LDA	$B3,X
		SBC	3
		STA	$B3,X
		LDA	$B2,X
		SBC	2
		STA	$B2,X
		BCS	loc_8050
		LDA	#0
		STA	$B2,X
		STA	$B3,X

loc_8050:				; CODE XREF: RAM:8031j	RAM:8048j
		INC	$8C
		INC	$8C
		DEC	$8B
		BEQ	loc_805B
		JMP	loc_8014
; ---------------------------------------------------------------------------

loc_805B:				; CODE XREF: RAM:8056j
		LDA	#2
		JSR	$185A

locret_8060:				; CODE XREF: RAM:loc_7FD7j
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8061:				; CODE XREF: RAM:7FB0p
		LDA	$63F0
		BEQ	locret_8080
		CMP	#$A
		BCS	locret_8080
		TAX
		DEX
		LDA	unk_808A,X
		PHA
		LDA	unk_8081,X
		PHA
		LDX	#$98 ; 'ò'
		LDY	#$81 ; 'Å'
		JSR	sub_8EEF
		LDA	#0
		STA	$63F0

locret_8080:				; CODE XREF: sub_8061+3j sub_8061+7j
		RTS
; End of function sub_8061

; ---------------------------------------------------------------------------
unk_8081:	.BYTE	<(loc_8093-1)		; DATA XREF: sub_8061+Fr
		.BYTE	<(loc_80A0-1)
		.BYTE	<(loc_80B7-1)
		.BYTE	<(loc_80DC-1)
		.BYTE	<(loc_80D8-1)
		.BYTE	<(loc_80DC-1)
		.BYTE	<(loc_8125-1)
		.BYTE	<(loc_813B-1)
		.BYTE	<(loc_8141-1)
unk_808A:	.BYTE	>(loc_8093-1)		; DATA XREF: sub_8061+Br
		.BYTE	>(loc_80A0-1)
		.BYTE	>(loc_80B7-1)
		.BYTE	>(loc_80DC-1)
		.BYTE	>(loc_80D8-1)
		.BYTE	>(loc_80DC-1)
		.BYTE	>(loc_8125-1)
		.BYTE	>(loc_813B-1)
		.BYTE	>(loc_8141-1)
; ---------------------------------------------------------------------------

loc_8093:
		LDA	#0
		STA	byte_AA0F
		CLC
		LDA	$91
		ADC	#2
		STA	$91
		RTS
; ---------------------------------------------------------------------------

loc_80A0:
		LDA	$A0
		JSR	sub_8104
		STA	$A0
		LDA	#1
		STA	$9B
		LDA	$A1
		JSR	sub_8104
		STA	$A1
		LDA	#$FF
		STA	$92
		RTS
; ---------------------------------------------------------------------------

loc_80B7:
		LDA	byte_AA27
		BEQ	locret_80D7
		LDX	byte_AA00
		DEX
		STX	$76

loc_80C2:				; CODE XREF: RAM:80D5j
		JSR	sub_810E
		LDA	$78
		BPL	loc_80D3
		LDA	$76
		ASL	A
		TAX
		LDA	$C3,X
		ORA	#$80 ; 'Ä'
		STA	$C3,X

loc_80D3:				; CODE XREF: RAM:80C7j
		DEC	$76
		BPL	loc_80C2

locret_80D7:				; CODE XREF: RAM:80BAj
		RTS
; ---------------------------------------------------------------------------

loc_80D8:
		LDX	byte_AA00
		.BYTE	$2C
loc_80DC:
		LDX	#1
		DEX
		STX	$76
		LDA	byte_AA20
		AND	#$10
		BNE	locret_8103

loc_80E8:				; CODE XREF: RAM:8101j
		JSR	sub_810E
		LDY	#0
		LDA	$78
		BEQ	loc_80FF
		BPL	loc_80F4
		INY

loc_80F4:				; CODE XREF: RAM:80F1j
		INY
		LDA	$76
		ASL	A
		TAX
		TYA
		CLC
		ADC	$C2,X
		STA	$C2,X

loc_80FF:				; CODE XREF: RAM:80EFj
		DEC	$76
		BPL	loc_80E8

locret_8103:				; CODE XREF: RAM:80E6j
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8104:				; CODE XREF: RAM:80A2p	RAM:80ADp
		CLC
		ADC	#1
		CMP	#2
		BCC	locret_810D
		LDA	#2

locret_810D:				; CODE XREF: sub_8104+5j
		RTS
; End of function sub_8104


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_810E:				; CODE XREF: RAM:loc_8014p
					; RAM:loc_80C2p ...
		JSR	loc_92F6
		dldi	off_16, $A166
		JSR	$1815
		LDX	#3

loc_811E:				; CODE XREF: sub_810E+14j
		JSR	sub_9280
		DEX
		BNE	loc_811E
		RTS
; End of function sub_810E

; ---------------------------------------------------------------------------

loc_8125:
		JSR	sub_948D
		LDA	$633C
		CMP	#$F
		BCC	loc_8131
		LDA	#$E

loc_8131:				; CODE XREF: RAM:812Dj
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		ADC	#$14
		STA	$63DE
		RTS
; ---------------------------------------------------------------------------

loc_813B:
		LDA	#0
		STA	byte_AA0F
		RTS
; ---------------------------------------------------------------------------
loc_8141:
		JSR	sub_948D
		LDX	#$A

loc_8146:				; CODE XREF: RAM:815Dj
		LDA	$AA37,X
		BEQ	loc_815C
		CMP	#$F0 ; ''
		BEQ	loc_815C
		CMP	#$F
		BEQ	loc_815C
		CMP	#$FF
		BEQ	loc_815C
		LDA	#0
		STA	$AA37,X

loc_815C:				; CODE XREF: RAM:8149j	RAM:814Dj ...
		DEX
		BPL	loc_8146
		RTS
; ---------------------------------------------------------------------------

loc_8160:				; CODE XREF: RAM:7F4Ej	RAM:loc_7F5Fj ...
		JSR	sub_948D
		BIT	$639C
		BMI	loc_81B3
		LDY	#0
		LDA	(off_64),Y
		CMP	#$FF
		BEQ	loc_818F
		INY
		LDA	(off_64),Y
		BNE	loc_817C
		ldxy	$9DB8
		JMP	loc_8ED1
; ---------------------------------------------------------------------------

loc_817C:				; CODE XREF: RAM:8173j
		SEC
		SBC	#1
		STA	(off_64),Y
		LDA	$639C
		STA	$4B
		JSR	$1887
		JSR	$1896
		JSR	$189C

loc_818F:				; CODE XREF: RAM:816Ej
		LDA	#2
		CLC
		ADC	off_64
		STA	off_64
		BCC	loc_819A
		INC	off_64+1

loc_819A:				; CODE XREF: RAM:8196j
		LDY	#$F
		LDA	(off_64),Y
		LSR	A
		LSR	A
		LSR	A
		AND	#7
		CMP	#4
		BCC	loc_81AE
		AND	#3
		SEC
		SBC	#1
		EOR	#$FF

loc_81AE:				; CODE XREF: RAM:81A5j
		CLC
		ADC	$A0
		STA	$A0

loc_81B3:				; CODE XREF: RAM:8166j
		CLC
		LDA	$A0
		ADC	#6
		SEC
		SBC	$A3
		STA	$77
		LDY	#$B
		LDA	$6359
		CMP	(off_64),Y
		BCS	loc_81E2
		DEC	$9B
		LDY	#$F
		LDA	(off_64),Y
		ASL	A
		BMI	loc_81E2
		LDA	$639D
		BMI	loc_81E2
		LDA	$6359
		ASL	A
		BCS	loc_81E0
		LDY	#$B
		CMP	(off_64),Y
		BCC	loc_81E2

loc_81E0:				; CODE XREF: RAM:81D8j
		INC	$9B

loc_81E2:				; CODE XREF: RAM:81C4j	RAM:81CDj ...
		LDY	#$F
		LDA	(off_64),Y
		ASL	A
		BPL	loc_81EB
		DEC	$77

loc_81EB:				; CODE XREF: RAM:81E7j
		LDY	#$C
		LDA	$6371
		CMP	(off_64),Y
		BCS	loc_81F6
		DEC	$77

loc_81F6:				; CODE XREF: RAM:81F2j
		BIT	$A5
		BPL	loc_81FC
		DEC	$77

loc_81FC:				; CODE XREF: RAM:81F8j
		INC	$77
		BIT	$C3
		BVC	loc_8212
		DEC	$77
		LDA	byte_AA20
		LSR	A
		LDX	#2

loc_820A:				; CODE XREF: RAM:8210j
		LSR	A
		BCC	loc_820F
		DEC	$77

loc_820F:				; CODE XREF: RAM:820Bj
		DEX
		BNE	loc_820A

loc_8212:				; CODE XREF: RAM:8200j
		LDA	$633C
		ASL	A
		BCS	loc_8221
		ADC	$6371
		BCS	loc_8221
		ADC	#$10
		BCC	loc_8223

loc_8221:				; CODE XREF: RAM:8216j	RAM:821Bj
		LDA	#$FF

loc_8223:				; CODE XREF: RAM:821Fj
		LDX	$77
		JSR	sub_8F0D
		BNE	loc_822C
		INC	$9B

loc_822C:				; CODE XREF: RAM:8228j
		LDA	$C3
		AND	#$7F ; ''
		STA	$C3
		LDA	$639C
		BMI	loc_8245
		LDA	byte_AA20
		AND	#$20 ; ' '
		BEQ	loc_8245
		LDA	#0
		STA	$A7
		STA	$A8
		RTS
; ---------------------------------------------------------------------------

loc_8245:				; CODE XREF: RAM:8235j	RAM:823Cj
		LDA	$78
		BPL	loc_824C
		JMP	loc_8451
; ---------------------------------------------------------------------------

loc_824C:				; CODE XREF: RAM:8247j
		LDA	$91
		BNE	loc_827F
		LDA	byte_AA29
		LDX	#1
		JSR	sub_8F15
		BMI	loc_8261
		ldxy	$9DCE
		JMP	loc_8ED1
; ---------------------------------------------------------------------------

loc_8261:				; CODE XREF: RAM:8258j
		LDY	#$10
		LDA	(off_6A),Y
		BEQ	loc_827F
		LDA	byte_AA29
		LSR	A
		CLC
		ADC	(off_6A),Y
		LDX	#3
		JSR	sub_8F15
		BMI	loc_827F
		ldxy	$A0E8
		JSR	loc_8ED1
		JMP	sub_8E31
; ---------------------------------------------------------------------------

loc_827F:				; CODE XREF: RAM:824Ej	RAM:8265j ...
		LDY	#$D
		LDA	(off_64),Y
		CMP	#1
		BEQ	loc_828E
		LDA	RANDOM
		CMP	#$40 ; '@'
		BCS	loc_8291

loc_828E:				; CODE XREF: RAM:8285j
		JSR	sub_8E31

loc_8291:				; CODE XREF: RAM:828Cj
		LDA	RANDOM
		CMP	$252
		BNE	loc_82AC
		LDA	RANDOM
		BMI	loc_82A8
		LDA	#1
		LDX	#$5A ; 'Z'
		JSR	$1878
		JMP	loc_82AC
; ---------------------------------------------------------------------------

loc_82A8:				; CODE XREF: RAM:829Cj
		LDX	#$72 ; 'r'
		LDA	#1

loc_82AC:				; CODE XREF: RAM:8297j	RAM:82A5j
		LDA	byte_AA20
		BPL	loc_82C8
		LDY	#$A
		LDA	#0

loc_82B5:				; CODE XREF: RAM:82BFj
		ORA	$63D2,Y
		CPY	#2
		BCC	loc_82BE
		ORA	(off_64),Y

loc_82BE:				; CODE XREF: RAM:82BAj
		DEY
		BPL	loc_82B5
		CMP	#0
		BNE	loc_82C8
		JMP	loc_8330
; ---------------------------------------------------------------------------

loc_82C8:				; CODE XREF: RAM:82AFj	RAM:82C3j
		LDY	#$A

loc_82CA:				; CODE XREF: RAM:82D3j
		LDA	(off_64),Y
		JSR	sub_8F8E
		STA	$63DD,Y
		DEY
		BPL	loc_82CA
		INY
		LDA	$63DD,Y
		BEQ	loc_82E1
		LDA	$63D2,Y
		JSR	sub_83AD

loc_82E1:				; CODE XREF: RAM:82D9j
		INY
		LDA	$63DD,Y
		BEQ	loc_82ED
		LDA	$63D2,Y
		JSR	sub_83AD

loc_82ED:				; CODE XREF: RAM:82E5j
		INY

loc_82EE:				; CODE XREF: RAM:82F7j
		LDA	$63D2,Y
		JSR	sub_83AD
		INY
		CPY	#$B
		BCC	loc_82EE
		LDA	$6359
		BIT	$639C
		BMI	loc_830B
		LDY	#$B
		SEC
		LDA	$6359
		SBC	(off_64),Y
		BCC	loc_8330

loc_830B:				; CODE XREF: RAM:82FFj
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	$7C
		LDX	#1

loc_8313:				; CODE XREF: RAM:832Ej
		LDA	$7C
		STA	$96
		LDA	$63DD,X
		CMP	$7C
		BCS	loc_8320
		STA	$96

loc_8320:				; CODE XREF: RAM:831Cj
		CLC
		ADC	$96
		STA	$63DD,X
		BCC	loc_832D
		LDA	#$FF
		STA	$63DD,X

loc_832D:				; CODE XREF: RAM:8326j
		DEX
		BPL	loc_8313

loc_8330:				; CODE XREF: RAM:82C5j	RAM:8309j
		JSR	sub_83BC
		JSR	sub_83D7
		JSR	sub_8400
		JSR	sub_8E8F
		SEC
		LDA	$B3
		SBC	$A8
		STA	$B3
		LDA	$B2
		SBC	$A7
		STA	$B2
		BCS	loc_8354
		LDA	#0
		STA	$B2
		STA	$B3
		JMP	loc_83A5
; ---------------------------------------------------------------------------

loc_8354:				; CODE XREF: RAM:8349j
		LDA	$A7
		BNE	loc_836E
		LDA	$A8
		BEQ	loc_83A5
		LDA	$9B
		BMI	loc_83A5
		BNE	loc_836E
		LDA	$B2
		BNE	loc_83A5
		LDA	$B3
		LSR	A
		LSR	A
		CMP	$A8
		BCS	loc_83A5

loc_836E:				; CODE XREF: RAM:8356j	RAM:8360j
		LDA	RANDOM
		CMP	#$40 ; '@'
		BCS	loc_83A5
		LDA	RANDOM
		BMI	loc_8395
		LDA	byte_AA20
		AND	#8
		BNE	loc_83A5
		BIT	$C3
		BVS	loc_83A5
		LDA	$C3
		ORA	#$40 ; '@'
		STA	$C3
		ldxy	$9E4A
		JSR	loc_8ED1
		JMP	loc_83A5
; ---------------------------------------------------------------------------

loc_8395:				; CODE XREF: RAM:8378j
		LDA	byte_AA20
		AND	#$10
		BNE	loc_83A5
		INC	$C2
		ldxy	$9E7C
		JSR	loc_8ED1

loc_83A5:				; CODE XREF: RAM:8351j	RAM:835Aj ...
		ldxy	$9E8F
		JSR	loc_8ED1
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_83AD:				; CODE XREF: RAM:82DEp	RAM:82EAp ...
		JSR	sub_8F8E
		CLC
		ADC	$63DD,Y
		BCC	loc_83B8
		LDA	#$FF

loc_83B8:				; CODE XREF: sub_83AD+7j
		STA	$63DD,Y
		RTS
; End of function sub_83AD


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_83BC:				; CODE XREF: RAM:7FC1p	RAM:loc_8330p
		LDX	#0
		LDA	byte_AA0C
		CMP	#$80 ; 'Ä'
		BNE	loc_83CC
		STX	$63E5
		STX	$63E6
		RTS
; ---------------------------------------------------------------------------

loc_83CC:				; CODE XREF: sub_83BC+7j
		TAY
		BPL	loc_83D3
		STX	$63E5
		RTS
; ---------------------------------------------------------------------------

loc_83D3:				; CODE XREF: sub_83BC+11j
		STX	$63E6
		RTS
; End of function sub_83BC


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_83D7:				; CODE XREF: RAM:8333p
		LDY	$9B
		BEQ	locret_83F1
		BMI	loc_83F2
		LDX	#1

loc_83DF:				; CODE XREF: sub_83D7+18j
		LDY	$9B

loc_83E1:				; CODE XREF: sub_83D7+15j
		ASL	$63DD,X
		BCC	loc_83EB
		LDA	#$FF
		STA	$63DD,X

loc_83EB:				; CODE XREF: sub_83D7+Dj
		DEY
		BNE	loc_83E1
		DEX
		BPL	loc_83DF

locret_83F1:				; CODE XREF: sub_83D7+2j
		RTS
; ---------------------------------------------------------------------------

loc_83F2:				; CODE XREF: sub_83D7+4j
		LDX	#1

loc_83F4:				; CODE XREF: sub_83D7+26j
		LDY	$9B

loc_83F6:				; CODE XREF: sub_83D7+23j
		LSR	$63DD,X
		DEY
		BNE	loc_83F6
		DEX
		BPL	loc_83F4
		RTS
; End of function sub_83D7


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8400:				; CODE XREF: RAM:7FC4p	RAM:8336p
		LDA	#0
		STA	$7D
		LDX	#$A

loc_8406:				; CODE XREF: sub_8400+4Ej
		LDA	$AA37,X
		BEQ	loc_844D
		CMP	#$FF
		BEQ	loc_8425
		CMP	#$10
		BCC	loc_842D
		AND	#$F
		BNE	loc_843A
		LDA	$63DD,X
		CLC
		ADC	$7D
		STA	$7D
		BCC	loc_8425
		LDA	#$FF
		STA	$7D

loc_8425:				; CODE XREF: sub_8400+Dj sub_8400+1Fj
		LDA	#0
		STA	$63DD,X
		JMP	loc_844D
; ---------------------------------------------------------------------------

loc_842D:				; CODE XREF: sub_8400+11j
		ASL	$63DD,X
		BCC	loc_844D
		LDA	#$FF
		STA	$63DD,X
		JMP	loc_844D
; ---------------------------------------------------------------------------

loc_843A:				; CODE XREF: sub_8400+15j
		LDA	$AA37,X
		JSR	sub_8F8E
		SEC
		LDA	$63DD,X
		SBC	$7A
		BCS	loc_844A
		LDA	#0

loc_844A:				; CODE XREF: sub_8400+46j
		STA	$63DD,X

loc_844D:				; CODE XREF: sub_8400+9j sub_8400+2Aj	...
		DEX
		BPL	loc_8406
		RTS
; End of function sub_8400

; ---------------------------------------------------------------------------

loc_8451:				; CODE XREF: RAM:8249j
		ldxy	$A0D9
		JSR	sub_8EEF
		LDA	#1
		JSR	$185A
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_845E:				; CODE XREF: sub_92D0+34p
		CLC
		ADC	2
		STA	2
		BCC	locret_8467
		INC	3

locret_8467:				; CODE XREF: sub_845E+5j
		RTS
; End of function sub_845E

; ---------------------------------------------------------------------------

loc_8468:				; CODE XREF: RAM:loc_7F2Ej
		JSR	loc_90CD
		LDA	#$23 ; '#'
		JSR	$1899
		STA	$195B
		LDA	#$23 ; '#'
		JSR	$1899
		STA	$195C
		LDA	RANDOM
		AND	#3
		STA	$6312
		LDA	RANDOM
		BMI	loc_849D
		JSR	sub_886F
		BCC	loc_849D
		LDA	$AB
		BNE	loc_849D
		BIT	byte_AA0C
		BPL	loc_849D
		LDX	#$85 ; 'Ö'
		LDA	#1
		JSR	$1878
; START	OF FUNCTION CHUNK FOR sub_7DD2

loc_849D:				; CODE XREF: sub_7DD2:loc_7DEEj
					; RAM:8486j ...
		JSR	loc_9734
		JSR	sub_9067
		JSR	sub_9272
		LDA	$1959
		BNE	loc_84B7
		LDA	$6318
		STA	$6313
		LDA	$6319
		STA	$6314

loc_84B7:				; CODE XREF: sub_7DD2+6D7j
		JMP	loc_776D
; END OF FUNCTION CHUNK	FOR sub_7DD2

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_84BA:				; CODE XREF: sub_84CF+Dp
		DEC	$8A
		LDA	$8A
		AND	#$F
		BNE	loc_84C5
		JSR	loc_9734

loc_84C5:				; CODE XREF: sub_84BA+6j
		JSR	sub_9072
		ldxy	$9CC9
		JMP	loc_8ED1
; End of function sub_84BA


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_84CF:				; CODE XREF: RAM:94CEp

; FUNCTION CHUNK AT 776D SIZE 00000051 BYTES
; FUNCTION CHUNK AT 7AC2 SIZE 00000080 BYTES
; FUNCTION CHUNK AT 8598 SIZE 0000001A BYTES
; FUNCTION CHUNK AT 94E7 SIZE 00000006 BYTES

		LDA	byte_AA21
		AND	#$F
		ORA	#$A0 ; '†'
		STA	byte_AA21
		INC	byte_A89D
		JSR	sub_84BA
		JSR	sub_9100
		LDX	byte_AA1B
		LDA	byte_AA1C
		BEQ	loc_84ED
		JMP	loc_94E7
; ---------------------------------------------------------------------------

loc_84ED:				; CODE XREF: RAM:773Aj	sub_84CF+19j
		JSR	loc_85B2
		LDA	byte_AA1F
		BEQ	loc_84FE
		STA	byte_769B
		JSR	sub_8560
		JMP	loc_8598
; ---------------------------------------------------------------------------

loc_84FE:				; CODE XREF: sub_84CF+24j
		LDA	$AB
		BPL	loc_8521
		BIT	byte_AA21
		BMI	loc_8521
		LDA	$AD
		BEQ	loc_8521
		CMP	#$C0 ; '¿'
		BEQ	loc_851A
		CMP	#$40 ; '@'
		BEQ	loc_8521
		LDA	RANDOM
		CMP	#$40 ; '@'
		BCS	loc_8521

loc_851A:				; CODE XREF: sub_84CF+3Ej
		LDX	#$85 ; 'Ö'
		LDA	#1
		JSR	$186F

loc_8521:				; CODE XREF: sub_84CF+31j sub_84CF+36j ...
		LDA	$8A
		AND	#$F
		BNE	locret_852A
		JMP	loc_7AC2
; ---------------------------------------------------------------------------

locret_852A:				; CODE XREF: sub_84CF+56j
		RTS
; End of function sub_84CF


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_852B:				; CODE XREF: sub_84CF-993p
					; sub_88B0+9Fp
		LDX	$633C
		BEQ	locret_855F
		DEX
		BNE	loc_8538
		LDA	RANDOM
		BMI	locret_855F

loc_8538:				; CODE XREF: sub_852B+6j
		LDA	byte_AA0B
		BEQ	locret_855F
		LDA	RANDOM
		CMP	byte_A8A0
		BCS	loc_854F
		LDA	byte_AA0B
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	$758A

loc_854F:				; CODE XREF: sub_852B+18j
		LDA	RANDOM
		CMP	byte_A8A0
		BCS	locret_855F
		LDA	byte_AA0B
		AND	#$F
		STA	$758B

locret_855F:				; CODE XREF: sub_852B+3j sub_852B+Bj ...
		RTS
; End of function sub_852B


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8560:				; CODE XREF: RAM:7758j	sub_84CF+29p
		LDA	#$21 ; '!'
		STA	byte_7698
		LDY	#0
		dmv	off_6E, off_AA01

loc_8571:				; CODE XREF: sub_8560+19j
		LDA	(off_6E),Y
		STA	byte_769D,Y
		BEQ	loc_857B
		INY
		BNE	loc_8571

loc_857B:				; CODE XREF: sub_8560+16j
		LDA	#$20 ; ' '
		STA	byte_769D,Y
		INY
		LDX	#0

loc_8583:				; CODE XREF: sub_8560+2Dj
		LDA	aCorpse,X
		STA	byte_769D,Y
		INY
		INX
		CPX	#7
		BCC	loc_8583
		dldi	off_9, $76B5
		RTS
; End of function sub_8560

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_84CF

loc_8598:				; CODE XREF: RAM:775Bj	sub_84CF+2Cj
		LDY	#0
		LDA	#2
		STA	(off_9),Y
		TYA
		INY
		STA	(off_9),Y
		INY
		LDA	$8D
		STA	(9),Y
		CLC
		ldxy	$7697
		DEC	$197B
		JMP	$1884
; END OF FUNCTION CHUNK	FOR sub_84CF
; ---------------------------------------------------------------------------

loc_85B2:				; CODE XREF: sub_84CF:loc_84EDp
		LDA	$A6
		CMP	#$E
		BCS	locret_85DB
		TAX
		LDA	$63C2,X
		BIT	byte_85DD
		BEQ	locret_85DB
		BIT	byte_85DC
		BNE	loc_85CF
		CLC
		ADC	#$10
		BIT	byte_85DC
		BNE	loc_85CF
; ---------------------------------------------------------------------------
		.BYTE $2C
; ---------------------------------------------------------------------------

loc_85CF:				; CODE XREF: RAM:85C4j	RAM:85CCj
		LDA	#$40 ; '@'
		STA	$63C2,X
		LDX	#$86 ; 'Ü'
		LDA	#$A
		JSR	$186F

locret_85DB:				; CODE XREF: RAM:85B6j	RAM:85BFj
		RTS
; ---------------------------------------------------------------------------
byte_85DC:	.BYTE $40		; DATA XREF: RAM:85C1r	RAM:85C9r
byte_85DD:	.BYTE $8F		; DATA XREF: RAM:85BCr

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_85DE:				; CODE XREF: sub_88B0:loc_7A4Dp
		JSR	sub_8D7E
		LDA	#0
		LDX	#$15

loc_85E5:				; CODE XREF: sub_85DE+Bj
		STA	$63DD,X
		DEX
		BPL	loc_85E5
		LDA	#0
		STA	$A7
		STA	$A8
		STA	$A2
		STA	$A3
		STA	$A4
		LDA	$638D
		BEQ	loc_85FE
		DEC	$A2

loc_85FE:				; CODE XREF: sub_85DE+1Cj
		SEC
		LDA	$A2
		SBC	$A1
		STA	$A2
		LDA	$638E
		BEQ	loc_860C
		INC	$A2

loc_860C:				; CODE XREF: sub_85DE+2Aj
		BIT	$A5
		BPL	loc_8612
		INC	$A2

loc_8612:				; CODE XREF: sub_85DE+30j
		LDA	byte_AA20
		AND	#1
		CLC
		ADC	$A2
		STA	$A2
		LDX	byte_AA19
		LDA	byte_AA1A
		BEQ	loc_8627
		JMP	loc_94E7
; ---------------------------------------------------------------------------

loc_8627:				; CODE XREF: sub_85DE+44j
		LDA	byte_8636,X
		PHA
		LDA	byte_8630,X
		PHA
		RTS
; End of function sub_85DE

; ---------------------------------------------------------------------------
byte_8630:	.BYTE	<(loc_863C-1)	; DATA XREF: sub_85DE+4Dr
		.BYTE	<(loc_880D-1)
		.BYTE	<(loc_863C-1)
		.BYTE	<(loc_8864-1)
		.BYTE	<(loc_8880-1)
		.BYTE	<(loc_8898-1)
byte_8636:	.BYTE	>(loc_863C-1)	; DATA XREF: sub_85DE:loc_8627r
		.BYTE	>(loc_880D-1)
		.BYTE	>(loc_863C-1)
		.BYTE	>(loc_8864-1)
		.BYTE	>(loc_8880-1)
		.BYTE	>(loc_8898-1)
; ---------------------------------------------------------------------------

loc_863C:				; CODE XREF: RAM:76F8j	RAM:loc_881Aj ...
		JSR	sub_88B0
		BCC	loc_8642

locret_8641:				; CODE XREF: RAM:8645j
		RTS
; ---------------------------------------------------------------------------

loc_8642:				; CODE XREF: RAM:863Fj
		JSR	sub_886F
		BCC	locret_8641
		LDA	byte_AA27
		BEQ	loc_8665
		LDA	RANDOM
		CMP	#$10
		BCS	loc_8665
		LDA	RANDOM
		INC	$A2
		INC	$A4
		CMP	#$40 ; '@'
		BCC	loc_8674
		ldxy	$A286
		JMP	sub_8ECE
; ---------------------------------------------------------------------------

loc_8665:				; CODE XREF: RAM:864Aj	RAM:8651j
		LDA	$76
		BNE	loc_8674
		LDA	RANDOM
		CMP	#$20 ; ' '
		BCS	loc_8674
		INC	$A2
		DEC	$A3

loc_8674:				; CODE XREF: RAM:865Cj	RAM:8667j ...
		JSR	sub_9482
		CLC
		LDA	#4
		ADC	$A2
		STA	$77
		CLC
		LDA	byte_AA0D
		ASL	A
		BCS	loc_868E
		ADC	byte_AA29
		BCS	loc_868E
		ADC	#$10
		BCC	loc_8690

loc_868E:				; CODE XREF: RAM:8683j	RAM:8688j
		LDA	#$FF

loc_8690:				; CODE XREF: RAM:868Cj
		LDX	$77
		JSR	sub_8F15
		BPL	loc_869E
		ldxy	$A27A
		JMP	sub_8ECE
; ---------------------------------------------------------------------------

loc_869E:				; CODE XREF: RAM:8695j
		BNE	loc_86A2
		INC	$A4

loc_86A2:				; CODE XREF: RAM:loc_869Ej
		LDA	$6371
		LSR	A
		LSR	A
		LDX	#1
		JSR	sub_8F0D
		BMI	loc_86B5
		ldxy	$9DEB
		JMP	sub_8ECE
; ---------------------------------------------------------------------------

loc_86B5:				; CODE XREF: RAM:86ACj
		LDY	#0
		LDA	(off_6A),Y
		INY
		ORA	(off_6A),Y
		STA	$8E
		BEQ	loc_86E5
		LDY	#$12
		LDA	off_66+1
		BEQ	loc_86E5
		LDA	(off_66),Y
		BEQ	loc_86E5
		CLC
		ADC	$6371
		BCC	loc_86D2
		LDA	#$FF

loc_86D2:				; CODE XREF: RAM:86CEj
		LSR	A
		LSR	A
		LDX	#3
		JSR	sub_8F0D
		BMI	loc_86E5
		ldxy	$A4B1
		JSR	sub_8ECE
		JMP	loc_8E2D
; ---------------------------------------------------------------------------

loc_86E5:				; CODE XREF: RAM:86BEj	RAM:86C4j ...
		LDA	#$A
		STA	$8B

loc_86E9:				; CODE XREF: RAM:8718j
		LDY	$8B
		LDA	(off_6A),Y
		JSR	sub_8F8E
		STA	$63DD,Y
		CPY	#2
		BCS	loc_870A
		LDA	$63DD,Y
		BEQ	loc_870A
		LDA	byte_AA26
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		CLC
		ADC	$63DD,Y
		STA	$63DD,Y

loc_870A:				; CODE XREF: RAM:86F5j	RAM:86FAj
		LDA	$A4
		BEQ	loc_8716
		LDX	$8B

loc_8710:				; CODE XREF: RAM:8714j
		ASL	$63DD,X
		LSR	A
		BNE	loc_8710

loc_8716:				; CODE XREF: RAM:870Cj
		DEC	$8B
		BPL	loc_86E9
		LDA	#1
		STA	byte_A89C
		LDA	$8E
		BEQ	loc_8730
		LDA	RANDOM
		BMI	loc_8730
		LDA	#3
		JSR	$1899
		STA	byte_A89C

loc_8730:				; CODE XREF: RAM:8721j	RAM:8726j
		JSR	loc_938D
		JSR	sub_8E8F
		SEC
		LDA	$6346
		SBC	$A8
		STA	$6346
		LDA	$6345
		SBC	$A7
		STA	$6345
		BCS	loc_8751
		LDA	#0
		STA	$6345
		STA	$6346

loc_8751:				; CODE XREF: RAM:8747j
		LDY	#$F
		LDA	(off_6A),Y
		AND	#7
		STA	$8F
		LDY	#0
		LDA	(off_68),Y
		BPL	loc_8765
		LDA	$8F
		ORA	#$10
		STA	$8F

loc_8765:				; CODE XREF: RAM:875Dj
		LDA	$A4
		BEQ	loc_876F
		LDA	$8F
		ORA	#8
		STA	$8F

loc_876F:				; CODE XREF: RAM:8767j
		LDX	$8F
		LDA	unk_A471,X
		STA	off_9F7E
		LDA	unk_A491,X
		STA	off_9F7E+1
		ldxy	$A34B
		JSR	sub_8ECE
		LDA	byte_A89C
		CMP	#1
		BEQ	loc_87E5
		LDA	$A7
		BNE	loc_87A9
		LDA	$A8
		CMP	#4
		BCC	loc_87E5
		LDA	$6371
		LSR	A
		STA	$96
		LDA	$6349
		LSR	A
		CLC
		ADC	$96
		LDX	#4
		JSR	sub_8F0D
		BPL	loc_87E5

loc_87A9:				; CODE XREF: RAM:878Dj
		LDA	byte_A89C
		BNE	loc_87BB
		INC	$638E
		INC	$638E
		LDX	#$A3 ; '£'
		LDY	#6
		JMP	loc_87E2
; ---------------------------------------------------------------------------

loc_87BB:				; CODE XREF: RAM:87ACj
		CMP	#2
		BNE	loc_87D4
		LDA	$639C
		BMI	loc_87E5
		JSR	$1887
		LDY	#2
		LDA	#2
		STA	(off_41),Y
		ldxy	$A5E1
		JMP	loc_87E2
; ---------------------------------------------------------------------------

loc_87D4:				; CODE XREF: RAM:87BDj
		BIT	$A5
		BMI	loc_87E5
		LDA	#$80
		ORA	$A5
		STA	$A5
		ldxy	$A32A

loc_87E2:				; CODE XREF: RAM:87B8j	RAM:87D1j
		JSR	sub_8ECE

loc_87E5:				; CODE XREF: RAM:8789j	RAM:8793j ...
		LDA	RANDOM
		BMI	locret_880C
		LDA	$A7
		ORA	$A8
		ORA	$A4
		BEQ	locret_880C
		LDY	#2
		LDA	(off_68),Y
		CMP	#1
		BNE	locret_880C
		LDY	off_68
		LDX	off_68+1
		JSR	$1884
		BMI	locret_880C
		LDA	#7
		LDY	#0
		STA	(off_41),Y
		JSR	sub_9081

locret_880C:				; CODE XREF: RAM:87E8j	RAM:87F0j ...
		RTS
; ---------------------------------------------------------------------------

loc_880D:				; CODE XREF: RAM:76FBj	RAM:loc_8895j
		JSR	sub_886F
		BCS	loc_8813
		RTS
; ---------------------------------------------------------------------------

loc_8813:				; CODE XREF: RAM:8810j
		LDA	RANDOM
		CMP	#$20 ; ' '
		BCC	loc_881D

loc_881A:				; CODE XREF: RAM:883Ej
		JMP	loc_863C
; ---------------------------------------------------------------------------

loc_881D:				; CODE XREF: RAM:8818j
		DEC	$A3
		JSR	sub_9509
		LDA	$B3,X
		ASL	A
		CMP	byte_AA23
		BCS	loc_883B
		LDA	byte_AA22
		STA	$B2,X
		LDA	byte_AA23
		STA	$B3,X
		ldxy	$A203
		JMP	loc_8ED1
; ---------------------------------------------------------------------------

loc_883B:				; CODE XREF: RAM:8828j
		JSR	sub_94FE
		BCS	loc_881A
		LDA	#$B
		JSR	sub_9337
		LDA	byte_AA27
		ADC	byte_AA0D
		BCS	loc_8857
		LDX	#7
		JSR	sub_8F15
		BPL	loc_8857
		JMP	loc_9367
; ---------------------------------------------------------------------------

loc_8857:				; CODE XREF: RAM:884Bj	RAM:8852j
		INC	$A4
		INC	$A2
		INC	$A3
		INC	$A2
		INC	$A3
		JMP	loc_863C
; ---------------------------------------------------------------------------

loc_8864:				; CODE XREF: RAM:76FEj	RAM:loc_88ADj
		LDA	#2
		JSR	$1899
		JSR	sub_9289
		JMP	loc_863C

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_886F:				; CODE XREF: RAM:7731j	RAM:8488p ...
		LDA	$AB
		ORA	$AC
		BNE	loc_887E
		LDA	byte_AA21
		AND	#$A0 ; '†'
		BNE	loc_887E
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_887E:				; CODE XREF: sub_886F+4j sub_886F+Bj
		SEC
		RTS
; End of function sub_886F

; ---------------------------------------------------------------------------

loc_8880:				; CODE XREF: RAM:7701j
		JSR	sub_886F
		BCS	loc_8886
		RTS
; ---------------------------------------------------------------------------

loc_8886:				; CODE XREF: RAM:8883j
		JSR	sub_94FE
		BCS	loc_8895
		LDA	RANDOM
		CMP	#$50 ; 'P'
		BCS	loc_8895
		JMP	loc_8965
; ---------------------------------------------------------------------------

loc_8895:				; CODE XREF: RAM:8889j	RAM:8890j
		JMP	loc_880D
; ---------------------------------------------------------------------------

loc_8898:				; CODE XREF: RAM:7704j
		JSR	sub_886F
		BCS	loc_889E
		RTS
; ---------------------------------------------------------------------------

loc_889E:				; CODE XREF: RAM:889Bj
		JSR	sub_94FE
		BCS	loc_88AD
		LDA	RANDOM
		CMP	#$50 ; 'P'
		BCS	loc_88AD
		JMP	loc_8965
; ---------------------------------------------------------------------------

loc_88AD:				; CODE XREF: RAM:88A1j	RAM:88A8j
		JMP	loc_8864

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_88B0:				; CODE XREF: RAM:loc_863Cp

; FUNCTION CHUNK AT 787B SIZE 0000008D BYTES
; FUNCTION CHUNK AT 7966 SIZE 0000015C BYTES
; FUNCTION CHUNK AT 7B42 SIZE 00000017 BYTES
; FUNCTION CHUNK AT 8D74 SIZE 0000000A BYTES

		LDA	byte_A89E
		BPL	loc_88B8
		JMP	loc_88FC
; ---------------------------------------------------------------------------

loc_88B8:				; CODE XREF: sub_88B0+3j
		LDA	byte_AA0F
		BEQ	loc_88C4
		DEC	byte_AA0F
		BEQ	loc_88C4

loc_88C2:				; CODE XREF: sub_88B0+23j sub_88B0+33j ...
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_88C4:				; CODE XREF: sub_88B0+Bj sub_88B0+10j
		JSR	sub_9509
		LDA	$C3,X
		CMP	byte_AA23
		BNE	loc_88D5
		LDA	$C2,X
		SBC	byte_AA22
		BEQ	loc_88C2

loc_88D5:				; CODE XREF: sub_88B0+1Cj
		LDA	$93
		BEQ	loc_88DE
		LDA	RANDOM
		BMI	loc_88E5

loc_88DE:				; CODE XREF: sub_88B0+27j
		LDA	RANDOM
		CMP	#$30 ; '0'
		BCS	loc_88C2

loc_88E5:				; CODE XREF: sub_88B0+2Cj
		DEC	$A3
		LDA	byte_AA2A
		LDX	#3
		LDY	$76
		BNE	loc_88F5
		BIT	$C3
		BVC	loc_88F5
		LSR	A

loc_88F5:				; CODE XREF: sub_88B0+3Ej sub_88B0+42j
		JSR	sub_8F15
		BPL	loc_88FC
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_88FC:				; CODE XREF: sub_88B0+5j sub_88B0+48j
		LDA	#2
		CLC
		ADC	$A2
		STA	$A2
		BIT	byte_AA20
		BVS	loc_88C2
		LDA	byte_AA21
		AND	#8
		BNE	loc_88C2
		LDA	byte_AA20
		AND	#2
		BEQ	loc_891C
		ldxy	$A4DC
		BNE	loc_8920

loc_891C:				; CODE XREF: sub_88B0+64j
		ldxy	$A4D1

loc_8920:				; CODE XREF: sub_88B0+6Aj
		JSR	loc_8ED1
		JSR	sub_9509
		LDA	#0
		STA	$B2,X
		STA	$B3,X
		DEC	$8A
		JSR	sub_9072
		LDA	$8A
		BMI	loc_8942
		BEQ	loc_8942
		LDA	byte_AA00
		BEQ	loc_8942
		LDX	$72
		TXS
		JMP	loc_7A53
; ---------------------------------------------------------------------------

loc_8942:				; CODE XREF: sub_88B0+83j sub_88B0+85j ...
		LDA	RANDOM
		BPL	loc_894A
		JSR	sub_90C3

loc_894A:				; CODE XREF: sub_88B0+95j
		LDA	byte_A89D
		BEQ	loc_8952
		JSR	sub_852B

loc_8952:				; CODE XREF: sub_88B0+9Dj
		LDA	$1959
		BNE	loc_8962
		LDA	$195A
		LDX	#$75 ; 'u'
		LDY	#0
		SEC
		JSR	$1860

loc_8962:				; CODE XREF: sub_88B0+A5j
		JMP	loc_776D
; End of function sub_88B0

; ---------------------------------------------------------------------------

loc_8965:				; CODE XREF: RAM:8892j	RAM:88AAj
		JSR	sub_9482
		LDA	byte_AA0D
		LSR	A
		CMP	#$B
		BCC	loc_8972
		LDA	#$A

loc_8972:				; CODE XREF: RAM:896Ej
		JSR	$1899
		STA	byte_A89F
		JSR	sub_9337
		LDA	$633C
		ASL	A
		BCS	loc_8993
		ASL	A
		BCS	loc_8993
		ADC	byte_AA27
		BCS	loc_8993
		LDX	#6
		JSR	sub_8F15
		BPL	loc_8993
		JMP	loc_9367
; ---------------------------------------------------------------------------

loc_8993:				; CODE XREF: RAM:897Fj	RAM:8982j ...
		LDX	byte_A89F
		LDA	unk_89AA,X
		PHA
		LDA	unk_899F,X
		PHA
		RTS
; ---------------------------------------------------------------------------
unk_899F:	.BYTE	<(sub_89B5-1)	; DATA XREF: RAM:899Ar
		.BYTE	<(sub_89DC-1)
		.BYTE	<(sub_89DF-1)
		.BYTE	<(sub_89EF-1)
		.BYTE	<(loc_8A53-1)
		.BYTE	<(sub_8A84-1)
		.BYTE	<(sub_8A8A-1)
		.BYTE	<(sub_8A90-1)
		.BYTE	<(sub_8A96-1)
		.BYTE	<(sub_8A9A-1)
		.BYTE	<(sub_8AA7-1)
unk_89AA:	.BYTE	>(sub_89B5-1)	; DATA XREF: RAM:8996r
		.BYTE	>(sub_89DC-1)
		.BYTE	>(sub_89DF-1)
		.BYTE	>(sub_89EF-1)
		.BYTE	>(loc_8A53-1)
		.BYTE	>(sub_8A84-1)
		.BYTE	>(sub_8A8A-1)
		.BYTE	>(sub_8A90-1)
		.BYTE	>(sub_8A96-1)
		.BYTE	>(sub_8A9A-1)
		.BYTE	>(sub_8AA7-1)

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_89B5:				; CODE XREF: sub_7C9E+8Fp
		LDX	#$A

loc_89B7:				; CODE XREF: sub_89B5+24j
		LDA	$AA37,X
		BEQ	loc_89CF
		CMP	#$81 ; 'Å'
		BCS	loc_89D8
		CMP	#$10
		BCC	loc_89D8
		AND	#$F0 ; ''
		BNE	loc_89CF
		LDA	#0
		STA	$AA37,X
		BEQ	loc_89D8

loc_89CF:				; CODE XREF: sub_89B5+5j sub_89B5+11j
		CLC
		LDA	#$11
		ADC	$AA37,X
		STA	$AA37,X

loc_89D8:				; CODE XREF: sub_89B5+9j sub_89B5+Dj ...
		DEX
		BPL	loc_89B7
		RTS
; End of function sub_89B5

; ---------------------------------------------------------------------------
sub_89DC:
		LDX	#2
; ---------------------------------------------------------------------------
		.BYTE	$2C
; ---------------------------------------------------------------------------
sub_89DF:
		LDX	#5
		CLC
		LDA	$AA24,X
		ADC	#$10
		BCC	loc_89EB
		LDA	#$FF

loc_89EB:				; CODE XREF: RAM:89E7j
		STA	$AA24,X
		RTS
; ---------------------------------------------------------------------------
sub_89EF:
		LDA	#3
		STA	$88
		LDA	byte_AA0D
		LSR	A
		STA	$87
		INC	$87
		JSR	sub_8FAA
		STA	$63DE

loc_8A01:				; CODE XREF: RAM:8AA4j
		LDA	#1
		STA	byte_A89C
		JSR	loc_938D
		JSR	sub_8E8F
		JSR	sub_9475
		BMI	loc_8A1B
		BNE	loc_8A17
		LSR	$A7
		ROR	$A8

loc_8A17:				; CODE XREF: RAM:8A11j
		LSR	$A7
		ROR	$A8

loc_8A1B:				; CODE XREF: RAM:8A0Fj
		SEC
		LDA	$6346
		SBC	$A8
		STA	$6346
		LDA	$6345
		SBC	$A7
		STA	$6345
		BCS	loc_8A36
		LDA	#0
		STA	$6345
		STA	$6346

loc_8A36:				; CODE XREF: RAM:8A2Cj
		LDX	#0
		LDA	$78
		BEQ	loc_8A40
		BPL	loc_8A3F
		INX

loc_8A3F:				; CODE XREF: RAM:8A3Cj
		INX

loc_8A40:				; CODE XREF: RAM:8A3Aj
		LDA	$A5DB,X
		STA	off_76D9
		LDA	$A5DE,X
		STA	off_76D9+1
		ldxy	$A58A
		JMP	loc_8ED1
; ---------------------------------------------------------------------------

loc_8A53:				; CODE XREF: RAM:7716j
		LDA	#3
		STA	$A7
		JSR	sub_9475
		LDX	#2
		LDA	$78
		BMI	loc_8A68
		BNE	loc_8A65
		DEX
		LSR	$A7

loc_8A65:				; CODE XREF: RAM:8A60j
		LSR	$A7
		DEX

loc_8A68:				; CODE XREF: RAM:8A5Ej
		CLC
		LDA	$638E
		ADC	$A7
		STA	$638E
		LDA	$A5DB,X
		STA	off_76D9
		LDA	$A5DE,X
		STA	off_76D9+1
		ldxy	$A60C
		JMP	sub_8ECE
; ---------------------------------------------------------------------------

sub_8A84:
		LDX	#4
		LDA	#$46 ; 'F'
		BNE	loc_8A9E

sub_8A8A:
		LDX	#$A
		LDA	#$46 ; 'F'
		BNE	loc_8A9E

sub_8A90:
		LDX	#6
		LDA	#$28 ; '('
		BNE	loc_8A9E

sub_8A96:				; huh?!
		LDX	#7
		LDA	#$46 ; 'F'

sub_8A9A:
		LDX	#3
		LDA	#$46 ; 'F'

loc_8A9E:				; CODE XREF: RAM:8A88j	RAM:8A8Ej ...
		JSR	sub_8F8E
		STA	$63DD,X
		JMP	loc_8A01
; ---------------------------------------------------------------------------

sub_8AA7:
		LDA	$639C
		BMI	locret_8ABE
		JSR	$1887
		BEQ	locret_8ABE
		LDY	#2
		LDA	#2
		STA	(off_41),Y
		ldxy	$A5E1
		JSR	sub_8E7F

locret_8ABE:				; CODE XREF: RAM:8AAAj	RAM:8AAFj
		RTS
; ---------------------------------------------------------------------------

loc_8ABF:				; CODE XREF: RAM:loc_7FA0j
		TSX
		STX	$73

loc_8AC2:				; CODE XREF: RAM:8AD9j	RAM:8B01j
		LDA	#$FF
		STA	$1961
		ldxy	$9ACF
		JSR	sub_8EEF
		LDA	#5
		JSR	sub_901C
		LDA	$74
		STA	$75
		CMP	#5
		BCS	loc_8AC2
		CMP	#1
		BEQ	loc_8AE2
		JMP	loc_8B0C
; ---------------------------------------------------------------------------

loc_8AE2:				; CODE XREF: RAM:8ADDj
		LDX	#$F

loc_8AE4:				; CODE XREF: RAM:8AEDj
		LDA	$6494,X
		AND	#$7F ; ''
		STA	$6494,X
		DEX
		BPL	loc_8AE4
		ldxy	$9881
		JSR	sub_8EEF
		JSR	$189F
		JSR	sub_8EF9
		BIT	$1961
		BPL	loc_8B04
		JMP	loc_8AC2
; ---------------------------------------------------------------------------

loc_8B04:				; CODE XREF: RAM:8AFFj
		JSR	sub_8C0F
		BCC	loc_8B0C
		JMP	loc_8B1C
; ---------------------------------------------------------------------------

loc_8B0C:				; CODE XREF: RAM:8ADFj	RAM:8B07j
		LDA	$75
		BNE	loc_8B1B
		LDA	byte_AA21
		AND	#$10
		BEQ	loc_8B18
		RTS
; ---------------------------------------------------------------------------

loc_8B18:				; CODE XREF: RAM:8B15j
		JMP	loc_8CB8
; ---------------------------------------------------------------------------

loc_8B1B:				; CODE XREF: RAM:8B0Ej
		CLC

loc_8B1C:				; CODE XREF: RAM:8B09j
		LDX	byte_AA17
		LDA	byte_AA18
		BEQ	loc_8B27
		JMP	loc_94E7
; ---------------------------------------------------------------------------

loc_8B27:				; CODE XREF: RAM:8B22j
		LDA	byte_8B37,X
		PHA
		LDA	byte_8B30,X
		PHA
		RTS
; ---------------------------------------------------------------------------
byte_8B30:	.BYTE	<(loc_8B80-1)	; DATA XREF: RAM:8B2Br
		.BYTE	<(loc_8B8F-1)
		.BYTE	<(loc_8BB3-1)
		.BYTE	<(loc_8BF4-1)
		.BYTE	<(loc_8B80-1)
		.BYTE	<(loc_8D31-1)
		.BYTE	<(loc_8D5B-1)
byte_8B37:	.BYTE	>(loc_8B80-1)	; DATA XREF: RAM:loc_8B27r
		.BYTE	>(loc_8B8F-1)
		.BYTE	>(loc_8BB3-1)
		.BYTE	>(loc_8BF4-1)
		.BYTE	>(loc_8B80-1)
		.BYTE	>(loc_8D31-1)
		.BYTE	>(loc_8D5B-1)

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8B3E:				; CODE XREF: RAM:774Fj	RAM:8BA5p ...
		LDA	$80
		CMP	$9C
		BNE	loc_8B7E
		LDA	$80
		BEQ	loc_8B58
		CMP	#7
		BNE	loc_8B78
		LDA	$81
		CMP	#$FF
		BEQ	loc_8B7A
		CMP	$9D
		BEQ	loc_8B78
		BNE	loc_8B7A

loc_8B58:				; CODE XREF: sub_8B3E+8j
		LDA	$81
		CMP	#9
		BCC	loc_8B60
		LDA	#$B

loc_8B60:				; CODE XREF: sub_8B3E+1Ej
		CMP	$9D
		BNE	loc_8B7E
		LDA	$82
		CMP	$9E
		BCC	loc_8B74
		BEQ	loc_8B6E
		BCS	loc_8B78

loc_8B6E:				; CODE XREF: sub_8B3E+2Cj
		LDA	$83
		CMP	$9E
		BCS	loc_8B78

loc_8B74:				; CODE XREF: sub_8B3E+2Aj
		LDA	#0
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_8B78:				; CODE XREF: sub_8B3E+Cj sub_8B3E+16j	...
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_8B7A:				; CODE XREF: sub_8B3E+12j sub_8B3E+18j
		LDA	$80
		CMP	$9C

loc_8B7E:				; CODE XREF: sub_8B3E+4j sub_8B3E+24j
		CLC
		RTS
; End of function sub_8B3E

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_8CCB

loc_8B80:				; CODE XREF: RAM:7755j	RAM:8BAFj ...
		JSR	sub_8D6E
		LDA	byte_AA21
		ORA	#$20 ; ' '
		STA	byte_AA21
		LDX	$73
		TXS
		RTS
; END OF FUNCTION CHUNK	FOR sub_8CCB
; ---------------------------------------------------------------------------

loc_8B8F:
		BCS	loc_8B94
		JMP	locret_8BB2
; ---------------------------------------------------------------------------

loc_8B94:				; CODE XREF: RAM:8B8Fj
		LDA	#$12
		JSR	sub_8F8E
		STA	$9F
		LDA	#0
		STA	$9E
		LDA	#0
		STA	$9C
		STA	$9D
		JSR	sub_8B3E
		BCC	loc_8BAD
		JMP	loc_8CBB
; ---------------------------------------------------------------------------

loc_8BAD:				; CODE XREF: RAM:8BA8j
		BEQ	locret_8BB2
		JMP	loc_8B80
; ---------------------------------------------------------------------------

locret_8BB2:				; CODE XREF: RAM:8B91j	RAM:loc_8BADj
		RTS
; ---------------------------------------------------------------------------
loc_8BB3:
		BCS	loc_8BBB
		JSR	sub_8CCB
		JMP	loc_8B80
; ---------------------------------------------------------------------------

loc_8BBB:				; CODE XREF: RAM:8BB3j
		LDA	$6387
		BPL	loc_8BC3
		JMP	loc_8B80
; ---------------------------------------------------------------------------

loc_8BC3:				; CODE XREF: RAM:8BBEj
		CMP	#$10
		BCC	loc_8BCA
		JMP	loc_8B80
; ---------------------------------------------------------------------------

loc_8BCA:				; CODE XREF: RAM:8BC5j
		LDX	#0
		STX	$9E
		STA	$9F
		CLC
		ADC	$633C
		STA	$9F
		BCC	loc_8BDA
		INC	$9E

loc_8BDA:				; CODE XREF: RAM:8BD6j
		LDX	#4

loc_8BDC:				; CODE XREF: RAM:8BE1j
		ASL	$9F
		ROL	$9E
		DEX
		BNE	loc_8BDC
		LDA	#0
		STA	$9C
		LDA	#$B
		STA	$9D
		JSR	sub_8B3E
		BCC	locret_8BF3
		JMP	loc_8CBB
; ---------------------------------------------------------------------------

locret_8BF3:				; CODE XREF: RAM:8BEEj
		RTS
; ---------------------------------------------------------------------------

loc_8BF4:
		JSR	sub_8CCB
		BCC	loc_8C0C
		LDA	#7
		STA	$9C
		JSR	sub_8B3E
		BNE	loc_8C0C
		LDX	#$85 ; 'Ö'
		LDA	#1
		JSR	$186F
		JMP	loc_8CBB
; ---------------------------------------------------------------------------

loc_8C0C:				; CODE XREF: RAM:8BF7j	RAM:8C00j
		JMP	loc_8B80

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8C0F:				; CODE XREF: RAM:loc_8B04p
		LDX	#$F

loc_8C11:				; CODE XREF: sub_8C0F+22j
		LDA	$6494,X
		CMP	#2
		BNE	loc_8C30
		LDA	$64A4,X
		CMP	$6313
		BNE	loc_8C30
		LDA	$64B4,X
		CMP	$6314
		BNE	loc_8C30
		LDA	$64C4,X
		CMP	$6315
		BEQ	loc_8C35

loc_8C30:				; CODE XREF: sub_8C0F+7j sub_8C0F+Fj ...
		DEX
		BPL	loc_8C11

loc_8C33:				; CODE XREF: sub_8C0F+30j
		CLC
		RTS
; ---------------------------------------------------------------------------

loc_8C35:				; CODE XREF: sub_8C0F+1Fj
		LDA	$64D4,X
		STA	$4B
		STA	$7F
		JSR	$1887
		BEQ	loc_8C33
		LDY	#0
		LDA	(off_41),Y
		STA	$80
		BNE	loc_8C9A
		JSR	$1896
		LDY	#0
		LDA	(off_43),Y
		STA	$81
		INY
		LDA	(off_43),Y
		STA	$82
		STA	9
		INY
		LDA	(off_43),Y
		STA	$83
		STA	$A
		LDX	#2
		SEC
		LDA	$81
		SBC	#9
		BEQ	loc_8C70
		BCC	loc_8C97
		CMP	#2
		BEQ	loc_8C97
		DEX

loc_8C70:				; CODE XREF: sub_8C0F+58j sub_8C0F+86j
		LDA	$82
		CMP	#$19
		BCC	loc_8C7E
		LDA	#$FF
		STA	$82
		STA	$83
		BMI	loc_8C97

loc_8C7E:				; CODE XREF: sub_8C0F+65j
		LDY	#3

loc_8C80:				; CODE XREF: sub_8C0F+76j
		ASL	$A
		ROL	9
		DEY
		BNE	loc_8C80
		CLC
		LDA	$A
		ADC	$83
		STA	$83
		LDA	9
		ADC	$82
		STA	$82
		DEX
		BNE	loc_8C70

loc_8C97:				; CODE XREF: sub_8C0F+5Aj sub_8C0F+5Ej ...
		JMP	loc_8CB6
; ---------------------------------------------------------------------------

loc_8C9A:				; CODE XREF: sub_8C0F+38j
		CMP	#7
		BNE	loc_8CB6
		LDA	#$FF
		STA	$81
		JSR	$1896
		LDY	#0
		LDA	(off_43),Y
		CMP	#2
		BNE	loc_8CB6
		INY
		LDA	(off_43),Y
		CMP	#0
		BNE	loc_8CB6
		STA	$81

loc_8CB6:				; CODE XREF: sub_8C0F:loc_8C97j
					; sub_8C0F+8Dj	...
		SEC
		RTS
; End of function sub_8C0F

; ---------------------------------------------------------------------------

loc_8CB8:				; CODE XREF: RAM:loc_8B18j
		JMP	loc_849D
; ---------------------------------------------------------------------------

loc_8CBB:				; CODE XREF: RAM:7752j	RAM:8BAAj ...
		JSR	loc_90CD
		JSR	sub_9067
		ldxy	$A10F
		JSR	loc_8ED1
		JMP	loc_776D

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8CCB:				; CODE XREF: RAM:773Dj	RAM:8BB5p ...

; FUNCTION CHUNK AT 8B80 SIZE 0000000F BYTES

		LDA	$75
		CMP	#3
		BEQ	loc_8D04
		LDA	$75
		CMP	#2
		BEQ	loc_8CD8
		RTS
; ---------------------------------------------------------------------------

loc_8CD8:				; CODE XREF: sub_8CCB+Aj
		LDA	byte_AA27
		CMP	#$A
		BCC	loc_8CFE
		CLC
		LDA	$6351
		ADC	$1976
		LDX	#7
		JSR	sub_8F0D
		BMI	loc_8CFE
		LDA	RANDOM
		CMP	#4
		BCS	loc_8CFB
		LDX	#$52 ; 'R'
		LDA	#1
		JSR	$1878

loc_8CFB:				; CODE XREF: sub_8CCB+27j
		JMP	loc_849D
; ---------------------------------------------------------------------------

loc_8CFE:				; CODE XREF: sub_8CCB+12j sub_8CCB+20j
		LDX	#$9C ; 'ú'
		LDY	#$C
		BNE	loc_8D2B

loc_8D04:				; CODE XREF: sub_8CCB+4j
		SEC
		LDA	$6361
		SBC	byte_AA27
		BCC	loc_8D27
		LDX	#6
		JSR	sub_8F0D
		BMI	loc_8D27
		INC	$97
		LDA	RANDOM
		CMP	#3
		BCS	loc_8D2E
		LDX	$62
		LDA	#1
		JSR	$1878
		JMP	loc_8D2E
; ---------------------------------------------------------------------------

loc_8D27:				; CODE XREF: sub_8CCB+40j sub_8CCB+47j
		ldxy	$9BF4

loc_8D2B:				; CODE XREF: sub_8CCB+37j
		JSR	loc_8ED1

loc_8D2E:				; CODE XREF: sub_8CCB+50j sub_8CCB+59j
		JMP	loc_8B80
; End of function sub_8CCB

; ---------------------------------------------------------------------------

loc_8D31:
		JSR	sub_8CCB
		LDA	#6
		JSR	$1899
		TAY
		LDX	unk_76EC,Y
		LDA	$6300,X
		BNE	loc_8D58
		INC	$6300,X
		LDA	unk_98F5,Y
		STA	off_76D9
		LDA	unk_9901,Y
		STA	off_76D9+1
		ldxy	$9C39
		JSR	loc_8ED1

loc_8D58:				; CODE XREF: RAM:8D40j
		JMP	loc_8D74
; ---------------------------------------------------------------------------

loc_8D5B:
		JSR	sub_8CCB
		LDA	#5
		JSR	$1899
		TAX
		LDY	$A87C,X
		LDA	$A882,X
		TAX
		JSR	loc_8ED1

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8D6E:				; CODE XREF: sub_8CCB:loc_8B80p
		LDA	byte_AA21
		BPL	loc_8D74
		RTS
; End of function sub_8D6E

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_88B0

loc_8D74:				; CODE XREF: RAM:7740j	sub_88B0-DF4j ...
		ldxy	$A4EC
		JSR	loc_8ED1
		JMP	loc_776D
; END OF FUNCTION CHUNK	FOR sub_88B0

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8D7E:				; CODE XREF: RAM:7954p	sub_7ECE+9p ...
		JSR	sub_8E1D
		dldi	off_64, $6400
		LDA	#$1F
		STA	byte_9E3C
		LDA	#$A0 ; '†'
		STA	byte_9E3D
		LDA	#0
		STA	$66
		STA	$67
		LDA	$639C
		STA	$4B
		BMI	loc_8DC3
		JSR	$1887
		CLC
		LDA	#6
		ADC	off_41
		STA	byte_9E3C
		STA	off_9E3E
		LDA	off_41+1
		ADC	#0
		STA	byte_9E3D
		STA	off_9E3E+1
		JSR	$1896
		dmv	off_64, off_43

loc_8DC3:				; CODE XREF: sub_8D7E+20j
		LDA	#0
		STA	$96
		LDA	$639C
		BMI	loc_8DDE
		STA	$A9
		LDY	#$12
		LDA	(off_64),Y
		BEQ	loc_8E11
		STA	$96
		dmv	off_66, off_64

loc_8DDE:				; CODE XREF: sub_8D7E+4Cj
		LDA	$639D
		BMI	loc_8E11
		STA	$4B
		JSR	$1887
		JSR	$1896
		LDY	#$12
		LDA	(off_43),Y
		BEQ	loc_8E11
		CMP	$96
		BCC	loc_8E11
		LDA	$639D
		STA	$A9
		dmv	off_66, off_43
		CLC
		LDA	off_41
		ADC	#6
		STA	off_9E3E
		LDA	off_41+1
		ADC	#0
		STA	off_9E3E+1

loc_8E11:				; CODE XREF: sub_8D7E+54j sub_8D7E+63j ...
		LDA	#2
		CLC
		ADC	off_66
		STA	off_66
		BCC	locret_8E1C
		INC	off_66+1

locret_8E1C:				; CODE XREF: sub_8D7E+9Aj
		RTS
; End of function sub_8D7E


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8E1D:				; CODE XREF: sub_8D7Ep
		LDA	$6384
		CMP	#5
		BCC	loc_8E26
		LDA	#4

loc_8E26:				; CODE XREF: sub_8E1D+5j
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	$86
		RTS
; End of function sub_8E1D

; ---------------------------------------------------------------------------

loc_8E2D:				; CODE XREF: RAM:86E2j
		LDA	$A9
		BPL	loc_8E34

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8E31:				; CODE XREF: RAM:827Cj	RAM:loc_828Ep
		LDA	$639C

loc_8E34:				; CODE XREF: RAM:8E2Fj
		BMI	locret_8E6E
		STA	$4B
		JSR	$1887
		BEQ	locret_8E6E
		LDA	RANDOM
		BMI	locret_8E6E
		CLC
		LDA	#6
		ADC	off_41
		STA	off_76D9
		LDA	#0
		ADC	off_41+1
		STA	off_76D9+1
		JSR	$1896
		LDY	#$F
		LDA	(off_43),Y
		CMP	#$FF
		BEQ	locret_8E6E
		SEC
		SBC	#1
		STA	(off_43),Y
		BEQ	loc_8E6F
		CMP	#5
		BCS	locret_8E6E
		ldxy	$9E04
		JSR	sub_8E7F

locret_8E6E:				; CODE XREF: sub_8E31:loc_8E34j
					; sub_8E31+Aj ...
		RTS
; ---------------------------------------------------------------------------

loc_8E6F:				; CODE XREF: sub_8E31+30j
		LDY	#2
		LDA	#$10
		STA	(off_41),Y
		ldxy	$9E1C
		JSR	sub_8E7F
		JMP	sub_8D7E
; End of function sub_8E31


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8E7F:				; CODE XREF: RAM:776Aj	RAM:8ABBp ...
		JSR	sub_8EEF
		JSR	$183C
		ldxy	$9881
		JSR	sub_8EEF
		JMP	sub_8EF9
; End of function sub_8E7F


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8E8F:				; CODE XREF: RAM:7FC7p	RAM:8339p ...
		LDA	#0
		STA	$A7
		STA	$A8
		LDX	#$A

loc_8E97:				; CODE XREF: sub_8E8F+15j
		LDA	$63DD,X
		CLC
		ADC	$A8
		STA	$A8
		BCC	loc_8EA3
		INC	$A7

loc_8EA3:				; CODE XREF: sub_8E8F+10j
		DEX
		BPL	loc_8E97
		RTS
; End of function sub_8E8F


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8EA7:				; CODE XREF: RAM:7734j
					; sub_92D0:loc_92E8p
		LDY	byte_AA00
		LDX	#0

loc_8EAC:				; CODE XREF: sub_8EA7+24j
		LDA	$B2,X
		CMP	byte_AA22
		BCC	loc_8EC8
		BEQ	loc_8EB7
		BCS	loc_8EBE

loc_8EB7:				; CODE XREF: sub_8EA7+Cj
		LDA	$B3,X
		CMP	byte_AA23
		BCC	loc_8EC8

loc_8EBE:				; CODE XREF: sub_8EA7+Ej
		LDA	byte_AA22
		STA	$B2,X
		LDA	byte_AA23
		STA	$B3,X

loc_8EC8:				; CODE XREF: sub_8EA7+Aj sub_8EA7+15j
		INX
		INX
		DEY
		BNE	loc_8EAC
		RTS
; End of function sub_8EA7


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8ECE:				; CODE XREF: RAM:770Dj	sub_88B0-EC3p ...
		LDA	#2
; ---------------------------------------------------------------------------
		.BYTE	$2C
; ---------------------------------------------------------------------------

loc_8ED1:				; CODE XREF: RAM:770Aj	RAM:783Ap ...
		LDA	#4
; End of function sub_8ECE

		PHA
		JSR	sub_8EEF
		PLA
		DEC	$32
		JSR	$185A
		INC	$32
		ldxy	$9881
		JSR	sub_8EEF
		LDX	#2

loc_8EE8:				; CODE XREF: RAM:8EECj
		JSR	sub_9280
		DEX
		BNE	loc_8EE8
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8EEF:				; CODE XREF: RAM:7728j	sub_88B0-FCFp ...
		STY	off_16
		STX	off_16+1
		LDX	byte_A892
		JMP	$1851
; End of function sub_8EEF


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8EF9:				; CODE XREF: RAM:7713j	sub_84CF-D5Fp ...
		LDA	$32
		PHA
		LDA	#0
		STA	$32
		DEC	$1960
		DEC	$195F
		JSR	$18A5
		PLA
		STA	$32
		RTS
; End of function sub_8EF9


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8F0D:				; CODE XREF: RAM:775Ej	sub_88B0-ED2p ...
		PHA
		TXA
		CLC
		ADC	$6384
		TAX
		PLA
; End of function sub_8F0D


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8F15:				; CODE XREF: sub_88B0-E7Fp
					; sub_88B0-E16p ...
		STX	$77
		LDX	#0
		STX	$79
		STA	$78
		SEC
		SBC	#$80 ; 'Ä'
		BCC	loc_8F2B
		LSR	A
		LSR	A
		LSR	A
		STA	$79
		LDA	#$80 ; 'Ä'
		STA	$78

loc_8F2B:				; CODE XREF: sub_8F15+Bj
		LDA	$78
		SEC
		SBC	#$10
		BCC	loc_8F3D
		LSR	A
		LSR	A
		CLC
		ADC	$79
		STA	$79
		LDA	#$10
		STA	$78

loc_8F3D:				; CODE XREF: sub_8F15+1Bj
		CLC
		LDA	$78
		ADC	$79
		STA	$79
		LDX	$77
		JSR	sub_9049
		LDA	3
		BEQ	loc_8F51
		LDA	#$F4 ; 'Ù'
		BMI	loc_8F59

loc_8F51:				; CODE XREF: sub_8F15+36j
		LDA	2
		CMP	#$F5 ; 'ı'
		BCC	loc_8F59
		LDA	#$F4 ; 'Ù'

loc_8F59:				; CODE XREF: sub_8F15+3Aj sub_8F15+40j
		STA	$79
		LDA	RANDOM
		STA	$96
		CMP	$79
		BCS	loc_8F7D
		LDA	#1
		STA	$78
		LDA	$96
		CMP	#$10
		BCS	loc_8F7A
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CMP	$79
		BCS	loc_8F7A
		LDA	#0
		STA	$78

loc_8F7A:				; CODE XREF: sub_8F15+57j sub_8F15+5Fj ...
		LDA	$78
		RTS
; ---------------------------------------------------------------------------

loc_8F7D:				; CODE XREF: sub_8F15+4Dj
		LDA	#$80 ; 'Ä'
		STA	$78
		LDA	RANDOM
		CMP	#8
		BCS	loc_8F7A
		LDA	#$FF
		STA	$78
		BMI	loc_8F7A
; End of function sub_8F15


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8F8E:				; CODE XREF: RAM:7FB8p	RAM:82CCp ...
		STX	byte_A896
		STY	byte_A897
		STA	2
		LDX	#0
		STX	$7B
		STX	$7A
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	$87
		BEQ	loc_8FC9
		LDA	2
		AND	#$F
		STA	$88
; End of function sub_8F8E


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_8FAA:				; CODE XREF: sub_7C9E+46p sub_7C9E+64p ...
		LDA	#0
		STA	$7A
		STA	$7B

loc_8FB0:				; CODE XREF: sub_8FAA+1Dj
		LDA	RANDOM
		LDX	$88
		BEQ	loc_8FC9
		JSR	sub_9049
		LDA	3
		SEC
		ADC	$7A
		STA	$7A
		BCC	loc_8FC5
		INC	$7B

loc_8FC5:				; CODE XREF: sub_8FAA+17j
		DEC	$87
		BNE	loc_8FB0

loc_8FC9:				; CODE XREF: sub_8F8E+14j sub_8FAA+Bj
		LDA	$7A
		LDX	byte_A896
		LDY	byte_A897
		RTS
; End of function sub_8FAA

; ---------------------------------------------------------------------------

loc_8FD2:				; CODE XREF: RAM:772Bj	RAM:8FE5j ...
		DEC	$32
		dldi	off_1977, loc_8FE1
		JMP	$1806
; ---------------------------------------------------------------------------

loc_8FE1:
		INC	$32
		LDA	$31
		BMI	loc_8FD2
		JSR	$183F
		CMP	#'Y'
		BEQ	loc_901A
		CMP	#'N'
		BEQ	loc_8FFE
		LDA	byte_A892
		STA	$1933
		JSR	$1848
		JMP	loc_8FD2
; ---------------------------------------------------------------------------

loc_8FFE:				; CODE XREF: RAM:8FF0j
		LDA	$1968
		BNE	loc_9005

loc_9003:				; CODE XREF: RAM:9011j
		SEC
		RTS
; ---------------------------------------------------------------------------

loc_9005:				; CODE XREF: RAM:9001j
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		STA	loc_900F+1
		LDA	RANDOM

loc_900F:				; DATA XREF: RAM:9009w
		CMP	#$FF
		BCS	loc_9003
		ldxy	$9CFA
		JSR	loc_8ED1

loc_901A:				; CODE XREF: RAM:8FECj
		CLC
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_901C:				; CODE XREF: RAM:7743j	sub_7DD2+9p ...
		STA	$74
		DEC	$32

loc_9020:				; CODE XREF: RAM:902Fj	RAM:9041j
		dldi	off_1977, $902D
		JMP	$1806
; End of function sub_901C

; ---------------------------------------------------------------------------
		LDA	$31
		BMI	loc_9020
		SEC
		SBC	#$30 ; '0'
		CMP	$74
		BCC	loc_9044
		LDX	byte_A892
		STX	$1933
		JSR	$1848
		JMP	loc_9020
; ---------------------------------------------------------------------------

loc_9044:				; CODE XREF: RAM:9036j
		INC	$32
		STA	$74
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9049:				; CODE XREF: sub_8F15+31p sub_8FAA+Dp
		STA	4
		STX	5
		LDA	#0
		STA	3
		LDX	#8

loc_9053:				; CODE XREF: sub_9049+19j
		ASL	A
		ROL	3
		ASL	5
		BCC	loc_9061
		CLC
		ADC	4
		BCC	loc_9061
		INC	3

loc_9061:				; CODE XREF: sub_9049+Fj sub_9049+14j
		DEX
		BNE	loc_9053
		STA	2
		RTS
; End of function sub_9049


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9067:				; CODE XREF: RAM:774Cj	sub_84CF-9FAp ...
		dldi	off_16, $A0BC
		JMP	$1812
; End of function sub_9067


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9072:				; CODE XREF: sub_88B0-E29p
					; sub_84BA:loc_84C5p ...
		LDA	$8A
		BEQ	sub_9067
		dldi	off_16, $A0AA
		JMP	$1812
; End of function sub_9072


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9081:				; CODE XREF: RAM:7764j	sub_84CF-9B4p ...
		LDX	$6493
		LDA	$6494,X
		AND	#$7F ; ''
		BEQ	loc_9097
		LDA	$4B
		PHA
		LDA	$64D4,X
		JSR	$188A
		PLA
		STA	$4B

loc_9097:				; CODE XREF: sub_9081+8j
		LDA	$4B
		JSR	$1887
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
		RTS
; End of function sub_9081


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_90C3:				; CODE XREF: sub_88B0+97p
		LDX	#$B
		LDA	#0

loc_90C7:				; CODE XREF: sub_90C3+8j
		STA	$AA2B,X
		DEX
		BPL	loc_90C7

loc_90CD:				; CODE XREF: RAM:7767j	RAM:loc_8468p ...
		JSR	sub_9272
		LDA	#$F
		STA	$96

loc_90D4:				; CODE XREF: sub_90C3+3Aj
		LDX	$96
		LDA	$6494,X
		CMP	#2
		BNE	loc_90FB
		LDA	$64A4,X
		CMP	$6313
		BNE	loc_90FB
		LDA	$64B4,X
		CMP	$6314
		BNE	loc_90FB
		LDA	$64C4,X
		CMP	$6315
		BNE	loc_90FB
		LDA	$64D4,X
		JSR	$188A

loc_90FB:				; CODE XREF: sub_90C3+18j sub_90C3+20j ...
		DEC	$96
		BPL	loc_90D4
		RTS
; End of function sub_90C3


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9100:				; CODE XREF: sub_84CF+10p
		LDA	byte_AA22
		STA	$D4
		LDA	byte_AA23
		STA	$D5
		LDX	byte_AA1E
		INX
		JMP	loc_911F
; ---------------------------------------------------------------------------

loc_9111:				; CODE XREF: sub_9100+20j
		ASL	$D5
		ROL	$D4
		BCC	loc_911F
		LDA	#$FF
		STA	$D4
		STA	$D5
		BMI	loc_9142

loc_911F:				; CODE XREF: sub_9100+Ej sub_9100+15j
		DEX
		BPL	loc_9111
		BMI	loc_9142
; End of function sub_9100


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9124:				; CODE XREF: sub_88B0:loc_797Bp
		LDA	$A7
		STA	$D4
		LDA	$A8
		STA	$D5
		LDA	$A8
		CMP	byte_AA23
		LDA	$A7
		SBC	byte_AA22
		BCC	loc_9142
		LDA	byte_AA22
		STA	$D4
		LDA	byte_AA23
		STA	$D5

loc_9142:				; CODE XREF: sub_9100+1Dj sub_9100+22j ...
		LSR	$D4
		ROR	$D5
		CLC
		LDA	$D5
		ADC	$6340
		STA	$6340
		LDA	$D4
		ADC	$633F
		STA	$633F
		BCC	loc_9161
		INC	$633E
		BNE	loc_9161
		INC	$633D

loc_9161:				; CODE XREF: sub_9124+33j sub_9124+38j ...
		LDX	#0

loc_9163:				; CODE XREF: sub_9124+4Dj
		LDA	$633D,X
		CMP	$6341,X
		BEQ	loc_916E
		BCS	loc_9175

locret_916D:				; CODE XREF: sub_9124+4Fj
		RTS
; ---------------------------------------------------------------------------

loc_916E:				; CODE XREF: sub_9124+45j
		INX
		CPX	#4
		BCC	loc_9163
		BCS	locret_916D

loc_9175:				; CODE XREF: sub_9124+47j
		CLC
		LDX	#3

loc_9178:				; CODE XREF: sub_9124+58j
		ROL	$6341,X
		DEX
		BPL	loc_9178
		SEC
		LDA	$6344
		SBC	$6369
		STA	$6344
		LDX	#2

loc_918A:				; CODE XREF: sub_9124+6Fj
		LDA	$6341,X
		SBC	#0
		STA	$6341,X
		DEX
		BPL	loc_918A
		LDY	#3
		LDA	$634A
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		CMP	#9
		BCC	loc_91A5
		LDA	#8
		INY

loc_91A5:				; CODE XREF: sub_9124+7Cj
		STA	$87
		INC	$87
		LDX	$633C
		CPX	#2
		BCS	loc_91B2
		LDY	#6

loc_91B2:				; CODE XREF: sub_9124+8Aj
		STY	$88
		JSR	sub_8FAA
		LDA	$633C
		CLC
		ADC	$7A
		STA	$7A
		BCC	loc_91C3
		INC	$7B

loc_91C3:				; CODE XREF: sub_9124+9Bj
		CLC
		LDA	$7A
		ADC	$6346
		STA	$6346
		LDA	$7B
		ADC	$6345
		STA	$6345
		CLC
		LDA	$7A
		ADC	$6348
		STA	$6348
		LDA	$7B
		ADC	$6347
		STA	$6347
		LDA	#$4A ; 'J'
		STA	byte_A895
		LDA	#7
		STA	$96

loc_91EE:				; CODE XREF: sub_9124+E3j
		LDA	#2
		JSR	$1899
		CLC
		ADC	#1
		LDX	byte_A895
		JSR	$1878
		LDA	#8
		CLC
		ADC	byte_A895
		STA	byte_A895
		DEC	$96
		BNE	loc_91EE
		LDA	#2
		JSR	$1899
		LDX	#$81 ; 'Å'
		JSR	$1878
		INC	$633C
		JMP	loc_9161
; End of function sub_9124


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9219:				; CODE XREF: sub_88B0-F00p
					; sub_88B0-E3Cp ...
		LDY	byte_AA00
		LDX	#0
		STX	$8B

loc_9220:				; CODE XREF: sub_9219+12j
		LDA	$B2,X
		ORA	$B3,X
		BEQ	loc_9228
		INC	$8B

loc_9228:				; CODE XREF: sub_9219+Bj
		INX
		INX
		DEY
		BNE	loc_9220
		LDA	$8B
		STA	byte_AA00
		STA	$8A
		BEQ	locret_9271
		LDX	#0

loc_9238:				; CODE XREF: sub_9219+56j
		LDA	$B2,X
		ORA	$B3,X
		BNE	loc_926B
		TXA
		CLC
		ADC	#2
		TAY

loc_9243:				; CODE XREF: sub_9219+34j
		LDA	$B2,Y
		ORA	$B3,Y
		BNE	loc_924F
		INY
		INY
		BNE	loc_9243

loc_924F:				; CODE XREF: sub_9219+30j
		LDA	$B2,Y
		STA	$B2,X
		LDA	$B3,Y
		STA	$B3,X
		LDA	$C2,Y
		STA	$C2,X
		LDA	$C3,Y
		STA	$C3,X
		LDA	#0
		STA	$B2,Y
		STA	$B3,Y

loc_926B:				; CODE XREF: sub_9219+23j
		INX
		INX
		DEC	$8B
		BNE	loc_9238

locret_9271:				; CODE XREF: sub_9219+1Bj
		RTS
; End of function sub_9219


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9272:				; CODE XREF: sub_84CF-D5Cp
					; sub_88B0-101Dp ...
		LDX	#$F

loc_9274:				; CODE XREF: sub_9272+Bj
		LDA	$6494,X
		AND	#$F
		STA	$6494,X
		DEX
		BPL	loc_9274
		RTS
; End of function sub_9272


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9280:				; CODE XREF: RAM:7737j
					; sub_810E:loc_811Ep ...
		LDA	$252

loc_9283:				; CODE XREF: sub_9280+6j
		CMP	$252
		BEQ	loc_9283
		RTS
; End of function sub_9280


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9289:				; CODE XREF: sub_7B59+31p RAM:8869p
		ASL	A
		TAX
		LDA	$AA05,X
		STA	off_68
		LDA	$AA06,X
		STA	off_68+1
		CLC
		LDA	off_68
		ADC	#6
		STA	$6C
		LDA	off_68+1
		ADC	#0
		STA	$6D
		LDY	#5
		CLC
		LDA	off_68
		ADC	(off_68),Y
		STA	off_6A
		LDA	off_68+1
		ADC	#0
		STA	off_6A+1
		LDY	#0

loc_92B3:				; CODE XREF: sub_9289:loc_92C2j
		LDA	(off_6A),Y
		BEQ	loc_92C4
		LDA	off_6A
		CLC
		ADC	#$10
		STA	off_6A
		BCC	loc_92C2
		INC	off_6A+1

loc_92C2:				; CODE XREF: sub_9289+35j
		BNE	loc_92B3

loc_92C4:				; CODE XREF: sub_9289+2Cj
		LDA	off_6A
		CLC
		ADC	#3
		STA	off_6A
		BCC	locret_92CF
		INC	off_6A+1

locret_92CF:				; CODE XREF: sub_9289+42j
		RTS
; End of function sub_9289


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_92D0:				; CODE XREF: sub_88B0-F41p
		LDX	#0
		LDY	byte_AA00

loc_92D5:				; CODE XREF: sub_92D0+16j
		CLC
		LDA	$7D
		ADC	$B3,X
		BCC	loc_92DE
		INC	$B2,X

loc_92DE:				; CODE XREF: sub_92D0+Aj
		LDA	$63E8
		BEQ	loc_92E8
		INX
		INX
		DEY
		BNE	loc_92D5

loc_92E8:				; CODE XREF: sub_92D0+11j
		JSR	sub_8EA7
		LDA	$7D
		BEQ	loc_92F6
		ldxy	$9D6D
		JSR	loc_8ED1

loc_92F6:				; CODE XREF: sub_810Ep	sub_92D0+1Dj
		LDA	byte_AA0D
		STA	2
		LDA	#0
		STA	3
		LDX	#6

loc_9301:				; CODE XREF: sub_92D0+38j
		LDA	$AA24,X
		JSR	sub_845E
		DEX
		BPL	loc_9301
		LDX	#3
		LDA	2

loc_930E:				; CODE XREF: sub_92D0+42j
		LSR	3
		ROR	A
		DEX
		BNE	loc_930E
		LDX	#3
		JMP	sub_8F15
; End of function sub_92D0


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9319:				; CODE XREF: RAM:936Dp
		STA	$A8
		LDA	#0
		STA	$A7
		JSR	sub_9509
		LDA	$B3,X
		SBC	$A8
		STA	$B3,X
		LDA	$B2,X
		SBC	$A7
		STA	$B2,X
		BCS	locret_9336
		LDA	#0
		STA	$B3,X
		STA	$B2,X

locret_9336:				; CODE XREF: sub_9319+15j
		RTS
; End of function sub_9319


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9337:				; CODE XREF: RAM:8842p	RAM:8978p
		STA	byte_A89F
		TAX
		LDA	$A572,X
		STA	off_76D9
		LDA	$A57E,X
		STA	off_76D9+1
		dldi	off_76DB, $76DF
		ldxy	$A235
		JSR	sub_8EEF

loc_9358:				; CODE XREF: sub_7B59:loc_7C6Dp
		PHA
		TXA
		PHA
		LDX	#$1E

loc_935D:				; CODE XREF: sub_9337+2Aj
		JSR	sub_9280
		DEX
		BNE	loc_935D
		PLA
		TAX
		PLA
		RTS
; End of function sub_9337

; ---------------------------------------------------------------------------

loc_9367:				; CODE XREF: RAM:8854j	RAM:8990j
		LDX	byte_A89F
		LDA	unk_9381,X
		JSR	sub_9319
		dldi	off_76DB, $A227
		ldxy	$A235
		JMP	sub_8ECE
; ---------------------------------------------------------------------------
unk_9381:	.BYTE	0		; DATA XREF: RAM:936Ar
		.BYTE	1
		.BYTE	1
		.BYTE	1
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	2
		.BYTE	1
; ---------------------------------------------------------------------------

loc_938D:				; CODE XREF: RAM:loc_8730p RAM:8A06p
		LDY	#$A

loc_938F:				; CODE XREF: RAM:939Ej
		LDA	$63DD,Y
		SEC
		SBC	$63A6,Y
		BCS	loc_939A
		LDA	#0

loc_939A:				; CODE XREF: RAM:9396j
		STA	$63DD,Y
		DEY
		BPL	loc_938F
		LDX	byte_A89C
		LDA	$A393,X
		STA	off_76DB
		LDA	$A397,X
		STA	off_76DB+1
		LDA	$639E,X
		BPL	loc_93B7
		JMP	locret_9474
; ---------------------------------------------------------------------------

loc_93B7:				; CODE XREF: RAM:93B2j
		STA	$4B
		JSR	$1887
		JSR	$1896
		INC	$43
		BNE	loc_93C5
		INC	$44

loc_93C5:				; CODE XREF: RAM:93C1j
		CLC
		LDA	#6
		ADC	$41
		STA	$70
		LDA	$42
		ADC	#0
		STA	$71
		LDA	#0
		STA	$7E
		LDA	#$A
		STA	$8B

loc_93DA:				; CODE XREF: RAM:941Aj
		LDY	$8B
		LDA	$63DD,Y
		BEQ	loc_9418
		LDA	(off_43),Y
		BEQ	loc_9418
		CMP	#$FF
		BEQ	loc_9401
		CMP	#$10
		BCS	loc_93F5
		LDX	$8B
		ASL	$63DD,X
		JMP	loc_9418
; ---------------------------------------------------------------------------

loc_93F5:				; CODE XREF: RAM:93EBj
		AND	#$F
		BNE	loc_9408
		CLC
		LDA	$63DD,Y
		ADC	$7E
		STA	$7E

loc_9401:				; CODE XREF: RAM:93E7j	RAM:9413j
		LDA	#0
		STA	$63DD,Y
		BEQ	loc_9418

loc_9408:				; CODE XREF: RAM:93F7j
		LDA	(off_43),Y
		JSR	sub_8F8E
		SEC
		LDA	$63DD,Y
		SBC	$7A
		BCC	loc_9401
		STA	$63DD,Y

loc_9418:				; CODE XREF: RAM:93DFj	RAM:93E3j ...
		DEC	$8B
		BPL	loc_93DA
		LDA	$7E
		BEQ	loc_9429
		LDX	#$45 ; 'E'
		JSR	$187B
		ldxy	$A2A1

loc_9429:				; CODE XREF: RAM:941Ej
		LDX	#$A
		LDA	#0

loc_942D:				; CODE XREF: RAM:9431j
		ORA	$63DD,X
		DEX
		BPL	loc_942D
		CMP	#0
		BEQ	locret_9474
		LDA	RANDOM
		CMP	#$40 ; '@'
		BCS	locret_9474
		LDA	#3
		LDY	$A4
		BEQ	loc_9445
		ASL	A

loc_9445:				; CODE XREF: RAM:9442j
		JSR	$1899
		STA	loc_9454+1
		LDY	#$B
		LDA	(off_43),Y
		CMP	#$FF
		BEQ	locret_9474
		SEC

loc_9454:				; DATA XREF: RAM:9448w
		SBC	#$FF
		STA	(off_43),Y
		BCC	loc_945C
		BNE	loc_9469

loc_945C:				; CODE XREF: RAM:9458j
		LDY	#2
		LDA	#$10
		STA	(off_41),Y
		ldxy	$A2EB
		JMP	sub_8E7F
; ---------------------------------------------------------------------------

loc_9469:				; CODE XREF: RAM:945Aj
		CMP	#4
		BCS	locret_9474
		ldxy	$A2CD
		JMP	sub_8E7F
; ---------------------------------------------------------------------------

locret_9474:				; CODE XREF: RAM:93B4j	RAM:9435j ...
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9475:				; CODE XREF: RAM:7761j	RAM:8A0Cp ...
		CLC
		LDA	$6371
		ADC	$6349
		ROR	A
		LDX	#5
		JMP	sub_8F0D
; End of function sub_9475


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9482:				; CODE XREF: RAM:7707j	RAM:loc_8674p ...
		LDA	#$40 ; '@'
		BIT	$AB
		BMI	loc_948A
		LDA	#$C0 ; '¿'

loc_948A:				; CODE XREF: sub_9482+4j
		STA	$AC
		RTS
; End of function sub_9482


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_948D:				; CODE XREF: sub_88B0-F38p RAM:7F62p ...
		LDA	byte_AA21
		AND	#$BF ; 'ø'
		STA	byte_AA21
		LDA	$AB
		BNE	locret_94C4
		LDX	#$40 ; '@'
		LDA	byte_AA21
		AND	#$7F ; ''
		ORA	$AC
		BNE	loc_94B2
		LDA	RANDOM
		BPL	loc_94B0
		LDA	#1
		LDX	#$85 ; 'Ö'
		JSR	$186F

loc_94B0:				; CODE XREF: sub_948D+1Aj
		LDX	#$80 ; 'Ä'

loc_94B2:				; CODE XREF: sub_948D+15j
		STX	$AB
		LDA	$639C
		BMI	loc_94BC
		JSR	$188D

loc_94BC:				; CODE XREF: sub_948D+2Aj
		LDA	$639D
		BMI	locret_94C4
		JSR	$188D

locret_94C4:				; CODE XREF: sub_948D+Aj sub_948D+32j
		RTS
; End of function sub_948D

; ---------------------------------------------------------------------------

loc_94C5:				; CODE XREF: sub_88B0:loc_79A4p
					; sub_88B0:loc_7A05p ...
		JSR	sub_9509
		LDA	$B2,X
		ORA	$B3,X
		BNE	loc_94D2+1
		JSR	sub_84CF
		SEC

loc_94D2:				; CODE XREF: RAM:94CCj
		.BYTE	$24
		CLC
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_94D5:				; CODE XREF: RAM:7812p	RAM:781Cp
		STA	$96
		LDA	#$28 ; '('
		JSR	$1899
		CLC
		ADC	$96
		STA	$96
		LDA	RANDOM
		CMP	$96
		RTS
; End of function sub_94D5

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_84CF

loc_94E7:				; CODE XREF: RAM:7848j	sub_7C78+8j ...
		STX	loc_94ED+1
		STA	loc_94ED+2
; END OF FUNCTION CHUNK	FOR sub_84CF

loc_94ED:				; DATA XREF: sub_84CF:loc_94E7w
					; sub_84CF+101Bw
		JMP	$FFFF

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_94F0:				; CODE XREF: RAM:7722j
					; sub_88B0:loc_7885p
		LDX	#$F

loc_94F2:				; CODE XREF: sub_94F0+Bj
		LDA	$6494,X
		ORA	#$80 ; 'Ä'
		STA	$6494,X
		DEX
		BPL	loc_94F2
		RTS
; End of function sub_94F0


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_94FE:				; CODE XREF: RAM:loc_883Bp
					; RAM:loc_8886p ...
		LDA	$194D
		AND	#2
		BEQ	loc_9506+1
		SEC

loc_9506:				; CODE XREF: sub_94FE+5j
		BIT	$18
		RTS
; End of function sub_94FE


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9509:				; CODE XREF: sub_88B0:loc_79CAp
					; sub_88B0-EA6p ...
		LDA	$76
		ASL	A
		TAX
		RTS
; End of function sub_9509


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_950E:				; CODE XREF: sub_7B59p	sub_950E+31j
		JSR	$1827
		LDA	#$80 ; 'Ä'
		STA	$25A
		dldi	off_7, byte_AC97
		LDA	$8D
		STA	$96
		JSR	loc_96EA
		dldi	word_232, $00EC
		dldi	off_9, $AA00
		JSR	sub_962B
		BCC	loc_9542
		JSR	sub_961C
		JMP	sub_950E
; ---------------------------------------------------------------------------

loc_9542:				; CODE XREF: sub_950E+2Cj
		LDY	#0
		LDX	off_9+1
		LDA	off_9
		BEQ	loc_954B
		INX

loc_954B:				; CODE XREF: sub_950E+3Aj
		STY	off_62
		STX	off_62+1
		RTS
; End of function sub_950E


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9550:				; CODE XREF: sub_7B59+Bp sub_9550+2Dj
		dldi	off_7, $A8A1
		LDA	byte_AA1D
		STA	$96
		JSR	loc_96EA
		dldi	word_232, $180
		dmv	off_9, off_62
		JSR	sub_962B
		BCC	loc_9580
		JSR	sub_961C
		JSR	$1827
		JMP	sub_9550
; ---------------------------------------------------------------------------

loc_9580:				; CODE XREF: sub_9550+25j
		LDA	#0
		TAX

loc_9583:				; CODE XREF: sub_9550+40j
		STA	$BC00,X
		STA	$BD00,X
		STA	$BE00,X
		STA	$BF00,X
		DEX
		BNE	loc_9583
		LDX	#3

loc_9594:				; CODE XREF: sub_9550+48j
		STA	$D008,X
		DEX
		BPL	loc_9594
		LDA	#$B8 ; '∏'
		STA	$D407
		LDA	#2
		STA	$D01D
		LDA	#$31 ; '1'
		STA	$D01B
		LDY	#0
		STY	$D2
		LDA	(off_62),Y
		STA	byte_9871
		LDA	off_62+1
		STA	byte_9877

loc_95B7:				; CODE XREF: sub_9550+7Bj
		CLC
		LDA	byte_9871,Y
		ADC	#$F0
		STA	byte_9871+1,Y
		LDA	byte_9877,Y
		ADC	#0
		STA	byte_9877+1,Y
		INY
		CPY	#5
		BCC	loc_95B7
		LDA	$194D
		AND	#1
		ORA	$6390
		BNE	loc_95E1
		LDA	#4
		STA	byte_987F
		STA	byte_9880
		BNE	loc_95EE

loc_95E1:				; CODE XREF: sub_9550+85j
		LDY	#2
		LDA	(off_62),Y
		STA	byte_987F
		INY
		LDA	(off_62),Y
		STA	byte_9880

loc_95EE:				; CODE XREF: sub_9550+8Fj
		LDA	#4
		STA	$62
		LDA	#1
		STA	$D3
		LDA	#$FF
		STA	byte_9870
		STA	$22F
		JSR	$1830
		LDA	#3
		STA	$D20F
		LDA	#0
		STA	$D208
		LDX	#$83 ; 'É'
		LDA	byte_AA0C
		BPL	loc_9618
		INX
		CMP	#$81 ; 'Å'
		BCC	loc_9618
		INX

loc_9618:				; CODE XREF: sub_9550+C0j sub_9550+C5j
		STX	$199C
		RTS
; End of function sub_9550


; --------------- S U B	R O U T	I N E ---------------------------------------


sub_961C:				; CODE XREF: sub_950E+2Ep sub_9550+27p
		JSR	$1830
		ldxy	$A6B7
		JSR	sub_8EEF
		JMP	$183C
; End of function sub_961C

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_962B

loc_9629:				; CODE XREF: sub_962B+35j sub_962B+3Aj ...
		SEC
		RTS
; END OF FUNCTION CHUNK	FOR sub_962B

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_962B:				; CODE XREF: sub_950E+29p sub_9550+22p

; FUNCTION CHUNK AT 9629 SIZE 00000002 BYTES

		LDX	$230
		DEX
		TXA
		AND	#3
		TAX
		LDA	$24E,X
		BPL	loc_963D
		LDA	#$31 ; '1'
		STA	$230

loc_963D:				; CODE XREF: sub_962B+Bj
		LDA	#0
		STA	$25B
		LDA	$D7
		ASL	$D6
		ROL	A
		ADC	word_232
		STA	word_232
		BCC	loc_9652
		INC	word_232+1

loc_9652:				; CODE XREF: sub_962B+22j
		LSR	$D6

loc_9654:				; CODE XREF: sub_962B+A3j
		LDA	#4
		STA	$8B

loc_9658:				; CODE XREF: sub_962B+5Aj
		JSR	$1800
		BPL	loc_9689
		BIT	$23D
		BMI	loc_9629
		BIT	$258
		BVC	loc_9629

loc_9667:				; CODE XREF: sub_962B+5Cj
		DEC	$8B
		BEQ	loc_9629
		LDA	#0
		STA	$25B
		INC	$230
		LDA	$230
		CMP	#'5'
		BCC	loc_967F
		LDA	#'1'
		STA	$230

loc_967F:				; CODE XREF: sub_962B+4Dj
		AND	#$F
		TAX
		LDA	$24D,X
		BPL	loc_9658
		BMI	loc_9667

loc_9689:				; CODE XREF: sub_962B+30j
		LDX	#0

loc_968B:				; CODE XREF: sub_962B+68j
		LDA	$100,X
		LSR	A
		ROR	$100,X
		INX
		BPL	loc_968B
		LDX	$D6
		LDY	#0
		LDA	$C
		BNE	loc_96A6
		LDA	$B
		BMI	loc_96A6
		CLC
		ADC	$D6
		BPL	loc_96D2

loc_96A6:				; CODE XREF: sub_962B+70j sub_962B+74j ...
		LDA	$100,X
		STA	(off_9),Y
		INY
		INX
		BPL	loc_96A6
		LDA	#0
		STA	$D6
		TYA
		STA	$96
		CLC
		ADC	off_9
		STA	off_9
		BCC	loc_96BF
		INC	off_9+1

loc_96BF:				; CODE XREF: sub_962B+90j
		LDA	word_B
		SEC
		SBC	$96
		STA	word_B
		LDA	word_B+1
		SBC	#0
		STA	word_B+1
		ORA	word_B
		BNE	loc_9654
		BEQ	loc_96E8

loc_96D2:				; CODE XREF: sub_962B+79j sub_962B+B0j
		LDA	$100,X
		STA	(off_9),Y
		INX
		INY
		CPY	word_B
		BCC	loc_96D2
		LDA	word_B
		CLC
		ADC	off_9
		STA	off_9
		BCC	loc_96E8
		INC	off_9+1

loc_96E8:				; CODE XREF: sub_962B+A5j sub_962B+B9j
		CLC
		RTS
; End of function sub_962B

; ---------------------------------------------------------------------------

loc_96EA:				; CODE XREF: sub_950E+14p sub_9550+Dp
		LDA	#0
		STA	off_D6
		STA	off_D6+1

loc_96F0:				; DATA XREF: sub_84CF:loc_7785w
		STA	$8B

loc_96F2:				; CODE XREF: RAM:970Aj
		LDA	$8B
		CMP	$96
		BEQ	loc_970C
		ASL	A
		TAY
		CLC
		LDA	(off_7),Y
		ADC	off_D6
		STA	off_D6
		INY
		LDA	(off_7),Y
		ADC	off_D6+1
		STA	off_D6+1
		INC	$8B
		BNE	loc_96F2

loc_970C:				; CODE XREF: RAM:96F6j
		ASL	A
		TAY

loc_970E:				; CODE XREF: RAM:972Dj
		LDA	(off_7),Y
		STA	word_B
		INY
		LDA	(off_7),Y
		STA	word_B+1
		ORA	word_B
		BNE	locret_9730
		DEY
		DEY
		DEY
		SEC
		LDA	off_D6
		SBC	(off_7),Y
		STA	off_D6
		INY
		LDA	off_D6+1
		SBC	(off_7),Y
		STA	off_D6+1
		DEY
		JMP	loc_970E
; ---------------------------------------------------------------------------

locret_9730:				; CODE XREF: RAM:9719j
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9731:				; CODE XREF: sub_84CF:loc_776Dp
		JSR	sub_9067

loc_9734:				; CODE XREF: RAM:7749j
					; sub_84CF:loc_7AD2p ...
		LDA	#0
		TAX

loc_9737:				; CODE XREF: sub_9731+13j
		STA	$BC00,X
		STA	$BD00,X
		STA	$BE00,X
		STA	$BF00,X
		DEX
		BPL	loc_9737
		STA	$22F
		STA	$D01D
		LDX	#3

loc_974E:				; CODE XREF: sub_9731+24j
		STA	$D00D,X
		STA	$D000,X
		DEX
		BPL	loc_974E
		RTS
; End of function sub_9731

; ---------------------------------------------------------------------------
		LDA	#$3A ; ':'
		STA	$D400
		LDA	byte_987F
		STA	$D012
		STA	$D014
		LDA	byte_9880
		STA	$D013
		STA	$D015
		CLC
		LDA	byte_987D
		STA	$D000
		STA	$D001
		ADC	#8
		STA	$D002
		STA	$D003
		DEC	$D3
		BEQ	loc_9786
		RTS
; ---------------------------------------------------------------------------

loc_9786:				; CODE XREF: RAM:9783j
		LDA	$D2
		BNE	loc_979A
		BIT	$AC
		BVC	loc_979A
		LDY	#1
		LDA	#0
		STA	off_62
		LDA	(off_62),Y
		STA	off_62
		DEC	$D2

loc_979A:				; CODE XREF: RAM:9788j	RAM:978Cj ...
		LDY	#0
		LDA	(off_62),Y
		BPL	loc_97D8
		AND	#$7F ; ''
		CLC
		ADC	#$5C ; '\'
		STA	byte_987D
		STA	$D000
		STA	$D001
		ADC	#8
		STA	$D002
		STA	$D003
		INY
		LDA	(off_62),Y
		STA	byte_987E
		CLC
		LDA	off_62
		ADC	#2
		STA	off_62
		LDA	#0
		LDX	#$10

loc_97C7:				; CODE XREF: RAM:97D4j
		STA	$BC51,X
		STA	$BD51,X
		STA	$BE51,X
		STA	$BF51,X
		DEX
		BPL	loc_97C7
		BMI	loc_979A

loc_97D8:				; CODE XREF: RAM:979Ej
		CMP	#$40 ; '@'
		BCC	loc_97E3
		INY
		LDA	(off_62),Y
		STA	$62
		BNE	loc_979A

loc_97E3:				; CODE XREF: RAM:97DAj
		TAX
		INY
		LDA	(off_62),Y
		STA	$D3
		LDA	byte_9871,X
		STA	off_D6
		LDA	byte_9877,X
		STA	off_D6+1
		CLC
		LDA	byte_987E
		ADC	#<$BC51
		STA	off_F4
		LDA	#>$BC51
		STA	off_F4+1
		LDX	#4

loc_9801:				; CODE XREF: RAM:9818j
		LDY	#$3B ; ';'

loc_9803:				; CODE XREF: RAM:9808j
		LDA	(off_D6),Y
		STA	(off_F4),Y
		DEY
		BPL	loc_9803
		LDA	$D6
		CLC
		ADC	#$3C ; '<'
		STA	$D6
		BCC	loc_9815
		INC	$D7

loc_9815:				; CODE XREF: RAM:9811j
		INC	$F5
		DEX
		BNE	loc_9801
		LDA	$62
		CLC
		ADC	#2
		STA	$62
		BCC	locret_9825
		INC	$63

locret_9825:				; CODE XREF: RAM:9821j
		RTS

nullsub_1:
		RTS

; --------------- S U B	R O U T	I N E ---------------------------------------


sub_9827:				; CODE XREF: RAM:77ECp
		LDX	#8

loc_9829:				; CODE XREF: sub_9827+22j
		LDY	#$37 ; '7'
		LDA	byte_984C,X
		STA	off_7
		LDA	byte_9855,X
		STA	off_7+1
		LDA	byte_985E,X
		STA	off_9
		LDA	byte_9867,X
		STA	off_9+1
		LDA	#$FF

loc_9841:				; CODE XREF: sub_9827+1Fj
		STA	(off_7),Y
		STA	(off_9),Y
		DEY
		BPL	loc_9841
		DEX
		BPL	loc_9829
		RTS
; End of function sub_9827

; ---------------------------------------------------------------------------

byte_984C:
		.BYTE	<$0818
		.BYTE	<$0958
		.BYTE	<$0A98
		.BYTE	<$0C18
		.BYTE	<$0D58
		.BYTE	<$0E98
		.BYTE	<$1018
		.BYTE	<$1158
		.BYTE	<$1298

byte_9855:
		.BYTE	>$0818
		.BYTE	>$0958
		.BYTE	>$0A98
		.BYTE	>$0C18
		.BYTE	>$0D58
		.BYTE	>$0E98
		.BYTE	>$1018
		.BYTE	>$1158
		.BYTE	>$1298

byte_985E:
		.BYTE	<$08F8
		.BYTE	<$0A38
		.BYTE	<$0B78
		.BYTE	<$0CF8
		.BYTE	<$0E38
		.BYTE	<$0F78
		.BYTE	<$10F8
		.BYTE	<$1238
		.BYTE	<$1378

byte_9867:
		.BYTE	>$08F8
		.BYTE	>$0A38
		.BYTE	>$0B78
		.BYTE	>$0CF8
		.BYTE	>$0E38
		.BYTE	>$0F78
		.BYTE	>$10F8
		.BYTE	>$1238
		.BYTE	>$1378
byte_9870:	.BYTE 0			; DATA XREF: sub_84CF-D52r
					; sub_9550+A8w
byte_9871:	.BYTE 0			; DATA XREF: sub_9550+5Fw
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_9877:	.BYTE 0			; DATA XREF: sub_9550+64w
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_987D:	.BYTE $78		; DATA XREF: RAM:9770r	RAM:97A5w
byte_987E:	.BYTE $B		; DATA XREF: RAM:97B9w	RAM:97F4r
byte_987F:	.BYTE 0			; DATA XREF: sub_9550+89w sub_9550+95w ...
byte_9880:	.BYTE 0			; DATA XREF: sub_9550+8Cw sub_9550+9Bw ...

byte_9881:
		.BYTE $A8
		.BYTE $FF
		.BYTE $A6,  0,	1
		.BYTE $A5
aSurprised:	.BYTE "SURPRISED"
		.BYTE $D
		.BYTE $D
		.BYTE $A5
aNoOptions_:	.BYTE "No options."
		.BYTE $D
		.BYTE $FF
aFood:		.BYTE "food",0
aWater:		.BYTE "water",0
aTorches:	.BYTE "torches",0
aTimepieces:	.BYTE "timepieces",0
aCompasses:	.BYTE "compasses",0
aKeys:		.BYTE "keys",0
aCrystals:	.BYTE "crystals",0
aGems:		.BYTE "gems",0
aJewels:	.BYTE "jewels",0
aGold:		.BYTE "gold",0
aSilver:	.BYTE "silver",0
aCopper:	.BYTE "copper",0
unk_98F5:	.BYTE	<aFood		; DATA XREF: sub_7EA5+5r RAM:8D45r
		.BYTE	<aWater
		.BYTE	<aTorches
		.BYTE	<aTimepieces
		.BYTE	<aCompasses
		.BYTE	<aKeys
		.BYTE	<aCrystals
		.BYTE	<aGems
		.BYTE	<aJewels
		.BYTE	<aGold
		.BYTE	<aSilver
		.BYTE	<aCopper
unk_9901:	.BYTE	>aFood		; DATA XREF: sub_7EA5+Br RAM:8D4Br
		.BYTE	>aWater
		.BYTE	>aTorches
		.BYTE	>aTimepieces
		.BYTE	>aCompasses
		.BYTE	>aKeys
		.BYTE	>aCrystals
		.BYTE	>aGems
		.BYTE	>aJewels
		.BYTE	>aGold
		.BYTE	>aSilver
		.BYTE	>aCopper
		.BYTE $AC ; ¨
		.WORD byte_7665
aIsStunned_:	.BYTE "is stunned."
		.BYTE $D
		.BYTE $FF
aTheLightWizard:.BYTE "The Light Wizards",0
aTheDarkWizards:.BYTE "The Dark Wizards",0
aTheGuildOfOrde:.BYTE "The Guild of Order",0
aTheGuildOfChao:.BYTE "The Guild of Chaos",0
aTheGuildOfLaw:	.BYTE "The Guild of Law",0
aTheThievesGuil:.BYTE "The Thieves Guild",0
aTheGreenWizard:.BYTE "The Green Wizards",0
aTheRedWizards:	.BYTE "The Red Wizards",0
aTheStarWizards:.BYTE "The Star Wizards",0
aTheBlueWizards:.BYTE "The Blue Wizards",0
aThePhysiciansG:.BYTE "The Physicians Guild",0
aTheAssassinsGu:.BYTE "The Assassins Guild",0
aThePaladins:	.BYTE "The Paladins",0
aTheMercenaryGu:.BYTE "The Mercenary Guild",0
aAFriend:	.BYTE "a friend",0
aThePalace:	.BYTE "The Palace",0
		.BYTE $1D
		.BYTE $2F ; /
		.BYTE $40 ; @
		.BYTE $53 ; S
		.BYTE $66 ; f
		.BYTE $77 ; w
		.BYTE $89 ; â
		.BYTE $9B ; õ
		.BYTE $AB ; ´
		.BYTE $BC ; º
		.BYTE $CD ; Õ
		.BYTE $E2 ; ‚
		.BYTE $F6 ; ˆ
		.BYTE	3
		.BYTE $17
		.BYTE $20
		.BYTE $99 ; ô
		.BYTE $99 ; ô
		.BYTE $99 ; ô
		.BYTE $99 ; ô
		.BYTE $99 ; ô
		.BYTE $99 ; ô
		.BYTE $99 ; ô
		.BYTE $99 ; ô
		.BYTE $99 ; ô
		.BYTE $99 ; ô
		.BYTE $99 ; ô
		.BYTE $99 ; ô
		.BYTE $99 ; ô
		.BYTE $9A ; ö
		.BYTE $9A ; ö
		.BYTE $9A ; ö
		.BYTE $A6,  0,	0
		.BYTE $A5
aBattleOptions:	.BYTE "Battle Options"
		.BYTE $D
		MOVEXY	10,2
		.BYTE	"("
		BLINK	"1"
		.BYTE	") Attack"
		MOVEXY	10,3
		.BYTE	"("
		BLINK	"2"
		.BYTE	") Charge"
		MOVEXY	10,4
		.BYTE	"("
		BLINK	"3"
		.BYTE	") Aimed Attack"
		MOVEXY	10,5
		.BYTE	"("
		BLINK	"4"
		.BYTE	") Transact"
		MOVEXY	10,6
		.BYTE	"("
		BLINK	"5"
		.BYTE	") Switch weapon"
		MOVEXY	10,7
		.BYTE	"("
		BLINK	"0"
		.BYTE	") Turn and run!"
		.BYTE $FF
		MOVEXY	0,0
		.BYTE	$A5
		.BYTE	"Transact Options"
		.BYTE	$D
		MOVEXY	15,2
		.BYTE	"("
		BLINK	"1"
		.BYTE	") Offer"
		MOVEXY	15,3
		.BYTE	"("
		BLINK	"2"
		.BYTE	") Bluff"
		MOVEXY	15,4
		.BYTE	"("
		BLINK	"3"
		.BYTE	") Trick"
		MOVEXY	15,5
		.BYTE	"("
		BLINK	"4"
		.BYTE	") Hail"
		MOVEXY	15,6
		.BYTE	"("
		BLINK	"0"
		.BYTE	") Leave"
		.BYTE $FF
		MOVEXY	0,0
		.BYTE	$A5
		.BYTE	"You surprise the "
		.BYTE	$B4
		.WORD	$AA01
		.BYTE	$14
		.BYTE	"."
		.BYTE	$D
		.BYTE	$A5
		.BYTE	"Attempt to:"
		.BYTE	$D
		MOVEXY	10,3
		.BYTE	"("
		BLINK	"1"
		.BYTE	") waylay the "
		.BYTE	$B4
		.WORD	$AA01
		.BYTE	$14
		.BYTE	"."
		MOVEXY	10,4
		.BYTE	"("
		BLINK	"2"
		.BYTE	") snatch something."
		MOVEXY	10,5
		.BYTE	"("
		BLINK	"3"
		.BYTE	") none of these."
		MOVEXY	10,7
		.BYTE	"("
		BLINK	"0"
		.BYTE	") Leave."
		.BYTE	$FF
		.BYTE	"You grab ",0
		MOVEXY	0,2
		.BYTE	$A5
		.BYTE	$B3
		.WORD	$9BAC
		.BYTE	$A
		.BYTE	"nothing of value."
		.BYTE	$D
		.BYTE	$FF
		MOVEXY	0,2	
		.BYTE	$A5
		.BYTE	$B3
		.WORD	$9BAC
		.BYTE	$A
		.BYTE	"some of the"
		.BYTE	$D
		.BYTE	$A5
		.BYTE	$B4
		.WORD	$AA01
		.BYTE	$14
		.BYTE	"'s "
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	$14
		.BYTE	".",$D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"Your trick failed.",$D,$FF
		.BYTE	$AC
		.WORD	$7665
		.BYTE	"isn't going for it.",$D,$FF	
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"Attempt failed.",$D,$FF
		.BYTE	$A3
		.WORD	$9C8A
		.BYTE	$AC
		.WORD	$7653
		.BYTE	"sees you have no"
		.BYTE	$D
		.BYTE	$A5
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	$B
		.BYTE	" and tosses you one saying:"
		.BYTE	$D
		.BYTE	$D
		.BYTE	$A5
		.BYTE	$22,"For the cause "
		.BYTE	$B4
		.WORD	off_76DB
		.BYTE	$A
		.BYTE	".",$22
		.BYTE	$D
		.BYTE	$FF
		dldi	off_76DB, aBrother
		BIT     $633B
		BPL     locret_9CA3
		dldi	off_76DB, aSister
	
locret_9CA3:                            ; CODE XREF: RAM:9C97j
		RTS

aBrother:	.BYTE	"brother",0
aSister:	.BYTE	"sister",0
		
		.BYTE	$AC
		.WORD	$7653
		.BYTE	"breaks the spell.",$D,$FF
		MOVEXY	0,2
		.BYTE	$A5
		.BYTE	"The "
		.BYTE	$B4
		.WORD	$AA01
		.BYTE	$10
		.BYTE	" "
		.BYTE	$AC
		.WORD	$AA42
		.BYTE	".",$D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"You wait for an opening.",$D,$FF
		.BYTE	$AC
		.WORD	$9D0E
		.BYTE	"happily accept.",$D,$FF
		MOVEXY	0,2
		.BYTE	$A5
		.BYTE	"In your inebriated state, you",$D,$A5,$AE
		.BYTE	$AC
		.WORD	$9D0E
		.BYTE	"feel that reasoning with the",$D,$A5
		.BYTE	$B4
		.WORD	$AA01
		.BYTE	$10
		.BYTE	" is the best course.",$D,$FF
		.BYTE	$AC
		.WORD	$7653
		.BYTE	"appears",$D,$A5
		.BYTE	"strengthened by your attack!",$D,$FF
		MOVEXY	0,2
		.BYTE	$A5
		.BYTE	"You are stunned.",$D
		.BYTE	$A3
		.WORD	$9DAF

loc_9DAF:	
		dldi	off_16, $9891
		RTS

		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	$B4
		.WORD	$9E3C
		.BYTE	$19
		.BYTE	" not loaded.",$D,$FF
		.BYTE	$AC
		.WORD	$7665
		.BYTE	$D
		.BYTE	$A5
		.BYTE	"dodges out of the way.",$D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"You dodge the blow.",$D,$FF
		.BYTE	$AC
		.WORD	$9E2D
		.BYTE	$A5
		.BYTE	"is about to break.",$D,$FF
		.BYTE	$AC
		.WORD	$9E2D
		.BYTE	$A5
		.BYTE	"has broken.",$D,$FF
		MOVEXY	0,2	
		.BYTE	$A5
		.BYTE	"Your "
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	$1F
		.BYTE	$D
		.BYTE	$AE
byte_9E3C:	.BYTE 0			; DATA XREF: sub_8D7E+Dw sub_8D7E+2Aw
byte_9E3D:	.BYTE 0			; DATA XREF: sub_8D7E+12w sub_8D7E+34w
off_9E3E:	.WORD	0		; DATA XREF: sub_8D7E+2Dw sub_8D7E+89w ...
		.BYTE	"bare hand",0
		.BYTE	$AC
		.WORD	$7653
		.BYTE	"is knocked down",$D,$A5
		.BYTE	"by the force of your attack.",$D,$FF
		.BYTE	$AC
		.WORD	$7653
		.BYTE	"is staggered",$D
		.BYTE	$AC
		.WORD	$9E5D
		MOVEXY	0,2
		.BYTE	$A3
		.WORD	$9F80
		.BYTE	$A5
		.BYTE	"You "
		.BYTE	$B4
		.WORD	off_9F7E
		.BYTE	$F
		.BYTE	" the "
		.BYTE	$B4
		.WORD	$AA01
		.BYTE	$14
		.BYTE	$D
		.BYTE	$A5
		.BYTE	"with your "
		.BYTE	$B4
		.WORD	$9E3C
		.BYTE	$1E
		.BYTE	$D
		.BYTE	$A3
		.WORD	$9EE5
		.BYTE	$A3
		.WORD	$9EFC
		.BYTE	$A5
		.BYTE	" for "
		.BYTE	$B1
		.WORD	$A7
		.BYTE	6
		.BYTE	".",$D
		.BYTE	$A3
		.WORD	$9F02
		.BYTE	$FF
		.BYTE	$A5
		.BYTE	"which has no effect!",$D,$FF

loc_9EE5:					; DATA XREF: RAM:9EB9o
		dldi	off_16, $9EBB
		LDA	$A7
		ORA	$A8
		BNE	locret_9EFB
		dldi	off_16, $9ECE

locret_9EFB:					; CODE XREF: RAM:9EF1j
		RTS
; ---------------------------------------------------------------------------

loc_9EFC:				; DATA XREF: RAM:9FAEo
		LDA	#$FF
		STA	$18FE
		RTS
; ---------------------------------------------------------------------------
unk_9F02:	LDA	#$00		; DATA XREF: RAM:9FD8o
		STA	$18FE
		RTS
aHack:		.BYTE "hack",0
aPoke:		.BYTE "poke",0
aBash:		.BYTE "bash",0
aSpear:		.BYTE "spear",0
aWhip:		.BYTE "whip",0
aZap:		.BYTE "zap",0
aPunch:		.BYTE "punch",0
aHit:		.BYTE "hit",0
aSlash:		.BYTE "slash",0
aStab:		.BYTE "stab",0
aWallop:	.BYTE "wallop",0
aImpale:	.BYTE "impale",0
aLash:		.BYTE "lash",0
aBlast:		.BYTE "blast",0
aWhomp:		.BYTE "whomp",0
aHit_0:		.BYTE "hit",0
unk_9F5E:	.BYTE	<aHack		; DATA XREF: RAM:loc_9F8Er
		.BYTE	<aPoke
		.BYTE	<aBash
		.BYTE	<aSpear
		.BYTE	<aWhip
		.BYTE	<aZap
		.BYTE	<aPunch
		.BYTE	<aHit
unk_9F66:	.BYTE	>aHack		; DATA XREF: RAM:9F94r
		.BYTE	>aPoke
		.BYTE	>aBash
		.BYTE	>aSpear
		.BYTE	>aWhip
		.BYTE	>aZap
		.BYTE	>aPunch
		.BYTE	>aHit
unk_9F6E:	.BYTE	<aSlash		; DATA XREF: RAM:9FA0r
		.BYTE	<aStab
		.BYTE	<aWallop
		.BYTE	<aImpale
		.BYTE	<aLash
		.BYTE	<aBlast
		.BYTE	<aWhomp
		.BYTE	<aHit_0
unk_9F76:	.BYTE	>aSlash		; DATA XREF: RAM:9FA6r
		.BYTE	>aStab
		.BYTE	>aWallop
		.BYTE	>aImpale
		.BYTE	>aLash
		.BYTE	>aBlast
		.BYTE	>aWhomp
		.BYTE	>aHit_0
off_9F7E:	.WORD	0		; DATA XREF: RAM:8774w	RAM:9F91w ...
; ---------------------------------------------------------------------------
		LDX	#6
		BIT	$639C
		BMI	loc_9F8E
		LDY	#$F
		LDA	(off_64),Y
		AND	#7
		TAX

loc_9F8E:				; CODE XREF: RAM:9F85j
		LDA	unk_9F5E,X
		STA	off_9F7E
		LDA	unk_9F66,X
		STA	off_9F7E+1
		LDA	$9B
		BMI	locret_9FAC
		BEQ	locret_9FAC
		LDA	unk_9F6E,X
		STA	off_9F7E
		LDA	unk_9F76,X
		STA	off_9F7E+1

locret_9FAC:				; CODE XREF: RAM:9F9Cj	RAM:9F9Ej
		RTS
; ---------------------------------------------------------------------------
		.BYTE $A3 ; £
		.WORD loc_9EFC
		.BYTE $A3 ; £
		.WORD loc_9FDD
		.BYTE $A6,  0,	3
		.BYTE $A5
		.BYTE	"The "
		.BYTE $AD
		.WORD off_9FDB
		.BYTE $D
		.BYTE $A5
		.BYTE $B1
		.WORD $A7
		.BYTE 5
aPointsOfDamage:.BYTE " points of damage."
		.BYTE $D
		.BYTE $A3
		.WORD unk_9F02
		.BYTE $FF
off_9FDB:	.WORD	0		; DATA XREF: RAM:9FBCo	RAM:9FDFw ...
; ---------------------------------------------------------------------------

loc_9FDD:				; DATA XREF: RAM:9FB1o
		dldi	off_9FDB, $9FFE
		LDA	byte_AA00
		CMP	#1
		BEQ	locret_9FFD
		LDA	$63E8
		BEQ	locret_9FFD
		dldi	off_9FDB, $A00E

locret_9FFD:				; CODE XREF: RAM:9FECj	RAM:9FF1j
		RTS
; ---------------------------------------------------------------------------
		.BYTE	$B4
		.WORD	$AA01
		.BYTE	$10
aIsHitFor:	.BYTE	" is hit for",$AE
		.BYTE	$B4
		.WORD	$AA03
		.BYTE	$10
		.BYTE	" are hit for",$AE
		.BYTE	"bare hand",0
		.BYTE	$A3
		.WORD	$A04F
		MOVEXY	0,5
		.BYTE	$A9
		.BYTE	$A2
		.BYTE	"You encounter "
aA:		.BYTE	"a"
		.BYTE	$B3
		.WORD	$A0A3
		.BYTE	1
		.BYTE	" "
		.BYTE	$B4
		.WORD	$A04D
		.BYTE	$10
		.BYTE	"."
		.BYTE	$AB
		.BYTE	$D
		.BYTE	$FF
off_A04D:	.WORD	0
loc_A04F:				; DATA XREF: RAM:A02Ao
		dmv	off_A04D, off_AA01
		dmv	loc_A073+1, off_AA01	
		LDA	#'a'
		STA	aA
		LDX	#4
		LDY	#0
		STY	byte_A0A3

loc_A073:				; DATA XREF: RAM:A05Ew
					; RAM:A064w
		LDA	$FFFF
		JSR	$183F

loc_A079:				; CODE XREF: RAM:A084j
		CMP	byte_A0A5,X
		BNE	loc_A083
		LDA	#'n'
		STA	byte_A0A3

loc_A083:				; CODE XREF: RAM:A07Cj
		DEX
		BPL	loc_A079
		LDA	$8A
		CMP	#1
		BEQ	locret_A0A2
		ORA	#$30 ; '0'
		STA	aA
		LDA	#0
		STA	byte_A0A3
		dmv	off_A04D, off_AA03

locret_A0A2:				; CODE XREF: RAM:A08Aj
		RTS

byte_A0A3:	.BYTE	0
		.BYTE	0
byte_A0A5:	.BYTE	"AEIOU"
		.BYTE	$A3
		.WORD	$A04F
		MOVEXY	0,5
		.BYTE	$A2
		.BYTE	"You face"
		.BYTE	$AC
		.WORD	$A03E
		MOVEXY	0,5
		.BYTE	$A9
		.BYTE	$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"Switching to "
		.BYTE	$B4
		.WORD	$9E3C
		.BYTE	$19
		.BYTE	".",$D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"You miss.",$D,$FF
		.BYTE	$AC
		.WORD	$7665
		.BYTE	"skillfully ",$D,$A5
		.BYTE	"deflects your attack.",$D,$FF
		MOVEXY	0,3
		.BYTE	$A3
		.WORD	$A115

loc_A115:				; DATA XREF: RAM:A113o
		dldi	off_16, $A12D
		LDA	byte_AA00
		CMP	#1
		BEQ	locret_A12C
		dldi	off_16, $A14A

locret_A12C:				; CODE XREF: RAM:A122j
		RTS

		.BYTE	$A5
		.BYTE	"The "
		.BYTE	$B4
		.WORD	$AA01
		.BYTE	$10
		.BYTE	" takes your offer.",$D,$FF
		.BYTE	$A5
		.BYTE	"The "
		.BYTE	$B4
		.WORD	$AA03
		.BYTE	$10
		.BYTE	" take your offer.",$D,$FF
		.BYTE	$A3
		.WORD	$A181
		.BYTE	$A5
		.BYTE	"The "
		.BYTE	$B4
		.WORD	$AA01
		.BYTE	$10
		.BYTE	" "
		.BYTE	$AD
		.WORD	$A1A8
		.BYTE	".",$D,$FF
		.BYTE	"The",0
		.BYTE	"One",0

loc_A181:				; DATA XREF: RAM:A167o
		dldi	off_A1A8, $A1AA
		LDA	$78
		BPL	loc_A190
		RTS
; ---------------------------------------------------------------------------

loc_A190:				; CODE XREF: RAM:A18Dj
		BEQ	loc_A19D
		dldi	off_A1A8, $A1C0
		RTS
; ---------------------------------------------------------------------------

loc_A19D:				; CODE XREF: RAM:loc_A190j
		dldi	off_A1A8, $A1D4
		RTS

off_A1A8:	.WORD	0
		.BYTE	"takes the full effect",$AE
		.BYTE	"resists the effects",$AE
		.BYTE	"repels the effects",$AE
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"..."
		.BYTE	$B4
		.WORD	$AA01
		.BYTE	$10
		.BYTE	" is bewildered,",$D,$FF
		.BYTE	$AC
		.WORD	$7665
		.BYTE	"drinks a potion",$D,$A5
		.BYTE	"and is healed.",$D,$FF
		.BYTE	"but it fails!",0
		.BYTE	$AC
		.WORD	$7653
		.BYTE	"casts",$D,$A5
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	$14
		.BYTE	"...",$D,$A5
		.BYTE	$B4
		.WORD	$76DB
		.BYTE	$1E
		.BYTE	$D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"You rise from the ground.",$D,$FF
		.BYTE	$AC
		.WORD	$7665
		.BYTE	"gets up.",$D,$FF
		.BYTE	$AC
		.WORD	$7665
		.BYTE	"misses.",$D,$FF
		.BYTE	$AC
		.WORD	$7665
		.BYTE	"waits",$D,$A5
		.BYTE	"for an opening.",$D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"You feel strengthened from the attack!",$D,$FF
		MOVEXY	0,2
		.BYTE	$A5
		.BYTE	"Your "
		.BYTE	$B4
		.WORD	$70
		.BYTE	$14
		.BYTE	$D
		.BYTE	$A5
		.BYTE	"is weakening.",$D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"Your "
		.BYTE	$B4
		.WORD	$70
		.BYTE	$14
		.BYTE	" has broken.",$D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"You are stunned from the blow.",$D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"You have been knocked down.",$D,$FF
		MOVEXY	0,2
		.BYTE	$AC
		.WORD	$7653
		.BYTE	$B4
		.WORD	$9F7E
		.BYTE	$C
		.BYTE	$D
		.BYTE	$A5
		.BYTE	$B4
		.WORD	$76DB
		.BYTE	$D
		.BYTE	" with "
		.BYTE	$B4
		.WORD	$6C
		.BYTE	$14
		.BYTE	$D
		.BYTE	$A3
		.WORD	$9EE5
aAtYourHead:	.BYTE	"at your head",0
aYou_0:		.BYTE	"you",0
aAtYourArm:	.BYTE	"at your arm",0
aAtYourLegs:	.BYTE	"at your legs",0
		.BYTE	<aAtYourHead
		.BYTE	<aYou_0
		.BYTE	<aAtYourArm
		.BYTE	<aAtYourLegs
		.BYTE	>aAtYourHead
		.BYTE	>aYou_0
		.BYTE	>aAtYourArm
		.BYTE	>aAtYourLegs
		.BYTE	"hacks",0
		.BYTE	"pokes",0
		.BYTE	"bashes",0
		.BYTE	"spears",0
		.BYTE	"whips",0
		.BYTE	"zaps",0
		.BYTE	"punches",0
		.BYTE	"hits",0
		.BYTE	"slashes",0
		.BYTE	"stabs",0
		.BYTE	"smashes",0
		.BYTE	"impales",0
		.BYTE	"lashes",0
		.BYTE	"blasts",0
		.BYTE	"whacks",0
		.BYTE	"hits",0
		.BYTE	"claws",0
		.BYTE	"kicks",0
		.BYTE	"bites",0
		.BYTE	"tears",0
		.BYTE	"chokes",0
		.BYTE	"lashes",0
		.BYTE	"burns",0
		.BYTE	"stings",0
		.BYTE	"rips",0
		.BYTE	"stomps",0
		.BYTE	"gnaws",0
		.BYTE	"rends",0
		.BYTE	"asphyxiates",0
		.BYTE	"wallops",0
		.BYTE	"fries",0
		.BYTE	"stings",0
unk_A471:	.BYTE $9B ; õ		; DATA XREF: RAM:8771r
		.BYTE $A1 ; °
		.BYTE $A7 ; ß
		.BYTE $AE ; Æ
		.BYTE $B5 ; µ
		.BYTE $BB ; ª
		.BYTE $C0 ; ¿
		.BYTE $C8 ; »
		.BYTE $CD ; Õ
		.BYTE $D5 ; ’
		.BYTE $DB ; -
		.BYTE $E3 ; „
		.BYTE $EB ; Î
		.BYTE $F2 ; Ú
		.BYTE $F9 ; ˘
		.BYTE	0
		.BYTE	5
		.BYTE  $B
		.BYTE $11
		.BYTE $17
		.BYTE $1D
		.BYTE $24 ; $
		.BYTE $2B ; +
		.BYTE $31 ; 1
		.BYTE $38 ; 8
		.BYTE $3D ; =
		.BYTE $44 ; D
		.BYTE $4A ; J
		.BYTE $50 ; P
		.BYTE $5C ; \
		.BYTE $64 ; d
		.BYTE $6A ; j
unk_A491:	.BYTE $A3 ; £		; DATA XREF: RAM:8777r
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A3 ; £
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE	2
		.BYTE $A5 ; •
		.BYTE $59 ; Y
		.BYTE $6F ; o
		.BYTE $75 ; u
		.BYTE $20
		.BYTE $62 ; b
		.BYTE $6C ; l
		.BYTE $6F ; o
		.BYTE $63 ; c
		.BYTE $6B ; k
		.BYTE $20
		.BYTE $77 ; w
		.BYTE $69 ; i
		.BYTE $74 ; t
		.BYTE $68 ; h
		.BYTE $20
		.BYTE $79 ; y
		.BYTE $6F ; o
		.BYTE $75 ; u
		.BYTE $72 ; r
		.BYTE  $D
		.BYTE $A5 ; •
		.BYTE $B4 ; ¥
		.BYTE $3E ; >
		.BYTE $9E ; û
		.BYTE $1E
		.BYTE $2E ; .
		.BYTE  $D
		.BYTE $FF
		.BYTE $AC ; ¨
		.BYTE $53 ; S
		.BYTE $76 ; v
		.BYTE $66 ; f
		.BYTE $6C ; l
		.BYTE $65 ; e
		.BYTE $65 ; e
		.BYTE $73 ; s
		.BYTE $21 ; !
		.BYTE  $D
		.BYTE $FF
		.BYTE $AC ; ¨
		.BYTE $53 ; S
		.BYTE $76 ; v
		.BYTE $66 ; f
		.BYTE $6C ; l
		.BYTE $69 ; i
		.BYTE $65 ; e
		.BYTE $73 ; s
		.BYTE $20
		.BYTE $61 ; a
		.BYTE $77 ; w
		.BYTE $61 ; a
		.BYTE $79 ; y
		.BYTE $21 ; !
		.BYTE  $D
		.BYTE $FF
		.BYTE $AC ; ¨
		.BYTE $53 ; S
		.BYTE $76 ; v
		.BYTE $6C ; l
		.BYTE $65 ; e
		.BYTE $61 ; a
		.BYTE $76 ; v
		.BYTE $65 ; e
		.BYTE $73 ; s
		.BYTE $2E ; .
		.BYTE  $D
		.BYTE $FF
		.BYTE $50 ; P
		.BYTE $72 ; r
		.BYTE $6F ; o
		.BYTE $74 ; t
		.BYTE $65 ; e
		.BYTE $63 ; c
		.BYTE $74 ; t
		.BYTE $69 ; i
		.BYTE $6F ; o
		.BYTE $6E ; n
		.BYTE	0
		.BYTE $53 ; S
		.BYTE $74 ; t
		.BYTE $72 ; r
		.BYTE $65 ; e
		.BYTE $6E ; n
		.BYTE $67 ; g
		.BYTE $74 ; t
		.BYTE $68 ; h
		.BYTE	0
		.BYTE $41 ; A
		.BYTE $67 ; g
		.BYTE $69 ; i
		.BYTE $6C ; l
		.BYTE $69 ; i
		.BYTE $74 ; t
		.BYTE $79 ; y
		.BYTE	0
		.BYTE	"Finger of Death",0
		.BYTE $50 ; P
		.BYTE $61 ; a
		.BYTE $72 ; r
		.BYTE $61 ; a
		.BYTE $6C ; l
		.BYTE $79 ; y
		.BYTE $73 ; s
		.BYTE $69 ; i
		.BYTE $73 ; s
		.BYTE	0
		.BYTE	"Fireball",0
		.BYTE $43 ; C
		.BYTE $6F ; o
		.BYTE $6C ; l
		.BYTE $64 ; d
		.BYTE $20
		.BYTE $43 ; C
		.BYTE $6F ; o
		.BYTE $6E ; n
		.BYTE $65 ; e
		.BYTE	0
		.BYTE $4C ; L
		.BYTE $69 ; i
		.BYTE $67 ; g
		.BYTE $68 ; h
		.BYTE $74 ; t
		.BYTE $6E ; n
		.BYTE $69 ; i
		.BYTE $6E ; n
		.BYTE $67 ; g
		.BYTE	0
		.BYTE	"Mind Flail",0
		.BYTE $53 ; S
		.BYTE $75 ; u
		.BYTE $66 ; f
		.BYTE $66 ; f
		.BYTE $6F ; o
		.BYTE $63 ; c
		.BYTE $61 ; a
		.BYTE $74 ; t
		.BYTE $69 ; i
		.BYTE $6F ; o
		.BYTE $6E ; n
		.BYTE	0
		.BYTE $52 ; R
		.BYTE $65 ; e
		.BYTE $70 ; p
		.BYTE $75 ; u
		.BYTE $6C ; l
		.BYTE $73 ; s
		.BYTE $69 ; i
		.BYTE $6F ; o
		.BYTE $6E ; n
		.BYTE	0
		.BYTE $42 ; B
		.BYTE $6C ; l
		.BYTE $69 ; i
		.BYTE $6E ; n
		.BYTE $6B ; k
		.BYTE	0
		.BYTE $F8 ; ¯
		.BYTE	3
		.BYTE  $C
		.BYTE $14
		.BYTE $24 ; $
		.BYTE $2E ; .
		.BYTE $37 ; 7
		.BYTE $41 ; A
		.BYTE $4B ; K
		.BYTE $56 ; V
		.BYTE $62 ; b
		.BYTE $6C ; l
		.BYTE $A4 ; §
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE	2
		.BYTE $A3 ; £
		.BYTE $FC ; ¸
		.BYTE $9E ; û
		.BYTE $A5 ; •
		.BYTE $59 ; Y
		.BYTE $6F ; o
		.BYTE $75 ; u
		.BYTE $20
		.BYTE $B4 ; ¥
		.BYTE $D9 ; Ÿ
		.BYTE $76 ; v
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $74 ; t
		.BYTE $68 ; h
		.BYTE $65 ; e
		.BYTE $20
		.BYTE $73 ; s
		.BYTE $70 ; p
		.BYTE $65 ; e
		.BYTE $6C ; l
		.BYTE $6C ; l
		.BYTE  $D
		.BYTE $A5 ; •
		.BYTE $61 ; a
		.BYTE $6E ; n
		.BYTE $64 ; d
		.BYTE $20
		.BYTE $61 ; a
		.BYTE $72 ; r
		.BYTE $65 ; e
		.BYTE $20
		.BYTE $68 ; h
		.BYTE $69 ; i
		.BYTE $74 ; t
		.BYTE $20
		.BYTE $66 ; f
		.BYTE $6F ; o
		.BYTE $72 ; r
		.BYTE $20
		.BYTE $B1 ; ±
		.BYTE $A7 ; ß
		.BYTE	0
		.BYTE	6
		.BYTE $2E ; .
		.BYTE  $D
		.BYTE $A3 ; £
		.BYTE	2
		.BYTE $9F ; ü
		.BYTE $FF
		.BYTE $72 ; r
		.BYTE $65 ; e
		.BYTE $70 ; p
		.BYTE $65 ; e
		.BYTE $6C ; l
		.BYTE	0
		.BYTE $72 ; r
		.BYTE $65 ; e
		.BYTE $73 ; s
		.BYTE $69 ; i
		.BYTE $73 ; s
		.BYTE $74 ; t
		.BYTE	0
		.BYTE $66 ; f
		.BYTE $61 ; a
		.BYTE $69 ; i
		.BYTE $6C ; l
		.BYTE $20
		.BYTE $74 ; t
		.BYTE $6F ; o
		.BYTE $20
		.BYTE $72 ; r
		.BYTE $65 ; e
		.BYTE $73 ; s
		.BYTE $69 ; i
		.BYTE $73 ; s
		.BYTE $74 ; t
		.BYTE	0
		.BYTE $BF ; ø
		.BYTE $C5 ; ≈
		.BYTE $CC ; Ã
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A5 ; •
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE	3
		.BYTE $A5 ; •
		.BYTE $59 ; Y
		.BYTE $6F ; o
		.BYTE $75 ; u
		.BYTE $72 ; r
		.BYTE $20
		.BYTE $B4 ; ¥
		.BYTE $3C ; <
		.BYTE $9E ; û
		.BYTE $19
		.BYTE $20
		.BYTE $69 ; i
		.BYTE $73 ; s
		.BYTE $20
		.BYTE $68 ; h
		.BYTE $75 ; u
		.BYTE $72 ; r
		.BYTE $6C ; l
		.BYTE $65 ; e
		.BYTE $64 ; d
		.BYTE  $D
		.BYTE $A5 ; •
		.BYTE $66 ; f
		.BYTE $72 ; r
		.BYTE $6F ; o
		.BYTE $6D ; m
		.BYTE $20
		.BYTE $79 ; y
		.BYTE $6F ; o
		.BYTE $75 ; u
		.BYTE $72 ; r
		.BYTE $20
		.BYTE $67 ; g
		.BYTE $72 ; r
		.BYTE $61 ; a
		.BYTE $73 ; s
		.BYTE $70 ; p
		.BYTE $21 ; !
		.BYTE  $D
		.BYTE $FF
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE	3
		.BYTE $A5 ; •
		.BYTE $59 ; Y
		.BYTE $6F ; o
		.BYTE $75 ; u
		.BYTE $20
		.BYTE $B4 ; ¥
		.BYTE $D9 ; Ÿ
		.BYTE $76 ; v
		.BYTE $28 ; (
		.BYTE $20
		.BYTE $69 ; i
		.BYTE $74 ; t
		.BYTE $73 ; s
		.BYTE $20
		.BYTE $70 ; p
		.BYTE $6F ; o
		.BYTE $77 ; w
		.BYTE $65 ; e
		.BYTE $72 ; r
		.BYTE $2E ; .
		.BYTE  $D
		.BYTE $FF
		.BYTE $A3 ; £
		.BYTE $59 ; Y
		.BYTE $A6 ; ¶
		.BYTE $A3 ; £
		.BYTE $A8 ; ®
		.BYTE $A6 ; ¶
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE	2
		.BYTE $A5 ; •
		.BYTE $59 ; Y
		.BYTE $6F ; o
		.BYTE $75 ; u
		.BYTE $20
		.BYTE $65 ; e
		.BYTE $6E ; n
		.BYTE $63 ; c
		.BYTE $6F ; o
		.BYTE $75 ; u
		.BYTE $6E ; n
		.BYTE $74 ; t
		.BYTE $65 ; e
		.BYTE $72 ; r
		.BYTE $20
		.BYTE $B2 ; ≤
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE	1
		.BYTE $20
		.BYTE $B4 ; ¥
		.BYTE $D9 ; Ÿ
		.BYTE $76 ; v
		.BYTE $14
		.BYTE  $D
		.BYTE $A5 ; •
		.BYTE $6F ; o
		.BYTE $66 ; f
		.BYTE $20
		.BYTE $B4 ; ¥
		.BYTE $DD ; ›
		.BYTE $76 ; v
		.BYTE $19
		.BYTE $2E ; .
		.BYTE  $D
		.BYTE  $D
		.BYTE $A5 ; •
		.BYTE $B4 ; ¥
		.BYTE $DB ; -
		.BYTE $76 ; v
		.BYTE $28 ; (
		.BYTE  $D
		.BYTE $FF
		.BYTE $AD ; ≠
		.BYTE	1
		.BYTE $AA ; ™
		.BYTE $8D ; ç
		.BYTE $D9 ; Ÿ
		.BYTE $76 ; v
		.BYTE $AD ; ≠
		.BYTE	2
		.BYTE $AA ; ™
		.BYTE $8D ; ç
		.BYTE $DA ; ⁄
		.BYTE $76 ; v
		.BYTE $AD ; ≠
		.BYTE	0
		.BYTE $AA ; ™
		.BYTE $C9 ; …
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE  $C
		.BYTE $AD ; ≠
		.BYTE	3
		.BYTE $AA ; ™
		.BYTE $8D ; ç
		.BYTE $D9 ; Ÿ
		.BYTE $76 ; v
		.BYTE $AD ; ≠
		.BYTE	4
		.BYTE $AA ; ™
		.BYTE $8D ; ç
		.BYTE $DA ; ⁄
		.BYTE $76 ; v
		.BYTE $60 ; `
		.BYTE	$22,"Die, outcast!",$22,0
		.BYTE	$22,"Hail friend!",$22,0
		.BYTE	$22,"Begone offal!",$22,0
		.BYTE $A6 ; ¶
		.BYTE $A6 ; ¶
		.BYTE $BD ; Ω
		.BYTE $2B ; +
		.BYTE $9A ; ö
		.BYTE $8D ; ç
		.BYTE $DD ; ›
		.BYTE $76 ; v
		.BYTE $BD ; Ω
		.BYTE $3B ; ;
		.BYTE $9A ; ö
		.BYTE $8D ; ç
		.BYTE $DE ; ﬁ
		.BYTE $76 ; v
		.BYTE $60 ; `

byte_A6B7:
		.BYTE	$A3
		.WORD	loc_A6F1
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	$B4
		.WORD	off_76D9
		.BYTE	$27
		.BYTE	$D
		.BYTE	$FF
aCheckDiskIn:	.BYTE	"Check disk in drive "
byte_A6D8:	.BYTE	" "
		.BYTE	".",0
aInsertDisk3:	.BYTE	"Insert Disk 3 Side 1.",0

loc_A6F1:				; DATA XREF: RAM:A6B8o
		dldi	off_76D9, aInsertDisk3
		BIT	$258
		BVS	locret_A715
		dldi	off_76D9, aCheckDiskIn
		SEC
		LDA	$230
		SBC     #'0'
		ORA     #'0'
		STA     byte_A6D8

locret_A715:				; CODE XREF: RAM:A6FEj
		RTS

		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	"You "
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	8
		.BYTE	" escape.",$D,$FF
		.BYTE	"didn't",0
		.BYTE	"can't",0
		.BYTE	$AC
		.WORD	$7665
		.BYTE	"seems uninterested.",$D,$FF
		.BYTE	$AC
		.WORD	$7665
		.BYTE	"mumbles",$D,$A5
		.BYTE	"something unintelligible.",$D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	$22,"Don't tell the peasants how good",$D,$A5
		.BYTE	"the pears are with the cheese!",$22,$D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	$22,"Run! The Devourer comes!",$22,$D,$FF
		MOVEXY	0,3
		.BYTE	$A3
		.WORD	loc_A809
		.BYTE	$A5
		.BYTE	$22,"No good deed ever goes un"
		.BYTE	$B4
		.WORD	$76D9
		.BYTE	$A
		.BYTE	".",$22,$D,$FF

loc_A809:					; DATA XREF: RAM:A7E4o
		dldi	off_76D9, aRewarded
		LDA	byte_AA0C
		BMI	locret_A822
		dldi	off_76D9, aPunished

locret_A822:
		RTS

aRewarded:	.BYTE	"rewarded",0
aPunished:	.BYTE	"punished",0
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	$22,"Prepare, the Apocalypse is soon.",$22,$D,$FF
		MOVEXY	0,3
		.BYTE	$A5
		.BYTE	$22,"Beware of false alarms.",$22,$D,$FF
		.BYTE $51 ; Q
		.BYTE $78 ; x
		.BYTE $C0 ; ¿
		.BYTE $E0 ; ‡
		.BYTE $35 ; 5
		.BYTE $5D ; ]
		.BYTE $A7 ; ß
		.BYTE $A7 ; ß
		.BYTE $A7 ; ß
		.BYTE $A7 ; ß
		.BYTE $A8 ; ®
		.BYTE $A8 ; ®
aCorpse:	.BYTE	"corpse",0
		.BYTE  $B
		.BYTE  $E
		.BYTE	8
byte_A892:	.BYTE 0			; DATA XREF: RAM:77DBw	sub_8EEF+4r ...
byte_A893:	.BYTE 0			; DATA XREF: sub_88B0-FDBw
					; sub_88B0-FC4w
byte_A894:	.BYTE 0			; DATA XREF: sub_88B0-FB8w RAM:791Bw ...
byte_A895:	.BYTE 0			; DATA XREF: sub_9124+C3w sub_9124+D2r ...
byte_A896:	.BYTE 0			; DATA XREF: sub_8F8Ew	sub_8FAA+21r
byte_A897:	.BYTE 0			; DATA XREF: sub_8F8E+3w sub_8FAA+24r
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
byte_A89C:	.BYTE 0			; DATA XREF: RAM:871Cw	RAM:872Dw ...
byte_A89D:	.BYTE 0			; DATA XREF: sub_84CF+Aw
					; sub_88B0:loc_894Ar
byte_A89E:	.BYTE 0			; DATA XREF: sub_88B0:loc_7AACw
					; sub_88B0-DFBr ...
byte_A89F:	.BYTE 0			; DATA XREF: RAM:8975w	RAM:loc_8993r ...
byte_A8A0:	.BYTE 0			; DATA XREF: sub_7B59+40w sub_7B59+48r ...
		.BYTE $DC ; ‹
		.BYTE	2
		.BYTE $EC ; Ï
		.BYTE	1
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $EE ; Ó
		.BYTE	1
		.BYTE $EE ; Ó
		.BYTE	1
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $EE ; Ó
		.BYTE	1
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $E2 ; ‚
		.BYTE	2
		.BYTE $E0 ; ‡
		.BYTE	2
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $C0 ; ¿
		.BYTE	4
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE $E0 ; ‡
		.BYTE	2
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE $E2 ; ‚
		.BYTE	2
		.BYTE $CE ; Œ
		.BYTE	3
		.BYTE	6
		.BYTE	2
		.BYTE	6
		.BYTE	2
		.BYTE $EE ; Ó
		.BYTE	1
		.BYTE $D2 ; “
		.BYTE	3
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $CE ; Œ
		.BYTE	3
		.BYTE $E2 ; ‚
		.BYTE	2
		.BYTE  $A
		.BYTE	1
		.BYTE $D2 ; “
		.BYTE	3
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $B2 ; ≤
		.BYTE	5
		.BYTE $EE ; Ó
		.BYTE	1
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE $DC ; ‹
		.BYTE	2
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $CE ; Œ
		.BYTE	3
		.BYTE $EA ; Í
		.BYTE	1
		.BYTE $EE ; Ó
		.BYTE	1
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $A9 ; ©
		.BYTE $10
		.BYTE $91 ; ë
		.BYTE $62 ; b
		.BYTE $A2 ; ¢
		.BYTE $8F ; è
		.BYTE $A0 ; †
		.BYTE $FB ; ˚
		.BYTE $86 ; Ü
		.BYTE $6D ; m
		.BYTE $84 ; Ñ
		.BYTE $6C ; l
		.BYTE $4C ; L
		.BYTE $B0 ; ∞
		.BYTE $81 ; Å
		.BYTE $60 ; `
		.BYTE $A9 ; ©
		.BYTE $7D ; }
		.BYTE $85 ; Ö
		.BYTE $16
		.BYTE $A9 ; ©
		.BYTE $86 ; Ü
		.BYTE $85 ; Ö
		.BYTE $17
		.BYTE $A6 ; ¶
		.BYTE $66 ; f
		.BYTE $20
		.BYTE $51 ; Q
		.BYTE $18
		.BYTE $A6 ; ¶
		.BYTE $66 ; f
		.BYTE $8E ; é
		.BYTE $33 ; 3
		.BYTE $19
		.BYTE $20
		.BYTE $48 ; H
		.BYTE $18
		.BYTE $68 ; h
		.BYTE $68 ; h
		.BYTE $A9 ; ©
		.BYTE $78 ; x
		.BYTE $85 ; Ö
		.BYTE $69 ; i
		.BYTE $A9 ; ©
		.BYTE $31 ; 1
		.BYTE $85 ; Ö
		.BYTE $68 ; h
		.BYTE $4C ; L
		.BYTE $7A ; z
		.BYTE $78 ; x
		.BYTE $4C ; L
		.BYTE $36 ; 6
		.BYTE $7D ; }
		.BYTE $A6 ; ¶
		.BYTE $67 ; g
		.BYTE $BD ; Ω
		.BYTE $C2 ; ¬
		.BYTE $63 ; c
		.BYTE $10
		.BYTE $D4 ; ‘
		.BYTE $20
		.BYTE $16
		.BYTE $79 ; y
		.BYTE $D0 ; –
		.BYTE $F1 ; Ò
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $B1 ; ±
		.BYTE $62 ; b
		.BYTE $10
		.BYTE $EB ; Î
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $A9 ; ©
		.BYTE $63 ; c
		.BYTE $38 ; 8
		.BYTE $F1 ; Ò
		.BYTE $64 ; d
		.BYTE $D0 ; –
		.BYTE	7
		.BYTE $A2 ; ¢
		.BYTE $84 ; Ñ
		.BYTE $A0 ; †
		.BYTE $ED ; Ì
		.BYTE $4C ; L
		.BYTE $FC ; ¸
		.BYTE $78 ; x
		.BYTE $85 ; Ö
		.BYTE $87 ; á
		.BYTE $A9 ; ©
		.BYTE $D8 ; ÿ
		.BYTE $85 ; Ö
		.BYTE $16
		.BYTE $A9 ; ©
		.BYTE $86 ; Ü
		.BYTE $85 ; Ö
		.BYTE $17
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $86 ; Ü
		.BYTE $A6 ; ¶
		.BYTE $66 ; f
		.BYTE $20
		.BYTE $51 ; Q
		.BYTE $18
		.BYTE $20
		.BYTE $AE ; Æ
		.BYTE $18
		.BYTE $A5 ; •
		.BYTE	2
		.BYTE	5
		.BYTE	3
		.BYTE $F0 ; 
		.BYTE $9C ; ú
		.BYTE $A5 ; •
		.BYTE	3
		.BYTE $F0 ; 
		.BYTE	4
		.BYTE $A9 ; ©
		.BYTE $FF
		.BYTE $85 ; Ö
		.BYTE	2
		.BYTE $A5 ; •
		.BYTE $87 ; á
		.BYTE $C5 ; ≈
		.BYTE	2
		.BYTE $B0 ; ∞
		.BYTE	2
		.BYTE $85 ; Ö
		.BYTE	2
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $79 ; y
		.BYTE $A5 ; •
		.BYTE	2
		.BYTE $85 ; Ö
		.BYTE $71 ; q
		.BYTE $85 ; Ö
		.BYTE $7A ; z
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $C9 ; …
		.BYTE	1
		.BYTE $F0 ; 
		.BYTE	2
		.BYTE $A2 ; ¢
		.BYTE $73 ; s
		.BYTE $8E ; é
		.BYTE $DA ; ⁄
		.BYTE $90 ; ê
		.BYTE $A9 ; ©
		.BYTE $FF
		.BYTE $85 ; Ö
		.BYTE $16
		.BYTE $A9 ; ©
		.BYTE $85 ; Ö
		.BYTE $85 ; Ö
		.BYTE $17
		.BYTE $A6 ; ¶
		.BYTE $66 ; f
		.BYTE $20
		.BYTE $51 ; Q
		.BYTE $18
		.BYTE $A6 ; ¶
		.BYTE $66 ; f
		.BYTE $8E ; é
		.BYTE $33 ; 3
		.BYTE $19
		.BYTE $20
		.BYTE $48 ; H
		.BYTE $18
		.BYTE $A9 ; ©
		.BYTE $37 ; 7
		.BYTE $8D ; ç
		.BYTE $77 ; w
		.BYTE $19
		.BYTE $A9 ; ©
		.BYTE $7E ; ~
		.BYTE $8D ; ç
		.BYTE $78 ; x
		.BYTE $19
		.BYTE $4C ; L
		.BYTE	6
		.BYTE $18
		.BYTE $60 ; `
		.BYTE $A5 ; •
		.BYTE $31 ; 1
		.BYTE $30 ; 0
		.BYTE $EE ; Ó
		.BYTE $20
		.BYTE $3F ; ?
		.BYTE $18
		.BYTE $C9 ; …
		.BYTE $4E ; N
		.BYTE $F0 ; 
		.BYTE $F4 ; Ù
		.BYTE $C9 ; …
		.BYTE $59 ; Y
		.BYTE $D0 ; –
		.BYTE $DB ; -
		.BYTE $A5 ; •
		.BYTE $79 ; y
		.BYTE $85 ; Ö
		.BYTE	3
		.BYTE $A5 ; •
		.BYTE $7A ; z
		.BYTE $85 ; Ö
		.BYTE	2
		.BYTE $20
		.BYTE $17
		.BYTE $7B ; {
		.BYTE $90 ; ê
		.BYTE	3
		.BYTE $4C ; L
		.BYTE $6E ; n
		.BYTE $7D ; }
		.BYTE $20
		.BYTE $16
		.BYTE $79 ; y
		.BYTE $A0 ; †
		.BYTE	2
		.BYTE $A5 ; •
		.BYTE $71 ; q
		.BYTE $18
		.BYTE $71 ; q
		.BYTE $64 ; d
		.BYTE $91 ; ë
		.BYTE $64 ; d
		.BYTE $A2 ; ¢
		.BYTE	0
		.BYTE $38 ; 8
		.BYTE $E9 ; È
		.BYTE  $A
		.BYTE $90 ; ê
		.BYTE	3
		.BYTE $E8 ; Ë
		.BYTE $D0 ; –
		.BYTE $F9 ; ˘
		.BYTE $69 ; i
		.BYTE  $A
		.BYTE $86 ; Ü
		.BYTE $79 ; y
		.BYTE	9
		.BYTE $30 ; 0
		.BYTE $85 ; Ö
		.BYTE $72 ; r
		.BYTE $A0 ; †
		.BYTE	5
		.BYTE $B1 ; ±
		.BYTE $62 ; b
		.BYTE $38 ; 8
		.BYTE $E9 ; È
		.BYTE	3
		.BYTE $A8 ; ®
		.BYTE $A5 ; •
		.BYTE $72 ; r
		.BYTE $91 ; ë
		.BYTE $62 ; b
		.BYTE $88 ; à
byte_AA00:	.BYTE $A9		; CODE XREF: RAM:7804p
					; DATA XREF: RAM:760Fr	...
off_AA01:	.WORD	$85FF		; DATA XREF: sub_8560+7r
off_AA03:	.WORD	$85A6
		.BYTE $AF ; Ø
		.BYTE $AD ; ≠
		.BYTE $59 ; Y
		.BYTE $19
		.BYTE $D0 ; –
		.BYTE  $E
byte_AA0B:	.BYTE $AE		; DATA XREF: sub_852B:loc_8538r
					; sub_852B+1Ar	...
byte_AA0C:	.BYTE $5A		; DATA XREF: sub_7B59+10r sub_7B59+61r ...
byte_AA0D:	.BYTE $19		; DATA XREF: sub_7C9E+7Fr sub_7C9E+82w ...
byte_AA0E:	.BYTE $BD		; DATA XREF: sub_7C9E+33r sub_7C9E+38w ...
byte_AA0F:	.BYTE $53		; DATA XREF: RAM:8095w	RAM:813Dw ...
byte_AA10:	.BYTE $AB		; DATA XREF: RAM:loc_7819r
byte_AA11:	.BYTE $8D		; DATA XREF: sub_7C78r
byte_AA12:	.BYTE $20		; DATA XREF: sub_7C78+3r
off_AA13:	.WORD	$8563		; DATA XREF: RAM:7845r
byte_AA15:	.BYTE $8D		; DATA XREF: sub_7DC6r
byte_AA16:	.BYTE $4C		; DATA XREF: RAM:loc_784Br sub_7DC6+3r
byte_AA17:	.BYTE $32		; DATA XREF: sub_7B59+E4r sub_7B59+EEw ...
byte_AA18:	.BYTE $AB		; DATA XREF: sub_7B59+E7r RAM:8B1Fr
byte_AA19:	.BYTE $AD		; DATA XREF: sub_85DE+3Er
byte_AA1A:	.BYTE $4D		; DATA XREF: sub_85DE+41r
byte_AA1B:	.BYTE $19		; DATA XREF: sub_84CF+13r
byte_AA1C:	.BYTE $29		; DATA XREF: sub_84CF+16r
byte_AA1D:	.BYTE 4			; DATA XREF: sub_9550+8r
byte_AA1E:	.BYTE $F0		; DATA XREF: sub_9100+Ar
byte_AA1F:	.BYTE 5			; DATA XREF: sub_84CF+21r
byte_AA20:	.BYTE $A9		; DATA XREF: sub_88B0-EA3r
					; sub_7DD2+16r	...
byte_AA21:	.BYTE $11		; DATA XREF: sub_88B0-F1Br
					; sub_88B0-F16w ...
byte_AA22:	.BYTE $8D		; DATA XREF: sub_7B59:loc_7BD9r
					; sub_7C9E+54w	...
byte_AA23:	.BYTE $4C		; DATA XREF: sub_7B59+85r sub_7C9E+4Cr ...
byte_AA24:	.BYTE $19		; DATA XREF: sub_88B0-E1Br
					; sub_7C9E+69r
		.BYTE $AE ; Æ
byte_AA26:	.BYTE $4C		; DATA XREF: RAM:86FCr
byte_AA27:	.BYTE $19		; DATA XREF: sub_88B0-E84r
					; sub_7DD2:loc_7DF1r ...
		.BYTE $E0 ; ‡
byte_AA29:	.BYTE $E		; DATA XREF: RAM:8250r	RAM:8267r ...
byte_AA2A:	.BYTE $D0		; DATA XREF: RAM:7863r	RAM:7F23r ...
		.BYTE	5
		.BYTE $A9 ; ©
		.BYTE $FF
		.BYTE $8D ; ç
		.BYTE $20
		.BYTE $63 ; c
		.BYTE $AD ; ≠
		.BYTE $3C ; <
		.BYTE $63 ; c
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE $A2 ; ¢
		.BYTE $10
		.BYTE $AD ; ≠
		.BYTE  $A
		.BYTE $D2 ; “
		.BYTE $C9 ; …
		.BYTE $40 ; @
		.BYTE $B0 ; ∞
		.BYTE $16
		.BYTE $AD ; ≠
		.BYTE $46 ; F
		.BYTE $63 ; c
		.BYTE  $A
		.BYTE $CD ; Õ
		.BYTE $48 ; H
		.BYTE $63 ; c
		.BYTE $B0 ; ∞
		.BYTE  $D
		.BYTE $A9 ; ©
		.BYTE  $F
		.BYTE $D0 ; –
		.BYTE $2F ; /
		.BYTE $C9 ; …
		.BYTE	2
		.BYTE $B0 ; ∞
		.BYTE	5
		.BYTE $AD ; ≠
		.BYTE  $A
		.BYTE $D2 ; “
		.BYTE $30 ; 0
		.BYTE $E1 ; ·
		.BYTE $BD ; Ω
		.BYTE $73 ; s
		.BYTE $AC ; ¨
		.BYTE $85 ; Ö
		.BYTE	7
		.BYTE $BD ; Ω
		.BYTE $85 ; Ö
		.BYTE $AC ; ¨
		.BYTE $85 ; Ö
		.BYTE	8
		.BYTE $AD ; ≠
		.BYTE  $A
		.BYTE $D2 ; “
		.BYTE $85 ; Ö
		.BYTE $96 ; ñ
		.BYTE $A0 ; †
		.BYTE	1
		.BYTE $B1 ; ±
		.BYTE	7
		.BYTE $C5 ; ≈
		.BYTE $96 ; ñ
		.BYTE $B0 ; ∞
		.BYTE	4
		.BYTE $C8 ; »
		.BYTE $C8 ; »
		.BYTE $D0 ; –
		.BYTE $F6 ; ˆ
		.BYTE $88 ; à
		.BYTE $B1 ; ±
		.BYTE	7
		.BYTE $10
		.BYTE	6
		.BYTE $29 ; )
		.BYTE $7F ; 
		.BYTE $AA ; ™
		.BYTE $4C ; L
		.BYTE $55 ; U
		.BYTE $AA ; ™
		.BYTE $85 ; Ö
		.BYTE $8D ; ç
		.BYTE $C9 ; …
		.BYTE  $F
		.BYTE $D0 ; –
		.BYTE  $B
		.BYTE $AD ; ≠
		.BYTE $4F ; O
		.BYTE $75 ; u
		.BYTE $C9 ; …
		.BYTE	4
		.BYTE $90 ; ê
		.BYTE	4
		.BYTE $A9 ; ©
		.BYTE $23 ; #
		.BYTE $85 ; Ö
		.BYTE $8D ; ç
		.BYTE $AD ; ≠
		.BYTE $20
		.BYTE $63 ; c
		.BYTE $30 ; 0
		.BYTE $17
		.BYTE $85 ; Ö
		.BYTE $8D ; ç
		.BYTE $C9 ; …
		.BYTE  $F
		.BYTE $D0 ; –
		.BYTE  $E
		.BYTE $AD ; ≠
		.BYTE $4F ; O
		.BYTE $75 ; u
		.BYTE $C9 ; …
		.BYTE	5
		.BYTE $90 ; ê
		.BYTE	7
		.BYTE $A9 ; ©
		.BYTE $23 ; #
		.BYTE $8D ; ç
		.BYTE $20
		.BYTE $63 ; c
		.BYTE $85 ; Ö
		.BYTE $8D ; ç
		.BYTE $4C ; L
		.BYTE $32 ; 2
		.BYTE $AB ; ´
		.BYTE $A2 ; ¢
		.BYTE $3F ; ?
		.BYTE $A0 ; †
		.BYTE	0
		.BYTE $BD ; Ω
		.BYTE $4B ; K
		.BYTE $64 ; d
		.BYTE $F0 ; 
		.BYTE	1
		.BYTE $C8 ; »
		.BYTE $CA ;  
		.BYTE $10
		.BYTE $F7 ; ˜
		.BYTE $C0 ; ¿
		.BYTE $3A ; :
		.BYTE $B0 ; ∞
		.BYTE  $A
		.BYTE $AD ; ≠
		.BYTE $E5 ; Â
		.BYTE $64 ; d
		.BYTE $C9 ; …
		.BYTE $73 ; s
		.BYTE $B0 ; ∞
		.BYTE	3
		.BYTE $4C ; L
		.BYTE $CD ; Õ
		.BYTE $AA ; ™
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $85 ; Ö
		.BYTE $8D ; ç
		.BYTE $EE ; Ó
		.BYTE $8E ; é
		.BYTE $63 ; c
		.BYTE $4C ; L
		.BYTE $32 ; 2
		.BYTE $AB ; ´
		.BYTE $AD ; ≠
		.BYTE  $A
		.BYTE $D2 ; “
		.BYTE $C9 ; …
		.BYTE $55 ; U
		.BYTE $B0 ; ∞
		.BYTE $5E ; ^
		.BYTE $A5 ; •
		.BYTE $8D ; ç
		.BYTE $C9 ; …
		.BYTE	4
		.BYTE $D0 ; –
		.BYTE $58 ; X
		.BYTE $A2 ; ¢
		.BYTE  $D
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $9D ; ù
		.BYTE $33 ; 3
		.BYTE $AB ; ´
		.BYTE $CA ;  
		.BYTE $10
		.BYTE $FA ; ˙
		.BYTE $A0 ; †
		.BYTE $FF
		.BYTE $A2 ; ¢
		.BYTE  $D
		.BYTE $BD ; Ω
		.BYTE $C2 ; ¬
		.BYTE $63 ; c
		.BYTE $29 ; )
		.BYTE $40 ; @
		.BYTE $F0 ; 
		.BYTE	5
		.BYTE $C8 ; »
		.BYTE $8A ; ä
		.BYTE $99 ; ô
		.BYTE $33 ; 3
		.BYTE $AB ; ´
		.BYTE $CA ;  
		.BYTE $10
		.BYTE $F1 ; Ò
		.BYTE $AD ; ≠
		.BYTE $86 ; Ü
		.BYTE $63 ; c
		.BYTE $C9 ; …
		.BYTE $48 ; H
		.BYTE $B0 ; ∞
		.BYTE	6
		.BYTE $C8 ; »
		.BYTE $A9 ; ©
		.BYTE  $E
		.BYTE $99 ; ô
		.BYTE $33 ; 3
		.BYTE $AB ; ´
		.BYTE $AD ; ≠
		.BYTE $87 ; á
		.BYTE $63 ; c
		.BYTE $C9 ; …
		.BYTE $10
		.BYTE $90 ; ê
		.BYTE	6
		.BYTE $C8 ; »
		.BYTE $99 ; ô
		.BYTE $33 ; 3
		.BYTE $AB ; ´
		.BYTE $A9 ; ©
		.BYTE  $F
		.BYTE $98 ; ò
		.BYTE $30 ; 0
		.BYTE $1E
		.BYTE $20
		.BYTE $99 ; ô
		.BYTE $18
		.BYTE $AA ; ™
		.BYTE $BD ; Ω
		.BYTE $33 ; 3
		.BYTE $AB ; ´
		.BYTE $AA ; ™
		.BYTE $BD ; Ω
		.BYTE $43 ; C
		.BYTE $AB ; ´
		.BYTE $85 ; Ö
		.BYTE $8D ; ç
		.BYTE $86 ; Ü
		.BYTE $AF ; Ø
		.BYTE $BD ; Ω
		.BYTE $2B ; +
		.BYTE $9A ; ö
		.BYTE $8D ; ç
		.BYTE $DD ; ›
		.BYTE $76 ; v
		.BYTE $BD ; Ω
		.BYTE $3B ; ;
		.BYTE $9A ; ö
		.BYTE $8D ; ç
		.BYTE $DE ; ﬁ
		.BYTE $76 ; v
		.BYTE $EE ; Ó
		.BYTE $8E ; é
		.BYTE $63 ; c
		.BYTE $60 ; `
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE  $E
		.BYTE	5
		.BYTE  $E
		.BYTE  $D
		.BYTE  $E
		.BYTE	5
		.BYTE  $E
		.BYTE	5
		.BYTE  $E
		.BYTE  $D
		.BYTE  $E
		.BYTE	5
		.BYTE  $E
		.BYTE $3C ; <
		.BYTE	5
		.BYTE  $B
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE	9
		.BYTE $47 ; G
		.BYTE $3D ; =
		.BYTE	8
		.BYTE $3A ; :
		.BYTE $45 ; E
		.BYTE $2D ; -
		.BYTE $34 ; 4
		.BYTE $1F
		.BYTE $2E ; .
		.BYTE $25 ; %
		.BYTE $27 ; '
		.BYTE $36 ; 6
		.BYTE $3D ; =
		.BYTE $4C ; L
		.BYTE $22 ; "
		.BYTE $28 ; (
		.BYTE $23 ; #
		.BYTE $2B ; +
		.BYTE $34 ; 4
		.BYTE $3A ; :
		.BYTE $4C ; L
		.BYTE $2E ; .
		.BYTE $27 ; '
		.BYTE $3D ; =
		.BYTE	0
		.BYTE $89 ; â
		.BYTE $30 ; 0
		.BYTE $86 ; Ü
		.BYTE $50 ; P
		.BYTE $87 ; á
		.BYTE $60 ; `
		.BYTE $85 ; Ö
		.BYTE $70 ; p
		.BYTE $84 ; Ñ
		.BYTE $80 ; Ä
		.BYTE $8A ; ä
		.BYTE $A0 ; †
		.BYTE $88 ; à
		.BYTE $C0 ; ¿
		.BYTE $81 ; Å
		.BYTE $E0 ; ‡
		.BYTE $8B ; ã
		.BYTE $FF
		.BYTE $2F ; /
		.BYTE $20
		.BYTE $29 ; )
		.BYTE $40 ; @
		.BYTE $2A ; *
		.BYTE $60 ; `
		.BYTE $28 ; (
		.BYTE $80 ; Ä
		.BYTE $2B ; +
		.BYTE $90 ; ê
		.BYTE $2C ; ,
		.BYTE $A0 ; †
		.BYTE $2D ; -
		.BYTE $B0 ; ∞
		.BYTE $2E ; .
		.BYTE $D0 ; –
		.BYTE	8
		.BYTE $E0 ; ‡
		.BYTE $88 ; à
		.BYTE $F0 ; 
		.BYTE $8B ; ã
		.BYTE $FF
		.BYTE $36 ; 6
		.BYTE $40 ; @
		.BYTE	6
		.BYTE $FF
		.BYTE $1D
		.BYTE $40 ; @
		.BYTE	7
		.BYTE $FF
		.BYTE $3F ; ?
		.BYTE $40 ; @
		.BYTE $43 ; C
		.BYTE $80 ; Ä
		.BYTE $44 ; D
		.BYTE $C0 ; ¿
		.BYTE $40 ; @
		.BYTE $FF
		.BYTE $41 ; A
		.BYTE $30 ; 0
		.BYTE $27 ; '
		.BYTE $60 ; `
		.BYTE $30 ; 0
		.BYTE $90 ; ê
		.BYTE $23 ; #
		.BYTE $C0 ; ¿
		.BYTE $34 ; 4
		.BYTE $FF
		.BYTE $1E
		.BYTE $40 ; @
		.BYTE $1F
		.BYTE $80 ; Ä
		.BYTE $82 ; Ç
		.BYTE $C0 ; ¿
		.BYTE $83 ; É
		.BYTE $FF
		.BYTE $31 ; 1
		.BYTE $30 ; 0
		.BYTE $25 ; %
		.BYTE $60 ; `
		.BYTE $23 ; #
		.BYTE $90 ; ê
		.BYTE $35 ; 5
		.BYTE $B0 ; ∞
		.BYTE $3A ; :
		.BYTE $D0 ; –
		.BYTE $45 ; E
		.BYTE $FF
		.BYTE $35 ; 5
		.BYTE $18
		.BYTE $30 ; 0
		.BYTE $30 ; 0
		.BYTE $32 ; 2
		.BYTE $48 ; H
		.BYTE $33 ; 3
		.BYTE $60 ; `
		.BYTE $4B ; K
		.BYTE $78 ; x
		.BYTE $4C ; L
		.BYTE $90 ; ê
		.BYTE $34 ; 4
		.BYTE $A0 ; †
		.BYTE $3D ; =
		.BYTE $B8 ; ∏
		.BYTE $81 ; Å
		.BYTE $E0 ; ‡
		.BYTE $8B ; ã
		.BYTE $FF
		.BYTE $12
		.BYTE $12
		.BYTE $16
		.BYTE $1A
		.BYTE $17
		.BYTE $22 ; "
		.BYTE $1B
		.BYTE $2A ; *
		.BYTE $13
		.BYTE $34 ; 4
		.BYTE  $F
		.BYTE $46 ; F
		.BYTE  $A
		.BYTE $50 ; P
		.BYTE  $D
		.BYTE $5A ; Z
		.BYTE $10
		.BYTE $64 ; d
		.BYTE $22 ; "
		.BYTE $70 ; p
		.BYTE $1C
		.BYTE $80 ; Ä
		.BYTE $18
		.BYTE $8C ; å
		.BYTE $24 ; $
		.BYTE $96 ; ñ
		.BYTE $19
		.BYTE $A0 ; †
		.BYTE $1A
		.BYTE $A8 ; ®
		.BYTE	8
		.BYTE $AE ; Æ
		.BYTE $39 ; 9
		.BYTE $B8 ; ∏
		.BYTE $42 ; B
byte_AC00:	.BYTE $C2		; DATA XREF: sub_84CF-D4Dw
		.BYTE $3B ; ;
		.BYTE $CA ;  
		.BYTE $3E ; >
		.BYTE $D8 ; ÿ
		.BYTE $38 ; 8
		.BYTE $E0 ; ‡
		.BYTE $8B ; ã
		.BYTE $FF
		.BYTE $26 ; &
		.BYTE $20
		.BYTE $2F ; /
		.BYTE $40 ; @
		.BYTE $20
		.BYTE $60 ; `
		.BYTE $21 ; !
		.BYTE $80 ; Ä
		.BYTE $36 ; 6
		.BYTE $90 ; ê
		.BYTE $37 ; 7
		.BYTE $A0 ; †
		.BYTE $22 ; "
		.BYTE $B0 ; ∞
		.BYTE $84 ; Ñ
		.BYTE $D0 ; –
		.BYTE $8B ; ã
		.BYTE $E0 ; ‡
		.BYTE $89 ; â
		.BYTE $F0 ; 
		.BYTE $86 ; Ü
		.BYTE $FF
		.BYTE	1
		.BYTE $30 ; 0
		.BYTE	2
		.BYTE $50 ; P
		.BYTE	3
		.BYTE $70 ; p
		.BYTE $3C ; <
		.BYTE $A0 ; †
		.BYTE $3E ; >
		.BYTE $B0 ; ∞
		.BYTE  $F
		.BYTE $C0 ; ¿
		.BYTE	4
		.BYTE $FF
		.BYTE $3D ; =
		.BYTE $30 ; 0
		.BYTE $40 ; @
		.BYTE $50 ; P
		.BYTE $1F
		.BYTE $60 ; `
		.BYTE $4B ; K
		.BYTE $C0 ; ¿
		.BYTE $89 ; â
		.BYTE $FF
		.BYTE $2B ; +
		.BYTE $80 ; Ä
		.BYTE $2C ; ,
		.BYTE $FF
		.BYTE $14
		.BYTE $40 ; @
		.BYTE $15
		.BYTE $FF
		.BYTE  $A
		.BYTE $D0 ; –
		.BYTE	4
		.BYTE $FF
		.BYTE $2F ; /
		.BYTE $30 ; 0
		.BYTE $26 ; &
		.BYTE $60 ; `
		.BYTE $20
		.BYTE $70 ; p
		.BYTE $21 ; !
		.BYTE $80 ; Ä
		.BYTE  $F
		.BYTE $A0 ; †
		.BYTE $12
		.BYTE $B8 ; ∏
		.BYTE	1
		.BYTE $D0 ; –
		.BYTE $16
		.BYTE $E0 ; ‡
		.BYTE $17
		.BYTE $F0 ; 
		.BYTE $1B
		.BYTE $FF
		.BYTE $12
		.BYTE $20
		.BYTE $16
		.BYTE $30 ; 0
		.BYTE $17
		.BYTE $40 ; @
		.BYTE $1B
		.BYTE $50 ; P
		.BYTE $13
		.BYTE $68 ; h
		.BYTE  $F
		.BYTE $80 ; Ä
		.BYTE  $A
		.BYTE $88 ; à
		.BYTE $10
		.BYTE $98 ; ò
		.BYTE $22 ; "
		.BYTE $A8 ; ®
		.BYTE $1C
		.BYTE $B8 ; ∏
		.BYTE $18
		.BYTE $C8 ; »
		.BYTE $90 ; ê
		.BYTE $E0 ; ‡
		.BYTE $89 ; â
		.BYTE $E8 ; Ë
		.BYTE $8B ; ã
		.BYTE $FF
		.BYTE $73 ; s
		.BYTE $85 ; Ö
		.BYTE $9B ; õ
		.BYTE $9F ; ü
		.BYTE $A3 ; £
		.BYTE $AB ; ´
		.BYTE $B5 ; µ
		.BYTE $BD ; Ω
		.BYTE $C9 ; …
		.BYTE $DD ; ›
		.BYTE	9
		.BYTE $1F
		.BYTE $2D ; -
		.BYTE $37 ; 7
		.BYTE $3B ; ;
		.BYTE $3F ; ?
		.BYTE $43 ; C
		.BYTE $57 ; W
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AB ; ´
		.BYTE $AC ; ¨
		.BYTE $AC ; ¨
		.BYTE $AC ; ¨
		.BYTE $AC ; ¨
		.BYTE $AC ; ¨
		.BYTE $AC ; ¨
		.BYTE $AC ; ¨
		.BYTE $AC ; ¨

byte_AC97:
		.BYTE $46 ; F
		.BYTE	2
		.BYTE $1D
		.BYTE	5
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE	0
		.BYTE $12
		.BYTE	1
		.BYTE $AD ; ≠
		.BYTE	1
		.BYTE $36 ; 6
		.BYTE	1
		.BYTE $9F ; ü
		.BYTE	0
		.BYTE $F7 ; ˜
		.BYTE	0
		.BYTE $F9 ; ˘
		.BYTE	3
		.BYTE	0
		.BYTE	0
		.BYTE $98 ; ò
		.BYTE	0
		.BYTE $D0 ; –
		.BYTE	0
		.BYTE $15
		.BYTE	1
		.BYTE $37 ; 7
		.BYTE	3
		.BYTE $B4 ; ¥
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $D2 ; “
		.BYTE	1
		.BYTE $4B ; K
		.BYTE	1
		.BYTE $B9 ; π
		.BYTE	0
		.BYTE $F8 ; ¯
		.BYTE	0
		.BYTE $C4 ; -
		.BYTE	0
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $B7 ; ∑
		.BYTE	0
		.BYTE $7F ; 
		.BYTE	1
		.BYTE	0
		.BYTE	0
		.BYTE $EF ; Ô
		.BYTE	0
		.BYTE $46 ; F
		.BYTE	1
		.BYTE $B9 ; π
		.BYTE	0
		.BYTE $9C ; ú
		.BYTE	0
		.BYTE $C5 ; ≈
		.BYTE	0
		.BYTE $3E ; >
		.BYTE	1
		.BYTE $E4 ; ‰
		.BYTE	0
		.BYTE $96 ; ñ
		.BYTE	0
		.BYTE $BA ; ∫
		.BYTE	0
		.BYTE $E9 ; È
		.BYTE	0
		.BYTE	1
		.BYTE	1
		.BYTE $D1 ; —
		.BYTE	0
		.BYTE $C1 ; ¡
		.BYTE	0
		.BYTE $BE ; æ
		.BYTE	0
		.BYTE $BC ; º
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE $AB ; ´
		.BYTE	0
		.BYTE $A5 ; •
		.BYTE	0
		.BYTE  $B
		.BYTE	1
		.BYTE $18
		.BYTE	1
		.BYTE $C3 ; √
		.BYTE	0
		.BYTE $D6 ; ÷
		.BYTE	0
		.BYTE $DB ; -
		.BYTE	0
		.BYTE $BE ; æ
		.BYTE	0
		.BYTE $C6 ; ∆
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	1
		.BYTE $B2 ; ≤
		.BYTE	0
		.BYTE $8A ; ä
		.BYTE	0
		.BYTE  $B
		.BYTE	1
		.BYTE $C0 ; ¿
		.BYTE	0
		.BYTE $CD ; Õ
		.BYTE	0
		.BYTE $84 ; Ñ
		.BYTE	0
		.BYTE $87 ; á
		.BYTE	0
		.BYTE $8C ; å
		.BYTE	0
		.BYTE $E2 ; ‚
		.BYTE	0
		.BYTE $A9 ; ©
		.BYTE	0
		.BYTE $76 ; v
		.BYTE	0
		.BYTE $BF ; ø
		.BYTE	0
		.BYTE $BC ; º
		.BYTE	0
		.BYTE	4
		.BYTE	1
		.BYTE $BB ; ª
		.BYTE	0
		.BYTE $A6 ; ¶
		.BYTE	0
		.BYTE $83 ; É
		.BYTE	0
		.BYTE $D3 ; ”
		.BYTE	0
		.BYTE  $E
		.BYTE	2
		.BYTE $D7 ; ◊
		.BYTE	0
		.BYTE $DB ; -
		.BYTE	0
		.BYTE $E5 ; Â
		.BYTE	0
		.BYTE $82 ; Ç
		.BYTE	0
		.BYTE $B4 ; ¥
		.BYTE	0
		.BYTE $A4 ; §
		.BYTE $A4 ; §
		.BYTE $A6,  0,	2
		.BYTE $A5
aYouBlockWithYo:.BYTE "You block with your"
		.BYTE $D
		.BYTE $A5
		.BYTE $B4
		.WORD off_9E3E
		.BYTE $1E
a_:		.BYTE "."
		.BYTE $D
		.BYTE $FF
		.BYTE $AC
		.WORD unk_7653
aFlees:		.BYTE "flees!"
		.BYTE $D
		.BYTE $FF
		.BYTE $AC
		.WORD unk_7653
aFliesAway:	.BYTE "flies away!"
		.BYTE $D
		.BYTE $FF
		.BYTE $AC
		.WORD unk_7653
aLeaves_:	.BYTE "leaves."
		.BYTE $D
		.BYTE $FF
aProtection:	.BYTE "Protection",0
aStrength:	.BYTE "Strength",0
aAgility:	.BYTE "Agility",0
aFingerOfDeath:	.BYTE "Finger of Death",0
aParalysis:	.BYTE "Paralysis",0
aFireball:	.BYTE "Fireball",0
aColdCone:	.BYTE "Cold Cone",0
aLightning:	.BYTE "Lightning",0
aMindFlail:	.BYTE "Mind Flail",0
aSuffocation:	.BYTE "Suffocation",0
aRepulsion:	.BYTE "Repulsion",0
aBlink:		.BYTE "Blink",0
		.BYTE $F8 ; ¯
		.BYTE	3
		.BYTE  $C
		.BYTE $14
		.BYTE $24 ; $
		.BYTE $2E ; .
		.BYTE $37 ; 7
		.BYTE $41 ; A
		.BYTE $4B ; K
		.BYTE $56 ; V
		.BYTE $62 ; b
		.BYTE $6C ; l
; end of 'RAM'


		.END
