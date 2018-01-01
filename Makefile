-include config.mk

INPUT       = uoam.exe
OUTPUT      = uoamp.exe
LDS         = uoamp.lds
IMPORTS     = 0x31290 240
LDFLAGS     = --image-base=0x1000000 --section-alignment=0x1000 --subsystem=windows

OBJS        = rsrc.o map1.o diff.o version.o

PETOOL     ?= petool
STRIP      ?= strip

all: $(OUTPUT)

rsrc.o: $(INPUT)
	$(PETOOL) re2obj $(INPUT) $@

$(OUTPUT): $(LDS) $(INPUT) $(OBJS)
	$(LD) $(LDFLAGS) -T $(LDS) -o $@ $(OBJS)
ifneq (,$(IMPORTS))
	$(PETOOL) setdd $@ 1 $(IMPORTS) || ($(RM) $@ && exit 1)
endif
	$(PETOOL) patch $@ || ($(RM) $@ && exit 1)
	# $(STRIP) --file-alignment=0x1000 -R .patch $@ || ($(RM) $@ && exit 1)
	$(PETOOL) dump $@

clean:
	$(RM) $(OUTPUT) $(OBJS)
