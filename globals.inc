off_0 	= $00
off_7 	= $07
off_9 	= $09
word_B	= $0B
off_D	= $0D
byte_F	= $0F
off_10	= $10
off_12	= $12
off_14	= $14
off_16	= $16
off_18	= $18
off_1D	= $1D
BLINKFLAG	= $21
byte_32	= $32
off_3D	= $3D
off_3F	= $3F
off_41	= $41
off_43	= $43
off_45	= $45
off_47	= $47
off_58	= $58
off_5A	= $5A
off_62	= $62
off_64	= $64
off_66	= $66
off_69	= $69
off_F0	= $F0
off_F2	= $F2

off_200 = $0200
off_208	= $0208
off_20A	= $020A
off_20C	= $020C
off_20E	= $020E
off_216	= $0216
off_222	= $0222
off_224	= $0224
byte_230 = $0230
word_232 = $0232
word_234 = $0234
AR_POKMSK = $0236
off_23A = $023A
off_248 = $0248
off_24A = $024A
off_254	= $0254

byte_258 = $0258
byte_25A = $025A

SEG_6300	= $6300
SEG_7600	= $7600
SEG_9000	= $9000
SEG_96F0	= $96F0
SEG_AC00	= $AC00

I_MINUTES	= $6309
I_HOURS		= $630A

I_LOC_X		= $6313
I_LOC_Y		= $6314
I_LOC_Z		= $6315

I_EXPLVL	= $633C
I_CURHP		= $6345
I_MAXHP		= $6347

I_CURSTR	= $6359
I_MAXSTR	= $6360

I_CURINT	= $6361
I_MAXINT	= $6362

I_CURWIS	= $6369
I_MAXWIS	= $636A

I_CURSKL	= $6371
I_MAXSKL	= $6372

I_ALIGN		= $6385
I_MOOD		= $6386
I_MOODSIZE	= 1
byte_638E	= $638E

I_DISEASE	= $6391
I_POISON	= $6392
I_CURSE		= $6393
I_BURDEN	= $6394
I_TEMPER	= $6395
I_DRUNK		= $6397
I_STOMACH	= $6398
I_HUNGER	= $6399
I_THIRST	= $639A
I_ENERGY	= $639B
I_GOLD	= $63B1
I_SILVER	= $63B3
I_COPPER	= $63B5
I_GEMS	= $63B7
I_JEWELS	= $63B9
I_FOOD	= $63BB
I_WATER	= $63BC
I_TORCHES	= $63BD
I_CRYSTALS	= $63BE
I_KEYS	= $63BF
I_COMPASSES	= $63C0
I_TIMEPIECES	= $63C1

INVARRL		= $640B
INVARRH		= $644B
BLINKOFF = $A0
BLINKON = $A1
MOVECURSOR = $A6

.macro MOVEXY arg1, arg2
	.BYTE MOVECURSOR, arg1, arg2
.endmacro

.macro BLINK arg1
	.BYTE BLINKON, arg1, BLINKOFF
.endmacro

.macro	STRJSR Ptr
	.BYTE $A3,.LOBYTE(Ptr),.HIBYTE(Ptr)
.endmacro

.macro PRINTSTRP Ptr, Len
	.BYTE $B4,.LOBYTE(Ptr),.HIBYTE(Ptr),Len
.endmacro

.macro PRINTSTR Ptr, Len
	.BYTE $B3,.LOBYTE(Ptr),.HIBYTE(Ptr),Len
.endmacro

.macro PRINTBYTE Ptr, Len
	.BYTE $B2,.LOBYTE(Ptr),.HIBYTE(Ptr),Len
.endmacro

.macro PRINTWORD Ptr, Len
	.BYTE $B1,.LOBYTE(Ptr),.HIBYTE(Ptr),Len
.endmacro

.macro PRINTDWORD Ptr, Len
	.BYTE $B0,.LOBYTE(Ptr),.HIBYTE(Ptr),Len
.endmacro

.macro STRSUB arg1
	.BYTE $AC,.LOBYTE(arg1),.HIBYTE(arg1)
.endmacro

.MACRO STRRTS
	.BYTE $AE
.endmacro

.macro MenuItem	Num, Choice
	.BYTE	"(",BLINKON,Num,BLINKOFF,") ",Choice
.endmacro
