#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>/devkitpro")
endif

include $(DEVKITPRO)/devkitA64/base_rules


default_font.bin.o: default_font.bin
	bin2s $< | aarch64-none-elf-as -o $@
	ls -al $@

clean:
	rm default_font.bin.o default_font.bin.s

