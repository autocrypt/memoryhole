GENERATOR_SRC = $(wildcard generators/*.py)
GENERATOR_DST = $(patsubst generators/%.py,\
                           generators/output/%.py,\
                           $(GENERATOR_SRC))

EMAILS = $(patsubst generators/%.py,corpus/%.eml,$(GENERATOR_SRC))
DESCS  = $(patsubst generators/%.py,corpus/%.desc,$(GENERATOR_SRC))

GNUPGHOME=corpus/OpenPGP/GNUPGHOME

TARGETS = $(EMAILS) $(DESCS)

default: $(TARGETS)


generators/output/%.py: generators/%.py generators/common/common.py
	@echo Adding common code to generator $(notdir $@)
	@mkdir -p $(dir $@)
	@head -n `grep -ne '# ====== Do not change this line' $< \
                | awk -F : '{print $$1}'` \
                        $<      >  $@
	@cat generators/common/common.py >> $@
	@tail -n +`grep -ne '# ====== Do not change this line' $< \
					| awk -F : '{print $$1}'` \
									$<      >>  $@
	@chmod u+x $@

corpus/%.eml: generators/output/%.py $(GNUPGHOME)
	@echo Generating $@
	@$<  >  $@

corpus/%.desc: generators/output/%.py $(GNUPGHOME) corpus/%.eml
	@echo Structure for $@:
	@$< description  >  $@
	@echo >> $@
	@tools/printmimestructure < $(patsubst %.desc,%.eml,$@) \
		| tee --append $@
	@$<  >  $@

$(GNUPGHOME):
	@echo Generating $@
	@cd $(dir $@) && ./gnupg-import

clean:
	-rm -rf $(TARGETS)
	-rm -rf $(GENERATOR_DST)
	-rm -rf $(GNUPGHOME)

.PHONY: default clean
