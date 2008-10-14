CA=ca65
RM=rm -f
AFLAGS=-g
ASM_SOURCES= \
	11-s001.asm \
	11-s002.asm \
	11-s006.asm \
	11-s011.asm \
	11-s016.asm \
	11-s017.asm \
	11-s205.asm \
	11-s225.asm \
	11-s258.asm 11-s259.asm \
	11-s311.asm 11-s312.asm \
	11-s376.asm 11-s377.asm \
	11-s451.asm 11-s452.asm \
	11-s466.asm 11-s467.asm \
	11-s480.asm 11-s481.asm \
	11-s517.asm 11-s518.asm \
	11-s676.asm 11-s677.asm \
	11-s679.asm 11-s680.asm \
	11-s682.asm \
	21-s001.asm \
	21-s010.asm 21-s011.asm \
	21-s051.asm 21-s052.asm \
	21-s092.asm 21-s093.asm \
	22-s001.asm 22-s002.asm \
	22-s036.asm 22-s037.asm \
	22-s093.asm 22-s094.asm \
	22-s134.asm 22-s135.asm \
	31-s001.asm 31-s002.asm \
	31-s114.asm 31-s115.asm \
	31-s199.asm 31-s200.asm \
	31-s236.asm \
	31-s588.asm \
	31-s589.asm 31-s590.asm \
	31-s604.asm 31-s605.asm \
	31-s671.asm 31-s672.asm \
	31-s682.asm \
	32-s001.asm 32-s002.asm \
	32-s034.asm 32-s035.asm \
	32-s091.asm 32-s092.asm \
	32-s126.asm 32-s127.asm \
	32-s183.asm 32-s184.asm \
	32-s262.asm 32-s263.asm \
	32-s327.asm 32-s328.asm \
	32-s382.asm 32-s383.asm \
	32-s431.asm 32-s432.asm \
	32-s494.asm 32-s495.asm \
	32-s510.asm 32-s511.asm \
	32-s526.asm 32-s527.asm \
	32-s553.asm 32-s554.asm \
	32-s566.asm 32-s567.asm \
	32-s575.asm 32-s576.asm \
	32-s622.asm 32-s623.asm \
	32-s655.asm 32-s656.asm \
	32-s684.asm 32-s685.asm \
	32-s695.asm

OBJECTS=$(ASM_SOURCES:.asm=.bin)

SUMS=$(ASM_SOURCES:.asm=.sha1)

all: $(OBJECTS)
	sha1sum -c $(SUMS)
	cat 11-s001.bin > ar11.img
	cat 11-s002.bin >> ar11.img
	cat 11-s006.bin >> ar11.img
	cat 11-s011.bin >> ar11.img
	cat 11-s016.bin >> ar11.img
	cat 11-s017.bin >> ar11.img
	cat 11-s205.bin >> ar11.img
	cat 11-s225.bin >> ar11.img
	cat 11-s258.bin 11-s259.bin.crypt >> ar11.img
	cat 11-s311.bin 11-s312.bin.crypt >> ar11.img
	cat 11-s376.bin 11-s377.bin.crypt >> ar11.img
	cat 11-s451.bin 11-s452.bin.crypt >> ar11.img
	cat 11-s466.bin 11-s467.bin.crypt >> ar11.img
	cat 11-s480.bin 11-s481.bin.crypt >> ar11.img
	cat 11-s517.bin 11-s518.bin.crypt >> ar11.img
	cat 11-s676.bin 11-s677.bin.crypt >> ar11.img
	cat 11-s679.bin 11-s680.bin.crypt >> ar11.img
	cat 11-s682.bin >> ar11.img
	sha1sum -c ar11.sha1
	cat 31-s001.bin 31-s002.bin.crypt > ar31.img
	cat 31-s114.bin 31-s115.bin.crypt >> ar31.img
	cat 31-s199.bin 31-s200.bin.crypt >> ar31.img 
	cat 31-s236.bin.crypt >> ar31.img
	cat 31-s588.bin >> ar31.img
	cat 31-s589.bin 31-s590.bin.crypt >> ar31.img
	cat 31-s604.bin 31-s605.bin.crypt >> ar31.img
	cat 31-s671.bin 31-s672.bin.crypt >> ar31.img
	cat 31-s682.bin >> ar31.img
	sha1sum -c ar31.sha1
	cat 32-s001.bin 32-s002.bin.crypt > ar32.img
	cat 32-s034.bin 32-s035.bin.crypt >> ar32.img
	cat 32-s091.bin 32-s092.bin.crypt >> ar32.img
	cat 32-s126.bin 32-s127.bin.crypt >> ar32.img
	cat 32-s183.bin 32-s184.bin.crypt >> ar32.img
	cat 32-s262.bin 32-s263.bin.crypt >> ar32.img
	cat 32-s327.bin 32-s328.bin.crypt >> ar32.img
	cat 32-s382.bin 32-s383.bin.crypt >> ar32.img
	cat 32-s431.bin 32-s432.bin.crypt >> ar32.img
	cat 32-s494.bin 32-s495.bin.crypt >> ar32.img
	cat 32-s510.bin 32-s511.bin.crypt >> ar32.img
	cat 32-s526.bin 32-s527.bin.crypt >> ar32.img
	cat 32-s553.bin 32-s554.bin.crypt >> ar32.img
	cat 32-s566.bin 32-s567.bin.crypt >> ar32.img
	cat 32-s575.bin 32-s576.bin.crypt >> ar32.img
	cat 32-s622.bin 32-s623.bin.crypt >> ar32.img
	cat 32-s655.bin 32-s656.bin.crypt >> ar32.img
	cat 32-s684.bin 32-s685.bin.crypt >> ar32.img
	cat 32-s695.bin >> ar32.img

