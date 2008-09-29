off_0 	= $00
off_7 	= $07
off_9 	= $09
off_D	= $0D
off_10	= $10
off_16	= $16
off_18	= $18
off_1D	= $1D
BLINKFLAG	= $21
off_3D	= $3D
off_41	= $41
off_43	= $43
off_45	= $45
off_47	= $47
off_58	= $58
off_5A	= $5A

off_200 = $0200
off_208	= $0208
off_20A	= $020A
off_20C	= $020C
off_20E	= $020E
off_216	= $0216
off_222	= $0222
off_224	= $0224
word_232 = $0232
off_248 = $0248
off_254	= $0254

SEG_6300	= $6300
SEG_7600	= $7600
SEG_AC00	= $AC00

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

BLINKOFF = $A0
BLINKON = $A1
MOVECURSOR = $A6

.macro MOVEXY arg1, arg2
	.BYTE MOVECURSOR, arg1, arg2
.endmacro

.macro BLINK arg1
	.BYTE BLINKON, arg1, BLINKOFF
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

