GENERATORS = $(sort $(wildcard generators/?.py))

EMAILS = $(patsubst generators/%.py,corpus/%.eml,$(GENERATORS))

MAILDIR_MAILS = $(patsubst corpus/%.eml,\
                           inboxes/maildir/cur/%.eml,\
                           $(EMAILS))

CSS=$(wildcard assets/*.css)


MBOX_DATE = 2015-01-01 00:00:00-0000

TARGETS = index.html

default: $(TARGETS)

corpus/%.eml: generators/%.py $(GNUPGHOME) generators/generator.py
	$(GNUPGHOME) $<

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

%.html: %.md $(CSS) header.sh footer.sh
	@echo -e               \
	"`./header.sh $<`"     \
	"`markdown $<`"        \
	"`./footer.sh`"        \
	> $@


.PHONY: default clean maildir
