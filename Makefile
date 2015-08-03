GENERATORS = $(sort $(wildcard generators/?.py))

EMAILS = $(patsubst generators/%.py,corpus/%.eml,$(GENERATORS))

GNUPGHOME=corpus/OpenPGP/GNUPGHOME

MAILDIR_MAILS = $(patsubst corpus/%.eml,\
                           inboxes/maildir/cur/%.eml,\
                           $(EMAILS))

CSS=$(wildcard assets/*.css)


MBOX_DATE = Thu Jan  1 00:00:00 2015

TARGETS = index.html corpus/index.html guidance/index.html

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

%.html: %.md $(CSS) header.sh footer.sh
	@echo Generating $@
	@echo -e               \
	"`./header.sh $<`"     \
	"`markdown $<`"        \
	"`./footer.sh`"        \
	> $@

corpus/index.md: corpus/gen_page.rb $(EMAILS)
	@echo Generating $@
	@$< > $@
