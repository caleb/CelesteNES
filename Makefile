# Copyright (C) 2024 iProgramInCpp

AS = ca65
CC = cc65
LD = ld65

.PHONY: clean

build: main.nes

%.o: src/%.asm
	$(AS) -g --create-dep "$@.dep" --debug-info $< -o $@ --listing "$(notdir $@).lst"

main.nes: layout main.o
	$(LD) --dbgfile $@.dbg -C $^ -o $@ -m $@.map

clean:
	rm -f main.nes *.dep *.o *.dbg

include $(wildcard *.dep)