%.o: %.asm
	$(CA) $(AFLAGS) $< -o $@

11-s001.bin: 11-s001.asm
	cl65 --start-addr 0x0600 -t none 11-s001.asm -o 11-s001.bin

11-s002.bin: 11-s002.asm
	cl65 --start-addr 0x1000 -t none 11-s002.asm -o 11-s002.bin

11-s006.bin: 11-s006.asm
	cl65 --start-addr 0xbd80 -t none 11-s006.asm -o 11-s006.bin

11-s011.bin: 11-s011.asm
	cl65 --start-addr 0xbd80 -t none 11-s011.asm -o 11-s011.bin

11-s016.bin: 11-s016.asm
	cl65 --start-addr 0xb000 -t none 11-s016.asm -o 11-s016.bin

11-s017.bin: 11-s017.asm
	cl65 --start-addr 0x0600 -t none 11-s017.asm -o 11-s017.bin

11-s205.bin: 11-s205.asm
	ca65 -o 11-s205.o 11-s205.asm
	ld65 -o 11-s205.bin -C 11-s205.cfg 11-s205.o

11-s225.bin: 11-s225.asm
	cl65 --start-addr 0x1e00 -t none 11-s225.asm -o 11-s225.bin

11-s258.bin: 11-s258.asm
	cl65 --start-addr 0x0100 -t none 11-s258.asm -o 11-s258.bin

11-s259.bin: 11-s259.asm
	cl65 --start-addr 0x7600 -t none 11-s259.asm -o 11-s259.bin
	./encrypt.php 11-s259.bin 4102001a983277ddd64843acbaf7d040

11-s311.bin: 11-s311.asm
	cl65 --start-addr 0x0100 -t none 11-s311.asm -o 11-s311.bin

11-s312.bin: 11-s312.asm
	cl65 --start-addr 0x7600 -t none 11-s312.asm -o 11-s312.bin
	./encrypt.php 11-s312.bin 413700204ce23c41cde1a12857f6d83a

11-s376.bin: 11-s376.asm
	cl65 --start-addr 0x0100 -t none 11-s376.asm -o 11-s376.bin

11-s377.bin: 11-s377.asm
	cl65 --start-addr 0x9800 -t none 11-s377.asm -o 11-s377.bin
	./encrypt.php 11-s377.bin 4178002547123a1dffaaa0d4ac13cc22

11-s451.bin: 11-s451.asm
	cl65 --start-addr 0x0100 -t none 11-s451.asm -o 11-s451.bin

11-s452.bin: 11-s452.asm
	cl65 --start-addr 0x7600 -t none 11-s452.asm -o 11-s452.bin
	./encrypt.php 11-s452.bin 41c300074f7512e77eb2f1b645eb0dcd

11-s466.bin: 11-s466.asm
	cl65 --start-addr 0x0100 -t none 11-s466.asm -o 11-s466.bin

11-s467.bin: 11-s467.asm
	cl65 --start-addr 0x7600 -t none 11-s467.asm -o 11-s467.bin
	./encrypt.php 11-s467.bin 41d200064bc5aea0920931376c30af6e

11-s480.bin: 11-s480.asm
	cl65 --start-addr 0x0100 -t none 11-s480.asm -o 11-s480.bin

11-s481.bin: 11-s481.asm
	cl65 --start-addr 0x6300 -t none 11-s481.asm -o 11-s481.bin
	./encrypt.php 11-s481.bin 41e00012ce2968152c088c20cabc4d9d

