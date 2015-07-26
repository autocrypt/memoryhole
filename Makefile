GENERATORS = $(wildcard generators/?.py)

EMAILS = $(patsubst generators/%.py,corpus/%.eml,$(GENERATORS))

GNUPGHOME=corpus/OpenPGP/GNUPGHOME

MAILDIR_MAILS = $(patsubst corpus/%.eml,\
                           inboxes/maildir/cur/%.eml,\
                           $(EMAILS))

MBOX_DATE = 2015-01-01 00:00:00-0000

TARGETS = $(MAILDIR_MAILS) inboxes/mbox

default: $(TARGETS)

corpus/%.eml: generators/%.py $(GNUPGHOME)
	$< > $@ 3> corpus/$*.desc

inboxes/maildir/cur/%.eml: corpus/%.eml
	@echo Copying $(notdir $<) to maildir
	@mkdir -p inboxes/maildir/{cur,new,tmp}
	@cp $< $@

inboxes/mbox: $(EMAILS)
	for x in $^; do echo 'From - $(MBOX_DATE)'; cat "$$x"; echo "" ; done >$@

$(GNUPGHOME):
	@echo Generating $@
	@cd $(dir $@) && ./gnupg-import

clean:
	-rm -rf $(MAILDIR_MAILS)
	-rm -rf $(GNUPGHOME)

.PHONY: default clean maildir
