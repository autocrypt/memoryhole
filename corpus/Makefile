GENERATORS=$(wildcard ../generators/*.py)

EMAILS=$(patsubst ../generators/%.py,./%.eml,$(GENERATORS))
DESCRIPTIONS=$(patsubst ../generators/%.py,./%.desc,$(GENERATORS))

TARGETS=$(EMAILS) $(DESCRIPTIONS)

GNUPGHOME=OpenPGP/GNUPGHOME


.PHONY: default
default: $(TARGETS)


%.eml: ../generators/%.py $(GNUPGHOME)
	@echo Generating $@
	@$<  >  $@

%.desc: ../generators/%.py  %.eml $(GNUPGHOME)
	@echo Generating $@
	@$< description  >  $@
	@echo >> $@
	@../tools/printmimestructure < $(patsubst %.desc,%.eml,$@) >> $@

$(GNUPGHOME):
	@cd $(dir $@) && ./gnupg-import


.PHONY: clean
clean:
	rm $(TARGETS)