11-s517.bin: 11-s517.asm
	cl65 --start-addr 0x0100 -t none 11-s517.asm -o 11-s517.bin

11-s518.bin: 11-s518.asm
	cl65 --start-addr 0x1400 -t none 11-s518.asm -o 11-s518.bin
	./encrypt.php 11-s518.bin 4205004fd4eeca7c58be41ff111a97bd

11-s676.bin: 11-s676.asm
	cl65 --start-addr 0x0100 -t none 11-s676.asm -o 11-s676.bin

11-s677.bin: 11-s677.asm
	cl65 --start-addr 0x9000 -t none 11-s677.asm -o 11-s677.bin
	./encrypt.php 11-s677.bin 42a4000198528330ebd15088a888464a

11-s679.bin: 11-s679.asm
	cl65 --start-addr 0x0100 -t none 11-s679.asm -o 11-s679.bin

11-s680.bin: 11-s680.asm
	cl65 --start-addr 0x9000 -t none 11-s680.asm -o 11-s680.bin
	./encrypt.php 11-s680.bin 42a70001985273ef37bb9374faa9db68

11-s682.bin: 11-s682.asm
	cl65 --start-addr 0x1400 -t none 11-s682.asm -o 11-s682.bin

21-s001.bin: 21-s001.asm
	ca65 -o 21-s001.o 21-s001.asm
	ld65 -o 21-s001.bin -C 21-s001.cfg 21-s001.o

21-s010.bin: 21-s010.asm
	cl65 --start-addr 0x0100 -t none 21-s010.asm -o 21-s010.bin

21-s011.bin: 21-s011.asm
	cl65 --start-addr 0xAC00 -t none 21-s011.asm -o 21-s011.bin
	./encrypt.php 21-s011.bin 480a00140701d7aad31a3267b2a36fe6

21-s051.bin: 21-s051.asm
	cl65 --start-addr 0x0100 -t none 21-s051.asm -o 21-s051.bin

21-s052.bin: 21-s052.asm
	cl65 --start-addr 0xAC00 -t none 21-s052.asm -o 21-s052.bin
	./encrypt.php 21-s052.bin 4833001465901386ea070ccfc955bdf0

21-s092.bin: 21-s092.asm
	cl65 --start-addr 0x0100 -t none 21-s092.asm -o 21-s092.bin

21-s093.bin: 21-s093.asm
	cl65 --start-addr 0xAC00 -t none 21-s093.asm -o 21-s093.bin
	./encrypt.php 21-s093.bin 485c001408c35769c3630e0a201cbeaa

22-s001.bin: 22-s001.asm
	cl65 --start-addr 0x0100 -t none 22-s001.asm -o 22-s001.bin

22-s002.bin: 22-s002.asm
	cl65 --start-addr 0x7600 -t none 22-s002.asm -o 22-s002.bin
	./encrypt.php 22-s002.bin 4c01001186504a5424a90c7d0039d1a8

22-s036.bin: 22-s036.asm
	cl65 --start-addr 0x0100 -t none 22-s036.asm -o 22-s036.bin

22-s037.bin: 22-s037.asm
	cl65 --start-addr 0x7600 -t none 22-s037.asm -o 22-s037.bin
	./encrypt.php 22-s037.bin 4c24001c27979f0b09df260581395d49

22-s093.bin: 22-s093.asm
	cl65 --start-addr 0x0100 -t none 22-s093.asm -o 22-s093.bin

22-s094.bin: 22-s094.asm
	cl65 --start-addr 0x7600 -t none 22-s094.asm -o 22-s094.bin
	./encrypt.php 22-s094.bin 4c5d001478244b84acdb1b20c6310ae9

22-s134.bin: 22-s134.asm
	cl65 --start-addr 0x0100 -t none 22-s134.asm -o 22-s134.bin

22-s135.bin: 22-s135.asm
	cl65 --start-addr 0x7600 -t none 22-s135.asm -o 22-s135.bin
	./encrypt.php 22-s135.bin 4c8600109d95bd998fe6e377a3ba21ca

31-s001.bin: 31-s001.asm
	cl65 --start-addr 0x0100 -t none 31-s001.asm -o 31-s001.bin

31-s002.bin: 31-s002.asm
	cl65 --start-addr 0x7600 -t none 31-s002.asm -o 31-s002.bin
	./encrypt.php 31-s002.bin 5001003897e7837b8138bbe947bdc804

31-s114.bin: 31-s114.asm
	cl65 --start-addr 0x0100 -t none 31-s114.asm -o 31-s114.bin

