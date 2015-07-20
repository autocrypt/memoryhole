GENERATORS=$(wildcard ../generators/output/*.py)

EMAILS=$(patsubst ../generators/output/%.py,./%.eml,$(GENERATORS))
DESCRIPTIONS=$(patsubst ../generators/output/%.py,./%.desc,$(GENERATORS))

TARGETS=$(EMAILS) $(DESCRIPTIONS)

GNUPGHOME=OpenPGP/GNUPGHOME


.PHONY: default
default: $(TARGETS)


%.eml: ../generators/output/%.py $(GNUPGHOME)
	@echo Generating $@
	@$<  >  $@

%.desc: ../generators/output/%.py  %.eml $(GNUPGHOME)
	@echo Structure for $@:
	@$< description  >  $@
	@echo >> $@
	@../tools/printmimestructure < $(patsubst %.desc,%.eml,$@) \
		| tee --append $@
	@echo

$(GNUPGHOME):
	@cd $(dir $@) && ./gnupg-import


.PHONY: clean
clean:
	rm $(TARGETS)
