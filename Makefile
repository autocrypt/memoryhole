GENERATOR_SRC = $(wildcard generators/*.py)
GENERATOR_DST = $(patsubst generators/%.py,\
                           generators/output/%.py,\
                           $(GENERATOR_SRC))

EMAILS = $(patsubst generators/%.py,corpus/%.eml,$(GENERATOR_SRC))
DESCS  = $(patsubst generators/%.py,corpus/%.desc,$(GENERATOR_SRC))

GNUPGHOME=corpus/OpenPGP/GNUPGHOME

MAILDIR_MAILS = $(patsubst corpus/%.eml,\
                           inboxes/maildir/cur/%.eml,\
                           $(EMAILS))

TARGETS = $(EMAILS) $(MAILDIR_MAILS) $(DESCS)

default: $(TARGETS)


generators/output/%.py: generators/%.py generators/common/common.py
	@echo Adding common code to generator $(notdir $@)
	@mkdir -p $(dir $@)
	@head -n `grep -ne '# ====== Do not change this line' $< \
	  | awk -F : '{print $$1}'`  $< > $@
	@cat generators/common/common.py >> $@
	@tail -n +`grep -ne '# ====== Do not change this line' $< \
	  | awk -F : '{print $$1}'`  $< >> $@
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

inboxes/maildir/cur/%.eml: corpus/%.eml maildir
	@echo Copying $(notdir $<) to maildir
	@cp $< $@

maildir:
	@mkdir -p inboxes/maildir/{cur,new,tmp}

$(GNUPGHOME):
	@echo Generating $@
	@cd $(dir $@) && ./gnupg-import

clean:
	-rm -rf $(TARGETS)
	-rm -rf $(GENERATOR_DST)
	-rm -rf $(GNUPGHOME)

.PHONY: default clean maildir