31-s115.bin: 31-s115.asm
	cl65 --start-addr 0x7600 -t none 31-s115.asm -o 31-s115.bin
	./encrypt.php 31-s115.bin 5072002ab373dd0bb46538f8f006a515

31-s199.bin: 31-s199.asm
	cl65 --start-addr 0x0100 -t none 31-s199.asm -o 31-s199.bin

31-s200.bin: 31-s200.asm
	cl65 --start-addr 0x7600 -t none 31-s200.asm -o 31-s200.bin
	./encrypt.php 31-s200.bin 50c70012858d6deaeda0885b036337d8

31-s236.bin: 31-s236.asm
	cl65 --start-addr 0x0100 -t none 31-s236.asm -o 31-s236.bin
	./encrypt.php 31-s236.bin 00000000000000000000000000000000

31-s588.bin: 31-s588.asm
	cl65 --start-addr 0x1400 -t none 31-s588.asm -o 31-s588.bin

31-s589.bin: 31-s589.asm
	cl65 --start-addr 0x0100 -t none 31-s589.asm -o 31-s589.bin

31-s590.bin: 31-s590.asm
	cl65 --start-addr 0x7600 -t none 31-s590.asm -o 31-s590.bin
	./encrypt.php 31-s590.bin 524d00074f752ca80d01c68231b9a298

31-s604.bin: 31-s604.asm
	cl65 --start-addr 0x0100 -t none 31-s604.asm -o 31-s604.bin

31-s605.bin: 31-s605.asm
	cl65 --start-addr 0x7600 -t none 31-s605.asm -o 31-s605.bin
	./encrypt.php 31-s605.bin 525cf020b96d3e0fea81bd265e2a247b

31-s671.bin: 31-s671.asm
	cl65 --start-addr 0x0100 -t none 31-s671.asm -o 31-s671.bin

31-s672.bin: 31-s672.asm
	cl65 --start-addr 0x96f0 -t none 31-s672.asm -o 31-s672.bin
	./encrypt.php 31-s672.bin 529f0005669d88b13ed148e210e57f83

31-s682.bin: 31-s682.asm
	cl65 --start-addr 0x1400 -t none 31-s682.asm -o 31-s682.bin

32-s001.bin: 32-s001.asm
	cl65 --start-addr 0x0100 -t none 32-s001.asm -o 32-s001.bin

32-s002.bin: 32-s002.asm
	cl65 --start-addr 0x7600 -t none 32-s002.asm -o 32-s002.bin
	./encrypt.php 32-s002.bin 54010010a05fd0547bd9ae31b386849c

32-s034.bin: 32-s034.asm
	cl65 --start-addr 0x0100 -t none 32-s034.asm -o 32-s034.bin

32-s035.bin: 32-s035.asm
	cl65 --start-addr 0x7600 -t none 32-s035.asm -o 32-s035.bin
	./encrypt.php 32-s035.bin 5422001cc443275ea2a1a8a800a5da1e

32-s091.bin: 32-s091.asm
	cl65 --start-addr 0x0100 -t none 32-s091.asm -o 32-s091.bin

32-s092.bin: 32-s092.asm
	cl65 --start-addr 0x7600 -t none 32-s092.asm -o 32-s092.bin
	./encrypt.php 32-s092.bin 545b00112026f08728733f4de9dceb2c

32-s126.bin: 32-s126.asm
	cl65 --start-addr 0x0100 -t none 32-s126.asm -o 32-s126.bin

32-s127.bin: 32-s127.asm
	cl65 --start-addr 0x7600 -t none 32-s127.asm -o 32-s127.bin
	./encrypt.php 32-s127.bin 547e001cd04061c7b2e9e2a38787b592

32-s183.bin: 32-s183.asm
	cl65 --start-addr 0x0100 -t none 32-s183.asm -o 32-s183.bin

32-s184.bin: 32-s184.asm
	cl65 --start-addr 0x7600 -t none 32-s184.asm -o 32-s184.bin
	./encrypt.php 32-s184.bin 54b70027140ebef8a25661c5160a2805

32-s262.bin: 32-s262.asm
	cl65 --start-addr 0x0100 -t none 32-s262.asm -o 32-s262.bin

32-s263.bin: 32-s263.asm
	cl65 --start-addr 0x7600 -t none 32-s263.asm -o 32-s263.bin
	./encrypt.php 32-s263.bin 550600204b948601bd9f8bbeccff9b70

32-s327.bin: 32-s327.asm
	cl65 --start-addr 0x0100 -t none 32-s327.asm -o 32-s327.bin

