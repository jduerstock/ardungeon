CA=ca65
RM=rm -f
AFLAGS=-g
ASM_SOURCES= \
	s001.asm \
	s002.asm \
	s006.asm \
	s011.asm \
	s016.asm \
	s017.asm \
	s205.asm \
	s225.asm \
	s258.asm s259.asm \
	s311.asm s312.asm \
	s376.asm s377.asm \
	s451.asm s452.asm \
	s466.asm s467.asm \
	s480.asm s481.asm \
	s517.asm s518.asm \
	s676.asm s677.asm \
	s679.asm s680.asm \
	s682.asm

OBJECTS=$(ASM_SOURCES:.asm=.bin)

SUMS=$(ASM_SOURCES:.asm=.sha1)

all: $(OBJECTS)
	sha1sum -c $(SUMS)
	cat s001.bin > ar11.img
	cat s002.bin >> ar11.img
	cat s006.bin >> ar11.img
	cat s011.bin >> ar11.img
	cat s016.bin >> ar11.img
	cat s017.bin >> ar11.img
	cat s205.bin >> ar11.img
	cat s225.bin >> ar11.img
	cat s258.bin s259.bin.crypt >> ar11.img
	cat s311.bin s312.bin.crypt >> ar11.img
	cat s376.bin s377.bin.crypt >> ar11.img
	cat s451.bin s452.bin.crypt >> ar11.img
	cat s466.bin s467.bin.crypt >> ar11.img
	cat s480.bin s481.bin.crypt >> ar11.img
	cat s517.bin s518.bin.crypt >> ar11.img
	cat s676.bin s677.bin.crypt >> ar11.img
	cat s679.bin s680.bin.crypt >> ar11.img
	cat s682.bin >> ar11.img
	sha1sum -c ar11.sha1

%.o: %.asm
	$(CA) $(AFLAGS) $< -o $@

s001.bin:
	cl65 --start-addr 0x0600 -t none s001.asm -o s001.bin

s002.bin:
	cl65 --start-addr 0x1000 -t none s002.asm -o s002.bin

s006.bin:
	cl65 --start-addr 0xbd80 -t none s006.asm -o s006.bin

s011.bin:
	cl65 --start-addr 0xbd80 -t none s011.asm -o s011.bin

s016.bin:
	cl65 --start-addr 0xb000 -t none s016.asm -o s016.bin

s017.bin:
	cl65 --start-addr 0x0600 -t none s017.asm -o s017.bin

s205.bin:
	ca65 -o s205.o s205.asm
	ld65 -o s205.bin -C s205.cfg s205.o

s225.bin:
	cl65 --start-addr 0x1e00 -t none s225.asm -o s225.bin

s258.bin:
	cl65 --start-addr 0x0100 -t none s258.asm -o s258.bin

s259.bin:
	cl65 --start-addr 0x7600 -t none s259.asm -o s259.bin
	./encrypt.php s259.bin 4102001a983277ddd64843acbaf7d040

s311.bin:
	cl65 --start-addr 0x0100 -t none s311.asm -o s311.bin

s312.bin:
	cl65 --start-addr 0x7600 -t none s312.asm -o s312.bin
	./encrypt.php s312.bin 413700204ce23c41cde1a12857f6d83a

s376.bin:
	cl65 --start-addr 0x0100 -t none s376.asm -o s376.bin

s377.bin:
	cl65 --start-addr 0x9800 -t none s377.asm -o s377.bin
	./encrypt.php s377.bin 4178002547123a1dffaaa0d4ac13cc22

s451.bin:
	cl65 --start-addr 0x0100 -t none s451.asm -o s451.bin

s452.bin:
	cl65 --start-addr 0x7600 -t none s452.asm -o s452.bin
	./encrypt.php s452.bin 41c300074f7512e77eb2f1b645eb0dcd

s466.bin:
	cl65 --start-addr 0x0100 -t none s466.asm -o s466.bin

s467.bin:
	cl65 --start-addr 0x7600 -t none s467.asm -o s467.bin
	./encrypt.php s467.bin 41d200064bc5aea0920931376c30af6e

s480.bin:
	cl65 --start-addr 0x0100 -t none s480.asm -o s480.bin

s481.bin:
	cl65 --start-addr 0x6300 -t none s481.asm -o s481.bin
	./encrypt.php s481.bin 41e00012ce2968152c088c20cabc4d9d

s517.bin:
	cl65 --start-addr 0x0100 -t none s517.asm -o s517.bin

s518.bin:
	cl65 --start-addr 0x1400 -t none s518.asm -o s518.bin
	./encrypt.php s518.bin 4205004fd4eeca7c58be41ff111a97bd

s676.bin:
	cl65 --start-addr 0x0100 -t none s676.asm -o s676.bin

s677.bin:
	cl65 --start-addr 0x9000 -t none s677.asm -o s677.bin
	./encrypt.php s677.bin 42a4000198528330ebd15088a888464a

s679.bin:
	cl65 --start-addr 0x0100 -t none s679.asm -o s679.bin

s680.bin:
	cl65 --start-addr 0x9000 -t none s680.asm -o s680.bin
	./encrypt.php s680.bin 42a70001985273ef37bb9374faa9db68

s682.bin:
	cl65 --start-addr 0x1400 -t none s682.asm -o s682.bin

clean:
	$(RM) -f $(OBJECTS) *.*~ *.bin.crypt *.o ar11.img
