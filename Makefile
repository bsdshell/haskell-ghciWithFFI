GHC_OPT := -Wall -O2 

# Wed  1 May 21:59:06 2024 
# ghc-9.8.2 does notwork
GHC = $(HOME)/.stack/programs/x86_64-osx/ghc-8.10.3/bin/ghc

all: ffiso

test: ffiso
	./$<

ffiso: FFISo.hs c.c
	$(GHC) --make $(GHC_OPT) $^ -o $@

clean:
	rm -rf *.hi *.o ffiso *_stub.*


ghci0: ffiso
	echo main | ghci FFISo.hs

ghci1: ffiso
	echo main | ghci FFISo.hs c.o

ghci2: ffiso
	echo main | ghci FFISo.hs c.o FFISo.o
