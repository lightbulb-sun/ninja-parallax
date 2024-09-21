.DELETE_ON_ERROR:

ASM = hack.asm
HACK = hack.pce
OBJ_FILE = hack.o

AS = wla-huc6280
LD = wlalink
LINKFILE = linkfile

$(HACK): $(LINKFILE) $(OBJ_FILE)
	$(LD) $< $@

$(LINKFILE): $(OBJ_FILE)
	printf "[objects]\n%s" $< > $@

$(OBJ_FILE): $(ASM)
	$(AS) -o $@ $<

.PHONY: all clean test
clean:
	rm -rf $(OBJ_FILE) $(HACK) $(LINKFILE)
