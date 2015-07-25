GENERATORS = $(wildcard generators/?.py)

EMAILS = $(patsubst generators/%.py,corpus/%.eml,$(GENERATORS))

GNUPGHOME=corpus/OpenPGP/GNUPGHOME

MAILDIR_MAILS = $(patsubst corpus/%.eml,\
                           inboxes/maildir/cur/%.eml,\
                           $(EMAILS))

TARGETS = $(EMAILS) $(MAILDIR_MAILS)

default: $(TARGETS)

corpus/%.eml: generators/%.py $(GNUPGHOME)
	$< > $@ 3> corpus/$*.desc

inboxes/maildir/cur/%.eml: corpus/%.eml
	@echo Copying $(notdir $<) to maildir
	@mkdir -p inboxes/maildir/{cur,new,tmp}
	@cp $< $@

$(GNUPGHOME):
	@echo Generating $@
	@cd $(dir $@) && ./gnupg-import

clean:
	-rm -rf $(MAILDIR_MAILS)
	-rm -rf $(GNUPGHOME)

.PHONY: default clean maildir