32-s328.bin: 32-s328.asm
	cl65 --start-addr 0x7600 -t none 32-s328.asm -o 32-s328.bin
	./encrypt.php 32-s328.bin 5547001b9df7abe47b3c558d4a969e51

32-s382.bin: 32-s382.asm
	cl65 --start-addr 0x0100 -t none 32-s382.asm -o 32-s382.bin

32-s383.bin: 32-s383.asm
	cl65 --start-addr 0x7600 -t none 32-s383.asm -o 32-s383.bin
	./encrypt.php 32-s383.bin 557e0018f5430fe6e47fe06607cbbcb2

32-s431.bin: 32-s431.asm
	cl65 --start-addr 0x0100 -t none 32-s431.asm -o 32-s431.bin

32-s432.bin: 32-s432.asm
	cl65 --start-addr 0x7600 -t none 32-s432.asm -o 32-s432.bin
	./encrypt.php 32-s432.bin 55af001f7b462cdfe12dfa0facb0bd3e

32-s494.bin: 32-s494.asm
	cl65 --start-addr 0x0100 -t none 32-s494.asm -o 32-s494.bin

32-s495.bin: 32-s495.asm
	cl65 --start-addr 0x96F0 -t none 32-s495.asm -o 32-s495.bin
	./encrypt.php 32-s495.bin 55ee800795b90cbc9502b50cdb7e93d2

32-s510.bin: 32-s510.asm
	cl65 --start-addr 0x0100 -t none 32-s510.asm -o 32-s510.bin

32-s511.bin: 32-s511.asm
	cl65 --start-addr 0x890B -t none 32-s511.asm -o 32-s511.bin
	./encrypt.php 32-s511.bin 55fe800714cfcd4f32c02942e0be7cc1

32-s526.bin: 32-s526.asm
	cl65 --start-addr 0x0100 -t none 32-s526.asm -o 32-s526.bin

32-s527.bin: 32-s527.asm
	cl65 --start-addr 0x8A00 -t none 32-s527.asm -o 32-s527.bin
	./encrypt.php 32-s527.bin 560e000df6e170d349d75895b4c8857a

32-s553.bin: 32-s553.asm
	cl65 --start-addr 0x0100 -t none 32-s553.asm -o 32-s553.bin

32-s554.bin: 32-s554.asm
	cl65 --start-addr 0x8A00 -t none 32-s554.asm -o 32-s554.bin
	./encrypt.php 32-s554.bin 56290006753cd7db9ee05661f2768f85

32-s566.bin: 32-s566.asm
	cl65 --start-addr 0x0100 -t none 32-s566.asm -o 32-s566.bin

32-s567.bin: 32-s567.asm
	cl65 --start-addr 0x8A00 -t none 32-s567.asm -o 32-s567.bin
	./encrypt.php 32-s567.bin 56360004a2ce1f783637657983d63b83

32-s575.bin: 32-s575.asm
	cl65 --start-addr 0x0100 -t none 32-s575.asm -o 32-s575.bin

32-s576.bin: 32-s576.asm
	cl65 --start-addr 0x9EF0 -t none 32-s576.asm -o 32-s576.bin
	./encrypt.php 32-s576.bin 563f0017b55e3818cc9f5161e346851b

32-s622.bin: 32-s622.asm
	cl65 --start-addr 0x0100 -t none 32-s622.asm -o 32-s622.bin

32-s623.bin: 32-s623.asm
	cl65 --start-addr 0x9FF0 -t none 32-s623.asm -o 32-s623.bin
	./encrypt.php 32-s623.bin 566e00102139428c5333f472a9792e0d

32-s655.bin: 32-s655.asm
	cl65 --start-addr 0x0100 -t none 32-s655.asm -o 32-s655.bin

32-s656.bin: 32-s656.asm
	cl65 --start-addr 0x9FF0 -t none 32-s656.asm -o 32-s656.bin
	./encrypt.php 32-s656.bin 568f000ef9b4d14b437b2e8928108dd7

32-s684.bin: 32-s684.asm
	cl65 --start-addr 0x0100 -t none 32-s684.asm -o 32-s684.bin

32-s685.bin: 32-s685.asm
	cl65 --start-addr 0x96F0 -t none 32-s685.asm -o 32-s685.bin
	./encrypt.php 32-s685.bin 56ac00056a9ea390ed15fd6cb04c2891

32-s695.bin: 32-s695.asm
	cl65 --start-addr 0x1000 -t none 32-s695.asm -o 32-s695.bin

clean:
	$(RM) -f $(OBJECTS) *.*~ *.bin.crypt *.o ar11.img ar31.img ar32.img
