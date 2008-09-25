
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
