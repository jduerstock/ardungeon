
.macro	AtasciiToANTIC	Arg
	.if (Arg<$20)
		.byte (Arg+$40)
	.elseif (Arg<$60)
		.byte (Arg-$20)
	.elseif (Arg<$80)
		.byte Arg
	.elseif (Arg<$A0)
		.byte (Arg+$40)
	.elseif (Arg<$E0)
		.byte Arg-$20
	.else
		.byte Arg
	.endif
.endmacro

.macro  StrAtasciiToANTIC       Arg
	.repeat .strlen(Arg), I
		.scope
			Ch = .strat(Arg, I)
			AtasciiToANTIC Ch
		.endscope
	.endrep
.endmacro


	.MACRO	ldi	arg1, arg2
		LDA	#arg2
		STA	arg1
	.ENDMACRO
;
; double-load immediate
	.MACRO	dldi	arg1, arg2
		LDA	#<arg2
		STA	arg1
		LDA	#>arg2
		STA     arg1+1
        .ENDMACRO

	.MACRO   mv	dest,source
		LDA	source
		STA	dest
	.ENDMACRO

	.MACRO   dmv	dest,source
		LDA	source
		STA	dest
		LDA	source+1
		STA	dest+1
        .ENDMACRO

	.MACRO	ldxy	arg
		LDX     #.HIBYTE(arg)
		LDY     #.LOBYTE(arg)
        .ENDMACRO

	.macro HBStr Arg
		.scope
			Len = .strlen(Arg)-1
			.repeat Len, I
				.BYTE .strat(Arg, I)
			.endrep
			.BYTE .strat(Arg, Len) | $80
		.endscope
	.endmacro

	.macro inc16 Arg
	.scope
		INC	Arg
		BNE	Skip
		INC	Arg+1
	Skip:
	.endscope
	.endmacro

	; nonfunctional

	.macro modstat stat,val
		.scope
		PSize = .ident(.concat(stat,"SIZE"))
		.if (PSize=1)
			.if (val < 0)
				LDX	#(stat & 0xff)
				LDA	#-val
				JSR	j_SUBSTAT1
			.else
				LDX	#(stat & 0xff)
				LDA	#val
				JSR	j_ADDSTAT1
			.endif
		.else
			.if (val < 0)
				LDX	#(stat & 0xff)
				LDA	#-val
				JSR	j_SUBSTAT2
			.else
				LDX	#(stat & 0xff)
				LDA	#val
				JSR	j_ADDSTAT2
			.endif
		.endif
		.endscope
	.endmacro
