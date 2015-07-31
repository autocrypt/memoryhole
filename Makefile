GENERATORS = $(sort $(wildcard generators/?.py))

EMAILS = $(patsubst generators/%.py,corpus/%.eml,$(GENERATORS))

GNUPGHOME=corpus/OpenPGP/GNUPGHOME

MAILDIR_MAILS = $(patsubst corpus/%.eml,\
                           inboxes/maildir/cur/%.eml,\
                           $(EMAILS))

MBOX_DATE = Thu Jan  1 00:00:00 2015

TARGETS = $(MAILDIR_MAILS) inboxes/mbox

default: $(TARGETS)

corpus/%.eml: generators/%.py $(GNUPGHOME) generators/generator.py
	$<

inboxes/maildir/cur/%.eml: corpus/%.eml
	@mkdir -p $(foreach dir,new cur tmp,inboxes/maildir/$(dir))
	cp $< $@

inboxes/mbox: $(EMAILS)
	for x in $^; do echo 'From memoryhole  $(MBOX_DATE)'; cat "$$x"; echo "" ; done >$@

$(GNUPGHOME):
	@echo Generating $@
	@cd $(dir $@) && ./gnupg-import

clean:
	-rm -rf $(MAILDIR_MAILS) inboxes/mbox
	-rm -rf $(GNUPGHOME)

.PHONY: default clean maildir
